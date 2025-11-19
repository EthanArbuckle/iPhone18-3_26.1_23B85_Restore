uint64_t sub_1A8852DB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A8716570;

  return sub_1A8852C1C(v2, v3, v4);
}

uint64_t sub_1A8852E64()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB307A68);
  sub_1A85EF0E4(v0, qword_1EB307A68);
  return sub_1A88C7E48();
}

uint64_t sub_1A8852EE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1A8716570;

  return v6();
}

uint64_t sub_1A8852FC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A8716570;

  return sub_1A8852EE0(v2, v3, v4);
}

uint64_t sub_1A8853088(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1A8714B6C;

  return v7();
}

uint64_t sub_1A8853170(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A8716570;

  return sub_1A8853088(a1, v4, v5, v6);
}

uint64_t sub_1A885323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1A873C504(a3, v23 - v10);
  v12 = sub_1A88C87A8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1A85EF638(v11, &unk_1EB3090D0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1A88C8798();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1A88C86D8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1A88C8358() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1A85EF638(a3, &unk_1EB3090D0);

    return v21;
  }

LABEL_8:
  sub_1A85EF638(a3, &unk_1EB3090D0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1A8853528(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A8853620;

  return v6(a1);
}

uint64_t sub_1A8853620()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A8853718(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A8716570;

  return sub_1A8853528(a1, v4);
}

uint64_t sub_1A88537D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A8714B6C;

  return sub_1A8853528(a1, v4);
}

uint64_t sub_1A88538A8()
{
  if (qword_1EB3022E0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1A88C7E58();
  v0[3] = sub_1A85EF0E4(v2, qword_1EB307A68);
  v3 = v1;
  v4 = sub_1A88C7E38();
  v5 = sub_1A88C89D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1A85E5000, v4, v5, "Blocking contact: %@", v7, 0xCu);
    sub_1A85EF638(v8, &qword_1EB306540);
    MEMORY[0x1AC571F20](v8, -1, -1);
    MEMORY[0x1AC571F20](v7, -1, -1);
  }

  sub_1A88C7BE8();
  v0[4] = sub_1A88C7BD8();
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_1A8853A80;
  v11 = v0[2];

  return MEMORY[0x1EEDF6230](v11);
}

uint64_t sub_1A8853A80()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A8853BBC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A8853BBC()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = v2;
  v4 = v1;
  v5 = sub_1A88C7E38();
  v6 = sub_1A88C89C8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2112;
    v12 = v9;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_1A85E5000, v5, v6, "Failed to block contact: %@ with error: %@", v10, 0x16u);
    sub_1A870CCE0(&qword_1EB306540);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v11, -1, -1);
    MEMORY[0x1AC571F20](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1A8853D74()
{
  if (qword_1EB3022E0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1A88C7E58();
  v0[3] = sub_1A85EF0E4(v2, qword_1EB307A68);
  v3 = v1;
  v4 = sub_1A88C7E38();
  v5 = sub_1A88C89D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1A85E5000, v4, v5, "Unblocking contact: %@", v7, 0xCu);
    sub_1A85EF638(v8, &qword_1EB306540);
    MEMORY[0x1AC571F20](v8, -1, -1);
    MEMORY[0x1AC571F20](v7, -1, -1);
  }

  sub_1A88C7BE8();
  v0[4] = sub_1A88C7BD8();
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_1A8853F4C;
  v11 = v0[2];

  return MEMORY[0x1EEDF6240](v11);
}

uint64_t sub_1A8853F4C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A8854088, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A8854088()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = v2;
  v4 = v1;
  v5 = sub_1A88C7E38();
  v6 = sub_1A88C89C8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2112;
    v12 = v9;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_1A85E5000, v5, v6, "Failed to unblock contact: %@ with error: %@", v10, 0x16u);
    sub_1A870CCE0(&qword_1EB306540);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v11, -1, -1);
    MEMORY[0x1AC571F20](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1A8854220()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A8716570;

  return sub_1A8852860(v2, v3, v4);
}

uint64_t sub_1A88542D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8854314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A8714B6C;

  return sub_1A8853088(a1, v4, v5, v6);
}

uint64_t sub_1A88543E4()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB307A88);
  sub_1A85EF0E4(v0, qword_1EB307A88);
  return sub_1A88C7E48();
}

id sub_1A8854464@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A870CCE0(&unk_1EB309060);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v85 - v6;
  v8 = [a1 website];
  if (v8)
  {

    result = [a1 website];
    if (!result)
    {
      __break(1u);
      goto LABEL_45;
    }

    v10 = result;
    sub_1A88C82E8();

    sub_1A88C72B8();
  }

  else
  {
    v12 = sub_1A88C72E8();
    v11 = (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  }

  MEMORY[0x1EEE9AC00](v11);
  v13 = [a1 termsAndConditionsURL];
  v117 = &v85;
  if (v13)
  {
    v14 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

    result = [a1 termsAndConditionsURL];
    if (result)
    {
      v15 = result;
      sub_1A88C82E8();

      sub_1A88C72B8();

      goto LABEL_9;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v17 = sub_1A88C72E8();
  v14 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
LABEL_9:
  MEMORY[0x1EEE9AC00](v16);
  v18 = [a1 genericCSSTemplateURL];
  if (!v18)
  {
    v20 = sub_1A88C72E8();
    (*(*(v20 - 8) + 56))(&v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v20);
    goto LABEL_13;
  }

  result = [a1 genericCSSTemplateURL];
  if (!result)
  {
LABEL_46:
    __break(1u);
    return result;
  }

  v19 = result;
  sub_1A88C82E8();

  sub_1A88C72B8();

LABEL_13:
  v21 = [a1 brandURI];
  v22 = sub_1A88C82E8();
  v113 = v23;
  v114 = v22;

  v24 = [a1 name];
  v25 = sub_1A88C82E8();
  v111 = v26;
  v112 = v25;

  v27 = [a1 categories];
  if (v27)
  {
    v28 = v27;
    v110 = sub_1A88C85F8();
  }

  else
  {
    v110 = 0;
  }

  v29 = [a1 localizedDescription];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1A88C82E8();
    v108 = v32;
    v109 = v31;
  }

  else
  {
    v108 = 0;
    v109 = 0;
  }

  v33 = [a1 primaryPhoneNumber];
  if (v33)
  {
    v34 = v33;
    v35 = sub_1A88C82E8();
    v106 = v36;
    v107 = v35;
  }

  else
  {
    v106 = 0;
    v107 = 0;
  }

  v37 = [a1 primaryBrandColorHexString];
  if (v37)
  {
    v38 = v37;
    v39 = sub_1A88C82E8();
    v104 = v40;
    v105 = v39;
  }

  else
  {
    v104 = 0;
    v105 = 0;
  }

  v41 = [a1 secondaryBrandColorHexString];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1A88C82E8();
    v102 = v44;
    v103 = v43;
  }

  else
  {
    v102 = 0;
    v103 = 0;
  }

  v101 = [a1 isVerified];
  v45 = [a1 verifiedBy];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1A88C82E8();
    v98 = v48;
    v99 = v47;
  }

  else
  {
    v98 = 0;
    v99 = 0;
  }

  v100 = &v85;
  MEMORY[0x1EEE9AC00](v45);
  v97 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A8854C88(v7, v97);
  v49 = [a1 messageNumber];
  if (v49)
  {
    v50 = v49;
    v96 = sub_1A88C82E8();
    v95 = v51;
  }

  else
  {
    v96 = 0;
    v95 = 0;
  }

  v52 = [a1 emailAddress];
  if (v52)
  {
    v53 = v52;
    v94 = sub_1A88C82E8();
    v93 = v54;
  }

  else
  {
    v94 = 0;
    v93 = 0;
  }

  v55 = [a1 address];
  v116 = &v85;
  if (v55)
  {
    v56 = v55;
    v92 = sub_1A88C82E8();
    v91 = v57;
  }

  else
  {
    v92 = 0;
    v91 = 0;
  }

  v90 = &v85;
  MEMORY[0x1EEE9AC00](v55);
  v89 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A8854C88(v14, v89);
  v58 = [a1 localizedResponseTime];
  v115 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v58)
  {
    v59 = v58;
    v88 = sub_1A88C82E8();
    v87 = v60;
  }

  else
  {

    v88 = 0;
    v87 = 0;
  }

  sub_1A8854CF8(v14);
  sub_1A8854CF8(v7);
  v61 = type metadata accessor for RBMBrand(0);
  v62 = v61[13];
  v86 = v62;
  v63 = sub_1A88C72E8();
  v64 = *(*(v63 - 8) + 56);
  v64(a2 + v62, 1, 1, v63);
  v65 = (a2 + v61[14]);
  v66 = (a2 + v61[15]);
  v67 = v61[16];
  v85 = v61[17];
  v68 = (a2 + v67);
  v64(a2 + v85, 1, 1, v63);
  v69 = v61[19];
  v70 = (a2 + v61[18]);
  v64(a2 + v69, 1, 1, v63);
  v71 = v113;
  *a2 = v114;
  *(a2 + 8) = v71;
  v72 = v111;
  *(a2 + 16) = v112;
  *(a2 + 24) = v72;
  v73 = v108;
  *(a2 + 96) = v109;
  *(a2 + 104) = v73;
  v75 = v106;
  v74 = v107;
  *(a2 + 32) = v110;
  *(a2 + 40) = v74;
  v77 = v104;
  v76 = v105;
  *(a2 + 48) = v75;
  *(a2 + 56) = v76;
  v78 = v102;
  v79 = v103;
  *(a2 + 64) = v77;
  *(a2 + 72) = v79;
  *(a2 + 80) = v78;
  *(a2 + 88) = v101;
  v80 = v98;
  *(a2 + 112) = v99;
  *(a2 + 120) = v80;
  sub_1A8854D80(v97, a2 + v86);
  v81 = v95;
  *v65 = v96;
  v65[1] = v81;
  v82 = v93;
  *v66 = v94;
  v66[1] = v82;
  v83 = v91;
  *v68 = v92;
  v68[1] = v83;
  sub_1A8854D80(v89, a2 + v85);
  v84 = v87;
  *v70 = v88;
  v70[1] = v84;
  result = sub_1A8854D80(v115, a2 + v69);
  *(a2 + v61[20]) = 1;
  return result;
}

uint64_t sub_1A8854C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&unk_1EB309060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8854CF8(uint64_t a1)
{
  v2 = sub_1A870CCE0(&unk_1EB309060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A8854D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&unk_1EB309060);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8854DF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A8854E38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A8854ED0()
{
  sub_1A8854F3C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A8854F3C()
{
  if (!qword_1EB307AB0)
  {
    sub_1A88C72E8();
    v0 = sub_1A88C8BE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB307AB0);
    }
  }
}

void sub_1A8854FBC()
{
  sub_1A88550A0();
  if (v0 <= 0x3F)
  {
    sub_1A873DE70();
    if (v1 <= 0x3F)
    {
      sub_1A8854F3C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A88550A0()
{
  if (!qword_1EB305E98)
  {
    sub_1A870CD28(&qword_1EB303100);
    v0 = sub_1A88C8BE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB305E98);
    }
  }
}

uint64_t sub_1A8855104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v70 = a7;
  v66 = a5;
  v67 = a6;
  v63 = a3;
  v64 = a4;
  v61 = a2;
  v59 = a1;
  v77 = a24;
  v78 = a25;
  v75 = a22;
  v76 = a23;
  v74 = a21;
  v72 = a8;
  v73 = a20;
  v71 = a19;
  v68 = a17;
  v69 = a18;
  v65 = a16;
  v62 = a15;
  v60 = a14;
  v58 = a13;
  v57 = a12;
  v56 = a11;
  v55 = a10;
  v26 = sub_1A870CCE0(&unk_1EB309060);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v51 - v27;
  v54 = &v51 - v27;
  v29 = sub_1A88C72E8();
  v30 = *(*(v29 - 8) + 56);
  v30(v28, 1, 1, v29);
  v31 = type metadata accessor for RBMBrand(0);
  v53 = v31[13];
  v30((a9 + v53), 1, 1, v29);
  v32 = (a9 + v31[14]);
  v33 = (a9 + v31[15]);
  v34 = v31[16];
  v52 = v31[17];
  v35 = (a9 + v34);
  v30((a9 + v52), 1, 1, v29);
  v36 = v31[19];
  v37 = (a9 + v31[18]);
  v30((a9 + v36), 1, 1, v29);
  v38 = v61;
  *a9 = v59;
  *(a9 + 8) = v38;
  v39 = v64;
  *(a9 + 16) = v63;
  *(a9 + 24) = v39;
  v40 = v67;
  *(a9 + 96) = v66;
  *(a9 + 104) = v40;
  v41 = v70;
  *(a9 + 32) = 0;
  *(a9 + 40) = v41;
  *(a9 + 48) = v72;
  *(a9 + 56) = v55;
  v42 = v57;
  *(a9 + 72) = v56;
  *(a9 + 80) = v42;
  *(a9 + 88) = v58;
  v43 = v62;
  *(a9 + 112) = v60;
  *(a9 + 120) = v43;
  sub_1A8854D80(v65, a9 + v53);
  v44 = v69;
  *v32 = v68;
  v32[1] = v44;
  v45 = v73;
  v46 = v74;
  *v33 = v71;
  v33[1] = v45;
  v48 = v75;
  v47 = v76;
  *v35 = v46;
  v35[1] = v48;
  sub_1A8854D80(v47, a9 + v52);
  v49 = v78;
  *v37 = v77;
  v37[1] = v49;
  result = sub_1A8854D80(v54, a9 + v36);
  *(a9 + v31[20]) = 0;
  return result;
}

uint64_t sub_1A88553B0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1A88553F8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A8855430()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_1A88554A8()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1A88554D8()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1A8855508()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_1A8855540()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_1A8855580(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t sub_1A88555B8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));

  return v2;
}

uint64_t sub_1A88555F0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));

  return v2;
}

uint64_t sub_1A8855648(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 72));

  return v2;
}

uint64_t sub_1A885576C@<X0>(uint64_t *a1@<X8>)
{
  sub_1A8855A14(&qword_1EB307AE8);
  result = sub_1A88C7858();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A8855830()
{
  sub_1A88C9528();
  sub_1A88C8238();
  return sub_1A88C9578();
}

uint64_t sub_1A88558E4()
{
  sub_1A88C9528();
  sub_1A88C8238();
  return sub_1A88C9578();
}

uint64_t sub_1A8855A14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RBMBrand(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A8855AC0(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a1 || (v6 = sub_1A88C82A8(), v7 = [a1 brandLogoDataWithIdentifier_], v6, !v7))
  {
    if (qword_1EB3022E8 != -1)
    {
      swift_once();
    }

    v19 = sub_1A88C7E58();
    sub_1A85EF0E4(v19, qword_1EB307A88);
    swift_unknownObjectRetain();

    v20 = sub_1A88C7E38();
    v21 = sub_1A88C89A8();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1A85F0394(a2, a3, &v27);
      _os_log_impl(&dword_1A85E5000, v20, v21, "ChatBot Logo - Business data provider cannot load the logo data for %s", v22, 0xCu);
      sub_1A85F1084(v23);
      MEMORY[0x1AC571F20](v23, -1, -1);
      MEMORY[0x1AC571F20](v22, -1, -1);
    }

    return 0;
  }

  v8 = sub_1A88C7358();
  v10 = v9;

  sub_1A871DFB8(v8, v10);
  if (qword_1EB3022E8 != -1)
  {
    swift_once();
  }

  v11 = sub_1A88C7E58();
  sub_1A85EF0E4(v11, qword_1EB307A88);
  sub_1A871DFB8(v8, v10);
  swift_unknownObjectRetain();

  v12 = sub_1A88C7E38();
  v13 = sub_1A88C89A8();

  swift_unknownObjectRelease();
  if (!os_log_type_enabled(v12, v13))
  {
    sub_1A871CD60(v8, v10);
LABEL_23:
    sub_1A871CD60(v8, v10);

    return v8;
  }

  v14 = swift_slowAlloc();
  result = swift_slowAlloc();
  v16 = result;
  v27 = result;
  *v14 = 134218242;
  v17 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v17 != 2)
    {
      v18 = 0;
      goto LABEL_22;
    }

    v25 = *(v8 + 16);
    v24 = *(v8 + 24);
    v26 = __OFSUB__(v24, v25);
    v18 = v24 - v25;
    if (!v26)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!v17)
  {
    v18 = BYTE6(v10);
LABEL_22:
    *(v14 + 4) = v18;
    sub_1A871CD60(v8, v10);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1A85F0394(a2, a3, &v27);
    _os_log_impl(&dword_1A85E5000, v12, v13, "ChatBot Logo - Business data provider found the logo data: %ld for %s", v14, 0x16u);
    sub_1A85F1084(v16);
    MEMORY[0x1AC571F20](v16, -1, -1);
    MEMORY[0x1AC571F20](v14, -1, -1);
    goto LABEL_23;
  }

  LODWORD(v18) = HIDWORD(v8) - v8;
  if (!__OFSUB__(HIDWORD(v8), v8))
  {
    v18 = v18;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8855E3C()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB307AF0);
  sub_1A85EF0E4(v0, qword_1EB307AF0);
  return sub_1A88C7E48();
}

uint64_t sub_1A8855EBC()
{
  type metadata accessor for RBMBrandDataSource();
  sub_1A8859F60(&qword_1EB307B08, v0, type metadata accessor for RBMBrandDataSource);
  return sub_1A88C78C8();
}

void sub_1A8855F68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  sub_1A88562FC(a1, a2, a3, a4, a5, a6);
  *(v12 + 16) = v13 & 1;
  if (v13)
  {
    if (qword_1EB3022F0 != -1)
    {
      swift_once();
    }

    v14 = sub_1A88C7E58();
    sub_1A85EF0E4(v14, qword_1EB307AF0);
    swift_retain_n();

    v15 = sub_1A88C7E38();
    v16 = sub_1A88C89A8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136315394;
      v19 = sub_1A88C82A8();
      v20 = [v19 __im_stripSip];

      v21 = sub_1A88C82E8();
      v23 = v22;

      v24 = sub_1A85F0394(v21, v23, &v26);

      *(v17 + 4) = v24;
      *(v17 + 12) = 1024;
      swift_beginAccess();
      LODWORD(v24) = *(v12 + 16);

      *(v17 + 14) = v24;

      _os_log_impl(&dword_1A85E5000, v15, v16, "ChatBot Brand - %s from CT: %{BOOL}d, from chat cache: false", v17, 0x12u);
      sub_1A85F1084(v18);
      MEMORY[0x1AC571F20](v18, -1, -1);
      MEMORY[0x1AC571F20](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v25 = swift_allocObject();
    v25[2] = a5;
    v25[3] = a6;
    v25[4] = a1;
    v25[5] = a2;
    v25[6] = v12;

    sub_1A8856DD0(a1, a2, sub_1A8859748, v25);
  }
}

void sub_1A88562FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v12 = sub_1A88B85A8(a3, a4);
  if (!v7)
  {
    v100 = 0;
    if (v12)
    {
      v86 = a5;
      v87 = a6;
      v91 = v12;
      v13 = sub_1A88597B8(a1, a2);
      v15 = v14;
      v16 = [objc_allocWithZone(MEMORY[0x1E6964FD8]) init];
      v88 = v13;
      v90 = v15;
      v17 = sub_1A88C82A8();
      [v16 setUri_];

      v18 = [objc_allocWithZone(MEMORY[0x1E6964FE0]) init];
      v89 = v6;
      v19 = sub_1A88C74B8();
      v20 = *(v19 - 8);
      MEMORY[0x1EEE9AC00](v19);
      v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1A88C6C38();
      v23 = sub_1A88C7488();
      v25 = v24;
      v26 = v19;
      v27 = v89;
      (*(v20 + 8))(v22, v26);
      v28 = v16;
      v29 = v18;
      v30 = sub_1A88C82A8();
      [v18 setUuid_];

      v31 = *(v27 + 24);
      v32 = *(v27 + 16);
      ObjectType = swift_getObjectType();
      v34 = v100;
      v35 = (*(v31 + 40))(v91, v28, ObjectType, v31);
      v100 = v34;
      if (v34)
      {

        return;
      }

      v79 = v31;
      v80 = v28;
      v76 = v23;
      v77 = ObjectType;
      v40 = v35;
      v85 = [v35 renderInformation];
      v81 = v40;
      v84 = [v40 cacheType];
      if (qword_1EB3022F0 != -1)
      {
        swift_once();
      }

      v41 = sub_1A88C7E58();
      v42 = sub_1A85EF0E4(v41, qword_1EB307AF0);
      v43 = v90;

      v82 = v42;
      v44 = sub_1A88C7E38();
      v45 = sub_1A88C89A8();

      v46 = os_log_type_enabled(v44, v45);
      v47 = v88;
      v78 = v32;
      if (v46)
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v50 = v43;
        v51 = v49;
        v96[0] = v49;
        *v48 = 134218242;
        v52 = v84;
        *(v48 + 4) = v84;
        *(v48 + 12) = 2080;
        *(v48 + 14) = sub_1A85F0394(v47, v50, v96);
        _os_log_impl(&dword_1A85E5000, v44, v45, "brandModelWithURI: Chatbot Information cache state: %ld for %s", v48, 0x16u);
        sub_1A85F1084(v51);
        MEMORY[0x1AC571F20](v51, -1, -1);
        MEMORY[0x1AC571F20](v48, -1, -1);
      }

      else
      {

        v52 = v84;
      }

      if (v85)
      {
        v53 = &v52[-1].isa + 7 >= 2;
      }

      else
      {
        v53 = 1;
      }

      v54 = !v53;
      v55 = v52;
      v56 = v88;
      v57 = v80;
      v83 = v29;
      if (v54 == 1)
      {
        v75 = v25;
        v58 = v85;
        v59 = sub_1A88C7E38();
        v60 = sub_1A88C89A8();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_1A85E5000, v59, v60, "ChatBot Brand - brandModelWithURI: Using cached chatbot Information", v61, 2u);
          v62 = v61;
          v55 = v84;
          MEMORY[0x1AC571F20](v62, -1, -1);
        }

        v56 = v88;
        sub_1A88579F4(v98, v99, v58, v88, v90, (v55 == 2), 1);
        sub_1A8728D80(v98, v94, &qword_1EB307B50);
        sub_1A860D56C(v94, v96);
        sub_1A8728D80(v98, v92, &qword_1EB307B50);
        sub_1A860D56C(&v93, v97);
        memset(&v97[40], 0, 41);
        v86(v96);

        sub_1A85EF638(v96, &qword_1EB307B18);
        v55 = v84;
        sub_1A85EF638(v98, &qword_1EB307B50);
        sub_1A85F1084(v92);
        sub_1A85F1084(&v95);
        v29 = v83;
        v25 = v75;
      }

      if (&v55->isa + 1 > 3 || v55 == 1)
      {

        goto LABEL_34;
      }

      v63 = v90;

      v64 = sub_1A88C7E38();
      v65 = sub_1A88C89A8();

      v84 = v64;
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v96[0] = v67;
        *v66 = 136315394;
        v68 = sub_1A85F0394(v56, v63, v96);

        *(v66 + 4) = v68;
        *(v66 + 12) = 2080;
        *(v66 + 14) = sub_1A85F0394(v76, v25, v96);
        v69 = v65;
        v70 = v84;
        _os_log_impl(&dword_1A85E5000, v84, v69, "ChatBot Brand - brandModelWithURI: Fetching Chatbot Information from remote source for %s, with pending resultHandler: %s", v66, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC571F20](v67, -1, -1);
        MEMORY[0x1AC571F20](v66, -1, -1);
      }

      else
      {
      }

      v72 = *(v89 + 80);
      MEMORY[0x1EEE9AC00](v71);
      os_unfair_lock_lock((v72 + 24));
      v73 = v100;
      sub_1A885A0C4((v72 + 16));
      if (!v73)
      {
        os_unfair_lock_unlock((v72 + 24));

        v74 = v91;
        v29 = v83;
        (*(v79 + 48))(v91, v57, v83, v77);
        v100 = 0;

LABEL_34:
        return;
      }

      os_unfair_lock_unlock((v72 + 24));
      __break(1u);
    }

    else
    {
      if (qword_1EB3022F0 != -1)
      {
        swift_once();
      }

      v36 = sub_1A88C7E58();
      sub_1A85EF0E4(v36, qword_1EB307AF0);
      v37 = sub_1A88C7E38();
      v38 = sub_1A88C89A8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1A85E5000, v37, v38, "Did not find any valid CTXPCServiceSubscriptionContext object, this could be a relay device", v39, 2u);
        MEMORY[0x1AC571F20](v39, -1, -1);
      }
    }
  }
}

void sub_1A8856B78(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A8728D80(a1, v22, &qword_1EB307B18);
  v9 = v22[120];
  sub_1A85EF638(v22, &qword_1EB307B18);
  a2(a1);
  if (qword_1EB3022F0 != -1)
  {
    swift_once();
  }

  v10 = sub_1A88C7E58();
  sub_1A85EF0E4(v10, qword_1EB307AF0);
  swift_retain_n();

  v11 = sub_1A88C7E38();
  v12 = sub_1A88C89A8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315650;
    v15 = sub_1A88C82A8();
    v16 = [v15 __im_stripSip];

    v17 = sub_1A88C82E8();
    v19 = v18;

    v20 = sub_1A85F0394(v17, v19, &v21);

    *(v13 + 4) = v20;
    *(v13 + 12) = 1024;
    swift_beginAccess();
    LODWORD(v16) = *(a6 + 16);

    *(v13 + 14) = v16;

    *(v13 + 18) = 1024;
    *(v13 + 20) = (v9 ^ 1) & 1;
    _os_log_impl(&dword_1A85E5000, v11, v12, "ChatBot Brand - %s from CT: %{BOOL}d, from chat cache: %{BOOL}d", v13, 0x18u);
    sub_1A85F1084(v14);
    MEMORY[0x1AC571F20](v14, -1, -1);
    MEMORY[0x1AC571F20](v13, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1A8856DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v8 = sub_1A88C7EC8();
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A88C7EF8();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A85E9718(0, &qword_1ED8C95A0);
  v14 = sub_1A88C8A38();
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v16 = v20;
  v15[4] = a2;
  v15[5] = v16;
  v15[6] = a4;
  aBlock[4] = sub_1A8859F50;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A85EB8C0;
  aBlock[3] = &unk_1F1BB5810;
  v17 = _Block_copy(aBlock);

  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A8859F60(&qword_1ED8C9480, 255, MEMORY[0x1E69E7F60]);
  sub_1A870CCE0(&unk_1EB3081F0);
  sub_1A85EB85C();
  sub_1A88C8CE8();
  MEMORY[0x1AC56F330](0, v13, v10, v17);
  _Block_release(v17);

  (*(v22 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v21);
}

void sub_1A88570CC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  sub_1A8728D80(a1, v16, &qword_1EB307B18);
  v7 = v16[120];
  sub_1A85EF638(v16, &qword_1EB307B18);
  a2(a1);
  if (qword_1EB3022F0 != -1)
  {
    swift_once();
  }

  v8 = sub_1A88C7E58();
  sub_1A85EF0E4(v8, qword_1EB307AF0);
  v9 = a4;
  v10 = sub_1A88C7E38();
  v11 = sub_1A88C89C8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412546;
    v14 = a4;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    *(v12 + 12) = 1024;
    *(v12 + 14) = (v7 ^ 1) & 1;
    _os_log_impl(&dword_1A85E5000, v10, v11, "ChatBot Brand - brandModelWithURI:resultHandler: error: %@, using cache: %{BOOL}d", v12, 0x12u);
    sub_1A85EF638(v13, &qword_1EB306540);
    MEMORY[0x1AC571F20](v13, -1, -1);
    MEMORY[0x1AC571F20](v12, -1, -1);
  }
}

uint64_t RBMBrandDataSource.deinit()
{
  swift_unknownObjectRelease();
  sub_1A85F1084(v0 + 32);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1A8857390(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v53 = a2;
  v54 = a3;
  v8 = type metadata accessor for ChatBotLogoURLProvider(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RBMBrand(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 72);
  if (!v14)
  {
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  v15 = sub_1A88C82A8();
  v16 = [v15 __im_stripSip];

  if (!v16)
  {
    sub_1A88C82E8();
    v16 = sub_1A88C82A8();
  }

  v17 = [v14 brandWithIdentifier_];
  swift_unknownObjectRelease();

  if (v17)
  {
    v52 = a5;
    v51 = v17;
    sub_1A8854464(v51, v13);
    v18 = sub_1A870CCE0(&unk_1EB309060);
    v19 = *(*(v18 - 8) + 64);
    MEMORY[0x1EEE9AC00](v18 - 8);
    v21 = v49 - v20;
    v22 = *(a1 + 72);
    if (v22)
    {
      v49[1] = v49;
      v50 = a4;
      swift_unknownObjectRetain();
      v23 = sub_1A88C82A8();
      v24 = [v23 __im_stripSip];

      if (!v24)
      {
        sub_1A88C82E8();
        v24 = sub_1A88C82A8();
      }

      v25 = [v22 brandLogoURLWithIdentifier_];

      v26 = swift_unknownObjectRelease();
      MEMORY[0x1EEE9AC00](v26);
      v27 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v25)
      {
        sub_1A88C7288();

        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      a4 = v50;
      v36 = sub_1A88C72E8();
      (*(*(v36 - 8) + 56))(v27, v28, 1, v36);
      sub_1A8859EE0(v27, v21);
    }

    else
    {
      v35 = sub_1A88C72E8();
      (*(*(v35 - 8) + 56))(v21, 1, 1, v35);
    }

    v37 = *(v8 + 20);
    v38 = sub_1A88C72E8();
    (*(*(v38 - 8) + 56))(&v10[v37], 1, 1, v38);
    sub_1A8859EE0(v21, v10);
    v39 = *(a1 + 72);
    swift_unknownObjectRetain();
    v40 = sub_1A88C82A8();
    v41 = [v40 __im_stripSip];

    v42 = sub_1A88C82E8();
    v44 = v43;

    v55[3] = v11;
    v55[4] = sub_1A8859F60(&qword_1EB307AE8, 255, type metadata accessor for RBMBrand);
    v45 = sub_1A871E00C(v55);
    sub_1A8859FA8(v13, v45, type metadata accessor for RBMBrand);
    v56[3] = v8;
    v56[4] = sub_1A8859F60(&qword_1EB307B20, 255, type metadata accessor for ChatBotLogoURLProvider);
    v46 = sub_1A871E00C(v56);
    sub_1A8859FA8(v10, v46, type metadata accessor for ChatBotLogoURLProvider);
    v56[8] = &type metadata for ChatBotLogoDataProvider;
    v47 = sub_1A885A010();
    v56[5] = v39;
    v56[6] = v42;
    v56[9] = v47;
    v56[7] = v44;
    v57 = 0;
    swift_unknownObjectRetain();

    a4(v55);

    swift_unknownObjectRelease();
    sub_1A885A064(v10, type metadata accessor for ChatBotLogoURLProvider);
    sub_1A885A064(v13, type metadata accessor for RBMBrand);
  }

  else
  {
LABEL_10:
    if (qword_1EB3022F0 != -1)
    {
      swift_once();
    }

    v29 = sub_1A88C7E58();
    sub_1A85EF0E4(v29, qword_1EB307AF0);
    v30 = sub_1A88C7E38();
    v31 = sub_1A88C89C8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1A85E5000, v30, v31, "ChatBot Brand - The cache client is not ready!", v32, 2u);
      MEMORY[0x1AC571F20](v32, -1, -1);
    }

    sub_1A8859E8C();
    v33 = swift_allocError();
    *v34 = 1;
    v55[0] = v33;
    v57 = 1;
    a4(v55);
  }

  return sub_1A85EF638(v55, &qword_1EB307B18);
}

uint64_t sub_1A88579F4(uint64_t *a1, uint64_t *a2, id a3, uint64_t a4, unint64_t a5, char **a6, int a7)
{
  v195 = a7;
  v200 = a4;
  v9 = a3;
  v189 = a1;
  v190 = a2;
  v10 = &selRef_rcsConfigurationForSubscriptionContext_;
  v11 = [a3 botInfo];
  v12 = &selRef_rcsConfigurationForSubscriptionContext_;
  v13 = [v11 pcc];

  v14 = &selRef_rcsConfigurationForSubscriptionContext_;
  v15 = [v13 orgDetails];

  v16 = &selRef_rcsConfigurationForSubscriptionContext_;
  if (!v15)
  {
    goto LABEL_12;
  }

  v17 = [v15 orgName];

  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = [v17 list];

  sub_1A85E9718(0, &qword_1EB307B40);
  v19 = sub_1A88C85F8();

  if (v19 >> 62)
  {
    if (sub_1A88C8D38())
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v19 & 0xC000000000000001) != 0)
  {
    goto LABEL_86;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_88:
    v97 = sub_1A88C8D38();
    if (v97)
    {
      goto LABEL_69;
    }

    goto LABEL_89;
  }

  for (i = *(v19 + 32); ; i = MEMORY[0x1AC56F710](0, v19))
  {
    v21 = i;

    v22 = [v21 displayName];

    if (v22)
    {
      v194 = sub_1A88C82E8();
      v198 = v23;
    }

    else
    {
LABEL_12:

      v194 = v200;
      v198 = a5;
    }

    v24 = [v9 v10[272]];
    v25 = [v24 v12[273]];

    v26 = [v25 v14[274]];
    v199 = a5;
    if (v26 && (v27 = [v26 orgDescription], v26, v27) && (v28 = objc_msgSend(v27, sel_orgDescription), v27, v28))
    {
      v29 = sub_1A88C82E8();
      v187 = v30;
      v188 = v29;
    }

    else
    {
      v187 = 0;
      v188 = 0;
    }

    v31 = [v9 v10[272]];
    v32 = [v31 v12[273]];

    v33 = [v32 v14[274]];
    if (v33 && (v34 = [v33 communicationAddress], v33, v34))
    {
      v35 = [v34 telInformation];

      v36 = [v35 telNumber];
      v37 = [v36 number];

      v38 = sub_1A88C82E8();
      v185 = v39;
      v186 = v38;
    }

    else
    {
      v185 = 0;
      v186 = 0;
    }

    v40 = [v9 v10[272]];
    v41 = [v40 v12[273]];

    v42 = [v41 v14[274]];
    if (!v42 || (v43 = [v42 communicationAddress], v42, !v43))
    {
LABEL_37:
      v55 = 0;
      a5 = 0;
      goto LABEL_42;
    }

    v44 = [v43 uriList];

    v45 = [v44 v16[150]];
    sub_1A85E9718(0, &qword_1EB307B38);
    v46 = sub_1A88C85F8();

    v47 = v9;
    v48 = a6;
    if (v46 >> 62)
    {
LABEL_40:
      v49 = sub_1A88C8D38();
      if (!v49)
      {
LABEL_41:

        v55 = 0;
        a5 = 0;
        a6 = v48;
        v9 = v47;
        v10 = &selRef_rcsConfigurationForSubscriptionContext_;
        v16 = &selRef_rcsConfigurationForSubscriptionContext_;
        goto LABEL_42;
      }
    }

    else
    {
      v49 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v49)
      {
        goto LABEL_41;
      }
    }

    v50 = 0;
    while (1)
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x1AC56F710](v50, v46);
      }

      else
      {
        if (v50 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v51 = *(v46 + 8 * v50 + 32);
      }

      v52 = v51;
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if ([v51 label] == 1)
      {
        break;
      }

      ++v50;
      if (v53 == v49)
      {
        goto LABEL_41;
      }
    }

    v54 = [v52 addressUri];

    a6 = v48;
    v9 = v47;
    v10 = &selRef_rcsConfigurationForSubscriptionContext_;
    v16 = &selRef_rcsConfigurationForSubscriptionContext_;
    if (!v54)
    {
      goto LABEL_37;
    }

    v55 = sub_1A88C82E8();
    a5 = v56;

LABEL_42:
    v57 = [v9 v10[272]];
    v58 = [v57 email];

    if (v58)
    {
      v12 = sub_1A88C82E8();
      v14 = v59;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v60 = [v9 v10[272]];
    v61 = [v60 addresses];

    v184 = v55;
    v183 = a5;
    v182 = v12;
    if (!v61)
    {
      goto LABEL_54;
    }

    v62 = [v61 v16[150]];

    sub_1A85E9718(0, &qword_1EB307B30);
    v19 = sub_1A88C85F8();

    if (v19 >> 62)
    {
      break;
    }

    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

LABEL_48:
    if ((v19 & 0xC000000000000001) != 0)
    {
LABEL_84:
      v63 = MEMORY[0x1AC56F710](0, v19);
      goto LABEL_51;
    }

    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v63 = *(v19 + 32);
LABEL_51:
      v64 = v63;

      v65 = [v64 address];

      v180 = sub_1A88C82E8();
      v179 = v66;

      goto LABEL_55;
    }

    __break(1u);
LABEL_86:
    ;
  }

  if (sub_1A88C8D38())
  {
    goto LABEL_48;
  }

LABEL_53:

LABEL_54:
  v180 = 0;
  v179 = 0;
LABEL_55:
  v67 = sub_1A870CCE0(&unk_1EB309060);
  a5 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67 - 8);
  v68 = (a5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v69 = &v166 - v68;
  v70 = [v9 v10[272]];
  v71 = [v70 tcPageUrl];

  MEMORY[0x1EEE9AC00](v72);
  v181 = v14;
  if (v71)
  {
    sub_1A88C7288();

    v73 = sub_1A88C72E8();
    (*(*(v73 - 8) + 56))(&v166 - v68, 0, 1, v73);
  }

  else
  {
    v74 = sub_1A88C72E8();
    (*(*(v74 - 8) + 56))(&v166 - v68, 1, 1, v74);
  }

  v75 = sub_1A8859EE0(&v166 - v68, &v166 - v68);
  v178 = &v166;
  MEMORY[0x1EEE9AC00](v75);
  v76 = (a5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v202 = &v166 - v76;
  v77 = [v9 v10[272]];
  v78 = [v77 website];

  v14 = &v166;
  MEMORY[0x1EEE9AC00](v79);
  if (v78)
  {
    sub_1A88C7288();

    v80 = 0;
  }

  else
  {
    v80 = 1;
  }

  v81 = sub_1A88C72E8();
  v171 = *(v81 - 8);
  v82 = v171[7];
  v203 = v81;
  v196 = v82;
  v201 = v171 + 7;
  v82(&v166 - v76, v80, 1);
  sub_1A8859EE0(&v166 - v76, v202);
  LODWORD(v172) = a6;
  v197 = v69;
  if (a6)
  {
    v83 = 0;
  }

  else
  {
    v84 = [v9 verificationDetails];
    v83 = [v84 verified];
  }

  v85 = [v9 verificationDetails];
  v86 = [v85 verifiedBy];

  v176 = sub_1A88C82E8();
  v175 = v87;

  MEMORY[0x1EEE9AC00](v88);
  v16 = ((a5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = (&v166 - v16);
  v193 = v83;
  v177 = &v166;
  v192 = (&v166 - v16);
  if (!v83)
  {
    v100 = 1;
    v93 = v203;
    goto LABEL_91;
  }

  v90 = [v9 v10[272]];
  v91 = [v90 pcc];

  v92 = [v91 orgDetails];
  v93 = v203;
  if (!v92 || (v94 = [v92 mediaList], v92, !v94))
  {
LABEL_81:
    v100 = 1;
LABEL_90:
    v89 = v192;
    goto LABEL_91;
  }

  v95 = [v94 entry];

  v96 = [v95 list];
  sub_1A85E9718(0, &qword_1EB307B28);
  v19 = sub_1A88C85F8();

  v173 = v9;
  if (v19 >> 62)
  {
    goto LABEL_88;
  }

  v97 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v97)
  {
LABEL_89:

    v100 = 1;
    v9 = v173;
    v10 = &selRef_rcsConfigurationForSubscriptionContext_;
    v93 = v203;
    goto LABEL_90;
  }

LABEL_69:
  v9 = 0;
  v10 = (v19 & 0xFFFFFFFFFFFFFF8);
  a6 = &selRef_isEqualToNumber_;
  while (1)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v98 = MEMORY[0x1AC56F710](v9, v19);
    }

    else
    {
      if (v9 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }

      v98 = *(v19 + 8 * v9 + 32);
    }

    v14 = v98;
    v99 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if (![(SEL *)v98 label])
    {
      break;
    }

    ++v9;
    if (v99 == v97)
    {
      goto LABEL_89;
    }
  }

  v101 = [(SEL *)v14 media];

  v9 = v173;
  v10 = &selRef_rcsConfigurationForSubscriptionContext_;
  v93 = v203;
  if (!v101)
  {
    goto LABEL_81;
  }

  v102 = [v101 mediaUrl];

  v103 = [v102 url];
  v89 = v192;
  sub_1A88C7288();

  v100 = 0;
LABEL_91:
  v104 = v196;
  v105 = (v196)(v89, v100, 1, v93);
  v174 = &v166;
  MEMORY[0x1EEE9AC00](v105);
  v106 = (&v166 - v16);
  v104(&v166 - v16, 1, 1, v93);
  v107 = [v9 v10[272]];
  v108 = [v107 pcc];

  v109 = [v108 orgDetails];
  if (v109 && (v110 = [v109 categoryList], v109, v110))
  {
    v111 = [v110 categoryList];

    v173 = sub_1A88C85F8();
  }

  else
  {
    v173 = 0;
  }

  if (qword_1EB3022F0 != -1)
  {
    swift_once();
  }

  v112 = sub_1A88C7E58();
  v113 = sub_1A85EF0E4(v112, qword_1EB307AF0);
  MEMORY[0x1EEE9AC00](v113);
  v114 = (a5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v115 = &v166 - v114;
  sub_1A8728D80(v89, &v166 - v114, &unk_1EB309060);
  v116 = v199;

  v117 = v198;

  v118 = sub_1A88C7E38();
  v119 = sub_1A88C89A8();

  v120 = os_log_type_enabled(v118, v119);
  v191 = (&v166 - v16);
  if (v120)
  {
    v170 = &v166;
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v204 = v122;
    *v121 = 136447490;
    *(v121 + 4) = sub_1A85F0394(v194, v117, &v204);
    *(v121 + 12) = 2082;
    *(v121 + 14) = sub_1A85F0394(v200, v116, &v204);
    *(v121 + 22) = 2082;
    if (v193)
    {
      v123 = 0x6465696669726556;
    }

    else
    {
      v123 = 0x6966697265766E55;
    }

    if (v193)
    {
      v124 = 0xE800000000000000;
    }

    else
    {
      v124 = 0xEA00000000006465;
    }

    v125 = sub_1A85F0394(v123, v124, &v204);

    v169 = &v166;
    *(v121 + 24) = v125;
    *(v121 + 32) = 1026;
    *(v121 + 34) = v172 & 1;
    *(v121 + 38) = 1026;
    *(v121 + 40) = v195 & 1;
    *(v121 + 44) = 2082;
    MEMORY[0x1EEE9AC00](v126);
    v127 = &v166 - v114;
    sub_1A8728D80(&v166 - v114, &v166 - v114, &unk_1EB309060);
    v128 = v171;
    v129 = v203;
    if ((v171[6])(&v166 - v114, 1, v203) == 1)
    {
      sub_1A85EF638(&v166 - v114, &unk_1EB309060);
      v130 = 0xE900000000000044;
      v131 = 0x4E554F4620544F4ELL;
    }

    else
    {
      v134 = sub_1A88C7208();
      v135 = v128;
      v131 = v134;
      v130 = v136;
      (v135[1])(v127, v129);
    }

    sub_1A85EF638(v115, &unk_1EB309060);
    v137 = sub_1A85F0394(v131, v130, &v204);

    *(v121 + 46) = v137;
    _os_log_impl(&dword_1A85E5000, v118, v119, "ChatBot Brand - Brand with name: %{public}s, and URI: %{public}s is %{public}s. Expired: %{BOOL,public}d, fromLocalCache: %{BOOL,public}d, logoURL: %{public}s", v121, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v122, -1, -1);
    MEMORY[0x1AC571F20](v121, -1, -1);

    v133 = v189;
    v106 = v191;
  }

  else
  {

    v132 = sub_1A85EF638(&v166 - v114, &unk_1EB309060);
    v133 = v189;
    v129 = v203;
  }

  v189 = &v166;
  MEMORY[0x1EEE9AC00](v132);
  v138 = (a5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v170 = (&v166 - v138);
  v139 = sub_1A8728D80(v202, &v166 - v138, &unk_1EB309060);
  v172 = &v166;
  MEMORY[0x1EEE9AC00](v139);
  v169 = (&v166 - v138);
  v140 = sub_1A8728D80(v197, &v166 - v138, &unk_1EB309060);
  v171 = &v166;
  MEMORY[0x1EEE9AC00](v140);
  v168 = &v166 - v138;
  sub_1A8728D80(v106, &v166 - v138, &unk_1EB309060);
  v141 = type metadata accessor for RBMBrand(0);
  v133[3] = v141;
  v133[4] = sub_1A8859F60(&qword_1EB307AE8, 255, type metadata accessor for RBMBrand);
  v142 = sub_1A871E00C(v133);
  v167 = v141[13];
  v143 = v196;
  v196(v142 + v167, 1, 1, v129);
  v144 = (v142 + v141[14]);
  v145 = v129;
  v146 = (v142 + v141[15]);
  v147 = v141[16];
  v166 = v141[17];
  v148 = (v142 + v147);
  v143(v142 + v166, 1, 1, v145);
  v149 = v141[19];
  v150 = (v142 + v141[18]);
  v143(v142 + v149, 1, 1, v145);
  v151 = v143;
  v152 = v199;
  *v142 = v200;
  v142[1] = v152;
  v153 = v198;
  v142[2] = v194;
  v142[3] = v153;
  v154 = v187;
  v142[12] = v188;
  v142[13] = v154;
  v155 = v185;
  v156 = v186;
  v142[4] = v173;
  v142[5] = v156;
  v142[6] = v155;
  *(v142 + 7) = 0u;
  *(v142 + 9) = 0u;
  *(v142 + 88) = v193;
  v157 = v175;
  v142[14] = v176;
  v142[15] = v157;

  sub_1A8854D80(v170, v142 + v167);
  v158 = v183;
  *v144 = v184;
  v144[1] = v158;
  v159 = v181;
  *v146 = v182;
  v146[1] = v159;
  v160 = v179;
  *v148 = v180;
  v148[1] = v160;
  sub_1A8854D80(v169, v142 + v166);
  *v150 = 0;
  v150[1] = 0;
  sub_1A8854D80(v168, v142 + v149);
  *(v142 + v141[20]) = v195 & 1;
  v161 = type metadata accessor for ChatBotLogoURLProvider(0);
  v162 = v190;
  v190[3] = v161;
  v162[4] = sub_1A8859F60(&qword_1EB307B20, 255, type metadata accessor for ChatBotLogoURLProvider);
  v163 = sub_1A871E00C(v162);
  v164 = v192;
  sub_1A8728D80(v192, v163, &unk_1EB309060);
  v151(v163 + *(v161 + 20), 1, 1, v203);
  sub_1A85EF638(v191, &unk_1EB309060);
  sub_1A85EF638(v164, &unk_1EB309060);
  sub_1A85EF638(v202, &unk_1EB309060);
  return sub_1A85EF638(v197, &unk_1EB309060);
}

uint64_t sub_1A8858F68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_1A85F5F40(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    v14 = swift_allocObject();
    *(v14 + 16) = a4;
    *(v14 + 24) = a5;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1A8735EFC(0, v13[2] + 1, 1, v13);
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1A8735EFC((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1A885A174;
    v17[5] = v14;
  }

  else
  {
    sub_1A870CCE0(&qword_1EB303DE0);
    v13 = swift_allocObject();
    *(v13 + 1) = xmmword_1A88E14F0;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    v13[4] = sub_1A885A0E4;
    v13[5] = v18;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *a1;
  sub_1A87AD124(v13, a2, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v21;
  return result;
}

unint64_t sub_1A8859134(unint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  v8 = *result;
  if (*(*result + 16))
  {
    v12 = a3;
    result = sub_1A85F5F40(a2, a3);
    if (v13)
    {
      v14 = *(*(v8 + 56) + 8 * result);
      if (a4)
      {

        v15 = [a4 renderInformation];
        if (v15)
        {
          v16 = v15;
          sub_1A88579F4(v52, v51, v15, a6, a7, ([a4 cacheType] == 2), 0);
          v17 = *(v14 + 16);
          if (v17)
          {
            v46 = v16;
            v18 = v14 + 40;
            v19 = &unk_1EB302000;
            do
            {
              v55 = *(v18 - 8);
              v20 = v19[94];

              if (v20 != -1)
              {
                swift_once();
              }

              v21 = sub_1A88C7E58();
              sub_1A85EF0E4(v21, qword_1EB307AF0);

              v22 = sub_1A88C7E38();
              v23 = sub_1A88C89A8();

              v50 = v23;
              if (os_log_type_enabled(v22, v23))
              {
                v24 = swift_slowAlloc();
                v49 = swift_slowAlloc();
                v53[0] = v49;
                *v24 = 136315394;
                *(v24 + 4) = sub_1A85F0394(a2, v12, v53);
                *(v24 + 12) = 2080;
                v25 = sub_1A88C82A8();
                v26 = v12;
                v27 = [v25 __im_stripSip];

                v28 = sub_1A88C82E8();
                v29 = a7;
                v31 = v30;

                v12 = v26;
                v32 = sub_1A85F0394(v28, v31, v53);
                a7 = v29;

                *(v24 + 14) = v32;
                _os_log_impl(&dword_1A85E5000, v22, v50, "ChatBot Brand - Run result handler %s with fetched chatbot brand for %s", v24, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1AC571F20](v49, -1, -1);
                v33 = v24;
                v19 = &unk_1EB302000;
                MEMORY[0x1AC571F20](v33, -1, -1);
              }

              sub_1A86061B4(v52, v53);
              sub_1A86061B4(v51, v54);
              memset(&v54[40], 0, 41);
              v55(v53);

              sub_1A85EF638(v53, &qword_1EB307B18);
              v18 += 16;
              --v17;
            }

            while (v17);
          }

          else
          {
          }

          sub_1A85F1084(v51);
          sub_1A85F1084(v52);
LABEL_28:
          sub_1A88BF304(a2, v12);
        }
      }

      else
      {
      }

      v34 = *(v14 + 16);
      if (v34)
      {
        v55 = v12;
        v35 = v14 + 40;
        do
        {
          v39 = *(v35 - 8);

          v40 = [a8 errorParameter];
          if (v40)
          {
            v41 = v40;
            if (qword_1EB3022F0 != -1)
            {
              swift_once();
            }

            v42 = sub_1A88C7E58();
            sub_1A85EF0E4(v42, qword_1EB307AF0);
            v43 = v41;
            v36 = sub_1A88C7E38();
            v44 = sub_1A88C89C8();
            if (os_log_type_enabled(v36, v44))
            {
              v45 = swift_slowAlloc();
              *v45 = 134217984;
              *(v45 + 4) = [v43 value];

              _os_log_impl(&dword_1A85E5000, v36, v44, "Failed to fetch chatbot brand. CTLazuliErrorType: %ld", v45, 0xCu);
              MEMORY[0x1AC571F20](v45, -1, -1);
            }

            else
            {

              v36 = v43;
            }
          }

          sub_1A8859E8C();
          v37 = swift_allocError();
          *v38 = 0;
          v53[0] = v37;
          v54[80] = 1;
          v39(v53);

          sub_1A85EF638(v53, &qword_1EB307B18);
          v35 += 16;
          --v34;
        }

        while (v34);

        v12 = v55;
      }

      else
      {
      }

      goto LABEL_28;
    }
  }

  return result;
}

uint64_t sub_1A88597B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A88C6FB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A870CCE0(&qword_1EB3040C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  sub_1A88C6F98();
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1A85EF638(v10, &qword_1EB3040C8);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1A88C6F68();
    v12 = v11;
    (*(v5 + 8))(v7, v4);
    if (v12)
    {

      goto LABEL_10;
    }
  }

  v13 = sub_1A88C82A8();
  IsEmail = IMStringIsEmail();

  if (!IsEmail)
  {
    v16 = sub_1A88C82A8();
    v17 = MEMORY[0x1AC570A50]();

    if (v17)
    {
      v15 = 980182388;
      goto LABEL_9;
    }

LABEL_10:

    return a1;
  }

  v15 = 980445555;
LABEL_9:
  v19[0] = v15;
  v19[1] = 0xE400000000000000;
  MEMORY[0x1AC56ECB0](a1, a2);
  return v19[0];
}

void sub_1A88599E0(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = [a1 uri];
  v42 = sub_1A88C82E8();
  v9 = v8;

  v10 = [a3 operation];
  v11 = [v10 uuid];
  v12 = sub_1A88C82E8();
  v14 = v13;

  if (a2)
  {
    v41 = v12;
    v15 = [a2 cacheType];
    if (qword_1EB3022F0 != -1)
    {
      swift_once();
    }

    v16 = sub_1A88C7E58();
    sub_1A85EF0E4(v16, qword_1EB307AF0);

    v17 = a2;
    v18 = sub_1A88C7E38();
    v19 = sub_1A88C89A8();

    if (os_log_type_enabled(v18, v19))
    {
      v40 = v4;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v43[0] = v21;
      *v20 = 136315906;
      *(v20 + 4) = sub_1A85F0394(v42, v9, v43);
      *(v20 + 12) = 2048;
      *(v20 + 14) = v15;
      *(v20 + 22) = 2080;
      *(v20 + 24) = sub_1A85F0394(v41, v14, v43);
      *(v20 + 32) = 2080;
      v22 = [v17 renderInformation];
      if (v22)
      {
        v23 = v22;
        v24 = v21;
        v25 = v10;
        v26 = [v22 description];

        v27 = sub_1A88C82E8();
        v29 = v28;

        v10 = v25;
        v21 = v24;
      }

      else
      {
        v29 = 0x80000001A891EC50;
        v27 = 0xD000000000000013;
      }

      v38 = sub_1A85F0394(v27, v29, v43);

      *(v20 + 34) = v38;
      _os_log_impl(&dword_1A85E5000, v18, v19, "ChatBot Brand - Successfully fetched Chatbot brand from CT for %s with cacheType %ld, try to run resultHandler: %s with %s", v20, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v21, -1, -1);
      MEMORY[0x1AC571F20](v20, -1, -1);

      v4 = v40;
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EB3022F0 != -1)
    {
      swift_once();
    }

    v30 = sub_1A88C7E58();
    sub_1A85EF0E4(v30, qword_1EB307AF0);

    v31 = sub_1A88C7E38();
    v32 = sub_1A88C89C8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = v10;
      v35 = swift_slowAlloc();
      v43[0] = v35;
      *v33 = 136315138;
      *(v33 + 4) = sub_1A85F0394(v42, v9, v43);
      _os_log_impl(&dword_1A85E5000, v31, v32, "Fetched Chatbot rendering information from CT for %s but cacheType is unknown", v33, 0xCu);
      sub_1A85F1084(v35);
      v36 = v35;
      v10 = v34;
      MEMORY[0x1AC571F20](v36, -1, -1);
      MEMORY[0x1AC571F20](v33, -1, -1);
    }
  }

  v39 = *(v4 + 80);
  MEMORY[0x1EEE9AC00](v37);
  os_unfair_lock_lock(v39 + 6);
  sub_1A8859E64(&v39[4]);
  os_unfair_lock_unlock(v39 + 6);
}

unint64_t sub_1A8859E8C()
{
  result = qword_1EB307B10;
  if (!qword_1EB307B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307B10);
  }

  return result;
}

uint64_t sub_1A8859EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&unk_1EB309060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8859F60(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A8859FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A885A010()
{
  result = qword_1EB307B48;
  if (!qword_1EB307B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307B48);
  }

  return result;
}

uint64_t sub_1A885A064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A885A120()
{
  result = qword_1EB307B58;
  if (!qword_1EB307B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307B58);
  }

  return result;
}

uint64_t sub_1A885A178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1A873C504(a3, v25 - v10);
  v12 = sub_1A88C87A8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1A85EF638(v11, &unk_1EB3090D0);
  }

  else
  {
    sub_1A88C8798();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A88C86D8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A88C8358() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1A85EF638(a3, &unk_1EB3090D0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A85EF638(a3, &unk_1EB3090D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1A885A468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1A873C504(a3, v25 - v10);
  v12 = sub_1A88C87A8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1A85EF638(v11, &unk_1EB3090D0);
  }

  else
  {
    sub_1A88C8798();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A88C86D8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A88C8358() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1A870CCE0(&qword_1EB307B60);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1A85EF638(a3, &unk_1EB3090D0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A85EF638(a3, &unk_1EB3090D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1A870CCE0(&qword_1EB307B60);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t static IMTranslator.isSupported()()
{
  if (qword_1EB300778 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v1 = qword_1EB338DB0;

    os_unfair_lock_lock((v1 + 20));
    v2 = *(v1 + 16);
    os_unfair_lock_unlock((v1 + 20));

    if ((v2 & 1) == 0)
    {
      return 0;
    }

    if (!MEMORY[0x1E6982C30])
    {
      v17 = sub_1A88C7E58();
      v18 = *(v17 - 8);
      MEMORY[0x1EEE9AC00](v17);
      v20 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1A88C7E48();
      v21 = sub_1A88C7E38();
      v22 = sub_1A88C89C8();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_30;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "isSupported - Missing symbol _LTTranslator";
      goto LABEL_29;
    }

    v53 = v0;
    v3 = sub_1A870CCE0(&qword_1EB306458);
    v54 = &v52;
    MEMORY[0x1EEE9AC00](v3 - 8);
    v5 = &v52 - v4;
    v6 = [objc_opt_self() currentLocale];
    v7 = sub_1A88C75E8();
    v8 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1A88C7548();

    v11 = sub_1A88C75C8();
    v12 = *(v11 - 8);
    MEMORY[0x1EEE9AC00](v11);
    v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1A88C75D8();
    (*(v8 + 8))(v10, v7);
    sub_1A88C75A8();
    (*(v12 + 8))(v14, v11);
    v15 = sub_1A88C74F8();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v5, 1, v15) == 1)
    {
      sub_1A85EF638(v5, &qword_1EB306458);
      v17 = sub_1A88C7E58();
      v18 = *(v17 - 8);
      MEMORY[0x1EEE9AC00](v17);
      v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1A88C7E48();
      v21 = sub_1A88C7E38();
      v22 = sub_1A88C89C8();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_30;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "isSupported - NSLocale returned nil languageCode";
      goto LABEL_29;
    }

    v27 = sub_1A88C74E8();
    v29 = v28;
    (*(v16 + 8))(v5, v15);
    if (qword_1EB3005E8 != -1)
    {
      swift_once();
    }

    v30 = off_1EB3005F0;
    v31 = *(off_1EB3005F0 + 4);
    sub_1A870CCE0(&qword_1EB304C38);
    sub_1A88C8A58();

    v32 = *(v57 + 16);

    if (!v32)
    {
      break;
    }

    v33 = v30[4];
    sub_1A88C8A58();

    v34 = 0;
    v35 = v57;
    v36 = v57 + 64;
    v37 = 1 << *(v57 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v57 + 64);
    v40 = (v37 + 63) >> 6;
    while (v39)
    {
      v41 = v34;
LABEL_23:
      v42 = (*(v35 + 48) + ((v41 << 10) | (16 * __clz(__rbit64(v39)))));
      v44 = *v42;
      v43 = v42[1];
      v39 &= v39 - 1;
      v57 = v44;
      v58 = v43;
      v55 = v27;
      v56 = v29;
      sub_1A8722620();
      if (sub_1A88C8C98())
      {

        v45 = 1;
        v0 = v53;
LABEL_26:
        v46 = sub_1A870CCE0(&unk_1EB3090D0);
        MEMORY[0x1EEE9AC00](v46 - 8);
        v48 = &v52 - v47;
        v49 = sub_1A88C87A8();
        (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
        v50 = swift_allocObject();
        *(v50 + 16) = 0;
        *(v50 + 24) = 0;
        *(v50 + 32) = v0;
        *(v50 + 40) = v45;
        sub_1A885A178(0, 0, v48, &unk_1A88F4A88, v50);

        return v45;
      }
    }

    v0 = v53;
    while (1)
    {
      v41 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v41 >= v40)
      {

        v45 = 0;
        goto LABEL_26;
      }

      v39 = *(v36 + 8 * v41);
      ++v34;
      if (v39)
      {
        v34 = v41;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  v17 = sub_1A88C7E58();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v52 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7E48();
  v21 = sub_1A88C7E38();
  v22 = sub_1A88C89C8();
  if (!os_log_type_enabled(v21, v22))
  {
    goto LABEL_30;
  }

  v23 = swift_slowAlloc();
  *v23 = 0;
  v24 = "isSupported - supportedTranslationLocales empty";
LABEL_29:
  _os_log_impl(&dword_1A85E5000, v21, v22, v24, v23, 2u);
  MEMORY[0x1AC571F20](v23, -1, -1);
LABEL_30:

  (*(v18 + 8))(v20, v17);
  return 0;
}

uint64_t sub_1A885B09C()
{
  sub_1A870CCE0(&qword_1EB307B68);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1EB3006D0 = result;
  return result;
}

uint64_t sub_1A885B0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A885B100, 0, 0);
}

uint64_t sub_1A885B100()
{
  if (qword_1EB3006C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = qword_1EB3006D0;
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_1A885B8EC;
  *(v5 + 24) = v4;

  os_unfair_lock_lock(v3 + 4);
  sub_1A885B90C();
  os_unfair_lock_unlock(v3 + 4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A885B238(int a1)
{
  v2 = sub_1A88C7E58();
  v3 = *(v2 - 8);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (byte_1EB3006C0 == 2 || ((byte_1EB3006C0 ^ a1) & 1) != 0)
  {
    v7 = a1 & 1;
    sub_1A88C7E48();
    v8 = sub_1A88C7E38();
    v9 = sub_1A88C89D8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = a1 & 1;
      _os_log_impl(&dword_1A85E5000, v8, v9, "isSupported - supportedTranslationLocales contains system language: %{BOOL}d", v10, 8u);
      v11 = v10;
      v7 = a1 & 1;
      MEMORY[0x1AC571F20](v11, -1, -1);
    }

    result = (*(v3 + 8))(v6, v2);
    byte_1EB3006C0 = v7;
  }

  return result;
}

uint64_t sub_1A885B3F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A8714B6C;

  return sub_1A885B0DC(a1, v4, v5, v6, v7);
}

uint64_t sub_1A885B4BC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1A885B5B0;

  return v5(v2 + 32);
}

uint64_t sub_1A885B5B0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1A885B6C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A8716570;

  return sub_1A885B4BC(a1, v4);
}

uint64_t sub_1A885B77C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A8714B6C;

  return sub_1A885B4BC(a1, v4);
}

uint64_t sub_1A885B834(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A8716570;

  return sub_1A8853528(a1, v4);
}

id IMBrandRBMBrandDataSourceObjcShim.init(cacheClient:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCacheClient_];
  swift_unknownObjectRelease();
  return v1;
}

{
  v1 = sub_1A8605E4C(a1);
  swift_unknownObjectRelease();
  return v1;
}

IMBrandRBMBrandDataSourceObjcShim __swiftcall IMBrandRBMBrandDataSourceObjcShim.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.opaqueWrapper = v2;
  result.super.isa = v1;
  return result;
}

unint64_t type metadata accessor for IMBrandRBMBrandDataSourceObjcShim()
{
  result = qword_1EB307B78;
  if (!qword_1EB307B78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB307B78);
  }

  return result;
}

uint64_t DaemonAttachmentBroadcastEntity.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DaemonAttachmentBroadcastEntity.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A885BB70()
{
  v0 = sub_1A88C6DC8();
  sub_1A85EFC04(v0, qword_1EB307B88);
  sub_1A85EF0E4(v0, qword_1EB307B88);
  v1 = sub_1A88C7188();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A88C7178();
  v3 = sub_1A870CCE0(&qword_1EB303270);
  MEMORY[0x1EEE9AC00](v3 - 8);
  (*(v2 + 56))(&v6 - v4, 1, 1, v1);
  return sub_1A88C6DB8();
}

uint64_t static DaemonAttachmentBroadcastEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB302300 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C6DC8();
  v3 = sub_1A85EF0E4(v2, qword_1EB307B88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t DaemonAttachmentBroadcastEntity.displayRepresentation.getter()
{
  v0 = sub_1A870CCE0(&qword_1EB303268);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A88C7188();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A88C7178();
  v5 = sub_1A870CCE0(&qword_1EB303270);
  MEMORY[0x1EEE9AC00](v5 - 8);
  (*(v4 + 56))(&v9 - v6, 1, 1, v3);
  v7 = sub_1A88C6D58();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  return sub_1A88C6D68();
}

uint64_t sub_1A885BF5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB302300 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C6DC8();
  v3 = sub_1A85EF0E4(v2, qword_1EB307B88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A885C004(uint64_t a1)
{
  v2 = sub_1A885C480();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1A885C050()
{
  v0 = sub_1A870CCE0(&qword_1EB303268);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A88C7188();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A88C7178();
  v5 = sub_1A870CCE0(&qword_1EB303270);
  MEMORY[0x1EEE9AC00](v5 - 8);
  (*(v4 + 56))(&v9 - v6, 1, 1, v3);
  v7 = sub_1A88C6D58();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  return sub_1A88C6D68();
}

uint64_t sub_1A885C218(uint64_t a1)
{
  v2 = sub_1A885C5D8();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

unint64_t sub_1A885C2A4(uint64_t a1)
{
  result = sub_1A885C2CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A885C2CC()
{
  result = qword_1EB307BA0;
  if (!qword_1EB307BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307BA0);
  }

  return result;
}

unint64_t sub_1A885C324()
{
  result = qword_1EB307BA8;
  if (!qword_1EB307BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307BA8);
  }

  return result;
}

unint64_t sub_1A885C37C()
{
  result = qword_1EB307BB0;
  if (!qword_1EB307BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307BB0);
  }

  return result;
}

unint64_t sub_1A885C3D4()
{
  result = qword_1EB307BB8;
  if (!qword_1EB307BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307BB8);
  }

  return result;
}

unint64_t sub_1A885C42C()
{
  result = qword_1EB307BC0;
  if (!qword_1EB307BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307BC0);
  }

  return result;
}

unint64_t sub_1A885C480()
{
  result = qword_1EB307BC8;
  if (!qword_1EB307BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307BC8);
  }

  return result;
}

unint64_t sub_1A885C4D8()
{
  result = qword_1EB307BD0;
  if (!qword_1EB307BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307BD0);
  }

  return result;
}

unint64_t sub_1A885C52C()
{
  result = qword_1EB307BD8;
  if (!qword_1EB307BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307BD8);
  }

  return result;
}

unint64_t sub_1A885C580()
{
  result = qword_1EB307BE0;
  if (!qword_1EB307BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307BE0);
  }

  return result;
}

unint64_t sub_1A885C5D8()
{
  result = qword_1EB307BE8;
  if (!qword_1EB307BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307BE8);
  }

  return result;
}

unint64_t sub_1A885C630()
{
  result = qword_1EB307BF0;
  if (!qword_1EB307BF0)
  {
    sub_1A870CD28(&qword_1EB307BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307BF0);
  }

  return result;
}

unint64_t sub_1A885C698()
{
  result = qword_1EB307C00;
  if (!qword_1EB307C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307C00);
  }

  return result;
}

unint64_t sub_1A885C6F0()
{
  result = qword_1EB307C08;
  if (!qword_1EB307C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307C08);
  }

  return result;
}

unint64_t sub_1A885C748()
{
  result = qword_1EB307C10;
  if (!qword_1EB307C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307C10);
  }

  return result;
}

unint64_t sub_1A885C7A0()
{
  result = qword_1EB307C18;
  if (!qword_1EB307C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307C18);
  }

  return result;
}

unint64_t sub_1A885C7F8()
{
  result = qword_1EB307C20;
  if (!qword_1EB307C20)
  {
    sub_1A870CD28(&qword_1EB307C28);
    sub_1A885C580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307C20);
  }

  return result;
}

uint64_t sub_1A885C87C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1A885C42C();
  *v5 = v2;
  v5[1] = sub_1A8714B6C;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

void sub_1A885C9A4()
{
  sub_1A885CA78(319, &qword_1EB303530, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1A885CA78(319, &qword_1EB303528, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A85ED6EC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A885CA78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A885CB14()
{
  sub_1A885CA78(319, &qword_1EB303530, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1A885CA78(319, &qword_1EB303528, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A85ED6EC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A885CBE8(void *a1)
{
  v3 = sub_1A88C85E8();
  if (*(v1 + 16))
  {
    v4 = sub_1A88C82A8();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(type metadata accessor for MovedMessagesToRecentlyDeletedForChatsBroadcast(0) + 24);
  v6 = sub_1A870CCE0(&unk_1EB3052E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  sub_1A8721348(v1 + v5, &v12 - v7);
  v9 = sub_1A88C7478();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = sub_1A88C73D8();
    (*(v10 + 8))(v8, v9);
  }

  [a1 movedMessagesToRecentlyDeletedForChatsWithGUIDs:v3 queryID:v4 deletionDate:v11];
}

uint64_t sub_1A885CD6C(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB307CB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1A870C278(a1, a1[3]);
  sub_1A885E1E8();
  sub_1A88C95C8();
  v11 = *v3;
  v10[7] = 0;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  sub_1A88C92C8();
  if (!v2)
  {
    v10[6] = 1;
    sub_1A88C91C8();
    type metadata accessor for MovedMessagesToRecentlyDeletedForChatsBroadcast(0);
    v10[5] = 2;
    sub_1A88C7478();
    sub_1A8720F18(&qword_1EB303500);
    sub_1A88C9228();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A885CFB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = sub_1A870CCE0(&qword_1EB307CA8);
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v21 - v5;
  v7 = type metadata accessor for MovedMessagesToRecentlyDeletedForChatsBroadcast(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 32);
  v12 = sub_1A88C7478();
  v13 = *(*(v12 - 8) + 56);
  v27 = v11;
  v13(&v10[v11], 1, 1, v12);
  sub_1A870C278(a1, a1[3]);
  sub_1A885E1E8();
  sub_1A88C95A8();
  if (v2)
  {
    sub_1A85F1084(a1);
    return sub_1A871DF50(&v10[v27]);
  }

  else
  {
    v14 = v4;
    sub_1A870CCE0(&qword_1EB303100);
    v30 = 0;
    sub_1A8716048(&qword_1EB303108);
    v15 = v26;
    sub_1A88C9158();
    v24 = v31;
    *v10 = v31;
    v29 = 1;
    *(v10 + 1) = sub_1A88C9058();
    *(v10 + 2) = v16;
    v17 = sub_1A870CCE0(&unk_1EB3052E0);
    v23 = &v21;
    MEMORY[0x1EEE9AC00](v17 - 8);
    v19 = &v21 - v18;
    v28 = 2;
    sub_1A8720F18(&qword_1EB303510);
    v22 = v19;
    sub_1A88C90B8();
    (*(v14 + 8))(v6, v15);
    sub_1A87D8CFC(v22, &v10[v27]);
    sub_1A885E23C(v10, v25, type metadata accessor for MovedMessagesToRecentlyDeletedForChatsBroadcast);
    sub_1A85F1084(a1);
    return sub_1A885E2A4(v10, type metadata accessor for MovedMessagesToRecentlyDeletedForChatsBroadcast);
  }
}

uint64_t sub_1A885D38C()
{
  v1 = 0x44497972657571;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6974656C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449554774616863;
  }
}

uint64_t sub_1A885D3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A885E534(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A885D41C(uint64_t a1)
{
  v2 = sub_1A885E1E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A885D458(uint64_t a1)
{
  v2 = sub_1A885E1E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A885D494()
{
  v0 = qword_1EB307C30;

  return v0;
}

uint64_t sub_1A885D4FC(uint64_t a1)
{
  *(a1 + 8) = sub_1A885D580(&qword_1EB304F78, type metadata accessor for MovedMessagesToRecentlyDeletedForChatsBroadcast);
  result = sub_1A885D580(&qword_1EB304F70, type metadata accessor for MovedMessagesToRecentlyDeletedForChatsBroadcast);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A885D580(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A885D5C8(uint64_t a1)
{
  result = sub_1A885D580(&qword_1EB307C70, type metadata accessor for MovedMessagesToRecentlyDeletedForChatsBroadcast);
  *(a1 + 8) = result;
  return result;
}

void sub_1A885D620(void *a1)
{
  v3 = sub_1A88C85E8();
  if (*(v1 + 16))
  {
    v4 = sub_1A88C82A8();
    if (*(v1 + 32))
    {
LABEL_3:
      v5 = sub_1A88C82A8();
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    if (*(v1 + 32))
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = *(type metadata accessor for MovedMessagesWithGUIDsToRecentlyDeletedBroadcast(0) + 28);
  v7 = sub_1A870CCE0(&unk_1EB3052E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  sub_1A8721348(v1 + v6, &v13 - v8);
  v10 = sub_1A88C7478();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_1A88C73D8();
    (*(v11 + 8))(v9, v10);
  }

  [a1 movedMessageGUIDsToRecentlyDeleted:v3 forChatWithGUID:v4 queryID:v5 deletionDate:v12];
}

uint64_t sub_1A885D7D4(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB307CA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1A870C278(a1, a1[3]);
  sub_1A885E194();
  sub_1A88C95C8();
  v11 = *v3;
  v10[7] = 0;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  sub_1A88C92C8();
  if (!v2)
  {
    v10[6] = 1;
    sub_1A88C91C8();
    v10[5] = 2;
    sub_1A88C91C8();
    type metadata accessor for MovedMessagesWithGUIDsToRecentlyDeletedBroadcast(0);
    v10[4] = 3;
    sub_1A88C7478();
    sub_1A8720F18(&qword_1EB303500);
    sub_1A88C9228();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A885DA40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = sub_1A870CCE0(&qword_1EB307C90);
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = v22 - v5;
  v7 = type metadata accessor for MovedMessagesWithGUIDsToRecentlyDeletedBroadcast(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v8 + 36);
  v12 = sub_1A88C7478();
  v13 = *(*(v12 - 8) + 56);
  v25 = v11;
  v13(v10 + v11, 1, 1, v12);
  sub_1A870C278(a1, a1[3]);
  sub_1A885E194();
  sub_1A88C95A8();
  if (v2)
  {
    sub_1A85F1084(a1);
    return sub_1A871DF50(v10 + v25);
  }

  else
  {
    v14 = v4;
    sub_1A870CCE0(&qword_1EB303100);
    v29 = 0;
    sub_1A8716048(&qword_1EB303108);
    v15 = v24;
    sub_1A88C9158();
    v22[3] = v30;
    *v10 = v30;
    v28 = 1;
    v10[1] = sub_1A88C9058();
    v10[2] = v16;
    v22[2] = v16;
    v27 = 2;
    v10[3] = sub_1A88C9058();
    v10[4] = v17;
    v18 = sub_1A870CCE0(&unk_1EB3052E0);
    v22[1] = v22;
    MEMORY[0x1EEE9AC00](v18 - 8);
    v20 = v22 - v19;
    v26 = 3;
    sub_1A8720F18(&qword_1EB303510);
    v22[0] = v20;
    sub_1A88C90B8();
    (*(v14 + 8))(v6, v15);
    sub_1A87D8CFC(v22[0], v10 + v25);
    sub_1A885E23C(v10, v23, type metadata accessor for MovedMessagesWithGUIDsToRecentlyDeletedBroadcast);
    sub_1A85F1084(a1);
    return sub_1A885E2A4(v10, type metadata accessor for MovedMessagesWithGUIDsToRecentlyDeletedBroadcast);
  }
}

uint64_t sub_1A885DE74()
{
  v1 = 0x476567617373656DLL;
  v2 = 0x44497972657571;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6974656C6564;
  }

  if (*v0)
  {
    v1 = 0x4449554774616863;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A885DF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A885E658(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A885DF28(uint64_t a1)
{
  v2 = sub_1A885E194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A885DF64(uint64_t a1)
{
  v2 = sub_1A885E194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A885DFA0()
{
  v0 = qword_1EB307C40;

  return v0;
}

uint64_t sub_1A885E008(uint64_t a1)
{
  *(a1 + 8) = sub_1A885D580(&qword_1EB304F68, type metadata accessor for MovedMessagesWithGUIDsToRecentlyDeletedBroadcast);
  result = sub_1A885D580(&qword_1EB304F60, type metadata accessor for MovedMessagesWithGUIDsToRecentlyDeletedBroadcast);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A885E08C(uint64_t a1)
{
  result = sub_1A885D580(&qword_1EB307C78, type metadata accessor for MovedMessagesWithGUIDsToRecentlyDeletedBroadcast);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A885E0E4(uint64_t a1)
{
  result = sub_1A885D580(&qword_1EB307C80, type metadata accessor for MovedMessagesWithGUIDsToRecentlyDeletedBroadcast);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A885E13C(uint64_t a1)
{
  result = sub_1A885D580(&qword_1EB307C88, type metadata accessor for MovedMessagesToRecentlyDeletedForChatsBroadcast);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A885E194()
{
  result = qword_1EB307C98;
  if (!qword_1EB307C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307C98);
  }

  return result;
}

unint64_t sub_1A885E1E8()
{
  result = qword_1EB307CB0;
  if (!qword_1EB307CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307CB0);
  }

  return result;
}

uint64_t sub_1A885E23C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A885E2A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A885E328()
{
  result = qword_1EB307CC0;
  if (!qword_1EB307CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307CC0);
  }

  return result;
}

unint64_t sub_1A885E380()
{
  result = qword_1EB307CC8;
  if (!qword_1EB307CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307CC8);
  }

  return result;
}

unint64_t sub_1A885E3D8()
{
  result = qword_1EB307CD0;
  if (!qword_1EB307CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307CD0);
  }

  return result;
}

unint64_t sub_1A885E430()
{
  result = qword_1EB307CD8;
  if (!qword_1EB307CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307CD8);
  }

  return result;
}

unint64_t sub_1A885E488()
{
  result = qword_1EB307CE0;
  if (!qword_1EB307CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307CE0);
  }

  return result;
}

unint64_t sub_1A885E4E0()
{
  result = qword_1EB307CE8;
  if (!qword_1EB307CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307CE8);
  }

  return result;
}

uint64_t sub_1A885E534(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449554774616863 && a2 == 0xE900000000000073;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44497972657571 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6974656C6564 && a2 == 0xEC00000065746144)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A88C9398();

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

uint64_t sub_1A885E658(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x476567617373656DLL && a2 == 0xEC00000073444955;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449554774616863 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44497972657571 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6974656C6564 && a2 == 0xEC00000065746144)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t ProtectiveConcurrentQueue.__allocating_init(label:qos:attributes:autoreleaseFrequency:target:initialState:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  ProtectiveConcurrentQueue.init(label:qos:attributes:autoreleaseFrequency:target:initialState:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t ProtectiveConcurrentQueue.init(label:qos:attributes:autoreleaseFrequency:target:initialState:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a5;
  v41 = a7;
  v42 = a4;
  v38 = a2;
  v39 = a6;
  v32 = a3;
  v37 = a1;
  v40 = *v7;
  v34 = sub_1A88C8A28();
  v9 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A88C8A18();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v30 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = sub_1A88C7EF8();
  v31 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A85E90C8();
  (*(v20 + 16))(v22, a3, v19);
  sub_1A88C8A08();
  v23 = MEMORY[0x1E69E8030];
  sub_1A885FBDC(&qword_1EB300310, MEMORY[0x1E69E8030]);
  sub_1A88C84F8();
  sub_1A885FBDC(&qword_1EB300308, v23);
  sub_1A88C96C8();
  (*(v12 + 16))(v15, v18, v11);
  sub_1A885FBDC(&qword_1ED8C9580, v23);
  sub_1A88C8CC8();
  v24 = *(v12 + 8);
  v24(v18, v11);
  v25 = v34;
  v26 = v36;
  (*(v9 + 16))(v33, v36, v34);
  v27 = sub_1A88C8A78();
  (*(v9 + 8))(v26, v25);
  v24(v42, v11);
  (*(v20 + 8))(v32, v31);
  v28 = v35;
  *(v35 + 16) = v27;
  (*(*(*(v40 + 80) - 8) + 32))(v28 + *(*v28 + 96), v41);
  return v28;
}

char *ProtectiveConcurrentQueue.__allocating_init(underlyingQueue:initialState:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *v4;
  *(v4 + 2) = a1;
  (*(*(*(v5 + 80) - 8) + 32))(&v4[*(v5 + 96)], a2);
  return v4;
}

char *ProtectiveConcurrentQueue.init(underlyingQueue:initialState:)(uint64_t a1)
{
  v2 = *v1;
  *(v1 + 2) = a1;
  (*(*(*(v2 + 80) - 8) + 32))(&v1[*(v2 + 96)]);
  return v1;
}

uint64_t ProtectiveConcurrentQueue.sync<A>(execute:)()
{
  return sub_1A88C8A58();
}

{
  return sub_1A88C8A58();
}

uint64_t sub_1A885EDF0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  v10 = *(v9 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v8, a3 + v10, v5);
  a1(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A885F000(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  v10 = *(v9 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v8, a3 + v10, v5);
  a1(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t ProtectiveConcurrentQueue.async(execute:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A88C7EC8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A88C7EF8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v2;
  aBlock[4] = sub_1A88604AC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A85EB8C0;
  aBlock[3] = &unk_1F1BB5CA8;
  v14 = _Block_copy(aBlock);

  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  v16[1] = MEMORY[0x1E69E7CC0];
  sub_1A885FBDC(&qword_1ED8C9480, MEMORY[0x1E69E7F60]);
  sub_1A870CCE0(&unk_1EB3081F0);
  sub_1A85EB85C();
  sub_1A88C8CE8();
  MEMORY[0x1AC56F330](0, v12, v8, v14);
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t ProtectiveConcurrentQueue.async(flags:execute:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1A88C7EF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v3;
  aBlock[4] = sub_1A885F6F8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A85EB8C0;
  aBlock[3] = &unk_1F1BB5CF8;
  v12 = _Block_copy(aBlock);

  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  MEMORY[0x1AC56F330](0, v10, a1, v12);
  _Block_release(v12);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A885F5C4(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  v10 = *(v9 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v8, a3 + v10, v5);
  a1(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t ProtectiveConcurrentQueue.mutatingSync<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1A88C7EC8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A88C7EB8();
  v13 = a3;
  v14 = a1;
  v15 = a2;
  v16 = v3;
  sub_1A88C8A48();
  return (*(v8 + 8))(v10, v7);
}

{
  v7 = sub_1A88C7EC8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A88C7EB8();
  v13 = a3;
  v14 = a1;
  v15 = a2;
  v16 = v3;
  sub_1A88C8A48();
  return (*(v8 + 8))(v10, v7);
}

uint64_t ProtectiveConcurrentQueue.mutatingSync<A>(flags:execute:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22 = a4;
  v20 = a1;
  v21 = a2;
  v6 = sub_1A88C7EC8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v19 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - v14;
  v19[1] = *(v4 + 16);
  sub_1A88C7EB8();
  v16 = MEMORY[0x1E69E7F60];
  sub_1A885FBDC(&qword_1EB307CF0, MEMORY[0x1E69E7F60]);
  sub_1A88C84F8();
  sub_1A885FBDC(&qword_1EB307CF8, v16);
  sub_1A88C96C8();
  (*(v7 + 16))(v10, v13, v6);
  sub_1A885FBDC(&qword_1ED8C9480, v16);
  sub_1A88C8CC8();
  v17 = *(v7 + 8);
  v17(v13, v6);
  v23 = a3;
  v24 = v20;
  v25 = v21;
  v26 = v4;
  sub_1A88C8A48();
  return (v17)(v15, v6);
}

uint64_t sub_1A885FBDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ProtectiveConcurrentQueue.mutatingAsync(execute:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A88C7EF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A88C7EC8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7EB8();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v2;
  aBlock[4] = sub_1A85EB924;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A85EB8C0;
  aBlock[3] = &unk_1F1BB5D48;
  v14 = _Block_copy(aBlock);

  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  MEMORY[0x1AC56F330](0, v8, v12, v14);
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t ProtectiveConcurrentQueue.mutatingAsync(flags:execute:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v26 = a3;
  v27 = sub_1A88C7EF8();
  v5 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A88C7EC8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v24 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  v24 = *(v3 + 16);
  sub_1A88C7EB8();
  v18 = MEMORY[0x1E69E7F60];
  sub_1A885FBDC(&qword_1EB307CF0, MEMORY[0x1E69E7F60]);
  sub_1A88C84F8();
  sub_1A885FBDC(&qword_1EB307CF8, v18);
  sub_1A88C96C8();
  (*(v9 + 16))(v12, v15, v8);
  sub_1A885FBDC(&qword_1ED8C9480, v18);
  sub_1A88C8CC8();
  v19 = *(v9 + 8);
  v19(v15, v8);
  v20 = swift_allocObject();
  v21 = v26;
  v20[2] = v25;
  v20[3] = v21;
  v20[4] = v4;
  aBlock[4] = sub_1A85EB904;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A85EB8C0;
  aBlock[3] = &unk_1F1BB5D98;
  v22 = _Block_copy(aBlock);

  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  MEMORY[0x1AC56F330](0, v7, v17, v22);
  _Block_release(v22);
  (*(v5 + 8))(v7, v27);
  v19(v17, v8);
}

uint64_t ProtectiveConcurrentQueue.assertAccessAlreadyOnQueue<A>(execute:)(void (*a1)(char *))
{
  v3 = sub_1A88C7F38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 2);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = sub_1A88C7F68();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = *(*v1 + 96);
    swift_beginAccess();
    a1(&v1[v10]);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id *ProtectiveConcurrentQueue.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t ProtectiveConcurrentQueue.__deallocating_deinit()
{
  ProtectiveConcurrentQueue.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A88604B0()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB307D00);
  sub_1A85EF0E4(v0, qword_1EB307D00);
  return sub_1A88C7E48();
}

id DictionaryCoder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DictionaryCoder.init()()
{
  v1 = OBJC_IVAR____TtC17IMSharedUtilities15DictionaryCoder_logger;
  if (qword_1EB302308 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  v3 = sub_1A85EF0E4(v2, qword_1EB307D00);
  (*(*(v2 - 8) + 16))(&v0[v1], v3, v2);
  v4 = &v0[OBJC_IVAR____TtC17IMSharedUtilities15DictionaryCoder_key];
  *v4 = 0;
  *(v4 + 1) = 0;
  sub_1A870CCE0(&qword_1EB303B60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A88E14F0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 32) = sub_1A8738AAC(MEMORY[0x1E69E7CC0]);
  *&v0[OBJC_IVAR____TtC17IMSharedUtilities15DictionaryCoder_dicts] = v5;
  *&v0[OBJC_IVAR____TtC17IMSharedUtilities15DictionaryCoder_arrays] = v6;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for DictionaryCoder();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1A886086C(void *a1)
{
  v2 = sub_1A88C82E8();
  v4 = v3;
  v5 = a1;
  v6 = sub_1A88C9518();
  v8[3] = sub_1A85FC408();
  v8[0] = v6;
  sub_1A8860BC0(v8, v2, v4);

  return sub_1A85F1084(v8);
}

uint64_t sub_1A8860904(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = sub_1A88C82E8();
  v10 = v9;
  v11 = a1;
  v12 = a5(a3);
  v14[3] = sub_1A85FC408();
  v14[0] = v12;
  sub_1A8860BC0(v14, v8, v10);

  return sub_1A85F1084(v14);
}

uint64_t sub_1A8860BC0(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = v3;
  if (a3)
  {
    v4 = a3;
    v8 = OBJC_IVAR____TtC17IMSharedUtilities15DictionaryCoder_dicts;
    swift_beginAccess();
    v9 = *(v3 + v8);
    v10 = v9[2];
    sub_1A85F1028(a1, v17);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v8) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = sub_1A87A00E0(v9);
      *(v5 + v8) = v9;
      if (v10)
      {
LABEL_4:
        if (v10 <= v9[2])
        {
          sub_1A87F3B18(v17, a2, v4);
          *(v5 + v8) = v9;
          return swift_endAccess();
        }

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_1A87A00CC(v10);
    *(v9 + v5) = v10;
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v9 = OBJC_IVAR____TtC17IMSharedUtilities15DictionaryCoder_arrays;
  swift_beginAccess();
  v10 = *(v9 + v3);
  v8 = v10[2];
  sub_1A85F1028(a1, v17);
  swift_beginAccess();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *(v9 + v5) = v10;
  if ((v12 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_8:
  if (v8 > v10[2])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  a1 = (v10 + 3);
  v4 = v10[v8 + 3];
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v10[v8 + 3] = v4;
  if ((v13 & 1) == 0)
  {
LABEL_20:
    v4 = sub_1A8734EA8(0, *(v4 + 2) + 1, 1, v4);
    *(a1 + 8 * v8) = v4;
  }

  v15 = *(v4 + 2);
  v14 = *(v4 + 3);
  if (v15 >= v14 >> 1)
  {
    v4 = sub_1A8734EA8((v14 > 1), v15 + 1, 1, v4);
    *(a1 + 8 * v8) = v4;
  }

  *(v4 + 2) = v15 + 1;
  sub_1A85E99B0(v17, &v4[32 * v15 + 32]);
  *(v9 + v5) = v10;
  return swift_endAccess();
}

void sub_1A8860DC4(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = OBJC_IVAR____TtC17IMSharedUtilities15DictionaryCoder_arrays;
  swift_beginAccess();
  v6 = *(v3 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v5) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_1A873603C((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v6[v9 + 4] = MEMORY[0x1E69E7CC0];
    *(v3 + v5) = v6;
    swift_endAccess();
    v10 = *(a1 + 16);
    if (!v10)
    {
      break;
    }

    a1 += 32;
    v6 = MEMORY[0x1E69E7CA0];
    v29 = v5;
    while (1)
    {
      sub_1A85F1028(a1, v32);
      sub_1A85F1028(v32, v31);
      sub_1A85FC408();
      if (swift_dynamicCast())
      {
      }

      else
      {
        sub_1A85F1028(v32, v31);
        if (!swift_dynamicCast())
        {
          sub_1A85F1028(v32, v31);
          sub_1A8861908(v31, 0, 0);
          sub_1A85EF638(v31, &qword_1EB3057B0);
          goto LABEL_7;
        }
      }

      v11 = *(v3 + v5);
      v12 = v11[2];
      sub_1A85F1028(v32, v31);
      swift_beginAccess();
      v13 = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + v5) = v11;
      if (v13)
      {
        if (!v12)
        {
          break;
        }

        goto LABEL_14;
      }

      v11 = sub_1A87A00CC(v11);
      *(v3 + v5) = v11;
      if (!v12)
      {
        break;
      }

LABEL_14:
      if (v12 > v11[2])
      {
        goto LABEL_30;
      }

      v14 = v6;
      v15 = v11 + 3;
      v16 = v11[v12 + 3];
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v11[v12 + 3] = v16;
      if ((v17 & 1) == 0)
      {
        v16 = sub_1A8734EA8(0, *(v16 + 2) + 1, 1, v16);
        v15[v12] = v16;
      }

      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      if (v19 >= v18 >> 1)
      {
        v16 = sub_1A8734EA8((v18 > 1), v19 + 1, 1, v16);
        v15[v12] = v16;
      }

      v6 = v14;
      *(v16 + 2) = v19 + 1;
      sub_1A85E99B0(v31, &v16[32 * v19 + 32]);
      v5 = v29;
      *(v3 + v29) = v11;
      swift_endAccess();
LABEL_7:
      sub_1A85F1084(v32);
      a1 += 32;
      if (!--v10)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v6 = sub_1A873603C(0, v6[2] + 1, 1, v6);
    *(v3 + v5) = v6;
  }

LABEL_22:
  v20 = *(v3 + v5);
  v21 = v20[2];
  if (v21)
  {
    v22 = v20[v21 + 3];
    swift_beginAccess();

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = v20[2];
      if (v23)
      {
        goto LABEL_25;
      }

LABEL_33:
      __break(1u);
    }

    else
    {
      v20 = sub_1A87A00CC(v20);
      v23 = v20[2];
      if (!v23)
      {
        goto LABEL_33;
      }

LABEL_25:
      v20[2] = v23 - 1;
      *(v3 + v5) = v20;
      swift_endAccess();

      v32[3] = sub_1A870CCE0(&qword_1EB303318);
      v32[0] = v22;
      sub_1A8860BC0(v32, a2, a3);
      sub_1A85F1084(v32);
    }
  }

  else
  {
    v24 = sub_1A88C7E38();
    v25 = sub_1A88C89C8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1A85E5000, v24, v25, "JSON encode error: expected at least one array", v26, 2u);
      MEMORY[0x1AC571F20](v26, -1, -1);
    }
  }
}

void sub_1A88611C8(void *a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  v8 = sub_1A8738AAC(MEMORY[0x1E69E7CC0]);
  v9 = OBJC_IVAR____TtC17IMSharedUtilities15DictionaryCoder_dicts;
  swift_beginAccess();
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v9) = v10;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_2;
  }

  while (1)
  {
    v10 = sub_1A8735464(0, *(v10 + 16) + 1, 1, v10);
    *(v4 + v9) = v10;
LABEL_2:
    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1A8735464((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 16) = v13 + 1;
    *(v10 + 8 * v13 + 32) = v8;
    *(v4 + v9) = v10;
    swift_endAccess();
    *&v66 = a1;
    swift_unknownObjectRetain();
    sub_1A870CCE0(&unk_1EB307DB0);
    v52 = sub_1A870CCE0(&unk_1EB3091D0);
    if (!swift_dynamicCast())
    {
      [a1 encodeWithCoder_];
      goto LABEL_55;
    }

    v50 = a2;
    v51 = a3;
    a2 = 0;
    v15 = v63 + 64;
    v14 = *(v63 + 64);
    v57 = v63;
    v16 = 1 << *(v63 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v10 = v17 & v14;
    a3 = (v16 + 63) >> 6;
    v8 = MEMORY[0x1E69E7CA0];
    v54 = v4;
    v55 = a3;
    v53 = v9;
    v56 = v63 + 64;
    if ((v17 & v14) != 0)
    {
      break;
    }

LABEL_13:
    if (a3 <= a2 + 1)
    {
      v19 = a2 + 1;
    }

    else
    {
      v19 = a3;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      if (v18 >= a3)
      {
        v10 = 0;
        v65 = 0u;
        a2 = v20;
        v63 = 0u;
        v64 = 0u;
        goto LABEL_22;
      }

      v10 = *(v15 + 8 * v18);
      ++a2;
      if (v10)
      {
        a2 = v18;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  while (1)
  {
    v18 = a2;
LABEL_21:
    v21 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v22 = v21 | (v18 << 6);
    v23 = (*(v57 + 48) + 16 * v22);
    v24 = *v23;
    a1 = v23[1];
    sub_1A85F1028(*(v57 + 56) + 32 * v22, &v61);
    *&v63 = v24;
    *(&v63 + 1) = a1;
    sub_1A85E99B0(&v61, &v64);

LABEL_22:
    v66 = v63;
    v67[0] = v64;
    v67[1] = v65;
    v25 = *(&v63 + 1);
    if (!*(&v63 + 1))
    {
      break;
    }

    v58 = v66;
    sub_1A85E99B0(v67, &v63);
    sub_1A85F1028(&v63, &v61);
    sub_1A85FC408();
    if (swift_dynamicCast())
    {

      goto LABEL_27;
    }

    sub_1A85F1028(&v63, &v61);
    if (swift_dynamicCast())
    {

LABEL_27:
      v8 = *(v4 + v9);
      a3 = v8[2];
      sub_1A85F1028(&v63, &v61);
      swift_beginAccess();

      v26 = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v9) = v8;
      if (v26)
      {
        if (!a3)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v8 = sub_1A87A00E0(v8);
        *(v4 + v9) = v8;
        if (!a3)
        {
          goto LABEL_63;
        }
      }

      if (a3 > v8[2])
      {
        goto LABEL_64;
      }

      v27 = v8 + 3;
      if (!v62)
      {
        sub_1A85EF638(&v61, &qword_1EB3057B0);
        a1 = v27[a3];
        v35 = sub_1A85F5F40(v58, v25);
        if (v36)
        {
          v37 = v35;
          v38 = swift_isUniquelyReferenced_nonNull_native();
          a1 = v27[a3];
          v59 = a1;
          v27[a3] = 0x8000000000000000;
          if ((v38 & 1) == 0)
          {
            sub_1A87B14EC();
            a1 = v59;
          }

          sub_1A85E99B0((a1[7] + 32 * v37), v60);
          sub_1A87B0220(v37, a1);
          v27[a3] = a1;
        }

        else
        {
          memset(v60, 0, sizeof(v60));
        }

        sub_1A85EF638(v60, &qword_1EB3057B0);
        goto LABEL_11;
      }

      sub_1A85E99B0(&v61, v60);
      v4 = swift_isUniquelyReferenced_nonNull_native();
      v59 = v27[a3];
      a1 = v59;
      v27[a3] = 0x8000000000000000;
      v29 = sub_1A85F5F40(v58, v25);
      v30 = a1[2];
      v31 = (v28 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        goto LABEL_65;
      }

      v9 = v28;
      if (a1[3] >= v32)
      {
        if (v4)
        {
          v4 = v59;
          if ((v28 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          a1 = &v59;
          sub_1A87B14EC();
          v4 = v59;
          if ((v9 & 1) == 0)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        sub_1A887935C(v32, v4);
        a1 = v59;
        v33 = sub_1A85F5F40(v58, v25);
        if ((v9 & 1) != (v34 & 1))
        {
          goto LABEL_70;
        }

        v29 = v33;
        v4 = v59;
        if ((v9 & 1) == 0)
        {
LABEL_44:
          *(v4 + 8 * (v29 >> 6) + 64) |= 1 << v29;
          v39 = (*(v4 + 48) + 16 * v29);
          *v39 = v58;
          v39[1] = v25;
          sub_1A85E99B0(v60, (*(v4 + 56) + 32 * v29));
          v40 = *(v4 + 16);
          v41 = __OFADD__(v40, 1);
          v42 = v40 + 1;
          if (v41)
          {
            goto LABEL_66;
          }

          *(v4 + 16) = v42;
          goto LABEL_10;
        }
      }

      a1 = (*(v4 + 56) + 32 * v29);
      sub_1A85F1084(a1);
      sub_1A85E99B0(v60, a1);

LABEL_10:
      v27[a3] = v4;
      v9 = v53;
      v4 = v54;
LABEL_11:
      a3 = v55;
      v15 = v56;
      *(v4 + v9) = v8;
      swift_endAccess();

      sub_1A85F1084(&v63);
      v8 = MEMORY[0x1E69E7CA0];
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1A85F1028(&v63, &v61);
      a1 = v4;
      sub_1A8861908(&v61, v58, v25);

      sub_1A85EF638(&v61, &qword_1EB3057B0);
      sub_1A85F1084(&v63);
      if (!v10)
      {
        goto LABEL_13;
      }
    }
  }

  a2 = v50;
  a3 = v51;
LABEL_55:
  v43 = *(v4 + v9);
  v44 = v43[2];
  if (v44)
  {
    v45 = v43[v44 + 3];
    swift_beginAccess();

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v46 = v43[2];
      if (v46)
      {
        goto LABEL_58;
      }

LABEL_69:
      __break(1u);
LABEL_70:
      sub_1A88C9488();
      __break(1u);
    }

    else
    {
      v43 = sub_1A87A00E0(v43);
      v46 = v43[2];
      if (!v46)
      {
        goto LABEL_69;
      }

LABEL_58:
      v43[2] = v46 - 1;
      *(v4 + v9) = v43;
      swift_endAccess();

      *(&v67[0] + 1) = v52;
      *&v66 = v45;
      sub_1A8860BC0(&v66, a2, a3);
      sub_1A85F1084(&v66);
    }
  }

  else
  {
    v47 = sub_1A88C7E38();
    v48 = sub_1A88C89C8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1A85E5000, v47, v48, "JSON encode error: expected at least one dict", v49, 2u);
      MEMORY[0x1AC571F20](v49, -1, -1);
    }
  }
}

uint64_t sub_1A8861908(uint64_t a1, uint64_t a2, char *a3)
{
  sub_1A87303E8(a1, &v24);
  if (v26)
  {
    v6 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      v26 = v6;
      v24 = v22;
      v25 = v23;
      sub_1A8860BC0(&v24, a2, a3);
      return sub_1A85F1084(&v24);
    }

    v21 = a2;
  }

  else
  {
    v21 = a2;
    sub_1A85EF638(&v24, &qword_1EB3057B0);
  }

  v8 = sub_1A88C74B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A870CCE0(&unk_1EB307DC0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  sub_1A87303E8(a1, &v24);
  if (v26)
  {
    v15 = swift_dynamicCast();
    (*(v9 + 56))(v14, v15 ^ 1u, 1, v8);
    if ((*(v9 + 48))(v14, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v14, v8);
      v16 = sub_1A88C7488();
      v26 = MEMORY[0x1E69E6158];
      v24 = v16;
      v25 = v17;
      sub_1A8860BC0(&v24, v21, a3);
      (*(v9 + 8))(v11, v8);
      return sub_1A85F1084(&v24);
    }
  }

  else
  {
    sub_1A85EF638(&v24, &qword_1EB3057B0);
    (*(v9 + 56))(v14, 1, 1, v8);
  }

  sub_1A85EF638(v14, &unk_1EB307DC0);
  sub_1A87303E8(a1, &v24);
  if (v26)
  {
    sub_1A870CCE0(&qword_1EB303318);
    v18 = swift_dynamicCast();
    v19 = v21;
    if (v18)
    {
      sub_1A8860DC4(v22, v21, a3);
    }
  }

  else
  {
    sub_1A85EF638(&v24, &qword_1EB3057B0);
    v19 = v21;
  }

  sub_1A87303E8(a1, &v24);
  if (!v26)
  {
    return sub_1A85EF638(&v24, &qword_1EB3057B0);
  }

  sub_1A870CCE0(&unk_1EB307DB0);
  result = swift_dynamicCast();
  if (result)
  {
    sub_1A88611C8(v22, v19, a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A8861CF8()
{
  v1 = OBJC_IVAR____TtC17IMSharedUtilities15DictionaryCoder_dicts;
  result = swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
  }

  __break(1u);
  return result;
}

id DictionaryCoder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DictionaryCoder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DictionaryCoder()
{
  result = qword_1EB307D40;
  if (!qword_1EB307D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A8861E74(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
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
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1A8861F2C(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1A8861E74(a1, &a1[a2]);
  }

  sub_1A88C6FD8();
  swift_allocObject();
  sub_1A88C6FC8();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1A88C7328();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1A8861FE4()
{
  result = sub_1A88C7E58();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id IMRichCardMedia.init(dictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1A88C8188();

  v2 = [v0 initWithDictionary_];

  return v2;
}

id IMRichCardMedia.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v4 = sub_1A85F5F40(0x6C7255616964656DLL, 0xE800000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v4, v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (*(a1 + 16))
  {
    v6 = sub_1A85F5F40(0xD000000000000010, 0x80000001A891EE60);
    if (v7)
    {
      sub_1A85F1028(*(a1 + 56) + 32 * v6, v29);
      if (swift_dynamicCast())
      {
        if (!*(a1 + 16) || (v8 = sub_1A85F5F40(0x6C6946616964656DLL, 0xED0000657A695365), (v9 & 1) == 0))
        {

          goto LABEL_19;
        }

        sub_1A85F1028(*(a1 + 56) + 32 * v8, v29);
        sub_1A85E9718(0, &qword_1ED8C9450);
        if (swift_dynamicCast())
        {
          if (!*(a1 + 16) || (v10 = sub_1A85F5F40(0x746867696568, 0xE600000000000000), (v11 & 1) == 0))
          {

            goto LABEL_20;
          }

          sub_1A85F1028(*(a1 + 56) + 32 * v10, v29);
          if (swift_dynamicCast())
          {
            v12 = sub_1A88C82A8();

            v13 = sub_1A88C82A8();

            if (*(a1 + 16) && (v14 = sub_1A85F5F40(0x69616E626D756874, 0xEC0000006C72556CLL), (v15 & 1) != 0) && (sub_1A85F1028(*(a1 + 56) + 32 * v14, v29), (swift_dynamicCast() & 1) != 0))
            {
              v16 = sub_1A88C82A8();
            }

            else
            {
              v16 = 0;
            }

            if (*(a1 + 16) && (v18 = sub_1A85F5F40(0xD000000000000014, 0x80000001A891EE80), (v19 & 1) != 0) && (sub_1A85F1028(*(a1 + 56) + 32 * v18, v29), (swift_dynamicCast() & 1) != 0))
            {
              v20 = sub_1A88C82A8();
            }

            else
            {
              v20 = 0;
            }

            if (*(a1 + 16))
            {
              v21 = sub_1A85F5F40(0xD000000000000011, 0x80000001A891EEA0);
              if (v22)
              {
                sub_1A85F1028(*(a1 + 56) + 32 * v21, v29);
                if (swift_dynamicCast())
                {
                  v23 = v28;
                }

                else
                {
                  v23 = 0;
                }
              }

              else
              {
                v23 = 0;
              }

              if (*(a1 + 16))
              {
                v24 = sub_1A85F5F40(0xD000000000000012, 0x80000001A891EEC0);
                if (v25)
                {
                  sub_1A85F1028(*(a1 + 56) + 32 * v24, v29);

                  if (swift_dynamicCast())
                  {
                    v26 = sub_1A88C82A8();

LABEL_44:
                    v27 = [v2 initWithMediaUrl:v12 mediaContentType:v13 mediaFileSize:v28 thumbnailUrl:v16 thumbnailContentType:v20 thumbnailFileSize:v23 height:v28 contentDescription:v26];

                    return v27;
                  }

LABEL_43:
                  v26 = 0;
                  goto LABEL_44;
                }
              }
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_43;
          }
        }

        else
        {
        }
      }
    }
  }

LABEL_19:

LABEL_20:
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1A886288C()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88F14F0;
  *(inited + 32) = 0x6C7255616964656DLL;
  *(inited + 40) = 0xE800000000000000;
  v3 = [v1 mediaUrl];
  v4 = sub_1A88C82E8();
  v6 = v5;

  v7 = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001A891EE60;
  v8 = [v1 mediaContentType];
  v9 = sub_1A88C82E8();
  v11 = v10;

  *(inited + 96) = v9;
  *(inited + 104) = v11;
  *(inited + 120) = v7;
  strcpy((inited + 128), "mediaFileSize");
  *(inited + 142) = -4864;
  v12 = [v1 mediaFileSize];
  v13 = sub_1A85E9718(0, &qword_1ED8C9450);
  *(inited + 144) = v12;
  *(inited + 168) = v13;
  strcpy((inited + 176), "thumbnailUrl");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  v14 = [v1 thumbnailUrl];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1A88C82E8();
    v18 = v17;

    v19 = MEMORY[0x1E69E6158];
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v19 = 0;
    *(inited + 208) = 0;
  }

  *(inited + 192) = v16;
  *(inited + 200) = v18;
  *(inited + 216) = v19;
  *(inited + 224) = 0xD000000000000014;
  *(inited + 232) = 0x80000001A891EE80;
  v20 = [v1 thumbnailContentType];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1A88C82E8();
    v24 = v23;

    v25 = MEMORY[0x1E69E6158];
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v25 = 0;
    *(inited + 256) = 0;
  }

  *(inited + 240) = v22;
  *(inited + 248) = v24;
  *(inited + 264) = v25;
  *(inited + 272) = 0xD000000000000011;
  *(inited + 280) = 0x80000001A891EEA0;
  v26 = [v1 thumbnailFileSize];
  if (!v26)
  {
    v13 = 0;
    *(inited + 296) = 0;
    *(inited + 304) = 0;
  }

  *(inited + 288) = v26;
  *(inited + 312) = v13;
  *(inited + 320) = 0x746867696568;
  *(inited + 328) = 0xE600000000000000;
  v27 = [v1 height];
  v28 = MEMORY[0x1E69E6530];
  *(inited + 336) = v27;
  *(inited + 360) = v28;
  *(inited + 368) = 0xD000000000000012;
  *(inited + 376) = 0x80000001A891EEC0;
  v29 = [v1 contentDescription];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1A88C82E8();
    v33 = v32;

    v34 = MEMORY[0x1E69E6158];
  }

  else
  {
    v31 = 0;
    v33 = 0;
    v34 = 0;
    *(inited + 400) = 0;
  }

  *(inited + 384) = v31;
  *(inited + 392) = v33;
  *(inited + 408) = v34;
  v35 = sub_1A8738CF0(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB304A50);
  swift_arrayDestroy();
  v36 = sub_1A8895CC8(v35);

  return v36;
}

uint64_t IMRichCardMedia.isEqual(_:)(uint64_t a1)
{
  v2 = sub_1A87303E8(a1, v66);
  if (v67)
  {
    type metadata accessor for IMRichCardMedia(v2);
    if (swift_dynamicCast())
    {
      v3 = [v1 mediaUrl];
      v4 = sub_1A88C82E8();
      v6 = v5;

      v7 = [v65 mediaUrl];
      v8 = sub_1A88C82E8();
      v10 = v9;

      if (v4 == v8 && v6 == v10)
      {
      }

      else
      {
        v11 = sub_1A88C9398();

        if ((v11 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v12 = [v1 mediaContentType];
      v13 = sub_1A88C82E8();
      v15 = v14;

      v16 = [v65 mediaContentType];
      v17 = sub_1A88C82E8();
      v19 = v18;

      if (v13 == v17 && v15 == v19)
      {
      }

      else
      {
        v20 = sub_1A88C9398();

        if ((v20 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      sub_1A85E9718(0, &qword_1EB3091E0);
      v21 = v1;
      v22 = [v1 mediaFileSize];
      v23 = [v65 mediaFileSize];
      v24 = sub_1A88C8BA8();

      if ((v24 & 1) == 0)
      {
        goto LABEL_40;
      }

      v25 = v21;
      v26 = [v21 thumbnailUrl];
      if (v26)
      {
        v27 = v26;
        v28 = sub_1A88C82E8();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      v31 = [v65 thumbnailUrl];
      if (v31)
      {
        v32 = v31;
        v33 = sub_1A88C82E8();
        v35 = v34;

        if (v30)
        {
          if (!v35)
          {
            goto LABEL_62;
          }

          if (v28 == v33 && v30 == v35)
          {
          }

          else
          {
            v36 = sub_1A88C9398();

            if ((v36 & 1) == 0)
            {
              goto LABEL_40;
            }
          }
        }

        else if (v35)
        {
          goto LABEL_39;
        }
      }

      else if (v30)
      {
        goto LABEL_62;
      }

      v37 = [v21 thumbnailContentType];
      if (v37)
      {
        v38 = v37;
        v39 = sub_1A88C82E8();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0;
      }

      v42 = [v65 thumbnailContentType];
      if (v42)
      {
        v43 = v42;
        v44 = sub_1A88C82E8();
        v46 = v45;

        if (v41)
        {
          if (v46)
          {
            if (v39 == v44 && v41 == v46)
            {
            }

            else
            {
              v49 = sub_1A88C9398();

              if ((v49 & 1) == 0)
              {
                goto LABEL_40;
              }
            }

            goto LABEL_44;
          }

LABEL_62:

          goto LABEL_41;
        }

        if (v46)
        {
LABEL_39:

          goto LABEL_40;
        }
      }

      else if (v41)
      {
        goto LABEL_62;
      }

LABEL_44:
      v50 = [v21 thumbnailFileSize];
      v51 = [v65 thumbnailFileSize];
      v52 = v51;
      if (v50)
      {
        if (v51)
        {
          sub_1A85E9718(0, &qword_1ED8C9450);
          v25 = v21;
          v53 = sub_1A88C8BA8();

          if (v53)
          {
LABEL_50:
            v54 = [v25 height];
            if (v54 == [v65 height])
            {
              v55 = [v25 contentDescription];
              if (v55)
              {
                v56 = v55;
                v57 = sub_1A88C82E8();
                v59 = v58;
              }

              else
              {
                v57 = 0;
                v59 = 0;
              }

              v60 = [v65 contentDescription];
              if (v60)
              {
                v61 = v60;
                v62 = sub_1A88C82E8();
                v64 = v63;

                if (!v59)
                {

                  if (!v64)
                  {
                    v47 = 1;
                    return v47 & 1;
                  }

                  goto LABEL_41;
                }

                if (v64)
                {
                  if (v57 != v62 || v59 != v64)
                  {
                    v47 = sub_1A88C9398();

                    return v47 & 1;
                  }

                  goto LABEL_63;
                }
              }

              else if (!v59)
              {
LABEL_63:

                v47 = 1;
                return v47 & 1;
              }

              goto LABEL_62;
            }
          }
        }

        else
        {
        }
      }

      else
      {
        if (!v51)
        {
          goto LABEL_50;
        }
      }

LABEL_40:
    }
  }

  else
  {
    sub_1A860169C(v66);
  }

LABEL_41:
  v47 = 0;
  return v47 & 1;
}

uint64_t IMRichCardMedia.hash.getter()
{
  v1 = v0;
  sub_1A88C9588();
  v2 = [v0 mediaUrl];
  sub_1A88C82E8();

  sub_1A88C8268();

  v3 = [v1 mediaContentType];
  sub_1A88C82E8();

  sub_1A88C8268();

  v4 = [v1 mediaFileSize];
  sub_1A88C8BB8();

  v5 = [v1 thumbnailUrl];
  if (v5)
  {
    v6 = v5;
    sub_1A88C82E8();

    sub_1A88C9548();
    sub_1A88C8268();
  }

  else
  {
    sub_1A88C9548();
  }

  v7 = [v1 thumbnailContentType];
  if (v7)
  {
    v8 = v7;
    sub_1A88C82E8();

    sub_1A88C9548();
    sub_1A88C8268();
  }

  else
  {
    sub_1A88C9548();
  }

  v9 = [v1 thumbnailFileSize];
  if (v9)
  {
    v10 = v9;
    sub_1A88C9548();
    v11 = v10;
    sub_1A88C8BB8();
  }

  else
  {
    sub_1A88C9548();
  }

  MEMORY[0x1AC56FE00]([v1 height]);
  v12 = [v1 contentDescription];
  if (v12)
  {
    v13 = v12;
    sub_1A88C82E8();

    sub_1A88C9548();
    sub_1A88C8268();
  }

  else
  {
    sub_1A88C9548();
  }

  return sub_1A88C9568();
}

id IMRichCardMedia.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

IMActionDevice_optional __swiftcall IMActionDevice.init(dictionary:)(Swift::OpaquePointer dictionary)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1A88C8188();

  v3 = [v1 initWithDictionary_];

  v6 = v3;
  result.value.type = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

id IMActionDevice.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_1A85F5F40(1701869940, 0xE400000000000000), (v5 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v4, v8);

    if (swift_dynamicCast())
    {
      return [v2 initWithType_];
    }
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

IMActionDevice __swiftcall IMActionDevice.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.type = v2;
  result.super.isa = v1;
  return result;
}

unint64_t type metadata accessor for IMActionDevice()
{
  result = qword_1EB307E30;
  if (!qword_1EB307E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB307E30);
  }

  return result;
}

uint64_t AsyncMultiQueue.__allocating_init(priority:bufferingPolicy:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtC17IMSharedUtilities15AsyncMultiQueue_lanes;
  *(v4 + v5) = sub_1A87397FC(MEMORY[0x1E69E7CC0]);
  sub_1A8864F2C(a1, v4 + OBJC_IVAR____TtC17IMSharedUtilities15AsyncMultiQueue_priority);
  v6 = OBJC_IVAR____TtC17IMSharedUtilities15AsyncMultiQueue_bufferingPolicy;
  v7 = sub_1A870CCE0(&qword_1EB302400);
  (*(*(v7 - 8) + 32))(v4 + v6, a2, v7);
  return v4;
}

uint64_t AsyncMultiQueue.init(priority:bufferingPolicy:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtC17IMSharedUtilities15AsyncMultiQueue_lanes;
  *(v2 + v5) = sub_1A87397FC(MEMORY[0x1E69E7CC0]);
  sub_1A8864F2C(a1, v2 + OBJC_IVAR____TtC17IMSharedUtilities15AsyncMultiQueue_priority);
  v6 = OBJC_IVAR____TtC17IMSharedUtilities15AsyncMultiQueue_bufferingPolicy;
  v7 = sub_1A870CCE0(&qword_1EB302400);
  (*(*(v7 - 8) + 32))(v2 + v6, a2, v7);
  return v2;
}

uint64_t sub_1A8863C30(uint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC17IMSharedUtilities15AsyncMultiQueue_lanes;
  swift_beginAccess();
  if (*(*(v2 + v5) + 16))
  {

    sub_1A85F5F40(a1, a2);
    v7 = v6;

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  if (qword_1EB302280 != -1)
  {
    swift_once();
  }

  v9 = sub_1A88C7E58();
  sub_1A85EF0E4(v9, qword_1EB338E38);

  v10 = sub_1A88C7E38();
  v11 = sub_1A88C89B8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1A85F0394(a1, a2, &v15);
    *(v12 + 12) = 1024;
    *(v12 + 14) = v8 & 1;
    _os_log_impl(&dword_1A85E5000, v10, v11, "Lane finished for key %s? %{BOOL}d", v12, 0x12u);
    sub_1A85F1084(v13);
    MEMORY[0x1AC571F20](v13, -1, -1);
    MEMORY[0x1AC571F20](v12, -1, -1);
  }

  return v8 & 1;
}

uint64_t sub_1A8863DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_1A870CCE0(&qword_1EB307E38);
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A8863EBC, v4, 0);
}

uint64_t sub_1A8863EBC()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC17IMSharedUtilities15AsyncMultiQueue_lanes;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);

  if (v4 && (v5 = sub_1A85F5F40(v0[7], v0[8]), (v6 & 1) != 0))
  {
    v7 = *(*(v3 + 56) + 8 * v5);
  }

  else
  {
    v7 = sub_1A8864808(v0[7], v0[8]);
  }

  v0[15] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A8863F90, v7, 0);
}

void sub_1A8863F90()
{
  v1 = v0[15];
  v2 = *(v1 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_scheduled);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[12];
    v9 = v0[9];
    v8 = v0[10];
    *(v1 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_scheduled) = v4;
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v8;
    v10[4] = v1;
    v11 = swift_allocObject();
    *(v11 + 16) = &unk_1A88F53C0;
    *(v11 + 24) = v10;
    v0[5] = &unk_1A88F53D0;
    v0[6] = v11;

    sub_1A870CCE0(&qword_1EB307E40);
    sub_1A88C87C8();

    (*(v6 + 8))(v5, v7);

    v12 = v0[1];

    v12();
  }
}

uint64_t sub_1A8864108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A8864134, v6, 0);
}

uint64_t sub_1A8864134()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC17IMSharedUtilities15AsyncMultiQueue_lanes;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);

  if (v4 && (v5 = sub_1A85F5F40(v0[6], v0[7]), (v6 & 1) != 0))
  {
    v7 = *(*(v3 + 56) + 8 * v5);
  }

  else
  {
    v7 = sub_1A8864808(v0[6], v0[7]);
  }

  v0[12] = v7;

  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_1A8864244;
  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[8];
  v12 = v0[5];

  return sub_1A8868958(v12, v11, v9, v10);
}

uint64_t sub_1A8864244()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[11];

    return MEMORY[0x1EEE6DFA0](sub_1A8864380, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1A8864380()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A88643E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A8864410, v6, 0);
}

uint64_t sub_1A8864410()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC17IMSharedUtilities15AsyncMultiQueue_lanes;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);

  if (v4 && (v5 = sub_1A85F5F40(v0[6], v0[7]), (v6 & 1) != 0))
  {
    v7 = *(*(v3 + 56) + 8 * v5);
  }

  else
  {
    v7 = sub_1A8864808(v0[6], v0[7]);
  }

  v0[12] = v7;

  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_1A8864520;
  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[8];
  v12 = v0[5];

  return sub_1A8869344(v12, v11, v9, v10);
}

uint64_t sub_1A8864520()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A8864630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - v10;
  sub_1A873C504(v4 + OBJC_IVAR____TtC17IMSharedUtilities15AsyncMultiQueue_priority, &v14 - v10);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v12[8] = a4;

  sub_1A885A178(0, 0, v11, &unk_1A88F53F8, v12);
}

uint64_t sub_1A8864744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_1A8714B6C;

  return sub_1A8863DE8(a5, a6, a7, a8);
}

uint64_t sub_1A8864808(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1A870CCE0(&qword_1EB302400);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for AsyncSerialQueue();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  sub_1A873C504(v3 + OBJC_IVAR____TtC17IMSharedUtilities15AsyncMultiQueue_priority, v12);
  (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC17IMSharedUtilities15AsyncMultiQueue_bufferingPolicy, v6);
  AsyncSerialQueue.init(priority:bufferingPolicy:)(v12, v9, v18);
  sub_1A8865838(v18, v16);
  type metadata accessor for Lane();
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1A886589C(v18);
  *(v19 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v19 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_scheduled) = 0;
  *(v19 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_closed) = 0;
  *(v19 + 120) = &protocol witness table for AsyncMultiQueue;
  swift_unknownObjectWeakAssign();
  sub_1A88658F8(v16, v19 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_queue);
  v20 = (v19 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_key);
  *v20 = a1;
  v20[1] = a2;

  return v19;
}

uint64_t AsyncMultiQueue.deinit()
{
  sub_1A873C574(v0 + OBJC_IVAR____TtC17IMSharedUtilities15AsyncMultiQueue_priority);
  v1 = OBJC_IVAR____TtC17IMSharedUtilities15AsyncMultiQueue_bufferingPolicy;
  v2 = sub_1A870CCE0(&qword_1EB302400);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncMultiQueue.__deallocating_deinit()
{
  sub_1A873C574(v0 + OBJC_IVAR____TtC17IMSharedUtilities15AsyncMultiQueue_priority);
  v1 = OBJC_IVAR____TtC17IMSharedUtilities15AsyncMultiQueue_bufferingPolicy;
  v2 = sub_1A870CCE0(&qword_1EB302400);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t AsyncMultiQueue.laneEmptied(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A8864BD4, v2, 0);
}

uint64_t sub_1A8864BD4()
{
  v13 = v0;
  if (qword_1EB302280 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338E38);

  v2 = sub_1A88C7E38();
  v3 = sub_1A88C89B8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A85F0394(v5, v4, &v12);
    _os_log_impl(&dword_1A85E5000, v2, v3, "Emptying lane for key %s", v6, 0xCu);
    sub_1A85F1084(v7);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }

  v8 = v0[6];
  v9 = v0[5];
  swift_beginAccess();
  sub_1A88BF39C(v9, v8);
  swift_endAccess();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A8864DA0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A8716570;

  return AsyncMultiQueue.laneEmptied(_:)(a1, a2);
}

uint64_t sub_1A8864E44(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1A8716570;

  return v5();
}

uint64_t sub_1A8864F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&unk_1EB3090D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8864F9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A8716570;

  return sub_1A8868674(v2, v3, v4);
}

uint64_t sub_1A8865044(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A8716570;

  return sub_1A8864E44(a1, v4);
}

uint64_t sub_1A88650FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1A8716570;

  return sub_1A8864744(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t type metadata accessor for AsyncMultiQueue()
{
  result = qword_1EB300698;
  if (!qword_1EB300698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A886522C()
{
  sub_1A886577C();
  if (v0 <= 0x3F)
  {
    sub_1A88657D4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of AsyncMultiQueue.perform(key:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 160) + **(*v4 + 160));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1A8716570;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AsyncMultiQueue.performAndWait<A>(key:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 168) + **(*v6 + 168));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1A8714B6C;

  return v16(a1, a2, a3, a4, a5, a6);
}

{
  v16 = (*(*v6 + 176) + **(*v6 + 176));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1A8714B6C;

  return v16(a1, a2, a3, a4, a5, a6);
}

void sub_1A886577C()
{
  if (!qword_1EB300328)
  {
    sub_1A88C87A8();
    v0 = sub_1A88C8BE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB300328);
    }
  }
}

void sub_1A88657D4()
{
  if (!qword_1EB300320)
  {
    sub_1A870CD28(&qword_1EB307E48);
    v0 = sub_1A88C87B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB300320);
    }
  }
}

uint64_t sub_1A8865838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncSerialQueue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A886589C(uint64_t a1)
{
  v2 = type metadata accessor for AsyncSerialQueue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A88658F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncSerialQueue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A886595C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1A8728D80(a3, v25 - v10, &unk_1EB3090D0);
  v12 = sub_1A88C87A8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1A85EF638(v11, &unk_1EB3090D0);
  }

  else
  {
    sub_1A88C8798();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A88C86D8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A88C8358() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1A8865C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1A8728D80(a3, v25 - v10, &unk_1EB3090D0);
  v12 = sub_1A88C87A8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1A85EF638(v11, &unk_1EB3090D0);
  }

  else
  {
    sub_1A88C8798();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A88C86D8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A88C8358() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1A870CCE0(&qword_1EB307B60);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1A870CCE0(&qword_1EB307B60);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t AsyncSerialQueue.init(priority:bufferingPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v31 = a2;
  v27 = a3;
  v3 = sub_1A870CCE0(&qword_1EB302400);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - v5;
  v28 = sub_1A870CCE0(&qword_1EB307E50);
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v28);
  v26 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = sub_1A870CCE0(&qword_1EB307E58);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  v18 = sub_1A870CCE0(&qword_1EB307E40);
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  v29 = v4;
  (*(v4 + 16))(v6, v31, v3);
  v32 = v17;
  sub_1A870CCE0(&qword_1EB307E48);
  sub_1A88C8818();
  sub_1A8728D80(v17, v15, &qword_1EB307E58);
  result = (*(v19 + 48))(v15, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v19 + 32))(v27, v15, v18);
    v21 = v26;
    v22 = v28;
    (*(v7 + 16))(v26, v11, v28);
    v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    (*(v7 + 32))(v24 + v23, v21, v22);
    v25 = v30;
    sub_1A886595C(0, 0, v30, &unk_1A88F54E0, v24);

    (*(v29 + 8))(v31, v3);
    sub_1A85EF638(v25, &unk_1EB3090D0);
    (*(v7 + 8))(v11, v22);
    return sub_1A85EF638(v17, &qword_1EB307E58);
  }

  return result;
}

uint64_t sub_1A8866300(uint64_t a1, uint64_t a2)
{
  sub_1A85EF638(a2, &qword_1EB307E58);
  v4 = sub_1A870CCE0(&qword_1EB307E40);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_1A88663E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1A870CCE0(&qword_1EB307E60);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A88664B0, 0, 0);
}

uint64_t sub_1A88664B0()
{
  sub_1A870CCE0(&qword_1EB307E50);
  sub_1A88C87F8();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1A886657C;
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1A886657C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A8866678, 0, 0);
}

uint64_t sub_1A8866678()
{
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1A88667C8;

    return v5();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1A88667C8()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *v0;

  sub_1A8801D80(v2);
  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v3;
  v4[1] = sub_1A886657C;
  v5 = *(v1 + 40);

  return MEMORY[0x1EEE6D9C8](v1 + 16, 0, 0, v5);
}

uint64_t sub_1A886696C(uint64_t a1)
{
  v4 = *(sub_1A870CCE0(&qword_1EB307E50) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A8716570;

  return sub_1A88663E4(a1, v6, v7, v1 + v5);
}

Swift::Void __swiftcall AsyncSerialQueue.finish()()
{
  sub_1A870CCE0(&qword_1EB307E40);

  sub_1A88C87D8();
}

uint64_t AsyncSerialQueue.perform(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB307E38);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[0] = &unk_1A88F53D0;
  v10[1] = v8;

  sub_1A870CCE0(&qword_1EB307E40);
  sub_1A88C87C8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t AsyncSerialQueue.performAndWaitFor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A8866BF4, 0, 0);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A8867360, 0, 0);
}

uint64_t sub_1A8866BF4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1A8866CDC;
  v4 = *(v0 + 16);

  return sub_1A8867124(v4, 0, 0, sub_1A8866DEC, v1);
}

uint64_t sub_1A8866CDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A8866E4C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_1A8866F74;

  return v9(v6);
}

uint64_t sub_1A8866F74()
{

  return MEMORY[0x1EEE6DFA0](sub_1A8867070, 0, 0);
}

uint64_t sub_1A8867070()
{
  (*(*(v0[3] - 8) + 32))(*(*(v0[2] + 64) + 40), v0[4]);
  swift_continuation_resume();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A8867124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1A88C86D8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1A88671B8, v6, v8);
}

uint64_t sub_1A88671B8()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1A8867260;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A8867260()
{
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t sub_1A8867360()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1A8867448;
  v4 = *(v0 + 16);

  return sub_1A8867BD8(v4, 0, 0, sub_1A886774C, v1);
}

uint64_t sub_1A8867448()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A8867584, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A8867584()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A88675E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20[0] = a8;
  v20[1] = a2;
  v13 = sub_1A870CCE0(&qword_1EB307E38);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - v15;
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a1;
  v17[4] = a3;
  v17[5] = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = v20[0];
  *(v18 + 24) = v17;
  v20[2] = a9;
  v20[3] = v18;

  sub_1A870CCE0(&qword_1EB307E40);
  sub_1A88C87C8();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1A88677AC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v4[5] = *(a4 - 8);
  v6 = swift_task_alloc();
  v4[6] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[7] = v7;
  *v7 = v4;
  v7[1] = sub_1A88678D8;

  return v9(v6);
}

uint64_t sub_1A88678D8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1A8867A9C;
  }

  else
  {
    v2 = sub_1A88679EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A88679EC()
{
  (*(v0[5] + 32))(*(*(v0[3] + 64) + 40), v0[6]);
  swift_continuation_throwingResume();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A8867A9C()
{
  v1 = v0[3];
  v2 = v0[4];
  v0[2] = v0[8];
  v3 = sub_1A870CCE0(&unk_1EB3037B0);
  sub_1A8867B44((v0 + 2), v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A8867B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocError();
  (*(*(a4 - 8) + 32))(v8, a1, a4);

  return MEMORY[0x1EEE6DEE8](a2, v7);
}

uint64_t sub_1A8867BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1A88C86D8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1A8867C6C, v6, v8);
}

uint64_t sub_1A8867C6C()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1A8867D14;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A8867D14()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t type metadata accessor for AsyncSerialQueue()
{
  result = qword_1EB300688;
  if (!qword_1EB300688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A8867E90()
{
  sub_1A8867EFC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A8867EFC()
{
  if (!qword_1EB300318)
  {
    sub_1A870CD28(&qword_1EB307E48);
    v0 = sub_1A88C87E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB300318);
    }
  }
}

uint64_t sub_1A8867F60()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A8714B6C;

  return sub_1A88677AC(v3, v5, v4, v2);
}

uint64_t sub_1A886800C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A8716570;

  return sub_1A8866E4C(v3, v5, v4, v2);
}

uint64_t sub_1A88680D8()
{
  v20 = v0;
  if (qword_1EB302280 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338E38);

  v2 = sub_1A88C7E38();
  v3 = sub_1A88C89B8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A85F0394(*(v4 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_key), *(v4 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_key + 8), &v19);
    _os_log_impl(&dword_1A85E5000, v2, v3, "Finished for key %s", v5, 0xCu);
    sub_1A85F1084(v6);
    MEMORY[0x1AC571F20](v6, -1, -1);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }

  v7 = v0[2];
  sub_1A870CCE0(&qword_1EB307E40);
  sub_1A88C87D8();
  *(v7 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_closed) = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    v9 = v0[2];
    v10 = *(v9 + 120);
    ObjectType = swift_getObjectType();
    v12 = v9 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_key;
    v13 = *(v9 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_key);
    v14 = *(v12 + 8);
    v18 = (*(v10 + 8) + **(v10 + 8));
    v15 = swift_task_alloc();
    v0[4] = v15;
    *v15 = v0;
    v15[1] = sub_1A88683C0;

    return v18(v13, v14, ObjectType, v10);
  }

  else
  {
    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1A88683C0()
{
  v3 = *v0;

  swift_unknownObjectRelease();
  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A88684D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A870CCE0(&qword_1EB307E38);
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_scheduled);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_scheduled) = v12;
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = &unk_1A88F53C0;
    *(v14 + 24) = v13;
    v15[0] = &unk_1A88F53D0;
    v15[1] = v14;

    sub_1A870CCE0(&qword_1EB307E40);
    sub_1A88C87C8();

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_1A8868674(int *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v6 = (a1 + *a1);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1A8868760;

  return v6();
}

uint64_t sub_1A8868760()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1A8868870, v1, 0);
}

void sub_1A8868870()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_scheduled);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_scheduled) = v4;
    if (v4 <= 0)
    {
      v6 = swift_task_alloc();
      v0[4] = v6;
      *v6 = v0;
      v6[1] = sub_1A8869F88;

      sub_1A88680B8();
    }

    else
    {
      v5 = v0[1];

      v5();
    }
  }
}

uint64_t sub_1A8868958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A8868980, v4, 0);
}

void sub_1A8868980()
{
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC17IMSharedUtilities4Lane_scheduled;
  v0[7] = OBJC_IVAR____TtC17IMSharedUtilities4Lane_scheduled;
  v4 = *(v2 + v3);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[4];
    v8 = v0[5];
    v9 = v0[3];
    *(v2 + v3) = v6;
    v10 = swift_allocObject();
    v0[8] = v10;
    v10[2] = v8;
    v10[3] = v9;
    v10[4] = v7;
    v10[5] = v2;

    v11 = swift_task_alloc();
    v0[9] = v11;
    *v11 = v0;
    v11[1] = sub_1A8868AB4;
    v12 = v0[5];
    v13 = v0[2];

    AsyncSerialQueue.performAndWaitFor<A>(_:)(v13, &unk_1A88F55C8, v10, v12);
  }
}

uint64_t sub_1A8868AB4()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x1EEE6DFA0](sub_1A8868BF0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1A8868BF0()
{
  v1 = v0[7];
  v2 = v0[6];

  v6 = *(v2 + v1);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  *(v0[6] + v0[7]) = v8;
  if (v8 > 0)
  {
    v4 = v0[6];
    v3 = sub_1A8868DF4;
    v5 = 0;

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_1A8868CE4;

  return sub_1A88680B8();
}

uint64_t sub_1A8868CE4()
{
  v1 = *v0;

  v2 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A8868DF4, v2, 0);
}

uint64_t sub_1A8868DF4()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A8868E60(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1A8868F5C;

  return v8(a1);
}

uint64_t sub_1A8868F5C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1A88690A0, v6, 0);
  }
}

void sub_1A88690A0()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_scheduled);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_scheduled) = v4;
    if (v4 <= 0)
    {
      v6 = swift_task_alloc();
      v0[4] = v6;
      *v6 = v0;
      v6[1] = sub_1A886918C;

      sub_1A88680B8();
    }

    else
    {
      v5 = v0[1];

      v5();
    }
  }
}

uint64_t sub_1A886918C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A8869284(uint64_t a1)
{
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A8716570;

  return sub_1A8868E60(a1, v4, v6, v5);
}

uint64_t sub_1A8869344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A886936C, v4, 0);
}

void sub_1A886936C()
{
  v2 = v0[6];
  v3 = *(v2 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_scheduled);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[3];
    *(v2 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_scheduled) = v5;
    v9 = swift_allocObject();
    v0[7] = v9;
    v9[2] = v7;
    v9[3] = v8;
    v9[4] = v6;
    v9[5] = v2;

    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_1A886949C;
    v11 = v0[5];
    v12 = v0[2];

    AsyncSerialQueue.performAndWaitFor<A>(_:)(v12, &unk_1A88F55E8, v9, v11);
  }
}

uint64_t sub_1A886949C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A88695AC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1A88696A8;

  return v8(a1);
}

uint64_t sub_1A88696A8()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1A88697B8, v1, 0);
}

void sub_1A88697B8()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_scheduled);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_scheduled) = v4;
    if (v4 <= 0)
    {
      v6 = swift_task_alloc();
      v0[4] = v6;
      *v6 = v0;
      v6[1] = sub_1A87E7400;

      sub_1A88680B8();
    }

    else
    {
      v5 = v0[1];

      v5();
    }
  }
}

uint64_t sub_1A88698A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A88698E0(uint64_t a1)
{
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A8716570;

  return sub_1A88695AC(a1, v4, v6, v5);
}

uint64_t Lane.deinit()
{
  sub_1A88699EC(v0 + 112);
  sub_1A886589C(v0 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_queue);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t Lane.__deallocating_deinit()
{
  sub_1A88699EC(v0 + 112);
  sub_1A886589C(v0 + OBJC_IVAR____TtC17IMSharedUtilities4Lane_queue);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of LaneDelegate.laneEmptied(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A8714B6C;

  return v11(a1, a2, a3, a4);
}

uint64_t type metadata accessor for Lane()
{
  result = qword_1EB307E88;
  if (!qword_1EB307E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A8869C00()
{
  sub_1A8867EFC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of Lane.performAndWait<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 240) + **(*v4 + 240));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1A8714B6C;

  return v12(a1, a2, a3, a4);
}

{
  v12 = (*(*v4 + 248) + **(*v4 + 248));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1A8716570;

  return v12(a1, a2, a3, a4);
}

uint64_t static IMSyncedSettingsKey.invalidateCache(syncedSettingsKey:)()
{
  v0 = _sSo19IMSyncedSettingsKeyV17IMSharedUtilitiesE012localStorageC0SSvg_0();
  v2 = v1;
  if (qword_1ED8C9300 != -1)
  {
    swift_once();
  }

  memset(v4, 0, sizeof(v4));
  swift_beginAccess();
  sub_1A87F3B18(v4, v0, v2);
  return swift_endAccess();
}

uint64_t static IMSyncedSettingsKey.invalidateCache(key:)(uint64_t a1, uint64_t a2)
{
  if (qword_1ED8C9300 != -1)
  {
    swift_once();
  }

  memset(v5, 0, sizeof(v5));
  swift_beginAccess();

  sub_1A87F3B18(v5, a1, a2);
  return swift_endAccess();
}

void *sub_1A886A0F0()
{
  result = sub_1A886A110();
  off_1ED8C9218 = result;
  return result;
}

unint64_t sub_1A886A110()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_1ED8C8FF8 != -1)
  {
LABEL_14:
    swift_once();
  }

  swift_beginAccess();
  v1 = off_1ED8C9000;
  v2 = 1 << *(off_1ED8C9000 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(off_1ED8C9000 + 8);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_10:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      CFNotificationCenterAddObserver(v0, 0, sub_1A886A27C, *(v1[6] + ((v7 << 9) | (8 * v8))), 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = v1[v7 + 8];
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_10;
    }
  }

  v9 = sub_1A8738AAC(MEMORY[0x1E69E7CC0]);

  return v9;
}

void sub_1A886A27C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v8 = a3;
  v9 = a5;
  sub_1A886B664(a3);
}

uint64_t sub_1A886A2EC()
{
  sub_1A870CCE0(&qword_1EB307EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E6D90;
  *(inited + 32) = sub_1A88C82A8();
  *(inited + 40) = &unk_1F1BA9F38;
  *(inited + 48) = sub_1A88C82A8();
  *(inited + 56) = &unk_1F1BA9F70;
  *(inited + 64) = sub_1A88C82A8();
  *(inited + 72) = &unk_1F1BA9F98;
  *(inited + 80) = sub_1A88C82A8();
  *(inited + 88) = &unk_1F1BA9FC0;
  v1 = sub_1A8739900(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB307EB0);
  result = swift_arrayDestroy();
  off_1ED8C9000 = v1;
  return result;
}

uint64_t static IMSyncedSettingsKey.keysToInvalidateForNotification.getter()
{
  if (qword_1ED8C8FF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static IMSyncedSettingsKey.keysToInvalidateForNotification.setter(void *a1)
{
  if (qword_1ED8C8FF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_1ED8C9000 = a1;
}

uint64_t (*static IMSyncedSettingsKey.keysToInvalidateForNotification.modify())()
{
  if (qword_1ED8C8FF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t IMSyncedSettingsKey.version.getter(uint64_t a1)
{
  if ((a1 - 4) > 7)
  {
    return 1;
  }

  else
  {
    return qword_1A88F5728[a1 - 4];
  }
}

uint64_t IMSyncedSettingsKey.init(localStorageKey:)(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (2)
  {
    v6 = v4;
    if (v4 == 104)
    {
      v7 = 0;
      goto LABEL_32;
    }

    v7 = *(&unk_1F1BA9EB0 + v4 + 32);
    v8 = 0x654D7065654B5353;
    v9 = 0xEE00736567617373;
    switch(v7)
    {
      case 0:
        goto LABEL_26;
      case 1:
        v9 = 0x80000001A891F2F0;
        if (a1 != 0xD000000000000011)
        {
          goto LABEL_2;
        }

        goto LABEL_27;
      case 2:
        v9 = 0x80000001A891F2D0;
        if (a1 != 0xD000000000000017)
        {
          goto LABEL_2;
        }

        goto LABEL_27;
      case 3:
        v9 = 0x80000001A891F2B0;
        if (a1 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_27;
      case 4:
        v9 = 0x80000001A891F290;
        if (a1 != 0xD000000000000015)
        {
          goto LABEL_2;
        }

        goto LABEL_27;
      case 5:
        v9 = 0x80000001A891F270;
        if (a1 != 0xD000000000000015)
        {
          goto LABEL_2;
        }

        goto LABEL_27;
      case 6:
        v9 = 0x80000001A891F250;
        if (a1 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_27;
      case 7:
        v9 = 0x80000001A891F230;
        if (a1 != 0xD000000000000014)
        {
          goto LABEL_2;
        }

        goto LABEL_27;
      case 8:
        v9 = 0x80000001A891F210;
        if (a1 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_27;
      case 9:
        v9 = 0x80000001A891F1F0;
        if (a1 != 0xD000000000000015)
        {
          goto LABEL_2;
        }

        goto LABEL_27;
      case 10:
        v8 = 0xD000000000000021;
        v9 = 0x80000001A891F1C0;
LABEL_26:
        if (v8 == a1)
        {
          goto LABEL_27;
        }

        goto LABEL_2;
      case 11:
        v9 = 0x80000001A891F1A0;
        if (a1 != 0xD000000000000019)
        {
          goto LABEL_2;
        }

        goto LABEL_27;
      case 12:
        v9 = 0x80000001A891F170;
        if (a1 != 0xD000000000000024)
        {
          goto LABEL_2;
        }

LABEL_27:
        if (v9 != a2)
        {
LABEL_2:
          v5 = sub_1A88C9398();

          v4 = v6 + 8;
          if (v5)
          {
            goto LABEL_32;
          }

          continue;
        }

LABEL_32:

        return v7;
      default:
        result = sub_1A88C8FB8();
        __break(1u);
        return result;
    }
  }
}

uint64_t IMSyncedSettingsKey.init(remoteStorageKey:)(uint64_t a1, void *a2)
{
  v4 = 0;
  while (1)
  {
    v5 = v4;
    if (v4 == 104)
    {
      v6 = 0;
      goto LABEL_14;
    }

    v6 = *(&unk_1F1BA9EB0 + v4 + 32);
    v7 = (v6 - 4) > 7 ? 1 : qword_1A88F5728[v6 - 4];
    v8 = IMSyncedSettingsKey.remoteStorageKey(version:)(v7);
    if (v8._countAndFlagsBits == a1 && v8._object == a2)
    {
      break;
    }

    v10 = sub_1A88C9398();

    v4 = v5 + 8;
    if (v10)
    {
      goto LABEL_14;
    }
  }

LABEL_14:

  return v6;
}

uint64_t IMSyncedSettingsKey.remoteStorageKey.getter(uint64_t a1)
{
  if ((a1 - 4) > 7)
  {
    return IMSyncedSettingsKey.remoteStorageKey(version:)(1uLL)._countAndFlagsBits;
  }

  else
  {
    return IMSyncedSettingsKey.remoteStorageKey(version:)(qword_1A88F5728[a1 - 4])._countAndFlagsBits;
  }
}

Swift::String __swiftcall IMSyncedSettingsKey.localStorageKey(version:)(Swift::UInt version)
{
  v1 = _sSo19IMSyncedSettingsKeyV17IMSharedUtilitiesE012localStorageC0SSvg_0();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall IMSyncedSettingsKey.remoteStorageKey(version:)(Swift::UInt version)
{
  v1 = sub_1A88C8FB8();
  __break(1u);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t IMSyncedSettingsKey.notificationName.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
      result = sub_1A88C82A8();
      break;
    default:
      result = sub_1A88C8FB8();
      __break(1u);
      break;
  }

  return result;
}

uint64_t IMSyncedSettingsKey.defaultValue.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (qword_1ED8C9300 != -1)
  {
    swift_once();
  }

  v4 = _sSo19IMSyncedSettingsKeyV17IMSharedUtilitiesE012localStorageC0SSvg_0();
  v6 = v5;
  swift_beginAccess();
  v7 = off_1ED8C9218;
  if (*(off_1ED8C9218 + 2))
  {
    v8 = sub_1A85F5F40(v4, v6);
    v10 = v9;

    if (v10)
    {
      sub_1A85F1028(v7[7] + 32 * v8, &v23);
      sub_1A85E99B0(&v23, a2);
      return swift_endAccess();
    }
  }

  else
  {
  }

  swift_endAccess();
  switch(a1)
  {
    case 0:
    case 1:
      v12 = sub_1A85FC408();
      v13 = sub_1A88C8B88();
      goto LABEL_12;
    case 2:
    case 3:
    case 5:
    case 8:
    case 9:
    case 10:
    case 12:
      goto LABEL_10;
    case 4:
      v18 = sub_1A88C82A8();
      v19 = sub_1A88C82A8();
      IMGetDomainBoolForKeyWithDefaultValue();

      goto LABEL_18;
    case 6:
      [objc_opt_self() isTimeSensitiveCustomModelAvailable];
      v12 = sub_1A85FC408();
      goto LABEL_11;
    case 7:
      v14 = objc_opt_self();
      if ([v14 isTimeSensitiveCustomModelAvailable])
      {
LABEL_10:
        v12 = sub_1A85FC408();
LABEL_11:
        v13 = sub_1A88C8B78();
LABEL_12:
        v24 = v12;
        *&v23 = v13;
      }

      else
      {
        [v14 areTransactionsPromotionsPriorityAvailable];
LABEL_18:
        v20 = sub_1A88C86C8();
        v24 = sub_1A85FC408();
        *&v23 = v20;
      }

      goto LABEL_13;
    case 11:
      [objc_opt_self() isTimeSensitiveCustomModelAvailable];
      v22 = sub_1A85FC408();
      *&v21 = sub_1A88C8B78();
      sub_1A85E99B0(&v21, &v23);
LABEL_13:
      v15 = _sSo19IMSyncedSettingsKeyV17IMSharedUtilitiesE012localStorageC0SSvg_0();
      v17 = v16;
      sub_1A85F1028(&v23, &v21);
      swift_beginAccess();
      sub_1A87F3B18(&v21, v15, v17);
      swift_endAccess();
      result = sub_1A85E99B0(&v23, a2);
      break;
    default:
      result = sub_1A88C8FB8();
      __break(1u);
      break;
  }

  return result;
}

unint64_t IMSyncedSettingsKey.localVersionKey.getter(uint64_t a1)
{
  v1 = 0xD000000000000029;
  if (a1 != 11)
  {
    v1 = 0;
  }

  if (a1 == 8)
  {
    v1 = 0xD000000000000022;
  }

  if (a1 == 7)
  {
    v1 = 0xD000000000000024;
  }

  v2 = 0xD000000000000025;
  v3 = 0xD000000000000025;
  v4 = 0xD000000000000020;
  if (a1 != 6)
  {
    v4 = 0;
  }

  if (a1 != 5)
  {
    v3 = v4;
  }

  if (a1 != 4)
  {
    v2 = v3;
  }

  if (a1 <= 6)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t IMSyncedSettingsKey.description.getter(uint64_t a1)
{
  sub_1A88C8E08();
  MEMORY[0x1AC56ECB0](0xD000000000000024, 0x80000001A891F850);
  if ((a1 - 4) > 7)
  {
    v2 = 1;
  }

  else
  {
    v2 = qword_1A88F5728[a1 - 4];
  }

  v3 = _sSo19IMSyncedSettingsKeyV17IMSharedUtilitiesE012localStorageC0SSvg_0();
  MEMORY[0x1AC56ECB0](v3);

  MEMORY[0x1AC56ECB0](0xD000000000000014, 0x80000001A891F880);
  countAndFlagsBits = IMSyncedSettingsKey.remoteStorageKey(version:)(v2)._countAndFlagsBits;
  MEMORY[0x1AC56ECB0](countAndFlagsBits);

  MEMORY[0x1AC56ECB0](93, 0xE100000000000000);
  return 0;
}

uint64_t _sSo19IMSyncedSettingsKeyV17IMSharedUtilitiesE012localStorageC0SSvg_0()
{
  result = sub_1A88C8FB8();
  __break(1u);
  return result;
}

unint64_t sub_1A886B600()
{
  result = qword_1EB307E98;
  if (!qword_1EB307E98)
  {
    sub_1A870CD28(&qword_1EB307EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307E98);
  }

  return result;
}

void sub_1A886B664(void *a1)
{
  if (a1)
  {
    v1 = qword_1ED8C8FF8;
    v2 = a1;
    if (v1 != -1)
    {
      goto LABEL_34;
    }

    while (1)
    {
      swift_beginAccess();
      v3 = off_1ED8C9000;
      if (!*(off_1ED8C9000 + 2) || (v4 = sub_1A8717F6C(v2), (v5 & 1) == 0))
      {
        swift_endAccess();
        goto LABEL_31;
      }

      v15 = v2;
      v2 = *(v3[7] + 8 * v4);
      swift_endAccess();
      v6 = v2[2];

      if (!v6)
      {
        break;
      }

      v7 = 0;
      while (2)
      {
        if (v7 < v2[2])
        {
          v8 = 0x654D7065654B5353;
          v9 = 0xEE00736567617373;
          switch(v2[v7 + 4])
          {
            case 0:
              goto LABEL_23;
            case 1:
              v8 = 0xD000000000000011;
              v9 = 0x80000001A891F2F0;
              goto LABEL_23;
            case 2:
              v8 = 0xD000000000000017;
              v9 = 0x80000001A891F2D0;
              goto LABEL_23;
            case 3:
              v8 = 0xD000000000000013;
              v9 = 0x80000001A891F2B0;
              goto LABEL_23;
            case 4:
              v8 = 0xD000000000000015;
              v9 = 0x80000001A891F290;
              goto LABEL_23;
            case 5:
              v8 = 0xD000000000000015;
              v9 = 0x80000001A891F270;
              goto LABEL_23;
            case 6:
              v8 = 0xD000000000000010;
              v9 = 0x80000001A891F250;
              goto LABEL_23;
            case 7:
              v8 = 0xD000000000000014;
              v9 = 0x80000001A891F230;
              goto LABEL_23;
            case 8:
              v8 = 0xD000000000000012;
              v9 = 0x80000001A891F210;
              goto LABEL_23;
            case 9:
              v8 = 0xD000000000000015;
              v9 = 0x80000001A891F1F0;
              goto LABEL_23;
            case 0xALL:
              v8 = 0xD000000000000021;
              v9 = 0x80000001A891F1C0;
              goto LABEL_23;
            case 0xBLL:
              v8 = 0xD000000000000019;
              v9 = 0x80000001A891F1A0;
              goto LABEL_23;
            case 0xCLL:
              v8 = 0xD000000000000024;
              v9 = 0x80000001A891F170;
LABEL_23:
              if (qword_1ED8C9300 != -1)
              {
                swift_once();
              }

              swift_beginAccess();
              v10 = sub_1A85F5F40(v8, v9);
              v12 = v11;

              if (v12)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v14 = off_1ED8C9218;
                v16 = off_1ED8C9218;
                off_1ED8C9218 = 0x8000000000000000;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  sub_1A87B14EC();
                  v14 = v16;
                }

                sub_1A85E99B0((v14[7] + 32 * v10), v17);
                sub_1A87B0220(v10, v14);
                off_1ED8C9218 = v14;
              }

              else
              {
                memset(v17, 0, sizeof(v17));
              }

              ++v7;
              sub_1A860169C(v17);
              swift_endAccess();
              if (v6 != v7)
              {
                continue;
              }

              goto LABEL_30;
            default:
              sub_1A88C8FB8();
              __break(1u);
              return;
          }
        }

        break;
      }

      __break(1u);
LABEL_34:
      swift_once();
    }

LABEL_30:

    v2 = v15;
LABEL_31:
  }
}

uint64_t sub_1A886BAD0(char a1, char a2)
{
  if (qword_1A88F5998[a1] == qword_1A88F5998[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1A88C9398();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1A886BB38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_1A88C9398();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1A886BD3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x80000001A8916DF0;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x80000001A8916E10;
    }

    v5 = 0x80000001A8916DB0;
    if (a1 != 3)
    {
      v5 = 0x80000001A8916DD0;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_1A88C9398();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x80000001A8916DF0;
    }

    else
    {
      v10 = 0x80000001A8916E10;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x80000001A8916DB0;
    }

    else
    {
      v10 = 0x80000001A8916DD0;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_1A886BF14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x2065727574616546;
    v12 = 0xED00002977654E28;
    v13 = 0x6D65636E61686E45;
    v14 = 0xEB00000000746E65;
    if (a1 != 8)
    {
      v13 = 1802723668;
      v14 = 0xE400000000000000;
    }

    if (a1 != 7)
    {
      v11 = v13;
      v12 = v14;
    }

    v15 = 0x2073756F69726553;
    v16 = 0xEB00000000677542;
    if (a1 != 5)
    {
      v15 = 0x754220726568744FLL;
      v16 = 0xE900000000000067;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE500000000000000;
    v5 = 0x7265776F50;
    v6 = 0x616D726F66726550;
    v7 = 0xEB0000000065636ELL;
    if (a1 != 3)
    {
      v6 = 0x69626173552F4955;
      v7 = 0xEC0000007974696CLL;
    }

    if (a1 != 2)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0xD000000000000014;
    if (a1)
    {
      v3 = 0x80000001A8916CD0;
    }

    else
    {
      v8 = 0x7974697275636553;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 != 5)
      {
        v19 = 0xE900000000000067;
        if (v9 != 0x754220726568744FLL)
        {
LABEL_56:
          v20 = sub_1A88C9398();
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      v17 = 0x2073756F69726553;
      v18 = 6780226;
    }

    else
    {
      if (a2 == 7)
      {
        v19 = 0xED00002977654E28;
        if (v9 != 0x2065727574616546)
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      if (a2 != 8)
      {
        v19 = 0xE400000000000000;
        if (v9 != 1802723668)
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      v17 = 0x6D65636E61686E45;
      v18 = 7630437;
    }

LABEL_41:
    v19 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v9 != v17)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v19 = 0xE500000000000000;
      if (v9 != 0x7265776F50)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    if (a2 != 3)
    {
      v19 = 0xEC0000007974696CLL;
      if (v9 != 0x69626173552F4955)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    v17 = 0x616D726F66726550;
    v18 = 6644590;
    goto LABEL_41;
  }

  if (a2)
  {
    v19 = 0x80000001A8916CD0;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v19 = 0xE800000000000000;
    if (v9 != 0x7974697275636553)
    {
      goto LABEL_56;
    }
  }

LABEL_54:
  if (v10 != v19)
  {
    goto LABEL_56;
  }

  v20 = 1;
LABEL_57:

  return v20 & 1;
}

uint64_t sub_1A886C254(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x5654656C707041;
  v6 = 0xE700000000000000;
  v7 = 0x646F50656D6F48;
  if (a1 != 4)
  {
    v7 = 6512973;
    v6 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (a1 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x5654656C707041)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x646F50656D6F48)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 6512973)
      {
LABEL_34:
        v13 = sub_1A88C9398();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1684099177)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6863746157)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x656E6F685069)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1A886C410(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x48726F7461657263;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0xED0000656C646E61;
    }

    else
    {
      v4 = 0x80000001A8916AF0;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1954047348;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x7475626972747461;
    }

    else
    {
      v3 = 0x69644565426E6163;
    }

    if (v2 == 3)
    {
      v4 = 0xEE00747865546465;
    }

    else
    {
      v4 = 0xEB00000000646574;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x48726F7461657263;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (a2)
    {
      v5 = 0xED0000656C646E61;
    }

    else
    {
      v5 = 0x80000001A8916AF0;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1954047348)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEE00747865546465;
    if (v3 != 0x7475626972747461)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEB00000000646574;
    if (v3 != 0x69644565426E6163)
    {
LABEL_34:
      v7 = sub_1A88C9398();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}