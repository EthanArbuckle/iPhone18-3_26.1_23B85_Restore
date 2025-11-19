uint64_t sub_1CF49CA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = a4;
  v115 = a2;
  v116 = a3;
  v126 = a1;
  v6 = *(*v4 + 768);
  v7 = *(*v4 + 776);
  v8 = *(*v4 + 784);
  v122 = *(*v4 + 760);
  v5 = v122;
  v123 = v6;
  v97 = v6;
  v124 = v7;
  v125 = v8;
  v96 = v8;
  v98 = type metadata accessor for PersistenceTrigger();
  v100 = *(v98 - 8);
  v9 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v102 = &v94 - v10;
  v11 = type metadata accessor for SnapshotItem();
  v99 = sub_1CF9E75D8();
  v95 = *(v99 - 8);
  v12 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v109 = &v94 - v13;
  v103 = v11;
  v104 = *(v11 - 8);
  v14 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v101 = &v94 - v16;
  v17 = sub_1CF9E5248();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v106 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E5268();
  v107 = *(v20 - 8);
  v108 = v20;
  v21 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v105 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = *(AssociatedTypeWitness - 8);
  v24 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v114 = &v94 - v25;
  v26 = sub_1CF9E6068();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v113 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v94 - v35;
  v37 = type metadata accessor for Signpost(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v121 = &v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v40 = qword_1EDEBBE40;
  (*(v27 + 56))(v36, 1, 1, v26);
  v122 = 0;
  v123 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x206574656C6564, 0xE700000000000000);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = *(AssociatedConformanceWitness + 16);
  v120 = AssociatedTypeWitness;
  sub_1CF9E7FE8();
  v111 = v123;
  v112 = v122;
  sub_1CEFE74D8(v36, v33);
  v42 = *(v27 + 48);
  if (v42(v33, 1, v26) == 1)
  {
    v43 = v40;
    v44 = v113;
    sub_1CF9E6048();
    v45 = v44;
    if (v42(v33, 1, v26) != 1)
    {
      sub_1CEFCCC44(v33, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v45 = v113;
    (*(v27 + 32))(v113, v33, v26);
  }

  v46 = v121;
  (*(v27 + 16))(v121, v45, v26);
  *&v46[*(v37 + 20)] = v40;
  v47 = &v46[*(v37 + 24)];
  *v47 = "SQLDB: Delete Item";
  *(v47 + 1) = 18;
  v47[16] = 2;
  v48 = v40;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1CF9FA450;
  *(v49 + 56) = MEMORY[0x1E69E6158];
  *(v49 + 64) = sub_1CEFD51C4();
  v50 = v111;
  *(v49 + 32) = v112;
  *(v49 + 40) = v50;
  sub_1CF9E6028();

  (*(v27 + 8))(v45, v26);
  sub_1CEFCCC44(v36, &unk_1EC4BED20, &unk_1CFA00700);
  v51 = *(v117 + 8);
  v52 = v115;
  v53 = v116;
  (*(v51 + 88))(v116, v51);
  v54 = v114;
  sub_1CF046AB4();
  v55 = *(*(AssociatedConformanceWitness + 40) + 8);
  v56 = v126;
  v57 = v120;
  v58 = sub_1CF9E6868();
  (*(v119 + 8))(v54, v57);
  if (v58)
  {
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF24D0AC();
    v59 = v105;
    v60 = v108;
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v107 + 8))(v59, v60);
    swift_willThrow();
LABEL_17:
    sub_1CF9E7458();
    v90 = v121;
    sub_1CF9E6038();
    return sub_1CF4C0A48(v90, type metadata accessor for Signpost);
  }

  v62 = v109;
  v61 = v110;
  sub_1CF48C08C(v56, v52, v53, v51, v109);
  if (v61)
  {
    goto LABEL_17;
  }

  v114 = v48;
  v63 = v104;
  v64 = v103;
  if ((*(v104 + 48))(v62, 1, v103) == 1)
  {
    (*(v95 + 8))(v62, v99);
    result = swift_weakLoadStrong();
    v66 = v100;
    v67 = v102;
    if (result)
    {
      v68 = result;
      v69 = v120;
      (*(v119 + 16))(v102, v126, v120);
      v70 = swift_getAssociatedTypeWitness();
      v71 = swift_getAssociatedConformanceWitness();
      v122 = v69;
      v123 = v70;
      v124 = AssociatedConformanceWitness;
      v125 = v71;
      type metadata accessor for ReconciliationID();
      swift_storeEnumTagMultiPayload();
      v72 = v98;
      swift_storeEnumTagMultiPayload();
      (*(*v68 + 312))(v67);

      (*(v66 + 8))(v67, v72);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_23;
  }

  v73 = v62;
  v74 = v101;
  v75 = (*(v63 + 32))(v101, v73, v64);
  v76 = v52;
  v113 = &v94;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v78 = v126;
  (*(v117 + 32))(sub_1CF4C0744, v77);
  v79 = v53;
  v80 = v102;
  sub_1CF4884D0(v78, v76, v79, v51);
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v81 = result;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v83 = *(TupleTypeMetadata3 + 48);
  v84 = *(TupleTypeMetadata3 + 64);
  (*(v63 + 16))(v80, v74, v64);
  v85 = *(v63 + 56);
  v85(v80, 0, 1, v64);
  v85(&v80[v83], 1, 1, v64);
  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  *&v80[v84] = qword_1EDEABDE8;
  v86 = v98;
  swift_storeEnumTagMultiPayload();
  (*(*v81 + 312))(v80);

  v87 = *(v100 + 8);
  v87(v80, v86);
  v88 = *(v64 + 36);
  v89 = sub_1CF4947C8(&v101[v88], 1, v115, v116, v51);
  if (v89)
  {
LABEL_21:
    (*(v104 + 8))(v101, v64);
    goto LABEL_17;
  }

  result = swift_weakLoadStrong();
  v126 = result;
  if (result)
  {
    v91 = v120;
    (*(v119 + 16))(v80, &v101[v88], v120);
    v92 = swift_getAssociatedTypeWitness();
    v93 = swift_getAssociatedConformanceWitness();
    v122 = v91;
    v123 = v92;
    v124 = AssociatedConformanceWitness;
    v125 = v93;
    type metadata accessor for ReconciliationID();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    (*(*v126 + 312))(v80);

    v87(v80, v86);
    v64 = v103;
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1CF49D8CC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();

  strcpy(v12, "DELETE FROM ");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v5 = *(v4 + 776);
  v6 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  MEMORY[0x1D3868CC0](v10);

  return v12[0];
}

void sub_1CF49DA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a1;
  v6 = v4;
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v6;
  v11 = (*(*(a4 + 8) + 24))(sub_1CF4C0738, v13);
  if (!v5)
  {
    v12 = v11;
    if (([v11 next] & 1) == 0)
    {
      sub_1CF49CA34(a1, a2, a3, a4);
    }
  }
}

uint64_t sub_1CF49DB24(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA4C340);
  if (*(a2 + 32))
  {
    v5 = 20550;
  }

  else
  {
    v5 = 21318;
  }

  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  v6 = *(v4 + 776);
  v7 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = *(v8 + 32);
  v10 = swift_checkMetadataState();
  v11 = v9(a1, v10, v8);
  MEMORY[0x1D3868CC0](v11);

  return 0;
}

uint64_t sub_1CF49DCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a1;
  v5[2] = a3;
  v5[3] = a4;
  return (*(a4 + 32))(sub_1CF4C0BA0, v5);
}

uint64_t sub_1CF49DD04(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x46204554454C4544, 0xEC000000204D4F52);
  v5 = *(a2 + qword_1EDEBBD78);
  v6 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD00000000000002ELL, 0x80000001CFA4E390);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000044, 0x80000001CFA4E3C0);
  if (*(a2 + 32))
  {
    v7 = 20550;
  }

  else
  {
    v7 = 21318;
  }

  MEMORY[0x1D3868CC0](v7, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA4E410);
  v8 = *(v4 + 776);
  v9 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = *(v10 + 32);
  v12 = swift_checkMetadataState();
  v13 = v11(a1, v12, v10);
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0xD000000000000050, 0x80000001CFA4E440);
  MEMORY[0x1D3868CC0](v7, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0x4E2053492064695FLL, 0xEC000000294C4C55);
  return 0;
}

uint64_t sub_1CF49DF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v110 = a4;
  v108 = a3;
  v107 = a2;
  v117 = a1;
  v5 = *(*v4 + 776);
  v120 = *(*v4 + 760);
  v121 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1CF4C0B54();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v116 = *(TupleTypeMetadata3 - 8);
  v8 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v115 = v95 - v9;
  v99 = sub_1CF9E75D8();
  v98 = *(v99 - 8);
  v10 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v106 = v95 - v11;
  v105 = *(AssociatedTypeWitness - 8);
  v12 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v101 = v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v119 = v95 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v118 = v95 - v18;
  v19 = sub_1CF9E6068();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v112 = v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v95 - v28;
  v30 = type metadata accessor for Signpost(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v111 = v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v33 = qword_1EDEBBE40;
  (*(v20 + 56))(v29, 1, 1, v19);
  v122 = 0;
  v123 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4C300);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = *(AssociatedConformanceWitness + 16);
  v121 = AssociatedTypeWitness;
  sub_1CF9E7FE8();
  v104 = v122;
  v102 = v123;
  v103 = v29;
  sub_1CEFE74D8(v29, v26);
  v35 = *(v20 + 48);
  v36 = v35(v26, 1, v19);
  v120 = TupleTypeMetadata3;
  if (v36 == 1)
  {
    v37 = v33;
    v38 = v112;
    sub_1CF9E6048();
    if (v35(v26, 1, v19) != 1)
    {
      sub_1CEFCCC44(v26, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v38 = v112;
    (*(v20 + 32))(v112, v26, v19);
  }

  v39 = v111;
  (*(v20 + 16))(v111, v38, v19);
  *&v39[*(v30 + 20)] = v33;
  v40 = &v39[*(v30 + 24)];
  *v40 = "SQLDB: Recursive Delete Children";
  *(v40 + 1) = 32;
  v40[16] = 2;
  v41 = v33;
  v42 = v38;
  v43 = v41;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1CF9FA450;
  *(v44 + 56) = MEMORY[0x1E69E6158];
  *(v44 + 64) = sub_1CEFD51C4();
  v45 = v102;
  *(v44 + 32) = v104;
  *(v44 + 40) = v45;
  v104 = v43;
  sub_1CF9E6028();

  (*(v20 + 8))(v42, v19);
  sub_1CEFCCC44(v103, &unk_1EC4BED20, &unk_1CFA00700);
  v46 = *(v110 + 8);
  v47 = v108;
  (*(v46 + 88))(v108, v46);
  v48 = v120;
  sub_1CF9E7FA8();
  v49 = *(v116 + 72);
  v50 = *(v116 + 80);
  swift_allocObject();
  v103 = sub_1CF9E6D68();
  v52 = v51;
  v53 = v105;
  v54 = v105 + 16;
  v55 = *(v105 + 16);
  v56 = v117;
  v55(v51, v117, v121);
  v124 = v47;
  v125 = v46;
  v126 = v109;
  v127 = v56;
  v57 = v46;
  v60 = *(v46 + 24);
  v58 = v46 + 24;
  v59 = v60;
  v61 = v113;
  v100 = v57;
  v62 = v60(sub_1CF4C0BC4, &v122, v47);
  if (v61)
  {
    (*(v53 + 8))(v52, v121);
    sub_1CF3588D0(v103);

    goto LABEL_26;
  }

  v95[0] = v59;
  v95[1] = v58;
  v112 = v55;
  v113 = v54;
  v63 = *(v48 + 64);
  *(v52 + *(v48 + 48)) = v62;
  *(v52 + v63) = 0;
  v128 = sub_1CF045898(v103);
  v64 = sub_1CF9E6E58();
  v102 = (v116 + 48);
  v103 = (v53 + 32);
  v116 = v53 + 8;
  v97 = v110 + 32;
  v65 = v118;
  v66 = v121;
  v67 = v106;
  v117 = v64;
  while (1)
  {
LABEL_11:
    WitnessTable = swift_getWitnessTable();
    v69 = swift_getWitnessTable();
    MEMORY[0x1D3869410](v64, WitnessTable, v69);
    if ((*v102)(v67, 1, v48) == 1)
    {

      (*(v98 + 8))(v67, v99);
      sub_1CF9E7458();
      goto LABEL_27;
    }

    v70 = *&v67[*(v48 + 48)];
    LODWORD(v105) = v67[*(v48 + 64)];
    v71 = *v103;
    (*v103)(v65, v67, v66);
    if ([v70 next])
    {
      break;
    }

LABEL_24:
    if (v105)
    {
      v124 = v108;
      v125 = v110;
      v126 = v109;
      v127 = v65;
      (*(v110 + 32))(sub_1CF4C0BA0, &v122);
      v67 = v106;
      v64 = v117;
      (*v116)(v65, v66);
    }

    else
    {
      (*v116)(v65, v66);

      v67 = v106;
      v64 = v117;
    }
  }

  v96 = v71;
  v72 = v112;
  while (1)
  {
    v75 = *(v48 + 48);
    v76 = v66;
    v77 = *(v48 + 64);
    v78 = v115;
    (v72)(v115, v65, v76);
    *&v78[v75] = v70;
    v78[v77] = 1;
    v79 = v70;
    sub_1CF9E6E18();
    v80 = *(*(AssociatedConformanceWitness + 8) + 16);
    v81 = v79;
    v80();
    v82 = [v81 longAtIndex_];
    if (v82 <= 1)
    {
      break;
    }

    v73 = v82 == 2 || v82 == 4;
    v48 = v120;
    v66 = v121;
    v65 = v118;
    if (!v73)
    {
      goto LABEL_28;
    }

LABEL_19:
    (*v116)(v119, v66);
    v74 = [v81 next];
    v72 = v112;
    if ((v74 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v48 = v120;
  v66 = v121;
  v65 = v118;
  if (!v82)
  {
    goto LABEL_19;
  }

  if (v82 == 1)
  {
    v83 = v101;
    v84 = v119;
    (v112)(v101, v119, v121);
    v124 = v108;
    v125 = v100;
    v126 = v109;
    v127 = v84;
    v85 = (v95[0])(sub_1CF4C0BC4, &v122);
    v86 = v83;
    v87 = *(v48 + 48);
    v88 = *(v48 + 64);
    v89 = v115;
    v96(v115, v86, v121);
    *&v89[v87] = v85;
    v89[v88] = 0;
    v66 = v121;
    v64 = v117;
    sub_1CF9E6E18();

    v90 = *v116;
    (*v116)(v84, v66);
    v90(v65, v66);
    v67 = v106;
    goto LABEL_11;
  }

LABEL_28:

  sub_1CF1DA5D8();
  swift_allocError();
  *v93 = 0;
  swift_willThrow();

  v94 = *v116;
  (*v116)(v119, v66);
  v94(v65, v66);
LABEL_26:
  sub_1CF9E7458();
LABEL_27:
  v91 = v111;
  sub_1CF9E6038();
  return sub_1CF4C0A48(v91, type metadata accessor for Signpost);
}

uint64_t sub_1CF49ED14(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a4;
  v72 = a5;
  v70 = a3;
  v76 = a2;
  v77 = a1;
  v6 = *(*v5 + 768);
  v7 = *(*v5 + 776);
  v8 = *(*v5 + 784);
  v78 = *(*v5 + 760);
  v79 = v6;
  v61 = v6;
  v80 = v7;
  v81 = v8;
  v60 = v8;
  v64 = type metadata accessor for PersistenceTrigger();
  v63 = *(v64 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &AssociatedConformanceWitness - v10;
  v11 = sub_1CF9E6068();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &AssociatedConformanceWitness - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &AssociatedConformanceWitness - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &AssociatedConformanceWitness - v20;
  v22 = type metadata accessor for Signpost(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v74 = &AssociatedConformanceWitness - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v67 = qword_1EDEBBE40;
  (*(v12 + 56))(v21, 1, 1, v11);
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4C300);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = *(AssociatedConformanceWitness + 16);
  v59 = AssociatedTypeWitness;
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](0x737275636572202CLL, 0xEF203A796C657669);
  if (v76)
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (v76)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v27, v28);

  v65 = v79;
  v66 = v78;
  v68 = v21;
  sub_1CEFE74D8(v21, v18);
  v29 = *(v12 + 48);
  if (v29(v18, 1, v11) == 1)
  {
    v30 = v67;
    v31 = v67;
    v32 = v69;
    sub_1CF9E6048();
    v33 = v29(v18, 1, v11);
    v34 = v30;
    if (v33 != 1)
    {
      sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v32 = v69;
    (*(v12 + 32))(v69, v18, v11);
    v34 = v67;
  }

  v35 = v74;
  (*(v12 + 16))(v74, v32, v11);
  *(v35 + *(v22 + 20)) = v34;
  v36 = v35 + *(v22 + 24);
  *v36 = "SQLDB: Delete Children";
  *(v36 + 8) = 22;
  *(v36 + 16) = 2;
  v37 = v34;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1CF9FA450;
  *(v38 + 56) = MEMORY[0x1E69E6158];
  *(v38 + 64) = sub_1CEFD51C4();
  v39 = v65;
  *(v38 + 32) = v66;
  *(v38 + 40) = v39;
  v57 = v38;
  LOBYTE(v56) = 2;
  v55 = 2;
  v69 = v37;
  sub_1CF9E6028();

  (*(v12 + 8))(v32, v11);
  sub_1CEFCCC44(v68, &unk_1EC4BED20, &unk_1CFA00700);
  v41 = v71;
  v40 = v72;
  v42 = *(v72 + 8);
  v43 = v70;
  (*(v42 + 88))(v71, v42);
  v44 = (*(v42 + 8))(v41, v42);
  v45 = v73;
  if (v44 == 2)
  {
    v44 = [*(v73 + qword_1EDEAE5C0) removeAllObjects];
  }

  v84 = 0;
  v46 = v75;
  v47 = v77;
  if (v76)
  {
    MEMORY[0x1EEE9AC00](v44);
    *(&AssociatedConformanceWitness - 6) = v41;
    *(&AssociatedConformanceWitness - 5) = v40;
    v55 = v45;
    v56 = v43;
    v57 = &v84;
    sub_1CF492238(v47, v43, sub_1CF4C0714, (&AssociatedConformanceWitness - 8), v41, v42);
    if (v46)
    {
LABEL_21:
      sub_1CF9E7458();
      sub_1CF9E6038();
      return sub_1CF4C0A48(v35, type metadata accessor for Signpost);
    }

    if (v84 < 1)
    {
      goto LABEL_19;
    }
  }

  v80 = v41;
  v81 = v40;
  v82 = v45;
  v83 = v47;
  (*(v40 + 32))(sub_1CF4C0BA0, &v78, v41, v40);
  if (v46)
  {
    goto LABEL_21;
  }

LABEL_19:
  result = swift_weakLoadStrong();
  if (result)
  {
    v49 = result;
    v50 = v59;
    v51 = v62;
    (*(*(v59 - 8) + 16))(v62, v47, v59);
    v52 = swift_getAssociatedTypeWitness();
    v53 = swift_getAssociatedConformanceWitness();
    v78 = v50;
    v79 = v52;
    v80 = AssociatedConformanceWitness;
    v81 = v53;
    type metadata accessor for ReconciliationID();
    swift_storeEnumTagMultiPayload();
    v54 = v64;
    swift_storeEnumTagMultiPayload();
    (*(*v49 + 312))(v51);

    (*(v63 + 8))(v51, v54);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF49F5C8(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (*a2 != 1 || (result = sub_1CF49DF64(result, a4, a6, a7), !v7))
  {
    if (__OFADD__(*a5, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a5;
    }
  }

  return result;
}

uint64_t sub_1CF49F620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v90 = a4;
  v91 = a3;
  v95 = a2;
  v112 = a1;
  v5 = *(*v4 + 760);
  v93 = *(*v4 + 776);
  v94 = v5;
  v96 = v5;
  v97 = v93;
  v6 = type metadata accessor for PersistenceTrigger();
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v79 - v8;
  v9 = type metadata accessor for SnapshotItem();
  v10 = sub_1CF9E75D8();
  v83 = *(v10 - 8);
  v84 = v10;
  v11 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v79 - v12;
  v13 = sub_1CF9E6068();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v79 - v22;
  v24 = type metadata accessor for Signpost(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  *&v94 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v27 = qword_1EDEBBE40;
  (*(v14 + 56))(v23, 1, 1, v13);
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20747265736E69, 0xE700000000000000);
  swift_getWitnessTable();
  *&v93 = v9;
  sub_1CF9E7FE8();
  v85 = *(&v96 + 1);
  v86 = v96;
  v88 = v23;
  sub_1CEFE74D8(v23, v20);
  v28 = *(v14 + 48);
  if (v28(v20, 1, v13) == 1)
  {
    v29 = v27;
    v30 = v87;
    sub_1CF9E6048();
    v31 = v30;
    if (v28(v20, 1, v13) != 1)
    {
      sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v31 = v87;
    (*(v14 + 32))(v87, v20, v13);
  }

  v32 = v94;
  (*(v14 + 16))(v94, v31, v13);
  *(v32 + *(v24 + 20)) = v27;
  v33 = v32 + *(v24 + 24);
  *v33 = "SQLDB: Snapshot insert";
  *(v33 + 8) = 22;
  *(v33 + 16) = 2;
  v34 = v32;
  v35 = v27;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1CF9FA450;
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = sub_1CEFD51C4();
  v37 = v85;
  *(v36 + 32) = v86;
  *(v36 + 40) = v37;
  v87 = v35;
  v38 = v34;
  sub_1CF9E6028();

  (*(v14 + 8))(v31, v13);
  sub_1CEFCCC44(v88, &unk_1EC4BED20, &unk_1CFA00700);
  v40 = v90;
  v39 = v91;
  v41 = *(v90 + 8);
  enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = (*(v41 + 88))(v91, v41);
  v43 = v112;
  if ((*(v92 + 32) & 1) == 0)
  {
    goto LABEL_9;
  }

  v44 = v112 + *(v93 + 52);
  v45 = *(v44 + 208);
  v108 = *(v44 + 192);
  v109 = v45;
  v110 = *(v44 + 224);
  v111 = *(v44 + 240);
  v46 = *(v44 + 144);
  v104 = *(v44 + 128);
  v105 = v46;
  v47 = *(v44 + 176);
  v106 = *(v44 + 160);
  v107 = v47;
  v48 = *(v44 + 80);
  v100 = *(v44 + 64);
  v101 = v48;
  v49 = *(v44 + 112);
  v102 = *(v44 + 96);
  v103 = v49;
  v50 = *(v44 + 16);
  v96 = *v44;
  v97 = v50;
  v51 = *(v44 + 48);
  v98 = *(v44 + 32);
  v99 = v51;
  enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v96);
  if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 != 1)
  {
    v52 = MEMORY[0x1EEE9AC00](enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0);
    v53 = *(v40 + 32);
    v54 = sub_1CF4C0708;
  }

  else
  {
LABEL_9:
    v52 = MEMORY[0x1EEE9AC00](enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0);
    v53 = *(v40 + 32);
    v54 = sub_1CF4C06FC;
  }

  v55 = v89;
  v53(v54, v52);
  if (v55)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CF4C0A48(v38, type metadata accessor for Signpost);
  }

  else
  {
    v90 = 0;
    v57 = v93;
    v58 = *(v93 - 8);
    v59 = *(v58 + 16);
    v60 = v82;
    v88 = (v58 + 16);
    v89 = v59;
    v59(v82, v43, v93);
    v86 = *(v58 + 56);
    v86(v60, 0, 1, v57);
    sub_1CF488190(v43, v60, v95, v39, v41);
    (*(v83 + 8))(v60, v84);
    v61 = v43 + *(v57 + 52);
    v62 = *(v61 + 208);
    v108 = *(v61 + 192);
    v109 = v62;
    v110 = *(v61 + 224);
    v111 = *(v61 + 240);
    v63 = *(v61 + 144);
    v104 = *(v61 + 128);
    v105 = v63;
    v64 = *(v61 + 176);
    v106 = *(v61 + 160);
    v107 = v64;
    v65 = *(v61 + 80);
    v100 = *(v61 + 64);
    v101 = v65;
    v66 = *(v61 + 112);
    v102 = *(v61 + 96);
    v103 = v66;
    v67 = *(v61 + 16);
    v96 = *v61;
    v97 = v67;
    v68 = *(v61 + 48);
    v98 = *(v61 + 32);
    v99 = v68;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v96) == 1)
    {
      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      v69 = qword_1EDEABDE8;
    }

    else
    {
      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      if ((~qword_1EDEABDE8 & 0x1600021AF7C0000) != 0)
      {
        v69 = qword_1EDEABDE8 | 0x1600021AF7C0000;
      }

      else
      {
        v69 = qword_1EDEABDE8;
      }
    }

    result = swift_weakLoadStrong();
    if (result)
    {
      v70 = result;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v72 = *(TupleTypeMetadata3 + 48);
      v73 = *(TupleTypeMetadata3 + 64);
      v74 = v79;
      v75 = v93;
      v76 = v86;
      v86(v79, 1, 1, v93);
      v89(&v74[v72], v112, v75);
      v76(&v74[v72], 0, 1, v75);
      *&v74[v73] = v69;
      v77 = v81;
      swift_storeEnumTagMultiPayload();
      (*(*v70 + 312))(v74);

      (*(v80 + 8))(v74, v77);
      sub_1CF9E7458();
      v78 = v94;
      sub_1CF9E6038();
      return sub_1CF4C0A48(v78, type metadata accessor for Signpost);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1CF4A0048(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(*a2 + 760);
  v7 = *(v5 + 776);
  v8 = type metadata accessor for SnapshotItem();
  v9 = sub_1CF9E75D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - v12;
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1CF9E7948();

  strcpy(v20, "INSERT INTO ");
  BYTE5(v20[1]) = 0;
  HIWORD(v20[1]) = -5120;
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](10272, 0xE200000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](0x5620202020200A29, 0xEF28205345554C41);
  v14 = *(v8 - 8);
  (*(v14 + 16))(v13, a3, v8);
  (*(v14 + 56))(v13, 0, 1, v8);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1CF073320(v13, v8, WitnessTable);
  v18 = v17;
  (*(v10 + 8))(v13, v9);
  MEMORY[0x1D3868CC0](v16, v18);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v20[0];
}

uint64_t sub_1CF4A02B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(*a2 + 760);
  v7 = *(v5 + 776);
  v8 = type metadata accessor for SnapshotItem();
  v9 = sub_1CF9E75D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v35 - v12;
  *&v37[0] = 0;
  *(&v37[0] + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  v36 = v37[0];
  MEMORY[0x1D3868CC0](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](10272, 0xE200000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD88), *(a2 + qword_1EDEBBD88 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000034, 0x80000001CFA4C2C0);
  v14 = *(v8 - 8);
  (*(v14 + 16))(v13, a3, v8);
  (*(v14 + 56))(v13, 0, 1, v8);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1CF073320(v13, v8, WitnessTable);
  v18 = v17;
  (*(v10 + 8))(v13, v9);
  MEMORY[0x1D3868CC0](v16, v18);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v19 = sub_1CEFF12E8();
  v20 = a3 + *(v8 + 52);
  v21 = *(v20 + 192);
  v22 = *(v20 + 224);
  v37[13] = *(v20 + 208);
  v37[14] = v22;
  v23 = *(v20 + 128);
  v24 = *(v20 + 160);
  v25 = *(v20 + 176);
  v37[9] = *(v20 + 144);
  v37[10] = v24;
  v37[11] = v25;
  v37[12] = v21;
  v26 = *(v20 + 80);
  v37[4] = *(v20 + 64);
  v37[5] = v26;
  v27 = *(v20 + 112);
  v37[6] = *(v20 + 96);
  v38 = *(v20 + 240);
  v37[7] = v27;
  v37[8] = v23;
  v28 = *(v20 + 16);
  v37[0] = *v20;
  v37[1] = v28;
  v29 = *(v20 + 48);
  v37[2] = *(v20 + 32);
  v37[3] = v29;
  v30 = sub_1CF07501C(v19, v37);
  v32 = v31;

  MEMORY[0x1D3868CC0](v30, v32);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v35[1] = 0;
  v33 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v33);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v36;
}

uint64_t sub_1CF4A0654(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v6[2] = a3;
  v6[3] = a1;
  v6[6] = sub_1CF487650(MEMORY[0x1E69E7CC0], sub_1CF4C0B34, v6, v3 | 0x10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v4 = sub_1CF9E67D8();

  return v4;
}

void sub_1CF4A0738(char **a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v453 = a4;
  v455 = a1;
  v456 = a3;
  v7 = *a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v450 = &v448 - v10;
  v11 = *(v7 + 776);
  v12 = *(v7 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  v448 = *(v14 - 8);
  v449 = v14;
  v15 = *(v448 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v448 - v16;
  v451 = v12;
  v452 = v11;
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1CF9E75D8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v448 - v21;
  v23 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v448 - v27;
  v29 = *a2;
  if (v29 > 0x7FFFFFF)
  {
    if (v29 > 0xFFFFFFFFFFLL)
    {
      if (v29 <= 0xFFFFFFFFFFFFLL)
      {
        if (v29 <= 0xFFFFFFFFFFFLL)
        {
          switch(v29)
          {
            case 0x10000000000:
              *&v466 = 0;
              *(&v466 + 1) = 0xE000000000000000;
              sub_1CF9E7948();

              v461 = 0xD000000000000010;
              v462 = 0x80000001CFA483A0;
              v212 = type metadata accessor for SnapshotItem();
              WitnessTable = swift_getWitnessTable();
              sub_1CF06D940(v212, WitnessTable, &v464);
              v214 = qword_1CFA062F0[v464];
              *(&v467 + 1) = MEMORY[0x1E69E6530];
              *&v466 = v214;
              v215 = sub_1CEFF8EA0(&v466);
              v217 = v216;
              sub_1CEFCCC44(&v466, &unk_1EC4BEC50, &qword_1CF9FB4B0);
              if (!v217)
              {
                goto LABEL_240;
              }

              v171 = v215;
              v172 = v217;
              goto LABEL_148;
            case 0x20000000000:
              swift_getAssociatedTypeWitness();
              swift_getAssociatedConformanceWitness();
              type metadata accessor for ItemStateVersion();
              if (swift_dynamicCastMetatype())
              {
                return;
              }

              *&v466 = 0;
              *(&v466 + 1) = 0xE000000000000000;
              sub_1CF9E7948();

              v461 = 0xD000000000000015;
              v462 = 0x80000001CFA4E290;
              v96 = *(type metadata accessor for SnapshotItem() + 40);
              AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
              v98 = swift_getAssociatedConformanceWitness();
              *&v466 = v18;
              *(&v466 + 1) = AssociatedTypeWitness;
              *&v467 = AssociatedConformanceWitness;
              *(&v467 + 1) = v98;
              v99 = v453 + *(type metadata accessor for FileItemVersion() + 56);
              v100 = *(AssociatedTypeWitness - 8);
              (*(v100 + 16))(v17, v99 + v96, AssociatedTypeWitness);
              (*(v100 + 56))(v17, 0, 1, AssociatedTypeWitness);
              v101 = sub_1CF4C0DE0(v17, AssociatedTypeWitness, *(v98 + 24));
              v103 = v102;
              (*(v448 + 8))(v17, v449);
              MEMORY[0x1D3868CC0](v101, v103);
              goto LABEL_166;
            case 0x80000000000:
              return;
          }

          goto LABEL_239;
        }

        if (v29 <= 0x3FFFFFFFFFFFLL)
        {
          if (v29 != 0x100000000000)
          {
            if (v29 == 0x200000000000)
            {
              *&v466 = 0;
              *(&v466 + 1) = 0xE000000000000000;
              sub_1CF9E7948();

              *&v466 = 0xD000000000000016;
              *(&v466 + 1) = 0x80000001CFA4E2B0;
              v263 = v453 + *(type metadata accessor for SnapshotItem() + 48);
              v51 = [v456 bindBooleanParameter_];
              goto LABEL_200;
            }

            goto LABEL_239;
          }

          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          *&v466 = 0xD000000000000017;
          *(&v466 + 1) = 0x80000001CFA4E040;
          v50 = v453 + *(type metadata accessor for SnapshotItem() + 48);
          v51 = [v456 bindBooleanParameter_];
          goto LABEL_200;
        }

        if (v29 == 0x400000000000)
        {
          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          *&v466 = 0xD000000000000013;
          *(&v466 + 1) = 0x80000001CFA4DC60;
          v173 = *(type metadata accessor for SnapshotItem() + 48);
          v174 = v453 + *(type metadata accessor for ItemMetadata() + 140) + v173;
          v175 = sub_1CF074EDC(*v174, *(v174 + 8));
        }

        else
        {
          if (v29 != 0x800000000000)
          {
            goto LABEL_239;
          }

          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          *&v466 = 0xD000000000000016;
          *(&v466 + 1) = 0x80000001CFA4DC40;
          v285 = *(type metadata accessor for SnapshotItem() + 48);
          v286 = (v453 + *(type metadata accessor for ItemMetadata() + 148) + v285);
          v287 = *v286;
          LOBYTE(v461) = *(v286 + 4);
          v175 = sub_1CF074C58(v287 | (v461 << 32));
        }

        goto LABEL_140;
      }

      if (v29 <= 0x7FFFFFFFFFFFFLL)
      {
        if (v29 == 0x1000000000000)
        {
          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          *&v466 = 0xD000000000000025;
          *(&v466 + 1) = 0x80000001CFA4DE20;
          v226 = *(type metadata accessor for SnapshotItem() + 48);
          v227 = (v453 + *(type metadata accessor for ItemMetadata() + 152) + v226);
          v175 = sub_1CF0757A0(*v227, v227[1]);
LABEL_140:
          MEMORY[0x1D3868CC0](v175);
LABEL_141:

          v289 = *(&v466 + 1);
          v288 = v466;
LABEL_222:
          v420 = v455;
          sub_1CF680848();
          v421 = *(*v420 + 2);
          sub_1CF680894(v421);
          v422 = *v420;
          *(v422 + 2) = v421 + 1;
          v423 = &v422[16 * v421];
          *(v423 + 4) = v288;
          *(v423 + 5) = v289;
          *v420 = v422;
          return;
        }

        if (v29 != 0x2000000000000)
        {
          if (v29 != 0x4000000000000)
          {
            goto LABEL_239;
          }

          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          v461 = 0xD000000000000022;
          v462 = 0x80000001CFA4DC80;
          v253 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
          v254 = v253[13];
          v478 = v253[12];
          v479 = v254;
          v480 = v253[14];
          v481 = *(v253 + 30);
          v255 = v253[9];
          v474 = v253[8];
          v475 = v255;
          v256 = v253[11];
          v476 = v253[10];
          v477 = v256;
          v257 = v253[5];
          v470 = v253[4];
          v471 = v257;
          v258 = v253[7];
          v472 = v253[6];
          v473 = v258;
          v259 = v253[1];
          v466 = *v253;
          v467 = v259;
          v260 = v253[3];
          v468 = v253[2];
          v469 = v260;
          v261 = 0;
          if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466) != 1)
          {
            v261 = v480;
          }

          v63 = sub_1CF075F44(v261);
          goto LABEL_186;
        }

        *&v466 = 0;
        *(&v466 + 1) = 0xE000000000000000;
        sub_1CF9E7948();

        v461 = 0xD00000000000001CLL;
        v462 = 0x80000001CFA4DC20;
        v116 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
        v117 = v116[13];
        v478 = v116[12];
        v479 = v117;
        v480 = v116[14];
        v481 = *(v116 + 30);
        v118 = v116[9];
        v474 = v116[8];
        v475 = v118;
        v119 = v116[11];
        v476 = v116[10];
        v477 = v119;
        v120 = v116[5];
        v470 = v116[4];
        v471 = v120;
        v121 = v116[7];
        v472 = v116[6];
        v473 = v121;
        v122 = v116[1];
        v466 = *v116;
        v467 = v122;
        v123 = v116[3];
        v468 = v116[2];
        v469 = v123;
        enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466);
        v125 = enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1;
        if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
        {
          v126 = 0;
        }

        else
        {
          v126 = v479;
        }

        v127 = sub_1CF4BF914(v126, v125);
LABEL_220:
        MEMORY[0x1D3868CC0](v127, v128);
        goto LABEL_221;
      }

      if (v29 <= 0x3FFFFFFFFFFFFFFLL)
      {
        if (v29 != 0x8000000000000)
        {
          if (v29 != 0x10000000000000)
          {
            goto LABEL_239;
          }

          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          *&v466 = 0xD00000000000001CLL;
          *(&v466 + 1) = 0x80000001CFA4DBA0;
          v272 = v453 + *(type metadata accessor for SnapshotItem() + 48);
          v273 = [v456 bindBooleanParameter_];
          v274 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v276 = v275;

          MEMORY[0x1D3868CC0](v274, v276);
          goto LABEL_141;
        }

        *&v466 = 0;
        *(&v466 + 1) = 0xE000000000000000;
        sub_1CF9E7948();

        v461 = 0xD000000000000025;
        v462 = 0x80000001CFA4DBC0;
        v66 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
        v67 = v66[13];
        v478 = v66[12];
        v479 = v67;
        v480 = v66[14];
        v481 = *(v66 + 30);
        v68 = v66[9];
        v474 = v66[8];
        v475 = v68;
        v69 = v66[11];
        v476 = v66[10];
        v477 = v69;
        v70 = v66[5];
        v470 = v66[4];
        v471 = v70;
        v71 = v66[7];
        v472 = v66[6];
        v473 = v71;
        v72 = v66[1];
        v466 = *v66;
        v467 = v72;
        v73 = v66[3];
        v468 = v66[2];
        v469 = v73;
        v74 = 0;
        v75 = 0;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466) == 1)
        {
          goto LABEL_185;
        }

        v74 = *(&v480 + 1);
        v75 = v481;
        goto LABEL_184;
      }

      if (v29 != 0x400000000000000)
      {
        if (v29 == 0x800000000000000)
        {
          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          *&v466 = 0xD00000000000001FLL;
          *(&v466 + 1) = 0x80000001CFA4E060;
          v299 = v453 + *(type metadata accessor for SnapshotItem() + 48);
          v51 = [v456 bindBooleanParameter_];
          goto LABEL_200;
        }

        goto LABEL_239;
      }

      v464 = 0;
      v465 = 0xE000000000000000;
      v186 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
      v187 = v186[13];
      v478 = v186[12];
      v479 = v187;
      v480 = v186[14];
      v481 = *(v186 + 30);
      v188 = v186[9];
      v474 = v186[8];
      v475 = v188;
      v189 = v186[11];
      v476 = v186[10];
      v477 = v189;
      v190 = v186[5];
      v470 = v186[4];
      v471 = v190;
      v191 = v186[7];
      v472 = v186[6];
      v473 = v191;
      v192 = v186[1];
      v466 = *v186;
      v467 = v192;
      v193 = v186[3];
      v468 = v186[2];
      v469 = v193;
      v194 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466);
      v195 = *(&v479 + 1);
      if (v194 == 1)
      {
        v195 = 0;
      }

      v463 = MEMORY[0x1E69E6530];
      v461 = v195;
      v196 = sub_1CEFF8EA0(&v461);
      v198 = v197;
      sub_1CEFCCC44(&v461, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      if (!v198)
      {
        while (1)
        {
LABEL_240:
          sub_1CF9E7B68();
          __break(1u);
        }
      }

      MEMORY[0x1D3868CC0](v196, v198);

      v127 = v464;
      v199 = v465;
      v461 = 0xD000000000000026;
      v462 = 0x80000001CFA4DBF0;
LABEL_116:
      v128 = v199;
      goto LABEL_220;
    }

    if (v29 > 0x1FFFFFFFFLL)
    {
      if (v29 > 0xFFFFFFFFFLL)
      {
        if (v29 > 0x3FFFFFFFFFLL)
        {
          if (v29 != 0x4000000000)
          {
            if (v29 != 0x8000000000)
            {
              goto LABEL_239;
            }

            *&v466 = 0;
            *(&v466 + 1) = 0xE000000000000000;
            sub_1CF9E7948();

            v461 = 0xD000000000000017;
            v462 = 0x80000001CFA4DCB0;
            v382 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
            v383 = v382[13];
            v478 = v382[12];
            v479 = v383;
            v480 = v382[14];
            v481 = *(v382 + 30);
            v384 = v382[9];
            v474 = v382[8];
            v475 = v384;
            v385 = v382[11];
            v476 = v382[10];
            v477 = v385;
            v386 = v382[5];
            v470 = v382[4];
            v471 = v386;
            v387 = v382[7];
            v472 = v382[6];
            v473 = v387;
            v388 = v382[1];
            v466 = *v382;
            v467 = v388;
            v389 = v382[3];
            v468 = v382[2];
            v469 = v389;
            v390 = 0;
            v391 = 0;
            if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466) != 1)
            {
              v391 = *(&v478 + 1);
              v390 = v478;
              sub_1CF075D00(v478);
            }

            v392 = sub_1CF075B2C(v390, v391);
            v394 = v393;
            sub_1CF24CCFC(v390);
            MEMORY[0x1D3868CC0](v392, v394);
            goto LABEL_221;
          }

          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          v461 = 0xD00000000000001DLL;
          v462 = 0x80000001CFA4DCD0;
          v202 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
          v203 = v202[13];
          v478 = v202[12];
          v479 = v203;
          v480 = v202[14];
          v481 = *(v202 + 30);
          v204 = v202[9];
          v474 = v202[8];
          v475 = v204;
          v205 = v202[11];
          v476 = v202[10];
          v477 = v205;
          v206 = v202[5];
          v470 = v202[4];
          v471 = v206;
          v207 = v202[7];
          v472 = v202[6];
          v473 = v207;
          v208 = v202[1];
          v466 = *v202;
          v467 = v208;
          v209 = v202[3];
          v468 = v202[2];
          v469 = v209;
          v210 = 0;
          if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466) != 1)
          {
            v210 = *(&v477 + 1);
          }

          v63 = sub_1CF075944(v210);
          goto LABEL_186;
        }

        if (v29 == 0x1000000000)
        {
          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          v461 = 0xD00000000000001ALL;
          v462 = 0x80000001CFA4DD20;
          v53 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
          v54 = v53[13];
          v478 = v53[12];
          v479 = v54;
          v480 = v53[14];
          v481 = *(v53 + 30);
          v55 = v53[9];
          v474 = v53[8];
          v475 = v55;
          v56 = v53[11];
          v476 = v53[10];
          v477 = v56;
          v57 = v53[5];
          v470 = v53[4];
          v471 = v57;
          v58 = v53[7];
          v472 = v53[6];
          v473 = v58;
          v59 = v53[1];
          v466 = *v53;
          v467 = v59;
          v60 = v53[3];
          v468 = v53[2];
          v469 = v60;
          v61 = 0;
          v62 = 0;
          if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466) != 1)
          {
            v62 = *(&v476 + 1);
            v61 = v476;
          }

          v63 = sub_1CF074DF4(v61, v62);
          goto LABEL_186;
        }

        if (v29 != 0x2000000000)
        {
          goto LABEL_239;
        }

        *&v466 = 0;
        *(&v466 + 1) = 0xE000000000000000;
        sub_1CF9E7948();

        v461 = 0xD000000000000026;
        v462 = 0x80000001CFA4DCF0;
        v373 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
        v374 = v373[13];
        v478 = v373[12];
        v479 = v374;
        v480 = v373[14];
        v481 = *(v373 + 30);
        v375 = v373[9];
        v474 = v373[8];
        v475 = v375;
        v376 = v373[11];
        v476 = v373[10];
        v477 = v376;
        v377 = v373[5];
        v470 = v373[4];
        v471 = v377;
        v378 = v373[7];
        v472 = v373[6];
        v473 = v378;
        v379 = v373[1];
        v466 = *v373;
        v467 = v379;
        v380 = v373[3];
        v468 = v373[2];
        v469 = v380;
        v158 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466);
        v159 = v477;
        goto LABEL_216;
      }

      if (v29 == 0x200000000)
      {
        v461 = 0;
        v462 = 0xE000000000000000;
        v230 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
        v231 = v230[13];
        v478 = v230[12];
        v479 = v231;
        v480 = v230[14];
        v481 = *(v230 + 30);
        v232 = v230[9];
        v474 = v230[8];
        v475 = v232;
        v233 = v230[11];
        v476 = v230[10];
        v477 = v233;
        v234 = v230[5];
        v470 = v230[4];
        v471 = v234;
        v235 = v230[7];
        v472 = v230[6];
        v473 = v235;
        v236 = v230[1];
        v466 = *v230;
        v467 = v236;
        v237 = v230[3];
        v468 = v230[2];
        v469 = v237;
        v238 = 0;
        v239 = 0;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466) != 1)
        {
          v239 = *(&v473 + 1);
          v238 = v473;
        }

        v240 = sub_1CF0757A0(v238, v239);
        v242 = v241;

        MEMORY[0x1D3868CC0](v240, v242);

        v127 = v461;
        v199 = v462;
        v461 = 0xD00000000000002DLL;
        v462 = 0x80000001CFA4DDA0;
        goto LABEL_116;
      }

      if (v29 != 0x400000000)
      {
        if (v29 != 0x800000000)
        {
          goto LABEL_239;
        }

        *&v466 = 0;
        *(&v466 + 1) = 0xE000000000000000;
        sub_1CF9E7948();

        v461 = 0xD000000000000024;
        v462 = 0x80000001CFA4DD40;
        v356 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
        v357 = v356[13];
        v478 = v356[12];
        v479 = v357;
        v480 = v356[14];
        v481 = *(v356 + 30);
        v358 = v356[9];
        v474 = v356[8];
        v475 = v358;
        v359 = v356[11];
        v476 = v356[10];
        v477 = v359;
        v360 = v356[5];
        v470 = v356[4];
        v471 = v360;
        v361 = v356[7];
        v472 = v356[6];
        v473 = v361;
        v362 = v356[1];
        v466 = *v356;
        v467 = v362;
        v363 = v356[3];
        v468 = v356[2];
        v469 = v363;
        v74 = 0;
        v75 = 0;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466) == 1)
        {
          goto LABEL_185;
        }

        v75 = *(&v475 + 1);
        v74 = v475;
        goto LABEL_184;
      }

      *&v466 = 0;
      *(&v466 + 1) = 0xE000000000000000;
      sub_1CF9E7948();

      v461 = 0xD000000000000028;
      v462 = 0x80000001CFA4DD70;
      v131 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
      v132 = v131[13];
      v478 = v131[12];
      v479 = v132;
      v480 = v131[14];
      v481 = *(v131 + 30);
      v133 = v131[9];
      v474 = v131[8];
      v475 = v133;
      v134 = v131[11];
      v476 = v131[10];
      v477 = v134;
      v135 = v131[5];
      v470 = v131[4];
      v471 = v135;
      v136 = v131[7];
      v472 = v131[6];
      v473 = v136;
      v137 = v131[1];
      v466 = *v131;
      v467 = v137;
      v138 = v131[3];
      v468 = v131[2];
      v469 = v138;
      v74 = 0;
      v75 = 0;
      if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466) != 1)
      {
        v75 = *(&v474 + 1);
        v74 = v474;
LABEL_184:

        goto LABEL_185;
      }

      goto LABEL_185;
    }

    if (v29 > 0x3FFFFFFF)
    {
      switch(v29)
      {
        case 0x40000000:
          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          v461 = 0xD000000000000021;
          v462 = 0x80000001CFA4DE50;
          v346 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
          v347 = v346[13];
          v478 = v346[12];
          v479 = v347;
          v480 = v346[14];
          v481 = *(v346 + 30);
          v348 = v346[9];
          v474 = v346[8];
          v475 = v348;
          v349 = v346[11];
          v476 = v346[10];
          v477 = v349;
          v350 = v346[5];
          v470 = v346[4];
          v471 = v350;
          v351 = v346[7];
          v472 = v346[6];
          v473 = v351;
          v352 = v346[1];
          v466 = *v346;
          v467 = v352;
          v353 = v346[3];
          v468 = v346[2];
          v469 = v353;
          v74 = 0;
          v75 = 0;
          if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466) != 1)
          {
            v75 = *(&v471 + 1);
            v74 = v471;
            goto LABEL_184;
          }

LABEL_185:
          v63 = sub_1CF0757A0(v74, v75);
LABEL_186:
          v364 = v63;
          v365 = v64;

          MEMORY[0x1D3868CC0](v364, v365);
LABEL_221:

          v288 = v461;
          v289 = v462;
          goto LABEL_222;
        case 0x80000000:
          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          v461 = 0xD00000000000001ALL;
          v462 = 0x80000001CFA4DE00;
          v150 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
          v151 = v150[13];
          v478 = v150[12];
          v479 = v151;
          v480 = v150[14];
          v481 = *(v150 + 30);
          v152 = v150[9];
          v474 = v150[8];
          v475 = v152;
          v153 = v150[11];
          v476 = v150[10];
          v477 = v153;
          v154 = v150[5];
          v470 = v150[4];
          v471 = v154;
          v155 = v150[7];
          v472 = v150[6];
          v473 = v155;
          v156 = v150[1];
          v466 = *v150;
          v467 = v156;
          v157 = v150[3];
          v468 = v150[2];
          v469 = v157;
          v158 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466);
          v159 = BYTE8(v472);
          break;
        case 0x100000000:
          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          v461 = 0xD000000000000023;
          v462 = 0x80000001CFA4DDD0;
          v411 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
          v412 = v411[13];
          v478 = v411[12];
          v479 = v412;
          v480 = v411[14];
          v481 = *(v411 + 30);
          v413 = v411[9];
          v474 = v411[8];
          v475 = v413;
          v414 = v411[11];
          v476 = v411[10];
          v477 = v414;
          v415 = v411[5];
          v470 = v411[4];
          v471 = v415;
          v416 = v411[7];
          v472 = v411[6];
          v473 = v416;
          v417 = v411[1];
          v466 = *v411;
          v467 = v417;
          v418 = v411[3];
          v468 = v411[2];
          v469 = v418;
          v158 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466);
          v159 = BYTE9(v472);
          break;
        default:
          goto LABEL_239;
      }
    }

    else
    {
      if (v29 == 0x8000000)
      {
        *&v466 = 0;
        *(&v466 + 1) = 0xE000000000000000;
        sub_1CF9E7948();

        v461 = 0xD000000000000025;
        v462 = 0x80000001CFA4DEF0;
        v312 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
        v313 = v312[13];
        v478 = v312[12];
        v479 = v313;
        v480 = v312[14];
        v481 = *(v312 + 30);
        v314 = v312[9];
        v474 = v312[8];
        v475 = v314;
        v315 = v312[11];
        v476 = v312[10];
        v477 = v315;
        v316 = v312[5];
        v470 = v312[4];
        v471 = v316;
        v317 = v312[7];
        v472 = v312[6];
        v473 = v317;
        v318 = v312[1];
        v466 = *v312;
        v467 = v318;
        v319 = v312[3];
        v468 = v312[2];
        v469 = v319;
        v320 = 0;
        v321 = 0;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466) != 1)
        {
          v320 = *(&v468 + 1);
          v321 = v469;
        }

        v91 = sub_1CF0757A0(v320, v321);
        v93 = v322;

        goto LABEL_165;
      }

      if (v29 == 0x10000000)
      {
        v81 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
        v82 = v81[13];
        v478 = v81[12];
        v479 = v82;
        v480 = v81[14];
        v481 = *(v81 + 30);
        v83 = v81[9];
        v474 = v81[8];
        v475 = v83;
        v84 = v81[11];
        v476 = v81[10];
        v477 = v84;
        v85 = v81[5];
        v470 = v81[4];
        v471 = v85;
        v86 = v81[7];
        v472 = v81[6];
        v473 = v86;
        v87 = v81[1];
        v466 = *v81;
        v467 = v87;
        v88 = v81[3];
        v468 = v81[2];
        v469 = v88;
        v89 = 0;
        v90 = 0;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466) != 1)
        {
          v89 = *(&v469 + 1);
          v90 = v470;
        }

        v91 = sub_1CF0757A0(v89, v90);
        v93 = v92;

        v461 = 0xD000000000000032;
        v462 = 0x80000001CFA4DEB0;
LABEL_165:
        MEMORY[0x1D3868CC0](v91, v93);
        goto LABEL_166;
      }

      if (v29 != 0x20000000)
      {
        goto LABEL_239;
      }

      *&v466 = 0;
      *(&v466 + 1) = 0xE000000000000000;
      sub_1CF9E7948();

      v461 = 0xD000000000000029;
      v462 = 0x80000001CFA4DE80;
      v397 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
      v398 = v397[13];
      v478 = v397[12];
      v479 = v398;
      v480 = v397[14];
      v481 = *(v397 + 30);
      v399 = v397[9];
      v474 = v397[8];
      v475 = v399;
      v400 = v397[11];
      v476 = v397[10];
      v477 = v400;
      v401 = v397[5];
      v470 = v397[4];
      v471 = v401;
      v402 = v397[7];
      v472 = v397[6];
      v473 = v402;
      v403 = v397[1];
      v466 = *v397;
      v467 = v403;
      v404 = v397[3];
      v468 = v397[2];
      v469 = v404;
      v158 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466);
      v159 = BYTE8(v470);
    }

LABEL_216:
    if (v158 == 1)
    {
      v419 = 2;
    }

    else
    {
      v419 = v159;
    }

    v127 = sub_1CF1DFAEC(v419);
    goto LABEL_220;
  }

  if (v29 < 0x2000)
  {
    if (v29 > 63)
    {
      if (v29 > 511)
      {
        if (v29 > 2047)
        {
          if (v29 != 2048)
          {
            if (v29 == 4096)
            {
              *&v466 = 0;
              *(&v466 + 1) = 0xE000000000000000;
              sub_1CF9E7948();

              *&v466 = 0xD000000000000015;
              *(&v466 + 1) = 0x80000001CFA4E1A0;
              v381 = v453 + *(type metadata accessor for SnapshotItem() + 48);
              v51 = [v456 bindBooleanParameter_];
              goto LABEL_200;
            }

            goto LABEL_239;
          }

          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          *&v466 = 0xD000000000000025;
          *(&v466 + 1) = 0x80000001CFA4E1C0;
          v200 = *(type metadata accessor for SnapshotItem() + 48);
          v201 = *(type metadata accessor for ItemMetadata() + 32);
        }

        else
        {
          if (v29 == 512)
          {
            *&v466 = 0;
            *(&v466 + 1) = 0xE000000000000000;
            sub_1CF9E7948();

            *&v466 = 0xD000000000000015;
            *(&v466 + 1) = 0x80000001CFA4E230;
            v52 = v453 + *(type metadata accessor for SnapshotItem() + 48);
            v51 = [v456 bindBooleanParameter_];
            goto LABEL_200;
          }

          if (v29 != 1024)
          {
            goto LABEL_239;
          }

          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          *&v466 = 0xD000000000000019;
          *(&v466 + 1) = 0x80000001CFA4E1F0;
          v200 = *(type metadata accessor for SnapshotItem() + 48);
          v201 = *(type metadata accessor for ItemMetadata() + 28);
        }

        v366 = v453 + v201;
        v367 = sub_1CF9E5CF8();
        v368 = *(v367 - 8);
        v369 = v450;
        (*(v368 + 16))(v450, v366 + v200, v367);
        (*(v368 + 56))(v369, 0, 1, v367);
        v370 = sub_1CF074698(v369);
        v372 = v371;
        sub_1CEFCCC44(v369, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
LABEL_201:
        MEMORY[0x1D3868CC0](v370, v372);
LABEL_207:

        v324 = *(&v466 + 1);
        v323 = v466;
        goto LABEL_208;
      }

      switch(v29)
      {
        case 64:
          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          *&v466 = 0xD000000000000014;
          *(&v466 + 1) = 0x80000001CFA4E120;
          v228 = v453 + *(type metadata accessor for SnapshotItem() + 48);
          v229 = type metadata accessor for ItemMetadata();
          v80 = sub_1CF0748F0(*(v228 + *(v229 + 124)));
          break;
        case 128:
          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          *&v466 = 0xD000000000000019;
          *(&v466 + 1) = 0x80000001CFA4E100;
          v129 = *(type metadata accessor for SnapshotItem() + 48);
          v130 = v453 + *(type metadata accessor for ItemMetadata() + 128) + v129;
          v80 = sub_1CF074ABC(*v130, *(v130 + 8));
          break;
        case 256:
          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          *&v466 = 0xD00000000000001FLL;
          *(&v466 + 1) = 0x80000001CFA4E0E0;
          v354 = v453 + *(type metadata accessor for SnapshotItem() + 48);
          v355 = type metadata accessor for ItemMetadata();
          v80 = sub_1CF1DF550(*(v354 + *(v355 + 132)));
          break;
        default:
          goto LABEL_239;
      }

LABEL_206:
      MEMORY[0x1D3868CC0](v80);
      goto LABEL_207;
    }

    if (v29 <= 7)
    {
      if (v29 != 1)
      {
        if (v29 != 2)
        {
          if (v29 == 4)
          {
            *&v466 = 0;
            *(&v466 + 1) = 0xE000000000000000;
            sub_1CF9E7948();

            *&v466 = 0xD00000000000001DLL;
            *(&v466 + 1) = 0x80000001CFA4E210;
            v51 = [v456 bindUnsignedShortParameter_];
            goto LABEL_200;
          }

          goto LABEL_239;
        }

        strcpy(&v466, "parent_id = ");
        BYTE13(v466) = 0;
        HIWORD(v466) = -5120;
        v76 = *(type metadata accessor for SnapshotItem() + 36);
        swift_getAssociatedTypeWitness();
        v77 = *(swift_getAssociatedConformanceWitness() + 8);
        v78 = *(v77 + 32);
        v79 = swift_checkMetadataState();
        v80 = v78(v456, v79, v77);
        goto LABEL_206;
      }

      strcpy(&v466, "filename = ");
      HIDWORD(v466) = -352321536;
      v300 = type metadata accessor for SnapshotItem();
      v301 = sub_1CF074DF4(*(v453 + *(v300 + 44)), *(v453 + *(v300 + 44) + 8));
      MEMORY[0x1D3868CC0](v301);

      v302 = v466;
      v43 = v455;
      v303 = *v455;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v303 = sub_1CF0710C0(0, *(v303 + 2) + 1, 1, v303);
      }

      v305 = *(v303 + 2);
      v304 = *(v303 + 3);
      if (v305 >= v304 >> 1)
      {
        v303 = sub_1CF0710C0((v304 > 1), v305 + 1, 1, v303);
      }

      *(v303 + 2) = v305 + 1;
      *&v303[16 * v305 + 32] = v302;
      *v43 = v303;
      *&v466 = 0;
      *(&v466 + 1) = 0xE000000000000000;
      sub_1CF9E7948();

      *&v466 = 0xD000000000000022;
      *(&v466 + 1) = 0x80000001CFA4E330;
      v306 = *(v300 + 48);
      v307 = (v453 + *(type metadata accessor for ItemMetadata() + 56) + v306);
      v149 = sub_1CF074DF4(*v307, v307[1]);
      goto LABEL_156;
    }

    if (v29 != 8)
    {
      if (v29 != 16)
      {
        if (v29 != 32)
        {
          goto LABEL_239;
        }

        *&v466 = 0;
        *(&v466 + 1) = 0xE000000000000000;
        sub_1CF9E7948();

        *&v466 = 0xD00000000000001ALL;
        *(&v466 + 1) = 0x80000001CFA4E140;
        v405 = *(type metadata accessor for SnapshotItem() + 48);
        v406 = type metadata accessor for ItemMetadata();
        v80 = sub_1CF074698(v453 + *(v406 + 120) + v405);
        goto LABEL_206;
      }

      *&v466 = 0;
      *(&v466 + 1) = 0xE000000000000000;
      sub_1CF9E7948();

      *&v466 = 0xD000000000000017;
      *(&v466 + 1) = 0x80000001CFA4E250;
      v139 = v453 + *(type metadata accessor for SnapshotItem() + 48);
      v140 = type metadata accessor for ItemMetadata();
      v141 = [v456 bindBooleanParameter_];
      v142 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v144 = v143;

      MEMORY[0x1D3868CC0](v142, v144);

      v145 = v466;
      v146 = *v455;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v146 = sub_1CF0710C0(0, *(v146 + 2) + 1, 1, v146);
      }

      v148 = *(v146 + 2);
      v147 = *(v146 + 3);
      if (v148 >= v147 >> 1)
      {
        v146 = sub_1CF0710C0((v147 > 1), v148 + 1, 1, v146);
      }

      *(v146 + 2) = v148 + 1;
      *&v146[16 * v148 + 32] = v145;
      v43 = v455;
      *v455 = v146;
      *&v466 = 0;
      *(&v466 + 1) = 0xE000000000000000;
      sub_1CF9E7948();

      *&v466 = 0xD000000000000019;
      *(&v466 + 1) = 0x80000001CFA4E270;
      v149 = sub_1CF0744FC(*(v139 + *(v140 + 108)), 0);
LABEL_156:
      MEMORY[0x1D3868CC0](v149);
LABEL_157:

      v308 = v466;
      v309 = *v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v309 = sub_1CF0710C0(0, *(v309 + 2) + 1, 1, v309);
      }

      v311 = *(v309 + 2);
      v310 = *(v309 + 3);
      if (v311 >= v310 >> 1)
      {
        v309 = sub_1CF0710C0((v310 > 1), v311 + 1, 1, v309);
      }

      *(v309 + 2) = v311 + 1;
      *&v309[16 * v311 + 32] = v308;
      *v43 = v309;
      return;
    }

    v325 = v26;
    v326 = v25;
    if ((a5[4] & 1) != 0 || !swift_dynamicCastMetatype())
    {
      *&v466 = 0;
      *(&v466 + 1) = 0xE000000000000000;
      sub_1CF9E7948();

      *&v466 = 0xD000000000000012;
      *(&v466 + 1) = 0x80000001CFA4E2D0;
      v327 = type metadata accessor for SnapshotItem();
      (*(v325 + 16))(v22, v453 + *(v327 + 40), v18);
      (*(v325 + 56))(v22, 0, 1, v18);
      v424 = swift_getAssociatedConformanceWitness();
      v425 = sub_1CF4C0DE0(v22, v18, *(v424 + 24));
      v427 = v426;
      (*(v326 + 8))(v22, v19);
      MEMORY[0x1D3868CC0](v425, v427);

      v341 = *(&v466 + 1);
      v340 = v466;
      v342 = *v455;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v342 = sub_1CF0710C0(0, *(v342 + 2) + 1, 1, v342);
      }

      v344 = *(v342 + 2);
      v343 = *(v342 + 3);
      v345 = v344 + 1;
      if (v344 < v343 >> 1)
      {
        goto LABEL_227;
      }
    }

    else
    {
      v327 = type metadata accessor for SnapshotItem();
      (*(v325 + 16))(v28, v453 + *(v327 + 40), v18);
      swift_dynamicCast();
      v328 = v466;
      v329 = DWORD2(v466);
      strcpy(&v466, "vfs_fileid = ");
      HIWORD(v466) = -4864;
      v330 = sub_1CF074ABC(v328, 0);
      MEMORY[0x1D3868CC0](v330);

      v331 = v466;
      v332 = *v455;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v332 = sub_1CF0710C0(0, *(v332 + 2) + 1, 1, v332);
      }

      v334 = *(v332 + 2);
      v333 = *(v332 + 3);
      if (v334 >= v333 >> 1)
      {
        v332 = sub_1CF0710C0((v333 > 1), v334 + 1, 1, v332);
      }

      *(v332 + 2) = v334 + 1;
      *&v332[16 * v334 + 32] = v331;
      v335 = v455;
      *v455 = v332;
      *&v466 = 0;
      *(&v466 + 1) = 0xE000000000000000;
      sub_1CF9E7948();

      *&v466 = 0xD000000000000013;
      *(&v466 + 1) = 0x80000001CFA4E310;
      v336 = [v456 bindUnsignedIntegerParameter_];
      v337 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v339 = v338;

      MEMORY[0x1D3868CC0](v337, v339);

      v341 = *(&v466 + 1);
      v340 = v466;
      v342 = *v335;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v342 = sub_1CF0710C0(0, *(v342 + 2) + 1, 1, v342);
      }

      v344 = *(v342 + 2);
      v343 = *(v342 + 3);
      v345 = v344 + 1;
      if (v344 < v343 >> 1)
      {
        goto LABEL_227;
      }
    }

    v342 = sub_1CF0710C0((v343 > 1), v345, 1, v342);
LABEL_227:
    *(v342 + 2) = v345;
    v428 = &v342[16 * v344];
    *(v428 + 4) = v340;
    *(v428 + 5) = v341;
    v429 = v455;
    *v455 = v342;
    *&v466 = 0;
    *(&v466 + 1) = 0xE000000000000000;
    sub_1CF9E7948();

    *&v466 = 0xD000000000000010;
    *(&v466 + 1) = 0x80000001CFA4E2F0;
    type metadata accessor for SnapshotItem();
    v430 = *(v327 + 48);
    v431 = v429;
    v432 = v453 + v430;
    v433 = type metadata accessor for ItemMetadata();
    v434 = sub_1CF0744FC(*(v432 + *(v433 + 104)), 0);
    MEMORY[0x1D3868CC0](v434);

    v435 = v466;
    v436 = *v431;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v436 = sub_1CF0710C0(0, *(v436 + 2) + 1, 1, v436);
    }

    v438 = *(v436 + 2);
    v437 = *(v436 + 3);
    if (v438 >= v437 >> 1)
    {
      v436 = sub_1CF0710C0((v437 > 1), v438 + 1, 1, v436);
    }

    *(v436 + 2) = v438 + 1;
    *&v436[16 * v438 + 32] = v435;
    v113 = v455;
    *v455 = v436;
    *&v466 = 0;
    *(&v466 + 1) = 0xE000000000000000;
    sub_1CF9E7948();

    *&v466 = 0xD000000000000019;
    *(&v466 + 1) = 0x80000001CFA4E270;
    v439 = sub_1CF0744FC(*(v432 + *(v433 + 108)), 0);
    MEMORY[0x1D3868CC0](v439);

    v324 = *(&v466 + 1);
    v323 = v466;
    goto LABEL_209;
  }

  if (v29 >= 0x100000)
  {
    if (v29 >= 0x800000)
    {
      if (v29 > 0x1FFFFFF)
      {
        if (v29 != 0x2000000)
        {
          if (v29 == 0x4000000)
          {
            *&v466 = 0;
            *(&v466 + 1) = 0xE000000000000000;
            sub_1CF9E7948();

            v461 = 0xD000000000000027;
            v462 = 0x80000001CFA4DF20;
            v290 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
            v291 = v290[13];
            v478 = v290[12];
            v479 = v291;
            v480 = v290[14];
            v481 = *(v290 + 30);
            v292 = v290[9];
            v474 = v290[8];
            v475 = v292;
            v293 = v290[11];
            v476 = v290[10];
            v477 = v293;
            v294 = v290[5];
            v470 = v290[4];
            v471 = v294;
            v295 = v290[7];
            v472 = v290[6];
            v473 = v295;
            v296 = v290[1];
            v466 = *v290;
            v467 = v296;
            v297 = v290[3];
            v468 = v290[2];
            v469 = v297;
            v184 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466);
            v185 = BYTE2(v468);
            goto LABEL_144;
          }

          goto LABEL_239;
        }

        *&v466 = 0;
        *(&v466 + 1) = 0xE000000000000000;
        sub_1CF9E7948();

        v461 = 0xD000000000000026;
        v462 = 0x80000001CFA4DF50;
        v176 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
        v177 = v176[13];
        v478 = v176[12];
        v479 = v177;
        v480 = v176[14];
        v481 = *(v176 + 30);
        v178 = v176[9];
        v474 = v176[8];
        v475 = v178;
        v179 = v176[11];
        v476 = v176[10];
        v477 = v179;
        v180 = v176[5];
        v470 = v176[4];
        v471 = v180;
        v181 = v176[7];
        v472 = v176[6];
        v473 = v181;
        v182 = v176[1];
        v466 = *v176;
        v467 = v182;
        v183 = v176[3];
        v468 = v176[2];
        v469 = v183;
        v184 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466);
        v185 = BYTE1(v468);
      }

      else
      {
        if (v29 == 0x800000)
        {
          *&v466 = 0;
          *(&v466 + 1) = 0xE000000000000000;
          sub_1CF9E7948();

          *&v466 = 0xD000000000000019;
          *(&v466 + 1) = 0x80000001CFA4E020;
          v65 = v453 + *(type metadata accessor for SnapshotItem() + 48);
          v51 = [v456 bindBooleanParameter_];
          goto LABEL_200;
        }

        if (v29 != 0x1000000)
        {
          goto LABEL_239;
        }

        *&v466 = 0;
        *(&v466 + 1) = 0xE000000000000000;
        sub_1CF9E7948();

        v461 = 0xD000000000000017;
        v462 = 0x80000001CFA4DF80;
        v264 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
        v265 = v264[13];
        v478 = v264[12];
        v479 = v265;
        v480 = v264[14];
        v481 = *(v264 + 30);
        v266 = v264[9];
        v474 = v264[8];
        v475 = v266;
        v267 = v264[11];
        v476 = v264[10];
        v477 = v267;
        v268 = v264[5];
        v470 = v264[4];
        v471 = v268;
        v269 = v264[7];
        v472 = v264[6];
        v473 = v269;
        v270 = v264[1];
        v466 = *v264;
        v467 = v270;
        v271 = v264[3];
        v468 = v264[2];
        v469 = v271;
        v184 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466);
        v185 = v468;
      }

LABEL_144:
      if (v184 == 1)
      {
        v298 = 2;
      }

      else
      {
        v298 = v185;
      }

      v171 = sub_1CF1DFAEC(v298);
      goto LABEL_148;
    }

    switch(v29)
    {
      case 0x100000:
        *&v466 = 0;
        *(&v466 + 1) = 0xE000000000000000;
        sub_1CF9E7948();

        v461 = 0xD000000000000019;
        v462 = 0x80000001CFA4DFC0;
        v218 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
        v219 = v218[13];
        v478 = v218[12];
        v479 = v219;
        v480 = v218[14];
        v481 = *(v218 + 30);
        v220 = v218[9];
        v474 = v218[8];
        v475 = v220;
        v221 = v218[11];
        v476 = v218[10];
        v477 = v221;
        v222 = v218[5];
        v470 = v218[4];
        v471 = v222;
        v223 = v218[7];
        v472 = v218[6];
        v473 = v223;
        v224 = v218[1];
        v466 = *v218;
        v467 = v224;
        v225 = v218[3];
        v468 = v218[2];
        v469 = v225;
        v184 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466);
        v185 = BYTE9(v466);
        goto LABEL_144;
      case 0x200000:
        v464 = 0;
        v465 = 0xE000000000000000;
        sub_1CF9E7948();

        v461 = 0xD00000000000001DLL;
        v462 = 0x80000001CFA4DFA0;
        v104 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
        v105 = v104[13];
        v478 = v104[12];
        v479 = v105;
        v480 = v104[14];
        v481 = *(v104 + 30);
        v106 = v104[9];
        v474 = v104[8];
        v475 = v106;
        v107 = v104[11];
        v476 = v104[10];
        v477 = v107;
        v108 = v104[5];
        v470 = v104[4];
        v471 = v108;
        v109 = v104[7];
        v472 = v104[6];
        v473 = v109;
        v110 = v104[1];
        v466 = *v104;
        v467 = v110;
        v111 = v104[3];
        v468 = v104[2];
        v469 = v111;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466) != 1)
        {
          v112 = v467;
          v113 = v455;
          if (v467)
          {
            swift_getErrorValue();
            v114 = v457;
            v115 = v458;
LABEL_234:
            v440 = v112;
            v441 = v454;
            v442 = sub_1CF4C2330(v114, v115);
            if (v441)
            {

              v454 = 0;
              return;
            }

            v251 = v442;
            v252 = v443;
            v454 = 0;

            goto LABEL_238;
          }

LABEL_236:
          v251 = 0;
          v252 = 0xF000000000000000;
          goto LABEL_238;
        }

        break;
      case 0x400000:
        v464 = 0;
        v465 = 0xE000000000000000;
        sub_1CF9E7948();

        v461 = 0xD00000000000001DLL;
        v462 = 0x80000001CFA4DFA0;
        v243 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
        v244 = v243[13];
        v478 = v243[12];
        v479 = v244;
        v480 = v243[14];
        v481 = *(v243 + 30);
        v245 = v243[9];
        v474 = v243[8];
        v475 = v245;
        v246 = v243[11];
        v476 = v243[10];
        v477 = v246;
        v247 = v243[5];
        v470 = v243[4];
        v471 = v247;
        v248 = v243[7];
        v472 = v243[6];
        v473 = v248;
        v249 = v243[1];
        v466 = *v243;
        v467 = v249;
        v250 = v243[3];
        v468 = v243[2];
        v469 = v250;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466) != 1)
        {
          v112 = *(&v467 + 1);
          v113 = v455;
          if (*(&v467 + 1))
          {
            swift_getErrorValue();
            v114 = v459;
            v115 = v460;
            goto LABEL_234;
          }

          goto LABEL_236;
        }

        break;
      default:
        goto LABEL_239;
    }

    v251 = 0;
    v252 = 0xF000000000000000;
    v113 = v455;
LABEL_238:
    v444 = sub_1CF04E5D8(v251, v252);
    v446 = v445;
    sub_1CEFE48D8(v251, v252);
    MEMORY[0x1D3868CC0](v444, v446);

    v323 = v461;
    v324 = v462;
    goto LABEL_209;
  }

  if (v29 < 0x10000)
  {
    if (v29 != 0x2000)
    {
      if (v29 != 0x4000)
      {
        if (v29 == 0x8000)
        {
          return;
        }

        goto LABEL_239;
      }

      *&v466 = 0;
      *(&v466 + 1) = 0xE000000000000000;
      sub_1CF9E7948();

      *&v466 = 0xD00000000000001CLL;
      *(&v466 + 1) = 0x80000001CFA4E160;
      v94 = v453 + *(type metadata accessor for SnapshotItem() + 48);
      v95 = *(v94 + 4);
      LOBYTE(v461) = *(v94 + 8);
      v80 = sub_1CF074C58(v95 | (v461 << 32));
      goto LABEL_206;
    }

    *&v466 = 0;
    *(&v466 + 1) = 0xE000000000000000;
    sub_1CF9E7948();

    *&v466 = 0xD00000000000001CLL;
    *(&v466 + 1) = 0x80000001CFA4E180;
    v211 = v453 + *(type metadata accessor for SnapshotItem() + 48);
    v51 = [v456 bindBooleanParameter_];
LABEL_200:
    v395 = v51;
    v370 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v372 = v396;

    goto LABEL_201;
  }

  if (v29 < 0x40000)
  {
    if (v29 == 0x10000)
    {
      v30 = v453 + *(type metadata accessor for SnapshotItem() + 48);
      v31 = type metadata accessor for ItemMetadata();
      v32 = *(v30 + v31[23]);
      v33 = *(v30 + v31[21]);
      if (v32 == 6)
      {
        v34 = 0;
      }

      else
      {
        v34 = (v32 + 1) << 16;
      }

      *&v466 = 0;
      *(&v466 + 1) = 0xE000000000000000;
      sub_1CF9E7948();

      *&v466 = 0xD000000000000018;
      *(&v466 + 1) = 0x80000001CFA4E0A0;
      v35 = [v456 bindUnsignedIntegerParameter_];
      v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v38 = v37;

      MEMORY[0x1D3868CC0](v36, v38);

      v39 = v466;
      v40 = *v455;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1CF0710C0(0, *(v40 + 2) + 1, 1, v40);
      }

      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1CF0710C0((v41 > 1), v42 + 1, 1, v40);
      }

      *(v40 + 2) = v42 + 1;
      *&v40[16 * v42 + 32] = v39;
      v43 = v455;
      *v455 = v40;
      *&v466 = 0;
      *(&v466 + 1) = 0xE000000000000000;
      sub_1CF9E7948();

      *&v466 = 0xD00000000000001CLL;
      *(&v466 + 1) = 0x80000001CFA4E0C0;
      v44 = *(v30 + v31[19]);
      v45 = sub_1CF9E8268();
      v46 = [v456 bindObjectParameter_];

      v47 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v49 = v48;

      MEMORY[0x1D3868CC0](v47, v49);
      goto LABEL_157;
    }

    if (v29 == 0x20000)
    {
      *&v466 = 0;
      *(&v466 + 1) = 0xE000000000000000;
      sub_1CF9E7948();

      *&v466 = 0xD000000000000015;
      *(&v466 + 1) = 0x80000001CFA4E080;
      v262 = v453 + *(type metadata accessor for SnapshotItem() + 48);
      v51 = [v456 bindBooleanParameter_];
      goto LABEL_200;
    }

    goto LABEL_239;
  }

  if (v29 != 0x40000)
  {
    if (v29 == 0x80000)
    {
      *&v466 = 0;
      *(&v466 + 1) = 0xE000000000000000;
      sub_1CF9E7948();

      v461 = 0xD00000000000001ALL;
      v462 = 0x80000001CFA4DFE0;
      v277 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
      v278 = v277[13];
      v478 = v277[12];
      v479 = v278;
      v480 = v277[14];
      v481 = *(v277 + 30);
      v279 = v277[9];
      v474 = v277[8];
      v475 = v279;
      v280 = v277[11];
      v476 = v277[10];
      v477 = v280;
      v281 = v277[5];
      v470 = v277[4];
      v471 = v281;
      v282 = v277[7];
      v472 = v277[6];
      v473 = v282;
      v283 = v277[1];
      v466 = *v277;
      v467 = v283;
      v284 = v277[3];
      v468 = v277[2];
      v469 = v284;
      v184 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466);
      v185 = BYTE8(v466);
      goto LABEL_144;
    }

LABEL_239:
    *&v466 = 0;
    *(&v466 + 1) = 0xE000000000000000;
    sub_1CF9E7948();

    *&v466 = 0xD000000000000017;
    *(&v466 + 1) = 0x80000001CFA4DB80;
    v447 = sub_1CF071470(v29);
    MEMORY[0x1D3868CC0](v447);

    goto LABEL_240;
  }

  *&v466 = 0;
  *(&v466 + 1) = 0xE000000000000000;
  sub_1CF9E7948();

  v461 = 0xD00000000000001ALL;
  v462 = 0x80000001CFA4E000;
  v160 = (v453 + *(type metadata accessor for SnapshotItem() + 52));
  v161 = v160[13];
  v478 = v160[12];
  v479 = v161;
  v480 = v160[14];
  v481 = *(v160 + 30);
  v162 = v160[9];
  v474 = v160[8];
  v475 = v162;
  v163 = v160[11];
  v476 = v160[10];
  v477 = v163;
  v164 = v160[5];
  v470 = v160[4];
  v471 = v164;
  v165 = v160[7];
  v472 = v160[6];
  v473 = v165;
  v166 = v160[1];
  v466 = *v160;
  v467 = v166;
  v167 = v160[3];
  v468 = v160[2];
  v469 = v167;
  v168 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v466);
  v169 = v168 == 1;
  if (v168 == 1)
  {
    v170 = 0;
  }

  else
  {
    v170 = v466;
  }

  v171 = sub_1CF1CCF08(v170, v169);
LABEL_148:
  MEMORY[0x1D3868CC0](v171, v172);
LABEL_166:

  v323 = v461;
  v324 = v462;
LABEL_208:
  v113 = v455;
LABEL_209:
  v407 = *v113;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v407 = sub_1CF0710C0(0, *(v407 + 2) + 1, 1, v407);
  }

  v409 = *(v407 + 2);
  v408 = *(v407 + 3);
  if (v409 >= v408 >> 1)
  {
    v407 = sub_1CF0710C0((v408 > 1), v409 + 1, 1, v407);
  }

  *(v407 + 2) = v409 + 1;
  v410 = &v407[16 * v409];
  *(v410 + 4) = v323;
  *(v410 + 5) = v324;
  *v113 = v407;
}

uint64_t sub_1CF4A3A80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v188 = a4;
  v186 = a1;
  v187 = a5;
  v190 = a3;
  v7 = *v5;
  v8 = *(*v5 + 776);
  v9 = *(*v5 + 760);
  *&v191 = swift_getAssociatedTypeWitness();
  *(&v191 + 1) = swift_getAssociatedTypeWitness();
  *&v192 = swift_getAssociatedConformanceWitness();
  *(&v192 + 1) = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for FileItemVersion();
  v171 = sub_1CF9E75D8();
  v169 = *(v171 - 8);
  v11 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v13 = &v154[-v12];
  *&v14 = v9;
  v163 = *(v7 + 768);
  *(&v14 + 1) = v163;
  *&v15 = v8;
  v162 = *(v7 + 784);
  *(&v15 + 1) = v162;
  v160 = v15;
  v192 = v15;
  v161 = v14;
  v191 = v14;
  v16 = type metadata accessor for PersistenceTrigger();
  v166 = *(v16 - 8);
  v17 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v165 = &v154[-v18];
  v19 = sub_1CF9E6068();
  v174 = *(v19 - 8);
  v175 = v19;
  v20 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v173 = &v154[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v170 = &v154[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v180 = &v154[-v26];
  v172 = type metadata accessor for Signpost(0);
  v27 = *(*(v172 - 8) + 64);
  MEMORY[0x1EEE9AC00](v172);
  v29 = &v154[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v176 = v9;
  v177 = v8;
  v30 = type metadata accessor for SnapshotItem();
  v31 = sub_1CF9E75D8();
  v32 = *(v31 - 8);
  v178 = v31;
  v179 = v32;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v158 = &v154[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v164 = &v154[-v36];
  MEMORY[0x1EEE9AC00](v37);
  v159 = &v154[-v38];
  MEMORY[0x1EEE9AC00](v39);
  v168 = &v154[-v40];
  MEMORY[0x1EEE9AC00](v41);
  v167 = &v154[-v42];
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v154[-v44];
  v183 = v30;
  v182 = *(v30 - 8);
  v46 = *(v182 + 64);
  v48 = MEMORY[0x1EEE9AC00](v47);
  v181 = &v154[-v49];
  v50 = *a2;
  v51 = v188;
  v52 = *(v187[1] + 88);
  v184 = v187[1];
  result = v52(v188, v48);
  v193 = v50;
  v185 = v5;
  v54 = v5[32];
  if ((v54 & 1) == 0)
  {
    v50 &= 0xFE9FFFDE5083FFFFLL;
    v193 = v50;
  }

  if (qword_1EDEABDE0 == -1)
  {
    if (!v50)
    {
      return result;
    }

LABEL_5:
    v157 = v29;
    v55 = qword_1EDEABDE8;
    v56 = v189;
    result = sub_1CF48C08C(v186, v190, v51, v184, v45);
    if (v56)
    {
      return result;
    }

    v156 = v16;
    v58 = v182;
    v57 = v183;
    if ((*(v182 + 48))(v45, 1, v183) == 1)
    {
      (*(v179 + 8))(v45, v178);
      (*(*(v10 - 8) + 56))(v13, 1, 1, v10);
      type metadata accessor for FileTreeError();
      swift_getWitnessTable();
      swift_allocError();
      sub_1CF72C4D8(v186, v13, 0, v59);
      (*(v169 + 8))(v13, v171);
      return swift_willThrow();
    }

    v155 = v54;
    v189 = 0;
    (*(v58 + 32))(v181, v45, v57);
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v60 = v50 & 0xFFFFFFFFFF7FFFEFLL & (v55 | 0x409000000C000);
    v61 = qword_1EDEBBE40;
    v62 = v174;
    v63 = v175;
    v64 = v180;
    (*(v174 + 56))(v180, 1, 1, v175);
    *&v191 = 0;
    *(&v191 + 1) = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x20657461647075, 0xE700000000000000);
    v65 = sub_1CF071470(v193);
    MEMORY[0x1D3868CC0](v65);

    MEMORY[0x1D3868CC0](543584032, 0xE400000000000000);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    v169 = *(&v191 + 1);
    v171 = v191;
    v66 = v170;
    sub_1CEFE74D8(v64, v170);
    v67 = *(v62 + 48);
    if (v67(v66, 1, v63) == 1)
    {
      v68 = v61;
      v69 = v173;
      sub_1CF9E6048();
      if (v67(v66, 1, v63) != 1)
      {
        sub_1CEFCCC44(v66, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v69 = v173;
      (*(v62 + 32))(v173, v66, v63);
    }

    LODWORD(v173) = v60 != 0;
    v70 = v157;
    (*(v62 + 16))(v157, v69, v63);
    v71 = v172;
    *(v70 + *(v172 + 20)) = v61;
    v72 = v70 + *(v71 + 24);
    *v72 = "SQLDB: Snapshot update";
    *(v72 + 8) = 22;
    *(v72 + 16) = 2;
    v73 = v61;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1CF9FA450;
    *(v74 + 56) = MEMORY[0x1E69E6158];
    *(v74 + 64) = sub_1CEFD51C4();
    v75 = v169;
    *(v74 + 32) = v171;
    *(v74 + 40) = v75;
    v152 = v74;
    LOBYTE(v151) = 2;
    v150 = 2;
    sub_1CF9E6028();

    (*(v62 + 8))(v69, v63);
    v76 = sub_1CEFCCC44(v180, &unk_1EC4BED20, &unk_1CFA00700);
    v77 = MEMORY[0x1EEE9AC00](v76);
    v78 = v187;
    v79 = v188;
    *&v154[-48] = v188;
    *&v154[-40] = v78;
    v80 = v186;
    v150 = v185;
    v151 = v186;
    v152 = &v193;
    v153 = v173;
    v82 = v189;
    v81 = v190;
    (v78[4])(sub_1CF4C06E8, v77);
    if (v82)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      (*(v182 + 8))(v181, v183);
      v83 = v70;
      return sub_1CF4C0A48(v83, type metadata accessor for Signpost);
    }

    v187 = v73;
    v189 = 0;
    v85 = v182;
    v84 = v183;
    v86 = v167;
    v180 = *(v182 + 16);
    (v180)(v167, v80, v183);
    v88 = *(v85 + 56);
    v87 = v85 + 56;
    v175 = v88;
    v88(v86, 0, 1, v84);
    v89 = v184;
    sub_1CF488190(v80, v86, v81, v79, v184);
    v90 = *(v179 + 8);
    v179 += 8;
    v90(v86, v178);
    v91 = v193;
    if ((v193 & 8) != 0)
    {
      v93 = v189;
      v94 = v168;
      if (v155)
      {
        result = swift_weakLoadStrong();
        if (!result)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        (*(*result + 176))(result);

        *&v191 = v163;
        *(&v191 + 1) = v176;
        *&v192 = v162;
        *(&v192 + 1) = v177;
        type metadata accessor for SQLDatabase();
        if (swift_dynamicCastClass())
        {
          v173 = v90;
          v172 = v91;
          v95 = v183;
          v96 = v180;
          (v180)(v164, v181, v183);
          v97 = v175;
          v175(v164, 0, 1, v95);
          v98 = v158;
          (v96)(v158, v80, v95);
          v99 = v164;
          v97(v98, 0, 1, v95);
          v100 = v189;
          v101 = v80;
          v102 = v184;
          sub_1CF5A85A4(v99, v98, v190, v188, v184);
LABEL_29:
          v93 = v100;
          if (v100)
          {

            v106 = v178;
            v107 = v173;
            (v173)(v98, v178);
            v107(v99, v106);
            sub_1CF9E7458();
            v108 = v157;
            sub_1CF9E6038();
            (*(v182 + 8))(v181, v183);
            return sub_1CF4C0A48(v108, type metadata accessor for Signpost);
          }

          v109 = v98;
          v110 = v178;
          v91 = v173;
          (v173)(v109, v178);
          (v91)(v99, v110);
          v89 = v102;
          v80 = v101;
          LOBYTE(v91) = v172;
LABEL_34:
          v189 = v93;
          v111 = v157;
          if ((v91 & 0x10) == 0)
          {
            goto LABEL_43;
          }

          v112 = *(v183 + 48);
          v113 = *(type metadata accessor for ItemMetadata() + 80);
          v114 = *(v80 + v112 + v113);
          v115 = v181[v112 + v113];
          if (v114 == 1)
          {
            v89 = v184;
            if (v115)
            {
              goto LABEL_43;
            }

            result = swift_weakLoadStrong();
            v179 = result;
            if (!result)
            {
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v117 = swift_getAssociatedTypeWitness();
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            v119 = swift_getAssociatedConformanceWitness();
            *&v191 = AssociatedTypeWitness;
            *(&v191 + 1) = v117;
            *&v192 = AssociatedConformanceWitness;
            *(&v192 + 1) = v119;
            type metadata accessor for ReconciliationID();
            v120 = *(swift_getTupleTypeMetadata2() + 48);
            v173 = AssociatedTypeWitness;
            v121 = *(*(AssociatedTypeWitness - 8) + 16);
            v122 = v165;
            v123 = v186;
            v121(v165, v186, AssociatedTypeWitness);
            swift_storeEnumTagMultiPayload();
            v121(&v122[v120], v123 + *(v183 + 36), v173);
            swift_storeEnumTagMultiPayload();
            v124 = v179;
          }

          else
          {
            v89 = v184;
            if (!v115)
            {
              goto LABEL_43;
            }

            result = swift_weakLoadStrong();
            if (!result)
            {
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            v124 = result;
            v125 = swift_getAssociatedTypeWitness();
            v122 = v165;
            (*(*(v125 - 8) + 16))(v165, v80, v125);
            v179 = swift_getAssociatedTypeWitness();
            v173 = swift_getAssociatedConformanceWitness();
            v126 = v179;
            v127 = swift_getAssociatedConformanceWitness();
            *&v191 = v125;
            *(&v191 + 1) = v126;
            *&v192 = v173;
            *(&v192 + 1) = v127;
            type metadata accessor for ReconciliationID();
            swift_storeEnumTagMultiPayload();
          }

          v128 = v156;
          swift_storeEnumTagMultiPayload();
          (*(*v124 + 312))(v122);

          (*(v166 + 8))(v122, v128);
          v111 = v157;
          v89 = v184;
LABEL_43:
          if ((v91 & 2) != 0)
          {
            v139 = v89;
            v140 = *(v183 + 36);
            v141 = v181;
            v142 = v189;
            v143 = sub_1CF4947C8(&v181[v140], 1, v190, v188, v139);
            if (v142)
            {
              sub_1CF9E7458();
              sub_1CF9E6038();
              (*(v182 + 8))(v141, v183);
              v83 = v111;
              return sub_1CF4C0A48(v83, type metadata accessor for Signpost);
            }

            v189 = 0;
            v174 = v87;
            if ((v143 & 1) == 0)
            {
              result = swift_weakLoadStrong();
              if (!result)
              {
LABEL_60:
                __break(1u);
                return result;
              }

              v144 = result;
              v145 = swift_getAssociatedTypeWitness();
              (*(*(v145 - 8) + 16))(v165, &v181[v140], v145);
              v146 = swift_getAssociatedTypeWitness();
              v147 = swift_getAssociatedConformanceWitness();
              v148 = swift_getAssociatedConformanceWitness();
              *&v191 = v145;
              *(&v191 + 1) = v146;
              *&v192 = v147;
              *(&v192 + 1) = v148;
              v129 = v165;
              type metadata accessor for ReconciliationID();
              swift_storeEnumTagMultiPayload();
              v149 = v156;
              swift_storeEnumTagMultiPayload();
              (*(*v144 + 312))(v129);

              (*(v166 + 8))(v129, v149);
              goto LABEL_46;
            }
          }

          else
          {
            v174 = v87;
          }

          v129 = v165;
LABEL_46:
          result = swift_weakLoadStrong();
          if (result)
          {
            v130 = result;
            TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
            v132 = *(TupleTypeMetadata3 + 48);
            v133 = *(TupleTypeMetadata3 + 64);
            v134 = v180;
            v135 = v183;
            (v180)(v129, v181, v183);
            v136 = v175;
            v175(v129, 0, 1, v135);
            (v134)(&v129[v132], v186, v135);
            v136(&v129[v132], 0, 1, v135);
            *&v129[v133] = v193;
            v137 = v156;
            swift_storeEnumTagMultiPayload();
            (*(*v130 + 312))(v129);

            (*(v166 + 8))(v129, v137);
            sub_1CF9E7458();
            v138 = v157;
            sub_1CF9E6038();
            (*(v182 + 8))(v181, v135);
            return sub_1CF4C0A48(v138, type metadata accessor for Signpost);
          }

          __break(1u);
          goto LABEL_57;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v92 = v155;
      if ((v193 & 0x800000) == 0)
      {
        v92 = 1;
      }

      v93 = v189;
      v94 = v168;
      if (v92)
      {
        goto LABEL_34;
      }
    }

    if (!swift_weakLoadStrong())
    {
LABEL_32:
      v89 = v184;
      goto LABEL_34;
    }

    v191 = v161;
    v192 = v160;
    type metadata accessor for SQLDatabase();
    if (swift_dynamicCastClass())
    {
      v173 = v90;
      v172 = v91;
      v103 = v183;
      v104 = v180;
      (v180)(v94, v181, v183);
      v105 = v175;
      v175(v168, 0, 1, v103);
      v98 = v159;
      (v104)(v159, v80, v103);
      v99 = v168;
      v105(v98, 0, 1, v103);
      v100 = v189;
      v101 = v80;
      v102 = v184;
      sub_1CF5A7DB4(v99, v98, v190, v188, v184);
      goto LABEL_29;
    }

LABEL_31:

    v93 = v189;
    goto LABEL_32;
  }

  result = swift_once();
  if (v50)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1CF4A51BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = *a2;
  sub_1CF9E7948();

  v22 = 0x20455441445055;
  v23 = 0xE700000000000000;
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v21 = *a4;
  v11 = sub_1CF4A0654(a3, &v21, a1);
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0x202020202020200ALL, 0xE800000000000000);
  if (a5)
  {
    v12 = 0xD000000000000029;
  }

  else
  {
    v12 = 0;
  }

  if (a5)
  {
    v13 = 0x80000001CFA4C270;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v12, v13);

  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v14 = *(v10 + 776);
  v15 = *(v10 + 760);
  swift_getAssociatedTypeWitness();
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  v17 = *(v16 + 32);
  v18 = swift_checkMetadataState();
  v19 = v17(a1, v18, v16);
  MEMORY[0x1D3868CC0](v19);

  return v22;
}

uint64_t sub_1CF4A53D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v10 = *(*v5 + 760);
  v11 = *(*v5 + 776);
  v37 = type metadata accessor for SnapshotItem();
  v12 = sub_1CF9E75D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v34 - v15;
  v16 = v42;
  result = sub_1CF48C08C(a1, a2, a3, a4, &v34 - v15);
  if (!v16)
  {
    v18 = v13;
    v42 = 0;
    v19 = *(v37 - 8);
    v20 = v35;
    if ((*(v19 + 48))(v35, 1) == 1)
    {
      (*(v18 + 8))(v20, v12);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v22 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v24 = swift_getAssociatedConformanceWitness();
      v38 = AssociatedTypeWitness;
      v39 = v22;
      v40 = AssociatedConformanceWitness;
      v41 = v24;
      v25 = type metadata accessor for FileItemVersion();
      return (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
    }

    else
    {
      v26 = v37;
      v34 = *(v37 + 40);
      v27 = swift_getAssociatedTypeWitness();
      v28 = swift_getAssociatedTypeWitness();
      v29 = swift_getAssociatedConformanceWitness();
      v30 = swift_getAssociatedConformanceWitness();
      v38 = v27;
      v39 = v28;
      v40 = v29;
      v41 = v30;
      v31 = type metadata accessor for FileItemVersion();
      v32 = *(v31 - 8);
      v33 = v36;
      (*(v32 + 16))(v36, &v20[v34], v31);
      (*(v19 + 8))(v20, v26);
      return (*(v32 + 56))(v33, 0, 1, v31);
    }
  }

  return result;
}

uint64_t sub_1CF4A57A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v9 = *(*v5 + 760);
  v10 = *(*v5 + 776);
  v11 = type metadata accessor for SnapshotItem();
  v12 = sub_1CF9E75D8();
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v16 = *(v11 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  result = sub_1CF056558();
  if (result)
  {
    goto LABEL_2;
  }

  result = sub_1CF48C08C(a1, v27, v28, v29, v15);
  if (!v6)
  {
    if ((*(v16 + 48))(v15, 1, v11) != 1)
    {
      (*(v16 + 32))(v20, v15, v11);
      v23 = &v20[*(v11 + 48)];
      v24 = *&v23[*(type metadata accessor for ItemMetadata() + 104)];
      WitnessTable = swift_getWitnessTable();
      sub_1CF06D940(v11, WitnessTable, &v30);
      result = (*(v16 + 8))(v20, v11);
      v22 = v30;
      *a5 = v24;
      goto LABEL_3;
    }

    result = (*(v26 + 8))(v15, v12);
LABEL_2:
    *a5 = 0;
    v22 = 4;
LABEL_3:
    *(a5 + 8) = v22;
  }

  return result;
}

uint64_t sub_1CF4A5A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v37 = a2;
  v38 = a1;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = type metadata accessor for Signpost(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDEBBE40;
  (*(v6 + 56))(v16, 1, 1, v5);
  v36 = v16;
  sub_1CEFE74D8(v16, v13);
  v22 = *(v6 + 48);
  if (v22(v13, 1, v5) == 1)
  {
    v23 = v21;
    sub_1CF9E6048();
    if (v22(v13, 1, v5) != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
  }

  (*(v6 + 16))(v20, v9, v5);
  *&v20[*(v17 + 20)] = v21;
  v24 = &v20[*(v17 + 24)];
  *v24 = "SQLDB: Update closest sync root for descendents of unignored item";
  *(v24 + 1) = 65;
  v24[16] = 2;
  v25 = v21;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v6 + 8))(v9, v5);
  v26 = sub_1CEFCCC44(v36, &unk_1EC4BED20, &unk_1CFA00700);
  v27 = &v35;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v29 = v42;
  v30 = v43;
  *(&v35 - 6) = v42;
  *(&v35 - 5) = v30;
  v31 = v38;
  v32 = v37;
  *(&v35 - 4) = v39;
  *(&v35 - 3) = v32;
  *(&v35 - 2) = v31;
  *(&v35 - 1) = 200;
  v33 = v40;
  (*(v30 + 32))(sub_1CF4C06B8, v28);
  if (!v33)
  {
    LOBYTE(v27) = (*(v30 + 24))(v29, v30) > 199;
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v20, type metadata accessor for Signpost);
  return v27 & 1;
}

uint64_t sub_1CF4A5E88(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA4C1F0);
  v4 = sub_1CF9E8268();
  v5 = [a1 bindObjectParameter_];

  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;

  MEMORY[0x1D3868CC0](v6, v8);

  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA4C220);
  v9 = sub_1CF9E8268();
  v10 = [a1 bindObjectParameter_];

  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;

  MEMORY[0x1D3868CC0](v11, v13);

  MEMORY[0x1D3868CC0](0x2054494D494C0ALL, 0xE700000000000000);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  return 0;
}

uint64_t sub_1CF4A606C(char *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v49 = a1;
  v7 = *v4;
  v8 = sub_1CF9E6068();
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v19 = type metadata accessor for Signpost(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6[32])
  {
    return 0;
  }

  v24 = *(v7 + 776);
  v25 = *(v7 + 760);
  swift_getAssociatedTypeWitness();
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v44 = v11;
    v46 = v22;
    v47 = v5;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v26 = qword_1EDEBBE40;
    v27 = v48;
    (*(v48 + 56))(v18, 1, 1, v8);
    sub_1CEFE74D8(v18, v15);
    v28 = *(v27 + 48);
    v29 = v28(v15, 1, v8);
    v45 = v26;
    if (v29 == 1)
    {
      v30 = v26;
      v31 = v44;
      sub_1CF9E6048();
      if (v28(v15, 1, v8) != 1)
      {
        sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v31 = v44;
      (*(v27 + 32))(v44, v15, v8);
    }

    v32 = v46;
    (*(v27 + 16))(v46, v31, v8);
    v33 = v45;
    *(v32 + *(v19 + 20)) = v45;
    v34 = v32 + *(v19 + 24);
    *v34 = "SQLDB: Find closest sync root in parent chain";
    *(v34 + 8) = 45;
    *(v34 + 16) = 2;
    v35 = v33;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v27 + 8))(v31, v8);
    v36 = sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
    v37 = MEMORY[0x1EEE9AC00](v36);
    v38 = v52;
    *(&v44 - 4) = v51;
    *(&v44 - 3) = v38;
    v39 = v49;
    *(&v44 - 2) = v6;
    *(&v44 - 1) = v39;
    v40 = v47;
    v41 = (*(v38 + 24))(sub_1CF4C06AC, v37);
    if (v40)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      return sub_1CF4C0A48(v32, type metadata accessor for Signpost);
    }

    else
    {
      v42 = v41;
      if ([v41 next])
      {
        v43 = [v42 unsignedLongLongAtIndex_];
      }

      else
      {
        v43 = 0;
      }

      sub_1CF9E7458();
      sub_1CF9E6038();
      sub_1CF4C0A48(v32, type metadata accessor for Signpost);
      return v43;
    }
  }

  return result;
}

uint64_t sub_1CF4A6564(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000B6, 0x80000001CFA4BEE0);
  v5 = *(a2 + qword_1EDEBBD78);
  v6 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x455845444E49200ALL, 0xED00002059422044);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA4BFA0);
  v7 = *(v4 + 776);
  v8 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 32);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA4BFD0);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x202C64692ELL, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA4C010);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA4C040);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA4C070);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4C0A0);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000031, 0x80000001CFA4C0C0);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD00000000000009ALL, 0x80000001CFA4C100);
  return 0;
}

uint64_t sub_1CF4A68B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a1;
  v6[2] = a3;
  v6[3] = a4;
  return (*(a4 + 24))(a5, v6);
}

uint64_t sub_1CF4A6900(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000073, 0x80000001CFA4DA50);
  v5 = *(a2 + qword_1EDEBBD78);
  v6 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x524548572020200ALL, 0xEF203D2064692045);
  v7 = *(v4 + 776);
  v8 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 32);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4BCE0);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x202C64692ELL, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x5F746E657261702ELL, 0xEC000000202C6469);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4DAD0);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4BD20);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000085, 0x80000001CFA4DAF0);
  return 0;
}

uint64_t sub_1CF4A6B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = a2;
  v10 = *(*v5 + 760);
  v84 = *(*v5 + 776);
  v88 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 1);
  v11 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v82 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v85 = &v73 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v73 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v73 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v73 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v73 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v73 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v73 - v29;
  v95 = a4;
  v96 = a5;
  v97 = v5;
  v98 = a1;
  v31 = a5;
  v32 = *(a5 + 24);
  v33 = a4;
  v34 = a4;
  v35 = v31;
  v36 = v32(sub_1CF4C0B28, &v93, v34, v31, v28);
  if (v6)
  {
    return v30;
  }

  v76 = v26;
  v80 = v36;
  v77 = v23;
  v78 = v30;
  v37 = AssociatedTypeWitness;
  v95 = v33;
  v96 = v35;
  v97 = v5;
  v98 = v90;
  v79 = (v32)(sub_1CF4C0B28, &v93, v33, v35);
  v90 = 0;
  v39 = v80;
  if ([v80 next])
  {
    v40 = v37;
    v41 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
    v42 = v39;
    v30 = v76;
    v43 = v90;
    v41();
    v90 = v43;
    if (v43)
    {

      return v30;
    }

    v45 = v87;
    v44 = v78;
    (*(v87 + 32))(v78, v30, v40);
  }

  else
  {
    v44 = v78;
    sub_1CF046AB4();
    v40 = v37;
    v45 = v87;
  }

  if ([v79 next])
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v47 = *(AssociatedConformanceWitness[1] + 16);
    v30 = v79;
    v48 = v83;
    v49 = v90;
    v47();
    v90 = v49;
    if (v49)
    {
      (*(v45 + 8))(v78, v40);

      return v30;
    }

    v50 = v77;
    (*(v45 + 32))(v77, v48, v40);
    v44 = v78;
  }

  else
  {
    v50 = v77;
    sub_1CF046AB4();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  }

  v88 = *(AssociatedConformanceWitness[5] + 8);
  if (sub_1CF9E6868())
  {
    v30 = sub_1CF9E6DA8();

    v51 = *(v45 + 8);
    v51(v50, v40);
    v51(v44, v40);
    return v30;
  }

  v99 = sub_1CF9E6DA8();
  v83 = AssociatedConformanceWitness[8];
  v84 = AssociatedConformanceWitness + 8;
  v52 = (v83)(v40, AssociatedConformanceWitness);
  v73 = AssociatedConformanceWitness;
  if (v52)
  {
    v53 = v86;
  }

  else
  {
    v54 = *(v45 + 16);
    v53 = v86;
    v54(v86, v44, v40);
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    if ([v80 next])
    {
      v55 = *(AssociatedConformanceWitness[1] + 16);
      do
      {
        v56 = v80;
        v57 = v90;
        v55();
        v90 = v57;
        if (v57)
        {

          v30 = *(v87 + 8);
          (v30)(v77, v40);
          (v30)(v78, v40);
          goto LABEL_37;
        }

        sub_1CF9E6E18();
      }

      while (([v56 next] & 1) != 0);
    }
  }

  v92 = sub_1CF9E6DA8();
  v58 = v87;
  v59 = *(v87 + 16);
  v60 = v85;
  v81 = (v87 + 16);
  v76 = v59;
  (v59)(v85, v77, v40);
  v61 = v73;
  if ((v83)(v40, v73))
  {
LABEL_23:

    v62 = *(v87 + 8);
    (v62)(v60, v40);

LABEL_35:
    (v62)(v77, v40);
    (v62)(v78, v40);
    return v99;
  }

  v63 = sub_1CF9E6E58();
  v75 = (v58 + 8);
  v74 = (v58 + 32);
  v64 = v82;
  while (1)
  {
    v91 = v99;
    swift_getWitnessTable();
    result = sub_1CF9E7148();
    if ((v94 & 1) == 0)
    {
      if (v93 < 0)
      {
        __break(1u);
        return result;
      }

      v93 = sub_1CF9E6E98();
      v94 = v68;
      v95 = v69;
      v96 = v70;
      sub_1CF9E7778();
      swift_getWitnessTable();
      v71 = sub_1CF9E6E88();

      v99 = v71;
      v91 = v92;
      WitnessTable = swift_getWitnessTable();
LABEL_34:
      MEMORY[0x1D3868A50](&v93, v63, WitnessTable);
      v91 = v93;
      sub_1CF9E7BA8();
      swift_getWitnessTable();
      sub_1CF9E6E08();

      v62 = *v75;
      (*v75)(v60, v40);
      goto LABEL_35;
    }

    (v76)(v53, v60, v40);
    sub_1CF9E6E18();
    if (([v79 next] & 1) == 0)
    {
      v91 = v92;
      WitnessTable = swift_getWitnessTable();
      goto LABEL_34;
    }

    AssociatedTypeWitness = *(v61[1] + 16);
    v65 = v79;
    v66 = v90;
    AssociatedTypeWitness();
    v90 = v66;
    if (v66)
    {
      break;
    }

    v60 = v85;
    (*v75)(v85, v40);
    (*v74)(v60, v64, v40);
    v67 = (v83)(v40, v61);
    v53 = v86;
    if (v67)
    {
      goto LABEL_23;
    }
  }

  v30 = *v75;
  (*v75)(v85, v40);

  (v30)(v77, v40);
  (v30)(v78, v40);
LABEL_37:

  return v30;
}

uint64_t sub_1CF4A76A0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000040, 0x80000001CFA4BE20);
  v5 = *(a2 + qword_1EDEBBD78);
  v6 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x524548572020200ALL, 0xEF203D2064692045);
  v7 = *(v4 + 776);
  v8 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 32);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4BCE0);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4BD00);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4BD20);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4BD40);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x203D212064692ELL, 0xE700000000000000);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA4BE70);
  v13 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v13);

  return 0;
}

uint64_t sub_1CF4A79B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a8;
  v52 = a7;
  v50 = a5;
  v51 = a6;
  v46 = a3;
  v47 = a4;
  v43 = a1;
  v44 = a2;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  v20 = type metadata accessor for Signpost(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDEBBE40;
  (*(v9 + 56))(v19, 1, 1, v8);
  v42 = v19;
  sub_1CEFE74D8(v19, v16);
  v25 = *(v9 + 48);
  if (v25(v16, 1, v8) == 1)
  {
    v26 = v24;
    sub_1CF9E6048();
    if (v25(v16, 1, v8) != 1)
    {
      sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v16, v8);
  }

  (*(v9 + 16))(v23, v12, v8);
  *&v23[*(v20 + 20)] = v24;
  v27 = &v23[*(v20 + 24)];
  v28 = v52;
  *v27 = v51;
  *(v27 + 1) = v28;
  v27[16] = 2;
  v29 = v24;
  sub_1CF9E7468();
  sub_1CF9E6038();
  v31 = *(v9 + 8);
  v30 = v9 + 8;
  v31(v12, v8);
  v32 = sub_1CEFCCC44(v42, &unk_1EC4BED20, &unk_1CFA00700);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v34 = v48;
  v36 = v49;
  v35 = v50;
  *(&v42 - 6) = v47;
  *(&v42 - 5) = v35;
  v38 = v43;
  v37 = v44;
  *(&v42 - 4) = v45;
  *(&v42 - 3) = v38;
  *(&v42 - 2) = v37;
  v39 = (*(v35 + 24))(v34, v33);
  if (!v36)
  {
    v40 = v39;
    v30 = [v39 next];
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v23, type metadata accessor for Signpost);
  return v30 & 1;
}

uint64_t sub_1CF4A7DE8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA4BCA0);
  v5 = *(a2 + qword_1EDEBBD78);
  v6 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x524548572020200ALL, 0xEF203D2064692045);
  v7 = *(v4 + 776);
  v8 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 32);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4BCE0);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4BD00);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4BD20);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4BD40);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x203D212064692ELL, 0xE700000000000000);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4BD60);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x5F746E657261702ELL, 0xEE00203D21206469);
  v13 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0xD000000000000055, 0x80000001CFA4BD80);
  if (*(a2 + 32))
  {
    v14 = 20550;
  }

  else
  {
    v14 = 21318;
  }

  MEMORY[0x1D3868CC0](v14, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4BDE0);
  MEMORY[0x1D3868CC0](v14, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA39E10);
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4BE00);
  MEMORY[0x1D3868CC0](v14, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA39DD0);
  v16 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEB000000002E7472);
  MEMORY[0x1D3868CC0](v14, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
  v17 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v17);

  MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF4A82F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a6;
  v45 = a4;
  v46 = a5;
  v43 = a3;
  v44 = a2;
  v42 = a1;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v18 = type metadata accessor for Signpost(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDEBBE40;
  (*(v7 + 56))(v17, 1, 1, v6);
  sub_1CEFE74D8(v17, v14);
  v22 = *(v7 + 48);
  if (v22(v14, 1, v6) == 1)
  {
    v23 = v21;
    sub_1CF9E6048();
    if (v22(v14, 1, v6) != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
  }

  v24 = v49;
  (*(v7 + 16))(v49, v10, v6);
  *(v24 + *(v18 + 20)) = v21;
  v25 = v24 + *(v18 + 24);
  *v25 = "SQLDB: check path-matching loop";
  *(v25 + 8) = 31;
  *(v25 + 16) = 2;
  v26 = v21;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v7 + 8))(v10, v6);
  sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
  v27 = v50;
  v28 = *(v50 + 32);
  result = swift_weakLoadStrong();
  if ((v28 & 1) == 0)
  {
    if (result)
    {
      v30 = 40;
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v30 = 32;
LABEL_12:
  v31 = *(result + v30);

  v32 = *(v31 + 16);

  LOBYTE(v31) = (*(*v32 + 112))(v33);

  v35 = MEMORY[0x1EEE9AC00](v34);
  v36 = v47;
  v37 = v48;
  *(&v42 - 6) = v46;
  *(&v42 - 5) = v37;
  v38 = v42;
  *(&v42 - 4) = v27;
  *(&v42 - 3) = v38;
  *(&v42 - 16) = v31 & 1;
  *(&v42 - 15) = v43 & 1;
  v39 = v45;
  *(&v42 - 1) = v44;
  v40 = (*(v37 + 24))(sub_1CF4C064C, v35);
  if (!v36)
  {
    v41 = v40;
    v39 = [v40 next];
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v24, type metadata accessor for Signpost);
  return v39 & 1;
}

uint64_t sub_1CF4A87F0(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, char a5)
{
  v7 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007ELL, 0x80000001CFA4B720);
  v8 = 21318;
  if (*(a2 + 32))
  {
    v9 = 20550;
  }

  else
  {
    v9 = 21318;
  }

  if (!*(a2 + 32))
  {
    v8 = 20550;
  }

  v26 = v8;
  MEMORY[0x1D3868CC0](v9, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4B7A0);
  v27 = *(a2 + qword_1EDEBBD78 + 8);
  v28 = *(a2 + qword_1EDEBBD78);
  MEMORY[0x1D3868CC0]();
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA4B7C0);
  MEMORY[0x1D3868CC0](v9, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4B800);
  v11 = *(v7 + 776);
  v12 = *(v7 + 760);
  swift_getAssociatedTypeWitness();
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  v14 = *(v13 + 32);
  v29 = swift_checkMetadataState();
  v15 = v14(a1);
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0xD0000000000000CDLL, 0x80000001CFA4B820);
  MEMORY[0x1D3868CC0](v9, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
  v16 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](0xD00000000000012DLL, 0x80000001CFA4B8F0);
  MEMORY[0x1D3868CC0](v9, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0x202020200A64695FLL, 0xED0000204E494F4ALL);
  MEMORY[0x1D3868CC0](v26, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA4BA20);
  MEMORY[0x1D3868CC0](v26, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD0000000000000C3, 0x80000001CFA4BA50);
  if (a4)
  {
    v17 = 41;
  }

  else
  {
    v17 = 0x204554414C4C4F43;
  }

  if (a4)
  {
    v18 = 0xE100000000000000;
  }

  else
  {
    v18 = 0xEF29455341434F4ELL;
  }

  MEMORY[0x1D3868CC0](v17, v18);

  MEMORY[0x1D3868CC0](0xD0000000000000D9, 0x80000001CFA4BB20);
  MEMORY[0x1D3868CC0](v26, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0x202020200A64695FLL, 0xED0000204E494F4ALL);
  MEMORY[0x1D3868CC0](v28, v27);
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4BC00);
  MEMORY[0x1D3868CC0](v9, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0x572020200A64695FLL, 0xED00002045524548);
  if (a5)
  {
    v19 = 0x80000001CFA4BC50;
    v20 = 0xD000000000000018;
    v21 = a1;
    v22 = v29;
  }

  else
  {
    v21 = a1;
    v22 = v29;
    v23 = (v14)(a1, v29, v13);
    MEMORY[0x1D3868CC0](v23);

    v20 = 0x203D212064692E73;
    v19 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v20, v19);

  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA4BC20);
  v24 = (v14)(v21, v22, v13);
  MEMORY[0x1D3868CC0](v24);

  return 0;
}

uint64_t sub_1CF4A8DC8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*(a2 + 32))
  {
    v4 = 21318;
  }

  else
  {
    v4 = 20550;
  }

  if (*(a2 + 32))
  {
    v5 = 20550;
  }

  else
  {
    v5 = 21318;
  }

  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0x6F687370616E735FLL, 0xE900000000000074);

  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);

  MEMORY[0x1D3868CC0](6580575, 0xE300000000000000);

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA4B610);
  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA4B660);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA4B680);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA4B6B0);
  v6 = v3[97];
  v7 = v3[95];
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = *(v8 + 32);
  v10 = swift_checkMetadataState();
  v11 = v9(a1, v10, v8);
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA4B6D0);
  v12 = v3[98];
  v13 = v3[96];
  swift_getAssociatedTypeWitness();
  v14 = *(swift_getAssociatedConformanceWitness() + 8);
  v15 = *(v14 + 32);
  v16 = swift_checkMetadataState();
  v17 = v15(a1, v16, v14);
  MEMORY[0x1D3868CC0](v17);

  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA4B6F0);
  return 0;
}

uint64_t sub_1CF4A91A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a4;
  v46 = a2;
  v47 = a3;
  v43 = a5;
  v44 = a1;
  v42 = *v5;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v18 = type metadata accessor for Signpost(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDEBBE40;
  (*(v7 + 56))(v17, 1, 1, v6);
  sub_1CEFE74D8(v17, v14);
  v22 = *(v7 + 48);
  if (v22(v14, 1, v6) == 1)
  {
    v23 = v21;
    sub_1CF9E6048();
    if (v22(v14, 1, v6) != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
  }

  v24 = v50;
  (*(v7 + 16))(v50, v10, v6);
  *(v24 + *(v18 + 20)) = v21;
  v25 = v24 + *(v18 + 24);
  *v25 = "SQLDB: lookupPathMatchingItemIDInCreationParentHierarchy";
  *(v25 + 8) = 56;
  *(v25 + 16) = 2;
  v26 = v21;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v7 + 8))(v10, v6);
  v27 = sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = v48;
  v29 = v49;
  *(&v42 - 6) = v47;
  *(&v42 - 5) = v29;
  v31 = v44;
  *(&v42 - 4) = v45;
  *(&v42 - 3) = v31;
  *(&v42 - 2) = 1026;
  v32 = (*(v29 + 24))(sub_1CF4C061C, v28);
  if (!v30)
  {
    v33 = v32;
    v34 = [v32 next];
    v35 = *(v42 + 776);
    v36 = *(v42 + 760);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v38 = AssociatedTypeWitness;
    if (v34)
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v40 = v43;
      (*(*(AssociatedConformanceWitness + 8) + 16))(v33, 0, v38);
      (*(*(v38 - 8) + 56))(v40, 0, 1, v38);
      v24 = v50;
    }

    else
    {
      (*(*(AssociatedTypeWitness - 8) + 56))(v43, 1, 1, AssociatedTypeWitness);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF4C0A48(v24, type metadata accessor for Signpost);
}

uint64_t sub_1CF4A96D0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000054, 0x80000001CFA4B260);
  if (*(a2 + 32))
  {
    v4 = 20550;
  }

  else
  {
    v4 = 21318;
  }

  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4B2C0);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA4B2E0);
  v5 = *(a2 + qword_1EDEBBD78);
  v6 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA4B310);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000004BLL, 0x80000001CFA4B360);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA4B3B0);
  v7 = *(v3 + 776);
  v8 = *(v3 + 760);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 32);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA4B3E0);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA4B400);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4B2C0);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA4B440);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD00000000000006DLL, 0x80000001CFA4B490);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000006CLL, 0x80000001CFA4B500);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA4B570);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0xD00000000000005FLL, 0x80000001CFA4B590);
  v16 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](0x494C0A30203D2120, 0xED0000312054494DLL);
  return 0;
}

uint64_t sub_1CF4A9BF8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000053, 0x80000001CFA4B070);
  v5 = *(a2 + qword_1EDEBBD78);
  v6 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA4B0D0);
  v7 = *(v4 + 776);
  v8 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 32);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD00000000000005FLL, 0x80000001CFA4B100);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000073, 0x80000001CFA4B160);
  v13 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0xD00000000000003BLL, 0x80000001CFA4B1E0);
  v14 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0x312054494D494C0ALL, 0xE800000000000000);
  return 0;
}

uint64_t sub_1CF4A9ECC(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = *a2;
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1CF9E7948();
  v55 = 0;
  v56 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x5443454C45532020, 0xEC0000002E747220);
  v47 = *(a2 + 32);
  if (*(a2 + 32))
  {
    v11 = 21318;
  }

  else
  {
    v11 = 20550;
  }

  MEMORY[0x1D3868CC0](v11, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000056, 0x80000001CFA4AED0);
  v54 = MEMORY[0x1E69E6530];
  v51 = a3;
  v12 = sub_1CEFF8EA0(&v51);
  v14 = v13;
  sub_1CEFCCC44(&v51, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v14)
  {
    v48 = a5;
    v49 = a1;
    v50 = a6;
    MEMORY[0x1D3868CC0](v12, v14);

    MEMORY[0x1D3868CC0](0x4E4120202020200ALL, 0xED00002E74722044);
    MEMORY[0x1D3868CC0](v11, 0xE200000000000000);

    MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA4AF30);
    MEMORY[0x1D3868CC0](v11, 0xE200000000000000);

    MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
    v51 = 0x40000;
    v15 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v15);

    MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4AF50);
    MEMORY[0x1D3868CC0](v11, 0xE200000000000000);

    MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4ACA0);
    v51 = 16;
    v16 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v16);

    MEMORY[0x1D3868CC0](540877088, 0xE400000000000000);
    v51 = 16;
    v17 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v17);

    MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4AF70);
    MEMORY[0x1D3868CC0](v11, 0xE200000000000000);

    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA4AF90);
    MEMORY[0x1D3868CC0](v11, 0xE200000000000000);

    MEMORY[0x1D3868CC0](0xD000000000000040, 0x80000001CFA4AFB0);
    v51 = MEMORY[0x1E69E7CC0];
    sub_1CF680C9C(0, 12, 0);
    v18 = v51;
    v19 = *(v51 + 16);
    v20 = 0x20u;
    do
    {
      v21 = *(&unk_1F4BED230 + v20);
      v51 = v18;
      v22 = *(v18 + 24);
      if (v19 >= v22 >> 1)
      {
        sub_1CF680C9C((v22 > 1), v19 + 1, 1);
        v18 = v51;
      }

      *(v18 + 16) = v19 + 1;
      *(v18 + 8 * v19 + 32) = v21;
      v20 += 8;
      ++v19;
    }

    while (v20 != 128);
    v51 = v18;
    v52 = sub_1CF067ADC;
    v53 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFE4E68();
    v23 = sub_1CF9E6C18();
    v25 = v24;

    MEMORY[0x1D3868CC0](v23, v25);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);

    MEMORY[0x1D3868CC0](40, 0xE100000000000000);

    MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4B000);
    MEMORY[0x1D3868CC0](v11, 0xE200000000000000);
    MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA39DD0);
    v51 = 2;
    v26 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v26);

    MEMORY[0x1D3868CC0](0x20202020200A2929, 0xEC00000020444E41);
    v27 = *(v46 + 776);
    v28 = *(v46 + 760);
    swift_getAssociatedTypeWitness();
    v29 = *(swift_getAssociatedConformanceWitness() + 8);
    v30 = *(v29 + 32);
    v31 = swift_checkMetadataState();
    v32 = v30(a1, v31, v29);
    MEMORY[0x1D3868CC0](v32);

    MEMORY[0x1D3868CC0](0x28204E4920, 0xE500000000000000);
    v51 = 3044466;
    v52 = 0xE300000000000000;
    if (v47)
    {
      v33 = 20550;
    }

    else
    {
      v33 = 21318;
    }

    MEMORY[0x1D3868CC0](v33, 0xE200000000000000);
    MEMORY[0x1D3868CC0](6580575, 0xE300000000000000);
    v34 = sub_1CF4BF1B4(v51, v52, *(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8), 49, 0xE100000000000000);
    v36 = v35;

    MEMORY[0x1D3868CC0](v34, v36);

    MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4B020);
    v37 = [a1 bindLongParameter_];
    v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v40 = v39;

    MEMORY[0x1D3868CC0](v38, v40);

    MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3A850);
    v41 = [v49 bindLongParameter_];
    v42 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v44 = v43;

    MEMORY[0x1D3868CC0](v42, v44);

    return v55;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF4AA69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v67 = a8;
  v65 = a6;
  v59 = a5;
  v69 = a4;
  v61 = a3;
  v62 = a2;
  v60 = a1;
  v72 = *v11;
  v73 = a7;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  v24 = type metadata accessor for Signpost(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v68 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v58 = a11;
  v70 = a9;
  v71 = a10;
  v27 = qword_1EDEBBE40;
  (*(v13 + 56))(v23, 1, 1, v12);
  sub_1CEFE74D8(v23, v20);
  v28 = *(v13 + 48);
  if (v28(v20, 1, v12) == 1)
  {
    v29 = v27;
    sub_1CF9E6048();
    if (v28(v20, 1, v12) != 1)
    {
      sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v20, v12);
  }

  v30 = v68;
  (*(v13 + 16))(v68, v16, v12);
  *(v30 + *(v24 + 20)) = v27;
  v31 = v30 + *(v24 + 24);
  v32 = v71;
  *v31 = v70;
  *(v31 + 8) = v32;
  *(v31 + 16) = 2;
  v33 = v27;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v13 + 8))(v16, v12);
  sub_1CEFCCC44(v23, &unk_1EC4BED20, &unk_1CFA00700);
  v34 = 100;
  if ((v59 & 1) == 0)
  {
    v34 = v69;
  }

  v69 = v34;
  v35 = v72[98];
  v36 = v72[96];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = sub_1CF9E6DA8();
  v39 = sub_1CF9E6DF8();
  v64 = v33;
  if (v39)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v41 = sub_1CF981D64(v38, AssociatedTypeWitness, *(AssociatedConformanceWitness + 40));
  }

  else
  {
    v41 = MEMORY[0x1E69E7CD0];
  }

  v42 = v67;
  v43 = v73;

  v77 = v41;
  v45 = MEMORY[0x1EEE9AC00](v44);
  *(&v58 - 8) = v43;
  *(&v58 - 7) = v42;
  v46 = v60;
  v47 = v61;
  *(&v58 - 6) = v63;
  *(&v58 - 5) = v47;
  *(&v58 - 4) = v46;
  v48 = v69;
  *(&v58 - 3) = v62;
  v57 = v48;
  v49 = v66;
  v50 = (*(v42 + 24))(v58, v45);
  if (v49)
  {

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v30, type metadata accessor for Signpost);
  }

  else
  {
    v51 = v50;
    v75 = 0;
    v76 = 1;
    if ([v50 next])
    {
      do
      {
        v52 = objc_autoreleasePoolPush();
        v53 = v72[95];
        v54 = v72[97];
        v57 = v42;
        sub_1CF4AB2B8(&v77, v51, &v75);
        objc_autoreleasePoolPop(v52);
      }

      while (([v51 next] & 1) != 0);
      v41 = v77;
    }

    v55 = *(swift_getAssociatedConformanceWitness() + 40);

    if (sub_1CF9E6FD8() < v69)
    {
      v75 = 0;
      v76 = 1;
    }

    v74 = v41;
    sub_1CF9E7068();
    swift_getWitnessTable();
    v36 = sub_1CF9E6E88();

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v30, type metadata accessor for Signpost);
  }

  return v36;
}

uint64_t sub_1CF4AAD14(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a2;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_1CF9E7948();
  v46 = 0;
  v47 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA4AD50);
  v10 = *(a2 + 32);
  if (*(a2 + 32))
  {
    v11 = 21318;
  }

  else
  {
    v11 = 20550;
  }

  MEMORY[0x1D3868CC0](v11, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA4AD80);
  MEMORY[0x1D3868CC0](v11, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA4ADC0);
  v12 = MEMORY[0x1E69E6530];
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4ADF0);
  v44 = 40;
  v45 = 0xE100000000000000;
  v41 = sub_1CF067ADC;
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v14 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA4AE10);
  v43 = v12;
  v40 = a3;
  v15 = sub_1CEFF8EA0(&v40);
  v17 = v16;
  sub_1CEFCCC44(&v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v17)
  {
    MEMORY[0x1D3868CC0](v15, v17);

    MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA4AE40);
    v40 = 0x40000;
    v18 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v18);

    MEMORY[0x1D3868CC0](0x2020200A30203D20, 0xED000020444E4120);
    v19 = *(v9 + 776);
    v20 = *(v9 + 760);
    swift_getAssociatedTypeWitness();
    v21 = *(swift_getAssociatedConformanceWitness() + 8);
    v22 = *(v21 + 32);
    v23 = swift_checkMetadataState();
    v24 = v22(a1, v23, v21);
    MEMORY[0x1D3868CC0](v24);

    MEMORY[0x1D3868CC0](0x28204E4920, 0xE500000000000000);
    v40 = 3044466;
    v41 = 0xE300000000000000;
    if (v10)
    {
      v25 = 20550;
    }

    else
    {
      v25 = 21318;
    }

    MEMORY[0x1D3868CC0](v25, 0xE200000000000000);
    MEMORY[0x1D3868CC0](6580575, 0xE300000000000000);
    v26 = sub_1CF4BF1B4(v40, v41, *(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8), 49, 0xE100000000000000);
    v28 = v27;

    MEMORY[0x1D3868CC0](v26, v28);

    MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4AE70);
    v29 = [a1 bindLongParameter_];
    v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v32 = v31;

    MEMORY[0x1D3868CC0](v30, v32);

    MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA38C10);
    v33 = [a1 bindLongParameter_];
    v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v36 = v35;

    MEMORY[0x1D3868CC0](v34, v36);

    return v46;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

id sub_1CF4AB2B8(uint64_t a1, void *a2, void *a3)
{
  v18 = a1;
  v19 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v5 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(*(AssociatedConformanceWitness + 8) + 16);
  v11 = a2;
  v12 = v20;
  result = v10();
  if (!v12)
  {
    v14 = *(AssociatedConformanceWitness + 40);
    sub_1CF9E7068();
    sub_1CF9E6FF8();
    (*(v17 + 8))(v8, AssociatedTypeWitness);
    result = [v11 integerAtIndex_];
    v15 = v19;
    *v19 = result;
    *(v15 + 8) = 0;
  }

  return result;
}

uint64_t *sub_1CF4AB488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a7;
  v56 = a8;
  v53 = a6;
  v47 = a5;
  v48 = a4;
  v49 = a1;
  v50 = a3;
  v51 = a2;
  v46 = *v8;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  v21 = type metadata accessor for Signpost(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v59 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDEBBE40;
  (*(v10 + 56))(v20, 1, 1, v9);
  sub_1CEFE74D8(v20, v17);
  v25 = *(v10 + 48);
  if (v25(v17, 1, v9) == 1)
  {
    v26 = v24;
    sub_1CF9E6048();
    if (v25(v17, 1, v9) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
  }

  v27 = v59;
  (*(v10 + 16))(v59, v13, v9);
  *(v27 + *(v21 + 20)) = v24;
  v28 = v27 + *(v21 + 24);
  *v28 = "SQLDB: list not yet created descendents";
  *(v28 + 8) = 39;
  *(v28 + 16) = 2;
  v29 = v24;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v10 + 8))(v13, v9);
  v30 = sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
  v31 = &v45;
  if (v47)
  {
    v32 = 100;
  }

  else
  {
    v32 = v48;
  }

  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = v55;
  v34 = v56;
  *(&v45 - 8) = v55;
  *(&v45 - 7) = v34;
  v36 = v49;
  v37 = v50;
  *(&v45 - 6) = v52;
  *(&v45 - 5) = v37;
  *(&v45 - 4) = v36;
  *(&v45 - 3) = v51;
  *(&v45 - 2) = v32;
  v38 = v54;
  v39 = (*(v34 + 24))(sub_1CF4C05A0, v33);
  if (!v38)
  {
    v40 = v39;
    v57 = 0;
    v58 = 1;
    MEMORY[0x1EEE9AC00](v39);
    v41 = v46;
    *(&v45 - 4) = *(v46 + 760);
    *(&v45 - 6) = v35;
    *(&v45 - 5) = *(v41 + 776);
    *(&v45 - 3) = v34;
    *(&v45 - 2) = &v57;
    *(&v45 - 1) = v42;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v31 = sub_1CF4C1FE4(sub_1CF381BA0, (&v45 - 10), AssociatedTypeWitness);
    sub_1CF9E6DF8();
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v27, type metadata accessor for Signpost);
  return v31;
}

uint64_t sub_1CF4ABA10(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = *a2;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1CF9E7948();
  v49 = 0;
  v50 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD0000000000000EELL, 0x80000001CFA4AB50);
  v9 = *(a2 + 32);
  if (*(a2 + 32))
  {
    v10 = 20550;
  }

  else
  {
    v10 = 21318;
  }

  MEMORY[0x1D3868CC0](v10, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000052, 0x80000001CFA4AC40);
  v48 = MEMORY[0x1E69E6530];
  v45 = a3;
  v42 = a1;
  v11 = sub_1CEFF8EA0(&v45);
  v13 = v12;
  sub_1CEFCCC44(&v45, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v13)
  {
    MEMORY[0x1D3868CC0](v11, v13);

    MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEB000000002E7472);
    MEMORY[0x1D3868CC0](v10, 0xE200000000000000);

    MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
    v45 = 0x40000;
    v14 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v14);

    MEMORY[0x1D3868CC0](0x2020200A30203D20, 0xEF2E747220444E41);
    MEMORY[0x1D3868CC0](v10, 0xE200000000000000);

    MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4ACA0);
    v45 = 16;
    v15 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v15);

    MEMORY[0x1D3868CC0](540877088, 0xE400000000000000);
    v45 = 16;
    v16 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v16);

    MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3BAD0);
    v45 = MEMORY[0x1E69E7CC0];
    sub_1CF680C9C(0, 12, 0);
    v17 = v45;
    v18 = *(v45 + 16);
    v19 = 0x20u;
    do
    {
      v20 = *(&unk_1F4BED230 + v19);
      v45 = v17;
      v21 = *(v17 + 24);
      if (v18 >= v21 >> 1)
      {
        sub_1CF680C9C((v21 > 1), v18 + 1, 1);
        v17 = v45;
      }

      *(v17 + 16) = v18 + 1;
      *(v17 + 8 * v18 + 32) = v20;
      v19 += 8;
      ++v18;
    }

    while (v19 != 128);
    v45 = v17;
    v46 = sub_1CF067ADC;
    v47 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFE4E68();
    v22 = sub_1CF9E6C18();
    v24 = v23;

    MEMORY[0x1D3868CC0](v22, v24);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);

    MEMORY[0x1D3868CC0](40, 0xE100000000000000);

    MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEB000000002E7472);
    if (v9)
    {
      v25 = 21318;
    }

    else
    {
      v25 = 20550;
    }

    MEMORY[0x1D3868CC0](v25, 0xE200000000000000);
    MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4ACC0);
    v26 = *(v41 + 776);
    v27 = *(v41 + 760);
    swift_getAssociatedTypeWitness();
    v28 = *(swift_getAssociatedConformanceWitness() + 8);
    v29 = *(v28 + 32);
    v30 = swift_checkMetadataState();
    v31 = v29(v42, v30, v28);
    MEMORY[0x1D3868CC0](v31);

    MEMORY[0x1D3868CC0](0x28204E4920, 0xE500000000000000);
    v45 = 3044466;
    v46 = 0xE300000000000000;
    MEMORY[0x1D3868CC0](v10, 0xE200000000000000);
    MEMORY[0x1D3868CC0](6580575, 0xE300000000000000);
    v32 = sub_1CF4BF1B4(v45, v46, *(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8), 49, 0xE100000000000000);
    v34 = v33;

    MEMORY[0x1D3868CC0](v32, v34);

    MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4ACE0);
    v35 = [v42 bindLongParameter_];
    v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v38 = v37;

    MEMORY[0x1D3868CC0](v36, v38);

    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
    v45 = a6;
    v39 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v39);

    return v49;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

id sub_1CF4AC0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  TupleTypeMetadata2 = a2;
  v41 = a1;
  v48 = *v4;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for Signpost(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBBE40;
  (*(v6 + 56))(v16, 1, 1, v5);
  sub_1CEFE74D8(v16, v13);
  v21 = *(v6 + 48);
  if (v21(v13, 1, v5) == 1)
  {
    v22 = v20;
    sub_1CF9E6048();
    if (v21(v13, 1, v5) != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
  }

  v23 = v47;
  (*(v6 + 16))(v47, v9, v5);
  *(v23 + *(v17 + 20)) = v20;
  v24 = v23 + *(v17 + 24);
  *v24 = "SQLDB: list packages";
  *(v24 + 8) = 20;
  *(v24 + 16) = 2;
  v25 = v20;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v6 + 8))(v9, v5);
  v26 = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v28 = v46;
  *(&v40 - 6) = v45;
  *(&v40 - 5) = v28;
  v29 = v41;
  *(&v40 - 4) = v42;
  *(&v40 - 3) = v29;
  v39 = 100;
  v30 = v44;
  v31 = (*(v28 + 24))(sub_1CF4C0588, v27);
  if (!v30)
  {
    v32 = v31;
    v44 = v25;
    v33 = v48[97];
    v34 = v48[95];
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v25 = sub_1CF9E6DA8();
    v50 = v25;
    v49 = 0;
    if ([v32 next])
    {
      do
      {
        v35 = objc_autoreleasePoolPush();
        v36 = v48[96];
        v37 = v48[98];
        v39 = v28;
        sub_1CF4AC7B0(&v49, v32, &v50);
        objc_autoreleasePoolPop(v35);
      }

      while (([v32 next] & 1) != 0);
      v25 = v50;
    }

    sub_1CF9E6DF8();
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v23, type metadata accessor for Signpost);
  return v25;
}

uint64_t sub_1CF4AC65C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA4AAC0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA4AAF0);
  v6 = [a1 bindLongParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  return 0;
}

uint64_t sub_1CF4AC7B0(void *a1, void *a2, uint64_t a3)
{
  v28 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = (&v25 - v7);
  v26 = *(AssociatedTypeWitness - 8);
  v9 = *(v26 + 64);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v25 - v12;
  *a1 = [a2 longAtIndex_];
  v14 = [a2 stringAtIndex_];
  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;

  v18 = *(swift_getAssociatedConformanceWitness() + 8);
  v19 = *(v18 + 16);
  v20 = a2;
  v21 = v29;
  v19(v20, 3, AssociatedTypeWitness, v18);
  if (v21)
  {
  }

  v23 = v26;
  v24 = *(TupleTypeMetadata2 + 48);
  *v8 = v15;
  v8[1] = v17;
  (*(v23 + 32))(v8 + v24, v13, AssociatedTypeWitness);
  sub_1CF9E6E58();
  return sub_1CF9E6E18();
}

id sub_1CF4AC9EC(id a1, uint64_t a2, uint64_t a3)
{
  v8[2] = a2;
  v8[3] = a3;
  v5 = (*(a3 + 24))(sub_1CF4C057C, v8, a2);
  if (!v3)
  {
    v6 = v5;
    if ([v5 next])
    {
      a1 = [v6 longAtIndex_];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

unint64_t sub_1CF4ACAA4(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  return 0xD000000000000017;
}

void sub_1CF4ACB20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v64 = a5;
  v62 = a4;
  v60 = a3;
  v57 = a1;
  v58 = a2;
  v11 = *v7;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v63 = &v52 - v21;
  v22 = type metadata accessor for Signpost(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v59 = v7;
  if (*(v7 + 32) == 1)
  {
    v52 = v24;
    v61 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v54 = a6;
    v55 = a7;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v26 = qword_1EDEBBE40;
    v27 = v63;
    (*(v13 + 56))(v63, 1, 1, v12);
    sub_1CEFE74D8(v27, v19);
    v28 = *(v13 + 48);
    v29 = v28(v19, 1, v12);
    v30 = v56;
    v53 = v26;
    if (v29 == 1)
    {
      v31 = v26;
      sub_1CF9E6048();
      v32 = v28(v19, 1, v12);
      v33 = v62;
      if (v32 != 1)
      {
        sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v13 + 32))(v56, v19, v12);
      v33 = v62;
    }

    v34 = v61;
    (*(v13 + 16))(v61, v30, v12);
    v35 = v52;
    v36 = v53;
    *&v34[*(v52 + 20)] = v53;
    v37 = &v34[*(v35 + 24)];
    *v37 = "SQLDB: get mostRecentItems";
    *(v37 + 1) = 26;
    v37[16] = 2;
    v36;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v13 + 8))(v30, v12);
    v38 = sub_1CEFCCC44(v63, &unk_1EC4BED20, &unk_1CFA00700);
    v39 = MEMORY[0x1EEE9AC00](v38);
    v40 = v55;
    *(&v52 - 6) = v54;
    *(&v52 - 5) = v40;
    v42 = v57;
    v41 = v58;
    *(&v52 - 4) = v59;
    *(&v52 - 3) = v42;
    v51 = v41;
    v43 = (*(v40 + 24))(sub_1CF4C0564, v39);
    if (v8)
    {
      sub_1CF9E7458();
    }

    else
    {
      v44 = v43;
      if ([v43 next])
      {
        do
        {
          v45 = objc_autoreleasePoolPush();
          v46 = v11[95];
          v47 = v11[96];
          v48 = v11[97];
          v49 = v11[98];
          v51 = v40;
          sub_1CF4ADAA4(v44, v33, v64);
          objc_autoreleasePoolPop(v45);
        }

        while (([v44 next] & 1) != 0);
      }

      sub_1CF9E7458();
    }

    v50 = v61;
    sub_1CF9E6038();
    sub_1CF4C0A48(v50, type metadata accessor for Signpost);
  }
}

uint64_t sub_1CF4AD020(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA4A980);
  if (*(a2 + 32))
  {
    v8 = 20550;
  }

  else
  {
    v8 = 21318;
  }

  MEMORY[0x1D3868CC0](v8, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4A9C0);
  v9 = sub_1CF9E5C48();
  v10 = [a1 bindObjectParameter_];

  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;

  MEMORY[0x1D3868CC0](v11, v13);

  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA4AA00);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
  v15 = v7[95];
  v16 = v7[96];
  v17 = v7[97];
  v18 = v7[98];
  v19 = sub_1CF4BFA00(0x2E70616E73, 0xE500000000000000, xmmword_1CFA06070);
  MEMORY[0x1D3868CC0](v19);

  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEB000000002E7472);
  MEMORY[0x1D3868CC0](v8, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4A870);
  v20 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v20);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v21 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v21);

  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA4AA20);
  v22 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v22);

  MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA4AA50);
  v23 = [a1 bindLongParameter_];
  v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v26 = v25;

  MEMORY[0x1D3868CC0](v24, v26);

  return 0;
}

void sub_1CF4AD3F4(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a4;
  v60 = a3;
  v58 = a2;
  v56 = a1;
  v10 = *v6;
  v11 = sub_1CF9E6068();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v61 = &v50 - v20;
  v21 = type metadata accessor for Signpost(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v57 = v6;
  if (*(v6 + 32) == 1)
  {
    v51 = v23;
    v59 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = a5;
    v54 = a6;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v25 = qword_1EDEBBE40;
    v26 = v61;
    (*(v12 + 56))(v61, 1, 1, v11);
    sub_1CEFE74D8(v26, v18);
    v27 = *(v12 + 48);
    v28 = v27(v18, 1, v11);
    v29 = v55;
    v52 = v25;
    if (v28 == 1)
    {
      v30 = v25;
      sub_1CF9E6048();
      v31 = v27(v18, 1, v11);
      v32 = v60;
      if (v31 != 1)
      {
        sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v12 + 32))(v55, v18, v11);
      v32 = v60;
    }

    v33 = v59;
    (*(v12 + 16))(v59, v29, v11);
    v34 = v51;
    v35 = v52;
    *&v33[*(v51 + 20)] = v52;
    v36 = &v33[*(v34 + 24)];
    *v36 = "SQLDB: get last_used unindexedItems";
    *(v36 + 1) = 35;
    v36[16] = 2;
    v35;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v12 + 8))(v29, v11);
    v37 = sub_1CEFCCC44(v61, &unk_1EC4BED20, &unk_1CFA00700);
    v38 = MEMORY[0x1EEE9AC00](v37);
    v39 = v54;
    *(&v50 - 4) = v53;
    *(&v50 - 3) = v39;
    v48 = v57;
    v49 = v56;
    v40 = (*(v39 + 24))(sub_1CF4C0558, v38);
    if (v7)
    {
      sub_1CF9E7458();
    }

    else
    {
      v41 = v40;
      if ([v40 next])
      {
        do
        {
          v42 = objc_autoreleasePoolPush();
          v43 = v10[95];
          v44 = v10[96];
          v45 = v10[97];
          v46 = v10[98];
          v48 = v39;
          sub_1CF4ADAA4(v41, v32, v62);
          objc_autoreleasePoolPop(v42);
        }

        while (([v41 next] & 1) != 0);
      }

      sub_1CF9E7458();
    }

    v47 = v59;
    sub_1CF9E6038();
    sub_1CF4C0A48(v47, type metadata accessor for Signpost);
  }
}

uint64_t sub_1CF4AD8F0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEA00000000002E74);
  if (*(a2 + 32))
  {
    v6 = 20550;
  }

  else
  {
    v6 = 21318;
  }

  MEMORY[0x1D3868CC0](v6, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0x200A64695FLL, 0xE500000000000000);
  v7 = sub_1CF4BFAC0();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4A8C0);
  v8 = [a1 bindLongParameter_];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);

  MEMORY[0x1D3868CC0](0xD000000000000070, 0x80000001CFA4A8E0);
  v12 = [a1 bindLongParameter_];
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;

  MEMORY[0x1D3868CC0](v13, v15);

  return 0;
}

uint64_t sub_1CF4ADAA4(void *a1, void (*a2)(char *), uint64_t a3)
{
  v12[1] = a3;
  v13 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v12 - v8;
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  result = (*(v10 + 16))(a1, 0, AssociatedTypeWitness, v10);
  if (!v3)
  {
    v13(v9);
    return (*(v6 + 8))(v9, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1CF4ADC18(void *a1, uint64_t a2, int a3, uint64_t a4, void *a5, void *a6, uint64_t (**a7)(uint64_t (*)(uint64_t a1), __n128))
{
  v64 = a7;
  v65 = a6;
  v63 = a5;
  v59 = a3;
  v60 = a2;
  v61 = a1;
  v10 = *v7;
  v11 = sub_1CF9E6068();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - v20;
  v22 = type metadata accessor for Signpost(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v66 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v7;
  if (v7[32] == 1)
  {
    v56 = a4;
    v57 = v21;
    v67 = v10;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v25 = qword_1EDEBBE40;
    v26 = v57;
    (*(v12 + 56))(v57, 1, 1, v11);
    sub_1CEFE74D8(v26, v18);
    v27 = *(v12 + 48);
    v28 = v27(v18, 1, v11);
    v29 = v58;
    v55 = v25;
    if (v28 == 1)
    {
      v30 = v25;
      sub_1CF9E6048();
      if (v27(v18, 1, v11) != 1)
      {
        sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v12 + 32))(v58, v18, v11);
    }

    v34 = v66;
    (*(v12 + 16))(v66, v29, v11);
    v35 = v55;
    *(v34 + *(v22 + 20)) = v55;
    v36 = v34 + *(v22 + 24);
    *v36 = "SQLDB: get last_used unindexedItems for index drop";
    *(v36 + 8) = 50;
    *(v36 + 16) = 2;
    v37 = v35;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v12 + 8))(v29, v11);
    v38 = sub_1CEFCCC44(v57, &unk_1EC4BED20, &unk_1CFA00700);
    v39 = MEMORY[0x1EEE9AC00](v38);
    v40 = v64;
    *(&v55 - 6) = v65;
    *(&v55 - 5) = v40;
    v41 = v61;
    *(&v55 - 4) = v62;
    *(&v55 - 3) = v41;
    v53 = v42;
    v54 = v56;
    v43 = v40[3](sub_1CF4C0540, v39);
    if (v8)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      return sub_1CF4C0A48(v34, type metadata accessor for Signpost);
    }

    else
    {
      v44 = v43;
      v63 = v37;
      v45 = v67[97];
      v46 = v67[95];
      swift_getAssociatedTypeWitness();
      v47 = sub_1CF9E6DA8();
      v69 = v47;
      v68 = 0;
      if ([v44 next])
      {
        do
        {
          v48 = objc_autoreleasePoolPush();
          v49 = v67[96];
          v50 = v67[98];
          v53 = v40;
          sub_1CF4AE444(&v68, v44, &v69);
          objc_autoreleasePoolPop(v48);
        }

        while (([v44 next] & 1) != 0);
        v51 = v69;
      }

      else
      {
        v51 = v47;
      }

      sub_1CF9E6DF8();

      sub_1CF9E7458();
      v52 = v66;
      sub_1CF9E6038();
      sub_1CF4C0A48(v52, type metadata accessor for Signpost);
      return v51;
    }
  }

  else
  {
    v31 = v10[97];
    v32 = v10[95];
    swift_getAssociatedTypeWitness();
    return sub_1CF9E6DA8();
  }
}

uint64_t sub_1CF4AE228(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4A6D0);
  if (*(a2 + 32))
  {
    v10 = 20550;
  }

  else
  {
    v10 = 21318;
  }

  MEMORY[0x1D3868CC0](v10, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0x200A64695FLL, 0xE500000000000000);
  v11 = sub_1CF4BFAC0();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4A6F0);
  v12 = [a1 bindLongParameter_];
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;

  MEMORY[0x1D3868CC0](v13, v15);

  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA4A710);
  v16 = [a1 bindLongParameter_];
  v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v18;

  MEMORY[0x1D3868CC0](v17, v19);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
  v20 = [a1 bindLongParameter_];
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v23 = v22;

  MEMORY[0x1D3868CC0](v21, v23);

  return 0;
}

uint64_t sub_1CF4AE444(void *a1, void *a2, uint64_t a3)
{
  v19[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = v19 - v12;
  *a1 = [a2 longAtIndex_];
  v14 = *(swift_getAssociatedConformanceWitness() + 8);
  v15 = *(v14 + 16);
  v16 = a2;
  v17 = v19[3];
  result = v15(v16, 1, AssociatedTypeWitness, v14);
  if (!v17)
  {
    (*(v6 + 16))(v9, v13, AssociatedTypeWitness);
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    return (*(v6 + 8))(v13, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1CF4AE61C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, void *, id, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v63 = a6;
  v64 = a7;
  v56 = a4;
  v57 = a5;
  v61 = a2;
  v11 = *v7;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v65 = &v53 - v21;
  v22 = type metadata accessor for Signpost(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v62 = v7;
  if (*(v7 + 32) != 1)
  {
    return 0;
  }

  v55 = a3;
  v58 = a1;
  v59 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDEBBE40;
  v26 = v65;
  (*(v13 + 56))(v65, 1, 1, v12);
  sub_1CEFE74D8(v26, v19);
  v27 = *(v13 + 48);
  v28 = v27(v19, 1, v12);
  v54 = v25;
  if (v28 == 1)
  {
    v29 = v25;
    v30 = v60;
    sub_1CF9E6048();
    if (v27(v19, 1, v12) != 1)
    {
      sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v30 = v60;
    (*(v13 + 32))(v60, v19, v12);
  }

  v32 = v59;
  (*(v13 + 16))(v59, v30, v12);
  v33 = v54;
  *(v32 + *(v22 + 20)) = v54;
  v34 = v32 + *(v22 + 24);
  *v34 = "SQLDB: get indexable speculativeSet";
  *(v34 + 8) = 35;
  *(v34 + 16) = 2;
  v35 = v33;
  sub_1CF9E7468();
  v60 = v35;
  sub_1CF9E6038();
  (*(v13 + 8))(v30, v12);
  v36 = sub_1CEFCCC44(v65, &unk_1EC4BED20, &unk_1CFA00700);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v38 = v64;
  *(&v53 - 6) = v63;
  *(&v53 - 5) = v38;
  v50 = v62;
  v51 = v61;
  v52 = v58;
  v39 = (*(v38 + 24))(sub_1CF4C0528, v37);
  if (v8)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CF4C0A48(v32, type metadata accessor for Signpost);
  }

  else
  {
    v40 = v39;
    v67 = 0;
    v66 = 0;
    if ([v39 next])
    {
      v42 = v56;
      v41 = v57;
      do
      {
        v43 = objc_autoreleasePoolPush();
        v44 = v11[95];
        v45 = v11[96];
        v46 = v11[97];
        v51 = v11[98];
        v52 = v38;
        v50 = v46;
        sub_1CF4AEDF4(v40, &v66, &v67, v42, v41);
        objc_autoreleasePoolPop(v43);
      }

      while (([v40 next] & 1) != 0);
      v47 = v67;
      v48 = v66;
    }

    else
    {
      v48 = 0;
      v47 = 0;
    }

    if (v47 != v58)
    {
      v48 = 0;
    }

    sub_1CF9E7458();
    v49 = v59;
    sub_1CF9E6038();
    sub_1CF4C0A48(v49, type metadata accessor for Signpost);
    return v48;
  }
}

uint64_t sub_1CF4AEB94(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007FLL, 0x80000001CFA4A590);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA4A610);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
  v10 = v8[95];
  v11 = v8[96];
  v12 = v8[97];
  v13 = v8[98];
  v14 = sub_1CF4BFA00(0x2E70616E73, 0xE500000000000000, xmmword_1CFA06070);
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4A640);
  v15 = [a1 bindLongParameter_];
  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v17;

  MEMORY[0x1D3868CC0](v16, v18);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA4A660);
  v19 = [a1 bindLongParameter_];
  v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v21;

  MEMORY[0x1D3868CC0](v20, v22);

  return 0;
}

id sub_1CF4AEDF4(void *a1, void *a2, void *a3, void (*a4)(char *, void *, id, uint64_t), uint64_t a5)
{
  v40[3] = a5;
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v32 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v32 - v13;
  v15 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v16 = a1;
  result = v15();
  if (!v5)
  {
    v18 = v36;
    v19 = v37;
    v33 = v14;
    v34 = v11;
    v20 = v38;
    v35 = 0;
    v21 = 1;
    v22 = [v16 stringAtIndex_];
    v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v24 = v23;

    v25 = [v16 longLongAtIndex_];
    v26 = [v16 isNullAtIndex_];
    v27 = v39;
    if ((v26 & 1) == 0)
    {
      v28 = [v16 dateAtIndex_];
      sub_1CF9E5CB8();

      v21 = 0;
    }

    v29 = sub_1CF9E5CF8();
    (*(*(v29 - 8) + 56))(v27, v21, 1, v29);
    result = [v16 longAtIndex_];
    *v18 = result;
    if (__OFADD__(*v19, 1))
    {
      __break(1u);
    }

    else
    {
      v30 = v20;
      ++*v19;
      v31 = v33;
      v40[0] = v32;
      v40[1] = v24;
      v30(v33, v40, v25, v27);
      sub_1CEFCCC44(v27, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      (*(v34 + 8))(v31, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t sub_1CF4AF13C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA444D0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000002DLL, 0x80000001CFA4D900);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4D930);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  return 0;
}

id sub_1CF4AF294(uint64_t a1)
{
  if (*(v1 + 32) != 1)
  {
    return 0;
  }

  v3 = MEMORY[0x1EEE9AC00](a1);
  result = (*(v4 + 24))(v5, v3);
  if (!v2)
  {
    v7 = result;
    if ([result next])
    {
      v8 = [v7 longAtIndex_];
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  return result;
}

uint64_t sub_1CF4AF378(uint64_t a1, void *a2)
{
  v3 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA444D0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x455245485720200ALL, 0xE900000000000020);
  v4 = v3[95];
  v5 = v3[96];
  v6 = v3[97];
  v7 = v3[98];
  v8 = sub_1CF4BFA00(0, 0xE000000000000000, xmmword_1CFA02F50);
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4D8E0);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  return 0;
}

uint64_t sub_1CF4AF554(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(v5 + 32) != 1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7E8, &qword_1CFA03228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA440;
  *(inited + 32) = a1;
  v10 = MEMORY[0x1EEE9AC00](inited);
  v11 = (*(a4 + 24))(a5, v10);
  result = swift_setDeallocating();
  if (!v6)
  {
    if ([v11 next])
    {
      v13 = [v11 longAtIndex_];
    }

    else
    {
      v13 = 0;
    }

    return v13;
  }

  return result;
}

uint64_t sub_1CF4AF6A4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA444D0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x455245485720200ALL, 0xE900000000000020);
  v6 = v5[95];
  v7 = v5[96];
  v8 = v5[97];
  v9 = v5[98];
  v10 = sub_1CF4BF4F0(0, 0xE000000000000000, a3);
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4D8E0);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  return 0;
}

id sub_1CF4AF818(uint64_t a1)
{
  if (*(v1 + 32) != 1)
  {
    return 0;
  }

  v3 = MEMORY[0x1EEE9AC00](a1);
  result = (*(v4 + 24))(sub_1CF4C0AE4, v3);
  if (!v2)
  {
    v6 = result;
    if ([result next])
    {
      v7 = [v6 longAtIndex_];
    }

    else
    {
      v7 = 0;
    }

    return v7;
  }

  return result;
}

uint64_t sub_1CF4AF900(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA444D0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA4D8B0);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4D8E0);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  return 0;
}

uint64_t sub_1CF4AFA30(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a5;
  v59 = a4;
  v55 = a2;
  v56 = a1;
  v8 = *v5;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v54 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v51 - v18;
  v20 = type metadata accessor for Signpost(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v57 = v5;
  if (v5[32])
  {
    v23 = v8[97];
    v24 = v8[95];
    swift_getAssociatedTypeWitness();
    return sub_1CF9E6DA8();
  }

  else
  {
    v52 = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = v19;
    v51[1] = a3;
    v60 = v8;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v26 = qword_1EDEBBE40;
    v27 = v53;
    (*(v10 + 56))(v53, 1, 1, v9);
    sub_1CEFE74D8(v27, v16);
    v28 = *(v10 + 48);
    v29 = v28(v16, 1, v9);
    v30 = v54;
    v51[0] = v26;
    if (v29 == 1)
    {
      v31 = v26;
      sub_1CF9E6048();
      if (v28(v16, 1, v9) != 1)
      {
        sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v10 + 32))(v54, v16, v9);
    }

    v32 = v52;
    (*(v10 + 16))(v52, v30, v9);
    v33 = v51[0];
    *(v32 + *(v20 + 20)) = v51[0];
    v34 = v32 + *(v20 + 24);
    *v34 = "SQLDB: list non evictable items with keepDownloaded policy";
    *(v34 + 8) = 58;
    *(v34 + 16) = 2;
    v35 = v33;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v10 + 8))(v30, v9);
    v36 = sub_1CEFCCC44(v53, &unk_1EC4BED20, &unk_1CFA00700);
    v37 = MEMORY[0x1EEE9AC00](v36);
    v38 = v58;
    v51[-6] = v59;
    v51[-5] = v38;
    v51[-4] = v57;
    v51[-3] = v39;
    v50 = 100;
    v40 = (*(v38 + 24))(sub_1CF4C0510, v37);
    if (v6)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      return sub_1CF4C0A48(v32, type metadata accessor for Signpost);
    }

    else
    {
      v41 = v40;
      v57 = v35;
      v42 = v60[97];
      v43 = v60[95];
      swift_getAssociatedTypeWitness();
      v44 = sub_1CF9E6DA8();
      v62 = v44;
      v61 = 0;
      if ([v41 next])
      {
        do
        {
          v45 = objc_autoreleasePoolPush();
          v46 = v60[96];
          v47 = v60[98];
          v50 = v38;
          sub_1CF4B0BA8(&v61, v41);
          objc_autoreleasePoolPop(v45);
        }

        while (([v41 next] & 1) != 0);
        v48 = v62;
      }

      else
      {
        v48 = v44;
      }

      sub_1CF9E6DF8();

      sub_1CF9E7458();
      v49 = v52;
      sub_1CF9E6038();
      sub_1CF4C0A48(v49, type metadata accessor for Signpost);
      return v48;
    }
  }
}

uint64_t sub_1CF4B0034(void *a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000ECLL, 0x80000001CFA4A2F0);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0x20200A30203D2029, 0xED000020444E4120);
  v7 = v5[95];
  v8 = v5[96];
  v9 = v5[97];
  v10 = v5[98];
  v11 = sub_1CF4BFA00(3043430, 0xE300000000000000, xmmword_1CFA02F50);
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0xD00000000000004BLL, 0x80000001CFA4A3E0);
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA4A430);
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA4A460);
  v14 = [a1 bindLongParameter_];
  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;

  MEMORY[0x1D3868CC0](v15, v17);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
  v18 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v18);

  return 0;
}

uint64_t sub_1CF4B02F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v56 = a3;
  v54 = a1;
  v7 = *v4;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v52 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v50 - v17;
  v19 = type metadata accessor for Signpost(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v53 = v4;
  if (*(v4 + 32) == 1)
  {
    v50[1] = a2;
    v51 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = v7;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDEBBE40;
    (*(v9 + 56))(v18, 1, 1, v8);
    sub_1CEFE74D8(v18, v15);
    v23 = *(v9 + 48);
    v24 = v23(v15, 1, v8);
    v50[0] = v22;
    if (v24 == 1)
    {
      v25 = v22;
      v26 = v18;
      v27 = v52;
      sub_1CF9E6048();
      v28 = v27;
      v18 = v26;
      if (v23(v15, 1, v8) != 1)
      {
        sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v28 = v52;
      (*(v9 + 32))(v52, v15, v8);
    }

    v32 = v51;
    (*(v9 + 16))(v51, v28, v8);
    v33 = v50[0];
    *(v32 + *(v19 + 20)) = v50[0];
    v34 = v32 + *(v19 + 24);
    *v34 = "SQLDB: list folders with non-propagated content policy";
    *(v34 + 8) = 54;
    *(v34 + 16) = 2;
    v35 = v33;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v9 + 8))(v28, v8);
    v36 = sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
    v37 = MEMORY[0x1EEE9AC00](v36);
    v38 = v55;
    v50[-6] = v56;
    v50[-5] = v38;
    v39 = v54;
    v50[-4] = v53;
    v50[-3] = v39;
    v49 = 100;
    v40 = (*(v38 + 24))(sub_1CF4C04F8, v37);
    if (v5)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      return sub_1CF4C0A48(v32, type metadata accessor for Signpost);
    }

    else
    {
      v41 = v40;
      v54 = v35;
      v42 = v57[97];
      v43 = v57[95];
      swift_getAssociatedTypeWitness();
      v44 = sub_1CF9E6DA8();
      v59 = v44;
      v58 = 0;
      if ([v41 next])
      {
        do
        {
          v45 = objc_autoreleasePoolPush();
          v46 = v57[96];
          v47 = v57[98];
          v49 = v38;
          sub_1CF4B0BA8(&v58, v41);
          objc_autoreleasePoolPop(v45);
        }

        while (([v41 next] & 1) != 0);
        v48 = v59;
        v32 = v51;
      }

      else
      {
        v48 = v44;
      }

      sub_1CF9E6DF8();

      sub_1CF9E7458();
      sub_1CF9E6038();
      sub_1CF4C0A48(v32, type metadata accessor for Signpost);
      return v48;
    }
  }

  else
  {
    v29 = v7[97];
    v30 = v7[95];
    swift_getAssociatedTypeWitness();
    return sub_1CF9E6DA8();
  }
}

uint64_t sub_1CF4B08F4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA4A0C0);
  v6 = *(a2 + qword_1EDEBBD78);
  v7 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v6, v7);
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA4A0E0);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA4A110);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4A140);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA4A180);
  MEMORY[0x1D3868CC0](v6, v7);
  MEMORY[0x1D3868CC0](0xD00000000000009ALL, 0x80000001CFA4A1C0);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA4A260);
  v12 = [a1 bindLongParameter_];
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;

  MEMORY[0x1D3868CC0](v13, v15);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA4A290);
  v16 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v16);

  return 0;
}

uint64_t sub_1CF4B0BA8(void *a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  *a1 = [a2 longAtIndex_];
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  result = (*(v7 + 16))(a2, 1, AssociatedTypeWitness, v7);
  if (!v2)
  {
    sub_1CF9E6E58();
    return sub_1CF9E6E18();
  }

  return result;
}

uint64_t sub_1CF4B0CF0(uint64_t result)
{
  if ((*(v1 + 32) & 1) == 0)
  {
    v2 = MEMORY[0x1EEE9AC00](result);
    v6 = v3;
    v7 = v4;
    v8 = v1;
    v9 = v5;
    return (*(v4 + 32))(sub_1CF4C04C0, v2);
  }

  return result;
}

uint64_t sub_1CF4B0D78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1CF9E7948();
  v27 = 0;
  v28 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x4554414450552020, 0xE900000000000020);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003DLL, 0x80000001CFA4A040);
  v22 = a3;
  v17[1] = *(v10 + 760);
  v18 = a4;
  v19 = *(v10 + 776);
  v20 = a5;
  v21 = a1;
  swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E6E58();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1CF054A5C(sub_1CF4C04CC, v17, v11, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);
  v25 = 40;
  v26 = 0xE100000000000000;
  v22 = v14;
  v23 = sub_1CF4BF1A8;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C07E8, &qword_1CFA06180);
  sub_1CEFCCCEC(&qword_1EC4C07F0, &qword_1EC4C07E8, &qword_1CFA06180);
  sub_1CEFE4E68();
  v15 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](v25, v26);

  MEMORY[0x1D3868CC0](59, 0xE100000000000000);
  return v27;
}

uint64_t sub_1CF4B0FF8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  v5 = *(v4 + 32);
  v6 = swift_checkMetadataState();
  result = v5(a1, v6, v4);
  *a2 = result;
  a2[1] = v8;
  return result;
}

id sub_1CF4B10C8(uint64_t a1)
{
  if (*(v1 + 32))
  {
    return 0;
  }

  v4 = MEMORY[0x1EEE9AC00](a1);
  result = (*(v5 + 24))(sub_1CF4C04B4, v4);
  if (!v2)
  {
    v6 = result;
    if ([result next])
    {
      v7 = [v6 longAtIndex_];
    }

    else
    {
      v7 = 0;
    }

    return v7;
  }

  return result;
}

uint64_t sub_1CF4B11B4(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA49FE0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000034, 0x80000001CFA4A000);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  return 0;
}

void sub_1CF4B1290()
{
  v1 = *(v0 + qword_1EDEBBD78 + 8);

  v2 = *(v0 + qword_1EDEBBD98 + 8);

  v3 = *(v0 + qword_1EDEBBD88 + 8);

  v4 = *(v0 + qword_1EDEAE5C0);
}

uint64_t sub_1CF4B12FC()
{
  v0 = sub_1CF685B78();
  v1 = *(v0 + qword_1EDEBBD78 + 8);

  v2 = *(v0 + qword_1EDEBBD98 + 8);

  v3 = *(v0 + qword_1EDEBBD88 + 8);

  return v0;
}

uint64_t sub_1CF4B1370()
{
  v0 = *sub_1CF4B12FC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF4B13DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = *(v6 + 760);
  type metadata accessor for VFSItem(0);
  swift_dynamicCastMetatype();
  v8 = *(v6 + 776);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (!swift_dynamicCastMetatype())
  {
    sub_1CF9E7948();

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
    MEMORY[0x1D3868CC0](v11);

    MEMORY[0x1D3868CC0](0x4C554E20544F4E20, 0xEA00000000002C4CLL);
  }

  v12 = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemStateVersion();
  v13 = swift_dynamicCastMetatype();
  if (!v13)
  {
    sub_1CF9E7948();

    v14 = swift_getAssociatedConformanceWitness();
    v15 = (*(*(v14 + 8) + 8))(v12);
    MEMORY[0x1D3868CC0](v15);

    v13 = MEMORY[0x1D3868CC0](0x4C554E20544F4E20, 0xEA00000000002C4CLL);
  }

  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = *(a3 + 32);
  v17(sub_1CF4C034C, v16);

  if (!v28)
  {
    v19 = MEMORY[0x1EEE9AC00](result);
    v20 = (v17)(sub_1CF4C03A8, v19);
    v21 = MEMORY[0x1EEE9AC00](v20);
    v22 = (v17)(sub_1CF4C03B4, v21);
    v23 = MEMORY[0x1EEE9AC00](v22);
    v24 = (v17)(sub_1CF4C0380, v23);
    v25 = (*(*v4[2] + 112))(v24);
    v26 = MEMORY[0x1EEE9AC00](v25);
    result = (v17)(sub_1CF4C038C, v26);
    if ((v4[4] & 1) == 0)
    {
      v27 = MEMORY[0x1EEE9AC00](result);
      return (v17)(sub_1CF4C039C, v27);
    }
  }

  return result;
}

uint64_t sub_1CF4B1970(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a2;
  if (*(a2 + 32))
  {
    v10 = 0xD000000000000432;
  }

  else
  {
    v10 = 0xD000000000000077;
  }

  v21 = v10;
  if (*(a2 + 32))
  {
    v11 = "_parent_id_idx ON ";
  }

  else
  {
    v11 = "red_content BLOB NULL,\n\n  ";
  }

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x5420455441455243, 0xED000020454C4241);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x20646920200A2820, 0xE800000000000000);
  v12 = *(v9 + 776);
  v13 = *(v9 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  v16 = *(v15 + 8);
  v17 = v16(AssociatedTypeWitness, v15);
  MEMORY[0x1D3868CC0](v17);

  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA49A40);
  v18 = v16(AssociatedTypeWitness, v15);
  MEMORY[0x1D3868CC0](v18);

  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA49A60);
  MEMORY[0x1D3868CC0](a3, a4);
  MEMORY[0x1D3868CC0](2105354, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a5, a6);
  MEMORY[0x1D3868CC0](0xD0000000000003DALL, 0x80000001CFA49A90);
  MEMORY[0x1D3868CC0](v21, v11 | 0x8000000000000000);

  MEMORY[0x1D3868CC0](10506, 0xE200000000000000);
  return 0;
}

uint64_t sub_1CF4B1C04(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();

  strcpy(v7, "CREATE INDEX ");
  HIWORD(v7[1]) = -4864;
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA49510);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x6C69665F73667628, 0xEC00000029646965);
  return v7[0];
}

uint64_t sub_1CF4B1CEC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA48580);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA494D0);
  return 0;
}

uint64_t sub_1CF4B1DDC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();

  strcpy(v7, "CREATE INDEX ");
  HIWORD(v7[1]) = -4864;
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA495E0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x5F746E6572617028, 0xEB00000000296469);
  return v7[0];
}

uint64_t sub_1CF4B1EC4(uint64_t a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v5 = a2 + qword_1EDEBBD78;
  v6 = *(a2 + qword_1EDEBBD78);
  v7 = *(v5 + 8);
  MEMORY[0x1D3868CC0](v6, v7);
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA49590);
  MEMORY[0x1D3868CC0](v6, v7);
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA495C0);
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0x4554414C4C4F4320;
  }

  if (a3)
  {
    v9 = 0xE000000000000000;
  }

  else
  {
    v9 = 0xEF455341434F4E20;
  }

  MEMORY[0x1D3868CC0](v8, v9);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF4B200C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA49530);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA49550);
  return 0;
}

uint64_t sub_1CF4B20F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a7;
  v22 = a8;
  v23 = a1;
  v24 = a2;
  v25 = v8;
  v26 = a5;
  v27 = a6;
  v28 = *(a8 + 32);
  result = (v28)(sub_1CF4BFF38, v20, a7, a8);
  if (!v9)
  {
    v11 = MEMORY[0x1EEE9AC00](result);
    v12 = v28(sub_1CF4BFF50, v11);
    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = v28(sub_1CF4BFF68, v13);
    v15 = MEMORY[0x1EEE9AC00](v14);
    v16 = v28(sub_1CF4BFF80, v15);
    v17 = MEMORY[0x1EEE9AC00](v16);
    v18 = v28(sub_1CF4BFFD4, v17);
    v19 = MEMORY[0x1EEE9AC00](v18);
    return v28(sub_1CF4BFFEC, v19);
  }

  return result;
}

uint64_t sub_1CF4B23BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v9 = a4 + qword_1EDEBBD78;
  v10 = *(a4 + qword_1EDEBBD78);
  v11 = *(v9 + 8);
  MEMORY[0x1D3868CC0](v10, v11);
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA47EE0);
  MEMORY[0x1D3868CC0](v10, v11);
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA47F00);
  v12 = a5(779576686, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA476E0);
  MEMORY[0x1D3868CC0](v10, v11);
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA484D0);
  return 0;
}

uint64_t sub_1CF4B25AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v7 = a4 + qword_1EDEBBD78;
  v8 = *(a4 + qword_1EDEBBD78);
  v9 = *(v7 + 8);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA47680);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA476B0);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA476E0);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA47700);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD00000000000002ELL, 0x80000001CFA48400);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD000000000000093, 0x80000001CFA48430);
  return 0;
}

uint64_t sub_1CF4B27F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, unint64_t))
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v10 = a4 + qword_1EDEBBD78;
  v11 = *(a4 + qword_1EDEBBD78);
  v12 = *(v10 + 8);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA47AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v13 = sub_1CF9E67D8();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](542002976, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA47AD0);
  v14 = a6(778333295, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0x28203D212029, 0xE600000000000000);
  v15 = a6(779576686, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0xD000000000000046, 0x80000001CFA47AF0);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0x2045534143203D20, 0xED0000204E454857);
  v16 = a6(779576686, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](0x204E45485420, 0xE600000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA47A10);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD00000000000003BLL, 0x80000001CFA483C0);
  v17 = a6(779576686, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v17);

  MEMORY[0x1D3868CC0](0x28203D212029, 0xE600000000000000);
  v18 = a6(778333295, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v18);

  MEMORY[0x1D3868CC0](0x444E450A3B29, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF4B2BBC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4554414450552020, 0xE900000000000020);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA480C0);
  return 0;
}

uint64_t sub_1CF4B2C5C(uint64_t result)
{
  if ((*(v1 + 32) & 1) == 0)
  {
    v3 = MEMORY[0x1EEE9AC00](result);
    v16 = *(v4 + 32);
    result = v16(sub_1CF4BF104, v3);
    if (!v2)
    {
      v5 = MEMORY[0x1EEE9AC00](result);
      v6 = v16(sub_1CF4BF11C, v5);
      v7 = MEMORY[0x1EEE9AC00](v6);
      v8 = v16(sub_1CF4BF134, v7);
      v9 = MEMORY[0x1EEE9AC00](v8);
      v10 = v16(sub_1CF4C0DD4, v9);
      v11 = MEMORY[0x1EEE9AC00](v10);
      v12 = v16(sub_1CF4C0DD8, v11);
      v13 = MEMORY[0x1EEE9AC00](v12);
      v14 = v16(sub_1CF4BF178, v13);
      v15 = MEMORY[0x1EEE9AC00](v14);
      return v16(sub_1CF4C0DDC, v15);
    }
  }

  return result;
}

uint64_t sub_1CF4B2FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v9 = a4 + qword_1EDEBBD78;
  v10 = *(a4 + qword_1EDEBBD78);
  v11 = *(v9 + 8);
  MEMORY[0x1D3868CC0](v10, v11);
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA47EE0);
  MEMORY[0x1D3868CC0](v10, v11);
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA47F00);
  v12 = a5(779576686, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA476E0);
  MEMORY[0x1D3868CC0](v10, v11);
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000034, 0x80000001CFA47F20);
  v13 = sub_1CF682A60();
  v14 = *(v13 + 16);
  if (v14)
  {
    v26 = MEMORY[0x1E69E7CC0];
    v15 = v13;
    sub_1CF680C9C(0, v14, 0);
    v16 = v15;
    v17 = *(v26 + 16);
    v18 = 32;
    do
    {
      v19 = *(v16 + v18);
      v20 = *(v26 + 24);
      if (v17 >= v20 >> 1)
      {
        sub_1CF680C9C((v20 > 1), v17 + 1, 1);
        v16 = v15;
      }

      v21 = qword_1CFA062F0[v19];
      *(v26 + 16) = v17 + 1;
      *(v26 + 8 * v17 + 32) = v21;
      ++v18;
      ++v17;
      --v14;
    }

    while (v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v22 = sub_1CF9E6C18();
  v24 = v23;

  MEMORY[0x1D3868CC0](v22, v24);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000013ALL, 0x80000001CFA47F60);
  return 0;
}

uint64_t sub_1CF4B3390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, unint64_t))
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v10 = a4 + qword_1EDEBBD78;
  v11 = *(a4 + qword_1EDEBBD78);
  v12 = *(v10 + 8);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA47AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v13 = sub_1CF9E67D8();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](542002976, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA47AD0);
  v14 = a6(778333295, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0x28203D212029, 0xE600000000000000);
  v15 = a6(779576686, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0xD000000000000046, 0x80000001CFA47AF0);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA47B40);
  v16 = sub_1CF682A60();
  v17 = *(v16 + 16);
  if (v17)
  {
    v30 = MEMORY[0x1E69E7CC0];
    v18 = v16;
    sub_1CF680C9C(0, v17, 0);
    v19 = v18;
    v20 = *(v30 + 16);
    v21 = 32;
    do
    {
      v22 = *(v19 + v21);
      v23 = *(v30 + 24);
      if (v20 >= v23 >> 1)
      {
        sub_1CF680C9C((v23 > 1), v20 + 1, 1);
        v19 = v18;
      }

      v24 = qword_1CFA062F0[v22];
      *(v30 + 16) = v20 + 1;
      *(v30 + 8 * v20 + 32) = v24;
      ++v21;
      ++v20;
      --v17;
    }

    while (v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v25 = sub_1CF9E6C18();
  v27 = v26;

  MEMORY[0x1D3868CC0](v25, v27);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA47B70);
  v28 = a6(779576686, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v28);

  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA47BA0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000153, 0x80000001CFA47BD0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD00000000000016ALL, 0x80000001CFA47D30);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000031, 0x80000001CFA47EA0);
  return 0;
}

uint64_t sub_1CF4B38E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD00000000000008BLL, 0x80000001CFA47920);
  MEMORY[0x1D3868CC0](*(a4 + qword_1EDEBBD78), *(a4 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000056, 0x80000001CFA479B0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA47A10);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000050, 0x80000001CFA47A40);
  v9 = sub_1CF682A60();
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = a5;
    v24 = MEMORY[0x1E69E7CC0];
    v12 = v9;
    sub_1CF680C9C(0, v10, 0);
    v13 = v12;
    v14 = *(v24 + 16);
    v15 = 32;
    do
    {
      v16 = *(v13 + v15);
      v17 = *(v24 + 24);
      if (v14 >= v17 >> 1)
      {
        sub_1CF680C9C((v17 > 1), v14 + 1, 1);
        v13 = v12;
      }

      v18 = qword_1CFA062F0[v16];
      *(v24 + 16) = v14 + 1;
      *(v24 + 8 * v14 + 32) = v18;
      ++v15;
      ++v14;
      --v10;
    }

    while (v10);

    a5 = v11;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v19 = sub_1CF9E6C18();
  v21 = v20;

  MEMORY[0x1D3868CC0](v19, v21);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
  v22 = a5(0, 0xE000000000000000);
  MEMORY[0x1D3868CC0](v22);

  MEMORY[0x1D3868CC0](0x444E450A3BLL, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF4B3C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v7 = a4 + qword_1EDEBBD78;
  v8 = *(a4 + qword_1EDEBBD78);
  v9 = *(v7 + 8);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA478D0);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA476E0);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0x2E646C6F202D20, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA478F0);
  return 0;
}

uint64_t sub_1CF4B3E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v7 = *(a4 + qword_1EDEBBD78);
  v8 = *(a4 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v7, v8);
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA477E0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](542002976, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v7, v8);
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA47810);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0x2E77656E203D2120, 0xE800000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000053, 0x80000001CFA47830);
  MEMORY[0x1D3868CC0](v7, v8);
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0x2E646C6F202D20, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0x2E77656E202B20, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA47890);
  v9 = sub_1CF4BF1B4(0x657261702E646C6FLL, 0xED000064695F746ELL, *(a4 + qword_1EDEBBD78), *(a4 + qword_1EDEBBD78 + 8), 49, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0x444E450A3B2929, 0xE700000000000000);
  return 0;
}

uint64_t sub_1CF4B411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v7 = a4 + qword_1EDEBBD78;
  v8 = *(a4 + qword_1EDEBBD78);
  v9 = *(v7 + 8);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA47680);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA476B0);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA476E0);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA47700);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA47720);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD00000000000008DLL, 0x80000001CFA47750);
  return 0;
}

uint64_t sub_1CF4B435C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v7 = a4 + qword_1EDEBBD78;
  v8 = *(a4 + qword_1EDEBBD78);
  v9 = *(v7 + 8);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD00000000000003BLL, 0x80000001CFA474C0);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD00000000000007ALL, 0x80000001CFA47500);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0x2E77656E202D20, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000093, 0x80000001CFA47580);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0x2E77656E202B20, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000055, 0x80000001CFA47620);
  return 0;
}

uint64_t sub_1CF4B45C8(uint64_t a1)
{
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA480A0);
  return a1;
}

uint64_t sub_1CF4B464C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 32) & 1) == 0)
  {
    v7 = result;
    result = sub_1CF4B20F8(0xD00000000000001DLL, 0x80000001CFA48320, &unk_1F4BEEDE8, result, sub_1CF4B471C, 0, a2, a3);
    if (!v4)
    {
      return sub_1CF4B20F8(0xD000000000000019, 0x80000001CFA48340, &unk_1F4BEEE28, v7, sub_1CF4B4740, 0, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1CF4B4764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA48360);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](a4, a5);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA48380);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA483A0);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  return 0;
}

uint64_t sub_1CF4B48E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 32) == 1)
  {
    v7 = result;
    result = sub_1CF4B20F8(0xD000000000000021, 0x80000001CFA48D80, &unk_1F4BEEE68, result, sub_1CF4B49BC, 0, a2, a3);
    if (!v4)
    {
      return sub_1CF4B20F8(0xD000000000000022, 0x80000001CFA48DB0, &unk_1F4BEEE98, v7, sub_1CF4B49C4, 0, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1CF4B49CC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA48DE0);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0x30203D2029, 0xE500000000000000);
  return 40;
}

uint64_t sub_1CF4B4AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v21 = a1;
  v22 = a2;
  v23 = v5;
  v7 = *(a5 + 32);
  result = (v7)(sub_1CF4BFDFC, v18, a4, a5);
  if (!v6)
  {
    v9 = MEMORY[0x1EEE9AC00](result);
    v10 = v7(sub_1CF4BFE54, v9);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v12 = v7(sub_1CF4BFE7C, v11);
    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = v7(sub_1CF4BFE98, v13);
    v15 = MEMORY[0x1EEE9AC00](v14);
    v16 = v7(sub_1CF4BFEC0, v15);
    v17 = MEMORY[0x1EEE9AC00](v16);
    return v7(sub_1CF4BFED8, v17);
  }

  return result;
}

unint64_t sub_1CF4B4D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  MEMORY[0x1D3868CC0](*(a4 + qword_1EDEBBD78), *(a4 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](a8, a9);
  return 0xD000000000000018;
}

unint64_t sub_1CF4B4DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  MEMORY[0x1D3868CC0](*(a4 + qword_1EDEBBD78), *(a4 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA48170);
  return 0xD000000000000018;
}

uint64_t sub_1CF4B4EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA480F0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  MEMORY[0x1D3868CC0](*(a4 + qword_1EDEBBD78), *(a4 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA48150);
  return 0;
}

uint64_t sub_1CF4B4F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF4B4AA8(0xD00000000000001DLL, 0x80000001CFA48320, a1, a2, a3);
  if (!v3)
  {
    sub_1CF4B4AA8(0xD000000000000019, 0x80000001CFA48340, a1, a2, a3);
    v8 = sub_1CF4B4AA8(0xD000000000000016, 0x80000001CFA484F0, a1, a2, a3);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v10 = *(a3 + 32);
    v11 = v10(sub_1CF4C0004, v9);
    v12 = MEMORY[0x1EEE9AC00](v11);
    return v10(sub_1CF4C0010, v12);
  }

  return result;
}

uint64_t sub_1CF4B5134(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA48510);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA48560);
  return 0;
}

uint64_t sub_1CF4B51D8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA48510);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA48540);
  return 0;
}

uint64_t sub_1CF4B527C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA480F0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA48110);
  return 0;
}

uint64_t sub_1CF4B5324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF4B4AA8(0xD000000000000012, 0x80000001CFA48CA0, a1, a2, a3);
  if (!v3)
  {
    return sub_1CF4B4AA8(0xD000000000000018, 0x80000001CFA48C80, a1, a2, a3);
  }

  return result;
}

uint64_t sub_1CF4B53AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF4B4AA8(0xD000000000000023, 0x80000001CFA47470, a1, a2, a3);
  if (!v3)
  {
    v7[2] = 0xD000000000000023;
    v7[3] = 0x80000001CFA47470;
    return (*(a3 + 32))(sub_1CF4BFDF4, v7, a2, a3);
  }

  return result;
}

uint64_t sub_1CF4B5460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v19 = v3;
  v5 = *(a3 + 32);
  result = (v5)(sub_1CF4C0028, v16, a2, a3);
  if (!v4)
  {
    v7 = MEMORY[0x1EEE9AC00](result);
    v8 = v5(sub_1CF4C0034, v7);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v10 = v5(sub_1CF4C0040, v9);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v12 = v5(sub_1CF4C0078, v11);
    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = v5(sub_1CF4C0084, v13);
    v15 = MEMORY[0x1EEE9AC00](v14);
    return v5(sub_1CF4C0090, v15);
  }

  return result;
}

uint64_t sub_1CF4B56B4(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA486E0);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA48790);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA487D0);
  return 0;
}

uint64_t sub_1CF4B5794(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA486E0);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA48700);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000034, 0x80000001CFA48750);
  return 0;
}

uint64_t sub_1CF4B5874(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA48670);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA486C0);
  return 0;
}

uint64_t sub_1CF4B5918(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA48670);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA486A0);
  return 0;
}

unint64_t sub_1CF4B59BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](a6, a7);
  return 0xD000000000000020;
}

uint64_t sub_1CF4B5A58(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 32) & 1) == 0)
  {
    return sub_1CF4B20F8(0xD000000000000018, 0x80000001CFA48C80, &unk_1F4BEEDB8, result, sub_1CF4C0DD0, 0, a2, a3);
  }

  return result;
}

uint64_t sub_1CF4B5ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v3 + 776);
  v6 = *(*v3 + 760);
  swift_getAssociatedTypeWitness();
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v8 = MEMORY[0x1EEE9AC00](result);
    return (*(a3 + 32))(sub_1CF4C0340, v8);
  }

  return result;
}

uint64_t sub_1CF4B5BC0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA493F0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000031, 0x80000001CFA49410);
  return 0;
}

uint64_t sub_1CF4B5CEC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA493B0);
  return 0;
}

uint64_t sub_1CF4B5D90(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA49350);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA49370);
  return 0;
}

uint64_t sub_1CF4B5EA8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x67616B6361705F5FLL, 0xED0000204E4F2065);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA49330);
  return 0;
}

uint64_t sub_1CF4B5FC4(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000045, 0x80000001CFA492E0);
  return 0;
}

uint64_t sub_1CF4B6068(uint64_t result)
{
  if (*(v1 + 32) == 1)
  {
    v3 = MEMORY[0x1EEE9AC00](result);
    v5 = *(v4 + 32);
    result = v5(sub_1CF4C02EC, v3);
    if (!v2)
    {
      v6 = MEMORY[0x1EEE9AC00](result);
      v7 = v5(sub_1CF4C02F8, v6);
      v8 = MEMORY[0x1EEE9AC00](v7);
      return v5(sub_1CF4C0304, v8);
    }
  }

  return result;
}

uint64_t sub_1CF4B61D4(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000034, 0x80000001CFA492A0);
  return 0;
}

uint64_t sub_1CF4B6278(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48FC0);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000043, 0x80000001CFA491A0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA491F0);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA476E0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000084, 0x80000001CFA49210);
  return 0;
}

uint64_t sub_1CF4B63E0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48FC0);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000004CLL, 0x80000001CFA48FF0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000004CLL, 0x80000001CFA49040);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA476E0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000078, 0x80000001CFA49090);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD00000000000008ALL, 0x80000001CFA49110);
  return 0;
}

uint64_t sub_1CF4B65C8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA48F80);
  return 0;
}

uint64_t sub_1CF4B666C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 32) & 1) == 0)
  {
    v7 = result;
    result = sub_1CF4B4F9C(result, a2, a3);
    if (!v4)
    {
      v8 = MEMORY[0x1EEE9AC00](result);
      v9 = *(a3 + 32);
      v9(sub_1CF4C02C8, v8);
      v10 = sub_1CF4B464C(v7, a2, a3);
      v11 = MEMORY[0x1EEE9AC00](v10);
      return (v9)(sub_1CF4C02D4, v11);
    }
  }

  return result;
}

uint64_t sub_1CF4B67A0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000045, 0x80000001CFA48F30);
  return 0;
}

uint64_t sub_1CF4B6844(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA48EA0);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA48EE0);
  return 0;
}

uint64_t sub_1CF4B6940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 32))
  {
    v8 = MEMORY[0x1EEE9AC00](a1);
    v9 = *(a3 + 32);
    result = v9(sub_1CF4C0298, v8);
    if (!v4)
    {
      v11 = MEMORY[0x1EEE9AC00](result);
      v9(sub_1CF4C02A4, v11);
      v12 = sub_1CF4B48E8(a1, a2, a3);
      v13 = MEMORY[0x1EEE9AC00](v12);
      v14 = v9(sub_1CF4C02B0, v13);
      v15 = MEMORY[0x1EEE9AC00](v14);
      return v9(sub_1CF4C02BC, v15);
    }
  }

  else
  {
    result = sub_1CF4B5324(a1, a2, a3);
    if (!v4)
    {
      if ((*(v3 + 32) & 1) == 0)
      {
        sub_1CF4B20F8(0xD000000000000018, 0x80000001CFA48C80, &unk_1F4BEEDB8, a1, sub_1CF4C0DD0, 0, a2, a3);
      }

      sub_1CF4B4F9C(a1, a2, a3);
      return sub_1CF4B464C(a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1CF4B6BCC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA48E50);
  return 0;
}

uint64_t sub_1CF4B6C70(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000004ELL, 0x80000001CFA48E00);
  return 0;
}

uint64_t sub_1CF4B6D14(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000050, 0x80000001CFA48D20);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0x30203D2029, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF4B6DFC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000051, 0x80000001CFA48CC0);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0x30203D2029, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF4B6EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v3 + 760);
  type metadata accessor for VFSItem(0);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v7 = MEMORY[0x1EEE9AC00](result);
    return (*(a3 + 32))(sub_1CF4C028C, v7);
  }

  return result;
}

uint64_t sub_1CF4B6FC0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA48C50);
  return 0;
}

uint64_t sub_1CF4B7090(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA48C10);
  return 0;
}

uint64_t sub_1CF4B7174(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000045, 0x80000001CFA48BC0);
  return 0;
}

uint64_t sub_1CF4B7218(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000004FLL, 0x80000001CFA48B70);
  return 0;
}

uint64_t sub_1CF4B72E8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA48B30);
  return 0;
}

uint64_t sub_1CF4B73B8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000057, 0x80000001CFA48AD0);
  return 0;
}

uint64_t sub_1CF4B7488(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA48A90);
  return 0;
}

uint64_t sub_1CF4B752C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v7[2] = a2;
  v7[3] = a3;
  if (v4 == 1)
  {
    v5 = sub_1CF4C0238;
  }

  else
  {
    v5 = sub_1CF4C022C;
  }

  return (*(a3 + 32))(v5, v7, a2);
}

uint64_t sub_1CF4B75BC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000057, 0x80000001CFA489F0);
  return 0;
}

uint64_t sub_1CF4B7660(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA48A50);
  return 0;
}

uint64_t sub_1CF4B7704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v21 = v3;
  v5 = *(a3 + 32);
  result = (v5)(sub_1CF4C0104, v18, a2, a3);
  if (!v4)
  {
    v7 = MEMORY[0x1EEE9AC00](result);
    v8 = v5(sub_1CF4C0124, v7);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v10 = v5(sub_1CF4C0144, v9);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v12 = v5(sub_1CF4C0164, v11);
    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = v5(sub_1CF4C0184, v13);
    v15 = MEMORY[0x1EEE9AC00](v14);
    v16 = v5(sub_1CF4C01C8, v15);
    v17 = MEMORY[0x1EEE9AC00](v16);
    return v5(sub_1CF4C01E8, v17);
  }

  return result;
}

uint64_t sub_1CF4B79F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = v5;
  v8 = *(a3 + 32);
  result = (v8)(a4, v10, a2, a3);
  if (!v6)
  {
    MEMORY[0x1EEE9AC00](result);
    return v8(a5);
  }

  return result;
}

uint64_t sub_1CF4B7AE8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003DLL, 0x80000001CFA489B0);
  return 0;
}

uint64_t sub_1CF4B7C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(**(v3 + 16) + 112))();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 40);

    v8 = *(v7 + 16);

    v10 = (*(*v8 + 112))(v9);

    if (v10 != 2 && (v5 & 1) == 0 && (v10 & 1) != 0)
    {
      v11 = MEMORY[0x1EEE9AC00](result);
      return (*(a3 + 32))(sub_1CF4C00EC, v11);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF4B7D80(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA48960);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA48990);
  return 0;
}

uint64_t sub_1CF4B7E98(uint64_t result)
{
  if (*(v1 + 32) == 1)
  {
    MEMORY[0x1EEE9AC00](result);
    v5 = v2;
    v6 = v3;
    v7 = v1;
    return (*(v3 + 32))(v4);
  }

  return result;
}

uint64_t sub_1CF4B7F20(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA488A0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000091, 0x80000001CFA488C0);
  return 0;
}

uint64_t sub_1CF4B800C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a3;
  v23 = v3;
  v5 = *(a3 + 32);
  result = (v5)(sub_1CF4C0DCC, v20, a2, a3);
  if (!v4)
  {
    v7 = MEMORY[0x1EEE9AC00](result);
    v8 = v5(sub_1CF4C0DB4, v7);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v10 = v5(sub_1CF4C0DC4, v9);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v12 = v5(sub_1CF4C0DC8, v11);
    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = v5(sub_1CF4C0DB8, v13);
    v15 = MEMORY[0x1EEE9AC00](v14);
    v16 = v5(sub_1CF4C0DBC, v15);
    v17 = MEMORY[0x1EEE9AC00](v16);
    v18 = v5(sub_1CF4C0DC0, v17);
    v19 = MEMORY[0x1EEE9AC00](v18);
    return v5(sub_1CF4C00D4, v19);
  }

  return result;
}

uint64_t sub_1CF4B8318(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48800);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA48170);
  return 0;
}

uint64_t sub_1CF4B83BC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48800);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA48880);
  return 0;
}

uint64_t sub_1CF4B8460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48800);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](a6, a7);
  return 0;
}

uint64_t sub_1CF4B8500(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48800);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA48860);
  return 0;
}

uint64_t sub_1CF4B85A4(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48800);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA46260);
  return 0;
}

uint64_t sub_1CF4B8648(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48800);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA46240);
  return 0;
}

uint64_t sub_1CF4B86EC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48800);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA48830);
  return 0;
}

uint64_t sub_1CF4B87BC(uint64_t result)
{
  if ((*(v1 + 32) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v5 = v2;
    v6 = v3;
    v7 = v1;
    return (*(v3 + 32))(v4);
  }

  return result;
}

uint64_t sub_1CF4B8840(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA48220);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA48630);
  return 0;
}

uint64_t sub_1CF4B892C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 32) & 1) == 0)
  {
    v7 = result;
    v8 = MEMORY[0x1EEE9AC00](result);
    v10 = *(v9 + 32);
    result = v10(sub_1CF4BFF08, v8);
    if (!v4)
    {
      v11 = MEMORY[0x1EEE9AC00](result);
      v10(sub_1CF4BFF14, v11);
      sub_1CF4B4F9C(v7, a2, a3);
      v12 = sub_1CF4B464C(v7, a2, a3);
      v13 = MEMORY[0x1EEE9AC00](v12);
      v14 = v10(sub_1CF4BFF20, v13);
      v15 = MEMORY[0x1EEE9AC00](v14);
      return v10(sub_1CF4BFF2C, v15);
    }
  }

  return result;
}

unint64_t sub_1CF4B8B30(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA48610);
  return 0xD000000000000016;
}

uint64_t sub_1CF4B8BD0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA48580);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA485B0);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0x30203D2029, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF4B8D0C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA3FCD0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA482E0);
  return 0;
}

uint64_t sub_1CF4B8DB8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA48220);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000063, 0x80000001CFA48270);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](10537, 0xE200000000000000);
  return 0;
}

uint64_t sub_1CF4B8EEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 32) & 1) == 0)
  {
    v7 = result;
    v8 = MEMORY[0x1EEE9AC00](result);
    result = (*(v9 + 32))(sub_1CF4BFEFC, v8);
    if (!v4)
    {
      result = sub_1CF4B53AC(v7, a2, a3);
      if ((*(v3 + 32) & 1) == 0)
      {
        return sub_1CF4B2C5C(0xD000000000000023);
      }
    }
  }

  return result;
}

uint64_t sub_1CF4B9008(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000004FLL, 0x80000001CFA48190);
  return 0;
}

void sub_1CF4B90AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v3 + 32) & 1) == 0)
  {
    v14 = MEMORY[0x1EEE9AC00](v11);
    *(&v25 - 4) = a2;
    *(&v25 - 3) = a3;
    v27 = v3;
    *(&v25 - 2) = v3;
    (*(a3 + 32))(sub_1CF4BFEF0, v14);
    if (v4)
    {
      v26 = v9;
      v15 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v16 = v4;
      v17 = sub_1CF9E6108();
      v18 = sub_1CF9E7288();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v25 = a1;
        v20 = v19;
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        v22 = v4;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v23;
        *v21 = v23;
        _os_log_impl(&dword_1CEFC7000, v17, v18, "Could not find recursive_dataless_with_clone_count: %@", v20, 0xCu);
        sub_1CEFCCC44(v21, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v21, -1, -1);
        v24 = v20;
        a1 = v25;
        MEMORY[0x1D386CDC0](v24, -1, -1);
      }

      else
      {
      }

      (*(v26 + 8))(v13, v8);
      sub_1CF4B8EEC(a1, a2, a3);
    }
  }
}

uint64_t sub_1CF4B9348(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000034, 0x80000001CFA481E0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x455245485720200ALL, 0xEC000000313D3020);
  return 0;
}

uint64_t sub_1CF4B93EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 32) & 1) == 0)
  {
    v5 = result;
    result = sub_1CF4B53AC(result, a2, a3);
    if (!v4)
    {
      result = sub_1CF4B87BC(v5);
      if ((*(v3 + 32) & 1) == 0)
      {
        return sub_1CF4B2C5C(0xD000000000000023);
      }
    }
  }

  return result;
}

void sub_1CF4B9A30(uint64_t a1, void (*a2)(id, void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a3;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a4;
  v39 = a5;
  v40 = v5;
  v16 = (*(a5 + 24))(sub_1CF4C0454, v37, a4, a5, v13);
  if (!v6)
  {
    v17 = v16;
    v41 = v10;
    if ([v16 next])
    {
      v34 = a2;
      v36 = (v11 + 8);
      v18 = v41;
      while (1)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = v17;
        v21 = [v20 stringAtIndex_];
        if (!v21)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v21 = sub_1CF9E6888();
        }

        if ([v20 isNullAtIndex_])
        {
          goto LABEL_11;
        }

        v22 = [v20 dataAtIndex_];
        v23 = sub_1CF9E5B88();
        v25 = v24;

        sub_1CF4C2898(v23, v25);
        v32 = v26;
        sub_1CEFE4714(v23, v25);
        if (!v32)
        {
          break;
        }

        v34(v21, v32);

        v18 = v41;
LABEL_5:
        objc_autoreleasePoolPop(v19);
        if (([v20 next] & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v18 = v41;
LABEL_11:
      v27 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v28 = sub_1CF9E6108();
      v29 = sub_1CF9E72A8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1CEFC7000, v28, v29, "Unable to parse uploading error", v30, 2u);
        v31 = v30;
        v18 = v41;
        MEMORY[0x1D386CDC0](v31, -1, -1);
      }

      (*v36)(v15, v18);
      goto LABEL_5;
    }

LABEL_15:
  }
}

uint64_t sub_1CF4B9D74(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002DLL, 0x80000001CFA49F60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA49F90);
  return 0;
}

void sub_1CF4B9E20(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v21[-v15];
  v22 = a5;
  v23 = a6;
  v24 = v6;
  v25 = a1;
  v17 = (*(a6 + 24))(sub_1CF4C043C, v21, a5, a6, v14);
  if (!v7)
  {
    v18 = v17;
    if ([v17 next])
    {
      do
      {
        v19 = objc_autoreleasePoolPush();
        v20 = sub_1CF1CBB20();
        sub_1CF2408F8(v20, v18, 0, v16);

        a3(v16);
        sub_1CEFCCC44(v16, &unk_1EC4BE360, &qword_1CF9FE650);
        objc_autoreleasePoolPop(v19);
      }

      while (([v18 next] & 1) != 0);
    }
  }
}

uint64_t sub_1CF4B9FE4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA49EF0);
  v6 = [a1 bindLongParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);

  return 0x205443454C4553;
}

uint64_t sub_1CF4BA108(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v17[2] = a4;
  v17[3] = a5;
  v18 = v5;
  v9 = v8;
  v10 = (*(a5 + 24))(sub_1CF4C0430, v17, a4, a5);
  if (!v6)
  {
    v13 = v10;
    while ([v13 next])
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(v9 + 768);
      v16 = *(v9 + 784);
      sub_1CF4BA314(v13, a2, &v19, &v20);
      objc_autoreleasePoolPop(v14);
      if ((v20 & 1) == 0)
      {

        v11 = 0;
        return v11 & 1;
      }
    }

    v11 = 1;
  }

  return v11 & 1;
}

uint64_t sub_1CF4BA268(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  return 0x205443454C4553;
}

uint64_t sub_1CF4BA314@<X0>(void *a1@<X0>, uint64_t (*a2)(char *)@<X1>, void *a3@<X7>, _BYTE *a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16 - v11;
  v13 = sub_1CF1CBB20();
  sub_1CF2408F8(v13, a1, 0, v12);

  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    v15 = a2(v12);
    result = sub_1CEFCCC44(v12, &unk_1EC4BE360, &qword_1CF9FE650);
    *a4 = v15 & 1;
  }

  return result;
}

uint64_t sub_1CF4BA428(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  v4 = a2 + qword_1EDEBBD78;
  v5 = *(a2 + qword_1EDEBBD78);
  v6 = *(v4 + 8);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x44455845444E4920, 0xEC00000020594220);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA49F30);
  v7 = sub_1CF9E8268();
  v8 = [a1 bindObjectParameter_];

  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);

  return 0;
}

double sub_1CF4BA5A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v54 = a3;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 1);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v19 = type metadata accessor for Signpost(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v56 = v4;
  if (*(v4 + 32))
  {
    sub_1CF512520("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLSnapshot.swift", 130, 2, 3706);
  }

  v57 = a1;
  v64 = a2;
  v55 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a4;
  if (qword_1EDEAE980 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v22 = qword_1EDEBBE40;
    (v9[7])(v18, 1, 1, v8);
    sub_1CEFE74D8(v18, v15);
    v23 = v9[6];
    v24 = v23(v15, 1, v8);
    v25 = v52;
    if (v24 == 1)
    {
      v26 = v22;
      sub_1CF9E6048();
      if (v23(v15, 1, v8) != 1)
      {
        sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (v9[4])(v52, v15, v8);
    }

    v27 = v55;
    (v9[2])(v55, v25, v8);
    *(v27 + *(v19 + 20)) = v22;
    v28 = v27 + *(v19 + 24);
    *v28 = "SQLDB: building telemetry report";
    *(v28 + 8) = 32;
    *(v28 + 16) = 2;
    v29 = v22;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (v9[1])(v25, v8);
    v30 = sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
    v31 = MEMORY[0x1EEE9AC00](v30);
    v32 = v53;
    v33 = v54;
    *(&v50 - 4) = v64;
    *(&v50 - 3) = v33;
    *(&v50 - 2) = v56;
    v34 = *(v33 + 24);
    v35 = v34(sub_1CF4C0C58, v31);
    v18 = v32;
    if (v32)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      sub_1CF4C0A48(v27, type metadata accessor for Signpost);
      return result;
    }

    v8 = v35;
    v52 = &v50;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v36 = [v35 next];
    if (v36)
    {
      do
      {
        v37 = objc_autoreleasePoolPush();
        sub_1CF4BAC84(v8, &v58);
        objc_autoreleasePoolPop(v37);
        v36 = [v8 next];
      }

      while ((v36 & 1) != 0);
    }

    v53 = v29;
    v38 = MEMORY[0x1EEE9AC00](v36);
    *(&v50 - 4) = v64;
    *(&v50 - 3) = v33;
    *(&v50 - 2) = v56;
    v40 = v34(sub_1CF4C0C64, v38);
    v19 = *(&v63 + 1);
    v15 = v63;
    if (![v40 next])
    {
      break;
    }

    v9 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
    while (1)
    {
      v41 = objc_autoreleasePoolPush();
      v42 = [v40 unsignedLongAtIndex_];
      v43 = __CFADD__(v15, v42);
      v15 = &v42[v15];
      if (v43)
      {
        break;
      }

      v44 = v42;
      if (([v40 BOOLAtIndex_] & 1) == 0)
      {
        v43 = __CFADD__(v19, v44);
        v19 += v44;
        if (v43)
        {
          __break(1u);
          goto LABEL_19;
        }
      }

      objc_autoreleasePoolPop(v41);
      if (([v40 next] & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_19:
  *&v63 = v15;
  *(&v63 + 1) = v19;

  sub_1CF9E7458();
  v45 = v55;
  sub_1CF9E6038();
  sub_1CF4C0A48(v45, type metadata accessor for Signpost);
  v46 = v61;
  v47 = v51;
  v51[2] = v60;
  v47[3] = v46;
  v48 = v63;
  v47[4] = v62;
  v47[5] = v48;
  result = *&v58;
  v49 = v59;
  *v47 = v58;
  v47[1] = v49;
  return result;
}