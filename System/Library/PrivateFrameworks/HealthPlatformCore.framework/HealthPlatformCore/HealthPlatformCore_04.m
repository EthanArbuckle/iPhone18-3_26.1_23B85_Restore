uint64_t sub_228760518(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v70 = a3;
  sub_22870C47C();
  v72 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v71 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228774608(0, &qword_280DE0090, sub_228770F78, MEMORY[0x277CBCE88]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v65[-v11];
  sub_22872C6C0(0);
  v73 = v13;
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v65[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v65[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v65[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v65[-v24];
  v26 = sub_2287CAA50();
  v74 = *(v26 - 8);
  v75 = v26;
  v27 = *(v74 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v65[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v69 = Strong;
    sub_2287CA9D0();
    sub_228771770(a1, v25);
    sub_228771770(a1, v23);
    sub_228771770(a1, v20);
    sub_228771770(a1, v17);
    v31 = sub_2287CAA40();
    v32 = sub_2287CB610();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v68 = a1;
      v34 = v33;
      v67 = swift_slowAlloc();
      v77 = v67;
      *v34 = 136447234;
      v76 = v70;
      swift_getMetatypeMetadata();
      v35 = sub_2287CB250();
      v70 = v31;
      v37 = sub_2287031D8(v35, v36, &v77);
      v66 = v32;
      v38 = v37;

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      v39 = &v25[*(v73 + 28)];
      v40 = v39[4];
      __swift_project_boxed_opaque_existential_1(v39, v39[3]);
      v41 = sub_2287C9A70();
      v43 = v42;
      sub_2287762E4(v25, sub_22872C6C0);
      v44 = sub_2287031D8(v41, v43, &v77);

      *(v34 + 14) = v44;
      *(v34 + 22) = 2082;
      sub_228770280(v23, v71, sub_22870C47C);
      v45 = v72;
      v46 = sub_2287CB250();
      v48 = v47;
      sub_2287762E4(v23, sub_22872C6C0);
      v49 = sub_2287031D8(v46, v48, &v77);

      *(v34 + 24) = v49;
      *(v34 + 32) = 2082;
      v50 = &v20[*(v45 + 36)];
      v51 = sub_2287C9E50();
      v52 = sub_2287C9C50();
      v54 = v53;

      sub_2287762E4(v20, sub_22872C6C0);
      v55 = sub_2287031D8(v52, v54, &v77);

      *(v34 + 34) = v55;
      *(v34 + 42) = 2082;
      v56 = &v17[*(v73 + 32)];
      sub_2287C9E80();
      sub_22870D3A8(0, &qword_280DE3418);
      v57 = sub_2287CB250();
      v59 = v58;
      sub_2287762E4(v17, sub_22872C6C0);
      v60 = sub_2287031D8(v57, v59, &v77);

      *(v34 + 44) = v60;
      v61 = v70;
      _os_log_impl(&dword_2286FF000, v70, v66, "[%{public}s][%{public}s]: dispatching GeneratorPipeline <%{public}s> for profile %{public}s and context %{public}s to queue for execution", v34, 0x34u);
      v62 = v67;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v62, -1, -1);
      a1 = v68;
      MEMORY[0x22AABFD90](v34, -1, -1);

      (*(v74 + 8))(v29, v75);
    }

    else
    {

      sub_2287762E4(v17, sub_22872C6C0);
      sub_2287762E4(v20, sub_22872C6C0);
      sub_2287762E4(v23, sub_22872C6C0);
      (*(v74 + 8))(v29, v75);
      sub_2287762E4(v25, sub_22872C6C0);
    }

    v76 = sub_2287614B0(a1);
    sub_228774608(0, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);
    sub_2287710CC();
    v63 = sub_2287CAF40();
  }

  else
  {
    sub_228770F78();
    sub_22870D3A8(0, &qword_280DE35A0);
    sub_2287CADC0();
    sub_2287713B0();
    v63 = sub_2287CAF40();
    (*(v9 + 8))(v12, v8);
  }

  return v63;
}

uint64_t sub_228760BEC(uint64_t a1)
{
  v2 = v1;
  v73 = sub_228774694;
  sub_2287704B4(0, &qword_280DE0460, &qword_280DE0248, sub_228774694, sub_2287746C8);
  v5 = *(v4 - 8);
  v75 = v4;
  v76 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v74 = v61 - v7;
  sub_22872C820(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = v11;
  v13 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228774750();
  v15 = *(v14 - 8);
  v68 = v14;
  v69 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v63 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877486C();
  v19 = *(v18 - 8);
  v70 = v18;
  v71 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v64 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228775DB8(0, &qword_280DE03B0, sub_22877486C, sub_228774918, MEMORY[0x277CBCD00]);
  v23 = *(v22 - 8);
  v66 = v22;
  v67 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v65 = v61 - v25;
  v26 = v1[24];
  v27 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v26);
  v72 = (*(v27 + 16))(v26, v27);
  v28 = *(a1 + 8);
  v29 = (*a1)();
  v61[1] = v29;
  sub_22870CE64();
  v78 = v30;
  v79 = sub_2287693A8(&qword_280DE2DA8, sub_22870CE64);
  KeyPath = swift_getKeyPath();
  v80 = v29;
  v32 = swift_allocObject();
  v62 = v2;
  swift_weakInit();
  v33 = a1;
  v77 = a1;
  sub_2287745F0(a1, v13);
  v34 = *(v9 + 80);
  v35 = (v34 + 32) & ~v34;
  v61[0] = v12;
  v36 = swift_allocObject();
  *(v36 + 16) = v32;
  *(v36 + 24) = KeyPath;
  sub_22877494C(v13, v36 + v35);
  v37 = swift_allocObject();
  swift_weakInit();
  sub_2287745F0(v33, v13);
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = KeyPath;
  sub_22877494C(v13, v38 + v35);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_228774B40;
  *(v39 + 24) = v38;
  sub_228773CC0(0, &qword_280DE1B20, sub_22870CAC4, MEMORY[0x277CBCD88]);
  sub_2287747E4();
  swift_retain_n();
  swift_retain_n();

  v40 = v63;
  sub_2287CAF60();

  sub_2287745F0(v77, v13);
  v41 = swift_allocObject();
  sub_22877494C(v13, v41 + ((v34 + 16) & ~v34));
  sub_228774694(0);
  sub_2287693A8(&qword_280DE1C98, sub_228774750);
  v42 = v64;
  v43 = v68;
  sub_2287CAF70();

  (*(v69 + 8))(v40, v43);
  sub_22870D3A8(0, &qword_280DE35A0);
  sub_228774918();
  v44 = v65;
  v45 = v70;
  sub_2287CB010();
  (*(v71 + 8))(v42, v45);
  sub_228774DF8();
  v46 = v66;
  v47 = sub_2287CAF40();
  v71 = v47;
  (*(v67 + 8))(v44, v46);
  v48 = v62[24];
  v49 = v62[25];
  __swift_project_boxed_opaque_existential_1(v62 + 21, v48);
  v80 = v47;
  sub_22870CA30();
  v51 = *(v50 + 36);
  v52 = *(v49 + 40);
  v53 = MEMORY[0x277CBCD88];
  sub_228774608(0, &qword_280DE0248, v73, MEMORY[0x277CBCD88]);
  v55 = v54;
  v56 = sub_2287746C8();
  v80 = v52(&v80, v77 + v51, v55, v56, v48, v49);
  swift_allocObject();
  swift_weakInit();
  sub_2287691F4(0);
  sub_228774608(0, &qword_280DE0200, sub_2287691F4, v53);
  sub_22876928C();
  v57 = v74;
  sub_2287CAFE0();

  sub_228774EC0();
  v58 = v75;
  v59 = sub_2287CAF40();

  (*(v76 + 8))(v57, v58);
  return v59;
}

uint64_t sub_2287614B0(uint64_t a1)
{
  sub_228771788();
  v4 = *(v3 - 8);
  v74 = v3;
  v75 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v73 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C6C0(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = v10;
  v12 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228771974();
  v14 = *(v13 - 8);
  v68 = v13;
  v69 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v63 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228771A9C();
  v18 = *(v17 - 8);
  v70 = v17;
  v71 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v64 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228775DB8(0, &qword_280DE03C0, sub_228771A9C, sub_228771B48, MEMORY[0x277CBCD00]);
  v22 = *(v21 - 8);
  v66 = v21;
  v67 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v65 = v61 - v24;
  v25 = v1[24];
  v26 = v1[25];
  v27 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 21, v25);
  v72 = (*(v26 + 16))(v25, v26);
  v28 = a1;
  v29 = *(a1 + 8);
  v30 = (*a1)();
  v61[2] = v30;
  sub_22870CCFC();
  v77 = v31;
  v78 = sub_2287693A8(qword_280DE2DB8, sub_22870CCFC);
  KeyPath = swift_getKeyPath();
  v79 = v30;
  v33 = swift_allocObject();
  v62 = v27;
  swift_weakInit();
  v76 = a1;
  sub_228771770(a1, v12);
  v34 = *(v8 + 80);
  v35 = (v34 + 32) & ~v34;
  v61[1] = v11;
  v36 = swift_allocObject();
  *(v36 + 16) = v33;
  *(v36 + 24) = KeyPath;
  sub_228771B7C(v12, v36 + v35);
  v37 = swift_allocObject();
  swift_weakInit();
  sub_228771770(v28, v12);
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = KeyPath;
  sub_228771B7C(v12, v38 + v35);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_228771BC0;
  *(v39 + 24) = v38;
  sub_228771A08();
  sub_2287693A8(&qword_280DE1B38, sub_228771A08);
  swift_retain_n();
  swift_retain_n();

  v40 = v63;
  sub_2287CAF60();

  sub_228771770(v76, v12);
  v41 = swift_allocObject();
  sub_228771B7C(v12, v41 + ((v34 + 16) & ~v34));
  sub_228771868();
  sub_2287693A8(qword_280DE1CA8, sub_228771974);
  v42 = v64;
  v43 = v68;
  sub_2287CAF70();

  (*(v69 + 8))(v40, v43);
  sub_22870D3A8(0, &qword_280DE35A0);
  sub_228771B48();
  v44 = v65;
  v45 = v70;
  sub_2287CB010();
  (*(v71 + 8))(v42, v45);
  sub_228771C40();
  v46 = v66;
  v47 = sub_2287CAF40();
  v71 = v47;
  (*(v67 + 8))(v44, v46);
  v48 = v62[24];
  v49 = v62[25];
  __swift_project_boxed_opaque_existential_1(v62 + 21, v48);
  v79 = v47;
  sub_22870C47C();
  v51 = *(v50 + 36);
  v52 = *(v49 + 40);
  v53 = MEMORY[0x277CBCD88];
  sub_228774608(0, &qword_280DE0258, sub_228771868, MEMORY[0x277CBCD88]);
  v55 = v54;
  v56 = sub_2287718EC();
  v79 = v52(&v79, v76 + v51, v55, v56, v48, v49);
  swift_allocObject();
  swift_weakInit();
  sub_228770F78();
  sub_228774608(0, &qword_280DE0218, sub_228770F78, v53);
  sub_2287710CC();
  v57 = v73;
  sub_2287CAFE0();

  sub_2287693A8(&qword_280DE04A8, sub_228771788);
  v58 = v74;
  v59 = sub_2287CAF40();

  (*(v75 + 8))(v57, v58);
  return v59;
}

uint64_t sub_228761D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  a3(a1, a6);
  v10 = a4(0);
  v11 = *(v10 + 28);
  v12 = a5(0);
  sub_2287010E4(a2 + v11, a6 + v12[7]);
  v13 = *(v10 + 32);
  v14 = v12[8];
  v15 = sub_2287C9ED0();
  (*(*(v15 - 8) + 16))(a6 + v14, a2 + v13, v15);
  v16 = a6 + v12[9];
  return sub_2287C9800();
}

uint64_t sub_228761E44(uint64_t a1)
{
  v59 = a1;
  sub_228774608(0, &qword_280DE0088, sub_2287691F4, MEMORY[0x277CBCE88]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = v52 - v5;
  v7 = sub_2287C9B60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22870CAC4(0);
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2287CA970();
  v60 = *(v17 - 8);
  v61 = v17;
  v18 = *(v60 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = _HKLogPersistedSignposts();

    v58 = v20;
    sub_2287CA940();
    sub_228774694(0);
    v25 = v59;
    v26 = (v59 + *(v24 + 28));
    v27 = v26[3];
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v28 = sub_228747F20(v27);
    v56 = v29;
    v57 = v28;
    v55 = v30;
    v62 = 0x6F746172656E6547;
    v63 = 0xEB00000000203A72;
    sub_228774F50(v25, v16);
    v31 = sub_2287CB250();
    MEMORY[0x22AABE980](v31);

    v53 = v63;
    v54 = v62;
    v52[1] = sub_2287CB610();
    (*(v8 + 104))(v11, *MEMORY[0x277D11E60], v7);
    v32 = sub_2287C9B50();
    (*(v8 + 8))(v11, v7);
    sub_22870558C();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_2287CDC90;
    v34 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v35 = sub_2287C9A70();
    v37 = v36;
    v38 = MEMORY[0x277D837D0];
    *(v33 + 56) = MEMORY[0x277D837D0];
    v39 = sub_2287043F8();
    *(v33 + 64) = v39;
    *(v33 + 32) = v35;
    *(v33 + 40) = v37;
    sub_228774F50(v25, v16);
    v40 = sub_2287CB250();
    *(v33 + 96) = v38;
    *(v33 + 104) = v39;
    *(v33 + 72) = v40;
    *(v33 + 80) = v41;
    v42 = v25 + *(v13 + 44);
    v43 = sub_2287C9E50();
    v44 = sub_2287C9C50();
    v46 = v45;

    *(v33 + 136) = v38;
    *(v33 + 144) = v39;
    *(v33 + 112) = v44;
    *(v33 + 120) = v46;
    sub_2287CA920();

    v48 = MEMORY[0x22AABF5F0](v47);
    v49 = v58;
    v50 = sub_2287628A4(v25, v22, v57, v56, v55, v58, v54, v53);
    objc_autoreleasePoolPop(v48);

    (*(v60 + 8))(v49, v61);
  }

  else
  {
    sub_2287691F4(0);
    sub_22870D3A8(0, &qword_280DE35A0);
    sub_2287CADC0();
    sub_228770B4C();
    v50 = sub_2287CAF40();
    (*(v3 + 8))(v6, v2);
  }

  return v50;
}

uint64_t sub_228762360(uint64_t a1)
{
  v59 = a1;
  sub_228774608(0, &qword_280DE0090, sub_228770F78, MEMORY[0x277CBCE88]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = v52 - v5;
  v7 = sub_2287C9B60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287715EC(0, &qword_280DE2E58, &qword_280DE1A10, MEMORY[0x277D120A0], type metadata accessor for AnyGenerator);
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v52 - v15;
  v17 = sub_2287CA970();
  v60 = *(v17 - 8);
  v61 = v17;
  v18 = *(v60 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = _HKLogPersistedSignposts();

    v58 = v20;
    sub_2287CA940();
    sub_228771868();
    v25 = v59;
    v26 = (v59 + *(v24 + 28));
    v27 = v26[3];
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v28 = sub_228747F20(v27);
    v56 = v29;
    v57 = v28;
    v55 = v30;
    v62 = 0x6F746172656E6547;
    v63 = 0xEB00000000203A72;
    sub_228771D08(v25, v16);
    v31 = sub_2287CB250();
    MEMORY[0x22AABE980](v31);

    v53 = v63;
    v54 = v62;
    v52[1] = sub_2287CB610();
    (*(v8 + 104))(v11, *MEMORY[0x277D11E60], v7);
    v32 = sub_2287C9B50();
    (*(v8 + 8))(v11, v7);
    sub_22870558C();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_2287CDC90;
    v34 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v35 = sub_2287C9A70();
    v37 = v36;
    v38 = MEMORY[0x277D837D0];
    *(v33 + 56) = MEMORY[0x277D837D0];
    v39 = sub_2287043F8();
    *(v33 + 64) = v39;
    *(v33 + 32) = v35;
    *(v33 + 40) = v37;
    sub_228771D08(v25, v16);
    v40 = sub_2287CB250();
    *(v33 + 96) = v38;
    *(v33 + 104) = v39;
    *(v33 + 72) = v40;
    *(v33 + 80) = v41;
    v42 = v25 + *(v13 + 44);
    v43 = sub_2287C9E50();
    v44 = sub_2287C9C50();
    v46 = v45;

    *(v33 + 136) = v38;
    *(v33 + 144) = v39;
    *(v33 + 112) = v44;
    *(v33 + 120) = v46;
    sub_2287CA920();

    v48 = MEMORY[0x22AABF5F0](v47);
    v49 = v58;
    v50 = sub_228763294(v25, v22, v57, v56, v55, v58, v54, v53);
    objc_autoreleasePoolPop(v48);

    (*(v60 + 8))(v49, v61);
  }

  else
  {
    sub_228770F78();
    sub_22870D3A8(0, &qword_280DE35A0);
    sub_2287CADC0();
    sub_2287713B0();
    v50 = sub_2287CAF40();
    (*(v3 + 8))(v6, v2);
  }

  return v50;
}

uint64_t sub_2287628A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = a7;
  v90 = a8;
  v91 = a3;
  v88 = a6;
  v93 = a5;
  v92 = a4;
  sub_228771D98(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v89 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v87 = v72 - v14;
  sub_228774694(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  sub_228774F68();
  v77 = v18;
  v78 = *(v18 - 8);
  v19 = *(v78 + 64);
  MEMORY[0x28223BE20](v18);
  v73 = v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228774FFC();
  v79 = v21;
  v82 = *(v21 - 8);
  v22 = *(v82 + 64);
  MEMORY[0x28223BE20](v21);
  v75 = v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228775DB8(0, &qword_280DE0390, sub_228774FFC, sub_2287750A8, MEMORY[0x277CBCD00]);
  v83 = *(v24 - 8);
  v84 = v24;
  v25 = *(v83 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v81 = v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v74 = v72 - v28;
  sub_2287750DC();
  v30 = *(v29 - 8);
  v85 = v29;
  v86 = v30;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v80 = v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a1 + 8);
  v35 = (*a1)(v32);
  v72[1] = v35;
  sub_22870CE64();
  v96 = v36;
  v97 = sub_2287693A8(&qword_280DE2DA8, sub_22870CE64);
  KeyPath = swift_getKeyPath();
  v98 = v35;
  v38 = swift_allocObject();
  v76 = a2;
  swift_weakInit();
  v95 = a1;
  sub_228775220(a1, v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = *(v16 + 80);
  v40 = (v39 + 32) & ~v39;
  v72[0] = v17;
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  *(v41 + 24) = KeyPath;
  v42 = KeyPath;
  sub_228775238(v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40);
  v43 = swift_allocObject();
  swift_weakInit();
  sub_228775220(a1, v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = v42;
  v45 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228775238(v45, v44 + v40);
  v46 = swift_allocObject();
  *(v46 + 16) = sub_2287754A8;
  *(v46 + 24) = v44;
  sub_228773CC0(0, &qword_280DE1AA0, sub_22870CB48, MEMORY[0x277CBCD88]);
  sub_228773AB8();
  swift_retain_n();
  swift_retain_n();

  v47 = v73;
  sub_2287CAF60();

  sub_228775220(v95, v45);
  v48 = swift_allocObject();
  sub_228775238(v45, v48 + ((v39 + 16) & ~v39));
  sub_2287691F4(0);
  sub_2287693A8(&qword_280DE1C78, sub_228774F68);
  v49 = v75;
  v50 = v77;
  sub_2287CAF70();

  (*(v78 + 8))(v47, v50);
  sub_22870D3A8(0, &qword_280DE35A0);
  sub_2287750A8();
  v51 = v74;
  v52 = v79;
  sub_2287CB010();
  (*(v82 + 8))(v49, v52);
  v53 = _HKLogPersistedSignposts();
  v54 = sub_2287CA970();
  v55 = *(v54 - 8);
  v56 = v87;
  (*(v55 + 16))(v87, v88, v54);
  (*(v55 + 56))(v56, 0, 1, v54);
  v58 = v83;
  v57 = v84;
  (*(v83 + 16))(v81, v51, v84);
  sub_228770280(v56, v89, sub_228771D98);
  sub_228775184();

  v59 = v80;
  sub_2287CAAE0();
  sub_2287762E4(v56, sub_228771D98);
  (*(v58 + 8))(v51, v57);
  sub_2287693A8(&qword_280DE0720, sub_2287750DC);
  v60 = v85;
  v61 = sub_2287CAF40();
  (*(v86 + 8))(v59, v60);
  v62 = v76[24];
  v63 = v76[25];
  __swift_project_boxed_opaque_existential_1(v76 + 21, v62);
  v98 = v61;
  sub_22870CAC4(0);
  v65 = *(v64 + 44);
  v66 = *(v63 + 48);
  sub_228774608(0, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
  v68 = v67;
  v69 = sub_22876928C();
  v70 = v66(&v98, v95 + v65, v68, v69, v62, v63);

  return v70;
}

uint64_t sub_228763294(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v99 = a7;
  v95 = a8;
  v96 = a3;
  v93 = a6;
  v98 = a5;
  v97 = a4;
  sub_228771D98(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v94 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v92 = &v73 - v14;
  sub_228771868();
  v77 = *(v15 - 8);
  v16 = *(v77 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  sub_228771DCC();
  v82 = v17;
  v83 = *(v17 - 8);
  v18 = *(v83 + 64);
  MEMORY[0x28223BE20](v17);
  v78 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228771E90();
  v84 = v20;
  v87 = *(v20 - 8);
  v21 = *(v87 + 64);
  MEMORY[0x28223BE20](v20);
  v80 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228775DB8(0, &qword_280DE03A0, sub_228771E90, sub_228771F3C, MEMORY[0x277CBCD00]);
  v88 = *(v23 - 8);
  v89 = v23;
  v24 = *(v88 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v86 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v79 = &v73 - v27;
  sub_228771F70();
  v29 = *(v28 - 8);
  v90 = v28;
  v91 = v29;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v85 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a1 + 8);
  v34 = (*a1)(v31);
  v76 = v34;
  sub_22870CCFC();
  v100 = v35;
  v101 = sub_2287693A8(qword_280DE2DB8, sub_22870CCFC);
  KeyPath = swift_getKeyPath();
  v102 = v34;
  v37 = swift_allocObject();
  v81 = a2;
  swift_weakInit();
  v74 = a1;
  sub_2287720B4(a1, &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = *(v77 + 80);
  v39 = (v38 + 32) & ~v38;
  v75 = v16;
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *(v40 + 24) = KeyPath;
  v41 = KeyPath;
  sub_2287720CC(&v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39);
  v42 = swift_allocObject();
  swift_weakInit();
  v73 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287720B4(a1, v73);
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v41;
  sub_2287720CC(&v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + v39);
  v44 = swift_allocObject();
  *(v44 + 16) = sub_2287722DC;
  *(v44 + 24) = v43;
  v45 = MEMORY[0x277CBCD88];
  sub_2287715EC(0, &qword_280DE1AB0, &qword_280DE1A10, MEMORY[0x277D120A0], MEMORY[0x277CBCD88]);
  sub_228771664(&qword_280DE1AB8, &qword_280DE1AB0, v45);
  swift_retain_n();
  swift_retain_n();

  v46 = v78;
  sub_2287CAF60();

  v47 = v74;
  v48 = v73;
  sub_2287720B4(v74, v73);
  v49 = swift_allocObject();
  sub_2287720CC(v48, v49 + ((v38 + 16) & ~v38));
  sub_228770F78();
  sub_2287693A8(&qword_280DE1C88, sub_228771DCC);
  v50 = v80;
  v51 = v82;
  sub_2287CAF70();

  (*(v83 + 8))(v46, v51);
  sub_22870D3A8(0, &qword_280DE35A0);
  sub_228771F3C();
  v52 = v79;
  v53 = v84;
  sub_2287CB010();
  (*(v87 + 8))(v50, v53);
  v54 = _HKLogPersistedSignposts();
  v55 = sub_2287CA970();
  v56 = *(v55 - 8);
  v57 = v92;
  (*(v56 + 16))(v92, v93, v55);
  (*(v56 + 56))(v57, 0, 1, v55);
  v59 = v88;
  v58 = v89;
  (*(v88 + 16))(v86, v52, v89);
  sub_228770280(v57, v94, sub_228771D98);
  sub_228772018();

  v60 = v85;
  sub_2287CAAE0();
  sub_2287762E4(v57, sub_228771D98);
  (*(v59 + 8))(v52, v58);
  sub_2287693A8(&qword_280DE0730, sub_228771F70);
  v61 = v90;
  v62 = sub_2287CAF40();
  (*(v91 + 8))(v60, v61);
  v63 = v81[24];
  v64 = v81[25];
  __swift_project_boxed_opaque_existential_1(v81 + 21, v63);
  v102 = v62;
  sub_2287715EC(0, &qword_280DE2E58, &qword_280DE1A10, MEMORY[0x277D120A0], type metadata accessor for AnyGenerator);
  v66 = *(v65 + 44);
  v67 = *(v64 + 48);
  sub_228774608(0, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);
  v69 = v68;
  v70 = sub_2287710CC();
  v71 = v67(&v102, v47 + v66, v69, v70, v63, v64);

  return v71;
}

uint64_t sub_228763CF0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v140 = a8;
  v159 = a7;
  v154 = a5;
  v155 = a6;
  v162 = a1;
  v163 = a4;
  sub_22873BE44();
  v152 = *(v12 - 8);
  v153 = v12;
  v13 = *(v152 + 64);
  MEMORY[0x28223BE20](v12);
  v151 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228773B40();
  v148 = v15;
  v146 = *(v15 - 8);
  v16 = *(v146 + 64);
  MEMORY[0x28223BE20](v15);
  v145 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873C014();
  v150 = v18;
  v149 = *(v18 - 8);
  v19 = *(v149 + 64);
  MEMORY[0x28223BE20](v18);
  v147 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873C170();
  v132 = v21;
  v130 = *(v21 - 8);
  v22 = *(v130 + 64);
  MEMORY[0x28223BE20](v21);
  v128 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228773BD4();
  v133 = v24;
  v131 = *(v24 - 8);
  v25 = *(v131 + 64);
  MEMORY[0x28223BE20](v24);
  v129 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228769228(0, &qword_280DE00C8, MEMORY[0x277D121A8], MEMORY[0x277CBCE78]);
  v142 = v27;
  v141 = *(v27 - 8);
  v28 = *(v141 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v126 - v29;
  sub_228774608(0, &qword_280DDFE38, MEMORY[0x277D121A8], MEMORY[0x277CBCF38]);
  v144 = v31;
  v143 = *(v31 - 8);
  v32 = *(v143 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v126 - v33;
  sub_22873C350();
  v157 = *(v35 - 8);
  v158 = v35;
  v36 = *(v157 + 64);
  MEMORY[0x28223BE20](v35);
  v156 = &v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228773CC0(0, &qword_280DE0078, sub_22870CB48, MEMORY[0x277CBCE88]);
  v39 = v38;
  v40 = *(v38 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  v43 = &v126 - v42;
  sub_22873AB44();
  v45 = v44;
  v134 = *(v44 - 8);
  v46 = *(v134 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = &v126 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228773D34();
  v136 = v49;
  v135 = *(v49 - 8);
  v50 = *(v135 + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v126 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873ADD8();
  v139 = v53;
  v138 = *(v53 - 8);
  v54 = *(v138 + 64);
  MEMORY[0x28223BE20](v53);
  v137 = &v126 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v160 = a3;
  v161 = Strong;
  v57 = sub_2287CB590();
  v58 = sub_2287C9C30();

  if (!v58)
  {

LABEL_9:
    sub_22870CB48(0);
    sub_2287CADC0();
    sub_228773E20();
    v73 = sub_2287CAF40();
LABEL_10:
    (*(v40 + 8))(v43, v39);
    return v73;
  }

  v127 = v58;
  v59 = [v58 type];
  if (v59 != 1)
  {
    if (v59 == 2)
    {
      v159 = a9;
      v75 = v163[4];
      __swift_project_boxed_opaque_existential_1(v163, v163[3]);
      v76 = sub_2287C9A70();
      v78 = v77;
      v79 = sub_2287CA540();
      v80 = sub_2287CA550();
      *&v164 = v154;
      v81 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v82 = swift_allocObject();
      v82[2] = v81;
      v82[3] = v76;
      v82[4] = v78;
      v82[5] = v79;
      v82[6] = v80;
      v83 = MEMORY[0x277CBCD88];
      sub_2287738D0(0, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88], MEMORY[0x277CBCD88]);
      sub_22873AC94();
      sub_2287737D8(&unk_280DE0150, &qword_280DE0148, v83);
      sub_2287CAF70();

      v84 = sub_2287693A8(&qword_280DE05C0, sub_22873AB44);
      v85 = sub_2287693A8(&qword_280DE1A98, sub_22873AC94);
      MEMORY[0x22AABE600](v45, v84, v85);
      (*(v134 + 8))(v48, v45);
      sub_2287693A8(&qword_280DE06B0, sub_228773D34);
      v86 = v136;
      v87 = sub_2287CAF40();
      (*(v135 + 8))(v52, v86);
      *&v164 = v87;
      v88 = sub_2287CAE40();

      *&v164 = v88;
      sub_228774608(0, &qword_280DE01C0, sub_22870CB48, MEMORY[0x277CBCD88]);
      v90 = v89;
      v91 = sub_22873AE8C();
      v92 = v137;
      sub_2287CAE10();

      *&v164 = v90;
      *(&v164 + 1) = v91;
      swift_getOpaqueTypeConformance2();
      v93 = v139;
      v73 = sub_2287CAF40();

      (*(v138 + 8))(v92, v93);
      return v73;
    }

    if (v59 != 3)
    {
      sub_22870CB48(0);
      sub_2287CADC0();
      sub_228773E20();
      v73 = sub_2287CAF40();

      goto LABEL_10;
    }
  }

  v60 = sub_2287CA540();
  v61 = sub_2287CA550();
  v140 = v60;
  v162 = v61;
  if (v155)
  {
    *&v164 = v155;
    sub_2287CA570();
    swift_retain_n();
    sub_2287CADB0();
    sub_22870D3A8(0, &qword_280DE35A0);
    v62 = v142;
    sub_2287CAD80();
    (*(v141 + 8))(v30, v62);
    v63 = v163;
    v64 = v163[4];
    __swift_project_boxed_opaque_existential_1(v163, v163[3]);
    sub_2287C9A70();
    sub_22873C4AC();
    v65 = v144;
    v66 = sub_2287CAE70();

    (*(v143 + 8))(v34, v65);
    *&v164 = v66;
    sub_22873AC94();
    v68 = v67;
    v69 = sub_2287693A8(&qword_280DE1A98, sub_22873AC94);
    v70 = v156;
    sub_2287CAE10();

    *&v164 = v68;
    *(&v164 + 1) = v69;
    swift_getOpaqueTypeConformance2();
    v71 = v158;
    v72 = sub_2287CAE40();
    (*(v157 + 8))(v70, v71);
    *&v164 = v72;
    sub_228773CC0(0, &qword_280DE1AA0, sub_22870CB48, MEMORY[0x277CBCD88]);
    sub_228773AB8();
    v73 = sub_2287CAF40();
  }

  else
  {
    v155 = a11;
    v94 = v61;
    v95 = v163[4];
    __swift_project_boxed_opaque_existential_1(v163, v163[3]);
    v96 = sub_2287C9A70();
    v98 = v97;
    *&v164 = v154;
    v99 = MEMORY[0x277CBCD88];
    sub_2287738D0(0, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88], MEMORY[0x277CBCD88]);
    sub_2287737D8(&unk_280DE0150, &qword_280DE0148, v99);
    v100 = v128;
    sub_2287CAFA0();
    v101 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v102 = swift_allocObject();
    v102[2] = v101;
    v102[3] = v96;
    v102[4] = v98;
    v102[5] = v60;
    v102[6] = v94;

    sub_2287CACC0();
    sub_228773770(0, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    sub_22873AC94();
    v104 = v103;
    sub_2287693A8(&qword_280DE0518, sub_22873C170);
    v105 = sub_2287693A8(&qword_280DE1A98, sub_22873AC94);
    v106 = v129;
    v107 = v132;
    v63 = v163;
    sub_2287CAFE0();

    (*(v130 + 8))(v100, v107);
    sub_2287693A8(&qword_280DE0428, sub_228773BD4);
    v108 = v133;
    v109 = sub_2287CAF40();
    (*(v131 + 8))(v106, v108);
    *&v164 = v109;
    v110 = v156;
    sub_2287CAE10();

    *&v164 = v104;
    *(&v164 + 1) = v105;
    swift_getOpaqueTypeConformance2();
    v111 = v158;
    v112 = sub_2287CAE40();
    (*(v157 + 8))(v110, v111);
    *&v164 = v112;
    sub_228773CC0(0, &qword_280DE1AA0, sub_22870CB48, MEMORY[0x277CBCD88]);
    sub_228773AB8();
    v73 = sub_2287CAF40();
  }

  if (v159)
  {
    v165 = v159;
    sub_2287010E4(v63, &v164);
    v113 = swift_allocObject();
    sub_228706AD4(&v164, v113 + 16);
    v114 = v160;
    *(v113 + 56) = v160;
    v115 = MEMORY[0x277CBCD88];
    sub_228773CC0(0, &qword_280DE1AF0, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_22873BFE0();

    v116 = v114;
    v117 = v145;
    sub_2287CAFB0();

    sub_22870CB48(0);
    sub_2287693A8(&qword_280DE0508, sub_228773B40);
    v118 = v147;
    v119 = v148;
    sub_2287CAF70();
    (*(v146 + 8))(v117, v119);
    sub_2287693A8(&qword_280DE05A0, sub_22873C014);
    v120 = v150;
    v121 = sub_2287CAE30();

    (*(v149 + 8))(v118, v120);
    *&v164 = v121;
    sub_228773CC0(0, &qword_280DE1AA0, sub_22870CB48, v115);
    sub_228773AB8();
    v122 = sub_2287CAF40();

    *&v164 = v122;
    v165 = v73;
    v123 = v151;
    sub_2287CAF00();
    sub_2287693A8(&qword_280DE0678, sub_22873BE44);
    v124 = v153;
    v125 = sub_2287CAF40();

    (*(v152 + 8))(v123, v124);
    return v125;
  }

  else
  {
  }

  return v73;
}

uint64_t sub_2287651E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v9 = sub_2287CB080();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2287CB0E0();
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v26);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v6 + 160);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a1;
  v19[4] = a2;
  aBlock[4] = v23;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = v24;
  v20 = _Block_copy(aBlock);

  sub_2287CB0A0();
  v27 = MEMORY[0x277D84F90];
  sub_2287693A8(&qword_280DE3A28, MEMORY[0x277D85198]);
  sub_2287723C0(0);
  sub_2287693A8(&qword_280DE3A08, sub_2287723C0);
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v17, v13, v20);
  _Block_release(v20);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v26);
}

uint64_t sub_2287654DC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _OWORD *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x22AABF5F0]();
    v6 = *(v4 + 16);
    sub_2287CAD30();
    v8[0] = v8[1];
    a2(&v9, v8);

    v7 = *(v4 + 16);
    sub_2287CAD20();

    objc_autoreleasePoolPop(v5);
  }

  return result;
}

uint64_t sub_2287655B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  v5 = *(v0 + 144);

  v6 = *(v0 + 152);

  __swift_destroy_boxed_opaque_existential_0((v0 + 168));
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  v7 = *(v0 + 248);

  return v0;
}

uint64_t sub_228765638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_228774694(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228775220(a4, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    sub_228775238(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);

    sub_2287651E0(sub_228775878, v11, &unk_283BC2368, &unk_283BC2598, sub_2287763C8, &block_descriptor_217);
  }

  return result;
}

uint64_t sub_2287657AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22872C820(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2287745F0(a4, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    sub_22877494C(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);

    sub_2287651E0(sub_228775BD8, v11, &unk_283BC2368, &unk_283BC2598, sub_2287763C8, &block_descriptor_217);
  }

  return result;
}

uint64_t sub_228765920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_228771868();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2287720B4(a4, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    sub_2287720CC(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);

    sub_2287651E0(sub_2287725EC, v11, &unk_283BC1E18, &unk_283BC2048, sub_228772388, &block_descriptor_5);
  }

  return result;
}

uint64_t sub_228765A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22872C6C0(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228771770(a4, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    sub_228771B7C(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);

    sub_2287651E0(sub_2287727D8, v11, &unk_283BC1E18, &unk_283BC2048, sub_228772388, &block_descriptor_5);
  }

  return result;
}

uint64_t sub_228765C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228774694(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228775220(a3, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    sub_228775238(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);

    sub_2287651E0(sub_228775618, v10, &unk_283BC2368, &unk_283BC2598, sub_2287763C8, &block_descriptor_217);
  }

  return result;
}

uint64_t sub_228765D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22872C820(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2287745F0(a3, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    sub_22877494C(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);

    sub_2287651E0(sub_228775940, v10, &unk_283BC2368, &unk_283BC2598, sub_2287763C8, &block_descriptor_217);
  }

  return result;
}

uint64_t sub_228765EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228771868();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2287720B4(a3, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    sub_2287720CC(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);

    sub_2287651E0(sub_228772334, v10, &unk_283BC1E18, &unk_283BC2048, sub_228772388, &block_descriptor_5);
  }

  return result;
}

uint64_t sub_228766064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22872C6C0(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228771770(a3, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    sub_228771B7C(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);

    sub_2287651E0(sub_2287726B4, v10, &unk_283BC1E18, &unk_283BC2048, sub_228772388, &block_descriptor_5);
  }

  return result;
}

uint64_t sub_228766228(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4)
{
  v7 = sub_2287CAA50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v12 = sub_2287CAA40();
  v13 = sub_2287CB610();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136446210;
    sub_228774608(0, a2, a3, MEMORY[0x277CBCD88]);
    v21 = v16;
    sub_228771438(0, a4, a2, a3);
    v17 = sub_2287CB250();
    v19 = sub_2287031D8(v17, v18, &v22);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2286FF000, v12, v13, "[%{public}s]: subscription to begin generation received", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AABFD90](v15, -1, -1);
    MEMORY[0x22AABFD90](v14, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_228766414(void *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4)
{
  v8 = sub_2287CAA50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v13 = a1;
  v14 = sub_2287CAA40();
  v15 = sub_2287CB610();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v8;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136446466;
    sub_228774608(0, a2, a3, MEMORY[0x277CBCD88]);
    v30 = v19;
    sub_228771438(0, a4, a2, a3);
    v20 = sub_2287CB250();
    v22 = sub_2287031D8(v20, v21, &v31);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    v30 = a1;
    v23 = a1;
    sub_22877149C();
    v24 = sub_2287CB250();
    v26 = sub_2287031D8(v24, v25, &v31);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_2286FF000, v14, v15, "[%{public}s]: Sending completion event <%{public}s> for generation sent", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v18, -1, -1);
    MEMORY[0x22AABFD90](v17, -1, -1);

    return (*(v9 + 8))(v12, v29);
  }

  else
  {

    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_2287666D0(unint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3)
{
  v6 = sub_2287CAA50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v11 = sub_2287CAA40();
  v12 = sub_2287CB610();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    sub_228774608(0, a1, a2, MEMORY[0x277CBCD88]);
    v20 = v15;
    sub_228771438(0, a3, a1, a2);
    v16 = sub_2287CB250();
    v18 = sub_2287031D8(v16, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2286FF000, v11, v12, "[%{public}s]: cancellation received for generation", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AABFD90](v14, -1, -1);
    MEMORY[0x22AABFD90](v13, -1, -1);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2287668BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  sub_2287706B8();
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228769228(0, &qword_280DE00C8, MEMORY[0x277D121A8], MEMORY[0x277CBCE78]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  sub_228774608(0, &qword_280DDFE38, MEMORY[0x277D121A8], MEMORY[0x277CBCF38]);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v31 - v20;
  v42 = a3;
  sub_2287CA570();

  sub_2287CADB0();
  sub_22870D3A8(0, &qword_280DE35A0);
  sub_2287CAD80();
  (*(v12 + 8))(v15, v11);
  sub_22873C4AC();
  v22 = sub_2287CAF40();
  (*(v18 + 8))(v21, v17);
  v23 = *a1;
  v24 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
  v25 = sub_2287C9A70();
  v36 = v22;
  v37 = v25;
  v38 = v26;
  v39 = a1;
  v40 = v32;
  v41 = a3;
  v27 = sub_228757440(sub_22877074C, v35, v23);

  v42 = v27;
  sub_228774608(0, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
  sub_22877078C();
  sub_22876928C();
  sub_2287693A8(&qword_280DDFFC0, sub_22877078C);
  sub_2287CAC40();
  sub_2287693A8(&qword_280DE0318, sub_2287706B8);
  v28 = v33;
  v29 = sub_2287CAF40();

  (*(v34 + 8))(v9, v28);
  return v29;
}

uint64_t sub_228766CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v70 = a7;
  v71 = a6;
  v86 = a2;
  v87 = a5;
  v84 = a3;
  v85 = a4;
  sub_228774608(0, &qword_280DE0088, sub_2287691F4, MEMORY[0x277CBCE88]);
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = *(v72 + 64);
  MEMORY[0x28223BE20](v8);
  v69 = v68 - v10;
  sub_228770814();
  v75 = *(v11 - 8);
  v76 = v11;
  v12 = *(v75 + 64);
  MEMORY[0x28223BE20](v11);
  v74 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877097C(0);
  v78 = *(v14 - 8);
  v79 = v14;
  v15 = *(v78 + 64);
  MEMORY[0x28223BE20](v14);
  v77 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228770A6C(0);
  v81 = *(v17 - 8);
  v82 = v17;
  v18 = *(v81 + 64);
  MEMORY[0x28223BE20](v17);
  v80 = v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287691F4(0);
  v21 = v20;
  v88 = *(v20 - 8);
  v22 = *(v88 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228770AA0();
  v25 = v24;
  v83 = *(v24 - 8);
  v26 = *(v83 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2287CA3C0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = (v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v33, a1, v29);
  v34 = (*(v30 + 88))(v33, v29);
  if (v34 == *MEMORY[0x277D12100])
  {
    (*(v30 + 96))(v33, v29);
    v35 = *v33;
    v89 = v86;
    v36 = MEMORY[0x277CBCD88];
    sub_228774608(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873DAE4();
    v37 = sub_2287CAEC0();

    v89 = v37;
    sub_228770280(v87, v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2287691F4);
    v38 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v39 = swift_allocObject();
    sub_228770390(v23, v39 + v38, sub_2287691F4);
    sub_228774608(0, &qword_280DE1AD0, sub_2287708C0, v36);
    sub_2287708F4();
    sub_2287CAF70();

    sub_2287693A8(&qword_280DE05E0, sub_228770AA0);
    v40 = sub_2287CAF40();
    (*(v83 + 8))(v28, v25);
    return v40;
  }

  v41 = v86;
  v68[0] = v25;
  v42 = v87;
  v68[1] = v21;
  if (v34 == *MEMORY[0x277D120D8])
  {
    (*(v30 + 96))(v33, v29);
    v43 = *v33;
    v89 = v41;
    v44 = MEMORY[0x277CBCD88];
    sub_228774608(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873DAE4();
    v45 = sub_2287CAEC0();

    v89 = v45;
    sub_228770280(v42, v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2287691F4);
    v46 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v47 = swift_allocObject();
    sub_228770390(v23, v47 + v46, sub_2287691F4);
    sub_228774608(0, &qword_280DE1AD0, sub_2287708C0, v44);
    sub_2287708F4();
    sub_2287CAF70();

    sub_2287693A8(&qword_280DE05E0, sub_228770AA0);
    v48 = v68[0];
    v40 = sub_2287CAF40();
    (*(v83 + 8))(v28, v48);
    return v40;
  }

  v49 = v88;
  if (v34 == *MEMORY[0x277D120F8])
  {
    (*(v30 + 96))(v33, v29);
    v50 = *v33;
    v89 = v41;
    sub_228774608(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873DAE4();
    v51 = sub_2287CAE80();

    v89 = v51;
    sub_228770280(v42, v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2287691F4);
    v52 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v53 = swift_allocObject();
    sub_228770390(v23, v53 + v52, sub_2287691F4);
    v54 = v80;
    sub_2287CAF70();

    sub_2287693A8(&qword_280DE0658, sub_228770A6C);
    v55 = v82;
    v40 = sub_2287CAF40();
    v56 = v81;
LABEL_9:
    v59 = *(v56 + 8);
    v60 = v54;
LABEL_10:
    v59(v60, v55);
    return v40;
  }

  if (v34 == *MEMORY[0x277D120F0])
  {
    (*(v30 + 96))(v33, v29);
    v57 = *v33;
    v89 = v41;
    sub_228774608(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873DAE4();
    v58 = sub_2287CAEA0();

    v89 = v58;
    v54 = v77;
    sub_2287CAF50();

    sub_2287693A8(&qword_280DE07D0, sub_22877097C);
    v55 = v79;
    v40 = sub_2287CAF40();
    v56 = v78;
    goto LABEL_9;
  }

  if (v34 == *MEMORY[0x277D120E8])
  {
    (*(v30 + 96))(v33, v29);
    v62 = *v33;
    v89 = v41;
    v63 = MEMORY[0x277CBCD88];
    sub_228774608(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873DAE4();
    v64 = sub_2287CAEC0();

    v89 = v64;
    sub_228774608(0, &qword_280DE1AD0, sub_2287708C0, v63);
    sub_2287708F4();
    v65 = v74;
    sub_2287CAF50();

    sub_2287693A8(&qword_280DE07C0, sub_228770814);
    v55 = v76;
    v40 = sub_2287CAF40();
    v59 = *(v75 + 8);
    v60 = v65;
    goto LABEL_10;
  }

  if (v34 == *MEMORY[0x277D120E0])
  {
    return sub_2287679D4(v70, v87, v84, v85);
  }

  sub_22870D3A8(0, &qword_280DE35A0);
  v66 = v69;
  sub_2287CADC0();
  sub_228770B4C();
  v67 = v73;
  v40 = sub_2287CAF40();
  (*(v72 + 8))(v66, v67);
  (*(v30 + 8))(v33, v29);
  return v40;
}

uint64_t sub_2287679D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v61 = a2;
  sub_2287691F4(0);
  v62 = v5;
  v60 = *(v5 - 8);
  v59 = *(v60 + 64);
  MEMORY[0x28223BE20](v5);
  v58 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228769228(0, &qword_280DE00C8, MEMORY[0x277D121A8], MEMORY[0x277CBCE78]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = v47 - v11;
  v48 = MEMORY[0x277D121A8];
  sub_228774608(0, &qword_280DDFE38, MEMORY[0x277D121A8], MEMORY[0x277CBCF38]);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = v47 - v17;
  sub_228770C00();
  v20 = *(v19 - 8);
  v49 = v19;
  v50 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228770C94();
  v25 = *(v24 - 8);
  v51 = v24;
  v52 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228770A6C(0);
  v30 = *(v29 - 8);
  v56 = v29;
  v57 = v30;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v55 = v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  sub_2287CA570();

  sub_2287CADB0();
  sub_22870D3A8(0, &qword_280DE35A0);
  sub_2287CAD80();
  (*(v9 + 8))(v12, v8);
  sub_22873C4AC();
  v33 = sub_2287CAF40();
  (*(v15 + 8))(v18, v14);
  v63 = v33;
  v34 = MEMORY[0x277CBCD88];
  sub_228774608(0, &qword_280DE0268, v48, MEMORY[0x277CBCD88]);
  v47[1] = v35;
  v48 = sub_22873DAE4();
  v36 = sub_2287CAED0();

  v63 = v36;
  sub_228774608(0, &qword_280DE1AD0, sub_2287708C0, v34);
  sub_2287708F4();
  sub_2287CAFB0();

  sub_2287693A8(&qword_280DE04F8, sub_228770C00);

  v37 = v49;
  sub_2287CAF70();

  (*(v50 + 8))(v23, v37);
  sub_2287693A8(&qword_280DE0590, sub_228770C94);
  v38 = v51;
  v39 = sub_2287CAE90();
  (*(v52 + 8))(v28, v38);
  v63 = v39;
  v40 = v58;
  sub_228770280(v61, v58, sub_2287691F4);
  v41 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v42 = swift_allocObject();
  sub_228770390(v40, v42 + v41, sub_2287691F4);
  v43 = v55;
  sub_2287CAF70();

  sub_2287693A8(&qword_280DE0658, sub_228770A6C);
  v44 = v56;
  v45 = sub_2287CAF40();
  (*(v57 + 8))(v43, v44);
  return v45;
}

uint64_t sub_2287680D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_228773EF4;
  a3[1] = v10;
  return result;
}

uint64_t sub_228768200()
{
  sub_22870CA30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2287C9930();
  v6 = *(v5 + 16);
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2287133DC(0, v6, 0);
    v7 = v17;
    v8 = v5 + 32;
    do
    {
      sub_2287010E4(v8, v14);
      v9 = v15;
      v10 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      SharableModelGeneratorPipeline.eraseToAnyPipeline()(v9, v10, v4);
      __swift_destroy_boxed_opaque_existential_0(v14);
      v17 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2287133DC(v11 > 1, v12 + 1, 1);
        v7 = v17;
      }

      *(v7 + 16) = v12 + 1;
      sub_228770390(v4, v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12, sub_22870CA30);
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

void *sub_2287683E0()
{
  result = sub_22877E820(&unk_283BC0190);
  off_280DE0BF0 = result;
  return result;
}

uint64_t sub_228768408(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;
}

uint64_t sub_228768468()
{
  swift_beginAccess();
  v1 = *(v0 + 256);
}

uint64_t sub_2287684A0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 256);
  *(v1 + 256) = a1;
}

uint64_t sub_228768538(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_228769154();
  v105 = v5;
  v103 = *(v5 - 8);
  v6 = *(v103 + 64);
  MEMORY[0x28223BE20](v5);
  v111 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228769314();
  v106 = *(v8 - 8);
  v107 = v8;
  v9 = *(v106 + 64);
  MEMORY[0x28223BE20](v8);
  v104 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287CA970();
  v112 = *(v11 - 8);
  v113 = v11;
  v12 = *(v112 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v102 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v108 = &v89 - v16;
  v100 = v17;
  MEMORY[0x28223BE20](v15);
  v117 = &v89 - v18;
  v19 = sub_2287C9810();
  v109 = *(v19 - 8);
  v110 = v19;
  v20 = *(v109 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v101 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v99 = &v89 - v24;
  v98 = v25;
  MEMORY[0x28223BE20](v23);
  v116 = &v89 - v26;
  sub_228739E24();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v96 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v95 = &v89 - v31;
  sub_2287693F0();
  v33 = v32;
  v34 = *(v32 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v37 = &v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a1 + qword_280DE6260);
  v97 = v2;
  if (v38)
  {
    v115 = v38;
  }

  else
  {
    swift_beginAccess();
    v118 = v2[32];
    sub_228773CC0(0, &qword_280DE0110, sub_2287691F4, MEMORY[0x277CBCE10]);
    sub_2287694A8();
    v115 = sub_2287CAF40();
  }

  v118 = *(a1 + 16);
  *(swift_allocObject() + 16) = v4;
  v114 = v4;
  sub_2287715EC(0, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
  sub_22873E054(0, &qword_280DE1A28);
  sub_22873A408();
  swift_retain_n();

  sub_2287CAF70();

  sub_2287693A8(&qword_280DE05F0, sub_2287693F0);
  v39 = sub_2287CAF40();
  (*(v34 + 8))(v37, v33);
  v40 = v95;
  sub_228770280(a1 + qword_280DE6258, v95, sub_228739E24);
  v41 = *(a1 + qword_280DE6268);
  sub_228769730();
  v43 = v42;
  v44 = *(v42 + 48);
  v45 = *(v42 + 52);
  v46 = swift_allocObject();
  sub_228770390(v40, v46 + qword_280DE6258, sub_228739E24);
  v47 = v96;
  sub_228770280(v46 + qword_280DE6258, v96, sub_228739E24);
  v48 = v115;
  swift_retain_n();

  swift_setDeallocating();
  sub_2287762E4(v46 + qword_280DE6258, sub_228739E24);
  v115 = v48;

  v49 = *(*v46 + 48);
  v50 = *(*v46 + 52);
  swift_deallocClassInstance();
  v51 = *(v43 + 48);
  v52 = *(v43 + 52);
  v53 = swift_allocObject();
  v95 = v53;
  v94 = v39;
  *(v53 + 16) = v39;
  sub_228770390(v47, v53 + qword_280DE6258, sub_228739E24);
  *(v53 + qword_280DE6260) = v48;
  *(v53 + qword_280DE6268) = v41;

  v54 = v97;
  v55 = sub_2287580D4(v53);
  v96 = v55;
  v56 = v116;
  sub_2287C9800();
  v57 = _HKLogPersistedSignposts();
  _HKLogSignpostIDGenerate();

  v58 = v117;
  sub_2287CA980();
  v118 = v55;
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = swift_allocObject();
  v61 = v114;
  *(v60 + 16) = v59;
  *(v60 + 24) = v61;
  sub_2287CACC0();
  sub_228774608(0, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
  sub_2287691F4(0);
  sub_22876928C();
  sub_2287CAFE0();

  v97 = v54[20];
  v62 = v109;
  v93 = *(v109 + 16);
  v63 = v99;
  v93(v99, v56, v110);
  v64 = v112;
  v92 = *(v112 + 16);
  v92(v108, v58, v113);
  v65 = *(v62 + 80);
  v66 = v62;
  v67 = (v65 + 16) & ~v65;
  v68 = *(v64 + 80);
  v69 = v64;
  v91 = v67;
  v70 = (v98 + v68 + v67) & ~v68;
  v98 = v65 | v68;
  v71 = v70;
  v89 = v70;
  v72 = (v100 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v90 = *(v66 + 32);
  v74 = v110;
  v90(v73 + v67, v63, v110);
  v99 = *(v69 + 32);
  v75 = v73 + v71;
  v76 = v73;
  v100 = v73;
  v77 = v113;
  (v99)(v75, v108, v113);
  *(v76 + v72) = v114;
  v78 = v101;
  v93(v101, v116, v74);
  v79 = v102;
  v92(v102, v117, v77);
  v80 = swift_allocObject();
  v90(v80 + v91, v78, v74);
  v81 = v79;
  v82 = v77;
  (v99)(v80 + v89, v81, v77);
  *(v80 + v72) = v114;
  sub_2287693A8(&qword_280DE0438, sub_228769154);
  v84 = v104;
  v83 = v105;
  v85 = v111;
  sub_2287CAE00();

  (*(v103 + 8))(v85, v83);
  sub_2287693A8(&unk_280DE0750, sub_228769314);
  v86 = v107;
  v87 = sub_2287CAF40();

  (*(v106 + 8))(v84, v86);
  (*(v112 + 8))(v117, v82);
  (*(v109 + 8))(v116, v74);
  return v87;
}

void sub_228769154()
{
  if (!qword_280DE0430)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_22876928C();
    v0 = sub_2287CABC0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0430);
    }
  }
}

void sub_228769228(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22876928C()
{
  result = qword_280DE0208;
  if (!qword_280DE0208)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0208);
  }

  return result;
}

void sub_228769314()
{
  if (!qword_280DE0748)
  {
    sub_228769154();
    sub_2287693A8(&qword_280DE0438, sub_228769154);
    v0 = sub_2287CAAC0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0748);
    }
  }
}

uint64_t sub_2287693A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2287693F0()
{
  if (!qword_280DE05E8)
  {
    sub_2287715EC(255, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
    sub_22873E054(255, &qword_280DE1A28);
    sub_22873A408();
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE05E8);
    }
  }
}

unint64_t sub_2287694A8()
{
  result = qword_27D850DD8;
  if (!qword_27D850DD8)
  {
    sub_228773CC0(255, &qword_280DE0110, sub_2287691F4, MEMORY[0x277CBCE10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850DD8);
  }

  return result;
}

void sub_228769530(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (v4 < *(v2 + 16))
    {
      v6 = *(v2 + 32 + 8 * v4++);
      v7 = v6;
      v8 = sub_2287C9C30();
      if (!v8)
      {
        goto LABEL_3;
      }

      v9 = v8;
      v10 = [v8 type];

      if (qword_280DE0BE8 != -1)
      {
        swift_once();
      }

      v11 = off_280DE0BF0;
      if (*(off_280DE0BF0 + 2) && (v12 = *(off_280DE0BF0 + 5), sub_2287CBD80(), MEMORY[0x22AABF460](v10), v13 = sub_2287CBDB0(), v14 = -1 << *(v11 + 32), v15 = v13 & ~v14, ((*(v11 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v15) & 1) != 0))
      {
        v16 = ~v14;
        while (*(v11[6] + 8 * v15) != v10)
        {
          v15 = (v15 + 1) & v16;
          if (((*(v11 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v15) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2287134A0(0, *(v5 + 16) + 1, 1);
        }

        v18 = *(v5 + 16);
        v17 = *(v5 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_2287134A0((v17 > 1), v18 + 1, 1);
        }

        *(v5 + 16) = v18 + 1;
        *(v5 + 8 * v18 + 32) = v6;
        if (v4 == v3)
        {
          goto LABEL_21;
        }
      }

      else
      {
LABEL_3:

        if (v4 == v3)
        {
          goto LABEL_21;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_21:
    *a2 = v5;
  }
}

void sub_228769730()
{
  if (!qword_280DE0FA0[0])
  {
    sub_22870CE64();
    sub_2287693A8(&qword_280DE2DA8, sub_22870CE64);
    v0 = type metadata accessor for GeneratorPipelineManager.GeneratorPipelineManagerStreamContext();
    if (!v1)
    {
      atomic_store(v0, qword_280DE0FA0);
    }
  }
}

uint64_t sub_2287697C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v100 = a2;
  sub_22877017C(0);
  v98 = *(v5 - 1);
  v99 = v5;
  v6 = *(v98 + 8);
  MEMORY[0x28223BE20](v5);
  v96 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228774608(0, &qword_280DDFE20, sub_2287691F4, MEMORY[0x277CBCF38]);
  v97 = v8;
  v95 = *(v8 - 8);
  v9 = *(v95 + 8);
  MEMORY[0x28223BE20](v8);
  v94 = &v79 - v10;
  v11 = sub_2287CAA50();
  v92 = *(v11 - 8);
  v93 = v11;
  v12 = *(v92 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287691F4(0);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v20 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v79 - v21;
  sub_22873DE68();
  v84 = v23;
  v85 = *(v23 - 8);
  v24 = *(v85 + 64);
  MEMORY[0x28223BE20](v23);
  v83 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228773F30();
  v89 = v26;
  v87 = *(v26 - 8);
  v27 = *(v87 + 64);
  MEMORY[0x28223BE20](v26);
  v86 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228774004();
  v30 = v29;
  v90 = *(v29 - 8);
  v31 = *(v90 + 64);
  MEMORY[0x28223BE20](v29);
  v88 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v101 = v16;
  if (Strong)
  {
    v34 = Strong;
    v80 = v17;
    v82 = v30;
    v35 = *(v16 + 32);
    v36 = sub_2287C9EB0();
    v37 = sub_2287C9C30();

    v81 = v37;
    if (v37)
    {
      v91 = a3;

      v38 = sub_2287C9EB0();
      if (v38)
      {
        v39 = *(v34 + 56);
        v40 = MEMORY[0x28223BE20](v38);
        *(&v79 - 2) = v40;
        v41 = v40;
        sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);

        sub_2287CA650();

        v42 = v102[0];
      }

      else
      {
        swift_beginAccess();
        v42 = *(v34 + 48);
      }

      v64 = v80;
      v99 = v42;
      v65 = *(v34 + 248);

      v66 = v83;
      sub_2287CA4D0();

      v98 = sub_2287691F4;
      sub_228770280(a1, v22, sub_2287691F4);
      v97 = a1;
      v67 = *(v64 + 80);
      v94 = (((v67 + 24) & ~v67) + v18);
      v96 = ((v67 + 24) & ~v67);
      v68 = swift_allocObject();
      *(v68 + 16) = v34;
      v95 = sub_2287691F4;
      sub_228770390(v22, v68 + ((v67 + 24) & ~v67), sub_2287691F4);

      sub_2287CACC0();
      sub_228774608(0, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
      v93 = v69;
      swift_getOpaqueTypeConformance2();
      v92 = sub_22876928C();
      v70 = v86;
      v71 = v84;
      sub_2287CAFE0();

      (*(v85 + 8))(v66, v71);
      sub_228770280(v97, v22, v98);
      v72 = (v94 + 7) & 0xFFFFFFFFFFFFFFF8;
      v73 = swift_allocObject();
      v74 = v81;
      *(v73 + 16) = v81;
      sub_228770390(v22, &v96[v73], v95);
      *(v73 + v72) = v100;
      sub_2287693A8(&qword_280DE0448, sub_228773F30);
      v75 = v74;
      v77 = v88;
      v76 = v89;
      sub_2287CAF90();

      (*(v87 + 8))(v70, v76);
      sub_2287693A8(&qword_280DE0540, sub_228774004);
      v78 = v82;
      v62 = sub_2287CAF40();

      result = (*(v90 + 8))(v77, v78);
      a3 = v91;
      goto LABEL_12;
    }
  }

  sub_2287CA9D0();
  sub_228770280(a1, v20, sub_2287691F4);
  v43 = sub_2287CAA40();
  v44 = sub_2287CB5F0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v91 = a3;
    v102[0] = v90;
    *v45 = 136315394;
    v46 = sub_2287CBE60();
    v48 = sub_2287031D8(v46, v47, v102);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2080;
    v49 = &v20[*(v101 + 32)];
    v50 = sub_2287C9EB0();
    v51 = sub_2287C9C50();
    v52 = v22;
    v53 = a1;
    v55 = v54;

    sub_2287762E4(v20, sub_2287691F4);
    v56 = sub_2287031D8(v51, v55, v102);
    a1 = v53;
    v22 = v52;

    *(v45 + 14) = v56;
    _os_log_impl(&dword_2286FF000, v43, v44, "%s Self is deallocated or we're unable to find a profile identifier for profile %s", v45, 0x16u);
    v57 = v90;
    swift_arrayDestroy();
    a3 = v91;
    MEMORY[0x22AABFD90](v57, -1, -1);
    MEMORY[0x22AABFD90](v45, -1, -1);
  }

  else
  {

    sub_2287762E4(v20, sub_2287691F4);
  }

  (*(v92 + 8))(v14, v93);
  sub_228770280(a1, v22, sub_2287691F4);
  v58 = v96;
  sub_2287CADB0();
  sub_22870D3A8(0, &qword_280DE35A0);
  v59 = v94;
  v60 = v99;
  sub_2287CAD80();
  (*(v98 + 1))(v58, v60);
  sub_2287740F0();
  v61 = v97;
  v62 = sub_2287CAF40();
  result = (*(v95 + 1))(v59, v61);
LABEL_12:
  *a3 = v62;
  return result;
}

uint64_t sub_22876A2A8@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v57 = a4;
  sub_2287691F4(0);
  v64 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v61 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22877017C(0);
  v13 = v12;
  v63 = *(v12 - 8);
  v14 = *(v63 + 64);
  MEMORY[0x28223BE20](v12);
  v60 = &v52[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228774608(0, &qword_280DDFE20, sub_2287691F4, MEMORY[0x277CBCF38]);
  v62 = v16;
  v59 = *(v16 - 8);
  v17 = *(v59 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v52[-v18];
  v58 = sub_2287CAA50();
  v20 = *(v58 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v58);
  v23 = &v52[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = *a1;
  sub_2287CA9D0();
  v25 = a2;
  v26 = v24;
  v27 = sub_2287CAA40();
  v28 = sub_2287CB5F0();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v56 = v13;
    v30 = v29;
    v54 = swift_slowAlloc();
    v66 = v54;
    *v30 = 136315650;
    v31 = sub_2287CBE60();
    v55 = a3;
    v33 = sub_2287031D8(v31, v32, &v66);
    v53 = v28;
    v34 = v33;

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v35 = v25;
    v36 = [v35 description];
    v37 = sub_2287CB220();
    v57 = a5;
    v39 = v38;

    v40 = v37;
    a3 = v55;
    v41 = sub_2287031D8(v40, v39, &v66);

    *(v30 + 14) = v41;
    *(v30 + 22) = 2082;
    v65 = v24;
    v42 = v24;
    sub_22870D3A8(0, &qword_280DE35A0);
    v43 = sub_2287CB250();
    v45 = sub_2287031D8(v43, v44, &v66);

    *(v30 + 24) = v45;
    a5 = v57;
    _os_log_impl(&dword_2286FF000, v27, v53, "%s Unable to find transaction builder for %s: %{public}s", v30, 0x20u);
    v46 = v54;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v46, -1, -1);
    v47 = v30;
    v13 = v56;
    MEMORY[0x22AABFD90](v47, -1, -1);
  }

  (*(v20 + 8))(v23, v58);
  sub_228770280(a3, v61, sub_2287691F4);
  v48 = v60;
  sub_2287CADB0();
  sub_22870D3A8(0, &qword_280DE35A0);
  sub_2287CAD80();
  (*(v63 + 8))(v48, v13);
  sub_2287740F0();
  v49 = v62;
  v50 = sub_2287CAF40();
  result = (*(v59 + 8))(v19, v49);
  *a5 = v50;
  return result;
}

void sub_22876A7EC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, void (*a5)(uint64_t))
{
  v31 = a5;
  v32 = a2;
  v29 = a4;
  v6 = sub_2287C9810();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2287CAA50();
  v11 = *(v30 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v30);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9F0();
  (*(v7 + 16))(v10, a1, v6);
  v15 = sub_2287CAA40();
  v16 = sub_2287CB610();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v28;
    *v17 = 136446466;
    v18 = sub_2287CBE60();
    v20 = sub_2287031D8(v18, v19, &v33);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    sub_2287693A8(&qword_280DE3468, MEMORY[0x277CC95F0]);
    v21 = sub_2287CBCC0();
    v23 = v22;
    (*(v7 + 8))(v10, v6);
    v24 = sub_2287031D8(v21, v23, &v33);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_2286FF000, v15, v16, v29, v17, 0x16u);
    v25 = v28;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v25, -1, -1);
    MEMORY[0x22AABFD90](v17, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v26 = (*(v11 + 8))(v14, v30);
  v31(v26);
  v27 = _HKLogPersistedSignposts();
  sub_2287CA930();
}

uint64_t objectdestroy_8Tm()
{
  v1 = sub_2287C9810();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2287CA970();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_22876ACB0(uint64_t (*a1)(unint64_t, unint64_t, uint64_t))
{
  v2 = *(sub_2287C9810() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_2287CA970() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v1 + v6, v7);
}

uint64_t sub_22876ADBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v54 = a1;
  v59 = *v2;
  sub_22876FEE4();
  v6 = *(v5 - 8);
  v60 = v5;
  v61 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v57 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22876FF90();
  v10 = *(v9 - 8);
  v62 = v9;
  v63 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877007C();
  v14 = *(v13 - 8);
  v50 = v13;
  v51 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287691F4(0);
  v49[1] = v18;
  v56 = *(v18 - 8);
  v55 = *(v56 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877017C(0);
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v21);
  v26 = v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v49 - v27;
  v52 = v20;
  v53 = sub_2287691F4;
  sub_228770280(a1, v20, sub_2287691F4);
  sub_2287CADB0();
  (*(v23 + 16))(v26, v28, v22);
  v29 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v30 = swift_allocObject();
  (*(v23 + 32))(v30 + v29, v26, v22);
  *(v30 + ((v24 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v64;

  sub_2287CACC0();
  sub_228774608(0, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
  v32 = v31;
  sub_2287701B0();
  v33 = sub_22876928C();
  sub_2287CB060();

  sub_2287693A8(&qword_280DE0478, sub_22877007C);
  v34 = v50;
  v35 = sub_2287CAF40();
  (*(v51 + 8))(v17, v34);
  (*(v23 + 8))(v28, v22);
  v36 = v3[24];
  v37 = v3[25];
  __swift_project_boxed_opaque_existential_1(v3 + 21, v36);
  v65 = v35;
  v65 = (*(v37 + 32))(&v65, v32, v33, v36, v37);
  swift_allocObject();
  swift_weakInit();
  v38 = v57;
  sub_2287CAF70();

  v39 = swift_allocObject();
  swift_weakInit();
  v40 = v52;
  sub_228770280(v54, v52, v53);
  v41 = (*(v56 + 80) + 24) & ~*(v56 + 80);
  v42 = (v55 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v39;
  sub_228770390(v40, v43 + v41, sub_2287691F4);
  *(v43 + v42) = v64;
  *(v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8)) = v59;
  sub_2287693A8(&qword_280DE0620, sub_22876FEE4);

  v44 = v58;
  v45 = v60;
  sub_2287CAF90();

  (*(v61 + 8))(v38, v45);
  sub_2287693A8(&qword_280DE0550, sub_22876FF90);
  v46 = v62;
  v47 = sub_2287CAF40();

  (*(v63 + 8))(v44, v46);
  return v47;
}

uint64_t sub_22876B4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + 40);
    if (sub_2287CA420())
    {
      swift_beginAccess();
      v7 = *(v5 + 256);

      sub_2287CACF0();
    }
  }

  return sub_228770280(a1, a2, sub_2287691F4);
}

uint64_t sub_22876B5B0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v76 = a5;
  v84 = a2;
  v85 = a6;
  v9 = MEMORY[0x277D121A8];
  sub_2287704B4(0, &qword_27D850DE0, &qword_280DE0268, MEMORY[0x277D121A8], sub_22873DAE4);
  v81 = *(v10 - 8);
  v82 = v10;
  v11 = *(v81 + 64);
  MEMORY[0x28223BE20](v10);
  v80 = &v70 - v12;
  sub_228769228(0, &qword_280DE00C8, MEMORY[0x277D121A8], MEMORY[0x277CBCE78]);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v79 = &v70 - v17;
  sub_228774608(0, &qword_280DDFE38, v9, MEMORY[0x277CBCF38]);
  v19 = v18;
  v78 = *(v18 - 8);
  v20 = *(v78 + 64);
  MEMORY[0x28223BE20](v18);
  v77 = &v70 - v21;
  sub_228774608(0, &qword_27D850DE8, sub_2287691F4, MEMORY[0x277CBCE68]);
  v74 = *(v22 - 8);
  v75 = v22;
  v23 = *(v74 + 64);
  MEMORY[0x28223BE20](v22);
  v73 = &v70 - v24;
  v83 = sub_2287CAA50();
  v25 = *(v83 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v83);
  v28 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  sub_2287CA9D0();
  v30 = v29;
  v31 = sub_2287CAA40();
  v32 = sub_2287CB5F0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v71 = v15;
    v34 = v33;
    v35 = swift_slowAlloc();
    v72 = v14;
    v36 = v35;
    v87[0] = v35;
    *v34 = 136446466;
    v37 = sub_2287CBE60();
    v70 = v19;
    v39 = sub_2287031D8(v37, v38, v87);
    v76 = a3;
    v40 = a4;
    v41 = v39;

    *(v34 + 4) = v41;
    *(v34 + 12) = 2082;
    v90 = v29;
    v42 = v29;
    sub_22870D3A8(0, &qword_280DE35A0);
    v43 = sub_2287CB270();
    v45 = sub_2287031D8(v43, v44, v87);
    a4 = v40;

    *(v34 + 14) = v45;
    v19 = v70;
    _os_log_impl(&dword_2286FF000, v31, v32, "[%{public}s]: Transaction Publisher Error: %{public}s", v34, 0x16u);
    swift_arrayDestroy();
    v46 = v36;
    v14 = v72;
    MEMORY[0x22AABFD90](v46, -1, -1);
    v47 = v34;
    v15 = v71;
    MEMORY[0x22AABFD90](v47, -1, -1);
  }

  (*(v25 + 8))(v28, v83);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v49 = Strong;
    sub_2287691F4(0);
    v84 = v50;
    v51 = *(v50 + 32);
    sub_22876BF30(v29);
    v87[0] = a4;
    sub_2287CA570();

    v52 = v79;
    sub_2287CADB0();
    sub_22870D3A8(0, &qword_280DE35A0);
    v53 = v77;
    sub_2287CAD80();
    (*(v15 + 8))(v52, v14);
    sub_22873C4AC();
    v54 = sub_2287CAEB0();
    v83 = v54;
    (*(v78 + 8))(v53, v19);
    sub_2287010E4(v49 + 168, v87);
    v56 = v88;
    v55 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    v86 = v54;
    v57 = *(v55 + 32);
    v58 = MEMORY[0x277CBCD88];
    sub_228774608(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    v60 = v59;
    v61 = sub_22873DAE4();
    v86 = v57(&v86, v60, v61, v56, v55);
    *(swift_allocObject() + 16) = v29;
    v62 = v29;
    sub_2287CACC0();
    sub_228774608(0, &qword_280DE0200, sub_2287691F4, v58);
    sub_22876928C();
    v63 = v80;
    sub_2287CAFE0();

    __swift_destroy_boxed_opaque_existential_0(v87);
    sub_228770628();
    v64 = v82;
    v65 = sub_2287CAF40();

    result = (*(v81 + 8))(v63, v64);
  }

  else
  {
    v87[0] = v29;
    v67 = v29;
    sub_2287691F4(0);
    sub_22870D3A8(0, &qword_280DE35A0);
    v68 = v73;
    sub_2287CAD70();
    sub_228770598();
    v69 = v75;
    v65 = sub_2287CAF40();
    result = (*(v74 + 8))(v68, v69);
  }

  *v85 = v65;
  return result;
}

uint64_t sub_22876BDD0@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_228774608(0, &qword_27D850DE8, sub_2287691F4, MEMORY[0x277CBCE68]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v13 - v8;
  v13[1] = a1;
  v10 = a1;
  sub_2287691F4(0);
  sub_22870D3A8(0, &qword_280DE35A0);
  sub_2287CAD70();
  sub_228770598();
  v11 = sub_2287CAF40();
  result = (*(v6 + 8))(v9, v5);
  *a2 = v11;
  return result;
}

void sub_22876BF30(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2287CAA50();
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v45 = sub_2287C9630();
  v12 = [v45 domain];
  v13 = sub_2287CB220();
  v15 = v14;

  v16 = *MEMORY[0x277CCBDB0];
  if (v13 == sub_2287CB220() && v15 == v17)
  {
  }

  else
  {
    v19 = sub_2287CBD00();

    if ((v19 & 1) == 0)
    {
LABEL_10:
      v21 = v45;

      return;
    }
  }

  v20 = [v45 code];
  if (v20 != 126)
  {
    if (v20 == 6)
    {
      sub_2287CA9D0();
      v37 = sub_2287CAA40();
      v38 = sub_2287CB610();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v47 = v40;
        *v39 = 136315138;
        v41 = sub_22876C3BC();
        v43 = sub_2287031D8(v41, v42, &v47);

        *(v39 + 4) = v43;
        _os_log_impl(&dword_2286FF000, v37, v38, "[%s] Can not access database: exiting process", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x22AABFD90](v40, -1, -1);
        MEMORY[0x22AABFD90](v39, -1, -1);
      }

      (*(v44 + 8))(v9, v5);
      exit(0);
    }

    goto LABEL_10;
  }

  v22 = sub_2287C9E90();
  v23 = v2[31];
  v24 = [v22 profileIdentifier];
  sub_2287CA4C0();

  sub_2287CA9D0();
  v25 = a1;
  v26 = sub_2287CAA40();
  v27 = sub_2287CB600();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v47 = v29;
    *v28 = 136446466;
    v30 = sub_2287CBE60();
    v32 = sub_2287031D8(v30, v31, &v47);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    v46 = a1;
    v33 = a1;
    sub_22870D3A8(0, &qword_280DE35A0);
    v34 = sub_2287CB270();
    v36 = sub_2287031D8(v34, v35, &v47);

    *(v28 + 14) = v36;
    _os_log_impl(&dword_2286FF000, v26, v27, "[%{public}s]: Cleared existing transaction identifier due to error: %{public}s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v29, -1, -1);
    MEMORY[0x22AABFD90](v28, -1, -1);
  }

  (*(v44 + 8))(v11, v5);
}

uint64_t SharableModelGeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v17 = swift_allocObject();
  SharableModelGeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(a1, a2, a3, a4 & 1, a5, a6, a7, a8, a9);
  return v17;
}

void *SharableModelGeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(uint64_t *a1, void *a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v10 = v9;
  v72 = a8;
  v66 = a7;
  v76 = a6;
  v74 = a5;
  v65 = a4;
  v64 = a3;
  v63 = a2;
  v75 = a1;
  v84 = a9;
  v82 = *v9;
  v80 = sub_2287CB6A0();
  v79 = *(v80 - 8);
  v14 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v77 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22876CFB0();
  v81 = v16;
  v83 = *(v16 - 8);
  v17 = *(v83 + 64);
  MEMORY[0x28223BE20](v16);
  v78 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2287C9DF0();
  v69 = *(v71 - 8);
  v19 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v68 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2287C9E70();
  v70 = *(v73 - 8);
  v21 = *(v70 + 64);
  MEMORY[0x28223BE20](v73);
  v67 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_2287CB6B0();
  v60 = *(v61 - 8);
  v23 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2287CB670();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v28 = sub_2287CB0E0();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  sub_228773CC0(0, &qword_280DE0110, sub_2287691F4, MEMORY[0x277CBCE10]);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v9[32] = sub_2287CAD00();
  sub_2287010E4(a1, &v93);
  sub_2287010E4(a5, &v92);
  sub_2287010E4(a8, &v91);
  sub_2287010E4(v84, &v88);
  v86 = MEMORY[0x277D84F98];
  v87 = MEMORY[0x277D84F98];
  sub_228773CC0(0, &qword_280DE00E8, sub_22876D0B0, MEMORY[0x277CBCE30]);
  v62 = v33;
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v9[2] = sub_2287CAD60();
  v9[4] = 0;
  [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v36 = sub_2287CA440();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v9[18] = sub_2287CA430();
  v59 = sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
  v86 = 0;
  v87 = 0xE000000000000000;
  sub_2287CBA20();

  sub_22876D1CC();
  v86 = v39;
  sub_22876D260();
  v86 = sub_2287CB250();
  v87 = v40;
  MEMORY[0x22AABE980](0xD000000000000013, 0x80000002287D0720);
  sub_2287CB0A0();
  v86 = MEMORY[0x277D84F90];
  sub_2287693A8(&qword_280DE39D8, MEMORY[0x277D85230]);
  sub_22876D2A8(0);
  sub_2287693A8(&qword_280DE39E8, sub_22876D2A8);
  sub_2287CB880();
  (*(v60 + 104))(v25, *MEMORY[0x277D85260], v61);
  v9[20] = sub_2287CB6D0();
  sub_2287010E4(&v93, (v9 + 8));
  v41 = v63;
  v9[6] = v63;
  v9[3] = v64;
  *(v9 + 40) = v65 & 1;
  sub_2287010E4(&v92, (v9 + 13));
  v9[31] = v66;
  sub_2287010E4(&v91, (v9 + 21));
  sub_2287010E4(&v88, (v9 + 26));
  sub_228769228(0, &qword_280DE1810, sub_228739F64, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2287CCFE0;
  v43 = v41;

  *(inited + 32) = [v43 profileIdentifier];
  *(inited + 40) = v43;
  v44 = v43;
  v45 = sub_228739FF4(inited);
  swift_setDeallocating();
  sub_2287762E4(inited + 32, sub_228739F64);
  v86 = v45;
  sub_228769228(0, &qword_280DE3360, sub_22876FCD4, MEMORY[0x277D121D8]);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v10[7] = sub_2287CA690();
  v10[19] = v76;
  v49 = v89;
  v50 = v90;
  __swift_project_boxed_opaque_existential_1(&v88, v89);
  (*(v69 + 104))(v68, *MEMORY[0x277D11F10], v71);

  v51 = v67;
  sub_2287C9E30();
  v52 = (*(v50 + 8))(v51, v49, v50);
  (*(v70 + 8))(v51, v73);
  v86 = v10[2];

  v53 = v77;
  sub_2287CB690();
  v85 = v52;
  sub_22876D144();
  sub_22873A2A8(&qword_280DE3620, &qword_280DE39D0, 0x277D85C78);
  v54 = v78;
  sub_2287CB020();
  (*(v79 + 8))(v53, v80);

  *(swift_allocObject() + 16) = v82;
  sub_2287693A8(&qword_280DE0328, sub_22876CFB0);
  v55 = v81;
  v56 = sub_2287CB050();

  __swift_destroy_boxed_opaque_existential_0(v84);
  __swift_destroy_boxed_opaque_existential_0(v72);
  __swift_destroy_boxed_opaque_existential_0(v74);
  __swift_destroy_boxed_opaque_existential_0(v75);
  (*(v83 + 8))(v54, v55);
  __swift_destroy_boxed_opaque_existential_0(&v91);
  __swift_destroy_boxed_opaque_existential_0(&v92);
  __swift_destroy_boxed_opaque_existential_0(&v93);
  v57 = v10[4];
  v10[4] = v56;

  __swift_destroy_boxed_opaque_existential_0(&v88);
  return v10;
}

void sub_22876CFB0()
{
  if (!qword_280DE0320)
  {
    sub_228773CC0(255, &qword_280DE00E8, sub_22876D0B0, MEMORY[0x277CBCE30]);
    sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
    sub_22876D144();
    sub_22873A2A8(&qword_280DE3620, &qword_280DE39D0, 0x277D85C78);
    v0 = sub_2287CAC20();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0320);
    }
  }
}

void sub_22876D0B0()
{
  if (!qword_280DE29F0)
  {
    sub_22870CE64();
    sub_2287693A8(&qword_280DE2DA8, sub_22870CE64);
    v0 = type metadata accessor for GeneratorPipelineManager.GenerationState();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE29F0);
    }
  }
}

unint64_t sub_22876D144()
{
  result = qword_280DE00F0;
  if (!qword_280DE00F0)
  {
    sub_228773CC0(255, &qword_280DE00E8, sub_22876D0B0, MEMORY[0x277CBCE30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE00F0);
  }

  return result;
}

void sub_22876D1CC()
{
  if (!qword_280DE2958)
  {
    sub_22870CE64();
    sub_2287693A8(&qword_280DE2DA8, sub_22870CE64);
    v0 = type metadata accessor for GeneratorPipelineManager();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE2958);
    }
  }
}

unint64_t sub_22876D260()
{
  result = qword_280DE2950;
  if (!qword_280DE2950)
  {
    sub_22876D1CC();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DE2950);
  }

  return result;
}

uint64_t SharableModelGeneratorPipelineManager.deinit()
{
  v0 = sub_2287655B8();
  v1 = *(v0 + 256);

  return v0;
}

uint64_t SharableModelGeneratorPipelineManager.__deallocating_deinit()
{
  v0 = *(sub_2287655B8() + 256);

  return swift_deallocClassInstance();
}

uint64_t sub_22876D35C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(unint64_t, uint64_t)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_228756C18(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = sub_2287C9810();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = a2(0);
    v31 = *(v24 - 8);
    a3(v23 + *(v31 + 72) * v22, a6);
    a4(v22, v19);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = a2(0);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

void sub_22876D51C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_228756BD4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_2287BA778(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_228756BD4(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
        sub_2287CBD30();
        __break(1u);
_objc_retain_x1:
        MEMORY[0x2821F9840]();
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_2287BB86C();
      v8 = v16;
    }
  }

  v19 = *v4;
  if ((v14 & 1) == 0)
  {
    v19[(v8 >> 6) + 8] |= 1 << v8;
    *(v19[6] + 8 * v8) = a2;
    *(v19[7] + 8 * v8) = a1;
    v22 = v19[2];
    v12 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v12)
    {
      v19[2] = v23;

      goto _objc_retain_x1;
    }

    goto LABEL_17;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v8);
  *(v20 + 8 * v8) = a1;
}

uint64_t sub_22876D694(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2287C9810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_228756C18(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      sub_228774694(0);
      return sub_2287759C8(a1, v22 + *(*(v23 - 8) + 72) * v15, sub_228774694);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_2287BB9C0();
    goto LABEL_7;
  }

  sub_2287BA9D4(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_228756C18(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_2287CBD30();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_22876DE84(v15, v12, a1, v21, sub_228774694, sub_228775238);
}

uint64_t sub_22876D890(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2287C9810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_228756C18(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      sub_22872C820(0);
      return sub_2287759C8(a1, v22 + *(*(v23 - 8) + 72) * v15, sub_22872C820);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_2287BB9E8();
    goto LABEL_7;
  }

  sub_2287BA9FC(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_228756C18(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_2287CBD30();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_22876DE84(v15, v12, a1, v21, sub_22872C820, sub_22877494C);
}

uint64_t sub_22876DA8C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2287C9810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_228756C18(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      sub_228771868();
      return sub_2287759C8(a1, v22 + *(*(v23 - 8) + 72) * v15, sub_228771868);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_2287BBEBC();
    goto LABEL_7;
  }

  sub_2287BB164(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_228756C18(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_2287CBD30();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_22876DE84(v15, v12, a1, v21, sub_228771868, sub_2287720CC);
}

uint64_t sub_22876DC88(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2287C9810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_228756C18(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      sub_22872C6C0(0);
      return sub_2287759C8(a1, v22 + *(*(v23 - 8) + 72) * v15, sub_22872C6C0);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_2287BC1B4();
    goto LABEL_7;
  }

  sub_2287BB5BC(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_228756C18(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_2287CBD30();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_22876DE84(v15, v12, a1, v21, sub_22872C6C0, sub_228771B7C);
}

uint64_t sub_22876DE84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, unint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_2287C9810();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = a6(a3, v14 + *(*(v15 - 8) + 72) * a1);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

void sub_22876DF78(uint64_t a1, int a2, void *a3)
{
  sub_22872C820(0);
  v60 = *(v7 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287C9810();
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228772C28(0, &qword_280DE3450, sub_22872C820);
  v62 = *(v15 - 8);
  v16 = *(v62 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  v59 = *(a1 + 16);
  if (!v59)
  {
    goto LABEL_24;
  }

  v55 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v56 = a2;
  v20 = *(v17 + 48);
  v21 = *(v62 + 80);
  v61 = a1;
  v22 = (v63 + 32);
  v57 = a1 + ((v21 + 32) & ~v21);
  sub_228773704(v57, v19, &qword_280DE3450, sub_22872C820);
  v23 = *v22;
  (*v22)(v14, v19, v64);
  v58 = v20;
  sub_22877494C(&v19[v20], v10);
  v24 = *a3;
  v26 = sub_228756C18(v14);
  v27 = v24[2];
  v28 = (v25 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v30 = v25;
  if (v24[3] >= v29)
  {
    if (v56)
    {
      if ((v25 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2287BB9E8();
      if ((v30 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_2287BA9FC(v29, v56 & 1);
  v31 = *a3;
  v32 = sub_228756C18(v14);
  if ((v30 & 1) == (v33 & 1))
  {
    v26 = v32;
    if ((v30 & 1) == 0)
    {
LABEL_14:
      v36 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v23((v36[6] + *(v63 + 72) * v26), v14, v64);
      sub_22877494C(v10, v36[7] + *(v60 + 72) * v26);
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v36[2] = v39;
      if (v59 != 1)
      {
        v40 = 1;
        while (v40 < *(v61 + 16))
        {
          sub_228773704(v57 + *(v62 + 72) * v40, v19, &qword_280DE3450, sub_22872C820);
          v41 = *v22;
          (*v22)(v14, v19, v64);
          sub_22877494C(&v19[v58], v10);
          v42 = *a3;
          v43 = sub_228756C18(v14);
          v45 = v42[2];
          v46 = (v44 & 1) == 0;
          v38 = __OFADD__(v45, v46);
          v47 = v45 + v46;
          if (v38)
          {
            goto LABEL_26;
          }

          v48 = v44;
          if (v42[3] < v47)
          {
            sub_2287BA9FC(v47, 1);
            v49 = *a3;
            v43 = sub_228756C18(v14);
            if ((v48 & 1) != (v50 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v48)
          {
            goto LABEL_11;
          }

          v51 = *a3;
          *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v52 = v43;
          v41((v51[6] + *(v63 + 72) * v43), v14, v64);
          sub_22877494C(v10, v51[7] + *(v60 + 72) * v52);
          v53 = v51[2];
          v38 = __OFADD__(v53, 1);
          v54 = v53 + 1;
          if (v38)
          {
            goto LABEL_27;
          }

          ++v40;
          v51[2] = v54;
          if (v59 == v40)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v34 = swift_allocError();
    swift_willThrow();

    v67 = v34;
    v35 = v34;
    sub_22870D3A8(0, &qword_280DE35A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_2287762E4(v10, sub_22872C820);
      (*(v63 + 8))(v14, v64);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_2287CBD30();
  __break(1u);
LABEL_29:
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_2287CBA20();
  MEMORY[0x22AABE980](0xD00000000000001BLL, 0x80000002287D1F20);
  sub_2287CBB30();
  MEMORY[0x22AABE980](39, 0xE100000000000000);
  sub_2287CBB90();
  __break(1u);
}

void sub_22876E5A8(uint64_t a1, int a2, void *a3)
{
  sub_22872C6C0(0);
  v60 = *(v7 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287C9810();
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228772C28(0, &qword_280DE3460, sub_22872C6C0);
  v62 = *(v15 - 8);
  v16 = *(v62 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  v59 = *(a1 + 16);
  if (!v59)
  {
    goto LABEL_24;
  }

  v55 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v56 = a2;
  v20 = *(v17 + 48);
  v21 = *(v62 + 80);
  v61 = a1;
  v22 = (v63 + 32);
  v57 = a1 + ((v21 + 32) & ~v21);
  sub_228773704(v57, v19, &qword_280DE3460, sub_22872C6C0);
  v23 = *v22;
  (*v22)(v14, v19, v64);
  v58 = v20;
  sub_228771B7C(&v19[v20], v10);
  v24 = *a3;
  v26 = sub_228756C18(v14);
  v27 = v24[2];
  v28 = (v25 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v30 = v25;
  if (v24[3] >= v29)
  {
    if (v56)
    {
      if ((v25 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2287BC1B4();
      if ((v30 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_2287BB5BC(v29, v56 & 1);
  v31 = *a3;
  v32 = sub_228756C18(v14);
  if ((v30 & 1) == (v33 & 1))
  {
    v26 = v32;
    if ((v30 & 1) == 0)
    {
LABEL_14:
      v36 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v23((v36[6] + *(v63 + 72) * v26), v14, v64);
      sub_228771B7C(v10, v36[7] + *(v60 + 72) * v26);
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v36[2] = v39;
      if (v59 != 1)
      {
        v40 = 1;
        while (v40 < *(v61 + 16))
        {
          sub_228773704(v57 + *(v62 + 72) * v40, v19, &qword_280DE3460, sub_22872C6C0);
          v41 = *v22;
          (*v22)(v14, v19, v64);
          sub_228771B7C(&v19[v58], v10);
          v42 = *a3;
          v43 = sub_228756C18(v14);
          v45 = v42[2];
          v46 = (v44 & 1) == 0;
          v38 = __OFADD__(v45, v46);
          v47 = v45 + v46;
          if (v38)
          {
            goto LABEL_26;
          }

          v48 = v44;
          if (v42[3] < v47)
          {
            sub_2287BB5BC(v47, 1);
            v49 = *a3;
            v43 = sub_228756C18(v14);
            if ((v48 & 1) != (v50 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v48)
          {
            goto LABEL_11;
          }

          v51 = *a3;
          *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v52 = v43;
          v41((v51[6] + *(v63 + 72) * v43), v14, v64);
          sub_228771B7C(v10, v51[7] + *(v60 + 72) * v52);
          v53 = v51[2];
          v38 = __OFADD__(v53, 1);
          v54 = v53 + 1;
          if (v38)
          {
            goto LABEL_27;
          }

          ++v40;
          v51[2] = v54;
          if (v59 == v40)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v34 = swift_allocError();
    swift_willThrow();

    v67 = v34;
    v35 = v34;
    sub_22870D3A8(0, &qword_280DE35A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_2287762E4(v10, sub_22872C6C0);
      (*(v63 + 8))(v14, v64);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_2287CBD30();
  __break(1u);
LABEL_29:
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_2287CBA20();
  MEMORY[0x22AABE980](0xD00000000000001BLL, 0x80000002287D1F20);
  sub_2287CBB30();
  MEMORY[0x22AABE980](39, 0xE100000000000000);
  sub_2287CBB90();
  __break(1u);
}

uint64_t sub_22876EC68@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a2(0) + 48);
  sub_228772C28(0, a3, a4);
  v12 = *(v11 + 48);
  v13 = sub_2287C9810();
  (*(*(v13 - 8) + 16))(a6, a1, v13);

  return a5(a1 + v10, a6 + v12);
}

uint64_t sub_22876ED9C@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  sub_228776028(0);
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C820(0);
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287C9810();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228769228(0, &qword_280DE3478, sub_228776028, MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v54 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v17);
  v50 = &v46 - v20;
  v22 = *v1;
  v21 = v1[1];
  v24 = v1[2];
  v23 = v1[3];
  v25 = v1[4];
  v47 = v5;
  v53 = v24;
  if (v25)
  {
    v26 = v23;
LABEL_10:
    v48 = (v25 - 1) & v25;
    v30 = __clz(__rbit64(v25)) | (v26 << 6);
    (*(v11 + 16))(v14, *(v22 + 48) + *(v11 + 72) * v30, v10);
    sub_2287745F0(*(v22 + 56) + *(v49 + 72) * v30, v9);
    v31 = v9;
    v32 = v52;
    v33 = *(v52 + 48);
    v34 = v50;
    (*(v11 + 32))();
    sub_22877494C(v31, v34 + v33);
    v35 = v51;
    (*(v51 + 56))(v34, 0, 1, v32);
    v36 = v48;
    v29 = v26;
LABEL_11:
    *v1 = v22;
    v1[1] = v21;
    v37 = v54;
    v1[2] = v53;
    v1[3] = v29;
    v1[4] = v36;
    v38 = v1[5];
    v39 = v1[6];
    sub_2287760C4(v34, v37, &qword_280DE3478, sub_228776028);
    v40 = 1;
    v41 = (*(v35 + 48))(v37, 1, v32);
    v42 = v55;
    if (v41 != 1)
    {
      v43 = v37;
      v44 = v47;
      sub_228770390(v43, v47, sub_228776028);
      v38(v44);
      sub_2287762E4(v44, sub_228776028);
      v40 = 0;
    }

    sub_228772C28(0, &qword_280DE3450, sub_22872C820);
    return (*(*(v45 - 8) + 56))(v42, v40, 1, v45);
  }

  else
  {
    v27 = (v24 + 64) >> 6;
    if (v27 <= v23 + 1)
    {
      v28 = v23 + 1;
    }

    else
    {
      v28 = (v24 + 64) >> 6;
    }

    v29 = v28 - 1;
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v26 >= v27)
      {
        v34 = v50;
        v35 = v51;
        v32 = v52;
        (*(v51 + 56))(v50, 1, 1, v52);
        v36 = 0;
        goto LABEL_11;
      }

      v25 = *(v21 + 8 * v26);
      ++v23;
      if (v25)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22876F240@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  sub_2287736E4(0);
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C6C0(0);
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287C9810();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228769228(0, &qword_280DE3488, sub_2287736E4, MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v54 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v17);
  v50 = &v46 - v20;
  v22 = *v1;
  v21 = v1[1];
  v24 = v1[2];
  v23 = v1[3];
  v25 = v1[4];
  v47 = v5;
  v53 = v24;
  if (v25)
  {
    v26 = v23;
LABEL_10:
    v48 = (v25 - 1) & v25;
    v30 = __clz(__rbit64(v25)) | (v26 << 6);
    (*(v11 + 16))(v14, *(v22 + 48) + *(v11 + 72) * v30, v10);
    sub_228771770(*(v22 + 56) + *(v49 + 72) * v30, v9);
    v31 = v9;
    v32 = v52;
    v33 = *(v52 + 48);
    v34 = v50;
    (*(v11 + 32))();
    sub_228771B7C(v31, v34 + v33);
    v35 = v51;
    (*(v51 + 56))(v34, 0, 1, v32);
    v36 = v48;
    v29 = v26;
LABEL_11:
    *v1 = v22;
    v1[1] = v21;
    v37 = v54;
    v1[2] = v53;
    v1[3] = v29;
    v1[4] = v36;
    v38 = v1[5];
    v39 = v1[6];
    sub_2287760C4(v34, v37, &qword_280DE3488, sub_2287736E4);
    v40 = 1;
    v41 = (*(v35 + 48))(v37, 1, v32);
    v42 = v55;
    if (v41 != 1)
    {
      v43 = v37;
      v44 = v47;
      sub_228770390(v43, v47, sub_2287736E4);
      v38(v44);
      sub_2287762E4(v44, sub_2287736E4);
      v40 = 0;
    }

    sub_228772C28(0, &qword_280DE3460, sub_22872C6C0);
    return (*(*(v45 - 8) + 56))(v42, v40, 1, v45);
  }

  else
  {
    v27 = (v24 + 64) >> 6;
    if (v27 <= v23 + 1)
    {
      v28 = v23 + 1;
    }

    else
    {
      v28 = (v24 + 64) >> 6;
    }

    v29 = v28 - 1;
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v26 >= v27)
      {
        v34 = v50;
        v35 = v51;
        v32 = v52;
        (*(v51 + 56))(v50, 1, 1, v52);
        v36 = 0;
        goto LABEL_11;
      }

      v25 = *(v21 + 8 * v26);
      ++v23;
      if (v25)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22876F750@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, char *a5@<X8>)
{
  v8 = *a1;
  v9 = a3(0);
  sub_2287010E4(a2 + *(v9 + 28), (a5 + 8));
  v10 = *(v9 + 32);
  v11 = a4(0);
  v12 = *(v11 + 32);
  v13 = sub_2287C9ED0();
  (*(*(v13 - 8) + 16))(&a5[v12], a2 + v10, v13);
  *a5 = v8;
  v14 = *(v11 + 36);

  return sub_2287C9800();
}

uint64_t sub_22876F818@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2287CBCE0();
  if (!result)
  {
    result = swift_allocError();
  }

  *a1 = result;
  return result;
}

uint64_t sub_22876F870@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, void (*a5)(char *, char *)@<X5>, void *a6@<X8>)
{
  v25 = a5;
  v10 = a3(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = sub_2287C9810();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v19 = a1[1];
  *a6 = v20;
  a6[1] = v19;
  v21 = a4(0);
  (*(v15 + 16))(v18, a2 + *(v21 + 36), v14);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);

  v22 = swift_modifyAtWritableKeyPath();
  v25(v13, v18);
  return v22(v26, 0);
}

uint64_t sub_22876FA4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(uint64_t, char *)@<X5>, void (*a7)(char *, char *)@<X6>, void *a8@<X8>)
{
  v27 = a2;
  v28 = a7;
  v13 = a4(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = sub_2287C9810();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = a1[1];
  *a8 = v22;
  a8[1] = v23;
  v24 = a5(0);
  (*(v18 + 16))(v21, a3 + *(v24 + 36), v17);
  a6(a3, v16);
  (*(*(v24 - 8) + 56))(v16, 0, 1, v24);

  v25 = swift_modifyAtWritableKeyPath();
  v28(v16, v21);
  return v25(v29, 0);
}

uint64_t sub_22876FC38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t *)@<X3>, void *a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v9;
  a4(a2, a3, 0, isUniquelyReferenced_nonNull_native, &v13);

  *a5 = v13;
  a5[1] = v10;
  return result;
}

void sub_22876FCD4()
{
  if (!qword_280DE1A40)
  {
    sub_228703004(255, &qword_280DE3870, 0x277CCD7C8);
    sub_228703004(255, &qword_280DE1990, 0x277CCD4D8);
    sub_22873A2A8(&qword_280DE1970, &qword_280DE3870, 0x277CCD7C8);
    v0 = sub_2287CB190();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1A40);
    }
  }
}

uint64_t type metadata accessor for SharableModelGeneratorPipelineManager()
{
  result = qword_280DE1F98;
  if (!qword_280DE1F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22876FEE4()
{
  if (!qword_280DE0618)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_2287691F4(255);
    sub_22876928C();
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0618);
    }
  }
}

void sub_22876FF90()
{
  if (!qword_280DE0548)
  {
    sub_22876FEE4();
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_2287693A8(&qword_280DE0620, sub_22876FEE4);
    sub_22876928C();
    v0 = sub_2287CAB60();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0548);
    }
  }
}

void sub_22877007C()
{
  if (!qword_280DE0470)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_228775DB8(255, &qword_280DE06F8, sub_22877017C, sub_2287701B0, MEMORY[0x277CBCB98]);
    sub_22876928C();
    sub_2287701E4();
    v0 = sub_2287CABC0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0470);
    }
  }
}

unint64_t sub_2287701E4()
{
  result = qword_280DE0700;
  if (!qword_280DE0700)
  {
    sub_228775DB8(255, &qword_280DE06F8, sub_22877017C, sub_2287701B0, MEMORY[0x277CBCB98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0700);
  }

  return result;
}

uint64_t sub_228770280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2287702E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22877017C(0);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  result = sub_2287668BC(a1, v2 + v6, *(v2 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
  *a2 = result;
  return result;
}

uint64_t sub_228770390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2287703F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2287691F4(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + v8);
  v11 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22876B5B0(a1, v9, v2 + v7, v10, v11, a2);
}

void sub_2287704B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    v9 = MEMORY[0x277CBCD88];
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_228774608(255, a3, a4, v9);
    sub_22876928C();
    a5();
    v10 = sub_2287CABC0();
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_228770598()
{
  result = qword_27D850DF0;
  if (!qword_27D850DF0)
  {
    sub_228774608(255, &qword_27D850DE8, sub_2287691F4, MEMORY[0x277CBCE68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850DF0);
  }

  return result;
}

unint64_t sub_228770628()
{
  result = qword_27D850DF8;
  if (!qword_27D850DF8)
  {
    sub_2287704B4(255, &qword_27D850DE0, &qword_280DE0268, MEMORY[0x277D121A8], sub_22873DAE4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850DF8);
  }

  return result;
}

void sub_2287706B8()
{
  if (!qword_280DE0310)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_22876928C();
    v0 = sub_2287CAC30();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0310);
    }
  }
}

uint64_t sub_22877074C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_228766CE8(a1, v2[2], v2[3], v2[4], v2[5], v2[6], v2[7]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void sub_22877078C()
{
  if (!qword_280DDFFC8)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    v0 = sub_2287CB450();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDFFC8);
    }
  }
}

void sub_228770814()
{
  if (!qword_280DE07B8)
  {
    sub_228774608(255, &qword_280DE1AD0, sub_2287708C0, MEMORY[0x277CBCD88]);
    sub_2287691F4(255);
    sub_2287708F4();
    v0 = sub_2287CAA70();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE07B8);
    }
  }
}

unint64_t sub_2287708F4()
{
  result = qword_280DE1AD8;
  if (!qword_280DE1AD8)
  {
    sub_228774608(255, &qword_280DE1AD0, sub_2287708C0, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1AD8);
  }

  return result;
}

void sub_2287709B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_228774608(255, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    v9 = v8;
    v10 = a3(255);
    v11 = sub_22873DAE4();
    v12 = a4(a1, v9, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void sub_228770AA0()
{
  if (!qword_280DE05D8)
  {
    sub_228774608(255, &qword_280DE1AD0, sub_2287708C0, MEMORY[0x277CBCD88]);
    sub_2287691F4(255);
    sub_2287708F4();
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE05D8);
    }
  }
}

unint64_t sub_228770B4C()
{
  result = qword_27D850E00;
  if (!qword_27D850E00)
  {
    sub_228774608(255, &qword_280DE0088, sub_2287691F4, MEMORY[0x277CBCE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850E00);
  }

  return result;
}

void sub_228770C00()
{
  if (!qword_280DE04F0)
  {
    sub_228774608(255, &qword_280DE1AD0, sub_2287708C0, MEMORY[0x277CBCD88]);
    sub_2287708F4();
    v0 = sub_2287CABA0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE04F0);
    }
  }
}

void sub_228770C94()
{
  if (!qword_280DE0588)
  {
    sub_228770C00();
    sub_2287CA570();
    sub_2287693A8(&qword_280DE04F8, sub_228770C00);
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0588);
    }
  }
}

uint64_t objectdestroy_37Tm()
{
  sub_2287691F4(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v0 + v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + 8));
  v7 = *(v2 + 40);
  v8 = sub_2287C9ED0();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);
  v9 = *(v2 + 44);
  v10 = sub_2287C9810();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_228770EA8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_22873A300();
    sub_228774608(255, a3, a4, MEMORY[0x277CBCD88]);
    sub_2287693A8(&qword_280DE01F0, sub_22873A300);
    v7 = sub_2287CAB50();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_228770F78()
{
  if (!qword_280DE2610)
  {
    sub_22873E054(255, &qword_280DE1A10);
    v0 = type metadata accessor for GeneratorPipelineManagerWrapper();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE2610);
    }
  }
}

void sub_228770FE0()
{
  if (!qword_280DE06C8)
  {
    sub_228774608(255, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);
    sub_228770E80(255);
    sub_2287710CC();
    sub_2287693A8(&qword_280DE0610, sub_228770E80);
    v0 = sub_2287CAB00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE06C8);
    }
  }
}

unint64_t sub_2287710CC()
{
  result = qword_280DE0220;
  if (!qword_280DE0220)
  {
    sub_228774608(255, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0220);
  }

  return result;
}

void sub_228771154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2287715EC(255, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
    v7 = v6;
    v8 = sub_22873A408();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2287711EC()
{
  if (!qword_280DE0708)
  {
    sub_2287715EC(255, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
    sub_22870D3A8(255, &qword_280DE35A0);
    sub_22873A408();
    v0 = sub_2287CAAF0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0708);
    }
  }
}

uint64_t sub_2287712C0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228771154(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22877131C()
{
  if (!qword_280DE0788)
  {
    sub_228774608(255, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);
    sub_2287710CC();
    v0 = sub_2287CAAA0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0788);
    }
  }
}

unint64_t sub_2287713B0()
{
  result = qword_27D850E08;
  if (!qword_27D850E08)
  {
    sub_228774608(255, &qword_280DE0090, sub_228770F78, MEMORY[0x277CBCE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850E08);
  }

  return result;
}

uint64_t sub_228771438(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    sub_228774608(255, a3, a4, MEMORY[0x277CBCD88]);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_22877149C()
{
  if (!qword_280DE02A8)
  {
    sub_22870D3A8(255, &qword_280DE35A0);
    v0 = sub_2287CAC90();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE02A8);
    }
  }
}

void sub_22877150C()
{
  if (!qword_280DE0490)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_228774608(255, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);
    sub_228774608(255, &qword_280DE0238, sub_22872C6C0, v0);
    sub_2287710CC();
    sub_2287716BC();
    v1 = sub_2287CABC0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0490);
    }
  }
}

void sub_2287715EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_22873E054(255, a3);
    v9 = a5(a1, v8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_228771664(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_2287715EC(255, a2, &qword_280DE1A10, MEMORY[0x277D120A0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2287716BC()
{
  result = qword_280DE0240;
  if (!qword_280DE0240)
  {
    sub_228774608(255, &qword_280DE0238, sub_22872C6C0, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0240);
  }

  return result;
}

uint64_t sub_228771744@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_228760518(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

void sub_228771788()
{
  if (!qword_280DE04A0)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_228774608(255, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);
    sub_228774608(255, &qword_280DE0258, sub_228771868, v0);
    sub_2287710CC();
    sub_2287718EC();
    v1 = sub_2287CABC0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE04A0);
    }
  }
}

void sub_228771868()
{
  if (!qword_280DE2650[0])
  {
    sub_2287715EC(255, &qword_280DE2E58, &qword_280DE1A10, MEMORY[0x277D120A0], type metadata accessor for AnyGenerator);
    v0 = type metadata accessor for GeneratorPipelineManagerWrapper();
    if (!v1)
    {
      atomic_store(v0, qword_280DE2650);
    }
  }
}

unint64_t sub_2287718EC()
{
  result = qword_280DE0260;
  if (!qword_280DE0260)
  {
    sub_228774608(255, &qword_280DE0258, sub_228771868, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0260);
  }

  return result;
}

void sub_228771974()
{
  if (!qword_280DE1CA0)
  {
    sub_228771A08();
    sub_2287693A8(&qword_280DE1B38, sub_228771A08);
    v0 = sub_2287CAAA0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1CA0);
    }
  }
}

void sub_228771A08()
{
  if (!qword_280DE1B30)
  {
    sub_2287715EC(255, &qword_280DE2E58, &qword_280DE1A10, MEMORY[0x277D120A0], type metadata accessor for AnyGenerator);
    v0 = sub_2287CACD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1B30);
    }
  }
}

void sub_228771A9C()
{
  if (!qword_280DE1C30)
  {
    sub_228771974();
    sub_228771868();
    sub_2287693A8(qword_280DE1CA8, sub_228771974);
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1C30);
    }
  }
}

unint64_t sub_228771C40()
{
  result = qword_280DE03C8;
  if (!qword_280DE03C8)
  {
    sub_228775DB8(255, &qword_280DE03C0, sub_228771A9C, sub_228771B48, MEMORY[0x277CBCD00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE03C8);
  }

  return result;
}

uint64_t sub_228771CDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_228762360(a1);
  *a2 = result;
  return result;
}

uint64_t sub_228771D08(uint64_t a1, uint64_t a2)
{
  sub_2287715EC(0, &qword_280DE2E58, &qword_280DE1A10, MEMORY[0x277D120A0], type metadata accessor for AnyGenerator);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_228771DCC()
{
  if (!qword_280DE1C80)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_2287715EC(255, &qword_280DE1AB0, &qword_280DE1A10, MEMORY[0x277D120A0], MEMORY[0x277CBCD88]);
    sub_228771664(&qword_280DE1AB8, &qword_280DE1AB0, v0);
    v1 = sub_2287CAAA0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1C80);
    }
  }
}

void sub_228771E90()
{
  if (!qword_280DE1C10)
  {
    sub_228771DCC();
    sub_228770F78();
    sub_2287693A8(&qword_280DE1C88, sub_228771DCC);
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1C10);
    }
  }
}

void sub_228771F70()
{
  if (!qword_280DE0728)
  {
    sub_228775DB8(255, &qword_280DE03A0, sub_228771E90, sub_228771F3C, MEMORY[0x277CBCD00]);
    sub_228772018();
    v0 = sub_2287CAAD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0728);
    }
  }
}

unint64_t sub_228772018()
{
  result = qword_280DE03A8;
  if (!qword_280DE03A8)
  {
    sub_228775DB8(255, &qword_280DE03A0, sub_228771E90, sub_228771F3C, MEMORY[0x277CBCD00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE03A8);
  }

  return result;
}

uint64_t objectdestroy_83Tm()
{
  sub_228771868();
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  v8 = *(v0 + v4 + 8);

  sub_2287715EC(0, &qword_280DE2E58, &qword_280DE1A10, MEMORY[0x277D120A0], type metadata accessor for AnyGenerator);
  v10 = v9;
  v11 = *(v9 + 44);
  v12 = sub_2287C9E70();
  (*(*(v12 - 8) + 8))(v0 + v4 + v11, v12);
  v13 = *(v0 + v4 + *(v10 + 48) + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + v2[9]));
  v14 = v2[10];
  v15 = sub_2287C9ED0();
  (*(*(v15 - 8) + 8))(v0 + v4 + v14, v15);
  v16 = v2[11];
  v17 = sub_2287C9810();
  (*(*(v17 - 8) + 8))(v0 + v4 + v16, v17);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_96Tm()
{
  sub_228771868();
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + v4 + 8);

  sub_2287715EC(0, &qword_280DE2E58, &qword_280DE1A10, MEMORY[0x277D120A0], type metadata accessor for AnyGenerator);
  v9 = v8;
  v10 = *(v8 + 44);
  v11 = sub_2287C9E70();
  (*(*(v11 - 8) + 8))(v0 + v4 + v10, v11);
  v12 = *(v0 + v4 + *(v9 + 48) + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + v2[9]));
  v13 = v2[10];
  v14 = sub_2287C9ED0();
  (*(*(v14 - 8) + 8))(v0 + v4 + v13, v14);
  v15 = v2[11];
  v16 = sub_2287C9810();
  (*(*(v16 - 8) + 8))(v0 + v4 + v15, v16);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228772708@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(char *, char *)@<X4>, void *a6@<X8>)
{
  v12 = *(a2(0) - 8);
  v13 = *(v6 + 16);
  return sub_22876F870(a1, v6 + ((*(v12 + 80) + 24) & ~*(v12 + 80)), a3, a4, a5, a6);
}

unint64_t sub_2287728A0()
{
  result = qword_280DE1A20;
  if (!qword_280DE1A20)
  {
    sub_22873E054(255, &qword_280DE1A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1A20);
  }

  return result;
}

void sub_228772944(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_228774608(255, a3, a4, MEMORY[0x277CBCD88]);
    sub_22873D608();
    a5();
    sub_2287693A8(&qword_280DE04D8, sub_22873D608);
    v7 = sub_2287CABC0();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_228772A24@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22875B8E0(*a1);
  *a2 = result;
  return result;
}

void sub_228772A64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_2287CAC10();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_228772B8C()
{
  result = qword_280DE0388;
  if (!qword_280DE0388)
  {
    sub_228775DB8(255, &qword_280DE0380, sub_228772AF0, sub_228772B24, MEMORY[0x277CBCD10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0388);
  }

  return result;
}

void sub_228772C28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_2287C9810();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_228772CA0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_228772C28(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_228772D0C()
{
  if (!qword_280DE18C0)
  {
    sub_2287C9810();
    sub_22872C6C0(255);
    sub_2287693A8(&qword_280DE3970, MEMORY[0x277CC95F0]);
    v0 = sub_2287CBC00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE18C0);
    }
  }
}

uint64_t sub_228772DFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_22872C820(0);
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2287C9810();
  v47 = *(v52 - 8);
  v13 = v47[8];
  MEMORY[0x28223BE20](v52);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877368C(0, &qword_280DE3448, &qword_280DE3450, sub_22872C820);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v45 - v18;
  v20 = -1 << *(a1 + 32);
  v21 = ~v20;
  v22 = *(a1 + 64);
  v23 = -v20;
  v53 = a1;
  v54 = a1 + 64;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v55 = v21;
  v56 = 0;
  v57 = v24 & v22;
  v58 = a2;
  v59 = a3;

  v45 = a3;

  sub_22876ED9C(v19);
  sub_228772C28(0, &qword_280DE3450, sub_22872C820);
  v26 = v25;
  v27 = *(v25 - 8);
  v28 = *(v27 + 48);
  v48 = v27 + 48;
  v49 = v28;
  if (v28(v19, 1, v25) == 1)
  {
LABEL_5:
    sub_22870B3D4();
  }

  v51 = v47[4];
  v46 = (v47 + 1);
  while (1)
  {
    v30 = *(v26 + 48);
    v51(v15, v19, v52);
    sub_22877494C(&v19[v30], v60);
    v31 = *a5;
    v33 = sub_228756C18(v15);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if (a4)
      {
        v41 = *a5;
        if (v32)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_2287BB9E8();
        v41 = *a5;
        if (v37)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_2287BA9FC(v36, a4 & 1);
      v38 = *a5;
      v39 = sub_228756C18(v15);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_22;
      }

      v33 = v39;
      v41 = *a5;
      if (v37)
      {
LABEL_7:
        (*v46)(v15, v52);
        sub_2287759C8(v60, v41[7] + *(v50 + 72) * v33, sub_22872C820);
        goto LABEL_8;
      }
    }

    v41[(v33 >> 6) + 8] |= 1 << v33;
    v51((v41[6] + v47[9] * v33), v15, v52);
    sub_22877494C(v60, v41[7] + *(v50 + 72) * v33);
    v42 = v41[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_21;
    }

    v41[2] = v44;
LABEL_8:
    sub_22876ED9C(v19);
    a4 = 1;
    if (v49(v19, 1, v26) == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_2287CBD30();
  __break(1u);
  return result;
}

uint64_t sub_228773244(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_22872C6C0(0);
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2287C9810();
  v47 = *(v52 - 8);
  v13 = v47[8];
  MEMORY[0x28223BE20](v52);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877368C(0, &qword_280DE3458, &qword_280DE3460, sub_22872C6C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v45 - v18;
  v20 = -1 << *(a1 + 32);
  v21 = ~v20;
  v22 = *(a1 + 64);
  v23 = -v20;
  v53 = a1;
  v54 = a1 + 64;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v55 = v21;
  v56 = 0;
  v57 = v24 & v22;
  v58 = a2;
  v59 = a3;

  v45 = a3;

  sub_22876F240(v19);
  sub_228772C28(0, &qword_280DE3460, sub_22872C6C0);
  v26 = v25;
  v27 = *(v25 - 8);
  v28 = *(v27 + 48);
  v48 = v27 + 48;
  v49 = v28;
  if (v28(v19, 1, v25) == 1)
  {
LABEL_5:
    sub_22870B3D4();
  }

  v51 = v47[4];
  v46 = (v47 + 1);
  while (1)
  {
    v30 = *(v26 + 48);
    v51(v15, v19, v52);
    sub_228771B7C(&v19[v30], v60);
    v31 = *a5;
    v33 = sub_228756C18(v15);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if (a4)
      {
        v41 = *a5;
        if (v32)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_2287BC1B4();
        v41 = *a5;
        if (v37)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_2287BB5BC(v36, a4 & 1);
      v38 = *a5;
      v39 = sub_228756C18(v15);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_22;
      }

      v33 = v39;
      v41 = *a5;
      if (v37)
      {
LABEL_7:
        (*v46)(v15, v52);
        sub_2287759C8(v60, v41[7] + *(v50 + 72) * v33, sub_22872C6C0);
        goto LABEL_8;
      }
    }

    v41[(v33 >> 6) + 8] |= 1 << v33;
    v51((v41[6] + v47[9] * v33), v15, v52);
    sub_228771B7C(v60, v41[7] + *(v50 + 72) * v33);
    v42 = v41[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_21;
    }

    v41[2] = v44;
LABEL_8:
    sub_22876F240(v19);
    a4 = 1;
    if (v49(v19, 1, v26) == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_2287CBD30();
  __break(1u);
  return result;
}

void sub_22877368C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_228772C28(255, a3, a4);
    v5 = sub_2287CB820();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_228773704(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_228772C28(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_228773770(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_228703004(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2287737D8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_2287738D0(255, a2, &qword_280DDFEB0, MEMORY[0x277D83D88], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22877383C()
{
  if (!qword_280DE0798)
  {
    sub_22873CEFC();
    sub_2287693A8(&qword_280DE02D8, sub_22873CEFC);
    v0 = sub_2287CAA80();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0798);
    }
  }
}

void sub_2287738D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_228773770(255, a3, &qword_280DE1958, 0x277CCD940, a4);
    v9 = v8;
    v10 = sub_22870D3A8(255, &qword_280DE35A0);
    v11 = a5(a1, v9, v10, MEMORY[0x277D84950]);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_2287739F8()
{
  if (!qword_280DE07A8)
  {
    sub_22873D260();
    sub_2287693A8(&qword_280DE02E8, sub_22873D260);
    v0 = sub_2287CAA80();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE07A8);
    }
  }
}

unint64_t sub_228773AB8()
{
  result = qword_280DE1AA8;
  if (!qword_280DE1AA8)
  {
    sub_228773CC0(255, &qword_280DE1AA0, sub_22870CB48, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1AA8);
  }

  return result;
}

void sub_228773B40()
{
  if (!qword_280DE0500)
  {
    sub_228773CC0(255, &qword_280DE1AF0, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_22873BFE0();
    v0 = sub_2287CABA0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0500);
    }
  }
}

void sub_228773BD4()
{
  if (!qword_280DE0420)
  {
    sub_22873AC94();
    sub_22873C170();
    sub_2287693A8(&qword_280DE1A98, sub_22873AC94);
    sub_2287693A8(&qword_280DE0518, sub_22873C170);
    v0 = sub_2287CABC0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0420);
    }
  }
}

void sub_228773CC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_228773D34()
{
  if (!qword_280DE06A8)
  {
    sub_22873AC94();
    sub_22873AB44();
    sub_2287693A8(&qword_280DE1A98, sub_22873AC94);
    sub_2287693A8(&qword_280DE05C0, sub_22873AB44);
    v0 = sub_2287CAB00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE06A8);
    }
  }
}

unint64_t sub_228773E20()
{
  result = qword_280DE0080;
  if (!qword_280DE0080)
  {
    sub_228773CC0(255, &qword_280DE0078, sub_22870CB48, MEMORY[0x277CBCE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0080);
  }

  return result;
}

uint64_t sub_228773EF4()
{
  v1 = *(v0 + 24);
  v2 = *(*(*(v0 + 16) - 8) + 80);
  return sub_228768200();
}

void sub_228773F30()
{
  if (!qword_280DE0440)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_22873DE68();
    sub_22876928C();
    swift_getOpaqueTypeConformance2();
    v0 = sub_2287CABC0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0440);
    }
  }
}

void sub_228774004()
{
  if (!qword_280DE0538)
  {
    sub_228773F30();
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_2287693A8(&qword_280DE0448, sub_228773F30);
    sub_22876928C();
    v0 = sub_2287CAB60();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0538);
    }
  }
}

unint64_t sub_2287740F0()
{
  result = qword_27D850E10;
  if (!qword_27D850E10)
  {
    sub_228774608(255, &qword_280DDFE20, sub_2287691F4, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850E10);
  }

  return result;
}

uint64_t sub_228774178@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2287691F4(0);
  v6 = v2 + ((*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80));
  v7 = *(v2 + 16);
  result = sub_22876ADBC(v6, *a1);
  *a2 = result;
  return result;
}

uint64_t sub_2287741F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2287691F4(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v2 + 16);

  return sub_22876A2A8(a1, v9, v2 + v7, v8, a2);
}

void sub_2287742CC()
{
  if (!qword_280DE06B8)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_2287742A4(255);
    sub_22876928C();
    sub_2287693A8(&qword_280DE0600, sub_2287742A4);
    v0 = sub_2287CAB00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE06B8);
    }
  }
}

uint64_t sub_2287743DC@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, v3[2], v3[3], v3[4]);
  *a3 = result;
  return result;
}

void sub_228774418()
{
  if (!qword_280DE0778)
  {
    sub_228774608(255, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_22876928C();
    v0 = sub_2287CAAA0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0778);
    }
  }
}

unint64_t sub_2287744AC()
{
  result = qword_280DE0230;
  if (!qword_280DE0230)
  {
    sub_228774608(255, &qword_280DE0228, sub_22872C820, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0230);
  }

  return result;
}

uint64_t sub_228774534@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22875FE44(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

unint64_t sub_228774560()
{
  result = qword_280DE0458;
  if (!qword_280DE0458)
  {
    sub_2287704B4(255, &qword_280DE0450, &qword_280DE0228, sub_22872C820, sub_2287744AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0458);
  }

  return result;
}

void sub_228774608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_22870D3A8(255, &qword_280DE35A0);
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2287746C8()
{
  result = qword_280DE0250;
  if (!qword_280DE0250)
  {
    sub_228774608(255, &qword_280DE0248, sub_228774694, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0250);
  }

  return result;
}

void sub_228774750()
{
  if (!qword_280DE1C90)
  {
    sub_228773CC0(255, &qword_280DE1B20, sub_22870CAC4, MEMORY[0x277CBCD88]);
    sub_2287747E4();
    v0 = sub_2287CAAA0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1C90);
    }
  }
}

unint64_t sub_2287747E4()
{
  result = qword_280DE1B28;
  if (!qword_280DE1B28)
  {
    sub_228773CC0(255, &qword_280DE1B20, sub_22870CAC4, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1B28);
  }

  return result;
}

void sub_22877486C()
{
  if (!qword_280DE1C20)
  {
    sub_228774750();
    sub_228774694(255);
    sub_2287693A8(&qword_280DE1C98, sub_228774750);
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1C20);
    }
  }
}

uint64_t objectdestroy_65Tm(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = (a1(0) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(*v4 + 64);
  v8 = *(v2 + 16);

  v9 = *(v2 + 24);

  v10 = *(v2 + v6 + 8);

  v11 = a2(0);
  v12 = *(v11 + 36);
  v13 = sub_2287C9E70();
  (*(*(v13 - 8) + 8))(v2 + v6 + v12, v13);
  v14 = *(v2 + v6 + *(v11 + 40) + 8);

  __swift_destroy_boxed_opaque_existential_0((v2 + v6 + v4[9]));
  v15 = v4[10];
  v16 = sub_2287C9ED0();
  (*(*(v16 - 8) + 8))(v2 + v6 + v15, v16);
  v17 = v4[11];
  v18 = sub_2287C9810();
  (*(*(v18 - 8) + 8))(v2 + v6 + v17, v18);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_75Tm_0(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = (a1(0) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(*v4 + 64);
  v8 = *(v2 + v6 + 8);

  v9 = a2(0);
  v10 = *(v9 + 36);
  v11 = sub_2287C9E70();
  (*(*(v11 - 8) + 8))(v2 + v6 + v10, v11);
  v12 = *(v2 + v6 + *(v9 + 40) + 8);

  __swift_destroy_boxed_opaque_existential_0((v2 + v6 + v4[9]));
  v13 = v4[10];
  v14 = sub_2287C9ED0();
  (*(*(v14 - 8) + 8))(v2 + v6 + v13, v14);
  v15 = v4[11];
  v16 = sub_2287C9810();
  (*(*(v16 - 8) + 8))(v2 + v6 + v15, v16);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

unint64_t sub_228774DF8()
{
  result = qword_280DE03B8;
  if (!qword_280DE03B8)
  {
    sub_228775DB8(255, &qword_280DE03B0, sub_22877486C, sub_228774918, MEMORY[0x277CBCD00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE03B8);
  }

  return result;
}

uint64_t sub_228774E94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_228761E44(a1);
  *a2 = result;
  return result;
}

unint64_t sub_228774EC0()
{
  result = qword_280DE0468;
  if (!qword_280DE0468)
  {
    sub_2287704B4(255, &qword_280DE0460, &qword_280DE0248, sub_228774694, sub_2287746C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0468);
  }

  return result;
}

void sub_228774F68()
{
  if (!qword_280DE1C70)
  {
    sub_228773CC0(255, &qword_280DE1AA0, sub_22870CB48, MEMORY[0x277CBCD88]);
    sub_228773AB8();
    v0 = sub_2287CAAA0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1C70);
    }
  }
}

void sub_228774FFC()
{
  if (!qword_280DE1C00)
  {
    sub_228774F68();
    sub_2287691F4(255);
    sub_2287693A8(&qword_280DE1C78, sub_228774F68);
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1C00);
    }
  }
}

void sub_2287750DC()
{
  if (!qword_280DE0718)
  {
    sub_228775DB8(255, &qword_280DE0390, sub_228774FFC, sub_2287750A8, MEMORY[0x277CBCD00]);
    sub_228775184();
    v0 = sub_2287CAAD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0718);
    }
  }
}

unint64_t sub_228775184()
{
  result = qword_280DE0398;
  if (!qword_280DE0398)
  {
    sub_228775DB8(255, &qword_280DE0390, sub_228774FFC, sub_2287750A8, MEMORY[0x277CBCD00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0398);
  }

  return result;
}

uint64_t sub_22877527C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

uint64_t objectdestroy_196Tm()
{
  sub_228774694(0);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  v8 = *(v0 + v4 + 8);

  sub_22870CAC4(0);
  v10 = v9;
  v11 = *(v9 + 44);
  v12 = sub_2287C9E70();
  (*(*(v12 - 8) + 8))(v0 + v4 + v11, v12);
  v13 = *(v0 + v4 + *(v10 + 48) + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + v2[9]));
  v14 = v2[10];
  v15 = sub_2287C9ED0();
  (*(*(v15 - 8) + 8))(v0 + v4 + v14, v15);
  v16 = v2[11];
  v17 = sub_2287C9810();
  (*(*(v17 - 8) + 8))(v0 + v4 + v16, v17);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2287754D4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return a2(v4, v5, v6);
}

uint64_t sub_228775580(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t objectdestroy_100Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_209Tm()
{
  sub_228774694(0);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + v4 + 8);

  sub_22870CAC4(0);
  v9 = v8;
  v10 = *(v8 + 44);
  v11 = sub_2287C9E70();
  (*(*(v11 - 8) + 8))(v0 + v4 + v10, v11);
  v12 = *(v0 + v4 + *(v9 + 48) + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + v2[9]));
  v13 = v2[10];
  v14 = sub_2287C9ED0();
  (*(*(v14 - 8) + 8))(v0 + v4 + v13, v14);
  v15 = v2[11];
  v16 = sub_2287C9810();
  (*(*(v16 - 8) + 8))(v0 + v4 + v15, v16);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2287759C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_106Tm(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = (a1(0) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(*v4 + 64);
  v8 = *(v2 + 16);

  v9 = *(v2 + v6 + 8);

  v10 = a2(0);
  v11 = *(v10 + 36);
  v12 = sub_2287C9E70();
  (*(*(v12 - 8) + 8))(v2 + v6 + v11, v12);
  v13 = *(v2 + v6 + *(v10 + 40) + 8);

  __swift_destroy_boxed_opaque_existential_0((v2 + v6 + v4[9]));
  v14 = v4[10];
  v15 = sub_2287C9ED0();
  (*(*(v15 - 8) + 8))(v2 + v6 + v14, v15);
  v16 = v4[11];
  v17 = sub_2287C9810();
  (*(*(v17 - 8) + 8))(v2 + v6 + v16, v17);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_228775CDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22875B154(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_228775D18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_228775DB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v11[0] = a3(255);
    v11[1] = sub_22870D3A8(255, &qword_280DE35A0);
    v11[2] = a4();
    v11[3] = MEMORY[0x277D84950];
    v9 = a5(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_228775E9C()
{
  result = qword_280DE0378;
  if (!qword_280DE0378)
  {
    sub_228775DB8(255, &qword_280DE0370, sub_228775D50, sub_228775D84, MEMORY[0x277CBCD10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0378);
  }

  return result;
}

void sub_228775F38()
{
  if (!qword_280DE18B8)
  {
    sub_2287C9810();
    sub_22872C820(255);
    sub_2287693A8(&qword_280DE3970, MEMORY[0x277CC95F0]);
    v0 = sub_2287CBC00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE18B8);
    }
  }
}

void sub_228776048(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_2287C9810();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2287760C4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228769228(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_123Tm()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_127Tm()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2287762E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_141Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id sub_228776460()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupConfigurationLoader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2287764B8(uint64_t a1)
{
  sub_22877706C();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 80);
  v9 = *(v1 + 88);

  v11 = v10(a1);

  v19[0] = v11;
  sub_228777144(0, &qword_280DE01A0, &qword_280DE19D0, sub_228777200);
  sub_22877724C(&qword_280DE01A8, &qword_280DE01A0, &qword_280DE19D0, sub_228777200);
  v12 = sub_2287CAE50();

  v19[0] = v12;
  v13 = MEMORY[0x277D11FD8];
  sub_228777144(0, &qword_280DE1AC0, &qword_280DE1A18, MEMORY[0x277D11FD8]);
  v15 = v14;
  v16 = sub_22877724C(&qword_280DE1AC8, &qword_280DE1AC0, &qword_280DE1A18, v13);
  sub_2287CAE10();

  v19[0] = v15;
  v19[1] = v16;
  swift_getOpaqueTypeConformance2();
  v17 = sub_2287CAF40();
  (*(v5 + 8))(v8, v4);
  return v17;
}

uint64_t sub_2287766E0(uint64_t a1)
{
  sub_22877706C();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2287CA560();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
  }

  sub_2287CA530();
  v14 = *(v1 + 80);
  v13 = *(v1 + 88);

  v15 = v14(v12);

  v25 = v15;
  sub_228777144(0, &qword_280DE01A0, &qword_280DE19D0, sub_228777200);
  sub_22877724C(&qword_280DE01A8, &qword_280DE01A0, &qword_280DE19D0, sub_228777200);
  v16 = sub_2287CAE50();

  v25 = v16;
  v17 = MEMORY[0x277D11FD8];
  sub_228777144(0, &qword_280DE1AC0, &qword_280DE1A18, MEMORY[0x277D11FD8]);
  v19 = v18;
  v20 = sub_22877724C(&qword_280DE1AC8, &qword_280DE1AC0, &qword_280DE1A18, v17);
  sub_2287CAE10();

  v25 = v19;
  v26 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = sub_2287CAF40();
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v24);
  return v21;
}

uint64_t sub_2287769C8(uint64_t a1)
{
  sub_22877706C();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2287CA560();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (sub_2287CB920())
  {
LABEL_3:
  }

LABEL_5:
  sub_2287CA530();
  v14 = *(v1 + 80);
  v13 = *(v1 + 88);

  v15 = v14(v12);

  v25 = v15;
  sub_228777144(0, &qword_280DE01A0, &qword_280DE19D0, sub_228777200);
  sub_22877724C(&qword_280DE01A8, &qword_280DE01A0, &qword_280DE19D0, sub_228777200);
  v16 = sub_2287CAE50();

  v25 = v16;
  v17 = MEMORY[0x277D11FD8];
  sub_228777144(0, &qword_280DE1AC0, &qword_280DE1A18, MEMORY[0x277D11FD8]);
  v19 = v18;
  v20 = sub_22877724C(&qword_280DE1AC8, &qword_280DE1AC0, &qword_280DE1A18, v17);
  sub_2287CAE10();

  v25 = v19;
  v26 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = sub_2287CAF40();
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v24);
  return v21;
}

uint64_t sub_228776CCC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  v1 = *(v0 + 88);

  v2 = *(v0 + 104);

  return swift_deallocClassInstance();
}

void *sub_228776D50()
{
  v1 = *(*v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_228776DE8(uint64_t a1)
{
  sub_228776F94();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v1 + 96);
  v9 = *(*v1 + 104);

  v11 = v10(a1);

  v18[0] = v11;
  v12 = MEMORY[0x277D12108];
  sub_228777144(0, &qword_280DE1AA0, &unk_280DE1A00, MEMORY[0x277D12108]);
  v14 = v13;
  v15 = sub_22877724C(&qword_280DE1AA8, &qword_280DE1AA0, &unk_280DE1A00, v12);
  sub_2287CAE20();

  v18[0] = v14;
  v18[1] = v15;
  swift_getOpaqueTypeConformance2();
  v16 = sub_2287CAF40();
  (*(v5 + 8))(v8, v4);
  return v16;
}

void sub_228776F94()
{
  if (!qword_280DE0028)
  {
    v0 = MEMORY[0x277D12108];
    sub_228777144(255, &qword_280DE1AA0, &unk_280DE1A00, MEMORY[0x277D12108]);
    sub_22877724C(&qword_280DE1AA8, &qword_280DE1AA0, &unk_280DE1A00, v0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280DE0028);
    }
  }
}

void sub_22877706C()
{
  if (!qword_280DE0040)
  {
    v0 = MEMORY[0x277D11FD8];
    sub_228777144(255, &qword_280DE1AC0, &qword_280DE1A18, MEMORY[0x277D11FD8]);
    sub_22877724C(&qword_280DE1AC8, &qword_280DE1AC0, &qword_280DE1A18, v0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280DE0040);
    }
  }
}

void sub_228777144(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2287771AC(255, a3, a4);
    v5 = sub_2287CACD0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2287771AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2287CB450();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_228777200()
{
  result = qword_280DE1988;
  if (!qword_280DE1988)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE1988);
  }

  return result;
}

uint64_t sub_22877724C(unint64_t *a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228777144(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2287772B8(uint64_t a1, uint64_t *a2)
{
  sub_2287010E4(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v3 + 16));
  sub_228706AD4(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t sub_228777364(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  sub_228706AD4(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t AppSessionAnalyticsManager.__allocating_init()()
{
  v0 = swift_allocObject();
  AppSessionAnalyticsManager.init()();
  return v0;
}

id AppSessionAnalyticsManager.init()()
{
  v1 = v0;
  if (qword_280DE2940 != -1)
  {
    swift_once();
  }

  v2 = qword_280DE2948;
  *(v1 + 40) = type metadata accessor for AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider();
  *(v1 + 48) = &protocol witness table for AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider;
  *(v1 + 16) = v2;
  v3 = sub_2287C9AC0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  v6 = sub_2287C9AB0();
  v7 = MEMORY[0x277D84F90];
  *(v1 + 56) = v6;
  *(v1 + 64) = v7;
  *(v1 + 72) = MEMORY[0x277D84FA0];
  *(v1 + 80) = HKImproveHealthAndActivityAnalyticsAllowed();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v9 = result;
    v10 = [result isDiagnosticSubmissionAllowed];

    *(v1 + 81) = v10;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22877754C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2287CAA50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 80) == 1)
  {
    v11 = v1[7];
    sub_2287C9A90();
    sub_2287796BC(a1, &v44);
    v49 = v44;
    v50 = v45;
    v51 = v46;
    v52 = v47;
    if (v48)
    {
      return sub_22877C8D0(&v44);
    }

    else
    {
      sub_2287CAA30();
      v42[2] = v46;
      v42[3] = v47;
      v43 = v48;
      v42[0] = v44;
      v42[1] = v45;
      sub_22877C9A4(v42, &v37);
      v12 = sub_2287CAA40();
      v13 = sub_2287CB610();
      sub_22877C8D0(&v44);
      v14 = os_log_type_enabled(v12, v13);
      v34 = v11;
      if (v14)
      {
        v15 = swift_slowAlloc();
        v32 = v13;
        v16 = v15;
        v33 = swift_slowAlloc();
        v36 = v33;
        *&v37 = v4;
        *v16 = 136446466;
        swift_getMetatypeMetadata();
        v17 = sub_2287CB250();
        v19 = sub_2287031D8(v17, v18, &v36);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        v35[4] = v49;
        v35[5] = v50;
        v35[6] = v51;
        v35[7] = v52;
        v39 = v46;
        v40 = v47;
        v41 = v48;
        v37 = v44;
        v38 = v45;
        sub_22877C9A4(&v37, v35);
        v20 = sub_2287CB250();
        v22 = sub_2287031D8(v20, v21, &v36);

        *(v16 + 14) = v22;
        _os_log_impl(&dword_2286FF000, v12, v32, "[%{public}s]: Updating current event with: %s", v16, 0x16u);
        v23 = v33;
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v23, -1, -1);
        MEMORY[0x22AABFD90](v16, -1, -1);
      }

      (*(v6 + 8))(v10, v5);
      swift_beginAccess();
      v24 = v2[8];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[8] = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_228723510(0, v24[2] + 1, 1, v24);
        v2[8] = v24;
      }

      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        v24 = sub_228723510((v26 > 1), v27 + 1, 1, v24);
      }

      *(&v38 + 1) = &type metadata for AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics;
      *&v39 = sub_22877D7A4();
      v28 = swift_allocObject();
      *&v37 = v28;
      v29 = v50;
      v28[1] = v49;
      v28[2] = v29;
      v30 = v52;
      v28[3] = v51;
      v28[4] = v30;
      v24[2] = v27 + 1;
      sub_228706AD4(&v37, &v24[5 * v27 + 4]);
      v2[8] = v24;
      swift_endAccess();
      return sub_2287C9AA0();
    }
  }

  return result;
}

void sub_228777918()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2287CAA50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 80) == 1)
  {
    v8 = v0[7];
    sub_2287C9A90();
    v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    sub_2287CAA30();
    v10 = v9;
    v11 = sub_2287CAA40();
    v12 = sub_2287CB610();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v28[1] = v8;
      v14 = v13;
      v28[0] = swift_slowAlloc();
      v32[0] = v28[0];
      *v14 = 136446466;
      *&v29 = v2;
      swift_getMetatypeMetadata();
      v15 = sub_2287CB250();
      v17 = sub_2287031D8(v15, v16, v32);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      *&v29 = v10;
      v18 = v10;
      v19 = sub_2287CB250();
      v21 = sub_2287031D8(v19, v20, v32);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_2286FF000, v11, v12, "[%{public}s]: Updating current event with: %s", v14, 0x16u);
      v22 = v28[0];
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v22, -1, -1);
      MEMORY[0x22AABFD90](v14, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    swift_beginAccess();
    v23 = v1[8];
    v24 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1[8] = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_228723510(0, v23[2] + 1, 1, v23);
      v1[8] = v23;
    }

    v27 = v23[2];
    v26 = v23[3];
    if (v27 >= v26 >> 1)
    {
      v23 = sub_228723510((v26 > 1), v27 + 1, 1, v23);
    }

    v30 = &type metadata for AppSessionAnalyticsEvent.DemographicAnalytics;
    v31 = sub_22877D7F8();
    *&v29 = v24;
    v23[2] = v27 + 1;
    sub_228706AD4(&v29, &v23[5 * v27 + 4]);
    v1[8] = v23;
    swift_endAccess();
    sub_2287C9AA0();
  }
}

void sub_228777C7C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2287CAA50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[7];
  sub_2287C9A90();
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_2287CAA30();
  v10 = v9;
  v11 = sub_2287CAA40();
  v12 = sub_2287CB610();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29[1] = v8;
    v14 = v13;
    v15 = swift_slowAlloc();
    v33[0] = v15;
    *v14 = 136446466;
    *&v30 = v2;
    swift_getMetatypeMetadata();
    v16 = sub_2287CB250();
    v18 = sub_2287031D8(v16, v17, v33);
    v29[0] = v3;
    v19 = v18;

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    *&v30 = v10;
    v20 = v10;
    v21 = sub_2287CB250();
    v23 = sub_2287031D8(v21, v22, v33);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_2286FF000, v11, v12, "[%{public}s]: Updating current event with: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v15, -1, -1);
    MEMORY[0x22AABFD90](v14, -1, -1);

    (*(v4 + 8))(v7, v29[0]);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  swift_beginAccess();
  v24 = v1[8];
  v25 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[8] = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_228723510(0, v24[2] + 1, 1, v24);
    v1[8] = v24;
  }

  v28 = v24[2];
  v27 = v24[3];
  if (v28 >= v27 >> 1)
  {
    v24 = sub_228723510((v27 > 1), v28 + 1, 1, v24);
  }

  v31 = &type metadata for AppSessionAnalyticsEvent.ImproveHealthAnalytics;
  v32 = sub_22877D84C();
  *&v30 = v25;
  v24[2] = v28 + 1;
  sub_228706AD4(&v30, &v24[5 * v28 + 4]);
  v1[8] = v24;
  swift_endAccess();
  sub_2287C9AA0();
}

uint64_t sub_228777FD4(uint64_t a1, uint64_t (**a2)(void, void), uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v70 = a2;
  v80 = *v5;
  v81 = a3;
  sub_22877F53C(0, &qword_280DE0680, sub_22877D8A0, sub_22877D9B8, MEMORY[0x277D10DC0]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v79 = &v59 - v12;
  sub_22877DA34();
  v78 = v13;
  v76 = *(v13 - 8);
  v14 = *(v76 + 64);
  MEMORY[0x28223BE20](v13);
  v73 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877DDD0(0, &qword_280DE1BE0, sub_22877DA34, sub_22877DB94);
  v77 = v16;
  v75 = *(v16 - 8);
  v17 = *(v75 + 64);
  MEMORY[0x28223BE20](v16);
  v74 = &v59 - v18;
  v19 = sub_2287CB6A0();
  v71 = *(v19 - 8);
  v72 = v19;
  v20 = *(v71 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877DBC8();
  v24 = v23;
  v69 = *(v23 - 8);
  v25 = *(v69 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877DDD0(0, &qword_280DE1BF0, sub_22877DBC8, sub_22877DE68);
  v29 = v28;
  v68 = *(v28 - 8);
  v30 = *(v68 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v59 - v31;
  sub_22877D8A0();
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33);
  if (*(v5 + 80) != 1)
  {
    return v81(v35);
  }

  v64 = v35;
  v38 = v70;
  v60 = a1;
  v70 = v37;
  v62 = &v59 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = SummaryTabFeedPopulationManager.collectHighlightsInteractionAnalytics(in:)(v38);
  v82 = v59;
  v61 = MEMORY[0x277CBCD88];
  sub_22877F360(0, &qword_280DE1B10, &type metadata for AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics, MEMORY[0x277CBCD88]);
  v63 = a4;
  v65 = v5;
  sub_22877DCA4(0, &qword_280DE1A78);
  v67 = v10;
  sub_22877DD04();
  v66 = v9;
  sub_22877DD80(&qword_280DE1A80, &qword_280DE1A78);
  sub_2287CAF90();
  sub_22870D3A8(0, &qword_280DE3350);
  sub_22877DE68();
  sub_2287CAF70();
  (*(v69 + 8))(v27, v24);
  sub_22877E0B0(&qword_280DE1BF8, &qword_280DE1BF0, sub_22877DBC8, sub_22877DE68);
  v39 = sub_2287CAF40();

  (*(v68 + 8))(v32, v29);
  v82 = v39;
  sub_2287CB690();
  v40 = sub_22877D1E4(v22, *(v60 + 104));
  (*(v71 + 8))(v22, v72);
  v83 = v40;
  v41 = v61;
  sub_22877F360(0, &qword_280DE1B00, &type metadata for AppSessionAnalyticsEvent.ModelAnalytics, v61);
  sub_22877DCA4(0, &qword_280DE1A68);
  sub_22877DB44(&qword_280DE1B08, &qword_280DE1B00, v41);
  sub_22877DD80(&qword_280DE1A70, &qword_280DE1A68);
  v42 = v73;
  sub_2287CAF90();
  sub_22877DB94();
  v43 = v74;
  v44 = v78;
  sub_2287CAF70();
  (*(v76 + 8))(v42, v44);
  sub_22877E0B0(&qword_280DE1BE8, &qword_280DE1BE0, sub_22877DA34, sub_22877DB94);
  v45 = v77;
  v46 = sub_2287CAF40();

  (*(v75 + 8))(v43, v45);
  v83 = v46;
  sub_22877D940();
  sub_22877D9EC(&qword_280DE1B48, sub_22877D940);
  v47 = v62;
  sub_2287CAB90();
  sub_22877D9B8();
  v48 = v79;
  v49 = v64;
  sub_2287CAEE0();
  v50 = swift_allocObject();
  v51 = v63;
  *(v50 + 16) = v81;
  *(v50 + 24) = v51;
  v52 = swift_allocObject();
  v53 = v65;
  swift_weakInit();
  v54 = swift_allocObject();
  v55 = v80;
  *(v54 + 16) = v52;
  *(v54 + 24) = v55;
  sub_22877E108();

  v56 = v66;
  sub_2287CAF80();

  (*(v67 + 8))(v48, v56);
  v57 = v53[7];
  sub_2287C9A90();
  swift_beginAccess();
  sub_2287CACE0();
  swift_endAccess();
  sub_2287C9AA0();

  return (v70)[1](v47, v49);
}

uint64_t sub_2287789EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2287CAA50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CAA30();
  sub_2287010E4(a1, v44);
  v10 = sub_2287CAA40();
  v11 = sub_2287CB610();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v41 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v43[0] = v14;
    *v13 = 136446466;
    v42[0] = a3;
    swift_getMetatypeMetadata();
    v15 = sub_2287CB250();
    v17 = sub_2287031D8(v15, v16, v43);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_2287010E4(v44, v42);
    sub_22870D3A8(0, &qword_280DE3350);
    v18 = sub_2287CB250();
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_0(v44);
    v21 = sub_2287031D8(v18, v20, v43);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_2286FF000, v10, v11, "[%{public}s]: Updating current event with: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v14, -1, -1);
    v22 = v13;
    a1 = v41;
    MEMORY[0x22AABFD90](v22, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v44);
  }

  (*(v6 + 8))(v9, v5);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = *(Strong + 56);

    sub_2287C9A90();
  }

  swift_beginAccess();
  v25 = swift_weakLoadStrong();
  if (v25)
  {
    v26 = v25;
    sub_2287010E4(a1, v44);
    swift_beginAccess();
    v27 = *(v26 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + 64) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_228723510(0, v27[2] + 1, 1, v27);
      *(v26 + 64) = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_228723510((v29 > 1), v30 + 1, 1, v27);
      *(v26 + 64) = v27;
    }

    v31 = v45;
    v32 = v46;
    v33 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    v34 = *(*(v31 - 8) + 64);
    MEMORY[0x28223BE20](v33);
    v36 = &v40 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v36);
    sub_22877DE9C(v30, v36, (v26 + 64), v31, v32);
    __swift_destroy_boxed_opaque_existential_0(v44);
    *(v26 + 64) = v27;
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v39 = *(result + 56);

    sub_2287C9AA0();
  }

  return result;
}

uint64_t sub_228778E4C()
{
  v1 = *(v0 + 56);
  sub_2287C9A90();
  swift_beginAccess();
  v2 = *(v0 + 64);

  v4 = sub_22877B134(v3);

  sub_2287C9AA0();
  return v4;
}

uint64_t sub_228778EC8(int a1)
{
  LODWORD(v2) = a1;
  v3 = *v1;
  v41 = sub_2287CAA50();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v41);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v38[-v9];
  v11 = v1[7];
  sub_2287C9A90();
  swift_beginAccess();
  v12 = v1[8];

  v14 = sub_22877B134(v13);

  if (*(v1 + 81) == 1)
  {
    v40 = v11;
    sub_2287CAA30();
    swift_bridgeObjectRetain_n();
    v15 = sub_2287CAA40();
    v16 = sub_2287CB610();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v42 = v18;
      *v17 = 136446722;
      v43 = v3;
      swift_getMetatypeMetadata();
      v19 = sub_2287CB250();
      v21 = sub_2287031D8(v19, v20, &v42);
      v39 = v2;
      v22 = v21;

      *(v17 + 4) = v22;
      *(v17 + 12) = 2050;
      v2 = *(v14 + 16);

      *(v17 + 14) = v2;

      *(v17 + 22) = 2080;
      sub_228703004(0, &qword_280DE39B8, 0x277D82BB8);
      v23 = sub_2287CB150();
      v25 = sub_2287031D8(v23, v24, &v42);
      LOBYTE(v2) = v39;

      *(v17 + 24) = v25;
      _os_log_impl(&dword_2286FF000, v15, v16, "[%{public}s]: Submitting analytics dictionary with %{public}ld keys: %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v18, -1, -1);
      MEMORY[0x22AABFD90](v17, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v4 + 8))(v10, v41);
    v35 = sub_2287CB210();
    sub_228703004(0, &qword_280DE39B8, 0x277D82BB8);
    v36 = sub_2287CB130();

    AnalyticsSendEvent();

    if (v2)
    {
LABEL_10:
      sub_2287793B4();
    }
  }

  else
  {

    sub_2287CAA30();
    v26 = sub_2287CAA40();
    v27 = sub_2287CB610();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v11;
      v30 = v2;
      v2 = v29;
      v42 = v29;
      *v28 = 136446210;
      v43 = v3;
      swift_getMetatypeMetadata();
      v31 = sub_2287CB250();
      v33 = sub_2287031D8(v31, v32, &v42);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_2286FF000, v26, v27, "[%{public}s]: D&U disabled, not submitting analytics", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      v34 = v2;
      LOBYTE(v2) = v30;
      MEMORY[0x22AABFD90](v34, -1, -1);
      MEMORY[0x22AABFD90](v28, -1, -1);
    }

    (*(v4 + 8))(v8, v41);
    if (v2)
    {
      goto LABEL_10;
    }
  }

  return sub_2287C9AA0();
}

uint64_t sub_228779370()
{
  v1 = *(v0 + 56);
  sub_2287C9A90();
  sub_2287793B4();
  return sub_2287C9AA0();
}

uint64_t sub_2287793B4()
{
  v1 = v0;
  v2 = *v0;
  sub_228705C84();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2287CAA50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CAA30();
  v12 = sub_2287CAA40();
  v13 = sub_2287CB610();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v29[0] = v16;
    *v15 = 136446210;
    v29[3] = v2;
    swift_getMetatypeMetadata();
    v17 = sub_2287CB250();
    v19 = sub_2287031D8(v17, v18, v29);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_2286FF000, v12, v13, "[%{public}s]: Resetting analytics event", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AABFD90](v16, -1, -1);
    v20 = v15;
    v6 = v28;
    MEMORY[0x22AABFD90](v20, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  swift_beginAccess();
  v21 = v1[8];
  v1[8] = MEMORY[0x277D84F90];

  v22 = sub_2287C97C0();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  swift_beginAccess();
  v23 = v1[5];
  v24 = v1[6];
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v23);
  (*(v24 + 16))(v6, v23, v24);
  swift_endAccess();
  swift_beginAccess();
  v25 = v1[9];
  v1[9] = MEMORY[0x277D84FA0];
}

uint64_t sub_2287796BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v4 = *v2;
  v5 = sub_2287CAA50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v10 = sub_2287CAA40();
  v11 = sub_2287CB610();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v6;
    v14 = v13;
    *&v35 = v13;
    *v12 = 136446210;
    *&v39 = v4;
    swift_getMetatypeMetadata();
    v15 = sub_2287CB250();
    v29 = v5;
    v17 = sub_2287031D8(v15, v16, &v35);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2286FF000, v10, v11, "[%{public}s]: Collecting highlights feed presentation analytics", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AABFD90](v14, -1, -1);
    MEMORY[0x22AABFD90](v12, -1, -1);

    (*(v30 + 8))(v9, v29);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v43 = 2;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v18 = swift_allocObject();
  *(v18 + 16) = 2;
  v20 = v31;
  v19 = v32;
  *(v18 + 24) = v31;
  *(v18 + 32) = v19;
  *(v18 + 40) = &v43;
  *(v18 + 48) = &v39;
  *(v18 + 56) = v4;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_22877E1A4;
  *(v21 + 24) = v18;
  *&v37 = sub_22877E1B8;
  *(&v37 + 1) = v21;
  *&v35 = MEMORY[0x277D85DD0];
  *(&v35 + 1) = 1107296256;
  *&v36 = sub_228742C10;
  *(&v36 + 1) = &block_descriptor_6;
  v22 = _Block_copy(&v35);
  v23 = v20;

  [v23 performBlockAndWait_];
  _Block_release(v22);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    v25 = v43;
    if (v43 != 2)
    {
      v27 = 1;
      v26 = v43;
      goto LABEL_9;
    }

    v22 = *(&v39 + 1);
    if (*(&v39 + 1))
    {
      v26 = v39;
      v44 = v40;
      v45 = v41;
      v46 = v42;
      v34 = 0;
      v35 = v39;
      v36 = v40;
      v37 = v41;
      v38 = v42;
      sub_22877C9A4(&v35, &v33);
      v27 = v34;
LABEL_9:
      *a2 = v26;
      *(a2 + 8) = v22;
      v28 = v45;
      *(a2 + 16) = v44;
      *(a2 + 32) = v28;
      *(a2 + 48) = v46;
      *(a2 + 64) = v27;
      v35 = v39;
      v36 = v40;
      v37 = v41;
      v38 = v42;
      sub_22877E1D8(v25);
      sub_22877E6EC(&v35, sub_22877E1F8);
      sub_22877E248(v43);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228779AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  v164 = a6;
  v166 = a5;
  v180 = a3;
  v171 = sub_2287CAA50();
  v170 = *(v171 - 8);
  v8 = *(v170 + 64);
  MEMORY[0x28223BE20](v171);
  v181 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877E684(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v185 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83D88];
  sub_22877F208(0, &qword_280DE3400, MEMORY[0x277D11F48], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v162 - v16;
  sub_22877E6B8(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v184 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877F208(0, &qword_280DE3398, MEMORY[0x277D12080], v13);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v183 = &v162 - v23;
  sub_228705C84();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v162 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_2287C97C0();
  v182 = *(v187 - 8);
  v28 = *(v182 + 64);
  v29 = MEMORY[0x28223BE20](v187);
  v168 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v167 = &v162 - v32;
  MEMORY[0x28223BE20](v31);
  v178 = &v162 - v33;
  v177 = sub_2287C9870();
  v176 = *(v177 - 8);
  v34 = *(v176 + 64);
  MEMORY[0x28223BE20](v177);
  v173 = &v162 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_2287C9610();
  v174 = *(v175 - 8);
  v36 = *(v174 + 64);
  MEMORY[0x28223BE20](v175);
  v172 = &v162 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA640();
  v38 = [objc_opt_self() primaryProfile];
  v39 = sub_2287CA630();

  v179 = v39;
  v40 = sub_2287CA300();
  if (!v40)
  {
    v163 = 0;
    v165 = 1;
    LODWORD(v167) = 1;
    v186 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v41 = v40;
  if (Feed.isTooOldForDisplay.getter())
  {

    v163 = 0;
    v186 = MEMORY[0x277D84F90];
    v165 = 1;
    LODWORD(v167) = 1;
    goto LABEL_17;
  }

  v169 = a4;
  v42 = sub_2287CA580();
  v43 = v42;
  if (v42 >> 62)
  {
    v44 = sub_2287CB920();
  }

  else
  {
    v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v162 = a2;
  if (!v44)
  {

    v52 = MEMORY[0x277D84F90];
LABEL_16:
    v186 = v52;
    v53 = v173;
    sub_2287C9850();
    sub_22877F208(0, &qword_280DE35B8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v54 = sub_2287C9860();
    v55 = *(v54 - 8);
    v56 = *(v55 + 72);
    v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_2287CCFE0;
    (*(v55 + 104))(v58 + v57, *MEMORY[0x277CC99A0], v54);
    sub_22877ECCC(v58);
    swift_setDeallocating();
    (*(v55 + 8))(v58 + v57, v54);
    swift_deallocClassInstance();
    v59 = [v41 dateUpdated];
    v60 = v178;
    sub_2287C97A0();

    v61 = v167;
    sub_2287C97B0();
    v62 = v172;
    sub_2287C9830();

    v63 = *(v182 + 8);
    v64 = v187;
    v63(v61, v187);
    v63(v60, v64);
    (*(v176 + 8))(v53, v177);
    v163 = sub_2287C95F0();
    LODWORD(v167) = v65;

    (*(v174 + 8))(v62, v175);
    v165 = 0;
    a4 = v169;
LABEL_17:
    v66 = v180;
    swift_beginAccess();
    sub_2287010E4(v66 + 16, &v188);
    v67 = *(&v189 + 1);
    v68 = v190;
    __swift_project_boxed_opaque_existential_1(&v188, *(&v189 + 1));
    (*(v68 + 8))(v67, v68);
    v69 = v182;
    v70 = v187;
    if ((*(v182 + 48))(v27, 1, v187) == 1)
    {
      sub_22877E6EC(v27, sub_228705C84);
      __swift_destroy_boxed_opaque_existential_0(&v188);
      v71 = 0;
      LODWORD(v180) = 1;
    }

    else
    {
      v72 = *(v69 + 32);
      v169 = a4;
      v73 = v168;
      v72(v168, v27, v70);
      __swift_destroy_boxed_opaque_existential_0(&v188);
      v74 = v173;
      sub_2287C9850();
      sub_22877F208(0, &qword_280DE35B8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
      v75 = v69;
      v76 = sub_2287C9860();
      v77 = *(v76 - 8);
      v78 = *(v77 + 72);
      v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_2287CCFE0;
      (*(v77 + 104))(v80 + v79, *MEMORY[0x277CC99A0], v76);
      sub_22877ECCC(v80);
      swift_setDeallocating();
      (*(v77 + 8))(v80 + v79, v76);
      swift_deallocClassInstance();
      v81 = v178;
      sub_2287C97B0();
      v82 = v172;
      sub_2287C9830();

      v83 = *(v75 + 8);
      v84 = v187;
      v83(v81, v187);
      (*(v176 + 8))(v74, v177);
      v71 = sub_2287C95F0();
      LODWORD(v180) = v85;
      (*(v174 + 8))(v82, v175);
      v83(v73, v84);
    }

    sub_2287CA800();
    v86 = MEMORY[0x22AABDDF0]();
    if (qword_280DE0D98 != -1)
    {
      swift_once();
    }

    v87 = _s14HealthPlatform8FeedItemC0aB4CoreE020predicateForEligibleC5Items3for14sourceProfilesSo11NSPredicateCAA0C0C4KindO_SayAA13SourceProfileOGtFZ_0(2, qword_280DE0DA0);
    [v86 setPredicate_];

    v38 = v86;
    v88 = 0;
    v89 = sub_2287CB7B0();
    v90 = v89;
    v181 = v38;
    if (v89 >> 62)
    {
      v91 = sub_2287CB920();
    }

    else
    {
      v91 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v178 = v71;
    if (v91)
    {
      *&v188 = MEMORY[0x277D84F90];
      sub_2287CBAC0();
      if ((v91 & 0x8000000000000000) == 0)
      {
        v92 = 0;
        v182 = v90 & 0xC000000000000001;
        while (1)
        {
          v97 = v182 ? MEMORY[0x22AABF120](v92, v90) : *(v90 + 8 * v92 + 32);
          v98 = v97;
          v99 = type metadata accessor for AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem(0);
          v100 = *(v99 + 48);
          v101 = *(v99 + 52);
          v38 = swift_allocObject();
          v102 = sub_2287CA750();
          sub_2287BCEB0(v102);
          v187 = v88;
          if (v88)
          {
            goto LABEL_83;
          }

          v104 = v103;
          v105 = v91;

          *(v38 + 16) = v104;
          v106 = sub_2287CA500();
          v107 = v184;
          sub_2287CA700();
          v108 = v107;
          v109 = *(v106 - 8);
          if ((*(v109 + 48))(v108, 1, v106) == 1)
          {
            sub_22877E6EC(v108, sub_22877E6B8);
            v110 = 1;
            v111 = v183;
          }

          else
          {
            v111 = v183;
            sub_2287CA4F0();
            (*(v109 + 8))(v108, v106);
            v110 = 0;
          }

          v112 = sub_2287CA2E0();
          (*(*(v112 - 8) + 56))(v111, v110, 1, v112);
          sub_22877E74C(v111, v38 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
          v113 = sub_2287CA140();
          v114 = v185;
          sub_2287CA700();
          v115 = v114;
          v116 = *(v113 - 8);
          if ((*(v116 + 48))(v115, 1, v113) == 1)
          {

            sub_22877E6EC(v115, sub_22877E684);
            v93 = 1;
          }

          else
          {
            sub_2287CA130();

            (*(v116 + 8))(v115, v113);
            v93 = 0;
          }

          v91 = v105;
          v94 = sub_2287C9F50();
          (*(*(v94 - 8) + 56))(v17, v93, 1, v94);
          ++v92;
          sub_22877E74C(v17, v38 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
          sub_2287CBA90();
          v95 = *(v188 + 16);
          sub_2287CBAD0();
          sub_2287CBAE0();
          sub_2287CBAA0();
          v96 = v105 == v92;
          v88 = v187;
          if (v96)
          {

            v117 = v188;
            goto LABEL_40;
          }
        }
      }

      __break(1u);
      goto LABEL_80;
    }

    v117 = MEMORY[0x277D84F90];
LABEL_40:
    v118 = 0x277CCA000uLL;
    v119 = &unk_278607000;
    if (v167)
    {
      v185 = 0;
      if ((v180 & 1) == 0)
      {
LABEL_42:
        sub_22877E7CC();
        v184 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v120 = v184;
        goto LABEL_45;
      }
    }

    else
    {
      sub_22877E7CC();
      v185 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v121 = v185;
      if ((v180 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v184 = 0;
LABEL_45:
    if (v117 >> 62)
    {
      v122 = sub_2287CB920();
    }

    else
    {
      v122 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v123 = sub_22877E7CC();
    v38 = sub_2287CA830();
    v183 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v187 = v123;
    if (v122)
    {
      *&v188 = MEMORY[0x277D84F90];
      sub_2287042D4(0, v122 & ~(v122 >> 63), 0);
      if (v122 < 0)
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v124 = 0;
      v125 = v188;
      do
      {
        if ((v117 & 0xC000000000000001) != 0)
        {
          v126 = MEMORY[0x22AABF120](v124, v117);
        }

        else
        {
          v126 = *(v117 + 8 * v124 + 32);
        }

        v127 = (*(*v126 + 120))();
        v129 = v128;

        *&v188 = v125;
        v131 = *(v125 + 16);
        v130 = *(v125 + 24);
        if (v131 >= v130 >> 1)
        {
          sub_2287042D4((v130 > 1), v131 + 1, 1);
          v125 = v188;
        }

        ++v124;
        *(v125 + 16) = v131 + 1;
        v132 = v125 + 16 * v131;
        *(v132 + 32) = v127;
        *(v132 + 40) = v129;
      }

      while (v122 != v124);

      v118 = 0x277CCA000;
      v119 = &unk_278607000;
    }

    else
    {
    }

    v133 = sub_2287CA870();

    if (v186 >> 62)
    {
      v134 = sub_2287CB920();
    }

    else
    {
      v134 = *((v186 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v134 >= 9)
    {
      v38 = 9;
    }

    else
    {
      v38 = v134;
    }

    v135 = [objc_allocWithZone(*(v118 + 2992)) v119[113]];
    v136 = v135;
    if (v134)
    {
      v181 = v135;
      v182 = v133;
      v137 = v118;
      *&v188 = MEMORY[0x277D84F90];
      sub_2287042D4(0, v134 & ~(v134 >> 63), 0);
      if (v134 < 0)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v138 = 0;
      v139 = v188;
      v140 = v186;
      v141 = v186 & 0xC000000000000001;
      do
      {
        if (v141)
        {
          MEMORY[0x22AABF120](v138);
        }

        else
        {
          v142 = *(v140 + 8 * v138 + 32);
        }

        v143 = sub_2287BF470();
        v145 = v144;

        *&v188 = v139;
        v147 = *(v139 + 16);
        v146 = *(v139 + 24);
        if (v147 >= v146 >> 1)
        {
          sub_2287042D4((v146 > 1), v147 + 1, 1);
          v139 = v188;
        }

        ++v138;
        *(v139 + 16) = v147 + 1;
        v148 = v139 + 16 * v147;
        *(v148 + 32) = v143;
        *(v148 + 40) = v145;
        v140 = v186;
      }

      while (v134 != v138);

      v118 = v137;
      v136 = v181;
      v133 = v182;
    }

    else
    {
    }

    v149 = sub_2287CA870();

    _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    v150 = sub_2287CB210();

    v151 = objc_allocWithZone(*(v118 + 2992));
    v152 = [v151 initWithBool_];

    v153 = v185;
    v154 = v184;

    v155 = v166;
    v156 = v166[1];
    v188 = *v166;
    v189 = v156;
    v157 = v166[3];
    v190 = v166[2];
    v191 = v157;
    v158 = v183;
    *v166 = v153;
    v155[1] = v158;
    v155[2] = v133;
    v155[3] = v136;
    v155[4] = v149;
    v155[5] = v150;
    v155[6] = v154;
    v155[7] = v152;
    return sub_22877E6EC(&v188, sub_22877E1F8);
  }

  *&v188 = MEMORY[0x277D84F90];
  sub_2287CBAC0();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v45 = 0;
    do
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x22AABF120](v45, v43);
      }

      else
      {
        v46 = *(v43 + 8 * v45 + 32);
      }

      v47 = v46;
      ++v45;
      v48 = type metadata accessor for AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem(0);
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem.init(feedItem:)(v47);
      sub_2287CBA90();
      v51 = *(v188 + 16);
      sub_2287CBAD0();
      sub_2287CBAE0();
      sub_2287CBAA0();
    }

    while (v44 != v45);

    v52 = v188;
    goto LABEL_16;
  }

LABEL_82:
  __break(1u);
LABEL_83:
  v160 = *(*v38 + 48);
  v161 = *(*v38 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_22877B134(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v86 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v86 - v13;
  sub_2287CAA30();

  v15 = sub_2287CAA40();
  v16 = sub_2287CB610();

  v17 = os_log_type_enabled(v15, v16);
  v18 = MEMORY[0x277D84F90];
  v93 = v4;
  v89 = v9;
  v90 = v12;
  if (v17)
  {
    LODWORD(v91) = v16;
    v92 = v15;
    v19 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v98 = v88;
    *v19 = 136446466;
    v95[0] = v3;
    swift_getMetatypeMetadata();
    v20 = sub_2287CB250();
    v22 = sub_2287031D8(v20, v21, &v98);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2082;
    v23 = *(a1 + 16);
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v86 = v5;
      v87 = v3;
      v94 = MEMORY[0x277D84F90];
      sub_2287134E0(0, v23, 0);
      v24 = v94;
      v25 = a1 + 32;
      do
      {
        sub_2287010E4(v25, v95);
        __swift_project_boxed_opaque_existential_1(v95, v96);
        DynamicType = swift_getDynamicType();
        v27 = v97;
        __swift_destroy_boxed_opaque_existential_0(v95);
        v94 = v24;
        v29 = *(v24 + 16);
        v28 = *(v24 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_2287134E0((v28 > 1), v29 + 1, 1);
          v24 = v94;
        }

        *(v24 + 16) = v29 + 1;
        v30 = v24 + 16 * v29;
        *(v30 + 32) = DynamicType;
        *(v30 + 40) = v27;
        v25 += 40;
        --v23;
      }

      while (v23);
      v5 = v86;
      v3 = v87;
      v4 = v93;
      v12 = v90;
    }

    v31 = sub_228714EA4();
    v32 = MEMORY[0x22AABEA80](v24, v31);
    v34 = v33;

    v35 = sub_2287031D8(v32, v34, &v98);

    *(v19 + 14) = v35;
    v36 = v92;
    _os_log_impl(&dword_2286FF000, v92, v91, "[%{public}s]: Creating submission dictionary from objects: %{public}s", v19, 0x16u);
    v37 = v88;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v37, -1, -1);
    MEMORY[0x22AABFD90](v19, -1, -1);

    v91 = *(v5 + 8);
    v91(v14, v4);
    v18 = MEMORY[0x277D84F90];
  }

  else
  {

    v91 = *(v5 + 8);
    v91(v14, v4);
  }

  v98 = v18;
  v38 = *(a1 + 16);
  if (v38)
  {
    v39 = a1 + 32;
    do
    {
      sub_2287010E4(v39, v95);
      __swift_project_boxed_opaque_existential_1(v95, v96);
      v40 = sub_2287CA8D0();
      __swift_destroy_boxed_opaque_existential_0(v95);
      sub_22870E310(v40);
      v39 += 40;
      --v38;
    }

    while (v38);
    v18 = v98;
  }

  isa = v18[2].isa;
  v42 = MEMORY[0x277D84F90];
  v92 = v18;
  if (isa)
  {
    v43 = v3;
    v95[0] = MEMORY[0x277D84F90];
    sub_2287042D4(0, isa, 0);
    v42 = v95[0];
    v44 = v18 + 5;
    do
    {
      v46 = v44[-1].isa;
      v45 = v44->isa;
      v95[0] = v42;
      v48 = *(v42 + 16);
      v47 = *(v42 + 24);

      if (v48 >= v47 >> 1)
      {
        sub_2287042D4((v47 > 1), v48 + 1, 1);
        v42 = v95[0];
      }

      *(v42 + 16) = v48 + 1;
      v49 = v42 + 16 * v48;
      *(v49 + 32) = v46;
      *(v49 + 40) = v45;
      v44 += 3;
      --isa;
    }

    while (isa);
    v3 = v43;
    v12 = v90;
  }

  v50 = sub_22877B9E0(v42);
  sub_2287CAA30();

  v51 = sub_2287CAA40();
  v52 = sub_2287CB610();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v98 = v54;
    *v53 = 136446466;
    v95[0] = v3;
    swift_getMetatypeMetadata();
    v55 = sub_2287CB250();
    v57 = v3;
    v58 = sub_2287031D8(v55, v56, &v98);

    *(v53 + 4) = v58;
    *(v53 + 12) = 2082;
    v59 = MEMORY[0x22AABEA80](v42, MEMORY[0x277D837D0]);
    v61 = v60;

    v62 = sub_2287031D8(v59, v61, &v98);
    v3 = v57;

    *(v53 + 14) = v62;
    _os_log_impl(&dword_2286FF000, v51, v52, "[%{public}s]: %{public}s are ready for submission", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v54, -1, -1);
    MEMORY[0x22AABFD90](v53, -1, -1);

    v63 = v90;
  }

  else
  {

    v63 = v12;
  }

  v64 = v93;
  v91(v63, v93);
  v65 = v89;
  v66 = v92;
  if (*(v50 + 2))
  {
    sub_2287CAA30();

    v67 = sub_2287CAA40();
    v68 = sub_2287CB600();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v98 = v70;
      *v69 = 136446722;
      v95[0] = v3;
      swift_getMetatypeMetadata();
      v71 = sub_2287CB250();
      v73 = sub_2287031D8(v71, v72, &v98);

      *(v69 + 4) = v73;
      *(v69 + 12) = 2082;
      v74 = MEMORY[0x22AABEA80](v50, MEMORY[0x277D837D0]);
      v76 = sub_2287031D8(v74, v75, &v98);

      *(v69 + 14) = v76;
      *(v69 + 22) = 2080;
      sub_22872C748();
      v78 = MEMORY[0x22AABEA80](v92, v77);
      v80 = sub_2287031D8(v78, v79, &v98);

      *(v69 + 24) = v80;
      _os_log_impl(&dword_2286FF000, v67, v68, "[%{public}s]: Found duplicate keys: %{public}s. Objects: %s", v69, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v70, -1, -1);
      v66 = v92;
      MEMORY[0x22AABFD90](v69, -1, -1);

      v81 = v65;
      v82 = v93;
    }

    else
    {

      v81 = v65;
      v82 = v64;
    }

    v91(v81, v82);
  }

  v83 = sub_228784B1C(v66);

  if (*(v83 + 16))
  {
    sub_22877F07C();
    v84 = sub_2287CBBF0();
  }

  else
  {
    v84 = MEMORY[0x277D84F98];
  }

  v95[0] = v84;

  sub_22877E994(v83, 1, v95, v50, v3);

  return v95[0];
}

char *sub_22877B9E0(uint64_t a1)
{
  v21 = MEMORY[0x277D84FA0];
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v5 = (v3 + 16 * v2);
      v6 = *v5;
      v7 = v5[1];
      v8 = v21;
      if (*(v21 + 16))
      {
        v9 = *(v21 + 40);
        sub_2287CBD80();

        sub_2287CB290();
        v10 = sub_2287CBDB0();
        v11 = -1 << *(v8 + 32);
        v12 = v10 & ~v11;
        if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while (1)
          {
            v14 = (*(v8 + 48) + 16 * v12);
            v15 = *v14 == v6 && v14[1] == v7;
            if (v15 || (sub_2287CBD00() & 1) != 0)
            {
              break;
            }

            v12 = (v12 + 1) & v13;
            if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_228722DF0(0, *(v4 + 2) + 1, 1, v4);
          }

          v17 = *(v4 + 2);
          v16 = *(v4 + 3);
          if (v17 >= v16 >> 1)
          {
            v4 = sub_228722DF0((v16 > 1), v17 + 1, 1, v4);
          }

          *(v4 + 2) = v17 + 1;
          v18 = &v4[16 * v17];
          *(v18 + 4) = v6;
          *(v18 + 5) = v7;
          goto LABEL_5;
        }
      }

      else
      {
      }

LABEL_4:
      sub_2287240C8(&v20, v6, v7);

LABEL_5:
      if (++v2 == v1)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_23:

  return v4;
}

id sub_22877BBBC@<X0>(void **a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = sub_2287CAA50();
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *a2;
  sub_2287CAA30();
  v17 = v15;
  v18 = v16;

  v19 = sub_2287CAA40();
  v20 = sub_2287CB600();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v48 = a5;
    v22 = v21;
    v47 = swift_slowAlloc();
    v52[0] = v47;
    *v22 = 136446978;
    v52[2] = a4;
    swift_getMetatypeMetadata();
    v23 = sub_2287CB250();
    v25 = sub_2287031D8(v23, v24, v52);
    v46 = v20;
    v26 = v25;

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    v27 = v17;
    v28 = [v27 description];
    v29 = sub_2287CB220();
    v49 = v5;
    v31 = v30;

    v32 = sub_2287031D8(v29, v31, v52);

    *(v22 + 14) = v32;
    *(v22 + 22) = 2082;
    v33 = v18;
    v34 = [v33 description];
    v35 = sub_2287CB220();
    v37 = v36;

    v38 = sub_2287031D8(v35, v37, v52);

    *(v22 + 24) = v38;
    *(v22 + 32) = 2082;
    v39 = MEMORY[0x22AABEA80](a3, MEMORY[0x277D837D0]);
    v41 = sub_2287031D8(v39, v40, v52);

    *(v22 + 34) = v41;
    _os_log_impl(&dword_2286FF000, v19, v46, "[%{public}s]: duplicate objects in submission dictionary: %{public}s and %{public}s. Duplicate keys: %{public}s", v22, 0x2Au);
    v42 = v47;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v42, -1, -1);
    v43 = v22;
    a5 = v48;
    MEMORY[0x22AABFD90](v43, -1, -1);
  }

  (*(v50 + 8))(v14, v51);
  *a5 = v18;
  return v18;
}

uint64_t *AppSessionAnalyticsManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  return v0;
}

uint64_t AppSessionAnalyticsManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_22877BF5C(uint64_t *a1)
{
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v11 - v6;
  v8 = *a1;
  v9 = OBJC_IVAR____TtCC18HealthPlatformCore26AppSessionAnalyticsManager49DefaultsPredictiveGenerationAnalyticsDateProvider__dateLastPredictiveGenerationRanForAnalytics;
  swift_beginAccess();
  (*(v4 + 16))(v7, v8 + v9, v3);
  sub_2287C9B80();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22877C0A4(uint64_t a1, uint64_t *a2)
{
  sub_228705C84();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_22877E268(a1, &v13 - v9);
  v11 = *a2;
  sub_22877E268(v10, v8);
  swift_beginAccess();
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  sub_2287C9B90();
  swift_endAccess();
  return sub_22877E6EC(v10, sub_228705C84);
}

uint64_t sub_22877C1E0()
{
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtCC18HealthPlatformCore26AppSessionAnalyticsManager49DefaultsPredictiveGenerationAnalyticsDateProvider__dateLastPredictiveGenerationRanForAnalytics;
  swift_beginAccess();
  (*(v3 + 16))(v6, v0 + v7, v2);
  sub_2287C9B80();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22877C320(uint64_t a1)
{
  sub_228705C84();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22877E268(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  sub_2287C9B90();
  swift_endAccess();
  return sub_22877E6EC(a1, sub_228705C84);
}

uint64_t (*sub_22877C428(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  *(v3 + 56) = sub_2287C9B70();
  return sub_22877C4F8;
}

uint64_t AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider.__allocating_init()()
{
  sub_228705C84();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  v6 = *(v0 + 52);
  v7 = swift_allocObject();
  sub_228703004(0, &qword_280DE3890, 0x277CBEBD0);
  sub_2287CB640();
  v8 = sub_2287C97C0();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_2287C9BA0();
  return v7;
}

uint64_t AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider.init()()
{
  sub_228705C84();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228703004(0, &qword_280DE3890, 0x277CBEBD0);
  sub_2287CB640();
  v5 = sub_2287C97C0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_2287C9BA0();
  return v0;
}

uint64_t sub_22877C74C()
{
  sub_228705C84();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  sub_228703004(0, &qword_280DE3890, 0x277CBEBD0);
  sub_2287CB640();
  v8 = sub_2287C97C0();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  result = sub_2287C9BA0();
  qword_280DE2948 = v7;
  return result;
}

uint64_t type metadata accessor for AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider()
{
  result = qword_280DE2930;
  if (!qword_280DE2930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22877C8D0(uint64_t a1)
{
  sub_22877F360(0, &qword_27D850E18, &type metadata for AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics, MEMORY[0x277D84C48]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22877C950()
{
  result = qword_280DE2A88;
  if (!qword_280DE2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2A88);
  }

  return result;
}

uint64_t static AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider.shared.getter()
{
  if (qword_280DE2940 != -1)
  {
    swift_once();
  }
}

uint64_t AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider.deinit()
{
  v1 = OBJC_IVAR____TtCC18HealthPlatformCore26AppSessionAnalyticsManager49DefaultsPredictiveGenerationAnalyticsDateProvider__dateLastPredictiveGenerationRanForAnalytics;
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC18HealthPlatformCore26AppSessionAnalyticsManager49DefaultsPredictiveGenerationAnalyticsDateProvider__dateLastPredictiveGenerationRanForAnalytics;
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22877CBB8()
{
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v10 - v5;
  v7 = *v0;
  v8 = OBJC_IVAR____TtCC18HealthPlatformCore26AppSessionAnalyticsManager49DefaultsPredictiveGenerationAnalyticsDateProvider__dateLastPredictiveGenerationRanForAnalytics;
  swift_beginAccess();
  (*(v3 + 16))(v6, v7 + v8, v2);
  sub_2287C9B80();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22877CCFC(uint64_t a1)
{
  sub_228705C84();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_22877E268(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  sub_2287C9B90();
  swift_endAccess();
  return sub_22877E6EC(a1, sub_228705C84);
}

uint64_t (*sub_22877CE08(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  swift_beginAccess();
  sub_22877F208(0, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  *(v4 + 56) = sub_2287C9B70();
  return sub_22877F5F0;
}

void sub_22877CEDC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  swift_endAccess();

  free(v1);
}

uint64_t sub_22877CF30@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2287CAA50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CAA30();
  sub_22877E1E8(a1);
  v13 = sub_2287CAA40();
  v14 = sub_2287CB5F0();
  sub_22877E258(a1);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v35 = v17;
    *v16 = 136446722;
    v34 = type metadata accessor for AppSessionAnalyticsManager();
    sub_22877F148();
    v18 = sub_2287CB250();
    v33 = a4;
    v20 = sub_2287031D8(v18, v19, &v35);
    v32 = v8;
    v21 = a2;
    v22 = v20;

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v34 = v21;
    v31(0);
    v23 = sub_2287CB250();
    v25 = sub_2287031D8(v23, v24, &v35);

    *(v16 + 14) = v25;
    *(v16 + 22) = 2080;
    v34 = a1;
    sub_22877E1E8(a1);
    v26 = sub_2287CB250();
    v28 = sub_2287031D8(v26, v27, &v35);

    *(v16 + 24) = v28;
    _os_log_impl(&dword_2286FF000, v13, v14, "[%{public}s]: Error returned when gathering analytics of kind %{public}s: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v17, -1, -1);
    MEMORY[0x22AABFD90](v16, -1, -1);

    (*(v9 + 8))(v12, v32);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  return sub_2287CADC0();
}

uint64_t sub_22877D1E4(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v4 = *v2;
  sub_22877F1D4(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877F26C();
  v46 = v8;
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877F3CC();
  v47 = v11;
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v43 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2287CAA50();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[1] = a2;
  sub_2287CAA30();
  v19 = sub_2287CAA40();
  v20 = sub_2287CB610();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v49[0] = v22;
    *v21 = 136446210;
    v23 = sub_22876C3BC();
    v25 = sub_2287031D8(v23, v24, v49);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2286FF000, v19, v20, "[%{public}s]: Collecting RelevanceEngine metrics", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AABFD90](v22, -1, -1);
    MEMORY[0x22AABFD90](v21, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  swift_allocObject();
  swift_weakInit();
  v26 = MEMORY[0x277CBCEA8];
  sub_22877F360(0, &qword_280DE1A48, &type metadata for AppSessionAnalyticsEvent.ModelAnalytics, MEMORY[0x277CBCEA8]);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v40 = sub_2287CADF0();
  v49[0] = v40;
  v30 = sub_2287CB680();
  v31 = *(*(v30 - 8) + 56);
  v32 = v41;
  v31(v41, 1, 1, v30);
  sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
  sub_22877DB44(&qword_280DE1A50, &qword_280DE1A48, v26);
  sub_22871EC78();
  v33 = v42;
  sub_2287CAFF0();
  sub_22877E6EC(v32, sub_22877F1D4);

  v31(v32, 1, 1, v30);
  sub_22877D9EC(&qword_280DE02B8, sub_22877F26C);
  v34 = v43;
  v35 = v46;
  sub_2287CB000();
  sub_22877E6EC(v32, sub_22877F1D4);
  (*(v44 + 8))(v33, v35);
  sub_22877D9EC(&qword_280DE03D8, sub_22877F3CC);
  v36 = v47;
  v37 = sub_2287CAF40();
  (*(v45 + 8))(v34, v36);
  return v37;
}

unint64_t sub_22877D7A4()
{
  result = qword_280DE2AA0;
  if (!qword_280DE2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2AA0);
  }

  return result;
}

unint64_t sub_22877D7F8()
{
  result = qword_280DE2D88;
  if (!qword_280DE2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2D88);
  }

  return result;
}

unint64_t sub_22877D84C()
{
  result = qword_280DE1028;
  if (!qword_280DE1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1028);
  }

  return result;
}

void sub_22877D8A0()
{
  if (!qword_280DE1BA0)
  {
    sub_22877D940();
    sub_22877D9EC(&qword_280DE1B48, sub_22877D940);
    v0 = sub_2287CAB80();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1BA0);
    }
  }
}

void sub_22877D940()
{
  if (!qword_280DE1B40)
  {
    sub_22870D3A8(255, &qword_280DE3350);
    v0 = sub_2287CACD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1B40);
    }
  }
}

uint64_t sub_22877D9EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22877DA34()
{
  if (!qword_280DE1BC0)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_22877F360(255, &qword_280DE1B00, &type metadata for AppSessionAnalyticsEvent.ModelAnalytics, MEMORY[0x277CBCD88]);
    sub_22877DCA4(255, &qword_280DE1A68);
    sub_22877DB44(&qword_280DE1B08, &qword_280DE1B00, v0);
    sub_22877DD80(&qword_280DE1A70, &qword_280DE1A68);
    v1 = sub_2287CAB60();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1BC0);
    }
  }
}

uint64_t sub_22877DB44(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_22877F360(255, a2, &type metadata for AppSessionAnalyticsEvent.ModelAnalytics, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22877DBC8()
{
  if (!qword_280DE1BD0)
  {
    sub_22877F360(255, &qword_280DE1B10, &type metadata for AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics, MEMORY[0x277CBCD88]);
    sub_22877DCA4(255, &qword_280DE1A78);
    sub_22877DD04();
    sub_22877DD80(&qword_280DE1A80, &qword_280DE1A78);
    v0 = sub_2287CAB60();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1BD0);
    }
  }
}

void sub_22877DCA4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2287CADD0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_22877DD04()
{
  result = qword_280DE1B18;
  if (!qword_280DE1B18)
  {
    sub_22877F360(255, &qword_280DE1B10, &type metadata for AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1B18);
  }

  return result;
}

uint64_t sub_22877DD80(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22877DCA4(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22877DDD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_22870D3A8(255, &qword_280DE3350);
    a4();
    v6 = sub_2287CAB50();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22877DE9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_228706AD4(&v12, v10 + 40 * a1 + 32);
}

id sub_22877DF34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v13 = *(a1 + 24);
  v6 = *(a1 + 32);
  a2[3] = &type metadata for AppSessionAnalyticsEvent.ModelAnalytics;
  a2[4] = sub_22877F0F4();
  v7 = swift_allocObject();
  *a2 = v7;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v13;
  v7[6] = v6;
  v8 = v6;
  v9 = v3;
  v10 = v4;
  v11 = v5;

  return v13;
}

id sub_22877E014@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v6 = *(a1 + 8);
  a2[3] = &type metadata for AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics;
  a2[4] = sub_22877F4A0();
  *a2 = v3;
  a2[1] = v6;
  v4 = v3;

  return v6;
}

uint64_t sub_22877E0B0(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_22877DDD0(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22877E108()
{
  result = qword_27D850E20;
  if (!qword_27D850E20)
  {
    sub_22877F53C(255, &qword_280DE0680, sub_22877D8A0, sub_22877D9B8, MEMORY[0x277D10DC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850E20);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_22877E1D8(id result)
{
  if (result != 2)
  {
    return sub_22877E1E8(result);
  }

  return result;
}

id sub_22877E1E8(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_22877E1F8()
{
  if (!qword_27D850E28)
  {
    v0 = sub_2287CB820();
    if (!v1)
    {
      atomic_store(v0, &qword_27D850E28);
    }
  }
}

void sub_22877E248(id a1)
{
  if (a1 != 2)
  {
    sub_22877E258(a1);
  }
}

void sub_22877E258(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_22877E268(uint64_t a1, uint64_t a2)
{
  sub_228705C84();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22877E52C()
{
  sub_22877F208(319, &qword_280DE1208, sub_228705C84, MEMORY[0x277D11E70]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22877E6EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22877E74C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22877F208(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_22877E7CC()
{
  result = qword_280DE2AA8[0];
  if (!qword_280DE2AA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DE2AA8);
  }

  return result;
}

uint64_t sub_22877E820(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22877F53C(0, &qword_280DDFE78, type metadata accessor for HKProfileType, sub_22877F5BC, MEMORY[0x277D84098]);
    v3 = sub_2287CB9F0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      sub_2287CBD80();
      MEMORY[0x22AABF460](v10);
      result = sub_2287CBDB0();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_22877E994(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = *(a1 + 16);
  if (!v36)
  {
LABEL_16:

    return;
  }

  v7 = 0;
  v8 = (a1 + 48);
  while (1)
  {
    if (v7 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:

      sub_2287CBD30();
      __break(1u);
      goto LABEL_24;
    }

    v9 = *(v8 - 1);
    v11 = *v8;
    v41 = *(v8 - 2);
    v10 = v41;
    v42 = v9;
    v43 = v11;
    v12 = *a3;

    v13 = v11;
    v14 = sub_22870304C(v10, v9);
    v16 = v12[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_21;
    }

    v20 = v15;
    if (v12[3] >= v19)
    {
      break;
    }

    sub_2287BAECC(v19, a2 & 1);
    v21 = *a3;
    v14 = sub_22870304C(v10, v9);
    if ((v20 & 1) != (v22 & 1))
    {
      goto LABEL_23;
    }

LABEL_10:
    if (v20)
    {
      goto LABEL_11;
    }

LABEL_14:
    v29 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    v30 = (v29[6] + 16 * v14);
    *v30 = v10;
    v30[1] = v9;
    *(v29[7] + 8 * v14) = v13;
    v31 = v29[2];
    v18 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v18)
    {
      goto LABEL_22;
    }

    v29[2] = v32;
LABEL_3:
    ++v7;
    v8 += 3;
    a2 = 1;
    if (v36 == v7)
    {
      goto LABEL_16;
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v28 = v14;
  sub_2287BBD5C();
  v14 = v28;
  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v23 = *a3;
  v24 = v14;
  v40 = *(*(*a3 + 56) + 8 * v14);
  v25 = v40;
  sub_22877BBBC(&v40, &v43, a4, a5, v39);
  if (!v37)
  {

    v26 = v23[7];
    v27 = *(v26 + 8 * v24);
    *(v26 + 8 * v24) = v39[0];

    goto LABEL_3;
  }

  v40 = v37;
  v33 = v37;
  sub_22870D3A8(0, &qword_280DE35A0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_24:
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_2287CBA20();
  MEMORY[0x22AABE980](0xD00000000000001BLL, 0x80000002287D1F20);
  sub_2287CBB30();
  MEMORY[0x22AABE980](39, 0xE100000000000000);

  sub_2287CBB90();
  __break(1u);
}

uint64_t sub_22877ECCC(uint64_t a1)
{
  v2 = sub_2287C9860();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v38 = &v31 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_22877F53C(0, &unk_280DE35D0, MEMORY[0x277CC99D0], sub_22877EFF8, MEMORY[0x277D84098]);
    v10 = sub_2287CB9F0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v36 = v13;
    v37 = v10 + 56;
    v34 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    v32 = v9;
    v33 = (v12 + 16);
    while (1)
    {
      v35 = v11;
      v36(v38, v34 + v14 * v11, v2);
      v16 = *(v10 + 40);
      sub_22877EFF8();
      v17 = sub_2287CB1B0();
      v18 = ~(-1 << *(v10 + 32));
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = *(v37 + 8 * v20);
      v22 = 1 << (v17 & v18);
      if ((v22 & v21) != 0)
      {
        do
        {
          v23 = v12;
          v36(v7, *(v10 + 48) + v19 * v14, v2);
          sub_22877D9EC(&qword_280DE17D0, MEMORY[0x277CC99D0]);
          v24 = sub_2287CB200();
          v25 = *v15;
          (*v15)(v7, v2);
          if (v24)
          {
            v25(v38, v2);
            v12 = v23;
            v9 = v32;
            goto LABEL_4;
          }

          v19 = (v19 + 1) & v18;
          v20 = v19 >> 6;
          v21 = *(v37 + 8 * (v19 >> 6));
          v22 = 1 << v19;
          v12 = v23;
        }

        while (((1 << v19) & v21) != 0);
        v9 = v32;
      }

      v26 = v38;
      *(v37 + 8 * v20) = v22 | v21;
      result = (*v33)(*(v10 + 48) + v19 * v14, v26, v2);
      v28 = *(v10 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      *(v10 + 16) = v30;
LABEL_4:
      v11 = v35 + 1;
      if (v35 + 1 == v9)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}