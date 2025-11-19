uint64_t NodeValidator.policy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v3 = sub_22FFB0A08();
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v3);
  v74 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for KeyOptionsPolicy(0);
  v6 = *(*(v75 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v75);
  v83 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v68 - v9;
  v10 = type metadata accessor for SecureConfigPolicy(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v81 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v68 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v68 - v17;
  v19 = type metadata accessor for X509Policy();
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v80 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v68 - v24;
  v26 = type metadata accessor for NodeValidator();
  v27 = *(v1 + v26[10]);
  v28 = sub_22FFA5D10();
  sub_22FEBF3A4(v2 + v26[8], v18, &qword_27DAF1510, &qword_22FFB3800);
  *(v25 + 1) = MEMORY[0x277D84F90];
  v29 = v20[8];
  v30 = sub_22FFB0908();
  (*(*(v30 - 8) + 56))(&v25[v29], 1, 1, v30);
  v31 = &v25[v20[9]];
  *v31 = 0;
  v31[8] = 1;
  v32 = &v25[v20[10]];
  LODWORD(v73) = v27;
  *v25 = v27;
  sub_22FED2C04(v28);
  v78 = v25;
  sub_22FEB3E04(v18, &v25[v29]);
  *v32 = 0;
  *(v32 + 1) = 0;
  *v31 = 0;
  v31[8] = 1;
  v33 = *(v2 + v26[21]);
  if (v33)
  {
    v34 = v33;
    sub_22FECB480(v33);
    sub_22FE9AC3C(0);
    sub_22FEBAFF4(v33);
    sub_22FEA5C80(0);
    v72 = v33;
    v73 = 0;
    v71 = 0;
  }

  else
  {
    SEPAttestationPolicy.init(insecure:)(v73 ^ 1, &v102);
    v36 = v102;
    v35 = v103;
    v37 = v104;
    sub_22FECB480(v102);
    sub_22FE9AC3C(v35);
    v72 = v36;
    sub_22FEBAFF4(v36);
    v73 = v35;
    v71 = v37;
    sub_22FEA5C80(v35);
  }

  v38 = *(v2 + v26[16]);
  v69 = v33 == 0;
  v70 = v38;
  v39 = type metadata accessor for SEP.SealedHash(0);
  v40 = v84;
  (*(*(v39 - 8) + 56))(v84, 1, 1, v39);
  v41 = *(v2 + v26[9]);
  sub_22FEAF43C(v2 + 8, v114);
  v114[40] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A18, &unk_22FFB3820);
  v42 = v76;
  v43 = *(v76 + 72);
  v44 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v45 = swift_allocObject();
  v45[1] = xmmword_22FFB2D20;
  sub_22FFB09E8();
  sub_22FFB09D8();
  v102 = v45;
  sub_22FFA7E88(&qword_281491308, MEMORY[0x277CEE010]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A20, &unk_22FFC0180);
  sub_22FEBF78C(&qword_28148F150, &qword_27DAF1A20, &unk_22FFC0180);
  v46 = v74;
  v47 = v77;
  sub_22FFB1938();
  v48 = v79;
  (*(v42 + 32))(v79, v46, v47);
  type metadata accessor for KeyOptionsPolicy.Assertion(0);
  swift_storeEnumTagMultiPayload();
  v49 = *(v75 + 20);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  (*(*(v50 - 8) + 56))(v48 + v49, 1, 1, v50);
  v51 = v26[14];
  v52 = 3;
  v53 = v26[13];
  v54 = *(v2 + v26[12]);
  if (*(v2 + v26[15]))
  {
    v52 = 33816833;
  }

  v76 = v52;
  v55 = *(v2 + v53);
  v56 = *(v2 + v51);
  if (v54)
  {
    v57 = 1;
  }

  else
  {
    v57 = 2;
  }

  LODWORD(v75) = v57;
  if (v55)
  {
    v58 = 1;
  }

  else
  {
    v58 = 2;
  }

  if (v56)
  {
    v59 = 0;
  }

  else
  {
    v59 = 2;
  }

  sub_22FFA5E30();
  v61 = v60;
  LODWORD(v77) = *(v2 + v26[17]);
  v62 = v78;
  v63 = v80;
  sub_22FFA7DE0(v78, v80, type metadata accessor for X509Policy);
  v98 = v72;
  v99 = v73;
  v100 = v71;
  v101 = v69;
  v102 = v63;
  v103 = &v98;
  v96 = 0;
  v97 = v70;
  v105 = &v96;
  v64 = v40;
  v65 = v81;
  sub_22FFA7DE0(v64, v81, type metadata accessor for SecureConfigPolicy);
  v106 = v65;
  sub_22FFA5F40(v114, v95);
  v107 = v95;
  v66 = v83;
  sub_22FFA7DE0(v48, v83, type metadata accessor for KeyOptionsPolicy);
  v94 = 0;
  v93 = v76;
  v108 = v66;
  v109 = &v93;
  v90[0] = v75;
  v90[1] = v58;
  v90[2] = v59;
  v92 = 0;
  v91 = 2;
  v89[0] = v61;
  v89[1] = MEMORY[0x277D84F90];
  v110 = v90;
  v111 = v89;
  *(v88 + 7) = 0;
  v88[0] = 0;
  v85 = v77;
  v86 = 0;
  v87 = 0;
  v112 = v88;
  v113 = &v85;
  sub_22FFA1E58(&v102, v82);
  sub_22FFA6BC0(v48, type metadata accessor for KeyOptionsPolicy);
  sub_22FFA5F9C(v114);
  sub_22FFA6BC0(v84, type metadata accessor for SecureConfigPolicy);
  sub_22FFA6BC0(v62, type metadata accessor for X509Policy);

  sub_22FFA6BC0(v66, type metadata accessor for KeyOptionsPolicy);
  sub_22FFA5F9C(v95);
  sub_22FFA6BC0(v65, type metadata accessor for SecureConfigPolicy);

  sub_22FFA5FF0(v98, v99);
  return sub_22FFA6BC0(v63, type metadata accessor for X509Policy);
}

uint64_t NodeValidator.validate(bundle:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v7[32] = a6;
  v7[33] = v6;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  v8 = *(*(type metadata accessor for AttestationBundle(0) - 8) + 64) + 15;
  v7[34] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800) - 8) + 64) + 15;
  v7[35] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30) - 8) + 64) + 15;
  v7[36] = swift_task_alloc();
  v11 = sub_22FFB0EE8();
  v7[37] = v11;
  v12 = *(v11 - 8);
  v7[38] = v12;
  v13 = *(v12 + 64) + 15;
  v7[39] = swift_task_alloc();
  v14 = sub_22FFB0908();
  v7[40] = v14;
  v15 = *(v14 - 8);
  v7[41] = v15;
  v16 = *(v15 + 64) + 15;
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v17 = sub_22FFB13C8();
  v7[47] = v17;
  v18 = *(v17 - 8);
  v7[48] = v18;
  v19 = *(v18 + 64) + 15;
  v7[49] = swift_task_alloc();
  v20 = sub_22FFB1398();
  v7[50] = v20;
  v21 = *(v20 - 8);
  v7[51] = v21;
  v22 = *(v21 + 64) + 15;
  v7[52] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF21A8, &qword_22FFC01A0) - 8) + 64) + 15;
  v7[53] = swift_task_alloc();
  v24 = type metadata accessor for NodeValidator();
  v7[54] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v7[55] = swift_task_alloc();
  v26 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FFA07BC, 0, 0);
}

uint64_t sub_22FFA07BC()
{
  v24 = v0;
  v23[1] = *MEMORY[0x277D85DE8];
  if (qword_281490908 != -1)
  {
    swift_once();
  }

  v1 = v0[55];
  v2 = v0[33];
  v3 = sub_22FFB12F8();
  v0[56] = __swift_project_value_buffer(v3, qword_281491460);
  sub_22FFA7DE0(v2, v1, type metadata accessor for NodeValidator);
  v4 = sub_22FFB12D8();
  v5 = sub_22FFB1848();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[55];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23[0] = v9;
    *v8 = 136446210;
    v22 = *v7;
    v10 = Environment.rawValue.getter();
    v12 = v11;
    sub_22FFA6BC0(v7, type metadata accessor for NodeValidator);
    v13 = sub_22FF9E448(v10, v12, v23);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_22FE99000, v4, v5, "Validating attestation bundle in environment %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23190EFF0](v9, -1, -1);
    MEMORY[0x23190EFF0](v8, -1, -1);
  }

  else
  {

    sub_22FFA6BC0(v7, type metadata accessor for NodeValidator);
  }

  v14 = v0[53];
  v15 = v0[33];
  v16 = v0[30];
  sub_22FF88030();
  v0[22] = sub_22FFA7050(MEMORY[0x277D84F90]);
  NodeValidator.policy.getter(v14);
  v17 = swift_task_alloc();
  v0[57] = v17;
  *v17 = v0;
  v17[1] = sub_22FFA0A6C;
  v18 = v0[53];
  v19 = v0[30];
  v20 = *MEMORY[0x277D85DE8];

  return sub_22FFA2AA4(v19, (v0 + 22));
}

uint64_t sub_22FFA0A6C()
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 456);
  v8 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = sub_22FFA1C08;
  }

  else
  {
    sub_22FEAEA34(*(v2 + 424), &qword_27DAF21A8, &qword_22FFC01A0);
    v4 = sub_22FFA0BCC;
  }

  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FFA0BCC()
{
  v170 = v0;
  v169 = *MEMORY[0x277D85DE8];
  v1 = v0[22];
  if (*(v1 + 16) && (v2 = sub_22FFA62AC(&type metadata for SEPAttestationPolicy, &protocol witness table for SEPAttestationPolicy, 0xD000000000000014, 0x800000022FFC9B50), (v3 & 1) != 0))
  {
    sub_22FEBF2A4(*(v1 + 56) + 32 * v2, (v0 + 2));
  }

  else
  {
    *(v0 + 1) = 0u;
    *(v0 + 2) = 0u;
  }

  v164 = v0;
  if (v0[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
    if (swift_dynamicCast())
    {
      v161 = *(v0 + 3);
      v163 = *(v0 + 4);
      v4 = v0[58];
      goto LABEL_12;
    }
  }

  else
  {
    sub_22FEAEA34((v0 + 2), &qword_27DAF1A78, &unk_22FFB3A50);
  }

  v4 = v0[58];
  v5 = v0[30];
  v6 = *(v5 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  sub_22FEA5608(v8, v7);
  SEP.Attestation.init(from:)(v8, v7, &v165);
  if (v4)
  {
    v9 = v4;
    v10 = v0[22];

LABEL_16:
    v21 = v0[56];
    v22 = v9;
    v23 = sub_22FFB12D8();
    v24 = sub_22FFB1838();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      v27 = v9;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_22FE99000, v23, v24, "AttestationBundle validation failed: %{public}@", v25, 0xCu);
      sub_22FEAEA34(v26, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v26, -1, -1);
      MEMORY[0x23190EFF0](v25, -1, -1);
    }

    v29 = v0[55];
    v31 = v0[52];
    v30 = v0[53];
    v32 = v164[49];
    v33 = v164[46];
    v34 = v164[45];
    v35 = v164[44];
    v36 = v23;
    v37 = v164[43];
    v152 = v164[42];
    v155 = v164[39];
    v157 = v164[36];
    v160 = v164[35];
    v162 = v164[34];

    swift_willThrow();

    v38 = v164[1];
    v39 = *MEMORY[0x277D85DE8];
    goto LABEL_19;
  }

  v161 = v165;
  v163 = v166;
LABEL_12:
  v11 = v0 + 22;
  v159 = v0[56];
  v13 = v0[31];
  v12 = v0[32];
  v14 = v0[30];
  v0[23] = 0;
  v0[24] = 0;
  v15 = swift_task_alloc();
  *(v15 + 16) = v0 + 23;
  *(v15 + 24) = v0 + 24;
  sub_22FED55F8(v163, *(&v163 + 1), sub_22FEBF260);

  v16 = v165;
  sub_22FF85468(v13, v12, v165, *(&v165 + 1), v14, v159);
  v9 = v4;
  sub_22FEA56EC(v16, *(&v16 + 1));
  if (v4)
  {
    sub_22FEA55AC(v161, *(&v161 + 1));
    sub_22FEA55AC(v163, *(&v163 + 1));
    v17 = *v11;

    goto LABEL_16;
  }

  v165 = v161;
  v166 = v163;
  SEP.Attestation.publicKeyData.getter(&v167);
  v18 = v168;
  if ((~v168 & 0x3000000000000000) == 0)
  {
    v19 = *v11;

    type metadata accessor for CloudAttestationError(0);
    sub_22FFA7E88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
    v9 = swift_allocError();
    *v20 = 0xD000000000000017;
    v20[1] = 0x800000022FFC9B70;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22FEA55AC(v161, *(&v161 + 1));
    sub_22FEA55AC(v163, *(&v163 + 1));
    goto LABEL_16;
  }

  v153 = v163;
  v41 = v167;
  v42 = v0[56];
  sub_22FEA5600(v167, v168);
  v43 = sub_22FFB12D8();
  v44 = sub_22FFB1848();
  sub_22FEBF27C(v41, v18);
  v156 = v41;
  v158 = v18;
  if (os_log_type_enabled(v43, v44))
  {
    v138 = v0[52];
    v146 = v0[51];
    v142 = v0[50];
    v45 = v0[49];
    v46 = v0[48];
    v47 = v0[47];
    buf = swift_slowAlloc();
    v148 = swift_slowAlloc();
    *&v165 = v148;
    *buf = 136446210;
    sub_22FEA5600(v41, v18);
    sub_22FFA7E88(&qword_28148F198, MEMORY[0x277CC5540]);
    v140 = v44;
    sub_22FFB1388();
    sub_22FEA5600(v41, v18);
    sub_22FF9EA78(v41, v18 & 0xDFFFFFFFFFFFFFFFLL);
    sub_22FEBF27C(v41, v18);
    sub_22FFB1368();
    sub_22FEBF27C(v41, v18);
    (*(v46 + 8))(v45, v47);
    sub_22FFA7E88(&qword_28148F1B0, MEMORY[0x277CC5290]);
    v48 = sub_22FFB1BA8();
    v50 = v49;
    (*(v146 + 8))(v138, v142);
    v51 = sub_22FF9E448(v48, v50, &v165);

    *(buf + 4) = v51;
    _os_log_impl(&dword_22FE99000, v43, v140, "AttestationBundle passed validation for public key: %{public}s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v148);
    MEMORY[0x23190EFF0](v148, -1, -1);
    MEMORY[0x23190EFF0](buf, -1, -1);
  }

  v52 = v0[46];
  v54 = v0[37];
  v53 = v0[38];
  v55 = v0[36];
  v56 = v0[33];
  v57 = v0[30];
  v58 = *(v56 + 48);
  v59 = *(v56 + 56);
  sub_22FFB1D28();
  sub_22FFB1D28();
  sub_22FFB0898();
  v60 = *(v57 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v61 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(v60 + v61, v55, &qword_27DAF1520, &qword_22FFB3A30);
  v62 = *(v53 + 48);
  if (v62(v55, 1, v54) == 1)
  {
    v64 = v0[36];
    v63 = v0[37];
    sub_22FFB0ED8();
    if (v62(v64, 1, v63) != 1)
    {
      sub_22FEAEA34(v0[36], &qword_27DAF1520, &qword_22FFB3A30);
    }
  }

  else
  {
    (*(v0[38] + 32))(v0[39], v0[36], v0[37]);
  }

  v66 = v0[45];
  v65 = v0[46];
  v67 = v0[44];
  v69 = v0[40];
  v68 = v0[41];
  v71 = v0[38];
  v70 = v0[39];
  v72 = v0[37];
  v73 = v0[35];
  sub_22FFB0EB8();
  (*(v71 + 8))(v70, v72);
  if (sub_22FFB0888())
  {
    v74 = v66;
  }

  else
  {
    v74 = v65;
  }

  *&v163 = *(v68 + 16);
  (v163)(v67, v74, v69);
  *&v165 = v0[22];
  AttestationPolicyContext.proofExpiration.getter(v73);
  if ((*(v68 + 48))(v73, 1, v69) == 1)
  {
    sub_22FEAEA34(v0[35], &qword_27DAF1510, &qword_22FFB3800);
    v75 = v0;
    v76 = v0 + 22;
  }

  else
  {
    v77 = v0[44];
    (*(v0[41] + 32))(v0[43], v0[35], v0[40]);
    v75 = v0;
    v76 = v0 + 22;
    if (sub_22FFB0888())
    {
      (*(v164[41] + 40))(v164[44], v164[43], v164[40]);
    }

    else
    {
      (*(v164[41] + 8))(v164[43], v164[40]);
    }
  }

  v78 = v75[44];
  v80 = v75[41];
  v79 = v75[42];
  v81 = v75[40];
  sub_22FFB08E8();
  LOBYTE(v78) = sub_22FFB0878();
  v82 = *(v80 + 8);
  v82(v79, v81);
  if (v78)
  {
    if ((*(v75[33] + *(v75[54] + 72)) & 1) == 0)
    {
      v126 = v75[46];
      v127 = v164[45];
      v128 = v164[44];
      v129 = v164[41];
      v130 = v164[40];
      v131 = v164[22];

      type metadata accessor for CloudAttestationError(0);
      sub_22FFA7E88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
      v9 = swift_allocError();
      (v163)(v132, v128, v130);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_22FEA55AC(v161, *(&v161 + 1));
      sub_22FEA55AC(v153, *(&v163 + 1));
      sub_22FEBF27C(v156, v158);
      v0 = v164;
      v82(v127, v130);
      v82(v126, v130);
      v82(v128, v130);
      goto LABEL_16;
    }

    v83 = v75[56];
    v84 = sub_22FFB12D8();
    v85 = sub_22FFB1838();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = v75[44];
      v87 = v75[40];
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *&v165 = v89;
      *v88 = 136446210;
      swift_beginAccess();
      sub_22FFA7E88(&qword_281491330, MEMORY[0x277CC9578]);
      v90 = sub_22FFB1BA8();
      v92 = sub_22FF9E448(v90, v91, &v165);

      *(v88 + 4) = v92;
      _os_log_impl(&dword_22FE99000, v84, v85, "Allowing expired bundle to fail open: expiration=%{public}s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v89);
      v93 = v89;
      v75 = v164;
      MEMORY[0x23190EFF0](v93, -1, -1);
      MEMORY[0x23190EFF0](v88, -1, -1);
    }
  }

  v151 = v82;
  v94 = v75[44];
  v95 = v75[40];
  v96 = v75[41];
  v97 = v75[34];
  v98 = v75[30];
  v99 = v75[27];
  v100 = v75[28];
  *v99 = v156;
  v99[1] = v158;
  swift_beginAccess();
  (v163)(v100, v94, v95);
  sub_22FFA7DE0(v98, v97, type metadata accessor for AttestationBundle);
  v75[25] = 0;
  v75[26] = 0;
  v101 = swift_task_alloc();
  *(v101 + 16) = v76 + 3;
  *(v101 + 24) = v76 + 4;
  sub_22FEBF290(v156, v158);
  v102 = v153;
  sub_22FED55F8(v153, *(&v163 + 1), sub_22FEB341C);

  v103 = 0;
  v104 = 0;
  if (v166 != 2)
  {
    v106 = v165;
    v105 = *(&v165 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_22FFB2D20;
    v108 = MEMORY[0x277D84D30];
    *(v107 + 56) = MEMORY[0x277D84CC0];
    *(v107 + 64) = v108;
    v109 = MEMORY[0x277D84D38];
    *(v107 + 32) = v106;
    v102 = v153;
    v110 = MEMORY[0x277D84D90];
    *(v107 + 96) = v109;
    *(v107 + 104) = v110;
    *(v107 + 72) = v105;
    v103 = sub_22FFB14D8();
  }

  v133 = v103;
  v134 = v104;
  v139 = v75[55];
  v141 = v75[53];
  v143 = v75[52];
  bufa = v75[49];
  v111 = v75[45];
  v112 = v75[46];
  v147 = v75[43];
  v149 = v75[42];
  v113 = v75[40];
  v150 = v75[39];
  v154 = v75[36];
  *&v163 = v75[35];
  v114 = v75[34];
  v137 = v75[44];
  v115 = v75[29];
  v167 = v75[22];
  v116 = sub_22FEE2580();
  v135 = v117;
  v136 = v116;
  *&v165 = v75[22];
  v118 = AttestationPolicyContext.releaseDigest.getter();
  v120 = v119;
  sub_22FEA55AC(v161, *(&v161 + 1));
  sub_22FEA55AC(v102, *(&v163 + 1));
  sub_22FEBF27C(v156, v158);
  v151(v111, v113);
  v151(v112, v113);

  v121 = type metadata accessor for Validated.AttestationBundle(0);
  *(v115 + v121[8]) = 0;
  sub_22FFA7D78(v114, v115, type metadata accessor for AttestationBundle);
  v151(v137, v113);
  v122 = (v115 + v121[5]);
  *v122 = v133;
  v122[1] = v134;
  v123 = (v115 + v121[6]);
  *v123 = v136;
  v123[1] = v135;
  v124 = (v115 + v121[7]);
  *v124 = v118;
  v124[1] = v120;

  v38 = v164[1];
  v125 = *MEMORY[0x277D85DE8];
LABEL_19:

  return v38();
}

uint64_t sub_22FFA1C08()
{
  v28 = *MEMORY[0x277D85DE8];
  sub_22FEAEA34(v0[53], &qword_27DAF21A8, &qword_22FFC01A0);
  v1 = v0[22];

  v2 = v0[58];
  v3 = v0[56];
  v4 = v2;
  v5 = sub_22FFB12D8();
  v6 = sub_22FFB1838();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FE99000, v5, v6, "AttestationBundle validation failed: %{public}@", v7, 0xCu);
    sub_22FEAEA34(v8, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v8, -1, -1);
    MEMORY[0x23190EFF0](v7, -1, -1);
  }

  v11 = v0[55];
  v13 = v0[52];
  v12 = v0[53];
  v14 = v0[49];
  v15 = v0[45];
  v16 = v0[46];
  v17 = v5;
  v18 = v0[44];
  v22 = v0[43];
  v23 = v0[42];
  v24 = v0[39];
  v25 = v0[36];
  v26 = v0[35];
  v27 = v0[34];

  swift_willThrow();

  v19 = v0[1];
  v20 = *MEMORY[0x277D85DE8];

  return v19();
}

uint64_t sub_22FFA1E58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39F8, &qword_22FFC02F8);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  type metadata accessor for X509Policy();
  sub_22FFA7DE0(*a1, v7, type metadata accessor for X509Policy);
  v37[0] = v7;
  v8 = &v7[v4[14]];
  v9 = a1[1];
  v10 = *(v9 + 8);
  v35 = *v9;
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  *v8 = v35;
  *(v8 + 8) = v10;
  *(v8 + 16) = v11;
  *(v8 + 24) = v12;
  v37[1] = v8;
  v13 = &v7[v4[30]];
  v14 = a1[5];
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 8);
  *v13 = v15;
  *(v13 + 8) = v14;
  v37[5] = v13;
  type metadata accessor for SecureConfigPolicy(0);
  v16 = &v7[v4[34]];
  sub_22FFA7DE0(a1[6], v16, type metadata accessor for SecureConfigPolicy);
  v37[6] = v16;
  v17 = &v7[v4[38]];
  sub_22FFA5F40(a1[7], v17);
  v37[7] = v17;
  type metadata accessor for KeyOptionsPolicy(0);
  v18 = &v7[v4[42]];
  sub_22FFA7DE0(a1[8], v18, type metadata accessor for KeyOptionsPolicy);
  v37[8] = v18;
  v19 = &v7[v4[46]];
  v20 = a1[9];
  v21 = a1[10];
  v22 = *(v20 + 4);
  *v19 = *v20;
  *(v19 + 4) = v22;
  v37[9] = v19;
  v23 = &v7[v4[50]];
  LOWORD(v20) = *v21;
  LOBYTE(v22) = *(v21 + 2);
  v24 = *(v21 + 5);
  LOWORD(v21) = *(v21 + 3);
  *v23 = v20;
  *(v23 + 2) = v22;
  *(v23 + 3) = v21;
  *(v23 + 5) = v24;
  v37[10] = v23;
  v25 = &v7[v4[54]];
  v26 = a1[11];
  v27 = a1[12];
  v28 = v26[1];
  *v25 = *v26;
  *(v25 + 1) = v28;
  v37[11] = v25;
  v29 = &v7[v4[58]];
  v30 = *v27;
  LOBYTE(v26) = *(v27 + 8);
  LOBYTE(v22) = *(v27 + 9);
  LOBYTE(v27) = *(v27 + 10);
  *v29 = v30;
  *(v29 + 8) = v26;
  *(v29 + 9) = v22;
  *(v29 + 10) = v27;
  v37[12] = v29;
  v31 = &v7[v4[62]];
  v32 = a1[13];
  LOBYTE(v27) = *v32;
  v33 = *(v32 + 8);
  LOBYTE(v32) = *(v32 + 16);
  *v31 = v27;
  *(v31 + 8) = v33;
  *(v31 + 16) = v32;
  v37[13] = v31;
  sub_22FFA2374(v37, v36);
  sub_22FFA7E48(v35, v10);
}

uint64_t sub_22FFA20EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39F0, &qword_22FFC02E8);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v36 - v7;
  type metadata accessor for X509Policy();
  sub_22FFA7DE0(*a1, v8, type metadata accessor for X509Policy);
  v36[0] = v8;
  v9 = &v8[v5[14]];
  sub_22FEBF3A4(a1[1], v9, &qword_27DAF1A10, &qword_22FFC02F0);
  v36[1] = v9;
  v10 = &v8[v5[18]];
  v11 = a1[2];
  v13 = *v11;
  v12 = *(v11 + 8);
  v14 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 1) = v12;
  *(v10 + 2) = v14;
  v36[2] = v10;
  v15 = &v8[v5[30]];
  v16 = a1[5];
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  *v15 = v17;
  *(v15 + 8) = v16;
  v36[5] = v15;
  type metadata accessor for SecureConfigPolicy(0);
  v18 = &v8[v5[34]];
  sub_22FFA7DE0(a1[6], v18, type metadata accessor for SecureConfigPolicy);
  v36[6] = v18;
  type metadata accessor for KeyOptionsPolicy(0);
  v19 = &v8[v5[38]];
  sub_22FFA7DE0(a1[7], v19, type metadata accessor for KeyOptionsPolicy);
  v36[7] = v19;
  type metadata accessor for SoftwareReleasePolicy();
  v20 = &v8[v5[42]];
  sub_22FFA7DE0(a1[8], v20, type metadata accessor for SoftwareReleasePolicy);
  v36[8] = v20;
  v21 = &v8[v5[46]];
  v22 = a1[9];
  v23 = a1[10];
  v24 = *v22;
  v25 = *(v22 + 1);
  v26 = *(v22 + 2);
  v27 = *(v22 + 12);
  v28 = *(v22 + 4);
  LODWORD(v22) = *(v22 + 20);
  *v21 = v24;
  *(v21 + 1) = v25;
  *(v21 + 2) = v26;
  *(v21 + 4) = v28;
  *(v21 + 12) = v27;
  *(v21 + 20) = v22;
  v36[9] = v21;
  v29 = &v8[v5[50]];
  LOWORD(v22) = *v23;
  v30 = *(v23 + 2);
  v31 = *(v23 + 3);
  LOBYTE(v23) = *(v23 + 5);
  *v29 = v22;
  *(v29 + 2) = v30;
  *(v29 + 5) = v23;
  *(v29 + 3) = v31;
  v36[10] = v29;
  v32 = &v8[v5[54]];
  v33 = a1[11];
  v34 = v33[1];
  *v32 = *v33;
  *(v32 + 1) = v34;
  v36[11] = v32;
  sub_22FFA2514(v36, a2);
  sub_22FECB480(v13);
  sub_22FE9AC3C(v12);
}

__n128 sub_22FFA2374@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22FFA7D78(*a1, a2, type metadata accessor for X509Policy);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39F8, &qword_22FFC02F8);
  v5 = a2 + v4[12];
  v6 = a1[1];
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  *v5 = *v6;
  *(v5 + 16) = v7;
  *(v5 + 24) = v8;
  v9 = a2 + v4[28];
  v11 = a1[5];
  v10 = a1[6];
  v12 = *v11;
  LOBYTE(v11) = *(v11 + 8);
  *v9 = v12;
  *(v9 + 8) = v11;
  sub_22FFA7D78(v10, a2 + v4[32], type metadata accessor for SecureConfigPolicy);
  v13 = (a2 + v4[36]);
  v15 = a1[7];
  v14 = a1[8];
  v16 = *v15;
  v17 = v15[1];
  *(v13 + 25) = *(v15 + 25);
  *v13 = v16;
  v13[1] = v17;
  sub_22FFA7D78(v14, a2 + v4[40], type metadata accessor for KeyOptionsPolicy);
  v18 = a2 + v4[44];
  v19 = a1[9];
  v20 = a1[10];
  v21 = *v19;
  *(v18 + 4) = *(v19 + 4);
  *v18 = v21;
  v22 = a2 + v4[48];
  LOWORD(v19) = *v20;
  LOBYTE(v21) = *(v20 + 2);
  v23 = *(v20 + 5);
  LOWORD(v20) = *(v20 + 3);
  *v22 = v19;
  *(v22 + 2) = v21;
  *(v22 + 3) = v20;
  *(v22 + 5) = v23;
  v24 = a1[12];
  result = *a1[11];
  *(a2 + v4[52]) = result;
  v26 = a2 + v4[56];
  v27 = *v24;
  LOBYTE(v21) = *(v24 + 8);
  v28 = *(v24 + 9);
  LOBYTE(v24) = *(v24 + 10);
  *v26 = v27;
  *(v26 + 8) = v21;
  *(v26 + 9) = v28;
  *(v26 + 10) = v24;
  v29 = a2 + v4[60];
  v30 = a1[13];
  LOBYTE(v24) = *v30;
  v31 = *(v30 + 8);
  LOBYTE(v30) = *(v30 + 16);
  *v29 = v24;
  *(v29 + 8) = v31;
  *(v29 + 16) = v30;
  return result;
}

__n128 sub_22FFA2514@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22FFA7D78(*a1, a2, type metadata accessor for X509Policy);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39F0, &qword_22FFC02E8);
  sub_22FEBF4E4(a1[1], a2 + v4[12], &qword_27DAF1A10, &qword_22FFC02F0);
  v5 = a2 + v4[16];
  v6 = a1[2];
  v7 = *(v6 + 16);
  *v5 = *v6;
  *(v5 + 16) = v7;
  v8 = a2 + v4[28];
  v10 = a1[5];
  v9 = a1[6];
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  *v8 = v11;
  *(v8 + 8) = v10;
  sub_22FFA7D78(v9, a2 + v4[32], type metadata accessor for SecureConfigPolicy);
  sub_22FFA7D78(a1[7], a2 + v4[36], type metadata accessor for KeyOptionsPolicy);
  sub_22FFA7D78(a1[8], a2 + v4[40], type metadata accessor for SoftwareReleasePolicy);
  v12 = a2 + v4[44];
  v13 = a1[9];
  v14 = a1[10];
  v15 = *v13;
  v16 = *(v13 + 1);
  v17 = *(v13 + 2);
  v18 = *(v13 + 12);
  v19 = *(v13 + 4);
  LODWORD(v13) = *(v13 + 20);
  *v12 = v15;
  *(v12 + 1) = v16;
  *(v12 + 2) = v17;
  *(v12 + 4) = v19;
  *(v12 + 12) = v18;
  *(v12 + 20) = v13;
  v20 = a2 + v4[48];
  LOWORD(v13) = *v14;
  v21 = *(v14 + 2);
  v22 = *(v14 + 5);
  LOWORD(v14) = *(v14 + 3);
  *v20 = v13;
  *(v20 + 2) = v21;
  *(v20 + 3) = v14;
  *(v20 + 5) = v22;
  v23 = a1[11];
  result = *v23;
  *(a2 + v4[52]) = *v23;
  return result;
}

__n128 sub_22FFA26AC@<Q0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39F8, &qword_22FFC02F8);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  sub_22FEBF3A4(v2, &v37 - v7, &qword_27DAF39F8, &qword_22FFC02F8);
  sub_22FFA7D78(v8, *a1, type metadata accessor for X509Policy);
  v9 = a1[1];
  v10 = &v8[v5[14]];
  v11 = *(v10 + 2);
  v12 = v10[24];
  *v9 = *v10;
  *(v9 + 16) = v11;
  *(v9 + 24) = v12;
  v13 = &v8[v5[30]];
  v14 = *v13;
  LOBYTE(v13) = v13[8];
  v16 = a1[5];
  v15 = a1[6];
  *v16 = v14;
  *(v16 + 8) = v13;
  sub_22FFA7D78(&v8[v5[34]], v15, type metadata accessor for SecureConfigPolicy);
  v17 = &v8[v5[38]];
  v18 = *v17;
  v19 = *(v17 + 1);
  v20 = *(v17 + 25);
  v22 = a1[7];
  v21 = a1[8];
  *(v22 + 25) = v20;
  *v22 = v18;
  v22[1] = v19;
  sub_22FFA7D78(&v8[v5[42]], v21, type metadata accessor for KeyOptionsPolicy);
  v23 = &v8[v5[46]];
  v24 = *v23;
  v25 = a1[9];
  v26 = a1[10];
  *(v25 + 4) = *(v23 + 2);
  *v25 = v24;
  v27 = &v8[v5[50]];
  LOWORD(v24) = *v27;
  LOBYTE(v25) = v27[2];
  v28 = v27[5];
  LOWORD(v27) = *(v27 + 3);
  *v26 = v24;
  *(v26 + 2) = v25;
  *(v26 + 3) = v27;
  *(v26 + 5) = v28;
  result = *&v8[v5[54]];
  v30 = a1[12];
  *a1[11] = result;
  v31 = &v8[v5[58]];
  v32 = *v31;
  LOBYTE(v26) = v31[8];
  v33 = v31[9];
  LOBYTE(v31) = v31[10];
  *v30 = v32;
  *(v30 + 8) = v26;
  *(v30 + 9) = v33;
  *(v30 + 10) = v31;
  v34 = a1[13];
  v35 = &v8[v5[62]];
  LOBYTE(v32) = *v35;
  v36 = *(v35 + 1);
  LOBYTE(v35) = v35[16];
  *v34 = v32;
  *(v34 + 8) = v36;
  *(v34 + 16) = v35;
  return result;
}

__n128 sub_22FFA28AC@<Q0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39F0, &qword_22FFC02E8);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  sub_22FEBF3A4(v2, &v30 - v7, &qword_27DAF39F0, &qword_22FFC02E8);
  sub_22FFA7D78(v8, *a1, type metadata accessor for X509Policy);
  sub_22FEBF4E4(&v8[v5[14]], a1[1], &qword_27DAF1A10, &qword_22FFC02F0);
  v9 = a1[2];
  v10 = &v8[v5[18]];
  v11 = *(v10 + 2);
  *v9 = *v10;
  *(v9 + 16) = v11;
  v12 = &v8[v5[30]];
  v13 = *v12;
  LOBYTE(v12) = v12[8];
  v15 = a1[5];
  v14 = a1[6];
  *v15 = v13;
  *(v15 + 8) = v12;
  sub_22FFA7D78(&v8[v5[34]], v14, type metadata accessor for SecureConfigPolicy);
  sub_22FFA7D78(&v8[v5[38]], a1[7], type metadata accessor for KeyOptionsPolicy);
  sub_22FFA7D78(&v8[v5[42]], a1[8], type metadata accessor for SoftwareReleasePolicy);
  v16 = &v8[v5[46]];
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = *(v16 + 12);
  v21 = *(v16 + 5);
  v22 = *(v16 + 4);
  v23 = a1[9];
  v24 = a1[10];
  *v23 = v17;
  *(v23 + 1) = v18;
  *(v23 + 2) = v19;
  *(v23 + 4) = v22;
  *(v23 + 12) = v20;
  *(v23 + 20) = v21;
  v25 = &v8[v5[50]];
  v26 = *v25;
  v27 = v25[2];
  v28 = v25[5];
  LOWORD(v25) = *(v25 + 3);
  *v24 = v26;
  *(v24 + 2) = v27;
  *(v24 + 3) = v25;
  *(v24 + 5) = v28;
  result = *&v8[v5[54]];
  *a1[11] = result;
  return result;
}

uint64_t sub_22FFA2AA4(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39F8, &qword_22FFC02F8);
  v3[19] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FFA2B48, 0, 0);
}

uint64_t sub_22FFA2B48()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v0[21] = type metadata accessor for X509Policy();
  v0[2] = v1;
  v0[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3A00, &qword_22FFC0300);
  v0[3] = v1 + v2[12];
  v0[7] = v1 + v2[28];
  v0[23] = type metadata accessor for SecureConfigPolicy(0);
  v0[8] = v1 + v2[32];
  v0[9] = v1 + v2[36];
  v0[24] = type metadata accessor for KeyOptionsPolicy(0);
  v0[10] = v1 + v2[40];
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3A08, &unk_22FFC0308);
  v0[11] = v1 + v2[44];
  v0[12] = v1 + v2[48];
  v0[13] = v1 + v2[52];
  v0[14] = v1 + v2[56];
  v0[15] = v1 + v2[60];
  sub_22FFA26AC(v0 + 2);
  v5 = v0[20];
  v4 = v0[21];
  v0[26] = 0;
  v0[27] = v4;
  v6 = *(v0[19] + 32);
  v7 = *(v4 - 8);
  v8 = v7;
  v0[28] = v7;
  v9 = *(v7 + 64) + 15;
  v0[29] = swift_task_alloc();
  (*(v8 + 16))();
  v15 = off_2844DA3A0 + *off_2844DA3A0;
  v10 = *(off_2844DA3A0 + 1);
  v11 = swift_task_alloc();
  v0[30] = v11;
  *v11 = v0;
  v11[1] = sub_22FFA2DD8;
  v13 = v0[16];
  v12 = v0[17];

  return (v15)(v13, v12, v4, &protocol witness table for X509Policy);
}

uint64_t sub_22FFA2DD8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  (*(v2[28] + 8))(v2[29], v2[27]);
  if (v0)
  {
    v5 = sub_22FFA32A8;
  }

  else
  {

    v5 = sub_22FFA2F4C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FFA2F4C()
{
  v1 = v0[26];
  v0[26] = v1 + 1;
  v2 = &protocol witness table for APTicketPolicy;
  v3 = &type metadata for APTicketPolicy;
  v4 = 2;
  switch(v1)
  {
    case 1:
      goto LABEL_17;
    case 2:
      v2 = &protocol witness table for LocalBootPolicy;
      v3 = &type metadata for LocalBootPolicy;
      v4 = 3;
      goto LABEL_17;
    case 3:
      v2 = &protocol witness table for SEPImagePolicy;
      v3 = &type metadata for SEPImagePolicy;
      v4 = 4;
      goto LABEL_17;
    case 4:
      v2 = &protocol witness table for CryptexPolicy;
      v3 = &type metadata for CryptexPolicy;
      v4 = 5;
      goto LABEL_17;
    case 5:
      v3 = v0[23];
      v2 = &protocol witness table for SecureConfigPolicy;
      v4 = 6;
      goto LABEL_17;
    case 6:
      v2 = &protocol witness table for TransparencyPolicy;
      v3 = &type metadata for TransparencyPolicy;
      v4 = 7;
      goto LABEL_17;
    case 7:
      v3 = v0[24];
      v2 = &protocol witness table for KeyOptionsPolicy;
      v4 = 8;
      goto LABEL_17;
    case 8:
      v3 = v0[25];
      v2 = &protocol witness table for PolicyBuilder.OptionalPolicy<A>;
      v4 = 9;
      goto LABEL_17;
    case 9:
      v2 = &protocol witness table for DeviceModePolicy;
      v3 = &type metadata for DeviceModePolicy;
      v4 = 10;
      goto LABEL_17;
    case 10:
      v2 = &protocol witness table for DarwinInitPolicy;
      v3 = &type metadata for DarwinInitPolicy;
      v4 = 11;
      goto LABEL_17;
    case 11:
      v2 = &protocol witness table for RoutingHintPolicy;
      v3 = &type metadata for RoutingHintPolicy;
      v4 = 12;
      goto LABEL_17;
    case 12:
      v2 = &protocol witness table for EnsembleMembersPolicy;
      v3 = &type metadata for EnsembleMembersPolicy;
      v4 = 13;
      goto LABEL_17;
    case 13:
      sub_22FEAEA34(v0[20], &qword_27DAF39F8, &qword_22FFC02F8);

      v5 = v0[1];

      return v5();
    default:
      v3 = v0[22];
      v2 = &protocol witness table for PolicyBuilder.ConditionalPolicy<A, B>;
      v4 = 1;
LABEL_17:
      v0[27] = v3;
      v7 = v0[20];
      v8 = *(v0[19] + 16 * v4 + 32);
      Description = v3[-1].Description;
      v10 = Description;
      v0[28] = Description;
      v11 = Description[8] + 15;
      v0[29] = swift_task_alloc();
      (v10[2])();
      v12 = v2[1];
      v17 = (v12 + *v12);
      v13 = v12[1];
      v14 = swift_task_alloc();
      v0[30] = v14;
      *v14 = v0;
      v14[1] = sub_22FFA2DD8;
      v16 = v0[16];
      v15 = v0[17];

      return (v17)(v16, v15, v3, v2);
  }
}

uint64_t sub_22FFA32A8()
{
  v1 = v0[29];
  v2 = v0[20];

  sub_22FEAEA34(v2, &qword_27DAF39F8, &qword_22FFC02F8);

  v3 = v0[1];
  v4 = v0[31];

  return v3();
}

uint64_t sub_22FFA3330(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39F0, &qword_22FFC02E8);
  v3[17] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FFA33D4, 0, 0);
}

uint64_t sub_22FFA33D4()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v0[19] = type metadata accessor for X509Policy();
  v0[2] = v1;
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A10, &qword_22FFC02F0);
  v0[3] = v1 + v2[12];
  v0[4] = v1 + v2[16];
  v0[7] = v1 + v2[28];
  v0[21] = type metadata accessor for SecureConfigPolicy(0);
  v0[8] = v1 + v2[32];
  v0[22] = type metadata accessor for KeyOptionsPolicy(0);
  v0[9] = v1 + v2[36];
  v0[23] = type metadata accessor for SoftwareReleasePolicy();
  v0[10] = v1 + v2[40];
  v0[11] = v1 + v2[44];
  v0[12] = v1 + v2[48];
  v0[13] = v1 + v2[52];
  sub_22FFA28AC(v0 + 2);
  v5 = v0[18];
  v4 = v0[19];
  v0[24] = 0;
  v0[25] = v4;
  v6 = *(v0[17] + 32);
  v7 = *(v4 - 8);
  v8 = v7;
  v0[26] = v7;
  v9 = *(v7 + 64) + 15;
  v0[27] = swift_task_alloc();
  (*(v8 + 16))();
  v15 = off_2844DA3A0 + *off_2844DA3A0;
  v10 = *(off_2844DA3A0 + 1);
  v11 = swift_task_alloc();
  v0[28] = v11;
  *v11 = v0;
  v11[1] = sub_22FFA364C;
  v13 = v0[14];
  v12 = v0[15];

  return (v15)(v13, v12, v4, &protocol witness table for X509Policy);
}

uint64_t sub_22FFA364C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  (*(v2[26] + 8))(v2[27], v2[25]);
  if (v0)
  {
    v5 = sub_22FFA3B28;
  }

  else
  {

    v5 = sub_22FFA37C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FFA37C0()
{
  v1 = v0[24];
  v0[24] = v1 + 1;
  if (v1 <= 5)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v5 = &protocol witness table for SEPImagePolicy;
        v4 = &type metadata for SEPImagePolicy;
        v3 = 4;
      }

      else if (v1 == 4)
      {
        v5 = &protocol witness table for CryptexPolicy;
        v4 = &type metadata for CryptexPolicy;
        v3 = 5;
      }

      else
      {
        v4 = v0[21];
        v5 = &protocol witness table for SecureConfigPolicy;
        v3 = 6;
      }
    }

    else if (v1)
    {
      v2 = v1 == 1;
      v3 = 3;
      if (v2)
      {
        v3 = 2;
        v4 = &type metadata for SEPAttestationPolicy;
      }

      else
      {
        v4 = &type metadata for APTicketPolicy;
      }

      if (v2)
      {
        v5 = &protocol witness table for SEPAttestationPolicy;
      }

      else
      {
        v5 = &protocol witness table for APTicketPolicy;
      }
    }

    else
    {
      v4 = v0[20];
      v5 = &protocol witness table for PolicyBuilder.OptionalPolicy<A>;
      v3 = 1;
    }

    goto LABEL_26;
  }

  if (v1 <= 8)
  {
    if (v1 == 6)
    {
      v4 = v0[22];
      v5 = &protocol witness table for KeyOptionsPolicy;
      v3 = 7;
    }

    else if (v1 == 7)
    {
      v4 = v0[23];
      v5 = &protocol witness table for SoftwareReleasePolicy;
      v3 = 8;
    }

    else
    {
      v5 = &protocol witness table for HardwareIdentifiersPolicy;
      v4 = &type metadata for HardwareIdentifiersPolicy;
      v3 = 9;
    }

LABEL_26:
    v0[25] = v4;
    v6 = v0[18];
    v7 = *(v0[17] + 16 * v3 + 32);
    Description = v4[-1].Description;
    v9 = Description;
    v0[26] = Description;
    v10 = Description[8] + 15;
    v0[27] = swift_task_alloc();
    (v9[2])();
    v11 = v5[1];
    v18 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[28] = v13;
    *v13 = v0;
    v13[1] = sub_22FFA364C;
    v15 = v0[14];
    v14 = v0[15];

    return (v18)(v15, v14, v4, v5);
  }

  if (v1 == 9)
  {
    v5 = &protocol witness table for DeviceModePolicy;
    v4 = &type metadata for DeviceModePolicy;
    v3 = 10;
    goto LABEL_26;
  }

  if (v1 == 10)
  {
    v5 = &protocol witness table for DarwinInitPolicy;
    v4 = &type metadata for DarwinInitPolicy;
    v3 = 11;
    goto LABEL_26;
  }

  sub_22FEAEA34(v0[18], &qword_27DAF39F0, &qword_22FFC02E8);

  v17 = v0[1];

  return v17();
}

uint64_t sub_22FFA3B28()
{
  v1 = v0[27];
  v2 = v0[18];

  sub_22FEAEA34(v2, &qword_27DAF39F0, &qword_22FFC02E8);

  v3 = v0[1];
  v4 = v0[29];

  return v3();
}

uint64_t sub_22FFA3BB0(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_22FFA3BD4, 0, 0);
}

uint64_t sub_22FFA3BD4()
{
  sub_22FEF4004(v0[10], (v0 + 2));
  v1 = off_2844DA278;
  v2 = off_2844DA278;
  v0[11] = off_2844DA278;
  v3 = v1[8] + 15;
  v0[12] = swift_task_alloc();
  v2[2]();
  v9 = off_2844DA210 + *off_2844DA210;
  v4 = *(off_2844DA210 + 1);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_22FFA3D7C;
  v7 = v0[8];
  v6 = v0[9];

  return (v9)(v7, v6, &type metadata for ProxiedReleaseTransparencyPolicy, &protocol witness table for ProxiedReleaseTransparencyPolicy);
}

uint64_t sub_22FFA3D7C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, &type metadata for ProxiedReleaseTransparencyPolicy);
  if (v0)
  {
    v6 = sub_22FFA3F48;
  }

  else
  {
    v7 = *(v2 + 96);

    v6 = sub_22FFA3EE4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22FFA3EE4()
{
  sub_22FEF4060(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FFA3F48()
{
  v1 = v0[12];

  sub_22FEF4060((v0 + 2));
  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_22FFA3FB4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF21A0, &unk_22FFB6210);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FFA4064, 0, 0);
}

uint64_t sub_22FFA4064()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v0[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF21A8, &qword_22FFC01A0);
  v5 = *(v4 + 48);
  sub_22FEBF3A4(v3, v1, &qword_27DAF21A0, &unk_22FFB6210);
  sub_22FEBF4E4(v1, v2, &qword_27DAF21A8, &qword_22FFC01A0);
  *(v2 + v5) = *(v1 + *(v4 + 48));
  v7 = v0[7];
  v6 = v0[8];
  v0[9] = 0;
  v0[10] = v6;
  v8 = *(v0[5] + 32);
  v9 = *(v6 - 8);
  v10 = v9;
  v0[11] = v9;
  v11 = *(v9 + 64) + 15;
  v0[12] = swift_task_alloc();
  (*(v10 + 16))();
  v17 = off_2844DB228 + *off_2844DB228;
  v12 = *(off_2844DB228 + 1);
  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_22FFA4280;
  v15 = v0[2];
  v14 = v0[3];

  return (v17)(v15, v14, v6, &protocol witness table for PolicyBuilder.TuplePolicy<Pack{repeat A}>);
}

uint64_t sub_22FFA4280()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {
    v5 = sub_22FFA4628;
  }

  else
  {

    v5 = sub_22FFA43F4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FFA43F4()
{
  v1 = v0[9] + 1;
  v0[9] = v1;
  if (v1 == 2)
  {
    v2 = v0[6];
    sub_22FEAEA34(v0[7], &qword_27DAF21A0, &unk_22FFB6210);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[10] = &type metadata for ProxiedReleasePolicy;
    v5 = v0[7];
    v6 = *(v0[5] + 16 * v1 + 32);
    v7 = off_2844DA158;
    v8 = off_2844DA158;
    v0[11] = off_2844DA158;
    v9 = v7[8] + 15;
    v0[12] = swift_task_alloc();
    v8[2]();
    v14 = off_2844DA0F0 + *off_2844DA0F0;
    v10 = *(off_2844DA0F0 + 1);
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_22FFA4280;
    v13 = v0[2];
    v12 = v0[3];

    return (v14)(v13, v12, &type metadata for ProxiedReleasePolicy, &protocol witness table for ProxiedReleasePolicy);
  }
}

uint64_t sub_22FFA4628()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[7];

  sub_22FEAEA34(v3, &qword_27DAF21A0, &unk_22FFB6210);

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_22FFA46B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CE0, &unk_22FFB40E0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FFA4768, 0, 0);
}

uint64_t sub_22FFA4768()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v0[8] = type metadata accessor for X509Policy();
  v5 = v2 + *(v4 + 48);
  sub_22FEBF3A4(v3, v1, &qword_27DAF1CE0, &unk_22FFB40E0);
  sub_22FFA7D78(v1, v2, type metadata accessor for X509Policy);
  v6 = v1 + *(v4 + 48);
  v7 = *(v6 + 16);
  *v5 = *v6;
  *(v5 + 16) = v7;
  v9 = v0[7];
  v8 = v0[8];
  v0[9] = 0;
  v0[10] = v8;
  v10 = *(v0[5] + 32);
  v11 = *(v8 - 8);
  v12 = v11;
  v0[11] = v11;
  v13 = *(v11 + 64) + 15;
  v0[12] = swift_task_alloc();
  (*(v12 + 16))();
  v19 = off_2844DA3A0 + *off_2844DA3A0;
  v14 = *(off_2844DA3A0 + 1);
  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_22FFA4984;
  v17 = v0[2];
  v16 = v0[3];

  return (v19)(v17, v16, v8, &protocol witness table for X509Policy);
}

uint64_t sub_22FFA4984()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {
    v5 = sub_22FFA4D2C;
  }

  else
  {

    v5 = sub_22FFA4AF8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FFA4AF8()
{
  v1 = v0[9] + 1;
  v0[9] = v1;
  if (v1 == 2)
  {
    v2 = v0[6];
    sub_22FEAEA34(v0[7], &qword_27DAF1CE0, &unk_22FFB40E0);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[10] = &type metadata for SEPAttestationPolicy;
    v5 = v0[7];
    v6 = *(v0[5] + 16 * v1 + 32);
    v7 = off_2844DB800;
    v8 = off_2844DB800;
    v0[11] = off_2844DB800;
    v9 = v7[8] + 15;
    v0[12] = swift_task_alloc();
    v8[2]();
    v14 = off_2844DB798 + *off_2844DB798;
    v10 = *(off_2844DB798 + 1);
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_22FFA4984;
    v13 = v0[2];
    v12 = v0[3];

    return (v14)(v13, v12, &type metadata for SEPAttestationPolicy, &protocol witness table for SEPAttestationPolicy);
  }
}

uint64_t sub_22FFA4D2C()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[7];

  sub_22FEAEA34(v3, &qword_27DAF1CE0, &unk_22FFB40E0);

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t NodeValidator.init(environment:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NodeValidator();
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  *(a2 + 64) = MEMORY[0x277D84F90];
  v9 = v5[10];
  v10 = sub_22FFB0908();
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  *(a2 + v5[21]) = 2;
  *(a2 + v5[23]) = 0;
  v13 = a1;
  NodeValidator.init(validity:environment:)(0xC0DDD92E56000000, 4683, &v13, v8);
  sub_22FEAEA34(a2 + v9, &qword_27DAF1510, &qword_22FFB3800);
  return sub_22FFA7D78(v8, a2, type metadata accessor for NodeValidator);
}

uint64_t NodeValidator.init(validity:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  *(a4 + 64) = MEMORY[0x277D84F90];
  v8 = type metadata accessor for NodeValidator();
  v9 = v8[8];
  v10 = sub_22FFB0908();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  *(a4 + v8[19]) = 2;
  *(a4 + v8[21]) = 0;
  *(a4 + 48) = a1;
  *(a4 + 56) = a2;
  *(a4 + 32) = &type metadata for SWTransparencyVerifier;
  *(a4 + 40) = &protocol witness table for SWTransparencyVerifier;
  if (MEMORY[0x277D73580])
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D73580]) initWithApplication_];
  }

  else
  {
    v11 = 0;
  }

  *(a4 + 8) = v11;
  *a4 = v7;
  if (qword_281490938 != -1)
  {
    swift_once();
  }

  v12 = sub_22FF9A468();
  v13 = 0x3F8u >> v7;
  if (v12 == 2)
  {
    v14 = 0x3F8u >> v7;
  }

  else
  {
    v14 = v12;
  }

  *(a4 + v8[9]) = v14 & 1;
  v15 = sub_22FF9A468();
  if (v15 == 2)
  {
    v16 = 0x3F8u >> v7;
  }

  else
  {
    v16 = v15;
  }

  *(a4 + v8[10]) = v16 & 1;
  v17 = sub_22FF9A468();
  if (v17 == 2)
  {
    v18 = 0x3C0u >> v7;
  }

  else
  {
    v18 = v17;
  }

  *(a4 + v8[11]) = v18 & 1;
  v19 = sub_22FF9A468();
  if (v19 == 2)
  {
    v20 = 0x3F8u >> v7;
  }

  else
  {
    v20 = v19;
  }

  *(a4 + v8[12]) = v20 & 1;
  v21 = sub_22FF9A468();
  if (v21 == 2)
  {
    v22 = 0x3F8u >> v7;
  }

  else
  {
    v22 = v21;
  }

  *(a4 + v8[13]) = v22 & 1;
  v23 = sub_22FF9A468();
  v24 = v7 == 9;
  if (v23 == 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  *(a4 + v8[14]) = v25;
  v26 = sub_22FF9A468();
  if (v26 == 2)
  {
    v27 = v24;
  }

  else
  {
    v27 = v26;
  }

  *(a4 + v8[15]) = v27;
  v28 = sub_22FF9A468();
  if (v28 == 2)
  {
    v29 = v13;
  }

  else
  {
    v29 = v28;
  }

  *(a4 + v8[16]) = v29 & 1;
  v30 = sub_22FF9A468();
  if (v30 == 2)
  {
    v31 = v13;
  }

  else
  {
    v31 = v30;
  }

  *(a4 + v8[17]) = v31 & 1;
  *(a4 + v8[18]) = sub_22FF9A468() & 1;
  result = sub_22FF9A468();
  *(a4 + v8[20]) = (result == 2) | result & 1;
  return result;
}

uint64_t NodeValidator.transparencyVerifier.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return sub_22FE9B84C(a1, v1 + 8);
}

uint64_t NodeValidator.validity.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t NodeValidator.validity.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

uint64_t NodeValidator.roots.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t NodeValidator.clock.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NodeValidator() + 32);

  return sub_22FEB3E04(a1, v3);
}

uint64_t NodeValidator.transparencyProofValidation.setter(char a1)
{
  result = type metadata accessor for NodeValidator();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t NodeValidator.strictCertificateValidation.setter(char a1)
{
  result = type metadata accessor for NodeValidator();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t NodeValidator.requireProdTrustAnchors.setter(char a1)
{
  result = type metadata accessor for NodeValidator();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t NodeValidator.requireRestrictedExecutionMode.setter(char a1)
{
  result = type metadata accessor for NodeValidator();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t NodeValidator.requireEphemeralDataMode.setter(char a1)
{
  result = type metadata accessor for NodeValidator();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t NodeValidator.restrictDeveloperMode.setter(char a1)
{
  result = type metadata accessor for NodeValidator();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t NodeValidator.requireProdFusing.setter(char a1)
{
  result = type metadata accessor for NodeValidator();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t NodeValidator.requireLockedCryptexes.setter(char a1)
{
  result = type metadata accessor for NodeValidator();
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t NodeValidator.ensembleTopologyValidation.setter(char a1)
{
  result = type metadata accessor for NodeValidator();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t NodeValidator.allowExpired.setter(char a1)
{
  result = type metadata accessor for NodeValidator();
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t NodeValidator.customerSecurityPolicy.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NodeValidator();
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t NodeValidator.customerSecurityPolicy.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NodeValidator();
  *(v1 + *(result + 76)) = v2;
  return result;
}

uint64_t NodeValidator.restrictSecurityPolicies.setter(char a1)
{
  result = type metadata accessor for NodeValidator();
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t sub_22FFA5B00()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_281491460);
  __swift_project_value_buffer(v0, qword_281491460);
  return sub_22FFB12E8();
}

uint64_t NodeValidator.init(validity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NodeValidator();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 64) = MEMORY[0x277D84F90];
  v11 = v7[10];
  v12 = sub_22FFB0908();
  (*(*(v12 - 8) + 56))(a3 + v11, 1, 1, v12);
  *(a3 + v7[21]) = 2;
  *(a3 + v7[23]) = 0;
  static Environment.default.getter(&v15);
  NodeValidator.init(validity:environment:)(a1, a2, &v15, v10);
  sub_22FEAEA34(a3 + v11, &qword_27DAF1510, &qword_22FFB3800);
  return sub_22FFA7D78(v10, a3, type metadata accessor for NodeValidator);
}

uint64_t type metadata accessor for NodeValidator()
{
  result = qword_2814908F8;
  if (!qword_2814908F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FFA5D10()
{
  if (*(v0 + *(type metadata accessor for NodeValidator() + 44)) == 1)
  {
    if (qword_281490B50 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v2 = *(v0 + 64);
    v3 = qword_281490B50;

    if (v3 != -1)
    {
      swift_once();
    }

    sub_22FECB2C8(v4);
    if (qword_27DAF1268 != -1)
    {
      swift_once();
    }

    sub_22FECB2C8(v5);
    return v2;
  }
}

double sub_22FFA5E30()
{
  v1 = type metadata accessor for NodeValidator();
  if (v0[*(v1 + 80)] == 1)
  {
    v3 = v1;
    v4 = 1 << *v0;
    if ((v4 & 0x1F8) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A30, &qword_22FFB4C70);
      v5 = swift_allocObject();
      *&result = 2;
      *(v5 + 16) = xmmword_22FFB2D20;
      v6 = *(v3 + 76);
      *(v5 + 33) = 1;
LABEL_4:
      *(v5 + 32) = v0[v6];
      return result;
    }

    if ((v4 & 0xC07) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A30, &qword_22FFB4C70);
      v5 = swift_allocObject();
      *&result = 1;
      *(v5 + 16) = xmmword_22FFB2D10;
      v6 = *(v3 + 76);
      goto LABEL_4;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A30, &qword_22FFB4C70);
    v7 = swift_allocObject();
    *&result = 3;
    *(v7 + 16) = xmmword_22FFB2F60;
    *(v7 + 32) = v0[*(v3 + 76)];
    *(v7 + 33) = 1;
  }

  return result;
}

uint64_t sub_22FFA5FF0(void *a1, uint64_t a2)
{
  sub_22FEBAFF4(a1);

  return sub_22FEA5C80(a2);
}

uint64_t sub_22FFA6034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA0D4;

  return NodeValidator.validate(bundle:nonce:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FFA610C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84B78];
  *(v4 + 16) = xmmword_22FFB2D10;
  v6 = MEMORY[0x277D84BC0];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  result = sub_22FFB14D8();
  *a2 = result;
  a2[1] = v8;
  return result;
}

unint64_t sub_22FFA619C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22FFB1CA8();
  sub_22FFB1548();
  v6 = sub_22FFB1CF8();

  return sub_22FFA656C(a1, a2, v6);
}

unint64_t sub_22FFA6214(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22FFB0958();
  sub_22FFA7E88(&qword_281491320, MEMORY[0x277CC95F0]);
  v5 = sub_22FFB1428();

  return sub_22FFA6624(a1, v5);
}

unint64_t sub_22FFA62AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_22FFB1CA8();
  MEMORY[0x23190E460](a1);
  v10 = sub_22FFB1CF8();

  return sub_22FFA67E4(a1, a2, a3, a4, v10);
}

unint64_t sub_22FFA6338(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22FFB1C98();

  return sub_22FFA68B8(a1, v4);
}

unint64_t sub_22FFA637C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22FFB1CA8();
  type metadata accessor for CFString(0);
  sub_22FFA7E88(&qword_27DAF3A20, type metadata accessor for CFString);
  sub_22FFB0A28();
  v4 = sub_22FFB1CF8();

  return sub_22FFA6924(a1, v4);
}

unint64_t sub_22FFA6430(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22FFB1CA8();
  sub_22FFB1CC8();
  if (a1)
  {
    type metadata accessor for CFString(0);
    sub_22FFA7E88(&qword_27DAF3A20, type metadata accessor for CFString);
    sub_22FFB0A28();
  }

  v4 = sub_22FFB1CF8();

  return sub_22FFA6A30(a1, v4);
}

unint64_t sub_22FFA6500(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_22FFB1CA8();
  MEMORY[0x23190E460](a1);
  v4 = sub_22FFB1CF8();

  return sub_22FFA6B50(a1, v4);
}

unint64_t sub_22FFA656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22FFB1BC8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22FFA6624(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_22FFB0958();
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
      sub_22FFA7E88(&qword_281491318, MEMORY[0x277CC95F0]);
      v16 = sub_22FFB1478();
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

unint64_t sub_22FFA67E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v12 = ~v7;
    v13 = *(v5 + 48);
    do
    {
      v14 = (v13 + 32 * v8);
      if (*v14 == a1)
      {
        v15 = v14[2] == a3 && v14[3] == a4;
        if (v15 || (sub_22FFB1BC8() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v12;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_22FFA68B8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22FFA6924(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_22FFA7E88(&qword_27DAF3A20, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22FFB0A18();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22FFA6A30(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFString(0);
          sub_22FFA7E88(&qword_27DAF3A20, type metadata accessor for CFString);
          v10 = v9;
          v11 = sub_22FFB0A18();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22FFA6B50(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_22FFA6BC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FFA6C20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3938, &qword_22FFBFA28);
    v3 = sub_22FFB1AE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_22FEBF3A4(v4, &v13, &qword_27DAF1B58, &qword_22FFC02B0);
      v5 = v13;
      v6 = v14;
      result = sub_22FFA619C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22FEA2968(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FFA6D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3940, &unk_22FFBFA30);
    v3 = sub_22FFB1AE8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_22FEA5608(v7, v8);
      result = sub_22FFA619C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FFA6E68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39E0, &unk_22FFC0290);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3900, &qword_22FFBF978);
    v8 = sub_22FFB1AE8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22FEBF3A4(v10, v6, &qword_27DAF39E0, &unk_22FFC0290);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22FFA619C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Proto_SealedHash(0);
      result = sub_22FFA7D78(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for Proto_SealedHash);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FFA7050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3928, &qword_22FFBFA10);
    v3 = sub_22FFB1AE8();
    for (i = a1 + 32; ; i += 64)
    {
      sub_22FEBF3A4(i, &v13, &qword_27DAF3A10, &unk_22FFC0318);
      result = sub_22FFA62AC(v13, *(&v13 + 1), v14, v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 32 * result;
      v8 = v14;
      v9 = v15;
      *v7 = v13;
      *(v7 + 16) = v8;
      *(v7 + 24) = v9;
      result = sub_22FEA2968(&v16, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_22FFA71D8()
{
  sub_22FFA736C();
  if (v0 <= 0x3F)
  {
    sub_22FFA73D0(319, &qword_28148F120, type metadata accessor for SecCertificate, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22FFA73D0(319, &qword_281491328, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22FFA73D0(319, &qword_28148F0B8, type metadata accessor for SecKey, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_22FFA736C()
{
  result = qword_28148FA48[0];
  if (!qword_28148FA48[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_28148FA48);
  }

  return result;
}

void sub_22FFA73D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_22FFA7434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39E8, &qword_22FFC02B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3920, &unk_22FFC02C0);
    v8 = sub_22FFB1AE8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22FEBF3A4(v10, v6, &qword_27DAF39E8, &qword_22FFC02B8);
      result = sub_22FFA6214(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22FFB0958();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for SEP.SealedHash(0);
      result = sub_22FFA7D78(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for SEP.SealedHash);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FFA7650(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3A28, &qword_22FFC0338);
    v3 = sub_22FFB1AE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_22FEBF3A4(v4, &v11, &qword_27DAF1768, &unk_22FFC0340);
      v5 = v11;
      result = sub_22FFA6430(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_22FEA2968(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FFA7778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3A18, &qword_22FFC0328);
    v3 = sub_22FFB1AE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_22FEBF3A4(v4, &v11, qword_27DAF1780, &qword_22FFC0330);
      v5 = v11;
      result = sub_22FFA637C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_22FEA2968(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FFA78A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39C8, &unk_22FFC0260);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3898, &unk_22FFBF3C0);
    v8 = sub_22FFB1AE8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22FEBF3A4(v10, v6, &qword_27DAF39C8, &unk_22FFC0260);
      result = sub_22FFA6214(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22FFB0958();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FFA7A88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39D8, &qword_22FFC0288);
    v3 = sub_22FFB1AE8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22FFA619C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FFA7B9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39D0, &qword_22FFC0280);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3918, &unk_22FFBFA00);
    v8 = sub_22FFB1AE8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_22FEBF3A4(v10, v6, &qword_27DAF39D0, &qword_22FFC0280);
      v12 = *v6;
      result = sub_22FFA6338(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_22FFB0CC8();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22FFA7D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FFA7DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FFA7E48(void *a1, uint64_t a2)
{
  sub_22FECB480(a1);

  return sub_22FE9AC3C(a2);
}

uint64_t sub_22FFA7E88(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_22FFA7ED0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v74 - v3;
  v5 = type metadata accessor for Proto_SecureConfig(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = (&v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Proto_SealedHash.Entry(0);
  v9 = *(v8 - 8);
  v77 = v8;
  v78 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v74 - v15;
  v17 = type metadata accessor for Proto_SealedHashLedger(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for Proto_SealedHash(0);
  v80 = *(v22 - 8);
  v23 = *(v80 + 8);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v81 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v75 = &v74 - v26;
  v27 = *(v0 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v28 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(v27 + v28, v16, &qword_27DAF26E8, &qword_22FFB7C60);
  v29 = *(v18 + 48);
  if (v29(v16, 1, v17) == 1)
  {
    *v21 = sub_22FFA6E68(MEMORY[0x277D84F90]);
    v30 = v21 + *(v17 + 20);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v29(v16, 1, v17) != 1)
    {
      sub_22FEAEA34(v16, &qword_27DAF26E8, &qword_22FFB7C60);
    }
  }

  else
  {
    sub_22FFA9770(v16, v21, type metadata accessor for Proto_SealedHashLedger);
  }

  v31 = *v21;

  sub_22FFA97D8(v21, type metadata accessor for Proto_SealedHashLedger);
  if (qword_28148FBD0 != -1)
  {
    swift_once();
  }

  v32 = sub_22FFB0958();
  __swift_project_value_buffer(v32, qword_28148FBD8);
  v33 = sub_22FFB0928();
  if (!*(v31 + 16))
  {

LABEL_39:

    return 0;
  }

  v35 = sub_22FFA619C(v33, v34);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
    goto LABEL_39;
  }

  v38 = *(v31 + 56) + *(v80 + 9) * v35;
  v39 = v81;
  sub_22FF93B98(v38, v81, type metadata accessor for Proto_SealedHash);

  v40 = v39;
  v41 = v75;
  sub_22FFA9770(v40, v75, type metadata accessor for Proto_SealedHash);
  v42 = *(v41 + 16);
  v43 = *(v42 + 16);
  if (v43)
  {
    v81 = *(v77 + 24);
    v44 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v74 = v42;
    v45 = v42 + v44;
    v46 = *(v78 + 72);
    v80 = MEMORY[0x277D84F90];
    v47 = &unk_22FFB5C80;
    v48 = v79;
    v78 = v46;
    while (1)
    {
      sub_22FF93B98(v45, v12, type metadata accessor for Proto_SealedHash.Entry);
      sub_22FEBF3A4(&v12[v81], v4, &qword_27DAF2130, v47);
      v49 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
      if ((*(*(v49 - 8) + 48))(v4, 1, v49) == 1)
      {
        sub_22FFA97D8(v12, type metadata accessor for Proto_SealedHash.Entry);
        sub_22FEAEA34(v4, &qword_27DAF2130, v47);
LABEL_12:
        memset(v85, 0, 40);
        goto LABEL_13;
      }

      v50 = v47;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_22FFA97D8(v12, type metadata accessor for Proto_SealedHash.Entry);
        sub_22FFA97D8(v4, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
        goto LABEL_12;
      }

      sub_22FFA9770(v4, v48, type metadata accessor for Proto_SecureConfig);
      v51 = v48[3];
      v52 = v48[4];
      v53 = v52 >> 62;
      if ((v52 >> 62) > 1)
      {
        if (v53 != 2)
        {
          goto LABEL_26;
        }

        v54 = *(v51 + 16);
        v55 = *(v51 + 24);
      }

      else
      {
        if (!v53)
        {
          if ((v52 & 0xFF000000000000) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_28;
        }

        v54 = v51;
        v55 = v51 >> 32;
      }

      if (v54 == v55)
      {
LABEL_26:
        v56 = *v48;
        v57 = v48[1];
        v58 = v48[2];
        sub_22FEA5608(*v48, v57);

        v59 = v58;
        v46 = v78;
        sub_22FFA92EC(v56, v57, v59, &v82);
        sub_22FFA97D8(v12, type metadata accessor for Proto_SealedHash.Entry);
        sub_22FFA97D8(v48, type metadata accessor for Proto_SecureConfig);
        v60 = v83;
        v85[0] = v82;
        *&v85[1] = v83;
        *(&v85[1] + 8) = v84;
        if (v83)
        {
          goto LABEL_29;
        }

        goto LABEL_13;
      }

LABEL_28:
      sub_22FEA5608(v48[3], v48[4]);
      SecureConfig.init(from:)(v51, v52, v85);
      sub_22FFA97D8(v12, type metadata accessor for Proto_SealedHash.Entry);
      sub_22FFA97D8(v48, type metadata accessor for Proto_SecureConfig);
      v60 = *&v85[1];
      if (*&v85[1])
      {
LABEL_29:
        v61 = v85[0];
        v76 = *&v85[2];
        v77 = *(&v85[1] + 1);
        v62 = v80;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_22FEC322C(0, *(v62 + 2) + 1, 1, v62);
        }

        v64 = *(v62 + 2);
        v63 = *(v62 + 3);
        v65 = v62;
        if (v64 >= v63 >> 1)
        {
          v65 = sub_22FEC322C((v63 > 1), v64 + 1, 1, v62);
        }

        v80 = v65;
        *(v65 + 2) = v64 + 1;
        v66 = &v65[40 * v64];
        *(v66 + 2) = v61;
        v67 = v76;
        v68 = v77;
        *(v66 + 6) = v60;
        *(v66 + 7) = v68;
        *(v66 + 8) = v67;
        v46 = v78;
        v48 = v79;
        v47 = v50;
        goto LABEL_14;
      }

LABEL_13:
      sub_22FF91A7C(*&v85[0], *(&v85[0] + 1), 0, *(&v85[1] + 1), *&v85[2]);
LABEL_14:
      v45 += v46;
      if (!--v43)
      {
        v69 = *(v74 + 16);
        v70 = v80;
        goto LABEL_38;
      }
    }
  }

  v69 = 0;
  v70 = MEMORY[0x277D84F90];
LABEL_38:
  v71 = v70;
  v72 = *(v70 + 2);
  sub_22FFA97D8(v75, type metadata accessor for Proto_SealedHash);
  result = v71;
  if (v72 != v69)
  {
    goto LABEL_39;
  }

  return result;
}

uint64_t sub_22FFA874C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v34 - v3;
  v5 = type metadata accessor for Proto_SealedHashLedger(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Proto_SealedHash(0);
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *(v0 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v18 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(v17 + v18, v4, &qword_27DAF26E8, &qword_22FFB7C60);
  v19 = *(v6 + 48);
  if (v19(v4, 1, v5) == 1)
  {
    *v9 = sub_22FFA6E68(MEMORY[0x277D84F90]);
    v20 = v9 + *(v5 + 20);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v19(v4, 1, v5) != 1)
    {
      sub_22FEAEA34(v4, &qword_27DAF26E8, &qword_22FFB7C60);
    }
  }

  else
  {
    sub_22FFA9770(v4, v9, type metadata accessor for Proto_SealedHashLedger);
  }

  v21 = *v9;

  sub_22FFA97D8(v9, type metadata accessor for Proto_SealedHashLedger);
  if (qword_28148FBD0 != -1)
  {
    swift_once();
  }

  v22 = sub_22FFB0958();
  __swift_project_value_buffer(v22, qword_28148FBD8);
  v23 = sub_22FFB0928();
  if (!*(v21 + 16))
  {

    goto LABEL_14;
  }

  v25 = sub_22FFA619C(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_14:

    return 0;
  }

  sub_22FF93B98(*(v21 + 56) + *(v34 + 72) * v25, v14, type metadata accessor for Proto_SealedHash);

  sub_22FFA9770(v14, v16, type metadata accessor for Proto_SealedHash);
  v28 = *v16;
  v29 = v16[8];
  sub_22FFA97D8(v16, type metadata accessor for Proto_SealedHash);
  if (v29 != 1)
  {
    return 0;
  }

  result = v28;
  if (v28)
  {
    if (v28 == 1)
    {
      v31 = sub_22FFB13C8();
      v32 = &qword_28148F198;
      v33 = MEMORY[0x277CC5540];
    }

    else
    {
      v31 = sub_22FFB13F8();
      v32 = &qword_28148F188;
      v33 = MEMORY[0x277CC5550];
    }

    sub_22FF74244(v32, v33);
    return v31;
  }

  return result;
}

uint64_t sub_22FFA8BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v43 = a1;
  v9 = type metadata accessor for SEP.SealedHash(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = v9;
    v37 = v4;
    v38 = a4;
    v50 = MEMORY[0x277D84F90];
    sub_22FECD9FC(0, v13, 0);
    v15 = v50;
    v42 = a2;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v41 = AssociatedTypeWitness;
    v17 = *(AssociatedTypeWitness - 8);
    v40 = *(v17 + 64);
    v39 = (v17 + 8);
    v18 = (a3 + 64);
    do
    {
      v46 = &v34;
      v47 = v13;
      v20 = *(v18 - 4);
      v19 = *(v18 - 3);
      v21 = *(v18 - 1);
      v45 = *(v18 - 2);
      v22 = *v18;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v48 = v21;
      v49 = v22;
      sub_22FEA5608(v20, v19);

      sub_22FEA5608(v21, v22);
      sub_22FEA5608(v21, v22);
      sub_22FEB0E54();
      sub_22FFB1378();
      sub_22FEA55AC(v48, v49);
      v25 = v41;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v27 = sub_22FEC4190(v24, v25, *(AssociatedConformanceWitness + 32));
      v44 = v28;
      sub_22FEA55AC(v20, v19);

      sub_22FEA55AC(v21, v22);
      AssociatedTypeWitness = (*v39)(v24, v25);
      v50 = v15;
      v30 = *(v15 + 16);
      v29 = *(v15 + 24);
      if (v30 >= v29 >> 1)
      {
        AssociatedTypeWitness = sub_22FECD9FC((v29 > 1), v30 + 1, 1);
        v15 = v50;
      }

      v18 += 5;
      *(v15 + 16) = v30 + 1;
      v31 = v15 + 16 * v30;
      v32 = v44;
      *(v31 + 32) = v27;
      *(v31 + 40) = v32;
      v13 = v47 - 1;
    }

    while (v47 != 1);
    v5 = v37;
    a4 = v38;
    v12 = v35;
    v9 = v36;
    v14 = v15;
  }

  result = sub_22FF5D114(v14, v12);
  if (!v5)
  {
    return sub_22FFA9770(&v12[*(v9 + 20)], a4, type metadata accessor for SEP.SealedHash.Value);
  }

  return result;
}

uint64_t SecureConfig.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22FFB15D8();
  v6 = sub_22FFB1448();

  if ((v6 & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v18) = v6;
    MEMORY[0x28223BE20](result);
    v17[2] = &v18;
    sub_22FEA5608(a1, a2);
    v8 = sub_22FF57588(2, 1, sub_22FFA96CC, v17, a1, a2);
    if (v8[2] == 2)
    {
      v9 = v8[4];
      v10 = v8[5];
      v11 = v8[6];
      v12 = v8[7];
      sub_22FEA5608(v9, v10);
      sub_22FEA5608(v11, v12);

      v13 = sub_22FFB04D8();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      sub_22FFB04C8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF29D8, &qword_22FFC0350);
      sub_22FFA96E4();
      sub_22FFB04B8();

      result = sub_22FEA55AC(v9, v10);
      v16 = v18;
      *a3 = v11;
      a3[1] = v12;
      a3[2] = v16;
      a3[3] = a1;
      a3[4] = a2;
    }

    else
    {
      sub_22FEA55AC(a1, a2);

      a3[4] = 0;
      *a3 = 0u;
      *(a3 + 1) = 0u;
    }
  }

  return result;
}

uint64_t sub_22FFA90E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_22FFA619C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(v3 + 56) + 16 * v4);
  v8 = *v6;
  v7 = v6[1];

  return v8;
}

uint64_t SecureConfig.entry.getter()
{
  v1 = *v0;
  sub_22FEA5608(*v0, *(v0 + 8));
  return v1;
}

uint64_t SecureConfig.serializedData.getter()
{
  v1 = *(v0 + 24);
  sub_22FEA5608(v1, *(v0 + 32));
  return v1;
}

void *SecureConfig.rawMetadata.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_22FEA5608(v1, v2);
  sub_22FFB15D8();
  v3 = sub_22FFB1448();

  if ((v3 & 0x100) == 0)
  {
    v7 = v3;
    MEMORY[0x28223BE20](result);
    v6[2] = &v7;
    result = sub_22FF57588(2, 1, sub_22FFA9838, v6, v1, v2);
    if (result[2])
    {
      v5 = result[4];
      sub_22FEA5608(v5, result[5]);

      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double SecureConfig.init(entry:metadata:)@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_22FFA92EC(a1, a2, a3, &v7);
  v5 = v8;
  *a4 = v7;
  *(a4 + 16) = v5;
  result = v9[0];
  *(a4 + 24) = *v9;
  return result;
}

uint64_t sub_22FFA92EC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = objc_opt_self();

  sub_22FEA5608(a1, a2);
  v9 = sub_22FFB1408();

  v23[0] = 0;
  v10 = [v8 dataWithJSONObject:v9 options:2 error:v23];

  v11 = v23[0];
  if (v10)
  {
    v12 = sub_22FFB07E8();
    v14 = v13;

    *&v24 = v12;
    *(&v24 + 1) = v14;
    sub_22FEA5608(v12, v14);
    sub_22FF5BE00(10, 0xE100000000000000);
    sub_22FEA55AC(v12, v14);
    v15 = v24;
    v25 = v24;
    v23[3] = MEMORY[0x277CC9318];
    v23[4] = MEMORY[0x277CC9300];
    v23[0] = a1;
    v23[1] = a2;
    v16 = __swift_project_boxed_opaque_existential_1(v23, MEMORY[0x277CC9318]);
    v17 = *v16;
    v18 = v16[1];
    sub_22FEA5608(v15, *(&v15 + 1));
    sub_22FFA94D4(v17, v18);
    sub_22FEA55AC(v15, *(&v15 + 1));
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    v20 = v25;
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3;
    *(a4 + 24) = v20;
    v21 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v22 = v11;
    sub_22FFB0648();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_22FFA94D4(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_22FFB0778();
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

  result = sub_22FFA960C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FFA960C(uint64_t a1, uint64_t a2)
{
  result = sub_22FFB0588();
  if (!result || (result = sub_22FFB05B8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22FFB05A8();
      return sub_22FFB0778();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_22FFA96E4()
{
  result = qword_27DAF3A30;
  if (!qword_27DAF3A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF29D8, &qword_22FFC0350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3A30);
  }

  return result;
}

uint64_t sub_22FFA9770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FFA97D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double DERImg4DecodeFindInSequence(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v7 = 0;
  v8 = 0uLL;
  while (!DERDecodeSeqNext(a1, &v7))
  {
    if (v7 == a2)
    {
      result = *&v8;
      *a3 = v8;
      return result;
    }
  }

  return result;
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t DERImg4DecodeManifestCommon(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

uint64_t DERImg4DecodeProperty(void *a1, uint64_t a2, uint64_t a3)
{
  result = 6;
  if (a1)
  {
    if (a3)
    {
      v14 = 0;
      v15 = 0uLL;
      v13 = 0uLL;
      v11 = 0;
      v12 = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      result = DERDecodeSeqInit(a1, &v9, &v10);
      if (!result)
      {
        if (v9 != 0x2000000000000010)
        {
          return 2;
        }

        result = DERDecodeSeqNext(&v10, &v14);
        if (result)
        {
          return result;
        }

        if (v14 != 22)
        {
          return 2;
        }

        result = DERParseInteger(&v15, &v8);
        if (result)
        {
          return result;
        }

        if ((v8 | 0xE000000000000000) != a2)
        {
          return 2;
        }

        *a3 = v15;
        *(a3 + 16) = 0;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result)
        {
          return result;
        }

        *(a3 + 40) = v12;
        *(a3 + 24) = v13;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result != 1)
        {
          return 2;
        }

        v7 = a1[1];
        if (__CFADD__(*a1, v7))
        {
          __break(0x5513u);
        }

        else if (v11 == *a1 + v7)
        {
          return 0;
        }

        else
        {
          return 7;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodeFindPropertyInSequence(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v10 = 0;
  v11 = 0uLL;
  while (1)
  {
    result = DERDecodeSeqNext(a1, &v10);
    if (result)
    {
      break;
    }

    if (v10 == a2)
    {
      v9 = v11;
      return DERImg4DecodePropertyWithItem(&v9, a2, a3, a4);
    }
  }

  return result;
}

uint64_t DERImg4DecodeParseManifestPropertiesInternal(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v11 = 0;
  if (!a1 || !(a2 | a3))
  {
    return 6;
  }

  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  result = DERDecodeItem(a1 + 264, &v14);
  if (!result)
  {
    if (v14 == 0x2000000000000011)
    {
      result = DERParseInteger(a1 + 248, &v11);
      if (!result)
      {
        if (v11 == 2)
        {
          v9 = 0x2000000000000010;
          v10 = a4 | 0xE000000000000000;
        }

        else
        {
          v10 = a4 | 0xE000000000000000;
          v9 = 0x2000000000000011;
        }

        result = DERImg4DecodeFindProperty(v15, v10, v9, v13);
        if (!result)
        {
          if (a2)
          {
            *a2 = *(&v13[1] + 8);
          }

          result = DERImg4DecodeFindProperty(&v13[1] + 1, 0xE00000004D414E50, 0x2000000000000011uLL, v12);
          if (a3)
          {
            if (!result)
            {
              *a3 = *(&v12[1] + 8);
            }
          }
        }
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t Img4DecodeParseLengthFromBufferWithTag(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v11 = 0;
  v12 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v14[1] = 0;
  v15 = 0;
  result = 0xFFFFFFFFLL;
  v13 = 0;
  v14[0] = 0;
  if (a1)
  {
    if (a4)
    {
      v17[0] = a1;
      v17[1] = a2;
      result = DERDecodeItemPartialBufferGetLength(v17, &v15, &v12);
      if (!result)
      {
        if (v12)
        {
          if (v15 != 0x2000000000000010)
          {
            return 2;
          }

          result = DERDecodeItemPartialBufferGetLength(v16, &v13, &v11);
          if (result)
          {
            return result;
          }

          if (v11)
          {
            result = DERImg4DecodeTagCompare(v14, a3);
            if (!result)
            {
              v8 = v16[0] - a1;
              if (v12 >= ~(v16[0] - a1))
              {
                return 7;
              }

              v9 = __CFADD__(v12, v8);
              v10 = v12 + v8;
              if (v9)
              {
                __break(0x5500u);
              }

              else
              {
                result = 0;
                *a4 = v10;
              }

              return result;
            }

            return 2;
          }
        }

        return 3;
      }
    }
  }

  return result;
}

uint64_t Img4DecodePayloadExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 136))
    {
      v4 = *(a1 + 144) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayload(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v2 = (a1 + 136);
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *v2;
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadType(uint64_t a1, _DWORD *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = DERParseInteger(a1 + 104, a2);
    }

    else
    {
      result = 1;
    }
  }

  if (a2)
  {
    if (result)
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t Img4DecodeGetPayloadVersion(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *(a1 + 120);
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodePayloadKeybagExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 152))
    {
      v4 = *(a1 + 160) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadKeybag(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *(a1 + 152);
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodePayloadCompressionInfoExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 168))
    {
      v4 = *(a1 + 176) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadCompressionInfo(void *a1, _DWORD *a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    if (a1[17] && a1[18] && a1[21] && a1[22])
    {
      v7 = 0u;
      v8 = 0u;
      result = DERParseSequenceContentToObject(a1 + 21, 2u, &DERImg4CompressionItemSpecs, &v7, 0x20uLL, 0);
      if (!result)
      {
        result = DERParseInteger(&v7, a2);
        if (!result)
        {
          result = DERParseInteger(&v8, a3);
          if (!result)
          {
            return result;
          }
        }
      }
    }

    else
    {
      result = 1;
    }
  }

  if (a2)
  {
    if (a3)
    {
      *a2 = -1;
      *a3 = -1;
    }
  }

  return result;
}

uint64_t Img4DecodeCopyPayloadHashWithCallback(uint64_t a1, void (*a2)(void, void, __int128 *), uint64_t a3, int a4)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1 || a4 != 20 || !a3)
  {
    result = 6;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!*(a1 + 136) || !*(a1 + 144))
  {
    result = 1;
LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    goto LABEL_12;
  }

  if (*a1 == 1)
  {
    result = 0;
    v7 = *(a1 + 184);
    *(a3 + 16) = *(a1 + 200);
    *a3 = v7;
  }

  else
  {
    v9 = 0uLL;
    v10 = 0;
    a2(*(a1 + 8), *(a1 + 16), &v9);
    result = 0;
    *a3 = v9;
    *(a3 + 16) = v10;
  }

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Img4DecodeManifestExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 24) != 0;
    }
  }

  return result;
}

uint64_t Img4DecodeCopyManifestHashWithCallback(uint64_t a1, void (*a2)(void), uint64_t a3, int a4)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1 || a4 != 20 || !a3)
  {
    result = 6;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (!*(a1 + 24))
  {
    result = 1;
LABEL_10:
    *a3 = 0;
    *(a3 + 8) = 0;
    goto LABEL_12;
  }

  if (*(a1 + 1) == 1)
  {
    result = 0;
    v7 = *(a1 + 328);
    *(a3 + 16) = *(a1 + 344);
    *a3 = v7;
  }

  else
  {
    v9 = *(a1 + 32);
    a2();
    result = 0;
    *a3 = 0uLL;
    *(a3 + 16) = 0;
  }

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Img4DecodeSectionExists(void *a1, unsigned int a2, _BYTE *a3)
{
  result = 6;
  if (a2 <= 1 && a1 && a3)
  {
    if (a2)
    {
      if (a1[55])
      {
        v5 = a1[56];
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else if (a1[33])
    {
      v5 = a1[34];
      if (!v5)
      {
LABEL_12:
        result = 0;
        *a3 = v5;
        return result;
      }

LABEL_10:
      LOBYTE(v5) = 1;
      goto LABEL_12;
    }

    LOBYTE(v5) = 0;
    goto LABEL_12;
  }

  return result;
}

uint64_t Img4DecodeRestoreInfoExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 440))
    {
      v4 = *(a1 + 448) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetBooleanFromSection(uint64_t a1, unsigned int a2, uint64_t a3, BOOL *a4)
{
  memset(v8, 0, sizeof(v8));
  v4 = 6;
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 1uLL, v8);
      v4 = v6;
      if (!v6)
      {
        return DERParseBoolean(&v8[1] + 1, a4);
      }
    }
  }

  return v4;
}

void Img4DecodeGetIntegerFromSection(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (!v5)
      {
        if (DERParseInteger(&v6[1] + 8, a4))
        {
          *a4 = 0;
        }
      }
    }
  }
}

void Img4DecodeGetInteger64FromSection(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (!v5)
      {
        if (DERParseInteger64(&v6[1] + 8, a4))
        {
          *a4 = 0;
        }
      }
    }
  }
}

void Img4DecodeGetDataFromSection(uint64_t a1, unsigned int a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 4uLL, &v9);
    if (v7)
    {
      *a5 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
      *a5 = v8;
    }
  }
}

double Img4DecodeGetObjectProperty(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  v11[0] = 0;
  v11[1] = 0;
  result = 0.0;
  memset(v10, 0, sizeof(v10));
  if (a1 && a5 && (DERImg4DecodeParseManifestProperties(a1, v11, 0) || DERImg4DecodeFindProperty(v11, a2 | 0xE000000000000000, 0x2000000000000011uLL, v10) || DERImg4DecodeFindProperty(&v10[1] + 1, a3, a4, a5)))
  {
    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

void Img4DecodeGetObjectPropertyInteger(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (v5 || DERParseInteger(&v6[1] + 8, a4))
      {
        *a4 = 0;
      }
    }
  }
}

void Img4DecodeGetObjectPropertyInteger64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (v5 || DERParseInteger64(&v6[1] + 8, a4))
      {
        *a4 = 0;
      }
    }
  }
}

void Img4DecodeGetObjectPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 4uLL, &v9);
    if (v7)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
    }

    *a5 = v8;
  }
}

void Img4DecodeGetObjectPropertyString(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 0x16uLL, &v9);
    if (v7)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
    }

    *a5 = v8;
  }
}

double Img4DecodeGetPropertyFromSection(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  *v11 = 0uLL;
  if (a2 <= 1 && a1 && a5)
  {
    v12 = 0;
    if (!Img4DecodeSectionExists(a1, a2, &v12) && v12 == 1)
    {
      if (a2)
      {
        *v11 = *(a1 + 440);
        goto LABEL_9;
      }

      if (!DERImg4DecodeParseManifestProperties(a1, 0, v11))
      {
LABEL_9:
        if (!DERImg4DecodeFindProperty(v11, a3, a4, a5))
        {
          return result;
        }
      }
    }

    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyData(uint64_t *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  result = 6;
  if (a3 && a4)
  {
    v8 = *a1;
    v9 = *(a1 + 2);
    v11[0] = v8;
    v11[1] = v9;
    result = DERImg4DecodeProperty(v11, a2 | 0xE000000000000000, &v12);
    if (!result)
    {
      if (*(&v14 + 1) == 4)
      {
        v10 = v14;
        if (!DWORD1(v14))
        {
          result = 0;
          *a3 = *(&v13 + 1);
LABEL_7:
          *a4 = v10;
          return result;
        }

        result = 7;
      }

      else
      {
        result = 2;
      }
    }

    v10 = 0;
    *a3 = 0;
    goto LABEL_7;
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, a3 + 88) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

double Img4DecodeInitPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3)
  {
    *&v5 = a1;
    *(&v5 + 1) = a2;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 336) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 368) = 0u;
    *(a3 + 384) = 0u;
    *(a3 + 400) = 0u;
    *(a3 + 416) = 0u;
    *(a3 + 432) = 0u;
    *(a3 + 448) = 0;
    if (!DERImg4DecodePayload(&v5, a3 + 88))
    {
      result = *&v5;
      *(a3 + 8) = v5;
    }
  }

  return result;
}

uint64_t Img4DecodeInitManifestCommon(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = 6;
  if (a1 && a4)
  {
    v15 = a1;
    v16 = a2;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 240) = 0u;
    *(a4 + 256) = 0u;
    *(a4 + 272) = 0u;
    *(a4 + 288) = 0u;
    *(a4 + 304) = 0u;
    *(a4 + 320) = 0u;
    *(a4 + 336) = 0u;
    *(a4 + 352) = 0u;
    *(a4 + 368) = 0u;
    *(a4 + 384) = 0u;
    *(a4 + 400) = 0u;
    *(a4 + 416) = 0u;
    *(a4 + 432) = 0u;
    *(a4 + 448) = 0;
    if (a5 == 1229796419)
    {
      v10 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeCertificate(&v15, v10);
      }

      else
      {
        result = DERImg4DecodeUnsignedCertificate(&v15, v10);
      }
    }

    else
    {
      if (a5 != 1229796429)
      {
        return 2;
      }

      v9 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeManifest(&v15, v9);
      }

      else
      {
        result = DERImg4DecodeUnsignedManifest(&v15, v9);
      }
    }

    if (!result)
    {
      if (*(a4 + 264))
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = a1;
        v16 = a2;
        result = DERDecodeItemPartialBufferGetLength(&v15, &v12, 0);
        if (!result)
        {
          *(a4 + 24) = a1;
          v11 = v14 + v13 - a1;
          if (__CFADD__(v14, v13 - a1))
          {
            __break(0x5500u);
          }

          else
          {
            *(a4 + 32) = v11;
            if (v11 == a2)
            {
              return 0;
            }

            else
            {
              return 7;
            }
          }
        }
      }

      else
      {
        return 3;
      }
    }
  }

  return result;
}

uint64_t Img4DecodePerformTrustEvaluation(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = a3;
  return _Img4DecodePerformTrustEvaluationWithCallbacksInternal(a1, a2, v6, a4, 0, a5);
}

uint64_t Img4DecodePerformTrustEvaluatation(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = a3;
  return _Img4DecodePerformTrustEvaluationWithCallbacksInternal(a1, a2, v6, a4, 0, a5);
}

uint64_t _Img4DecodeValidateManifestPropertyInterposer(unsigned int a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = a1;
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *a4;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v12[0] = 0;
  v12[1] = 0;
  memset(v11, 0, sizeof(v11));
  if (v8 && !DERImg4DecodeProperty(v8, 0xE00000006D616E78, &v13) && *(&v15 + 1) == 0x2000000000000011 && !DERDecodeSeqContentInit(&v14 + 1, v12))
  {
    v9 = a1 | 0xE000000000000000;
    while (!DERDecodeSeqNext(v12, v11))
    {
      if (v11[0] == v9)
      {
        (*(*(*a4 + 24) + 8))(*(*(*a4 + 16) + 32), a4 + 24, 4, &v10);
        return 0;
      }
    }
  }

  (*(*(*a4 + 24) + 8))(*(*(*a4 + 16) + 32), a4 + 24, *(a2 + 8), *a2);
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13)
{
  a12 = 0u;
  a13 = 0u;
  a11 = 0u;
  v14 = *(a1 + 2);
  a9 = *a1;
  a10 = v14;
  v15 = a2 | 0xE000000000000000;

  return DERImg4DecodeProperty(&a9, v15, &a11);
}

void OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  _Img4DecodePayloadPropertyExistsWithValue(a1, a2, 2uLL, &a9, 0);
}

void OUTLINED_FUNCTION_5(uint64_t a1, ...)
{
  va_start(va, a1);

  bzero(va, 0xA0uLL);
}

void *OUTLINED_FUNCTION_6(uint64_t a1, const void *a2)
{

  return memcpy(v3, a2, v2);
}

void _Img4DecodePayloadPropertyExistsWithValue(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, BOOL *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    bzero(v19, 0xA0uLL);
    v18 = 0uLL;
    v17 = 0uLL;
    v16 = 0uLL;
    v11 = *(a1 + 8);
    v10 = a1 + 8;
    if (v11)
    {
      bzero(v19, 0xA0uLL);
      if (!DERImg4DecodePayloadWithProperties(v10, v19))
      {
        if (v20[0])
        {
          DERImg4DecodeContentFindItemWithTag(v20, 0x2000000000000010, &v18);
          if (!v12)
          {
            DERImg4DecodeContentFindItemWithTag(&v18, 0x2000000000000011, &v17);
            if (!v13)
            {
              if (a5)
              {
                DERImg4DecodeContentFindItemWithTag(&v17, a2, &v16);
                if (v14)
                {
                  goto LABEL_12;
                }

                *a5 = v16 != 0;
              }

              if (a4)
              {
                DERImg4DecodeFindProperty(&v17, a2, a3, a4);
              }
            }
          }
        }
      }
    }
  }

LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
}

void Img4DecodeEvaluateCertificatePropertiesInternal(void *a1, _OWORD *a2)
{
  v21[0] = 0;
  v21[1] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19 = 0;
  v18 = 0uLL;
  __n = 0;
  v17 = 0;
  v14 = 0;
  __s1 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  __s2 = 0uLL;
  v7 = 0uLL;
  if (a1 && a1[40] && !DERDecodeSeqInit((a1 + 39), &v19, v21) && v19 == 0x2000000000000011)
  {
    while (1)
    {
      if (DERDecodeSeqNext(v21, &v17))
      {
        return;
      }

      v4 = (a1 + 7);
      switch(v17)
      {
        case 0xE00000004D414E50:
LABEL_11:
          v7 = *v4;
          if (DERImg4DecodeProperty(&v18, v17, &v11) || *(&v13 + 1) != 0x2000000000000011 || DERDecodeSeqContentInit(&v12 + 1, v20))
          {
            return;
          }

          while (1)
          {
            v5 = DERDecodeSeqNext(v20, &v14);
            if (v5)
            {
              break;
            }

            if (DERImg4DecodeProperty(&__s1, v14, v9))
            {
              return;
            }

            DERImg4DecodeContentFindItemWithTag(&v7, v14, &__s2);
            if (*(&v10 + 1) <= 4uLL && ((1 << SBYTE8(v10)) & 0x16) != 0)
            {
              if (v6)
              {
                return;
              }

              if (__n != *(&__s2 + 1))
              {
                return;
              }

              v6 = memcmp(__s1, __s2, __n);
              if (v6)
              {
                return;
              }
            }

            else if (*(&v10 + 1) != 0xA000000000000000)
            {
              if (*(&v10 + 1) != 0xA000000000000001 || v6 != 1)
              {
                return;
              }

              v6 = 0;
            }

            if (v6)
            {
              return;
            }
          }

          if (v5 != 1)
          {
            return;
          }

          break;
        case 0xE00000006D616E78:
          if (a2)
          {
            *a2 = v18;
          }

          break;
        case 0xE00000004F424A50:
          v4 = (a1 + 9);
          if (a1[9])
          {
            goto LABEL_11;
          }

          v4 = (a1 + 9);
          if (a1[10])
          {
            goto LABEL_11;
          }

          break;
        default:
          return;
      }
    }
  }
}

uint64_t _Img4DecodePerformTrustEvaluationWithCallbacksInternal(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v21 = 0;
  v22 = 0;
  memset(v23, 0, sizeof(v23));
  result = 6;
  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  if (!*a3)
  {
    return result;
  }

  if (!*a4)
  {
    return result;
  }

  if (!*(a4 + 24))
  {
    return result;
  }

  if (!*(a4 + 8))
  {
    return result;
  }

  if (!*(a4 + 16))
  {
    return result;
  }

  v10 = *(a4 + 32);
  if (!v10)
  {
    return result;
  }

  if (!*(a2 + 24))
  {
    return 6;
  }

  if (*v10 > 0x30uLL)
  {
    return 7;
  }

  v14 = *(a2 + 32);
  result = (*a4)();
  if (result)
  {
    return result;
  }

  *(a2 + 1) = 1;
  v15 = *(a3 + 8);
  if (v15 && (v16 = v15(a2, a6)) != 0 && !memcmp((a2 + 328), v16, **(a4 + 32)))
  {
    v17 = 0;
  }

  else
  {
    result = (*(a4 + 8))(*(a2 + 296), *(a2 + 304), &v21, &v22, a2 + 312, a2 + 320, a4, a6);
    if (result)
    {
      return result;
    }

    if (**(a4 + 32) > 0x30uLL)
    {
      return 7;
    }

    result = (*a4)(*(a2 + 264), *(a2 + 272), a2 + 376);
    if (result)
    {
      return result;
    }

    result = (*(a4 + 16))(v21, v22, *(a2 + 280), *(a2 + 288), a2 + 376, **(a4 + 32), a4, a6);
    if (result)
    {
      return result;
    }

    v17 = 1;
  }

  result = DERImg4DecodeParseManifestProperties(a2, a2 + 40, a2 + 56);
  if (result)
  {
    return result;
  }

  if ((a5 & 1) == 0)
  {
    v18 = *(a3 + 16);
    v19 = (a2 + 40);
    v20 = a1 | 0xE000000000000000;
    if (v18)
    {
      result = v18(v19, v20, 0x2000000000000011, v23, a6);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = DERImg4DecodeFindProperty(v19, v20, 0x2000000000000011uLL, v23);
      if (result)
      {
        return result;
      }
    }

    *(a2 + 72) = *(&v23[1] + 8);
  }

  if (v17)
  {
    result = (*(a4 + 24))(a2, a6);
    if (result)
    {
      return result;
    }
  }

  if (**(a4 + 32) > 0x30uLL)
  {
    return 7;
  }

  if (*(a2 + 136) && *(a2 + 144))
  {
    result = (*a4)(*(a2 + 8), *(a2 + 16), a2 + 184);
    if (result)
    {
      return result;
    }

    *a2 = 1;
  }

  result = Img4DecodeEvaluateDictionaryProperties((a2 + 56), 0, *a3, a6);
  if (!result)
  {
    if (a5)
    {
      return 0;
    }

    result = Img4DecodeEvaluateDictionaryProperties((a2 + 72), 1, *a3, a6);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t verify_signature_rsa3k(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a7 + 32);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *v8;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v9 != a6)
  {
    return 0xFFFFFFFFLL;
  }

  result = verify_pkcs1_sig(v13, v9[4], v11, v12, 3072);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t verify_pkcs1_sig(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v24[4] = *MEMORY[0x277D85DE8];
  if (a5 != 4096 && a5 != 3072)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  v24[2] = 0;
  v24[3] = 0;
  v8 = (a5 + 63) >> 6;
  MEMORY[0x28223BE20](a1);
  v10 = (v23 - v9);
  bzero(v23 - v9, v9);
  *v10 = v8;
  v11 = *(a1 + 8);
  v24[0] = *a1;
  v24[1] = v11;
  memset(v23, 0, sizeof(v23));
  if (DERParseSequenceToObject(v24, DERNumRSAPubKeyPKCS1ItemSpecs, &DERRSAPubKeyPKCS1ItemSpecs, v23, 0x20uLL, 0x20uLL) || ccrsa_pub_init(v10, *(&v23[0] + 1), *&v23[0]))
  {
    goto LABEL_9;
  }

  if (MEMORY[0x277D85C38] && MEMORY[0x28223BE48])
  {
    v13 = *a3;
    v12 = a3[1];
    v15 = *a4;
    v14 = a4[1];
    if (ccrsa_verify_pkcs1v15_digest() || cc_cmp_safe())
    {
LABEL_9:
      result = 0xFFFFFFFFLL;
      goto LABEL_14;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  LOBYTE(v23[0]) = 0;
  v18 = *a3;
  v17 = a3[1];
  v20 = *a4;
  v19 = a4[1];
  v21 = ccrsa_verify_pkcs1v15();
  result = 0xFFFFFFFFLL;
  if (!v21 && (v23[0] & 1) != 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t verify_signature_rsa(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a7 + 32);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *v8;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v9 != a6)
  {
    return 0xFFFFFFFFLL;
  }

  result = verify_pkcs1_sig(v13, v9[4], v11, v12, 4096);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t verify_signature_rsa4096_fixed(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  result = 6;
  if (!a1)
  {
    goto LABEL_26;
  }

  if (!a2)
  {
    goto LABEL_26;
  }

  if (!a3)
  {
    goto LABEL_26;
  }

  if (!a4)
  {
    goto LABEL_26;
  }

  if (!a5)
  {
    goto LABEL_26;
  }

  if (!a6)
  {
    goto LABEL_26;
  }

  if (!a7)
  {
    goto LABEL_26;
  }

  v9 = *(a7 + 32);
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = *v10;
  if (!*v10)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  result = 0xFFFFFFFFLL;
  if (a2 != 516 || *v11 != a6)
  {
    goto LABEL_26;
  }

  if (a1 < 0xFFFFFFFFFFFFFE00)
  {
    MEMORY[0x28223BE20](0xFFFFFFFFLL);
    bzero(&v16, 0x638uLL);
    v15 = 64;
    result = ccrsa_pub_init(&v15, 0x200uLL, a1);
    if (!result)
    {
      if (!MEMORY[0x277D85C38] || !MEMORY[0x28223BE48])
      {
        v17 = 0;
        v13 = v11[4];
        LODWORD(result) = ccrsa_verify_pkcs1v15();
        if (result || (v17 & 1) == 0)
        {
          if (result)
          {
            result = result;
          }

          else
          {
            result = 0xFFFFFFFFLL;
          }

          goto LABEL_26;
        }

        goto LABEL_22;
      }

      v12 = v11[4];
      result = ccrsa_verify_pkcs1v15_digest();
      if (!result)
      {
        if (cc_cmp_safe())
        {
          result = 0xFFFFFFFFLL;
          goto LABEL_26;
        }

LABEL_22:
        result = 0;
      }
    }

LABEL_26:
    v14 = *MEMORY[0x277D85DE8];
    return result;
  }

  __break(0x5513u);
  return result;
}

uint64_t ccrsa_pub_init(unint64_t *a1, unint64_t a2, _BYTE *a3)
{
  v4 = a2;
  if (a2)
  {
    while (!*a3)
    {
      if (a3 == -1)
      {
        __break(0x5513u);
        goto LABEL_10;
      }

      ++a3;
      if (!--v4)
      {
        break;
      }
    }
  }

  if (v4 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_10:
    __break(0x5500u);
  }

  else
  {
    v5 = (v4 + 7) >> 3;
    if (v5 > *a1)
    {
      return 0xFFFFFFFFLL;
    }

    *a1 = v5;
  }

  return MEMORY[0x282201880]();
}

void verify_signature_ecdsa(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              if (a7)
              {
                v9 = *(a7 + 32);
                if (v9)
                {
                  if (v9[2] && *(a7 + 48) && *v9 == a6)
                  {
                    v12[2] = v7;
                    v12[3] = v8;
                    v12[0] = a1;
                    v12[1] = a2;
                    v11[0] = a3;
                    v11[1] = a4;
                    v10[0] = a5;
                    v10[1] = a6;
                    verify_ecdsa_sig(v12, v10, v11);
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

void verify_ecdsa_sig(void *a1, uint64_t *a2, uint64_t *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v22[7] = 0;
  v6 = a1[1];
  ccec_x963_import_pub_size();
  if (!ccec_keysize_is_supported())
  {
    goto LABEL_9;
  }

  cp = ccec_get_cp();
  v8 = *cp;
  if (*cp >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
    __break(0x550Cu);
    goto LABEL_12;
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || (v10 = __CFADD__(v11, 16), v12 = v11 + 16, v10))
  {
LABEL_12:
    __break(0x5500u);
  }

  v13 = cp;
  v14 = v12 - 1;
  MEMORY[0x28223BE20](cp);
  v16 = &v22[-v15];
  bzero(&v22[-v15], v15);
  if (v14 >= 0x10)
  {
    *v16 = v13;
    if (!MEMORY[0x23190E7F0](v13, a1[1], *a1, v16))
    {
      v18 = *a2;
      v17 = a2[1];
      v20 = *a3;
      v19 = a3[1];
      ccec_verify();
    }

LABEL_9:
    v21 = *MEMORY[0x277D85DE8];
    return;
  }

  __break(1u);
}

uint64_t verify_chain_img4_v1(unint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v9 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(&v31, 0x2F0uLL);
        v29[0] = a1;
        v29[1] = v9;
        v30[0] = &ROOT_CA_CERTIFICATE;
        v30[1] = 1215;
        if (!_crack_chain_with_anchor(v29, v30, 3u) && !parse_chain(v30, 3u, &v32, v34, v37, v40))
        {
          v27 = a3;
          v25 = a6;
          v26 = a5;
          v15 = v35;
          v16 = &v33;
          v17 = 0;
          v18 = 2;
          v19 = v35;
          while (1)
          {
            v20 = &v34[10 * v17];
            v21 = *(v20 + 11);
            v22 = *v19;
            v19 += 20;
            if (v21 != v22)
            {
              break;
            }

            if (memcmp(*(v20 + 10), *(v15 - 1), v21))
            {
              break;
            }

            result = verify_chain_signatures(&v37[v17], v16, a7);
            if (result)
            {
              break;
            }

            v16 += 6;
            ++v17;
            v15 = v19;
            if (!--v18)
            {
              v28 = 0uLL;
              if (v34 > 0xFFFFFFFFFFFFFF5FLL)
              {
LABEL_34:
                __break(0x5513u);
                return result;
              }

              v45[0] = 0;
              v45[1] = 0;
              v43 = 0;
              v44[0] = 0;
              v44[1] = 0;
              if (DERDecodeSeqContentInit(v36, v45))
              {
                return 0xFFFFFFFFLL;
              }

LABEL_14:
              if (!DERDecodeSeqNext(v45, &v43) && v43 == 0x2000000000000011)
              {
                v50[0] = 0;
                v50[1] = 0;
                v48 = 0;
                v49[0] = 0;
                v49[1] = 0;
                v46 = 0u;
                v47 = 0u;
                if (!DERDecodeSeqContentInit(v44, v50))
                {
                  do
                  {
                    v23 = DERDecodeSeqNext(v50, &v48);
                    if (v23)
                    {
                      if (v23 == 1)
                      {
                        goto LABEL_14;
                      }

                      return 0xFFFFFFFFLL;
                    }

                    if (v48 != 0x2000000000000010 || DERParseSequenceContentToObject(v49, DERNumAttributeTypeAndValueItemSpecs, &DERAttributeTypeAndValueItemSpecs, &v46, 0x20uLL, 0x20uLL))
                    {
                      return 0xFFFFFFFFLL;
                    }
                  }

                  while (!DEROidCompare(&oidCommonName, &v46));
                  v28 = v47;
                  result = DEROidCompare(&verify_chain_img4_v1_sboot_item, &v28);
                  if (!result)
                  {
                    return 0xFFFFFFFFLL;
                  }

                  if (v37 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  *v27 = v38;
                  *a4 = v39;
                  if (v40 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  if (!v41)
                  {
                    return 0;
                  }

                  v24 = v42;
                  if (!v42)
                  {
                    return 0;
                  }

                  result = 0;
                  if (v26)
                  {
                    if (v25)
                    {
                      result = 0;
                      *v26 = v41;
                      *v25 = v24;
                    }
                  }

                  return result;
                }
              }

              return 0xFFFFFFFFLL;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t parse_chain(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v7 = result;
  v8 = 0;
  v19 = ~result;
  v18 = ~a3;
  v16 = ~a4;
  v14 = ~a5;
  v9 = ~a6;
  v10 = a2;
  while (1)
  {
    v11 = 16 * v8;
    if (16 * v8 > v19 || 48 * v8 > v18)
    {
      break;
    }

    result = DERParseSequenceToObject(v7 + 16 * v8, DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, a3 + 48 * v8, 0x30uLL, 0x30uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (160 * v8 > v16)
    {
      break;
    }

    v12 = a4 + 160 * v8;
    result = DERParseSequenceToObject(a3 + 48 * v8, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v12, 0xA0uLL, 0xA0uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v14)
    {
      break;
    }

    v23 = 0u;
    v24 = 0u;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    if (DERParseSequenceContentToObject((v12 + 96), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v23, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseSequenceContentToObject(&v23, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v20, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    result = DEROidCompare(&v20, &oidRsa);
    if (!result)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(&v21 + 1))
    {
      if (*(&v21 + 1) != 2 || *v21 != 5)
      {
        return 0xFFFFFFFFLL;
      }

      if (v21 == -1)
      {
        break;
      }

      if (*(v21 + 1))
      {
        return 0xFFFFFFFFLL;
      }
    }

    result = DERParseBitString(&v24, (a5 + 16 * v8), &v22);
    if (result || v22)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v9)
    {
      break;
    }

    result = parse_extensions(v12, (a6 + 16 * v8));
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (++v8 == v10)
    {
      return 0;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t verify_chain_signatures(void *a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_22;
  }

  if (!a2)
  {
    goto LABEL_22;
  }

  if (!a3)
  {
    goto LABEL_22;
  }

  v12 = 0u;
  v13 = 0u;
  v11 = 0;
  memset(v14, 0, sizeof(v14));
  v9 = 0;
  v10 = 0;
  v5 = *(a3 + 32);
  if (!v5 || !v5[2] || !*a3 || !*(a3 + 40) || *v5 > 0x30uLL || DERParseSequenceContentToObject(a2 + 2, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v12, 0x20uLL, 0x20uLL))
  {
    goto LABEL_22;
  }

  if (!*(&v13 + 1) || (result = DEROidCompare(&v12, &oidEcPubKey), (result & 1) != 0))
  {
LABEL_16:
    if (DEROidCompare(&v12, *(a3 + 40)) && !(*a3)(*a2, a2[1], v14, **(a3 + 32), a3) && !DERParseBitString((a2 + 4), &v9, &v11) && !v11)
    {
      result = (*(a3 + 16))(*a1, a1[1], v9, v10, v14, **(a3 + 32), a3, 0);
      if (!result)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_22;
  }

  if (*(&v13 + 1) != 2 || *v13 != 5)
  {
LABEL_22:
    result = 0xFFFFFFFFLL;
LABEL_21:
    v8 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v13 != -1)
  {
    if (!*(v13 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  __break(0x5513u);
  return result;
}

uint64_t verify_chain_img4_v2_with_crack_callback(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(v22, 0x300uLL);
        v21[0] = a1;
        v21[1] = v10;
        if (a8(v21, v22, 2))
        {
          return 0xFFFFFFFFLL;
        }

        result = parse_chain(v22, 2u, v23, v24, v27, v28);
        if (result)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          v15 = 1;
          v16 = 1;
          while ((v15 & 1) != 0)
          {
            v17 = &v24[10 * v16];
            if (__n == *(v17 + 7) && !memcmp(__s1, *(v17 + 6), __n))
            {
              result = verify_chain_signatures(v27, &v23[3 * v16], a7);
              v15 = 0;
              v16 = 2;
              if (!result)
              {
                continue;
              }
            }

            return 0xFFFFFFFFLL;
          }

          if (v27 > 0xFFFFFFFFFFFFFFEFLL || (*a3 = v27[2], *a4 = v27[3], v28 > 0xFFFFFFFFFFFFFFEFLL))
          {
            __break(0x5513u);
          }

          else if (v29 && (v18 = v30) != 0)
          {
            result = 0;
            if (a5 && a6)
            {
              result = 0;
              *a5 = v29;
              *a6 = v18;
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t crack_chain_rsa4k_sha384_x86(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_X86_ROOT_CA_CERTIFICATE;
  a2[1] = 1382;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_ROOT_CA_CERTIFICATE;
  a2[1] = 1394;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_global(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_GLOBAL_ROOT_CA_CERTIFICATE;
  a2[1] = 1404;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_fake(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_FAKE_ROOT_CA_CERTIFICATE;
  a2[1] = 1425;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_fake_global(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_FAKE_GLOBAL_ROOT_CA_CERTIFICATE;
  a2[1] = 1435;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_avp(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_AVP_ROOT_CA_CERTIFICATE;
  a2[1] = 1431;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_tatsu_local_policy(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 1382;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_tatsu_local_policy_hacktivate(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &LOCAL_RSA4K_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 1442;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa3k_sha384(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA3K_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 1118;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 1374;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_AWG1(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_ROOT_CA_CERTIFICATE_AWG1;
  a2[1] = 1404;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_PED(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_PED_ROOT_CA_CERTIFICATE;
  a2[1] = 1400;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t verify_chain_img4_ec_v1(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(v28, 0x330uLL);
        v27[0] = a1;
        v27[1] = v10;
        if (!a8(v27, v28, 3) && !parse_ec_chain(v28, 3u, &v29, v31, v33, &v36, v37))
        {
          v26 = a3;
          v15 = v32;
          v16 = &v30;
          v17 = 0;
          v18 = 2;
          v19 = v32;
          while (1)
          {
            v20 = &v31[10 * v17];
            v21 = *(v20 + 11);
            v22 = *v19;
            v19 += 20;
            if (v21 != v22)
            {
              break;
            }

            if (memcmp(*(v20 + 10), *(v15 - 1), v21))
            {
              break;
            }

            result = verify_chain_signatures(&v33[v17], v16, a7);
            if (result)
            {
              break;
            }

            v16 += 6;
            ++v17;
            v15 = v19;
            if (!--v18)
            {
              if (v33 > 0xFFFFFFFFFFFFFFDFLL || (*v26 = v34, *a4 = v35, v37 > 0xFFFFFFFFFFFFFFDFLL))
              {
                __break(0x5513u);
              }

              else if (v38 && (v23 = v39) != 0)
              {
                result = 0;
                if (a5)
                {
                  if (a6)
                  {
                    result = 0;
                    *a5 = v38;
                    *a6 = v23;
                  }
                }
              }

              else
              {
                return 0;
              }

              return result;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t parse_ec_chain(uint64_t result, unsigned int a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    return 0;
  }

  v7 = a4;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v22 = result;
  v24 = ~result;
  v23 = ~a3;
  v21 = ~a4;
  if (a5 <= a6)
  {
    v12 = a6;
  }

  else
  {
    v12 = a5;
  }

  v20 = ~v12;
  v14 = ~a7;
  v15 = 16 * a2;
  while (v11 <= v24 && v10 <= v23)
  {
    result = DERParseSequenceToObject(v22 + v11, DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, v8, 0x30uLL, 0x30uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v9 > v21)
    {
      break;
    }

    result = DERParseSequenceToObject(v8, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v7, 0xA0uLL, 0xA0uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v20)
    {
      break;
    }

    v31 = 0u;
    v32 = 0u;
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    if (DERParseSequenceContentToObject((v7 + 96), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v31, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseSequenceContentToObject(&v31, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v28, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (!DEROidCompare(&v28, &oidEcPubKey))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseBitString(&v32, (a5 + v11), &v30))
    {
      return 0xFFFFFFFFLL;
    }

    if (v30)
    {
      return 0xFFFFFFFFLL;
    }

    v25 = 0;
    v26 = 0;
    v27 = 0;
    result = DERDecodeItem(&v29, &v25);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    v16 = (a6 + v11);
    v17 = v27;
    *v16 = v26;
    v16[1] = v17;
    if (v11 > v14)
    {
      break;
    }

    result = parse_extensions(v7, (a7 + v11));
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    v11 += 16;
    v8 += 48;
    v7 += 160;
    v10 += 48;
    v9 += 160;
    if (v15 == v11)
    {
      return 0;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t verify_chain_img4_ec_v2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (!a1)
  {
    return result;
  }

  v10 = a2;
  if (!a2 || !a3 || !a4)
  {
    return result;
  }

  bzero(v20, 0x220uLL);
  v19[0] = a1;
  v19[1] = v10;
  if (a8(v19, v20, 2))
  {
    return 0xFFFFFFFFLL;
  }

  result = parse_ec_chain(v20, 2u, v21, v23, v28, &v29, v30);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v23 > 0xFFFFFFFFFFFFFF5FLL)
  {
    goto LABEL_22;
  }

  if (__n != v27)
  {
    return 0xFFFFFFFFLL;
  }

  result = memcmp(__s1, __s2, __n);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v21 > 0xFFFFFFFFFFFFFFCFLL)
  {
LABEL_22:
    __break(0x5513u);
    return result;
  }

  result = verify_chain_signatures(v28, v22, a7);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v28 > 0xFFFFFFFFFFFFFFEFLL)
  {
    goto LABEL_22;
  }

  v17 = v28[3];
  *a3 = v28[2];
  *a4 = v17;
  if (v30 > 0xFFFFFFFFFFFFFFEFLL)
  {
    goto LABEL_22;
  }

  if (!v31)
  {
    return 0;
  }

  v18 = v32;
  if (!v32)
  {
    return 0;
  }

  result = 0;
  if (a5)
  {
    if (a6)
    {
      result = 0;
      *a5 = v31;
      *a6 = v18;
    }
  }

  return result;
}

uint64_t crack_chain_ecdsa256_sha256(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &LOCAL_EC256_SHA256_ROOT_CA_CERTIFICATE;
  a2[1] = 551;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384_hacktivate(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &LOCAL_EC384_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 610;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &EC384_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 542;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384_qa(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &QA_EC384_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 540;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t img4_verify_signature_with_chain(unint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, void *a7, void *a8)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  if (verify_chain_img4_v1(a1, a2, &v17, &v18, &v15, &v16, kImg4DecodeSecureBootRsa1kSha1))
  {
    return 0xFFFFFFFFLL;
  }

  *a7 = v15;
  *a8 = v16;
  result = verify_signature_rsa(v17, v18, a3, a4, a5, a6, kImg4DecodeSecureBootRsa1kSha1);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t _crack_chain_with_anchor(unint64_t *a1, uint64_t a2, unsigned int a3)
{
  v18 = 0;
  v19 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v5 = ~a2;
  v6 = 1;
  v7 = *a1;
  v8 = a1[1];
  while (1)
  {
    v18 = v7;
    v19 = v8;
    result = DERDecodeItem(&v18, &v15);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (__CFADD__(v16, v17))
    {
      break;
    }

    v10 = v16 + v17;
    v11 = v16 + v17 - v7;
    v12 = !(v11 >> 17) && v8 >= v11;
    if (!v12 || v6 >= a3)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5 < 16 * v6)
    {
      break;
    }

    v14 = (a2 + 16 * v6);
    *v14 = v7;
    v14[1] = v11;
    if (v10 < v7)
    {
      break;
    }

    v12 = v8 >= v11;
    v8 -= v11;
    if (!v12)
    {
      goto LABEL_21;
    }

    ++v6;
    v7 = v10;
    if (!v8)
    {
      if (v6 == a3)
      {
        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  __break(0x5513u);
LABEL_21:
  __break(0x5515u);
  return result;
}

uint64_t parse_extensions(uint64_t a1, void *a2)
{
  v11[0] = 0;
  v11[1] = 0;
  v9[1] = 0;
  v10 = 0;
  v8 = 0;
  v9[0] = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  *a2 = 0;
  a2[1] = 0;
  if (!*(a1 + 152))
  {
    return 0;
  }

  if (DERDecodeSeqInit(a1 + 144, &v10, v11) || v10 != 0x2000000000000010)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 1;
  while (1)
  {
    v4 = DERDecodeSeqNext(v11, &v8);
    if (v4)
    {
      break;
    }

    if (v8 != 0x2000000000000010 || DERParseSequenceContentToObject(v9, DERNumExtensionItemSpecs, &DERExtensionItemSpecs, v6, 0x30uLL, 0x30uLL))
    {
      return 0xFFFFFFFFLL;
    }

    v3 = 0;
    if (DEROidCompare(&oidAppleImg4ManifestCertSpec, v6))
    {
      memset(v12, 0, sizeof(v12));
      if (DERDecodeItem(&v7, v12) || v12[0] != 0x2000000000000011)
      {
        return 0xFFFFFFFFLL;
      }

      v3 = 0;
      *a2 = v7;
    }
  }

  if (v4 != 1 || (v3 & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t hybrid_scheme3_pubkey_cast(uint64_t result, uint64_t a2)
{
  if (a2 != 3129)
  {
    return 0;
  }

  v2 = *result == 0xC8233E0E5C386FFLL && *(result + 8) == 0x282042C0C823030;
  if (!v2 || *(result + 16) != 4)
  {
    return 0;
  }

  if (*(result + 533) != 537559556)
  {
    return 0;
  }

  return result;
}

uint64_t hybrid_scheme3_signature_cast(uint64_t result, uint64_t a2)
{
  if (a2 != 5160 || *result ^ 0x148233CEE5C386FFLL | *(result + 8) ^ 0x282041B1482301FLL | *(result + 16))
  {
    return 0;
  }

  if (*(result + 529) != 319980036)
  {
    return 0;
  }

  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBuffer(uint64_t result, unint64_t *a2, int a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_54;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_55;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        v17 = v16 < v15 && a3 == 0;
        v18 = (v12 + 1);
        if (v17)
        {
          return 3;
        }

LABEL_28:
        if (v15 > (~v18 & 0x7FFFFFFFFFFFFFFFLL))
        {
          return 7;
        }

        if (v18 <= v18 + v15)
        {
          result = 0;
          a2[1] = v18;
          a2[2] = v15;
          return result;
        }

        goto LABEL_55;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
LABEL_55:
        __break(0x5519u);
LABEL_56:
        __break(0x5515u);
        return result;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v18 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_55;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_56;
        }

        v23 = *v14++;
        v15 = (v15 << 8) | v23;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (v15 <= v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = a3;
          }

          result = 3;
          if (v15 >= 0x80 && (v24 & 1) != 0)
          {
            goto LABEL_28;
          }

          return result;
        }
      }
    }

LABEL_54:
    __break(0x5513u);
    goto LABEL_55;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_54;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_55;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseBooleanWithDefault(unsigned __int8 **a1, BOOL a2, BOOL *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
    v4 = **a1;
    if (v4 == 255 || v4 == 0)
    {
      a2 = v4 != 0;
LABEL_9:
      result = 0;
      *a3 = a2;
      return result;
    }
  }

  return 3;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, v5);
  if (!result)
  {
    if (HIDWORD(v5[0]))
    {
      result = 7;
    }

    else
    {
      result = 0;
      *a2 = v5[0];
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERParseIntegerSigned(uint64_t a1, _DWORD *a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64Signed(a1, v5);
  if (!result)
  {
    if (v5[0] == SLODWORD(v5[0]))
    {
      result = 0;
      *a2 = v5[0];
    }

    else
    {
      result = 7;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DERParseInteger64Signed(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  v4 = *result + v2;
  v5 = **result;
  if (**result)
  {
    if (v5 != 255)
    {
      goto LABEL_7;
    }

    if (v2 != 1)
    {
      if ((v3 + 1) < v4)
      {
        if ((v3[1] & 0x80000000) == 0)
        {
LABEL_7:
          if (v2 > 8)
          {
            return 7;
          }

          goto LABEL_10;
        }

        return 3;
      }

LABEL_21:
      __break(0x5519u);
      return result;
    }
  }

  else if (v2 != 1)
  {
    if ((v3 + 1) >= v4)
    {
      goto LABEL_21;
    }

    if ((v3[1] & 0x80000000) == 0)
    {
      return 3;
    }

    if (v2 > 9)
    {
      return 7;
    }
  }

LABEL_10:
  v6 = v5 >> 7;
  do
  {
    v7 = v6;
    v8 = *v3++;
    v6 = v8 | (v6 << 8);
    --v2;
  }

  while (v2);
  if ((v5 & 0x80000000) == 0 && v7 << 8 < 0)
  {
    return 7;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  v9[3] = *MEMORY[0x277D85DE8];
  memset(v9, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v9, 0);
  if (result)
  {
    goto LABEL_7;
  }

  v6 = v9[0];
  *a2 = v9[0];
  if (v6 >> 1 != 0x1000000000000008)
  {
    result = 2;
    goto LABEL_7;
  }

  if (__CFADD__(v9[1], v9[2]))
  {
    __break(0x5513u);
  }

  else
  {
    v7 = v9[1] + v9[2];
    if (v9[1] <= v9[1] + v9[2])
    {
      result = 0;
      *a3 = v9[1];
      a3[1] = v7;
LABEL_7:
      v8 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    result = 1;
    goto LABEL_8;
  }

  v11[0] = *a1;
  v11[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v11, a2, 0);
  if (result)
  {
LABEL_8:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v8 = a2[1];
  v7 = a2[2];
  if (!__CFADD__(v8, v7))
  {
    v9 = v8 + v7;
    if (v9 <= a1[1] && *a1 <= v9)
    {
      result = 0;
      *a1 = v9;
      goto LABEL_8;
    }

    __break(0x5519u);
  }

  __break(0x5513u);
  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v13[3] = *MEMORY[0x277D85DE8];
  memset(v13, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v13, 0);
  if (!result)
  {
    if (v13[0] == 0x2000000000000010)
    {
      result = DERParseSequenceContentToObject(&v13[1], a2, a3, a4, a5, a6);
    }

    else
    {
      result = 2;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v38 = *MEMORY[0x277D85DE8];
  v36 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v36 = *a1;
  v37 = v13;
  if (a2)
  {
    v14 = 0;
    while (1)
    {
      memset(v35, 170, sizeof(v35));
      v16 = v36;
      v15 = v37;
      result = DERDecodeSeqNext(&v36, v35);
      if (result)
      {
        if (result == 1)
        {
          if (a2 <= v14)
          {
            result = 0;
          }

          else
          {
            v29 = (a3 + 24 * v14 + 16);
            v30 = a2 - v14;
            result = 0;
            while (1)
            {
              v31 = *v29;
              v29 += 12;
              if ((v31 & 1) == 0)
              {
                break;
              }

              if (!--v30)
              {
                goto LABEL_51;
              }
            }

            result = 5;
          }
        }

        goto LABEL_51;
      }

      if (a2 <= v14)
      {
        result = 2;
        goto LABEL_51;
      }

      while (1)
      {
        if (24 * v14 > ~a3)
        {
          goto LABEL_58;
        }

        v18 = a3 + 24 * v14;
        v19 = *(v18 + 16);
        if ((v19 & 2) != 0 || v35[0] == *(v18 + 8))
        {
          break;
        }

        result = 2;
        if ((v19 & 1) != 0 && a2 > ++v14)
        {
          continue;
        }

        goto LABEL_51;
      }

      if ((v19 & 4) == 0)
      {
        v20 = *v18;
        v21 = *v18 + 16;
        if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
        {
          result = 7;
          goto LABEL_51;
        }

        if (v20 > ~a4)
        {
          goto LABEL_58;
        }

        v23 = (a4 + v20);
        v24 = v23 + 16;
        if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
        {
          goto LABEL_59;
        }

        *v23 = *&v35[1];
        if ((v19 & 8) != 0)
        {
          if (v16 >= v35[1])
          {
            if (v15 < v16 || *(v23 + 1) > v15 - v16)
            {
              goto LABEL_59;
            }

            *v23 = v16;
            result = 3;
            goto LABEL_51;
          }

          v27 = *(v23 + 1);
          v28 = v27 + v35[1] - v16;
          if (__CFADD__(v27, v35[1] - v16))
          {
            __break(0x5500u);
            return result;
          }

          if (v15 < v16 || v28 > v15 - v16)
          {
            goto LABEL_59;
          }

          *v23 = v16;
          *(v23 + 1) = v28;
        }
      }

      if (a2 == ++v14)
      {
        if (!__CFADD__(v35[1], v35[2]))
        {
          v32 = a1[1];
          if (!__CFADD__(*a1, v32))
          {
            v11 = v35[1] + v35[2];
            v13 = *a1 + v32;
            break;
          }
        }

LABEL_58:
        __break(0x5513u);
        goto LABEL_59;
      }

      if (a2 <= v14)
      {
        v11 = v36;
        v13 = v37;
        break;
      }
    }
  }

  if (v11 == v13)
  {
    result = 0;
  }

  else
  {
    result = 3;
  }

LABEL_51:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  memset(v5, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v5, 0);
  if (!result)
  {
    if (v5[0] - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      result = DERDecodeSequenceContentWithBlock(&v5[1], a2);
    }

    else
    {
      result = 2;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DERDecodeSequenceContentWithBlock(unint64_t *a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (__CFADD__(*a1, v3))
  {
    __break(0x5513u);
LABEL_13:
    __break(0x5519u);
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_13;
  }

  v10[0] = *a1;
  v10[1] = v4;
  memset(v9, 170, sizeof(v9));
  v8 = 0;
  do
  {
    if (v8)
    {
      result = 0;
      goto LABEL_11;
    }

    LODWORD(result) = DERDecodeSeqNext(v10, v9);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v9, &v8);
  }

  while (!result);
  if (result <= 1)
  {
    result = 0;
  }

  else
  {
    result = result;
  }

LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL DEROidCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    return v4 == *(a2 + 8) && memcmp(*a1, *a2, v4) == 0;
  }

  return result;
}

double DERImg4DecodeContentFindItemWithTag(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  if (!DERDecodeSeqContentInit(a1, v6))
  {
    v7 = 0;
    v8 = 0uLL;
    while (!DERDecodeSeqNext(v6, &v7))
    {
      if (v7 == a2)
      {
        result = *&v8;
        *a3 = v8;
        return result;
      }
    }
  }

  return result;
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_0();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!*(a2 + 80) || (OUTLINED_FUNCTION_1(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = *(a2 + 96);
          v5 = a2 + 96;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadProperties(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  result = 6;
  if (a1 && a2)
  {
    bzero(v12, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v12);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          result = 2;
        }

        else
        {
          v6 = *(a2 + 80);
          v5 = a2 + 80;
          if (!v6 || (OUTLINED_FUNCTION_1(), result = DERImg4DecodePayloadCompression(v5, v11), !result))
          {
            result = 0;
          }
        }
      }
    }

    else
    {
      v7 = v12[1];
      *a2 = v12[0];
      *(a2 + 16) = v7;
      v8 = v12[3];
      *(a2 + 32) = v12[2];
      *(a2 + 48) = v8;
      v9 = v12[5];
      *(a2 + 64) = v12[4];
      *(a2 + 80) = v9;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DERImg4DecodeCertificatePropertiesAndPubKey(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              v21[0] = a1;
              v21[1] = a2;
              v16 = 0u;
              v17 = 0u;
              v14 = 0u;
              v15 = 0u;
              result = DERDecodeItem(v21, &v18);
              if (!result)
              {
                if (v18 != 0x2000000000000011)
                {
                  return 2;
                }

                if (!DERParseSequenceContentToObject(&v19, 2u, &DERIM4CItemSpecs, &v16, 0x20uLL, 0))
                {
                  result = DERDecodeItem(&v16, &v18);
                  if (result)
                  {
                    return result;
                  }

                  if (v18 != 0x2000000000000010)
                  {
                    return 2;
                  }

                  if (!DERParseSequenceContentToObject(&v19, 2u, &DERCRTPSequenceItemSpecs, &v14, 0x20uLL, 0))
                  {
                    v12 = *(&v15 + 1);
                    *a3 = v15;
                    *a4 = v12;
                    result = DERDecodeItem(&v17, &v18);
                    if (result)
                    {
                      return result;
                    }

                    if (v18 == 4)
                    {
                      result = 0;
                      v13 = v20;
                      *a5 = v19;
                      *a6 = v13;
                      return result;
                    }

                    return 2;
                  }
                }

                return 0xFFFFFFFFLL;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodeRestoreInfo(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePropertyWithItem(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10[0] = 0;
  v10[2] = 0;
  v10[1] = 22;
  v10[3] = 24;
  v11 = a3;
  result = DERParseSequenceToObject(a1, 2u, v10, a4, 0x30uLL, 0);
  if (!result)
  {
    result = DERParseInteger(a4, &v9);
    if (!result)
    {
      if ((v9 | 0xE000000000000000) == a2)
      {
        result = 0;
        *(a4 + 16) = a2 | 0xE000000000000000;
        *(a4 + 40) = a3;
      }

      else
      {
        result = 2;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *DERImg4DecodeFindProperty(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8[0] = 0;
  v8[1] = 0;
  result = DERDecodeSeqContentInit(a1, v8);
  if (!result)
  {
    return DERImg4DecodeFindPropertyInSequence(v8, a2, a3, a4);
  }

  return result;
}

void Img4DecodeCopyPayloadDigest(uint64_t a1, void *a2, size_t a3, uint64_t a4)
{
  v12[7] = *MEMORY[0x277D85DE8];
  if (a1 && a2 && a3 && a4 && *a4 && *(a1 + 136) && *(a1 + 144) && a3 <= 0x30)
  {
    if (*a1 == 1)
    {
      v6 = (a1 + 184);
      v7 = a2;
LABEL_15:
      memcpy(v7, v6, a3);
      goto LABEL_16;
    }

    v10 = OUTLINED_FUNCTION_0_0();
    if (**(a4 + 32) <= 0x30uLL && !v9(*(v8 + 8), *(v8 + 16), v12, v10))
    {
      a3 = **(a4 + 32);
      v6 = v12;
      v7 = a2;
      goto LABEL_15;
    }
  }

LABEL_16:
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t Img4DecodeCopyManifestDigest(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v13[7] = *MEMORY[0x277D85DE8];
  v4 = 6;
  if (a1 && a2 && a3 && a4 && *a4)
  {
    if (*(a1 + 24))
    {
      if (a3 > 0x30)
      {
        v4 = 7;
      }

      else if (*(a1 + 1) == 1)
      {
        OUTLINED_FUNCTION_6(a1, (a1 + 328));
        v4 = 0;
      }

      else
      {
        v6 = OUTLINED_FUNCTION_0_0();
        v10 = v9(v8, *(v7 + 32), v13, a3, v6);
        v4 = v10;
        if (!v10)
        {
          OUTLINED_FUNCTION_6(v10, v13);
        }
      }
    }

    else
    {
      v4 = 1;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t Img4DecodeGetManifest(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 32);
    if (HIDWORD(v5))
    {
      return 7;
    }

    else
    {
      v6 = *(a1 + 24);
      *a2 = v6;
      *a3 = v5;
      if (v5)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = v7;
      return (v8 << 31 >> 31);
    }
  }

  return result;
}

uint64_t Img4DecodePayloadPropertiesExists(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_5(a1);
    result = 6;
    if (v1)
    {
      v5 = *(v2 + 8);
      v4 = v2 + 8;
      if (v5)
      {
        result = DERImg4DecodePayloadWithProperties(v4, v7);
        if (!result)
        {
          *v1 = v8 != 0;
        }
      }
    }
  }

  else
  {
    result = 6;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Img4DecodeGetPayloadProperties(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5(a1);
  result = 6;
  if (v1)
  {
    v5 = *(v2 + 8);
    v4 = v2 + 8;
    if (v5)
    {
      result = DERImg4DecodePayloadWithProperties(v4, v8);
      if (!result)
      {
        if (v9)
        {
          result = 0;
          v6 = v10;
          *v1 = v9;
          v1[1] = v6;
          goto LABEL_8;
        }

LABEL_7:
        result = 6;
      }
    }
  }

LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Img4DecodeCopyPayloadPropertiesDigest(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v11[7] = *MEMORY[0x277D85DE8];
  result = 6;
  if (a1 && a2 && a3)
  {
    if (a3 > 0x30)
    {
      result = 7;
    }

    else if (a4)
    {
      if (*a4)
      {
        v7 = OUTLINED_FUNCTION_0_0();
        result = v9(*v8, v8[1], v11, a3, v7);
        if (!result)
        {
          OUTLINED_FUNCTION_6(result, v11);
          result = 0;
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void Img4DecodePayloadPropertiesFindItemWithTag(unint64_t *a1, unsigned int a2, void *a3)
{
  if (a1)
  {
    v23[0] = 0;
    v23[1] = 0;
    v22[0] = 0;
    v22[1] = 0;
    v21[0] = 0;
    v21[1] = 0;
    v20 = 0;
    v19[0] = 0;
    v19[1] = 0;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v13 = 0uLL;
    v12 = 0uLL;
    v11 = 0uLL;
    if (a3)
    {
      if (*a1)
      {
        DERImg4DecodeContentFindItemWithTag(a1, 0x2000000000000010, &v11);
        if (!v5)
        {
          if (v11)
          {
            DERImg4DecodeContentFindItemWithTag(&v11, 22, &v13);
            if (!v6 && !DERImg4DecodeTagCompare(&v13, 0x50415950u))
            {
              DERImg4DecodeContentFindItemWithTag(&v11, 0x2000000000000011, &v12);
              if (!v7 && !DERDecodeSeqContentInit(&v12, v23))
              {
                while (1)
                {
                  do
                  {
                    while (1)
                    {
                      v8 = DERDecodeSeqNext(v23, &v20);
                      if (!v8)
                      {
                        break;
                      }

                      if (v8 == 1)
                      {
                        return;
                      }
                    }
                  }

                  while (DERDecodeItem(v21, &v18));
                  DERImg4DecodeContentFindItemWithTag(v19, 22, &v13);
                  if (v9)
                  {
                    break;
                  }

                  if (!DERImg4DecodeTagCompare(&v13, a2) && !DERDecodeSeqContentInit(v19, v22) && !DERDecodeSeqNext(v22, v17) && v17[0] == 22 && !DERDecodeSeqNext(v22, &v14))
                  {
                    if (v15)
                    {
                      v10 = v16;
                      *a3 = v15;
                      a3[1] = v10;
                    }

                    return;
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

void Img4DecodeGetPayloadPropertiesBoolean()
{
  OUTLINED_FUNCTION_0_0();
  _Img4DecodePayloadPropertyExistsWithValue(v0, v1, 1uLL, &v5, 0);
  if (!v2)
  {
    v3 = OUTLINED_FUNCTION_3();
    DERParseBoolean(v3, v4);
  }
}

void Img4DecodeGetPayloadPropertiesInteger()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v0, v1, v2, v3, v4, v5, v6, v7, v11);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_3();
    DERParseInteger(v9, v10);
  }
}

void Img4DecodeGetPayloadPropertiesInteger64()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v0, v1, v2, v3, v4, v5, v6, v7, v11);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_3();
    DERParseInteger64(v9, v10);
  }
}

void Img4DecodeGetPayloadPropertiesData(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  OUTLINED_FUNCTION_0_0();
  _Img4DecodePayloadPropertyExistsWithValue(v6, v7, 4uLL, v10, 0);
  if (!v8)
  {
    v9 = v10[4];
    *a3 = v10[3];
    *a4 = v9;
  }
}

uint64_t Img4DecodeGetObjectPropertyBoolean()
{
  OUTLINED_FUNCTION_0_0();
  v4 = 6;
  if (v0 && v3)
  {
    Img4DecodeGetObjectProperty(v0, v1, v2 | 0xE000000000000000, 1uLL, v9);
    if (!v5)
    {
      v6 = OUTLINED_FUNCTION_3();
      return DERParseBoolean(v6, v7);
    }

    return v5;
  }

  return v4;
}

void Img4DecodeGetPayloadVersionPropertyString(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 && a4)
  {
    v14 = 0;
    v15[0] = 0;
    v15[1] = 0;
    memset(v13, 0, sizeof(v13));
    v12 = 0uLL;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    if (DERDecodeItem(a1, &v14) || DERImg4DecodeProperty(v15, v14, v13) || (DERImg4DecodeContentFindItemWithTag(&v13[1] + 1, a2, &v12), v7) || DERImg4DecodeProperty(&v12, a2, &v9))
    {
      v8 = 0;
      *a3 = 0;
    }

    else
    {
      v8 = v11;
      *a3 = *(&v10 + 1);
    }

    *a4 = v8;
  }
}

uint64_t Img4DecodeGetPropertyInteger(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_1_0(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v26, v29);
  if (!result)
  {
    if (v30 != 2)
    {
      result = 2;
      if (!v8)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (!v8)
    {
      return 6;
    }

    v17 = OUTLINED_FUNCTION_2(result, v10, v11, v12, v13, v14, v15, v16, v20, v22, v24, v25, v27, v28);
    result = DERParseInteger(v17, v18);
  }

  if (!v8)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *v8 = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyInteger64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_1_0(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v26, v29);
  if (!result)
  {
    if (v30 != 2)
    {
      result = 2;
      if (!v8)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (!v8)
    {
      return 6;
    }

    v17 = OUTLINED_FUNCTION_2(result, v10, v11, v12, v13, v14, v15, v16, v20, v22, v24, v25, v27, v28);
    result = DERParseInteger64(v17, v18);
  }

  if (!v8)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *v8 = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyBoolean(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v15 = *a1;
  v16 = v4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  result = DERImg4DecodeProperty(&v15, a2 | 0xE000000000000000, &v17);
  if (!result)
  {
    if (*(&v19 + 1) == 1)
    {
      if (a3)
      {
        v13 = OUTLINED_FUNCTION_2(result, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1));
        return DERParseBoolean(v13, v14);
      }

      else
      {
        return 6;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void Img4DecodeCopyManifestTrustedBootPolicyMeasurement(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v18[26] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a5)
    {
      if (a5 <= 0x30)
      {
        bzero(v17, 0x100uLL);
        v11[0] = Img4DecodeDigestInit;
        v11[1] = Img4DecodeDigestUpdate;
        v11[2] = Img4DecodeDigestReturnHash;
        *&v14 = &default_manifest_property_exclude;
        *(&v14 + 1) = 156;
        v15 = a3;
        v16 = v11;
        Img4DecodeEvaluateCertificatePropertiesInternal(a1, &v14);
        if (!v8)
        {
          if (a1)
          {
            if (a2)
            {
              v12[0] = &v14;
              v12[1] = a2;
              v12[2] = a1;
              v13 = v18;
              if (!(*v16)(*(v15 + 32), &v13) && !Img4DecodeEvaluateDictionaryProperties(a1 + 7, 0, _Img4DecodeValidateManifestPropertyInterposer, v12))
              {
                v9 = (v16[2])(*(v15 + 32), &v13, 48, v17);
                if (!v9)
                {
                  OUTLINED_FUNCTION_6(v9, v17);
                }
              }
            }
          }
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t Img4DecodeEvaluateDictionaryProperties(unint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a4)
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  if (!a3)
  {
    return 6;
  }

  result = DERDecodeSeqContentInit(a1, v13);
  if (!result)
  {
    while (1)
    {
      result = DERDecodeSeqNext(v13, &v14);
      if (result == 1)
      {
        return 0;
      }

      if (result)
      {
        return result;
      }

      result = DERImg4DecodeProperty(&v15, v14, v8);
      if (result)
      {
        return result;
      }

      result = 2;
      if (*(&v9 + 1) > 0x16uLL || ((1 << SBYTE8(v9)) & 0x400016) == 0 || !(v14 >> 62) || (v14 & 0x2000000000000000) == 0)
      {
        return result;
      }

      if (HIDWORD(v16))
      {
        break;
      }

      v10 = v15;
      LODWORD(v11) = v16;
      v12 = *(&v9 + 1);
      result = a3(v14, &v10, a2, a4);
      if (result)
      {
        return result;
      }
    }

    return 7;
  }

  return result;
}

uint64_t Img4DecodeEvaluateCertificateChain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 6;
  if (a1 && a2 && a3 && a4 && a7 && a6)
  {
    v9 = *(a4 + 8);
    if (v9)
    {
      v9(a1);
      return 3;
    }
  }

  return result;
}

uint64_t Img4DecodeEvaluateTrustWithCallbacks(unsigned int a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t (*a4)(void, void, void, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(void, void, uint64_t), uint64_t a7)
{
  memset(v15, 0, sizeof(v15));
  result = 6;
  if (a2)
  {
    if (a3)
    {
      if (*(a2 + 24))
      {
        a6(*(a2 + 264), *(a2 + 272), a2 + 376);
        result = a4(*(a2 + 296), *(a2 + 304), *(a2 + 280), *(a2 + 288), a2 + 376, 20, a2 + 312, a2 + 320, a7);
        if (!result)
        {
          result = DERImg4DecodeParseManifestProperties(a2, a2 + 40, a2 + 56);
          if (!result)
          {
            result = DERImg4DecodeFindProperty((a2 + 40), a1 | 0xE000000000000000, 0x2000000000000011uLL, v15);
            if (!result)
            {
              *(a2 + 72) = *(&v15[1] + 8);
              result = a5(a2, a7);
              if (!result)
              {
                if (*(a2 + 136) && *(a2 + 144))
                {
                  a6(*(a2 + 8), *(a2 + 16), a2 + 184);
                  *a2 = 1;
                }

                result = Img4DecodeEvaluateDictionaryProperties((a2 + 56), 0, a3, a7);
                if (!result)
                {
                  result = Img4DecodeEvaluateDictionaryProperties((a2 + 72), 1, a3, a7);
                  if (!result)
                  {
                    a6(*(a2 + 24), *(a2 + 32), a2 + 328);
                    result = 0;
                    *(a2 + 1) = 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Img4DecodeVerifyChainIM4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v25[10] = *MEMORY[0x277D85DE8];
  bzero(v20, 0x1C8uLL);
  result = 6;
  if (a3 && a4 && a5 && a6 && a7 && a8 && a9)
  {
    if (Img4DecodeInitManifestCommon(a3, a4, 1, v20, 1229796419) || (*a9)(v21, v22, v25, **(a9 + 32), a9) || (*(a9 + 16))(a1, a2, v23, v24, v25, **(a9 + 32), a9, a10))
    {
      result = 0xFFFFFFFFLL;
    }

    else if (DERImg4DecodeCertificatePropertiesAndPubKey(v21, v22, a7, a8, a5, a6))
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t verify_signature_ml_dsa_87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[325] = *MEMORY[0x277D85DE8];
  result = 6;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              if (a7)
              {
                v9 = *(a7 + 32);
                if (v9)
                {
                  v10 = *(v9 + 16);
                  if (v10)
                  {
                    v11 = *v10;
                    if (!v11 || ((v12 = *v11, a2 == 2592) ? (v13 = v12 == a6) : (v13 = 0), !v13))
                    {
                      result = 0xFFFFFFFFLL;
                      goto LABEL_21;
                    }

                    if (!MEMORY[0x28223BE30])
                    {
                      goto LABEL_23;
                    }

                    ccmldsa87();
                    bzero(v15, 0xA28uLL);
                    if (!MEMORY[0x28223BE38])
                    {
                      goto LABEL_23;
                    }

                    result = ccmldsa_import_pubkey();
                    if (!result)
                    {
                      if (MEMORY[0x28223BE40])
                      {
                        result = ccmldsa_verify();
                        goto LABEL_21;
                      }

LABEL_23:
                      result = 4;
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

LABEL_21:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t verify_signature_hybrid_scheme3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 6;
  if (a7 && a5 && a3 && a1 && a2 && a4 && a6)
  {
    if (hybrid_scheme3_pubkey_cast(a1, a2) && hybrid_scheme3_signature_cast(a3, a4))
    {
      OUTLINED_FUNCTION_0_1();
      result = verify_signature_rsa4096_fixed(v11, v12, v13, v14, v15, v16, v17);
      if (!result)
      {
        OUTLINED_FUNCTION_0_1();

        return verify_signature_ml_dsa_87(v18, v19, v20, v21, v22, v23, v24);
      }
    }

    else
    {
      return 6;
    }
  }

  return result;
}

uint64_t verify_signature_hybrid_scheme3_no_pqc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a7 || !a5 || !a3 || !a1 || !a2 || !a4 || !a6 || !hybrid_scheme3_pubkey_cast(a1, a2) || !hybrid_scheme3_signature_cast(a3, a4))
  {
    return 6;
  }

  OUTLINED_FUNCTION_0_1();

  return verify_signature_rsa4096_fixed(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t Img4DecodeDigestInit(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 16);
  if (!v2 || !*v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a2;
  ccdigest_init();
  return 0;
}

uint64_t Img4DecodeDigestUpdate(uint64_t a1, uint64_t *a2)
{
  if (!a1 || !**(a1 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a2;
  ccdigest_update();
  return 0;
}

uint64_t Img4DecodeDigestReturnHash(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = **(a1 + 16);
  if (!v4 || *v4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(v4 + 56))(v4, *a2, a4);
  return 0;
}

uint64_t Img4DecodeDigestFinal(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = **(a1 + 16);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  (*(v2 + 56))(v2, *a2);
  return 0;
}

uint64_t Img4DecodeComputeDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a5)
        {
          v8 = *(a5 + 32);
          if (v8)
          {
            v9 = v8[2];
            if (v9)
            {
              if (*v8 == a4)
              {
                if (*v9 && **v9 == a4)
                {
                  ccdigest();
                  return 0;
                }

                else
                {
                  return 0xFFFFFFFFLL;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}