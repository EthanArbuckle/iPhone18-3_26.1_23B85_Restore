uint64_t Capsule.serializedData(_:version:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 4);
  v8 = *a2;
  return Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)(a1, &v8, 0, 0, 0xF000000000000000, a3);
}

uint64_t sub_1AE1F721C(_BYTE *a1, uint64_t a2)
{
  v5 = type metadata accessor for PartiallyOrderedReferenceMap();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v18 = 0xD00000000000002ALL;
    *(v18 + 8) = 0x80000001AE2604C0;
    *(v18 + 16) = 0;
    return swift_willThrow();
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(a2 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = *v2;
  v12 = v2[1];
  v13 = *(v2 + 4);
  v14 = *(a2 + 32);
  v15 = v10 - 1;
  v55 = (a2 + 32);
  if (v10 == 1)
  {
    goto LABEL_5;
  }

  if (v10 < 5)
  {
    v16 = v7;
    v19 = 1;
    goto LABEL_21;
  }

  if (v10 < 0x11)
  {
    v20 = 0;
    goto LABEL_16;
  }

  v20 = v15 & 0xFFFFFFFFFFFFFFF0;
  v21 = vdupq_n_s16(v14);
  v22 = (a2 + 50);
  v23 = v15 & 0xFFFFFFFFFFFFFFF0;
  v24 = v21;
  do
  {
    v21 = vminq_s16(v22[-1], v21);
    v24 = vminq_s16(*v22, v24);
    v22 += 2;
    v23 -= 16;
  }

  while (v23);
  v25 = vminq_s16(v21, v24);
  v25.i16[0] = vminvq_s16(v25);
  v14 = v25.i32[0];
  if (v15 != v20)
  {
    if ((v15 & 0xC) == 0)
    {
      v16 = v7;
      v19 = v20 | 1;
      goto LABEL_21;
    }

LABEL_16:
    v16 = v7;
    v19 = v15 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v26 = vdup_n_s16(v14);
    v27 = (a2 + 2 * v20 + 34);
    v28 = v20 - (v15 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v29 = *v27++;
      v26 = vmin_s16(v29, v26);
      v28 += 4;
    }

    while (v28);
    v26.i16[0] = vminv_s16(v26);
    v14 = v26.i32[0];
    if (v15 == (v15 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_26;
    }

LABEL_21:
    v30 = v10 - v19;
    v31 = (a2 + 2 * v19 + 32);
    do
    {
      v33 = *v31++;
      v32 = v33;
      if (v33 >= v14)
      {
        v14 = v14;
      }

      else
      {
        v14 = v32;
      }

      --v30;
    }

    while (v30);
    goto LABEL_26;
  }

LABEL_5:
  v16 = v7;
LABEL_26:
  v73 = v14;
  v56 = v10;
  v57 = v11;
  v58 = v12;
  *&v59 = v13;
  sub_1ADDFC54C(v9);
  v34 = &v9[*(v16 + 20)];
  v35 = *v34;
  v36 = *(v34 + 1);

  sub_1ADE73DF4(v9);
  sub_1AE23C1FC();

  v37 = 0;
  while (1)
  {
    v38 = v66;
    if (v66 < DWORD1(v66))
    {
      v39 = *(&v65 + 1);
      LODWORD(v66) = v66 + 1;
      goto LABEL_30;
    }

    v39 = sub_1AE23C20C();
    if (!v39)
    {
      break;
    }

LABEL_30:
    v74 = v37;
    v40 = (v39 + *(v39 + 24) + (~v38 << 6));
    v41 = v40[4];
    v42 = v40[5];
    v43 = v40[6];
    v44 = v40[8];
    v45 = v40[9];
    v46 = v40[10];
    v47 = v40[11];
    sub_1ADDD86D8(v41, v42);

    sub_1ADDD86D8(v41, v42);

    if (!v43)
    {
      __break(1u);
      return result;
    }

    v48 = sub_1ADDCC35C(v41, v42);
    v37 = (*(*v43 + 208))(v48);
    sub_1ADDCC35C(v41, v42);

    if (v37 <= v74)
    {
      v37 = v74;
    }
  }

  v63 = v71;
  v64[0] = v72[0];
  *(v64 + 11) = *(v72 + 11);
  v59 = v67;
  v60 = v68;
  v61 = v69;
  v62 = v70;
  v57 = v65;
  v58 = v66;
  sub_1ADDCEDE0(&v57, &qword_1EB5BA9F0, &unk_1AE25A260);
  if (v73 <= v37)
  {
    result = v37;
  }

  else
  {
    result = v73;
  }

  v50 = v55;
  for (i = v56; i; --i)
  {
    v51 = *v50++;
    if (v51 == result)
    {
      return result;
    }
  }

  v52 = result;
  sub_1ADE42E40();
  swift_allocError();
  *v53 = v52;
  *(v53 + 8) = 0;
  *(v53 + 16) = 1;
  return swift_willThrow();
}

uint64_t Capsule.serializedDataWithAssets(_:version:allowedAppFormats:fileSignature:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 672) = a6;
  *(v7 + 664) = a5;
  *(v7 + 656) = a4;
  *(v7 + 648) = a3;
  *(v7 + 640) = a1;
  v9 = sub_1AE23C6DC();
  *(v7 + 680) = v9;
  v10 = *(v9 - 8);
  *(v7 + 688) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 696) = swift_task_alloc();
  *(v7 + 704) = swift_task_alloc();
  v12 = sub_1AE23C70C();
  *(v7 + 712) = v12;
  v13 = *(v12 - 8);
  *(v7 + 720) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 728) = swift_task_alloc();
  *(v7 + 1008) = *a2;
  v15 = *(v6 + 16);
  *(v7 + 736) = *v6;
  *(v7 + 752) = v15;
  *(v7 + 768) = *(v6 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1AE1F77B0, 0, 0);
}

uint64_t sub_1AE1F77B0()
{
  v107 = v0;
  v1 = *(v0 + 728);
  v2 = *(v0 + 704);
  sub_1AE23C6FC();
  sub_1AE23C6EC();
  sub_1AE23C6BC();
  v3 = sub_1AE23C6EC();
  v4 = sub_1AE23D73C();
  if (sub_1AE23D79C())
  {
    v5 = *(v0 + 704);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1AE23C6CC();
    _os_signpost_emit_with_name_impl(&dword_1ADDCA000, v3, v4, v7, "encodeDocument", "", v6, 2u);
    MEMORY[0x1B26FDA50](v6, -1, -1);
  }

  v8 = *(v0 + 768);
  v9 = *(v0 + 1008);
  v10 = *(v0 + 704);
  v11 = *(v0 + 696);
  v12 = *(v0 + 688);
  v13 = *(v0 + 680);
  v14 = *(v0 + 648);
  v92 = *(v0 + 752);
  v93 = *(v0 + 736);

  (*(v12 + 16))(v11, v10, v13);
  v15 = sub_1AE23C74C();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v0 + 776) = sub_1AE23C73C();
  v96 = v93;
  v97 = v92;
  v98 = v8;
  v95 = v9;
  v18 = sub_1AE1F721C(&v95, v14);
  v19 = *(v0 + 768);
  v20 = *(v0 + 760);
  v21 = *(v0 + 752);
  v22 = *(v0 + 744);
  v90 = v18;
  v23 = *(v0 + 736);
  LOBYTE(v13) = *(v0 + 1008);
  v24 = *(v0 + 672);
  v25 = *(v0 + 664);
  v26 = *(v0 + 656);
  v27 = *(v0 + 640);
  *(v0 + 528) = v23;
  *(v0 + 536) = v22;
  *(v0 + 544) = v21;
  *(v0 + 552) = v20;
  *(v0 + 560) = v19;
  sub_1ADDD86D8(v23, v22);
  sub_1ADDD86D8(v21, v20);

  Capsule.finalizeTimestamps(_:)(v27);
  LOBYTE(v96) = v13;
  type metadata accessor for CREncoder();
  swift_allocObject();
  v28 = v27;
  sub_1ADDE0F78(v26, v25);
  v29 = CREncoder.init(_:version:fileSignature:)(v28, &v96, v26, v25);
  *(v0 + 784) = v29;
  v30 = *(v0 + 528);
  *(v0 + 792) = v30;
  v31 = *(v0 + 536);
  *(v0 + 800) = v31;
  v32 = *(v0 + 544);
  *(v0 + 808) = v32;
  v33 = *(v0 + 552);
  *(v0 + 816) = v33;
  v34 = *(v0 + 560);
  *(v0 + 824) = v34;
  *(v0 + 568) = v30;
  *(v0 + 576) = v31;
  *(v0 + 584) = v32;
  *(v0 + 592) = v33;
  *(v0 + 600) = v34;
  sub_1ADDD86D8(v30, v31);
  sub_1ADDD86D8(v32, v33);
  v35 = v24;
  v36 = *(v24 + 16);
  v37 = *(v35 + 24);

  v38 = v37;
  v39 = v29;
  sub_1ADE6A25C((v0 + 568), v90, 0, v36, v38, &v96);
  *(v0 + 832) = v96;
  v40 = *(&v97 + 1);
  *(v0 + 848) = v97;
  *(v0 + 856) = v40;
  v41 = v98;
  *(v0 + 864) = v98;
  *(v0 + 872) = v99;
  *(v0 + 888) = v100;
  v42 = v102;
  *(v0 + 896) = v101;
  *(v0 + 912) = v42;
  v43 = v104;
  *(v0 + 928) = v103;
  *(v0 + 944) = v43;
  v44 = v106;
  *(v0 + 960) = v105;
  *(v0 + 976) = v44;
  v45 = v41;
  v46 = *(v0 + 584);
  v47 = *(v0 + 592);
  v48 = *(v0 + 600);
  sub_1ADDCC35C(*(v0 + 568), *(v0 + 576));
  sub_1ADDCC35C(v46, v47);

  swift_beginAccess();
  if (*(*(v39 + 88) + 16))
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA280, &unk_1AE259B60);
    v50 = *(MEMORY[0x1E69E88A0] + 4);
    v51 = swift_task_alloc();
    *(v0 + 992) = v51;
    *v51 = v0;
    v51[1] = sub_1AE1F8148;
    v109 = v49;

    return MEMORY[0x1EEE6DD58](v0 + 632, &type metadata for Proto_Asset, v49, 0, 0, &unk_1AE241D50, v39, &type metadata for Proto_Asset);
  }

  else
  {
    v52 = *(v0 + 968);
    v53 = *(v0 + 960);
    v54 = *(v0 + 888);
    v94 = *(v0 + 872);
    v55 = *(v0 + 856);
    v56 = *(v0 + 848);
    v88 = *(v0 + 912);
    v89 = *(v0 + 928);
    v91 = *(v0 + 896);
    v86 = *(v0 + 832);
    v87 = *(v0 + 944);
    *(*(v0 + 784) + 88) = MEMORY[0x1E69E7CC0];

    *&v96 = v53;
    *(&v96 + 1) = v52;
    *(v0 + 144) = v86;
    *(v0 + 160) = v56;
    *(v0 + 168) = v55;
    v57 = v45;
    *(v0 + 176) = v45;
    *(v0 + 184) = v94;
    *(v0 + 200) = v54;
    *(v0 + 208) = v91;
    *(v0 + 224) = v88;
    *(v0 + 240) = v89;
    *(v0 + 256) = v87;
    sub_1ADDD86D8(v53, v52);
    sub_1ADE73BC8();
    v58 = sub_1AE23C51C();
    v60 = v59;
    v61 = *(v0 + 984);
    v62 = *(v0 + 976);
    v75 = *(v0 + 968);
    v73 = *(v0 + 960);
    *&v86 = *(v0 + 888);
    v84 = *(v0 + 872);
    v110 = *(v0 + 856);
    v83 = *(v0 + 848);
    v82 = *(v0 + 832);
    v79 = *(v0 + 824);
    v76 = *(v0 + 816);
    v74 = *(v0 + 808);
    v71 = *(v0 + 792);
    v72 = *(v0 + 800);
    v63 = *(v0 + 784);
    *&v87 = *(v0 + 776);
    v85 = *(v0 + 728);
    v64 = *(v0 + 720);
    *&v91 = *(v0 + 712);
    *&v89 = *(v0 + 704);
    *&v94 = *(v0 + 696);
    v65 = *(v0 + 688);
    *&v88 = *(v0 + 680);
    v80 = *(v0 + 928);
    v81 = *(v0 + 896);
    v77 = *(v0 + 944);
    v78 = *(v0 + 912);
    sub_1AE23BEEC();
    sub_1ADDCC35C(v58, v60);
    sub_1AE23BEEC();
    v66 = *(v63 + 16);
    sub_1ADDF6EEC();
    sub_1ADDCC35C(v62, v61);
    sub_1ADDCC35C(v73, v75);
    sub_1ADDCC35C(v71, v72);
    sub_1ADDCC35C(v74, v76);

    v67 = v96;
    *(v0 + 400) = v82;
    v68 = v110;
    *(v0 + 416) = v83;
    *(v0 + 424) = v68;
    *(v0 + 432) = v57;
    *(v0 + 440) = v84;
    *(v0 + 456) = v86;
    *(v0 + 464) = v81;
    *(v0 + 480) = v78;
    *(v0 + 496) = v80;
    *(v0 + 512) = v77;
    sub_1ADE6AF00(v0 + 400);
    sub_1AE1F88EC(v85, v87, "encodeDocument");

    (*(v65 + 8))(v89, v88);
    (*(v64 + 8))(v85, v91);

    v69 = *(v0 + 8);

    return v69(v67, *(&v67 + 1));
  }
}

uint64_t sub_1AE1F8148()
{
  v2 = *(*v1 + 992);
  v5 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v3 = sub_1AE1F8700;
  }

  else
  {
    v3 = sub_1AE1F825C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AE1F825C()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 784);

  v3 = *(v0 + 632);
  v4 = *(v2 + 88);
  v5 = *(v0 + 1000);
  v6 = *(v0 + 968);
  v7 = *(v0 + 960);
  v8 = *(v0 + 888);
  v9 = *(v0 + 856);
  v10 = *(v0 + 848);
  v60 = *(v0 + 872);
  v62 = *(v0 + 832);
  v58 = *(v0 + 896);
  v54 = *(v0 + 912);
  v56 = *(v0 + 928);
  v52 = *(v0 + 944);
  *(*(v0 + 784) + 88) = MEMORY[0x1E69E7CC0];

  *(v0 + 144) = v62;
  v64 = v7;
  v65 = v6;
  *(v0 + 160) = v10;
  *(v0 + 168) = v9;
  v63 = v3;
  *(v0 + 176) = v3;
  *(v0 + 184) = v60;
  *(v0 + 200) = v8;
  *(v0 + 208) = v58;
  *(v0 + 224) = v54;
  *(v0 + 240) = v56;
  *(v0 + 256) = v52;
  sub_1ADDD86D8(v7, v6);
  sub_1ADE73BC8();
  v11 = sub_1AE23C51C();
  v13 = *(v0 + 984);
  v14 = *(v0 + 976);
  v15 = *(v0 + 968);
  v16 = *(v0 + 960);
  v61 = *(v0 + 952);
  v57 = *(v0 + 944);
  v55 = *(v0 + 936);
  v51 = *(v0 + 920);
  v53 = *(v0 + 928);
  v49 = *(v0 + 904);
  v50 = *(v0 + 912);
  v47 = *(v0 + 888);
  v48 = *(v0 + 896);
  v45 = *(v0 + 872);
  v46 = *(v0 + 880);
  v43 = *(v0 + 848);
  v44 = *(v0 + 856);
  v41 = *(v0 + 832);
  v42 = *(v0 + 840);
  v39 = *(v0 + 816);
  v40 = *(v0 + 824);
  v37 = *(v0 + 800);
  v38 = *(v0 + 808);
  v36 = *(v0 + 792);
  v17 = *(v0 + 784);
  v59 = *(v0 + 776);
  v18 = *(v0 + 728);
  if (v5)
  {
    sub_1ADDCC35C(v14, v13);

    sub_1ADDCC35C(v16, v15);
    sub_1ADDCC35C(v16, v15);
    sub_1ADDCC35C(v36, v37);
    sub_1ADDCC35C(v38, v39);

    *(v0 + 272) = v41;
    *(v0 + 280) = v42;
    *(v0 + 288) = v43;
    *(v0 + 296) = v44;
    *(v0 + 304) = v63;
    *(v0 + 312) = v45;
    *(v0 + 320) = v46;
    *(v0 + 328) = v47;
    *(v0 + 336) = v48;
    *(v0 + 344) = v49;
    *(v0 + 352) = v50;
    *(v0 + 360) = v51;
    *(v0 + 368) = v53;
    *(v0 + 376) = v55;
    *(v0 + 384) = v57;
    *(v0 + 392) = v61;
    sub_1ADE6AF00(v0 + 272);
    sub_1AE1F88EC(v18, v59, "encodeDocument");

    v19 = *(v0 + 728);
    v20 = *(v0 + 720);
    v21 = *(v0 + 712);
    v22 = *(v0 + 696);
    (*(*(v0 + 688) + 8))(*(v0 + 704), *(v0 + 680));
    (*(v20 + 8))(v19, v21);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = v11;
    v33 = *(v0 + 720);
    v34 = *(v0 + 712);
    v35 = *(v0 + 696);
    v30 = *(v0 + 688);
    v31 = *(v0 + 680);
    v32 = *(v0 + 704);
    v26 = *(v0 + 728);
    v27 = v12;
    sub_1AE23BEEC();
    sub_1ADDCC35C(v25, v27);
    sub_1AE23BEEC();
    v28 = *(v17 + 16);
    sub_1ADDF6EEC();
    sub_1ADDCC35C(v14, v13);
    sub_1ADDCC35C(v16, v15);
    sub_1ADDCC35C(v36, v37);
    sub_1ADDCC35C(v38, v39);

    *(v0 + 400) = v41;
    *(v0 + 408) = v42;
    *(v0 + 416) = v43;
    *(v0 + 424) = v44;
    *(v0 + 432) = v63;
    *(v0 + 440) = v45;
    *(v0 + 448) = v46;
    *(v0 + 456) = v47;
    *(v0 + 464) = v48;
    *(v0 + 472) = v49;
    *(v0 + 480) = v50;
    *(v0 + 488) = v51;
    *(v0 + 496) = v53;
    *(v0 + 504) = v55;
    *(v0 + 512) = v57;
    *(v0 + 520) = v61;
    sub_1ADE6AF00(v0 + 400);
    sub_1AE1F88EC(v26, v59, "encodeDocument");

    (*(v30 + 8))(v32, v31);
    (*(v33 + 8))(v26, v34);

    v29 = *(v0 + 8);

    return v29(v64, v65);
  }
}

uint64_t sub_1AE1F8700()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v26 = *(v0 + 888);
  v24 = *(v0 + 872);
  v23 = *(v0 + 848);
  v22 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 816);
  v5 = *(v0 + 808);
  v6 = *(v0 + 800);
  v7 = *(v0 + 792);
  v8 = *(v0 + 784);
  v9 = *(v0 + 776);
  v25 = *(v0 + 728);
  v20 = *(v0 + 928);
  v21 = *(v0 + 896);
  v18 = *(v0 + 944);
  v19 = *(v0 + 912);
  v17 = *(v0 + 856);
  sub_1ADDCC35C(*(v0 + 976), *(v0 + 984));

  sub_1ADDCC35C(v2, v1);
  sub_1ADDCC35C(v7, v6);
  sub_1ADDCC35C(v5, v4);

  *(v0 + 16) = v22;
  *(v0 + 32) = v23;
  *(v0 + 40) = v17;
  *(v0 + 56) = v24;
  *(v0 + 72) = v26;
  *(v0 + 80) = v21;
  *(v0 + 96) = v19;
  *(v0 + 112) = v20;
  *(v0 + 128) = v18;
  sub_1ADE6AF00(v0 + 16);
  sub_1AE1F88EC(v25, v9, "encodeDocument");

  v10 = *(v0 + 1000);
  v11 = *(v0 + 728);
  v12 = *(v0 + 720);
  v13 = *(v0 + 712);
  v14 = *(v0 + 696);
  (*(*(v0 + 688) + 8))(*(v0 + 704), *(v0 + 680));
  (*(v12 + 8))(v11, v13);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1AE1F88EC(uint64_t a1, uint64_t a2, const char *a3)
{
  v20 = a3;
  v3 = sub_1AE23C71C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE23C6DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AE23C6EC();
  sub_1AE23C72C();
  v14 = sub_1AE23D72C();
  if (sub_1AE23D79C())
  {

    sub_1AE23C75C();

    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1AE23C6CC();
    _os_signpost_emit_with_name_impl(&dword_1ADDCA000, v13, v14, v17, v20, v15, v16, 2u);
    MEMORY[0x1B26FDA50](v16, -1, -1);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1AE1F8B78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x73746E65746E6F63;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x73746E65746E6F63;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1AE23E00C();
  }

  return v9 & 1;
}

uint64_t sub_1AE1F8C14()
{
  v1 = *v0;
  sub_1AE23E31C();
  sub_1AE23CDAC();

  return sub_1AE23E34C();
}

uint64_t sub_1AE1F8C8C()
{
  *v0;
  sub_1AE23CDAC();
}

uint64_t sub_1AE1F8CF0()
{
  v1 = *v0;
  sub_1AE23E31C();
  sub_1AE23CDAC();

  return sub_1AE23E34C();
}

uint64_t sub_1AE1F8D64@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1AE23DD1C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1AE1F8DC4(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x73746E65746E6F63;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AE1F8DF8()
{
  if (*v0)
  {
    result = 0x73746E65746E6F63;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1AE1F8E28@<X0>(char *a1@<X8>)
{
  v2 = sub_1AE23DD1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1AE1F8E8C(uint64_t a1)
{
  v2 = sub_1AE1FE688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AE1F8EC8(uint64_t a1)
{
  v2 = sub_1AE1FE688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AE1F8F04(void *a1)
{
  v134[5] = *MEMORY[0x1E69E9840];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE800, &unk_1AE25A240);
  v94 = *(v90 - 8);
  v3 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v81 - v4;
  v97 = type metadata accessor for PartiallyOrderedReferenceMap();
  v5 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v93 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v81 - v8;
  v10 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v12 = v1[3];
  v14 = v1[4];
  v15 = a1;
  v16 = a1[3];
  v96 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  sub_1AE23E3AC();
  v132 = v10;
  v133 = v11;
  v127 = v10;
  v128 = v11;
  v96 = v13;
  v129 = v13;
  v130 = v12;
  v92 = v12;
  v87 = v14;
  v131 = v14;
  sub_1ADDFC54C(v9);
  v17 = &v9[*(v97 + 20)];
  v18 = *v17;
  v19 = *(v17 + 1);
  v20 = *(v17 + 2);
  sub_1ADDD86D8(v10, v11);
  v91 = v10;
  v88 = v11;
  sub_1ADDDF7A8(v10, v11, v18, &v123);
  sub_1ADE73DF4(v9);
  if (!v124)
  {
    goto LABEL_85;
  }

  v119 = v123;
  v120 = v124;
  v121 = v125;
  v122 = v126;
  v21 = v95;
  sub_1AE1F9A28(&v132, &v119, v134);
  v22 = v21;
  if (!v21)
  {

    sub_1ADDCC35C(v132, v133);
    v23 = v91;
    v24 = v88;
    *&v111 = v91;
    *(&v111 + 1) = v88;
    v25 = v93;
    *&v112 = v96;
    *(&v112 + 1) = v92;
    *&v113 = v87;
    sub_1ADDFC54C(v93);
    v26 = (v25 + *(v97 + 20));
    v27 = *v26;
    v28 = v26[1];
    sub_1AE23C1FC();
    sub_1ADE73DF4(v25);
    if (v23)
    {
      v29 = 0;
    }

    else
    {
      v29 = v24 == 0xC000000000000000;
    }

    v30 = !v29;
    v86 = v30;
    v31 = v24 >> 62;
    v32 = __OFSUB__(HIDWORD(v23), v23);
    v83 = v32;
    v82 = HIDWORD(v23) - v23;
    v84 = BYTE6(v24);
    v85 = (v94 + 8);
    v87 = v24 >> 62;
    while (1)
    {
      v35 = v100;
      v97 = v22;
      if (v100 >= DWORD1(v100))
      {
        v36 = sub_1AE23C20C();
        if (!v36)
        {
          v117 = v105;
          v118[0] = v106[0];
          *(v118 + 11) = *(v106 + 11);
          v113 = v101;
          v114 = v102;
          v115 = v103;
          v116 = v104;
          v111 = v99;
          v112 = v100;
          sub_1ADDFD834(&v111);
          goto LABEL_76;
        }
      }

      else
      {
        v36 = *(&v99 + 1);
        LODWORD(v100) = v100 + 1;
      }

      v37 = (v36 + *(v36 + 24) + (~v35 << 6));
      v39 = v37[4];
      v38 = v37[5];
      v40 = v37[3];
      v108[0] = v37[2];
      v108[1] = v40;
      v109 = v39;
      v110 = v38;
      v41 = v108[0];
      v96 = v40;
      v42 = *(&v108[0] + 1) >> 62;
      if (*(&v108[0] + 1) >> 62 == 3)
      {
        break;
      }

      if (v42 > 1)
      {
        if (v42 != 2)
        {
          goto LABEL_38;
        }

        v48 = *(*&v108[0] + 16);
        v47 = *(*&v108[0] + 24);
        v49 = __OFSUB__(v47, v48);
        v46 = v47 - v48;
        if (v49)
        {
          goto LABEL_79;
        }
      }

      else if (v42)
      {
        LODWORD(v46) = DWORD1(v108[0]) - LODWORD(v108[0]);
        if (__OFSUB__(DWORD1(v108[0]), v108[0]))
        {
          goto LABEL_80;
        }

        v46 = v46;
      }

      else
      {
        v46 = BYTE14(v108[0]);
      }

LABEL_41:
      v94 = *(&v109 + 1);
      v95 = v39;
      if (v31 > 1)
      {
        if (v31 != 2)
        {
          if (v46)
          {
LABEL_53:
            v92 = *(&v38 + 1);
            v93 = v38;
            sub_1ADDCEE40(v108, &v111, &qword_1EB5BA9E8, &qword_1AE251DE0);
            v58 = v96;
            v22 = v97;
            goto LABEL_54;
          }

          goto LABEL_56;
        }

        v52 = *(v91 + 16);
        v51 = *(v91 + 24);
        v49 = __OFSUB__(v51, v52);
        v50 = v51 - v52;
        if (v49)
        {
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
        }
      }

      else
      {
        v50 = v84;
        if (v31)
        {
          v50 = v82;
          if (v83)
          {
            goto LABEL_78;
          }
        }
      }

      if (v46 != v50)
      {
        goto LABEL_53;
      }

      if (v46 < 1)
      {
LABEL_56:
        v61 = v91;
        v62 = v88;
        sub_1ADDD86D8(v91, v88);
        sub_1ADDCEE40(v108, &v111, &qword_1EB5BA9E8, &qword_1AE251DE0);

        sub_1ADDCC35C(v41, *(&v41 + 1));
        v33 = v61;
        v34 = v62;
LABEL_15:
        sub_1ADDCC35C(v33, v34);
        v22 = v97;
      }

      else
      {
        v92 = *(&v38 + 1);
        v93 = v38;
        if (v42 > 1)
        {
          if (v42 == 2)
          {
            v64 = *(*&v108[0] + 16);
            v63 = *(*&v108[0] + 24);
            sub_1ADDD86D8(v91, v88);
            sub_1ADDCEE40(v108, &v111, &qword_1EB5BA9E8, &qword_1AE251DE0);
            v65 = sub_1AE23BB7C();
            v58 = v96;
            if (v65)
            {
              v66 = sub_1AE23BBAC();
              if (__OFSUB__(v64, v66))
              {
                goto LABEL_83;
              }

              v65 += v64 - v66;
            }

            if (__OFSUB__(v63, v64))
            {
              goto LABEL_82;
            }

            sub_1AE23BB9C();
            v67 = v65;
            v68 = v91;
            v69 = v91;
            v70 = v88;
            v71 = v88;
            v72 = v97;
            goto LABEL_72;
          }

          *(&v107 + 6) = 0;
          *&v107 = 0;
          v76 = v91;
          v77 = v88;
          sub_1ADDD86D8(v91, v88);
          sub_1ADDCEE40(v108, &v111, &qword_1EB5BA9E8, &qword_1AE251DE0);
          v78 = v97;
          sub_1ADDD8820(&v107, v76, v77, &v111);
          v22 = v78;
          v56 = v76;
          v57 = v77;
LABEL_68:
          sub_1ADDCC35C(v56, v57);
          v58 = v96;
          if ((v111 & 1) == 0)
          {
            goto LABEL_54;
          }

LABEL_73:

          sub_1ADDCC35C(v41, *(&v41 + 1));
          v31 = v87;
        }

        else
        {
          if (!v42)
          {
            *&v107 = *&v108[0];
            DWORD2(v107) = DWORD2(v108[0]);
            WORD6(v107) = WORD6(v108[0]);
            v53 = v91;
            v54 = v88;
            sub_1ADDD86D8(v91, v88);
            sub_1ADDCEE40(v108, &v111, &qword_1EB5BA9E8, &qword_1AE251DE0);
            v55 = v97;
            sub_1ADDD8820(&v107, v53, v54, &v111);
            v22 = v55;
            v56 = v53;
            v57 = v54;
            goto LABEL_68;
          }

          if (*&v108[0] >> 32 < SLODWORD(v108[0]))
          {
            goto LABEL_81;
          }

          v81 = (*&v108[0] >> 32) - SLODWORD(v108[0]);
          sub_1ADDD86D8(v91, v88);
          sub_1ADDCEE40(v108, &v111, &qword_1EB5BA9E8, &qword_1AE251DE0);
          v73 = sub_1AE23BB7C();
          if (v73)
          {
            v74 = sub_1AE23BBAC();
            v58 = v96;
            v75 = v97;
            if (__OFSUB__(v41, v74))
            {
              goto LABEL_84;
            }

            v73 += v41 - v74;
          }

          else
          {
            v58 = v96;
            v75 = v97;
          }

          sub_1AE23BB9C();
          v67 = v73;
          v68 = v91;
          v69 = v91;
          v70 = v88;
          v71 = v88;
          v72 = v75;
LABEL_72:
          sub_1ADDD8820(v67, v69, v71, &v111);
          v22 = v72;
          sub_1ADDCC35C(v68, v70);
          if (v111)
          {
            goto LABEL_73;
          }

LABEL_54:
          swift_beginAccess();
          __swift_mutable_project_boxed_opaque_existential_1(v134, v134[3]);
          sub_1AE1FE688();
          v59 = v89;
          sub_1AE23DE5C();
          swift_endAccess();
          v107 = v41;
          v98 = 0;
          sub_1AE1FE6DC();
          v60 = v90;
          sub_1AE23DD5C();
          if (v22)
          {
            (*v85)(v59, v60);
            v117 = v105;
            v118[0] = v106[0];
            *(v118 + 11) = *(v106 + 11);
            v113 = v101;
            v114 = v102;
            v115 = v103;
            v116 = v104;
            v111 = v99;
            v112 = v100;
            sub_1ADDFD834(&v111);
            sub_1ADDCC35C(v41, *(&v41 + 1));

            goto LABEL_76;
          }

          *&v107 = v58;
          v98 = 1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE818, &unk_1AE25A250);
          sub_1AE1FE730();
          sub_1AE23DD5C();
          sub_1ADDCC35C(v41, *(&v41 + 1));

          (*v85)(v59, v60);

          v31 = v87;
        }
      }
    }

    if (*&v108[0])
    {
      v43 = 0;
    }

    else
    {
      v43 = *(&v108[0] + 1) == 0xC000000000000000;
    }

    v45 = !v43 || v31 < 3;
    if (((v45 | v86) & 1) == 0)
    {
      sub_1ADDD86D8(0, 0xC000000000000000);
      sub_1ADDCEE40(v108, &v111, &qword_1EB5BA9E8, &qword_1AE251DE0);

      sub_1ADDCC35C(0, 0xC000000000000000);
      v33 = 0;
      v34 = 0xC000000000000000;
      goto LABEL_15;
    }

LABEL_38:
    v46 = 0;
    goto LABEL_41;
  }

  sub_1ADDCC35C(v132, v133);
LABEL_76:
  result = __swift_destroy_boxed_opaque_existential_1(v134);
  v80 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE1F9A28(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE800, &unk_1AE25A240);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = *a2;
  swift_beginAccess();
  v14 = *(a3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a3, *(a3 + 24));
  sub_1AE1FE688();
  sub_1AE23DE5C();
  swift_endAccess();
  v18 = v12;
  v19 = v11;
  v20 = 0;
  sub_1AE1FE6DC();
  v15 = v17;
  sub_1AE23DD5C();
  if (v15)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v18 = v13;
  v20 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE818, &unk_1AE25A250);
  sub_1AE1FE730();
  sub_1AE23DD5C();
  (*(v7 + 8))(v10, v6);
}

uint64_t Capsule.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(a2 + 24);
  v11 = *(a2 + 16);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1ADDD86D8(v3, v4);
  sub_1ADDD86D8(v5, v6);

  sub_1AE23E3BC();
  __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
  type metadata accessor for _CapsuleCodable();
  swift_getWitnessTable();
  sub_1AE23E06C();
  sub_1ADDCC35C(v3, v4);
  sub_1ADDCC35C(v5, v6);

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_1AE1F9D8C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = MEMORY[0x1E69E7CC8];
  *&v53 = MEMORY[0x1E69E7CC8];
  *(&v53 + 1) = v3;
  swift_beginAccess();
  v5 = *(v2 + 40);

  sub_1ADF5F770(v6, v50);
  sub_1ADF5F770(v4, &v46);
  v51 = v46;
  v52 = v47;
  v7 = &v51;
  MergeResult.merge(_:)(v7);

  swift_beginAccess();
  v43 = v2;
  v8 = *(v2 + 48);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = *(v2 + 48);

  v15 = 0;
  while (v11)
  {
    v16 = v15;
LABEL_11:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = (*(v8 + 56) + 24 * (v17 | (v16 << 6)));
    v20 = *v18;
    v19 = v18[1];
    v21 = v18[2];

    v22 = *(v19 + 16);

    if (v22)
    {

      sub_1ADF5F770(v23, &v46);
      sub_1ADF5F770(MEMORY[0x1E69E7CC8], &v51);

      v48 = v51;
      v49 = v52;
      v24 = &v48;
      MergeResult.merge(_:)(v24);
    }

    else
    {
    }

    v15 = v16;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v16 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v16);
    ++v15;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  v25 = *(v43 + 56);
  v26 = 1 << *(v25 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v25 + 64);
  v29 = (v26 + 63) >> 6;
  v30 = *(v43 + 56);

  v31 = 0;
  v32 = MEMORY[0x1E69E7CC8];
  while (v28)
  {
    v33 = v31;
LABEL_23:
    v34 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v35 = (*(v25 + 56) + 24 * (v34 | (v33 << 6)));
    v37 = *v35;
    v36 = v35[1];
    v38 = v35[2];

    v39 = *(v36 + 16);

    if (v39)
    {

      sub_1ADF5F770(v40, &v51);
      sub_1ADF5F770(v32, &v48);

      v44 = v48;
      v45 = v49;
      v41 = &v44;
      MergeResult.merge(_:)(v41);
    }

    else
    {
    }

    v31 = v33;
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v29)
    {

      *a1 = v53;
      return result;
    }

    v28 = *(v25 + 64 + 8 * v33);
    ++v31;
    if (v28)
    {
      goto LABEL_23;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1AE1FA14C()
{
  v1 = v0;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1AE1F9D8C(&v10);
  v9 = v10;
  sub_1ADDF8100(&v9);

  v3 = v0[2];
  v2 = v1[3];

  v5 = v1[4];
  v4 = v1[5];

  v6 = v1[6];

  v7 = v1[7];

  return v1;
}

uint64_t sub_1AE1FA218()
{
  sub_1AE1FA14C();

  return swift_deallocClassInstance();
}

double CapsuleMergeableDelta.init<A>(_:serializedData:in:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v10 = *(a4 + 32);
  v11 = *(a4 + 16);
  v13[0] = *a4;
  v13[1] = v11;
  v14 = v10;
  CapsuleMergeableDelta.init<A>(serializedData:in:)(a2, a3, v13, a5, a6, &v15);

  if (!v7)
  {
    result = *&v15;
    *a7 = v15;
  }

  return result;
}

double CapsuleMergeableDelta.init<A>(serializedData:in:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  v12 = a3[3];
  v13 = a3[4];
  type metadata accessor for CRDecoder();
  v18[0] = v9;
  v18[1] = v10;
  v18[2] = v11;
  v18[3] = v12;
  v18[4] = v13;
  if (qword_1ED96AE88 != -1)
  {
    swift_once();
  }

  v14 = v20;
  sub_1ADE63600(a1, a2, v18, qword_1ED96F2A8, 0, a4, a5, &v19);
  sub_1ADDCC35C(a1, a2);
  sub_1ADDCC35C(v9, v10);
  sub_1ADDCC35C(v11, v12);

  if (!v14)
  {
    result = *&v19;
    *a6 = v19;
  }

  return result;
}

double CapsuleMergeableDelta.init<A>(serializedData:version:in:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, _OWORD *a6@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  v12 = a3[3];
  v13 = a3[4];
  type metadata accessor for CRDecoder();
  v18[0] = v9;
  v18[1] = v10;
  v18[2] = v11;
  v18[3] = v12;
  v18[4] = v13;
  if (qword_1ED96AE88 != -1)
  {
    swift_once();
  }

  v14 = v20;
  sub_1ADE63600(a1, a2, v18, qword_1ED96F2A8, 0, a4, a5, &v19);
  sub_1ADDCC35C(a1, a2);
  sub_1ADDCC35C(v9, v10);
  sub_1ADDCC35C(v11, v12);

  if (!v14)
  {
    result = *&v19;
    *a6 = v19;
  }

  return result;
}

uint64_t CapsuleMergeableDelta.serializedData(context:version:)(void *a1, char *a2)
{
  v4 = *v2;
  v5 = *a2;
  return CapsuleMergeableDelta.deltaSerializedData(_:version:)(a1, &v5);
}

uint64_t CapsuleMergeableDelta.deltaSerializedData(_:version:)(void *a1, char *a2)
{
  v4 = v3;
  v6 = *a2;
  v8 = *v2;
  v7 = v2[1];
  v13 = *v2;
  v14 = v7;
  if (CapsuleMergeableDelta.needsToFinalizeTimestamps()())
  {
    v13 = v8;
    v14 = v7;

    CapsuleMergeableDelta.finalizeTimestamps(_:)();
    LOBYTE(v12[0]) = v6;
    type metadata accessor for CREncoder();
    swift_allocObject();
    v9 = CREncoder.init(_:version:fileSignature:)(a1, v12, 0, 0xF000000000000000);
    v12[0] = v13;
    v12[1] = v14;

    sub_1ADE69718(v12, v15);
    if (!v3)
    {
      v4 = sub_1ADE675B8(v15, *(v9 + 104) + 4, 0);
      sub_1ADE6AF00(v15);

      swift_bridgeObjectRelease_n();

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
    LOBYTE(v13) = v6;
    type metadata accessor for CREncoder();
    swift_allocObject();
    v10 = CREncoder.init(_:version:fileSignature:)(a1, &v13, 0, 0xF000000000000000);
    v13 = v8;
    v14 = v7;
    sub_1ADE69718(&v13, v16);
    if (!v3)
    {
      v4 = sub_1ADE675B8(v16, *(v10 + 104) + 4, 0);
      sub_1ADE6AF00(v16);

      return v4;
    }
  }

  return v4;
}

Swift::Bool __swiftcall CapsuleMergeableDelta.needsToFinalizeTimestamps()()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v1 + 48) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v42 = v1;
  v43 = *(v1 + 48);
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(v43 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = (*(v43 + 56) + 24 * v14);
    v19 = *v18;
    v20 = v18[2];
    v21 = *(v18[1] + 16);
    sub_1ADDD86D8(*v15, v17);

    sub_1ADDCC35C(v16, v17);

    if (v21)
    {
LABEL_22:
      v41 = 1;
LABEL_24:

      return v41;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  swift_beginAccess();
  v22 = *(v42 + 56);
  v25 = *(v22 + 64);
  v24 = v22 + 64;
  v23 = v25;
  v26 = 1 << *(*(v42 + 56) + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v23;
  v29 = (v26 + 63) >> 6;
  v44 = *(v42 + 56);
  result = swift_bridgeObjectRetain_n();
  v30 = 0;
  while (v28)
  {
    v31 = v30;
LABEL_21:
    v32 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v33 = v32 | (v31 << 6);
    v34 = (*(v44 + 48) + 16 * v33);
    v35 = *v34;
    v36 = v34[1];
    v37 = (*(v44 + 56) + 24 * v33);
    v38 = *v37;
    v39 = v37[2];
    v40 = *(v37[1] + 16);
    sub_1ADDD86D8(*v34, v36);

    sub_1ADDCC35C(v35, v36);

    if (v40)
    {
      goto LABEL_22;
    }
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v29)
    {
      v41 = 0;
      goto LABEL_24;
    }

    v28 = *(v24 + 8 * v31);
    ++v30;
    if (v28)
    {
      v30 = v31;
      goto LABEL_21;
    }
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t CapsuleMergeableDelta.finalizeTimestamps(_:)()
{
  sub_1AE1FB0C8();
  v1 = *v0;
  v2 = sub_1AE1F9D8C(&v73);
  v4 = *(&v73 + 1);
  v3 = v73;
  if (qword_1ED96B308 != -1)
  {
LABEL_45:
    v2 = swift_once();
  }

  v5 = *(qword_1ED96F2F8 + 40);
  MEMORY[0x1EEE9AC00](v2);
  v60 = v3;
  v59 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
  sub_1AE23D6AC();
  v66 = BYTE8(v73);
  v67 = v73;
  v68 = v74;
  swift_beginAccess();
  v6 = *(v1 + 48);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(v1 + 48) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v63 = *(v1 + 48);

  v3 = 0;
  v65 = v1;
  for (i = v8; ; v8 = i)
  {
    if (!v12)
    {
      while (1)
      {
        v15 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v15 >= v13)
        {
          goto LABEL_21;
        }

        v12 = *(v8 + 8 * v15);
        ++v3;
        if (v12)
        {
          v3 = v15;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

LABEL_10:
    v16 = (*(v63 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v12)))));
    v18 = *v16;
    v17 = v16[1];
    swift_beginAccess();
    sub_1ADDD86D8(v18, v17);
    v19 = *(v1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v1 + 48);
    *(v1 + 48) = 0x8000000000000000;
    v23 = sub_1ADDDE7CC(v18, v17);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_43;
    }

    v4 = v22;
    if (v21[3] < v26)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1ADF70BA4();
      if ((v4 & 1) == 0)
      {
LABEL_20:
        __break(1u);
LABEL_21:

        swift_beginAccess();
        v33 = *(v1 + 56);
        v36 = *(v33 + 64);
        v35 = v33 + 64;
        v34 = v36;
        v37 = 1 << *(*(v1 + 56) + 32);
        v38 = -1;
        if (v37 < 64)
        {
          v38 = ~(-1 << v37);
        }

        v39 = v38 & v34;
        v40 = (v37 + 63) >> 6;
        v64 = *(v1 + 56);

        v3 = 0;
        v62 = v35;
        while (v39)
        {
LABEL_29:
          v43 = (*(v64 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v39)))));
          v44 = *v43;
          v45 = v43[1];
          swift_beginAccess();
          sub_1ADDD86D8(v44, v45);
          v46 = *(v1 + 56);
          v47 = swift_isUniquelyReferenced_nonNull_native();
          v48 = *(v1 + 56);
          *(v1 + 56) = 0x8000000000000000;
          v50 = sub_1ADDDE7CC(v44, v45);
          v51 = v48[2];
          v52 = (v49 & 1) == 0;
          v53 = v51 + v52;
          if (__OFADD__(v51, v52))
          {
            goto LABEL_44;
          }

          v54 = v49;
          if (v48[3] >= v53)
          {
            if (v47)
            {
              if ((v49 & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            else
            {
              sub_1ADF70B90();
              if ((v54 & 1) == 0)
              {
                goto LABEL_39;
              }
            }
          }

          else
          {
            sub_1ADF6BA98(v53, v47);
            v55 = sub_1ADDDE7CC(v44, v45);
            if ((v54 & 1) != (v56 & 1))
            {
              goto LABEL_46;
            }

            v50 = v55;
            if ((v54 & 1) == 0)
            {
LABEL_39:
              __break(1u);
LABEL_40:

              swift_beginAccess();
              sub_1ADDF8898(v67, v66, v68);
              swift_endAccess();
              swift_beginAccess();
              sub_1ADDF8898(v67, v66, v68);
              swift_endAccess();

              *&v71 = v60;
              *(&v71 + 1) = v59;
              sub_1ADDF8100(&v71);
            }
          }

          v4 = v48;
          v57 = v48[7] + 24 * v50;
          v69 = *v57;
          v70 = *(v57 + 16);
          if (!*v57)
          {
            goto LABEL_39;
          }

          sub_1ADDF8898(v67, v66, v68);
          v41 = v48[7] + 24 * v50;
          *v41 = v69;
          *(v41 + 16) = v70;
          v39 &= v39 - 1;
          sub_1AE1FE250(v69);
          sub_1AE1FE29C(v69, *(&v69 + 1), v70, MEMORY[0x1E69E7D48]);
          v1 = v65;
          *(v65 + 56) = v48;
          swift_endAccess();
          sub_1ADDCC35C(v44, v45);
          v35 = v62;
        }

        while (1)
        {
          v42 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          if (v42 >= v40)
          {
            goto LABEL_40;
          }

          v39 = *(v35 + 8 * v42);
          ++v3;
          if (v39)
          {
            v3 = v42;
            goto LABEL_29;
          }
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

LABEL_17:
    v4 = v21;
    v29 = v21[7] + 24 * v23;
    v30 = *(v29 + 16);
    v71 = *v29;
    v72 = v30;
    if (!v71)
    {
      goto LABEL_20;
    }

    sub_1ADDF8898(v67, v66, v68);
    v31 = v71;
    v32 = v72;
    v14 = v21[7] + 24 * v23;
    *v14 = v71;
    *(v14 + 16) = v32;
    v12 &= v12 - 1;
    sub_1AE1FE250(v31);
    sub_1AE1FE29C(v31, *(&v31 + 1), v32, MEMORY[0x1E69E7D48]);
    v1 = v65;
    *(v65 + 48) = v21;
    swift_endAccess();
    sub_1ADDCC35C(v18, v17);
  }

  sub_1ADF6BAAC(v26, isUniquelyReferenced_nonNull_native);
  v27 = sub_1ADDDE7CC(v18, v17);
  if ((v4 & 1) == (v28 & 1))
  {
    v23 = v27;
    if ((v4 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

LABEL_46:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1AE1FB0C8()
{
  v1 = v0;
  v2 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    v4 = *v0;
    swift_beginAccess();
    v9 = *(v4 + 16);
    swift_beginAccess();
    v10 = *(v4 + 32);
    swift_beginAccess();
    v5 = *(v4 + 48);
    swift_beginAccess();
    v6 = *(v4 + 56);
    type metadata accessor for CapsuleMergeableDelta.Storage();
    v7 = swift_allocObject();
    *(v7 + 16) = v9;
    *(v7 + 32) = v10;
    *(v7 + 48) = v5;
    *(v7 + 56) = v6;
    v8 = qword_1ED96B308;

    if (v8 != -1)
    {
      swift_once();
    }

    sub_1AE1F9D8C(&v12);
    v11 = v12;
    sub_1ADDE1CB8(&v11);

    *v1 = v7;
  }

  return result;
}

uint64_t CapsuleMergeableDelta.visitReferences(_:)(void *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v43 = v3;
  v4 = *(v3 + 48);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v3 + 48) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v46 = *(v3 + 48);

  v13 = 0;
  v44 = v6;
  if (!v10)
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_12;
      }

      v10 = *(v6 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  while (1)
  {
    v14 = v13;
LABEL_8:
    v15 = (*(v46 + 56) + 24 * (__clz(__rbit64(v10)) | (v14 << 6)));
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v20 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    v48 = *(v19 + 8);

    if (v48(v20, v19))
    {
      break;
    }

    v10 &= v10 - 1;
    v51[0] = v18;
    v21 = a1[3];
    v22 = a1[4];
    v23 = __swift_project_boxed_opaque_existential_1(a1, v21);
    sub_1AE213254(v23, v51, v21, v22);

    v13 = v14;
    v6 = v44;
    if (!v10)
    {
      goto LABEL_5;
    }
  }

LABEL_12:

  swift_beginAccess();
  v24 = *(v43 + 56);
  v27 = *(v24 + 64);
  v26 = v24 + 64;
  v25 = v27;
  v28 = 1 << *(*(v43 + 56) + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v25;
  v31 = (v28 + 63) >> 6;
  v47 = *(v43 + 56);

  v32 = 0;
  v45 = v26;
  if (!v30)
  {
LABEL_16:
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v31)
      {
      }

      v30 = *(v26 + 8 * v33);
      ++v32;
      if (v30)
      {
        goto LABEL_19;
      }
    }

LABEL_25:
    __break(1u);
    return result;
  }

  while (1)
  {
    v33 = v32;
LABEL_19:
    v34 = (*(v47 + 56) + 24 * (__clz(__rbit64(v30)) | (v33 << 6)));
    v35 = *v34;
    v36 = v34[1];
    v37 = v34[2];
    v39 = a1[3];
    v38 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v39);
    v49 = *(v38 + 8);

    if (v49(v39, v38))
    {
      break;
    }

    v30 &= v30 - 1;
    v50 = v37;
    v40 = a1[3];
    v41 = a1[4];
    v42 = __swift_project_boxed_opaque_existential_1(a1, v40);
    sub_1AE2131AC(v42, &v50, v40, v41);

    v32 = v33;
    v26 = v45;
    if (!v30)
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1AE1FB594(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1AE1FB660(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1ADDE4E28(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1AE1FB660(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1AE1FB76C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1AE23DADC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1AE1FB76C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AE1FB7B8(a1, a2);
  sub_1AE1FB8E8(&unk_1F23BBAC8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1AE1FB7B8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1ADDD6E00(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1AE23DADC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1AE23CDFC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1ADDD6E00(v10, 0);
        result = sub_1AE23DA1C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1AE1FB8E8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1AE1FB9D4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1AE1FB9D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA108, &qword_1AE241920);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1AE1FBAC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1AE1FBBA0(uint64_t a1)
{
  v2 = sub_1ADDFB3E0();
  v3 = sub_1AE1FCCFC(&v17, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v17;
  if (v17 != v4)
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

    if (v4 < v17)
    {
LABEL_18:
      __break(1u);
    }

    else
    {
      sub_1AE1FBAC8(a1, a1 + 32, 0, (2 * v17) | 1);
      v18 = v3;
      v19 = v6;
      if (*(a1 + 16) >= v4)
      {

        for (i = (a1 + 16 * v5 + 40); ; i += 2)
        {
          if (v5 >= v4)
          {
            __break(1u);
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

          v8 = *(i - 1);
          v9 = *i;
          v10 = v18;
          v11 = v19;
          v12 = *(v19 + 16);
          v13 = *i;
          if (v18)
          {
            sub_1ADDD86D8(v8, v13);

            sub_1AE1FC868(v8, v9, v11 + 32, v12, (v10 + 16), v10 + 32);
            v15 = v14;

            if ((v15 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else
          {
            sub_1ADDD86D8(v8, v13);
            sub_1AE1FC1B0(v8, v9, v11 + 32, v12);
            if ((v16 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          sub_1AE1FBD48(v8, v9);
LABEL_7:
          ++v5;
          sub_1ADDCC35C(v8, v9);
          if (v4 == v5)
          {

            return;
          }
        }
      }
    }

    __break(1u);
  }
}

uint64_t sub_1AE1FBD48(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1ADE6F2E4(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_1ADE6F2E4((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x1B26FAA30](*(v13 + 16) & 0x3FLL) > v11)
    {
      sub_1ADDD86D8(a1, a2);
      v14 = *v3;
      result = swift_isUniquelyReferenced_native();
      v16 = *v3;
      if ((result & 1) == 0)
      {
        if (!v16)
        {
LABEL_18:
          __break(1u);
          return result;
        }

        v17 = *v3;
        v18 = sub_1AE23C19C();

        *v3 = v18;
        v16 = v18;
      }

      if (v16)
      {
        v19 = *(v16 + 16);
        v20 = *(*v6 + 16) + ~(*(v16 + 24) >> 6);
        return sub_1AE23C14C();
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_13:
    sub_1ADDD86D8(a1, a2);
    return sub_1AE1FBF04();
  }

  if (v11 >= 0xF)
  {
    goto LABEL_13;
  }

  return sub_1ADDD86D8(a1, a2);
}

uint64_t sub_1AE1FBF04()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1B26FAA50](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1AE1FBFA4(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1AE1FBFA4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1B26FAA50](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1B26FAA60](v8, a4);
    sub_1AE1FC024(a1, (v10 + 16));
    return v10;
  }

  return result;
}

uint64_t sub_1AE1FC074(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v10 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      while (1)
      {
        v5 = (v10 + 16 * v4);
        v6 = *v5;
        v7 = v5[1];
        v8 = *a3;
        sub_1AE23E31C();
        sub_1ADDD86D8(v6, v7);
        sub_1AE23BECC();
        result = sub_1AE23E34C();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v9 = sub_1AE23C13C();
        sub_1ADDCC35C(v6, v7);
        if (v9)
        {
          while (1)
          {
            sub_1AE23C17C();
          }
        }

        result = sub_1AE23C16C();
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

void sub_1AE1FC1B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  __s2[2] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
LABEL_113:
    v52 = *MEMORY[0x1E69E9840];
    return;
  }

  v4 = a4;
  v5 = a2;
  v7 = 0;
  v8 = 0;
  if (a1)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2 == 0xC000000000000000;
  }

  v10 = !v9;
  v66 = v10;
  v11 = a2 >> 62;
  v59 = HIDWORD(a1);
  v12 = __OFSUB__(HIDWORD(a1), a1);
  v63 = v12;
  v62 = HIDWORD(a1) - a1;
  __n = BYTE6(a2);
  v60 = a1;
  v57 = (a1 >> 32) - a1;
  v58 = a1 >> 32;
  v13 = (a3 + 8);
  while (1)
  {
    v15 = *(v13 - 1);
    v14 = *v13;
    v16 = *v13 >> 62;
    if (v16 == 3)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v14 == 0xC000000000000000;
      }

      v19 = !v17 || v11 < 3;
      if (((v19 | v66) & 1) == 0)
      {
        goto LABEL_113;
      }

LABEL_36:
      v20 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v16 > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_36;
      }

      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (v23)
      {
        goto LABEL_115;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v16)
    {
      LODWORD(v20) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_116;
      }

      v20 = v20;
      if (v11 <= 1)
      {
LABEL_33:
        v24 = __n;
        if (v11)
        {
          v24 = v62;
          if (v63)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v20 = BYTE6(v14);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v20)
      {
        goto LABEL_113;
      }

      goto LABEL_13;
    }

    v26 = *(a1 + 16);
    v25 = *(a1 + 24);
    v23 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (v23)
    {
      goto LABEL_114;
    }

LABEL_39:
    if (v20 != v24)
    {
      goto LABEL_13;
    }

    if (v20 < 1)
    {
      goto LABEL_113;
    }

    if (v16 > 1)
    {
      break;
    }

    if (!v16)
    {
      __s2[0] = *(v13 - 1);
      LOWORD(__s2[1]) = v14;
      BYTE2(__s2[1]) = BYTE2(v14);
      BYTE3(__s2[1]) = BYTE3(v14);
      BYTE4(__s2[1]) = BYTE4(v14);
      BYTE5(__s2[1]) = BYTE5(v14);
      sub_1ADDD86D8(v15, v14);
      goto LABEL_56;
    }

    if (v15 > v15 >> 32)
    {
      goto LABEL_117;
    }

    sub_1ADDD86D8(*(v13 - 1), *v13);
    v32 = sub_1AE23BB7C();
    v64 = v8;
    if (v32)
    {
      v33 = v32;
      v34 = sub_1AE23BBAC();
      if (__OFSUB__(v15, v34))
      {
        goto LABEL_119;
      }

      v31 = (v15 - v34 + v33);
    }

    else
    {
      v31 = 0;
    }

    sub_1AE23BB9C();
    if (v11 == 2)
    {
      v47 = *(a1 + 16);
      v54 = v31;
      v56 = *(a1 + 24);
      v35 = sub_1AE23BB7C();
      if (v35)
      {
        v48 = sub_1AE23BBAC();
        if (__OFSUB__(v47, v48))
        {
          goto LABEL_126;
        }

        v35 += v47 - v48;
      }

      v31 = (v56 - v47);
      if (__OFSUB__(v56, v47))
      {
        goto LABEL_123;
      }

      v49 = sub_1AE23BB9C();
      if (v49 >= v31)
      {
        v46 = v56 - v47;
      }

      else
      {
        v46 = v49;
      }

      v42 = v54;
      if (!v54)
      {
        goto LABEL_130;
      }

      if (!v35)
      {
        goto LABEL_129;
      }

LABEL_104:
      v5 = a2;
      if (v42 == v35)
      {
LABEL_112:
        sub_1ADDCC35C(v15, v14);
        goto LABEL_113;
      }

      v41 = v46;
      goto LABEL_106;
    }

    if (v11 == 1)
    {
      v5 = a2;
      if (v58 < v60)
      {
        goto LABEL_122;
      }

      v35 = sub_1AE23BB7C();
      if (v35)
      {
        v39 = sub_1AE23BBAC();
        if (__OFSUB__(v60, v39))
        {
          goto LABEL_127;
        }

        v35 += v60 - v39;
      }

      v40 = sub_1AE23BB9C();
      v38 = v57;
      if (v40 < v57)
      {
        v38 = v40;
      }

      if (!v31)
      {
        goto LABEL_132;
      }

      if (!v35)
      {
        goto LABEL_131;
      }

LABEL_81:
      if (v31 == v35)
      {
        goto LABEL_112;
      }

      v41 = v38;
      v42 = v31;
LABEL_106:
      v50 = v35;
      goto LABEL_109;
    }

    v5 = a2;
    LOWORD(__s2[0]) = a1;
    BYTE2(__s2[0]) = BYTE2(a1);
    BYTE3(__s2[0]) = BYTE3(a1);
    BYTE4(__s2[0]) = v59;
    BYTE5(__s2[0]) = BYTE5(a1);
    BYTE6(__s2[0]) = BYTE6(a1);
    HIBYTE(__s2[0]) = HIBYTE(a1);
    LODWORD(__s2[1]) = a2;
    WORD2(__s2[1]) = WORD2(a2);
    if (!v31)
    {
      goto LABEL_128;
    }

LABEL_108:
    v50 = __s2;
    v42 = v31;
    v41 = __n;
LABEL_109:
    v51 = memcmp(v42, v50, v41);
    sub_1ADDCC35C(v15, v14);
    v4 = a4;
    v8 = v64;
    if (!v51)
    {
      goto LABEL_113;
    }

LABEL_13:
    v13 += 2;
    if (v4 == ++v7)
    {
      goto LABEL_113;
    }
  }

  if (v16 != 2)
  {
    memset(__s2, 0, 14);
    sub_1ADDD86D8(v15, v14);
LABEL_56:
    sub_1ADDD8820(__s2, a1, v5, &v68);
    sub_1ADDCC35C(v15, v14);
    v5 = a2;
    if (v68)
    {
      goto LABEL_113;
    }

    goto LABEL_13;
  }

  v27 = *(v15 + 16);
  sub_1ADDD86D8(*(v13 - 1), *v13);
  v28 = sub_1AE23BB7C();
  v64 = v8;
  if (v28)
  {
    v29 = v28;
    v30 = sub_1AE23BBAC();
    if (__OFSUB__(v27, v30))
    {
      goto LABEL_118;
    }

    v31 = (v27 - v30 + v29);
  }

  else
  {
    v31 = 0;
  }

  sub_1AE23BB9C();
  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v53 = v31;
    v55 = *(a1 + 24);
    v35 = sub_1AE23BB7C();
    if (v35)
    {
      v44 = sub_1AE23BBAC();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_124;
      }

      v35 += v43 - v44;
    }

    v31 = (v55 - v43);
    if (__OFSUB__(v55, v43))
    {
      goto LABEL_121;
    }

    v45 = sub_1AE23BB9C();
    if (v45 >= v31)
    {
      v46 = v55 - v43;
    }

    else
    {
      v46 = v45;
    }

    v42 = v53;
    if (!v53)
    {
      goto LABEL_136;
    }

    if (!v35)
    {
      goto LABEL_135;
    }

    goto LABEL_104;
  }

  if (v11 == 1)
  {
    v5 = a2;
    if (v58 < v60)
    {
      goto LABEL_120;
    }

    v35 = sub_1AE23BB7C();
    if (v35)
    {
      v36 = sub_1AE23BBAC();
      if (__OFSUB__(v60, v36))
      {
        goto LABEL_125;
      }

      v35 += v60 - v36;
    }

    v37 = sub_1AE23BB9C();
    v38 = v57;
    if (v37 < v57)
    {
      v38 = v37;
    }

    if (!v31)
    {
      goto LABEL_134;
    }

    if (!v35)
    {
      goto LABEL_133;
    }

    goto LABEL_81;
  }

  v5 = a2;
  LOWORD(__s2[0]) = a1;
  BYTE2(__s2[0]) = BYTE2(a1);
  BYTE3(__s2[0]) = BYTE3(a1);
  BYTE4(__s2[0]) = v59;
  BYTE5(__s2[0]) = BYTE5(a1);
  BYTE6(__s2[0]) = BYTE6(a1);
  HIBYTE(__s2[0]) = HIBYTE(a1);
  LODWORD(__s2[1]) = a2;
  WORD2(__s2[1]) = WORD2(a2);
  if (v31)
  {
    goto LABEL_108;
  }

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

  __break(1u);
}

uint64_t sub_1AE1FC868(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v65 = *MEMORY[0x1E69E9840];
  v11 = *a5;
  sub_1AE23E31C();
  sub_1AE23BECC();
  v12 = sub_1AE23E34C();
  v13 = 1 << *a5;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

  *&v57 = a5;
  *(&v57 + 1) = a6;
  *&v58 = v15 & v12;
  *(&v58 + 1) = sub_1AE23C13C();
  *&v59 = v16;
  *(&v59 + 1) = v17;
  v60 = 0;
  result = sub_1AE23C15C();
  v53 = v57;
  v54 = v58;
  v55 = v59;
  v56 = 0;
  if (v19)
  {
    goto LABEL_65;
  }

  if (a1)
  {
    v20 = 0;
  }

  else
  {
    v20 = a2 == 0xC000000000000000;
  }

  v21 = !v20;
  v50 = v21;
  v22 = a2 >> 62;
  v23 = __OFSUB__(HIDWORD(a1), a1);
  v48 = v23;
  v49 = BYTE6(a2);
  v45 = a3;
  v46 = a2;
  while (1)
  {
    v25 = (a3 + 16 * result);
    v27 = *v25;
    v26 = v25[1];
    v28 = v26 >> 62;
    if (v26 >> 62 == 3)
    {
      if (v27)
      {
        v29 = 0;
      }

      else
      {
        v29 = v26 == 0xC000000000000000;
      }

      v31 = !v29 || v22 < 3;
      if (((v31 | v50) & 1) == 0)
      {
        goto LABEL_65;
      }

LABEL_38:
      v32 = 0;
      if (v22 <= 1)
      {
        goto LABEL_35;
      }

      goto LABEL_39;
    }

    if (v28 > 1)
    {
      if (v28 != 2)
      {
        goto LABEL_38;
      }

      v34 = *(v27 + 16);
      v33 = *(v27 + 24);
      v14 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (v14)
      {
        goto LABEL_69;
      }

      if (v22 <= 1)
      {
        goto LABEL_35;
      }
    }

    else if (v28)
    {
      LODWORD(v32) = HIDWORD(v27) - v27;
      if (__OFSUB__(HIDWORD(v27), v27))
      {
        goto LABEL_70;
      }

      v32 = v32;
      if (v22 <= 1)
      {
LABEL_35:
        v35 = v49;
        if (v22)
        {
          v35 = HIDWORD(a1) - a1;
          if (v48)
          {
            goto LABEL_67;
          }
        }

        goto LABEL_41;
      }
    }

    else
    {
      v32 = BYTE6(v26);
      if (v22 <= 1)
      {
        goto LABEL_35;
      }
    }

LABEL_39:
    if (v22 != 2)
    {
      if (!v32)
      {
        goto LABEL_65;
      }

      goto LABEL_15;
    }

    v37 = *(a1 + 16);
    v36 = *(a1 + 24);
    v14 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (v14)
    {
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_41:
    if (v32 != v35)
    {
      goto LABEL_15;
    }

    if (v32 < 1)
    {
      goto LABEL_65;
    }

    if (v28 <= 1)
    {
      break;
    }

    v47 = result;
    if (v28 == 2)
    {
      v40 = *(v27 + 16);
      v39 = *(v27 + 24);
      sub_1ADDD86D8(v27, v26);
      v41 = sub_1AE23BB7C();
      if (v41)
      {
        v42 = sub_1AE23BBAC();
        if (__OFSUB__(v40, v42))
        {
          goto LABEL_73;
        }

        v41 += v40 - v42;
      }

      if (__OFSUB__(v39, v40))
      {
        goto LABEL_72;
      }

      goto LABEL_60;
    }

    memset(v52, 0, 14);
    sub_1ADDD86D8(v27, v26);
    sub_1ADDD8820(v52, a1, a2, &v51);
    sub_1ADDCC35C(v27, v26);
    if (v51)
    {
LABEL_64:
      result = v47;
      goto LABEL_65;
    }

LABEL_15:
    sub_1AE23C17C();
    v61 = v53;
    v62 = v54;
    v63 = v55;
    v64 = v56;
    result = sub_1AE23C15C();
    if (v24)
    {
      goto LABEL_65;
    }
  }

  if (v28)
  {
    if (v27 >> 32 < v27)
    {
      goto LABEL_71;
    }

    v47 = result;
    sub_1ADDD86D8(v27, v26);
    v41 = sub_1AE23BB7C();
    if (v41)
    {
      v43 = sub_1AE23BBAC();
      if (__OFSUB__(v27, v43))
      {
        goto LABEL_74;
      }

      v41 += v27 - v43;
    }

LABEL_60:
    sub_1AE23BB9C();
    a2 = v46;
    sub_1ADDD8820(v41, a1, v46, v52);
    sub_1ADDCC35C(v27, v26);
    if (v52[0])
    {
      goto LABEL_64;
    }

    a3 = v45;
    goto LABEL_15;
  }

  v38 = result;
  v52[0] = v27;
  LOWORD(v52[1]) = v26;
  BYTE2(v52[1]) = BYTE2(v26);
  BYTE3(v52[1]) = BYTE3(v26);
  BYTE4(v52[1]) = BYTE4(v26);
  BYTE5(v52[1]) = BYTE5(v26);
  sub_1ADDD86D8(v27, v26);
  sub_1ADDD8820(v52, a1, a2, &v51);
  sub_1ADDCC35C(v27, v26);
  if (!v51)
  {
    goto LABEL_15;
  }

  result = v38;
LABEL_65:
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE1FCCFC(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x1B26FAA50](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x1B26FAA60]();
    sub_1AE1FD320(a2 + 32, v8, (v14 + 16), v14 + 32);
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = sub_1AE1FCDE0(a2 + 32, v8);
    result = 0;
    *a1 = v16;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

char *sub_1AE1FCDE0(uint64_t a1, uint64_t a2)
{
  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1ADE6F2E4(0, a2 & ~(a2 >> 63), 0);
  if (!a2)
  {
LABEL_10:
    v5 = a2;
LABEL_12:

    return v5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = (a1 + 8);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      sub_1ADDD86D8(v7, *v6);
      if (sub_1AE1FCF24(v7, v8, v12))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ADE6F2E4(0, *(v12 + 16) + 1, 1);
      }

      v10 = *(v12 + 16);
      v9 = *(v12 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1ADE6F2E4((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      v6 += 2;
      *(v12 + 16) = v10 + 1;
      v11 = v12 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      if (a2 == v5)
      {
        goto LABEL_10;
      }
    }

    sub_1ADDCC35C(v7, v8);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1FCF24(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v41[3] = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 16);
  if (!v3)
  {
LABEL_58:
    result = 0;
    goto LABEL_59;
  }

  v4 = a2;
  v5 = a1;
  v6 = a2 >> 62;
  v32 = HIDWORD(a1);
  v7 = __OFSUB__(HIDWORD(a1), a1);
  v8 = BYTE6(a2);
  if (a1)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2 == 0xC000000000000000;
  }

  v10 = v9;
  v39 = v10;
  v34 = HIDWORD(a1) - a1;
  v35 = a1;
  v31 = a1 >> 32;
  v11 = (a3 + 40);
  v36 = BYTE6(a2);
  v30 = v7;
  while (1)
  {
    v13 = *(v11 - 1);
    v12 = *v11;
    v14 = *v11 >> 62;
    if (v6 == 3)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_31;
      }

      v18 = *(v5 + 16);
      v17 = *(v5 + 24);
      v19 = __OFSUB__(v17, v18);
      v16 = v17 - v18;
      if (v19)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v16 = v8;
      if (v6)
      {
        v16 = v34;
        if (v7)
        {
          goto LABEL_63;
        }
      }
    }

LABEL_27:
    if (v14 <= 1)
    {
      goto LABEL_28;
    }

LABEL_32:
    if (v14 != 2)
    {
      if (!v16)
      {
        goto LABEL_57;
      }

      goto LABEL_13;
    }

    v21 = *(v13 + 16);
    v20 = *(v13 + 24);
    v19 = __OFSUB__(v20, v21);
    v22 = v20 - v21;
    if (v19)
    {
      goto LABEL_61;
    }

    if (v16 == v22)
    {
      goto LABEL_38;
    }

LABEL_13:
    v11 += 2;
    if (!--v3)
    {
      goto LABEL_58;
    }
  }

  v15 = v39;
  if (*v11 >> 62 != 3)
  {
    v15 = 0;
  }

  if (v15 == 1)
  {
    v16 = 0;
    if (!v13 && v12 == 0xC000000000000000)
    {
      goto LABEL_57;
    }

    goto LABEL_27;
  }

LABEL_31:
  v16 = 0;
  if (v14 > 1)
  {
    goto LABEL_32;
  }

LABEL_28:
  if (v14)
  {
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
    }

    if (v16 == HIDWORD(v13) - v13)
    {
      goto LABEL_38;
    }

    goto LABEL_13;
  }

  if (v16 != BYTE6(v12))
  {
    goto LABEL_13;
  }

LABEL_38:
  if (v16 < 1)
  {
    goto LABEL_57;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v23 = *(v5 + 16);
      v33 = *(v5 + 24);
      sub_1ADDD86D8(v13, v12);
      v24 = sub_1AE23BB7C();
      if (v24)
      {
        v25 = sub_1AE23BBAC();
        if (__OFSUB__(v23, v25))
        {
          goto LABEL_66;
        }

        v24 += v23 - v25;
      }

      v7 = v30;
      if (__OFSUB__(v33, v23))
      {
        goto LABEL_65;
      }

      sub_1AE23BB9C();
      sub_1ADDD8820(v24, v13, v12, v41);
      sub_1ADDCC35C(v13, v12);
      if (v41[0])
      {
        goto LABEL_57;
      }

      v4 = a2;
      goto LABEL_54;
    }

    memset(v41, 0, 14);
    sub_1ADDD86D8(v13, v12);
    goto LABEL_56;
  }

  if (!v6)
  {
    LOWORD(v41[0]) = v5;
    BYTE2(v41[0]) = BYTE2(v5);
    BYTE3(v41[0]) = BYTE3(v5);
    BYTE4(v41[0]) = v32;
    BYTE5(v41[0]) = BYTE5(v5);
    BYTE6(v41[0]) = BYTE6(v5);
    HIBYTE(v41[0]) = HIBYTE(v5);
    LOWORD(v41[1]) = v4;
    BYTE2(v41[1]) = BYTE2(v4);
    BYTE3(v41[1]) = BYTE3(v4);
    BYTE4(v41[1]) = BYTE4(v4);
    BYTE5(v41[1]) = BYTE5(v4);
    sub_1ADDD86D8(v13, v12);
LABEL_56:
    sub_1ADDD8820(v41, v13, v12, &v40);
    sub_1ADDCC35C(v13, v12);
    if (v40)
    {
      goto LABEL_57;
    }

    goto LABEL_13;
  }

  if (v31 < v35)
  {
    goto LABEL_64;
  }

  sub_1ADDD86D8(*(v11 - 1), *v11);
  v26 = sub_1AE23BB7C();
  if (v26)
  {
    v27 = sub_1AE23BBAC();
    if (__OFSUB__(v35, v27))
    {
      goto LABEL_67;
    }

    v26 += v35 - v27;
  }

  sub_1AE23BB9C();
  sub_1ADDD8820(v26, v13, v12, v41);
  sub_1ADDCC35C(v13, v12);
  if ((v41[0] & 1) == 0)
  {
LABEL_54:
    v8 = v36;
    v5 = a1;
    goto LABEL_13;
  }

LABEL_57:
  result = 1;
LABEL_59:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AE1FD320(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
LABEL_113:
    v66 = *MEMORY[0x1E69E9840];
    return;
  }

  if (a2 < 0)
  {
    goto LABEL_124;
  }

  v4 = a3;
  v5 = 0;
  while (1)
  {
    if (__OFADD__(v5, 1))
    {
      goto LABEL_117;
    }

    v6 = (a1 + 16 * v5);
    v7 = *v6;
    v8 = v6[1];
    v9 = *v4;
    sub_1AE23E31C();
    sub_1ADDD86D8(v7, v8);
    sub_1AE23BECC();
    v10 = sub_1AE23E34C();
    v11 = 1 << *v4;
    v12 = __OFSUB__(v11, 1);
    v13 = v11 - 1;
    if (v12)
    {
      goto LABEL_118;
    }

    v72 = v5 + 1;
    v14 = v13 & v10;
    v15 = sub_1AE23C13C();
    v17 = v16;
    v19 = v18;
    sub_1ADDCC35C(v7, v8);
    *&v77 = v4;
    *(&v77 + 1) = a4;
    *&v78 = v14;
    *(&v78 + 1) = v15;
    *&v79 = v17;
    *(&v79 + 1) = v19;
    v80 = 0;
    v84 = 0;
    v81 = v77;
    v82 = v78;
    v83 = v79;
    v20 = sub_1AE23C15C();
    if ((v21 & 1) == 0)
    {
      break;
    }

LABEL_4:
    sub_1AE23C16C();
    v5 = v72;
    v4 = a3;
    if (v72 == a2)
    {
      goto LABEL_113;
    }
  }

  v22 = a1;
  while (1)
  {
    v24 = (v22 + 16 * v20);
    v26 = *v24;
    v25 = v24[1];
    v28 = *v6;
    v27 = v6[1];
    v29 = v25 >> 62;
    v30 = v27 >> 62;
    if (v25 >> 62 == 3)
    {
      if (v26)
      {
        v31 = 0;
      }

      else
      {
        v31 = v25 == 0xC000000000000000;
      }

      v32 = 0;
      v33 = v31 && v27 >> 62 == 3;
      if (v33 && !v28 && v27 == 0xC000000000000000)
      {
        goto LABEL_113;
      }

LABEL_33:
      if (v30 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    }

    if (v29 <= 1)
    {
      if (!v29)
      {
        v32 = BYTE6(v25);
        if (v30 > 1)
        {
          goto LABEL_39;
        }

        goto LABEL_34;
      }

      LODWORD(v32) = HIDWORD(v26) - v26;
      if (__OFSUB__(HIDWORD(v26), v26))
      {
        goto LABEL_119;
      }

      v32 = v32;
      goto LABEL_33;
    }

    if (v29 == 2)
    {
      v35 = *(v26 + 16);
      v34 = *(v26 + 24);
      v12 = __OFSUB__(v34, v35);
      v32 = v34 - v35;
      if (v12)
      {
        goto LABEL_120;
      }

      goto LABEL_33;
    }

    v32 = 0;
    if (v30 > 1)
    {
LABEL_39:
      if (v30 != 2)
      {
        if (!v32)
        {
          goto LABEL_113;
        }

        goto LABEL_10;
      }

      v38 = *(v28 + 16);
      v37 = *(v28 + 24);
      v12 = __OFSUB__(v37, v38);
      v36 = v37 - v38;
      if (v12)
      {
        goto LABEL_116;
      }

      goto LABEL_41;
    }

LABEL_34:
    if (!v30)
    {
      v36 = BYTE6(v27);
      goto LABEL_41;
    }

    LODWORD(v36) = HIDWORD(v28) - v28;
    if (__OFSUB__(HIDWORD(v28), v28))
    {
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
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
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
    }

    v36 = v36;
LABEL_41:
    if (v32 != v36)
    {
      goto LABEL_10;
    }

    if (v32 < 1)
    {
      goto LABEL_113;
    }

    if (v29 > 1)
    {
      break;
    }

    if (!v29)
    {
      *__s2 = v26;
      *&__s2[8] = v25;
      __s2[10] = BYTE2(v25);
      __s2[11] = BYTE3(v25);
      __s2[12] = BYTE4(v25);
      __s2[13] = BYTE5(v25);
      sub_1ADDD86D8(v26, v25);
      sub_1ADDD86D8(v28, v27);
      goto LABEL_55;
    }

    if (v26 > v26 >> 32)
    {
      goto LABEL_121;
    }

    sub_1ADDD86D8(v26, v25);
    sub_1ADDD86D8(v28, v27);
    v43 = sub_1AE23BB7C();
    if (v43)
    {
      v44 = v43;
      v45 = sub_1AE23BBAC();
      if (__OFSUB__(v26, v45))
      {
        goto LABEL_123;
      }

      __s1a = (v26 - v45 + v44);
    }

    else
    {
      __s1a = 0;
    }

    sub_1AE23BB9C();
    v22 = a1;
    if (v30 == 2)
    {
      v60 = *(v28 + 16);
      v59 = *(v28 + 24);
      v46 = sub_1AE23BB7C();
      if (v46)
      {
        v61 = sub_1AE23BBAC();
        if (__OFSUB__(v60, v61))
        {
          goto LABEL_131;
        }

        v46 += v60 - v61;
      }

      v12 = __OFSUB__(v59, v60);
      v62 = v59 - v60;
      if (v12)
      {
        goto LABEL_128;
      }

      v63 = sub_1AE23BB9C();
      if (v63 >= v62)
      {
        v49 = v62;
      }

      else
      {
        v49 = v63;
      }

      v50 = __s1a;
      if (!__s1a)
      {
        goto LABEL_137;
      }

      v22 = a1;
      if (!v46)
      {
        goto LABEL_136;
      }
    }

    else
    {
      if (v30 != 1)
      {
        v58 = __s1a;
        *__s2 = v28;
        *&__s2[8] = v27;
        __s2[10] = BYTE2(v27);
        __s2[11] = BYTE3(v27);
        __s2[12] = BYTE4(v27);
        __s2[13] = BYTE5(v27);
        if (!__s1a)
        {
          goto LABEL_135;
        }

LABEL_109:
        v65 = memcmp(v58, __s2, BYTE6(v27));
        sub_1ADDCC35C(v28, v27);
        sub_1ADDCC35C(v26, v25);
        if (!v65)
        {
          goto LABEL_113;
        }

        goto LABEL_10;
      }

      if (v28 >> 32 < v28)
      {
        goto LABEL_127;
      }

      v46 = sub_1AE23BB7C();
      if (v46)
      {
        v51 = sub_1AE23BBAC();
        if (__OFSUB__(v28, v51))
        {
          goto LABEL_132;
        }

        v46 += v28 - v51;
      }

      v52 = sub_1AE23BB9C();
      if (v52 >= (v28 >> 32) - v28)
      {
        v49 = (v28 >> 32) - v28;
      }

      else
      {
        v49 = v52;
      }

      v22 = a1;
      v50 = __s1a;
      if (!__s1a)
      {
        goto LABEL_139;
      }

      if (!v46)
      {
        goto LABEL_138;
      }
    }

LABEL_105:
    if (v50 == v46)
    {
      sub_1ADDCC35C(v28, v27);
      sub_1ADDCC35C(v26, v25);
      goto LABEL_113;
    }

    v64 = memcmp(v50, v46, v49);
    sub_1ADDCC35C(v28, v27);
    sub_1ADDCC35C(v26, v25);
    if (!v64)
    {
      goto LABEL_113;
    }

LABEL_10:
    sub_1AE23C17C();
    v81 = v77;
    v82 = v78;
    v83 = v79;
    v84 = v80;
    v20 = sub_1AE23C15C();
    if (v23)
    {
      goto LABEL_4;
    }
  }

  if (v29 != 2)
  {
    *&__s2[6] = 0;
    *__s2 = 0;
    sub_1ADDD86D8(v26, v25);
    sub_1ADDD86D8(v28, v27);
LABEL_55:
    sub_1ADDD8820(__s2, v28, v27, &v75);
    if (v73)
    {
      goto LABEL_142;
    }

    sub_1ADDCC35C(v28, v27);
    sub_1ADDCC35C(v26, v25);
    if (v75)
    {
      goto LABEL_113;
    }

    goto LABEL_10;
  }

  v39 = *(v26 + 16);
  sub_1ADDD86D8(v26, v25);
  sub_1ADDD86D8(v28, v27);
  v40 = sub_1AE23BB7C();
  if (v40)
  {
    v41 = v40;
    v42 = sub_1AE23BBAC();
    if (__OFSUB__(v39, v42))
    {
      goto LABEL_122;
    }

    __s1 = (v39 - v42 + v41);
  }

  else
  {
    __s1 = 0;
  }

  sub_1AE23BB9C();
  v22 = a1;
  if (v30 == 2)
  {
    v54 = *(v28 + 16);
    v53 = *(v28 + 24);
    v46 = sub_1AE23BB7C();
    if (v46)
    {
      v55 = sub_1AE23BBAC();
      if (__OFSUB__(v54, v55))
      {
        goto LABEL_129;
      }

      v46 += v54 - v55;
    }

    v12 = __OFSUB__(v53, v54);
    v56 = v53 - v54;
    if (v12)
    {
      goto LABEL_126;
    }

    v57 = sub_1AE23BB9C();
    if (v57 >= v56)
    {
      v49 = v56;
    }

    else
    {
      v49 = v57;
    }

    v50 = __s1;
    if (!__s1)
    {
      goto LABEL_141;
    }

    v22 = a1;
    if (!v46)
    {
      goto LABEL_140;
    }

    goto LABEL_105;
  }

  if (v30 == 1)
  {
    if (v28 >> 32 < v28)
    {
      goto LABEL_125;
    }

    v46 = sub_1AE23BB7C();
    if (v46)
    {
      v47 = sub_1AE23BBAC();
      if (__OFSUB__(v28, v47))
      {
        goto LABEL_130;
      }

      v46 += v28 - v47;
    }

    v48 = sub_1AE23BB9C();
    if (v48 >= (v28 >> 32) - v28)
    {
      v49 = (v28 >> 32) - v28;
    }

    else
    {
      v49 = v48;
    }

    v22 = a1;
    v50 = __s1;
    if (!__s1)
    {
      goto LABEL_134;
    }

    if (!v46)
    {
      goto LABEL_133;
    }

    goto LABEL_105;
  }

  v58 = __s1;
  *__s2 = v28;
  *&__s2[8] = v27;
  __s2[10] = BYTE2(v27);
  __s2[11] = BYTE3(v27);
  __s2[12] = BYTE4(v27);
  __s2[13] = BYTE5(v27);
  if (__s1)
  {
    goto LABEL_109;
  }

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
}

uint64_t sub_1AE1FDB14(uint64_t a1)
{
  v2 = *sub_1AE23C1EC();
  v66 = v2;
  v67 = 0;
  v34 = a1;
  v5 = *(a1 + 64);
  v4 = a1 + 64;
  v3 = v5;
  v6 = 1 << *(v4 - 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v31 = v2;

  v11 = 0;
  v32 = v9;
  v33 = v4;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v8)) | (v12 << 6);
      v14 = *(*(v34 + 48) + 16 * v13);
      v15 = *(v34 + 56) + 48 * v13;
      v45 = *v15;
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      v18 = *(v15 + 32);
      v40 = *(v15 + 40);
      v19 = v14;
      v43 = v14;
      v44 = *(&v14 + 1);
      sub_1ADDD86D8(v14, *(&v14 + 1));
      v42 = v45;

      v20 = v16;
      v21 = v18;
      v22 = v17;

      v23 = v21;

      v24 = v40;

      if (!v22)
      {
        break;
      }

      v51[1] = v45;
      v51[0] = v43;
      v36 = v20;
      v37 = v22;
      v52 = v22;
      v53 = v20;
      v54 = v23;
      v55 = v24;
      sub_1AE23E31C();
      sub_1ADDCEE40(v51, v61, &qword_1EB5BA9E8, &qword_1AE251DE0);
      v25 = v44;
      sub_1AE23BECC();
      v39 = sub_1AE23E34C();
      sub_1ADDCC35C(v19, v25);
      v41 = v19;

      v38 = &v31;
      v56[1] = v45;
      v56[0] = v43;
      v27 = v36;
      v28 = v37;
      v57 = v37;
      v58 = v36;
      v59 = v23;
      v60 = v24;
      v46 = v43;
      v47 = v45;
      *&v48 = v37;
      *(&v48 + 1) = v36;
      *&v49 = v23;
      *(&v49 + 1) = v24;
      MEMORY[0x1EEE9AC00](v26);
      *(&v31 - 2) = &v46;
      v29 = *(&v46 + 1);
      v35 = v46;
      sub_1ADDCEE40(v56, v50, &qword_1EB5BA9E8, &qword_1AE251DE0);
      sub_1ADDD86D8(v41, v44);

      v30 = sub_1AE033684(0, v35, v29, v39, sub_1ADECDAAC, (&v31 - 4));
      v61[1] = v45;
      v61[0] = v43;
      v62 = v28;
      v63 = v27;
      v64 = v23;
      v65 = v24;
      sub_1ADDCEDE0(v61, &qword_1EB5BA9E8, &qword_1AE251DE0);
      v50[0] = v46;
      v50[1] = v47;
      v50[2] = v48;
      v50[3] = v49;
      sub_1ADDCEDE0(v50, &qword_1EB5BA9E8, &qword_1AE251DE0);

      result = sub_1ADDCC35C(v41, v44);
      if ((v30 & 1) == 0)
      {
        goto LABEL_14;
      }

      v8 &= v8 - 1;
      v11 = v12;
      v9 = v32;
      v4 = v33;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_12:

    return v66;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_12;
      }

      v8 = *(v4 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1FDEC0(_OWORD *a1, __int128 *a2)
{
  v2 = a2[1];
  v8 = *a2;
  v9 = v2;
  v3 = a2[3];
  v10 = a2[2];
  v11 = v3;
  v4 = v9;
  *a1 = v8;
  a1[1] = v4;
  v5 = v11;
  a1[2] = v10;
  a1[3] = v5;
  return sub_1ADDCEE40(&v8, &v7, &qword_1EB5BA9E8, &qword_1AE251DE0);
}

uint64_t sub_1AE1FDF30()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
    swift_beginAccess();
    return *(v1 + v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1FDFA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[15];
  v8 = v1[16];
  v9 = v1[17];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1ADE74240;

  return sub_1AE1EE714(a1, v4, v5, v6, (v1 + 5), (v1 + 10), v7, v8);
}

uint64_t sub_1AE1FE088(uint64_t (*a1)(void *, uint64_t, uint64_t))
{
  sub_1ADDCC35C(v1[2], v1[3]);
  v2 = v1[4];

  return a1(v1, 40, 7);
}

uint64_t sub_1AE1FE0DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1ADE744B8;

  return sub_1AE1AC490(a1, v4, v5, v6);
}

uint64_t sub_1AE1FE18C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1AE1FE1B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_1AE1EEE90(a1, *(v1 + 24));
}

uint64_t sub_1AE1FE1D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AE1FE250(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AE1FE29C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (result)
  {

    return a4(a3);
  }

  return result;
}

uint64_t sub_1AE1FE32C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1FE3D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t dispatch thunk of RefContainer.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))();
}

{
  return (*(a5 + 16))();
}

uint64_t dispatch thunk of MutableRefContainer.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))();
}

{
  return (*(a5 + 40))();
}

uint64_t dispatch thunk of MutableRefContainer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 24))();
}

{
  return (*(a6 + 48))();
}

uint64_t dispatch thunk of MutableRefContainer.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 32))();
}

{
  return (*(a6 + 56))();
}

uint64_t sub_1AE1FE520()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1FE55C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9Coherence7CapsuleV20ObservableDifferenceV09ReferenceD0Oyx__G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AE1FE5B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE1FE604(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void *sub_1AE1FE664(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[3] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1AE1FE688()
{
  result = qword_1EB5BE808;
  if (!qword_1EB5BE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE808);
  }

  return result;
}

unint64_t sub_1AE1FE6DC()
{
  result = qword_1EB5BE810;
  if (!qword_1EB5BE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE810);
  }

  return result;
}

unint64_t sub_1AE1FE730()
{
  result = qword_1EB5BE820;
  if (!qword_1EB5BE820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BE818, &unk_1AE25A250);
    sub_1AE048F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE820);
  }

  return result;
}

uint64_t sub_1AE1FE7B4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_1AE23C70C() - 8);
  v6 = (*(v5 + 80) + 44) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1AE23C6DC() - 8);
  return sub_1AE1F5B00(a1, *(v1 + 32), *(v1 + 40), *(v1 + 42), v1 + v6, v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), v3);
}

uint64_t sub_1AE1FE8A4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1ADE744B8;

  return sub_1AE1EEA54(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1AE1FE97C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartiallyOrderedReferenceMap();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AE1FE9F4()
{
  result = qword_1EB5BE830;
  if (!qword_1EB5BE830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE830);
  }

  return result;
}

unint64_t sub_1AE1FEA4C()
{
  result = qword_1EB5BE838;
  if (!qword_1EB5BE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE838);
  }

  return result;
}

unint64_t sub_1AE1FEAA4()
{
  result = qword_1EB5BE840;
  if (!qword_1EB5BE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE840);
  }

  return result;
}

uint64_t sub_1AE1FEB10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1AE23BFEC();
  __swift_allocate_value_buffer(v4, qword_1EB5D7CE0);
  v5 = __swift_project_value_buffer(v4, qword_1EB5D7CE0);
  sub_1AE23BF5C();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1FEC4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1AE23BFEC();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v29 = &v25 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  swift_beginAccess();
  sub_1ADDD7E88(a1 + v17, v16);
  v18 = type metadata accessor for Replica();
  v19 = *(v18 - 8);
  v28 = *(v19 + 48);
  if (v28(v16, 1, v18) != 1)
  {
    goto LABEL_6;
  }

  v27 = a2;
  sub_1ADDD7E20(v16);
  v20 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  v21 = (*(v30 + 16))(v7, a1 + v20, v4);
  v26 = v4;
  if (qword_1ED96B040 != -1)
  {
    v21 = swift_once();
  }

  v25 = &v25;
  v16 = qword_1ED96F300;
  MEMORY[0x1EEE9AC00](v21);
  *(&v25 - 2) = v7;
  v22 = v29;
  sub_1AE23D6AC();
  (*(v30 + 8))(v7, v26);
  (*(v19 + 56))(v22, 0, 1, v18);
  swift_beginAccess();
  sub_1ADDD85E4(v22, a1 + v17);
  swift_endAccess();
  *(a1 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  sub_1ADDD7E88(a1 + v17, v11);
  v23 = v28(v11, 1, v18);
  a2 = v27;
  if (v23 == 1)
  {
    __break(1u);
LABEL_6:
    v11 = v16;
  }

  return sub_1ADDD8010(v11, a2);
}

uint64_t sub_1AE1FEFC0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v31 = sub_1AE23BFEC();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v30 = &v29 - v13;
  v15 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  swift_beginAccess();
  sub_1ADDD7E88(a2 + v15, v14);
  v16 = type metadata accessor for Replica();
  v17 = *(*(v16 - 8) + 56);
  v17(v12, 1, 1, v16);
  swift_beginAccess();
  sub_1ADDD85E4(v12, a2 + v15);
  swift_endAccess();
  v18 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  v19 = a2 + v18;
  v20 = v7;
  v21 = v31;
  (*(v4 + 16))(v7, v19, v31);
  v22 = *(a2 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter);
  v23 = *(a2 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter);
  v24 = *(v3 + 48);
  v25 = *(v3 + 52);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v17((v26 + OBJC_IVAR____TtC9Coherence12ReplicaState__replica), 1, 1, v16);
  (*(v4 + 32))(v26 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v20, v21);
  *(v26 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = v22;
  *(v26 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = v23;
  swift_beginAccess();
  sub_1ADDD85E4(v30, v26 + v27);
  swift_endAccess();
  return v26;
}

uint64_t sub_1AE1FF2B4(uint64_t a1)
{
  swift_getWitnessTable();
  v2 = *(a1 + 16);
  sub_1AE23D7CC();
  v4 = *(a1 + 32);
  swift_getWitnessTable();
  return sub_1AE23CF8C();
}

uint64_t sub_1AE1FF350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  sub_1ADE17414(a2, &v13 - v10);
  Optional<A>.encode(to:)(a1, v7, a3);
  return (*(v8 + 8))(v11, v7);
}

uint64_t AnyCRDT.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE848, &qword_1AE25A540);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v188 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE850, &qword_1AE25A548);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  *&v196 = &v188 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  *&v198 = &v188 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE858, &qword_1AE25A550);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  *&v197 = &v188 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE860, &qword_1AE25A558);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v188 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v26 = &v188 - v25;
  if (!*(a1 + 64))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v33 = 0xD000000000000014;
    *(v33 + 8) = 0x80000001AE25FB50;
    *(v33 + 16) = 0;
    swift_willThrow();
  }

  v192 = v24;
  v193 = v23;
  v189 = v10;
  v190 = v9;
  v191 = v8;
  v232 = a2;
  v27 = v2;
  type metadata accessor for CRDecoder.CRDTContainer();
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = 0;
  *(v28 + 32) = 1;

  v29 = a1;
  v30 = *(sub_1ADDE78C8() + 16);
  sub_1ADE5215C(v30);

  if ((~v30 & 0xF000000000000007) != 0)
  {
    v194 = v29;
    v195 = v28;
    v34 = v30 >> 60;
    if ((v30 >> 60) <= 4)
    {
      if (v34 > 1)
      {
        if (v34 != 2)
        {
          if (v34 == 3)
          {
            v35 = *(sub_1ADDE78C8() + 16);
            v36 = MEMORY[0x1E69E7CC0];
            if ((~v35 & 0xF000000000000007) != 0)
            {
              v37 = MEMORY[0x1E69E7CC0];
              v38 = MEMORY[0x1E69E7CC0];
              if ((v35 & 0xF000000000000000) == 0x3000000000000000)
              {
                v39 = (v35 & 0xFFFFFFFFFFFFFFFLL);
                v36 = v39[2];
                v37 = v39[3];
                v38 = v39[4];
              }
            }

            else
            {
              v37 = MEMORY[0x1E69E7CC0];
              v38 = MEMORY[0x1E69E7CC0];
            }

            v151 = v194;

            v152 = sub_1AE207790(v36, v37, v38, v151);
            if (v27)
            {

              swift_setDeallocating();
              goto LABEL_110;
            }

            v153 = v152;

            swift_setDeallocating();
            swift_deallocClassInstance();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8B0, &qword_1AE25A5A8);
            v31 = swift_allocObject();
            v31[2] = 0;
            swift_beginAccess();
            v31[2] = v153;
            goto LABEL_117;
          }

          v86 = v195;
          if (*(*((v30 & 0xFFFFFFFFFFFFFFFLL) + 0x30) + 16))
          {
            v87 = *(sub_1ADDE78C8() + 16);
            if ((~v87 & 0xF000000000000007) != 0 && (v87 & 0xF000000000000000) == 0x4000000000000000)
            {
              v88 = v87 & 0xFFFFFFFFFFFFFFFLL;
              v89 = *(v88 + 80);
              *&v201[48] = *(v88 + 64);
              *&v201[64] = v89;
              *&v201[80] = *(v88 + 96);
              *&v201[96] = *(v88 + 112);
              v90 = *(v88 + 32);
              *v201 = *(v88 + 16);
              *&v201[16] = v90;
              *&v201[32] = *(v88 + 48);
              sub_1ADE51B64(v201, v200);

              v91 = *&v201[88];
              v92 = *&v201[72];
              v93 = *&v201[56];
              v94 = *&v201[40];
              v95 = *&v201[32];
              v96 = *&v201[16];
              v97 = *v201;
              v98 = *&v201[8];
            }

            else
            {

              v97 = 0;
              v95 = MEMORY[0x1E69E7CC0];
              v96 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
              v94 = 0uLL;
              v98 = 0xE000000000000000;
              v93 = 0uLL;
              v92 = 0uLL;
              v91 = 0uLL;
            }

            v217[0] = v97;
            v217[1] = v98;
            v218 = v96;
            v219 = v95;
            v220 = v94;
            v221 = v93;
            v222 = v92;
            v223 = v91;
            type metadata accessor for CRAttributedStringRef();
            swift_allocObject();
            v133 = sub_1ADDF1750(v217, v194, &type metadata for CRAttributeStringEmptyScope, &off_1F23C8220);
            if (v2)
            {
LABEL_72:

              swift_setDeallocating();
              goto LABEL_110;
            }

            v162 = v133;
            swift_setDeallocating();
            swift_deallocClassInstance();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8A0, &qword_1AE25A598);
            v122 = swift_allocObject();
            *(v122 + 16) = 1;
            swift_beginAccess();
            v163 = *(v122 + 16);
            *(v122 + 16) = v162;
            sub_1ADE23610(v163);
            goto LABEL_94;
          }

          sub_1ADE64F48(v201);
          if (v2)
          {

            swift_setDeallocating();
            v120 = *(v86 + 16);

LABEL_110:
            swift_deallocClassInstance();
            return sub_1ADE52174(v30);
          }

          swift_setDeallocating();
          v172 = *(v86 + 16);

          swift_deallocClassInstance();

          v125 = *v201;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8A8, &qword_1AE25A5A0);
          v31 = swift_allocObject();
          v31[2] = 0;
          v126 = v31 + 2;
          goto LABEL_115;
        }

        if ((*((v30 & 0xFFFFFFFFFFFFFFFLL) + 0x48) & 1) != 0 && *(v194 + 57) != 1)
        {
          v66 = v30;
          v134 = 0;
          v135 = *(sub_1ADDE78C8() + 16);
          v136 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
          v137 = 0uLL;
          v138 = 1;
          if ((~v135 & 0xF000000000000007) != 0)
          {
            v139 = 0;
            v140 = 0;
            v141 = 0uLL;
            if ((v135 & 0xF000000000000000) == 0x2000000000000000)
            {
              v142 = (v135 & 0xFFFFFFFFFFFFFFFLL);
              v143 = v142[2];
              v144 = v142[3];
              v145 = v142[5];
              *&v201[48] = v142[4];
              *&v201[64] = v145;
              *&v201[16] = v143;
              *&v201[32] = v144;
              *v201 = v142[1];
              v140 = *(&v145 + 1);
              v139 = v145;
              v138 = v201[56];
              v197 = *&v201[24];
              v198 = *&v201[40];
              v196 = *&v201[8];
              v134 = *v201;
              sub_1ADFAEE10(v201, v200);
              v137 = v197;
              v141 = v198;
              v136 = v196;
            }
          }

          else
          {
            v139 = 0;
            v140 = 0;
            v141 = 0uLL;
          }

          *v201 = v134;
          *&v201[8] = v136;
          *&v201[24] = v137;
          *&v201[40] = v141;
          v201[56] = v138;
          *&v201[64] = v139;
          *&v201[72] = v140;
          v216[0] = *v201;
          v216[1] = *&v201[16];
          v216[2] = *&v201[32];
          v216[3] = *&v201[48];
          v216[4] = *&v201[64];
          v183 = sub_1AE2115D8(v216, v194, 0, 0);
          if (v2)
          {
            sub_1ADFAECE8(v201);

            goto LABEL_99;
          }

          v184 = v183;
          sub_1ADFAECE8(v201);
          v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8B8, &qword_1AE25A5B0);
          v186 = *(v185 + 48);
          v187 = *(v185 + 52);
          v155 = swift_allocObject();
          if (qword_1ED96AC50 != -1)
          {
            swift_once();
          }

          sub_1ADDD0F70();
          sub_1AE23BFBC();

          *(v155 + 16) = v184;

          swift_setDeallocating();
          swift_deallocClassInstance();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8C0, &qword_1AE25A5B8);
          v31 = swift_allocObject();
          v31[2] = 0;
          v165 = v31 + 2;
          goto LABEL_102;
        }

        v66 = v30;
        v67 = 0;
        v68 = *(sub_1ADDE78C8() + 16);
        v69 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
        v70 = 0uLL;
        v71 = 1;
        if ((~v68 & 0xF000000000000007) != 0)
        {
          v72 = 0;
          v73 = 0;
          v74 = 0uLL;
          if ((v68 & 0xF000000000000000) == 0x2000000000000000)
          {
            v75 = (v68 & 0xFFFFFFFFFFFFFFFLL);
            v76 = v75[2];
            v77 = v75[3];
            v78 = v75[5];
            *&v201[48] = v75[4];
            *&v201[64] = v78;
            *&v201[16] = v76;
            *&v201[32] = v77;
            *v201 = v75[1];
            v73 = *(&v78 + 1);
            v72 = v78;
            v71 = v201[56];
            v197 = *&v201[24];
            v198 = *&v201[40];
            v196 = *&v201[8];
            v67 = *v201;
            sub_1ADFAEE10(v201, v200);
            v70 = v197;
            v74 = v198;
            v69 = v196;
          }
        }

        else
        {
          v72 = 0;
          v73 = 0;
          v74 = 0uLL;
        }

        LOBYTE(v200[0]) = v71;
        v209 = v67;
        v210 = v69;
        v211 = v70;
        v212 = v74;
        v213 = v71;
        v214 = v72;
        v215 = v73;
        v164 = v194;

        sub_1AE204F30(&v209, v164, 0, 0, v199);
        if (v2)
        {
LABEL_98:

LABEL_99:
          swift_setDeallocating();
          swift_deallocClassInstance();
          return sub_1ADE52174(v66);
        }

        swift_setDeallocating();
        swift_deallocClassInstance();
        v155 = v199[0];
        v156 = &unk_1EB5BE8C8;
        v157 = &unk_1AE25A5C0;
LABEL_101:
        __swift_instantiateConcreteTypeFromMangledNameV2(v156, v157);
        v31 = swift_allocObject();
        v31[2] = 0;
        v165 = v31 + 2;
LABEL_102:
        swift_beginAccess();
        v166 = *v165;
        *v165 = v155;

        v53 = v66;
        goto LABEL_118;
      }

      if (v34)
      {
        v66 = v30;
        v100 = 0;
        v101 = *(sub_1ADDE78C8() + 16);
        v102 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
        v103 = 0uLL;
        v104 = 1;
        if ((~v101 & 0xF000000000000007) != 0)
        {
          v105 = 0;
          v106 = 0;
          v107 = 0uLL;
          if ((v101 & 0xF000000000000000) == 0x1000000000000000)
          {
            v108 = (v101 & 0xFFFFFFFFFFFFFFFLL);
            v109 = v108[2];
            v110 = v108[3];
            v111 = v108[5];
            *&v201[48] = v108[4];
            *&v201[64] = v111;
            *&v201[16] = v109;
            *&v201[32] = v110;
            *v201 = v108[1];
            v106 = *(&v111 + 1);
            v105 = v111;
            v104 = v201[56];
            v197 = *&v201[24];
            v198 = *&v201[40];
            v196 = *&v201[8];
            v100 = *v201;
            sub_1ADFAEE10(v201, v200);
            v103 = v197;
            v107 = v198;
            v102 = v196;
          }
        }

        else
        {
          v105 = 0;
          v106 = 0;
          v107 = 0uLL;
        }

        LOBYTE(v200[0]) = v104;
        v202 = v100;
        v203 = v102;
        v204 = v103;
        v205 = v107;
        v206 = v104;
        v207 = v105;
        v208 = v106;
        v154 = v194;

        sub_1AE208508(&v202, v154, v199);
        if (v2)
        {
          goto LABEL_98;
        }

        swift_setDeallocating();
        swift_deallocClassInstance();
        v155 = v199[0];
        v156 = &unk_1EB5BE8D0;
        v157 = &unk_1AE25A5C8;
        goto LABEL_101;
      }

      v43 = *(v30 + 16);
      swift_beginAccess();
      if (*(v43 + 48))
      {

        v44 = sub_1ADDE78C8();
        v45 = v194;

        sub_1AE2014D4(v44, v45, v26);
        if (!v27)
        {

          swift_setDeallocating();
          swift_deallocClassInstance();

          *&v198 = v30;
          sub_1ADDD2198(v26, v22, &qword_1EB5BE860, &qword_1AE25A558);
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8E8, &qword_1AE25A5E0);
          v47 = *(v46 + 48);
          v48 = *(v46 + 52);
          v31 = swift_allocObject();
          v49 = *(*v31 + 296);
          v50 = v193;
          v51 = *(v192 + 56);
          v51(v31 + v49, 1, 1, v193);
          v52 = v197;
          sub_1ADDD2198(v22, v197, &qword_1EB5BE860, &qword_1AE25A558);
          v51(v52, 0, 1, v50);
          swift_beginAccess();
          sub_1ADF92F3C(v52, v31 + v49, &qword_1EB5BE858, &qword_1AE25A550);
          swift_endAccess();
          v53 = v198;
LABEL_118:
          result = sub_1ADE52174(v53);
          goto LABEL_119;
        }

LABEL_109:

        swift_setDeallocating();
        goto LABEL_110;
      }

      swift_beginAccess();
      if (*(v43 + 32))
      {

        v123 = sub_1ADDE78C8();
        v124 = v194;

        sub_1AE201818(v123, v124, v199);

        swift_setDeallocating();
        swift_deallocClassInstance();
        if (v27)
        {
          return sub_1ADE52174(v30);
        }

        v125 = v199[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8D8, &qword_1AE25A5D0);
        v31 = swift_allocObject();
        v31[2] = 0;
        v126 = v31 + 2;
LABEL_115:
        swift_beginAccess();
        v173 = *v126;
        *v126 = v125;

        goto LABEL_117;
      }

      v167 = sub_1ADDE78C8();
      v168 = v194;

      sub_1AE200DD8(v167, v168, v199);
      if (v27)
      {
        goto LABEL_109;
      }

      swift_setDeallocating();
      swift_deallocClassInstance();
      v114 = v199[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8E0, &qword_1AE25A5D8);
      v31 = swift_allocObject();
      v31[2] = 1;
      v115 = v31 + 2;
LABEL_49:
      swift_beginAccess();
      v116 = *v115;
      *v115 = v114;
      sub_1ADE23610(v116);
LABEL_117:
      v53 = v30;
      goto LABEL_118;
    }

    if (v34 <= 6)
    {
      if (v34 == 5)
      {
        v54 = *(sub_1ADDE78C8() + 16);
        if ((~v54 & 0xF000000000000007) != 0 && (v54 & 0xF000000000000000) == 0x5000000000000000)
        {
          v55 = v54 & 0xFFFFFFFFFFFFFFFLL;
          v56 = *(v55 + 80);
          *&v201[48] = *(v55 + 64);
          *&v201[64] = v56;
          *&v201[80] = *(v55 + 96);
          *&v201[96] = *(v55 + 112);
          v57 = *(v55 + 32);
          *v201 = *(v55 + 16);
          *&v201[16] = v57;
          *&v201[32] = *(v55 + 48);
          sub_1ADE51B64(v201, v200);

          v58 = *&v201[88];
          v59 = *&v201[72];
          v60 = *&v201[56];
          v61 = *&v201[40];
          v62 = *&v201[32];
          v63 = *&v201[16];
          v64 = *v201;
          v65 = *&v201[8];
        }

        else
        {

          v64 = 0;
          v62 = MEMORY[0x1E69E7CC0];
          v63 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
          v61 = 0uLL;
          v65 = 0xE000000000000000;
          v60 = 0uLL;
          v59 = 0uLL;
          v58 = 0uLL;
        }

        v224[0] = v64;
        v224[1] = v65;
        v225 = v63;
        v226 = v62;
        v227 = v61;
        v228 = v60;
        v229 = v59;
        v230 = v58;
        sub_1AE201970(v224, v194, v199);
        if (v2)
        {
          goto LABEL_72;
        }

        swift_setDeallocating();
        swift_deallocClassInstance();

        v114 = v199[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE890, &qword_1AE25A588);
        v31 = swift_allocObject();
        v31[2] = 1;
        v115 = v31 + 2;
        goto LABEL_49;
      }

      v112 = *(sub_1ADDE78C8() + 16);
      if ((~v112 & 0xF000000000000007) != 0 && (v112 & 0xF000000000000000) == 0x6000000000000000)
      {
        v113 = ((v112 & 0xFFFFFFFFFFFFFFFLL) + 16);
      }

      else
      {
        if (qword_1ED967F98 != -1)
        {
          swift_once();
        }

        v113 = &off_1ED967FA0;
      }

      v117 = *v113;

      sub_1AE202578(v117, v194, v201);
      if (v2)
      {
        goto LABEL_72;
      }

      swift_setDeallocating();
      swift_deallocClassInstance();

      v127 = v30;
      v128 = *v201;
      v129 = *&v201[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE898, &qword_1AE25A590);
      v31 = swift_allocObject();
      v31[3] = 0;
      v31[2] = 0;
      v130 = v31 + 2;
LABEL_92:
      swift_beginAccess();
      v160 = *v130;
      v161 = v31[3];
      *v130 = v128;
      v31[3] = v129;
      sub_1AE2132FC(v160, v161);
      v53 = v127;
      goto LABEL_118;
    }

    if (v34 == 7)
    {
      *&v198 = v30;
      v79 = 0;
      v80 = *(sub_1ADDE78C8() + 16);
      if ((~v80 & 0xF000000000000007) != 0)
      {
        v81 = 0;
        v82 = 0;
        v83 = 0;
        v84 = 0;
        if ((v80 & 0xF000000000000000) == 0x7000000000000000)
        {
          v85 = (v80 & 0xFFFFFFFFFFFFFFFLL);
          v79 = v85[2];
          v81 = v85[3];
          v82 = v85[4];
          v83 = v85[5];
          v84 = v85[6];
          sub_1ADE42C78(v81);
          sub_1ADE42C78(v83);
        }
      }

      else
      {
        v81 = 0;
        v82 = 0;
        v83 = 0;
        v84 = 0;
      }

      v231[0] = v79;
      v231[1] = v81;
      v231[2] = v82;
      v231[3] = v83;
      v231[4] = v84;
      type metadata accessor for CRCounterRef();
      swift_allocObject();
      v146 = v194;

      v147 = sub_1AE1A09F4(v231, v146);
      if (v2)
      {

        swift_setDeallocating();
        swift_deallocClassInstance();
        return sub_1ADE52174(v198);
      }

      v148 = v147;

      swift_setDeallocating();
      swift_deallocClassInstance();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE888, &qword_1AE25A580);
      v122 = swift_allocObject();
      *(v122 + 16) = 0;
      swift_beginAccess();
      v149 = *(v122 + 16);
      *(v122 + 16) = v148;

      v150 = v198;
      goto LABEL_95;
    }

    if (v34 == 8)
    {
      v40 = *((v30 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      swift_beginAccess();
      v41 = *(v40 + 208);
      if (*(v40 + 216))
      {
        v42 = v198;
        if (!v41)
        {
          goto LABEL_67;
        }

LABEL_57:

        v118 = *(sub_1ADDE78C8() + 16);
        if ((~v118 & 0xF000000000000007) != 0 && (v118 & 0xF000000000000000) == 0x8000000000000000)
        {
          v119 = ((v118 & 0xFFFFFFFFFFFFFFFLL) + 16);
        }

        else
        {
          if (qword_1ED967F98 != -1)
          {
            swift_once();
          }

          v119 = &off_1ED967FA0;
        }

        v158 = *v119;

        v159 = v194;

        sub_1AE2020F4(v158, v159, v200);
        if (v2)
        {
          goto LABEL_109;
        }

        swift_setDeallocating();
        swift_deallocClassInstance();
        v127 = v30;
        v128 = v200[0];
        v129 = v200[1];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE880, &qword_1AE25A578);
        v31 = swift_allocObject();
        v31[3] = 0;
        v31[2] = 0;
        v130 = v31 + 2;
        goto LABEL_92;
      }

      v42 = v198;
      if (!v41)
      {
LABEL_67:

        v131 = *(sub_1ADDE78C8() + 16);
        if ((~v131 & 0xF000000000000007) != 0 && (v131 & 0xF000000000000000) == 0x8000000000000000)
        {
          v132 = ((v131 & 0xFFFFFFFFFFFFFFFLL) + 16);
        }

        else
        {
          if (qword_1ED967F98 != -1)
          {
            swift_once();
          }

          v132 = &off_1ED967FA0;
        }

        v169 = *v132;

        v170 = v194;

        sub_1AE201C2C(v169, v170, v42);
        if (!v2)
        {

          swift_setDeallocating();
          swift_deallocClassInstance();
          v174 = v196;
          sub_1ADDD2198(v42, v196, &qword_1EB5BE850, &qword_1AE25A548);
          v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE878, &qword_1AE25A570);
          v176 = *(v175 + 48);
          v177 = *(v175 + 52);
          v31 = swift_allocObject();
          v178 = *(*v31 + 296);
          v179 = v190;
          v180 = *(v189 + 56);
          v180(v31 + v178, 1, 1, v190);
          v181 = v174;
          v182 = v191;
          sub_1ADDD2198(v181, v191, &qword_1EB5BE850, &qword_1AE25A548);
          v180(v182, 0, 1, v179);
          swift_beginAccess();
          sub_1ADF92F3C(v182, v31 + v178, &qword_1EB5BE848, &qword_1AE25A540);
          swift_endAccess();
          goto LABEL_117;
        }

        goto LABEL_109;
      }

      if (v41 == 1)
      {
        goto LABEL_57;
      }

      sub_1ADE42E40();
      swift_allocError();
      *v171 = 0xD00000000000001CLL;
      *(v171 + 8) = 0x80000001AE264130;
      *(v171 + 16) = 0;
      swift_willThrow();

      sub_1ADE52174(v30);
    }

    else
    {
      v99 = sub_1ADFBA168(v194);
      if (!v2)
      {
        v121 = v99;

        swift_setDeallocating();
        swift_deallocClassInstance();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE870, &qword_1AE25A568);
        v122 = swift_allocObject();
        *(v122 + 16) = 0;
        swift_beginAccess();
        *(v122 + 16) = v121;
LABEL_94:
        v150 = v30;
LABEL_95:
        result = sub_1ADE52174(v150);
        *v232 = v122;
        return result;
      }

      sub_1ADE52174(v30);
    }

    swift_setDeallocating();
    return swift_deallocClassInstance();
  }

  swift_setDeallocating();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE868, &qword_1AE25A560);
  v31 = swift_allocObject();
  *(v31 + 16) = 1;
  result = swift_beginAccess();
  *(v31 + 16) = 0;
LABEL_119:
  *v232 = v31;
  return result;
}

uint64_t sub_1AE200DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for FinalizedTimestamp(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v62 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v63 = &v59 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v59 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v59 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v59 - v19;
  v21 = *(a1 + 16);
  if (v21 >> 60)
  {
    goto LABEL_6;
  }

  if ((v21 & 0xF000000000000007) == 0xF000000000000007)
  {
    goto LABEL_6;
  }

  v22 = *(v21 + 16);
  swift_beginAccess();
  v23 = *(v22 + 40);
  if (!v23)
  {
    swift_beginAccess();
    if (!*(v22 + 48))
    {
      goto LABEL_6;
    }
  }

  swift_beginAccess();
  if (*(v22 + 32))
  {
    goto LABEL_6;
  }

  v60 = v18;
  v61 = a3;
  v27 = *(v22 + 16);
  v26 = *(v22 + 24);
  if (v23)
  {

    sub_1ADE058D4(v27, v26, a2, v20);
    if (!v3)
    {
      if (*(v22 + 40))
      {
        inited = *(v22 + 40);
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        inited = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v29 = sub_1ADE0262C(inited, a2);

      AnyCRValue.init(from:)(v29, v64);

      v31 = v64[0];
      v32 = v60;
      sub_1ADDD2788(v20, v60, type metadata accessor for FinalizedTimestamp);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA10, &unk_1AE25AA20);
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      v36 = swift_allocObject();
      v36[2] = v31;
      result = sub_1ADDD2788(v32, v36 + *(*v36 + 216), type metadata accessor for FinalizedTimestamp);
      *v61 = v36;
      return result;
    }

LABEL_33:
  }

  swift_beginAccess();
  if (!*(v22 + 48))
  {
LABEL_6:
    sub_1ADE42E40();
    swift_allocError();
    *v24 = 0xD00000000000001CLL;
    *(v24 + 8) = 0x80000001AE262080;
    *(v24 + 16) = 0;
    swift_willThrow();
  }

  sub_1ADE058D4(v27, v26, a2, v15);
  if (v3)
  {
    goto LABEL_33;
  }

  if (*(v22 + 48))
  {
    v30 = *(v22 + 48);
  }

  else
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v30 = swift_initStaticObject();
  }

  v37 = *(v30 + 16);
  if (v37 >> 60)
  {
    v38 = 1;
  }

  else
  {
    v38 = (v37 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v38)
  {
    type metadata accessor for Proto_Register._StorageClass();
    v39 = swift_initStaticObject();
  }

  else
  {
    v39 = *(v37 + 16);
  }

  swift_beginAccess();
  v40 = *(v39 + 16);
  v41 = *(v39 + 24);
  v42 = *(v39 + 32);

  if (v42)
  {
    v43 = 0;
  }

  else
  {
    v43 = v40;
  }

  if (v42)
  {
    v44 = 0;
  }

  else
  {
    v44 = v41;
  }

  v45 = v63;
  sub_1ADE058D4(v43, v44, a2, v63);
  if (*(v22 + 48))
  {
    v46 = *(v22 + 48);
  }

  else
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v46 = swift_initStaticObject();
  }

  v47 = *(v46 + 16);
  if (v47 >> 60 || (v47 & 0xF000000000000007) == 0xF000000000000007)
  {
    type metadata accessor for Proto_Register._StorageClass();
    v48 = swift_initStaticObject();
  }

  else
  {
    v48 = *(v47 + 16);
  }

  swift_beginAccess();
  v49 = *(v48 + 40);
  if (v49)
  {
    v50 = *(v48 + 40);
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v49 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v51 = sub_1ADE0262C(v49, a2);

  AnyCRValue.init(from:)(v51, &v65);

  v52 = v65;
  v53 = v60;
  sub_1ADDD2788(v15, v60, type metadata accessor for FinalizedTimestamp);
  v54 = v62;
  sub_1ADDD2788(v45, v62, type metadata accessor for FinalizedTimestamp);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA08, &qword_1AE25AA18);
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  v58 = swift_allocObject();
  v58[2] = v52;
  sub_1ADDD2788(v53, v58 + *(*v58 + 216), type metadata accessor for FinalizedTimestamp);
  result = sub_1ADDD2788(v54, v58 + *(*v58 + 224), type metadata accessor for FinalizedTimestamp);
  *v61 = v58;
  return result;
}

uint64_t sub_1AE2014D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for FinalizedTimestamp(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v15 = *(a1 + 16);
  if (v15 >> 60)
  {
    v16 = 1;
  }

  else
  {
    v16 = (v15 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v16)
  {
    type metadata accessor for Proto_Register._StorageClass();
    inited = swift_initStaticObject();
  }

  else
  {
    inited = *(v15 + 16);
  }

  swift_beginAccess();
  if (*(inited + 32))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v18 = 0xD000000000000021;
    *(v18 + 8) = 0x80000001AE2626E0;
    *(v18 + 16) = 0;
    swift_willThrow();
  }

  v20 = *(inited + 16);
  v19 = *(inited + 24);

  sub_1ADE058D4(v20, v19, a2, v12);
  if (v4)
  {
  }

  sub_1ADDD2788(v12, v14, type metadata accessor for FinalizedTimestamp);
  swift_beginAccess();
  if (*(inited + 48))
  {
    type metadata accessor for CRDecoder();
    swift_allocObject();

    v23 = sub_1ADDE77B4(v22, a2);

    AnyCRDT.init(from:)(&v27, v23);

    v25 = v27;
    sub_1ADDD2788(v14, a3, type metadata accessor for FinalizedTimestamp);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE860, &qword_1AE25A558);
    *(a3 + *(result + 36)) = v25;
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v24 = 0xD000000000000016;
    *(v24 + 8) = 0x80000001AE262710;
    *(v24 + 16) = 0;
    swift_willThrow();

    return sub_1ADDD2728(v14, type metadata accessor for FinalizedTimestamp);
  }

  return result;
}

uint64_t sub_1AE201818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 16);
  if (v6 >> 60)
  {
    v7 = 1;
  }

  else
  {
    v7 = (v6 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v7 || (v8 = *(v6 + 16), swift_beginAccess(), !*(v8 + 40)))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v12 = 0xD000000000000020;
    *(v12 + 8) = 0x80000001AE261210;
    *(v12 + 16) = 0;
    swift_willThrow();
  }

  type metadata accessor for CRDecoder();
  swift_initStackObject();

  v10 = sub_1ADE0262C(v9, a2);
  v11 = sub_1ADFBDAE4(v10);
  if (v3)
  {
  }

  v14 = v11;

  *a3 = v14;
  return result;
}

void sub_1AE201970(uint64_t a1@<X0>, uint64_t (*a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X1>, uint64_t *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = objc_allocWithZone(type metadata accessor for CRSequenceDecoder());
  v7 = &v6[OBJC_IVAR____TtC9Coherence17CRSequenceDecoder_getStorage];
  *v7 = sub_1AE2138D8;
  v7[1] = a2;
  v8 = &v6[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence];
  LOBYTE(v26) = 1;
  *v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 1) = MEMORY[0x1E69E7CC0];
  *(v8 + 2) = v9;
  *(v8 + 3) = v9;
  *(v8 + 4) = 0;
  v8[40] = 1;
  *(v8 + 6) = 0;
  *(v8 + 7) = 0;
  v8[64] = 1;
  v10 = &v6[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded];
  v11 = *(a1 + 80);
  *(v10 + 4) = *(a1 + 64);
  *(v10 + 5) = v11;
  *(v10 + 12) = *(a1 + 96);
  v12 = *(a1 + 16);
  *v10 = *a1;
  *(v10 + 1) = v12;
  v13 = *(a1 + 48);
  *(v10 + 2) = *(a1 + 32);
  *(v10 + 3) = v13;
  *&v6[OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder] = a2;
  v27.receiver = v6;
  v27.super_class = type metadata accessor for CRStringDecoder();
  swift_retain_n();
  v14 = objc_msgSendSuper2(&v27, sel_init);
  v26 = 0;
  v15 = [objc_allocWithZone(_TtC9Coherence19CRTTMergeableString) initWithDecoder:v14 error:&v26];
  v16 = v26;
  if (v15)
  {
    v17 = v15;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA48, &qword_1AE25AA98);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();
    v22 = qword_1ED96AC50;
    v23 = v16;
    if (v22 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    sub_1AE23BFBC();

    *(v21 + qword_1ED96F258) = v17;
    *a3 = v21;
  }

  else
  {
    v24 = v26;
    sub_1AE23BC9C();

    swift_willThrow();
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1AE201C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE850, &qword_1AE25A548) + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA70, &qword_1AE25AAC8);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  swift_beginAccess();
  if (*(a1 + 208))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v9 = 0xD000000000000021;
    *(v9 + 8) = 0x80000001AE263E70;
    *(v9 + 16) = 0;
    swift_willThrow();

    return sub_1ADDCEDE0(&a3[v7], &qword_1EB5BEA78, &unk_1AE25AAD0);
  }

  swift_beginAccess();
  v10 = *(a1 + 32);
  v64 = *(a1 + 16);
  *v65 = v10;
  v11 = *(a1 + 64);
  *&v65[16] = *(a1 + 48);
  *&v65[32] = v11;
  v66 = *(a1 + 80);
  v12 = *(&v64 + 1);
  if (*(&v64 + 1))
  {
    v13 = v64;
    v14 = *v65;
    v15 = *&v65[8];
    v16 = *&v65[24];
    v17 = v66;
    v18 = v65[40];
  }

  else
  {
    v13 = 0;
    v18 = 1;
    v12 = MEMORY[0x1E69E7CC0];
    v14 = MEMORY[0x1E69E7CC0];
    v17 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v58[0] = v13;
  v58[1] = v12;
  v58[2] = v14;
  v59 = v15;
  v60 = v16;
  v61 = v18 & 1;
  v62 = v17;
  sub_1ADDCEE40(&v64, v47, &qword_1EB5BCC30, &qword_1AE2580D0);

  sub_1ADFAECE8(v58);
  v19 = *(v12 + 16);

  v20 = MEMORY[0x1E69E7CC0];
  v63 = sub_1ADE55474(0, v19, 0, MEMORY[0x1E69E7CC0]);
  v21 = *(a1 + 32);
  v55 = *(a1 + 16);
  *v56 = v21;
  v22 = *(a1 + 64);
  *&v56[16] = *(a1 + 48);
  *&v56[32] = v22;
  v57 = *(a1 + 80);
  v23 = *(&v55 + 1);
  if (*(&v55 + 1))
  {
    v24 = v55;
    v25 = *v56;
    v26 = *&v56[8];
    v27 = *&v56[24];
    v28 = v57;
    v29 = v56[40];
  }

  else
  {
    v24 = 0;
    v29 = 1;
    v23 = v20;
    v25 = v20;
    v27 = 0uLL;
    v28 = 0uLL;
    v26 = 0uLL;
  }

  v53 = v29 & 1;
  v74[0] = v24;
  v74[1] = v23;
  v74[2] = v25;
  v75 = v26;
  v76 = v27;
  v77 = v29 & 1;
  v78 = v28;
  swift_retain_n();

  sub_1ADDCEE40(&v55, v47, &qword_1EB5BCC30, &qword_1AE2580D0);
  sub_1AE17E424(v74, a2, a2, a1, &v63, &v54);
  if (v3)
  {

    return sub_1ADDCEDE0(&a3[v7], &qword_1EB5BEA78, &unk_1AE25AAD0);
  }

  *(a3 + 1) = v54;
  swift_beginAccess();
  v31 = *(a1 + 176);
  v50 = *(a1 + 160);
  v51 = v31;
  v52 = *(a1 + 192);
  v32 = *(a1 + 112);
  v47[0] = *(a1 + 96);
  v47[1] = v32;
  v33 = *(a1 + 144);
  v48 = *(a1 + 128);
  v49 = v33;
  if (!*(&v47[0] + 1))
  {
    v42[0] = 0;
    v42[1] = 0xE000000000000000;
    v42[2] = v20;
    v42[3] = v20;
    v42[4] = v20;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    sub_1AE030800(v42);
    goto LABEL_16;
  }

  v34 = *(a1 + 112);
  v67[0] = *(a1 + 96);
  v67[1] = v34;
  v35 = *(a1 + 128);
  v71 = *(a1 + 152);
  v72 = *(a1 + 168);
  v73 = *(a1 + 184);
  v36 = *(&v48 + 1);
  v68 = v35;
  v69 = *(&v48 + 1);
  v70 = v49;
  v37 = v63;
  if (!*(&v48 + 1))
  {
LABEL_16:
    v41 = 0;
    goto LABEL_17;
  }

  sub_1ADDCEE40(v47, v42, &qword_1EB5BCC28, &unk_1AE251820);

  sub_1ADE42C78(v36);

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA58, &qword_1AE25AAA8);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = sub_1AE2080CC(v67, v37, a2, &unk_1F23C99A8, sub_1AE213914);
LABEL_17:
  *a3 = v41;
  sub_1AE208C50(0);
}

uint64_t sub_1AE2020F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  swift_beginAccess();
  v9 = *(a1 + 32);
  v78 = *(a1 + 16);
  *v79 = v9;
  v10 = *(a1 + 64);
  *&v79[16] = *(a1 + 48);
  *&v79[32] = v10;
  v80 = *(a1 + 80);
  v11 = *(&v78 + 1);
  if (*(&v78 + 1))
  {
    v12 = v78;
    v13 = *v79;
    v14 = *&v79[8];
    v15 = *&v79[24];
    v16 = v80;
    v17 = v79[40];
  }

  else
  {
    v12 = 0;
    v14 = 0uLL;
    v17 = 1;
    v11 = MEMORY[0x1E69E7CC0];
    v13 = MEMORY[0x1E69E7CC0];
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v69 = v17 & 1;
  v73[0] = v12;
  v73[1] = v11;
  v73[2] = v13;
  v74 = v14;
  v75 = v15;
  v76 = v17 & 1;
  v77 = v16;
  sub_1ADDCEE40(&v78, &v62, &qword_1EB5BCC30, &qword_1AE2580D0);

  sub_1AE204F30(v73, a2, sub_1AE2139F0, v7, &v70);
  if (v3)
  {
  }

  v18 = v70;
  result = swift_beginAccess();
  v19 = *v8;
  if (*v8)
  {
    swift_beginAccess();
    v20 = *(a1 + 200);

    v52 = a3;
    v53 = v18;
    v81 = sub_1AE20311C(v19, v20, sub_1AE2138F4, a2);

    swift_beginAccess();
    v22 = *(a1 + 176);
    v66 = *(a1 + 160);
    v67 = v22;
    v68 = *(a1 + 192);
    v23 = *(a1 + 112);
    v62 = *(a1 + 96);
    v63 = v23;
    v24 = *(a1 + 144);
    v64 = *(a1 + 128);
    v65 = v24;
    v25 = *(&v62 + 1);
    if (*(&v62 + 1))
    {
      v26 = v63;
      v27 = *(&v64 + 1);
      v28 = v65;
      v71[0] = v62;
      v71[1] = v63;
      v71[2] = v64;
      v71[3] = v65;
      v71[4] = v66;
      v71[5] = v67;
      v72 = v68;
      if (*(&v64 + 1))
      {
        sub_1ADDCEE40(&v62, &v55, &qword_1EB5BCC28, &unk_1AE251820);
        sub_1ADE42C78(v27);

        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA58, &qword_1AE25AAA8);
        v30 = *(v29 + 48);
        v31 = *(v29 + 52);
        swift_allocObject();
        v32 = sub_1AE2080CC(v71, v81, a2, &unk_1F23C99A8, sub_1AE213914);

LABEL_13:
        *v52 = v32;
        v52[1] = v53;
        return result;
      }

      v42 = *(a1 + 176);
      v59 = *(a1 + 160);
      v60 = v42;
      v50 = *(&v65 + 1);
      v51 = v62;
      v61 = *(a1 + 192);
      v43 = *(a1 + 112);
      v55 = *(a1 + 96);
      v56 = v43;
      v44 = *(a1 + 144);
      v57 = *(a1 + 128);
      v58 = v44;
      v48 = *(&v66 + 1);
      v49 = v66;
      v46 = *(&v67 + 1);
      v47 = v67;
      v45 = v68;
      v40 = *(&v63 + 1);
      v41 = v64;
      sub_1ADE51B64(&v55, v54);

      v39 = v45;
      v38 = v46;
      v37 = v47;
      v36 = v48;
      v35 = v49;
      v34 = v50;
      v33 = v51;
    }

    else
    {

      v33 = 0;
      v28 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v26 = MEMORY[0x1E69E7CC0];
      v25 = 0xE000000000000000;
      v40 = MEMORY[0x1E69E7CC0];
      v41 = MEMORY[0x1E69E7CC0];
    }

    *&v55 = v33;
    *(&v55 + 1) = v25;
    *&v56 = v26;
    *(&v56 + 1) = v40;
    v57 = v41;
    *&v58 = v28;
    *(&v58 + 1) = v34;
    *&v59 = v35;
    *(&v59 + 1) = v36;
    *&v60 = v37;
    *(&v60 + 1) = v38;
    v61 = v39;
    sub_1AE030800(&v55);

    v32 = 0;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE202578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  swift_beginAccess();
  v9 = *(a1 + 32);
  v78 = *(a1 + 16);
  *v79 = v9;
  v10 = *(a1 + 64);
  *&v79[16] = *(a1 + 48);
  *&v79[32] = v10;
  v80 = *(a1 + 80);
  v11 = *(&v78 + 1);
  if (*(&v78 + 1))
  {
    v12 = v78;
    v13 = *v79;
    v14 = *&v79[8];
    v15 = *&v79[24];
    v16 = v80;
    v17 = v79[40];
  }

  else
  {
    v12 = 0;
    v14 = 0uLL;
    v17 = 1;
    v11 = MEMORY[0x1E69E7CC0];
    v13 = MEMORY[0x1E69E7CC0];
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v69 = v17 & 1;
  v73[0] = v12;
  v73[1] = v11;
  v73[2] = v13;
  v74 = v14;
  v75 = v15;
  v76 = v17 & 1;
  v77 = v16;
  sub_1ADDCEE40(&v78, &v62, &qword_1EB5BCC30, &qword_1AE2580D0);

  sub_1AE205930(v73, a2, sub_1AE213874, v7, &v70);
  if (v3)
  {
  }

  v18 = v70;
  result = swift_beginAccess();
  v19 = *v8;
  if (*v8)
  {
    swift_beginAccess();
    v20 = *(a1 + 200);

    v52 = a3;
    v53 = v18;
    v81 = sub_1AE203768(v19, v20, sub_1AE213890, a2);

    swift_beginAccess();
    v22 = *(a1 + 176);
    v66 = *(a1 + 160);
    v67 = v22;
    v68 = *(a1 + 192);
    v23 = *(a1 + 112);
    v62 = *(a1 + 96);
    v63 = v23;
    v24 = *(a1 + 144);
    v64 = *(a1 + 128);
    v65 = v24;
    v25 = *(&v62 + 1);
    if (*(&v62 + 1))
    {
      v26 = v63;
      v27 = *(&v64 + 1);
      v28 = v65;
      v71[0] = v62;
      v71[1] = v63;
      v71[2] = v64;
      v71[3] = v65;
      v71[4] = v66;
      v71[5] = v67;
      v72 = v68;
      if (*(&v64 + 1))
      {
        sub_1ADDCEE40(&v62, &v55, &qword_1EB5BCC28, &unk_1AE251820);
        sub_1ADE42C78(v27);

        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA28, &qword_1AE25AA70);
        v30 = *(v29 + 48);
        v31 = *(v29 + 52);
        swift_allocObject();
        v32 = sub_1AE2080CC(v71, v81, a2, &unk_1F23C9958, sub_1AE2138AC);

LABEL_13:
        *v52 = v32;
        v52[1] = v53;
        return result;
      }

      v42 = *(a1 + 176);
      v59 = *(a1 + 160);
      v60 = v42;
      v50 = *(&v65 + 1);
      v51 = v62;
      v61 = *(a1 + 192);
      v43 = *(a1 + 112);
      v55 = *(a1 + 96);
      v56 = v43;
      v44 = *(a1 + 144);
      v57 = *(a1 + 128);
      v58 = v44;
      v48 = *(&v66 + 1);
      v49 = v66;
      v46 = *(&v67 + 1);
      v47 = v67;
      v45 = v68;
      v40 = *(&v63 + 1);
      v41 = v64;
      sub_1ADE51B64(&v55, v54);

      v39 = v45;
      v38 = v46;
      v37 = v47;
      v36 = v48;
      v35 = v49;
      v34 = v50;
      v33 = v51;
    }

    else
    {

      v33 = 0;
      v28 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v26 = MEMORY[0x1E69E7CC0];
      v25 = 0xE000000000000000;
      v40 = MEMORY[0x1E69E7CC0];
      v41 = MEMORY[0x1E69E7CC0];
    }

    *&v55 = v33;
    *(&v55 + 1) = v25;
    *&v56 = v26;
    *(&v56 + 1) = v40;
    v57 = v41;
    *&v58 = v28;
    *(&v58 + 1) = v34;
    *&v59 = v35;
    *(&v59 + 1) = v36;
    *&v60 = v37;
    *(&v60 + 1) = v38;
    v61 = v39;
    sub_1AE030800(&v55);

    v32 = 0;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE2029FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 0xA)
  {
    v5 = *(*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1E69E7CC0];
  result = sub_1ADE55458(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v8 = result;
  v9 = *(a1 + 16);
  if ((~v9 & 0xF000000000000007) != 0 && ((v9 >> 59) & 0x1E | (v9 >> 2) & 1) == 0xA)
  {
    v6 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  v17 = *(v6 + 16);
  if (v17)
  {
    v10 = 0;
    while (v10 < *(v6 + 16))
    {
      v11 = *(v6 + 8 * v10 + 32);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      sub_1ADE0262C(v11, a2);

      AnyCRValue.init(from:)(&v19, v12);
      if (v2)
      {

        goto LABEL_17;
      }

      v13 = v6;
      v14 = v19;
      v16 = *(v8 + 2);
      v15 = *(v8 + 3);
      if (v16 >= v15 >> 1)
      {
        v8 = sub_1ADE55458((v15 > 1), v16 + 1, 1, v8);
      }

      ++v10;

      *(v8 + 2) = v16 + 1;
      *&v8[8 * v16 + 32] = v14;
      v6 = v13;
      if (v17 == v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

LABEL_17:

    return v8;
  }

  return result;
}

uint64_t AnyCRDT.encode(to:)()
{
  return (*(**v0 + 184))();
}

{
  v1 = *v0;
  return sub_1AE20ADC0();
}

uint64_t AnyCRDT.copy(renamingReferences:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t AnyCRDT.merge(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = *v2;
  if (*v2 == v4)
  {
    if (qword_1ED9670C0 != -1)
    {
      result = swift_once();
    }

    v10 = byte_1ED96F222;
    *a2 = word_1ED96F220;
    *(a2 + 2) = v10;
  }

  else
  {
    v6 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = (*(*v8 + 168))();
      v9 = *v6;

      *v6 = v8;
    }

    return (*(*v8 + 96))(v4);
  }

  return result;
}

uint64_t sub_1AE202E2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = *v3;
  *&v13[0] = *v3;
  if ((*(a2 + 16))(v13))
  {
    *a3 = v7;
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    v9 = sub_1ADDCE2E4(0, v13);
    sub_1ADDCEDE0(v13, &qword_1EB5B9DB0, &qword_1AE240B80);
    LOBYTE(v13[0]) = 2;
    type metadata accessor for CREncoder();
    swift_allocObject();
    v10 = v9;
    CREncoder.init(_:version:fileSignature:)(v10, v13, 0, 0xF000000000000000);
    (*(*v7 + 184))();
    type metadata accessor for CRDecoder();
    swift_allocObject();

    v12 = sub_1ADE72118(v11);

    (*(a2 + 8))(v12, a1, a2);
  }
}

uint64_t sub_1AE20311C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v65 = a3;
  v66 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA270, &unk_1AE253920);
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  *&v70 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v52 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA380, &qword_1AE2423B0);
  v67 = *(v64 - 8);
  v11 = *(v67 + 64);
  v12 = MEMORY[0x1EEE9AC00](v64);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v52 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA68, &qword_1AE25AAC0);
  v16 = *(*(v63 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v63);
  v60 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v55 = &v52 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v54 = &v52 - v21;
  v22 = *(a1 + 16);
  v23 = *(a2 + 16);
  v68 = a1;
  v69 = v23;
  if (v23 >= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  v72 = MEMORY[0x1E69E7CC0];
  result = sub_1ADE6F0DC(0, v24, 0);
  v71 = v72;
  v61 = v22;
  v52 = a2;
  if (v24)
  {
    v58 = v24;
    v59 = v14;
    v26 = 0;
    v27 = (a2 + 40);
    v28 = v69;
    v29 = v53;
    while (v22 != v26)
    {
      v30 = v29;
      v31 = v59;
      result = sub_1ADDCEE40(v68 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v26, v59, &qword_1EB5BA380, &qword_1AE2423B0);
      if (v28 == v26)
      {
        goto LABEL_30;
      }

      v32 = *(v27 - 1);
      v33 = *v27;
      v34 = v60;
      v35 = (v60 + *(v63 + 48));
      sub_1ADDD2198(v31, v60, &qword_1EB5BA380, &qword_1AE2423B0);
      *v35 = v32;
      v35[1] = v33;
      v65(v34, v34 + *(v64 + 48), v32, v33);
      v29 = v30;
      if (v30)
      {

        return sub_1ADDCEDE0(v34, &qword_1EB5BEA68, &qword_1AE25AAC0);
      }

      sub_1ADDCEDE0(v34, &qword_1EB5BEA68, &qword_1AE25AAC0);
      v36 = v71;
      v72 = v71;
      v38 = *(v71 + 16);
      v37 = *(v71 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1ADE6F0DC(v37 > 1, v38 + 1, 1);
        v36 = v72;
      }

      ++v26;
      *(v36 + 16) = v38 + 1;
      v39 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v71 = v36;
      result = sub_1ADDD2198(v70, v36 + v39 + *(v62 + 72) * v38, &qword_1EB5BA270, &unk_1AE253920);
      v27 += 2;
      v24 = v58;
      v22 = v61;
      v28 = v69;
      if (v58 == v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v28 = v69;
    v29 = v53;
LABEL_14:
    if (v22 <= v28)
    {
      return v71;
    }

    v60 = v52 + 32;
    while (v24 < v22)
    {
      v40 = v56;
      result = sub_1ADDCEE40(v68 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v24, v56, &qword_1EB5BA380, &qword_1AE2423B0);
      v41 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_32;
      }

      if (v28 == v24)
      {
        sub_1ADDCEDE0(v40, &qword_1EB5BA380, &qword_1AE2423B0);
        return v71;
      }

      if (v24 >= v28)
      {
        goto LABEL_33;
      }

      v42 = v63;
      v43 = *(v63 + 48);
      v70 = *(v60 + 16 * v24);
      v44 = v40;
      v45 = v55;
      sub_1ADDD2198(v44, v55, &qword_1EB5BA380, &qword_1AE2423B0);
      *(v45 + v43) = v70;
      v46 = v45;
      v47 = v54;
      sub_1ADDD2198(v46, v54, &qword_1EB5BEA68, &qword_1AE25AAC0);
      v65(v47, v47 + *(v64 + 48), *(v47 + *(v42 + 48)), *(v47 + *(v42 + 48) + 8));
      if (v29)
      {
        sub_1ADDCEDE0(v47, &qword_1EB5BEA68, &qword_1AE25AAC0);
      }

      sub_1ADDCEDE0(v47, &qword_1EB5BEA68, &qword_1AE25AAC0);
      v48 = v71;
      v72 = v71;
      v50 = *(v71 + 16);
      v49 = *(v71 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1ADE6F0DC(v49 > 1, v50 + 1, 1);
        v48 = v72;
      }

      *(v48 + 16) = v50 + 1;
      v51 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v71 = v48;
      result = sub_1ADDD2198(v57, v48 + v51 + *(v62 + 72) * v50, &qword_1EB5BA270, &unk_1AE253920);
      ++v24;
      v22 = v61;
      v28 = v69;
      if (v41 == v61)
      {
        return v71;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1AE203768(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v65 = a3;
  v66 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA3A0, &qword_1AE2423D0);
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  *&v70 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v52 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA3B0, &unk_1AE2423E0);
  v67 = *(v64 - 8);
  v11 = *(v67 + 64);
  v12 = MEMORY[0x1EEE9AC00](v64);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v52 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA38, &unk_1AE25AA80);
  v16 = *(*(v63 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v63);
  v60 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v55 = &v52 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v54 = &v52 - v21;
  v22 = *(a1 + 16);
  v23 = *(a2 + 16);
  v68 = a1;
  v69 = v23;
  if (v23 >= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  v72 = MEMORY[0x1E69E7CC0];
  result = sub_1ADE6F1B4(0, v24, 0);
  v71 = v72;
  v61 = v22;
  v52 = a2;
  if (v24)
  {
    v58 = v24;
    v59 = v14;
    v26 = 0;
    v27 = (a2 + 40);
    v28 = v69;
    v29 = v53;
    while (v22 != v26)
    {
      v30 = v29;
      v31 = v59;
      result = sub_1ADDCEE40(v68 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v26, v59, &qword_1EB5BA3B0, &unk_1AE2423E0);
      if (v28 == v26)
      {
        goto LABEL_30;
      }

      v32 = *(v27 - 1);
      v33 = *v27;
      v34 = v60;
      v35 = (v60 + *(v63 + 48));
      sub_1ADDD2198(v31, v60, &qword_1EB5BA3B0, &unk_1AE2423E0);
      *v35 = v32;
      v35[1] = v33;
      v65(v34, v34 + *(v64 + 48), v32, v33);
      v29 = v30;
      if (v30)
      {

        return sub_1ADDCEDE0(v34, &qword_1EB5BEA38, &unk_1AE25AA80);
      }

      sub_1ADDCEDE0(v34, &qword_1EB5BEA38, &unk_1AE25AA80);
      v36 = v71;
      v72 = v71;
      v38 = *(v71 + 16);
      v37 = *(v71 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1ADE6F1B4(v37 > 1, v38 + 1, 1);
        v36 = v72;
      }

      ++v26;
      *(v36 + 16) = v38 + 1;
      v39 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v71 = v36;
      result = sub_1ADDD2198(v70, v36 + v39 + *(v62 + 72) * v38, &qword_1EB5BA3A0, &qword_1AE2423D0);
      v27 += 2;
      v24 = v58;
      v22 = v61;
      v28 = v69;
      if (v58 == v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v28 = v69;
    v29 = v53;
LABEL_14:
    if (v22 <= v28)
    {
      return v71;
    }

    v60 = v52 + 32;
    while (v24 < v22)
    {
      v40 = v56;
      result = sub_1ADDCEE40(v68 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v24, v56, &qword_1EB5BA3B0, &unk_1AE2423E0);
      v41 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_32;
      }

      if (v28 == v24)
      {
        sub_1ADDCEDE0(v40, &qword_1EB5BA3B0, &unk_1AE2423E0);
        return v71;
      }

      if (v24 >= v28)
      {
        goto LABEL_33;
      }

      v42 = v63;
      v43 = *(v63 + 48);
      v70 = *(v60 + 16 * v24);
      v44 = v40;
      v45 = v55;
      sub_1ADDD2198(v44, v55, &qword_1EB5BA3B0, &unk_1AE2423E0);
      *(v45 + v43) = v70;
      v46 = v45;
      v47 = v54;
      sub_1ADDD2198(v46, v54, &qword_1EB5BEA38, &unk_1AE25AA80);
      v65(v47, v47 + *(v64 + 48), *(v47 + *(v42 + 48)), *(v47 + *(v42 + 48) + 8));
      if (v29)
      {
        sub_1ADDCEDE0(v47, &qword_1EB5BEA38, &unk_1AE25AA80);
      }

      sub_1ADDCEDE0(v47, &qword_1EB5BEA38, &unk_1AE25AA80);
      v48 = v71;
      v72 = v71;
      v50 = *(v71 + 16);
      v49 = *(v71 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1ADE6F1B4(v49 > 1, v50 + 1, 1);
        v48 = v72;
      }

      *(v48 + 16) = v50 + 1;
      v51 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v71 = v48;
      result = sub_1ADDD2198(v57, v48 + v51 + *(v62 + 72) * v50, &qword_1EB5BA3A0, &qword_1AE2423D0);
      ++v24;
      v22 = v61;
      v28 = v69;
      if (v41 == v61)
      {
        return v71;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t AnyCRDT.apply(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = (*(*v6 + 168))();
    v7 = *v2;

    *v2 = v6;
  }

  return (*(*v6 + 144))(a1);
}

uint64_t sub_1AE203EAC(void *a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t))
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return a2(v5, v2, v3, v4);
}

uint64_t AnyCRDT.canMerge(delta:)(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*v2 + 224))(&v4) & 1;
}

uint64_t AnyCRDT.merge(delta:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = (*(*v6 + 168))();
    v7 = *v2;

    *v2 = v6;
  }

  v9 = v3;
  return (*(*v6 + 232))(&v9) & 1;
}

void *sub_1AE204010(uint64_t a1)
{
  v2 = 0xD00000000000001FLL;
  v3 = *(a1 + 72);
  if (!v3)
  {
    v5 = "Not decoding a CRDT.";
    v2 = 0xD000000000000017;
LABEL_7:
    v11 = v5 | 0x8000000000000000;
    sub_1ADE42E40();
    swift_allocError();
    *v12 = v2;
    *(v12 + 8) = v11;
    *(v12 + 16) = 0;
    swift_willThrow();

    return v2;
  }

  v4 = *(v3 + 16);
  v5 = "pos=";
  if ((~v4 & 0xF000000000000007) == 0 || ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) != 0xD)
  {
    goto LABEL_7;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v7 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
  v8 = type metadata accessor for CRStructDecoder();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = v6;
  v9[4] = v7;
  v10 = *(v6 + 16);

  if (v10)
  {
  }

  else
  {
    v9[3] = sub_1ADF7B940(0, *(v7 + 16));
  }

  v14[3] = v8;
  v14[4] = sub_1AE213940(qword_1ED9692A0, type metadata accessor for CRStructDecoder);
  v14[0] = v9;
  v2 = sub_1ADF7E3CC(v14);

  return v2;
}

uint64_t sub_1AE2041B8(uint64_t a1)
{
  v2 = 0xD00000000000001FLL;
  v3 = *(a1 + 72);
  if (!v3)
  {
    v5 = "Not decoding a CRDT.";
    v2 = 0xD000000000000017;
LABEL_7:
    v10 = v5 | 0x8000000000000000;
    sub_1ADE42E40();
    swift_allocError();
    *v11 = v2;
    *(v11 + 8) = v10;
    *(v11 + 16) = 0;
    swift_willThrow();
  }

  v4 = *(v3 + 16);
  v5 = "pos=";
  if ((~v4 & 0xF000000000000007) == 0 || ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) != 0xD)
  {
    goto LABEL_7;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v7 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
  type metadata accessor for CRStructDecoder();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v6;
  v8[4] = v7;
  v9 = *(v6 + 16);

  if (v9)
  {
  }

  else
  {
    v8[3] = sub_1ADF7B940(0, *(v7 + 16));
  }

  sub_1AE23BDDC();
  sub_1AE213940(qword_1ED9692A0, type metadata accessor for CRStructDecoder);
  sub_1AE213940(qword_1EB5BBA30, MEMORY[0x1E6968FB0]);
  sub_1AE23D2BC();
}

uint64_t AnyCRValue.copy(renamingReferences:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 104))();
  *a1 = result;
  return result;
}

uint64_t AnyCRValue.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1AE23BFEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = *(v11 + 16);
    if ((~v12 & 0xF000000000000007) == 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8F0, &qword_1AE25A5E8);
      result = swift_allocObject();
      *a2 = result;
      return result;
    }

    switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
    {
      case 1uLL:

        v46 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE960, &qword_1AE25A658);
        v26 = swift_allocObject();
        *(v26 + 16) = v46;
        goto LABEL_67;
      case 2uLL:
        v38 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v39 = *(a1 + 32);
        v40 = *(v39 + 16);
        if (v40)
        {
          v41 = v38 >= v40;
        }

        else
        {
          v41 = 1;
        }

        if (!v41)
        {
          v60 = v39 + 16 * v38;
          v62 = *(v60 + 32);
          v61 = *(v60 + 40);
          sub_1ADE51B2C(v12);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE950, &qword_1AE25A648);
          v63 = swift_allocObject();
          *(v63 + 2) = v62;
          *(v63 + 3) = v61;
          goto LABEL_65;
        }

        v14 = 0x80000001AE25FCF0;
        sub_1ADE42E40();
        swift_allocError();
        v16 = 0xD000000000000015;
        goto LABEL_5;
      case 3uLL:

        v43 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v42 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE948, &qword_1AE25A640);
        v44 = swift_allocObject();
        *(v44 + 16) = v43;
        *(v44 + 24) = v42;
        sub_1ADDD86D8(v43, v42);
        result = sub_1ADE51B48(v12);
        *a2 = v44;
        return result;
      case 4uLL:

        v29 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v30 = &unk_1EB5BE970;
        v31 = &unk_1AE25A668;
        goto LABEL_53;
      case 5uLL:
        v47 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v48 = *(a1 + 24);
        v49 = *(v48 + 16);
        if (v49)
        {
          v50 = v47 >= v49;
        }

        else
        {
          v50 = 1;
        }

        if (!v50)
        {
          v64 = v8;
          (*(v6 + 16))(v10, v48 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v47, v8);

          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE940, &qword_1AE25A638);
          v66 = *(v65 + 48);
          v67 = *(v65 + 52);
          v63 = swift_allocObject();
          (*(v6 + 32))(&v63[*(*v63 + 224)], v10, v64);
          goto LABEL_65;
        }

        sub_1ADE42E40();
        swift_allocError();
        *v51 = 0xD000000000000013;
        *(v51 + 8) = 0x80000001AE25FD70;
        *(v51 + 16) = 0;
        swift_willThrow();

        goto LABEL_60;
      case 6uLL:
        v53 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v54 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        sub_1ADE51B2C(v12);

        sub_1ADDD6748(v53, v54, a1, &v73);
        if (v2)
        {
          goto LABEL_61;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE938, &qword_1AE25A630);
        v26 = swift_allocObject();
        *(v26 + 16) = v73;
        goto LABEL_67;
      case 7uLL:
        v45 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        swift_beginAccess();
        if ((*(v45 + 32) & 1) == 0)
        {
          v14 = 0x80000001AE264150;
          sub_1ADE42E40();
          swift_allocError();
          v16 = 0xD00000000000001FLL;
          goto LABEL_5;
        }

        if (*(v45 + 24))
        {

          sub_1AE210D00(a1, &v72);
          if (v2)
          {
            goto LABEL_61;
          }

          v22 = *(&v72 + 1);
          v21 = v72;
LABEL_34:
          v23 = &unk_1EB5BE900;
          v24 = &unk_1AE25A5F8;
          goto LABEL_35;
        }

        sub_1AE206F28(a1, &v72);
        if (!v2)
        {
          v22 = *(&v72 + 1);
          v21 = v72;
LABEL_12:
          v23 = &unk_1EB5BE8F8;
          v24 = &unk_1AE25A5F0;
LABEL_35:
          __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
          v26 = swift_allocObject();
          *(v26 + 16) = v21;
          *(v26 + 24) = v22;
          goto LABEL_67;
        }

        goto LABEL_61;
      case 8uLL:
        v57 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        swift_beginAccess();
        if (!*(v57 + 16))
        {
          sub_1ADE51B2C(v12);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE930, &qword_1AE25A628);
          v26 = swift_allocObject();
          *(v26 + 16) = 0;
LABEL_67:
          result = sub_1ADE51B48(v12);
          *a2 = v26;
          return result;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        sub_1ADE51B2C(v12);

        v59 = sub_1ADE0262C(v58, a1);

        AnyCRValue.init(from:)(&v72, v59);
        if (!v2)
        {

          v29 = v72;
          v30 = &qword_1EB5BE930;
          v31 = &qword_1AE25A628;
LABEL_53:
          __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
          v26 = swift_allocObject();
          *(v26 + 16) = v29;
          goto LABEL_67;
        }

LABEL_59:

LABEL_60:

LABEL_61:
        result = sub_1ADE51B48(v12);
        break;
      case 9uLL:
        v33 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v32 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        sub_1ADE51B2C(v12);

        v34 = sub_1ADF92FA4(v33, v32, a1);
        if (v2)
        {
          goto LABEL_49;
        }

        v35 = v34;

        v36 = &unk_1EB5BE928;
        v37 = &unk_1AE25A620;
        goto LABEL_64;
      case 0xAuLL:
        sub_1ADE51B2C(*(v11 + 16));

        v56 = sub_1AE2029FC(v55, a1);
        if (v2)
        {
LABEL_49:
          sub_1ADE51B48(v12);
        }

        v35 = v56;

        v36 = &unk_1EB5BE920;
        v37 = &unk_1AE25A618;
LABEL_64:
        __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
        v63 = swift_allocObject();
        *(v63 + 2) = v35;
LABEL_65:
        result = sub_1ADE51B48(v12);
        *a2 = v63;
        return result;
      case 0xBuLL:
        v27 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        swift_beginAccess();
        if (*(v27 + 24))
        {
          inited = *(v27 + 24);
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          inited = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        sub_1ADE51B2C(v12);

        v68 = sub_1ADE0262C(inited, a1);

        AnyCRValue.init(from:)(&v72, v68);
        if (v2)
        {
          goto LABEL_59;
        }

        v69 = v72;
        swift_beginAccess();
        v70 = *(v27 + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE918, &qword_1AE25A610);
        v26 = swift_allocObject();
        *(v26 + 16) = v70;
        *(v26 + 24) = v69;
        goto LABEL_67;
      case 0xCuLL:
        type metadata accessor for CRDecoder.CRValueContainer();
        *(swift_initStackObject() + 16) = a1;

        sub_1ADE65E00(&v73);
        if (v2)
        {
          goto LABEL_60;
        }

        v29 = v73;
        v30 = &unk_1EB5BE910;
        v31 = &unk_1AE25A608;
        goto LABEL_53;
      case 0xDuLL:

        v52 = sub_1AE204010(a1);
        if (v2)
        {
          goto LABEL_61;
        }

        v35 = v52;
        v36 = &unk_1EB5BE908;
        v37 = &unk_1AE25A600;
        goto LABEL_64;
      case 0xEuLL:

        v25 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE958, &qword_1AE25A650);
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        goto LABEL_67;
      case 0xFuLL:

        sub_1AE210D00(a1, &v73);
        if (v2)
        {
          goto LABEL_61;
        }

        v22 = *(&v73 + 1);
        v21 = v73;
        goto LABEL_34;
      case 0x10uLL:

        sub_1AE206F28(a1, &v73);
        if (v2)
        {
          goto LABEL_61;
        }

        v22 = *(&v73 + 1);
        v21 = v73;
        goto LABEL_12;
      default:
        v17 = *(v12 + 16);
        v18 = *(a1 + 57);
        sub_1ADE51B2C(v12);

        if (v18 == 1)
        {
          v19 = &unk_1EB5BE970;
          v20 = &unk_1AE25A668;
        }

        else
        {
          v19 = &unk_1EB5BE968;
          v20 = &unk_1AE25A660;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
        v26 = swift_allocObject();
        *(v26 + 16) = v17;
        goto LABEL_67;
    }
  }

  else
  {
    v14 = 0x80000001AE25FB70;
    sub_1ADE42E40();
    swift_allocError();
    v16 = 0xD000000000000017;
LABEL_5:
    *v15 = v16;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t AnyCRValue.encode(to:)()
{
  return (*(**v0 + 152))();
}

{
  (*(**v0 + 80))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
  swift_dynamicCast();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1AE23CBAC();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t AnyCRDT.newRefs(from:)(void *a1)
{
  v2 = *v1;
  if (v2 == *a1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  else
  {
    return (*(*v2 + 104))();
  }
}

uint64_t sub_1AE204F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v83 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA380, &qword_1AE2423B0);
  v90 = *(v9 - 8);
  v10 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v92 = (&v79 - v11);
  v12 = type metadata accessor for FinalizedTimestamp(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v79 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v79 - v20;
  v22 = sub_1AE23BFEC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 + 24);
  v28 = *(v27 + 16);
  if (!v28 || (v29 = *a1, *a1 >= v28))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v46 = 0xD000000000000013;
    *(v46 + 8) = 0x80000001AE25FD70;
    *(v46 + 16) = 0;
    swift_willThrow();
    sub_1ADDDCE80(a3);
    goto LABEL_19;
  }

  v82 = v16;
  v86 = a3;
  v84 = a4;
  (*(v23 + 16))(v26, v27 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v29, v22);
  v30 = type metadata accessor for ReplicaState();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  v91 = a2;
  v34 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v35 = type metadata accessor for Replica();
  v36 = *(v35 - 8);
  v85 = a1;
  v37 = *(v36 + 56);
  v37(v33 + v34, 1, 1, v35);
  (*(v23 + 32))(v33 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v26, v22);
  *(v33 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v33 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v37(v21, 1, 1, v35);
  a1 = v85;
  swift_beginAccess();
  v38 = v33 + v34;
  v39 = v91;
  sub_1ADF92F3C(v21, v38, &unk_1EB5B9E70, &unk_1AE240EC0);
  swift_endAccess();
  v40 = *(a1 + 24);
  v41 = *(a1 + 32);
  v42 = MEMORY[0x1E69E7CC0];
  if (v40)
  {
    v43 = *(a1 + 24);
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
  }

  if (v40)
  {
    v44 = *(a1 + 32);
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v40);

  v45 = v89;
  sub_1ADDD6748(v43, v44, v39, v93);
  if (v45)
  {

    sub_1ADDDCE80(v86);
LABEL_19:

    return sub_1ADFAECE8(a1);
  }

  v47 = v93[0];
  v48 = v93[1];
  v49 = *(a1 + 40);
  if (*(a1 + 56))
  {
    v50 = 0;
  }

  else
  {
    v50 = *(a1 + 40);
  }

  if (*(a1 + 56))
  {
    v51 = 0;
  }

  else
  {
    v51 = *(a1 + 48);
  }

  sub_1ADE058D4(v50, v51, v39, v87);
  v89 = 0;
  v80 = v48;
  v81 = v47;
  v79 = v33;
  v53 = *(a1 + 8);
  v54 = *(v53 + 16);
  if (v54)
  {
    v93[0] = v42;
    sub_1ADE6F13C(0, v54, 0);
    v55 = 0;
    v56 = v93[0];
    v57 = (v53 + 64);
    while (v55 < *(v53 + 16))
    {
      v88 = v56;
      v58 = *(v57 - 3);
      v60 = *(v57 - 2);
      v59 = *(v57 - 1);
      v61 = *v57;
      v94[0] = *(v57 - 4);
      v94[1] = v58;
      v94[2] = v60;
      v94[3] = v59;
      v94[4] = v61;

      sub_1ADE42C78(v60);

      v62 = v89;
      sub_1AE206330(v94, v91, v92);
      v89 = v62;
      if (v62)
      {

        sub_1ADDDCE80(v86);
        sub_1ADFAECE8(v85);

        sub_1ADDD2728(v87, type metadata accessor for FinalizedTimestamp);

        sub_1ADE42CB8(v60);
      }

      sub_1ADE42CB8(v60);

      v56 = v88;
      v93[0] = v88;
      v64 = *(v88 + 16);
      v63 = *(v88 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_1ADE6F13C(v63 > 1, v64 + 1, 1);
        v56 = v93[0];
      }

      ++v55;
      *(v56 + 16) = v64 + 1;
      sub_1ADDD2198(v92, v56 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v64, &qword_1EB5BA380, &qword_1AE2423B0);
      v57 += 5;
      if (v54 == v55)
      {
        sub_1ADFAECE8(v85);
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_38;
  }

  sub_1ADFAECE8(a1);
  v56 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v65 = v86;
  v66 = v89;
  if (v86)
  {

    v65(v56);
    sub_1ADDDCE80(v65);
  }

  v55 = MEMORY[0x1E69E7CC8];
  if (*(v56 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB838, &qword_1AE25AA40);
    v67 = sub_1AE23DCDC();
  }

  else
  {
    v67 = MEMORY[0x1E69E7CC8];
  }

  v95 = v67;
  sub_1AE2121C8(v56, 1, &v95);
  if (v66)
  {

    sub_1ADDDCE80(v86);

    sub_1ADDD2728(v87, type metadata accessor for FinalizedTimestamp);
  }

  v92 = v95;
  v54 = v86;
  if (qword_1ED96B308 != -1)
  {
    goto LABEL_42;
  }

LABEL_38:
  v68 = *(qword_1ED96F2F8 + 40);
  sub_1AE23D6AC();
  v69 = v93[0];
  v70 = v87;
  v71 = v82;
  sub_1ADDD26C0(v87, v82, type metadata accessor for FinalizedTimestamp);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA18, &qword_1AE25AA48);
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  v75 = swift_allocObject();
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  sub_1ADDDCE80(v54);

  sub_1ADDD2728(v70, type metadata accessor for FinalizedTimestamp);
  sub_1ADDD2788(v71, v75 + qword_1ED96F250, type metadata accessor for FinalizedTimestamp);
  v75[3] = v55;
  v75[4] = v55;
  v75[5] = v55;
  v75[6] = 0;
  v75[2] = v79;
  swift_beginAccess();
  v76 = v75[3];
  v77 = v75[4];
  v75[3] = v81;
  v75[4] = v80;

  swift_beginAccess();
  v78 = v75[5];
  v75[5] = v92;

  v75[6] = v69;
  *v83 = v75;
  return result;
}

uint64_t sub_1AE205930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v83 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA3B0, &unk_1AE2423E0);
  v90 = *(v9 - 8);
  v10 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v92 = &v79 - v11;
  v12 = type metadata accessor for FinalizedTimestamp(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v79 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v79 - v20;
  v22 = sub_1AE23BFEC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 + 24);
  v28 = *(v27 + 16);
  if (!v28 || (v29 = *a1, *a1 >= v28))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v46 = 0xD000000000000013;
    *(v46 + 8) = 0x80000001AE25FD70;
    *(v46 + 16) = 0;
    swift_willThrow();
    sub_1ADDDCE80(a3);
    goto LABEL_19;
  }

  v82 = v16;
  v86 = a3;
  v84 = a4;
  (*(v23 + 16))(v26, v27 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v29, v22);
  v30 = type metadata accessor for ReplicaState();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  v91 = a2;
  v34 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v35 = type metadata accessor for Replica();
  v36 = *(v35 - 8);
  v85 = a1;
  v37 = *(v36 + 56);
  v37(v33 + v34, 1, 1, v35);
  (*(v23 + 32))(v33 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v26, v22);
  *(v33 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v33 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v37(v21, 1, 1, v35);
  a1 = v85;
  swift_beginAccess();
  v38 = v33 + v34;
  v39 = v91;
  sub_1ADF92F3C(v21, v38, &unk_1EB5B9E70, &unk_1AE240EC0);
  swift_endAccess();
  v40 = *(a1 + 24);
  v41 = *(a1 + 32);
  v42 = MEMORY[0x1E69E7CC0];
  if (v40)
  {
    v43 = *(a1 + 24);
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
  }

  if (v40)
  {
    v44 = *(a1 + 32);
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v40);

  v45 = v89;
  sub_1ADDD6748(v43, v44, v39, v93);
  if (v45)
  {

    sub_1ADDDCE80(v86);
LABEL_19:

    return sub_1ADFAECE8(a1);
  }

  v47 = v93[0];
  v48 = v93[1];
  v49 = *(a1 + 40);
  if (*(a1 + 56))
  {
    v50 = 0;
  }

  else
  {
    v50 = *(a1 + 40);
  }

  if (*(a1 + 56))
  {
    v51 = 0;
  }

  else
  {
    v51 = *(a1 + 48);
  }

  sub_1ADE058D4(v50, v51, v39, v87);
  v89 = 0;
  v80 = v48;
  v81 = v47;
  v79 = v33;
  v53 = *(a1 + 8);
  v54 = *(v53 + 16);
  if (v54)
  {
    v93[0] = v42;
    sub_1ADE6F1F4(0, v54, 0);
    v55 = 0;
    v56 = v93[0];
    v57 = (v53 + 64);
    while (v55 < *(v53 + 16))
    {
      v88 = v56;
      v58 = *(v57 - 3);
      v60 = *(v57 - 2);
      v59 = *(v57 - 1);
      v61 = *v57;
      v94[0] = *(v57 - 4);
      v94[1] = v58;
      v94[2] = v60;
      v94[3] = v59;
      v94[4] = v61;

      sub_1ADE42C78(v60);

      v62 = v89;
      sub_1AE206858(v94, v91, v92);
      v89 = v62;
      if (v62)
      {

        sub_1ADDDCE80(v86);
        sub_1ADFAECE8(v85);

        sub_1ADDD2728(v87, type metadata accessor for FinalizedTimestamp);

        sub_1ADE42CB8(v60);
      }

      sub_1ADE42CB8(v60);

      v56 = v88;
      v93[0] = v88;
      v64 = *(v88 + 16);
      v63 = *(v88 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_1ADE6F1F4(v63 > 1, v64 + 1, 1);
        v56 = v93[0];
      }

      ++v55;
      *(v56 + 16) = v64 + 1;
      sub_1ADDD2198(v92, v56 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v64, &qword_1EB5BA3B0, &unk_1AE2423E0);
      v57 += 5;
      if (v54 == v55)
      {
        sub_1ADFAECE8(v85);
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_38;
  }

  sub_1ADFAECE8(a1);
  v56 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v65 = v86;
  v66 = v89;
  if (v86)
  {

    v65(v56);
    sub_1ADDDCE80(v65);
  }

  v55 = MEMORY[0x1E69E7CC8];
  if (*(v56 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB848, &qword_1AE24CF18);
    v67 = sub_1AE23DCDC();
  }

  else
  {
    v67 = MEMORY[0x1E69E7CC8];
  }

  v95 = v67;
  sub_1AE21273C(v56, 1, &v95);
  if (v66)
  {

    sub_1ADDDCE80(v86);

    sub_1ADDD2728(v87, type metadata accessor for FinalizedTimestamp);
  }

  v92 = v95;
  v54 = v86;
  if (qword_1ED96B308 != -1)
  {
    goto LABEL_42;
  }

LABEL_38:
  v68 = *(qword_1ED96F2F8 + 40);
  sub_1AE23D6AC();
  v69 = v93[0];
  v70 = v87;
  v71 = v82;
  sub_1ADDD26C0(v87, v82, type metadata accessor for FinalizedTimestamp);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA40, &qword_1AE25AA90);
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  v75 = swift_allocObject();
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  sub_1ADDDCE80(v54);

  sub_1ADDD2728(v70, type metadata accessor for FinalizedTimestamp);
  sub_1ADDD2788(v71, v75 + qword_1ED96F250, type metadata accessor for FinalizedTimestamp);
  v75[3] = v55;
  v75[4] = v55;
  v75[5] = v55;
  v75[6] = 0;
  v75[2] = v79;
  swift_beginAccess();
  v76 = v75[3];
  v77 = v75[4];
  v75[3] = v81;
  v75[4] = v80;

  swift_beginAccess();
  v78 = v75[5];
  v75[5] = v92;

  v75[6] = v69;
  *v83 = v75;
  return result;
}

uint64_t sub_1AE206330@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for FinalizedTimestamp(0);
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB830, &unk_1AE25AA50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  if (*a1)
  {
    inited = *a1;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(inited, a2);

  AnyCRValue.init(from:)(v18, &v37);
  if (v3)
  {
  }

  if (a1[1])
  {
    v19 = a1[1];
  }

  else
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v19 = swift_initStaticObject();
  }

  v20 = sub_1AE200DD8(v19, a2, &v36);
  v21 = v36;
  if (v36)
  {
    (*(*v36 + 120))(v20);
    (*(v34 + 56))(v9, 0, 1, v10);
    v22 = sub_1ADDD2788(v9, v35, type metadata accessor for FinalizedTimestamp);
    (*(*v21 + 96))(&v36, v22);
    v23 = a1[2];
    v24 = a1[3];
    if (v23)
    {
      v25 = a1[2];
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    if (v23)
    {
      v26 = v24;
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42C78(v23);
    v27 = sub_1ADDF4A24(v25, v26, a2);

    *&v16[*(v13 + 36)] = v36;
    sub_1ADDD2788(v35, v16, type metadata accessor for FinalizedTimestamp);
    *&v16[*(v13 + 40)] = v27;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA380, &qword_1AE2423B0) + 48);
    v29 = v33;
    *v33 = v37;
    return sub_1ADDD2198(v16, v29 + v28, &qword_1EB5BB830, &unk_1AE25AA50);
  }

  else
  {
    (*(v34 + 56))(v9, 1, 1, v10);
    if (qword_1ED966C80 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v10, qword_1EB5D74D0);
    sub_1ADDD26C0(v31, v35, type metadata accessor for FinalizedTimestamp);
    if ((*(v34 + 48))(v9, 1, v10) != 1)
    {
      sub_1ADDCEDE0(v9, &qword_1EB5BA460, &qword_1AE251020);
    }

    sub_1ADE42E40();
    swift_allocError();
    *v32 = 0xD000000000000029;
    *(v32 + 8) = 0x80000001AE261AB0;
    *(v32 + 16) = 0;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE206858@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for FinalizedTimestamp(0);
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB830, &unk_1AE25AA50);
  v13 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v37 - v14;
  v15 = sub_1AE23BFEC();
  v42 = *(v15 - 8);
  v16 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    inited = *a1;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_initStackObject();

  sub_1ADE0262C(inited, a2);

  UUID.init(from:)(v20, v18);
  if (v3)
  {
  }

  if (a1[1])
  {
    v21 = a1[1];
  }

  else
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v21 = swift_initStaticObject();
  }

  v22 = sub_1AE200DD8(v21, a2, &v43);
  v24 = v43;
  if (v43)
  {
    (*(*v43 + 120))(v22);
    (*(v40 + 56))(v9, 0, 1, v10);
    v25 = sub_1ADDD2788(v9, v41, type metadata accessor for FinalizedTimestamp);
    (*(*v24 + 96))(&v43, v25);
    v27 = a1[2];
    v26 = a1[3];
    if (v27)
    {
      v28 = a1[2];
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

    if (v27)
    {
      v29 = a1[3];
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42C78(v27);
    v30 = sub_1ADDF4A24(v28, v29, a2);

    v31 = v37;
    v32 = v38;
    *&v38[*(v37 + 36)] = v43;
    sub_1ADDD2788(v41, v32, type metadata accessor for FinalizedTimestamp);
    *(v32 + *(v31 + 40)) = v30;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA3B0, &unk_1AE2423E0) + 48);
    v34 = v39;
    (*(v42 + 32))(v39, v18, v15);
    return sub_1ADDD2198(v32, v34 + v33, &qword_1EB5BB830, &unk_1AE25AA50);
  }

  else
  {
    (*(v40 + 56))(v9, 1, 1, v10);
    if (qword_1ED966C80 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v10, qword_1EB5D74D0);
    sub_1ADDD26C0(v35, v41, type metadata accessor for FinalizedTimestamp);
    if ((*(v40 + 48))(v9, 1, v10) != 1)
    {
      sub_1ADDCEDE0(v9, &qword_1EB5BA460, &qword_1AE251020);
    }

    sub_1ADE42E40();
    swift_allocError();
    *v36 = 0xD000000000000029;
    *(v36 + 8) = 0x80000001AE261AB0;
    *(v36 + 16) = 0;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE206F28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    v17 = 0x80000001AE25FB70;
    sub_1ADE42E40();
    swift_allocError();
    v19 = 0xD000000000000017;
LABEL_20:
    *v18 = v19;
    *(v18 + 8) = v17;
    *(v18 + 16) = 0;
    swift_willThrow();
  }

  v5 = v2;
  if (*(a1 + 57) < 3u || ((v6 = *(v4 + 16), (~v6 & 0xF000000000000007) != 0) ? (v7 = ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 16) : (v7 = 0), !v7))
  {
    v8 = *(v4 + 16);
    if ((~v8 & 0xF000000000000007) != 0 && ((v8 >> 59) & 0x1E | (v8 >> 2) & 1) == 7)
    {
      v9 = a2;
      v10 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v9 = a2;
      v10 = &unk_1ED966F48;
    }

    swift_beginAccess();
    v12 = v10[8];
    v11 = v10[9];
    v13 = v10[10];
    if (v12)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    if (v12)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0xC000000000000000;
    }

    swift_retain_n();
    sub_1ADE56F74(v12, v11, v13);
    result = sub_1ADDE94BC(v14, v15, &v30);
    if (v5)
    {
    }

    v20 = v30;
    v21 = v31;
    v22 = *(a1 + 16);
    if (v22)
    {
      goto LABEL_22;
    }

LABEL_32:
    __break(1u);
    return result;
  }

  v25 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v26 = *(a1 + 40);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = v25 >= v27;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
    v17 = 0x80000001AE25FC60;
    sub_1ADE42E40();
    swift_allocError();
    v19 = 0xD000000000000013;
    goto LABEL_20;
  }

  v9 = a2;
  v29 = v26 + 16 * v25;
  v20 = *(v29 + 32);
  v21 = *(v29 + 40);

  result = sub_1ADDD86D8(v20, v21);
  v22 = *(a1 + 16);
  if (!v22)
  {
    goto LABEL_32;
  }

LABEL_22:
  v30 = v20;
  v31 = v21;
  v23 = *(*v22 + 200);

  sub_1ADDD86D8(v20, v21);
  v24 = sub_1ADF4ADD8();
  v23(&type metadata for AnyCRDT, &v30, a1, 0, &type metadata for AnyCRDT, v24);
  sub_1ADDCC35C(v30, v31);

  if (v5)
  {
    return sub_1ADDCC35C(v20, v21);
  }

  *v9 = v20;
  v9[1] = v21;
  return result;
}

uint64_t sub_1AE2071F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
}

uint64_t sub_1AE20724C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v32 = a6;
  v11 = type metadata accessor for Timestamp(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA380, &qword_1AE2423B0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v31 - v21;
  *(&v31 - v21) = a1;
  sub_1ADDCEE40(a2, &v31 + *(v20 + 48) - v21, &qword_1EB5BB830, &unk_1AE25AA50);

  v23 = v33;
  sub_1ADE017C0(a3, a4, a5, v14);
  if (v23)
  {
    v24 = &qword_1EB5BA380;
    v25 = &qword_1AE2423B0;
    v26 = v22;
  }

  else
  {
    sub_1ADDD2198(v22, v19, &qword_1EB5BA380, &qword_1AE2423B0);
    v27 = *(v15 + 48);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA270, &unk_1AE253920);
    v29 = v32;
    sub_1ADDD2788(v14, v32 + *(v28 + 44), type metadata accessor for Timestamp);
    *v29 = *v19;
    v24 = &qword_1EB5BB830;
    v25 = &unk_1AE25AA50;
    v26 = v19 + v27;
  }

  return sub_1ADDCEDE0(v26, v24, v25);
}

uint64_t sub_1AE207454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a3;
  v33 = a4;
  v31 = a6;
  v9 = type metadata accessor for Timestamp(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA3B0, &unk_1AE2423E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  v20 = sub_1AE23BFEC();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v19, a1, v20);
  sub_1ADDCEE40(a2, &v19[*(v13 + 48)], &qword_1EB5BB830, &unk_1AE25AA50);

  v22 = v34;
  sub_1ADE017C0(v32, v33, a5, v12);
  if (v22)
  {
    v23 = &qword_1EB5BA3B0;
    v24 = &unk_1AE2423E0;
    v25 = v19;
  }

  else
  {
    sub_1ADDD2198(v19, v17, &qword_1EB5BA3B0, &unk_1AE2423E0);
    v26 = *(v13 + 48);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA3A0, &qword_1AE2423D0);
    v28 = v31;
    sub_1ADDD2788(v12, v31 + *(v27 + 44), type metadata accessor for Timestamp);
    (*(v21 + 32))(v28, v17, v20);
    v23 = &qword_1EB5BB830;
    v24 = &unk_1AE25AA50;
    v25 = &v17[v26];
  }

  return sub_1ADDCEDE0(v25, v23, v24);
}

uint64_t AnyCRDT.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(**v1 + 152);

  LOBYTE(v4) = v4(v5);

  if (v4)
  {
    v7 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = (*(*v9 + 168))();
      v10 = *v2;

      *v2 = v9;
    }

    return (*(*v9 + 160))(a1);
  }

  return result;
}

uint64_t sub_1AE207790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v7 = *(a1 + 16);

  if (v7)
  {
    v8 = 0;
    v36 = a2 + 32;
    v37 = a1 + 32;
    v33 = v7 - 1;
    result = MEMORY[0x1E69E7CC8];
    v10 = MEMORY[0x1E69E7CC8];
    v34 = a3;
LABEL_3:
    v35 = result;
    while (v8 < *(a1 + 16))
    {
      if (v8 >= *(a2 + 16))
      {
        goto LABEL_23;
      }

      v11 = *(v37 + 8 * v8);
      v12 = *(v36 + 8 * v8);
      type metadata accessor for CRDecoder();
      swift_allocObject();

      v13 = v38;

      v14 = sub_1ADDE77B4(v12, v13);

      v16 = *(v14 + 32);
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = v11 >= v17;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {

        swift_bridgeObjectRelease_n();

        sub_1ADE42E40();
        v30 = swift_allocError();
        *v31 = 0xD000000000000015;
        *(v31 + 8) = 0x80000001AE25FCF0;
        *(v31 + 16) = 0;
        v40 = v30;
        swift_willThrow();

        return v10;
      }

      v39 = v10;
      v19 = v16 + 16 * v11;
      v21 = *(v19 + 32);
      v20 = *(v19 + 40);
      v41[0] = v21;
      v41[1] = v20;
      MEMORY[0x1EEE9AC00](v15);
      v32[2] = v41;

      v22 = v40;
      if (sub_1ADDE8768(sub_1AE2139F4, v32, MEMORY[0x1E69E7CC0]))
      {
        v40 = v22;
        v27 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41[0] = v27;
        sub_1ADDE88A8(v14, v21, v20, isUniquelyReferenced_nonNull_native);

        result = v41[0];
        v29 = v33 == v8++;
        v10 = v39;
        if (v29)
        {
          goto LABEL_20;
        }

        goto LABEL_3;
      }

      AnyCRDT.init(from:)(v41, v23);
      v40 = v22;
      if (v22)
      {
        v10 = v39;

        swift_bridgeObjectRelease_n();

        return v10;
      }

      ++v8;
      v24 = v41[0];
      v25 = v39;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v25;
      sub_1ADEBF524(v24, v21, v20, v26);

      v10 = v42;
      if (v7 == v8)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC8];
LABEL_20:

    swift_bridgeObjectRelease_n();
    return v10;
  }

  return result;
}

uint64_t sub_1AE207AF0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v21 = MEMORY[0x1E69E7CC0];
    result = sub_1ADE6F17C(0, v4, 0);
    v6 = 0;
    v7 = v21;
    while (v6 < *(v3 + 16))
    {
      v8 = *(v3 + 8 * v6 + 32);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      v9 = sub_1ADE0262C(v8, a2);

      AnyCRValue.init(from:)(v9, &v20);
      if (v2)
      {

        return v9;
      }

      v10 = v3;
      v11 = v4;

      v12 = v20;
      v21 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1ADE6F17C((v13 > 1), v14 + 1, 1);
        v7 = v21;
      }

      ++v6;
      *(v7 + 16) = v14 + 1;
      *(v7 + 8 * v14 + 32) = v12;
      v4 = v11;
      v15 = v11 == v6;
      v3 = v10;
      if (v15)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA50, &qword_1AE25AAA0);
    v17 = objc_allocWithZone(v16);
    *&v17[qword_1EB5BD4A8] = v7;
    v19.receiver = v17;
    v19.super_class = v16;
    v9 = objc_msgSendSuper2(&v19, sel_init);

    return v9;
  }

  return result;
}

uint64_t sub_1AE207CE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  if (a1)
  {
    [*(a1 + qword_1ED96F258) copy];
    sub_1AE23D83C();

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
    swift_dynamicCast();
    *(v1 + qword_1ED96F258) = v21[1];
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA60, &unk_1AE25AAB0);
    v10 = [objc_allocWithZone(v9) init];
    v22[3] = v9;
    v22[0] = v10;
    sub_1ADDD0F70();
    sub_1AE23BFBC();
    if (v9)
    {
      v11 = __swift_project_boxed_opaque_existential_1(v22, v9);
      v12 = *(v9 - 1);
      v13 = *(v12 + 64);
      MEMORY[0x1EEE9AC00](v11);
      v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v15);
      v16 = sub_1AE23DFFC();
      (*(v12 + 8))(v15, v9);
      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    else
    {
      v16 = 0;
    }

    v17 = objc_allocWithZone(_TtC9Coherence19CRTTMergeableString);
    v18 = sub_1AE23BF7C();
    v19 = [v17 initWithStorage:v16 uuid:v18];
    swift_unknownObjectRelease();

    (*(v5 + 8))(v8, v4);
    *(v2 + qword_1ED96F258) = v19;
  }

  return v2;
}