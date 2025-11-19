uint64_t sub_22C42B148@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X8>)
{
  v28 = a1;
  v27 = a2;
  v2 = sub_22C902D0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  v11 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - v13;
  v31 = sub_22C9087DC();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
  sub_22C907E3C();

  v15 = sub_22C9070DC();
  if (sub_22C370B74(v10, 1, v15) == 1)
  {
    sub_22C36DD28(v10, &qword_27D9BAA18, &qword_22C911C40);
    v16 = 1;
  }

  else
  {
    sub_22C9068FC();
    (*(*(v15 - 8) + 8))(v10, v15);
    v16 = 0;
  }

  v17 = sub_22C901FAC();
  v18 = sub_22C36C640(v14, v16, 1, v17);
  MEMORY[0x28223BE20](v18);
  *(&v26 - 2) = v14;
  v19 = v29;
  sub_22C439F24(v28, sub_22C430A2C, (&v26 - 4), v20, v21, v22, v23, v24, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  if (!v19)
  {
    (*(v3 + 32))(v27, v6, v2);
  }

  return sub_22C36DD28(v14, &qword_27D9BC030, &unk_22C911CC0);
}

uint64_t sub_22C42B460()
{
  v1 = sub_22C372138();
  sub_22C3699B8(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  sub_22C388594();
  sub_22C37055C();
  v9 = *(v0 + v8);
  v10 = sub_22C388EBC();
  return sub_22C425BD4(v10, v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_22C42B4E8()
{
  v0 = sub_22C372138();
  sub_22C3699B8(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  sub_22C388594();
  sub_22C37055C();
  v7 = sub_22C388EBC();
  return sub_22C426504(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_22C42B564(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22C42B5B0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22C42B5FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v74 = a2;
  v5 = sub_22C3A5908(&qword_27D9BC230, &qword_22C912430);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v64 - v7;
  v73 = type metadata accessor for ParameterPromptMap(0);
  v65 = *(v73 - 8);
  v9 = *(v65 + 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  v70 = *(v81 - 8);
  v11 = *(v70 + 64);
  v12 = MEMORY[0x28223BE20](v81);
  v82 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v72 = &v64 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v64 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v85 = MEMORY[0x277D84F90];
    sub_22C3B70B8(0, v18, 0);
    v19 = v85;
    result = sub_22C6339F8(a1);
    v22 = result;
    v23 = a1 + 64;
    v24 = v18 - 1;
    v68 = a1;
    v69 = v8;
    v66 = a1 + 64;
    for (i = v17; (result & 0x8000000000000000) == 0; v24 = v75 - 1)
    {
      if (v22 >= 1 << *(a1 + 32))
      {
        break;
      }

      if ((*(v23 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
      {
        goto LABEL_24;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v77 = 1 << v22;
      v78 = v22 >> 6;
      v75 = v24;
      v76 = v21;
      v79 = v3;
      v80 = v19;
      v25 = v81;
      v26 = *(v81 + 48);
      v27 = *(a1 + 48);
      v28 = sub_22C902C9C();
      v29 = *(v28 - 8);
      v30 = v72;
      (*(v29 + 16))(v72, v27 + *(v29 + 72) * v22, v28);
      v31 = *(a1 + 56);
      v32 = sub_22C902D0C();
      v33 = *(v32 - 8);
      (*(v33 + 16))(v30 + v26, v31 + *(v33 + 72) * v22, v32);
      v34 = v82;
      (*(v29 + 32))(v82, v30, v28);
      v35 = *(v25 + 48);
      (*(v33 + 32))(&v34[v35], v30 + v26, v32);
      v36 = sub_22C902C7C();
      v38 = v74;
      if (*(v74 + 16))
      {
        v39 = sub_22C36E2BC(v36, v37);
        v3 = v79;
        v19 = v80;
        if (v40)
        {
          v41 = *(v38 + 56) + *(v65 + 9) * v39;
          v42 = v69;
          sub_22C430B88();
          v43 = 0;
          goto LABEL_12;
        }

        v43 = 1;
      }

      else
      {
        v43 = 1;
        v3 = v79;
        v19 = v80;
      }

      v42 = v69;
LABEL_12:
      v44 = v73;
      sub_22C36C640(v42, v43, 1, v73);

      if (sub_22C370B74(v42, 1, v44) == 1)
      {
        sub_22C36DD28(v42, &qword_27D9BC230, &qword_22C912430);
        v83 = 0;
        v84 = 0xE000000000000000;
        sub_22C90AF5C();
        MEMORY[0x2318B7850](0x100000000000001CLL, 0x800000022C9305C0);
        v59 = v82;
        v60 = sub_22C902C7C();
        MEMORY[0x2318B7850](v60);

        MEMORY[0x2318B7850](0xD000000000000022, 0x800000022C9305E0);

        MEMORY[0x2318B7850](0xD000000000000035, 0x800000022C930610);

        v61 = v83;
        v62 = v84;
        sub_22C430A48();
        swift_allocError();
        *v63 = v61;
        *(v63 + 8) = v62;
        *(v63 + 16) = 1;
        swift_willThrow();
        sub_22C36DD28(v59, &qword_27D9BAF30, &unk_22C90FAA0);
      }

      v45 = *(v81 + 48);
      v46 = v71;
      v47 = sub_22C430ABC();
      MEMORY[0x28223BE20](v47);
      *(&v64 - 2) = v46;
      v48 = v82;
      sub_22C439F24(&v82[v35], sub_22C430F6C, (&v64 - 4), v49, v50, v51, v52, v53, v64, v65, v66, i, v68, v69, v70, v71, v72, v73, v74, v75);
      sub_22C9097DC();
      sub_22C902C6C();

      sub_22C430B30(v46, type metadata accessor for ParameterPromptMap);
      sub_22C36DD28(v48, &qword_27D9BAF30, &unk_22C90FAA0);
      v85 = v19;
      v55 = *(v19 + 16);
      v54 = *(v19 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_22C3B70B8(v54 > 1, v55 + 1, 1);
        v19 = v85;
      }

      *(v19 + 16) = v55 + 1;
      v56 = v19 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v55;
      result = sub_22C407C2C();
      a1 = v68;
      if (v22 >= -(-1 << *(v68 + 32)))
      {
        goto LABEL_26;
      }

      v23 = v66;
      if ((*(v66 + 8 * v78) & v77) == 0)
      {
        goto LABEL_27;
      }

      if (v76 != *(v68 + 36))
      {
        goto LABEL_28;
      }

      result = sub_22C90AE7C();
      if (!v75)
      {
        goto LABEL_21;
      }

      v22 = result;
      v21 = *(a1 + 36);
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_21:
    sub_22C8D54F4();
    v58 = v57;

    return sub_22C42C174(v58, &qword_27D9BC1F8, &qword_22C9126D0, sub_22C42FC3C);
  }

  return result;
}

uint64_t sub_22C42BD98@<X0>(uint64_t (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v45 = a1;
  v4 = sub_22C902D0C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v37[-v10];
  v12 = sub_22C9063DC();
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C903F7C();
  v16 = v5[2];
  v16(v11, a2, v4);
  v43 = v9;
  v17 = v45;
  v45 = v16;
  v16(v9, v17, v4);
  v44 = v15;
  v18 = sub_22C9063CC();
  v19 = sub_22C90AADC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42 = a2;
    v21 = v20;
    v41 = swift_slowAlloc();
    v48 = v41;
    *v21 = 136643075;
    sub_22C4309E4(&qword_27D9BC188, MEMORY[0x277D1D800]);
    v39 = v18;
    v22 = sub_22C90B47C();
    v38 = v19;
    v24 = v23;
    v40 = v12;
    v25 = v5[1];
    v25(v11, v4);
    v26 = sub_22C36F9F4(v22, v24, &v48);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2085;
    v27 = v43;
    v28 = sub_22C90B47C();
    v30 = v29;
    v25(v27, v4);
    v31 = sub_22C36F9F4(v28, v30, &v48);

    *(v21 + 14) = v31;
    v32 = v39;
    _os_log_impl(&dword_22C366000, v39, v38, "❗️ Folding parameters, but parameter key has already been seen.\nTaking new value: %{sensitive}s\nover old value: %{sensitive}s", v21, 0x16u);
    v33 = v41;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v33, -1, -1);
    v34 = v21;
    a2 = v42;
    MEMORY[0x2318B9880](v34, -1, -1);

    (*(v46 + 8))(v44, v40);
  }

  else
  {

    v35 = v5[1];
    v35(v43, v4);
    v35(v11, v4);
    (*(v46 + 8))(v44, v12);
  }

  return v45(v47, a2, v4);
}

uint64_t sub_22C42C174(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_22C3A5908(a2, a3);
    v7 = sub_22C90B1EC();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v10 = v7;
  a4(a1, 1, &v10);
  v8 = v10;
  if (v4)
  {
  }

  return v8;
}

unint64_t sub_22C42C214(uint64_t a1, uint64_t a2)
{
  v106 = a2;
  v4 = sub_22C902C5C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v102 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BC230, &qword_22C912430);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v85 - v9;
  v105 = type metadata accessor for ParameterPromptMap(0);
  v86 = *(v105 - 8);
  v11 = *(v86 + 8);
  MEMORY[0x28223BE20](v105);
  v101 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_22C902D0C();
  v13 = *(v107 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v107);
  v100 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v85 - v18;
  MEMORY[0x28223BE20](v17);
  v119 = &v85 - v20;
  v120 = sub_22C902C9C();
  v21 = *(v120 - 8);
  v22 = v21[8];
  MEMORY[0x28223BE20](v120);
  v99 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_22C3A5908(&qword_27D9BC238, &qword_22C912438);
  v24 = *(*(v104 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v104);
  v121 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v103 = &v85 - v27;
  v98 = sub_22C3A5908(&qword_27D9BAF48, &qword_22C90D7F0);
  v97 = *(v98 - 8);
  v28 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v30 = &v85 - v29;
  v31 = *(a1 + 16);
  v32 = MEMORY[0x277D84F90];
  if (!v31)
  {
    return sub_22C42C174(v32, &qword_27D9BC240, &unk_22C9126E0, sub_22C430298);
  }

  v96 = v10;
  v117 = v2;
  v124 = MEMORY[0x277D84F90];
  sub_22C3B70D8(0, v31, 0);
  v32 = v124;
  result = sub_22C6339F8(a1);
  v35 = a1 + 64;
  v118 = v21 + 2;
  v94 = v21 + 4;
  v95 = (v13 + 8);
  v90 = (v13 + 16);
  v89 = (v21 + 1);
  v36 = v31 - 1;
  v87 = v19;
  v93 = a1;
  v92 = v21;
  v91 = v30;
  v88 = a1 + 64;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      if ((*(v35 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_22;
      }

      if (v34 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v111 = 1 << result;
      v112 = result >> 6;
      v109 = v36;
      v110 = v34;
      v37 = v104;
      v115 = *(v104 + 48);
      v116 = v32;
      v38 = *(a1 + 48) + v21[9] * result;
      v39 = v21[2];
      v40 = v21;
      v41 = v103;
      v42 = v19;
      v43 = result;
      v44 = v120;
      v113 = v39;
      v39(v103, v38, v120);
      v45 = *(a1 + 56);
      v46 = sub_22C902C4C();
      v47 = *(v46 - 8);
      v48 = *(v47 + 72);
      v114 = v43;
      v49 = v45 + v48 * v43;
      v50 = v42;
      v51 = v115;
      (*(v47 + 16))(&v41[v115], v49, v46);
      v52 = v121;
      (v40[4])(v121, v41, v44);
      v53 = &v41[v51];
      v54 = v50;
      (*(v47 + 32))(&v52[*(v37 + 48)], v53, v46);
      sub_22C902C1C();
      v55 = sub_22C902C7C();
      v57 = v106;
      if (*(v106 + 16) && (v58 = sub_22C36E2BC(v55, v56), (v59 & 1) != 0))
      {
        v60 = *(v57 + 56) + *(v86 + 9) * v58;
        v61 = v96;
        sub_22C430B88();
        v62 = 0;
      }

      else
      {
        v62 = 1;
        v61 = v96;
      }

      v63 = v105;
      sub_22C36C640(v61, v62, 1, v105);

      if (sub_22C370B74(v61, 1, v63) == 1)
      {
        sub_22C36DD28(v61, &qword_27D9BC230, &qword_22C912430);
        v122 = 0;
        v123 = 0xE000000000000000;
        sub_22C90AF5C();
        MEMORY[0x2318B7850](0x100000000000001CLL, 0x800000022C9305C0);
        v80 = v121;
        v81 = sub_22C902C7C();
        MEMORY[0x2318B7850](v81);

        MEMORY[0x2318B7850](0xD000000000000022, 0x800000022C9305E0);

        MEMORY[0x2318B7850](0xD000000000000035, 0x800000022C930610);

        v82 = v122;
        v83 = v123;
        sub_22C430A48();
        swift_allocError();
        *v84 = v82;
        *(v84 + 8) = v83;
        *(v84 + 16) = 1;
        swift_willThrow();
        (*v95)(v54, v107);
        sub_22C36DD28(v80, &qword_27D9BC238, &qword_22C912438);
      }

      v115 = *(v98 + 48);
      v64 = v101;
      v65 = sub_22C430ABC();
      MEMORY[0x28223BE20](v65);
      *(&v85 - 2) = v64;
      v66 = v117;
      sub_22C439F24(v50, sub_22C430B14, (&v85 - 4), v67, v68, v69, v70, v71, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      v117 = v66;
      sub_22C9097DC();
      v72 = v99;
      v73 = v121;
      sub_22C902C6C();

      v108 = *v95;
      v74 = v107;
      v108(v50, v107);
      v75 = v120;
      sub_22C430B30(v64, type metadata accessor for ParameterPromptMap);
      v113(v91, v72, v75);
      sub_22C902C3C();
      v76 = v119;
      (*v90)(v100, v119, v74);
      sub_22C902C2C();
      v108(v76, v74);
      (*v89)(v72, v75);
      sub_22C36DD28(v73, &qword_27D9BC238, &qword_22C912438);
      v32 = v116;
      v124 = v116;
      v78 = *(v116 + 16);
      v77 = *(v116 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_22C3B70D8(v77 > 1, v78 + 1, 1);
        v32 = v124;
      }

      *(v32 + 16) = v78 + 1;
      v79 = v32 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v78;
      sub_22C407C2C();
      a1 = v93;
      result = v114;
      v21 = v92;
      if (v114 >= -(-1 << *(v93 + 32)))
      {
        goto LABEL_24;
      }

      v35 = v88;
      if ((*(v88 + 8 * v112) & v111) == 0)
      {
        goto LABEL_25;
      }

      if (v110 != *(v93 + 36))
      {
        goto LABEL_26;
      }

      result = sub_22C90AE7C();
      if (!v109)
      {
        return sub_22C42C174(v32, &qword_27D9BC240, &unk_22C9126E0, sub_22C430298);
      }

      v34 = *(a1 + 36);
      v36 = v109 - 1;
      v19 = v87;
      if ((result & 0x8000000000000000) != 0)
      {
        break;
      }
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

uint64_t sub_22C42CCE8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ParameterPromptMap(0) + 20));
  if (*(v3 + 16) && (sub_22C6280AC(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = sub_22C902D0C();
    (*(*(v8 - 8) + 16))(a2, v7 + *(*(v8 - 8) + 72) * v6, v8);
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = sub_22C902D0C();
    v9 = a2;
    v10 = 1;
  }

  return sub_22C36C640(v9, v10, 1, v11);
}

uint64_t sub_22C42CDC8()
{
  v0 = sub_22C902D0C();
  sub_22C36985C(v0);
  v2 = *(v1 + 16);
  v3 = sub_22C36BBCC();

  return v4(v3);
}

uint64_t sub_22C42CE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, void (*a10)(uint64_t, uint64_t), char *a11)
{
  v108 = a7;
  v110 = a5;
  v111 = a6;
  v109 = a4;
  v107 = a3;
  v129 = a1;
  v121 = a8;
  v13 = sub_22C902D0C();
  v114 = *(v13 - 8);
  v115 = v13;
  v14 = *(v114 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v106 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v112 = &v104 - v17;
  v113 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  v18 = *(*(v113 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v113);
  v120 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v116 = &v104 - v22;
  MEMORY[0x28223BE20](v21);
  v119 = &v104 - v23;
  v24 = sub_22C9063DC();
  v117 = *(v24 - 8);
  v118 = v24;
  v25 = *(v117 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v123 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v122 = &v104 - v28;
  v127 = type metadata accessor for RenderableTool();
  v29 = *(*(v127 - 1) + 64);
  MEMORY[0x28223BE20](v127);
  v31 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v104 - v34;
  v36 = sub_22C90941C();
  v125 = *(v36 - 8);
  v126 = v36;
  v37 = *(v125 + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v105 = (&v104 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v38);
  v124 = &v104 - v40;
  v41 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
  v42 = sub_22C9036EC();
  (*(*(v42 - 8) + 16))(v31, a2, v42);
  sub_22C9037DC();
  v130[0] = MEMORY[0x277D84F90];
  sub_22C4309E4(&qword_27D9BB820, MEMORY[0x277D1ED48]);
  sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
  sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0);
  sub_22C90AE4C();
  swift_storeEnumTagMultiPayload();
  v43 = type metadata accessor for ResolvableTool();
  v44 = v128;
  sub_22C436900(v129, v31, *(a2 + *(v43 + 20)), v35);
  result = sub_22C430B30(v31, type metadata accessor for RenderableTool);
  if (!v44)
  {
    v46 = v119;
    v47 = v120;
    v48 = v122;
    v49 = v124;
    v50 = v125;
    v51 = v126;
    if (sub_22C370B74(v35, 1, v126) == 1)
    {
      sub_22C36DD28(v35, &qword_27D9BC028, &unk_22C9134B0);
      sub_22C903FFC();
      sub_22C3A7214();
      v52 = sub_22C9063CC();
      v53 = sub_22C90AACC();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v128 = 0;
        v56 = v55;
        v130[0] = v55;
        *v54 = 136315138;
        v57 = v116;
        sub_22C3A7214();
        v58 = *(v113 + 48);
        v127 = sub_22C902C7C();
        v59 = v46;
        v61 = v60;
        sub_22C36DD28(v59, &qword_27D9BAF30, &unk_22C90FAA0);
        v62 = sub_22C902C9C();
        (*(*(v62 - 8) + 8))(v57, v62);
        (*(v114 + 8))(&v57[v58], v115);
        v63 = sub_22C36F9F4(v127, v61, v130);

        *(v54 + 4) = v63;
        _os_log_impl(&dword_22C366000, v52, v53, "Could not find parameter definition for key %s", v54, 0xCu);
        sub_22C36FF94(v56);
        MEMORY[0x2318B9880](v56, -1, -1);
        MEMORY[0x2318B9880](v54, -1, -1);

        (*(v117 + 8))(v122, v118);
      }

      else
      {

        sub_22C36DD28(v46, &qword_27D9BAF30, &unk_22C90FAA0);
        (*(v117 + 8))(v48, v118);
      }
    }

    else
    {
      (*(v50 + 32))(v49, v35, v51);
      if (sub_22C3D9564())
      {
        v123 = a11;
        v127 = a10;
        v64 = v129;
        v65 = v116;
        sub_22C3A7214();
        v66 = v113;
        v67 = *(v113 + 48);
        v68 = v106;
        v69 = swift_getAtKeyPath();
        v70 = *(v108 + 16);
        MEMORY[0x28223BE20](v69);
        v71 = v110;
        *(&v104 - 6) = v109;
        *(&v104 - 5) = v71;
        *(&v104 - 4) = v111;
        *(&v104 - 3) = a9;
        *(&v104 - 2) = v72;
        sub_22C439F24(v68, sub_22C430958, (&v104 - 8), v73, v74, v75, v76, v77, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
        v128 = 0;
        v78 = v115;
        v79 = *(v114 + 8);
        v79(v68, v115);
        v79(&v65[v67], v78);
        v80 = sub_22C902C9C();
        v81 = *(v80 - 8);
        (*(v81 + 8))(v65, v80);
        v120 = *(v66 + 48);
        v82 = v64;
        sub_22C3A7214();
        v122 = *(v66 + 48);
        (*(v81 + 32))(v121, v65, v80);
        v83 = v112;
        v127(v82 + *(v66 + 48), v112);
        v79(v83, v78);
        (*(v125 + 8))(v124, v126);
        return (v79)(&v65[v122], v78);
      }

      sub_22C903FFC();
      v84 = v47;
      sub_22C3A7214();
      v85 = v105;
      (*(v50 + 16))(v105, v49, v51);
      v86 = sub_22C9063CC();
      LODWORD(v127) = sub_22C90AACC();
      v87 = os_log_type_enabled(v86, v127);
      v88 = v116;
      if (v87)
      {
        v89 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v130[0] = v122;
        *v89 = 136315394;
        v128 = 0;
        sub_22C3A7214();
        v90 = *(v113 + 48);
        v119 = sub_22C902C7C();
        v91 = v85;
        v93 = v92;
        sub_22C36DD28(v84, &qword_27D9BAF30, &unk_22C90FAA0);
        v94 = sub_22C902C9C();
        (*(*(v94 - 8) + 8))(v88, v94);
        (*(v114 + 8))(&v88[v90], v115);
        v95 = sub_22C36F9F4(v119, v93, v130);

        *(v89 + 4) = v95;
        *(v89 + 12) = 2080;
        v96 = sub_22C7F5E00();
        v98 = v97;
        v99 = v126;
        v100 = *(v125 + 8);
        v100(v91, v126);
        v101 = sub_22C36F9F4(v96, v98, v130);

        *(v89 + 14) = v101;
        _os_log_impl(&dword_22C366000, v86, v127, "Skipping non quotable parameter Key: %s, Type: %s", v89, 0x16u);
        v102 = v122;
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v102, -1, -1);
        MEMORY[0x2318B9880](v89, -1, -1);

        (*(v117 + 8))(v123, v118);
        v100(v124, v99);
      }

      else
      {

        v103 = *(v50 + 8);
        v103(v85, v51);
        sub_22C36DD28(v47, &qword_27D9BAF30, &unk_22C90FAA0);
        (*(v117 + 8))(v123, v118);
        v103(v49, v51);
      }
    }

    return sub_22C3A7214();
  }

  return result;
}

uint64_t sub_22C42DA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v57 = a4;
  v7 = a3(0);
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v51 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  v20 = sub_22C9063DC();
  v21 = sub_22C369824(v20);
  v55 = v22;
  v56 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C369BE8();
  sub_22C903F7C();
  v25 = *(v10 + 16);
  v53 = a2;
  v25(v19, a2, v7);
  v25(v17, a1, v7);
  v54 = v4;
  v26 = sub_22C9063CC();
  v27 = sub_22C90AADC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v49 = v27;
    v29 = v28;
    v50 = swift_slowAlloc();
    v58 = v50;
    *v29 = 136643075;
    v48 = v26;
    v30 = v51;
    v31 = sub_22C36BBCC();
    (v25)(v31);
    sub_22C372FA4();
    v32 = sub_22C90A1AC();
    v52 = v25;
    v34 = v33;
    v47 = v17;
    v35 = *(v10 + 8);
    v36 = sub_22C37B220();
    v35(v36);
    v37 = sub_22C36F9F4(v32, v34, &v58);

    *(v29 + 4) = v37;
    *(v29 + 12) = 2085;
    v38 = v47;
    v52(v30, v47, v7);
    sub_22C372FA4();
    v39 = sub_22C90A1AC();
    v41 = v40;
    (v35)(v38, v7);
    v42 = sub_22C36F9F4(v39, v41, &v58);
    v25 = v52;

    *(v29 + 14) = v42;
    v43 = v48;
    _os_log_impl(&dword_22C366000, v48, v49, "❗️ Folding parameters, but parameter key has already been seen.\nTaking new value: %{sensitive}s\nover old value: %{sensitive}s", v29, 0x16u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {

    v44 = *(v10 + 8);
    v44(v17, v7);
    v45 = sub_22C37B220();
    (v44)(v45);
  }

  (*(v55 + 8))(v54, v56);
  return (v25)(v57, v53, v7);
}

uint64_t sub_22C42DDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>)
{
  v8 = v7;
  v45 = a5;
  v15 = sub_22C902D0C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 != *MEMORY[0x277D1D7E8])
  {
    (*(v16 + 8))(v19, v15);
LABEL_7:
    v33 = a6;
    v34 = 1;
    return sub_22C36C640(v33, v34, 1, v15);
  }

  v21 = v20;
  (*(v16 + 96))(v19, v15);
  v22 = *v19;
  if (*(*v19 + 32) != 3)
  {
    v32 = *v19;

    goto LABEL_7;
  }

  v44 = a6;
  v23 = *(v22 + 16);
  v24 = *(v22 + 24);

  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a7;
  v25 = v23;
  v26 = StringExprsAreQuotesRequirement.enforce(_:quotes:)(v23, v24, v45);
  if (v8)
  {

    sub_22C4242E4(v23, v24, 3);
    v30 = 0;
    v31 = 0xE000000000000000;
  }

  else
  {
    v35 = v26;
    v36 = v27;
    v37 = v29;
    v38 = v25;
    v39 = v28;
    sub_22C4242E4(v38, v24, 3);
    v30 = MEMORY[0x2318B76D0](v35, v36, v39, v37);
    v31 = v40;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = v30;
  *(v41 + 24) = v31;
  *(v41 + 32) = 3;
  v42 = v44;
  *v44 = v41;
  (*(v16 + 104))(v42, v21, v15);
  v33 = v42;
  v34 = 0;
  return sub_22C36C640(v33, v34, 1, v15);
}

uint64_t sub_22C42E080(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_22C9099FC();
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90384C();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C9036EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C908EAC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10);
  v20 = (*(v11 + 88))(v14, v10);
  if (v20 == *MEMORY[0x277D1ECE0])
  {
    goto LABEL_2;
  }

  if (v20 == *MEMORY[0x277D1ECE8])
  {
    (*(v11 + 96))(v14, v10);
    v22 = v46;
    (*(v46 + 32))(v6, v14, v3);
    v23 = v49;
    v24 = sub_22C9099CC();
    if (!v23)
    {
      a1 = v24;
    }

    (*(v22 + 8))(v6, v3);
    return a1;
  }

  if (v20 == *MEMORY[0x277D1ECD8] || v20 == *MEMORY[0x277D1ECD0])
  {
LABEL_2:
    (*(v11 + 96))(v14, v10);
    (*(v16 + 32))(v19, v14, v15);
    a1 = sub_22C908E7C();
    (*(v16 + 8))(v19, v15);
    return a1;
  }

  if (v20 == *MEMORY[0x277D1ECF8])
  {
    (*(v11 + 96))(v14, v10);
    v26 = v43;
    v27 = v44;
    v28 = v14;
    v29 = v45;
    (*(v44 + 32))(v43, v28, v45);
    v30 = sub_22C374168((v41 + 304), *(v41 + 328));
    v31 = sub_22C90381C();
    v32 = MEMORY[0x28223BE20](v31);
    *(&v41 - 4) = v32;
    *(&v41 - 3) = v33;
    v34 = v42;
    *(&v41 - 2) = v42;
    *(&v41 - 1) = v30;
    sub_22C4FB170(v32, v33, sub_22C430BE0, (&v41 - 6), v34);

    v35 = sub_22C90A2CC();
    v37 = v36;

    v47 = v35;
    v48 = v37;
    MEMORY[0x2318B7850](95, 0xE100000000000000);
    sub_22C90382C();
    v38 = sub_22C90A2CC();
    v40 = v39;

    MEMORY[0x2318B7850](v38, v40);

    a1 = v47;
    (*(v27 + 8))(v26, v29);
    return a1;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C42E5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v112 = a3;
  v105 = a2;
  v113 = a1;
  v3 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v106 = &v91 - v5;
  v107 = sub_22C901FAC();
  v104 = *(v107 - 8);
  v6 = *(v104 + 64);
  MEMORY[0x28223BE20](v107);
  v103 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90759C();
  v9 = *(v8 - 8);
  v109 = v8;
  v110 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v102 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v91 - v13;
  v14 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v91 - v16;
  v18 = sub_22C902D0C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_22C902D1C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (&v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v26);
  v111 = &v91 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v91 - v31;
  (*(v19 + 16))(v22, v113, v18);
  v33 = (*(v19 + 88))(v22, v18);
  if (v33 != *MEMORY[0x277D1D7C0])
  {
    (*(v19 + 8))(v22, v18);
    return sub_22C36C640(v112, 1, 1, v18);
  }

  v101 = v33;
  v113 = v19;
  (*(v19 + 96))(v22, v18);
  v34 = *v22;
  swift_projectBox();
  sub_22C3A7214();
  v100 = v14;
  v35 = *&v17[*(v14 + 48)];
  (*(v24 + 32))(v32, v17, v23);
  v36 = sub_22C902C9C();
  v98 = sub_22C4309E4(&qword_27D9BC1A8, MEMORY[0x277D1D780]);
  v99 = v36;
  sub_22C909F0C();
  sub_22C74B2EC();
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    (*(v24 + 8))(v32, v23);

    return sub_22C36C640(v112, 1, 1, v18);
  }

  v39 = v111;
  v97 = *(v24 + 16);
  v97(v111, v32, v23);
  v40 = v23;
  v41 = v24;
  if ((*(v24 + 88))(v39, v23) != *MEMORY[0x277D1D820])
  {
LABEL_24:
    v90 = *(v41 + 8);
    v90(v32, v40);
    sub_22C36C640(v112, 1, 1, v18);
    return (v90)(v39, v40);
  }

  v93 = v24 + 16;
  v94 = v32;
  v97(v28, v39, v23);
  v95 = v23;
  v96 = v24;
  (*(v24 + 96))(v28, v23);
  v43 = *v28;
  v42 = v28[1];
  v44 = *MEMORY[0x277D1E0A0];
  v45 = v109;
  v46 = v110;
  v47 = v108;
  v92 = *(v110 + 104);
  v92(v108, v44, v109);
  v48 = sub_22C90758C();
  v50 = v49;
  v51 = v45;
  v52 = v43;
  v53 = *(v46 + 8);
  v110 = v46 + 8;
  v53(v47, v51);
  if (v48 == v52 && v50 == v42)
  {
    v41 = v96;
LABEL_14:

    goto LABEL_15;
  }

  v55 = sub_22C90B4FC();

  if (v55)
  {
    v41 = v96;
LABEL_15:

    v32 = v94;
    v40 = v95;
    v39 = v111;
    goto LABEL_16;
  }

  v82 = v102;
  v83 = v52;
  v84 = v109;
  v92(v102, *MEMORY[0x277D1E090], v109);
  v85 = sub_22C90758C();
  v87 = v86;
  v53(v82, v84);
  if (v85 == v83 && v87 == v42)
  {
    v41 = v96;
    goto LABEL_14;
  }

  v89 = sub_22C90B4FC();

  v40 = v95;
  v41 = v96;
  v32 = v94;
  v39 = v111;
  if ((v89 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  v59 = *(v41 + 8);
  v58 = v41 + 8;
  v57 = v59;
  (v59)(v39, v40);
  v60 = v106;
  sub_22C3A7214();
  v61 = v107;
  if (sub_22C370B74(v60, 1, v107) == 1)
  {
    sub_22C36DD28(v60, &qword_27D9BC030, &unk_22C911CC0);
    sub_22C430A48();
    swift_allocError();
    *v62 = xmmword_22C912340;
    *(v62 + 16) = 4;
    swift_willThrow();
    return (v57)(v32, v40);
  }

  else
  {
    v111 = v57;
    v63 = v104;
    v64 = v103;
    (*(v104 + 32))();
    v106 = v18;
    v65 = v100;
    v110 = swift_allocBox();
    v66 = *(v65 + 48);
    v108 = v67;
    v109 = v66;
    v97(v67, v32, v40);
    sub_22C3A5908(&qword_27D9BAF20, &qword_22C90D7C8);
    v68 = sub_22C3A5908(&qword_27D9BAF28, &unk_22C90D7D0);
    v96 = v58;
    v69 = v68 - 8;
    v70 = *(*(v68 - 8) + 72);
    v71 = (*(*(v68 - 8) + 80) + 32) & ~*(*(v68 - 8) + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_22C90F800;
    v73 = (v72 + v71);
    v74 = *(v69 + 56);
    *v73 = 0;
    (*(*(v99 - 8) + 104))(v73, *MEMORY[0x277D1D778], v99);
    v75 = swift_allocBox();
    (*(v63 + 16))(v76, v64, v61);
    *(v73 + v74) = v75;
    v77 = *(v113 + 104);
    v78 = v73 + v74;
    v79 = v106;
    v77(v78, *MEMORY[0x277D1D798], v106);
    v80 = sub_22C909F0C();
    (*(v63 + 8))(v64, v61);
    (v111)(v94, v95);
    *&v108[v109] = v80;
    v81 = v112;
    *v112 = v110;
    v77(v81, v101, v79);
    return sub_22C36C640(v81, 0, 1, v79);
  }
}

BOOL sub_22C42EFE4()
{
  v0 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  sub_22C57F990(&v7 - v2);
  v4 = sub_22C908A0C();
  v5 = sub_22C370B74(v3, 1, v4) != 1;
  sub_22C36DD28(v3, &qword_27D9BA808, &qword_22C90C6E0);
  return v5;
}

uint64_t sub_22C42F114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a4;
  result = sub_22C42F188(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v11);
  *a4 = v11;
  return result;
}

uint64_t sub_22C42F188(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v59 = a5;
  v9 = sub_22C902D0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v49 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v52 = v48 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v48 - v16;
  v18 = sub_22C3A5908(&qword_27D9BC248, &unk_22C912440);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v48 - v20;
  sub_22C8920A0(v57, a1, a2, a3);
  v53 = v57[0];
  v54 = v57[1];
  v55 = v57[2];
  v56 = v58;
  v50 = v10;
  v51 = (v10 + 32);
  v48[4] = v10 + 8;
  v48[5] = v10 + 16;
  v48[3] = v10 + 40;
  v48[1] = a1;

  v48[0] = a3;

  while (1)
  {
    sub_22C890534();
    v22 = sub_22C3A5908(&qword_27D9BC190, &unk_22C9121A0);
    if (sub_22C370B74(v21, 1, v22) == 1)
    {
      sub_22C36A674();
    }

    v23 = *(v22 + 48);
    v24 = *v51;
    (*v51)(v17, v21, v9);
    v24(v52, &v21[v23], v9);
    v25 = *v59;
    sub_22C6280AC();
    v28 = v27;
    v29 = *(v25 + 16);
    v30 = (v26 & 1) == 0;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v31 = v26;
    if (*(v25 + 24) >= v29 + v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC250, qword_22C912450);
        sub_22C90B16C();
      }
    }

    else
    {
      v32 = v59;
      sub_22C88CA14();
      v33 = *v32;
      sub_22C6280AC();
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_16;
      }

      v28 = v34;
    }

    v36 = *v59;
    if (v31)
    {
      v38 = v49;
      v37 = v50;
      v39 = v17;
      v40 = v52;
      (*(v50 + 16))(v49, v52, v9);
      v41 = *(v37 + 8);
      v42 = v40;
      v17 = v39;
      v41(v42, v9);
      v41(v39, v9);
      (*(v37 + 40))(v36[7] + *(v37 + 72) * v28, v38, v9);
      a4 = 1;
    }

    else
    {
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v43 = *(v50 + 72) * v28;
      v24((v36[6] + v43), v17, v9);
      v24((v36[7] + v43), v52, v9);
      v44 = v36[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_15;
      }

      v36[2] = v46;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void sub_22C42F5CC(uint64_t a1, char a2, uint64_t *a3)
{
  v77 = a3;
  v6 = sub_22C902D0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v57 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  v75 = sub_22C902C9C();
  v17 = *(v75 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v75);
  v76 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22C3A5908(&qword_27D9BAF28, &unk_22C90D7D0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v71 = &v57 - v24;
  v70 = *(a1 + 16);
  if (!v70)
  {
LABEL_16:

    return;
  }

  v25 = v17;
  v26 = 0;
  v69 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v27 = *(v22 + 48);
  v67 = v7;
  v68 = v27;
  v74 = (v25 + 32);
  v72 = v3;
  v73 = (v7 + 32);
  v60 = v7 + 16;
  v61 = (v7 + 8);
  v62 = (v25 + 8);
  v63 = v25;
  v58 = (v7 + 40);
  v65 = v23;
  v66 = a1;
  v64 = v14;
  v59 = v11;
  while (1)
  {
    if (v26 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_22C90B54C();
      __break(1u);
      goto LABEL_24;
    }

    v28 = *(v23 + 72);
    v29 = v71;
    sub_22C3A7214();
    v30 = *v74;
    (*v74)(v76, v29, v75);
    v31 = *v73;
    v32 = &v29[v68];
    v33 = v6;
    (*v73)(v16, v32, v6);
    v34 = *v77;
    sub_22C6287BC();
    v37 = v36;
    v38 = *(v34 + 16);
    v39 = (v35 & 1) == 0;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_21;
    }

    v40 = v35;
    if (*(v34 + 24) >= v38 + v39)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC1A0, &unk_22C9121B0);
        sub_22C90B16C();
      }
    }

    else
    {
      v41 = v77;
      sub_22C88E450();
      v42 = *v41;
      sub_22C6287BC();
      if ((v40 & 1) != (v44 & 1))
      {
        goto LABEL_23;
      }

      v37 = v43;
    }

    v45 = *v77;
    if (v40)
    {
      break;
    }

    v45[(v37 >> 6) + 8] |= 1 << v37;
    v30((v45[6] + *(v63 + 72) * v37), v76, v75);
    v51 = v45[7] + *(v67 + 72) * v37;
    v6 = v33;
    v31(v51, v16, v33);
    v52 = v45[2];
    v53 = __OFADD__(v52, 1);
    v54 = v52 + 1;
    if (v53)
    {
      goto LABEL_22;
    }

    v45[2] = v54;
LABEL_15:
    v23 = v65;
    a1 = v66;
    ++v26;
    a2 = 1;
    if (v70 == v26)
    {
      goto LABEL_16;
    }
  }

  v46 = *(v67 + 72) * v37;
  v47 = v59;
  (*(v67 + 16))(v59, v45[7] + v46, v33);
  v48 = v64;
  v49 = v72;
  sub_22C42DA44(v47, v16, MEMORY[0x277D1D800], v64);
  v72 = v49;
  if (!v49)
  {
    v50 = *v61;
    (*v61)(v47, v33);
    v50(v16, v33);
    v6 = v33;
    (*v62)(v76, v75);
    (*v58)(v45[7] + v46, v48, v33);
    goto LABEL_15;
  }

  v55 = *v61;
  (*v61)(v47, v33);
  v80 = v72;
  v56 = v72;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v55(v16, v33);
    (*v62)(v76, v75);

    return;
  }

LABEL_24:
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000001BLL, 0x800000022C9305A0);
  sub_22C90B12C();
  MEMORY[0x2318B7850](39, 0xE100000000000000);
  sub_22C90B1AC();
  __break(1u);
}

void sub_22C42FC3C(uint64_t a1, char a2, uint64_t *a3)
{
  v77 = a3;
  v6 = sub_22C902D0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v57 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  v75 = sub_22C902C9C();
  v17 = *(v75 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v75);
  v76 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22C3A5908(&qword_27D9BAF28, &unk_22C90D7D0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v71 = &v57 - v24;
  v70 = *(a1 + 16);
  if (!v70)
  {
LABEL_16:

    return;
  }

  v25 = v17;
  v26 = 0;
  v69 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v27 = *(v22 + 48);
  v67 = v7;
  v68 = v27;
  v74 = (v25 + 32);
  v72 = v3;
  v73 = (v7 + 32);
  v60 = v7 + 16;
  v61 = (v7 + 8);
  v62 = (v25 + 8);
  v63 = v25;
  v58 = (v7 + 40);
  v65 = v23;
  v66 = a1;
  v64 = v14;
  v59 = v11;
  while (1)
  {
    if (v26 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_22C90B54C();
      __break(1u);
      goto LABEL_24;
    }

    v28 = *(v23 + 72);
    v29 = v71;
    sub_22C3A7214();
    v30 = *v74;
    (*v74)(v76, v29, v75);
    v31 = *v73;
    v32 = &v29[v68];
    v33 = v6;
    (*v73)(v16, v32, v6);
    v34 = *v77;
    sub_22C6287BC();
    v37 = v36;
    v38 = *(v34 + 16);
    v39 = (v35 & 1) == 0;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_21;
    }

    v40 = v35;
    if (*(v34 + 24) >= v38 + v39)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC1A0, &unk_22C9121B0);
        sub_22C90B16C();
      }
    }

    else
    {
      v41 = v77;
      sub_22C88E450();
      v42 = *v41;
      sub_22C6287BC();
      if ((v40 & 1) != (v44 & 1))
      {
        goto LABEL_23;
      }

      v37 = v43;
    }

    v45 = *v77;
    if (v40)
    {
      break;
    }

    v45[(v37 >> 6) + 8] |= 1 << v37;
    v30((v45[6] + *(v63 + 72) * v37), v76, v75);
    v51 = v45[7] + *(v67 + 72) * v37;
    v6 = v33;
    v31(v51, v16, v33);
    v52 = v45[2];
    v53 = __OFADD__(v52, 1);
    v54 = v52 + 1;
    if (v53)
    {
      goto LABEL_22;
    }

    v45[2] = v54;
LABEL_15:
    v23 = v65;
    a1 = v66;
    ++v26;
    a2 = 1;
    if (v70 == v26)
    {
      goto LABEL_16;
    }
  }

  v46 = *(v67 + 72) * v37;
  v47 = v59;
  (*(v67 + 16))(v59, v45[7] + v46, v33);
  v48 = v64;
  v49 = v72;
  sub_22C42BD98(v47, v16, v64);
  v72 = v49;
  if (!v49)
  {
    v50 = *v61;
    (*v61)(v47, v33);
    v50(v16, v33);
    v6 = v33;
    (*v62)(v76, v75);
    (*v58)(v45[7] + v46, v48, v33);
    goto LABEL_15;
  }

  v55 = *v61;
  (*v61)(v47, v33);
  v80 = v72;
  v56 = v72;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v55(v16, v33);
    (*v62)(v76, v75);

    return;
  }

LABEL_24:
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000001BLL, 0x800000022C9305A0);
  sub_22C90B12C();
  MEMORY[0x2318B7850](39, 0xE100000000000000);
  sub_22C90B1AC();
  __break(1u);
}

void sub_22C430298(uint64_t a1, char a2, uint64_t *a3)
{
  v77 = a3;
  v6 = sub_22C902C4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v57 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  v75 = sub_22C902C9C();
  v17 = *(v75 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v75);
  v76 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22C3A5908(&qword_27D9BAF48, &qword_22C90D7F0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v71 = &v57 - v24;
  v70 = *(a1 + 16);
  if (!v70)
  {
LABEL_16:

    return;
  }

  v25 = v17;
  v26 = 0;
  v69 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v27 = *(v22 + 48);
  v67 = v7;
  v68 = v27;
  v74 = (v25 + 32);
  v72 = v3;
  v73 = (v7 + 32);
  v60 = v7 + 16;
  v61 = (v7 + 8);
  v62 = (v25 + 8);
  v63 = v25;
  v58 = (v7 + 40);
  v65 = v23;
  v66 = a1;
  v64 = v14;
  v59 = v11;
  while (1)
  {
    if (v26 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_22C90B54C();
      __break(1u);
      goto LABEL_24;
    }

    v28 = *(v23 + 72);
    v29 = v71;
    sub_22C3A7214();
    v30 = *v74;
    (*v74)(v76, v29, v75);
    v31 = *v73;
    v32 = &v29[v68];
    v33 = v6;
    (*v73)(v16, v32, v6);
    v34 = *v77;
    sub_22C6287BC();
    v37 = v36;
    v38 = *(v34 + 16);
    v39 = (v35 & 1) == 0;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_21;
    }

    v40 = v35;
    if (*(v34 + 24) >= v38 + v39)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC228, &qword_22C922850);
        sub_22C90B16C();
      }
    }

    else
    {
      v41 = v77;
      sub_22C88E6C4();
      v42 = *v41;
      sub_22C6287BC();
      if ((v40 & 1) != (v44 & 1))
      {
        goto LABEL_23;
      }

      v37 = v43;
    }

    v45 = *v77;
    if (v40)
    {
      break;
    }

    v45[(v37 >> 6) + 8] |= 1 << v37;
    v30((v45[6] + *(v63 + 72) * v37), v76, v75);
    v51 = v45[7] + *(v67 + 72) * v37;
    v6 = v33;
    v31(v51, v16, v33);
    v52 = v45[2];
    v53 = __OFADD__(v52, 1);
    v54 = v52 + 1;
    if (v53)
    {
      goto LABEL_22;
    }

    v45[2] = v54;
LABEL_15:
    v23 = v65;
    a1 = v66;
    ++v26;
    a2 = 1;
    if (v70 == v26)
    {
      goto LABEL_16;
    }
  }

  v46 = *(v67 + 72) * v37;
  v47 = v59;
  (*(v67 + 16))(v59, v45[7] + v46, v33);
  v48 = v64;
  v49 = v72;
  sub_22C42DA44(v47, v16, MEMORY[0x277D1D758], v64);
  v72 = v49;
  if (!v49)
  {
    v50 = *v61;
    (*v61)(v47, v33);
    v50(v16, v33);
    v6 = v33;
    (*v62)(v76, v75);
    (*v58)(v45[7] + v46, v48, v33);
    goto LABEL_15;
  }

  v55 = *v61;
  (*v61)(v47, v33);
  v80 = v72;
  v56 = v72;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v55(v16, v33);
    (*v62)(v76, v75);

    return;
  }

LABEL_24:
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000001BLL, 0x800000022C9305A0);
  sub_22C90B12C();
  MEMORY[0x2318B7850](39, 0xE100000000000000);
  sub_22C90B1AC();
  __break(1u);
}

uint64_t sub_22C430908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, void (*a10)(uint64_t, uint64_t), char *a11, void *a12)
{
  result = sub_22C42CE28(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  if (v12)
  {
    *a12 = v12;
  }

  return result;
}

uint64_t sub_22C4309E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22C430A48()
{
  result = qword_27D9BC220;
  if (!qword_27D9BC220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC220);
  }

  return result;
}

uint64_t sub_22C430ABC()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 32);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C430B30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C430B88()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C430BEC(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_22C430C08(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C430C48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22C430C8C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

void sub_22C430CDC()
{
  sub_22C430E9C(319, &qword_27D9BC268);
  if (v0 <= 0x3F)
  {
    sub_22C430DD8();
    if (v1 <= 0x3F)
    {
      sub_22C430E34();
      if (v2 <= 0x3F)
      {
        sub_22C430E9C(319, &qword_28142FA20);
        if (v3 <= 0x3F)
        {
          type metadata accessor for FullPlannerPreferences();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_22C430DD8()
{
  result = qword_281434518;
  if (!qword_281434518)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281434518);
  }

  return result;
}

void sub_22C430E34()
{
  if (!qword_27D9BC270)
  {
    sub_22C9071BC();
    v0 = sub_22C90A7EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BC270);
    }
  }
}

void sub_22C430E9C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22C90AC6C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_22C430EE8()
{
  result = qword_27D9BC278;
  if (!qword_27D9BC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC278);
  }

  return result;
}

uint64_t sub_22C430F3C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

__n128 sub_22C430F8C@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  result = v1[2];
  v4 = *v1;
  *(a1 + 48) = *(v1 + 6);
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  *a1 = v4;
  return result;
}

uint64_t sub_22C430FA8()
{
  sub_22C36FF94((v0 + v1));
  sub_22C36FF94((v0 + v1 + 40));
  sub_22C36FF94((v0 + v1 + 80));
  sub_22C36FF94((v0 + v1 + 120));
  v2 = *(v0 + v1 + 160);

  return swift_unknownObjectRelease();
}

uint64_t sub_22C430FF4()
{
  v3 = *(v1 - 96);

  return sub_22C42B5B0(v0);
}

void sub_22C431014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23)
{
  sub_22C370030();
  v292 = v24;
  v293 = v23;
  v295 = v26;
  v296 = v25;
  v278 = v27;
  v290 = v29;
  v291 = v28;
  v31 = v30;
  v33 = v32;
  v285 = v34;
  v297 = a23;
  v294 = a22;
  v298 = a21;
  v35 = type metadata accessor for FullPlannerPreferences();
  v36 = sub_22C369914(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C369838();
  v258 = v40 - v39;
  sub_22C36BA0C();
  v41 = sub_22C9014CC();
  v42 = sub_22C369824(v41);
  v263 = v43;
  v264 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C369838();
  v262 = (v47 - v46);
  v48 = sub_22C3A5908(&qword_27D9BC288, &qword_22C912620);
  sub_22C369914(v48);
  v50 = *(v49 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v51);
  v269 = v256 - v52;
  sub_22C36BA0C();
  v266 = sub_22C907F9C();
  v53 = sub_22C369824(v266);
  v261 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22C3698E4();
  v259 = v57;
  sub_22C369930();
  MEMORY[0x28223BE20](v58);
  sub_22C36BA64();
  v260 = v59;
  v60 = sub_22C3A5908(&qword_27D9BC290, &qword_22C912628);
  sub_22C369914(v60);
  v62 = *(v61 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v63);
  v273 = v256 - v64;
  v65 = sub_22C3A5908(&qword_27D9BC200, &unk_22C9123F0);
  sub_22C369914(v65);
  v67 = *(v66 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v68);
  v277 = v256 - v69;
  sub_22C36BA0C();
  v281 = type metadata accessor for RenderableTool();
  v70 = sub_22C36985C(v281);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22C369838();
  v75 = v74 - v73;
  v275 = sub_22C9036EC();
  v76 = sub_22C369824(v275);
  v282 = v77;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v76);
  sub_22C3698E4();
  v272 = v80;
  sub_22C369930();
  MEMORY[0x28223BE20](v81);
  sub_22C36BA64();
  v274 = v82;
  sub_22C36BA0C();
  v83 = sub_22C9063DC();
  v84 = sub_22C369824(v83);
  v283 = v85;
  v284 = v84;
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v84);
  sub_22C3698E4();
  v270 = v88;
  sub_22C369930();
  MEMORY[0x28223BE20](v89);
  v257 = v256 - v90;
  sub_22C369930();
  MEMORY[0x28223BE20](v91);
  v93 = v256 - v92;
  v94 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v95 = sub_22C369914(v94);
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  sub_22C3698E4();
  v268 = v98;
  sub_22C369930();
  MEMORY[0x28223BE20](v99);
  sub_22C36BA64();
  v280 = v100;
  sub_22C36BA0C();
  v101 = sub_22C902D0C();
  v102 = sub_22C369824(v101);
  v286 = v103;
  v287 = v102;
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  sub_22C3698E4();
  v267 = v106;
  sub_22C369930();
  MEMORY[0x28223BE20](v107);
  sub_22C36BA64();
  v279 = v108;
  v109 = sub_22C3A5908(&qword_27D9BC298, &unk_22C912630);
  sub_22C369914(v109);
  v111 = *(v110 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v112);
  v114 = v256 - v113;
  v115 = type metadata accessor for ToolPromptMap(0);
  v116 = sub_22C36985C(v115);
  v118 = *(v117 + 64);
  MEMORY[0x28223BE20](v116);
  sub_22C3698E4();
  v276 = v119;
  sub_22C369930();
  MEMORY[0x28223BE20](v120);
  v122 = v256 - v121;
  v288 = type metadata accessor for ResolvableTool();
  v123 = sub_22C36985C(v288);
  v125 = *(v124 + 64);
  MEMORY[0x28223BE20](v123);
  sub_22C3698E4();
  v256[1] = v126;
  sub_22C369930();
  MEMORY[0x28223BE20](v127);
  v265 = v256 - v128;
  sub_22C369930();
  MEMORY[0x28223BE20](v129);
  sub_22C36BA64();
  v271 = v130;
  v131 = v33;
  v132 = v33;
  v309 = v31;
  v133 = v290;
  sub_22C56F15C(v132, v31, v114);
  v134 = sub_22C370B74(v114, 1, v115);
  v289 = v131;
  if (v134 != 1)
  {
    sub_22C4362CC();
    sub_22C903FFC();
    v168 = sub_22C9063CC();
    v169 = sub_22C90AACC();
    if (os_log_type_enabled(v168, v169))
    {
      *swift_slowAlloc() = 0;
      sub_22C37F09C(&dword_22C366000, v170, v171, "Resolving tool using prompt mapper");
      sub_22C3699EC();
    }

    v172 = *(v283 + 8);
    v172(v93, v284);
    sub_22C436324();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v151 = v309;
    v280 = v172;
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C3DE2C8(v133);
      sub_22C373278();
      sub_22C43637C(v75, v174);
    }

    else
    {
      v177 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
      v178 = v282;
      v180 = v274;
      v179 = v275;
      (*(v282 + 32))(v274, v75, v275);
      v181 = sub_22C9037DC();
      sub_22C36985C(v181);
      v183 = v75 + v177;
      v184 = v180;
      (*(v182 + 8))(v183);
      v185 = v272;
      (*(v178 + 16))(v272, v180, v179);
      v186 = (*(v178 + 88))(v185, v179);
      v189 = *(v178 + 8);
      v187 = v178 + 8;
      v188 = v189;
      if (v186 == *MEMORY[0x277D1ECF8])
      {
        v188(v185, v179);
        v281 = *(v133 + 8);
        v190 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
        v282 = v187;
        v191 = v190;
        v192 = swift_allocBox();
        v194 = v193;
        v195 = *(v191 + 48);
        *v193 = v289;
        v193[1] = v309;
        v196 = *MEMORY[0x277D1D820];
        v197 = sub_22C902D1C();
        sub_22C36985C(v197);
        (*(v198 + 104))(v194, v196);
        sub_22C902C9C();
        sub_22C4366A0();
        sub_22C436234(v199, v200);

        v201 = v287;
        *(v194 + v195) = sub_22C909F0C();
        v151 = v309;
        v202 = v267;
        *v267 = v192;
        v203 = v286;
        (*(v286 + 104))(v202, *MEMORY[0x277D1D7C0], v201);
        v204 = v268;
        sub_22C605684(v202, v281);
        sub_22C3DE2C8(v133);
        (*(v203 + 8))(v202, v201);
        v188(v274, v275);
        LODWORD(v202) = sub_22C370B74(v204, 1, v201);
        sub_22C36DD28(v204, &qword_27D9BB640, &unk_22C912190);
        v205 = v202 == 1;
        v206 = v297;
        v207 = v294;
        if (!v205)
        {

          sub_22C36A810();
          sub_22C43637C(v206, v208);
          sub_22C4366C8();
          sub_22C38B810();
          sub_22C43637C(v122, v209);
          goto LABEL_12;
        }

LABEL_19:
        v214 = v276;
        sub_22C436324();

        v310 = v122;
        v215 = sub_22C4323BC(v278, v292);
        v217 = v216;

        v218 = v298;
        sub_22C378A4C(v298, &v299);

        v219 = v277;
        v220 = v289;
        sub_22C3726C4();
        v221 = v293;
        sub_22C4328DC(v222, v291, v214, v215, v217, v223, v207, v224);
        if (v221)
        {

          sub_22C36A810();
          sub_22C43637C(v297, v225);
          sub_22C36FF94(v218);
          sub_22C3DF2E8(v296);
          sub_22C38B810();
          sub_22C43637C(v310, v226);
          goto LABEL_26;
        }

        sub_22C38B810();
        sub_22C43637C(v310, v227);
        if (sub_22C370B74(v219, 1, v288) != 1)
        {
          sub_22C36BC00();
          sub_22C4362CC();
LABEL_28:
          sub_22C36BC00();
          sub_22C4362CC();
          v230 = sub_22C434DCC();
          v232 = v231;
          v233 = v270;
          sub_22C903F7C();

          v234 = sub_22C9063CC();
          v235 = sub_22C90AACC();

          v311 = v234;
          if (os_log_type_enabled(v234, v235))
          {
            v236 = swift_slowAlloc();
            v299 = swift_slowAlloc();
            *v236 = 136315394;
            v237 = sub_22C36F9F4(v220, v151, &v299);

            *(v236 + 4) = v237;
            *(v236 + 12) = 2080;
            v238 = sub_22C36F9F4(v230, v232, &v299);

            *(v236 + 14) = v238;
            _os_log_impl(&dword_22C366000, v311, v235, "FullPlanner believes the planner's use of %s is refering to %s", v236, 0x16u);
            swift_arrayDestroy();
            sub_22C3699EC();
            sub_22C3699EC();

            sub_22C36A810();
            sub_22C43637C(v297, v239);
            sub_22C4366C8();
            v240 = v270;
          }

          else
          {

            sub_22C36A810();
            sub_22C43637C(v297, v242);
            sub_22C4366C8();
            v240 = v233;
          }

          v280(v240, v284);
          sub_22C36BC00();
          v229 = v285;
          sub_22C4362CC();
          v176 = 0;
          goto LABEL_25;
        }

        sub_22C36A810();
        sub_22C43637C(v297, v228);
        sub_22C4366C8();
        v211 = &qword_27D9BC200;
        v212 = &unk_22C9123F0;
        v213 = v219;
        goto LABEL_23;
      }

      v188(v184, v179);
      sub_22C3DE2C8(v133);
      v188(v185, v179);
    }

    v207 = v294;
    goto LABEL_19;
  }

  sub_22C36DD28(v114, &qword_27D9BC298, &unk_22C912630);
  v135 = v133;
  v136 = *(v133 + 8);
  v137 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
  v138 = swift_allocBox();
  v140 = v139;
  v141 = *(v137 + 48);
  *v139 = v131;
  v139[1] = v309;
  v142 = *MEMORY[0x277D1D820];
  v143 = sub_22C902D1C();
  sub_22C36985C(v143);
  (*(v144 + 104))(v140, v142);
  sub_22C902C9C();
  sub_22C4366A0();
  sub_22C436234(v145, v146);

  v147 = v287;
  *(v140 + v141) = sub_22C909F0C();
  v148 = v279;
  *v279 = v138;
  v149 = v286;
  (*(v286 + 104))(v148, *MEMORY[0x277D1D7C0], v147);
  v150 = v280;
  sub_22C605684(v148, v136);
  sub_22C3DE2C8(v135);
  (*(v149 + 8))(v148, v147);
  LODWORD(v135) = sub_22C370B74(v150, 1, v147);
  sub_22C36DD28(v150, &qword_27D9BB640, &unk_22C912190);
  if (v135 != 1)
  {

    sub_22C36A810();
    sub_22C43637C(v297, v175);
    sub_22C4366C8();
LABEL_12:
    v176 = 1;
LABEL_24:
    v229 = v285;
LABEL_25:
    sub_22C36C640(v229, v176, 1, v288);
    goto LABEL_26;
  }

  v151 = v309;

  v152 = v273;
  sub_22C3726C4();
  sub_22C90757C();
  v153 = sub_22C90759C();
  v154 = sub_22C370B74(v152, 1, v153);
  v155 = v296;
  v156 = v297;
  v157 = v298;
  v158 = v295;
  if (v154 != 1)
  {

    sub_22C36A810();
    sub_22C43637C(v156, v210);
    sub_22C36FF94(v157);
    sub_22C3DF2E8(v155);
    v211 = &qword_27D9BC290;
    v212 = &qword_22C912628;
    v213 = v152;
LABEL_23:
    sub_22C36DD28(v213, v211, v212);
    v176 = 1;
    goto LABEL_24;
  }

  sub_22C36DD28(v152, &qword_27D9BC290, &qword_22C912628);
  if (!v158)
  {

    v241 = v269;
    sub_22C36C640(v269, 1, 1, v266);
LABEL_35:
    sub_22C36DD28(v241, &qword_27D9BC288, &qword_22C912620);
    v299 = 0;
    v300 = 0xE000000000000000;
    sub_22C90AF5C();
    MEMORY[0x2318B7850](0x1000000000000017, 0x800000022C930650);
    v245 = sub_22C3726C4();
    MEMORY[0x2318B7850](v245);

    MEMORY[0x2318B7850](0xD00000000000003ELL, 0x800000022C930670);

    MEMORY[0x2318B7850](0xD000000000000035, 0x800000022C930610);

    v246 = v299;
    v247 = v300;
    sub_22C430A48();
    swift_allocError();
    *v248 = v246;
    *(v248 + 8) = v247;
    *(v248 + 16) = 0;
    swift_willThrow();

    sub_22C36A810();
    sub_22C43637C(v156, v249);
    sub_22C36FF94(v157);
    sub_22C3DF2E8(v296);
    goto LABEL_26;
  }

  sub_22C3726C4();
  sub_22C436CC8();

  v160 = v299;
  v159 = v300;
  v161 = v301;
  v162 = v302;
  v163 = v303;
  v304 = v299;
  v305 = v300;
  v306 = v301;
  v307 = v302;
  v308 = v303;
  v164 = v262;
  FullPlannerDBToolAlias.databaseValue.getter(v262);
  sub_22C43627C(v160, v159, v161, v162, v163);
  v165 = v269;
  v166 = v293;
  sub_22C43E9A0();
  if (!v166)
  {
    (*(v263 + 8))(v164, v264);

    v243 = v266;
    v244 = sub_22C370B74(v165, 1, v266);
    v156 = v297;
    v157 = v298;
    v241 = v165;
    if (v244 == 1)
    {

      goto LABEL_35;
    }

    (*(v261 + 32))(v260, v165, v243);
    v250 = v257;
    sub_22C903FFC();
    v251 = sub_22C9063CC();
    v252 = sub_22C90AACC();
    v253 = os_log_type_enabled(v251, v252);
    v220 = v289;
    if (v253)
    {
      *swift_slowAlloc() = 0;
      sub_22C37F09C(&dword_22C366000, v254, v255, "Resolving tool directly from the Toolbox");
      sub_22C3699EC();
    }

    v280 = *(v283 + 8);
    v280(v250, v284);
    (*(v261 + 16))(v259, v260, v266);
    sub_22C42F0B8(v296, &v299);
    sub_22C436324();

    sub_22C433EC0();
    (*(v261 + 8))(v260, v266);
    goto LABEL_28;
  }

  sub_22C36A810();
  sub_22C43637C(v297, v167);
  sub_22C4366C8();
  (*(v263 + 8))(v164, v264);
LABEL_26:
  sub_22C36FB20();
}

uint64_t sub_22C4323BC(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v41 = a2;
  v2 = sub_22C90972C();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22C90977C();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C9036EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RenderableTool();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v36 - v24;
  sub_22C436324();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C43637C(v18, type metadata accessor for RenderableTool);
    v26 = sub_22C908EAC();
    sub_22C36C640(v23, 1, 1, v26);
  }

  else
  {
    v27 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
    (*(v11 + 32))(v14, v18, v10);
    sub_22C9036BC();
    (*(v11 + 8))(v14, v10);
    v28 = sub_22C9037DC();
    (*(*(v28 - 8) + 8))(&v18[v27], v28);
  }

  sub_22C407C2C();
  v29 = sub_22C908EAC();
  if (sub_22C370B74(v25, 1, v29) == 1)
  {
    sub_22C36DD28(v25, &qword_27D9BC1E8, &qword_22C9123B0);
LABEL_10:

    return v40;
  }

  if (!v41)
  {
    (*(*(v29 - 8) + 8))(v25, v29);
    goto LABEL_10;
  }

  v30 = sub_22C908DDC();
  MEMORY[0x2318B6C30](v30);
  (*(v36 + 8))(v9, v37);
  v32 = v38;
  v31 = v39;
  if ((*(v38 + 88))(v5, v39) != *MEMORY[0x277D730E0])
  {
    (*(v32 + 8))(v5, v31);
    (*(*(v29 - 8) + 8))(v25, v29);
    return v40;
  }

  (*(v32 + 96))(v5, v31);
  v34 = *v5;
  v33 = v5[1];
  (*(*(v29 - 8) + 8))(v25, v29);
  return v34;
}

uint64_t sub_22C4328DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X6>, char *a7@<X7>, uint64_t a8@<X8>)
{
  v209 = a6;
  v211 = a7;
  v206 = a5;
  v189 = a4;
  v207 = a1;
  v203 = a8;
  v188 = sub_22C9063DC();
  v186 = *(v188 - 8);
  v10 = *(v186 + 64);
  MEMORY[0x28223BE20](v188);
  v200 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_22C9037DC();
  v185 = *(v187 - 8);
  v12 = *(v185 + 64);
  v13 = MEMORY[0x28223BE20](v187);
  v184 = &v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v183 = &v172 - v15;
  v201 = sub_22C9036EC();
  v190 = *(v201 - 8);
  v16 = *(v190 + 64);
  MEMORY[0x28223BE20](v201);
  v199 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for ParameterPromptMap(0);
  v180 = *(v181 - 8);
  v18 = *(v180 + 64);
  MEMORY[0x28223BE20](v181);
  v179 = &v172 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_22C90981C();
  v182 = *(v178 - 8);
  v20 = v182[8];
  MEMORY[0x28223BE20](v178);
  v177 = &v172 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v174 = &v172 - v24;
  v175 = sub_22C908EAC();
  v173 = *(v175 - 8);
  v25 = *(v173 + 64);
  MEMORY[0x28223BE20](v175);
  v172 = &v172 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for RenderableTool();
  v27 = *(*(v204 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v204);
  v198 = &v172 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v176 = &v172 - v30;
  v31 = sub_22C902C9C();
  v215 = *(v31 - 8);
  v32 = *(v215 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v194 = (&v172 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v197 = &v172 - v35;
  v36 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v172 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v172 - v42;
  MEMORY[0x28223BE20](v41);
  v195 = &v172 - v44;
  v45 = sub_22C3A5908(&qword_27D9BC2A0, &qword_22C912640);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v49 = &v172 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v51 = &v172 - v50;
  v193 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v52 = *(*(v193 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v193);
  v192 = &v172 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v53);
  v196 = &v172 - v56;
  MEMORY[0x28223BE20](v55);
  v58 = &v172 - v57;
  v202 = type metadata accessor for ResolvableTool();
  v59 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202);
  v191 = &v172 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);

  v210 = a3;
  v212 = a3;

  v61 = v208;
  sub_22C8384D4();
  v63 = v62;
  v205 = v61;
  v208 = a2;

  sub_22C58B1A0(v63, v51);

  sub_22C3A7214();
  v64 = sub_22C370B74(v49, 1, v36);
  v207 = v31;
  if (v64 == 1)
  {
    sub_22C36DD28(v51, &qword_27D9BC2A0, &qword_22C912640);
    v65 = sub_22C902D0C();
    v66 = v58;
    v67 = 1;
  }

  else
  {
    v68 = v195;
    sub_22C407C2C();
    sub_22C3A7214();
    v69 = *(v36 + 48);
    (*(v215 + 32))(v40, v43, v31);
    v65 = sub_22C902D0C();
    v70 = *(v65 - 8);
    (*(v70 + 32))(&v40[v69], &v43[v69], v65);
    (*(v70 + 16))(v58, &v40[v69], v65);
    sub_22C36DD28(v40, &qword_27D9BAF30, &unk_22C90FAA0);
    sub_22C36DD28(v68, &qword_27D9BAF30, &unk_22C90FAA0);
    sub_22C36DD28(v51, &qword_27D9BC2A0, &qword_22C912640);
    v66 = v58;
    v67 = 0;
  }

  sub_22C36C640(v66, v67, 1, v65);
  v71 = v58;
  sub_22C902D0C();
  v72 = sub_22C370B74(v58, 1, v65);
  v73 = v210;
  v74 = v208;
  if (v72 == 1)
  {

    v75 = v198;
    sub_22C436324();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v77 = v202;
    if (EnumCaseMultiPayload == 1)
    {

      sub_22C43637C(v75, type metadata accessor for RenderableTool);
      sub_22C903F7C();
      v78 = sub_22C9063CC();
      v79 = sub_22C90AADC();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = v73;
        v81 = swift_slowAlloc();
        *v81 = 0;
        v82 = v81;
        v73 = v80;
        MEMORY[0x2318B9880](v82, -1, -1);
      }

      (*(v186 + 8))(v200, v188);
      sub_22C36DD28(v71, &qword_27D9BB640, &unk_22C912190);
      goto LABEL_9;
    }

    v94 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
    v95 = v190;
    v96 = *(v190 + 32);
    v197 = v71;
    v97 = v199;
    v98 = v201;
    v96();
    v99 = v185;
    v100 = v183;
    v101 = v77;
    v102 = v187;
    (*(v185 + 32))();
    v103 = v73;
    v104 = v191;
    (*(v95 + 16))(v191, v97, v98);
    v105 = type metadata accessor for ToolPromptMap(0);
    *&v104[v101[5]] = *(v103 + *(v105 + 20));
    *&v104[v101[6]] = *(v103 + *(v105 + 24));
    v106 = &v104[v101[7]];
    v107 = v206;
    *v106 = v189;
    *(v106 + 1) = v107;

    v108 = v184;
    sub_22C9037BC();
    sub_22C436234(&qword_27D9BB820, MEMORY[0x277D1ED48]);
    v109 = v100;
    LODWORD(v215) = sub_22C90AE0C();

    v110 = *(v99 + 8);
    v110(v108, v102);
    v110(v109, v102);
    v111 = v103;
    (*(v95 + 8))(v199, v201);
    sub_22C36DD28(v197, &qword_27D9BB640, &unk_22C912190);
    v104[v101[8]] = v215 & 1;
LABEL_13:
    v112 = v203;
    sub_22C4362CC();
    sub_22C36C640(v112, 0, 1, v101);
    sub_22C36FF94(v209);
    v113 = v111;
    return sub_22C43637C(v113, type metadata accessor for ToolPromptMap);
  }

  v84 = v210;
  v85 = v197;
  *v197 = 7368801;
  *(v85 + 1) = 0xE300000000000000;
  v86 = *MEMORY[0x277D1D770];
  v200 = v65;
  v87 = v215;
  v88 = v207;
  v199 = *(v215 + 104);
  (v199)(v85, v86, v207);
  v89 = v196;
  sub_22C605658(v85, v74);
  v90 = v85;
  v91 = v89;
  v92 = *(v87 + 8);
  v215 = v87 + 8;
  v92(v90, v88);
  v93 = v200;
  if (sub_22C370B74(v91, 1, v200) == 1)
  {

    sub_22C36DD28(v91, &qword_27D9BB640, &unk_22C912190);
LABEL_20:
    v117 = v84;
LABEL_21:
    v213 = 0;
    v214 = 0xE000000000000000;
    sub_22C90AF5C();
    MEMORY[0x2318B7850](0x1000000000000028, 0x800000022C9306B0);
    v129 = v194;
    *v194 = 7368801;
    *(v129 + 8) = 0xE300000000000000;
    v130 = v86;
    v131 = v207;
    (v199)(v129, v130, v207);
    sub_22C605658(v129, v74);

    v92(v129, v131);
    v132 = sub_22C90A1AC();
    MEMORY[0x2318B7850](v132);

    MEMORY[0x2318B7850](0xD00000000000003ELL, 0x800000022C9306E0);

    MEMORY[0x2318B7850](0xD000000000000035, 0x800000022C930610);

    v133 = v213;
    v134 = v214;
    sub_22C430A48();
    swift_allocError();
    *v135 = v133;
    *(v135 + 8) = v134;
    *(v135 + 16) = 2;
    swift_willThrow();

    sub_22C36DD28(v71, &qword_27D9BB640, &unk_22C912190);
    sub_22C36FF94(v209);
    v113 = v117;
    return sub_22C43637C(v113, type metadata accessor for ToolPromptMap);
  }

  v114 = *(v93 - 8);
  if ((*(v114 + 88))(v91, v93) != *MEMORY[0x277D1D7E8])
  {

    (*(v114 + 8))(v91, v93);
    goto LABEL_20;
  }

  (*(v114 + 96))(v91, v93);
  v115 = *v91;
  v116 = *(*v91 + 32);
  v117 = v84;
  if (v116 != 3)
  {

    goto LABEL_21;
  }

  v197 = v71;
  v119 = *(v115 + 16);
  v118 = *(v115 + 24);

  v120 = v176;
  sub_22C436324();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C4242E4(v119, v118, 3);

    sub_22C43637C(v120, type metadata accessor for RenderableTool);
    v117 = v210;
    v71 = v197;
    goto LABEL_21;
  }

  v122 = *v120;
  MEMORY[0x28223BE20](v121);
  v123 = v211;
  *(&v172 - 4) = v209;
  *(&v172 - 3) = v123;
  *(&v172 - 2) = v119;
  *(&v172 - 1) = v118;
  v124 = v174;
  v125 = v205;
  sub_22C6B0870();
  sub_22C4242E4(v119, v118, 3);

  v126 = v175;
  v127 = sub_22C370B74(v124, 1, v175);
  v128 = v197;
  if (v127 == 1)
  {

    sub_22C36DD28(v128, &qword_27D9BB640, &unk_22C912190);
    sub_22C36DD28(v124, &qword_27D9BC1E8, &qword_22C9123B0);
    v77 = v202;
    v73 = v210;
LABEL_9:
    sub_22C36FF94(v209);
    sub_22C43637C(v73, type metadata accessor for ToolPromptMap);
    return sub_22C36C640(v203, 1, 1, v77);
  }

  v136 = v173;
  v137 = v172;
  (*(v173 + 32))(v172, v124, v126);
  v138 = *(v136 + 16);
  v139 = v191;
  v138(v191, v137, v126);
  (*(v190 + 104))(v139, *MEMORY[0x277D1ECE0], v201);
  v140 = sub_22C909F0C();
  MEMORY[0x28223BE20](v140);
  *(&v172 - 2) = v137;
  sub_22C888618();
  v142 = v141;
  v205 = v125;

  sub_22C3A5908(&qword_27D9BC280, &qword_22C912618);
  result = sub_22C90B1CC();
  v143 = result;
  v144 = 0;
  v145 = *(v142 + 64);
  v195 = (v142 + 64);
  v207 = v142;
  v146 = 1 << *(v142 + 32);
  v147 = -1;
  if (v146 < 64)
  {
    v147 = ~(-1 << v146);
  }

  v148 = v147 & v145;
  v149 = (v146 + 63) >> 6;
  v201 = (v182 + 2);
  v198 = (result + 64);
  v199 = (v182 + 1);
  v204 = result;
  v196 = v149;
  if (v148)
  {
    while (1)
    {
      v150 = __clz(__rbit64(v148));
      v208 = (v148 - 1) & v148;
LABEL_34:
      v153 = v150 | (v144 << 6);
      v154 = *(v207 + 56);
      v155 = (*(v207 + 48) + 16 * v153);
      v156 = v155[1];
      v215 = *v155;
      v157 = v182;
      v158 = v182[2];
      v159 = v177;
      v160 = v178;
      v158(v177, v154 + v182[9] * v153, v178);
      v161 = v179;
      v158(v179, v159, v160);
      sub_22C436234(&qword_27D9BAAA8, MEMORY[0x277D1D800]);

      v162 = sub_22C909F0C();
      (v157[1])(v159, v160);
      *&v161[*(v181 + 20)] = v162;
      *&v198[(v153 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v153;
      v143 = v204;
      v163 = (*(v204 + 48) + 16 * v153);
      *v163 = v215;
      v163[1] = v156;
      v164 = *(v143 + 56) + *(v180 + 72) * v153;
      result = sub_22C4362CC();
      v165 = *(v143 + 16);
      v166 = __OFADD__(v165, 1);
      v167 = v165 + 1;
      if (v166)
      {
        break;
      }

      *(v143 + 16) = v167;
      v148 = v208;
      v149 = v196;
      if (!v208)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_29:
    v151 = v144;
    while (1)
    {
      v144 = v151 + 1;
      if (__OFADD__(v151, 1))
      {
        break;
      }

      if (v144 >= v149)
      {

        v101 = v202;
        v168 = v191;
        *&v191[*(v202 + 20)] = v143;
        v169 = type metadata accessor for ToolPromptMap(0);
        v111 = v210;
        *&v168[v101[6]] = *(v210 + *(v169 + 24));
        v170 = &v168[v101[7]];
        v171 = v206;
        *v170 = v189;
        *(v170 + 1) = v171;

        sub_22C36DD28(v197, &qword_27D9BB640, &unk_22C912190);
        v168[v101[8]] = 0;
        (*(v173 + 8))(v172, v175);
        goto LABEL_13;
      }

      v152 = *&v195[8 * v144];
      ++v151;
      if (v152)
      {
        v150 = __clz(__rbit64(v152));
        v208 = (v152 - 1) & v152;
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22C433EC0()
{
  sub_22C370030();
  v156 = v2;
  v160 = v3;
  v5 = v4;
  v146 = type metadata accessor for ParameterPromptMap(0);
  v6 = sub_22C369824(v146);
  v145 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v144 = v11 - v10;
  sub_22C36BA0C();
  v143 = sub_22C90981C();
  v12 = sub_22C369824(v143);
  v149 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v142 = v17 - v16;
  sub_22C36BA0C();
  v153 = type metadata accessor for RenderableTool();
  v18 = sub_22C36985C(v153);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C3698E4();
  v152 = v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA64();
  v141 = v23;
  sub_22C36BA0C();
  v24 = sub_22C908D6C();
  v25 = sub_22C369824(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  v32 = v31 - v30;
  v33 = sub_22C907F9C();
  v34 = sub_22C369824(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  v41 = v40 - v39;
  v42 = sub_22C908EAC();
  v43 = sub_22C369824(v42);
  v158 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22C369838();
  sub_22C36EC5C();
  v140 = type metadata accessor for ResolvableTool();
  v47 = sub_22C36985C(v140);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C369838();
  v150 = v51 - v50;
  (*(v36 + 16))(v41, v5, v33);
  v157 = v33;
  v159 = v36;
  if ((*(v36 + 88))(v41, v33) != *MEMORY[0x277D1E2A8])
  {
    (*(v36 + 8))(v41, v33);
    v59 = v160;
LABEL_13:
    v63 = v59[9];
    sub_22C374168(v59 + 5, v59[8]);
    v64 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
    sub_22C435A54(v152);
    sub_22C9037DC();
    v65 = MEMORY[0x277D84F90];
    v162[0] = MEMORY[0x277D84F90];
    sub_22C436234(&qword_27D9BB820, MEMORY[0x277D1ED48]);
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3E011C();
    sub_22C90AE4C();
    swift_storeEnumTagMultiPayload();
    sub_22C4B9B90(v65);
    v66 = sub_22C37736C();
    v68 = *(v67 - 256);
    v69(v66);
    if (!v0)
    {
      sub_22C373278();
      sub_22C43637C(v152, v72);

      sub_22C370574();
      v73 = v156;
      if (v74)
      {
        v75 = MEMORY[0x277D84F98];
        v76 = v150;
      }

      else
      {

        sub_22C49FB90(v162[0], v156);
        v76 = v150;
        v75 = v97;
      }

      v98 = sub_22C435A54(v76);
      MEMORY[0x28223BE20](v98);
      sub_22C379844();
      sub_22C435F74();
      v100 = v99;

      sub_22C3E022C(v162);
      v101 = sub_22C4366F4();
      v102(v101);
      v103 = v140;
      *(v76 + *(v140 + 20)) = v100;
      *(v76 + *(v140 + 24)) = v75;
      sub_22C388ED4();
LABEL_39:
      sub_22C3DF2E8(v160);
      *(v76 + *(v103 + 32)) = 0;
      sub_22C436324();
      sub_22C36A810();
      sub_22C43637C(v73, v135);
      v92 = type metadata accessor for ResolvableTool;
      v93 = v76;
      goto LABEL_23;
    }

    sub_22C382614();
    (*(v159 + 8))(v5, v157);
    sub_22C373278();
    sub_22C43637C(v152, v70);
    sub_22C3DF2E8(v160);
    v71 = v156;
LABEL_22:
    sub_22C36A810();
    v93 = v71;
LABEL_23:
    sub_22C43637C(v93, v92);
    sub_22C36FB20();
    return;
  }

  v151 = v5;
  (*(v36 + 96))(v41, v33);
  v148 = v42;
  (*(v158 + 32))(v1, v41, v42);
  v147 = v1;
  v52 = sub_22C908DEC();
  v53 = 0;
  v163 = *(v52 + 16);
  v54 = *MEMORY[0x277D72188];
  v55 = *MEMORY[0x277D72178];
  v56 = (v27 + 8);
  while (1)
  {
    if (v163 == v53)
    {
      v53 = v163;
      goto LABEL_11;
    }

    v57 = v52;
    (*(v27 + 16))(v32, v52 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v53, v24);
    v58 = (*(v27 + 88))(v32, v24);
    if (v58 == v54)
    {
      break;
    }

    if (v58 == v55)
    {
      goto LABEL_10;
    }

    (*v56)(v32, v24);
    ++v53;
    v52 = v57;
  }

  (*v56)(v32, v24);
LABEL_10:
  v52 = v57;
LABEL_11:
  v60 = *(v52 + 16);
  v59 = v160;
  if (v53 == v60)
  {

    v61 = sub_22C376628();
    v62(v61);
    goto LABEL_13;
  }

  if (v53 >= v60)
  {
    goto LABEL_42;
  }

  v77 = v52 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v53;
  if (!sub_22C4AF1C0())
  {

    v78 = v160[9];
    sub_22C374168(v160 + 5, v160[8]);
    sub_22C3A5908(&qword_27D9BABC0, &unk_22C90D460);
    v79 = *(v158 + 72);
    v80 = (*(v158 + 80) + 32) & ~*(v158 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_22C90F800;
    v82 = *(v158 + 16);
    v82(v81 + v80, v147, v148);
    *v141 = v81;
    swift_storeEnumTagMultiPayload();
    sub_22C4B9B90(MEMORY[0x277D84F90]);
    v83 = sub_22C37736C();
    v85 = *(v84 - 256);
    v86(v83);
    if (v0)
    {

      sub_22C382614();
      v87 = sub_22C379FAC();
      v88(v87);
      sub_22C373278();
      sub_22C43637C(v141, v89);
      sub_22C3DF2E8(v160);
      v90 = sub_22C376628();
      v91(v90);
      v71 = v156;
      goto LABEL_22;
    }

    sub_22C373278();
    sub_22C43637C(v141, v94);

    v95 = sub_22C370574();
    if (v96)
    {
      v136 = MEMORY[0x277D84F98];
    }

    else
    {

      sub_22C49FB90(v162[0], v156);
      v136 = v104;
    }

    (v82)(v150, v147, v148, v95);
    v105 = *MEMORY[0x277D1ECE0];
    v106 = sub_22C9036EC();
    sub_22C36985C(v106);
    (*(v107 + 104))(v150, v105);
    v108 = sub_22C909F0C();
    MEMORY[0x28223BE20](v108);
    sub_22C379844();
    sub_22C888618();
    v110 = v109;

    sub_22C3A5908(&qword_27D9BC280, &qword_22C912618);
    sub_22C90B1CC();
    v111 = 0;
    v112 = *(v110 + 64);
    v138 = v110 + 64;
    v154 = v110;
    v113 = *(v110 + 32);
    sub_22C36D280();
    v116 = v115 & v114;
    v137 = (v117 + 63) >> 6;
    v164 = v118;
    v139 = v118 + 8;
    v119 = v151;
    while (v116)
    {
      v120 = __clz(__rbit64(v116));
      v155 = (v116 - 1) & v116;
LABEL_36:
      v123 = v120 | (v111 << 6);
      v124 = (*(v154 + 48) + 16 * v123);
      v125 = v124[1];
      v161 = *v124;
      v126 = *(v149 + 16);
      v126(v142, *(v154 + 56) + *(v149 + 72) * v123, v143);
      v126(v144, v142, v143);
      sub_22C902D0C();
      sub_22C436234(&qword_27D9BAAA8, MEMORY[0x277D1D800]);

      v127 = sub_22C909F0C();
      (*(v149 + 8))(v142, v143);
      *(v144 + *(v146 + 20)) = v127;
      *(v139 + ((v123 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v123;
      v128 = (v164[6] + 16 * v123);
      *v128 = v161;
      v128[1] = v125;
      v129 = v164[7] + *(v145 + 72) * v123;
      sub_22C436688();
      sub_22C4362CC();
      v130 = v164[2];
      v131 = __OFADD__(v130, 1);
      v132 = v130 + 1;
      if (v131)
      {
        goto LABEL_41;
      }

      v164[2] = v132;
      v119 = v151;
      v116 = v155;
    }

    v121 = v111;
    while (1)
    {
      v111 = v121 + 1;
      if (__OFADD__(v121, 1))
      {
        break;
      }

      if (v111 >= v137)
      {
        sub_22C3E022C(v162);

        (*(v159 + 8))(v119, v157);
        v103 = v140;
        v76 = v150;
        *(v150 + *(v140 + 20)) = v164;
        *(v150 + *(v140 + 24)) = v136;
        sub_22C388ED4();
        v133 = sub_22C37F080();
        v134(v133);
        v73 = v156;
        goto LABEL_39;
      }

      ++v121;
      if (*(v138 + 8 * v111))
      {
        sub_22C37FCE8();
        v155 = v122;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22C434DCC()
{
  v2 = v0;
  v3 = sub_22C90384C();
  v4 = sub_22C369824(v3);
  v61 = v5;
  v62 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v60 = v9 - v8;
  sub_22C36BA0C();
  v10 = sub_22C908EAC();
  v11 = sub_22C369824(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v18 = v17 - v16;
  v19 = sub_22C9099FC();
  v20 = sub_22C369824(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  sub_22C36EC5C();
  v25 = sub_22C9036EC();
  v26 = sub_22C369824(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v33 = v32 - v31;
  (*(v28 + 16))(v32 - v31, v2, v25);
  v34 = (*(v28 + 88))(v33, v25);
  if (v34 == *MEMORY[0x277D1ECE0])
  {
    v35 = sub_22C3726B4();
    v36(v35);
    v37 = sub_22C3885B4();
    v38(v37);
    sub_22C4366B8();
    sub_22C90AF5C();

    sub_22C36A828();
    v63 = v39;
LABEL_10:
    v53 = sub_22C908E7C();
    MEMORY[0x2318B7850](v53);

    MEMORY[0x2318B7850](41, 0xE100000000000000);
    v55 = v63;
    (*(v13 + 8))(v18, v10);
    return v55;
  }

  if (v34 == *MEMORY[0x277D1ECE8])
  {
    v40 = sub_22C3726B4();
    v41(v40);
    (*(v22 + 32))(v1, v33, v19);
    sub_22C4366B8();
    sub_22C90AF5C();

    sub_22C36A828();
    v64 = v42 | 1;
    v43 = sub_22C9099CC();
    MEMORY[0x2318B7850](v43, v54);

    MEMORY[0x2318B7850](41, 0xE100000000000000);
    v55 = v64;
    (*(v22 + 8))(v1, v19);
    return v55;
  }

  if (v34 == *MEMORY[0x277D1ECD8])
  {
    v44 = sub_22C3726B4();
    v45(v44);
    v46 = sub_22C3885B4();
    v47(v46);
    sub_22C4366B8();
    sub_22C90AF5C();

    v48 = 0x53797469746E652ELL;
LABEL_9:
    v63 = v48;
    goto LABEL_10;
  }

  if (v34 == *MEMORY[0x277D1ECD0])
  {
    v49 = sub_22C3726B4();
    v50(v49);
    v51 = sub_22C3885B4();
    v52(v51);
    sub_22C4366B8();
    sub_22C90AF5C();

    v48 = 0x41746E65696C632ELL;
    goto LABEL_9;
  }

  if (v34 == *MEMORY[0x277D1ECF8])
  {
    v57 = sub_22C3726B4();
    v58(v57);
    (*(v61 + 32))(v60, v33, v62);
    v59 = sub_22C9037FC();
    MEMORY[0x2318B7850](v59);

    MEMORY[0x2318B7850](41, 0xE100000000000000);
    v55 = 0x72746E6F4369752ELL;
    (*(v61 + 8))(v60, v62);
    return v55;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

BOOL sub_22C4352DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v3 = sub_22C3A5908(&qword_27D9BC160, &unk_22C912170);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = &v30 - v5;
  v6 = sub_22C902C9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RenderableTool();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  v20 = *(v7 + 16);
  v20(&v30 - v18, v31, v6);
  v21 = *(v16 + 56);
  v22 = sub_22C902D0C();
  (*(*(v22 - 8) + 16))(&v19[v21], v32, v22);
  sub_22C436324();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C36DD28(v19, &qword_27D9BAF30, &unk_22C90FAA0);
    sub_22C43637C(v14, type metadata accessor for RenderableTool);
    return 0;
  }

  sub_22C43637C(v14, type metadata accessor for RenderableTool);
  v20(v10, v19, v6);
  if ((*(v7 + 88))(v10, v6) != *MEMORY[0x277D1D770])
  {
    sub_22C36DD28(v19, &qword_27D9BAF30, &unk_22C90FAA0);
    (*(v7 + 8))(v10, v6);
    return 0;
  }

  (*(v7 + 96))(v10, v6);
  v24 = *v10;
  v23 = *(v10 + 1);
  if (qword_27D9BA620 != -1)
  {
    swift_once();
  }

  v25 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C37AA60(v25, qword_27D9BC2E0);
  v26 = v30;
  sub_22C437ADC();

  sub_22C36DD28(v19, &qword_27D9BAF30, &unk_22C90FAA0);
  v27 = sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
  v28 = sub_22C370B74(v26, 1, v27) != 1;
  sub_22C36DD28(v26, &qword_27D9BC160, &unk_22C912170);
  return v28;
}

uint64_t sub_22C4356E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22C90977C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C374168(a2, a2[3]);
  sub_22C47FCDC();
  v14 = sub_22C9096FC();
  v23 = v13;
  v16 = sub_22C4FB170(v14, v15, sub_22C436434, v22, a3);
  v18 = v17;

  (*(v10 + 8))(v13, v9);
  if (v16 == a4 && v18 == a5)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_22C90B4FC();
  }

  return v20 & 1;
}

void sub_22C435870()
{
  sub_22C370030();
  v21 = v0;
  v2 = v1;
  v3 = sub_22C90981C();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = *v2;
  v22 = v2[1];
  v13 = sub_22C908DCC();
  v14 = 0;
  v23 = *(v13 + 16);
  while (1)
  {
    if (v23 == v14)
    {

      v19 = 1;
      v20 = v21;
      goto LABEL_13;
    }

    if (v14 >= *(v13 + 16))
    {
      break;
    }

    (*(v6 + 16))(v11, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v3);
    if (sub_22C9097DC() == v12 && v15 == v22)
    {

LABEL_12:

      v20 = v21;
      (*(v6 + 32))(v21, v11, v3);
      v19 = 0;
LABEL_13:
      sub_22C36C640(v20, v19, 1, v3);
      sub_22C36FB20();
      return;
    }

    v17 = v12;
    v18 = sub_22C90B4FC();

    if (v18)
    {
      goto LABEL_12;
    }

    (*(v6 + 8))(v11, v3);
    ++v14;
    v12 = v17;
  }

  __break(1u);
}

uint64_t sub_22C435A54@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_22C9036EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C908EAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C907F9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v1, v12);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x277D1E2A8])
  {
    (*(v13 + 96))(v16, v12);
    v18 = *(v8 + 32);
    v18(v11, v16, v7);
    v19 = sub_22C908E5C();
    v18(v6, v11, v7);
    v20 = MEMORY[0x277D1ECD8];
    if ((v19 & 1) == 0)
    {
      v20 = MEMORY[0x277D1ECE0];
    }

    (*(v3 + 104))(v6, *v20, v2);
    return (*(v3 + 32))(v25, v6, v2);
  }

  else
  {
    v22 = v25;
    if (v17 == *MEMORY[0x277D1E2B0])
    {
      (*(v13 + 96))(v16, v12);
      v23 = sub_22C9099FC();
      (*(*(v23 - 8) + 32))(v22, v16, v23);
      return (*(v3 + 104))(v22, *MEMORY[0x277D1ECE8], v2);
    }

    else
    {
      result = sub_22C90B4EC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22C435DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C90981C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  sub_22C49FB90(*(a1 + *(v12 + 20)), a2);
  if (v3)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v15 = v13;

  (*(v8 + 32))(a3, v11, v7);
  result = type metadata accessor for ParameterPromptMap(0);
  *(a3 + *(result + 20)) = v15;
  return result;
}

uint64_t type metadata accessor for ResolvableTool()
{
  result = qword_27D9BC2A8;
  if (!qword_27D9BC2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C435F74()
{
  sub_22C370030();
  v2 = v1;
  v40 = v3;
  v4 = type metadata accessor for ParameterPromptMap(0);
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_22C369838();
  v6 = sub_22C36EC5C();
  v7 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(v6);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22C369838();
  v11 = v10 - v9;
  sub_22C3A5908(&qword_27D9BC280, &qword_22C912618);
  v12 = 0;
  v41 = v2;
  v42 = sub_22C90B1CC();
  v14 = *(v2 + 64);
  v13 = v2 + 64;
  v15 = *(v13 - 32);
  sub_22C36D280();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v37 = v21 + 64;
  if (v18)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v18));
      v43 = (v18 - 1) & v18;
LABEL_8:
      v25 = v22 | (v12 << 6);
      v26 = *(v41 + 56);
      v27 = (*(v41 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v39 + 72);
      sub_22C436324();

      v40(v11);
      if (v0)
      {
        break;
      }

      sub_22C43637C(v11, type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap);
      *(v37 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v31 = (v42[6] + 16 * v25);
      *v31 = v28;
      v31[1] = v29;
      v32 = v42[7];
      v33 = *(v38 + 72);
      sub_22C436688();
      sub_22C4362CC();
      v34 = v42[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_15;
      }

      v42[2] = v36;
      v18 = v43;
      if (!v43)
      {
        goto LABEL_3;
      }
    }

    sub_22C43637C(v11, type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap);
LABEL_13:
    sub_22C36FB20();
  }

  else
  {
LABEL_3:
    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v12 >= v20)
      {
        goto LABEL_13;
      }

      ++v23;
      if (*(v13 + 8 * v12))
      {
        sub_22C37FCE8();
        v43 = v24;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

uint64_t sub_22C436234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C43627C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

uint64_t sub_22C4362CC()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 32);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C436324()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C43637C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_22C436464()
{
  sub_22C9036EC();
  if (v0 <= 0x3F)
  {
    sub_22C436520();
    if (v1 <= 0x3F)
    {
      sub_22C436588();
      if (v2 <= 0x3F)
      {
        sub_22C436620();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22C436520()
{
  if (!qword_27D9BC2B8)
  {
    type metadata accessor for ParameterPromptMap(255);
    v0 = sub_22C909F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BC2B8);
    }
  }
}

void sub_22C436588()
{
  if (!qword_27D9BC2C0)
  {
    sub_22C902D0C();
    sub_22C436234(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
    v0 = sub_22C909F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BC2C0);
    }
  }
}

void sub_22C436620()
{
  if (!qword_28142FA20)
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_28142FA20);
    }
  }
}

uint64_t sub_22C4366C8()
{
  sub_22C36FF94(*(v0 + 344));
  v1 = *(v0 + 328);

  return sub_22C3DF2E8(v1);
}

uint64_t sub_22C4366F4()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 272);
  return result;
}

void sub_22C43670C()
{
  sub_22C36BA7C();
  v2 = v1;
  v3 = sub_22C3A5908(&qword_27D9BC238, &qword_22C912438);
  sub_22C36985C(v3);
  v5 = *(v4 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C37FCFC();
  v20 = MEMORY[0x277D84F98];
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 64);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; i = v12)
  {
    v12 = i;
LABEL_8:
    v13 = __clz(__rbit64(v9)) | (v12 << 6);
    v14 = *(v2 + 48);
    v15 = sub_22C902C9C();
    sub_22C36985C(v15);
    (*(v16 + 16))(v0, v14 + *(v16 + 72) * v13);
    v17 = *(v2 + 56);
    v18 = sub_22C902C4C();
    sub_22C36985C(v18);
    (*(v19 + 16))(v0 + *(v3 + 48), v17 + *(v19 + 72) * v13);
    sub_22C438E40(&v20, v0);
    v9 &= v9 - 1;
    sub_22C36DD28(v0, &qword_27D9BC238, &qword_22C912438);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      sub_22C36CC48();
      return;
    }

    v9 = *(v2 + 64 + 8 * v12);
    ++i;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_22C36DD28(v0, &qword_27D9BC238, &qword_22C912438);

  __break(1u);
}

uint64_t sub_22C436900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a2;
  v45 = a4;
  v7 = sub_22C3A5908(&qword_27D9BC230, &qword_22C912430);
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  sub_22C369914(v13);
  v15 = *(v14 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C37B974();
  v17 = sub_22C90981C();
  v18 = sub_22C369824(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369ABC();
  v25 = v23 - v24;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v44 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v44 - v30;
  sub_22C437564(a3, v4);
  if (sub_22C370B74(v4, 1, v17) != 1)
  {
    v34 = (*(v20 + 32))(v31, v4, v17);
LABEL_5:
    v33 = v45;
    MEMORY[0x2318B6CE0](v34);
    (*(v20 + 8))(v31, v17);
    v32 = 0;
    goto LABEL_6;
  }

  sub_22C36DD28(v4, &qword_27D9BC0C0, &unk_22C911FA0);
  if (!sub_22C4371E0(a1, v44))
  {
    v37 = sub_22C902C7C();
    sub_22C6056C8(v37, v38, a3);

    v39 = type metadata accessor for ParameterPromptMap(0);
    if (sub_22C370B74(v12, 1, v39) == 1)
    {
      sub_22C36DD28(v12, &qword_27D9BC230, &qword_22C912430);
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_22C90AF5C();
      sub_22C370594();
      sub_22C902C9C();
      sub_22C90B12C();
      MEMORY[0x2318B7850](0xD000000000000022, 0x800000022C9305E0);

      MEMORY[0x2318B7850](0xD000000000000035, 0x800000022C930610);

      v40 = v46;
      v41 = v47;
      sub_22C430A48();
      swift_allocError();
      *v42 = v40;
      *(v42 + 8) = v41;
      *(v42 + 16) = 1;
      return swift_willThrow();
    }

    (*(v20 + 16))(v25, v12, v17);
    sub_22C38B828();
    sub_22C4378D0(v12, v43);
    v34 = (*(v20 + 32))(v29, v25, v17);
    v31 = v29;
    goto LABEL_5;
  }

  v32 = 1;
  v33 = v45;
LABEL_6:
  v35 = sub_22C90941C();
  return sub_22C36C640(v33, v32, 1, v35);
}

void sub_22C436CC8()
{
  sub_22C36BA7C();
  v73 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_22C902D0C();
  v8 = sub_22C369824(v7);
  v74 = v9;
  v75 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v72 = (v12 - v13);
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  v71 = v15;
  v16 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  v17 = sub_22C36985C(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v22 = v20 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v67 - v25;
  MEMORY[0x28223BE20](v24);
  sub_22C36BA64();
  v70 = v27;
  v28 = sub_22C3A5908(&qword_27D9BC2A0, &qword_22C912640);
  v29 = sub_22C369914(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C369ABC();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v67 - v36;
  v38 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v39 = sub_22C369914(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C369ABC();
  v44 = v42 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v67 - v46;
  if (qword_27D9BA6A8 != -1)
  {
    sub_22C377BC0();
    swift_once();
  }

  if (!sub_22C5E935C(v4, v2, qword_27D9E3F80))
  {
    goto LABEL_14;
  }

  v68 = v4;
  v69 = v2;
  v48 = sub_22C4398D4(v73);
  sub_22C58B1A0(v48, v37);

  sub_22C3DB138(v37, v34, &qword_27D9BC2A0, &qword_22C912640);
  v49 = 1;
  if (sub_22C370B74(v34, 1, v16) != 1)
  {
    v50 = v70;
    sub_22C3DB08C(v34, v70, &qword_27D9BAF30, &unk_22C90FAA0);
    sub_22C3DB138(v50, v26, &qword_27D9BAF30, &unk_22C90FAA0);
    v51 = *(v16 + 48);
    v52 = sub_22C902C9C();
    sub_22C36985C(v52);
    (*(v53 + 32))(v22, v26);
    v54 = v74;
    v55 = &v26[v51];
    v56 = v75;
    (*(v74 + 32))(v22 + v51, v55, v75);
    (*(v54 + 16))(v47, v22 + v51, v56);
    sub_22C36DD28(v22, &qword_27D9BAF30, &unk_22C90FAA0);
    sub_22C36DD28(v50, &qword_27D9BAF30, &unk_22C90FAA0);
    v49 = 0;
  }

  sub_22C36DD28(v37, &qword_27D9BC2A0, &qword_22C912640);
  v57 = v75;
  sub_22C36C640(v47, v49, 1, v75);
  sub_22C3DB08C(v47, v44, &qword_27D9BB640, &unk_22C912190);
  if (sub_22C370B74(v44, 1, v57) == 1)
  {
    sub_22C36DD28(v44, &qword_27D9BB640, &unk_22C912190);
LABEL_13:
    v4 = v68;
    v2 = v69;
LABEL_14:
    *v6 = v4;
    *(v6 + 8) = v2;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    goto LABEL_15;
  }

  v58 = v74;
  v59 = *(v74 + 32);
  v60 = v71;
  v59(v71, v44, v57);
  v61 = v72;
  v59(v72, v60, v57);
  if ((*(v58 + 88))(v61, v57) != *MEMORY[0x277D1D7E8])
  {
    (*(v58 + 8))(v61, v57);
    goto LABEL_13;
  }

  (*(v58 + 96))(v61, v57);
  v62 = *v61;
  if (*(*v61 + 32) != 3)
  {
    v66 = *v61;

    goto LABEL_13;
  }

  v64 = *(v62 + 16);
  v63 = *(v62 + 24);

  v65 = v69;
  *v6 = v68;
  *(v6 + 8) = v65;
  *(v6 + 16) = v64;
  *(v6 + 24) = v63;
  *(v6 + 32) = 1;
LABEL_15:

  sub_22C36CC48();
}

BOOL sub_22C4371E0(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C3A5908(&qword_27D9BC160, &unk_22C912170);
  sub_22C369914(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C37B974();
  v9 = sub_22C902C9C();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v17 = (v16 - v15);
  v18 = type metadata accessor for RenderableTool();
  v19 = sub_22C36985C(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v24 = v23 - v22;
  sub_22C43786C(a2, v23 - v22);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  sub_22C4378D0(v24, type metadata accessor for RenderableTool);
  if (a2 != 1)
  {
    return 0;
  }

  (*(v12 + 16))(v17, a1, v9);
  if ((*(v12 + 88))(v17, v9) != *MEMORY[0x277D1D770])
  {
    (*(v12 + 8))(v17, v9);
    return 0;
  }

  (*(v12 + 96))(v17, v9);
  v26 = *v17;
  v25 = v17[1];
  if (qword_27D9BA620 != -1)
  {
    sub_22C371698();
    swift_once();
  }

  v27 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C37AA60(v27, qword_27D9BC2E0);
  sub_22C437ADC();

  v28 = sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
  v29 = sub_22C370B74(v2, 1, v28) != 1;
  sub_22C36DD28(v2, &qword_27D9BC160, &unk_22C912170);
  return v29;
}

uint64_t sub_22C437468()
{
  v0 = sub_22C3A5908(&qword_27D9BC308, &qword_22C912668);
  sub_22C3F0160(v0, qword_27D9BC2C8);
  sub_22C37AA60(v0, qword_27D9BC2C8);
  sub_22C3A5908(&qword_27D9BC320, &unk_22C92CFE0);
  return sub_22C90306C();
}

uint64_t sub_22C4374F8()
{
  v0 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C3F0160(v0, qword_27D9BC2E0);
  sub_22C37AA60(v0, qword_27D9BC2E0);
  return MEMORY[0x2318B05B0](7368801, 0xE300000000000000, MEMORY[0x277D83E40]);
}

uint64_t sub_22C437564@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BC230, &qword_22C912430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v30 - v6;
  v8 = sub_22C3A5908(&qword_27D9BC300, &qword_22C912660);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v30 - v10;
  sub_22C902C7C();
  if (qword_27D9BA618 != -1)
  {
    swift_once();
  }

  v12 = sub_22C3A5908(&qword_27D9BC308, &qword_22C912668);
  sub_22C37AA60(v12, qword_27D9BC2C8);
  sub_22C437928();

  v13 = sub_22C3A5908(&qword_27D9BC310, &unk_22C92CFD0);
  if (sub_22C370B74(v11, 1, v13) == 1)
  {
    v14 = &qword_27D9BC300;
    v15 = &qword_22C912660;
    v16 = v11;
  }

  else
  {
    swift_getKeyPath();
    sub_22C9030AC();

    v17 = v30[0];
    v18 = v30[1];
    v19 = v30[2];
    v20 = v30[3];
    (*(*(v13 - 8) + 8))(v11, v13);
    v21 = MEMORY[0x2318B76D0](v17, v18, v19, v20);
    v23 = v22;

    sub_22C6056C8(v21, v23, a1);

    v24 = type metadata accessor for ParameterPromptMap(0);
    if (sub_22C370B74(v7, 1, v24) != 1)
    {
      v28 = sub_22C90981C();
      (*(*(v28 - 8) + 16))(a2, v7, v28);
      sub_22C4378D0(v7, type metadata accessor for ParameterPromptMap);
      v26 = a2;
      v27 = 0;
      v25 = v28;
      return sub_22C36C640(v26, v27, 1, v25);
    }

    v14 = &qword_27D9BC230;
    v15 = &qword_22C912430;
    v16 = v7;
  }

  sub_22C36DD28(v16, v14, v15);
  v25 = sub_22C90981C();
  v26 = a2;
  v27 = 1;
  return sub_22C36C640(v26, v27, 1, v25);
}

uint64_t sub_22C43786C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RenderableTool();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C4378D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C437928()
{
  v0 = sub_22C3A5908(&qword_27D9BC308, &qword_22C912668);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_22C439EB0(&qword_27D9BC318, &qword_27D9BC308, &qword_22C912668);
  sub_22C90305C();
  sub_22C87FAE0();
  sub_22C90309C();
  (*(v1 + 8))(v4, v0);
}

void sub_22C437ADC()
{
  sub_22C36BA7C();
  v0 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C369824(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37FCFC();
  sub_22C439EB0(&qword_27D9BC2F8, &qword_27D9BC170, &unk_22C912180);
  sub_22C90305C();
  sub_22C87FAE0();
  sub_22C90309C();
  v6 = *(v2 + 8);
  v7 = sub_22C36EBF0();
  v8(v7);

  sub_22C36CC48();
}

void sub_22C437C60()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C369824(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C37FCFC();
  sub_22C439EB0(&qword_27D9BC2F8, &qword_27D9BC170, &unk_22C912180);
  sub_22C90305C();
  if (v1 >> 14 < v3 >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_22C90ACCC();
    sub_22C90309C();
    v10 = *(v6 + 8);
    v11 = sub_22C36EBF0();
    v12(v11);

    sub_22C36CC48();
  }
}

uint64_t sub_22C437DF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v204 = a5;
  v205 = a6;
  v198 = a4;
  v208 = a2;
  v203 = a1;
  v7 = sub_22C3A5908(&qword_27D9BC160, &unk_22C912170);
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v201 = &v185 - v11;
  sub_22C36BA0C();
  v195 = sub_22C9063DC();
  v12 = sub_22C369824(v195);
  v194 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  v193 = v16 - v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA64();
  v190 = v19;
  sub_22C36BA0C();
  v189 = sub_22C90981C();
  v20 = sub_22C369824(v189);
  v188 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v187 = v25 - v24;
  v26 = sub_22C3A5908(&qword_27D9BC230, &qword_22C912430);
  sub_22C369914(v26);
  v28 = *(v27 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  v191 = &v185 - v30;
  v31 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v32 = sub_22C369914(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C369ABC();
  v202 = (v35 - v36);
  sub_22C369930();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA64();
  v197 = v38;
  sub_22C36BA0C();
  v210 = sub_22C902C9C();
  v39 = sub_22C369824(v210);
  v215 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C369ABC();
  v200 = v43 - v44;
  sub_22C369930();
  MEMORY[0x28223BE20](v45);
  sub_22C36BA64();
  v196 = v46;
  sub_22C36BA0C();
  v47 = sub_22C902D0C();
  v48 = sub_22C369824(v47);
  v209 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22C369838();
  v199 = (v53 - v52);
  v54 = sub_22C3A5908(&qword_27D9BC300, &qword_22C912660);
  sub_22C369914(v54);
  v56 = *(v55 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v57);
  v59 = &v185 - v58;
  v207 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  v60 = sub_22C36985C(v207);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22C369ABC();
  v65 = v63 - v64;
  MEMORY[0x28223BE20](v66);
  v206 = &v185 - v67;
  sub_22C369930();
  MEMORY[0x28223BE20](v68);
  v70 = &v185 - v69;
  v71 = sub_22C9036EC();
  v72 = sub_22C369824(v71);
  v74 = v73;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v72);
  sub_22C369838();
  v79 = v78 - v77;
  v80 = v74[2];
  v192 = a3;
  v80(v79, a3, v71);
  v81 = v74[11];
  v82 = sub_22C36EBF0();
  v84 = v83(v82);
  LODWORD(a3) = *MEMORY[0x277D1ECD8];
  v85 = v74[1];
  v86 = sub_22C36EBF0();
  v87(v86);
  if (v84 != a3)
  {
    goto LABEL_8;
  }

  sub_22C3DB138(v208, v70, &qword_27D9BAF30, &unk_22C90FAA0);
  v88 = *(v207 + 48);
  v89 = v215;
  v90 = v210;
  v91 = (*(v215 + 88))(v70, v210);
  if (v91 != *MEMORY[0x277D1D770])
  {
    (*(v209 + 8))(&v70[v88], v47);
    (*(v89 + 8))(v70, v90);
    goto LABEL_8;
  }

  v92 = v91;
  (*(v89 + 96))(v70, v90);
  v94 = *v70;
  v93 = *(v70 + 1);
  v95 = v209 + 8;
  v96 = &v70[v88];
  v97 = v47;
  v186 = *(v209 + 8);
  v186(v96, v47);
  if (qword_27D9BA618 != -1)
  {
    swift_once();
  }

  v98 = sub_22C3A5908(&qword_27D9BC308, &qword_22C912668);
  sub_22C37AA60(v98, qword_27D9BC2C8);
  sub_22C437928();

  v99 = sub_22C3A5908(&qword_27D9BC310, &unk_22C92CFD0);
  if (sub_22C370B74(v59, 1, v99) == 1)
  {
    sub_22C36DD28(v59, &qword_27D9BC300, &qword_22C912660);
LABEL_8:
    if (qword_27D9BA6A8 != -1)
    {
      sub_22C377BC0();
      swift_once();
    }

    v100 = sub_22C5E935C(v204, v205, qword_27D9E3F80);
    v101 = v206;
    v102 = v47;
    if (!v100)
    {
      goto LABEL_14;
    }

    sub_22C3DB138(v208, v206, &qword_27D9BAF30, &unk_22C90FAA0);
    v103 = *(v207 + 48);
    sub_22C902C7C();
    (*(v215 + 8))(v101, v210);
    if (qword_27D9BA620 != -1)
    {
      sub_22C371698();
      swift_once();
    }

    v104 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
    sub_22C37AA60(v104, qword_27D9BC2E0);
    v105 = v201;
    sub_22C437ADC();

    (*(v209 + 8))(v101 + v103, v47);
    v106 = sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
    v107 = sub_22C370B74(v105, 1, v106);
    result = sub_22C36DD28(v105, &qword_27D9BC160, &unk_22C912170);
    if (v107 == 1)
    {
LABEL_14:
      v109 = v208;
      sub_22C3DB138(v208, v101, &qword_27D9BAF30, &unk_22C90FAA0);
      v110 = v207;
      v111 = *(v207 + 48);
      sub_22C3DB138(v109, v65, &qword_27D9BAF30, &unk_22C90FAA0);
      v112 = v209;
      v113 = v202;
      (*(v209 + 32))(v202, v65 + *(v110 + 48), v102);
      sub_22C36C640(v113, 0, 1, v102);
      sub_22C602CBC(v113, v101);
      (*(v215 + 8))(v65, v210);
      return (*(v112 + 8))(v101 + v111, v102);
    }

    return result;
  }

  v205 = v95;
  swift_getKeyPath();
  sub_22C9030AC();

  v114 = v211;
  v115 = v212;
  v116 = v213;
  v117 = v214;
  (*(*(v99 - 8) + 8))(v59, v99);
  v118 = MEMORY[0x2318B76D0](v114, v115, v116, v117);
  v120 = v119;

  v121 = v196;
  *v196 = 0x746567726174;
  *(v121 + 8) = 0xE600000000000000;
  v122 = v215;
  v123 = v210;
  (*(v215 + 104))(v121, v92, v210);
  v124 = v197;
  sub_22C605658(v121, v198);
  v127 = *(v122 + 8);
  v126 = v122 + 8;
  v125 = v127;
  v127(v121, v123);
  if (sub_22C370B74(v124, 1, v97) == 1)
  {
    v215 = v97;
    v128 = v118;
    v204 = v125;
    sub_22C36DD28(v124, &qword_27D9BB640, &unk_22C912190);
    v129 = v193;
    sub_22C903F7C();

    v130 = sub_22C9063CC();
    v131 = sub_22C90AADC();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v211 = v133;
      *v132 = 136315138;
      *(v132 + 4) = sub_22C36F9F4(v128, v120, &v211);
      sub_22C36FF94(v133);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v194 + 8))(v129, v195);
    v134 = v200;
    v135 = v208;
    sub_22C902C6C();

    v136 = v206;
    sub_22C3DB138(v135, v206, &qword_27D9BAF30, &unk_22C90FAA0);
    v137 = v202;
    v138 = v215;
    (*(v209 + 32))(v202, v136 + *(v207 + 48), v215);
    sub_22C36C640(v137, 0, 1, v138);
    sub_22C602CBC(v137, v134);
    return v204(v136, v123);
  }

  else
  {
    v139 = *(v209 + 32);
    v201 = (v209 + 32);
    v198 = v139;
    v139(v199, v124, v97);
    v140 = type metadata accessor for ResolvableTool();
    v141 = v191;
    sub_22C6056C8(v118, v120, *(v192 + *(v140 + 20)));
    v142 = type metadata accessor for ParameterPromptMap(0);
    if (sub_22C370B74(v141, 1, v142) == 1)
    {
      sub_22C36DD28(v141, &qword_27D9BC230, &qword_22C912430);
      v211 = 0;
      v212 = 0xE000000000000000;
      sub_22C90AF5C();
      sub_22C370594();
      v143 = sub_22C439F18();
      MEMORY[0x2318B7850](v143);

      MEMORY[0x2318B7850](0xD000000000000022, 0x800000022C9305E0);

      MEMORY[0x2318B7850](0xD000000000000035, 0x800000022C930610);

      v144 = v211;
      v145 = v212;
      sub_22C430A48();
      swift_allocError();
      *v146 = v144;
      *(v146 + 8) = v145;
      *(v146 + 16) = 1;
      swift_willThrow();
      sub_22C439F04();
      return v147();
    }

    else
    {
      v204 = v125;
      v215 = v126;
      v148 = v188;
      v149 = v187;
      v150 = v189;
      (*(v188 + 16))(v187, v141, v189);
      sub_22C38B828();
      sub_22C4378D0(v141, v151);
      v152 = sub_22C9097DC();
      v196 = v153;
      v197 = v152;
      (*(v148 + 8))(v149, v150);
      v154 = v190;
      sub_22C903F7C();

      v155 = sub_22C9063CC();
      v156 = sub_22C90AACC();

      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v211 = swift_slowAlloc();
        *v157 = 136315394;
        v158 = sub_22C439F18();
        *(v157 + 4) = sub_22C36F9F4(v158, v159, v160);
        *(v157 + 12) = 2080;
        v161 = sub_22C439F18();
        *(v157 + 14) = sub_22C36F9F4(v161, v162, v163);
        _os_log_impl(&dword_22C366000, v155, v156, "[PromptMapperResolver] Resolving shadowed parameter %s to %s", v157, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();
      }

      (*(v194 + 8))(v154, v195);
      sub_22C439F18();
      v164 = v208;
      sub_22C902C6C();

      v195 = swift_allocBox();
      v194 = v165;
      v166 = sub_22C3A5908(&qword_27D9BC168, &unk_22C9123C0);
      v193 = swift_allocBox();
      v168 = v167;
      v169 = *(v166 + 48);
      v192 = *(v166 + 64);
      *v167 = 1;
      v170 = swift_allocBox();
      v172 = v171;
      v173 = sub_22C3A5908(&qword_27D9BC1F0, &qword_22C9123B8);
      v174 = swift_allocBox();
      v176 = (v175 + *(v173 + 48));
      v177 = v209;
      (*(v209 + 16))(v175, v199, v97);
      v178 = v196;
      *v176 = v197;
      v176[1] = v178;
      *v172 = v174;
      v179 = *(v177 + 104);
      (v179)(v172, *MEMORY[0x277D1D7B8], v97);
      *&v168[v169] = v170;
      v180 = *MEMORY[0x277D1D7F0];
      (v179)(&v168[v169], v180, v97);
      v181 = v206;
      sub_22C3DB138(v164, v206, &qword_27D9BAF30, &unk_22C90FAA0);
      v198(&v168[v192], v181 + *(v207 + 48), v97);
      *v194 = v193;
      v182 = *MEMORY[0x277D1D7D8];
      v179();
      v183 = v202;
      *v202 = v195;
      (v179)(v183, v180, v97);
      sub_22C36C640(v183, 0, 1, v97);
      sub_22C602CBC(v183, v200);
      sub_22C439F04();
      v184();
      return v204(v181, v210);
    }
  }
}

uint64_t sub_22C438E40(uint64_t a1, uint64_t a2)
{
  v97 = a1;
  v3 = sub_22C902D0C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v91 = &v78[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22C902C5C();
  v88 = *(v6 - 8);
  v89 = v6;
  v7 = *(v88 + 64);
  MEMORY[0x28223BE20](v6);
  v90 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22C3A5908(&qword_27D9BC328, &qword_22C912690);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v96 = &v78[-v11];
  v12 = sub_22C9063DC();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  MEMORY[0x28223BE20](v12);
  v92 = &v78[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_22C3A5908(&qword_27D9BC160, &unk_22C912170);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v85 = &v78[-v17];
  v18 = sub_22C3A5908(&qword_27D9BC300, &qword_22C912660);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v78[-v20];
  v22 = sub_22C3A5908(&qword_27D9BC238, &qword_22C912438);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v78[-v24];
  v26 = sub_22C902C9C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v94 = &v78[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v84 = &v78[-v32];
  MEMORY[0x28223BE20](v31);
  v34 = &v78[-v33];
  v95 = a2;
  sub_22C3DB138(a2, v25, &qword_27D9BC238, &qword_22C912438);
  v93 = v22;
  v35 = *(v22 + 48);
  v36 = *(v27 + 32);
  v98 = v26;
  v36(v34, v25, v26);
  v37 = sub_22C902C4C();
  v38 = *(v37 - 8);
  v40 = v38 + 8;
  v39 = *(v38 + 8);
  v39(&v25[v35], v37);
  v100 = v34;
  sub_22C902C7C();
  if (qword_27D9BA618 != -1)
  {
    swift_once();
  }

  v41 = sub_22C3A5908(&qword_27D9BC308, &qword_22C912668);
  sub_22C37AA60(v41, qword_27D9BC2C8);
  sub_22C437928();

  v42 = sub_22C3A5908(&qword_27D9BC310, &unk_22C92CFD0);
  if (sub_22C370B74(v21, 1, v42) == 1)
  {
    sub_22C36DD28(v21, &qword_27D9BC300, &qword_22C912660);
    sub_22C902C7C();
    if (qword_27D9BA620 != -1)
    {
      swift_once();
    }

    v43 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
    sub_22C37AA60(v43, qword_27D9BC2E0);
    v44 = v85;
    sub_22C437ADC();

    v45 = sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
    if (sub_22C370B74(v44, 1, v45) == 1)
    {
      sub_22C36DD28(v44, &qword_27D9BC160, &unk_22C912170);
      v46 = v94;
      v47 = v100;
      v48 = v98;
      (*(v27 + 16))(v94, v100, v98);
      sub_22C3DB138(v95, v25, &qword_27D9BC238, &qword_22C912438);
      v49 = v96;
      (*(v38 + 32))(v96, &v25[*(v93 + 48)], v37);
      sub_22C36C640(v49, 0, 1, v37);
      sub_22C602FD0(v49, v46);
      v50 = *(v27 + 8);
      v50(v47, v48);
      return (v50)(v25, v48);
    }

    else
    {
      (*(v27 + 8))(v100, v98);
      return sub_22C36DD28(v44, &qword_27D9BC160, &unk_22C912170);
    }
  }

  else
  {
    v83 = v39;
    v85 = v37;
    swift_getKeyPath();
    sub_22C9030AC();

    v52 = v99[0];
    v53 = v99[1];
    v54 = v99[2];
    v55 = v99[3];
    (*(*(v42 - 8) + 8))(v21, v42);
    v82 = MEMORY[0x2318B76D0](v52, v53, v54, v55);
    v57 = v56;

    v58 = v92;
    sub_22C903F7C();
    v59 = v84;
    v60 = v98;
    (*(v27 + 16))(v84, v100, v98);

    v61 = sub_22C9063CC();
    v62 = sub_22C90AACC();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = v59;
      v64 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v99[0] = v80;
      *v64 = 136315394;
      v65 = sub_22C902C7C();
      v81 = v40;
      v66 = v65;
      v68 = v67;
      v69 = *(v27 + 8);
      v79 = v62;
      v84 = v69;
      (v69)(v63, v98);
      v70 = sub_22C36F9F4(v66, v68, v99);
      v60 = v98;

      *(v64 + 4) = v70;
      *(v64 + 12) = 2080;
      *(v64 + 14) = sub_22C36F9F4(v82, v57, v99);
      _os_log_impl(&dword_22C366000, v61, v79, "[PromptMapperResolver] Resolving shadowed parameter %s to %s", v64, 0x16u);
      v71 = v80;
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v71, -1, -1);
      MEMORY[0x2318B9880](v64, -1, -1);

      (*(v86 + 8))(v92, v87);
    }

    else
    {

      v84 = *(v27 + 8);
      (v84)(v59, v60);
      (*(v86 + 8))(v58, v87);
    }

    v73 = v94;
    v72 = v95;
    sub_22C902C6C();

    (*(v88 + 104))(v90, *MEMORY[0x277D1D760], v89);
    sub_22C3DB138(v72, v25, &qword_27D9BC238, &qword_22C912438);
    v74 = *(v93 + 48);
    sub_22C902C1C();
    v75 = v85;
    v83(&v25[v74], v85);
    v76 = v96;
    sub_22C902C2C();
    v77 = v84;
    (v84)(v25, v60);
    sub_22C36C640(v76, 0, 1, v75);
    sub_22C602FD0(v76, v73);
    return v77(v100, v60);
  }
}

void *sub_22C43985C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22C439A38(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_22C4398D4(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_22C43985C(v9, v4, v2);
      MEMORY[0x2318B9880](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v4, v5);
  sub_22C439A38(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_22C439A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40[1] = a2;
  v41 = a1;
  v57 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  v4 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v56 = v40 - v5;
  v55 = sub_22C902D0C();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22C902C9C();
  v9 = *(*(v53 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v53);
  v52 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v61 = v40 - v13;
  v14 = 0;
  v58 = a3;
  v15 = *(a3 + 64);
  v44 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v42 = 0;
  v43 = (v16 + 63) >> 6;
  v50 = v6 + 16;
  v51 = v12 + 16;
  v49 = *MEMORY[0x277D1D770];
  v62 = v12;
  v47 = v12 + 8;
  v48 = v12 + 104;
  v63 = v6;
  v46 = v6 + 8;
  v19 = v53;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v60 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v14 << 6);
    v24 = v58;
    v25 = v61;
    v26 = *(v58 + 48) + *(v62 + 72) * v23;
    v59 = *(v62 + 16);
    v59(v61, v26, v19);
    v27 = *(v24 + 56);
    v28 = *(v63 + 72);
    v45 = v23;
    v29 = *(v63 + 16);
    v31 = v54;
    v30 = v55;
    v29(v54, v27 + v28 * v23, v55);
    v32 = v56;
    v59(v56, v25, v19);
    v33 = v31;
    v34 = v30;
    v29((v32 + *(v57 + 48)), v31, v30);
    v35 = v52;
    *v52 = 7368801;
    *(v35 + 1) = 0xE300000000000000;
    v36 = v62;
    (*(v62 + 104))(v35, v49, v19);
    v37 = sub_22C902C8C();
    v38 = *(v36 + 8);
    v38(v35, v19);
    sub_22C36DD28(v32, &qword_27D9BAF30, &unk_22C90FAA0);
    (*(v63 + 8))(v33, v34);
    v38(v61, v19);
    v18 = v60;
    if (v37)
    {
      *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      if (__OFADD__(v42++, 1))
      {
        __break(1u);
LABEL_15:
        sub_22C838F9C();
        return;
      }
    }
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v43)
    {
      goto LABEL_15;
    }

    v22 = *(v44 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v60 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22C439EB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22C439F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v24;
  a20 = v25;
  v370 = v20;
  v371 = v26;
  v372 = v27;
  v29 = v28;
  v360 = v30;
  v31 = sub_22C9063DC();
  v32 = sub_22C369824(v31);
  v353 = v33;
  v354 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698A8();
  v355 = v36;
  v37 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v38 = sub_22C369914(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v343 = sub_22C4416E8(v41, v340);
  v42 = sub_22C369824(v343);
  v342 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C3698A8();
  sub_22C3698F8(v46);
  v347 = sub_22C902CDC();
  v47 = sub_22C369824(v347);
  v346 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C3698A8();
  sub_22C3698F8(v51);
  v350 = sub_22C902D1C();
  v52 = sub_22C369824(v350);
  v349 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22C3698A8();
  sub_22C3698F8(v56);
  v57 = sub_22C902D0C();
  v58 = sub_22C369824(v57);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22C369ABC();
  v361 = v63 - v64;
  sub_22C369930();
  MEMORY[0x28223BE20](v65);
  sub_22C36BA58();
  v365.isa = v66;
  sub_22C369930();
  MEMORY[0x28223BE20](v67);
  sub_22C36BA58();
  v358 = v68;
  sub_22C369930();
  MEMORY[0x28223BE20](v69);
  sub_22C36BA58();
  v357 = v70;
  sub_22C369930();
  MEMORY[0x28223BE20](v71);
  sub_22C36BA58();
  v359 = v72;
  sub_22C369930();
  MEMORY[0x28223BE20](v73);
  sub_22C36BA58();
  sub_22C3698D4();
  v75 = MEMORY[0x28223BE20](v74);
  v77 = &v340 - v76;
  MEMORY[0x28223BE20](v75);
  sub_22C36BA58();
  v356 = v78;
  sub_22C369930();
  MEMORY[0x28223BE20](v79);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v80);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v81);
  sub_22C3705C8();
  v83 = MEMORY[0x28223BE20](v82);
  v85 = &v340 - v84;
  MEMORY[0x28223BE20](v83);
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v86);
  sub_22C38C344();
  MEMORY[0x28223BE20](v87);
  sub_22C37B03C();
  MEMORY[0x28223BE20](v88);
  sub_22C36BA58();
  v368 = v89;
  sub_22C369930();
  v91 = MEMORY[0x28223BE20](v90);
  sub_22C441744(v91, v92, v93, v94, v95, v96, v97, v98, v340);
  v99 = *(v60 + 16);
  v367 = v29;
  v100 = v29;
  v101 = v60 + 16;
  v373 = v99;
  (v99)(v22, v100, v57);
  v102 = *(v60 + 88);
  v103 = sub_22C372158();
  v105 = v104(v103);
  v106 = v105 == *MEMORY[0x277D1D7C8] || v105 == *MEMORY[0x277D1D798];
  if (v106)
  {
    sub_22C441738();
    v107 = sub_22C372158();
    v108(v107);
    v109 = v370;
    goto LABEL_7;
  }

  v362 = v60;
  v364 = v57;
  v106 = v105 == *MEMORY[0x277D1D7E8];
  v341 = v105;
  if (!v106)
  {
    if (v105 == *MEMORY[0x277D1D7E0])
    {
      v124 = v362;
      v57 = v364;
      (*(v362 + 96))(v22, v364);
      v125.isa = v22->isa;
      sub_22C3A5908(&qword_27D9BC330, &qword_22C9126C8);
      v365.isa = v125.isa;
      v126 = swift_projectBox();
      v127 = sub_22C375E20(v126);
      v373(v127);
      v128 = swift_allocBox();
      v130 = sub_22C37B238(v128, v129);
      sub_22C37B994(v130);
      v109 = v20;
      if (v20)
      {
        v131 = *(v124 + 8);
        v132 = sub_22C379FC8();
        v133(v132);
LABEL_18:
        swift_deallocBox();
LABEL_58:

        goto LABEL_59;
      }

      v363 = v60 + 16;
      v185 = *(v124 + 8);
      v186 = sub_22C379FC8();
      v187(v186);
      v188 = v368;
      *v368 = v125.isa;
      v110 = v188;
      v189 = sub_22C369C00(v124);
      v190(v189);

      v60 = v124;
      goto LABEL_35;
    }

    v57 = v364;
    if (v105 == *MEMORY[0x277D1D7D8])
    {
      v134 = *(v362 + 96);
      v135 = sub_22C372158();
      v136(v135);
      isa = v22->isa;
      v138 = sub_22C3A5908(&qword_27D9BC168, &unk_22C9123C0);
      v365.isa = isa;
      v139 = swift_projectBox();
      v140 = *v139;
      v141 = *(v138 + 64);
      v142 = v373;
      (v373)(v23, &v139[*(v138 + 48)], v57);
      v363 = v101;
      v142(v85, &v139[v141], v57);
      v361 = swift_allocBox();
      v144 = v143;
      v145 = v57;
      v146 = *(v138 + 48);
      *v143 = v140;
      v147 = v371;
      v148 = v372;
      v149 = v370;
      sub_22C439F24(v23, v371, v372);
      if (v149)
      {
        v150 = *(v362 + 8);
        v150(v85, v145);
        v150(v23, v145);
        swift_deallocBox();

LABEL_59:
        sub_22C36FB20();
        return;
      }

      v244 = &v144[*(v138 + 64)];
      sub_22C439F24(v85, v147, v148);
      v60 = v362;
      v284 = *(v362 + 8);
      v57 = v364;
      v284(v85, v364);
      v112 = v371;
      v284(v23, v57);
      v110 = v368;
      *v368 = v361;
      v285 = sub_22C369C00(v60);
      v286(v285);

      v109 = 0;
LABEL_36:
      v191 = *(v60 + 32);
      v192 = v369;
      v191(v369, v110, v57);
      v193 = v366;
      (v112)(v192);
      if (v109)
      {
        (*(v60 + 8))(v192, v57);
      }

      else
      {
        if (sub_22C370B74(v193, 1, v57) == 1)
        {
          sub_22C43ED8C(v193);
          v194 = v369;
        }

        else
        {
          v195 = v359;
          v196 = sub_22C44172C();
          (v191)(v196);
          v197 = v355;
          sub_22C903F7C();
          v198 = v373;
          (v373)(v357, v367, v57);
          v198(v358, v195, v57);
          v199 = sub_22C9063CC();
          v200 = sub_22C90AACC();
          if (os_log_type_enabled(v199, v200))
          {
            v201 = swift_slowAlloc();
            LODWORD(v372) = v200;
            v202 = v357;
            v203 = v201;
            v373 = swift_slowAlloc();
            a10 = v373;
            *v203 = 136380931;
            v204 = sub_22C43EDF4();
            v370 = 0;
            v368 = v204;
            v205 = sub_22C90B47C();
            v371 = v199;
            v206 = v205;
            v207 = v60;
            v208 = v57;
            v210 = v209;
            v211 = *(v207 + 8);
            v362 = v207 + 8;
            v211(v202, v208);
            sub_22C36F9F4(v206, v210, &a10);
            sub_22C3758E0();
            v57 = v208;

            *(v203 + 4) = v202;
            *(v203 + 12) = 2081;
            v212 = v358;
            sub_22C90B47C();
            v211(v212, v208);
            v213 = sub_22C38644C();
            v216 = sub_22C36F9F4(v213, v214, v215);

            *(v203 + 14) = v216;
            v217 = v371;
            _os_log_impl(&dword_22C366000, v371, v372, "[PromptMapperResolver] Modified program AST node: %{private}s -> %{private}s", v203, 0x16u);
            swift_arrayDestroy();
            sub_22C3699EC();
            sub_22C3699EC();

            (*(v353 + 8))(v355, v354);
            v211(v369, v57);
          }

          else
          {

            v218 = *(v60 + 8);
            v218(v358, v57);
            v218(v357, v57);
            (*(v353 + 8))(v197, v354);
            v218(v369, v57);
          }

          v194 = v359;
        }

        v191(v360, v194, v57);
      }

      goto LABEL_59;
    }

    if (v105 == *MEMORY[0x277D1D7B8])
    {
      v168 = v60 + 16;
      v169 = v362;
      v170 = *(v362 + 96);
      v171 = sub_22C372158();
      v172(v171);
      v173 = v22->isa;
      v174 = sub_22C3A5908(&qword_27D9BC1F0, &qword_22C9123B8);
      v365.isa = v173;
      v175 = (swift_projectBox() + *(v174 + 48));
      v176 = v57;
      v177 = v175[1];
      v361 = *v175;
      v178 = sub_22C44172C();
      v373(v178);
      v179 = swift_allocBox();
      v181 = v180;

      sub_22C37B994(v21);
      v370 = v20;
      if (v20)
      {
        v182 = *(v169 + 8);
        v183 = sub_22C37B988();
        v184(v183);

        swift_deallocBox();

        goto LABEL_59;
      }

      v363 = v168;
      v262 = (v181 + *(v174 + 48));
      v263 = *(v169 + 8);
      v264 = sub_22C37B988();
      v265(v264);
      *v262 = v361;
      v262[1] = v177;
      v110 = v368;
      *v368 = v179;
      v266 = sub_22C369C00(v169);
      v267(v266);

      v109 = v370;
      v57 = v176;
      v60 = v169;
LABEL_35:
      v112 = v22;
      goto LABEL_36;
    }

    v60 = v362;
    if (v105 == *MEMORY[0x277D1D7D0])
    {
      v226 = sub_22C3716AC();
      v227(v226);
      v228.isa = v22->isa;
      v229 = v60;
      v230 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
      v365.isa = v228.isa;
      swift_projectBox();
      v231 = *(v230 + 48);
      v232 = v352;
      v233 = sub_22C37B9B0();
      v234 = v373;
      v373(v233);
      v235 = v351;
      v236 = sub_22C44172C();
      v234(v236);
      v361 = swift_allocBox();
      v356 = v237;
      v238 = v101;
      v112 = v371;
      v239 = v372;
      v240 = v370;
      sub_22C439F24(v232, v371, v372);
      if (v240)
      {
        v241 = *(v229 + 8);
        v242 = sub_22C36EC6C();
        v241(v242);
        v243 = sub_22C379FC8();
        v241(v243);
        goto LABEL_18;
      }

      v298 = v361;
      v363 = v238;
      v299 = v356 + *(v230 + 48);
      sub_22C439F24(v235, v112, v239);
      v109 = 0;
      v315 = v362;
      v316 = *(v362 + 8);
      v317 = sub_22C36EC6C();
      v316(v317);
      v318 = sub_22C44176C();
      (v316)(v318, v57);
      v60 = v315;
      v110 = v368;
      *v368 = v298;
      v319 = sub_22C369C00(v315);
      v320(v319);
      goto LABEL_14;
    }

    if (v105 == *MEMORY[0x277D1D7C0])
    {
      v363 = v101;
      v245 = sub_22C3716AC();
      v246(v245);
      v247.isa = v22->isa;
      v248 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
      v365.isa = v247.isa;
      v249 = swift_projectBox();
      sub_22C379858(v249);
      v250 = v349;
      v251 = *(v349 + 16);
      v252 = v348;
      v253 = v350;
      v251(v348);
      v361 = swift_allocBox();
      v255 = v254;
      (v251)(v254, v252, v253);

      v112 = v371;
      v257 = v370;
      v258 = sub_22C440A10(v256, v371, v372);
      if (v257)
      {

        v259 = *(v250 + 8);
        v260 = sub_22C36EC8C();
        v259(v260);
        v261 = sub_22C441720();
        v259(v261);
        swift_deallocBox();

        goto LABEL_59;
      }

      v307 = v258;

      v308 = *(v248 + 48);
      v309 = *(v250 + 8);
      v310 = sub_22C36EC8C();
      v311(v310);
      *(v255 + v308) = v307;
      v110 = v368;
      v60 = v362;
      *v368 = v361;
      v312 = sub_22C369C00(v60);
      v313 = v364;
      v314(v312);

      v109 = 0;
      v57 = v313;
      goto LABEL_36;
    }

    if (v105 == *MEMORY[0x277D1D7B0])
    {
      v363 = v101;
      v287 = sub_22C3716AC();
      v288(v287);
      v365.isa = v22->isa;
      v289 = swift_projectBox();
      v290 = v346;
      v291 = v344;
      v292 = v347;
      (*(v346 + 2))(v344, v289, v347);
      v361 = swift_allocBox();
      v356 = v293;
      v294 = v345;
      sub_22C902CCC();
      v295 = sub_22C902CAC();
      v296 = v371;
      v297 = v370;
      sub_22C43EE4C(v295, v371, v372);
      v109 = v297;
      if (v297)
      {

        (*(v342 + 8))(v294, v343);
        (*(v290 + 1))(v291, v292);
        goto LABEL_18;
      }

      sub_22C902CBC();
      (*(v290 + 1))(v291, v292);
      v110 = v368;
      *v368 = v361;
      v331 = sub_22C369C00(v60);
      v332(v331);

      v112 = v296;
      goto LABEL_36;
    }

    if (v105 == *MEMORY[0x277D1D7F0])
    {
      v300 = v105;
      v301 = sub_22C3716AC();
      v302(v301);
      v303 = v101;
      v304.isa = v22->isa;
      v305 = swift_projectBox();
      (v373)(v77, v305, v57);
      v306 = swift_allocBox();
      sub_22C37B994(v77);
      if (v20)
      {
        (*(v60 + 8))(v77, v57);
        swift_deallocBox();

        goto LABEL_59;
      }

      v363 = v303;
      sub_22C441738();
      v336(v77, v57);
      v337 = v368;
      *v368 = v306;
      (*(v60 + 104))(v337, v300, v57);

      v109 = 0;
      v110 = v337;
      goto LABEL_35;
    }

    if (v105 == *MEMORY[0x277D1D7A0])
    {
      v321 = v105;
      v322 = sub_22C3716AC();
      v323(v322);
      v324 = v101;
      v325.isa = v22->isa;
      swift_projectBox();
      v326 = sub_22C37BD8C(&v373);
      v373(v326);
      v327 = swift_allocBox();
      sub_22C37B994(v23);
      v109 = v20;
      if (v20)
      {
        v328 = *(v60 + 8);
        v329 = sub_22C37BD80();
        v330(v329);
        swift_deallocBox();
        goto LABEL_58;
      }

      v363 = v324;
      sub_22C441738();
      v338 = sub_22C37BD80();
      v339(v338);
      v110 = v368;
      *v368 = v327;
      (*(v60 + 104))(v110, v321, v57);

      goto LABEL_35;
    }

    v333 = v105 == *MEMORY[0x277D1D7F8] || v105 == *MEMORY[0x277D1D7A8];
    v109 = v370;
    if (!v333)
    {
      v363 = v101;
      v110 = v368;
      sub_22C43E6DC(v367, v368);
      sub_22C441738();
      v334 = sub_22C372158();
      v335(v334);
      goto LABEL_8;
    }

LABEL_7:
    v110 = v368;
    v111 = sub_22C44172C();
    v363 = v101;
    v373(v111);
LABEL_8:
    v112 = v371;
    goto LABEL_36;
  }

  v363 = v60 + 16;
  v60 = v362;
  (*(v362 + 96))(v22, v364);
  v113.isa = v22->isa;
  v115 = *(v22->isa + 2);
  v114 = *(v22->isa + 3);
  v116 = *(v22->isa + 32);
  sub_22C3705B4();
  v109 = v370;
  v112 = v371;
  v119 = v373;
  v110 = v368;
  v120 = v356;
  if (!v106)
  {
    v57 = v364;
    (v373)(v356, v367, v364);
LABEL_13:
    v121 = *(v60 + 32);
    v122 = sub_22C441720();
    v123(v122);
LABEL_14:

    goto LABEL_36;
  }

  v352 = v118;
  v347 = v117;
  v346 = v113.isa;
  sub_22C36D6EC();
  if (v151 != 4)
  {
    v219 = swift_allocObject();
    v220 = sub_22C37BD8C(&a18);
    v57 = v347;
    sub_22C4403D8(v220, v347, 5);
    v221 = sub_22C36D390();
    v223 = sub_22C4400F0(v221, v222, v372);
    if (v109)
    {
      v224 = sub_22C37BD80();
      sub_22C4242E4(v224, v225, 5);
LABEL_57:
      sub_22C36D6EC();
      swift_deallocUninitializedObject();
      goto LABEL_58;
    }

    v268 = v223;
    v269 = sub_22C37BD80();
    sub_22C4242E4(v269, v270, 5);
    *(v219 + 16) = v268;
    *(v219 + 24) = 0;
    *(v219 + 32) = 5;
    *v120 = v219;
    v271 = sub_22C377384();
    v272(v271);
    v110 = v368;
    goto LABEL_13;
  }

  v152 = swift_allocObject();
  v153 = *(v352 + 16);
  v154 = MEMORY[0x277D84F90];
  if (!v153)
  {
LABEL_60:
    sub_22C441778(v152);
    v282 = sub_22C377384();
    v283(v282);
    goto LABEL_13;
  }

  v345 = v152;
  v155 = v153;
  sub_22C4403D8(v352, v347, 4);
  a10 = v154;
  v349 = v155;
  sub_22C3B69C4(0, v155, 0);
  v156 = sub_22C44176C();
  v157 = 0;
  v158 = a10;
  v348 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v350 = v156 + v348;
  v351 = (v60 + 8);
  while (v157 < *(v156 + 16))
  {
    v159 = v361;
    v57 = v364;
    v119(v361, v350 + *(v60 + 72) * v157, v364);
    sub_22C439F24(v159, v112, v372);
    if (v109)
    {
      sub_22C44176C();
      sub_22C376640(&a13);
      sub_22C4242E4(v273, v274, v275);
      v276 = *v351;
      v277 = sub_22C372158();
      v278(v277);

      goto LABEL_57;
    }

    v160 = *v351;
    v161 = sub_22C372158();
    v162(v161);
    a10 = v158;
    v164 = *(v158 + 16);
    v163 = *(v158 + 24);
    if (v164 >= v163 >> 1)
    {
      v167 = sub_22C373290(v163);
      sub_22C3B69C4(v167, v164 + 1, 1);
      v158 = a10;
    }

    ++v157;
    *(v158 + 16) = v164 + 1;
    v165 = sub_22C441758(&a14);
    v166(v165, v365.isa, v57);
    v109 = 0;
    v60 = v362;
    v112 = v371;
    v119 = v373;
    v156 = v352;
    if (v349 == v157)
    {
      sub_22C376640(&a13);
      sub_22C4242E4(v279, v280, v281);
      v110 = v368;
      v152 = v345;
      goto LABEL_60;
    }
  }

  __break(1u);
}

void sub_22C43B5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v23;
  a20 = v24;
  v383 = v20;
  v26 = v25;
  v28 = v27;
  v372 = v29;
  v30 = sub_22C9063DC();
  v31 = sub_22C369824(v30);
  v367 = v32;
  v368 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  v378 = v35;
  v36 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v37 = sub_22C369914(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v375 = &v348 - v40;
  v352 = sub_22C901FAC();
  v41 = sub_22C369824(v352);
  v351 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C3698A8();
  sub_22C3698F8(v45);
  v356 = sub_22C902CDC();
  v46 = sub_22C369824(v356);
  v355 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698A8();
  sub_22C3698F8(v50);
  v359 = sub_22C902D1C();
  v51 = sub_22C369824(v359);
  v358 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C3698A8();
  sub_22C3698F8(v55);
  v56 = sub_22C902D0C();
  v57 = sub_22C369824(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22C369ABC();
  v365 = (v62 - v63);
  sub_22C369930();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA58();
  v370 = v65;
  sub_22C369930();
  MEMORY[0x28223BE20](v66);
  sub_22C36BA58();
  v373 = v67;
  sub_22C369930();
  MEMORY[0x28223BE20](v68);
  sub_22C36BA58();
  v366 = v69;
  sub_22C369930();
  MEMORY[0x28223BE20](v70);
  sub_22C36BA58();
  v374 = v71;
  sub_22C369930();
  MEMORY[0x28223BE20](v72);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v73);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v74);
  sub_22C36BA58();
  v364 = v75;
  sub_22C369930();
  MEMORY[0x28223BE20](v76);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v77);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v78);
  sub_22C37B03C();
  MEMORY[0x28223BE20](v79);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v80);
  sub_22C36BA58();
  v363 = v81;
  sub_22C369930();
  v83 = MEMORY[0x28223BE20](v82);
  v85 = &v348 - v84;
  MEMORY[0x28223BE20](v83);
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v86);
  sub_22C36BA58();
  v376 = v87;
  sub_22C369930();
  v89 = MEMORY[0x28223BE20](v88);
  sub_22C441744(v89, v90, v91, v92, v93, v94, v95, v96, v348);
  v97 = v59[2];
  swift_bridgeObjectRetain_n();
  v377 = v28;
  sub_22C44178C();
  v380 = v59 + 2;
  v381 = v97;
  v97();
  v98 = v59[11];
  v99 = sub_22C388EF4();
  v101 = v100(v99);
  v102 = *MEMORY[0x277D1D7C8];
  v382 = v26;
  if (v101 == v102)
  {
    v103 = v59[1];
    sub_22C37B22C();
    swift_bridgeObjectRetain_n();
    v104 = sub_22C388EF4();
    v103(v104);
    v105 = v59;
LABEL_5:
    v107 = v378;
    v108 = v376;
LABEL_6:
    sub_22C44178C();
    v109();
LABEL_7:
    v110 = *(v105 + 32);
    v111 = v379;
    v110(v379, v108, v56);
    v112 = v375;
    v113 = sub_22C379FC8();
    v114 = v383;
    sub_22C423318(v113, v115, v382, v116);
    v383 = v114;
    if (!v114)
    {
      if (sub_22C370B74(v112, 1, v56) == 1)
      {
        sub_22C43ED8C(v112);
        v117 = v379;
      }

      else
      {
        v130 = v374;
        v110(v374, v112, v56);
        sub_22C903F7C();
        v131 = v366;
        sub_22C44178C();
        v132 = v381;
        v381();
        (v132)(v373, v130, v56);
        v133 = sub_22C9063CC();
        LODWORD(v381) = sub_22C90AACC();
        if (os_log_type_enabled(v133, v381))
        {
          v134 = swift_slowAlloc();
          v380 = v134;
          v377 = swift_slowAlloc();
          *v134 = 136380931;
          v375 = sub_22C43EDF4();
          v376 = v133;
          v135 = sub_22C90B47C();
          v136 = *(v105 + 8);
          v136(v131, v56);
          v371 = (v105 + 8);
          v137 = sub_22C379FC8();
          sub_22C36F9F4(v137, v138, v139);
          sub_22C3758E0();

          v140 = v380;
          *(v380 + 4) = v135;
          *(v140 + 6) = 2081;
          sub_22C90B47C();
          v141 = sub_22C372164();
          (v136)(v141);
          v142 = sub_22C370114();
          v145 = sub_22C36F9F4(v142, v143, v144);

          v146 = v380;
          *(v380 + 14) = v145;
          v147 = v376;
          _os_log_impl(&dword_22C366000, v376, v381, "[PromptMapperResolver] Modified program AST node: %{private}s -> %{private}s", v146, 0x16u);
          swift_arrayDestroy();
          sub_22C3699EC();
          sub_22C3699EC();

          (*(v367 + 8))(v378, v368);
          v136(v379, v56);
        }

        else
        {

          v162 = *(v105 + 8);
          v162(v373, v56);
          v163 = sub_22C372164();
          (v162)(v163);
          (*(v367 + 8))(v107, v368);
          v162(v379, v56);
        }

        v117 = v374;
      }

      v110(v372, v117, v56);
      swift_bridgeObjectRelease_n();
      goto LABEL_25;
    }

    (*(v105 + 8))(v111, v56);
    swift_bridgeObjectRelease_n();
LABEL_9:
    swift_bridgeObjectRelease_n();
LABEL_25:
    sub_22C36FB20();
    return;
  }

  v371 = v59;
  v369 = v56;
  if (v101 == *MEMORY[0x277D1D798])
  {
    v105 = v371;
    v106 = v371[1];
    swift_bridgeObjectRetain_n();
    v56 = v369;
    v106(v22, v369);
    goto LABEL_5;
  }

  v118 = v101 == *MEMORY[0x277D1D7E8];
  v119 = v381;
  v349 = v101;
  if (!v118)
  {
    if (v101 == *MEMORY[0x277D1D7E0])
    {
      v148 = v371;
      v149 = v369;
      (v371[12])(v22, v369);
      v150 = *v22;
      v151 = sub_22C3A5908(&qword_27D9BC330, &qword_22C9126C8);
      v152 = swift_projectBox();
      v153 = *v152;
      (v119)(v85, &v152[*(v151 + 48)], v149);
      v154 = swift_allocBox();
      v155 = *(v151 + 48);
      *v156 = v153;
      v157 = v382;
      swift_bridgeObjectRetain_n();
      v158 = v383;
      sub_22C43B5B0(v85, v157);
      if (v158)
      {
        v159 = *(v148 + 8);
        v160 = sub_22C36FC08();
        v161(v160);
        swift_deallocBox();
        swift_bridgeObjectRelease_n();

        goto LABEL_9;
      }

      v383 = 0;
      v213 = *(v148 + 8);
      v214 = sub_22C36FC08();
      v215(v214);
      v108 = v376;
      v376->isa = v154;
      v216 = sub_22C4416C8(v148);
      v217(v216);

      v56 = v149;
      v105 = v148;
      goto LABEL_77;
    }

    if (v101 == *MEMORY[0x277D1D7D8])
    {
      v164 = v371;
      v165 = v369;
      (v371[12])(v22, v369);
      v166 = *v22;
      v167 = sub_22C3A5908(&qword_27D9BC168, &unk_22C9123C0);
      v168 = sub_22C37ABD4();
      v169 = *v168;
      v170 = *(v167 + 64);
      v171 = v363;
      v172 = v381;
      (v381)(v363, &v168[*(v167 + 48)], v165);
      v173 = &v168[v170];
      v174 = v362;
      (v172)(v362, v173, v165);
      v365 = swift_allocBox();
      v175 = *(v167 + 48);
      *v176 = v169;
      v177 = v382;
      swift_bridgeObjectRetain_n();
      v178 = v383;
      sub_22C43B5B0(v171, v177);
      if (v178)
      {
        v179 = *(v164 + 8);
        v179(v174, v165);
        v180 = sub_22C36D390();
        (v179)(v180);
        swift_deallocBox();
        swift_bridgeObjectRelease_n();

        goto LABEL_9;
      }

      v383 = v175;
      v238 = *(v167 + 64);

      v239 = sub_22C36EC8C();
      sub_22C43B5B0(v239, v240);
      v272 = v371;
      v273 = v371[1];
      v274 = v369;
      v273(v174, v369);
      v275 = sub_22C36D390();
      (v273)(v275);
      v105 = v272;
      v56 = v274;
      v108 = v376;
      v376->isa = v365;
      v276 = sub_22C4416C8(v272);
      v277(v276);

      v383 = 0;
      goto LABEL_77;
    }

    v56 = v369;
    if (v101 == *MEMORY[0x277D1D7B8])
    {
      v105 = v371;
      v199 = sub_22C3885CC(v371);
      v200(v199);
      v201 = *v22;
      v202 = v56;
      v203 = sub_22C3A5908(&qword_27D9BC1F0, &qword_22C9123B8);
      v204 = sub_22C37ABD4();
      v205 = v204 + *(v203 + 48);
      v206 = *(v205 + 8);
      v365 = *v205;
      (v381)(v21, v204, v202);
      v207 = swift_allocBox();
      v209 = v208;
      sub_22C374A5C();
      swift_bridgeObjectRetain_n();

      v210 = sub_22C372158();
      v211 = v383;
      sub_22C43B5B0(v210, v212);
      v383 = v211;
      if (v211)
      {
        (*(v105 + 8))(v21, v202);

LABEL_60:
        swift_deallocBox();
        sub_22C374A5C();
        swift_bridgeObjectRelease_n();
        goto LABEL_61;
      }

      v258 = (v209 + *(v203 + 48));
      (*(v105 + 8))(v21, v202);
      *v258 = v365;
      v258[1] = v206;
      v259 = v376;
      v376->isa = v207;
      v260 = *(v105 + 104);
      sub_22C4416DC();
      v261();

      v56 = v202;
      goto LABEL_53;
    }

    if (v101 != *MEMORY[0x277D1D7D0])
    {
      if (v101 == *MEMORY[0x277D1D7C0])
      {
        v241 = v371;
        v242 = sub_22C3885CC(v371);
        v243(v242);
        v244 = *v22;
        v245 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
        v246 = sub_22C37ABD4();
        sub_22C379858(v246);
        v247 = v358;
        v248 = *(v358 + 16);
        v248(v357);
        v365 = swift_allocBox();
        v250 = sub_22C36EC78(v365, v249);
        v248(v250);
        v251 = v382;
        sub_22C374A5C();
        swift_bridgeObjectRetain_n();

        v253 = v383;
        v254 = sub_22C440E3C(v252, v251);
        v383 = v253;
        if (v253)
        {

          v255 = *(v247 + 8);
          v256 = sub_22C36CC9C();
          v255(v256);
          v257 = sub_22C37B988();
          v255(v257);
          goto LABEL_60;
        }

        v305 = v254;

        v306 = *(v245 + 48);
        v307 = *(v247 + 8);
        v308 = sub_22C36CC9C();
        v309(v308);
        *(v97 + v306) = v305;
        v310 = v376;
        v376->isa = v365;
        sub_22C3758EC(v241);
        sub_22C4416DC();
        v56 = v369;
        v311();

        v105 = v241;
        v108 = v310;
      }

      else if (v101 == *MEMORY[0x277D1D7B0])
      {
        v105 = v371;
        v278 = sub_22C3885CC(v371);
        v279(v278);
        v370 = *v22;
        v280 = swift_projectBox();
        v281 = v355;
        (*(v355 + 16))(v353, v280, v356);
        v365 = swift_allocBox();
        sub_22C37B22C();
        swift_bridgeObjectRetain_n();
        v282 = v354;
        sub_22C902CCC();
        sub_22C902CAC();
        sub_22C3758E0();

        v283 = sub_22C379FC8();
        v284 = v383;
        sub_22C43F46C(v283, v285);
        v383 = v284;
        if (v284)
        {

          (*(v351 + 8))(v282, v352);
          v286 = *(v281 + 8);
          v287 = sub_22C36FC08();
          v288(v287);
          goto LABEL_60;
        }

        sub_22C902CBC();
        v327 = *(v281 + 8);
        v328 = sub_22C36FC08();
        v329(v328);
        v108 = v376;
        v376->isa = v365;
        v330 = sub_22C4416C8(v105);
        v56 = v369;
        v331(v330);
      }

      else
      {
        v292 = v383;
        v293 = v381;
        if (v101 == *MEMORY[0x277D1D7F0])
        {
          v294 = v371;
          v295 = sub_22C3885CC(v371);
          v296(v295);
          v297 = *v22;
          v298 = swift_projectBox();
          (v293)(v350, v298, v56);
          v299 = swift_allocBox();
          sub_22C374A5C();
          swift_bridgeObjectRetain_n();
          v300 = sub_22C379FC8();
          sub_22C43B5B0(v300, v301);
          v383 = v292;
          if (v292)
          {
            v302 = *(v294 + 8);
            v303 = sub_22C372164();
            v304(v303);
            swift_deallocBox();
            sub_22C374A5C();
            swift_bridgeObjectRelease_n();
            goto LABEL_61;
          }

          v332 = *(v294 + 8);
          v333 = sub_22C372164();
          v334(v333);
          v108 = v376;
          v376->isa = v299;
          v335 = sub_22C4416C8(v294);
          v336(v335);

          v105 = v294;
        }

        else
        {
          if (v101 != *MEMORY[0x277D1D7A0])
          {
            v105 = v371;
            v107 = v378;
            if (v101 == *MEMORY[0x277D1D7F8])
            {
              sub_22C37B22C();
              swift_bridgeObjectRetain_n();
              v108 = v376;
            }

            else
            {
              v337 = *MEMORY[0x277D1D7A8];
              v338 = v101;
              sub_22C37B22C();
              swift_bridgeObjectRetain_n();
              v118 = v338 == v337;
              v108 = v376;
              if (!v118)
              {
                sub_22C43E6DC(v377, v376);
                v339 = *(v105 + 8);
                v340 = sub_22C388EF4();
                v341(v340);
                goto LABEL_7;
              }
            }

            goto LABEL_6;
          }

          v105 = v371;
          v317 = sub_22C3885CC(v371);
          v318(v317);
          v319 = *v22;
          swift_projectBox();
          v320 = sub_22C37BD8C(&v381);
          (v293)(v320);
          v321 = swift_allocBox();
          sub_22C374A5C();
          swift_bridgeObjectRetain_n();
          v322 = sub_22C37BD80();
          sub_22C43B5B0(v322, v323);
          v383 = v292;
          if (v292)
          {
            v324 = *(v105 + 8);
            v325 = sub_22C36D390();
            v326(v325);
            swift_deallocBox();
            sub_22C374A5C();
            swift_bridgeObjectRelease_n();
            goto LABEL_61;
          }

          v342 = *(v105 + 8);
          v343 = sub_22C36D390();
          v344(v343);
          v345 = v376;
          v376->isa = v321;
          v346 = *(v105 + 104);
          sub_22C4416DC();
          v347();

          v108 = v345;
        }
      }

LABEL_77:
      v107 = v378;
      goto LABEL_7;
    }

    v222 = v371;
    v223 = sub_22C3885CC(v371);
    v224(v223);
    v225 = *v22;
    v226 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
    v227 = sub_22C37ABD4();
    v228 = v56;
    v229 = *(v226 + 48);
    v230 = v381;
    (v381)(v361, v227, v228);
    v231 = sub_22C37BD8C(&a16);
    (v230)(v231);
    v232 = swift_allocBox();
    sub_22C374A5C();
    swift_bridgeObjectRetain_n();
    v233 = sub_22C379FC8();
    v234 = v383;
    sub_22C43B5B0(v233, v235);
    if (!v234)
    {
      v289 = *(v226 + 48);

      v290 = sub_22C37BD80();
      sub_22C43B5B0(v290, v291);
      v312 = v371;
      v313 = v371[1];
      v314 = v369;
      v313(v22, v369);
      v313(v361, v314);
      v56 = v314;
      v259 = v376;
      v376->isa = v232;
      v315 = *(v312 + 104);
      sub_22C4416DC();
      v316();

      v383 = 0;
      v105 = v312;
LABEL_53:
      v108 = v259;
      goto LABEL_77;
    }

    v236 = *(v222 + 8);
    v236(v22, v228);
    v237 = sub_22C36EC8C();
    (v236)(v237);
    swift_deallocBox();
    sub_22C374A5C();
    swift_bridgeObjectRelease_n();
LABEL_61:

    goto LABEL_9;
  }

  v105 = v371;
  v56 = v369;
  (v371[12])(v22, v369);
  v120 = *v22;
  v122 = *(v120 + 16);
  v121 = *(v120 + 24);
  v123 = *(v120 + 32);
  v125 = v382;
  v124 = v383;
  sub_22C3705B4();
  v128 = v378;
  v108 = v376;
  if (!v118)
  {
    v129 = v364;
    sub_22C44178C();
    v381();
    sub_22C37B22C();
    swift_bridgeObjectRetain_n();
    goto LABEL_16;
  }

  v363 = v127;
  v359 = v126;
  sub_22C36D6EC();
  if (v181 != 4)
  {
    v218 = swift_allocObject();
    sub_22C374A5C();
    swift_bridgeObjectRetain_n();
    v219 = v363;
    v220 = v359;
    sub_22C4403D8(v363, v359, 5);
    v221 = sub_22C440418(v219, v125);
    if (v124)
    {
      sub_22C4242E4(v219, v220, 5);
      sub_22C36D6EC();
      swift_deallocUninitializedObject();
      sub_22C374A5C();
      swift_bridgeObjectRelease_n();
      goto LABEL_61;
    }

    v383 = 0;
    v262 = v221;
    sub_22C4242E4(v219, v220, 5);
    *(v218 + 16) = v262;
    *(v218 + 24) = 0;
    *(v218 + 32) = 5;
    v129 = v364;
    *v364 = v218;
    sub_22C3758EC(v105);
    sub_22C4416DC();
    v56 = v369;
    v263();
    v128 = v378;
LABEL_16:
    v107 = v128;
    (*(v105 + 32))(v108, v129, v56);

    goto LABEL_7;
  }

  v358 = swift_allocObject();
  if (!*(v363 + 16))
  {
    sub_22C37B22C();
    swift_bridgeObjectRetain_n();
    v189 = MEMORY[0x277D84F90];
LABEL_56:
    v383 = v124;
    v270 = v358;
    *(v358 + 16) = v189;
    *(v270 + 24) = 0;
    *(v270 + 32) = 4;
    v129 = v364;
    *v364 = v270;
    sub_22C3758EC(v105);
    sub_22C4416DC();
    v271();
    goto LABEL_16;
  }

  v357 = v120;
  sub_22C37B22C();
  v183 = v182;
  swift_bridgeObjectRetain_n();
  sub_22C376640(&a15);
  sub_22C4403D8(v184, v185, v186);
  v384 = MEMORY[0x277D84F90];
  v361 = v183;
  sub_22C3B69C4(0, v183, 0);
  v187 = v363;
  v188 = 0;
  v189 = v384;
  v360 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v362 = v363 + v360;
  v190 = (v105 + 8);
  v191 = (v105 + 32);
  v192 = v381;
  while (v188 < *(v187 + 16))
  {
    v193 = *(v105 + 72);
    v194 = v365;
    v195 = v369;
    (v192)(v365, v362 + v193 * v188, v369);

    sub_22C43B5B0(v194, v125);
    if (v124)
    {
      sub_22C376640(&a15);
      sub_22C4242E4(v264, v265, v266);
      (*v190)(v194, v195);

      sub_22C36D6EC();
      swift_deallocUninitializedObject();
      sub_22C374A5C();
      swift_bridgeObjectRelease_n();
      goto LABEL_61;
    }

    (*v190)(v194, v195);
    v197 = *(v384 + 16);
    v196 = *(v384 + 24);
    if (v197 >= v196 >> 1)
    {
      v198 = sub_22C373290(v196);
      sub_22C3B69C4(v198, v197 + 1, 1);
    }

    ++v188;
    *(v384 + 16) = v197 + 1;
    (*v191)(v384 + v360 + v197 * v193, v370, v195);
    v192 = v381;
    v125 = v382;
    v124 = 0;
    v105 = v371;
    v187 = v363;
    if (v361 == v188)
    {
      sub_22C376640(&a15);
      sub_22C4242E4(v267, v268, v269);
      v56 = v369;
      v128 = v378;
      v108 = v376;
      goto LABEL_56;
    }
  }

  __break(1u);
}

void sub_22C43CE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v24;
  a20 = v25;
  v354 = v20;
  v27 = v26;
  v347 = v28;
  v29 = sub_22C9063DC();
  v30 = sub_22C369824(v29);
  v341 = v31;
  v342 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C3698A8();
  v343 = v34;
  v35 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v36 = sub_22C369914(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v331 = sub_22C4416E8(v39, v329[0]);
  v40 = sub_22C369824(v331);
  v330 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  sub_22C3698F8(v44);
  v335 = sub_22C902CDC();
  v45 = sub_22C369824(v335);
  v334 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22C3698A8();
  sub_22C3698F8(v49);
  v338 = sub_22C902D1C();
  v50 = sub_22C369824(v338);
  v337 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22C3698A8();
  sub_22C3698F8(v54);
  v55 = sub_22C902D0C();
  v56 = sub_22C369824(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22C369ABC();
  v348 = v61 - v62;
  sub_22C369930();
  MEMORY[0x28223BE20](v63);
  sub_22C36BA58();
  v349 = v64;
  sub_22C369930();
  MEMORY[0x28223BE20](v65);
  sub_22C36BA58();
  v346 = v66;
  sub_22C369930();
  MEMORY[0x28223BE20](v67);
  sub_22C36BA58();
  v345 = v68;
  sub_22C369930();
  MEMORY[0x28223BE20](v69);
  sub_22C36BA58();
  v353 = v70;
  sub_22C369930();
  MEMORY[0x28223BE20](v71);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v72);
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v73);
  sub_22C36BA58();
  v344 = v74;
  sub_22C369930();
  MEMORY[0x28223BE20](v75);
  sub_22C36BA58();
  v339 = v76;
  sub_22C369930();
  MEMORY[0x28223BE20](v77);
  sub_22C36BA58();
  v340 = v78;
  sub_22C369930();
  MEMORY[0x28223BE20](v79);
  sub_22C3705C8();
  v81 = MEMORY[0x28223BE20](v80);
  v83 = v329 - v82;
  MEMORY[0x28223BE20](v81);
  sub_22C37B03C();
  MEMORY[0x28223BE20](v84);
  sub_22C38C344();
  v86 = MEMORY[0x28223BE20](v85);
  v88 = v329 - v87;
  MEMORY[0x28223BE20](v86);
  sub_22C36BA58();
  v352 = v89;
  sub_22C369930();
  MEMORY[0x28223BE20](v90);
  v355 = v27;
  v356 = v329 - v91;
  v357 = v58[2];
  v358 = (v58 + 2);
  (v357)(v88, v27, v55);
  v92 = v58[11];
  v93 = sub_22C36CA88();
  v95 = v94(v93);
  v96 = v95 == *MEMORY[0x277D1D7C8] || v95 == *MEMORY[0x277D1D798];
  if (v96)
  {
    v97 = v58[1];
    v98 = sub_22C36CA88();
    v99(v98);
    v100 = v354;
    v101 = v355;
    v102 = v58;
    goto LABEL_7;
  }

  v350 = v58;
  if (v95 != *MEMORY[0x277D1D7E8])
  {
    if (v95 == *MEMORY[0x277D1D7E0])
    {
      v119 = v95;
      v120 = v350;
      v121 = v350[12];
      v122 = sub_22C36CA88();
      v123(v122);
      v124 = *v88;
      sub_22C3A5908(&qword_27D9BC330, &qword_22C9126C8);
      v125 = swift_projectBox();
      sub_22C375E20(v125);
      sub_22C382F58();
      v126();
      v127 = swift_allocBox();
      v129 = sub_22C37B238(v127, v128);
      v130 = v354;
      sub_22C43CE88(v129);
      v100 = v130;
      if (v130)
      {
        v131 = v120[1];
        v132 = sub_22C38644C();
        v133(v132);
        swift_deallocBox();
LABEL_47:

        goto LABEL_68;
      }

      v181 = v120[1];
      v182 = sub_22C38644C();
      v183(v182);
      v184 = v352;
      *v352 = v21;
      v103 = v184;
      (v120[13])(v184, v119, v55);

      v102 = v120;
      goto LABEL_59;
    }

    v96 = v95 == *MEMORY[0x277D1D7D8];
    HIDWORD(v329[0]) = v95;
    if (v96)
    {
      v134 = sub_22C44170C(v350);
      v135(v134);
      v136 = *v88;
      v137 = sub_22C3A5908(&qword_27D9BC168, &unk_22C9123C0);
      v349 = v136;
      v138 = swift_projectBox();
      LODWORD(v348) = *v138;
      v139 = *(v137 + 64);
      v140 = v357;
      (v357)(v22, &v138[*(v137 + 48)], v55);
      (v140)(v83, &v138[v139], v55);
      v141 = swift_allocBox();
      v143 = v142;
      v144 = *(v137 + 48);
      *v142 = v348;
      v145 = v354;
      sub_22C43CE88(v22);
      if (!v145)
      {
        v208 = &v143[*(v137 + 64)];
        sub_22C43CE88(v83);
        v100 = 0;
        v102 = v350;
        v246 = v350[1];
        v247 = sub_22C370114();
        v246(v247);
        (v246)(v22, v55);
        v103 = v352;
        *v352 = v141;
LABEL_49:
        v248 = sub_22C4416B4(v102);
        goto LABEL_58;
      }

      v146 = v350[1];
      v146(v83, v23);
      v147 = sub_22C36CC9C();
      (v146)(v147);
LABEL_72:
      swift_deallocBox();
      goto LABEL_47;
    }

    if (v95 == *MEMORY[0x277D1D7B8])
    {
      v166 = v350;
      v167 = sub_22C44170C(v350);
      v168(v167);
      v169 = *v88;
      v170 = sub_22C3A5908(&qword_27D9BC1F0, &qword_22C9123B8);
      v171 = (swift_projectBox() + *(v170 + 48));
      v172 = v171[1];
      v349 = *v171;
      sub_22C382F58();
      v173();
      v174 = swift_allocBox();
      v176 = v175;

      v177 = v354;
      sub_22C43CE88(v21);
      if (v177)
      {
        v178 = v166[1];
        v179 = sub_22C37B988();
        v180(v179);

        swift_deallocBox();

LABEL_68:
        sub_22C36FB20();
        return;
      }

      v224 = (v176 + *(v170 + 48));
      v225 = v166[1];
      v226 = sub_22C37B988();
      v227(v226);
      *v224 = v349;
      v224[1] = v172;
      v103 = v352;
      *v352 = v174;
      v228 = sub_22C4416B4(v166);
      v229(v228);

      v100 = 0;
      v55 = v23;
      v102 = v166;
      goto LABEL_59;
    }

    v102 = v350;
    if (v95 == *MEMORY[0x277D1D7D0])
    {
      v188 = sub_22C3726D0();
      v189(v188, v55);
      v190 = *v88;
      v191 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
      v349 = v190;
      v192 = swift_projectBox();
      v193 = v102;
      v194 = *(v191 + 48);
      v195 = v340;
      v196 = sub_22C37B9B0();
      v197 = v357;
      (v357)(v196);
      v198 = v192 + v194;
      v199 = v339;
      (v197)(v339, v198, v55);
      v200 = v195;
      v201 = swift_allocBox();
      v203 = v202;
      v204 = v354;
      sub_22C43CE88(v200);
      if (v204)
      {
        v205 = v193[1];
        v206 = sub_22C441720();
        v205(v206);
        v207 = sub_22C36FC08();
        v205(v207);
        swift_deallocBox();

        goto LABEL_68;
      }

      v259 = v203 + *(v191 + 48);
      sub_22C43CE88(v199);
      v301 = v350;
      v302 = v350[1];
      v302(v199, v55);
      v302(v200, v55);
      v103 = v352;
      *v352 = v201;
      v102 = v301;
      v303 = sub_22C4416B4(v301);
      v304(v303);

      v100 = 0;
LABEL_59:
      v105 = v353;
      v101 = v355;
      v106 = v356;
      goto LABEL_60;
    }

    if (v95 == *MEMORY[0x277D1D7C0])
    {
      v209 = sub_22C3726D0();
      v344 = v55;
      v210(v209, v55);
      v211 = *v88;
      v212 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
      v349 = v211;
      v213 = swift_projectBox();
      sub_22C379858(v213);
      v214 = v337;
      v215 = *(v337 + 16);
      v215(v336);
      v348 = swift_allocBox();
      v217 = sub_22C36EC78(v348, v216);
      v215(v217);

      v219 = v354;
      v220 = sub_22C44128C(v218);
      v100 = v219;
      if (v219)
      {

        v221 = *(v214 + 8);
        v222 = sub_22C36CC9C();
        v221(v222);
        v223 = sub_22C37B988();
        v221(v223);
        goto LABEL_72;
      }

      v266 = v220;

      v267 = *(v212 + 48);
      v268 = *(v214 + 8);
      v269 = sub_22C36CC9C();
      v270(v269);
      *(v21 + v267) = v266;
      v103 = v352;
      *v352 = v348;
      v102 = v350;
      v248 = sub_22C4416B4(v350);
      v55 = v344;
LABEL_58:
      v249(v248);

      goto LABEL_59;
    }

    if (v95 == *MEMORY[0x277D1D7B0])
    {
      v250 = sub_22C3726D0();
      v251(v250, v55);
      v349 = *v88;
      v252 = swift_projectBox();
      v253 = v334;
      v254 = v332;
      v255 = v335;
      (*(v334 + 16))(v332, v252, v335);
      v348 = swift_allocBox();
      v256 = v333;
      sub_22C902CCC();
      v257 = sub_22C902CAC();
      v258 = v354;
      sub_22C43FAEC(v257);
      v100 = v258;
      if (v258)
      {

        (*(v330 + 8))(v256, v331);
        (*(v253 + 8))(v254, v255);
        goto LABEL_72;
      }

      sub_22C902CBC();
      (*(v253 + 8))(v254, v255);
      v103 = v352;
      *v352 = v348;
      v102 = v350;
      goto LABEL_49;
    }

    v100 = v354;
    v101 = v355;
    if (v95 == *MEMORY[0x277D1D7F0])
    {
      v260 = v95;
      v261 = sub_22C3726D0();
      v262(v261, v55);
      v263 = *v88;
      swift_projectBox();
      sub_22C382F58();
      v264();
      v265 = swift_allocBox();
      sub_22C43CE88(v23);
      if (v100)
      {
        (v102[1])(v23, v55);
        goto LABEL_72;
      }

      (v102[1])(v23, v55);
      v320 = v352;
      *v352 = v265;
      v321 = sub_22C3758EC(v102);
      v322(v321, v260, v55);
      v103 = v320;

LABEL_8:
      v105 = v353;
      v106 = v356;
      goto LABEL_60;
    }

    if (v95 == *MEMORY[0x277D1D7A0])
    {
      v305 = v95;
      v306 = sub_22C3726D0();
      v307(v306, v55);
      v308 = *v88;
      swift_projectBox();
      v309 = v329[1];
      sub_22C382F58();
      v310();
      v311 = v102;
      v312 = swift_allocBox();
      sub_22C43CE88(v309);
      if (!v100)
      {
        v323 = *(v311 + 8);
        v324 = sub_22C36CA88();
        v325(v324);
        v326 = v352;
        *v352 = v312;
        v327 = sub_22C3758EC(v311);
        v328(v327, v305, v55);
        v103 = v326;

        v105 = v353;
        v106 = v356;
        v102 = v311;
LABEL_60:
        v271 = v102[4];
        v271(v106, v103, v55);
        v272 = v351;
        sub_22C43E54C(v106, v351);
        if (v100)
        {
          v273 = v102[1];
          v274 = sub_22C36CA88();
          v275(v274);
        }

        else
        {
          if (sub_22C370B74(v272, 1, v55) == 1)
          {
            sub_22C43ED8C(v272);
          }

          else
          {
            v350 = v102;
            v271(v105, v272, v55);
            v276 = v343;
            sub_22C903F7C();
            v277 = v357;
            (v357)(v345, v101, v55);
            (v277)(v346, v105, v55);
            v278 = v105;
            v279 = sub_22C9063CC();
            v280 = sub_22C90AACC();
            if (os_log_type_enabled(v279, v280))
            {
              v281 = swift_slowAlloc();
              v282 = v345;
              v357 = v279;
              v283 = v281;
              v358 = swift_slowAlloc();
              a10 = v358;
              *v283 = 136380931;
              v284 = sub_22C43EDF4();
              LODWORD(v355) = v280;
              v285 = v350;
              v354 = v284;
              v286 = sub_22C90B47C();
              v288 = v287;
              v289 = v285[1];
              v351 = v286;
              v352 = v289;
              v290 = sub_22C38644C();
              v291(v290);
              sub_22C36F9F4(v351, v288, &a10);
              sub_22C3758E0();

              *(v283 + 4) = v282;
              *(v283 + 12) = 2081;
              sub_22C90B47C();
              v292 = sub_22C370114();
              v293 = v352;
              v352(v292);
              v294 = sub_22C372164();
              v297 = sub_22C36F9F4(v294, v295, v296);

              *(v283 + 14) = v297;
              v298 = v357;
              _os_log_impl(&dword_22C366000, v357, v355, "[PromptMapperResolver] Modified program AST node: %{private}s -> %{private}s", v283, 0x16u);
              swift_arrayDestroy();
              sub_22C3699EC();
              sub_22C3699EC();

              (*(v341 + 8))(v343, v342);
              v293(v356, v55);
              v106 = v353;
            }

            else
            {

              v299 = v350[1];
              v299(v346, v55);
              v299(v345, v55);
              (*(v341 + 8))(v276, v342);
              v300 = sub_22C36CA88();
              (v299)(v300);
              v106 = v278;
            }
          }

          v271(v347, v106, v55);
        }

        goto LABEL_68;
      }

      v313 = *(v311 + 8);
      v314 = sub_22C36CA88();
      v315(v314);
      goto LABEL_72;
    }

    if (v95 != *MEMORY[0x277D1D7F8] && v95 != *MEMORY[0x277D1D7A8])
    {
      v103 = v352;
      sub_22C43E6DC(v355, v352);
      v317 = v102[1];
      v318 = sub_22C36CA88();
      v319(v318);
      goto LABEL_8;
    }

LABEL_7:
    v103 = v352;
    sub_22C36EC6C();
    sub_22C382F58();
    v104();
    goto LABEL_8;
  }

  HIDWORD(v329[0]) = v95;
  v102 = v350;
  v107 = sub_22C3726D0();
  v108(v107, v55);
  v110 = *(*v88 + 16);
  v109 = *(*v88 + 24);
  v340 = *v88;
  v111 = *(v340 + 32);
  sub_22C3705B4();
  v105 = v353;
  v100 = v354;
  v101 = v355;
  v106 = v356;
  v103 = v352;
  v114 = v344;
  if (!v96)
  {
    sub_22C372158();
    sub_22C382F58();
    v115();
LABEL_12:
    v116 = v102[4];
    v117 = sub_22C441720();
    v118(v117);

    goto LABEL_60;
  }

  v335 = v113;
  if (v112 != 4)
  {
    sub_22C36D6EC();
    v185 = swift_allocObject();

    v187 = sub_22C440730(v186);
    if (!v100)
    {
      v230 = v187;
      sub_22C382C68();
      *(v185 + 16) = v230;
      *(v185 + 24) = 0;
      *(v185 + 32) = 5;
      v231 = v350;
      *v114 = v185;
      v102 = v231;
      v232 = sub_22C381624(v231);
      v233(v232);
      v103 = v352;
      v105 = v353;
      goto LABEL_12;
    }

    sub_22C382C68();
LABEL_46:
    sub_22C36D6EC();
    swift_deallocUninitializedObject();
    goto LABEL_47;
  }

  sub_22C36D6EC();
  v148 = swift_allocObject();
  v149 = *(v110 + 16);
  if (!v149)
  {
    v243 = v102;
LABEL_48:
    sub_22C441778(v148);
    v244 = sub_22C381624(v243);
    v245(v244);
    v105 = v353;
    v102 = v243;
    goto LABEL_12;
  }

  v334 = v148;
  a10 = MEMORY[0x277D84F90];

  v337 = v149;
  sub_22C3B69C4(0, v149, 0);
  v150 = v102;
  v151 = 0;
  v152 = a10;
  v336 = (*(v150 + 80) + 32) & ~*(v150 + 80);
  v338 = v110 + v336;
  v339 = v150 + 1;
  v153 = v110;
  while (v151 < *(v153 + 16))
  {
    v154 = v350[9];
    v155 = v348;
    sub_22C382F58();
    v156();
    sub_22C43CE88(v155);
    if (v100)
    {
      sub_22C376640(&a16);
      sub_22C4242E4(v234, v235, v236);
      v237 = *v339;
      v238 = sub_22C370114();
      v239(v238);

      goto LABEL_46;
    }

    v157 = *v339;
    v158 = sub_22C370114();
    v159(v158);
    a10 = v152;
    v160 = v55;
    v162 = *(v152 + 16);
    v161 = *(v152 + 24);
    if (v162 >= v161 >> 1)
    {
      v165 = sub_22C373290(v161);
      sub_22C3B69C4(v165, v162 + 1, 1);
      v152 = a10;
    }

    ++v151;
    *(v152 + 16) = v162 + 1;
    v163 = sub_22C441758(&a17);
    v164(v163, v349, v160);
    v55 = v160;
    v101 = v355;
    v106 = v356;
    if (v337 == v151)
    {
      sub_22C376640(&a16);
      sub_22C4242E4(v240, v241, v242);
      v243 = v350;
      v103 = v352;
      v148 = v334;
      goto LABEL_48;
    }
  }

  __break(1u);
}

uint64_t sub_22C43E54C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_22C902D0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  v10 = *MEMORY[0x277D1D7C8];
  (*(v5 + 8))(v8, v4);
  if (v9 == v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_22C90750C();
    *(v11 + 24) = v12;
    *a2 = v11;
    (*(v5 + 104))(a2, v9, v4);
    v13 = a2;
    v14 = 0;
  }

  else
  {
    v13 = a2;
    v14 = 1;
  }

  return sub_22C36C640(v13, v14, 1, v4);
}

uint64_t sub_22C43E6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C902D0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C9063DC();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C903F7C();
  v28 = *(v5 + 16);
  v28(v8, a1, v4);
  v13 = sub_22C9063CC();
  v14 = sub_22C90AADC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a2;
    v16 = v15;
    v25 = swift_slowAlloc();
    v31 = v25;
    *v16 = 136380675;
    sub_22C43EDF4();
    v17 = sub_22C90B47C();
    v27 = a1;
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_22C36F9F4(v17, v19, &v31);
    a1 = v27;

    *(v16 + 4) = v20;
    _os_log_impl(&dword_22C366000, v13, v14, "❗️ [PromptMapperResolver] Unknown Expr type: %{private}s - skipping transformations. Please file a radar on Full Planner", v16, 0xCu);
    v21 = v25;
    sub_22C36FF94(v25);
    MEMORY[0x2318B9880](v21, -1, -1);
    v22 = v16;
    a2 = v26;
    MEMORY[0x2318B9880](v22, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  (*(v29 + 8))(v12, v30);
  return (v28)(a2, a1, v4);
}

void sub_22C43E9A0()
{
  sub_22C370030();
  v2 = v0;
  v4 = v3;
  v40 = v5;
  v6 = sub_22C9014CC();
  v7 = sub_22C369824(v6);
  v37 = v8;
  v38 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  v39 = v11;
  v12 = sub_22C3A5908(&qword_27D9BC288, &qword_22C912620);
  v13 = sub_22C369914(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v19 = sub_22C907F9C();
  v20 = sub_22C369824(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v27 = *(v0 + 24);
  if (*(v27 + 16))
  {

    sub_22C628874();
    if (v29)
    {
      (*(v22 + 16))(v26, *(v27 + 56) + *(v22 + 72) * v28, v19);

      v30 = *(v22 + 32);
      v31 = sub_22C379FC8();
      v32(v31);
      sub_22C36C640(v40, 0, 1, v19);
      goto LABEL_7;
    }
  }

  v33 = *(v2 + 16);
  sub_22C90712C();
  if (!v1)
  {
    (*(v37 + 16))(v39, v4, v38);
    v34 = sub_22C36CC9C();
    sub_22C43ECAC(v34, v35);
    swift_beginAccess();
    sub_22C602E50();
    swift_endAccess();
    sub_22C43ED1C(v18, v40);
  }

LABEL_7:
  sub_22C36FB20();
}

uint64_t sub_22C43EC2C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_22C43EC54()
{
  sub_22C43EC2C();

  return swift_deallocClassInstance();
}

uint64_t sub_22C43ECAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC288, &qword_22C912620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C43ED1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC288, &qword_22C912620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C43ED8C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C43EDF4()
{
  result = qword_27D9BC188;
  if (!qword_27D9BC188)
  {
    sub_22C902D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC188);
  }

  return result;
}

uint64_t sub_22C43EE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a2;
  v73 = a3;
  v70 = sub_22C902D0C();
  v81 = *(v70 - 8);
  v4 = *(v81 + 64);
  v5 = MEMORY[0x28223BE20](v70);
  v79 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v77 = &v54 - v7;
  v55 = sub_22C902C5C();
  v54 = *(v55 - 8);
  v8 = *(v54 + 64);
  MEMORY[0x28223BE20](v55);
  v69 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C902C4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v60 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - v15;
  v17 = sub_22C902C9C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v66 = &v54 - v23;
  sub_22C3A5908(&qword_27D9BC240, &unk_22C9126E0);
  result = sub_22C90B1CC();
  v25 = v17;
  v26 = result;
  v27 = 0;
  v71 = a1;
  v28 = *(a1 + 64);
  v57 = a1 + 64;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v56 = (v29 + 63) >> 6;
  v62 = v11 + 16;
  v63 = v18 + 16;
  v74 = v18;
  v64 = (v81 + 8);
  v65 = (v11 + 8);
  v59 = result + 64;
  v68 = v11;
  v58 = (v11 + 32);
  v67 = result;
  v78 = v10;
  v61 = v16;
  if (v31)
  {
    while (1)
    {
      v32 = v25;
      v33 = __clz(__rbit64(v31));
      v75 = (v31 - 1) & v31;
LABEL_10:
      v81 = v33 | (v27 << 6);
      v36 = v71;
      v37 = v74;
      v38 = v81;
      v39 = *(v74 + 72) * v81;
      v40 = v66;
      (*(v74 + 16))(v66, *(v71 + 48) + v39, v32);
      v41 = *(v36 + 56);
      v42 = *(v68 + 16);
      v76 = *(v68 + 72) * v38;
      v43 = v61;
      v42(v61, v41 + v76, v78);
      v44 = *(v37 + 32);
      v44(v22, v40, v32);
      v45 = v69;
      sub_22C902C3C();
      v46 = v79;
      sub_22C902C1C();
      v47 = v80;
      sub_22C439F24(v46, v72, v73);
      v80 = v47;
      if (v47)
      {
        break;
      }

      (*v64)(v79, v70);
      v48 = v60;
      sub_22C902C2C();
      v49 = v78;
      (*v65)(v43, v78);
      *(v59 + ((v81 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v81;
      v50 = *(v67 + 48) + v39;
      v26 = v67;
      v44(v50, v22, v32);
      result = (*v58)(*(v26 + 56) + v76, v48, v49);
      v51 = *(v26 + 16);
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_17;
      }

      v25 = v32;
      *(v26 + 16) = v53;
      v31 = v75;
      if (!v75)
      {
        goto LABEL_5;
      }
    }

    (*v64)(v79, v70);
    (*(v54 + 8))(v45, v55);
    v26 = v67;

    (*(v74 + 8))(v22, v32);
    (*v65)(v43, v78);
    return v26;
  }

  else
  {
LABEL_5:
    v34 = v27;
    while (1)
    {
      v27 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v27 >= v56)
      {
        return v26;
      }

      v35 = *(v57 + 8 * v27);
      ++v34;
      if (v35)
      {
        v32 = v25;
        v33 = __clz(__rbit64(v35));
        v75 = (v35 - 1) & v35;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C43F46C(uint64_t a1, uint64_t a2)
{
  v79 = sub_22C902D0C();
  v88 = *(v79 - 8);
  v4 = *(v88 + 64);
  v5 = MEMORY[0x28223BE20](v79);
  v87 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v86 = &v60 - v7;
  v62 = sub_22C902C5C();
  v61 = *(v62 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v78 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C902C4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v67 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - v15;
  v17 = sub_22C902C9C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v75 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v74 = &v60 - v22;
  sub_22C3A5908(&qword_27D9BC240, &unk_22C9126E0);
  v23 = sub_22C90B1CC();
  v24 = a2;
  v25 = v16;
  v26 = v23;
  v80 = a1;
  v27 = *(a1 + 64);
  v64 = a1 + 64;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v63 = (v28 + 63) >> 6;
  v70 = v11 + 16;
  v71 = v18 + 16;
  v81 = v18;
  v69 = v18 + 32;
  v72 = (v88 + 8);
  v73 = (v11 + 8);
  v66 = v23 + 64;
  v77 = v11;
  v65 = (v11 + 32);
  v88 = v24;

  v32 = 0;
  v76 = v26;
  v68 = v10;
  if (v30)
  {
    while (1)
    {
      v33 = v17;
      v34 = __clz(__rbit64(v30));
      v82 = (v30 - 1) & v30;
LABEL_10:
      v37 = v34 | (v32 << 6);
      v39 = v80;
      v38 = v81;
      v40 = *(v80 + 48);
      v41 = *(v81 + 16);
      v84 = *(v81 + 72) * v37;
      v42 = v74;
      v41(v74, v40 + v84, v33);
      v43 = *(v39 + 56);
      v44 = *(v77 + 72);
      v85 = v37;
      v45 = v44 * v37;
      v46 = *(v77 + 16);
      v83 = v45;
      v46(v25, v43 + v45, v10);
      v47 = *(v38 + 32);
      v48 = v75;
      v47(v75, v42, v33);
      v49 = v88;
      swift_bridgeObjectRetain_n();
      v50 = v25;
      v51 = v78;
      sub_22C902C3C();
      v52 = v87;
      sub_22C902C1C();
      v53 = v89;
      sub_22C43B5B0(v52, v49);
      v89 = v53;
      if (v53)
      {
        break;
      }

      (*v72)(v87, v79);
      v54 = v67;
      sub_22C902C2C();

      v55 = v48;
      v10 = v68;
      (*v73)(v50, v68);
      *(v66 + ((v85 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v85;
      v56 = v76;
      v47((*(v76 + 48) + v84), v55, v33);
      v26 = v56;
      result = (*v65)(*(v56 + 56) + v83, v54, v10);
      v57 = *(v56 + 16);
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_17;
      }

      v25 = v50;
      v17 = v33;
      *(v26 + 16) = v59;
      v30 = v82;
      if (!v82)
      {
        goto LABEL_5;
      }
    }

    (*v72)(v87, v79);
    (*(v61 + 8))(v51, v62);
    v26 = v76;

    (*(v81 + 8))(v48, v33);
    (*v73)(v50, v68);
LABEL_14:
    swift_bridgeObjectRelease_n();
    return v26;
  }

  else
  {
LABEL_5:
    v35 = v32;
    while (1)
    {
      v32 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v32 >= v63)
      {
        goto LABEL_14;
      }

      v36 = *(v64 + 8 * v32);
      ++v35;
      if (v36)
      {
        v33 = v17;
        v34 = __clz(__rbit64(v36));
        v82 = (v36 - 1) & v36;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C43FAEC(uint64_t a1)
{
  v73 = sub_22C902D0C();
  v78 = *(v73 - 8);
  v2 = *(v78 + 64);
  v3 = MEMORY[0x28223BE20](v73);
  v81 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v79 = &v57 - v5;
  v58 = sub_22C902C5C();
  v57 = *(v58 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v72 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_22C902C4C();
  v8 = *(v80 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v80);
  v63 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - v12;
  v14 = sub_22C902C9C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v68 = &v57 - v20;
  sub_22C3A5908(&qword_27D9BC240, &unk_22C9126E0);
  result = sub_22C90B1CC();
  v22 = v14;
  v23 = result;
  v24 = 0;
  v74 = a1;
  v25 = a1;
  v26 = v13;
  v27 = *(v25 + 64);
  v60 = v25 + 64;
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v59 = (v28 + 63) >> 6;
  v64 = v8 + 16;
  v65 = v15 + 16;
  v75 = v15;
  v66 = (v78 + 8);
  v67 = (v8 + 8);
  v70 = result;
  v71 = v8;
  v61 = (v8 + 32);
  v62 = result + 64;
  v69 = v19;
  if (v30)
  {
    while (1)
    {
      v31 = v22;
      v32 = __clz(__rbit64(v30));
      v76 = (v30 - 1) & v30;
LABEL_10:
      v35 = v32 | (v24 << 6);
      v36 = v74;
      v37 = v75;
      v38 = *(v74 + 48);
      v39 = *(v75 + 16);
      v78 = *(v75 + 72) * v35;
      v40 = v68;
      v39(v68, v38 + v78, v31);
      v41 = *(v36 + 56);
      v42 = *(v71 + 16);
      v77 = *(v71 + 72) * v35;
      v42(v26, v41 + v77, v80);
      v43 = *(v37 + 32);
      v44 = v69;
      v43(v69, v40, v31);
      v45 = v26;
      v46 = v72;
      sub_22C902C3C();
      v47 = v81;
      sub_22C902C1C();
      v48 = v82;
      sub_22C43CE88(v47);
      v82 = v48;
      if (v48)
      {
        break;
      }

      (*v66)(v81, v73);
      v49 = v63;
      sub_22C902C2C();
      v50 = v35;
      v51 = v80;
      (*v67)(v45, v80);
      *(v62 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      v52 = v70;
      v43((*(v70 + 48) + v78), v44, v31);
      v53 = v49;
      v23 = v52;
      result = (*v61)(*(v52 + 56) + v77, v53, v51);
      v54 = *(v52 + 16);
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_17;
      }

      v26 = v45;
      v22 = v31;
      *(v23 + 16) = v56;
      v30 = v76;
      if (!v76)
      {
        goto LABEL_5;
      }
    }

    (*v66)(v81, v73);
    (*(v57 + 8))(v46, v58);
    v23 = v70;

    (*(v75 + 8))(v44, v31);
    (*v67)(v45, v80);
    return v23;
  }

  else
  {
LABEL_5:
    v33 = v24;
    while (1)
    {
      v24 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v24 >= v59)
      {
        return v23;
      }

      v34 = *(v60 + 8 * v24);
      ++v33;
      if (v34)
      {
        v31 = v22;
        v32 = __clz(__rbit64(v34));
        v76 = (v34 - 1) & v34;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C4400F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v44 = a3;
  v4 = sub_22C902D0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v36 - v10;
  sub_22C3A5908(&qword_27D9BC338, &qword_22C9126D8);
  result = sub_22C90B1CC();
  v12 = 0;
  v41 = v5;
  v42 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v39 = v5 + 16;
  v40 = (v5 + 8);
  v46 = result;
  v38 = result + 64;
  v36 = v14;
  v37 = (v5 + 32);
  while (1)
  {
    v20 = v45;
    if (!v18)
    {
      v23 = v12;
      while (1)
      {
        v12 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v12 >= v19)
        {
          return v46;
        }

        v24 = *(v36 + 8 * v12);
        ++v23;
        if (v24)
        {
          v21 = v9;
          v22 = __clz(__rbit64(v24));
          v47 = (v24 - 1) & v24;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    v21 = v9;
    v22 = __clz(__rbit64(v18));
    v47 = (v18 - 1) & v18;
LABEL_11:
    v25 = v22 | (v12 << 6);
    v26 = (*(v42 + 48) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v41 + 72) * v25;
    (*(v41 + 16))(v45, *(v42 + 56) + v29, v4);

    v30 = v48;
    sub_22C439F24(v20, v43, v44);
    v48 = v30;
    if (v30)
    {
      break;
    }

    (*v40)(v20, v4);
    *(v38 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v31 = v46;
    v32 = (*(v46 + 48) + 16 * v25);
    *v32 = v27;
    v32[1] = v28;
    result = (*v37)(*(v31 + 56) + v29, v21, v4);
    v33 = *(v31 + 16);
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_17;
    }

    v9 = v21;
    *(v31 + 16) = v35;
    v18 = v47;
  }

  (*v40)(v20, v4);
  return v46;
}

uint64_t sub_22C4403D8(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 3:
    case 4:
    case 5:
    case 6:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C440418(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C902D0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v40 - v10;
  sub_22C3A5908(&qword_27D9BC338, &qword_22C9126D8);
  v11 = sub_22C90B1CC();
  v12 = v11;
  v47 = v5;
  v48 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v44 = v5 + 16;
  v45 = (v5 + 8);
  v43 = v11 + 64;
  v41 = v14;
  v42 = (v5 + 32);
  v50 = a2;

  v21 = 0;
  v46 = v12;
  while (1)
  {
    v22 = v49;
    if (!v18)
    {
      v25 = v21;
      while (1)
      {
        v21 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v21 >= v19)
        {
          goto LABEL_15;
        }

        v26 = *(v41 + 8 * v21);
        ++v25;
        if (v26)
        {
          v23 = v9;
          v24 = __clz(__rbit64(v26));
          v51 = (v26 - 1) & v26;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    v23 = v9;
    v24 = __clz(__rbit64(v18));
    v51 = (v18 - 1) & v18;
LABEL_11:
    v27 = v24 | (v21 << 6);
    v28 = (*(v48 + 48) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = *(v47 + 72) * v27;
    (*(v47 + 16))(v49, *(v48 + 56) + v31, v4);
    v32 = v50;

    v33 = v32;
    v34 = v52;
    sub_22C43B5B0(v22, v33);
    v52 = v34;
    if (v34)
    {
      break;
    }

    (*v45)(v22, v4);
    *(v43 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v35 = v46;
    v36 = (*(v46 + 48) + 16 * v27);
    v12 = v46;
    *v36 = v29;
    v36[1] = v30;
    result = (*v42)(*(v35 + 56) + v31, v23, v4);
    v37 = *(v12 + 16);
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_17;
    }

    v9 = v23;
    *(v12 + 16) = v39;
    v18 = v51;
  }

  v12 = v46;

  (*v45)(v22, v4);
LABEL_15:
  swift_bridgeObjectRelease_n();
  return v12;
}

uint64_t sub_22C440730(uint64_t a1)
{
  v2 = sub_22C902D0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = &v34 - v8;
  sub_22C3A5908(&qword_27D9BC338, &qword_22C9126D8);
  result = sub_22C90B1CC();
  v10 = 0;
  v39 = v3;
  v40 = a1;
  v13 = *(a1 + 64);
  v12 = a1 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v37 = v3 + 16;
  v38 = (v3 + 8);
  v42 = result;
  v36 = result + 64;
  v34 = v12;
  v35 = (v3 + 32);
  while (1)
  {
    v18 = v41;
    if (!v16)
    {
      v21 = v10;
      while (1)
      {
        v10 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v10 >= v17)
        {
          return v42;
        }

        v22 = *(v34 + 8 * v10);
        ++v21;
        if (v22)
        {
          v19 = v7;
          v20 = __clz(__rbit64(v22));
          v43 = (v22 - 1) & v22;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    v19 = v7;
    v20 = __clz(__rbit64(v16));
    v43 = (v16 - 1) & v16;
LABEL_11:
    v23 = v20 | (v10 << 6);
    v24 = (*(v40 + 48) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(v39 + 72) * v23;
    (*(v39 + 16))(v41, *(v40 + 56) + v27, v2);

    v28 = v44;
    sub_22C43CE88(v18);
    v44 = v28;
    if (v28)
    {
      break;
    }

    (*v38)(v18, v2);
    *(v36 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v29 = v42;
    v30 = (*(v42 + 48) + 16 * v23);
    *v30 = v25;
    v30[1] = v26;
    result = (*v35)(*(v29 + 56) + v27, v19, v2);
    v31 = *(v29 + 16);
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_17;
    }

    v7 = v19;
    *(v29 + 16) = v33;
    v16 = v43;
  }

  (*v38)(v18, v2);
  return v42;
}

uint64_t sub_22C440A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a2;
  v63 = a3;
  v57 = sub_22C902D0C();
  v4 = *(v57 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v57);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v47 - v9;
  v10 = sub_22C902C9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v47 - v16;
  sub_22C3A5908(&qword_27D9BC1F8, &qword_22C9126D0);
  result = sub_22C90B1CC();
  v18 = result;
  v19 = 0;
  v61 = a1;
  v22 = *(a1 + 64);
  v21 = a1 + 64;
  v20 = v22;
  v23 = 1 << *(v21 - 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v48 = (v23 + 63) >> 6;
  v49 = v21;
  v53 = v4 + 16;
  v54 = v11 + 16;
  v64 = v11;
  v55 = (v4 + 8);
  v60 = v4;
  v50 = (v4 + 32);
  v51 = result + 64;
  v58 = result;
  v52 = v11 + 32;
  if (v25)
  {
    while (1)
    {
      v26 = __clz(__rbit64(v25));
      v65 = (v25 - 1) & v25;
LABEL_10:
      v29 = v26 | (v19 << 6);
      v30 = v61;
      v31 = *(v61 + 48);
      v32 = v64;
      v33 = *(v64 + 16);
      v67 = *(v64 + 72) * v29;
      v34 = v56;
      v33(v56, v31 + v67, v10);
      v35 = *(v30 + 56);
      v36 = v29;
      v37 = *(v60 + 16);
      v66 = *(v60 + 72) * v29;
      v38 = v10;
      v39 = v59;
      v40 = v57;
      v37(v59, v35 + v66, v57);
      v41 = *(v32 + 32);
      v41(v15, v34, v38);
      v42 = v68;
      sub_22C439F24(v39, v62, v63);
      v68 = v42;
      if (v42)
      {
        break;
      }

      (*v55)(v39, v40);
      *(v51 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      v43 = v58;
      v41((*(v58 + 48) + v67), v15, v38);
      v18 = v43;
      result = (*v50)(*(v43 + 56) + v66, v8, v40);
      v44 = *(v43 + 16);
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_17;
      }

      v10 = v38;
      *(v18 + 16) = v46;
      v25 = v65;
      if (!v65)
      {
        goto LABEL_5;
      }
    }

    v18 = v58;

    (*(v64 + 8))(v15, v38);
    (*v55)(v39, v40);
    return v18;
  }

  else
  {
LABEL_5:
    v27 = v19;
    while (1)
    {
      v19 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v19 >= v48)
      {
        return v18;
      }

      v28 = *(v49 + 8 * v19);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v65 = (v28 - 1) & v28;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C440E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C902D0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v63 = &v51 - v10;
  v11 = sub_22C902C9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v61 = &v51 - v17;
  sub_22C3A5908(&qword_27D9BC1F8, &qword_22C9126D0);
  v18 = sub_22C90B1CC();
  v65 = a1;
  v66 = v12;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v52 = (v22 + 63) >> 6;
  v53 = v20;
  v58 = v5 + 16;
  v59 = v12 + 16;
  v57 = v12 + 32;
  v25 = v18;
  v60 = (v5 + 8);
  v64 = v5;
  v54 = (v5 + 32);
  v55 = v18 + 64;
  v67 = a2;
  v26 = v4;

  v28 = 0;
  v62 = v25;
  v56 = v26;
  if (v24)
  {
    while (1)
    {
      v29 = __clz(__rbit64(v24));
      v68 = (v24 - 1) & v24;
LABEL_10:
      v32 = v29 | (v28 << 6);
      v34 = v65;
      v33 = v66;
      v35 = *(v65 + 48);
      v36 = *(v66 + 16);
      v70 = *(v66 + 72) * v32;
      v37 = v61;
      v36(v61, v35 + v70, v11);
      v38 = *(v34 + 56);
      v39 = v32;
      v40 = *(v64 + 16);
      v69 = *(v64 + 72) * v32;
      v41 = v11;
      v42 = v63;
      v43 = v56;
      v40(v63, v38 + v69, v56);
      v44 = *(v33 + 32);
      v44(v16, v37, v41);
      v45 = v67;

      v46 = v45;
      v47 = v71;
      sub_22C43B5B0(v42, v46);
      v71 = v47;
      if (v47)
      {
        break;
      }

      (*v60)(v42, v43);
      *(v55 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      v25 = v62;
      v44((*(v62 + 48) + v70), v16, v41);
      result = (*v54)(*(v25 + 56) + v69, v9, v43);
      v48 = *(v25 + 16);
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_17;
      }

      v11 = v41;
      *(v25 + 16) = v50;
      v24 = v68;
      if (!v68)
      {
        goto LABEL_5;
      }
    }

    v25 = v62;

    (*(v66 + 8))(v16, v41);
    (*v60)(v42, v43);
LABEL_15:
    swift_bridgeObjectRelease_n();
    return v25;
  }

  else
  {
LABEL_5:
    v30 = v28;
    while (1)
    {
      v28 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v28 >= v52)
      {
        goto LABEL_15;
      }

      v31 = *(v53 + 8 * v28);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v68 = (v31 - 1) & v31;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C44128C(uint64_t a1)
{
  v2 = sub_22C902D0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v48 - v8;
  v9 = sub_22C902C9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v48 - v15;
  sub_22C3A5908(&qword_27D9BC1F8, &qword_22C9126D0);
  result = sub_22C90B1CC();
  v17 = 0;
  v61 = a1;
  v62 = v10;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v48 = (v21 + 63) >> 6;
  v49 = v19;
  v53 = v3 + 16;
  v54 = v10 + 16;
  v55 = (v3 + 8);
  v51 = result + 64;
  v52 = v10 + 32;
  v60 = v3;
  v50 = (v3 + 32);
  v57 = result;
  v58 = v14;
  if (v23)
  {
    while (1)
    {
      v24 = v2;
      v25 = __clz(__rbit64(v23));
      v63 = (v23 - 1) & v23;
LABEL_10:
      v28 = v25 | (v17 << 6);
      v30 = v61;
      v29 = v62;
      v31 = *(v61 + 48);
      v32 = *(v62 + 16);
      v65 = *(v62 + 72) * v28;
      v33 = v56;
      v32(v56, v31 + v65, v9);
      v34 = *(v30 + 56);
      v35 = v28;
      v36 = *(v60 + 16);
      v64 = *(v60 + 72) * v28;
      v37 = v9;
      v38 = v59;
      v36(v59, v34 + v64, v24);
      v39 = v24;
      v40 = *(v29 + 32);
      v41 = v58;
      v40(v58, v33, v37);
      v42 = v66;
      sub_22C43CE88(v38);
      v66 = v42;
      if (v42)
      {
        break;
      }

      (*v55)(v38, v39);
      *(v51 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      v43 = v57;
      v40((*(v57 + 48) + v65), v41, v37);
      result = (*v50)(*(v43 + 56) + v64, v7, v39);
      v44 = *(v43 + 16);
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_17;
      }

      result = v43;
      v2 = v39;
      v9 = v37;
      *(result + 16) = v46;
      v23 = v63;
      if (!v63)
      {
        goto LABEL_5;
      }
    }

    v47 = v57;

    (*(v62 + 8))(v41, v37);
    (*v55)(v38, v39);
    return v47;
  }

  else
  {
LABEL_5:
    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v48)
      {
        return result;
      }

      v27 = *(v49 + 8 * v17);
      ++v26;
      if (v27)
      {
        v24 = v2;
        v25 = __clz(__rbit64(v27));
        v63 = (v27 - 1) & v27;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C4416B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 104);
  result = v1;
  v5 = *(v2 - 332);
  return result;
}

uint64_t sub_22C4416C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 104);
  result = v1;
  v5 = *(v2 - 372);
  return result;
}

uint64_t sub_22C4416E8@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 152) = &a2 - a1;

  return sub_22C901FAC();
}

uint64_t sub_22C441758@<X0>(uint64_t a1@<X8>)
{
  result = v1 + *(a1 - 256) + v4 * v3;
  v6 = *v2;
  return result;
}

uint64_t sub_22C441778(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = 0;
  *(result + 32) = 4;
  *v2 = result;
  return result;
}

uint64_t sub_22C441798()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22C36BA00();
}

uint64_t sub_22C441820(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_22C36BA00();
}

uint64_t sub_22C44184C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22C441820(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_22C441874(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = sub_22C36BA00();
  v7 = sub_22C573484(v4, v5, v6);
  v8 = sub_22C36BA00();
  sub_22C5736FC(v8, v9, v7);

  return sub_22C36BA00();
}

uint64_t sub_22C4418CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22C441874(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_22C4418F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22C90F870;
  MEMORY[0x2318B7850](a1, a2);
  *(v8 + 32) = 0x203A74706D6F7250;
  *(v8 + 40) = 0xE800000000000000;
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    a3 = 7104878;
    v9 = 0xE300000000000000;
  }

  MEMORY[0x2318B7850](a3, v9);

  *(v8 + 48) = 0x3A72616D6D617247;
  *(v8 + 56) = 0xE900000000000020;
  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C3F035C();
  v10 = sub_22C90A04C();

  return v10;
}

uint64_t sub_22C441A78(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[10];

  PromptGrammar.description.getter();
  return v1;
}

uint64_t sub_22C441AD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22C441A78(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_22C441B08(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = a3;
  switch(a3)
  {
    case 1u:
      result = 1;
      break;
    case 2u:
      result = 2;
      break;
    case 3u:
      result = 3;
      break;
    case 4u:
      result = 5;
      break;
    case 5u:
      result = qword_22C912A50[a1];
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C441B64(uint64_t a1)
{
  v2 = sub_22C442068();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C441BA0(uint64_t a1)
{
  v2 = sub_22C442068();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C441C04()
{
  v1 = v0;
  v2 = sub_22C90654C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D1DAA8] || v7 == *MEMORY[0x277D1D9F8] || v7 == *MEMORY[0x277D1DAC0] || v7 == *MEMORY[0x277D1DAA0] || v7 == *MEMORY[0x277D1DA98])
  {
    goto LABEL_15;
  }

  if (v7 == *MEMORY[0x277D1DA50] || v7 == *MEMORY[0x277D1DA78] || v7 == *MEMORY[0x277D1DA30] || v7 == *MEMORY[0x277D1DA08] || v7 == *MEMORY[0x277D1DA10] || v7 == *MEMORY[0x277D1DA70] || v7 == *MEMORY[0x277D1DA88] || v7 == *MEMORY[0x277D1DAD8] || v7 == *MEMORY[0x277D1DAD0] || v7 == *MEMORY[0x277D1DA48] || v7 == *MEMORY[0x277D1DAE8] || v7 == *MEMORY[0x277D1D9F0] || v7 == *MEMORY[0x277D1DA90] || v7 == *MEMORY[0x277D1DAC8] || v7 == *MEMORY[0x277D1DAB0] || v7 == *MEMORY[0x277D1DA80])
  {
    goto LABEL_63;
  }

  if (v7 == *MEMORY[0x277D1DAE0] || v7 == *MEMORY[0x277D1DAB8])
  {
LABEL_15:
    v12 = 0;
LABEL_64:
    (*(v3 + 8))(v6, v2);
    return v12;
  }

  if (v7 == *MEMORY[0x277D1DA18] || v7 == *MEMORY[0x277D1DA00] || v7 == *MEMORY[0x277D1DA58] || v7 == *MEMORY[0x277D1DA28])
  {
LABEL_63:
    v12 = 1;
    goto LABEL_64;
  }

  if (v7 == *MEMORY[0x277D1DA40])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x277D1DA20] || v7 == *MEMORY[0x277D1DA38])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277D1DAF0] || v7 == *MEMORY[0x277D1DA68])
  {
    return 0;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C441F48(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_22C441F64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C441FA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22C441FE8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_22C442014()
{
  result = qword_27D9BC340;
  if (!qword_27D9BC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC340);
  }

  return result;
}

unint64_t sub_22C442068()
{
  result = qword_27D9BC348;
  if (!qword_27D9BC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC348);
  }

  return result;
}

void sub_22C4420BC()
{
  sub_22C370030();
  v1 = sub_22C901FAC();
  v2 = sub_22C369824(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v5 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_22C386FC8(v7, v12);
  if (sub_22C370B74(v0, 1, v1) != 1)
  {
    v8 = sub_22C382F64();
    v9(v8);
    sub_22C4515C4();
    v10 = sub_22C370120();
    v11(v10, v1);
  }

  sub_22C36FB20();
}

void sub_22C4423A8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v8 = *(sub_22C90769C() - 8);
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    sub_22C450D6C((a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v5), a2, &v16);
    if (v2)
    {

      return;
    }

    v10 = v16;
    ++v5;
    if ((~v16 & 0xF000000000000007) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v7 + 16);
        sub_22C591324();
        v7 = v14;
      }

      v11 = *(v7 + 16);
      v12 = v11 + 1;
      if (v11 >= *(v7 + 24) >> 1)
      {
        sub_22C591324();
        v12 = v11 + 1;
        v7 = v15;
      }

      *(v7 + 16) = v12;
      *(v7 + 8 * v11 + 32) = v10;
      v5 = v9;
    }
  }
}

uint64_t sub_22C442520(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v34 = MEMORY[0x277D84F90];
  sub_22C3B7168(0, v1, 0);
  v2 = v34;
  result = sub_22C36C88C(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 64;
  v27 = v3 + 72;
  v28 = v1;
  v29 = v3 + 64;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_24;
      }

      v30 = v6;
      v31 = v8;
      v32 = v5;
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = v3;
      v13 = *v11;
      v14 = v11[1];
      v15 = *(v34 + 16);
      v16 = *(v34 + 24);
      v33 = v15 + 1;
      result = swift_bridgeObjectRetain_n();
      if (v15 >= v16 >> 1)
      {
        result = sub_22C3B7168(v16 > 1, v33, 1);
      }

      *(v34 + 16) = v33;
      v17 = (v34 + 32 * v15);
      v17[4] = v13;
      v17[5] = v14;
      v17[6] = v13;
      v17[7] = v14;
      v18 = 1 << *(v12 + 32);
      if (v7 >= v18)
      {
        goto LABEL_25;
      }

      v9 = v29;
      v19 = *(v29 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v3 = v12;
      if (*(v12 + 36) != v32)
      {
        goto LABEL_27;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v21 = v28;
      }

      else
      {
        v22 = v10 << 6;
        v23 = v10 + 1;
        v21 = v28;
        v24 = (v27 + 8 * v10);
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_22C3A5038(v7, v32, v30 & 1);
            v18 = __clz(__rbit64(v25)) + v22;
            goto LABEL_18;
          }
        }

        result = sub_22C3A5038(v7, v32, v30 & 1);
      }

LABEL_18:
      v8 = v31 + 1;
      if (v31 + 1 == v21)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v3 + 36);
      v7 = v18;
      if (v18 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}