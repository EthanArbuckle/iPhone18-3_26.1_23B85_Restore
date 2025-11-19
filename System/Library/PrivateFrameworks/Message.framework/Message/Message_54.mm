uint64_t sub_1B0B1B95C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v121 = a4;
  v122 = a6;
  v117 = a5;
  v118 = a3;
  v119 = a2;
  v123 = a7;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v109 = *(v110 - 8);
  v8 = *(v109 + 64);
  v9 = MEMORY[0x1EEE9AC00](v110);
  v100 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v96 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v104 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v96 - v16;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v17 = *(*(v108 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v108);
  v102 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v107 = &v96 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v105 = &v96 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v111 = &v96 - v24;
  v112 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  v25 = *(*(v112 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v112);
  v103 = (&v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v114 = (&v96 - v28);
  v113 = type metadata accessor for DetermineMessageBatches(0);
  v29 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v31 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4608, &unk_1B0EC5980);
  v32 = *(*(v115 - 8) + 64);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v96 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4010, &unk_1B0EC6220);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v96 - v36;
  v38 = type metadata accessor for MessageBatches(0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v44 = _s13SelectedStateV7WrappedVMa(0);
  v45 = *(v44 + 20);
  v46 = type metadata accessor for MailboxSyncState();
  sub_1B03B5C80(v43 + v45 + *(v46 + 60), v37, &qword_1EB6E4010, &unk_1B0EC6220);
  if ((*(v39 + 48))(v37, 1, v38) != 1)
  {
    sub_1B0B24104(v37, v42, type metadata accessor for MessageBatches);
    sub_1B0B24104(v42, v123, type metadata accessor for MessageBatches);
    _s29DetermineMessageBatchesResultOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_1B0398EFC(v37, &qword_1EB6E4010, &unk_1B0EC6220);
  v47 = *(v120 + 43);
  v48 = *v120;
  v96 = v120[1];
  v49 = v120[2];
  v98 = *(v120 + 6);
  v50 = *(v120 + 48);
  result = *(v121 + 16);
  v52 = *(v121 + 24);
  v53 = v43 + *(v44 + 20);
  v54 = *v53;
  v55 = *(v53 + 8);
  LODWORD(v120) = *(v53 + 12);
  v56 = *(v121 + 4);
  v57 = *(v121 + 5);
  v129 = *(v121 + 42);
  if (v52)
  {
    v58 = 4507;
  }

  else
  {
    result = sub_1B0B3F320(result);
    v58 = result;
  }

  v99 = v47;
  v97 = v55;
  if (!v54)
  {
    sub_1B03D06F8();
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v71 = v111;
    sub_1B0E46EE8();
    v72 = v71;
    v73 = v105;
    sub_1B03B5C80(v72, v105, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v65 = v48;
    if (MessageIdentifierSet.count.getter() <= 0)
    {
      sub_1B0398EFC(v73, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v76 = 1;
      v77 = v114;
      v75 = v106;
    }

    else
    {
      v74 = v101;
      sub_1B03C60A4(v73, v101, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v75 = v106;
      sub_1B03C60A4(v74, v106, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v76 = 0;
      v77 = v114;
    }

    (*(v109 + 56))(v75, v76, 1, v110);
    sub_1B0B3EF98(v58, MEMORY[0x1E69E7CC0], v75, v77);
    sub_1B0398EFC(v111, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    swift_storeEnumTagMultiPayload();
LABEL_25:
    if (v57)
    {
      v79 = 256;
    }

    else
    {
      v79 = 0;
    }

    v80 = v79 | v56;
    if (v129)
    {
      v81 = v80;
    }

    else
    {
      v81 = 2;
    }

    v82 = v113;
    sub_1B03BCDD0(v77, &v31[*(v113 + 56)], type metadata accessor for DetermineMessageBatches.TaskState);
    *v31 = MEMORY[0x1E69E7CD0];
    v31[8] = 0;
    *(v31 + 76) = 0;
    v31[84] = 1;
    v83 = &v31[*(v82 + 60)];
    v84 = v77;
    v85 = MEMORY[0x1E69E7CC0];
    *v83 = sub_1B0BAB9B4(MEMORY[0x1E69E7CC0]);
    v83[8] = 0;
    v125 = v49;
    LODWORD(v83) = v98;
    v126 = v98;
    *(v31 + 2) = v82;
    sub_1B0451F2C();
    sub_1B0E461E8();
    sub_1B0B238BC(v84, type metadata accessor for DetermineMessageBatches.TaskState);
    v86 = v96;
    *(v31 + 12) = v65;
    *(v31 + 13) = v86;
    *(v31 + 56) = v99;
    *(v31 + 15) = v49;
    v87 = v116;
    *(v31 + 8) = v117;
    v31[72] = v122 & 1;
    *(v31 + 11) = v54;
    *(v31 + 18) = v58;
    LODWORD(v86) = v97;
    *(v31 + 32) = v83;
    *(v31 + 33) = v86;
    v31[136] = v120;
    *(v31 + 137) = v81;
    sub_1B0B24104(v31, v87, type metadata accessor for DetermineMessageBatches);
    v88 = v115;
    v89 = (v87 + *(v115 + 36));
    *v89 = v85;
    v89[1] = v85;
    v127 = v88;
    v90 = sub_1B0B23F6C(&qword_1EB6DD3A8, &qword_1EB6E4608, &unk_1B0EC5980);
    v128 = v90;
    v91 = __swift_allocate_boxed_opaque_existential_1(&v125);
    sub_1B03B5C80(v87, v91, &qword_1EB6E4608, &unk_1B0EC5980);
    v92 = v119(&v125);
    __swift_destroy_boxed_opaque_existential_0(&v125);
    if (v92)
    {
      v93 = v123;
      v123[3] = v88;
      v93[4] = v90;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v93);
      sub_1B03C60A4(v87, boxed_opaque_existential_1, &qword_1EB6E4608, &unk_1B0EC5980);
      _s29DetermineMessageBatchesResultOMa(0);
    }

    else
    {
      sub_1B0398EFC(v87, &qword_1EB6E4608, &unk_1B0EC5980);
      _s29DetermineMessageBatchesResultOMa(0);
      v95 = v123;
      *v123 = 0u;
      *(v95 + 16) = 0u;
      *(v95 + 32) = 0;
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (v58 + 0x4000000000000000 >= 0)
  {
    if (v54 >= 2 * v58 / 3)
    {
      if ((v50 & 1) != 0 || ((v120 ^ 1 | v122) & 1) == 0)
      {
        v77 = v114;
      }

      else
      {
        v77 = v114;
        *v114 = v54;
      }

      swift_storeEnumTagMultiPayload();
      swift_bridgeObjectRetain_n();
      v65 = v48;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1B0EC1E70;
      if (v120)
      {
        v60 = -1;
      }

      else
      {
        v60 = v55;
      }

      v124 = v60;
      LODWORD(v125) = 1;
      v61 = sub_1B041C1E8();
      swift_bridgeObjectRetain_n();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      static MessageIdentifier.... infix(_:_:)(&v125, &v124, &type metadata for UID, v61, v59 + 32);
      sub_1B03D06F8();
      v62 = v107;
      sub_1B0E46EE8();
      v63 = v62;
      v64 = v102;
      sub_1B03B5C80(v63, v102, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v65 = v48;
      if (MessageIdentifierSet.count.getter() <= 0)
      {
        sub_1B0398EFC(v64, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v70 = 1;
        v69 = v104;
      }

      else
      {
        v66 = v64;
        v67 = v100;
        sub_1B03C60A4(v66, v100, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v68 = v67;
        v69 = v104;
        sub_1B03C60A4(v68, v104, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v70 = 0;
      }

      (*(v109 + 56))(v69, v70, 1, v110);
      v78 = v103;
      sub_1B0B3EF98(v58, v59, v69, v103);
      sub_1B0398EFC(v107, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      swift_storeEnumTagMultiPayload();
      v77 = v114;
      sub_1B0B24104(v78, v114, type metadata accessor for DetermineMessageBatches.TaskState);
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B1C53C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v110 = a5;
  v96 = a4;
  v107 = a6;
  v112 = a4 >> 8;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v10 = *(MissingMessages - 8);
  v105 = MissingMessages;
  v106 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](MissingMessages);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v111 = &v92 - v16;
  v98 = _s15MissingMessagesOMa(0);
  v17 = *(*(v98 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v98);
  v97 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v92 = &v92 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v94 = &v92 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v92 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v92 - v27;
  v29 = type metadata accessor for MessageBatches(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v114 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v92 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v92 - v36;
  v102 = *(a1 + 43);
  v38 = a1[1];
  v108 = *a1;
  v99 = v38;
  v39 = a1[2];
  v100 = *(a1 + 6);
  v93 = a1[5];
  v113 = *(a1 + 48);
  sub_1B03BCDD0(a2, &v92 - v36, type metadata accessor for MessageBatches);
  v40 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v41 = _s13SelectedStateV7WrappedVMa(0);
  v42 = *(v41 + 20);
  v43 = type metadata accessor for MailboxSyncState();
  sub_1B03BCDD0(v40 + v42 + *(v43 + 68), v28, _s15MissingMessagesOMa);
  v44 = v40 + *(v41 + 20);
  v45 = *(v44 + 8);
  LOBYTE(v40) = *(v44 + 12);
  v104 = v110[4];
  v103 = v110[5];
  v109 = v37;
  v46 = v37;
  v47 = v93;
  v95 = v35;
  sub_1B03BCDD0(v46, v35, type metadata accessor for MessageBatches);
  v110 = v28;
  sub_1B03BCDD0(v28, v26, _s15MissingMessagesOMa);
  v48 = v94;
  sub_1B03BCDD0(v26, v94, _s15MissingMessagesOMa);
  v101 = v39;
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v115) = v40;
  v115 = sub_1B0AF7574(v48, v47, v113 & 1, v45 | (v40 << 32), v112);
  v116 = v49;
  v117 = v50;
  v118 = v51;
  if (BYTE1(v96))
  {
    if (BYTE1(v96) == 1)
    {
      v52 = 2;
    }

    else
    {
      v52 = 1;
    }

    v59 = v95;
    sub_1B0AF65C8(v52, v95);
    v61 = v110;
    v62 = v105;
    v63 = v97;
  }

  else
  {
    v53 = v92;
    sub_1B03BCDD0(v26, v92, _s15MissingMessagesOMa);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B0B238BC(v53, _s15MissingMessagesOMa);
      v54 = v95;
      v55 = *v95;
      v56 = sub_1B0B3EF14();
      v57 = v56 | ((HIDWORD(v56) & 1) << 32);
      v58 = v55;
      v59 = v54;
      if (sub_1B0B4B0F4(v58, v57))
      {
        v60 = 3;
      }

      else
      {
        v60 = 1;
      }

      v61 = v110;
      v62 = v105;
      v63 = v97;
    }

    else
    {
      v60 = 1;
      v61 = v110;
      v62 = v105;
      v63 = v97;
      v59 = v95;
    }

    sub_1B0AF6338(v60, v59);
  }

  sub_1B0B238BC(v26, _s15MissingMessagesOMa);
  sub_1B0B238BC(v59, type metadata accessor for MessageBatches);
  v105 = v115;
  v98 = v116 | (BYTE4(v116) << 32);
  LODWORD(v97) = BYTE5(v116);
  LODWORD(v96) = v117;
  LODWORD(v95) = v118;
  v64 = sub_1B0B4AC30();
  v65 = v64;
  if (v47 >= v64)
  {
    v66 = v64;
  }

  else
  {
    v66 = v47;
  }

  if (BYTE4(v64) & 1 | v113 & 1)
  {
    v67 = v64;
  }

  else
  {
    v67 = v66;
  }

  sub_1B03BCDD0(v109, v114, type metadata accessor for MessageBatches);
  sub_1B03BCDD0(v61, v63, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    sub_1B0B238BC(v63, _s15MissingMessagesOMa);
  }

  sub_1B0B4AE74(v111);
  v94 = v67;
  if (v112)
  {
    v69 = 0;
    if (v112 == 1)
    {
      v70 = 1499;
    }

    else
    {
      v70 = 191;
    }
  }

  else
  {
    v70 = 0;
    v69 = 1;
  }

  *v13 = 0xD000000000000013;
  *(v13 + 1) = 0x80000001B0F2B390;
  *(v13 + 13) = sub_1B03D0770(&unk_1F2711308);
  v13[112] = 0;
  v71 = v62[16];
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v72 = &v13[v62[17]];
  sub_1B0E46EE8();
  v73 = v99;
  *(v13 + 8) = v108;
  *(v13 + 9) = v73;
  *(v13 + 40) = v102;
  v74 = v101;
  *(v13 + 11) = v101;
  v75 = v100;
  *(v13 + 24) = v100;
  v115 = v74;
  LODWORD(v116) = v75;
  *(v13 + 2) = v62;
  sub_1B0451F2C();
  sub_1B0E461E8();
  sub_1B03BCDD0(v114, &v13[v62[9]], type metadata accessor for MessageBatches);
  v76 = &v13[v62[10]];
  *v76 = v47;
  v76[8] = v113 & 1;
  v77 = &v13[v62[11]];
  *v77 = v105;
  v78 = v98;
  v77[12] = BYTE4(v98);
  *(v77 + 2) = v78;
  v77[13] = v97;
  *(v77 + 4) = v96;
  v77[20] = v95;
  v79 = &v13[v62[13]];
  *v79 = v70;
  v79[8] = v69;
  v13[v62[14]] = EnumCaseMultiPayload == 0;
  v80 = v111;
  sub_1B03B5C80(v111, &v13[v62[15]], &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v81 = &v13[v62[12]];
  v82 = v104;
  *v81 = v104;
  v83 = v103;
  v81[1] = v103;
  if ((v65 & 0x100000000) != 0)
  {
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
  }

  else
  {
    v88 = 256;
    if (!v83)
    {
      v88 = 0;
    }

    v85 = v88 | v82 | (v94 << 32);
    v87 = MEMORY[0x1E69E7CC0];
    v86 = 0x100000000;
    v84 = 94;
  }

  v89 = &v13[v62[18]];
  sub_1B0398EFC(v80, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0B238BC(v114, type metadata accessor for MessageBatches);
  sub_1B0B238BC(v110, _s15MissingMessagesOMa);
  sub_1B0B238BC(v109, type metadata accessor for MessageBatches);
  *v89 = v84;
  v89[1] = v85;
  v89[2] = v86;
  v89[3] = v87;
  v90 = v107;
  sub_1B0B24104(v13, v107, type metadata accessor for FindMissingMessages);
  return (*(v106 + 56))(v90, 0, 1, v62);
}

uint64_t sub_1B0B1CE74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v79 = a5;
  v93 = a4;
  v97 = a6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v72[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v92 = &v72[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v94 = *(v14 - 8);
  v95 = v14;
  v15 = *(v94 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v80 = &v72[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v72[-v18];
  Messages = type metadata accessor for FetchMessages(0);
  v96 = *(Messages - 8);
  v19 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](Messages);
  v21 = &v72[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for FetchMessages.MissingUIDs(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v84 = &v72[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = _s15MissingMessagesOMa(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v72[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v72[-v30];
  v32 = type metadata accessor for MessageBatches(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v81 = &v72[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v72[-v36];
  LODWORD(v89) = *(a1 + 43);
  v38 = a1[1];
  v82 = *a1;
  v83 = v38;
  v39 = a1[2];
  v98 = *(a1 + 6);
  sub_1B03BCDD0(a2, &v72[-v36], type metadata accessor for MessageBatches);
  v40 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v41 = _s13SelectedStateV7WrappedVMa(0);
  v42 = *(v41 + 20);
  v43 = type metadata accessor for MailboxSyncState();
  sub_1B03BCDD0(v40 + v42 + *(v43 + 68), v31, _s15MissingMessagesOMa);
  v102 = a1[5];
  v103 = *(a1 + 48);
  v44 = (v40 + *(v41 + 20));
  v77 = v44[144];
  v76 = v44[145];
  v75 = v44[146];
  v74 = v44[147];
  v73 = v44[148];
  v101 = v93[1];
  v91 = v37;
  v45 = v81;
  sub_1B03BCDD0(v37, v81, type metadata accessor for MessageBatches);
  v93 = v31;
  v46 = v31;
  v47 = Messages;
  sub_1B03BCDD0(v46, v29, _s15MissingMessagesOMa);
  swift_bridgeObjectRetain_n();
  v48 = v82;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v49 = v84;
  sub_1B0AD0CFC(v29, v84);
  *v21 = sub_1B0451E64(&unk_1F2711330);
  v21[8] = 0;
  v50 = &v21[v47[9]];
  v51 = type metadata accessor for NewServerMessages();
  v52 = *(v51 - 1);
  v53 = *(v52 + 56);
  v86 = v52 + 56;
  v87 = v53;
  v53(v50, 1, 1, v51);
  v54 = v83;
  *(v21 + 2) = v48;
  *(v21 + 3) = v54;
  *(v21 + 16) = v89;
  *(v21 + 5) = v39;
  v55 = v98;
  *(v21 + 12) = v98;
  v56 = v47[8];
  v99 = v39;
  v100 = v55;
  *&v21[v56] = v47;
  sub_1B0451F2C();
  v89 = v39;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v57 = v88;
  sub_1B0E461E8();
  sub_1B03BCDD0(v45, &v21[v47[7]], type metadata accessor for MessageBatches);
  sub_1B03BCDD0(v49, &v21[v47[10]], type metadata accessor for FetchMessages.MissingUIDs);
  MessageIdentifierSet.suffix(_:)(47, v90, v57);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v57, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v61 = 1;
    v60 = v92;
  }

  else
  {
    v58 = v57;
    v59 = v80;
    sub_1B03C60A4(v58, v80, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v60 = v92;
    sub_1B03C60A4(v59, v92, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v61 = 0;
  }

  v63 = v94;
  v62 = v95;
  (*(v94 + 56))(v60, v61, 1, v95);
  if ((*(v63 + 48))(v60, 1, v62) == 1)
  {

    sub_1B0B238BC(v49, type metadata accessor for FetchMessages.MissingUIDs);
    sub_1B0B238BC(v45, type metadata accessor for MessageBatches);
    sub_1B0B238BC(v93, _s15MissingMessagesOMa);
    sub_1B0B238BC(v91, type metadata accessor for MessageBatches);
    sub_1B0398EFC(v60, &unk_1EB6E3670, &unk_1B0E9B260);
    sub_1B0398EFC(v50, &qword_1EB6E41C0, &unk_1B0EC4330);
    v64 = 1;
  }

  else
  {
    v65 = v60;
    v66 = v78;
    sub_1B03C60A4(v65, v78, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0398EFC(v50, &qword_1EB6E41C0, &unk_1B0EC4330);
    sub_1B03C60A4(v66, v50 + v51[5], &unk_1EB6E26C0, &unk_1B0E9DE10);
    v67 = v51[9];
    sub_1B0B238BC(v49, type metadata accessor for FetchMessages.MissingUIDs);
    sub_1B0B238BC(v45, type metadata accessor for MessageBatches);
    sub_1B0B238BC(v93, _s15MissingMessagesOMa);
    sub_1B0B238BC(v91, type metadata accessor for MessageBatches);
    v64 = 0;
    *(v50 + v67) = MEMORY[0x1E69E7CC0];
    *v50 = v89;
    *(v50 + 8) = v98;
    v68 = (v50 + v51[6]);
    *v68 = v77;
    v68[1] = v76;
    v68[2] = v75;
    v68[3] = v74;
    v68[4] = v73;
    *(v50 + v51[7]) = v101;
    *(v50 + v51[8]) = BYTE6(v79) & 1;
  }

  v87(v50, v64, 1, v51);
  v69 = &v21[v47[11]];
  *v69 = v102;
  v69[8] = v103;
  v70 = v97;
  sub_1B0B24104(v21, v97, type metadata accessor for FetchMessages);
  return (*(v96 + 56))(v70, 0, 1, v47);
}

uint64_t sub_1B0B1D788@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 43);
  v6 = a2 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v7 = v6 + *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v8 = *(v7 + 24);
  LODWORD(v7) = *(v7 + 32);
  v9 = v7 != 1;
  if (v7 == 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = *(a1 + 6);
  *a3 = sub_1B03D0770(&unk_1F2710FE8);
  *(a3 + 8) = 0;
  *(a3 + 113) = 0;
  *(a3 + 120) = sub_1B0BABEA0(MEMORY[0x1E69E7CC0]);
  *(a3 + 128) = 0;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v5;
  *(a3 + 40) = v13;
  *(a3 + 48) = v14;
  *(a3 + 56) = &type metadata for UpdateLocalFlags;
  sub_1B0451F2C();
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0E461E8();
  *(a3 + 104) = v10;
  *(a3 + 112) = v9;
  return result;
}

uint64_t sub_1B0B1D8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(__int128 *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v187 = a1;
  v188 = a8;
  v184 = a6;
  v185 = a7;
  v186 = a5;
  v183 = a9;
  v14 = type metadata accessor for MessageBatches(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = (&v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v16);
  v179 = &v164 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v181 = &v164 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v178 = (&v164 - v23);
  v24 = type metadata accessor for PendingServerResponses();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v180 = (&v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v29 = (&v164 - v28);
  v30 = 0;
  v31 = a2 + 56;
  v191 = a3;
  v32 = a3 + 7;
  v189 = a4;
  v190 = a4 + 7;
  do
  {
    if (!*(a2 + 16))
    {
      goto LABEL_33;
    }

    v33 = byte_1F27110D8[v30 + 32];
    v34 = *(a2 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v33);
    v35 = sub_1B0E46CB8();
    v36 = -1 << *(a2 + 32);
    v37 = v35 & ~v36;
    if (((*(v31 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
    {
      goto LABEL_33;
    }

    ++v30;
    v38 = ~v36;
    while (*(*(a2 + 48) + v37) != v33)
    {
      v37 = (v37 + 1) & v38;
      if (((*(v31 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (v191[2])
    {
      v182 = v29;
      v39 = v18;
      v40 = a2;
      v41 = v10;
      v42 = v191;
      v43 = v191[5];
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v33);
      v44 = sub_1B0E46CB8();
      v45 = *(v42 + 32);
      v10 = v41;
      a2 = v40;
      v18 = v39;
      v29 = v182;
      v46 = -1 << v45;
      v47 = v44 & ~(-1 << v45);
      if ((*(v32 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
      {
        v48 = ~v46;
        while (*(v191[6] + v47) != v33)
        {
          v47 = (v47 + 1) & v48;
          if (((*(v32 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

LABEL_33:
        v77 = v188;
        if (!*(v188 + 2))
        {
          v182 = a2;
          v172 = *(v10 + 43);
          v78 = *v10;
          v173 = v10[1];
          v79 = v10[2];
          v80 = *(v10 + 6);
          v165 = v10[5];
          v166 = *(v10 + 48);
          v171 = v10[7];
          v190 = v10;
          v81 = *(v10 + 64);
          v174 = v80;
          LODWORD(v175) = v81;
          v82 = v187 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
          swift_beginAccess();
          v168 = _s13SelectedStateV7WrappedVMa(0);
          v169 = v82;
          v83 = v82 + *(v168 + 20);
          v170 = *(v83 + 24);
          v84 = *(v83 + 32);
          v167 = type metadata accessor for MailboxSyncState();
          sub_1B03BCDD0(v83 + *(v167 + 48), v29, type metadata accessor for PendingServerResponses);
          v85 = v29[3];
          v86 = v29[4];
          __swift_project_boxed_opaque_existential_0(v29, v85);
          v87 = v29;
          v88 = *(v86 + 24);
          v176 = v79;
          swift_bridgeObjectRetain_n();
          v177 = v78;
          swift_bridgeObjectRetain_n();
          v89 = v86;
          v77 = v188;
          v90 = v88(v85, v89);
          sub_1B0B238BC(v87, type metadata accessor for PendingServerResponses);
          v91 = *(v77 + 1);
          *(&v211 + 1) = sub_1B03D0770(&unk_1F2711100);
          LOBYTE(v212) = 0;
          if ((v175 & 1) != 0 || v84)
          {

            swift_bridgeObjectRelease_n();

            v217 = 0u;
            v218 = 0u;
            v219 = 0u;
            v220 = 0u;
            v221 = 0u;
            v222 = 0u;
            v223 = 0u;
            memset(v224, 0, 17);
            a2 = v182;
          }

          else
          {
            *&v209 = v177;
            *(&v209 + 1) = v173;
            v92 = v172;
            LOWORD(v210) = v172;
            *(&v210 + 1) = v176;
            LODWORD(v211) = v174;
            *&v194 = v176;
            DWORD2(v194) = v174;
            *(&v212 + 1) = &type metadata for QuickFlagChangesResync;
            sub_1B0451F2C();
            v93 = sub_1B0E461E8();
            *(&v215 + 1) = v171;
            *&v216[0] = v170;
            *(&v216[0] + 1) = v90;
            LOBYTE(v216[1]) = v91;
            LOBYTE(v224[1]) = v91;
            v219 = v211;
            v220 = v212;
            v221 = v213;
            v222 = v214;
            v217 = v209;
            v218 = v210;
            v223 = v215;
            v224[0] = v216[0];
            a2 = v182;
            if (v209)
            {
              v232[16] = v224[1];
              v231 = v223;
              *v232 = v224[0];
              v227 = v219;
              v228 = v220;
              v229 = v221;
              v230 = v222;
              v225 = v217;
              v226 = v218;
              MEMORY[0x1EEE9AC00](v93);
              *(&v164 - 2) = &v225;
              v94 = a2;
              v95 = v189;
              v96 = a2;
              v97 = v184;
              sub_1B0B19B88(v94, v191, v189, v184, sub_1B0B23E98, &v209);
              if (*(&v210 + 1))
              {

                sub_1B0450C74(&v209, &v217);
                v98 = &v217;
                v99 = v183;
LABEL_39:
                sub_1B0450C74(v98, v99);
                return sub_1B0B23EB0(&v225);
              }

              sub_1B0398EFC(&v209, &qword_1EB6E45A8, &unk_1B0EC5920);
              v127 = v96;
              if (sub_1B0A94670(2, v96))
              {
                v128 = sub_1B0A94670(2, v191);
                v129 = v190;
                if ((v128 & 1) == 0 && ((sub_1B03BE324(v127, v191) & 1) == 0 || (sub_1B0A94670(2, v95) & 1) == 0))
                {
                  v131 = (v169 + *(v168 + 20));
                  v132 = *v131;
                  v133 = v131 + *(v167 + 48);
                  v187 = *(v133 + 5);
                  v134 = v133[48];
                  v135 = v178;
                  result = sub_1B03BCDD0(v186, v178, type metadata accessor for MessageBatches);
                  v136 = *(v77 + 4);
                  BYTE4(v196) = 1;
                  v137 = *v135 / 2;
                  if (v137 >= v132)
                  {
                    v142 = v187;
                    sub_1B0B23E80(v187, v134);

                    sub_1B0AA93E0(v142, v134);
                    sub_1B0B238BC(v135, type metadata accessor for MessageBatches);
                    v127 = v182;
                    v129 = v190;
LABEL_80:
                    v209 = 0u;
                    v210 = 0u;
                    v211 = 0u;
                    v212 = 0u;
                    v213 = 0u;
                    v214 = 0u;
                    v215 = 0u;
                    v77 = v188;
LABEL_81:
                    v130 = sub_1B0398EFC(&v209, &qword_1EB6E4680, &qword_1B0EC5A18);
                    goto LABEL_82;
                  }

                  v138 = v187;
                  v73 = __OFSUB__(v132, v137);
                  v139 = v132 - v137;
                  if (!v73)
                  {
                    v127 = v182;
                    v129 = v190;
                    if (v139 <= 0 || HIDWORD(v139))
                    {
LABEL_73:
                      sub_1B0B23E80(v187, v134);

                      v140 = v138;
                      v141 = v134;
LABEL_74:
                      sub_1B0AA93E0(v140, v141);
                      sub_1B0B238BC(v178, type metadata accessor for MessageBatches);
                      goto LABEL_80;
                    }

                    if (v134)
                    {
                      if (v187 > 139)
                      {
                        goto LABEL_73;
                      }

                      if (v187 > 0)
                      {
                        goto LABEL_93;
                      }
                    }

                    else
                    {
                      v151 = *(v187 + 16);
                      if (v151 >= 0x8C)
                      {
                        goto LABEL_73;
                      }

                      v152 = (v187 + 32);
                      while (v151)
                      {
                        v153 = *v152++;
                        --v151;
                        if (v153 < v139)
                        {
                          sub_1B0B23E80(v187, 0);

                          v140 = v138;
                          v141 = 0;
                          goto LABEL_74;
                        }
                      }
                    }

                    if ((v166 & 1) == 0)
                    {
                      *&v194 = v177;
                      *(&v194 + 1) = v173;
                      LOWORD(v195) = v92;
                      *(&v195 + 1) = v176;
                      LODWORD(v196) = v174;
                      v192 = v176;
                      v193 = v174;
                      *(&v196 + 1) = &type metadata for DetectRemovedMessagesInRecent;
                      v157 = v136;
                      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                      sub_1B0B23E80(v138, v134);
                      sub_1B0E461E8();
                      v158 = v178;
                      v159 = sub_1B0B48718(v178, v165, 0);
                      v161 = v160;
                      v162 = sub_1B0B238BC(v158, type metadata accessor for MessageBatches);
                      *(&v199 + 1) = v159;
                      LODWORD(v200) = v161;
                      BYTE4(v200) = BYTE4(v161) & 1;
                      *(&v200 + 5) = v157;
                      if ((v134 & 1) == 0)
                      {
                        v163 = *(v138 + 16);
                        v162 = sub_1B0AA93E0(v138, 0);
                        v138 = v163;
                      }

                      v127 = v182;
                      v129 = v190;
                      *(&v200 + 1) = v138;
                      v213 = v198;
                      v214 = v199;
                      v209 = v194;
                      v210 = v195;
                      v211 = v196;
                      v212 = v197;
                      v215 = v200;
                      v77 = v188;
                      if (v194)
                      {
                        v221 = v213;
                        v222 = v214;
                        v223 = v215;
                        v217 = v209;
                        v218 = v210;
                        v219 = v211;
                        v220 = v212;
                        MEMORY[0x1EEE9AC00](v162);
                        *(&v164 - 2) = &v217;
                        sub_1B0B19478(v127, v191, v95, v97, sub_1B0B23F04, &v194);
                        if (*(&v195 + 1))
                        {
                          sub_1B0450C74(&v194, &v209);
                          sub_1B0450C74(&v209, &v201);
                          sub_1B0AA9424(&v217);
LABEL_84:
                          v76 = v183;
                          if (*(&v202 + 1))
                          {
                            sub_1B0450C74(&v201, &v204);
                            v98 = &v204;
                            v99 = v76;
                            goto LABEL_39;
                          }

LABEL_88:
                          sub_1B0398EFC(&v201, &qword_1EB6E45A8, &unk_1B0EC5920);
                          result = sub_1B0B23EB0(&v225);
                          goto LABEL_61;
                        }

                        sub_1B0398EFC(&v194, &qword_1EB6E45A8, &unk_1B0EC5920);
                        sub_1B0AA9424(&v217);
LABEL_87:
                        v76 = v183;
                        v203 = 0;
                        v201 = 0u;
                        v202 = 0u;
                        goto LABEL_88;
                      }

                      goto LABEL_81;
                    }

LABEL_93:
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B0B238BC(v178, type metadata accessor for MessageBatches);
                    swift_bridgeObjectRelease_n();

                    goto LABEL_80;
                  }

                  __break(1u);
LABEL_120:
                  __break(1u);
                  return result;
                }
              }

              else
              {

                v129 = v190;
              }

LABEL_82:
              MEMORY[0x1EEE9AC00](v130);
              v143 = v186;
              *(&v164 - 4) = v129;
              *(&v164 - 3) = v143;
              *(&v164 - 2) = v77;
              sub_1B0B191FC(v127, v191, v95, v97, sub_1B0B23EA4, &v209);
              if (*(&v210 + 1))
              {
                sub_1B0450C74(&v209, &v217);
                sub_1B0450C74(&v217, &v201);
                goto LABEL_84;
              }

              sub_1B0398EFC(&v209, &qword_1EB6E45A8, &unk_1B0EC5920);
              goto LABEL_87;
            }
          }

          sub_1B0398EFC(&v217, &qword_1EB6E4678, &qword_1B0EC5A10);
          v10 = v190;
        }

        v100 = sub_1B0A94670(4, a2);
        v101 = v189;
        if (v100)
        {
          v100 = sub_1B0A94670(4, v191);
          if ((v100 & 1) == 0)
          {
            if ((sub_1B03BE324(a2, v191) & 1) == 0 || (v100 = sub_1B0A94670(4, v101), (v100 & 1) == 0))
            {
              v182 = a2;
              v172 = *(v10 + 43);
              v102 = *v10;
              v170 = v10[1];
              v177 = v10[2];
              v178 = v102;
              LODWORD(v171) = *(v10 + 6);
              v173 = v10[5];
              v190 = v10;
              v174 = *(v10 + 48);
              v103 = v187 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
              swift_beginAccess();
              v104 = _s13SelectedStateV7WrappedVMa(0);
              v105 = (v103 + *(v104 + 20));
              v175 = *v105;
              v176 = v104;
              v106 = v105 + *(type metadata accessor for MailboxSyncState() + 48);
              v107 = *(v106 + 40);
              v108 = *(v106 + 48);
              v109 = v180;
              sub_1B03BCDD0(v106, v180, type metadata accessor for PendingServerResponses);
              v111 = v109[3];
              v110 = v109[4];
              __swift_project_boxed_opaque_existential_0(v109, v111);
              v112 = *(v110 + 24);
              swift_bridgeObjectRetain_n();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0B23E80(v107, v108);
              v113 = v111;
              v114 = v107;
              v115 = v112(v113, v110);
              sub_1B0B238BC(v109, type metadata accessor for PendingServerResponses);
              v116 = *(v188 + 1);
              LODWORD(v112) = *(v103 + *(v176 + 20) + 32);
              v117 = v181;
              sub_1B03BCDD0(v186, v181, type metadata accessor for MessageBatches);
              *(&v211 + 1) = sub_1B03D0770(&unk_1F2711128);
              LOBYTE(v212) = 1;
              if (v112 && (v118 = *v117, (sub_1B0AA59AC(v175, *v117, v107, v108) & 1) != 0) && sub_1B0AA5A24(v175, v118, v115) && (v174 & 1) == 0)
              {
                *&v209 = v178;
                *(&v209 + 1) = v170;
                LOWORD(v210) = v172;
                *(&v210 + 1) = v177;
                LODWORD(v211) = v171;
                *&v204 = v177;
                DWORD2(v204) = v171;
                *(&v212 + 1) = &type metadata for DetectChangesToMessagesInRecent;
                sub_1B0451F2C();
                sub_1B0E461E8();
                *&v216[0] = v115;
                if ((v108 & 1) == 0)
                {
                  v119 = *(v107 + 16);
                  sub_1B0AA93E0(v107, 0);
                  v114 = v119;
                }

                v101 = v189;
                v10 = v190;
                a2 = v182;
                v120 = v173;
                *(&v216[0] + 1) = v114;
                BYTE8(v215) = v116;
                v121 = v179;
                sub_1B03BCDD0(v117, v179, type metadata accessor for MessageBatches);
                LOBYTE(v204) = 0;
                sub_1B0B3EDEC(0xFFFFFFFFLL);
                v122 = sub_1B0B48718(v121, v120, 0);
                v124 = v123;
                sub_1B0B238BC(v121, type metadata accessor for MessageBatches);
                v125 = sub_1B0B238BC(v117, type metadata accessor for MessageBatches);
                *&v216[1] = v122;
                DWORD2(v216[1]) = v124;
                BYTE12(v216[1]) = BYTE4(v124) & 1;
                v223 = v215;
                v224[0] = v216[0];
                v219 = v211;
                v220 = v212;
                v221 = v213;
                v222 = v214;
                v217 = v209;
                v218 = v210;
                *(v224 + 13) = *(v216 + 13);
                if (v209)
                {
                  v231 = v223;
                  *v232 = v224[0];
                  *&v232[13] = *(v224 + 13);
                  v227 = v219;
                  v228 = v220;
                  v229 = v221;
                  v230 = v222;
                  v225 = v217;
                  v226 = v218;
                  MEMORY[0x1EEE9AC00](v125);
                  *(&v164 - 2) = &v225;
                  sub_1B0B1993C(a2, v191, v101, v184, sub_1B0B23E8C, &v209);
                  if (*(&v210 + 1))
                  {
                    sub_1B0450C74(&v209, &v217);
                    sub_1B0450C74(&v217, v183);
                    return sub_1B0AA5C28(&v225);
                  }

                  sub_1B0398EFC(&v209, &qword_1EB6E45A8, &unk_1B0EC5920);
                  result = sub_1B0AA5C28(&v225);
                  goto LABEL_60;
                }
              }

              else
              {

                sub_1B0AA93E0(v107, v108);
                swift_bridgeObjectRelease_n();

                sub_1B0B238BC(v117, type metadata accessor for MessageBatches);

                v217 = 0u;
                v218 = 0u;
                v219 = 0u;
                v220 = 0u;
                v221 = 0u;
                v222 = 0u;
                v223 = 0u;
                memset(v224, 0, 29);
                v101 = v189;
                v10 = v190;
                a2 = v182;
              }

              v100 = sub_1B0398EFC(&v217, &qword_1EB6E4670, &qword_1B0EC5A08);
              v77 = v188;
            }
          }
        }

        MEMORY[0x1EEE9AC00](v100);
        *(&v164 - 4) = v10;
        *(&v164 - 3) = v77;
        v126 = v186;
        *(&v164 - 2) = v187;
        *(&v164 - 1) = v126;
        sub_1B0B196DC(a2, v191, v101, v184, sub_1B0B23E74, &v217);
        if (*(&v218 + 1))
        {
          sub_1B0450C74(&v217, &v225);
          return sub_1B0450C74(&v225, v183);
        }

        result = sub_1B0398EFC(&v217, &qword_1EB6E45A8, &unk_1B0EC5920);
LABEL_60:
        v76 = v183;
        goto LABEL_61;
      }
    }

LABEL_13:
    if (sub_1B03BE324(a2, v191))
    {
      if (v189[2])
      {
        v182 = a2;
        v49 = v10;
        v50 = v189;
        v51 = v189[5];
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v33);
        v52 = sub_1B0E46CB8();
        v53 = *(v50 + 32);
        v10 = v49;
        a2 = v182;
        v54 = -1 << v53;
        v55 = v52 & ~(-1 << v53);
        if ((*(v190 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
        {
          v56 = ~v54;
          while (*(v189[6] + v55) != v33)
          {
            v55 = (v55 + 1) & v56;
            if (((*(v190 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          goto LABEL_33;
        }
      }
    }

LABEL_19:
    ;
  }

  while (v30 != 2);
  v57 = sub_1B0A94670(2, a2);
  v58 = v189;
  if ((v57 & 1) == 0)
  {
    goto LABEL_29;
  }

  v57 = sub_1B0A94670(2, v191);
  if (v57)
  {
    goto LABEL_29;
  }

  if (sub_1B03BE324(a2, v191))
  {
    v57 = sub_1B0A94670(2, v58);
    if (v57)
    {
      goto LABEL_29;
    }
  }

  v182 = a2;
  LODWORD(v180) = *(v10 + 43);
  v59 = *v10;
  v179 = v10[1];
  v60 = v10[2];
  v61 = *(v10 + 6);
  v181 = v10[5];
  v190 = v10;
  v62 = *(v10 + 48);
  v63 = v187 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v64 = (v63 + *(_s13SelectedStateV7WrappedVMa(0) + 20));
  v65 = *v64;
  v66 = v64 + *(type metadata accessor for MailboxSyncState() + 48);
  v67 = *(v66 + 5);
  v68 = v66[48];
  result = sub_1B03BCDD0(v186, v18, type metadata accessor for MessageBatches);
  v70 = *(v188 + 4);
  BYTE4(v211) = 1;
  v71 = v18;
  v72 = *v18 / 2;
  if (v72 >= v65)
  {
    goto LABEL_27;
  }

  v73 = __OFSUB__(v65, v72);
  v74 = v65 - v72;
  if (v73)
  {
    goto LABEL_120;
  }

  if ((v74 - 0x100000000) <= 0xFFFFFFFF00000000)
  {
    goto LABEL_27;
  }

  if (v68)
  {
    if (v67 <= 0)
    {
      goto LABEL_96;
    }

    goto LABEL_27;
  }

  v154 = *(v67 + 16);
  if (v154 > 0x8B)
  {
    goto LABEL_27;
  }

  v155 = (v67 + 32);
  while (v154)
  {
    v156 = *v155++;
    --v154;
    if (v156 < v74)
    {
      goto LABEL_27;
    }
  }

LABEL_96:
  if (v62)
  {
LABEL_27:
    sub_1B0B238BC(v18, type metadata accessor for MessageBatches);
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v220 = 0u;
    v221 = 0u;
    v222 = 0u;
    v223 = 0u;
    v58 = v189;
    a2 = v182;
  }

  else
  {
    *&v209 = v59;
    *(&v209 + 1) = v179;
    LOWORD(v210) = v180;
    *(&v210 + 1) = v60;
    LODWORD(v211) = v61;
    v207 = v60;
    v208 = v61;
    *(&v211 + 1) = &type metadata for DetectRemovedMessagesInRecent;
    v144 = v70;
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B23E80(v67, v68);
    sub_1B0451F2C();
    sub_1B0E461E8();
    v145 = v71;
    v146 = sub_1B0B48718(v71, v181, v62 & 1);
    v148 = v147;
    v149 = sub_1B0B238BC(v145, type metadata accessor for MessageBatches);
    *(&v214 + 1) = v146;
    LODWORD(v215) = v148;
    BYTE4(v215) = BYTE4(v148) & 1;
    *(&v215 + 5) = v144;
    if ((v68 & 1) == 0)
    {
      v150 = *(v67 + 16);
      v149 = sub_1B0AA93E0(v67, 0);
      v67 = v150;
    }

    v58 = v189;
    *(&v215 + 1) = v67;
    v221 = v213;
    v222 = v214;
    v217 = v209;
    v218 = v210;
    v219 = v211;
    v220 = v212;
    v223 = v215;
    a2 = v182;
    if (v209)
    {
      v229 = v221;
      v230 = v222;
      v231 = v223;
      v225 = v217;
      v226 = v218;
      v227 = v219;
      v228 = v220;
      MEMORY[0x1EEE9AC00](v149);
      *(&v164 - 2) = &v225;
      sub_1B0B19478(a2, v191, v58, v184, sub_1B0B241A8, &v209);
      if (*(&v210 + 1))
      {
        sub_1B0450C74(&v209, &v217);
        sub_1B0450C74(&v217, &v204);
        sub_1B0AA9424(&v225);
        goto LABEL_31;
      }

      sub_1B0398EFC(&v209, &qword_1EB6E45A8, &unk_1B0EC5920);
      sub_1B0AA9424(&v225);
LABEL_76:
      v76 = v183;
      v206 = 0;
      v204 = 0u;
      v205 = 0u;
      goto LABEL_77;
    }
  }

  v57 = sub_1B0398EFC(&v217, &qword_1EB6E4680, &qword_1B0EC5A18);
  v10 = v190;
LABEL_29:
  MEMORY[0x1EEE9AC00](v57);
  v75 = v186;
  *(&v164 - 4) = v10;
  *(&v164 - 3) = v75;
  *(&v164 - 2) = v188;
  sub_1B0B191FC(a2, v191, v58, v184, sub_1B0B24194, &v217);
  if (!*(&v218 + 1))
  {
    sub_1B0398EFC(&v217, &qword_1EB6E45A8, &unk_1B0EC5920);
    goto LABEL_76;
  }

  sub_1B0450C74(&v217, &v225);
  sub_1B0450C74(&v225, &v204);
LABEL_31:
  v76 = v183;
  if (*(&v205 + 1))
  {
    sub_1B0450C74(&v204, &v194);
    return sub_1B0450C74(&v194, v76);
  }

LABEL_77:
  result = sub_1B0398EFC(&v204, &qword_1EB6E45A8, &unk_1B0EC5920);
LABEL_61:
  *(v76 + 32) = 0;
  *v76 = 0u;
  *(v76 + 16) = 0u;
  return result;
}

uint64_t sub_1B0B1EE84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = *(a2 + 8);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v6 + 8 * v7 + 24);
  }

  else
  {
    v8 = 1;
  }

  v23 = v8;
  v9 = *(a1 + 43);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = *(a1 + 6);
  v22 = *(a3 + 4);
  v14 = a4 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v15 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v16 = (v14 + v15 + *(type metadata accessor for MailboxSyncState() + 76));
  v17 = *v16;
  v18 = v16[1];
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = static MonotonicTime.now()();
  result = sub_1B0451E64(&unk_1F2711358);
  *&v24 = result;
  BYTE8(v24) = 0;
  *&v31[16] = 0;
  v31[24] = 1;
  if (__OFSUB__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    v21 = exp2((v18 - 1));
    if (MonotonicTime.init(seconds:since:)(v17, fmin(v21 + v21, 37.0)) >= v19)
    {

      result = swift_bridgeObjectRelease_n();
      *(a5 + 121) = 0u;
      a5[6] = 0u;
      a5[7] = 0u;
      a5[4] = 0u;
      a5[5] = 0u;
      a5[2] = 0u;
      a5[3] = 0u;
      *a5 = 0u;
      a5[1] = 0u;
    }

    else
    {
      *&v25 = v10;
      *(&v25 + 1) = v11;
      LOWORD(v26) = v9;
      *(&v26 + 1) = v12;
      LODWORD(v27) = v13;
      *(&v27 + 1) = &type metadata for CountUnreadMessages;
      sub_1B0451F2C();
      result = sub_1B0E461E8();
      DWORD2(v30) = v23;
      *v31 = 1000000;
      v31[8] = 0;
      *&v31[9] = v22;
      a5[2] = v26;
      a5[3] = v27;
      a5[4] = v28;
      a5[5] = v29;
      *a5 = v24;
      a5[1] = v25;
      a5[6] = v30;
      a5[7] = *v31;
      *(a5 + 121) = *&v31[9];
    }
  }

  return result;
}

uint64_t sub_1B0B1F088@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v7 = type metadata accessor for UploadMessages(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + 43);
  v12 = *a1;
  v31 = a1[1];
  v13 = a1[2];
  v14 = *(a1 + 6);
  v36 = *(a2 + 1);
  v15 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v16 = v15 + *(_s13SelectedStateV7WrappedVMa(0) + 20);
  HIDWORD(v30) = *(v16 + 32);
  v17 = *(a2 + 32);
  LOBYTE(v15) = *(a2 + 40);
  v18 = type metadata accessor for MailboxSyncState();
  if (v15)
  {
    v19 = v17 != 0;
    v20 = 2;
    if (!v17)
    {
      v21 = (v16 + *(v18 + 72));
      if ((*(v21 + 9) & 1) == 0)
      {
        v22 = *v21;
        v23 = *(v21 + 8);
        if (v23)
        {
          v19 = 1;
        }

        else
        {
          v19 = v22;
        }

        if (v23)
        {
          v20 = 2;
        }

        else
        {
          v20 = 1;
        }
      }
    }
  }

  else
  {
    v20 = 0;
    v19 = v17;
  }

  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v11 + 5) = sub_1B0451E64(&unk_1F27111C8);
  v11[48] = 0;
  v24 = v7[13];
  v25 = type metadata accessor for UploadMessages.PendingUpload(0);
  (*(*(v25 - 8) + 56))(&v11[v24], 1, 1, v25);
  *&v11[v7[14]] = xmmword_1B0EC58F0;
  v11[v7[18]] = 0;
  v26 = v31;
  *v11 = v12;
  *(v11 + 1) = v26;
  *(v11 + 8) = v32;
  *(v11 + 3) = v13;
  *(v11 + 8) = v14;
  v34 = v13;
  v35 = v14;
  *(v11 + 7) = v7;
  sub_1B0451F2C();
  sub_1B0E461E8();
  v11[104] = v36;
  v11[105] = HIDWORD(v30) == 0;
  *(v11 + 14) = v19;
  v11[120] = v20;
  v27 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  *(v11 + 17) = v27;
  *(v11 + 18) = v27 + 32;
  *(v11 + 152) = xmmword_1B0EA4610;
  *&v11[v7[15]] = MEMORY[0x1E69E7CD0];
  *&v11[v7[16]] = v27;
  *&v11[v7[17]] = v27;
  v28 = v33;
  sub_1B0B24104(v11, v33, type metadata accessor for UploadMessages);
  return (*(v8 + 56))(v28, 0, 1, v7);
}

uint64_t sub_1B0B1F36C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = 0;
  v7 = result + 56;
  v8 = 1 << *(result + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(result + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a2 + 56;
  v13 = a3 + 56;
  v30 = a4 + 56;
  v31 = result;
LABEL_5:
  while (v10)
  {
    if (!*(a2 + 16))
    {
      return 1;
    }

LABEL_7:
    v14 = *(*(v5 + 48) + (__clz(__rbit64(v10)) | (v6 << 6)));
    v15 = *(a2 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v14);
    v16 = sub_1B0E46CB8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v12 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 1;
    }

    v10 &= v10 - 1;
    v19 = ~v17;
    while (*(*(a2 + 48) + v18) != v14)
    {
      v18 = (v18 + 1) & v19;
      if (((*(v12 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 1;
      }
    }

    if (*(a3 + 16))
    {
      v21 = *(a3 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v14);
      v22 = sub_1B0E46CB8();
      v23 = -1 << *(a3 + 32);
      v24 = v22 & ~v23;
      if ((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (*(*(a3 + 48) + v24) != v14)
        {
          v24 = (v24 + 1) & v25;
          if (((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        return 1;
      }
    }

LABEL_22:
    result = sub_1B03BE324(a2, a3);
    v5 = v31;
    if (result)
    {
      if (*(a4 + 16))
      {
        v26 = *(a4 + 40);
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v14);
        result = sub_1B0E46CB8();
        v5 = v31;
        v27 = -1 << *(a4 + 32);
        v28 = result & ~v27;
        if ((*(v30 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          v29 = ~v27;
          while (*(*(a4 + 48) + v28) != v14)
          {
            v28 = (v28 + 1) & v29;
            if (((*(v30 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          return 1;
        }
      }
    }
  }

  do
  {
    v20 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v20 >= v11)
    {
      return 0;
    }

    v10 = *(v7 + 8 * v20);
    ++v6;
  }

  while (!v10);
  v6 = v20;
  if (*(a2 + 16))
  {
    goto LABEL_7;
  }

  return 1;
}

void sub_1B0B1F618(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v43 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v22 = v43 - v21;
  v23 = *(a2 + 8);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = *(v23 + 8 * v24 + 24);
  }

  else
  {
    v25 = 1;
  }

  v26 = *(a1 + 43);
  v30 = (a3 & 0x10000000000) == 0;
  v28 = *a1;
  v27 = a1[1];
  v29 = a1[2];
  v30 = v30 || v25 == 1;
  v31 = v30;
  v49 = *(a1 + 6);
  v48 = v27;
  if (v30)
  {
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v32 = 0;
    v33 = 0;
    v34 = 1;
LABEL_22:
    *a4 = sub_1B0451E64(&unk_1F2711380);
    *(a4 + 8) = 1;
    v42 = v48;
    *(a4 + 16) = v28;
    *(a4 + 24) = v42;
    *(a4 + 32) = v26;
    *(a4 + 40) = v29;
    LODWORD(v42) = v49;
    *(a4 + 48) = v49;
    v51 = v29;
    v52 = v42;
    *(a4 + 56) = &type metadata for PurgeMessagesOutsideWindowOfInterest;
    sub_1B0451F2C();
    sub_1B0E461E8();
    *(a4 + 104) = v33;
    *(a4 + 112) = v31;
    *(a4 + 116) = v32;
    *(a4 + 124) = v34 & 1;
    return;
  }

  v47 = v26;
  v35 = a1[5];
  v36 = *(a1 + 48);
  LODWORD(v50) = 1;
  if (v25 >= 2)
  {
    v43[1] = v20;
    v44 = v35;
    v46 = v31;
    v53 = v25 - 1;
    v37 = sub_1B041C1E8();
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    static MessageIdentifier.... infix(_:_:)(&v50, &v53, &type metadata for UID, v37, &v51);
    v45 = v51 | (HIDWORD(v51) << 32);
    if (v36)
    {
      v32 = 0;
    }

    else
    {
      v50 = Range<>.init<A>(_:)(&v51, &type metadata for UID, v37);
      sub_1B03D06F8();
      sub_1B0E46F08();
      v51 = v44;
      v50 = Range<>.init<A>(_:)(&v51, &type metadata for UID, v37);
      sub_1B0E46F08();
      MessageIdentifierSet.subtracting(_:)(v22, v18);
      sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      MessageIdentifierSet.ranges.getter(v11);
      sub_1B0398EFC(v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v32 = sub_1B0B4A3E8();
      v39 = v38;
      sub_1B0398EFC(v11, &unk_1EB6E2780, &unk_1B0E9C5E0);
      sub_1B0398EFC(v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if ((v39 & 1) == 0)
      {
        v40 = v32 == v44;
        v41 = HIDWORD(v44) == HIDWORD(v32);
        v34 = v40 && v41;
        if (v40 && v41)
        {
          v32 = 0;
        }

        goto LABEL_21;
      }

      v32 = 1;
    }

    v34 = 1;
LABEL_21:
    LOBYTE(v31) = v46;
    LOWORD(v26) = v47;
    v33 = v45;
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_1B0B1F9EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a5;
  v61 = a3;
  v64 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45F0, &unk_1B0EC5960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v47 - v11;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v13 = *(SearchResult - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](SearchResult);
  v57 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v63 = *(SearchResultMessages - 1);
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](SearchResultMessages);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MessageBatches(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(a1 + 43);
  v24 = *a1;
  v55 = a1[1];
  v25 = a1[2];
  v54 = *(a1 + 6);
  v60 = a1[5];
  v59 = *(a1 + 48);
  sub_1B03BCDD0(a2, v23, type metadata accessor for MessageBatches);
  v26 = a1[19];
  v27 = v61 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v28 = (v27 + *(_s13SelectedStateV7WrappedVMa(0) + 20));
  v29 = v28[144];
  v52 = v28[145];
  v53 = v29;
  v30 = v28[146];
  v50 = v28[147];
  v51 = v30;
  v49 = v28[148];
  v67 = *(a4 + 1);
  *v19 = MEMORY[0x1E69E7CD0];
  v19[8] = 0;
  v31 = SearchResultMessages[13];
  v32 = type metadata accessor for NewServerMessages();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v61 = v31;
  v47 = v33 + 56;
  v48 = v34;
  v34(&v19[v31], 1, 1, v32);
  swift_bridgeObjectRetain_n();
  v35 = v24;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v36 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AD74BC(v36, v60, v59 & 1, v12);
  if ((*(v13 + 48))(v12, 1, SearchResult) == 1)
  {
    swift_bridgeObjectRelease_n();

    sub_1B0B238BC(v23, type metadata accessor for MessageBatches);
    sub_1B0398EFC(v12, &qword_1EB6E45F0, &unk_1B0EC5960);
    sub_1B0398EFC(&v19[v61], &qword_1EB6E41C0, &unk_1B0EC4330);
    return (*(v63 + 56))(v64, 1, 1, SearchResultMessages);
  }

  else
  {
    v38 = v57;
    sub_1B0B24104(v12, v57, type metadata accessor for FetchSearchResultMessages.Requests);
    v39 = SearchResultMessages[8];
    v65 = v25;
    v40 = v54;
    v66 = v54;
    *&v19[v39] = SearchResultMessages;
    sub_1B0451F2C();
    sub_1B0E461E8();
    v41 = v55;
    *(v19 + 2) = v35;
    *(v19 + 3) = v41;
    *(v19 + 16) = v56;
    *(v19 + 5) = v25;
    *(v19 + 12) = v40;
    sub_1B0B24104(v23, &v19[SearchResultMessages[7]], type metadata accessor for MessageBatches);
    v42 = v61;
    sub_1B0398EFC(&v19[v61], &qword_1EB6E41C0, &unk_1B0EC4330);
    v48(&v19[v42], 1, 1, v32);
    v43 = &v19[SearchResultMessages[9]];
    v44 = v52;
    *v43 = v53;
    v43[1] = v44;
    v45 = v50;
    v43[2] = v51;
    v43[3] = v45;
    v43[4] = v49;
    v19[SearchResultMessages[10]] = v67;
    v19[SearchResultMessages[11]] = BYTE6(v58) & 1;
    sub_1B0B24104(v38, &v19[SearchResultMessages[12]], type metadata accessor for FetchSearchResultMessages.Requests);
    v46 = v64;
    sub_1B03BCDD0(v19, v64, type metadata accessor for FetchSearchResultMessages);
    (*(v63 + 56))(v46, 0, 1, SearchResultMessages);
    return sub_1B0B238BC(v19, type metadata accessor for FetchSearchResultMessages);
  }
}

uint64_t sub_1B0B1FF48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v7 = type metadata accessor for MessageBatches(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = *(a1 + 43);
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = *(a1 + 6);
  v26 = a1[5];
  v25 = *(a1 + 48);
  sub_1B03BCDD0(a2, &v23 - v12, type metadata accessor for MessageBatches);
  LOWORD(a2) = *(v24 + 4);
  *(a4 + 36) = 1;
  *(a4 + 104) = 0;
  *(a4 + 112) = 1;
  *a4 = v15;
  *(a4 + 8) = v16;
  *(a4 + 16) = v14;
  *(a4 + 24) = v17;
  *(a4 + 32) = v18;
  v27 = v17;
  v28 = v18;
  *(a4 + 40) = &type metadata for DetectRemovedMessages;
  sub_1B0451F2C();
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  sub_1B03BCDD0(v13, v11, type metadata accessor for MessageBatches);
  v19 = sub_1B0B48350(v11, v26, v25 & 1);
  v21 = v20;
  result = sub_1B0B238BC(v13, type metadata accessor for MessageBatches);
  *(a4 + 88) = v19;
  *(a4 + 96) = v21;
  *(a4 + 100) = BYTE4(v21) & 1;
  *(a4 + 101) = a2;
  return result;
}

double sub_1B0B20110@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v9 = type metadata accessor for MessageBatches(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29[-v14];
  v30 = *(a1 + 43);
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  v19 = *(a1 + 6);
  v33 = a1[5];
  v32 = *(a1 + 48);
  LOBYTE(a2) = *(a2 + 1);
  v20 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  LODWORD(a1) = *(v20 + *(_s13SelectedStateV7WrappedVMa(0) + 20) + 32);
  sub_1B03BCDD0(v31, v15, type metadata accessor for MessageBatches);
  *(&v38 + 1) = sub_1B03D0770(&unk_1F27113A8);
  LOBYTE(v39) = 1;
  v43 = 0uLL;
  v44[0] = 1;
  *&v36 = v16;
  *(&v36 + 1) = v17;
  LOWORD(v37) = v30;
  *(&v37 + 1) = v18;
  LODWORD(v38) = v19;
  BYTE8(v42) = a2;
  BYTE9(v42) = a1 == 0;
  v34 = v18;
  v35 = v19;
  *(&v39 + 1) = &type metadata for DetectChangesToMessages;
  sub_1B0451F2C();
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  sub_1B03BCDD0(v15, v13, type metadata accessor for MessageBatches);
  LOBYTE(v34) = 0;
  sub_1B0B3EDEC(0xFFFFFFFFLL);
  v21 = sub_1B0B48350(v13, v33, v32 & 1);
  v23 = v22;
  sub_1B0B238BC(v15, type metadata accessor for MessageBatches);
  *&v44[8] = v21;
  *&v44[16] = v23;
  v44[20] = BYTE4(v23) & 1;
  v24 = v43;
  *(a5 + 96) = v42;
  *(a5 + 112) = v24;
  v25 = v39;
  *(a5 + 32) = v38;
  *(a5 + 48) = v25;
  v26 = v41;
  *(a5 + 64) = v40;
  *(a5 + 80) = v26;
  v27 = v37;
  *a5 = v36;
  *(a5 + 16) = v27;
  result = *v44;
  *(a5 + 128) = *v44;
  *(a5 + 141) = *&v44[13];
  return result;
}

unint64_t sub_1B0B203CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_u64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_u64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_u64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_u64(v9.u64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_1B0B20480()
{
  v1 = *v0;
  v2 = v0[2];
  v37 = v0[3];
  v38 = v0[1];
  v3 = v0[4];
  v4 = v0[6];
  v33 = v0[7];
  v34 = v0[5];
  v5 = v0[8];
  v52[0] = v1;
  v35 = v1;
  v6 = *(v1 + 16);
  sub_1B03B5C80(v52, &v43, &qword_1EB6E45C8, &qword_1B0EC5940);

  if (v6)
  {
    v7 = 0;
    v8 = (v35 + 64);
    while (1)
    {
      v9 = v7 + 1;
      v10 = *v8;
      v11 = *(v8 - 2);
      v12 = *(v8 - 1);
      v13 = *(v8 - 3);
      LODWORD(v43) = *(v8 - 8);
      v44 = v13;
      v45 = v11;
      v46 = v12;
      v47 = v10;
      sub_1B03B2000(v13, v11);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v38(&v39, &v43);
      sub_1B0391D50(v44, v45);

      v14 = v39;
      v15 = v40;
      v16 = v42;
      v17 = v41;
      v48 = v39;
      v49 = v40;
      v51 = v42;
      v50 = v41;
      if (v37(&v48))
      {
        break;
      }

      v8 += 40;
      ++v7;
      if (v6 == v9)
      {
        goto LABEL_5;
      }
    }

    v43 = v14;
    v44 = v15;
    LOWORD(v45) = v17;
    BYTE2(v45) = (v17 | (v16 << 16)) >> 16;
    v34(&v48, &v43);
    LODWORD(v43) = v48;
    v44 = v49;
    LOWORD(v45) = v50;
    BYTE2(v45) = v51;
    result = v33(&v48, &v43);
    v19 = v48;
    if (v6 - 1 != v7)
    {
      v20 = v35 + 64;
      v32 = v35 + 64;
      do
      {
        v36 = v19;
        v21 = (v20 + 40 * v9);
        while (1)
        {
          if (v9 >= v6)
          {
            __break(1u);
LABEL_21:
            __break(1u);
            return result;
          }

          v22 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_21;
          }

          v23 = *v21;
          v24 = *(v21 - 2);
          v25 = *(v21 - 1);
          v26 = *(v21 - 3);
          LODWORD(v43) = *(v21 - 8);
          v44 = v26;
          v45 = v24;
          v46 = v25;
          v47 = v23;
          sub_1B03B2000(v26, v24);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v38(&v39, &v43);
          sub_1B0391D50(v44, v45);

          v28 = v39;
          v27 = v40;
          v29 = v42;
          v30 = v41;
          v48 = v39;
          v49 = v40;
          v51 = v42;
          v50 = v41;
          result = v37(&v48);
          if (result)
          {
            break;
          }

          ++v9;
          v21 += 40;
          if (v22 == v6)
          {
            v19 = v36;
            goto LABEL_18;
          }
        }

        v43 = v28;
        v44 = v27;
        LOWORD(v45) = v30;
        BYTE2(v45) = (v30 | (v29 << 16)) >> 16;
        v34(&v48, &v43);
        LODWORD(v43) = v48;
        v44 = v49;
        LOWORD(v45) = v50;
        BYTE2(v45) = v51;
        result = v33(&v48, &v43);
        if (v36 <= v48)
        {
          v19 = v48;
        }

        else
        {
          v19 = v36;
        }

        ++v9;
        v20 = v32;
      }

      while (v22 != v6);
    }

LABEL_18:
    v31 = v19;
    sub_1B0398EFC(v52, &qword_1EB6E45C8, &qword_1B0EC5940);

    return v31;
  }

  else
  {
LABEL_5:
    sub_1B0398EFC(v52, &qword_1EB6E45C8, &qword_1B0EC5940);

    return 5;
  }
}

uint64_t sub_1B0B20838(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0B8C8B0(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B0B208F0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 24 * v2 + 25;
  v7 = 49;
  v16 = v2 >> 1;
  while (1)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v10 = *(v1 + 16);
    if (v3 >= v10)
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_12;
    }

    v19 = *(v1 + v7 - 17);
    v18 = *(v1 + v7 - 9);
    v17 = *(v1 + v7 - 1);
    v11 = *(v1 + v7);
    v12 = *(v1 + v6 - 17);
    v13 = *(v1 + v6 - 9);
    v14 = *(v1 + v6 - 1);
    v15 = *(v1 + v6);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0B8C98C(v1);
      v1 = result;
    }

    v8 = (v1 + v7);
    *(v8 - 17) = v12;
    *(v8 - 9) = v13;
    *(v8 - 1) = v14;
    *v8 = v15;
    v9 = (v1 + v6);
    *(v9 - 17) = v19;
    *(v9 - 9) = v18;
    *(v9 - 1) = v17;
    *v9 = v11;
    v4 = v16;
LABEL_5:
    ++v3;
    --v5;
    v6 -= 24;
    v7 += 24;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B0B20A30(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v4 = a2;
  v8 = a3;
  v9 = a4;
  sub_1B0E46AD8();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);

  if (__OFSUB__(v9 >> 1, v8))
  {
    goto LABEL_22;
  }

  if (v11 != (v9 >> 1) - v8)
  {
LABEL_23:
    swift_unknownObjectRelease();
    a3 = v8;
    a4 = v9;
    a2 = v4;
LABEL_2:
    sub_1B0B21D00(a1, a2, a3, a4);
    v7 = v6;
    goto LABEL_9;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v7)
  {
    goto LABEL_10;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  v12 = *(v7 + 16);
  if (v12 >= 2)
  {
    a1 = 0;
    v14 = v12 >> 1;
    v9 = v12 - 1;
    v8 = 24 * v12 + 25;
    v15 = 49;
    v23 = v12 >> 1;
    do
    {
      if (a1 != v9)
      {
        v18 = *(v7 + 16);
        if (a1 >= v18)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        if (v9 >= v18)
        {
          goto LABEL_21;
        }

        v26 = *(v7 + v15 - 17);
        v25 = *(v7 + v15 - 9);
        v24 = *(v7 + v15 - 1);
        v19 = *(v7 + v15);
        v4 = *(v7 + v8 - 17);
        v20 = *(v7 + v8 - 9);
        v21 = *(v7 + v8 - 1);
        v22 = *(v7 + v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1B0B8C98C(v7);
        }

        v16 = (v7 + v15);
        *(v16 - 17) = v4;
        *(v16 - 9) = v20;
        *(v16 - 1) = v21;
        *v16 = v22;
        v17 = (v7 + v8);
        *(v17 - 17) = v26;
        *(v17 - 9) = v25;
        *(v17 - 1) = v24;
        *v17 = v19;
        v14 = v23;
      }

      ++a1;
      --v9;
      v8 -= 24;
      v15 += 24;
    }

    while (v14 != a1);
  }

  return v7;
}

uint64_t sub_1B0B20C24(char **a1, uint64_t a2, void *a3)
{
  v5 = a3[1];
  v85 = *a3;
  v6 = a3[2];
  v90 = a3[3];
  v91 = v5;
  v7 = a3[4];
  v86 = a3[5];
  v79 = a3;
  v87 = a3[6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v79 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v79 - v13;
  v84 = a1;
  v15 = *a1;
  sub_1B03B5C80(a2, &v79 - v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v83 = a2;
  v16 = MessageIdentifierSet.startIndex.getter(v8);
  v18 = v17;
  v81 = 0;
  while (v16 != MessageIdentifierSet.endIndex.getter(v8) || v18 != v23)
  {
    MessageIdentifierSet.subscript.getter(v18, v8, &v101);
    v19 = v101;
    v16 = MessageIdentifierSet.index(_:offsetBy:)(v16, v18, 1);
    v18 = v20;
    v21 = sub_1B03FE284(v19);
    if (v22)
    {
      v24 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B0B8DCCC();
        v15 = v101;
      }

      sub_1B0B90410(v24, v15);
    }
  }

  v88 = v15;
  v26 = &v14[*(v11 + 36)];
  *v26 = v16;
  v26[1] = v18;
  sub_1B0398EFC(v14, &qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v27 = v85;
  v100 = v85;
  v28 = *(v85 + 16);
  sub_1B03B5C80(&v100, &v101, &qword_1EB6E45C8, &qword_1B0EC5940);
  v29 = v6;

  v92 = v7;

  if (v28)
  {
    v30 = 0;
    v31 = v27 + 64;
    v89 = v8;
    v80 = v27 + 64;
    do
    {
      v32 = (v31 + 40 * v30);
      v33 = v30;
      while (1)
      {
        if (v33 >= v28)
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v30 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_43;
        }

        v34 = *v32;
        v35 = *(v32 - 2);
        v36 = *(v32 - 1);
        v37 = *(v32 - 3);
        LODWORD(v101) = *(v32 - 8);
        v102 = v37;
        v103 = v35;
        v104 = v36;
        LOBYTE(v105) = v34;
        sub_1B03B2000(v37, v35);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v38 = v29;
        v91(&v93, &v101);
        sub_1B0391D50(v102, v103);

        v39 = v93;
        v40 = v94;
        v41 = v96;
        v42 = v95;
        v97[0] = v93;
        v97[1] = v94;
        v99 = v96;
        v98 = v95;
        if ((v90)(v97))
        {
          v101 = v39;
          v102 = v40;
          LOWORD(v103) = v42;
          BYTE2(v103) = (v42 | (v41 << 16)) >> 16;
          v86(v97, &v101);
          v43 = sub_1B03FE284(LODWORD(v97[0]));
          if (v44)
          {
            break;
          }
        }

        ++v33;
        v32 += 40;
        v8 = v89;
        if (v30 == v28)
        {
          goto LABEL_20;
        }
      }

      v45 = v43;
      v46 = v88;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v101 = v46;
      if ((v47 & 1) == 0)
      {
        sub_1B0B8DCCC();
        v46 = v101;
      }

      v88 = v46;
      sub_1B0B90410(v45, v46);
      v29 = v38;
      v8 = v89;
      v31 = v80;
    }

    while (v30 != v28);
  }

LABEL_20:
  sub_1B0398EFC(&v100, &qword_1EB6E45C8, &qword_1B0EC5940);
  v48 = v29;

  v49 = v88;
  v50 = *(v88 + 2);
  v51 = MEMORY[0x1E69E7CC0];
  if (v50 && (v51 = sub_1B0B890F8(*(v88 + 2), 0), v52 = sub_1B0B8C390(&v101, (v51 + 32), v50, v49), v28 = v104, v80 = v105, _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), sub_1B03D91F8(), v52 != v50))
  {
LABEL_44:
    __break(1u);
  }

  else
  {
    v101 = v51;

    v28 = v81;
    sub_1B0B219D8(&v101);
    v53 = v83;
    v54 = v84;
    v55 = v82;
    if (!v28)
    {

      v81 = v101;
      v56 = v54 + *(type metadata accessor for MessagesPendingDownload() + 20);
      MessageIdentifierSet.union(_:)(v53, v55);
      v57 = MessageIdentifierSet.startIndex.getter(v8);
      v59 = v58;
      v61 = v57 == MessageIdentifierSet.endIndex.getter(v8) && v59 == v60;
      v62 = v61;
      LODWORD(v80) = v62;
      if (v61)
      {
        sub_1B0398EFC(v55, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v89 = 0;
      }

      else
      {
        MessageIdentifierSet.subscript.getter(v59, v8, &v101);
        sub_1B0398EFC(v55, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v89 = v101;
      }

      v101 = v85;
      v102 = v91;
      v103 = v48;
      v104 = v90;
      v105 = v92;
      v106 = v86;
      v107 = v87;
      v108 = sub_1B0B42278;
      v109 = 0;
      sub_1B03B5C80(&v100, v97, &qword_1EB6E45C8, &qword_1B0EC5940);

      v63 = sub_1B0B20480();
      sub_1B0398EFC(&v100, &qword_1EB6E45C8, &qword_1B0EC5940);

      if (v63 == 5)
      {
        sub_1B0398EFC(&v100, &qword_1EB6E45C8, &qword_1B0EC5940);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v64);
        *(&v79 - 2) = v53;
        *(&v79 - 8) = v63;
        sub_1B03B5C80(&v100, v97, &qword_1EB6E45C8, &qword_1B0EC5940);

        v97[0] = sub_1B0B21548(sub_1B0B23A6C);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B21858(v97);

        sub_1B0398EFC(&v100, &qword_1EB6E45C8, &qword_1B0EC5940);

        v65 = v97[0];
        v66 = *(v97[0] + 2);
        if (v66)
        {
          v97[0] = MEMORY[0x1E69E7CC0];
          sub_1B0B0A244(0, v66, 0);
          v67 = 0;
          v68 = v97[0];
          v69 = *(v97[0] + 2);
          v70 = 24 * v69;
          do
          {
            v71 = *&v65[v67 + 32];
            v72 = *&v65[v67 + 40];
            v73 = v65[v67 + 48];
            v74 = v65[v67 + 49];
            v97[0] = v68;
            v75 = *(v68 + 3);
            v76 = v69 + 1;
            if (v69 >= v75 >> 1)
            {
              sub_1B0B0A244((v75 > 1), v69 + 1, 1);
              v68 = v97[0];
            }

            *(v68 + 2) = v76;
            v77 = &v68[v70 + v67];
            *(v77 + 8) = v71;
            *(v77 + 5) = v72;
            v77[48] = v73;
            v77[49] = v74;
            v67 += 24;
            v69 = v76;
            --v66;
          }

          while (v66);
          sub_1B0B238BC(v84, type metadata accessor for MessagesPendingDownload);

          v53 = v83;
          goto LABEL_41;
        }
      }

      sub_1B0B238BC(v84, type metadata accessor for MessagesPendingDownload);

LABEL_41:
      sub_1B0398EFC(v53, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      LOBYTE(v101) = v80;
      return v81;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B0B21548(uint64_t result)
{
  v3 = v2;
  v31 = result;
  v4 = *v1;
  v36 = v1[3];
  v37 = v1[1];
  v5 = v1[4];
  v38 = v1[2];
  v30 = v1[5];
  v34 = v1[6];
  v57 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v4 + 64;
    v35 = *(v4 + 16);
    v29 = v6 - 1;
    v33 = MEMORY[0x1E69E7CC0];
    do
    {
      v32 = v3;
      v9 = (v8 + 40 * v7);
      v10 = v7;
      while (1)
      {
        if (v10 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v7 = v10 + 1;
        v11 = *v9;
        v12 = *(v9 - 2);
        v13 = *(v9 - 1);
        v14 = *(v9 - 3);
        LODWORD(v43) = *(v9 - 8);
        v44 = v14;
        v45 = v12;
        v46 = v13;
        v47 = v11;
        sub_1B03B2000(v14, v12);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v37(&v39, &v43);
        sub_1B0391D50(v44, v45);

        v15 = v39;
        v16 = v40;
        v17 = v42;
        v18 = v41;
        v48 = v39;
        v49 = v40;
        v51 = v42;
        v50 = v41;
        result = v36(&v48);
        if (result)
        {
          break;
        }

        v9 += 40;
        ++v10;
        if (v35 == v7)
        {
          goto LABEL_18;
        }
      }

      v43 = v15;
      v44 = v16;
      LOWORD(v45) = v18;
      BYTE2(v45) = (v18 | (v17 << 16)) >> 16;
      v30(&v48, &v43);
      v19 = v48;
      v20 = v49;
      v21 = v50;
      v22 = HIBYTE(v50);
      v52 = v48;
      v53 = v49;
      v54 = v50;
      v28 = v51;
      v55 = v51;
      result = v31(&v52);
      v3 = v32;
      if (v32)
      {
        sub_1B0398EFC(&v57, &qword_1EB6E45C8, &qword_1B0EC5940);

        goto LABEL_19;
      }

      if (result)
      {
        v23 = v33;
        result = swift_isUniquelyReferenced_nonNull_native();
        v56 = v33;
        if ((result & 1) == 0)
        {
          result = sub_1B0B0A2E4(0, *(v33 + 16) + 1, 1);
          v23 = v56;
        }

        v25 = *(v23 + 16);
        v24 = *(v23 + 24);
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          result = sub_1B0B0A2E4((v24 > 1), v25 + 1, 1);
          v26 = v25 + 1;
          v23 = v56;
        }

        *(v23 + 16) = v26;
        v33 = v23;
        v27 = v23 + 24 * v25;
        *(v27 + 32) = v19;
        *(v27 + 40) = v20;
        *(v27 + 48) = v21;
        *(v27 + 49) = v22;
        *(v27 + 50) = v28;
        v3 = v32;
      }

      v8 = v4 + 64;
    }

    while (v29 != v10);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:
  sub_1B0398EFC(&v57, &qword_1EB6E45C8, &qword_1B0EC5940);

LABEL_19:

  return v33;
}

uint64_t sub_1B0B21858(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0B94680(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1B0E469A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 4);
          if (v14 >= *(v12 - 2))
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = v12[32];
          v17 = v12[33];
          result = v12[34];
          *v13 = *(v12 - 8);
          v18 = *(v12 + 1);
          *(v12 - 2) = v14;
          *v12 = v15;
          v12[8] = v16;
          v12[9] = v17;
          v12[10] = result;
          v12 -= 24;
          *(v13 + 2) = v18;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45D0, &qword_1B0EC5948);
      v7 = sub_1B0E45278();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_1B0B2266C(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B0B219D8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0B946B8(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1B0E469A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 4);
          if (v14 >= *(v12 - 2))
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = v12[32];
          v17 = v12[33];
          *v13 = *(v12 - 8);
          v18 = *(v12 + 1);
          *(v12 - 2) = v14;
          *v12 = v15;
          v12[8] = v16;
          v12[9] = v17;
          v12 -= 24;
          *(v13 + 2) = v18;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B0E45278();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_1B0B22C58(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1B0B21B68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (v6 != a3)
      {
LABEL_7:
        memcpy(v10 + 4, (a2 + 4 * a3), 4 * v7);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_0(v10);
      v12 = v11 - 32;
      if (v11 < 32)
      {
        v12 = v11 - 29;
      }

      v10[2] = v7;
      v10[3] = 2 * (v12 >> 2);
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1B0B21C30(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size_0(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1B0B21D00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4388, &qword_1B0EC50D0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size_0(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + 24 * a3), 24 * v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_1B0B21DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1B0B8904C(*(a3 + 16), 0);
  v8 = sub_1B0B8C4AC(&v10, v7 + 32, v3, a1, a2, a3);

  if (v8 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

void *sub_1B0B21EB0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1B03D0298(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1B0B21F40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4728, &qword_1B0EC5B88);
  result = sub_1B0E466A8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(v4 + 48) + 16 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v33 = *(v17 + v16);
    v21 = *(v9 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v20 | (v20 << 32));
    result = sub_1B0E46CB8();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v9 + 48) + 16 * v25;
    *v30 = v19;
    *(v30 + 8) = v20;
    *(*(v9 + 56) + v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B0B22180(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4730, qword_1B0EC5B90);
  result = sub_1B0E466A8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v40 = v4;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v16 = v13 | (v11 << 6);
      v17 = *(v4 + 56);
      v18 = *(v4 + 48) + 16 * v16;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = (v17 + 72 * v16);
      v22 = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v46 = *(v21 + 32);
      v44 = v23;
      v45 = v24;
      v42 = *v21;
      v43 = v22;
      v25 = *(v9 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v20 | (v20 << 32));
      result = sub_1B0E46CB8();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        break;
      }

      v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v34 = *(v9 + 48) + 16 * v29;
      *v34 = v19;
      *(v34 + 8) = v20;
      v35 = *(v9 + 56) + 72 * v29;
      *v35 = v42;
      v36 = v43;
      v37 = v44;
      v38 = v45;
      *(v35 + 64) = v46;
      *(v35 + 32) = v37;
      *(v35 + 48) = v38;
      *(v35 + 16) = v36;
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_34;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (!v5)
      {
        sub_1B03BB0B4(&v42, v41);
        return v9;
      }

      result = sub_1B03BB0B4(&v42, v41);
      v4 = v40;
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v30 = 0;
    v31 = (63 - v26) >> 6;
    while (++v28 != v31 || (v30 & 1) == 0)
    {
      v32 = v28 == v31;
      if (v28 == v31)
      {
        v28 = 0;
      }

      v30 |= v32;
      v33 = *(v12 + 8 * v28);
      if (v33 != -1)
      {
        v29 = __clz(__rbit64(~v33)) + (v28 << 6);
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = v11;
    while (1)
    {
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v11 >= a2)
      {
        return v9;
      }

      v15 = a1[v11];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1B0B22418(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4710, &unk_1B0EC5A90);
  result = sub_1B0E466A8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 4 * v16);
    v18 = *(v4 + 56) + 24 * v16;
    v19 = *(v18 + 8);
    v32 = *(v18 + 16);
    v33 = *v18;
    v20 = *(v9 + 40);
    sub_1B0E46C28();
    sub_1B0E46C88();
    result = sub_1B0E46CB8();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 4 * v24) = v17;
    v29 = *(v9 + 56) + 24 * v24;
    *v29 = v33;
    *(v29 + 8) = v19;
    *(v29 + 16) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B0B2266C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v98 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v99 = *v98;
    if (!*v98)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B0B9443C(v8);
      v8 = result;
    }

    v90 = (v8 + 16);
    v91 = *(v8 + 16);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = (v8 + 16 * v91);
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_1B0B23234((*a3 + 24 * *v92), (*a3 + 24 * *v94), *a3 + 24 * v95, v99);
        if (v5)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_114;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_115;
        }

        *v92 = v93;
        v92[1] = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_116;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v97 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 24 * v7);
      v11 = (*a3 + 24 * v9);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *v13;
        v17 = v13[6];
        v13 += 6;
        ++v15;
        if (v10 < v12 == v17 >= v16)
        {
          v7 = v15 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 24 * v7 - 8;
        v19 = 24 * v9 + 18;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v29 + v19);
            v23 = *(v29 + v19 - 18);
            v24 = v29 + v18;
            v25 = *(v22 - 10);
            v26 = *(v22 - 2);
            v27 = *(v22 - 1);
            v28 = *v22;
            result = *v24;
            *(v22 - 18) = *(v24 - 16);
            *(v22 - 2) = result;
            *(v24 - 16) = v23;
            *(v24 - 8) = v25;
            *v24 = v26;
            *(v24 + 1) = v27;
            *(v24 + 2) = v28;
          }

          ++v21;
          v18 -= 24;
          v19 += 24;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v43 = *(v8 + 16);
    v42 = *(v8 + 24);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_1B0AFF300((v42 > 1), v43 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v44;
    v45 = v8 + 32;
    v46 = (v8 + 32 + 16 * v43);
    *v46 = v9;
    v46[1] = v7;
    v99 = *v98;
    if (!*v98)
    {
      goto LABEL_127;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v8 + 32);
          v49 = *(v8 + 40);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_57:
          if (v51)
          {
            goto LABEL_104;
          }

          v64 = (v8 + 16 * v44);
          v66 = *v64;
          v65 = v64[1];
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_106;
          }

          v70 = (v45 + 16 * v47);
          v72 = *v70;
          v71 = v70[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_111;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v44 < 2)
        {
          goto LABEL_112;
        }

        v74 = (v8 + 16 * v44);
        v76 = *v74;
        v75 = v74[1];
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_72:
        if (v69)
        {
          goto LABEL_108;
        }

        v77 = (v45 + 16 * v47);
        v79 = *v77;
        v78 = v77[1];
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_110;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v85 = (v45 + 16 * (v47 - 1));
        v86 = *v85;
        v87 = (v45 + 16 * v47);
        v88 = v87[1];
        sub_1B0B23234((*a3 + 24 * *v85), (*a3 + 24 * *v87), *a3 + 24 * v88, v99);
        if (v5)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_99;
        }

        if (v47 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *(v8 + 16);
        if (v47 >= v89)
        {
          goto LABEL_101;
        }

        v44 = v89 - 1;
        result = memmove((v45 + 16 * v47), v87 + 2, 16 * (v89 - 1 - v47));
        *(v8 + 16) = v89 - 1;
        if (v89 <= 2)
        {
          goto LABEL_3;
        }
      }

      v52 = v45 + 16 * v44;
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_102;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_103;
      }

      v59 = (v8 + 16 * v44);
      v61 = *v59;
      v60 = v59[1];
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_105;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_107;
      }

      if (v63 >= v55)
      {
        v81 = (v45 + 16 * v47);
        v83 = *v81;
        v82 = v81[1];
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v97;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 24 * v7 - 24;
  v32 = v9 - v7;
LABEL_30:
  v33 = v32;
  v34 = v31;
  while (1)
  {
    v35 = v34 + 24;
    v36 = *(v34 + 24);
    if (v36 >= *v34)
    {
LABEL_29:
      ++v7;
      v31 += 24;
      --v32;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v37 = *(v34 + 32);
    v38 = *(v34 + 40);
    v39 = *(v34 + 41);
    result = *(v34 + 42);
    *v35 = *v34;
    v40 = *(v34 + 16);
    *v34 = v36;
    *(v34 + 8) = v37;
    *(v34 + 16) = v38;
    *(v34 + 17) = v39;
    *(v34 + 18) = result;
    v34 -= 24;
    *(v35 + 16) = v40;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1B0B22C58(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B0B9443C(v8);
      v8 = result;
    }

    v89 = (v8 + 16);
    v90 = *(v8 + 16);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = (v8 + 16 * v90);
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_1B0B23234((*a3 + 24 * *v91), (*a3 + 24 * *v93), *a3 + 24 * v94, v98);
        if (v5)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_114;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_115;
        }

        *v91 = v92;
        v91[1] = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_116;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v96 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 24 * v7);
      v11 = (*a3 + 24 * v9);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *v13;
        v17 = v13[6];
        v13 += 6;
        ++v15;
        if (v10 < v12 == v17 >= v16)
        {
          v7 = v15 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 24 * v7 - 8;
        v19 = 24 * v9 + 17;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v29 + v19);
            v23 = *(v29 + v19 - 17);
            v24 = (v29 + v18);
            v25 = *(v22 - 9);
            v26 = *(v22 - 1);
            v27 = *v22;
            v28 = *v24;
            *(v22 - 17) = *(v24 - 1);
            *(v22 - 1) = v28;
            *(v24 - 4) = v23;
            *(v24 - 1) = v25;
            *v24 = v26;
            *(v24 + 1) = v27;
          }

          ++v21;
          v18 -= 24;
          v19 += 24;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v42 = *(v8 + 16);
    v41 = *(v8 + 24);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1B0AFF300((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v43;
    v44 = v8 + 32;
    v45 = (v8 + 32 + 16 * v42);
    *v45 = v9;
    v45[1] = v7;
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_127;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v8 + 32);
          v48 = *(v8 + 40);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = (v8 + 16 * v43);
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = (v44 + 16 * v46);
          v71 = *v69;
          v70 = v69[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v43 < 2)
        {
          goto LABEL_112;
        }

        v73 = (v8 + 16 * v43);
        v75 = *v73;
        v74 = v73[1];
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_72:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = (v44 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = (v44 + 16 * (v46 - 1));
        v85 = *v84;
        v86 = (v44 + 16 * v46);
        v87 = v86[1];
        sub_1B0B23234((*a3 + 24 * *v84), (*a3 + 24 * *v86), *a3 + 24 * v87, v98);
        if (v5)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v46 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *(v8 + 16);
        if (v46 >= v88)
        {
          goto LABEL_101;
        }

        v43 = v88 - 1;
        result = memmove((v44 + 16 * v46), v86 + 2, 16 * (v88 - 1 - v46));
        *(v8 + 16) = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = v44 + 16 * v43;
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = (v8 + 16 * v43);
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = (v44 + 16 * v46);
        v82 = *v80;
        v81 = v80[1];
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v96;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 24 * v7 - 24;
  v32 = v9 - v7;
LABEL_30:
  v33 = v32;
  v34 = v31;
  while (1)
  {
    v35 = v34 + 24;
    v36 = *(v34 + 24);
    if (v36 >= *v34)
    {
LABEL_29:
      ++v7;
      v31 += 24;
      --v32;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v37 = *(v34 + 32);
    v38 = *(v34 + 40);
    v39 = *(v34 + 41);
    *v35 = *v34;
    result = *(v34 + 16);
    *v34 = v36;
    *(v34 + 8) = v37;
    *(v34 + 16) = v38;
    *(v34 + 17) = v39;
    v34 -= 24;
    *(v35 + 16) = result;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1B0B23234(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 24 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v18 = v6 - 24;
    v5 -= 24;
    v19 = v13;
    do
    {
      v20 = (v5 + 24);
      v21 = *(v19 - 24);
      v19 -= 24;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v23 = *v18;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v23;
        }

        if (v13 <= v4 || (v6 -= 24, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v20 != v13)
      {
        v22 = *v19;
        *(v5 + 16) = *(v19 + 16);
        *v5 = v22;
      }

      v5 -= 24;
      v13 = v19;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v24 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v24])
  {
    memmove(v6, v4, v24);
  }

  return 1;
}

uint64_t sub_1B0B23474@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16) | (*(result + 18) << 16);
  if ((*(result + 16) & 0xFF00) == 0x200)
  {
    __break(1u);
  }

  else
  {
    v3 = *(result + 8);
    *a2 = *result;
    *(a2 + 8) = v3;
    *(a2 + 16) = v2 & 1;
    *(a2 + 17) = BYTE1(v2) & 1;
    *(a2 + 18) = BYTE2(v2);
  }

  return result;
}

uint64_t sub_1B0B234B8(uint64_t a1, char a2, uint64_t *a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v73 = a1 + 32;
  v7 = v6 == 0;
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (v7)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    v34 = (v73 + 192 * v5);
    v35 = v34[9];
    v36 = v34[7];
    v69 = v34[8];
    v70 = v35;
    v37 = v34[9];
    v71[0] = v34[10];
    *(v71 + 9) = *(v34 + 169);
    v38 = v34[5];
    v39 = v34[3];
    v65 = v34[4];
    v66 = v38;
    v40 = v34[5];
    v41 = v34[7];
    v67 = v34[6];
    v68 = v41;
    v42 = v34[1];
    v61 = *v34;
    v62 = v42;
    v43 = v34[3];
    v45 = *v34;
    v44 = v34[1];
    v63 = v34[2];
    v64 = v43;
    *&v72[128] = v69;
    *&v72[144] = v37;
    *&v72[160] = v34[10];
    *&v72[169] = *(v34 + 169);
    *&v72[64] = v65;
    *&v72[80] = v40;
    *&v72[96] = v67;
    *&v72[112] = v36;
    *v72 = v45;
    *&v72[16] = v44;
    *&v72[32] = v63;
    *&v72[48] = v39;
    v14 = __OFADD__(v5++, 1);
    if (!v14)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v72);
      sub_1B03B5C80(&v61, &v49, &qword_1EB6E43A8, &qword_1B0EC50F0);
      while (1)
      {
        v69 = *&v72[128];
        v70 = *&v72[144];
        v71[0] = *&v72[160];
        *(v71 + 9) = *&v72[169];
        v65 = *&v72[64];
        v66 = *&v72[80];
        v67 = *&v72[96];
        v68 = *&v72[112];
        v61 = *v72;
        v62 = *&v72[16];
        v63 = *&v72[32];
        v64 = *&v72[48];
        result = sub_1B0B23A2C(&v61);
        if (result == 1)
        {
          return result;
        }

        v8 = *v72;
        v57 = *&v72[136];
        v58 = *&v72[152];
        v59 = *&v72[168];
        v60 = v72[184];
        v53 = *&v72[72];
        v54 = *&v72[88];
        v55 = *&v72[104];
        v56 = *&v72[120];
        v49 = *&v72[8];
        v50 = *&v72[24];
        v51 = *&v72[40];
        v52 = *&v72[56];
        v9 = *a3;
        v10 = sub_1B03FE284(*v72);
        v12 = *(v9 + 16);
        v13 = (v11 & 1) == 0;
        v14 = __OFADD__(v12, v13);
        v15 = v12 + v13;
        if (v14)
        {
          __break(1u);
          goto LABEL_21;
        }

        v16 = v11;
        if (*(v9 + 24) < v15)
        {
          break;
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v29 = v10;
        sub_1B0B8D810();
        v10 = v29;
        if (v16)
        {
LABEL_9:
          v19 = *(*a3 + 56) + 184 * v10;
          v20 = *(v19 + 48);
          v22 = *v19;
          v21 = *(v19 + 16);
          v47[2] = *(v19 + 32);
          v47[3] = v20;
          v47[0] = v22;
          v47[1] = v21;
          v23 = *(v19 + 112);
          v25 = *(v19 + 64);
          v24 = *(v19 + 80);
          v47[6] = *(v19 + 96);
          v47[7] = v23;
          v47[4] = v25;
          v47[5] = v24;
          v27 = *(v19 + 144);
          v26 = *(v19 + 160);
          v28 = *(v19 + 128);
          v48 = *(v19 + 176);
          v47[9] = v27;
          v47[10] = v26;
          v47[8] = v28;
          *(v19 + 128) = v57;
          *(v19 + 144) = v58;
          *(v19 + 160) = v59;
          *(v19 + 176) = v60;
          *(v19 + 64) = v53;
          *(v19 + 80) = v54;
          *(v19 + 96) = v55;
          *(v19 + 112) = v56;
          *v19 = v49;
          *(v19 + 16) = v50;
          *(v19 + 32) = v51;
          *(v19 + 48) = v52;
          sub_1B075E728(v47);
          goto LABEL_13;
        }

LABEL_11:
        v30 = *a3;
        *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
        *(v30[6] + 4 * v10) = v8;
        v31 = v30[7] + 184 * v10;
        *(v31 + 112) = v56;
        *(v31 + 96) = v55;
        *(v31 + 80) = v54;
        *(v31 + 64) = v53;
        *(v31 + 176) = v60;
        *(v31 + 160) = v59;
        *(v31 + 144) = v58;
        *(v31 + 128) = v57;
        *v31 = v49;
        *(v31 + 16) = v50;
        *(v31 + 32) = v51;
        *(v31 + 48) = v52;
        v32 = v30[2];
        v14 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v14)
        {
          goto LABEL_23;
        }

        v30[2] = v33;
LABEL_13:
        a2 = 1;
        v7 = v5 >= v6;
        if (v5 != v6)
        {
          goto LABEL_14;
        }

LABEL_17:
        sub_1B0B23A40(&v61);
        *&v72[128] = v69;
        *&v72[144] = v70;
        *&v72[160] = v71[0];
        *&v72[169] = *(v71 + 9);
        *&v72[64] = v65;
        *&v72[80] = v66;
        *&v72[96] = v67;
        *&v72[112] = v68;
        *v72 = v61;
        *&v72[16] = v62;
        v5 = v6;
        *&v72[32] = v63;
        *&v72[48] = v64;
      }

      sub_1B0B30248(v15, a2 & 1);
      v17 = *a3;
      v10 = sub_1B03FE284(v8);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_24;
      }

LABEL_8:
      if (v16)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

uint64_t sub_1B0B238BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B0B23938(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0x1FuLL:
      return result;
    default:

      break;
  }

  return result;
}

unint64_t sub_1B0B23974()
{
  result = qword_1EB6E45B0;
  if (!qword_1EB6E45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E45B0);
  }

  return result;
}

unint64_t sub_1B0B239C8(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0x1FuLL:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t sub_1B0B23A2C(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

double sub_1B0B23A40(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 184) = -2;
  return result;
}

void sub_1B0B23B40(uint64_t a1@<X8>)
{
  v2 = 0x100000000000000;
  if (!*(v1 + 39))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 38))
  {
    v3 = 0;
  }

  v4 = 0x10000000000;
  if (!*(v1 + 37))
  {
    v4 = 0;
  }

  v5 = 0x100000000;
  if (!*(v1 + 36))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v1 + 35))
  {
    v6 = 0;
  }

  sub_1B0B1F618(*(v1 + 16), *(v1 + 24), ((v6 | (*(v1 + 33) << 8) | (*(v1 + 34) << 16) | v5 | v4 | v3) + v2) | *(v1 + 32), a1);
}

uint64_t sub_1B0B23BC0@<X0>(uint64_t a1@<X8>)
{
  v2 = 0x100000000000000;
  if (!*(v1 + 47))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 46))
  {
    v3 = 0;
  }

  v4 = 0x10000000000;
  if (!*(v1 + 45))
  {
    v4 = 0;
  }

  v5 = 0x100000000;
  if (!*(v1 + 44))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v1 + 43))
  {
    v6 = 0;
  }

  return sub_1B0B1C53C(*(v1 + 16), *(v1 + 24), *(v1 + 32), ((v6 | (*(v1 + 41) << 8) | (*(v1 + 42) << 16) | v5 | v4 | v3) + v2) | *(v1 + 40), *(v1 + 48), a1);
}

uint64_t sub_1B0B23C60(uint64_t (*a1)(void, void, void, void, unint64_t))
{
  v2 = 0x100000000000000;
  if (!*(v1 + 55))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 54))
  {
    v3 = 0;
  }

  v4 = 0x10000000000;
  if (!*(v1 + 53))
  {
    v4 = 0;
  }

  v5 = 0x100000000;
  if (!*(v1 + 52))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v1 + 51))
  {
    v6 = 0;
  }

  return a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), ((v6 | (*(v1 + 49) << 8) | (*(v1 + 50) << 16) | v5 | v4 | v3) + v2) | *(v1 + 48));
}

uint64_t sub_1B0B23E80(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0B23F6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_1B0B23FD8()
{
  if (!qword_1EB6DD2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E4720, "̨\t");
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DD2C8);
    }
  }
}

void sub_1B0B24054(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(319);
  if (v4 <= 0x3F)
  {
    sub_1B0B23FD8();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1B0B240CC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1B0B24104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B0B241AC()
{
  result = qword_1EB6E4738;
  if (!qword_1EB6E4738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4738);
  }

  return result;
}

uint64_t sub_1B0B24200()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0E46C78();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B24248()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0E46C78();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B2428C(__int16 a1)
{
  v2 = sub_1B0E46CE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4740, &qword_1B0EC5C58);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v16 - v9;
  v16[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4748, &qword_1B0EC5C60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B0EC3500;
  *(v11 + 32) = 0x696C696269736976;
  *(v11 + 40) = 0xEA00000000007974;
  *(v11 + 48) = a1 < 0;
  *(v11 + 72) = &_s11UserVisibleON;
  *(v11 + 80) = 0x797469726F697270;
  *(v11 + 88) = 0xE800000000000000;
  *(v11 + 120) = &_s12PriorityInfoV5OrderVN;
  *(v11 + 96) = a1 & 0x3FFF;
  v12 = *MEMORY[0x1E69E75B8];
  v13 = sub_1B0E46CD8();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v10, v12, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);
  return sub_1B0E46CF8();
}

uint64_t sub_1B0B244F8()
{
  if (*v0 == 0x3FFF)
  {
    return 0x656E6F6E2ELL;
  }

  v2 = *v0;
  return sub_1B0E469C8();
}

unint64_t sub_1B0B245DC()
{
  result = qword_1EB6E4750;
  if (!qword_1EB6E4750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4750);
  }

  return result;
}

__n128 __swift_memcpy76_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B0B24668(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 76))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0B246B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 76) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0B24714(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1B0B0A384(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1B0E460B8();
  v7 = v24;
  v8 = 0;
  v9 = *(a1 + 36);
  v25 = v9;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(a1 + 48) + 4 * result);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = result;
      sub_1B0B0A384((v14 > 1), v15 + 1, 1);
      v7 = v24;
      v9 = v25;
      result = v23;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 4 * v15 + 32) = v13;
    v10 = 1 << *(a1 + 32);
    if (result >= v10)
    {
      goto LABEL_24;
    }

    v16 = *(v4 + 8 * v11);
    if ((v16 & v12) == 0)
    {
      goto LABEL_25;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v10 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v11 << 6;
      v19 = v11 + 1;
      v20 = (a1 + 72 + 8 * v11);
      while (v19 < (v10 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1B0425168(result, v25, 0);
          v7 = v24;
          v9 = v25;
          v10 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1B0425168(result, v25, 0);
      v7 = v24;
      v9 = v25;
    }

LABEL_4:
    ++v8;
    result = v10;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1B0B24950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  if (*(v5 + 24) != 1)
  {
    goto LABEL_17;
  }

  v17 = *(*v5 + 16);
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = 0;
  while (1)
  {
    v19 = (*v5 + 32 + 176 * v18);
    if (v19[1] == a2)
    {
      v20 = *v19;
      v21 = *(*v19 + 16);
      if (v21 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v18 == v17)
    {
      goto LABEL_17;
    }
  }

  if (v21)
  {
    v22 = v20 == a1;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
LABEL_15:
    v25 = v19[12];
    if (v25)
    {
      v26 = v25 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v27 = _s13SelectedStateV7WrappedVMa(0);
      v28 = v26 + *(v27 + 20);
      if ((*(v28 + 20) & 1) == 0)
      {
        v39 = *(v28 + 16);
        v40 = v5[3];
        v70 = v5[2];
        v71[0] = v40;
        *(v71 + 12) = *(v5 + 60);
        v41 = v5[1];
        v68 = *v5;
        v69 = v41;
        MEMORY[0x1EEE9AC00](v27);
        *(&v56 - 2) = a3;
        v42 = sub_1B0B26274(a1, a2, sub_1B0B37C04);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AD8, &unk_1B0E9AEB0);
        v62[3] = v43;
        v44 = sub_1B03CFB8C(&qword_1EB6DB350, &qword_1EB6E1AD8, &unk_1B0E9AEB0);
        v45 = MEMORY[0x1E69E7CC0];
        if (v42)
        {
          v45 = v42;
        }

        v62[4] = v44;
        v62[0] = v45;
        v46 = __swift_project_boxed_opaque_existential_0(v62, v43);
        v47 = *(*(v43 - 8) + 64);
        v48 = MEMORY[0x1EEE9AC00](v46);
        v50 = (&v56 - v49);
        (*(v51 + 16))(&v56 - v49, v48);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
        *boxed_opaque_existential_1 = *v50;
        boxed_opaque_existential_1[1] = 0;
        __swift_mutable_project_boxed_opaque_existential_1(v59, AssociatedTypeWitness);
        sub_1B0E45E38();
        v53 = v58;
        if (v58 >> 60 != 15)
        {
          v54 = v57;
          do
          {
            v55 = static MonotonicTime.now()();
            v63[0] = v54;
            v63[1] = v53;
            v64 = v39;
            v65 = a1;
            v66 = a2;
            v67 = v55;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0B37C0C(v54, v53);
            sub_1B0AB7920(v63);
            sub_1B0391D50(v54, v53);

            sub_1B050755C(v54, v53);
            __swift_mutable_project_boxed_opaque_existential_1(v59, AssociatedTypeWitness);
            sub_1B0E45E38();
            v54 = v57;
            v53 = v58;
          }

          while (v58 >> 60 != 15);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        __swift_destroy_boxed_opaque_existential_0Tm(v62);
        return;
      }
    }

LABEL_17:
    sub_1B03B1BD0(a4, v16, type metadata accessor for MailboxTaskLogger);
    sub_1B03B1BD0(a4, v13, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v29 = sub_1B0E43988();
    v30 = sub_1B0E458E8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v63[0] = v32;
      *v31 = 0x204100703;
      *(v31 + 8) = 256;
      v33 = &v13[*(v10 + 20)];
      *(v31 + 10) = *v33;
      *(v31 + 11) = 2082;
      v34 = &v16[*(v10 + 20)];
      *(v31 + 13) = sub_1B0399D64(*(v34 + 1), *(v34 + 2), v63);
      *(v31 + 21) = 1040;
      *(v31 + 23) = 2;
      *(v31 + 27) = 512;
      LOWORD(v33) = *(v33 + 12);
      sub_1B03B1DC0(v13, type metadata accessor for MailboxTaskLogger);
      *(v31 + 29) = v33;
      *(v31 + 31) = 2160;
      *(v31 + 33) = 0x786F626C69616DLL;
      *(v31 + 41) = 2085;
      v35 = *(v34 + 4);
      LODWORD(v33) = *(v34 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1DC0(v16, type metadata accessor for MailboxTaskLogger);
      *&v68 = v35;
      DWORD2(v68) = v33;
      v36 = sub_1B0E44BA8();
      v38 = sub_1B0399D64(v36, v37, v63);

      *(v31 + 43) = v38;
      _os_log_impl(&dword_1B0389000, v29, v30, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Trying to add message-to-skip, but mailbox has no UID validity.", v31, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v32, -1, -1);
      MEMORY[0x1B272C230](v31, -1, -1);
    }

    else
    {
      sub_1B03B1DC0(v13, type metadata accessor for MailboxTaskLogger);

      sub_1B03B1DC0(v16, type metadata accessor for MailboxTaskLogger);
    }

    return;
  }

  v23 = (v20 + 32);
  v24 = (a1 + 32);
  while (v21)
  {
    if (*v23 != *v24)
    {
      goto LABEL_4;
    }

    ++v23;
    ++v24;
    if (!--v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1B0B24FD4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v34 = a3;
  v35 = a2;
  v33 = _s13SelectedStateV7WrappedVMa(0);
  v4 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  for (i = 0; v9; result = v37(v36, 0))
  {
LABEL_10:
    while (1)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a1 + 48) + (v16 | (i << 6)));
      v19 = sub_1B0B86138(v36, v34);
      if (*(v18 + 96))
      {
        break;
      }

      result = v19(v36, 0);
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v20 = v18;
    v37 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = *(v20 + 96);
      v22 = a1;
      v23 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v24 = v21 + v23;
      a1 = v22;
      v25 = v32;
      sub_1B03B1BD0(v24, v32, _s13SelectedStateV7WrappedVMa);
      v26 = _s13SelectedStateV8_StorageCMa(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      v29 = swift_allocObject();
      sub_1B0B37C3C(v25, v29 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);
      v30 = *(v20 + 96);
      *(v20 + 96) = v29;
    }

    v13 = *(v20 + 96) + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v14 = v13 + *(v33 + 20) + 160;
    sub_1B03BDE74(v17);
    swift_endAccess();
  }

LABEL_6:
  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
    }

    v9 = *(v6 + 8 * v15);
    ++i;
    if (v9)
    {
      i = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B2524C(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = 0;
  v59 = a2;
  v58 = result;
LABEL_4:
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(v3 + 48) + ((v10 << 10) | (16 * v12));
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = a2[1];
    v17 = v16 + 32;
    v18 = *(v16 + 16);
    if (*a2)
    {
      result = sub_1B0BA7CA4(v14, v15, v17, v18, (*a2 + 16));
      if ((v20 & 1) == 0)
      {
        v21 = result;
        v60 = v15;
        v68 = v14;
        v24 = a2;
        v23 = *a2;
        v22 = v24[1];
        v25 = *(v22 + 16);
        if (v23)
        {
          v26 = v19;
          swift_beginAccess();
          if ((*(v23 + 16) & 0x3FLL) == (*(v23 + 24) & 0x3FLL))
          {
            a2 = v59;
            if (v25)
            {
              goto LABEL_14;
            }
          }

          else
          {
            a2 = v59;
            if (v25 > MEMORY[0x1B2725680]())
            {
LABEL_14:
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v27 = *a2;
              result = swift_isUniquelyReferenced_native();
              v28 = *a2;
              if ((result & 1) == 0)
              {
                if (!v28)
                {
                  goto LABEL_60;
                }

                v29 = *a2;
                v30 = sub_1B0E43578();

                *v59 = v30;
                v28 = v30;
                a2 = v59;
              }

              if (!v28)
              {
                goto LABEL_59;
              }

              result = sub_1B0BCB424(v26, (v28 + 16), v28 + 32, a2);
              v31 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
                goto LABEL_57;
              }

              if (v31 < v21)
              {
                goto LABEL_58;
              }

              sub_1B0BCB7E4(v21, v31, v22, (v28 + 16));
              sub_1B0BCB130(v21);
              goto LABEL_46;
            }
          }

          v14 = v68;
        }

        else
        {
          a2 = v59;
          v14 = v68;
          if (v25)
          {
LABEL_33:
            v68 = v14;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0BCB130(v21);
            goto LABEL_47;
          }
        }

        v68 = v14;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BCB130(v21);
        v37 = *a2;
        if (*a2)
        {
          swift_beginAccess();
          v38 = *(v37 + 24) & 0x3FLL;
        }

        else
        {
          v38 = 0;
        }

        v39 = a2[1];
        v40 = *(v39 + 16);
        if (v38 || v40 >= 0x10)
        {
          v41 = MEMORY[0x1B27256A0](v40);
          if (v38 <= v41)
          {
            v42 = v41;
          }

          else
          {
            v42 = v38;
          }

          v43 = sub_1B0BCA150(v39, v42, 0, v38);

          a2 = v59;
          *v59 = v43;
        }

        else
        {

          a2 = v59;
          *v59 = 0;
        }

LABEL_46:
        v3 = v58;
LABEL_47:

        v44 = a2[2];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B0B946F0(v44);
          v44 = result;
        }

        v45 = *(v44 + 16);
        if (v21 >= v45)
        {
          goto LABEL_56;
        }

        v46 = v45 - 1;
        v47 = (v44 + 176 * v21);
        v48 = v47[2];
        v49 = v47[4];
        v62[1] = v47[3];
        v62[2] = v49;
        v62[0] = v48;
        v50 = v47[5];
        v51 = v47[6];
        v52 = v47[8];
        v62[5] = v47[7];
        v63 = v52;
        v62[3] = v50;
        v62[4] = v51;
        v53 = v47[9];
        v54 = v47[10];
        v55 = v47[12];
        v66 = v47[11];
        v67 = v55;
        v64 = v53;
        v65 = v54;
        memmove(v47 + 2, v47 + 13, 176 * (v46 - v21));
        *(v44 + 16) = v46;
        a2[2] = v44;
        v56 = v63;

        sub_1B03A3614(v62);
        if (v56)
        {

          v57 = v68;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03AB2E0(&v61, v57, v60);
        }
      }
    }

    else if (v18)
    {
      v21 = 0;
      while (1)
      {
        v32 = (v17 + 16 * v21);
        if ((v32[2] | (v32[2] << 32)) == (v15 | (v15 << 32)))
        {
          v33 = *v32;
          v34 = *(*v32 + 16);
          if (v34 == *(v14 + 16))
          {
            if (!v34 || v33 == v14)
            {
LABEL_31:
              v60 = *(v13 + 8);
              goto LABEL_33;
            }

            v35 = (v33 + 32);
            v36 = (v14 + 32);
            while (*v35 == *v36)
            {
              ++v35;
              ++v36;
              if (!--v34)
              {
                goto LABEL_31;
              }
            }
          }
        }

        if (++v21 == v18)
        {
          goto LABEL_4;
        }
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_1B0B256B4(uint64_t result, unsigned int a2, void (*a3)(uint64_t))
{
  if (*(v3 + 24) == 1)
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    v7 = *(*v3 + 16);
    if (!v7)
    {
LABEL_18:
      *v3 = v5;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
      return result;
    }

    v8 = 0;
    v9 = *(v3 + 16);
    while (1)
    {
      v10 = v5 + 32 + 176 * v8;
      if ((*(v10 + 24) | (*(v10 + 24) << 32)) == (a2 | (a2 << 32)))
      {
        v11 = *(v10 + 16);
        v12 = *(v11 + 16);
        if (v12 == *(result + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v8 == v7)
      {
        goto LABEL_18;
      }
    }

    if (v12)
    {
      v13 = v11 == result;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
LABEL_15:
      v4 = a3;
      sub_1B03B9A2C(*v3, *(v3 + 8), *(v3 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v5;
      if (result)
      {
LABEL_16:
        if (v8 >= *(v16 + 16))
        {
          __break(1u);
          return result;
        }

        v4(v16 + 176 * v8 + 72);
        result = sub_1B03BB638(v5, v6, v9, 1);
        v5 = v16;
        goto LABEL_18;
      }
    }

    else
    {
      v14 = (v11 + 32);
      v15 = (result + 32);
      while (v12)
      {
        if (*v14 != *v15)
        {
          goto LABEL_4;
        }

        ++v14;
        ++v15;
        if (!--v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_1B03D0E54(v5);
    v16 = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B0B25834(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 24) == 1)
  {
    v4 = *v3;
    v5 = *(v3 + 8);
    v6 = *(*v3 + 16);
    if (!v6)
    {
LABEL_19:
      *v3 = v4;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
      return result;
    }

    v7 = result;
    v8 = 0;
    v9 = *(v3 + 16);
    while (1)
    {
      v10 = (v4 + 32 + 176 * v8);
      if (v10[1] == a3)
      {
        v11 = *v10;
        v12 = *(*v10 + 16);
        if (v12 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v8 == v6)
      {
        goto LABEL_19;
      }
    }

    if (v12)
    {
      v13 = v11 == a2;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
LABEL_15:
      sub_1B03B9A2C(*v3, *(v3 + 8), *(v3 + 16), 1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v4;
      if (result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v14 = (v11 + 32);
      v15 = (a2 + 32);
      while (v12)
      {
        if (*v14 != *v15)
        {
          goto LABEL_4;
        }

        ++v14;
        ++v15;
        if (!--v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_1B03D0E54(v4);
    v16 = result;
LABEL_16:
    if (v8 >= *(v16 + 16))
    {
      __break(1u);
    }

    else
    {
      v17 = v16 + 176 * v8;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v18 = sub_1B0B363DC((v17 + 184), v7);

      v19 = *(*(v17 + 184) + 16);
      if (v19 >= v18)
      {
        sub_1B0BAD260(v18, v19);

        result = sub_1B03BB638(v4, v5, v9, 1);
        v4 = v16;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B259F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 24) == 1)
  {
    v7 = *v4;
    v8 = *(v4 + 8);
    v9 = *(*v4 + 16);
    if (!v9)
    {
LABEL_18:
      *v4 = v7;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 1;
      return result;
    }

    v10 = 0;
    v11 = *(v4 + 16);
    while (1)
    {
      v12 = (v7 + 32 + 176 * v10);
      if (v12[1] == a2)
      {
        v13 = *v12;
        v14 = *(*v12 + 16);
        if (v14 == *(result + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v10 == v9)
      {
        goto LABEL_18;
      }
    }

    if (v14)
    {
      v15 = v13 == result;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
LABEL_15:
      v6 = a3;
      v5 = a4;
      sub_1B03B9A2C(*v4, *(v4 + 8), *(v4 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v18 = v7;
      if (result)
      {
LABEL_16:
        if (v10 >= *(v18 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1B0B13A74(v6, v5);
        result = sub_1B03BB638(v7, v8, v11, 1);
        v7 = v18;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = (v13 + 32);
      v17 = (result + 32);
      while (v14)
      {
        if (*v16 != *v17)
        {
          goto LABEL_4;
        }

        ++v16;
        ++v17;
        if (!--v14)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_1B03D0E54(v7);
    v18 = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B0B25B64(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (*(v3 + 24) == 1)
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    v7 = *(*v3 + 16);
    if (!v7)
    {
LABEL_18:
      *v3 = v5;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
      return result;
    }

    v8 = 0;
    v9 = *(v3 + 16);
    while (1)
    {
      v10 = v5 + 32 + 176 * v8;
      if ((*(v10 + 24) | (*(v10 + 24) << 32)) == (a3 | (a3 << 32)))
      {
        v11 = *(v10 + 16);
        v12 = *(v11 + 16);
        if (v12 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v8 == v7)
      {
        goto LABEL_18;
      }
    }

    if (v12)
    {
      v13 = v11 == a2;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
LABEL_15:
      v4 = result;
      sub_1B03B9A2C(*v3, *(v3 + 8), *(v3 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v5;
      if (result)
      {
LABEL_16:
        if (v8 >= *(v16 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1B0B13B6C(v4);
        result = sub_1B03BB638(v5, v6, v9, 1);
        v5 = v16;
        goto LABEL_18;
      }
    }

    else
    {
      v14 = (v11 + 32);
      v15 = (a2 + 32);
      while (v12)
      {
        if (*v14 != *v15)
        {
          goto LABEL_4;
        }

        ++v14;
        ++v15;
        if (!--v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_1B03D0E54(v5);
    v16 = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B0B25CD4(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {

      return sub_1B0B63BF8(v4, v5);
    }

    return 0;
  }

  if (*(a2 + 24))
  {
    return 0;
  }

  v9 = *(a2 + 8);
  v8 = *(a2 + 16);
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  if ((sub_1B0B733CC(v4, v5) & 1) == 0 || (sub_1B0B63A04(v11, v9) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0B63AFC(v10, v8);
}

uint64_t sub_1B0B25D88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 12) = *(a1 + 60);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 12) = *(a2 + 60);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1B0B35FC8(v7, v9) & 1;
}

uint64_t sub_1B0B25DE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*(v3 + 24) != 1)
  {
    return 1;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (!v6)
  {
    return 1;
  }

  v7 = 0;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (1)
  {
    v10 = (v5 + 32 + 176 * v7);
    if (v10[1] == a2)
    {
      v11 = *v10;
      v12 = *(*v10 + 16);
      if (v12 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v7 == v6)
    {
      return 1;
    }
  }

  if (v12)
  {
    v13 = v11 == a1;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
LABEL_15:
    v4 = a3;
    sub_1B03B9A2C(*v3, *(v3 + 8), *(v3 + 16), 1);
    result = swift_isUniquelyReferenced_nonNull_native();
    v17 = v5;
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = (v11 + 32);
    v15 = (a1 + 32);
    while (v12)
    {
      if (*v14 != *v15)
      {
        goto LABEL_4;
      }

      ++v14;
      ++v15;
      if (!--v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_1B03D0E54(v5);
  v17 = result;
LABEL_16:
  if (v7 >= *(v17 + 16))
  {
    __break(1u);
  }

  else
  {
    v4(v17 + 176 * v7 + 32);
    sub_1B03BB638(v5, v8, v9, 1);
    result = 0;
    *v3 = v17;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
  }

  return result;
}

uint64_t sub_1B0B25F5C(uint64_t a1, unsigned int a2, void (*a3)(uint64_t))
{
  if (*(v3 + 24) != 1)
  {
    return 1;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (!v6)
  {
    return 1;
  }

  v7 = 0;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (1)
  {
    v10 = v5 + 32 + 176 * v7;
    if ((*(v10 + 24) | (*(v10 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v11 = *(v10 + 16);
      v12 = *(v11 + 16);
      if (v12 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v7 == v6)
    {
      return 1;
    }
  }

  if (v12)
  {
    v13 = v11 == a1;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
LABEL_15:
    v4 = a3;
    sub_1B03B9A2C(*v3, *(v3 + 8), *(v3 + 16), 1);
    result = swift_isUniquelyReferenced_nonNull_native();
    v17 = v5;
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = (v11 + 32);
    v15 = (a1 + 32);
    while (v12)
    {
      if (*v14 != *v15)
      {
        goto LABEL_4;
      }

      ++v14;
      ++v15;
      if (!--v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_1B03D0E54(v5);
  v17 = result;
LABEL_16:
  if (v7 >= *(v17 + 16))
  {
    __break(1u);
  }

  else
  {
    v4(v17 + 176 * v7 + 32);
    sub_1B03BB638(v5, v8, v9, 1);
    result = 0;
    *v3 = v17;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
  }

  return result;
}

uint64_t sub_1B0B260E0(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4)
{
  if (*(a3 + 24) != 1)
  {
    return 0;
  }

  v6 = *a3;
  v7 = *(*a3 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v10 = a3 + 1;
  v9 = a3[1];
  v11 = a3[2];
  while (1)
  {
    v12 = v6 + 32 + 176 * v8;
    if ((*(v12 + 24) | (*(v12 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v13 = *(v12 + 16);
      v14 = *(v13 + 16);
      if (v14 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v8 == v7)
    {
      return 0;
    }
  }

  if (v14)
  {
    v15 = v13 == a1;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
LABEL_15:
    v5 = a4;
    v4 = a3;
    sub_1B03B9A2C(*a3, a3[1], a3[2], 1);
    result = swift_isUniquelyReferenced_nonNull_native();
    v19 = v6;
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = (v13 + 32);
    v17 = (a1 + 32);
    while (v14)
    {
      if (*v16 != *v17)
      {
        goto LABEL_4;
      }

      ++v16;
      ++v17;
      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_1B03D0E54(v6);
  v19 = result;
LABEL_16:
  if (v8 >= *(v19 + 16))
  {
    __break(1u);
  }

  else
  {
    v20 = v19 + 176 * v8;
    v21 = *(v5 + 16);
    *(v20 + 64) = *v5;
    *(v20 + 80) = v21;
    *(v20 + 96) = *(v5 + 32);
    v22 = *(v20 + 32);
    v23 = *(v20 + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03BB638(v6, v9, v11, 1);
    result = v22;
    *v4 = v19;
    *v10 = 0;
    v10[1] = 0;
    *(v4 + 24) = 1;
  }

  return result;
}

uint64_t sub_1B0B26274(uint64_t result, uint64_t a2, void (*a3)(void *__return_ptr, _OWORD *))
{
  if ((v3[24] & 1) == 0)
  {
    return 0;
  }

  v4 = *(*v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *v3 + 32 + 176 * v5;
    if (*(v6 + 8) == a2)
    {
      v7 = *v6;
      v8 = *(*v6 + 16);
      if (v8 == *(result + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v5 == v4)
    {
      return 0;
    }
  }

  if (v8)
  {
    v9 = v7 == result;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_15:
    v12 = *v6;
    v13 = *(v6 + 32);
    v22[1] = *(v6 + 16);
    v22[2] = v13;
    v22[0] = v12;
    v14 = *(v6 + 48);
    v15 = *(v6 + 64);
    v16 = *(v6 + 96);
    v22[5] = *(v6 + 80);
    v22[6] = v16;
    v22[3] = v14;
    v22[4] = v15;
    v17 = *(v6 + 112);
    v18 = *(v6 + 128);
    v19 = *(v6 + 160);
    v22[9] = *(v6 + 144);
    v22[10] = v19;
    v22[7] = v17;
    v22[8] = v18;
    sub_1B03A35B8(v22, v21);
    a3(v21, v22);
    sub_1B03A3614(v22);
    return v21[0];
  }

  else
  {
    v10 = (v7 + 32);
    v11 = (result + 32);
    while (v8)
    {
      if (*v10 != *v11)
      {
        goto LABEL_4;
      }

      ++v10;
      ++v11;
      if (!--v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B2639C(uint64_t result, unsigned int a2, _BYTE *a3)
{
  if ((a3[24] & 1) == 0)
  {
    return 0;
  }

  v3 = *(*a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *a3 + 32 + 176 * v4;
    if ((*(v5 + 24) | (*(v5 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v6 = *(v5 + 16);
      v7 = *(v6 + 16);
      if (v7 == *(result + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v3)
    {
      return 0;
    }
  }

  if (v7)
  {
    v8 = v6 == result;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
LABEL_15:
    if (*(v5 + 168) > 1u)
    {
      return 0;
    }

    else
    {
      return *(v5 + 160);
    }
  }

  else
  {
    v9 = (v6 + 32);
    v10 = (result + 32);
    while (v7)
    {
      if (*v9 != *v10)
      {
        goto LABEL_4;
      }

      ++v9;
      ++v10;
      if (!--v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B2648C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = type metadata accessor for State.Logger();
  v6 = *(*(v66 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v66);
  v65 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v63 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v63 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v63 - v18;
  sub_1B03B1BD0(a2, &v63 - v18, type metadata accessor for State.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = sub_1B0E43988();
  v21 = sub_1B0E45908();
  v22 = os_log_type_enabled(v20, v21);
  v64 = v11;
  if (v22)
  {
    v23 = swift_slowAlloc();
    *v23 = 68158208;
    *(v23 + 4) = 2;
    *(v23 + 8) = 256;
    v24 = v19[*(v66 + 20)];
    sub_1B03B1DC0(v19, type metadata accessor for State.Logger);
    *(v23 + 10) = v24;
    *(v23 + 11) = 2048;
    *(v23 + 13) = *(a1 + 16);

    _os_log_impl(&dword_1B0389000, v20, v21, "[%.*hhx] Received %ld locally known mailboxes.", v23, 0x15u);
    MEMORY[0x1B272C230](v23, -1, -1);
  }

  else
  {
    sub_1B03B1DC0(v19, type metadata accessor for State.Logger);
  }

  v25 = sub_1B0B26DAC(a1, a2);
  v26 = sub_1B0B27010(v25, a2);
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = sub_1B0BAC3F0(MEMORY[0x1E69E7CC0]);
  v34 = *(v3 + 32);

  *(v3 + 32) = v33;
  v35 = v65;
  if (*(v26 + 16))
  {
    sub_1B03B1BD0(a2, v17, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v36 = sub_1B0E43988();
    v37 = sub_1B0E45908();
    if (!os_log_type_enabled(v36, v37))
    {
      sub_1B03B1DC0(v17, type metadata accessor for State.Logger);

      if (!*(v28 + 16))
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v38 = swift_slowAlloc();
    v63 = v32;
    v39 = v38;
    *v38 = 68158208;
    *(v38 + 4) = 2;
    *(v38 + 8) = 256;
    v40 = v14;
    v41 = v17[*(v66 + 20)];
    sub_1B03B1DC0(v17, type metadata accessor for State.Logger);
    *(v39 + 10) = v41;
    v14 = v40;
    v35 = v65;
    *(v39 + 11) = 2048;
    *(v39 + 13) = *(v26 + 16);

    _os_log_impl(&dword_1B0389000, v36, v37, "[%.*hhx] Added %ld locally known mailboxes.", v39, 0x15u);
    v42 = v39;
    v32 = v63;
    MEMORY[0x1B272C230](v42, -1, -1);
  }

  if (!*(v28 + 16))
  {
LABEL_12:
    if (!*(v30 + 16))
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_10:
  sub_1B03B1BD0(a2, v14, type metadata accessor for State.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v43 = sub_1B0E43988();
  v44 = sub_1B0E45908();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 68158208;
    *(v45 + 4) = 2;
    *(v45 + 8) = 256;
    v46 = v14;
    v47 = v35;
    v48 = v32;
    v49 = *(v46 + *(v66 + 20));
    sub_1B03B1DC0(v46, type metadata accessor for State.Logger);
    *(v45 + 10) = v49;
    v32 = v48;
    v35 = v47;
    *(v45 + 11) = 2048;
    *(v45 + 13) = *(v28 + 16);

    _os_log_impl(&dword_1B0389000, v43, v44, "[%.*hhx] Removed %ld locally known mailboxes.", v45, 0x15u);
    MEMORY[0x1B272C230](v45, -1, -1);

    goto LABEL_12;
  }

  sub_1B03B1DC0(v14, type metadata accessor for State.Logger);

  if (!*(v30 + 16))
  {
    goto LABEL_17;
  }

LABEL_15:
  v50 = v64;
  sub_1B03B1BD0(a2, v64, type metadata accessor for State.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v51 = sub_1B0E43988();
  v52 = sub_1B0E45908();
  if (!os_log_type_enabled(v51, v52))
  {
    sub_1B03B1DC0(v50, type metadata accessor for State.Logger);

    if (!*(v32 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v53 = swift_slowAlloc();
  *v53 = 68158208;
  *(v53 + 4) = 2;
  *(v53 + 8) = 256;
  v54 = *(v66 + 20);
  v65 = a2;
  v55 = v35;
  v56 = v32;
  v57 = *(v50 + v54);
  sub_1B03B1DC0(v50, type metadata accessor for State.Logger);
  *(v53 + 10) = v57;
  v32 = v56;
  v35 = v55;
  a2 = v65;
  *(v53 + 11) = 2048;
  *(v53 + 13) = *(v30 + 16);

  _os_log_impl(&dword_1B0389000, v51, v52, "[%.*hhx] Updated %ld locally known mailboxes.", v53, 0x15u);
  MEMORY[0x1B272C230](v53, -1, -1);

LABEL_17:
  if (!*(v32 + 16))
  {
    goto LABEL_23;
  }

LABEL_20:
  sub_1B03B1BD0(a2, v35, type metadata accessor for State.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v58 = sub_1B0E43988();
  v59 = sub_1B0E45908();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 68158208;
    *(v60 + 4) = 2;
    *(v60 + 8) = 256;
    v61 = *(v35 + *(v66 + 20));
    sub_1B03B1DC0(v35, type metadata accessor for State.Logger);
    *(v60 + 10) = v61;
    *(v60 + 11) = 2048;
    *(v60 + 13) = *(v30 + 16);

    _os_log_impl(&dword_1B0389000, v58, v59, "[%.*hhx] Need to de-select %ld locally known mailboxes.", v60, 0x15u);
    MEMORY[0x1B272C230](v60, -1, -1);
  }

  else
  {
    sub_1B03B1DC0(v35, type metadata accessor for State.Logger);
  }

LABEL_23:

  return v32;
}

uint64_t sub_1B0B26DAC(uint64_t a1, uint64_t a2)
{
  v32 = MEMORY[0x1E69E7CD0];
  v33 = MEMORY[0x1E69E7CD0];
  v2 = *(a1 + 16);
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24 = result;
  if (v2)
  {
    v4 = 0;
    v5 = result + 32;
    v6 = MEMORY[0x1E69E7CC0];
    v22 = result + 32;
    do
    {
      v7 = (v5 + 96 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v2)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7[3];
        v28 = v7[2];
        v29 = v9;
        v30[0] = v7[4];
        *(v30 + 9) = *(v7 + 73);
        v10 = v7[1];
        v26 = *v7;
        v27 = v10;
        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_23;
        }

        v11 = v26;
        v12 = v27;
        v13 = DWORD2(v27);
        v14 = (sub_1B03B5DDC(v27, DWORD2(v27), v33) & 1) != 0 ? 0 : sub_1B0A93330(v11, *(&v11 + 1), v32) ^ 1;
        sub_1B0B11A84(&v26, v25);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03AB2E0(v25, v12, v13);

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B019E4(v25, v11, *(&v11 + 1));

        if (v14)
        {
          break;
        }

        result = sub_1B0B11AE0(&v26);
        ++v8;
        v7 += 6;
        if (v4 == v2)
        {
          goto LABEL_19;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v31 = v6;
      if ((result & 1) == 0)
      {
        result = sub_1B0B0A324(0, *(v6 + 16) + 1, 1);
        v6 = v31;
      }

      v5 = v22;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1B0B0A324((v15 > 1), v16 + 1, 1);
        v6 = v31;
      }

      *(v6 + 16) = v16 + 1;
      v17 = (v6 + 96 * v16);
      v18 = v27;
      v17[2] = v26;
      v17[3] = v18;
      v19 = v28;
      v20 = v29;
      v21 = v30[0];
      *(v17 + 105) = *(v30 + 9);
      v17[5] = v20;
      v17[6] = v21;
      v17[4] = v19;
    }

    while (v4 != v2);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:

  if (*(v6 + 16) != v2)
  {
    sub_1B0B2E56C(v24, v6, a2);
  }

  return v6;
}

uint64_t sub_1B0B27010(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v149 = (v2 + 8);
  v6 = *(v2 + 16);
  v7 = MEMORY[0x1E69E7CD0];
  if ((*(v2 + 24) & 1) == 0)
  {
    *__dst = MEMORY[0x1E69E7CD0];
    v30 = *(a1 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v30)
    {
      v31 = (v3 + 56);
      do
      {
        v32 = *v31;
        v33 = *(v31 - 1);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03AB2E0(v189, v33, v32);

        v31 += 24;
        --v30;
      }

      while (v30);
      v7 = *__dst;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v34 = sub_1B0B36DA8(v3, v4, v152);
    swift_bridgeObjectRelease_n();
    sub_1B03BB638(v4, v5, v6, 0);
    *v152 = v34;
    *v149 = 0;
    *(v2 + 16) = 0;
    *(v152 + 24) = 1;
    v35 = sub_1B0BAC91C(MEMORY[0x1E69E7CC0]);
    sub_1B0B28040(v5, v35);

    sub_1B0B284C8(v6, a2);

    return v7;
  }

  v201 = MEMORY[0x1E69E7CD0];
  v202 = MEMORY[0x1E69E7CD0];
  v203 = MEMORY[0x1E69E7CD0];
  v204 = MEMORY[0x1E69E7CD0];
  v8 = *(v4 + 16);
  v147 = v5;
  v148 = v6;
  v145 = v8;
  v146 = v4;
  if (v8)
  {
    *&v157 = MEMORY[0x1E69E7CC0];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B0A364(0, v8, 0);
    v9 = v8;
    v10 = v157;
    v11 = (v4 + 32);
    do
    {
      v12 = v11[1];
      v179 = *v11;
      v180 = v12;
      v13 = v11[2];
      v14 = v11[3];
      v15 = v11[4];
      *&v183[9] = *(v11 + 73);
      v182 = v14;
      *v183 = v15;
      v181 = v13;
      v16 = v180;
      v17 = DWORD2(v180);
      v18 = *v11;
      *&__dst[20] = v11[1];
      *&__dst[4] = v18;
      v19 = v11[2];
      v20 = v11[3];
      v21 = v11[4];
      *&__dst[77] = *(v11 + 73);
      *&__dst[68] = v21;
      *&__dst[52] = v20;
      *&__dst[36] = v19;
      *v189 = *__dst;
      *&v189[16] = *&__dst[16];
      *&v192[13] = *&__dst[77];
      *v192 = *&__dst[64];
      v191 = *&__dst[48];
      v190 = *&__dst[32];
      sub_1B0B11A84(&v179, &v167);
      *&v157 = v10;
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v23 >= v22 >> 1)
      {
        sub_1B0B0A364((v22 > 1), v23 + 1, 1);
        v10 = v157;
      }

      *(v10 + 16) = v23 + 1;
      v24 = v10 + 112 * v23;
      *(v24 + 32) = v16;
      *(v24 + 40) = v17;
      v25 = *v189;
      *(v24 + 60) = *&v189[16];
      *(v24 + 44) = v25;
      v26 = v190;
      v27 = v191;
      v28 = *v192;
      *(v24 + 121) = *&v192[13];
      *(v24 + 108) = v28;
      *(v24 + 92) = v27;
      *(v24 + 76) = v26;
      v11 += 11;
      --v9;
    }

    while (v9);
    v5 = v147;
    v4 = v146;
    v3 = a1;
    if (*(v10 + 16))
    {
      goto LABEL_14;
    }
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4790, &qword_1B0EC5E70);
      v36 = sub_1B0E466A8();
      goto LABEL_17;
    }
  }

  v36 = MEMORY[0x1E69E7CC8];
LABEL_17:
  *v189 = v36;
  sub_1B0B370D4(v10, 1, v189);

  v37 = *v189;
  if (v145)
  {
    v150 = *v189;
    *&v157 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A344(0, v145, 0);
    v38 = v157;
    v39 = (v4 + 32);
    for (i = v145 - 1; ; --i)
    {
      v41 = *v39;
      v42 = v39[2];
      v180 = v39[1];
      v181 = v42;
      v179 = v41;
      v43 = v39[3];
      v44 = v39[4];
      v45 = v39[6];
      *&v183[16] = v39[5];
      v184 = v45;
      v182 = v43;
      *v183 = v44;
      v46 = v39[7];
      v47 = v39[8];
      v48 = v39[10];
      v187 = v39[9];
      v188 = v48;
      v185 = v46;
      v186 = v47;
      v49 = v180;
      v50 = DWORD2(v180);
      *&__dst[100] = v39[6];
      *&__dst[84] = v39[5];
      *&__dst[68] = v39[4];
      *&__dst[52] = v39[3];
      *&__dst[164] = v39[10];
      *&__dst[148] = v39[9];
      *&__dst[132] = v39[8];
      *&__dst[116] = v39[7];
      *&__dst[4] = *v39;
      *&__dst[20] = v39[1];
      *&__dst[36] = v39[2];
      v195 = *&__dst[128];
      v196 = *&__dst[144];
      v197 = *&__dst[160];
      v198 = *&__dst[176];
      *v192 = *&__dst[64];
      *&v192[16] = *&__dst[80];
      v193 = *&__dst[96];
      v194 = *&__dst[112];
      *v189 = *__dst;
      *&v189[16] = *&__dst[16];
      v190 = *&__dst[32];
      v191 = *&__dst[48];
      sub_1B03A35B8(&v179, &v167);
      *&v157 = v38;
      v52 = *(v38 + 16);
      v51 = *(v38 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v52 >= v51 >> 1)
      {
        sub_1B0B0A344((v51 > 1), v52 + 1, 1);
        v38 = v157;
      }

      *(v38 + 16) = v52 + 1;
      v53 = v38 + 192 * v52;
      *(v53 + 32) = v49;
      *(v53 + 40) = v50;
      v54 = *v189;
      v55 = *&v189[16];
      v56 = v190;
      *(v53 + 92) = v191;
      *(v53 + 76) = v56;
      *(v53 + 60) = v55;
      *(v53 + 44) = v54;
      v57 = *v192;
      v58 = *&v192[16];
      v59 = v193;
      *(v53 + 156) = v194;
      *(v53 + 140) = v59;
      *(v53 + 124) = v58;
      *(v53 + 108) = v57;
      v60 = v195;
      v61 = v196;
      v62 = v197;
      *(v53 + 220) = v198;
      *(v53 + 204) = v62;
      *(v53 + 188) = v61;
      *(v53 + 172) = v60;
      if (!i)
      {
        break;
      }

      v39 += 11;
    }

    sub_1B03BB638(v146, v147, v148, 1);
    v37 = v150;
    v3 = a1;
  }

  else
  {
    sub_1B03BB638(v4, v5, v6, 1);
  }

  *v189 = 0;
  *&v189[8] = MEMORY[0x1E69E7CC0];
  *&v189[16] = MEMORY[0x1E69E7CC0];
  v63 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B37370(v63, sub_1B0B35EC8, 0, v189);
  swift_bridgeObjectRelease_n();
  v199 = *v189;
  v200 = *&v189[8];
  v64 = *(v3 + 16);
  if (!v64)
  {
LABEL_70:
    v139 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AFBA04(v139);
    v140 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2524C(v140, &v199);

    v141 = v199;
    v142 = v200;

    v143 = sub_1B0B21DE4(v141, v142, *(&v142 + 1));

    sub_1B03BB638(v146, v147, v148, 1);
    *v152 = v143;
    *v149 = 0;
    v149[1] = 0;
    *(v152 + 24) = 1;
    v7 = v201;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    return v7;
  }

  v65 = v3 + 69;
  while (1)
  {
    v154 = v64;
    v70 = *(v65 - 5);
    *(v209 + 9) = *(v65 + 36);
    v209[0] = *(v65 + 27);
    v71 = *(v65 + 11);
    v207 = v70;
    v208 = v71;
    v72 = *(v65 - 21);
    v205 = *(v65 - 37);
    v206 = v72;
    v73 = BYTE4(v70);
    *(v225 + 15) = *(v65 + 15);
    v225[0] = *v65;
    v67 = *(&v208 + 1);
    v74 = v209[0];
    v75 = v72;
    v66 = v70;
    v76 = DWORD2(v72);
    if (!v37[2] || (v77 = sub_1B03AB888(v206, DWORD2(v206)), (v78 & 1) == 0))
    {
      sub_1B0B11A84(&v205, __dst);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03AB2E0(__dst, v75, v76);

      v94 = *(v152 + 32);
      if (*(v94 + 16))
      {
        v95 = v37;
        v96 = sub_1B03B8A9C(v205, *(&v205 + 1));
        if (v97)
        {
          v98 = *(*(v94 + 56) + 8 * v96);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_42:
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v99 = Set<>.makeNonEmpty()(v98);

          v100 = *(v152 + 72);
          *(v152 + 72) = (v100 + 1) & 0xFFFFFF;
          v159 = v207;
          v160 = v208;
          *v161 = v209[0];
          *&v161[9] = *(v209 + 9);
          v157 = v205;
          v158 = v206;
          if (v73)
          {
            v66 = 0;
            v67 = 0;
            v68 = 1;
            v37 = v95;
          }

          else
          {
            v37 = v95;
            if (v74)
            {
              v66 = 0;
              v67 = 0;
              v68 = 1;
            }

            else
            {
              v68 = 0;
            }
          }

          v169 = v159;
          v170 = v160;
          v171 = *v161;
          v172 = *&v161[16];
          v167 = v157;
          v168 = v158;
          v181 = v159;
          v182 = v160;
          *v183 = *v161;
          *&v183[16] = *&v161[16];
          LOBYTE(v156[0]) = 1;
          LOBYTE(v155[0]) = v68;
          *&v173 = 0;
          DWORD2(v173) = 0;
          BYTE12(v173) = 1;
          *&v174 = v66;
          *(&v174 + 1) = v67;
          LOBYTE(v175) = v68;
          *(&v175 + 1) = v99;
          *&v176 = MEMORY[0x1E69E7CC0];
          *(&v176 + 1) = MEMORY[0x1E69E7CC0];
          *&v177 = 0;
          BYTE8(v177) = 2;
          HIDWORD(v177) = v100;
          v179 = v157;
          v180 = v158;
          *&v184 = 0;
          DWORD2(v184) = 0;
          BYTE12(v184) = 1;
          *&v185 = v66;
          *(&v185 + 1) = v67;
          LOBYTE(v186) = v68;
          *(&v186 + 1) = v99;
          *&v187 = MEMORY[0x1E69E7CC0];
          *(&v187 + 1) = MEMORY[0x1E69E7CC0];
          *&v188 = 0;
          BYTE8(v188) = 2;
          HIDWORD(v188) = v100;
          sub_1B0B11A84(&v205, __dst);
          sub_1B03A35B8(&v167, __dst);
          sub_1B03A3614(&v179);
          *&__dst[128] = v175;
          *&__dst[144] = v176;
          *&__dst[160] = v177;
          *&__dst[64] = v171;
          *&__dst[80] = v172;
          *&__dst[96] = v173;
          *&__dst[112] = v174;
          *__dst = v167;
          *&__dst[16] = v168;
          *&__dst[32] = v169;
          *&__dst[48] = v170;
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(__dst);
          v195 = *&__dst[128];
          v196 = *&__dst[144];
          v197 = *&__dst[160];
          *v192 = *&__dst[64];
          *&v192[16] = *&__dst[80];
          v194 = *&__dst[112];
          v193 = *&__dst[96];
          *v189 = *__dst;
          *&v189[16] = *&__dst[16];
          v191 = *&__dst[48];
          v190 = *&__dst[32];
          sub_1B0BC918C(v189, v75, v76);
          sub_1B0B11AE0(&v205);
          goto LABEL_29;
        }
      }

      else
      {
        v95 = v37;
      }

      v98 = MEMORY[0x1E69E7CD0];
      goto LABEL_42;
    }

    v79 = (v37[7] + 96 * v77);
    v80 = v79[1];
    v218 = *v79;
    v219 = v80;
    v82 = v79[3];
    v81 = v79[4];
    v83 = v79[2];
    *(v222 + 9) = *(v79 + 73);
    v221 = v82;
    v222[0] = v81;
    v220 = v83;
    sub_1B0B11A84(&v205, __dst);
    sub_1B0B11A84(&v218, __dst);
    if ((static MailboxOfInterest.__derived_struct_equals(_:_:)(&v218, &v205) & 1) == 0)
    {
      break;
    }

    sub_1B0B11AE0(&v218);
    v84 = sub_1B03AB888(v75, v76);
    if (v85)
    {
      v86 = v84;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v179 = v37;
      v69 = v154;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

LABEL_68:
      sub_1B0B8E450();
      v37 = v179;
LABEL_36:
      v88 = *(v37[6] + 16 * v86);

      v89 = (v37[7] + 96 * v86);
      v90 = v89[1];
      *__dst = *v89;
      *&__dst[16] = v90;
      v92 = v89[3];
      v91 = v89[4];
      v93 = v89[2];
      *&__dst[73] = *(v89 + 73);
      *&__dst[48] = v92;
      *&__dst[64] = v91;
      *&__dst[32] = v93;
      sub_1B0B11AE0(__dst);
      sub_1B0B905EC(v86, v37);
      goto LABEL_69;
    }

    sub_1B0B11AE0(&v205);
LABEL_29:
    v69 = v154;
LABEL_30:
    v65 += 96;
    v64 = v69 - 1;
    if (!v64)
    {
      goto LABEL_70;
    }
  }

  v151 = v37;
  v223 = DWORD1(v209[1]);
  v224 = BYTE8(v209[1]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03AB2E0(__dst, v75, v76);

  v210[0] = v218;
  v210[1] = v219;
  *&__dst[16] = *(&v222[1] + 1);
  *__dst = *(v222 + 1);
  __dst[23] = v224;
  *&__dst[19] = v223;
  v211 = v66;
  v212 = v73;
  *&v213[15] = *(v225 + 15);
  *v213 = v225[0];
  v214 = v67;
  v215 = v74;
  v216 = *(v222 + 1);
  v217 = *&__dst[16];
  v101 = static MailboxOfInterest.__derived_struct_equals(_:_:)(&v205, v210);
  sub_1B0B11AE0(v210);
  if (v101)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v102 = sub_1B0B28630(&v179, v75, v76);
    v104 = v103;
    memmove(__dst, v103, 0xB0uLL);
    if (sub_1B03BCF14(__dst) != 1)
    {
      v104[21] = v223;
      *(v104 + 88) = v224;
    }

    v102(&v179, 0);

    v37 = v151;
    v69 = v154;
    goto LABEL_66;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v105 = sub_1B0B28630(&v157, v75, v76);
  v107 = v106;
  memmove(__dst, v106, 0xB0uLL);
  if (sub_1B03BCF14(__dst) != 1)
  {
    v108 = v107[1];
    v179 = *v107;
    v180 = v108;
    v109 = v107[2];
    v110 = v107[3];
    v111 = v107[4];
    *&v183[9] = *(v107 + 73);
    v182 = v110;
    *v183 = v111;
    v181 = v109;
    v112 = v209[0];
    v113 = v208;
    v114 = v207;
    *(v107 + 73) = *(v209 + 9);
    v107[3] = v113;
    v107[4] = v112;
    v107[2] = v114;
    v115 = v206;
    *v107 = v205;
    v107[1] = v115;
    sub_1B0B11A84(&v205, &v167);
    sub_1B0B11AE0(&v179);
  }

  v105(&v157, 0);

  v116 = *(&v200 + 1);
  v117 = *(v200 + 16);
  v37 = v151;
  v118 = v200 + 32;
  if (!v199)
  {
    v119 = sub_1B03A912C(v75, v76, v118, v117);
    if ((v121 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_55:
    sub_1B0B378E0(&v167);
    v186 = v175;
    v187 = v176;
    v188 = v177;
    *v183 = v171;
    *&v183[16] = v172;
    v184 = v173;
    v185 = v174;
    v179 = v167;
    v180 = v168;
    v181 = v169;
    v182 = v170;
LABEL_60:
    v175 = v186;
    v176 = v187;
    v177 = v188;
    v171 = *v183;
    v172 = *&v183[16];
    v173 = v184;
    v174 = v185;
    v167 = v179;
    v168 = v180;
    v169 = v181;
    v170 = v182;
    v69 = v154;
    if (sub_1B03BCF14(&v167) == 1)
    {
      v164 = v186;
      v165 = v187;
      v166 = v188;
      *v161 = *v183;
      *&v161[16] = *&v183[16];
      v162 = v184;
      v163 = v185;
      v157 = v179;
      v158 = v180;
      v159 = v181;
      v160 = v182;
      sub_1B0398EFC(&v157, &qword_1EB6E4798, &qword_1B0EC5E78);
    }

    else
    {
      v131 = v184;
      v164 = v186;
      v165 = v187;
      v166 = v188;
      *v161 = *v183;
      *&v161[16] = *&v183[16];
      v162 = v184;
      v163 = v185;
      v157 = v179;
      v158 = v180;
      v159 = v181;
      v160 = v182;

      sub_1B0398EFC(&v157, &qword_1EB6E4798, &qword_1B0EC5E78);
      if (v131)
      {

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v132 = sub_1B0B28630(v155, v75, v76);
        v134 = v133;
        memmove(v156, v133, 0xB0uLL);
        if (sub_1B03BCF14(v156) != 1)
        {
          v135 = v134[12];
          v134[12] = 0;
        }

        v132(v155, 0);
        v37 = v151;

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03AB2E0(v155, v75, v76);
      }
    }

LABEL_66:
    v136 = sub_1B03AB888(v75, v76);
    if (v137)
    {
      v86 = v136;
      v138 = swift_isUniquelyReferenced_nonNull_native();
      *&v179 = v37;
      if ((v138 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_36;
    }

LABEL_69:
    sub_1B0B11AE0(&v205);
    goto LABEL_30;
  }

  v119 = sub_1B0BA7CA4(v75, v76, v118, v117, (v199 + 16));
  if (v120)
  {
    goto LABEL_55;
  }

LABEL_57:
  if ((v119 & 0x8000000000000000) == 0)
  {
    if (v119 >= *(v116 + 16))
    {
      goto LABEL_73;
    }

    v122 = (v116 + 176 * v119);
    v123 = v122[2];
    v124 = v122[4];
    v168 = v122[3];
    v169 = v124;
    v167 = v123;
    v125 = v122[5];
    v126 = v122[6];
    v127 = v122[8];
    v172 = v122[7];
    v173 = v127;
    v170 = v125;
    v171 = v126;
    v128 = v122[9];
    v129 = v122[10];
    v130 = v122[12];
    v176 = v122[11];
    v177 = v130;
    v174 = v128;
    v175 = v129;
    memmove(&v179, v122 + 2, 0xB0uLL);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v179);
    sub_1B03A35B8(&v167, &v157);
    goto LABEL_60;
  }

  __break(1u);
LABEL_73:
  __break(1u);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B0B28040(unint64_t *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47A0, &qword_1B0EC5E80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v36 - v7);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4400, &qword_1B0EC5168);
  v49 = *(v52 - 8);
  v9 = *(v49 + 64);
  v10 = MEMORY[0x1EEE9AC00](v52);
  v51 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v36 - v12;
  v13 = *v2;
  v14 = *(v2 + 8);
  v15 = *(v2 + 16);
  v16 = *(v2 + 24);
  if (v16)
  {
    v17 = *v2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }

    for (i = *(v13 + 2); i; i = *(v13 + 2))
    {
      v36 = v15;
      v37 = v16;
      v38 = v2;
      v20 = 0;
      v16 = 0;
      v21 = a1[2];
      v15 = (v49 + 48);
      v40 = a1 + 6;
      v41 = v13 + 32;
      v42 = v21;
      v43 = v13;
      v44 = v14;
      v45 = a2;
      while (v20 < i)
      {
        v23 = &v41[176 * v20];
        v2 = *(v23 + 2);
        v46 = v23;
        v47 = v20;
        v24 = *(v23 + 6);
        v25 = *(a2 + 16);
        v50 = v2;
        if (v25)
        {
          v26 = sub_1B03AB888(v2, v24);
          if (v27)
          {
            v54 = 0;
            v53 = *(*(a2 + 56) + 8 * v26);
          }

          else
          {
            v53 = 0;
            v54 = 1;
          }

          v2 = v50;
        }

        else
        {
          v53 = 0;
          v54 = 1;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v21)
        {
          a1 = v40;
          v28 = v21;
          v22 = MEMORY[0x1E69E7CC0];
          do
          {
            v29 = *(a1 - 1);
            v30 = *a1;
            v55 = *(a1 - 4);
            v56 = v29;
            v57 = v30;
            sub_1B09AFB1C(v29, v30);
            sub_1B0B29AC4(&v55, v2, v24, v53, v54, v8);
            sub_1B09AFBA0(v29, v30);
            if ((*v15)(v8, 1, v52) == 1)
            {
              sub_1B0398EFC(v8, &qword_1EB6E47A0, &qword_1B0EC5E80);
            }

            else
            {
              v31 = v48;
              sub_1B03C60A4(v8, v48, &qword_1EB6E4400, &qword_1B0EC5168);
              sub_1B03C60A4(v31, v51, &qword_1EB6E4400, &qword_1B0EC5168);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v22 = sub_1B0B003DC(0, v22[2] + 1, 1, v22);
              }

              v33 = v22[2];
              v32 = v22[3];
              v2 = v50;
              if (v33 >= v32 >> 1)
              {
                v22 = sub_1B0B003DC(v32 > 1, v33 + 1, 1, v22);
              }

              v22[2] = v33 + 1;
              sub_1B03C60A4(v51, v22 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v33, &qword_1EB6E4400, &qword_1B0EC5168);
            }

            a1 += 3;
            --v28;
          }

          while (v28);
        }

        else
        {
          v22 = MEMORY[0x1E69E7CC0];
        }

        sub_1B0B35884(v22, v46 + 19);

        v20 = v47 + 1;
        v13 = v43;
        v14 = v44;
        i = *(v43 + 2);
        a2 = v45;
        v21 = v42;
        if (v47 + 1 == i)
        {
          result = sub_1B03BB638(v39, v44, v36, 1);
          v2 = v38;
          LOBYTE(v16) = v37;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_27:
      v13 = sub_1B03D0E54(v39);
    }

    result = sub_1B03BB638(v39, v14, v15, 1);
LABEL_29:
    a1 = 0;
    v15 = 0;
  }

  else
  {
    v34 = *v2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = sub_1B03BB638(v13, v14, v15, 0);
  }

  *v2 = v13;
  *(v2 + 8) = a1;
  *(v2 + 16) = v15;
  *(v2 + 24) = v16;
  return result;
}

uint64_t sub_1B0B284C8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 24);
  if (v5)
  {
    v7 = *v2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_11;
    }

    for (i = *(v4 + 16); i; i = *(isUniquelyReferenced_nonNull_native + 16))
    {
      v10 = 0;
      v11 = (v4 + 176);
      while (v10 < i)
      {
        MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
        v19[2] = v12;
        v19[3] = v2;
        v19[4] = a2;
        v13 = sub_1B0B3E618(sub_1B0B37900, v19, a1);
        v14 = *v11;
        *v11 = v13;
        v11 += 22;

        ++v10;
        i = *(v4 + 16);
        if (v10 == i)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_11:
      isUniquelyReferenced_nonNull_native = sub_1B03D0E54(v4);
      v4 = isUniquelyReferenced_nonNull_native;
    }

LABEL_7:
    result = sub_1B03BB638(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
    v16 = 0;
    a1 = 0;
  }

  else
  {
    v16 = *(v2 + 8);
    v17 = *(v2 + 16);
    v18 = *v2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = sub_1B03BB638(v4, v16, v17, 0);
  }

  *v2 = v4;
  *(v2 + 8) = v16;
  *(v2 + 16) = a1;
  *(v2 + 24) = v5;
  return result;
}

void (*sub_1B0B28630(uint64_t *a1, uint64_t a2, unsigned int a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x448uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 1064) = v3;
  *(v7 + 1088) = a3;
  *(v7 + 1056) = a2;
  sub_1B0B378E0(v7);
  v9 = *(v8 + 144);
  *(v8 + 304) = *(v8 + 128);
  *(v8 + 320) = v9;
  *(v8 + 336) = *(v8 + 160);
  v10 = *(v8 + 80);
  *(v8 + 240) = *(v8 + 64);
  *(v8 + 256) = v10;
  v11 = *(v8 + 112);
  *(v8 + 272) = *(v8 + 96);
  *(v8 + 288) = v11;
  v12 = *(v8 + 16);
  *(v8 + 176) = *v8;
  *(v8 + 192) = v12;
  v13 = *(v8 + 48);
  *(v8 + 208) = *(v8 + 32);
  *(v8 + 224) = v13;
  *(v8 + 1072) = sub_1B0B35474(a2, a3, (v8 + 176));
  *(v8 + 1092) = v14;
  *(v8 + 1080) = v15;
  return sub_1B0B28708;
}

void sub_1B0B28708(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 880);
  v4 = *(*a1 + 1092);
  if (a2)
  {
    v5 = *(v2 + 288);
    v7 = *(v2 + 304);
    v6 = *(v2 + 320);
    *(v2 + 480) = v7;
    *(v2 + 496) = v6;
    v8 = *(v2 + 224);
    v10 = *(v2 + 240);
    v9 = *(v2 + 256);
    *(v2 + 416) = v10;
    *(v2 + 432) = v9;
    v11 = *(v2 + 256);
    v13 = *(v2 + 272);
    v12 = *(v2 + 288);
    *(v2 + 448) = v13;
    *(v2 + 464) = v12;
    v14 = *(v2 + 192);
    *(v2 + 352) = *(v2 + 176);
    *(v2 + 368) = v14;
    v15 = *(v2 + 224);
    v17 = *(v2 + 176);
    v16 = *(v2 + 192);
    *(v2 + 384) = *(v2 + 208);
    *(v2 + 400) = v15;
    v121 = *(v2 + 304);
    v122 = *(v2 + 320);
    v123 = *(v2 + 336);
    v18 = *(v2 + 208);
    v117 = *(v2 + 240);
    v118 = *(v2 + 256);
    v119 = *(v2 + 272);
    v120 = *(v2 + 288);
    v113 = *(v2 + 176);
    v114 = *(v2 + 192);
    v115 = v18;
    v116 = *(v2 + 224);
    *(v2 + 640) = v5;
    *(v2 + 656) = v7;
    v19 = *(v2 + 336);
    *(v2 + 672) = *(v2 + 320);
    *(v2 + 688) = v19;
    *(v2 + 576) = v8;
    *(v2 + 592) = v10;
    *(v2 + 608) = v11;
    *(v2 + 624) = v13;
    *(v2 + 512) = v19;
    *(v2 + 528) = v17;
    *(v2 + 544) = v16;
    *(v2 + 560) = v18;
    v20 = sub_1B03BCF14((v2 + 528));
    v21 = v20 == 1;
    if (v4)
    {
      if (v20 != 1)
      {
LABEL_4:
        v22 = *(v2 + 1080);
        v23 = *(v2 + 1064);
        v24 = *(v2 + 1088);
        v25 = *(v2 + 1056);
        sub_1B03B5C80(v2 + 352, v2 + 704, &qword_1EB6E4798, &qword_1B0EC5E78);
        sub_1B03A5284(v25, v24);
        v28 = *(v23 + 16);
        v26 = (v23 + 16);
        v27 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v26 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B0B09D24(0, *(v27 + 16) + 1, 1);
          v27 = *v26;
        }

        v31 = *(v27 + 16);
        v30 = *(v27 + 24);
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          sub_1B0B09D24((v30 > 1), v31 + 1, 1);
          v32 = v31 + 1;
          v27 = *v26;
        }

        v128 = v117;
        v129 = v118;
        v126 = v115;
        v127 = v116;
        v133 = v122;
        v134 = v123;
        v131 = v120;
        v132 = v121;
        v130 = v119;
        v124 = v113;
        v125 = v114;
        *(v27 + 16) = v32;
        v33 = (v27 + 176 * v31);
        v34 = v124;
        v35 = v126;
        v33[3] = v125;
        v33[4] = v35;
        v33[2] = v34;
        v36 = v127;
        v37 = v128;
        v38 = v130;
        v33[7] = v129;
        v33[8] = v38;
        v33[5] = v36;
        v33[6] = v37;
        v39 = v131;
        v40 = v132;
        v41 = v134;
        v33[11] = v133;
        v33[12] = v41;
        v33[9] = v39;
        v33[10] = v40;
        *v26 = v27;
        goto LABEL_27;
      }

LABEL_11:
      sub_1B03B5C80(v2 + 352, v2 + 704, &qword_1EB6E4798, &qword_1B0EC5E78);
      goto LABEL_27;
    }
  }

  else
  {
    v42 = *(v2 + 288);
    v44 = *(v2 + 304);
    v43 = *(v2 + 320);
    *(v2 + 480) = v44;
    *(v2 + 496) = v43;
    v45 = *(v2 + 224);
    v47 = *(v2 + 240);
    v46 = *(v2 + 256);
    *(v2 + 416) = v47;
    *(v2 + 432) = v46;
    v48 = *(v2 + 256);
    v50 = *(v2 + 272);
    v49 = *(v2 + 288);
    *(v2 + 448) = v50;
    *(v2 + 464) = v49;
    v51 = *(v2 + 192);
    *(v2 + 352) = *(v2 + 176);
    *(v2 + 368) = v51;
    v52 = *(v2 + 224);
    v54 = *(v2 + 176);
    v53 = *(v2 + 192);
    *(v2 + 384) = *(v2 + 208);
    *(v2 + 400) = v52;
    v121 = *(v2 + 304);
    v122 = *(v2 + 320);
    v123 = *(v2 + 336);
    v55 = *(v2 + 208);
    v117 = *(v2 + 240);
    v118 = *(v2 + 256);
    v119 = *(v2 + 272);
    v120 = *(v2 + 288);
    v113 = *(v2 + 176);
    v114 = *(v2 + 192);
    v115 = v55;
    v116 = *(v2 + 224);
    *(v2 + 640) = v42;
    *(v2 + 656) = v44;
    v56 = *(v2 + 336);
    *(v2 + 672) = *(v2 + 320);
    *(v2 + 688) = v56;
    *(v2 + 576) = v45;
    *(v2 + 592) = v47;
    *(v2 + 608) = v48;
    *(v2 + 624) = v50;
    *(v2 + 512) = v56;
    *(v2 + 528) = v54;
    *(v2 + 544) = v53;
    *(v2 + 560) = v55;
    v57 = sub_1B03BCF14((v2 + 528));
    v21 = v57 == 1;
    if (v4)
    {
      if (v57 != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  if (v21)
  {
    v58 = *(v2 + 1072);
    v59 = *(v2 + 1064);
    v61 = *(v59 + 16);
    v60 = (v59 + 16);
    v62 = v2 + 352;
    if (v58 >= *(v61 + 16))
    {
      sub_1B03B5C80(v62, v2 + 704, &qword_1EB6E4798, &qword_1B0EC5E78);
    }

    else
    {
      sub_1B03B5C80(v62, v3, &qword_1EB6E4798, &qword_1B0EC5E78);
      sub_1B0BCB2E8(v58, &v124);
      v63 = v133;
      *(v2 + 832) = v132;
      *(v2 + 848) = v63;
      *(v2 + 864) = v134;
      v64 = v129;
      *(v2 + 768) = v128;
      *(v2 + 784) = v64;
      v65 = v131;
      *(v2 + 800) = v130;
      *(v2 + 816) = v65;
      v66 = v125;
      *(v2 + 704) = v124;
      *(v2 + 720) = v66;
      v67 = v127;
      *(v2 + 736) = v126;
      *(v2 + 752) = v67;
      v68 = *v60;
      sub_1B03A35B8(v2 + 704, v3);
      v69 = swift_isUniquelyReferenced_nonNull_native();
      *v60 = v68;
      if ((v69 & 1) == 0)
      {
        sub_1B0B09D24(0, *(v68 + 16) + 1, 1);
        v68 = *v60;
      }

      v71 = *(v68 + 16);
      v70 = *(v68 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1B0B09D24((v70 > 1), v71 + 1, 1);
      }

      v72 = v133;
      v3[8] = v132;
      v3[9] = v72;
      v3[10] = v134;
      v73 = v129;
      v3[4] = v128;
      v3[5] = v73;
      v74 = v131;
      v3[6] = v130;
      v3[7] = v74;
      v75 = v125;
      *v3 = v124;
      v3[1] = v75;
      v76 = v127;
      v3[2] = v126;
      v3[3] = v76;
      sub_1B03A3614(v3);
      v77 = *v60;
      *(v77 + 16) = v71 + 1;
      v78 = (v77 + 176 * v71);
      v79 = *(v2 + 816);
      v80 = *(v2 + 832);
      v81 = *(v2 + 864);
      v78[11] = *(v2 + 848);
      v78[12] = v81;
      v78[9] = v79;
      v78[10] = v80;
      v82 = *(v2 + 752);
      v83 = *(v2 + 768);
      v84 = *(v2 + 800);
      v78[7] = *(v2 + 784);
      v78[8] = v84;
      v78[5] = v82;
      v78[6] = v83;
      v85 = *(v2 + 704);
      v86 = *(v2 + 736);
      v78[3] = *(v2 + 720);
      v78[4] = v86;
      v78[2] = v85;
      *v60 = v77;
    }

    v105 = *(v2 + 1064);
    sub_1B0BCAE88(*(v2 + 1072), *(v2 + 1080));
  }

  else
  {
    v87 = *(v2 + 1064);
    v90 = *(v87 + 16);
    v88 = (v87 + 16);
    v89 = v90;
    sub_1B03B5C80(v2 + 352, v2 + 704, &qword_1EB6E4798, &qword_1B0EC5E78);
    v91 = swift_isUniquelyReferenced_nonNull_native();
    *v88 = v89;
    if ((v91 & 1) == 0)
    {
      sub_1B0B09D24(0, *(v89 + 16) + 1, 1);
      v89 = *v88;
    }

    v92 = *(v89 + 16);
    v93 = *(v89 + 24);
    v94 = v92 + 1;
    if (v92 >= v93 >> 1)
    {
      v111 = *(v89 + 16);
      v112 = v92 + 1;
      sub_1B0B09D24((v93 > 1), v92 + 1, 1);
      v94 = v112;
      v92 = v111;
      v89 = *v88;
    }

    v95 = *(v2 + 1072);
    v128 = v117;
    v129 = v118;
    v126 = v115;
    v127 = v116;
    v133 = v122;
    v134 = v123;
    v131 = v120;
    v132 = v121;
    v130 = v119;
    v124 = v113;
    v125 = v114;
    *(v89 + 16) = v94;
    v96 = (v89 + 176 * v92);
    v97 = v124;
    v98 = v126;
    v96[3] = v125;
    v96[4] = v98;
    v96[2] = v97;
    v99 = v127;
    v100 = v128;
    v101 = v130;
    v96[7] = v129;
    v96[8] = v101;
    v96[5] = v99;
    v96[6] = v100;
    v102 = v131;
    v103 = v132;
    v104 = v134;
    v96[11] = v133;
    v96[12] = v104;
    v96[9] = v102;
    v96[10] = v103;
    *v88 = v89;
    sub_1B0B3555C(v95, v92);
  }

LABEL_27:
  v106 = *(v2 + 320);
  *(v2 + 656) = *(v2 + 304);
  *(v2 + 672) = v106;
  *(v2 + 688) = *(v2 + 336);
  v107 = *(v2 + 256);
  *(v2 + 592) = *(v2 + 240);
  *(v2 + 608) = v107;
  v108 = *(v2 + 288);
  *(v2 + 624) = *(v2 + 272);
  *(v2 + 640) = v108;
  v109 = *(v2 + 192);
  *(v2 + 528) = *(v2 + 176);
  *(v2 + 544) = v109;
  v110 = *(v2 + 224);
  *(v2 + 560) = *(v2 + 208);
  *(v2 + 576) = v110;
  sub_1B0398EFC(v2 + 528, &qword_1EB6E4798, &qword_1B0EC5E78);

  free(v2);
}

void sub_1B0B28CA4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v7 = _s13SelectedStateV7WrappedVMa(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 24) == 1)
  {
    v14 = (v3 + 8);
    v13 = *(v3 + 8);
    v15 = *(v3 + 16);
    v45 = *v3;
    v12 = v45;
    v16 = *(v45 + 2);
    if (!v16)
    {
LABEL_23:
      *v3 = v45;
      *v14 = 0;
      v14[1] = 0;
      *(v3 + 24) = 1;
      return;
    }

    v17 = 0;
    while (1)
    {
      v18 = &v45[176 * v17 + 32];
      if ((*(v18 + 24) | (*(v18 + 24) << 32)) == (a2 | (a2 << 32)))
      {
        v19 = *(v18 + 16);
        v20 = *(v19 + 16);
        if (v20 == *(a1 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v17 == v16)
      {
        goto LABEL_23;
      }
    }

    if (v20)
    {
      v21 = v19 == a1;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
LABEL_15:
      v40 = v9;
      v42 = v13;
      sub_1B03B9A2C(v45, v13, v15, 1);
      v24 = v12;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_16:
        if (v17 >= *(v24 + 2))
        {
          __break(1u);
          return;
        }

        v41 = v3;
        v25 = &v24[176 * v17];
        v26 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B00C8(v26);
        Set<>.formNonEmpty()();
        *(v25 + 34) = 0;
        v25[140] = 1;
        v45 = v24;
        v28 = sub_1B0B86138(v44, v17);
        if (*(v27 + 96))
        {
          v29 = v27;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = *(v29 + 96);
            v31 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
            swift_beginAccess();
            sub_1B03B1BD0(v30 + v31, v11, _s13SelectedStateV7WrappedVMa);
            v32 = _s13SelectedStateV8_StorageCMa(0);
            v33 = *(v32 + 48);
            v34 = *(v32 + 52);
            v35 = swift_allocObject();
            sub_1B0B37C3C(v11, v35 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);
            v36 = *(v29 + 96);
            *(v29 + 96) = v35;
          }

          v37 = *(v29 + 96) + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
          swift_beginAccess();
          v38 = v37 + *(v40 + 20);
          sub_1B03BDE74(a3);
          sub_1B03BDD7C(&v43, a3);
          swift_endAccess();
          v28(v44, 0);
        }

        else
        {
          v28(v44, 0);
        }

        sub_1B03BB638(v12, v42, v15, 1);
        v3 = v41;
        goto LABEL_23;
      }
    }

    else
    {
      v22 = (v19 + 32);
      v23 = (a1 + 32);
      while (v20)
      {
        if (*v22 != *v23)
        {
          goto LABEL_4;
        }

        ++v22;
        ++v23;
        if (!--v20)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    v24 = sub_1B03D0E54(v12);
    goto LABEL_16;
  }
}

void sub_1B0B28FD0(char **a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v38 = type metadata accessor for State.Logger();
  v5 = *(*(v38 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - v7;
  v10 = *a1;
  v47 = *(*a1 + 2);
  if (v47)
  {
    v37 = v8;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v42 = &v37 - v7;
    v43 = a1;
    v44 = a2;
    do
    {
      if (v14 >= *(v10 + 2))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v15 = *&v10[v11 + 48];
      v16 = *&v10[v11 + 56];
      if ((sub_1B03B5DDC(v15, v16, a2) & 1) == 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B03D0E54(v10);
        }

        if (v14 >= *(v10 + 2))
        {
          goto LABEL_30;
        }

        if (*(*&v10[v11 + 168] + 16))
        {
          *&v10[v11 + 168] = MEMORY[0x1E69E7CD0];

          *a1 = v10;
          if (v13 > 4)
          {

            v30 = __OFADD__(v12++, 1);
            if (v30)
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v14 >= *(v10 + 2))
            {
              goto LABEL_32;
            }

            v46 = *&v10[v11 + 204];
            sub_1B03B1BD0(v45, v9, type metadata accessor for State.Logger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v17 = sub_1B0E43988();
            v18 = sub_1B0E45908();

            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              v41 = v13;
              v20 = v19;
              v21 = swift_slowAlloc();
              v39 = v17;
              v40 = v21;
              v50 = v21;
              *v20 = 0x204100603;
              *(v20 + 8) = 256;
              v22 = v9[*(v38 + 20)];
              sub_1B03B1DC0(v9, type metadata accessor for State.Logger);
              *(v20 + 10) = v22;
              *(v20 + 11) = 1040;
              *(v20 + 13) = 2;
              *(v20 + 17) = 512;
              *(v20 + 19) = v46;
              *(v20 + 21) = 2160;
              *(v20 + 23) = 0x786F626C69616DLL;
              *(v20 + 31) = 2085;
              v48 = v15;
              v49 = v16;
              v23 = sub_1B0E44BA8();
              v25 = sub_1B0399D64(v23, v24, &v50);

              *(v20 + 33) = v25;
              v26 = v18;
              v27 = v39;
              _os_log_impl(&dword_1B0389000, v39, v26, "[%.*hhx] [{%.*hx}-%{sensitive,mask.mailbox}s] Did mark as sync complete.", v20, 0x29u);
              v28 = v40;
              __swift_destroy_boxed_opaque_existential_0Tm(v40);
              MEMORY[0x1B272C230](v28, -1, -1);
              v29 = v20;
              v13 = v41;
              MEMORY[0x1B272C230](v29, -1, -1);
            }

            else
            {
              sub_1B03B1DC0(v9, type metadata accessor for State.Logger);
            }

            a1 = v43;
            a2 = v44;
            ++v13;
            v9 = v42;
            v30 = __OFADD__(v12++, 1);
            if (v30)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {

          *a1 = v10;
        }
      }

      ++v14;
      v11 += 176;
    }

    while (v47 != v14);
    v31 = v37;
    if (v13 >= v12)
    {
      return;
    }

    sub_1B03B1BD0(v45, v37, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v32 = sub_1B0E43988();
    v33 = sub_1B0E45908();
    if (!os_log_type_enabled(v32, v33))
    {
      sub_1B03B1DC0(v31, type metadata accessor for State.Logger);
      goto LABEL_27;
    }

    v34 = v13;
    v35 = swift_slowAlloc();
    *v35 = 68158208;
    *(v35 + 4) = 2;
    *(v35 + 8) = 256;
    v36 = *(v31 + *(v38 + 20));
    sub_1B03B1DC0(v31, type metadata accessor for State.Logger);
    *(v35 + 10) = v36;
    *(v35 + 11) = 2048;
    if (!__OFSUB__(v12, v34))
    {
      *(v35 + 13) = v12 - v34;
      _os_log_impl(&dword_1B0389000, v32, v33, "[%.*hhx] Did mark %ld more mailboxes as sync complete.", v35, 0x15u);
      MEMORY[0x1B272C230](v35, -1, -1);
LABEL_27:

      return;
    }

LABEL_33:
    __break(1u);
  }
}

uint64_t sub_1B0B294B8(uint64_t a1, unsigned int a2)
{
  if ((v2[24] & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v3 = *(*v2 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v5 = 0;
  v6 = a2 | (a2 << 32);
  v7 = (a1 + 32);
  result = MEMORY[0x1E69E7CD0];
  while (1)
  {
    v9 = *v2 + 32 + 176 * v5;
    if ((*(v9 + 24) | (*(v9 + 24) << 32)) == v6)
    {
      v10 = *(v9 + 16);
      v11 = *(v10 + 16);
      if (v11 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v5 == v3)
    {
      return result;
    }
  }

  if (v11)
  {
    v12 = v10 == a1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
LABEL_15:
    v15 = *(v9 + 136);
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    v13 = (v10 + 32);
    v14 = v7;
    while (v11)
    {
      if (*v13 != *v14)
      {
        goto LABEL_4;
      }

      ++v13;
      ++v14;
      if (!--v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B29590(uint64_t result, unsigned int a2)
{
  if ((v2[24] & 1) == 0)
  {
    return 0xFFFFLL;
  }

  v3 = *(*v2 + 16);
  if (!v3)
  {
    return 0xFFFFLL;
  }

  v4 = 0;
  while (1)
  {
    v5 = *v2 + 32 + 176 * v4;
    if ((*(v5 + 24) | (*(v5 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v6 = *(v5 + 16);
      v7 = *(v6 + 16);
      if (v7 == *(result + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v3)
    {
      return 0xFFFFLL;
    }
  }

  if (v7)
  {
    v8 = v6 == result;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return *(v5 + 172);
  }

  v9 = (v6 + 32);
  v10 = (result + 32);
  while (v7)
  {
    if (*v9 != *v10)
    {
      goto LABEL_4;
    }

    ++v9;
    ++v10;
    if (!--v7)
    {
      return *(v5 + 172);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B29640(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (*(v3 + 24) != 1)
  {
    return result;
  }

  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v16 = v4;
  v7 = *(v4 + 16);
  if (!v7)
  {
LABEL_16:
    *v3 = v4;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
    return result;
  }

  v8 = 0;
  while (1)
  {
    v9 = v4 + 32 + 176 * v8;
    if ((*(v9 + 24) | (*(v9 + 24) << 32)) == (a3 | (a3 << 32)))
    {
      v10 = *(v9 + 16);
      v11 = *(v10 + 16);
      if (v11 == *(a2 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v8 == v7)
    {
      goto LABEL_16;
    }
  }

  if (v11)
  {
    v12 = v10 == a2;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
LABEL_15:
    v15 = result;
    sub_1B03B9A2C(v4, v5, v6, 1);
    sub_1B0B24FD4(v15, &v16, v8);
    result = sub_1B03BB638(v4, v5, v6, 1);
    v4 = v16;
    goto LABEL_16;
  }

  v13 = (v10 + 32);
  v14 = (a2 + 32);
  while (v11)
  {
    if (*v13 != *v14)
    {
      goto LABEL_4;
    }

    ++v13;
    ++v14;
    if (!--v11)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}