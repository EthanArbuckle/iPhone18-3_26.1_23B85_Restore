uint64_t SCPreferencesRef.withLock<A>(lockRetryLimit:_:body:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 128) = v8;
  *(v9 + 120) = v29;
  *(v9 + 112) = a8;
  *(v9 + 104) = a7;
  *(v9 + 33) = a3;
  *(v9 + 96) = a2;
  *(v9 + 88) = a1;
  *(v9 + 136) = swift_getObjectType();
  *(v9 + 72) = v9;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 80) = 0;
  v10 = sub_25B946E58();
  *(v9 + 144) = v10;
  v18 = *(v10 - 8);
  *(v9 + 152) = v18;
  v11 = *(v18 + 64) + 15;
  *(v9 + 160) = swift_task_alloc();
  v12 = sub_25B946E88();
  *(v9 + 168) = v12;
  v19 = *(v12 - 8);
  *(v9 + 176) = v19;
  v13 = *(v19 + 64) + 15;
  *(v9 + 184) = swift_task_alloc();
  v14 = sub_25B946E68();
  *(v9 + 192) = v14;
  v20 = *(v14 - 8);
  *(v9 + 200) = v20;
  v15 = *(v20 + 64) + 15;
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 56) = a2;
  *(v9 + 64) = a3 & 1;
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  *(v9 + 32) = a6;
  *(v9 + 40) = a7;
  *(v9 + 48) = a8;
  *(v9 + 80) = v8;
  v16 = *(v9 + 72);

  return MEMORY[0x2822009F8](sub_25B92DF0C, 0);
}

uint64_t sub_25B92DF0C()
{
  v9 = *(v0 + 208);
  v7 = *(v0 + 200);
  v8 = *(v0 + 192);
  v16 = *(v0 + 184);
  v17 = *(v0 + 160);
  v15 = *(v0 + 136);
  v10 = *(v0 + 128);
  v18 = *(v0 + 120);
  v14 = *(v0 + 112);
  v13 = *(v0 + 104);
  v12 = *(v0 + 33);
  v11 = *(v0 + 96);
  *(v0 + 72) = v0;
  sub_25B8A4858();
  sub_25B92E4CC(v9);
  *(v0 + 216) = sub_25B9474A8();
  (*(v7 + 8))(v9, v8);
  MEMORY[0x277D82BE0](v10);

  v20 = swift_allocObject();
  *(v0 + 224) = v20;
  *(v20 + 16) = v18;
  *(v20 + 24) = v10;
  *(v20 + 32) = v11;
  *(v20 + 40) = v12 & 1;
  *(v20 + 48) = v13;
  *(v20 + 56) = v14;
  *(v20 + 64) = v15;
  sub_25B929F3C();
  sub_25B929F60();
  v1 = swift_task_alloc();
  v19[29] = v1;
  *v1 = v19[9];
  v1[1] = sub_25B92E13C;
  v2 = v19[23];
  v3 = v19[20];
  v4 = v19[15];
  v5 = v19[11];

  return sub_25B9063D4(v5, 0, v2, v3, sub_25B938464, v20, v4);
}

uint64_t sub_25B92E13C()
{
  v14 = *v1;
  v2 = *(*v1 + 232);
  v14[9] = *v1;
  v15 = v14 + 9;
  v14[30] = v0;

  if (v0)
  {
    v6 = *v15;

    return MEMORY[0x2822009F8](sub_25B92E388, 0);
  }

  else
  {
    v9 = v14[28];
    v10 = v14[27];
    v11 = v14[26];
    v12 = v14[23];
    v7 = v14[22];
    v8 = v14[21];
    v13 = v14[20];
    v3 = v14[18];
    (*(v14[19] + 8))();
    (*(v7 + 8))(v12, v8);

    v4 = *(*v15 + 8);

    return v4();
  }
}

uint64_t sub_25B92E388()
{
  v10 = v0[28];
  v11 = v0[27];
  v12 = v0[26];
  v13 = v0[23];
  v8 = v0[22];
  v9 = v0[21];
  v14 = v0[20];
  v1 = v0[19];
  v2 = v0[18];
  v0[9] = v0;
  (*(v1 + 8))();
  (*(v8 + 8))(v13, v9);

  MEMORY[0x277D82BD8](v11);

  v3 = v0;
  v4 = *(v0[9] + 8);
  v5 = v0[9];
  v6 = v3[30];

  return v4();
}

uint64_t sub_25B92E4CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D851C8];
  v1 = sub_25B946E68();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

void sub_25B92E538(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8)
{
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v93 = a2;
  v92 = a1;
  v85 = a7;
  v90 = 0;
  var20[0] = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v102 = 0;
  v86 = a3;
  var20[1] = a6;
  v94 = sub_25B946C48();
  v95 = *(v94 - 8);
  v96 = v95;
  v97 = *(v95 + 64);
  v98 = v26 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  var20[0] = MEMORY[0x28223BE20](v92);
  v118 = v8;
  v119 = v9 & 1;
  v116 = v10;
  v117 = v11;
  v115 = v12;
  v99 = v12;
  v100 = v12;
  for (i = v91; ; i = v30)
  {
    v13 = i;
    v81 = v100;
    v82 = v99;
    sub_25B92CD04();
    v83 = v13;
    v84 = v13;
    if (!v13)
    {

      v88(v92);
      v79 = 0;
      v80 = 0;
      v78 = 0;

      sub_25B92EEC8();
      return;
    }

    v72 = v84;
    v26[2] = 0;
    v35 = 0;
    v24 = v84;
    v114 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB688, &qword_25B94C730);
    v25 = swift_dynamicCast();
    v27 = v72;
    if ((v25 & 1) == 0)
    {
      v28 = v27;

      v64 = v28;
      return;
    }

    v73 = v110;
    v74 = v111;
    v75 = v112;
    v76 = v113;
    v77 = v72;
    if (v113 != 3005)
    {
      v29 = v77;

      v64 = v29;
      return;
    }

    v107 = v73;
    v108 = v74;
    LOBYTE(v109) = v75;
    HIDWORD(v109) = 3005;
    if (v86)
    {
      v70 = v82;
    }

    else
    {
      v71 = v93;
      v102 = v71;
      v65 = v73;
      v66 = v74;
      v67 = v75;
      v68 = v76;
      v69 = v72;
      if (v81 >= v71)
      {
        v62 = v69;
        v60 = v68;
        v59 = v67;
        v58 = v66;
        v57 = v65;
        sub_25B9115BC();
        v61 = 0;
        v14 = swift_allocError();
        v15 = v58;
        v16 = v59;
        v17 = v60;
        v63 = v14;
        *v18 = v57;
        *(v18 + 8) = v15;
        *(v18 + 16) = v16;
        *(v18 + 20) = v17;
        swift_willThrow();

        v64 = v63;
        return;
      }

      v70 = v81;
    }

    v19 = v98;
    v51 = v70;
    v20 = sub_25B92A010();
    (*(v96 + 16))(v19, v20, v94);
    v55 = sub_25B946C18();
    v52 = v55;
    v54 = sub_25B947458();
    v53 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v56 = sub_25B947838();
    if (os_log_type_enabled(v55, v54))
    {
      v47 = v35;
      v40 = sub_25B9474D8();
      v36 = v40;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v38 = 0;
      v41 = sub_25B8895FC(0);
      v39 = v41;
      v42 = sub_25B8895FC(v38);
      v106 = v40;
      v105 = v41;
      v104 = v42;
      v43 = 0;
      v44 = &v106;
      sub_25B889650(0, &v106);
      sub_25B889650(v43, v44);
      v103 = v56;
      v48 = &a8;
      MEMORY[0x28223BE20](&a8);
      v45 = var20;
      var20[2] = v21;
      var20[3] = &v105;
      var20[4] = &v104;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      v22 = v47;
      sub_25B947158();
      v49 = v22;
      v50 = v48;
      if (v22)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_25B859000, v52, v53, "Synchronizing and trying to lock again", v36, 2u);
        v33 = 0;
        sub_25B8896B0(v39);
        sub_25B8896B0(v42);
        sub_25B9474B8();

        v34 = v49;
      }
    }

    else
    {

      v34 = v35;
    }

    v31 = v34;

    (*(v96 + 8))(v98, v94);
    SCPreferencesRef.synchronize()();
    v23 = __OFADD__(v51, 1);
    v32 = v51 + 1;
    if (v23)
    {
      break;
    }

    v30 = v31;
    v115 = v32;

    v99 = v32;
    v100 = v32;
  }

  __break(1u);
}

uint64_t sub_25B92EF2C@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtCE11NetworkInfoaSo16SCPreferencesRef4Info_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB778, &qword_25B94C8B0);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_25B92EFA4(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_25B92EFF0(a1);
}

uint64_t sub_25B92EFF0(uint64_t a1)
{
  v10 = a1;
  v13 = 0;
  v12 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB778, &qword_25B94C8B0);
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v6 = &v4 - v5;
  v13 = v2;
  v12 = v1;
  (*(v7 + 16))();
  (*(v7 + 32))(v1 + OBJC_IVAR____TtCE11NetworkInfoaSo16SCPreferencesRef4Info_continuation, v6, v9);
  (*(v7 + 8))(v10, v9);
  return v11;
}

uint64_t sub_25B92F130()
{
  v3 = OBJC_IVAR____TtCE11NetworkInfoaSo16SCPreferencesRef4Info_continuation;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB778, &qword_25B94C8B0);
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_25B92F1B0()
{
  v0 = *sub_25B92F130();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t SCPreferencesRef.callback(callback:context:)(uint64_t a1, uint64_t a2)
{
  v65 = a1;
  v64 = a2;
  v57 = "callback(callback:context:)";
  v58 = sub_25B910408;
  v59 = sub_25B8A3C9C;
  v60 = sub_25B8A3CE8;
  v61 = sub_25B88B5F4;
  v62 = sub_25B88B5F4;
  v63 = sub_25B8A3EB8;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v77 = 0uLL;
  v78 = 0;
  v67 = sub_25B946C48();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v66);
  v71 = v31 - v70;
  v85 = v3;
  v84 = v4;
  v83 = v2;
  result = SCPreferencesSetCallback(v2, v3, v4);
  v82 = result != 0;
  if (!result)
  {
    v6 = v71;
    static SCError.current(_:)(v57, 0x1BuLL, 2u, &v79);
    v39 = v79;
    v40 = v80;
    v41 = v81;
    v77 = v79;
    LOBYTE(v78) = v80;
    HIDWORD(v78) = v81;
    v7 = sub_25B92A010();
    (*(v68 + 16))(v6, v7, v67);
    v45 = 7;
    v8 = swift_allocObject();
    v9 = v39.n128_u64[1];
    v10 = v40;
    v11 = v41;
    v43 = v8;
    *(v8 + 16) = v39.n128_u64[0];
    *(v8 + 24) = v9;
    *(v8 + 32) = v10;
    *(v8 + 36) = v11;
    sub_25B8A1C38();

    v54 = sub_25B946C18();
    v55 = sub_25B947458();
    v42 = 17;
    v48 = swift_allocObject();
    *(v48 + 16) = 64;
    v49 = swift_allocObject();
    *(v49 + 16) = 8;
    v44 = 32;
    v12 = swift_allocObject();
    v13 = v43;
    v46 = v12;
    *(v12 + 16) = v58;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v46;
    v47 = v14;
    *(v14 + 16) = v59;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v47;
    v51 = v16;
    *(v16 + 16) = v60;
    *(v16 + 24) = v17;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v50 = sub_25B947838();
    v52 = v18;

    v19 = v48;
    v20 = v52;
    *v52 = v61;
    v20[1] = v19;

    v21 = v49;
    v22 = v52;
    v52[2] = v62;
    v22[3] = v21;

    v23 = v51;
    v24 = v52;
    v52[4] = v63;
    v24[5] = v23;
    sub_25B8860FC();

    if (os_log_type_enabled(v54, v55))
    {
      v32 = sub_25B9474D8();
      v31[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v33 = sub_25B8895FC(1);
      v34 = sub_25B8895FC(0);
      v35 = &v76;
      v76 = v32;
      v36 = &v75;
      v75 = v33;
      v37 = &v74;
      v74 = v34;
      sub_25B889650(2, &v76);
      sub_25B889650(1, v35);
      v25 = v56;
      v72 = v61;
      v73 = v48;
      sub_25B889664(&v72, v35, v36, v37);
      v38 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v72 = v62;
        v73 = v49;
        sub_25B889664(&v72, &v76, &v75, &v74);
        v31[2] = 0;
        v72 = v63;
        v73 = v51;
        sub_25B889664(&v72, &v76, &v75, &v74);
        _os_log_impl(&dword_25B859000, v54, v55, "Unable to set callback: %@", v32, 0xCu);
        sub_25B8896B0(v33);
        sub_25B8896B0(v34);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v54);
    (*(v68 + 8))(v71, v67);
    sub_25B9115BC();
    v26 = swift_allocError();
    v27 = v39.n128_u64[1];
    v28 = v40;
    v29 = v41;
    v31[1] = v26;
    *v30 = v39.n128_u64[0];
    *(v30 + 8) = v27;
    *(v30 + 16) = v28;
    *(v30 + 20) = v29;
    return swift_willThrow();
  }

  return result;
}

uint64_t SCPreferencesRef.dispatchQueue(_:)(uint64_t a1)
{
  v62 = a1;
  v55 = "dispatchQueue(_:)";
  v56 = sub_25B910408;
  v57 = sub_25B8A3C9C;
  v58 = sub_25B8A3CE8;
  v59 = sub_25B88B5F4;
  v60 = sub_25B88B5F4;
  v61 = sub_25B8A3EB8;
  v80 = 0;
  v79 = 0;
  v74 = 0uLL;
  v75 = 0;
  v64 = sub_25B946C48();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v63);
  v68 = v29 - v67;
  v80 = v2;
  v79 = v1;
  result = SCPreferencesSetDispatchQueue(v1, v2);
  if (!result)
  {
    v4 = v68;
    v40 = 17;
    static SCError.current(_:)(v55, 0x11uLL, 2u, &v76);
    v37 = v76;
    v38 = v77;
    v39 = v78;
    v74 = v76;
    LOBYTE(v75) = v77;
    HIDWORD(v75) = v78;
    v5 = sub_25B92A010();
    (*(v65 + 16))(v4, v5, v64);
    v43 = 7;
    v6 = swift_allocObject();
    v7 = v37.n128_u64[1];
    v8 = v38;
    v9 = v39;
    v41 = v6;
    *(v6 + 16) = v37.n128_u64[0];
    *(v6 + 24) = v7;
    *(v6 + 32) = v8;
    *(v6 + 36) = v9;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v10 = swift_allocObject();
    v11 = v41;
    v44 = v10;
    *(v10 + 16) = v56;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v44;
    v45 = v12;
    *(v12 + 16) = v57;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v45;
    v49 = v14;
    *(v14 + 16) = v58;
    *(v14 + 24) = v15;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v16;

    v17 = v46;
    v18 = v50;
    *v50 = v59;
    v18[1] = v17;

    v19 = v47;
    v20 = v50;
    v50[2] = v60;
    v20[3] = v19;

    v21 = v49;
    v22 = v50;
    v50[4] = v61;
    v22[5] = v21;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1);
      v32 = sub_25B8895FC(0);
      v33 = &v73;
      v73 = v30;
      v34 = &v72;
      v72 = v31;
      v35 = &v71;
      v71 = v32;
      sub_25B889650(2, &v73);
      sub_25B889650(1, v33);
      v23 = v54;
      v69 = v59;
      v70 = v46;
      sub_25B889664(&v69, v33, v34, v35);
      v36 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v69 = v60;
        v70 = v47;
        sub_25B889664(&v69, &v73, &v72, &v71);
        v29[1] = 0;
        v69 = v61;
        v70 = v49;
        sub_25B889664(&v69, &v73, &v72, &v71);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to set dispatch queue: %@", v30, 0xCu);
        sub_25B8896B0(v31);
        sub_25B8896B0(v32);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v65 + 8))(v68, v64);
    sub_25B9115BC();
    v24 = swift_allocError();
    v25 = v37.n128_u64[1];
    v26 = v38;
    v27 = v39;
    v29[0] = v24;
    *v28 = v37.n128_u64[0];
    *(v28 + 8) = v25;
    *(v28 + 16) = v26;
    *(v28 + 20) = v27;
    return swift_willThrow();
  }

  return result;
}

uint64_t SCPreferencesRef.notifications(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = a4;
  v10 = a1;
  v8 = a2;
  v9 = a3;
  v14 = sub_25B93873C;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB780, &qword_25B94C8B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v8 - v11;
  v21 = MEMORY[0x28223BE20](v10);
  v22 = v5;
  v23 = v6;
  v20 = v4;
  MEMORY[0x277D82BE0](v4);
  v15 = &v18;
  v19 = v4;
  v16 = type metadata accessor for SCPreferencesNotification();
  sub_25B914F5C();
  sub_25B914F70(v13);
  sub_25B947348();
  return MEMORY[0x277D82BD8](v17);
}

uint64_t sub_25B930354(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v44 = a2;
  v45 = sub_25B930B5C;
  v46 = sub_25B930B74;
  v47 = sub_25B930CDC;
  v49 = sub_25B930F18;
  v25 = sub_25B939420;
  __b[5] = *MEMORY[0x277D85DE8];
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v48 = __b;
  memset(__b, 0, 0x28uLL);
  v56 = 0;
  v53 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB7A0, &qword_25B94C8D0);
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v30 = v13 - v29;
  v37 = 0;
  v31 = (*(*(sub_25B947478() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v32 = v13 - v31;
  v33 = (*(*(sub_25B947468() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v34 = v13 - v33;
  v2 = sub_25B946E88();
  v35 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v36 = v13 - v35;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB778, &qword_25B94C8B0);
  v39 = *(v41 - 8);
  v40 = v41 - 8;
  v38 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v43 = v13 - v38;
  v59 = v3;
  v58 = v4;
  _s4InfoCMa_0();
  (*(v39 + 16))(v43, v42, v41);
  v50 = sub_25B92EFA4(v43);
  v57 = v50;
  __b[0] = 1;
  __b[1] = v50;
  __b[2] = v45;
  __b[3] = v46;
  __b[4] = v47;
  SCPreferencesRef.callback(callback:context:)(v49, v48);
  v51 = 0;
  v52 = 0;
  v22 = 0;
  v15 = sub_25B8A4858();
  v13[3] = 30;
  v5 = sub_25B947818();
  v17 = &v54;
  v54 = v5;
  v55 = v6;
  v14 = 1;
  v7 = sub_25B946F48();
  v13[4] = v8;
  MEMORY[0x25F8715F0](v7);

  v13[5] = v62;
  v62[0] = __b[0];
  v62[1] = __b[1];
  v62[2] = __b[2];
  v62[3] = __b[3];
  v62[4] = __b[4];
  type metadata accessor for SCPreferencesContext();
  sub_25B9477D8();
  v9 = sub_25B946F48();
  v16 = v10;
  MEMORY[0x25F8715F0](v9);

  v19 = v54;
  v18 = v55;
  sub_25B946ED8();
  sub_25B86AEEC(v17);
  v20 = sub_25B946FE8();
  v21 = v11;
  sub_25B89CE88();
  sub_25B89CEA0();
  sub_25B89CF40(v32);
  v23 = sub_25B947498();
  v53 = v23;
  MEMORY[0x277D82BE0](v23);
  SCPreferencesRef.dispatchQueue(_:)(v23);
  v24 = 0;
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BE0](v44);
  *(swift_allocObject() + 16) = v44;
  sub_25B9472C8();
  v60 = 1;
  v61 = 0;
  sub_25B9472E8();
  (*(v27 + 8))(v30, v26);
  sub_25B913870();

  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25B930B8C(uint64_t a1)
{
  v7[3] = a1;

  v7[2] = a1;
  v7[0] = sub_25B947818();
  v7[1] = v1;
  v2 = sub_25B946F48();
  MEMORY[0x25F8715F0](v2);

  _s4InfoCMa_0();
  sub_25B9477D8();
  v3 = sub_25B946F48();
  MEMORY[0x25F8715F0](v3);

  sub_25B946ED8();
  sub_25B86AEEC(v7);
  sub_25B946FE8();
  v6 = sub_25B946F58();
  MEMORY[0x277D82BE0](v6);
  MEMORY[0x277D82BD8](v6);

  return v6;
}

uint64_t sub_25B930CF4(uint64_t a1, int a2, uint64_t a3)
{
  v15 = a1;
  v13 = a2;
  v14 = a3;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB778, &qword_25B94C8B0);
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v12 = v7 - v11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB7A0, &qword_25B94C8D0);
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x28223BE20](v15);
  v20 = v7 - v19;
  v25 = result;
  v24 = v4;
  v23 = v5;
  if (v5)
  {
    v7[1] = v14;
    v6 = v12;
    v7[0] = v14;
    v22 = v14;

    (*(v9 + 16))(v6, v7[0] + OBJC_IVAR____TtCE11NetworkInfoaSo16SCPreferencesRef4Info_continuation, v8);

    v21 = v13;
    sub_25B9472F8();
    (*(v9 + 8))(v12, v8);
    return (*(v17 + 8))(v20, v16);
  }

  return result;
}

uint64_t sub_25B930F18(uint64_t a1, int a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a1);
  sub_25B930CF4(a1, a2, a3);
  return MEMORY[0x277D82BD8](a1);
}

SCNetworkInterfaceRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCPreferencesRef.createBridgeInterface()()
{
  v57 = "createBridgeInterface()";
  v58 = sub_25B910408;
  v59 = sub_25B8A3C9C;
  v60 = sub_25B8A3CE8;
  v61 = sub_25B88B5F4;
  v62 = sub_25B88B5F4;
  v63 = sub_25B8A3EB8;
  v83 = 0;
  v82 = 0;
  v77 = 0uLL;
  v78 = 0;
  v71 = 0;
  v64 = sub_25B946C48();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v68 = v26 - v67;
  v83 = MEMORY[0x28223BE20](v69);
  MEMORY[0x277D82BE0](v83);
  v70 = SCBridgeInterfaceCreate();
  MEMORY[0x277D82BD8](v69);
  v82 = v70;
  if (v70)
  {
    v55 = v70;
    v53 = v70;
    MEMORY[0x277D82BE0](v70);
    MEMORY[0x277D82BE0](v53);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v53);
    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  v52 = v54;
  if (v54)
  {
    v51 = v52;
    result = v52;
    v71 = v52;
  }

  else
  {
    v1 = v68;
    static SCError.current(_:)(v57, 0x17uLL, 2u, &v79);
    v34 = v79;
    v35 = v80;
    v36 = v81;
    v77 = v79;
    LOBYTE(v78) = v80;
    HIDWORD(v78) = v81;
    v2 = sub_25B92A010();
    (*(v65 + 16))(v1, v2, v64);
    v40 = 7;
    v3 = swift_allocObject();
    v4 = v34.n128_u64[1];
    v5 = v35;
    v6 = v36;
    v38 = v3;
    *(v3 + 16) = v34.n128_u64[0];
    *(v3 + 24) = v4;
    *(v3 + 32) = v5;
    *(v3 + 36) = v6;
    sub_25B8A1C38();

    v49 = sub_25B946C18();
    v50 = sub_25B947458();
    v37 = 17;
    v43 = swift_allocObject();
    *(v43 + 16) = 64;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v39 = 32;
    v7 = swift_allocObject();
    v8 = v38;
    v41 = v7;
    *(v7 + 16) = v58;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v41;
    v42 = v9;
    *(v9 + 16) = v59;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v42;
    v46 = v11;
    *(v11 + 16) = v60;
    *(v11 + 24) = v12;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v45 = sub_25B947838();
    v47 = v13;

    v14 = v43;
    v15 = v47;
    *v47 = v61;
    v15[1] = v14;

    v16 = v44;
    v17 = v47;
    v47[2] = v62;
    v17[3] = v16;

    v18 = v46;
    v19 = v47;
    v47[4] = v63;
    v19[5] = v18;
    sub_25B8860FC();

    if (os_log_type_enabled(v49, v50))
    {
      v27 = sub_25B9474D8();
      v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v28 = sub_25B8895FC(1);
      v29 = sub_25B8895FC(0);
      v30 = &v76;
      v76 = v27;
      v31 = &v75;
      v75 = v28;
      v32 = &v74;
      v74 = v29;
      sub_25B889650(2, &v76);
      sub_25B889650(1, v30);
      v20 = v56;
      v72 = v61;
      v73 = v43;
      sub_25B889664(&v72, v30, v31, v32);
      v33 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v72 = v62;
        v73 = v44;
        sub_25B889664(&v72, &v76, &v75, &v74);
        v26[1] = 0;
        v72 = v63;
        v73 = v46;
        sub_25B889664(&v72, &v76, &v75, &v74);
        _os_log_impl(&dword_25B859000, v49, v50, "Unable to create bridge interface: %@", v27, 0xCu);
        sub_25B8896B0(v28);
        sub_25B8896B0(v29);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v49);
    (*(v65 + 8))(v68, v64);
    sub_25B9115BC();
    v21 = swift_allocError();
    v22 = v34.n128_u64[1];
    v23 = v35;
    v24 = v36;
    v26[0] = v21;
    *v25 = v34.n128_u64[0];
    *(v25 + 8) = v22;
    *(v25 + 16) = v23;
    *(v25 + 20) = v24;
    swift_willThrow();
    return v26[2];
  }

  return result;
}

uint64_t SCPreferencesRef.bridgeInterfaces()()
{
  v67 = 0;
  v66 = 0;
  v51 = 0;
  v61 = 0;
  v52 = sub_25B946C48();
  v53 = *(v52 - 8);
  v54 = v53;
  v1 = *(v53 + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v55 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v0;
  v3 = v0;
  v57 = SCBridgeInterfaceCopyAll();
  v56 = v57;

  v66 = v57;
  if (v57)
  {
    v50 = v56;
    v48 = v56;
    v4 = v56;
    v5 = v48;

    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  v47 = v49;
  if (!v49)
  {
    v8 = v55;
    v9 = sub_25B92A010();
    (*(v54 + 16))(v8, v9, v52);
    v34 = sub_25B946C18();
    v31 = v34;
    v33 = sub_25B947458();
    v32 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v35 = sub_25B947838();
    if (os_log_type_enabled(v34, v33))
    {
      v10 = v51;
      v22 = sub_25B9474D8();
      v18 = v22;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v20 = 0;
      v23 = sub_25B8895FC(0);
      v21 = v23;
      v24 = sub_25B8895FC(v20);
      v65 = v22;
      v64 = v23;
      v63 = v24;
      v25 = 0;
      v26 = &v65;
      sub_25B889650(0, &v65);
      sub_25B889650(v25, v26);
      v62 = v35;
      v27 = v13;
      MEMORY[0x28223BE20](v13);
      v28 = &v13[-6];
      v13[-4] = v11;
      v13[-3] = &v64;
      v13[-2] = &v63;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();
      v30 = v10;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_25B859000, v31, v32, "Unexpected nil list of bridge interfaces.", v18, 2u);
        v16 = 0;
        sub_25B8896B0(v21);
        sub_25B8896B0(v24);
        sub_25B9474B8();

        v17 = v30;
      }
    }

    else
    {

      v17 = v51;
    }

    v14 = v17;

    (*(v54 + 8))(v55, v52);
    v13[0] = 0;
    v13[1] = type metadata accessor for SCNetworkInterface();
    v15 = sub_25B947838();
    v37 = v15;
    v38 = v14;
    return v37;
  }

  v46 = v47;
  v44 = v47;
  v61 = v47;
  v6 = v47;
  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  if (!v45)
  {

LABEL_8:
    v41 = 0;
    goto LABEL_9;
  }

  v43 = v45;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB708, "\\z");
  v7 = v43;
  sub_25B9176E8();
  sub_25B9478B8();

  if (!v58)
  {
    goto LABEL_8;
  }

  v41 = v58;
LABEL_9:
  v59 = v41;
  if (v41)
  {
    v60 = v59;
  }

  else
  {
    v39 = 0;
    v40 = type metadata accessor for SCNetworkInterface();
    v60 = sub_25B947838();
    if (v59)
    {
      sub_25B86CFA0(&v59);
    }
  }

  v36 = v60;

  v37 = v36;
  v38 = v51;
  return v37;
}

id SCPreferencesRef.bridgeInterface(matching:)(uint64_t (*a1)(void), uint64_t a2)
{
  v118 = a2;
  v117 = a1;
  v116 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142[1] = 0;
  v142[0] = 0;
  v135 = 0;
  v134 = 0;
  v119 = sub_25B946C48();
  v120 = *(v119 - 8);
  v121 = v120;
  v122 = *(v120 + 64);
  v3 = MEMORY[0x28223BE20](v117);
  v124 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  v123 = v32 - v124;
  v4 = MEMORY[0x28223BE20](v3);
  v125 = v32 - v124;
  v144 = v4;
  v145 = v5;
  v143 = v2;
  v141 = SCPreferencesRef.bridgeInterfaces()();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB708, "\\z");
  sub_25B918968();
  sub_25B947418();
  for (i = v127; ; i = v104)
  {
    v114 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB720, "^z");
    sub_25B9475E8();
    v115 = v140;
    if (!v140)
    {
      break;
    }

    v113 = v115;
    v6 = v114;
    v109 = v115;
    v135 = v115;
    v7 = v117();
    v110 = v6;
    v111 = v7;
    v112 = v6;
    if (v6)
    {
      v14 = v123;
      v63 = v112;
      v62 = 0;
      v15 = v112;
      v134 = v63;
      v16 = sub_25B92A010();
      (*(v121 + 16))(v14, v16, v119);
      v17 = v63;
      v71 = 7;
      v69 = swift_allocObject();
      *(v69 + 16) = v63;
      sub_25B8A1C38();

      v82 = sub_25B946C18();
      v64 = v82;
      v81 = sub_25B947448();
      v65 = v81;
      v66 = 17;
      v75 = swift_allocObject();
      v67 = v75;
      *(v75 + 16) = 64;
      v76 = swift_allocObject();
      v68 = v76;
      *(v76 + 16) = 8;
      v70 = 32;
      v18 = swift_allocObject();
      v19 = v69;
      v72 = v18;
      *(v18 + 16) = sub_25B8A3B24;
      *(v18 + 24) = v19;
      v20 = swift_allocObject();
      v21 = v72;
      v73 = v20;
      *(v20 + 16) = sub_25B8A3C9C;
      *(v20 + 24) = v21;
      v22 = swift_allocObject();
      v23 = v73;
      v79 = v22;
      v74 = v22;
      *(v22 + 16) = sub_25B8A3CE8;
      *(v22 + 24) = v23;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
      v77 = sub_25B947838();
      v78 = v24;

      v25 = v75;
      v26 = v78;
      *v78 = sub_25B88B5F4;
      v26[1] = v25;

      v27 = v76;
      v28 = v78;
      v78[2] = sub_25B88B5F4;
      v28[3] = v27;

      v29 = v78;
      v30 = v79;
      v78[4] = sub_25B8A3EB8;
      v29[5] = v30;
      sub_25B8860FC();

      if (os_log_type_enabled(v82, v81))
      {
        v56 = v62;
        v51 = sub_25B9474D8();
        v48 = v51;
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
        v54 = 1;
        v52 = sub_25B8895FC(1);
        v50 = v52;
        v53 = sub_25B8895FC(0);
        v133 = v51;
        v132 = v52;
        v131 = v53;
        v55 = &v133;
        sub_25B889650(2, &v133);
        sub_25B889650(v54, v55);
        v31 = v56;
        v129 = sub_25B88B5F4;
        v130 = v67;
        sub_25B889664(&v129, v55, &v132, &v131);
        v57 = v31;
        v58 = v67;
        v59 = v68;
        v60 = v74;
        v61 = v31;
        if (v31)
        {
          v43 = v58;
          v44 = v59;
          v45 = v60;
          v46 = 0;
          v32[2] = v60;
          v32[1] = v59;

          __break(1u);
        }

        else
        {
          v129 = sub_25B88B5F4;
          v130 = v68;
          sub_25B889664(&v129, &v133, &v132, &v131);
          v38 = 0;
          v39 = v67;
          v40 = v68;
          v41 = v74;
          v42 = 0;
          v129 = sub_25B8A3EB8;
          v130 = v74;
          sub_25B889664(&v129, &v133, &v132, &v131);
          v33 = 0;
          v34 = v67;
          v35 = v68;
          v36 = v74;
          v37 = 0;
          _os_log_impl(&dword_25B859000, v64, v65, "Ignoring interface interface: %@", v48, 0xCu);
          sub_25B8896B0(v50);
          sub_25B8896B0(v53);
          sub_25B9474B8();

          v47 = v33;
        }
      }

      else
      {

        v47 = v62;
      }

      v32[0] = v47;

      (*(v121 + 8))(v123, v119);
      v105 = v32[0];
    }

    else
    {
      v108 = v109;
      if (v111)
      {
        v107 = v108;
        v106 = v110;
        sub_25B86CFA0(v142);
        return v107;
      }

      v105 = v110;
    }

    v104 = v105;
  }

  v9 = v125;
  sub_25B86CFA0(v142);
  v10 = sub_25B92A010();
  (*(v121 + 16))(v9, v10, v119);
  v102 = sub_25B946C18();
  v99 = v102;
  v101 = sub_25B947458();
  v100 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  v103 = sub_25B947838();
  if (os_log_type_enabled(v102, v101))
  {
    v98 = v114;
    v90 = sub_25B9474D8();
    v86 = v90;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v88 = 0;
    v91 = sub_25B8895FC(0);
    v89 = v91;
    v92 = sub_25B8895FC(v88);
    v139 = v90;
    v138 = v91;
    v137 = v92;
    v93 = 0;
    v94 = &v139;
    sub_25B889650(0, &v139);
    sub_25B889650(v93, v94);
    v136 = v103;
    v95 = v32;
    MEMORY[0x28223BE20](v32);
    v96 = &v32[-6];
    v32[-4] = v11;
    v32[-3] = &v138;
    v32[-2] = &v137;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
    sub_25B8A3F58();
    v12 = v98;
    sub_25B947158();
    if (v12)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_25B859000, v99, v100, "Bridge interface matching predicate not found.", v86, 2u);
      v85 = 0;
      sub_25B8896B0(v89);
      sub_25B8896B0(v92);
      sub_25B9474B8();
    }
  }

  else
  {
  }

  (*(v121 + 8))(v125, v119);
  sub_25B9115BC();
  v83 = 0;
  v84 = swift_allocError();
  SCError.init(context:rawValue:)("bridgeInterface(matching:)", 0x1AuLL, 2u, 1004, v13);
  swift_willThrow();
  return v83;
}

uint64_t SCPreferencesRef.bridgeableInterfaces()()
{
  v67 = 0;
  v66 = 0;
  v51 = 0;
  v61 = 0;
  v52 = sub_25B946C48();
  v53 = *(v52 - 8);
  v54 = v53;
  v1 = *(v53 + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v55 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v0;
  v3 = v0;
  v57 = SCBridgeInterfaceCopyAvailableMemberInterfaces();
  v56 = v57;

  v66 = v57;
  if (v57)
  {
    v50 = v56;
    v48 = v56;
    v4 = v56;
    v5 = v48;

    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  v47 = v49;
  if (!v49)
  {
    v8 = v55;
    v9 = sub_25B92A010();
    (*(v54 + 16))(v8, v9, v52);
    v34 = sub_25B946C18();
    v31 = v34;
    v33 = sub_25B947458();
    v32 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v35 = sub_25B947838();
    if (os_log_type_enabled(v34, v33))
    {
      v10 = v51;
      v22 = sub_25B9474D8();
      v18 = v22;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v20 = 0;
      v23 = sub_25B8895FC(0);
      v21 = v23;
      v24 = sub_25B8895FC(v20);
      v65 = v22;
      v64 = v23;
      v63 = v24;
      v25 = 0;
      v26 = &v65;
      sub_25B889650(0, &v65);
      sub_25B889650(v25, v26);
      v62 = v35;
      v27 = v13;
      MEMORY[0x28223BE20](v13);
      v28 = &v13[-6];
      v13[-4] = v11;
      v13[-3] = &v64;
      v13[-2] = &v63;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();
      v30 = v10;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_25B859000, v31, v32, "Unexpected nil list of bridgeable interfaces.", v18, 2u);
        v16 = 0;
        sub_25B8896B0(v21);
        sub_25B8896B0(v24);
        sub_25B9474B8();

        v17 = v30;
      }
    }

    else
    {

      v17 = v51;
    }

    v14 = v17;

    (*(v54 + 8))(v55, v52);
    v13[0] = 0;
    v13[1] = type metadata accessor for SCNetworkInterface();
    v15 = sub_25B947838();
    v37 = v15;
    v38 = v14;
    return v37;
  }

  v46 = v47;
  v44 = v47;
  v61 = v47;
  v6 = v47;
  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  if (!v45)
  {

LABEL_8:
    v41 = 0;
    goto LABEL_9;
  }

  v43 = v45;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB708, "\\z");
  v7 = v43;
  sub_25B9176E8();
  sub_25B9478B8();

  if (!v58)
  {
    goto LABEL_8;
  }

  v41 = v58;
LABEL_9:
  v59 = v41;
  if (v41)
  {
    v60 = v59;
  }

  else
  {
    v39 = 0;
    v40 = type metadata accessor for SCNetworkInterface();
    v60 = sub_25B947838();
    if (v59)
    {
      sub_25B86CFA0(&v59);
    }
  }

  v36 = v60;

  v37 = v36;
  v38 = v51;
  return v37;
}

id SCPreferencesRef.bridgeableInterface(matching:)(uint64_t (*a1)(void), uint64_t a2)
{
  v118 = a2;
  v117 = a1;
  v116 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142[1] = 0;
  v142[0] = 0;
  v135 = 0;
  v134 = 0;
  v119 = sub_25B946C48();
  v120 = *(v119 - 8);
  v121 = v120;
  v122 = *(v120 + 64);
  v3 = MEMORY[0x28223BE20](v117);
  v124 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  v123 = v32 - v124;
  v4 = MEMORY[0x28223BE20](v3);
  v125 = v32 - v124;
  v144 = v4;
  v145 = v5;
  v143 = v2;
  v141 = SCPreferencesRef.bridgeableInterfaces()();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB708, "\\z");
  sub_25B918968();
  sub_25B947418();
  for (i = v127; ; i = v104)
  {
    v114 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB720, "^z");
    sub_25B9475E8();
    v115 = v140;
    if (!v140)
    {
      break;
    }

    v113 = v115;
    v6 = v114;
    v109 = v115;
    v135 = v115;
    v7 = v117();
    v110 = v6;
    v111 = v7;
    v112 = v6;
    if (v6)
    {
      v14 = v123;
      v63 = v112;
      v62 = 0;
      v15 = v112;
      v134 = v63;
      v16 = sub_25B92A010();
      (*(v121 + 16))(v14, v16, v119);
      v17 = v63;
      v71 = 7;
      v69 = swift_allocObject();
      *(v69 + 16) = v63;
      sub_25B8A1C38();

      v82 = sub_25B946C18();
      v64 = v82;
      v81 = sub_25B947448();
      v65 = v81;
      v66 = 17;
      v75 = swift_allocObject();
      v67 = v75;
      *(v75 + 16) = 64;
      v76 = swift_allocObject();
      v68 = v76;
      *(v76 + 16) = 8;
      v70 = 32;
      v18 = swift_allocObject();
      v19 = v69;
      v72 = v18;
      *(v18 + 16) = sub_25B8A3B24;
      *(v18 + 24) = v19;
      v20 = swift_allocObject();
      v21 = v72;
      v73 = v20;
      *(v20 + 16) = sub_25B8A3C9C;
      *(v20 + 24) = v21;
      v22 = swift_allocObject();
      v23 = v73;
      v79 = v22;
      v74 = v22;
      *(v22 + 16) = sub_25B8A3CE8;
      *(v22 + 24) = v23;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
      v77 = sub_25B947838();
      v78 = v24;

      v25 = v75;
      v26 = v78;
      *v78 = sub_25B88B5F4;
      v26[1] = v25;

      v27 = v76;
      v28 = v78;
      v78[2] = sub_25B88B5F4;
      v28[3] = v27;

      v29 = v78;
      v30 = v79;
      v78[4] = sub_25B8A3EB8;
      v29[5] = v30;
      sub_25B8860FC();

      if (os_log_type_enabled(v82, v81))
      {
        v56 = v62;
        v51 = sub_25B9474D8();
        v48 = v51;
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
        v54 = 1;
        v52 = sub_25B8895FC(1);
        v50 = v52;
        v53 = sub_25B8895FC(0);
        v133 = v51;
        v132 = v52;
        v131 = v53;
        v55 = &v133;
        sub_25B889650(2, &v133);
        sub_25B889650(v54, v55);
        v31 = v56;
        v129 = sub_25B88B5F4;
        v130 = v67;
        sub_25B889664(&v129, v55, &v132, &v131);
        v57 = v31;
        v58 = v67;
        v59 = v68;
        v60 = v74;
        v61 = v31;
        if (v31)
        {
          v43 = v58;
          v44 = v59;
          v45 = v60;
          v46 = 0;
          v32[2] = v60;
          v32[1] = v59;

          __break(1u);
        }

        else
        {
          v129 = sub_25B88B5F4;
          v130 = v68;
          sub_25B889664(&v129, &v133, &v132, &v131);
          v38 = 0;
          v39 = v67;
          v40 = v68;
          v41 = v74;
          v42 = 0;
          v129 = sub_25B8A3EB8;
          v130 = v74;
          sub_25B889664(&v129, &v133, &v132, &v131);
          v33 = 0;
          v34 = v67;
          v35 = v68;
          v36 = v74;
          v37 = 0;
          _os_log_impl(&dword_25B859000, v64, v65, "Ignoring bridgeable interface: %@", v48, 0xCu);
          sub_25B8896B0(v50);
          sub_25B8896B0(v53);
          sub_25B9474B8();

          v47 = v33;
        }
      }

      else
      {

        v47 = v62;
      }

      v32[0] = v47;

      (*(v121 + 8))(v123, v119);
      v105 = v32[0];
    }

    else
    {
      v108 = v109;
      if (v111)
      {
        v107 = v108;
        v106 = v110;
        sub_25B86CFA0(v142);
        return v107;
      }

      v105 = v110;
    }

    v104 = v105;
  }

  v9 = v125;
  sub_25B86CFA0(v142);
  v10 = sub_25B92A010();
  (*(v121 + 16))(v9, v10, v119);
  v102 = sub_25B946C18();
  v99 = v102;
  v101 = sub_25B947458();
  v100 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  v103 = sub_25B947838();
  if (os_log_type_enabled(v102, v101))
  {
    v98 = v114;
    v90 = sub_25B9474D8();
    v86 = v90;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v88 = 0;
    v91 = sub_25B8895FC(0);
    v89 = v91;
    v92 = sub_25B8895FC(v88);
    v139 = v90;
    v138 = v91;
    v137 = v92;
    v93 = 0;
    v94 = &v139;
    sub_25B889650(0, &v139);
    sub_25B889650(v93, v94);
    v136 = v103;
    v95 = v32;
    MEMORY[0x28223BE20](v32);
    v96 = &v32[-6];
    v32[-4] = v11;
    v32[-3] = &v138;
    v32[-2] = &v137;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
    sub_25B8A3F58();
    v12 = v98;
    sub_25B947158();
    if (v12)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_25B859000, v99, v100, "Bridgeable interface matching predicate not found.", v86, 2u);
      v85 = 0;
      sub_25B8896B0(v89);
      sub_25B8896B0(v92);
      sub_25B9474B8();
    }
  }

  else
  {
  }

  (*(v121 + 8))(v125, v119);
  sub_25B9115BC();
  v83 = 0;
  v84 = swift_allocError();
  SCError.init(context:rawValue:)("bridgeableInterface(matching:)", 0x1EuLL, 2u, 1004, v13);
  swift_willThrow();
  return v83;
}

SCNetworkServiceRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCPreferencesRef.createService(interface:)(SCNetworkInterfaceRef interface)
{
  v63 = interface;
  v56 = "createService(interface:)";
  v57 = sub_25B910408;
  v58 = sub_25B8A3C9C;
  v59 = sub_25B8A3CE8;
  v60 = sub_25B88B5F4;
  v61 = sub_25B88B5F4;
  v62 = sub_25B8A3EB8;
  v83 = 0;
  v82 = 0;
  v77 = 0uLL;
  v78 = 0;
  v71 = 0;
  v65 = sub_25B946C48();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v64);
  v69 = v29 - v68;
  v83 = v2;
  v82 = v1;
  v70 = SCNetworkServiceCreate(v1, v2);
  if (v70)
  {
    v54 = v70;
    result = v70;
    v71 = v70;
  }

  else
  {
    v4 = v69;
    static SCError.current(_:)(v56, 0x19uLL, 2u, &v79);
    v37 = v79;
    v38 = v80;
    v39 = v81;
    v77 = v79;
    LOBYTE(v78) = v80;
    HIDWORD(v78) = v81;
    v5 = sub_25B92A010();
    (*(v66 + 16))(v4, v5, v65);
    v43 = 7;
    v6 = swift_allocObject();
    v7 = v37.n128_u64[1];
    v8 = v38;
    v9 = v39;
    v41 = v6;
    *(v6 + 16) = v37.n128_u64[0];
    *(v6 + 24) = v7;
    *(v6 + 32) = v8;
    *(v6 + 36) = v9;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v40 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v10 = swift_allocObject();
    v11 = v41;
    v44 = v10;
    *(v10 + 16) = v57;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v44;
    v45 = v12;
    *(v12 + 16) = v58;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v45;
    v49 = v14;
    *(v14 + 16) = v59;
    *(v14 + 24) = v15;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v16;

    v17 = v46;
    v18 = v50;
    *v50 = v60;
    v18[1] = v17;

    v19 = v47;
    v20 = v50;
    v50[2] = v61;
    v20[3] = v19;

    v21 = v49;
    v22 = v50;
    v50[4] = v62;
    v22[5] = v21;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1);
      v32 = sub_25B8895FC(0);
      v33 = &v76;
      v76 = v30;
      v34 = &v75;
      v75 = v31;
      v35 = &v74;
      v74 = v32;
      sub_25B889650(2, &v76);
      sub_25B889650(1, v33);
      v23 = v55;
      v72 = v60;
      v73 = v46;
      sub_25B889664(&v72, v33, v34, v35);
      v36 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v72 = v61;
        v73 = v47;
        sub_25B889664(&v72, &v76, &v75, &v74);
        v29[2] = 0;
        v72 = v62;
        v73 = v49;
        sub_25B889664(&v72, &v76, &v75, &v74);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to create network service: %@", v30, 0xCu);
        sub_25B8896B0(v31);
        sub_25B8896B0(v32);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v66 + 8))(v69, v65);
    sub_25B9115BC();
    v24 = swift_allocError();
    v25 = v37.n128_u64[1];
    v26 = v38;
    v27 = v39;
    v29[1] = v24;
    *v28 = v37.n128_u64[0];
    *(v28 + 8) = v25;
    *(v28 + 16) = v26;
    *(v28 + 20) = v27;
    swift_willThrow();
    return v29[3];
  }

  return result;
}

id SCPreferencesRef.service(matching:)(uint64_t (*a1)(void), uint64_t a2)
{
  v128 = a2;
  v127 = a1;
  v125 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v152[1] = 0;
  v152[0] = 0;
  v145 = 0;
  v144 = 0;
  v3 = v126;
  v129 = sub_25B946C48();
  v130 = *(v129 - 8);
  v131 = v130;
  v132 = *(v130 + 64);
  v4 = MEMORY[0x28223BE20](v127);
  v134 = (v132 + 15) & 0xFFFFFFFFFFFFFFF0;
  v133 = &v34 - v134;
  v5 = MEMORY[0x28223BE20](v4);
  v135 = &v34 - v134;
  v154 = v5;
  v155 = v6;
  v153 = v2;
  v7 = SCPreferencesRef.services()();
  v136 = v3;
  v137 = v7;
  v138 = v3;
  if (v3)
  {
    result = v138;
    v91 = v138;
  }

  else
  {
    v151 = v137;
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB758, &qword_25B94C898);
    sub_25B937FE4();
    sub_25B947418();
    for (i = v136; ; i = v111)
    {
      v121 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB770, &qword_25B94C8A0);
      sub_25B9475E8();
      v122 = v150;
      if (!v150)
      {
        break;
      }

      v120 = v122;
      v8 = v121;
      v116 = v122;
      v145 = v122;
      v9 = v127();
      v117 = v8;
      v118 = v9;
      v119 = v8;
      if (v8)
      {
        v16 = v133;
        v68 = v119;
        v67 = 0;
        v17 = v119;
        v144 = v68;
        v18 = sub_25B92A010();
        (*(v131 + 16))(v16, v18, v129);
        v19 = v68;
        v76 = 7;
        v74 = swift_allocObject();
        *(v74 + 16) = v68;
        sub_25B8A1C38();

        v87 = sub_25B946C18();
        v69 = v87;
        v86 = sub_25B947448();
        v70 = v86;
        v71 = 17;
        v80 = swift_allocObject();
        v72 = v80;
        *(v80 + 16) = 64;
        v81 = swift_allocObject();
        v73 = v81;
        *(v81 + 16) = 8;
        v75 = 32;
        v20 = swift_allocObject();
        v21 = v74;
        v77 = v20;
        *(v20 + 16) = sub_25B8A3B24;
        *(v20 + 24) = v21;
        v22 = swift_allocObject();
        v23 = v77;
        v78 = v22;
        *(v22 + 16) = sub_25B8A3C9C;
        *(v22 + 24) = v23;
        v24 = swift_allocObject();
        v25 = v78;
        v84 = v24;
        v79 = v24;
        *(v24 + 16) = sub_25B8A3CE8;
        *(v24 + 24) = v25;
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
        v82 = sub_25B947838();
        v83 = v26;

        v27 = v80;
        v28 = v83;
        *v83 = sub_25B88B5F4;
        v28[1] = v27;

        v29 = v81;
        v30 = v83;
        v83[2] = sub_25B88B5F4;
        v30[3] = v29;

        v31 = v83;
        v32 = v84;
        v83[4] = sub_25B8A3EB8;
        v31[5] = v32;
        sub_25B8860FC();

        if (os_log_type_enabled(v87, v86))
        {
          v61 = v67;
          v56 = sub_25B9474D8();
          v53 = v56;
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
          v59 = 1;
          v57 = sub_25B8895FC(1);
          v55 = v57;
          v58 = sub_25B8895FC(0);
          v143 = v56;
          v142 = v57;
          v141 = v58;
          v60 = &v143;
          sub_25B889650(2, &v143);
          sub_25B889650(v59, v60);
          v33 = v61;
          v139 = sub_25B88B5F4;
          v140 = v72;
          sub_25B889664(&v139, v60, &v142, &v141);
          v62 = v33;
          v63 = v72;
          v64 = v73;
          v65 = v79;
          v66 = v33;
          if (v33)
          {
            v48 = v63;
            v49 = v64;
            v50 = v65;
            v51 = 0;
            v37 = v65;
            v36 = v64;

            __break(1u);
          }

          else
          {
            v139 = sub_25B88B5F4;
            v140 = v73;
            sub_25B889664(&v139, &v143, &v142, &v141);
            v43 = 0;
            v44 = v72;
            v45 = v73;
            v46 = v79;
            v47 = 0;
            v139 = sub_25B8A3EB8;
            v140 = v79;
            sub_25B889664(&v139, &v143, &v142, &v141);
            v38 = 0;
            v39 = v72;
            v40 = v73;
            v41 = v79;
            v42 = 0;
            _os_log_impl(&dword_25B859000, v69, v70, "Ignoring service service: %@", v53, 0xCu);
            sub_25B8896B0(v55);
            sub_25B8896B0(v58);
            sub_25B9474B8();

            v52 = v38;
          }
        }

        else
        {

          v52 = v67;
        }

        v35 = v52;

        (*(v131 + 8))(v133, v129);
        v112 = v35;
      }

      else
      {
        v115 = v116;
        if (v118)
        {
          v114 = v115;
          v113 = v117;
          sub_25B86CFA0(v152);
          return v114;
        }

        v112 = v117;
      }

      v111 = v112;
    }

    v11 = v135;
    sub_25B86CFA0(v152);
    v12 = sub_25B92A010();
    (*(v131 + 16))(v11, v12, v129);
    v109 = sub_25B946C18();
    v106 = v109;
    v108 = sub_25B947458();
    v107 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v110 = sub_25B947838();
    if (os_log_type_enabled(v109, v108))
    {
      v105 = v121;
      v97 = sub_25B9474D8();
      v93 = v97;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v95 = 0;
      v98 = sub_25B8895FC(0);
      v96 = v98;
      v99 = sub_25B8895FC(v95);
      v149 = v97;
      v148 = v98;
      v147 = v99;
      v100 = 0;
      v101 = &v149;
      sub_25B889650(0, &v149);
      sub_25B889650(v100, v101);
      v146 = v110;
      v102 = &v34;
      MEMORY[0x28223BE20](&v34);
      v103 = &v34 - 6;
      *(&v34 - 4) = v13;
      *(&v34 - 3) = &v148;
      *(&v34 - 2) = &v147;
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      v14 = v105;
      sub_25B947158();
      if (v14)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_25B859000, v106, v107, "Service matching predicate not found.", v93, 2u);
        v92 = 0;
        sub_25B8896B0(v96);
        sub_25B8896B0(v99);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    (*(v131 + 8))(v135, v129);
    sub_25B9115BC();
    v89 = 0;
    v88 = swift_allocError();
    v90 = v88;
    SCError.init(context:rawValue:)("service(matching:)", 0x12uLL, 2u, 1004, v15);
    swift_willThrow();
    result = v90;
    v91 = v90;
  }

  return result;
}

SCNetworkSetRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCPreferencesRef.networkSet()()
{
  v53 = "networkSet()";
  v54 = sub_25B910408;
  v55 = sub_25B8A3C9C;
  v56 = sub_25B8A3CE8;
  v57 = sub_25B88B5F4;
  v58 = sub_25B88B5F4;
  v59 = sub_25B8A3EB8;
  v78 = 0;
  v73 = 0uLL;
  v74 = 0;
  v67 = 0;
  v61 = sub_25B946C48();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v65 = v26 - v64;
  v78 = MEMORY[0x28223BE20](v60);
  v66 = SCNetworkSetCopyCurrent(v78);
  if (v66)
  {
    v51 = v66;
    result = v66;
    v67 = v66;
  }

  else
  {
    v1 = v65;
    static SCError.current(_:)(v53, 0xCuLL, 2u, &v75);
    v34 = v75;
    v35 = v76;
    v36 = v77;
    v73 = v75;
    LOBYTE(v74) = v76;
    HIDWORD(v74) = v77;
    v2 = sub_25B92A010();
    (*(v62 + 16))(v1, v2, v61);
    v40 = 7;
    v3 = swift_allocObject();
    v4 = v34.n128_u64[1];
    v5 = v35;
    v6 = v36;
    v38 = v3;
    *(v3 + 16) = v34.n128_u64[0];
    *(v3 + 24) = v4;
    *(v3 + 32) = v5;
    *(v3 + 36) = v6;
    sub_25B8A1C38();

    v49 = sub_25B946C18();
    v50 = sub_25B947458();
    v37 = 17;
    v43 = swift_allocObject();
    *(v43 + 16) = 64;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v39 = 32;
    v7 = swift_allocObject();
    v8 = v38;
    v41 = v7;
    *(v7 + 16) = v54;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v41;
    v42 = v9;
    *(v9 + 16) = v55;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v42;
    v46 = v11;
    *(v11 + 16) = v56;
    *(v11 + 24) = v12;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v45 = sub_25B947838();
    v47 = v13;

    v14 = v43;
    v15 = v47;
    *v47 = v57;
    v15[1] = v14;

    v16 = v44;
    v17 = v47;
    v47[2] = v58;
    v17[3] = v16;

    v18 = v46;
    v19 = v47;
    v47[4] = v59;
    v19[5] = v18;
    sub_25B8860FC();

    if (os_log_type_enabled(v49, v50))
    {
      v27 = sub_25B9474D8();
      v26[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v28 = sub_25B8895FC(1);
      v29 = sub_25B8895FC(0);
      v30 = &v72;
      v72 = v27;
      v31 = &v71;
      v71 = v28;
      v32 = &v70;
      v70 = v29;
      sub_25B889650(2, &v72);
      sub_25B889650(1, v30);
      v20 = v52;
      v68 = v57;
      v69 = v43;
      sub_25B889664(&v68, v30, v31, v32);
      v33 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v68 = v58;
        v69 = v44;
        sub_25B889664(&v68, &v72, &v71, &v70);
        v26[2] = 0;
        v68 = v59;
        v69 = v46;
        sub_25B889664(&v68, &v72, &v71, &v70);
        _os_log_impl(&dword_25B859000, v49, v50, "Unable to copy current network set: %@", v27, 0xCu);
        sub_25B8896B0(v28);
        sub_25B8896B0(v29);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v49);
    (*(v62 + 8))(v65, v61);
    sub_25B9115BC();
    v21 = swift_allocError();
    v22 = v34.n128_u64[1];
    v23 = v35;
    v24 = v36;
    v26[1] = v21;
    *v25 = v34.n128_u64[0];
    *(v25 + 8) = v22;
    *(v25 + 16) = v23;
    *(v25 + 20) = v24;
    swift_willThrow();
    return v26[3];
  }

  return result;
}

SCNetworkInterfaceRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCPreferencesRef.createVLANInterface(physicalInterface:vlanTag:)(SCNetworkInterfaceRef physicalInterface, Swift::Int vlanTag)
{
  v71 = physicalInterface;
  v65 = vlanTag;
  v58 = "createVLANInterface(physicalInterface:vlanTag:)";
  v59 = sub_25B910408;
  v60 = sub_25B8A3C9C;
  v61 = sub_25B8A3CE8;
  v62 = sub_25B88B5F4;
  v63 = sub_25B88B5F4;
  v64 = sub_25B8A3EB8;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v81 = 0uLL;
  v82 = 0;
  v75 = 0;
  v66 = sub_25B946C48();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v65);
  v70 = v31 - v69;
  v88 = v4;
  v87 = v3;
  v86 = v2;
  v73 = sub_25B9473B8();
  v74 = SCVLANInterfaceCreate(v72, v71, v73);
  MEMORY[0x277D82BD8](v73);
  if (v74)
  {
    v56 = v74;
    result = v74;
    v75 = v74;
  }

  else
  {
    v6 = v70;
    static SCError.current(_:)(v58, 0x2FuLL, 2u, &v83);
    v39 = v83;
    v40 = v84;
    v41 = v85;
    v81 = v83;
    LOBYTE(v82) = v84;
    HIDWORD(v82) = v85;
    v7 = sub_25B92A010();
    (*(v67 + 16))(v6, v7, v66);
    v45 = 7;
    v8 = swift_allocObject();
    v9 = v39.n128_u64[1];
    v10 = v40;
    v11 = v41;
    v43 = v8;
    *(v8 + 16) = v39.n128_u64[0];
    *(v8 + 24) = v9;
    *(v8 + 32) = v10;
    *(v8 + 36) = v11;
    sub_25B8A1C38();

    v54 = sub_25B946C18();
    v55 = sub_25B947458();
    v42 = 17;
    v48 = swift_allocObject();
    *(v48 + 16) = 64;
    v49 = swift_allocObject();
    *(v49 + 16) = 8;
    v44 = 32;
    v12 = swift_allocObject();
    v13 = v43;
    v46 = v12;
    *(v12 + 16) = v59;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v46;
    v47 = v14;
    *(v14 + 16) = v60;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v47;
    v51 = v16;
    *(v16 + 16) = v61;
    *(v16 + 24) = v17;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v50 = sub_25B947838();
    v52 = v18;

    v19 = v48;
    v20 = v52;
    *v52 = v62;
    v20[1] = v19;

    v21 = v49;
    v22 = v52;
    v52[2] = v63;
    v22[3] = v21;

    v23 = v51;
    v24 = v52;
    v52[4] = v64;
    v24[5] = v23;
    sub_25B8860FC();

    if (os_log_type_enabled(v54, v55))
    {
      v32 = sub_25B9474D8();
      v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v33 = sub_25B8895FC(1);
      v34 = sub_25B8895FC(0);
      v35 = &v80;
      v80 = v32;
      v36 = &v79;
      v79 = v33;
      v37 = &v78;
      v78 = v34;
      sub_25B889650(2, &v80);
      sub_25B889650(1, v35);
      v25 = v57;
      v76 = v62;
      v77 = v48;
      sub_25B889664(&v76, v35, v36, v37);
      v38 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v76 = v63;
        v77 = v49;
        sub_25B889664(&v76, &v80, &v79, &v78);
        v31[1] = 0;
        v76 = v64;
        v77 = v51;
        sub_25B889664(&v76, &v80, &v79, &v78);
        _os_log_impl(&dword_25B859000, v54, v55, "Unable to create vlan interface: %@", v32, 0xCu);
        sub_25B8896B0(v33);
        sub_25B8896B0(v34);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v54);
    (*(v67 + 8))(v70, v66);
    sub_25B9115BC();
    v26 = swift_allocError();
    v27 = v39.n128_u64[1];
    v28 = v40;
    v29 = v41;
    v31[0] = v26;
    *v30 = v39.n128_u64[0];
    *(v30 + 8) = v27;
    *(v30 + 16) = v28;
    *(v30 + 20) = v29;
    swift_willThrow();
    return v31[2];
  }

  return result;
}

uint64_t SCPreferencesRef.vlanInterfaces()()
{
  v8 = v0;
  v3 = SCVLANInterfaceCopyAll(v0);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB708, "\\z");
    MEMORY[0x277D82BE0](v4);
    sub_25B9176E8();
    sub_25B9478B8();
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v4);
    if (v5)
    {
      v2 = v5;
      goto LABEL_6;
    }
  }

  else
  {
    MEMORY[0x277D82BD8](v3);
  }

  v2 = 0;
LABEL_6:
  v6 = v2;
  if (v2)
  {
    return v6;
  }

  type metadata accessor for SCNetworkInterface();
  return sub_25B947838();
}

id SCPreferencesRef.vlanInterface(matching:)(uint64_t (*a1)(void), uint64_t a2)
{
  v118 = a2;
  v117 = a1;
  v116 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142[1] = 0;
  v142[0] = 0;
  v135 = 0;
  v134 = 0;
  v119 = sub_25B946C48();
  v120 = *(v119 - 8);
  v121 = v120;
  v122 = *(v120 + 64);
  v3 = MEMORY[0x28223BE20](v117);
  v124 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  v123 = v32 - v124;
  v4 = MEMORY[0x28223BE20](v3);
  v125 = v32 - v124;
  v144 = v4;
  v145 = v5;
  v143 = v2;
  v141 = SCPreferencesRef.vlanInterfaces()();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB708, "\\z");
  sub_25B918968();
  sub_25B947418();
  for (i = v127; ; i = v104)
  {
    v114 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB720, "^z");
    sub_25B9475E8();
    v115 = v140;
    if (!v140)
    {
      break;
    }

    v113 = v115;
    v6 = v114;
    v109 = v115;
    v135 = v115;
    v7 = v117();
    v110 = v6;
    v111 = v7;
    v112 = v6;
    if (v6)
    {
      v14 = v123;
      v63 = v112;
      v62 = 0;
      v15 = v112;
      v134 = v63;
      v16 = sub_25B92A010();
      (*(v121 + 16))(v14, v16, v119);
      v17 = v63;
      v71 = 7;
      v69 = swift_allocObject();
      *(v69 + 16) = v63;
      sub_25B8A1C38();

      v82 = sub_25B946C18();
      v64 = v82;
      v81 = sub_25B947448();
      v65 = v81;
      v66 = 17;
      v75 = swift_allocObject();
      v67 = v75;
      *(v75 + 16) = 64;
      v76 = swift_allocObject();
      v68 = v76;
      *(v76 + 16) = 8;
      v70 = 32;
      v18 = swift_allocObject();
      v19 = v69;
      v72 = v18;
      *(v18 + 16) = sub_25B8A3B24;
      *(v18 + 24) = v19;
      v20 = swift_allocObject();
      v21 = v72;
      v73 = v20;
      *(v20 + 16) = sub_25B8A3C9C;
      *(v20 + 24) = v21;
      v22 = swift_allocObject();
      v23 = v73;
      v79 = v22;
      v74 = v22;
      *(v22 + 16) = sub_25B8A3CE8;
      *(v22 + 24) = v23;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
      v77 = sub_25B947838();
      v78 = v24;

      v25 = v75;
      v26 = v78;
      *v78 = sub_25B88B5F4;
      v26[1] = v25;

      v27 = v76;
      v28 = v78;
      v78[2] = sub_25B88B5F4;
      v28[3] = v27;

      v29 = v78;
      v30 = v79;
      v78[4] = sub_25B8A3EB8;
      v29[5] = v30;
      sub_25B8860FC();

      if (os_log_type_enabled(v82, v81))
      {
        v56 = v62;
        v51 = sub_25B9474D8();
        v48 = v51;
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
        v54 = 1;
        v52 = sub_25B8895FC(1);
        v50 = v52;
        v53 = sub_25B8895FC(0);
        v133 = v51;
        v132 = v52;
        v131 = v53;
        v55 = &v133;
        sub_25B889650(2, &v133);
        sub_25B889650(v54, v55);
        v31 = v56;
        v129 = sub_25B88B5F4;
        v130 = v67;
        sub_25B889664(&v129, v55, &v132, &v131);
        v57 = v31;
        v58 = v67;
        v59 = v68;
        v60 = v74;
        v61 = v31;
        if (v31)
        {
          v43 = v58;
          v44 = v59;
          v45 = v60;
          v46 = 0;
          v32[2] = v60;
          v32[1] = v59;

          __break(1u);
        }

        else
        {
          v129 = sub_25B88B5F4;
          v130 = v68;
          sub_25B889664(&v129, &v133, &v132, &v131);
          v38 = 0;
          v39 = v67;
          v40 = v68;
          v41 = v74;
          v42 = 0;
          v129 = sub_25B8A3EB8;
          v130 = v74;
          sub_25B889664(&v129, &v133, &v132, &v131);
          v33 = 0;
          v34 = v67;
          v35 = v68;
          v36 = v74;
          v37 = 0;
          _os_log_impl(&dword_25B859000, v64, v65, "Ignoring vlan interface: %@", v48, 0xCu);
          sub_25B8896B0(v50);
          sub_25B8896B0(v53);
          sub_25B9474B8();

          v47 = v33;
        }
      }

      else
      {

        v47 = v62;
      }

      v32[0] = v47;

      (*(v121 + 8))(v123, v119);
      v105 = v32[0];
    }

    else
    {
      v108 = v109;
      if (v111)
      {
        v107 = v108;
        v106 = v110;
        sub_25B86CFA0(v142);
        return v107;
      }

      v105 = v110;
    }

    v104 = v105;
  }

  v9 = v125;
  sub_25B86CFA0(v142);
  v10 = sub_25B92A010();
  (*(v121 + 16))(v9, v10, v119);
  v102 = sub_25B946C18();
  v99 = v102;
  v101 = sub_25B947458();
  v100 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  v103 = sub_25B947838();
  if (os_log_type_enabled(v102, v101))
  {
    v98 = v114;
    v90 = sub_25B9474D8();
    v86 = v90;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v88 = 0;
    v91 = sub_25B8895FC(0);
    v89 = v91;
    v92 = sub_25B8895FC(v88);
    v139 = v90;
    v138 = v91;
    v137 = v92;
    v93 = 0;
    v94 = &v139;
    sub_25B889650(0, &v139);
    sub_25B889650(v93, v94);
    v136 = v103;
    v95 = v32;
    MEMORY[0x28223BE20](v32);
    v96 = &v32[-6];
    v32[-4] = v11;
    v32[-3] = &v138;
    v32[-2] = &v137;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
    sub_25B8A3F58();
    v12 = v98;
    sub_25B947158();
    if (v12)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_25B859000, v99, v100, "VLAN interface matching predicate not found.", v86, 2u);
      v85 = 0;
      sub_25B8896B0(v89);
      sub_25B8896B0(v92);
      sub_25B9474B8();
    }
  }

  else
  {
  }

  (*(v121 + 8))(v125, v119);
  sub_25B9115BC();
  v83 = 0;
  v84 = swift_allocError();
  SCError.init(context:rawValue:)("vlanInterface(matching:)", 0x18uLL, 2u, 1004, v13);
  swift_willThrow();
  return v83;
}

uint64_t sub_25B937B84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B937BC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B937C04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B937CC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B937D08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B937D48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B937E0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B937E4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B937E8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B937ECC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B937F64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B937FA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_25B937FE4()
{
  v2 = qword_27FBAB768;
  if (!qword_27FBAB768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB758, &qword_25B94C898);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB768);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B93806C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938104()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938144()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938208()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938248()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938288()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B93834C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B93838C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9383CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B93840C()
{
  v3 = v0[2];
  MEMORY[0x277D82BD8](v0[3]);
  v1 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_25B938538()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938578()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9385B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B93867C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9386BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9386FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9387C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938808()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938848()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938920()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938960()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9389A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938A78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938AB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938AF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938BBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938BFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938C3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938D14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938D54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938D94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938E58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938E98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938ED8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938F9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B938FDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B93901C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B9390F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B939134()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B939174()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _s4InfoCMa_0()
{
  v1 = qword_27FBAB788;
  if (!qword_27FBAB788)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_25B939244()
{
  v2 = sub_25B939318();
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

uint64_t sub_25B939318()
{
  v4 = qword_27FBAB798;
  if (!qword_27FBAB798)
  {
    type metadata accessor for SCPreferencesNotification();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB688, &qword_25B94C730);
    v3 = sub_25B947318();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_27FBAB798);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_25B939428()
{
  v2 = qword_27FBAB7A8;
  if (!qword_27FBAB7A8)
  {
    sub_25B946E58();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB7A8);
    return WitnessTable;
  }

  return v2;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.vlanTag()()
{
  v55 = "vlanTag()";
  v56 = sub_25B910408;
  v57 = sub_25B8A3C9C;
  v58 = sub_25B8A3CE8;
  v59 = sub_25B88B5F4;
  v60 = sub_25B88B5F4;
  v61 = sub_25B8A3EB8;
  v80 = 0;
  v75 = 0uLL;
  v76 = 0;
  v69 = 0;
  v63 = sub_25B946C48();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v67 = v26 - v66;
  v80 = MEMORY[0x28223BE20](v62);
  v68 = SCVLANInterfaceGetTag(v80);
  if (v68)
  {
    v53 = v68;
    v51 = v68;
    v69 = v68;
    MEMORY[0x277D82BE0](v68);
    v52 = [(__CFNumber *)v51 integerValue];
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v51);
    return v52;
  }

  else
  {
    v1 = v67;
    static SCError.current(_:)(v55, 9uLL, 2u, &v77);
    v34 = v77;
    v35 = v78;
    v36 = v79;
    v75 = v77;
    LOBYTE(v76) = v78;
    HIDWORD(v76) = v79;
    v2 = sub_25B917470();
    (*(v64 + 16))(v1, v2, v63);
    v40 = 7;
    v3 = swift_allocObject();
    v4 = v34.n128_u64[1];
    v5 = v35;
    v6 = v36;
    v38 = v3;
    *(v3 + 16) = v34.n128_u64[0];
    *(v3 + 24) = v4;
    *(v3 + 32) = v5;
    *(v3 + 36) = v6;
    sub_25B8A1C38();

    v49 = sub_25B946C18();
    v50 = sub_25B947458();
    v37 = 17;
    v43 = swift_allocObject();
    *(v43 + 16) = 64;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v39 = 32;
    v7 = swift_allocObject();
    v8 = v38;
    v41 = v7;
    *(v7 + 16) = v56;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v41;
    v42 = v9;
    *(v9 + 16) = v57;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v42;
    v46 = v11;
    *(v11 + 16) = v58;
    *(v11 + 24) = v12;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v45 = sub_25B947838();
    v47 = v13;

    v14 = v43;
    v15 = v47;
    *v47 = v59;
    v15[1] = v14;

    v16 = v44;
    v17 = v47;
    v47[2] = v60;
    v17[3] = v16;

    v18 = v46;
    v19 = v47;
    v47[4] = v61;
    v19[5] = v18;
    sub_25B8860FC();

    if (os_log_type_enabled(v49, v50))
    {
      v27 = sub_25B9474D8();
      v26[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v28 = sub_25B8895FC(1);
      v29 = sub_25B8895FC(0);
      v30 = &v74;
      v74 = v27;
      v31 = &v73;
      v73 = v28;
      v32 = &v72;
      v72 = v29;
      sub_25B889650(2, &v74);
      sub_25B889650(1, v30);
      v20 = v54;
      v70 = v59;
      v71 = v43;
      sub_25B889664(&v70, v30, v31, v32);
      v33 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v70 = v60;
        v71 = v44;
        sub_25B889664(&v70, &v74, &v73, &v72);
        v26[2] = 0;
        v70 = v61;
        v71 = v46;
        sub_25B889664(&v70, &v74, &v73, &v72);
        _os_log_impl(&dword_25B859000, v49, v50, "Unable to get VLAN interface tag: %@", v27, 0xCu);
        sub_25B8896B0(v28);
        sub_25B8896B0(v29);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v49);
    (*(v64 + 8))(v67, v63);
    sub_25B9115BC();
    v21 = swift_allocError();
    v22 = v34.n128_u64[1];
    v23 = v35;
    v24 = v36;
    v26[1] = v21;
    *v25 = v34.n128_u64[0];
    *(v25 + 8) = v22;
    *(v25 + 16) = v23;
    *(v25 + 20) = v24;
    swift_willThrow();
    return v26[0];
  }
}

SCNetworkInterfaceRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.vlanPhysicalInterface()()
{
  v53 = "vlanPhysicalInterface()";
  v54 = sub_25B910408;
  v55 = sub_25B8A3C9C;
  v56 = sub_25B8A3CE8;
  v57 = sub_25B88B5F4;
  v58 = sub_25B88B5F4;
  v59 = sub_25B8A3EB8;
  v78 = 0;
  v73 = 0uLL;
  v74 = 0;
  v67 = 0;
  v61 = sub_25B946C48();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v65 = v26 - v64;
  v78 = MEMORY[0x28223BE20](v60);
  v66 = SCVLANInterfaceGetPhysicalInterface(v78);
  if (v66)
  {
    v51 = v66;
    result = v66;
    v67 = v66;
  }

  else
  {
    v1 = v65;
    static SCError.current(_:)(v53, 0x17uLL, 2u, &v75);
    v34 = v75;
    v35 = v76;
    v36 = v77;
    v73 = v75;
    LOBYTE(v74) = v76;
    HIDWORD(v74) = v77;
    v2 = sub_25B917470();
    (*(v62 + 16))(v1, v2, v61);
    v40 = 7;
    v3 = swift_allocObject();
    v4 = v34.n128_u64[1];
    v5 = v35;
    v6 = v36;
    v38 = v3;
    *(v3 + 16) = v34.n128_u64[0];
    *(v3 + 24) = v4;
    *(v3 + 32) = v5;
    *(v3 + 36) = v6;
    sub_25B8A1C38();

    v49 = sub_25B946C18();
    v50 = sub_25B947458();
    v37 = 17;
    v43 = swift_allocObject();
    *(v43 + 16) = 64;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v39 = 32;
    v7 = swift_allocObject();
    v8 = v38;
    v41 = v7;
    *(v7 + 16) = v54;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v41;
    v42 = v9;
    *(v9 + 16) = v55;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v42;
    v46 = v11;
    *(v11 + 16) = v56;
    *(v11 + 24) = v12;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v45 = sub_25B947838();
    v47 = v13;

    v14 = v43;
    v15 = v47;
    *v47 = v57;
    v15[1] = v14;

    v16 = v44;
    v17 = v47;
    v47[2] = v58;
    v17[3] = v16;

    v18 = v46;
    v19 = v47;
    v47[4] = v59;
    v19[5] = v18;
    sub_25B8860FC();

    if (os_log_type_enabled(v49, v50))
    {
      v27 = sub_25B9474D8();
      v26[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v28 = sub_25B8895FC(1);
      v29 = sub_25B8895FC(0);
      v30 = &v72;
      v72 = v27;
      v31 = &v71;
      v71 = v28;
      v32 = &v70;
      v70 = v29;
      sub_25B889650(2, &v72);
      sub_25B889650(1, v30);
      v20 = v52;
      v68 = v57;
      v69 = v43;
      sub_25B889664(&v68, v30, v31, v32);
      v33 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v68 = v58;
        v69 = v44;
        sub_25B889664(&v68, &v72, &v71, &v70);
        v26[2] = 0;
        v68 = v59;
        v69 = v46;
        sub_25B889664(&v68, &v72, &v71, &v70);
        _os_log_impl(&dword_25B859000, v49, v50, "Unable to get VLAN physical interface: %@", v27, 0xCu);
        sub_25B8896B0(v28);
        sub_25B8896B0(v29);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v49);
    (*(v62 + 8))(v65, v61);
    sub_25B9115BC();
    v21 = swift_allocError();
    v22 = v34.n128_u64[1];
    v23 = v35;
    v24 = v36;
    v26[1] = v21;
    *v25 = v34.n128_u64[0];
    *(v25 + 8) = v22;
    *(v25 + 16) = v23;
    *(v25 + 20) = v24;
    swift_willThrow();
    return v26[3];
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.vlanDisplayName(_:)(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;
  v55 = "vlanDisplayName(_:)";
  v56 = sub_25B910408;
  v57 = sub_25B8A3C9C;
  v58 = sub_25B8A3CE8;
  v59 = sub_25B88B5F4;
  v60 = sub_25B88B5F4;
  v61 = sub_25B8A3EB8;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  v77 = 0uLL;
  v78 = 0;
  v62 = sub_25B946C48();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](object);
  v66 = v29 - v65;
  v83 = v3;
  v84 = v2;
  v82 = v1;
  sub_25B946ED8();
  v69 = sub_25B946F58();
  v71 = SCVLANInterfaceSetLocalizedDisplayName(v68, v69);
  MEMORY[0x277D82BD8](v69);

  if (!v71)
  {
    v4 = v66;
    static SCError.current(_:)(v55, 0x13uLL, 2u, &v79);
    v37 = v79;
    v38 = v80;
    v39 = v81;
    v77 = v79;
    LOBYTE(v78) = v80;
    HIDWORD(v78) = v81;
    v5 = sub_25B917470();
    (*(v63 + 16))(v4, v5, v62);
    v43 = 7;
    v6 = swift_allocObject();
    v7 = v37.n128_u64[1];
    v8 = v38;
    v9 = v39;
    v41 = v6;
    *(v6 + 16) = v37.n128_u64[0];
    *(v6 + 24) = v7;
    *(v6 + 32) = v8;
    *(v6 + 36) = v9;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v40 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v10 = swift_allocObject();
    v11 = v41;
    v44 = v10;
    *(v10 + 16) = v56;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v44;
    v45 = v12;
    *(v12 + 16) = v57;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v45;
    v49 = v14;
    *(v14 + 16) = v58;
    *(v14 + 24) = v15;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v16;

    v17 = v46;
    v18 = v50;
    *v50 = v59;
    v18[1] = v17;

    v19 = v47;
    v20 = v50;
    v50[2] = v60;
    v20[3] = v19;

    v21 = v49;
    v22 = v50;
    v50[4] = v61;
    v22[5] = v21;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1);
      v32 = sub_25B8895FC(0);
      v33 = &v76;
      v76 = v30;
      v34 = &v75;
      v75 = v31;
      v35 = &v74;
      v74 = v32;
      sub_25B889650(2, &v76);
      sub_25B889650(1, v33);
      v23 = v54;
      v72 = v59;
      v73 = v46;
      sub_25B889664(&v72, v33, v34, v35);
      v36 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v72 = v60;
        v73 = v47;
        sub_25B889664(&v72, &v76, &v75, &v74);
        v29[1] = 0;
        v72 = v61;
        v73 = v49;
        sub_25B889664(&v72, &v76, &v75, &v74);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to set VLAN interface localized display name: %@", v30, 0xCu);
        sub_25B8896B0(v31);
        sub_25B8896B0(v32);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v63 + 8))(v66, v62);
    sub_25B9115BC();
    v24 = swift_allocError();
    v25 = v37.n128_u64[1];
    v26 = v38;
    v27 = v39;
    v29[0] = v24;
    *v28 = v37.n128_u64[0];
    *(v28 + 8) = v25;
    *(v28 + 16) = v26;
    *(v28 + 20) = v27;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.vlanRemove()()
{
  v51 = "vlanRemove()";
  v52 = sub_25B910408;
  v53 = sub_25B8A3C9C;
  v54 = sub_25B8A3CE8;
  v55 = sub_25B88B5F4;
  v56 = sub_25B88B5F4;
  v57 = sub_25B8A3EB8;
  v74 = 0;
  v69 = 0uLL;
  v70 = 0;
  v59 = sub_25B946C48();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v63 = v25 - v62;
  v74 = MEMORY[0x28223BE20](v58);
  if (!SCVLANInterfaceRemove(v74))
  {
    v0 = v63;
    static SCError.current(_:)(v51, 0xCuLL, 2u, &v71);
    v33 = v71;
    v34 = v72;
    v35 = v73;
    v69 = v71;
    LOBYTE(v70) = v72;
    HIDWORD(v70) = v73;
    v1 = sub_25B917470();
    (*(v60 + 16))(v0, v1, v59);
    v39 = 7;
    v2 = swift_allocObject();
    v3 = v33.n128_u64[1];
    v4 = v34;
    v5 = v35;
    v37 = v2;
    *(v2 + 16) = v33.n128_u64[0];
    *(v2 + 24) = v3;
    *(v2 + 32) = v4;
    *(v2 + 36) = v5;
    sub_25B8A1C38();

    v48 = sub_25B946C18();
    v49 = sub_25B947458();
    v36 = 17;
    v42 = swift_allocObject();
    *(v42 + 16) = 64;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v38 = 32;
    v6 = swift_allocObject();
    v7 = v37;
    v40 = v6;
    *(v6 + 16) = v52;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v40;
    v41 = v8;
    *(v8 + 16) = v53;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v41;
    v45 = v10;
    *(v10 + 16) = v54;
    *(v10 + 24) = v11;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v44 = sub_25B947838();
    v46 = v12;

    v13 = v42;
    v14 = v46;
    *v46 = v55;
    v14[1] = v13;

    v15 = v43;
    v16 = v46;
    v46[2] = v56;
    v16[3] = v15;

    v17 = v45;
    v18 = v46;
    v46[4] = v57;
    v18[5] = v17;
    sub_25B8860FC();

    if (os_log_type_enabled(v48, v49))
    {
      v26 = sub_25B9474D8();
      v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v27 = sub_25B8895FC(1);
      v28 = sub_25B8895FC(0);
      v29 = &v68;
      v68 = v26;
      v30 = &v67;
      v67 = v27;
      v31 = &v66;
      v66 = v28;
      sub_25B889650(2, &v68);
      sub_25B889650(1, v29);
      v19 = v50;
      v64 = v55;
      v65 = v42;
      sub_25B889664(&v64, v29, v30, v31);
      v32 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v64 = v56;
        v65 = v43;
        sub_25B889664(&v64, &v68, &v67, &v66);
        v25[1] = 0;
        v64 = v57;
        v65 = v45;
        sub_25B889664(&v64, &v68, &v67, &v66);
        _os_log_impl(&dword_25B859000, v48, v49, "Unable to remove VLAN interface: %@", v26, 0xCu);
        sub_25B8896B0(v27);
        sub_25B8896B0(v28);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v48);
    (*(v60 + 8))(v63, v59);
    sub_25B9115BC();
    v20 = swift_allocError();
    v21 = v33.n128_u64[1];
    v22 = v34;
    v23 = v35;
    v25[0] = v20;
    *v24 = v33.n128_u64[0];
    *(v24 + 8) = v21;
    *(v24 + 16) = v22;
    *(v24 + 20) = v23;
    swift_willThrow();
  }
}

uint64_t sub_25B93B5B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B93B5F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B93B630()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B93B6F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B93B734()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B93B774()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B93B838()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B93B878()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B93B8B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B93B97C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B93B9BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B93B9FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B93BA64@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC11NetworkInfo4HTTP_logger;
  v2 = sub_25B946C48();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_25B93BAD8()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo4HTTP_metrics);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_25B93BB48(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC11NetworkInfo4HTTP_metrics);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_25B93BC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v17 = a1;
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v19 = a5;
  v21 = a6;
  v7 = v6;
  v16[3] = v7;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB7B8, &qword_25B94C8D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v16 - v18;
  v28 = MEMORY[0x28223BE20](v17);
  v27 = v9;
  v26 = v10;
  v25 = v11;
  v23 = v12;
  v24 = a6;
  v22 = v13;

  v14 = sub_25B946AD8();
  (*(*(v14 - 8) + 56))(v20, 1);
  v19(v20);
  sub_25B93BDB4(v20);
}

uint64_t sub_25B93BDB4(uint64_t a1)
{
  v3 = sub_25B946AD8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_25B93C04C(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB7B8, &qword_25B94C8D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v10 = &v4 - v9;
  sub_25B93D96C(v2, &v4 - v9);
  v11 = sub_25B946AD8();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  if ((*(v12 + 48))(v10, 1) == 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = sub_25B946AA8();
    (*(v12 + 8))(v10, v11);
    v6 = v5;
  }

  v4 = v6;
  (*(v7 + 16))();
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B93C328(uint64_t a1)
{
  v2[18] = v1;
  v2[17] = a1;
  v2[4] = v2;
  v2[5] = 0;
  v2[6] = 0;
  v2[7] = 0;
  v2[8] = 0;
  v2[9] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v2[16] = 0;
  v3 = sub_25B946B48();
  v2[19] = v3;
  v8 = *(v3 - 8);
  v2[20] = v8;
  v4 = *(v8 + 64) + 15;
  v2[21] = swift_task_alloc();
  v5 = sub_25B946AD8();
  v2[22] = v5;
  v9 = *(v5 - 8);
  v2[23] = v9;
  v10 = *(v9 + 64);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[5] = a1;
  v2[6] = v1;
  v6 = v2[4];

  return MEMORY[0x2822009F8](sub_25B93C4E4, 0);
}

uint64_t sub_25B93C4E4()
{
  v16 = v0[25];
  v15 = v0[24];
  v14 = v0[23];
  v17 = v0[22];
  v9 = v0[21];
  v1 = v0[20];
  v2 = v0[19];
  v19 = v0[18];
  v11 = v0[17];
  v0[4] = v0;
  (*(v1 + 16))();
  sub_25B90858C();
  sub_25B93D190();
  sub_25B946AC8();
  sub_25B946F48();
  sub_25B946A98();
  v10 = [objc_opt_self() defaultSessionConfiguration];
  v0[26] = v10;
  v0[7] = v10;
  [v10 setRequestCachePolicy_];
  [v10 setTimeoutIntervalForRequest_];
  [v10 setTimeoutIntervalForResource_];
  sub_25B93D19C();
  MEMORY[0x277D82BE0](v10);
  MEMORY[0x277D82BE0](v19);
  v13 = sub_25B93D200(v10, v19, 0);
  v0[27] = v13;
  v0[8] = v13;
  type metadata accessor for NetworkInfoURLRetrievalResult();
  v12 = NetworkInfoURLRetrievalResult.__allocating_init()();
  v0[28] = v12;
  v0[9] = v12;
  v3 = sub_25B946B28();
  sub_25B8E3D54(v3, v4);
  (*(v14 + 16))(v15, v16, v17);
  MEMORY[0x277D82BE0](v19);
  v5 = *(MEMORY[0x277CC9D18] + 4);
  v6 = swift_task_alloc();
  v18[29] = v6;
  *v6 = v18[4];
  v6[1] = sub_25B93C780;
  v7 = v18[24];

  return MEMORY[0x28211ECF8](v7, v19);
}

uint64_t sub_25B93C780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *v4;
  v6 = *(*v4 + 232);
  v16[4] = *v4;
  v17 = v16 + 4;
  v16[30] = v3;
  v16[31] = a1;
  v16[32] = a2;
  v16[33] = a3;

  if (v3)
  {
    v11 = *v17;
    v10 = sub_25B93D014;
  }

  else
  {
    v14 = v16[24];
    v13 = v16[23];
    v15 = v16[22];
    v7 = v16[18];
    swift_unknownObjectRelease();
    v8 = *(v13 + 8);
    v16[34] = v8;
    v16[35] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v14, v15);
    v9 = *v17;
    v10 = sub_25B93C954;
  }

  return MEMORY[0x2822009F8](v10, 0);
}

uint64_t sub_25B93C954()
{
  v34 = v0[33];
  v1 = v0[32];
  v2 = v0[31];
  v0[4] = v0;
  v0[10] = v34;
  sub_25B93D284(v2, v1);
  MEMORY[0x277D82BE0](v34);
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v32 = v35;
  }

  else
  {
    MEMORY[0x277D82BD8](v33[33]);
    v32 = 0;
  }

  if (v32)
  {
    v3 = v33[28];
    v31 = v33[27];
    v30 = v33[18];
    v33[11] = v32;
    sub_25B8E3F98([v32 statusCode]);
    [v31 invalidateAndCancel];
    v33[12] = sub_25B93BAD8();
    if (v33[12])
    {
      v26 = v33[12];
      MEMORY[0x277D82BE0](v26);
      sub_25B8A7238(v33 + 12);
      v27 = [v26 transactionMetrics];
      sub_25B93D300();
      v28 = sub_25B9471C8();
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      v29 = v28;
    }

    else
    {
      sub_25B8A7238(v33 + 12);
      v29 = 0;
    }

    v33[13] = v29;
    if (v33[13])
    {
      v36 = v33[13];
    }

    else
    {
      sub_25B93D300();
      v36 = sub_25B947838();
      if (v33[13])
      {
        sub_25B86CFA0(v33 + 13);
      }
    }

    v33[14] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB7D0, &qword_25B94C8E8);
    sub_25B93D364();
    sub_25B947418();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAB7E0, &qword_25B94C8F0);
      sub_25B9475E8();
      v25 = v33[15];
      if (!v25)
      {
        break;
      }

      v4 = v33[28];
      v33[16] = v25;
      sub_25B8E69E8(v25);
      MEMORY[0x277D82BD8](v25);
    }

    v22 = v33[35];
    v23 = v33[34];
    v17 = v33[33];
    v18 = v33[27];
    v19 = v33[26];
    v20 = v33[25];
    v21 = v33[22];
    sub_25B86CFA0(v33 + 2);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    v23(v20, v21);
    v24 = v33[28];
  }

  else
  {
    v15 = v33[35];
    v16 = v33[34];
    v11 = v33[27];
    v12 = v33[26];
    v13 = v33[25];
    v14 = v33[22];
    MEMORY[0x277D82BD8](v33[33]);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    v16(v13, v14);
    v24 = v33[28];
  }

  v5 = v33[25];
  v9 = v33[24];
  v10 = v33[21];

  v6 = *(v33[4] + 8);
  v7 = v33[4];

  return v6(v24);
}

uint64_t sub_25B93D014()
{
  v8 = v0[28];
  v9 = v0[27];
  v10 = v0[26];
  v13 = v0[25];
  v14 = v0[24];
  v7 = v0[23];
  v11 = v0[22];
  v15 = v0[21];
  v1 = v0[18];
  v0[4] = v0;
  swift_unknownObjectRelease();
  v12 = *(v7 + 8);
  v12(v14, v11);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v12(v13, v11);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[30];

  return v3();
}

unint64_t sub_25B93D19C()
{
  v2 = qword_27FBAB7C0;
  if (!qword_27FBAB7C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27FBAB7C0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_25B93D200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [swift_getObjCClassFromMetadata() sessionWithConfiguration:a1 delegate:a2 delegateQueue:a3];
  MEMORY[0x277D82BD8](a3);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  return v6;
}

uint64_t sub_25B93D284(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

unint64_t sub_25B93D300()
{
  v2 = qword_27FBAB7C8;
  if (!qword_27FBAB7C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27FBAB7C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_25B93D364()
{
  v2 = qword_27FBAB7D8;
  if (!qword_27FBAB7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB7D0, &qword_25B94C8E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB7D8);
    return WitnessTable;
  }

  return v2;
}

id HTTP.init()()
{
  v3 = 0;
  sub_25B946F48();
  sub_25B946F48();
  sub_25B946C28();
  *OBJC_IVAR____TtC11NetworkInfo4HTTP_metrics = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for HTTP();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

uint64_t type metadata accessor for HTTP()
{
  v1 = qword_27FBAB850;
  if (!qword_27FBAB850)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

id HTTP.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HTTP();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B93D67C()
{
  v2 = sub_25B946C48();
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

uint64_t dispatch thunk of HTTP.fetchURL(url:)(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v3 = *((*v1 & *MEMORY[0x277D85000]) + 0x88);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_25B8A4CA0;

  return v8(a1);
}

void *sub_25B93D96C(const void *a1, void *a2)
{
  v6 = sub_25B946AD8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB7B8, &qword_25B94C8D8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_25B93DAD0@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;

  *a2 = sub_25B93DB80();
}

uint64_t sub_25B93DB28(double *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  sub_25B93DBD8(v4);
}

double sub_25B93DB80()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  swift_endAccess();
  return v2;
}

uint64_t sub_25B93DBD8(double a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
  return swift_endAccess();
}

uint64_t sub_25B93DC38@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;

  *a2 = sub_25B93DCE8();
}

uint64_t sub_25B93DC90(double *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  sub_25B93DD40(v4);
}

double sub_25B93DCE8()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  return v2;
}

uint64_t sub_25B93DD40(double a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return swift_endAccess();
}

uint64_t sub_25B93DDA0@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;

  *a2 = sub_25B93DE50();
}

uint64_t sub_25B93DDF8(double *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  sub_25B93DEA8(v4);
}

double sub_25B93DE50()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  swift_endAccess();
  return v2;
}

uint64_t sub_25B93DEA8(double a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
  return swift_endAccess();
}

uint64_t sub_25B93DF08(void *a1, uint64_t *a2)
{
  sub_25B898FF0(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  sub_25B93DF7C(v4, v6);
}

uint64_t sub_25B93DF7C(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  swift_beginAccess();
  v3 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  swift_endAccess();
}

uint64_t sub_25B93E00C(uint64_t a1)
{
  v35 = a1;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB860, &qword_25B94C930);
  v36 = *(v42 - 8);
  v37 = v42 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v41 = v12 - v38;
  v56 = v12 - v38;
  v55 = MEMORY[0x28223BE20](v35);
  v54 = v1;
  v39 = v55[3];
  v40 = v55[4];
  __swift_project_boxed_opaque_existential_1(v55, v39);
  sub_25B94058C();
  sub_25B9479C8();
  sub_25B8837AC();
  v2 = v43;
  v53 = 0;
  sub_25B947788();
  v44 = v2;
  v45 = v2;
  if (v2)
  {
    v18 = v45;
    result = (*(v36 + 8))(v41, v42);
    v19 = v18;
  }

  else
  {
    sub_25B883918();
    v3 = v44;
    v52 = 1;
    sub_25B947788();
    v33 = v3;
    v34 = v3;
    if (v3)
    {
      v17 = v34;
      result = (*(v36 + 8))(v41, v42);
      v19 = v17;
    }

    else
    {
      sub_25B868B34();
      v4 = v33;
      v51 = 2;
      sub_25B947788();
      v31 = v4;
      v32 = v4;
      if (v4)
      {
        v16 = v32;
        result = (*(v36 + 8))(v41, v42);
        v19 = v16;
      }

      else
      {
        sub_25B93DB80();
        v5 = v31;
        v50 = 3;
        sub_25B947758();
        v29 = v5;
        v30 = v5;
        if (v5)
        {
          v15 = v30;
          result = (*(v36 + 8))(v41, v42);
          v19 = v15;
        }

        else
        {
          sub_25B883E20();
          v6 = v29;
          v49 = 4;
          sub_25B947758();
          v27 = v6;
          v28 = v6;
          if (v6)
          {
            v14 = v28;
            result = (*(v36 + 8))(v41, v42);
            v19 = v14;
          }

          else
          {
            sub_25B93DCE8();
            v7 = v27;
            v48 = 5;
            sub_25B947758();
            v25 = v7;
            v26 = v7;
            if (v7)
            {
              v13 = v26;
              result = (*(v36 + 8))(v41, v42);
              v19 = v13;
            }

            else
            {
              sub_25B93DE50();
              v8 = v25;
              v47 = 6;
              sub_25B947758();
              v23 = v8;
              v24 = v8;
              if (v8)
              {
                v12[1] = v24;
                return (*(v36 + 8))(v41, v42);
              }

              else
              {
                sub_25B88417C();
                v9 = v23;
                v20 = v10;
                v46 = 7;
                sub_25B9476F8();
                v21 = v9;
                v22 = v9;
                if (v9)
                {
                  v12[0] = v22;
                }

                return (*(v36 + 8))(v41, v42);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_25B93E5B4(uint64_t a1, uint64_t a2)
{
  v30[2] = a1;
  v30[3] = a2;
  sub_25B946ED8();
  v30[0] = sub_25B946F48();
  v30[1] = v2;
  v29[2] = a1;
  v29[3] = a2;
  v22 = MEMORY[0x25F870E10](v30[0], v2, a1, a2);
  sub_25B86AEEC(v30);
  if (v22)
  {

    v31 = 0;
    v19 = 0;
LABEL_18:

    return v19;
  }

  sub_25B946ED8();
  v29[0] = sub_25B946F48();
  v29[1] = v3;
  v28[2] = a1;
  v28[3] = a2;
  v18 = MEMORY[0x25F870E10](v29[0], v3, a1, a2);
  sub_25B86AEEC(v29);
  if (v18)
  {

    v31 = 1;
    v19 = 1;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v28[0] = sub_25B946F48();
  v28[1] = v4;
  v27[2] = a1;
  v27[3] = a2;
  v17 = MEMORY[0x25F870E10](v28[0], v4, a1, a2);
  sub_25B86AEEC(v28);
  if (v17)
  {

    v31 = 2;
    v19 = 2;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v27[0] = sub_25B946F48();
  v27[1] = v5;
  v26[2] = a1;
  v26[3] = a2;
  v16 = MEMORY[0x25F870E10](v27[0], v5, a1, a2);
  sub_25B86AEEC(v27);
  if (v16)
  {

    v31 = 3;
    v19 = 3;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v26[0] = sub_25B946F48();
  v26[1] = v6;
  v25[2] = a1;
  v25[3] = a2;
  v15 = MEMORY[0x25F870E10](v26[0], v6, a1, a2);
  sub_25B86AEEC(v26);
  if (v15)
  {

    v31 = 4;
    v19 = 4;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v25[0] = sub_25B946F48();
  v25[1] = v7;
  v24[2] = a1;
  v24[3] = a2;
  v14 = MEMORY[0x25F870E10](v25[0], v7, a1, a2);
  sub_25B86AEEC(v25);
  if (v14)
  {

    v31 = 5;
    v19 = 5;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v24[0] = sub_25B946F48();
  v24[1] = v8;
  v23[2] = a1;
  v23[3] = a2;
  v13 = MEMORY[0x25F870E10](v24[0], v8, a1, a2);
  sub_25B86AEEC(v24);
  if (v13)
  {

    v31 = 6;
    v19 = 6;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v23[0] = sub_25B946F48();
  v23[1] = v9;
  v12 = MEMORY[0x25F870E10](v23[0], v9, a1, a2);
  sub_25B86AEEC(v23);
  if (v12)
  {

    v31 = 7;
    v19 = 7;
    goto LABEL_18;
  }

  return 8;
}

uint64_t sub_25B93ED6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B93E5B4(a1, a2);
  *a3 = result;
  return result;
}

void *sub_25B93EEA8()
{
  *(v0 + 16) = 0;
  *(v0 + 20) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_25B947358();
  result = v3;
  v3[7] = v2;
  v3[8] = 0;
  v3[9] = 0;
  return result;
}

uint64_t SummaryTraceRouteResult.__allocating_init(from:)(uint64_t *a1)
{
  swift_allocObject();
  v5 = SummaryTraceRouteResult.init(from:)(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t SummaryTraceRouteResult.init(from:)(uint64_t *a1)
{
  v81 = a1;
  v97 = 0;
  v96 = 0;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB878, &qword_25B94C938);
  v78 = *(v77 - 8);
  v79 = v77 - 8;
  v80 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v82 = v25 - v80;
  v97 = MEMORY[0x28223BE20](v81);
  v96 = v1;
  *(v1 + 16) = 0;
  *(v1 + 20) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  sub_25B947358();
  v2 = v81;
  *(v1 + 56) = v3;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  v84 = v2[3];
  v85 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v84);
  sub_25B94058C();
  v4 = v83;
  sub_25B9479A8();
  v86 = v4;
  v87 = v4;
  if (v4)
  {
    v33 = v87;
  }

  else
  {
    v95[31] = 0;
    v5 = sub_25B9476E8();
    v73 = 0;
    v74 = v5;
    v75 = 0;
    v68 = v5;
    v69 = v95;
    swift_beginAccess();
    *(v76 + 16) = v68;
    swift_endAccess();
    v6 = v73;
    v94[31] = 1;
    v7 = sub_25B9476E8();
    v70 = v6;
    v71 = v7;
    v72 = v6;
    if (v6)
    {
      v32 = v72;
      (*(v78 + 8))(v82, v77);
      v33 = v32;
    }

    else
    {
      v63 = v71;
      v64 = v94;
      swift_beginAccess();
      *(v76 + 20) = v63;
      swift_endAccess();
      v8 = v70;
      v93[31] = 2;
      v9 = sub_25B9476E8();
      v65 = v8;
      v66 = v9;
      v67 = v8;
      if (v8)
      {
        v31 = v67;
        (*(v78 + 8))(v82, v77);
        v33 = v31;
      }

      else
      {
        v58 = v66;
        v59 = v93;
        swift_beginAccess();
        *(v76 + 24) = v58;
        swift_endAccess();
        v10 = v65;
        v92[31] = 3;
        sub_25B9476B8();
        v60 = v10;
        v61 = v11;
        v62 = v10;
        if (v10)
        {
          v30 = v62;
          (*(v78 + 8))(v82, v77);
          v33 = v30;
        }

        else
        {
          v53 = v61;
          v54 = v92;
          swift_beginAccess();
          *(v76 + 32) = v53;
          swift_endAccess();
          v12 = v60;
          v91[31] = 4;
          sub_25B9476B8();
          v55 = v12;
          v56 = v13;
          v57 = v12;
          if (v12)
          {
            v29 = v57;
            (*(v78 + 8))(v82, v77);
            v33 = v29;
          }

          else
          {
            v48 = v56;
            v49 = v91;
            swift_beginAccess();
            *(v76 + 40) = v48;
            swift_endAccess();
            v14 = v55;
            v90[31] = 5;
            sub_25B9476B8();
            v50 = v14;
            v51 = v15;
            v52 = v14;
            if (v14)
            {
              v28 = v52;
              (*(v78 + 8))(v82, v77);
              v33 = v28;
            }

            else
            {
              v43 = v51;
              v44 = v90;
              swift_beginAccess();
              *(v76 + 48) = v43;
              swift_endAccess();
              v16 = v50;
              v89[31] = 6;
              sub_25B9476B8();
              v45 = v16;
              v46 = v17;
              v47 = v16;
              if (v16)
              {
                v27 = v47;
                (*(v78 + 8))(v82, v77);
                v33 = v27;
              }

              else
              {
                v37 = v46;
                v38 = v89;
                swift_beginAccess();
                *(v76 + 56) = v37;
                swift_endAccess();
                v18 = v45;
                v88[31] = 7;
                v19 = sub_25B947668();
                v39 = v18;
                v40 = v19;
                v41 = v20;
                v42 = v18;
                if (!v18)
                {
                  v35 = v41;
                  v34 = v40;
                  v36 = v88;
                  swift_beginAccess();
                  v21 = v35;
                  v22 = v76;
                  v23 = *(v76 + 72);
                  *(v76 + 64) = v34;
                  *(v22 + 72) = v21;

                  swift_endAccess();
                  (*(v78 + 8))(v82, v77);
                  __swift_destroy_boxed_opaque_existential_1(v81);
                  return v76;
                }

                v26 = v42;
                (*(v78 + 8))(v82, v77);
                v33 = v26;
              }
            }
          }
        }
      }
    }
  }

  v25[1] = v33;

  __swift_destroy_boxed_opaque_existential_1(v81);
  return v25[2];
}

uint64_t sub_25B93F714@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SummaryTraceRouteResult.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t TraceRouteResultSet.destination.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_25B946ED8();
  return v2;
}

uint64_t TraceRouteResultSet.destination.setter(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v3 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t TraceRouteResultSet.summary.getter()
{
  v2 = *(v0 + 16);
  sub_25B946ED8();
  return v2;
}

uint64_t TraceRouteResultSet.summary.setter(uint64_t a1)
{
  sub_25B946ED8();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t TraceRouteResultSet.encode(to:)(uint64_t a1)
{
  v7 = a1;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB880, &qword_25B94C940);
  v8 = *(v18 - 8);
  v9 = v18 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v5 - v10;
  v26 = v5 - v10;
  v25 = MEMORY[0x28223BE20](v7);
  v16 = *v1;
  v17 = v1[1];
  v11 = v1[2];
  v24 = v1;
  v12 = v25[3];
  v13 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v12);
  sub_25B940684();
  sub_25B9479C8();
  v2 = v15;
  sub_25B946ED8();
  v23 = 0;
  sub_25B9476F8();
  v19 = v2;
  v20 = v2;
  if (v2)
  {
    v5[1] = v20;

    return (*(v8 + 8))(v14, v18);
  }

  else
  {

    sub_25B946ED8();
    v5[5] = &v22;
    v22 = v11;
    v5[3] = &v21;
    v21 = 1;
    v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB890, &qword_25B94C948);
    sub_25B940700();
    v3 = v19;
    sub_25B947708();
    v5[6] = v3;
    v6 = v3;
    if (v3)
    {
      v5[0] = v6;
    }

    sub_25B86CFA0(&v22);
    return (*(v8 + 8))(v14, v18);
  }
}

uint64_t sub_25B93FC20(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  sub_25B946ED8();
  v12[0] = sub_25B946F48();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x25F870E10](v12[0], v2, a1, a2);
  sub_25B86AEEC(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  sub_25B946ED8();
  v11[0] = sub_25B946F48();
  v11[1] = v3;
  v6 = MEMORY[0x25F870E10](v11[0], v3, a1, a2);
  sub_25B86AEEC(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_25B93FEB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_25B93FF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B93FC20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t TraceRouteResultSet.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v19 = a2;
  v20 = a1;
  v34 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB8B0, &qword_25B94C950);
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v7 - v24;
  v34 = MEMORY[0x28223BE20](v20);
  v35 = 0;
  v36 = 0;
  v27 = v34[3];
  v28 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v27);
  sub_25B940684();
  v2 = v26;
  sub_25B9479A8();
  v29 = v2;
  v30 = v2;
  if (v2)
  {
    v9 = v30;
  }

  else
  {
    v33 = 0;
    v3 = sub_25B947668();
    v15 = 0;
    v16 = v3;
    v17 = v4;
    v18 = 0;
    v35 = v3;
    v36 = v4;

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB890, &qword_25B94C948);
    v11 = &v31;
    v31 = 1;
    sub_25B9408BC();
    v5 = v15;
    sub_25B9476D8();
    v13 = v5;
    v14 = v5;
    if (!v5)
    {
      v10 = &v35;
      v37 = v32;
      (*(v22 + 8))(v25, v21);
      sub_25B9409D4(v10, v19);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return sub_25B940A34(v10);
    }

    v8 = v14;
    (*(v22 + 8))(v25, v21);
    v9 = v8;
  }

  v7 = v9;
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_25B86AEEC(&v35);
}

uint64_t sub_25B940320()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  sub_25B946ED8();
  swift_endAccess();
  return v2;
}

uint64_t sub_25B94037C(uint64_t a1)
{
  sub_25B946ED8();
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t sub_25B9403F4()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  sub_25B946ED8();
  swift_endAccess();
  return v2;
}

uint64_t sub_25B940450(uint64_t a1)
{
  sub_25B946ED8();
  swift_beginAccess();
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;

  swift_endAccess();
}

uint64_t JSONTracerouteDelegate.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB8C8, &qword_25B94C958);
  sub_25B947838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB60, &qword_25B94C960);
  *(v0 + 16) = sub_25B946EC8();
  sub_25B947838();
  v1 = sub_25B946EC8();
  result = v3;
  *(v3 + 24) = v1;
  return result;
}

unint64_t sub_25B94058C()
{
  v2 = qword_27FBAB868;
  if (!qword_27FBAB868)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB868);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B940608()
{
  v2 = qword_27FBAB870;
  if (!qword_27FBAB870)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB870);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B940684()
{
  v2 = qword_27FBAB888;
  if (!qword_27FBAB888)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB888);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B940700()
{
  v2 = qword_27FBAB898;
  if (!qword_27FBAB898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB890, &qword_25B94C948);
    sub_25B940798();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB898);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B940798()
{
  v2 = qword_27FBAB8A0;
  if (!qword_27FBAB8A0)
  {
    type metadata accessor for SummaryTraceRouteResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB8A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B940840()
{
  v2 = qword_27FBAB8A8;
  if (!qword_27FBAB8A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB8A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B9408BC()
{
  v2 = qword_27FBAB8B8;
  if (!qword_27FBAB8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB890, &qword_25B94C948);
    sub_25B940954();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB8B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B940954()
{
  v2 = qword_27FBAB8C0;
  if (!qword_27FBAB8C0)
  {
    type metadata accessor for SummaryTraceRouteResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB8C0);
    return WitnessTable;
  }

  return v2;
}

void *sub_25B9409D4(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_25B946ED8();
  a2[1] = v4;
  v6 = a1[2];
  sub_25B946ED8();
  result = a2;
  a2[2] = v6;
  return result;
}

uint64_t sub_25B940A34(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 16);

  return a1;
}

uint64_t sub_25B940A6C()
{
  if (sub_25B8837AC() == 30)
  {
    sub_25B868B34();

    v5 = sub_25B8689DC();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_25B940DEC;
    *(v6 + 24) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB8D0, &qword_25B94C968);
    v4 = sub_25B946F08();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB60, &qword_25B94C960);
    sub_25B947208();
    v4();
    v5();

    v7 = sub_25B8D12E0;
    v8 = 0;
  }

  else
  {
    sub_25B868B34();

    v2 = sub_25B868BEC();
    v3 = swift_allocObject();
    *(v3 + 16) = sub_25B940DEC;
    *(v3 + 24) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB8D0, &qword_25B94C968);
    v1 = sub_25B946F08();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB60, &qword_25B94C960);
    sub_25B947208();
    v1();
    v2();

    v7 = 0;
    v8 = sub_25B8D12E0;
  }

  sub_25B8D0430(v7);
  return sub_25B8D0430(v8);
}

uint64_t (*sub_25B940E78(uint64_t a1))()
{
  v79[1] = 0;
  v79[0] = 0;
  v77[0] = 0;
  v77[1] = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69[0] = 0;
  v69[1] = 0;
  v61 = 0;
  v79[2] = a1;
  type metadata accessor for SummaryTraceRouteResult();
  v79[0] = sub_25B947838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB60, &qword_25B94C960);
  v78 = sub_25B946ED8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB8D8, &qword_25B94C970);
  sub_25B94173C();
  v53 = sub_25B947168();
  sub_25B86CFA0(&v78);
  v77[2] = v53;
  sub_25B946ED8();
  v76 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB8E8, &qword_25B94C978);
  sub_25B9417C4();
  sub_25B947418();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB8F8, &qword_25B94C980);
    sub_25B9475E8();
    v52 = v74;
    if (v75)
    {
      break;
    }

    v73 = v74;
    v51 = sub_25B93EE6C();
    v72 = v51;
    sub_25B947838();
    v71 = sub_25B947388();
    v70 = 0;
    v67 = v52;
    sub_25B946F18();
    if (v68)
    {
      v50 = v68;
    }

    else
    {
      sub_25B947618();
      __break(1u);
    }

    v66 = v50;
    sub_25B94184C();
    sub_25B947418();
    for (i = 0; ; i = v34)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB908, &qword_25B94C988);
      sub_25B9475E8();
      if (!v65)
      {
        break;
      }

      v61 = v65;
      if (sub_25B868D04())
      {
        result = sub_25B868BEC();
        if (__OFADD__(*v25, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }

        ++*v25;
        (result)(v60, 0, v26);
        v34 = i;
      }

      else
      {
        v70 = 1;
        v46 = sub_25B88417C();
        v47 = v1;
        v2 = sub_25B946F48();
        v48 = MEMORY[0x25F870E10](v46, v47, v2);

        if (v48)
        {
          v3 = sub_25B946F48();
          sub_25B93DF7C(v3, v4);
        }

        else
        {
          v59[0] = sub_25B88417C();
          v59[1] = v5;
          v45 = v5 == 0;
          sub_25B86AEEC(v59);
          if (v45)
          {
            v6 = sub_25B88417C();
            sub_25B93DF7C(v6, v7);
          }

          else
          {
            sub_25B946ED8();
            v58[0] = sub_25B88417C();
            v58[1] = v8;
            v44 = sub_25B9473A8();
            sub_25B86AEEC(v58);

            if ((v44 & 1) == 0)
            {
              v42 = sub_25B88417C();
              v43 = v9;
              if (v9)
              {
                v10 = sub_25B946F48();
                v38 = MEMORY[0x25F870DE0](v42, v43, v10);
                v39 = v11;

                v12 = sub_25B88417C();
                v40 = MEMORY[0x25F870DE0](v38, v39, v12);
                v41 = v13;

                sub_25B93DF7C(v40, v41);
              }
            }
          }
        }

        v56 = sub_25B88417C();
        v57 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB918, &qword_25B94C990);
        sub_25B947398();

        sub_25B883804(v52);
        result = sub_25B8839D0();
        if (__OFADD__(*v16, 1))
        {
          goto LABEL_37;
        }

        ++*v16;
        (result)(v55, 0, v17);
        v19 = sub_25B883E20();
        sub_25B883E78(v19);
        v36 = sub_25B883E20();
        v20 = sub_25B869020();
        *v21 = *v21 + v36;
        (v20)(v54, 0, v22);
        v37 = sub_25B883E20();
        if (sub_25B93DCE8() < v37)
        {
          v23 = sub_25B883E20();
          sub_25B93DD40(v23);
        }

        v35 = sub_25B883E20();
        if (v35 < sub_25B93DE50())
        {
          v24 = sub_25B883E20();
          sub_25B93DEA8(v24);
        }

        v34 = 1;
      }
    }

    sub_25B86CFA0(v69);
    if (i)
    {
      v63 = sub_25B883918();
      sub_25B9418D4();
      sub_25B947378();
      v33 = v28;
      v29 = sub_25B869020();
      *v30 = *v30 / v33;
      (v29)(v62, 0, v31);
    }

    else
    {
      sub_25B93DEA8(0.0);
    }

    v64 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB890, &qword_25B94C948);
    sub_25B947208();
    sub_25B86CFA0(&v71);
  }

  sub_25B86CFA0(v77);
  v32 = v79[0];
  sub_25B946ED8();

  sub_25B86CFA0(v79);
  return v32;
}

unint64_t sub_25B94173C()
{
  v2 = qword_27FBAB8E0;
  if (!qword_27FBAB8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB8D8, &qword_25B94C970);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB8E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B9417C4()
{
  v2 = qword_27FBAB8F0;
  if (!qword_27FBAB8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB8E8, &qword_25B94C978);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB8F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B94184C()
{
  v2 = qword_27FBAB900;
  if (!qword_27FBAB900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAAB60, &qword_25B94C960);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB900);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B9418D4()
{
  v2 = qword_27FBAB910;
  if (!qword_27FBAB910)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB910);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B94194C()
{
  v40 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v32 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v46 = v0;
  v45 = sub_25B947838();
  v26 = sub_25B940320();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB60, &qword_25B94C960);
  v27 = MEMORY[0x25F870CD0](v26, MEMORY[0x277D849A8]);

  if (v27)
  {
    v22 = sub_25B9403F4();
    v23 = MEMORY[0x25F870CD0](v22, MEMORY[0x277D849A8], v25, MEMORY[0x277D849B8]);

    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    v20 = v45;
    sub_25B946ED8();
    sub_25B86CFA0(&v45);
    return v20;
  }

  else
  {
    sub_25B940320();
    v43 = 1;
    sub_25B946F18();
    if (v44)
    {
      v32 = v44;

      type metadata accessor for JSONTracerouteDelegate();
      v16 = sub_25B940320();
      v17 = sub_25B940E78(v16);

      v31 = v17;
      v1 = sub_25B93FEAC();
      sub_25B93FEB8(v1, v2, v17, &v28);
      type metadata accessor for TraceRouteResult();
      sub_25B947228();
      v18 = sub_25B884700();
      v19 = v3;

      v28 = v18;
      v29 = v19;

      sub_25B946ED8();
      sub_25B946ED8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB10, &unk_25B94B240);
      sub_25B947208();
      sub_25B940A34(&v28);
    }

    else
    {
    }

    sub_25B9403F4();
    v41 = 1;
    sub_25B946F18();
    if (v42)
    {
      v40 = v42;

      type metadata accessor for JSONTracerouteDelegate();
      v9 = sub_25B9403F4();
      v10 = sub_25B940E78(v9);

      v39 = v10;
      v4 = sub_25B93FEAC();
      sub_25B93FEB8(v4, v5, v10, &v36);
      type metadata accessor for TraceRouteResult();
      sub_25B947228();
      v11 = sub_25B884700();
      v12 = v6;

      v36 = v11;
      v37 = v12;

      v13 = v36;
      v14 = v37;
      v15 = v38;
      sub_25B946ED8();
      sub_25B946ED8();
      v33 = v13;
      v34 = v14;
      v35 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB10, &unk_25B94B240);
      sub_25B947208();
      sub_25B940A34(&v36);
    }

    v8 = v45;
    sub_25B946ED8();
    sub_25B86CFA0(&v45);
    return v8;
  }
}

uint64_t sub_25B941E30@<X0>(void *a1@<X8>)
{
  type metadata accessor for JSONTracerouteDelegate();
  v4 = sub_25B9403F4();
  v6 = sub_25B940E78(v4);

  v1 = sub_25B93FEAC();
  return sub_25B93FEB8(v1, v2, v6, a1);
}

uint64_t JSONTracerouteDelegate.deinit()
{
  sub_25B86CFA0((v0 + 16));
  sub_25B86CFA0((v0 + 24));
  return v2;
}

uint64_t sub_25B941F50()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_25B941FAC(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t PrettyTracerouteDelegate.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_25B942084(uint64_t a1)
{
  v67 = 0;
  v63 = 0;
  v64 = 0;
  v74 = a1;
  v73 = v1;
  v61 = sub_25B941F50();
  if (!v61)
  {
    sub_25B947838();
    v46 = v27;
    v72[0] = sub_25B947818();
    v72[1] = v28;
    v29 = sub_25B946F48();
    MEMORY[0x25F8715F0](v29);

    v71[0] = sub_25B8844CC();
    v71[1] = v30;
    v45 = MEMORY[0x277D837D0];
    sub_25B9477F8();
    sub_25B86AEEC(v71);
    v31 = sub_25B946F48();
    MEMORY[0x25F8715F0](v31);

    v70[0] = sub_25B884700();
    v70[1] = v32;
    sub_25B9477F8();
    sub_25B86AEEC(v70);
    v33 = sub_25B946F48();
    MEMORY[0x25F8715F0](v33);

    sub_25B946ED8();
    sub_25B86AEEC(v72);
    v34 = sub_25B946FE8();
    v46[3] = v45;
    *v46 = v34;
    v46[1] = v35;
    sub_25B8860FC();
    sub_25B942B14();
    sub_25B942B44();
    sub_25B947958();

    goto LABEL_10;
  }

  v67 = v61;
  v59 = sub_25B868B34();
  if (v59 != sub_25B868B34())
  {
    sub_25B947838();
    v47 = v24;
    v25 = sub_25B946F48();
    v47[3] = MEMORY[0x277D837D0];
    *v47 = v25;
    v47[1] = v26;
    sub_25B8860FC();
    sub_25B942B14();
    sub_25B942B44();
    sub_25B947958();

LABEL_10:

    sub_25B941FAC(a1);
    sub_25B947838();
    v44 = v36;
    v69[0] = sub_25B947818();
    v69[1] = v37;
    v38 = sub_25B946F48();
    MEMORY[0x25F8715F0](v38);

    v68[0] = sub_25B8856C8();
    v68[1] = v39;
    v43 = MEMORY[0x277D837D0];
    sub_25B9477F8();
    sub_25B86AEEC(v68);
    v40 = sub_25B946F48();
    MEMORY[0x25F8715F0](v40);

    sub_25B946ED8();
    sub_25B86AEEC(v69);
    v41 = sub_25B946FE8();
    v44[3] = v43;
    *v44 = v41;
    v44[1] = v42;
    sub_25B8860FC();
    sub_25B946F48();
    sub_25B942B14();
    sub_25B947958();
  }

  v56 = sub_25B88417C();
  v57 = v2;
  v3 = sub_25B88417C();
  v58 = MEMORY[0x25F870E10](v56, v57, v3);

  if (v58)
  {

    sub_25B941FAC(a1);
    if (sub_25B885614())
    {
      sub_25B947838();
      v55 = v4;
      v5 = sub_25B946F48();
      v55[3] = MEMORY[0x277D837D0];
      *v55 = v5;
      v55[1] = v6;
      sub_25B8860FC();
      sub_25B946F48();
      sub_25B942B14();
      sub_25B947958();
    }

    else
    {
      sub_25B946F48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB70, &qword_25B949960);
      sub_25B947838();
      v50 = v8;
      v9 = sub_25B883E20();
      *(v50 + 24) = MEMORY[0x277D839F8];
      *(v50 + 32) = MEMORY[0x277D83A80];
      *v50 = v9;
      sub_25B8860FC();
      v51 = sub_25B946F88();
      v54 = v10;

      v63 = v51;
      v64 = v54;
      sub_25B947838();
      v53 = v11;
      v62[0] = sub_25B947818();
      v62[1] = v12;
      v13 = sub_25B946F48();
      MEMORY[0x25F8715F0](v13);

      v52 = MEMORY[0x277D837D0];
      sub_25B9477F8();
      v14 = sub_25B946F48();
      MEMORY[0x25F8715F0](v14);

      sub_25B946ED8();
      sub_25B86AEEC(v62);
      v15 = sub_25B946FE8();
      v53[3] = v52;
      *v53 = v15;
      v53[1] = v16;
      sub_25B8860FC();
      sub_25B946F48();
      sub_25B942B14();
      sub_25B947958();
    }
  }

  else
  {

    sub_25B941FAC(a1);
    sub_25B947838();
    v49 = v17;
    v66[0] = sub_25B947818();
    v66[1] = v18;
    v19 = sub_25B946F48();
    MEMORY[0x25F8715F0](v19);

    v65[0] = sub_25B886140();
    v65[1] = v20;
    v48 = MEMORY[0x277D837D0];
    sub_25B9477F8();
    sub_25B86AEEC(v65);
    v21 = sub_25B946F48();
    MEMORY[0x25F8715F0](v21);

    sub_25B946ED8();
    sub_25B86AEEC(v66);
    v22 = sub_25B946FE8();
    v49[3] = v48;
    *v49 = v22;
    v49[1] = v23;
    sub_25B8860FC();
    sub_25B946F48();
    sub_25B942B14();
    sub_25B947958();
  }
}

uint64_t sub_25B943428(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
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

uint64_t sub_25B943540(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_25B94390C()
{
  v2 = qword_27FBAB920;
  if (!qword_27FBAB920)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB920);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B9439A0()
{
  v2 = qword_27FBAB928;
  if (!qword_27FBAB928)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB928);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B943A34()
{
  v2 = qword_27FBAB930;
  if (!qword_27FBAB930)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB930);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B943AC8()
{
  v2 = qword_27FBAB938;
  if (!qword_27FBAB938)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB938);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B943B5C()
{
  v2 = qword_27FBAB940;
  if (!qword_27FBAB940)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB940);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B943BF0()
{
  v2 = qword_27FBAB948;
  if (!qword_27FBAB948)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB948);
    return WitnessTable;
  }

  return v2;
}