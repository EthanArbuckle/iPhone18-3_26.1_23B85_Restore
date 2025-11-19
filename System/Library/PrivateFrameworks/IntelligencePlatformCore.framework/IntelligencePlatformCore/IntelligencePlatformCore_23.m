uint64_t sub_1C45E35D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v56 = a1;
  v52 = a4;
  v57 = sub_1C4EFB768();
  v63 = *(v57 - 8);
  v6 = *(v63 + 64);
  v7 = MEMORY[0x1EEE9AC00](v57);
  v51 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v44 - v9;
  v10 = sub_1C4EFDAB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v58 = 0;
  *(&v58 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4F8C490);
  v15 = *(a2 + 24);
  v47 = *(a2 + 32);
  v48 = v15;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0xD000000000000077, 0x80000001C4F8C4B0);
  v53 = v58;
  v46 = sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C4F0CE60;
  strcpy((v16 + 32), "behaviorType");
  *(v16 + 45) = 0;
  *(v16 + 46) = -5120;
  sub_1C45D5A24(v14);
  v17 = sub_1C4EFDAA8();
  v20 = *(v11 + 8);
  v19 = v11 + 8;
  v18 = v20;
  v49 = v10;
  v20(v14, v10);
  v21 = MEMORY[0x1E69A0180];
  *(v16 + 72) = MEMORY[0x1E69E6530];
  *(v16 + 80) = v21;
  *(v16 + 48) = v17;
  *(v16 + 88) = 0xD000000000000012;
  *(v16 + 96) = 0x80000001C4F855A0;
  v22 = a3;
  v23 = v54;
  v50 = v22;
  v24 = sub_1C45D2400();
  v25 = MEMORY[0x1E69A0138];
  *(v16 + 128) = MEMORY[0x1E69E6158];
  *(v16 + 136) = v25;
  *(v16 + 104) = v24;
  *(v16 + 112) = v26;
  sub_1C4EFB738();
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v27 = v55;
  sub_1C4EFB998();
  if (v27)
  {

    sub_1C4420C3C(&v58, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v63 + 8))(v23, v57);
  }

  else
  {
    v45 = 0x80000001C4F855A0;
    v53 = v18;
    v55 = v19;

    sub_1C4420C3C(&v58, &unk_1EC0BC770, &qword_1C4F10DC0);
    v30 = v63 + 8;
    v29 = *(v63 + 8);
    result = v29(v23, v57);
    v31 = 0;
    v32 = 1;
    if ((v62 & 1) == 0 && v61 >= 1)
    {
      v63 = v30;
      v33 = 1;
      if ((v61 & 1) == 0)
      {
        v33 = 2;
      }

      v44 = v33;
      v54 = ((v61 - 1) >> 1);
      *&v58 = 0;
      *(&v58 + 1) = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000052, 0x80000001C4F8C530);
      MEMORY[0x1C6940010](v48, v47);
      MEMORY[0x1C6940010](0xD0000000000000CCLL, 0x80000001C4F8C590);
      v48 = v58;
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1C4F0D480;
      strcpy((v34 + 32), "behaviorType");
      *(v34 + 45) = 0;
      *(v34 + 46) = -5120;
      sub_1C45D5A24(v14);
      v35 = sub_1C4EFDAA8();
      v53(v14, v49);
      v36 = MEMORY[0x1E69E6530];
      *(v34 + 72) = MEMORY[0x1E69E6530];
      v37 = MEMORY[0x1E69A0180];
      *(v34 + 80) = MEMORY[0x1E69A0180];
      *(v34 + 88) = 0xD000000000000012;
      *(v34 + 48) = v35;
      *(v34 + 96) = v45;
      v38 = sub_1C45D2400();
      *(v34 + 128) = MEMORY[0x1E69E6158];
      v39 = MEMORY[0x1E69A0138];
      *(v34 + 104) = v38;
      *(v34 + 112) = v40;
      *(v34 + 136) = v39;
      *(v34 + 144) = 0x74696D696CLL;
      *(v34 + 184) = v36;
      *(v34 + 192) = v37;
      v41 = v44;
      *(v34 + 152) = 0xE500000000000000;
      *(v34 + 160) = v41;
      *(v34 + 200) = 0x74657366666FLL;
      *(v34 + 208) = 0xE600000000000000;
      *(v34 + 240) = v36;
      *(v34 + 248) = v37;
      *(v34 + 216) = v54;
      v42 = v51;
      sub_1C4EFB738();
      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      sub_1C4EFB998();

      sub_1C4420C3C(&v58, &unk_1EC0BC770, &qword_1C4F10DC0);
      result = v29(v42, v57);
      v31 = v61;
      v32 = v62;
    }

    v43 = v52;
    *v52 = v31;
    *(v43 + 8) = v32;
  }

  return result;
}

uint64_t sub_1C45E3BFC()
{
  v2 = *(v0 + 16);
  sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
  sub_1C441C09C();
  result = sub_1C4EFAF88();
  if (!v1)
  {
    return v4;
  }

  return result;
}

void sub_1C45E3C88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = objc_autoreleasePoolPush();
  sub_1C45E3D50(a2, a1, a3, a4, a5, a6, &v19, &v17);
  objc_autoreleasePoolPop(v15);
  if (!v7)
  {
    v16 = v18;
    *a7 = v17;
    *(a7 + 8) = v16;
  }
}

uint64_t sub_1C45E3D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v82 = a7;
  v70[1] = a6;
  v71 = a5;
  v89 = a4;
  v90 = a2;
  v72 = a8;
  v91 = sub_1C4EFB768();
  v97 = *(v91 - 8);
  v10 = *(v97 + 64);
  v11 = MEMORY[0x1EEE9AC00](v91);
  v78 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v85 = v70 - v13;
  v14 = sub_1C4EFDAB8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C4EF9F88();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C4EF9CD8();
  v87 = *(v24 - 8);
  v88 = v24;
  v25 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9F58();
  v77 = a1;
  sub_1C4EF9E78();
  (*(v20 + 8))(v23, v19);
  *&v94 = 0;
  *(&v94 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000003ALL, 0x80000001C4F8C660);
  v28 = *(a3 + 24);
  v79 = *(a3 + 32);
  v80 = v28;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0xD0000000000000E7, 0x80000001C4F8C6A0);
  v83 = *(&v94 + 1);
  v84 = v94;
  v74 = sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v29 = swift_allocObject();
  v73 = xmmword_1C4F0D480;
  *(v29 + 16) = xmmword_1C4F0D480;
  strcpy((v29 + 32), "behaviorType");
  *(v29 + 45) = 0;
  *(v29 + 46) = -5120;
  sub_1C45D5A24(v18);
  v30 = sub_1C4EFDAA8();
  v31 = *(v15 + 8);
  v81 = v18;
  v76 = v14;
  v75 = v15 + 8;
  v31(v18, v14);
  v32 = MEMORY[0x1E69A0180];
  *(v29 + 72) = MEMORY[0x1E69E6530];
  *(v29 + 80) = v32;
  *(v29 + 48) = v30;
  *(v29 + 88) = 0xD000000000000012;
  *(v29 + 96) = 0x80000001C4F855A0;
  v33 = sub_1C45D2400();
  v34 = MEMORY[0x1E69A0138];
  *(v29 + 128) = MEMORY[0x1E69E6158];
  *(v29 + 136) = v34;
  *(v29 + 104) = v33;
  *(v29 + 112) = v35;
  strcpy((v29 + 144), "maxTimestamp");
  *(v29 + 157) = 0;
  *(v29 + 158) = -5120;
  sub_1C4EF9AD8();
  v36 = MEMORY[0x1E69E63B0];
  v37 = MEMORY[0x1E69A0168];
  *(v29 + 184) = MEMORY[0x1E69E63B0];
  *(v29 + 192) = v37;
  *(v29 + 160) = v38;
  *(v29 + 200) = 0xD000000000000012;
  *(v29 + 208) = 0x80000001C4F8C790;
  sub_1C4EF9AF8();
  *(v29 + 240) = v36;
  *(v29 + 248) = v37;
  *(v29 + 216) = v39;
  v40 = v85;
  sub_1C4EFB738();
  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  v41 = v40;
  v42 = v86;
  v43 = sub_1C4EFB978();
  v44 = v42;
  if (v42)
  {

    sub_1C4420C3C(&v94, &unk_1EC0BC770, &qword_1C4F10DC0);
    (*(v97 + 8))(v40, v91);
    result = (*(v87 + 8))(v27, v88);
LABEL_3:
    *v82 = v44;
    return result;
  }

  v46 = v43;
  v70[0] = 0x80000001C4F855A0;
  v84 = v31;
  v48 = v79;
  v47 = v80;
  v86 = 0;
  v49 = v81;

  sub_1C4420C3C(&v94, &unk_1EC0BC770, &qword_1C4F10DC0);
  v51 = v97 + 8;
  v50 = *(v97 + 8);
  v50(v41, v91);
  if (*(v46 + 16))
  {
    v85 = v50;
    v97 = v51;
    v83 = sub_1C4F016F8();

    *&v94 = 0;
    *(&v94 + 1) = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001DLL, 0x80000001C4F8C7B0);
    MEMORY[0x1C6940010](v47, v48);
    MEMORY[0x1C6940010](0xD00000000000009FLL, 0x80000001C4F8C7D0);
    v80 = v94;
    v52 = swift_allocObject();
    *(v52 + 16) = v73;
    strcpy((v52 + 32), "behaviorType");
    *(v52 + 45) = 0;
    *(v52 + 46) = -5120;
    sub_1C45D5A24(v49);
    v53 = sub_1C4EFDAA8();
    v84(v49, v76);
    *(v52 + 72) = MEMORY[0x1E69E6530];
    *(v52 + 80) = MEMORY[0x1E69A0180];
    *(v52 + 88) = 0xD000000000000012;
    *(v52 + 48) = v53;
    *(v52 + 96) = v70[0];
    v54 = sub_1C45D2400();
    *(v52 + 128) = MEMORY[0x1E69E6158];
    v55 = MEMORY[0x1E69A0138];
    *(v52 + 104) = v54;
    *(v52 + 112) = v56;
    *(v52 + 136) = v55;
    strcpy((v52 + 144), "minTimestamp");
    *(v52 + 157) = 0;
    *(v52 + 158) = -5120;
    v57 = v27;
    sub_1C4EF9AD8();
    v58 = MEMORY[0x1E69E63B0];
    *(v52 + 184) = MEMORY[0x1E69E63B0];
    v59 = MEMORY[0x1E69A0168];
    *(v52 + 160) = v60;
    *(v52 + 192) = v59;
    strcpy((v52 + 200), "maxTimestamp");
    *(v52 + 213) = 0;
    *(v52 + 214) = -5120;
    sub_1C4EF9AD8();
    *(v52 + 240) = v58;
    *(v52 + 248) = v59;
    *(v52 + 216) = v61;
    v62 = v78;
    sub_1C4EFB738();
    v96 = 0;
    v94 = 0u;
    v95 = 0u;
    v63 = v86;
    sub_1C4EFB998();
    v44 = v63;
    v64 = v87;
    if (v63)
    {

      sub_1C4420C3C(&v94, &unk_1EC0BC770, &qword_1C4F10DC0);
      (v85)(v62, v91);
      result = (*(v64 + 8))(v57, v88);
      goto LABEL_3;
    }

    sub_1C4420C3C(&v94, &unk_1EC0BC770, &qword_1C4F10DC0);
    (v85)(v62, v91);
    if (v93)
    {
      v67 = 0;
    }

    else
    {
      v67 = v92;
    }

    v65 = v71(v83, v67);
    v66 = v68;

    result = (*(v64 + 8))(v57, v88);
  }

  else
  {
    (*(v87 + 8))(v27, v88);

    v65 = 0;
    v66 = 1;
  }

  v69 = v72;
  *v72 = v65;
  *(v69 + 8) = v66 & 1;
  return result;
}

double sub_1C45E4660(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C459D100();
    v4 = v18;
    v6 = (a1 + 32);
    v7 = *(v18 + 16);
    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = *(v18 + 24);
      if (v7 >= v10 >> 1)
      {
        sub_1C441EA8C(v10);
        sub_1C459D100();
      }

      *(v18 + 16) = v7 + 1;
      *(v18 + 8 * v7++ + 32) = v8;
      --v3;
    }

    while (v3);
  }

  v11 = sub_1C45DC32C(v4);
  if (v12)
  {
  }

  else
  {
    v14 = *&v11;
    v15 = COERCE_DOUBLE(sub_1C45DC490(v4));
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      result = a2 - v14;
      if (result != 0.0 && v15 != 0.0)
      {
        return result / v15;
      }
    }
  }

  return result;
}

uint64_t sub_1C45E47A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C459D100();
    v5 = v21;
    v6 = (a1 + 32);
    v7 = *(v21 + 16);
    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = *(v21 + 24);
      v11 = v7 + 1;
      if (v7 >= v10 >> 1)
      {
        sub_1C441EA8C(v10);
        sub_1C459D100();
      }

      *(v21 + 16) = v11;
      *(v21 + 8 * v7++ + 32) = v8;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    v11 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v11)
    {

LABEL_15:
      *&result = 0.0;
      return result;
    }
  }

  v12 = 0;
  v13 = 0.0;
  do
  {
    v14 = *(v5 + 8 * v12++ + 32);
    v13 = v13 + v14;
  }

  while (v11 != v12);
  sub_1C45DC400(v5, v14);
  v16 = v15;
  v18 = v17;

  if (v18)
  {
    goto LABEL_15;
  }

  *&result = 0.0;
  v20 = a2 - v13 / v11;
  if (v20 != 0.0 && v16 != 0.0)
  {
    *&result = v20 / v16;
  }

  return result;
}

double sub_1C45E490C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v74 = a4;
  v81 = a3;
  v79 = a1;
  v71 = a5;
  v70 = sub_1C4EFDAB8();
  v69 = *(v70 - 8);
  v6 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EFBD38();
  v78 = *(v8 - 8);
  v9 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v68 - v13;
  v15 = sub_1C4EF9CD8();
  v73 = *(v15 - 8);
  v16 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v68 - v21;
  v83 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v84 = *(v83 - 8);
  v23 = *(v84 + 64);
  v24 = MEMORY[0x1EEE9AC00](v83);
  v75 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v76 = &v68 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v82 = &v68 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v68 - v30;
  v33 = *(a2 + 24);
  v32 = *(a2 + 32);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v34 = v8;
  v89 = v8;
  v90 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v88);
  sub_1C4EFBD48();
  v35 = sub_1C4EFDAA8();
  v86 = MEMORY[0x1E69E6530];
  v87 = MEMORY[0x1E69A0178];
  v85[0] = v35;
  v36 = sub_1C4EFB298();
  v92 = v36;
  v93 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v91);
  sub_1C4EFBB28();
  sub_1C4420C3C(v85, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v88);
  v97 = v31;
  sub_1C4EFBCD8();
  (*(v19 + 8))(v22, v18);
  sub_1C440962C(v91);
  sub_1C4460050(v74, v14, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v14, 1, v15) == 1)
  {
    sub_1C4420C3C(v14, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v37 = v34;
  }

  else
  {
    v38 = v73;
    v39 = v72;
    (*(v73 + 32))(v72, v14, v15);
    v40 = v34;
    v89 = v34;
    v90 = MEMORY[0x1E69A0050];
    sub_1C4422F90(v88);
    sub_1C4EFBD48();
    sub_1C4EF9AD8();
    v86 = MEMORY[0x1E69E63B0];
    v87 = MEMORY[0x1E69A0160];
    v85[0] = v41;
    v92 = v36;
    v93 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v91);
    sub_1C4EFB818();
    sub_1C440962C(v85);
    sub_1C440962C(v88);
    sub_1C4401CBC(&qword_1EC0B9AD0, &qword_1EC0B9AC8, &unk_1C4F10E00);
    v42 = v82;
    v43 = v83;
    v44 = v97;
    sub_1C4EFB438();
    (*(v38 + 8))(v39, v15);
    v45 = v84;
    (*(v84 + 8))(v44, v43);
    sub_1C440962C(v91);
    (*(v45 + 32))(v44, v42, v43);
    v37 = v40;
  }

  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v46 = swift_allocObject();
  v74 = xmmword_1C4F0D130;
  *(v46 + 16) = xmmword_1C4F0D130;
  v47 = v77;
  sub_1C4EFBD48();
  v73 = sub_1C4EFADA8();
  v48 = MEMORY[0x1E699FDA8];
  *(v46 + 56) = v73;
  *(v46 + 64) = v48;
  sub_1C4422F90((v46 + 32));
  sub_1C4EFB918();
  v78 = *(v78 + 8);
  (v78)(v47, v37);
  sub_1C4401CBC(&qword_1EDDFA268, &qword_1EC0B9AC8, &unk_1C4F10E00);
  v49 = v75;
  v50 = v83;
  sub_1C4EFB2F8();

  v51 = swift_allocObject();
  *(v51 + 16) = v74;
  sub_1C4EFBD48();
  *(v51 + 56) = v73;
  *(v51 + 64) = MEMORY[0x1E699FDA8];
  sub_1C4422F90((v51 + 32));
  sub_1C4EFB918();
  (v78)(v47, v37);
  v52 = v82;
  sub_1C4EFB2F8();

  v53 = *(v84 + 8);
  v53(v49, v50);
  sub_1C4401CBC(&qword_1EDDF0070, &qword_1EC0B9AC8, &unk_1C4F10E00);
  v54 = v76;
  sub_1C4EFB608();
  v53(v52, v50);
  sub_1C4401CBC(&qword_1EDDFE850, &qword_1EC0B9AC8, &unk_1C4F10E00);
  v55 = v80;
  v56 = sub_1C4EFB048();
  v53(v54, v50);
  if (v55)
  {
    v53(v97, v50);
  }

  else
  {
    v58 = v97;
    if (v56 && (v59 = sub_1C493CA4C(), v61 = v60, , v61))
    {
      v62 = v68;
      (*(v69 + 16))(v68, v81, v70);
      sub_1C45D29E0(v62, v59, v61, v94);
      v63 = v95;
      v64 = v96;
      v53(v58, v50);
      result = *v94;
      v65 = v94[1];
      v66 = v71;
      *v71 = v94[0];
      *(v66 + 16) = v65;
      *(v66 + 32) = v63;
      *(v66 + 40) = v64;
    }

    else
    {
      v53(v58, v50);
      v67 = v71;
      *(v71 + 32) = 0;
      result = 0.0;
      *v67 = 0u;
      *(v67 + 16) = 0u;
      *(v67 + 40) = -1;
    }
  }

  return result;
}

uint64_t sub_1C45E53A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v48 = a1;
  v46 = a4;
  v50 = sub_1C4EFB768();
  v56 = *(v50 - 8);
  v6 = *(v56 + 64);
  v7 = MEMORY[0x1EEE9AC00](v50);
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  v11 = sub_1C4EFDAB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v51 = 0;
  *(&v51 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000003ALL, 0x80000001C4F8C660);
  v16 = *(a2 + 24);
  v41 = *(a2 + 32);
  v42 = v16;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0xD000000000000069, 0x80000001C4F8C870);
  v47 = v51;
  v40 = sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C4F0CE60;
  strcpy((v17 + 32), "behaviorType");
  *(v17 + 45) = 0;
  *(v17 + 46) = -5120;
  sub_1C45D5A24(v15);
  v18 = sub_1C4EFDAA8();
  v21 = *(v12 + 8);
  v20 = v12 + 8;
  v19 = v21;
  v43 = v11;
  v21(v15, v11);
  v22 = MEMORY[0x1E69A0180];
  *(v17 + 72) = MEMORY[0x1E69E6530];
  *(v17 + 80) = v22;
  *(v17 + 48) = v18;
  *(v17 + 88) = 0xD000000000000012;
  *(v17 + 96) = 0x80000001C4F855A0;
  v23 = a3;
  v24 = v22;
  v44 = v23;
  v25 = sub_1C45D2400();
  v26 = MEMORY[0x1E69A0138];
  *(v17 + 128) = MEMORY[0x1E69E6158];
  *(v17 + 136) = v26;
  *(v17 + 104) = v25;
  *(v17 + 112) = v27;
  sub_1C4EFB738();
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v28 = v49;
  sub_1C4EFB998();
  if (v28)
  {

    sub_1C4420C3C(&v51, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v56 + 8))(v10, v50);
  }

  v47 = v19;
  v49 = v20;

  sub_1C4420C3C(&v51, &unk_1EC0BC770, &qword_1C4F10DC0);
  v31 = v56 + 8;
  v30 = *(v56 + 8);
  result = v30(v10, v50);
  if ((v55 & 1) != 0 || v54 < 1)
  {
    goto LABEL_10;
  }

  v38 = v54;
  v39 = 0;
  v56 = v31;
  *&v51 = 0;
  *(&v51 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000039, 0x80000001C4F8C8E0);
  MEMORY[0x1C6940010](v42, v41);
  MEMORY[0x1C6940010](0xD000000000000032, 0x80000001C4F8C920);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C4F0D130;
  strcpy((v32 + 32), "behaviorType");
  *(v32 + 45) = 0;
  *(v32 + 46) = -5120;
  sub_1C45D5A24(v15);
  v33 = sub_1C4EFDAA8();
  v47(v15, v43);
  *(v32 + 72) = MEMORY[0x1E69E6530];
  *(v32 + 80) = v24;
  *(v32 + 48) = v33;
  v34 = v45;
  sub_1C4EFB738();
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v35 = v39;
  sub_1C4EFB998();
  if (v35)
  {

    sub_1C4420C3C(&v51, &unk_1EC0BC770, &qword_1C4F10DC0);
    return v30(v34, v50);
  }

  sub_1C4420C3C(&v51, &unk_1EC0BC770, &qword_1C4F10DC0);
  result = v30(v34, v50);
  if ((v55 & 1) != 0 || v54 < 1)
  {
LABEL_10:
    v36 = v46;
    *v46 = 0.0;
  }

  else
  {
    v36 = v46;
    *v46 = v38 / v54;
  }

  *(v36 + 8) = 0;
  return result;
}

uint64_t sub_1C45E5950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[3] = a1;
  v22[2] = a3;
  v22[0] = a4;
  v28 = sub_1C4EFB768();
  v23 = *(v28 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EFDAB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24[0] = 0;
  *(&v24[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000003ALL, 0x80000001C4F8C660);
  MEMORY[0x1C6940010](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1C6940010](0xD000000000000069, 0x80000001C4F8C870);
  v22[1] = *&v24[0];
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C4F0CE60;
  strcpy((v13 + 32), "behaviorType");
  *(v13 + 45) = 0;
  *(v13 + 46) = -5120;
  sub_1C45D5A24(v12);
  v14 = sub_1C4EFDAA8();
  (*(v9 + 8))(v12, v8);
  v15 = MEMORY[0x1E69A0180];
  *(v13 + 72) = MEMORY[0x1E69E6530];
  *(v13 + 80) = v15;
  *(v13 + 48) = v14;
  *(v13 + 88) = 0xD000000000000012;
  *(v13 + 96) = 0x80000001C4F855A0;
  v16 = sub_1C45D2400();
  v17 = MEMORY[0x1E69A0138];
  *(v13 + 128) = MEMORY[0x1E69E6158];
  *(v13 + 136) = v17;
  *(v13 + 104) = v16;
  *(v13 + 112) = v18;
  sub_1C4EFB738();
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v19 = v22[4];
  sub_1C4EFB998();
  if (v19)
  {

    sub_1C4420C3C(v24, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v23 + 8))(v7, v28);
  }

  else
  {

    sub_1C4420C3C(v24, &unk_1EC0BC770, &qword_1C4F10DC0);
    result = (*(v23 + 8))(v7, v28);
    v21 = v26;
    if (v27 & 1 | (v26 < 1))
    {
      v21 = 0.0;
    }

    *v22[0] = v21;
  }

  return result;
}

uint64_t sub_1C45E5CC4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, unint64_t *a7@<X8>)
{
  v46 = a6;
  v47 = a7;
  v48 = a1;
  v11 = sub_1C4EFB768();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000005CLL, 0x80000001C4F8CB10);
  MEMORY[0x1C6940010](a2, a3);
  MEMORY[0x1C6940010](0xD000000000000092, 0x80000001C4F8CB70);
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C4F0CE60;
  v17 = MEMORY[0x1E69E6158];
  *(v16 + 32) = 0xD000000000000010;
  *(v16 + 40) = 0x80000001C4F855E0;
  v18 = MEMORY[0x1E69A0138];
  *(v16 + 72) = v17;
  *(v16 + 80) = v18;
  *(v16 + 48) = a4;
  *(v16 + 56) = a5;
  v19 = MEMORY[0x1E69E6530];
  *(v16 + 88) = 7889261;
  *(v16 + 96) = 0xE300000000000000;
  v20 = MEMORY[0x1E69A0180];
  *(v16 + 128) = v19;
  *(v16 + 136) = v20;
  *(v16 + 104) = v46;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB738();
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v21 = v51;
  v22 = sub_1C4EFBC18();
  if (v21)
  {

    sub_1C4420C3C(v49, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v12 + 8))(v15, v11);
  }

  else
  {
    v24 = v22;

    sub_1C4420C3C(v49, &unk_1EC0BC770, &qword_1C4F10DC0);
    (*(v12 + 8))(v15, v11);
    v25 = sub_1C4428DA0();
    if (v25)
    {
      v26 = v25;
      *&v49[0] = MEMORY[0x1E69E7CC0];
      sub_1C459D2C8(0, v25 & ~(v25 >> 63), 0);
      if ((v26 & 0x8000000000000000) == 0)
      {
        v27 = 0;
        v28 = *&v49[0];
        v45 = v24;
        v46 = v24 & 0xC000000000000001;
        v44[0] = v24 & 0xFFFFFFFFFFFFFF8;
        v44[1] = "entityIdentifier";
        while (!__OFADD__(v27, 1))
        {
          v51 = v28;
          if (v46)
          {
            MEMORY[0x1C6940F90](v27, v24);
          }

          else
          {
            if (v27 >= *(v44[0] + 16))
            {
              goto LABEL_18;
            }

            v29 = *(v24 + 8 * v27 + 32);
          }

          sub_1C493DF34();
          v31 = v30;
          v48 = v27 + 1;
          v32 = v26;
          sub_1C493DD18();
          v34 = v33;
          v36 = v35;
          sub_1C493DF34();
          v38 = v37;

          v28 = v51;
          *&v49[0] = v51;
          v40 = *(v51 + 16);
          v39 = *(v51 + 24);
          v41 = v40 + 1;
          if (v40 >= v39 >> 1)
          {
            v51 = v40 + 1;
            sub_1C459D2C8((v39 > 1), v40 + 1, 1);
            v41 = v51;
            v28 = *&v49[0];
          }

          *(v28 + 16) = v41;
          v42 = (v28 + 32 * v40);
          v42[4] = v31;
          v42[5] = v34;
          v42[6] = v36;
          v42[7] = v38;
          ++v27;
          v26 = v32;
          v43 = v47;
          v24 = v45;
          if (v48 == v32)
          {

            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
      }

      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {

      v28 = MEMORY[0x1E69E7CC0];
      v43 = v47;
LABEL_16:
      *v43 = v28;
    }
  }

  return result;
}

uint64_t sub_1C45E6150@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v19 = a3;
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v20[0] = 0;
  *(&v20[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000059, 0x80000001C4F8CC30);
  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](0xD000000000000046, 0x80000001C4F8CC90);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_1C4EFB758();
  v11 = sub_1C4EFBC18();
  if (v3)
  {

    (*(v7 + 8))(v10, v6);
    return sub_1C4420C3C(v20, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  else
  {
    v13 = v11;

    (*(v7 + 8))(v10, v6);
    sub_1C4420C3C(v20, &unk_1EC0BC770, &qword_1C4F10DC0);
    *&v20[0] = MEMORY[0x1E69E7CC8];
    v14 = sub_1C4428DA0();
    v15 = 0;
    v16 = v19;
    while (1)
    {
      if (v14 == v15)
      {

        *v16 = *&v20[0];
        return result;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1C6940F90](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v17 = *(v13 + 8 * v15 + 32);
      }

      if (__OFADD__(v15, 1))
      {
        break;
      }

      v22 = v17;
      sub_1C45E6418(v20, &v22);

      ++v15;
    }

    __break(1u);
LABEL_13:
    __break(1u);

    __break(1u);
  }

  return result;
}

void sub_1C45E6418(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1C493E14C();
  if (v2)
  {
    goto LABEL_13;
  }

  HIDWORD(v30) = v5;
  sub_1C493DD18();
  v7 = v6;
  v9 = v8;
  v29 = sub_1C493CB08();
  LODWORD(v30) = v10;
  v11 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  v31 = *a1;
  v12 = sub_1C445FAA8(v7, v9);
  if (__OFADD__(*(v31 + 16), (v13 & 1) == 0))
  {
    __break(1u);
LABEL_13:
    swift_unexpectedError();
    __break(1u);
    goto LABEL_14;
  }

  v14 = v12;
  v15 = v13;
  sub_1C456902C(&qword_1EC0B9B00, &qword_1C4F10E58);
  v16 = v31;
  if (sub_1C4F02458())
  {
    v17 = sub_1C445FAA8(v7, v9);
    if ((v15 & 1) == (v18 & 1))
    {
      v14 = v17;
      goto LABEL_6;
    }

LABEL_14:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

LABEL_6:
  *a1 = v31;
  if (v15)
  {
  }

  else
  {
    sub_1C45E6628(&v31);
    sub_1C44686DC(v14, v7, v9, v31, v16);
  }

  v26 = (*(v16 + 56) + 8 * v14);
  if (v30)
  {
    v27 = *(v16 + 56) + 8 * v14;
    sub_1C45921C4(HIDWORD(v30), v19, v20, v21, v22, v23, v24, v25, v29, v30);
  }

  else
  {
    v28 = *v26;
    swift_isUniquelyReferenced_nonNull_native();
    v31 = *v26;
    sub_1C4660B90();
    *v26 = v31;
  }
}

uint64_t sub_1C45E6628@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PHPersonAgeType(0);
  sub_1C45E8E08(&qword_1EC0B8D98, type metadata accessor for PHPersonAgeType);
  result = sub_1C4F00F28();
  *a1 = result;
  return result;
}

uint64_t sub_1C45E66A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v73 = a8;
  v67 = a6;
  v68 = a7;
  v65 = a5;
  v63 = a4;
  v70 = a1;
  v10 = sub_1C4EFB768();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v64 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v57 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v57 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v66 = &v57 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v69 = &v57 - v23;
  v24 = sub_1C4EFDAB8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 104))(v28, *MEMORY[0x1E69A9450], v24);
  sub_1C45E8E08(&unk_1EDDEFFC0, MEMORY[0x1E69A9478]);
  v71 = a2;
  LOBYTE(a2) = sub_1C4F010B8();
  (*(v25 + 8))(v28, v24);
  if (a2)
  {
    result = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v62 = a3;
    *&v74[0] = sub_1C4A728F8(63, 0xE100000000000000, *(a3 + 16));
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870);
    v30 = sub_1C4F01048();
    v32 = v31;

    *&v74[0] = 0;
    *(&v74[0] + 1) = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001FLL, 0x80000001C4F8C3C0);
    MEMORY[0x1C6940010](*(v63 + 24), *(v63 + 32));
    MEMORY[0x1C6940010](0xD000000000000037, 0x80000001C4F8C3E0);
    MEMORY[0x1C6940010](v30, v32);

    MEMORY[0x1C6940010](0xD000000000000067, 0x80000001C4F8C420);
    v60 = *(&v74[0] + 1);
    v63 = *&v74[0];
    v61 = sub_1C456902C(&qword_1EC0B8838, "nS\t");
    v33 = swift_allocObject();
    v57 = xmmword_1C4F0D130;
    *(v33 + 16) = xmmword_1C4F0D130;
    *(v33 + 32) = sub_1C4EFDAA8();
    *&v74[0] = v33;
    v59 = sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
    v58 = sub_1C4401CBC(&qword_1EDDDBBE0, &qword_1EC0B8EB8, &unk_1C4F0E920);
    sub_1C4EFB798();
    *&v74[0] = v62;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50);
    v34 = v64;
    sub_1C4EFB798();
    sub_1C4EFB748();
    v35 = *(v11 + 8);
    v35(v34, v10);
    v35(v17, v10);
    sub_1C456902C(&qword_1EC0B87D0, &qword_1C4F0DBC0);
    v36 = swift_allocObject();
    *(v36 + 16) = v57;
    sub_1C4EF9AD8();
    *(v36 + 32) = v37;
    *&v74[0] = v36;
    sub_1C456902C(&qword_1EC0B9228, &unk_1C4F3DD70);
    sub_1C4401CBC(&qword_1EDDDBBF8, &qword_1EC0B9228, &unk_1C4F3DD70);
    sub_1C4EFB798();
    v38 = v66;
    sub_1C4EFB748();
    v35(v17, v10);
    v35(v20, v10);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1C4F0CE60;
    v40 = v68;
    *(v39 + 32) = v67;
    *(v39 + 40) = v40;
    *&v74[0] = v39;
    sub_1C4EFB798();
    v41 = v69;
    sub_1C4EFB748();
    v35(v20, v10);
    v35(v38, v10);
    v75 = 0;
    memset(v74, 0, sizeof(v74));
    v56 = MEMORY[0x1E69E6168];
    v42 = v72;
    v43 = sub_1C4EFB948();
    if (v42)
    {

      sub_1C4420C3C(v74, &unk_1EC0BC770, &qword_1C4F10DC0);
      v35(v41, v10);
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v44 = sub_1C4F00978();
      sub_1C442B738(v44, qword_1EDDFECB8);
      v45 = v42;
      v46 = sub_1C4F00968();
      v47 = sub_1C4F01CD8();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v74[0] = v49;
        *v48 = 136315138;
        swift_getErrorValue();
        v50 = sub_1C4F02A38();
        v52 = sub_1C441D828(v50, v51, v74);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_1C43F8000, v46, v47, "Error running dbQuery : %s", v48, 0xCu);
        sub_1C440962C(v49);
        MEMORY[0x1C6942830](v49, -1, -1);
        MEMORY[0x1C6942830](v48, -1, -1);
      }

      result = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v53 = v43;

      sub_1C4420C3C(v74, &unk_1EC0BC770, &qword_1C4F10DC0);
      v54 = (v35)(v41, v10);
      MEMORY[0x1EEE9AC00](v54);
      v56 = v71;
      v55 = sub_1C45D95B4(sub_1C45E7AD0, (&v57 - 2), v53);

      result = sub_1C4597538(v55);
    }
  }

  *v73 = result;
  return result;
}

double sub_1C45E6FA8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_1C4EFDAB8();
  v7 = sub_1C43FCDF8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v14 = *a1;
  v13 = a1[1];
  (*(v15 + 16))(v11 - v10, a2);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45D29E0(v12, v14, v13, &v18);
  v16 = v19[0];
  *a3 = v18;
  a3[1] = v16;
  result = *(v19 + 9);
  *(a3 + 25) = *(v19 + 9);
  return result;
}

void sub_1C45E709C(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = sub_1C456902C(&qword_1EC0B9A30, &unk_1C4F10E20);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v58 - v6;
  v8 = sub_1C4EFDAB8();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v68 = v15 - v14;
  v16 = sub_1C456902C(&qword_1EC0B9A50, &unk_1C4F10BB0);
  v17 = sub_1C43FBD18(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBD08();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v71 = &v58 - v24;
  v26 = *v1;
  v25 = v1[1];
  v27 = v1[2];
  v28 = v1[3];
  v29 = v1[4];
  v59 = v7;
  v69 = v27;
  if (v29)
  {
    v64 = v25;
    v67 = v22;
LABEL_7:
    sub_1C44040A4();
    v65 = v32 & v31;
    v35 = v34 | (v33 << 6);
    (*(v11 + 16))(v68, *(v26 + 48) + *(v11 + 72) * v35, v8);
    v36 = *(v26 + 56) + 48 * v35;
    v37 = *v36;
    v66 = v26;
    v39 = *(v36 + 8);
    v38 = *(v36 + 16);
    v41 = *(v36 + 24);
    v40 = *(v36 + 32);
    v62 = v37;
    v63 = v41;
    v60 = v38;
    v61 = v40;
    v42 = v71;
    v43 = v71 + *(v2 + 48);
    v44 = *(v11 + 32);
    v45 = *(v36 + 40);
    v46 = sub_1C4404BCC();
    v47(v46);
    v48 = v62;
    v49 = v63;
    *v43 = v62;
    *(v43 + 8) = v39;
    *(v43 + 16) = v38;
    *(v43 + 24) = v49;
    v50 = v61;
    *(v43 + 32) = v61;
    *(v43 + 40) = v45;
    sub_1C440BAA8(v42, 0, 1, v2);
    v51 = v39;
    v26 = v66;
    sub_1C45D7F64(v48, v51, v60, v49, v50, v45);
    v25 = v64;
    v52 = v65;
    v22 = v67;
LABEL_8:
    *v1 = v26;
    v1[1] = v25;
    v1[2] = v69;
    v1[3] = v28;
    v1[4] = v52;
    v54 = v1[5];
    v53 = v1[6];
    sub_1C44CD9E0(v71, v22, &qword_1EC0B9A50, &unk_1C4F10BB0);
    v55 = 1;
    if (sub_1C44157D4(v22, 1, v2) != 1)
    {
      v56 = v59;
      sub_1C44CD9E0(v22, v59, &qword_1EC0B9A30, &unk_1C4F10E20);
      v54(v56);
      sub_1C4420C3C(v56, &qword_1EC0B9A30, &unk_1C4F10E20);
      v55 = 0;
    }

    v57 = sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90);
    sub_1C440BAA8(v70, v55, 1, v57);
  }

  else
  {
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= ((v27 + 64) >> 6))
      {
        sub_1C440BAA8(v71, 1, 1, v2);
        v52 = 0;
        goto LABEL_8;
      }

      ++v28;
      if (*(v25 + 8 * v30))
      {
        v64 = v25;
        v67 = v22;
        v28 = v30;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C45E7410@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1C442E860(*(v3 + 56) + 40 * v10, v19);
    *&v21 = v13;
    *(&v21 + 1) = v12;
    sub_1C441D670(v19, &v22);
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = *(&v21 + 1);
    v16 = v21;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v18 = v1[5];
      v17 = v1[6];
      *&v19[0] = v16;
      *(&v19[0] + 1) = v15;
      v19[1] = v22;
      v19[2] = v23;
      v20 = v24;
      v18(v19);
      return sub_1C4420C3C(v19, &qword_1EC0B9AC0, &qword_1C4F10DE8);
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C45E7578@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v50 = sub_1C456902C(&qword_1EC0B9B08, &qword_1C4F10E80);
  sub_1C43FBCE0(v50);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - v6;
  v8 = sub_1C4EFEFB8();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C4405820();
  v14 = sub_1C456902C(&qword_1EC0B9B10, &qword_1C4F10E88);
  v15 = sub_1C43FBD18(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBD08();
  v20 = v18 - v19;
  result = MEMORY[0x1EEE9AC00](v21);
  v24 = &v48 - v23;
  v26 = *v1;
  v25 = v1[1];
  v27 = v1[2];
  v28 = v1[3];
  v29 = v1[4];
  v48 = v7;
  v51 = v27;
  if (v29)
  {
LABEL_6:
    sub_1C44040A4();
    v49 = v32 & v31;
    v35 = v34 | (v33 << 6);
    (*(v11 + 16))(v2, *(v26 + 48) + *(v11 + 72) * v35, v8);
    sub_1C442E860(*(v26 + 56) + 40 * v35, v53);
    v36 = v50;
    v37 = v8;
    v38 = *(v50 + 48);
    (*(v11 + 32))(v24, v2, v37);
    sub_1C441D670(v53, &v24[v38]);
    sub_1C440BAA8(v24, 0, 1, v36);
    v39 = v49;
LABEL_7:
    *v1 = v26;
    v1[1] = v25;
    v1[2] = v51;
    v1[3] = v28;
    v1[4] = v39;
    v40 = v1[5];
    v41 = v1[6];
    sub_1C44CD9E0(v24, v20, &qword_1EC0B9B10, &qword_1C4F10E88);
    v42 = 1;
    v43 = sub_1C44157D4(v20, 1, v36);
    v44 = v52;
    if (v43 != 1)
    {
      v45 = v20;
      v46 = v48;
      sub_1C44CD9E0(v45, v48, &qword_1EC0B9B08, &qword_1C4F10E80);
      v40(v46);
      sub_1C4420C3C(v46, &qword_1EC0B9B08, &qword_1C4F10E80);
      v42 = 0;
    }

    v47 = sub_1C456902C(&qword_1EC0B9B18, &unk_1C4F10E90);
    return sub_1C440BAA8(v44, v42, 1, v47);
  }

  else
  {
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= ((v27 + 64) >> 6))
      {
        v36 = v50;
        sub_1C440BAA8(&v48 - v23, 1, 1, v50);
        v39 = 0;
        goto LABEL_7;
      }

      ++v28;
      if (*(v25 + 8 * v30))
      {
        v28 = v30;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C45E7890@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (v1[4])
  {
    v22 = v1[2];
LABEL_7:
    sub_1C44040A4();
    v10 = v9 & v8;
    v13 = v12 | (v11 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = v14[1];
    v28 = *v14;
    sub_1C4460050(*(v3 + 56) + (v13 << 6), &v29, &qword_1EC0B9AE0, &qword_1C4F16C40);
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v16 = v34;
    v27 = v33;
    v17 = v35;
    v18 = v36;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v5 = v22;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v10;
    if (v15)
    {
      v21 = v1[5];
      v20 = v1[6];
      v29 = v28;
      v30 = v15;
      v31 = v23;
      v32 = v24;
      v33 = v25;
      v34 = v26;
      v35 = v27;
      v36 = v16;
      v37 = v17;
      v38 = v18;
      v21(&v29);
      return sub_1C4420C3C(&v29, &qword_1EC0B90A0, &unk_1C4F10E30);
    }

    else
    {
      *(a1 + 57) = 0u;
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
    }
  }

  else
  {
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= ((v5 + 64) >> 6))
      {
        v16 = 0;
        v26 = 0;
        v27 = 0;
        v24 = 0;
        v25 = 0;
        v23 = 0;
        v15 = 0;
        v28 = 0;
        v17 = 0;
        v18 = 0;
        v10 = 0;
        goto LABEL_8;
      }

      ++v6;
      if (*(v4 + 8 * v7))
      {
        v22 = v1[2];
        v6 = v7;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C45E7AF0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C45E7C40(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C45E7BE4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C45E7BE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C45E7C40(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v80 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v75 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v77 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = v7[2];
        sub_1C458A358();
        v7 = v73;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_1C458A358();
        v7 = v74;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v78 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_1C45E821C((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v78);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v77;
      a4 = v75;
      if (v77 >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C45E80F0(&v80, *a1, a3);
LABEL_89:
}

uint64_t sub_1C45E80F0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C46194F4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C45E821C((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C45E821C(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1C4474DD4(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1C4474DD4(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_1C45E8390@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C46C37F8((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C45E83C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1C46C3CC4(v32);
  *&v31[5] = v32[0];
  *&v31[7] = v32[1];
  *&v31[9] = v32[2];
  v31[11] = v33;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  while (1)
  {
    sub_1C45E7410(&v29);
    v7 = v30;
    if (!v30)
    {
      sub_1C449BB0C();
    }

    v8 = v29;
    sub_1C441D670(v31, v28);
    v9 = *a5;
    v11 = sub_1C445FAA8(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1C456902C(&qword_1EC0C47D0, &qword_1C4F10DE0);
        sub_1C4F02468();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1C4679ACC(v14, a4 & 1);
      v16 = *a5;
      v17 = sub_1C445FAA8(v8, v7);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

      v11 = v17;
      if (v15)
      {
LABEL_10:
        v19 = *a5;
        sub_1C442E860(*(*a5 + 56) + 40 * v11, v27);
        sub_1C440962C(v28);

        v20 = (*(v19 + 56) + 40 * v11);
        sub_1C440962C(v20);
        sub_1C441D670(v27, v20);
        goto LABEL_14;
      }
    }

    v21 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = v8;
    v22[1] = v7;
    sub_1C441D670(v28, v21[7] + 40 * v11);
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_17;
    }

    v21[2] = v25;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C45E8608(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));
  v4 = *(v2 + 24);

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t sub_1C45E8694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45E8718(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C45E872C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1C45E8740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = a7;
  v13 = sub_1C4422F90(&v32);
  (*(*(a6 - 8) + 32))(v13, a1, a6);
  v14 = *a5;
  v15 = sub_1C445FAA8(a2, a3);
  if (__OFADD__(v14[2], (v16 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v15;
  v18 = v16;
  sub_1C456902C(&qword_1EC0C47D0, &qword_1C4F10DE0);
  if ((sub_1C4F02458() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = *a5;
  v20 = sub_1C445FAA8(a2, a3);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_10:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v17 = v20;
LABEL_5:
  v22 = *a5;
  if (v18)
  {
    v23 = (v22[7] + 40 * v17);
    sub_1C440962C(v23);
    return sub_1C441D670(&v32, v23);
  }

  else
  {
    v25 = v33;
    v26 = sub_1C4418280(&v32, v33);
    v27 = *(*(v25 - 8) + 64);
    MEMORY[0x1EEE9AC00](v26);
    v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v29);
    sub_1C45E89C4(v17, a2, a3, v29, v22, a6, a7);
    sub_1C440962C(&v32);
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C45E8968(uint64_t a1)
{
  v2 = type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C45E89C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  v13 = sub_1C4422F90(&v19);
  (*(*(a6 - 8) + 32))(v13, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_1C441D670(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_1C45E8B6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_1C45DD830(v2, v3, a1);
}

double sub_1C45E8C2C(double a1)
{
  v3 = sub_1C4EF9CD8();
  sub_1C43FCF7C(v3);
  v6 = *(v1 + ((*(v5 + 64) + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C45E15D8(a1, v6);
}

uint64_t sub_1C45E8E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C45E8E50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

BOOL sub_1C45E8EB8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0) + 20);
  sub_1C4EFDAB8();
  sub_1C4419144();
  sub_1C45EC890(v3, v4);
  sub_1C4F01578();
  sub_1C4F01578();
  return v7 == v6;
}

uint64_t sub_1C45E8F84()
{
  MEMORY[0x1C69417F0](*v0);
  v1 = *(type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0) + 20);
  sub_1C4EFDAB8();
  sub_1C4419144();
  sub_1C45EC890(v2, v3);
  return sub_1C4F00FE8();
}

uint64_t sub_1C45E900C()
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](*v0);
  v1 = *(type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0) + 20);
  sub_1C4EFDAB8();
  sub_1C4419144();
  sub_1C45EC890(v2, v3);
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

uint64_t sub_1C45E90B4(uint64_t a1, uint64_t a2)
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](*v2);
  v4 = *(a2 + 20);
  sub_1C4EFDAB8();
  sub_1C4419144();
  sub_1C45EC890(v5, v6);
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

void sub_1C45E9150()
{
  sub_1C43FE96C();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  sub_1C43FD1B4();
  v15 = (*(v5 + 24))(v7, v5);
  v16 = *(v13 + 28);
  v17 = sub_1C4EFDAB8();
  sub_1C43FBCE0(v17);
  (*(v18 + 16))(&v2[v16], v9);
  *v2 = v15;
  swift_beginAccess();
  v19 = v3[17];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v20 = sub_1C465C188(v2, v19);

  if (!v20 || (sub_1C456902C(&qword_1EC0B87A8, &unk_1C4F0E930), (swift_dynamicCast() & 1) == 0))
  {
    v21 = v3[10];
    v22 = v3[11];
    sub_1C4409678(v3 + 7, v21);
    (*(v22 + 8))(v11, v9, v7, v5, v21, v22);
    if (!v1)
    {
      swift_beginAccess();
      v23 = swift_unknownObjectRetain();
      sub_1C45ECAD8(v23, v2, v3 + 17, v7, v5);
      swift_endAccess();
    }
  }

  sub_1C45ECB54(v2);
  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C45E9360()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v12 = (v11 - v10);
  v13 = (*(v2 + 24))(v4, v2);
  v14 = &v12[*(v8 + 28)];
  (*(v2 + 64))(v4, v2);
  *v12 = v13;
  swift_beginAccess();
  v15 = swift_unknownObjectRetain();
  sub_1C45ECAD8(v15, v12, v0 + 17, v4, v2);
  swift_endAccess();
  v16 = v0[10];
  v17 = v0[11];
  sub_1C4409678(v0 + 7, v16);
  (*(v17 + 16))(v6, v4, v2, v16, v17);
  sub_1C45ECB54(v12);
  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C45E94BC()
{
  v2 = v0;
  type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  sub_1C456902C(&qword_1EC0B87A8, &unk_1C4F0E930);
  sub_1C45EC890(&qword_1EC0B9B40, type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey);
  v3 = sub_1C4F00F28();
  swift_beginAccess();
  v4 = v2[17];
  v2[17] = v3;

  v5 = v2[10];
  v6 = v2[11];
  sub_1C4409678(v2 + 7, v5);
  (*(v6 + 24))(v5, v6);
  if (!v1)
  {
    v7 = *sub_1C4409678(v2 + 12, v2[15]);
    sub_1C45EBD20();
  }
}

uint64_t *sub_1C45E95E8()
{
  sub_1C440962C(v0 + 2);
  sub_1C440962C(v0 + 7);
  sub_1C440962C(v0 + 12);
  v1 = v0[17];

  return v0;
}

uint64_t sub_1C45E9620()
{
  sub_1C45E95E8();

  return swift_deallocClassInstance();
}

void sub_1C45E96E4()
{
  v2 = v0;
  v3 = *(v0 + 16);
  sub_1C4EFAFC8();
  sub_1C4EFB2C8();
  if (!v1)
  {
    v4 = *sub_1C4409678((v2 + 24), *(v2 + 48));
    sub_1C45EBD20();
  }
}

uint64_t sub_1C45E9788(uint64_t a1, void *a2)
{
  v3 = sub_1C4EFB768();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v9, "DELETE FROM ");
  HIBYTE(v9[6]) = 0;
  v9[7] = -5120;
  MEMORY[0x1C6940010](*a2, a2[1]);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v4 + 8))(v7, v3);
}

void sub_1C45E98C0()
{
  sub_1C43FE96C();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  sub_1C4EFDAB8();
  sub_1C43FCE64();
  v37 = v8;
  v38 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v15);
  v17 = *(v16 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C4402C40();
  v19 = type metadata accessor for DecayingHistogramState();
  v20 = sub_1C43FBCE0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v25 = (v24 - v23);
  v26 = *(v0 + 16);
  sub_1C4F01F48();
  sub_1C4EFAF88();
  if (!v1)
  {
    v36 = v25;
    if (!v40[0])
    {
      v27 = sub_1C4EF9CD8();
      sub_1C43FCF64();
      sub_1C440BAA8(v28, v29, v30, v27);
      v31 = [objc_allocWithZone(MEMORY[0x1E69A4688]) init];
      v32 = *(v19 + 20);
      sub_1C43FCF64();
      sub_1C440BAA8(v33, v34, v35, v27);
      *v36 = v31;
      sub_1C45AD734(v2, v36 + v32);
      (*(v38 + 16))(v14, v7, v37);
      sub_1C442E860(v3 + 24, v40);
      sub_1C442E860(v3 + 64, v39);
      (*(v5 + 152))(v36, v14, v40, v39);
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C45E9B28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v39 = a1;
  v38 = a6;
  v33 = sub_1C4EFDAB8();
  v37 = *(v33 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1C4EFB768();
  v12 = *(v45 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v43[0] = 0;
  *(&v43[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4F8D050);
  v16 = *a2;
  v17 = a2[1];
  v32 = a2;
  MEMORY[0x1C6940010](v16, v17);
  MEMORY[0x1C6940010](0xD000000000000034, 0x80000001C4F8D070);
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C4F0CE60;
  *(v18 + 32) = 1701869940;
  *(v18 + 40) = 0xE400000000000000;
  v19 = *(a5 + 24);
  v34 = a5;
  v35 = a4;
  v20 = v19(a4, a5);
  v21 = MEMORY[0x1E69E6530];
  v22 = MEMORY[0x1E69A0180];
  *(v18 + 72) = MEMORY[0x1E69E6530];
  *(v18 + 80) = v22;
  *(v18 + 48) = v20;
  strcpy((v18 + 88), "behaviorType");
  *(v18 + 101) = 0;
  *(v18 + 102) = -5120;
  v23 = sub_1C4EFDAA8();
  *(v18 + 128) = v21;
  *(v18 + 136) = v22;
  *(v18 + 104) = v23;
  sub_1C4EFB738();
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v24 = v40;
  sub_1C4EFB998();
  if (v24)
  {

    sub_1C4420C3C(v43, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v12 + 8))(v15, v45);
  }

  else
  {
    v27 = v36;
    v26 = v37;

    sub_1C4420C3C(v43, &unk_1EC0BC770, &qword_1C4F10DC0);
    (*(v12 + 8))(v15, v45);
    v28 = v42;
    if (v42 >> 60 == 15)
    {
      result = 0;
    }

    else
    {
      v29 = v41;
      v30 = v27;
      (*(v26 + 16))(v27, a3, v33);
      v31 = v32;
      sub_1C442E860((v32 + 3), v43);
      sub_1C442E860((v31 + 8), &v41);
      result = (*(v34 + 160))(v29, v28, v30, v43, &v41);
    }

    *v38 = result;
  }

  return result;
}

void sub_1C45E9F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v26 = (*(v24 + 112))(v25, v24);
  if (!v21)
  {
    v28 = v26;
    v29 = v27;
    a10 = &a9;
    v30 = *(v20 + 16);
    MEMORY[0x1EEE9AC00](v26);
    sub_1C4EFAFC8();
    sub_1C4EFB2C8();
    sub_1C4434000(v28, v29);
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C45EA004(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a1;
  v29 = a4;
  v30 = a5;
  v28 = a3;
  v35 = sub_1C4EFB768();
  v32 = *(v35 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1C4EFDAB8();
  v13 = *(v27 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1C6940010](*a2, a2[1]);
  MEMORY[0x1C6940010](0xD000000000000067, 0x80000001C4F8CFE0);
  v26[1] = v34;
  v26[2] = v33;
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C4F0C890;
  *(v17 + 32) = 1701869940;
  *(v17 + 40) = 0xE400000000000000;
  v18 = (*(a7 + 24))(a6, a7);
  v19 = MEMORY[0x1E69E6530];
  v20 = MEMORY[0x1E69A0180];
  *(v17 + 72) = MEMORY[0x1E69E6530];
  *(v17 + 80) = v20;
  *(v17 + 48) = v18;
  strcpy((v17 + 88), "behaviorType");
  *(v17 + 101) = 0;
  *(v17 + 102) = -5120;
  (*(a7 + 64))(a6, a7);
  v21 = sub_1C4EFDAA8();
  (*(v13 + 8))(v16, v27);
  *(v17 + 128) = v19;
  *(v17 + 136) = v20;
  *(v17 + 104) = v21;
  *(v17 + 144) = 1635017060;
  *(v17 + 152) = 0xE400000000000000;
  v22 = MEMORY[0x1E699FD70];
  *(v17 + 184) = MEMORY[0x1E6969080];
  *(v17 + 192) = v22;
  v23 = v29;
  v24 = v30;
  *(v17 + 160) = v29;
  *(v17 + 168) = v24;
  sub_1C44344B8(v23, v24);
  sub_1C4EFB738();
  sub_1C4EFBFF8();
  (*(v32 + 8))(v12, v35);
}

void sub_1C45EA370(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_pool);

  v6 = sub_1C45ED17C();
  a2[3] = &type metadata for BehaviorDatabaseHistogramManager;
  a2[4] = &off_1F43E25F0;
  v7 = swift_allocObject();
  *a2 = v7;
  v7[8] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v7[9] = &off_1F43E2510;
  v7[5] = v6;
  sub_1C442E860(a1, (v7 + 10));
  sub_1C440F2C8();
  v7[2] = v8;
  v7[3] = 0xE90000000000006DLL;
  v7[4] = v5;
}

uint64_t sub_1C45EA42C()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider____lazy_storage___behaviorKeyCache;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider____lazy_storage___behaviorKeyCache))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider____lazy_storage___behaviorKeyCache);
  }

  else
  {
    v3 = v0;
    v4 = sub_1C456902C(&qword_1EC0B9B20, &qword_1C4F11008);
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v2 = sub_1C4F00248();
    v7 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void *sub_1C45EA4BC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider____lazy_storage___behaviorKeyCache) = 0;
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = a1;
  sub_1C4EFDAB8();
  sub_1C43FCF64();
  sub_1C440BAA8(v2, v3, v4, v5);
  return v1;
}

char *sub_1C45EA510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider____lazy_storage___behaviorKeyCache] = 0;
  *(v4 + 2) = a1;
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider_type;
  v9 = sub_1C4EFDAB8();
  sub_1C43FBCE0(v9);
  (*(v10 + 32))(&v4[v8], a2, v9);
  sub_1C440BAA8(&v4[v8], 0, 1, v9);
  *(v4 + 3) = a3;
  *(v4 + 4) = a4;
  return v4;
}

uint64_t sub_1C45EA5B4()
{
  v1 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4402C40();
  sub_1C4EFDAB8();
  sub_1C43FCF64();
  sub_1C440BAA8(v5, v6, v7, v8);
  v9 = sub_1C45EA66C(v0);
  sub_1C4420C3C(v0, &qword_1EC0B9AA0, &unk_1C4F10DA0);
  return v9;
}

uint64_t sub_1C45EA66C(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v31 - v9;
  v11 = sub_1C4EFDAB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v31 - v17;
  sub_1C45EC820(a1, v10);
  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    sub_1C4420C3C(v10, &qword_1EC0B9AA0, &unk_1C4F10DA0);
    sub_1C45EC820(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider_type, v8);
    if (sub_1C44157D4(v8, 1, v11) == 1)
    {
      sub_1C4420C3C(v8, &qword_1EC0B9AA0, &unk_1C4F10DA0);
      v19 = sub_1C4EFDA58();
      v20 = v19;
    }

    else
    {
      v26 = *(v12 + 32);
      v25 = v12 + 32;
      v26(v16, v8, v11);
      sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
      v27 = *(v25 + 40);
      v28 = (*(v25 + 48) + 32) & ~*(v25 + 48);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1C4F0D130;
      v19 = (v26)(v20 + v28, v16, v11);
    }
  }

  else
  {
    v22 = *(v12 + 32);
    v21 = v12 + 32;
    v22(v18, v10, v11);
    sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
    v23 = *(v21 + 40);
    v24 = (*(v21 + 48) + 32) & ~*(v21 + 48);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C4F0D130;
    v19 = (v22)(v20 + v24, v18, v11);
  }

  v29 = *(v1 + 16);
  MEMORY[0x1EEE9AC00](v19);
  v31[-2] = v20;
  v31[-1] = v1;
  sub_1C456902C(&qword_1EC0B8F58, &qword_1C4F11020);
  sub_1C4EFAF88();

  if (!v2)
  {
    return v31[1];
  }

  return result;
}

uint64_t sub_1C45EA9C0(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD1B4();
  v7 = sub_1C4EFDAB8();
  sub_1C43FBCE0(v7);
  (*(v8 + 16))(v1, a1, v7);
  sub_1C440BAA8(v1, 0, 1, v7);
  v9 = sub_1C45EA66C(v1);
  sub_1C4420C3C(v1, &qword_1EC0B9AA0, &unk_1C4F10DA0);
  return v9;
}

void sub_1C45EAAC0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = 0;
  v6 = *(a2 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v6 == v5)
    {
      *a3 = v7;
      return;
    }

    v8 = *(sub_1C4EFDAB8() - 8);
    sub_1C45EAC78(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v5, a1, &v18);
    if (v3)
    {

      return;
    }

    v9 = v18;
    v10 = *(v18 + 16);
    v11 = *(v7 + 16);
    if (__OFADD__(v11, v10))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v11 + v10 > *(v7 + 24) >> 1)
    {
      sub_1C458AFD0();
      v7 = v12;
    }

    if (*(v9 + 16))
    {
      if ((*(v7 + 24) >> 1) - *(v7 + 16) < v10)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v10)
      {
        v13 = *(v7 + 16);
        v14 = __OFADD__(v13, v10);
        v15 = v13 + v10;
        if (v14)
        {
          goto LABEL_20;
        }

        *(v7 + 16) = v15;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_18;
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1C45EAC78(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v24 = a3;
  v5 = sub_1C4EFB768();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EFDAB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x1E69A9450], v9);
  sub_1C45EC890(&unk_1EDDEFFC0, MEMORY[0x1E69A9478]);
  v14 = sub_1C4F010B8();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_3:
    *v24 = v15;
    return;
  }

  sub_1C45EB148();
  if (!v3)
  {
    v18 = v16;
    v19 = v17;
    *&v25[0] = 0;
    *(&v25[0] + 1) = 0xE000000000000000;
    sub_1C4F02248();

    *&v25[0] = 0xD00000000000001FLL;
    *(&v25[0] + 1) = 0x80000001C4F8CFA0;
    MEMORY[0x1C6940010](v18, v19);

    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1C4EFB758();
    v20 = sub_1C4EFB978();

    (*(v23 + 8))(v8, v5);
    v21 = sub_1C4420C3C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
    MEMORY[0x1EEE9AC00](v21);
    *(&v22 - 2) = a1;
    v15 = sub_1C49BFA2C(sub_1C45ECAA0, (&v22 - 4), v20);

    goto LABEL_3;
  }
}

void sub_1C45EB148()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - v9;
  v11 = sub_1C4EFDAB8();
  sub_1C43FCE64();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C43FD1B4();
  sub_1C45EC820(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider_type, v10);
  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    sub_1C4420C3C(v10, &qword_1EC0B9AA0, &unk_1C4F10DA0);
  }

  else
  {
    (*(v13 + 32))(v1, v10, v11);
    sub_1C4419144();
    sub_1C45EC890(v17, v18);
    if ((sub_1C4F010B8() & 1) == 0)
    {
      type metadata accessor for HistogramKeyProviderError(0);
      sub_1C45EC890(&qword_1EC0B9B30, type metadata accessor for HistogramKeyProviderError);
      swift_allocError();
      v26 = v25;
      v27 = *(sub_1C456902C(&qword_1EC0B9B38, &qword_1C4F11018) + 48);
      v28 = *(v13 + 16);
      v28(v26, v4, v11);
      v28(v26 + v27, v1, v11);
      swift_willThrow();
      (*(v13 + 8))(v1, v11);
      goto LABEL_10;
    }

    (*(v13 + 8))(v1, v11);
  }

  if (*(v2 + 32))
  {
    v19 = *(v2 + 24);
    v20 = *(v2 + 32);
  }

  else
  {
    sub_1C440F2C8();
    v29[0] = v21;
    v29[1] = 0xED00005F79654B6DLL;
    sub_1C4419144();
    sub_1C45EC890(v22, v23);
    v24 = sub_1C4F02858();
    MEMORY[0x1C6940010](v24);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_10:
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C45EB448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C4EFDAB8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  (*(v12 + 16))(v9, a2);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C45D29E0(v9, v11, v10, v18);
  v14 = v20;
  if (v20 > 0x14u)
  {
    v15 = 0;
    v16 = 0uLL;
    v14 = -1;
    v17 = 0uLL;
  }

  else
  {
    v15 = v19;
    v16 = v18[0];
    v17 = v18[1];
  }

  *a3 = v16;
  *(a3 + 16) = v17;
  *(a3 + 32) = v15;
  *(a3 + 40) = v14;
  return result;
}

void *sub_1C45EB574(uint64_t a1)
{
  v3 = v1;
  sub_1C45A2358(a1, v22);
  v18[0] = sub_1C45EA42C();
  sub_1C440DEBC();
  v5 = sub_1C456902C(&qword_1EC0B9B20, &qword_1C4F11008);
  v6 = sub_1C45EC6F8();
  MEMORY[0x1C693EDF0](&v19, v22, v5, v6);
  sub_1C45EC75C(a1);

  if ((v19 & 0x10000) == 0)
  {
    return v19;
  }

  v8 = *(v1 + 16);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17;
  v17[2] = v3;
  v17[3] = a1;
  sub_1C4EFAFC8();
  sub_1C4EFB2C8();
  if (!v2)
  {
    v9 = v22[0];
    if (v22[0] >> 16)
    {
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v10 = sub_1C4F00978();
      sub_1C442B738(v10, qword_1EDE2DDE0);
      v11 = sub_1C4F00968();
      v12 = sub_1C4F01CE8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = v9;
        _os_log_impl(&dword_1C43F8000, v11, v12, "BehaviorDatabase+Histogram: Out of available key (rowId = %lld cannot be represented by UInt16).", v13, 0xCu);
        MEMORY[0x1C6942830](v13, -1, -1);
      }

      sub_1C45EC7CC();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v20 = v22[0];
      v21 = 0;
      sub_1C440DEBC();
      v15 = OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider____lazy_storage___behaviorKeyCache;
      v19 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider____lazy_storage___behaviorKeyCache);
      sub_1C45A2358(a1, v18);

      sub_1C4F00118();
      v16 = *(v3 + v15);
      *(v3 + v15) = v19;
    }
  }

  return v9;
}

uint64_t sub_1C45EB7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v45 = a3;
  v46 = a1;
  v5 = sub_1C4EFB768();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = v39 - v11;
  v12 = sub_1C4EFDAB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a2;
  sub_1C45D5A24(v16);
  sub_1C45EB148();
  if (v3)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v20 = v18;
  v41 = v10;
  v43 = v6;
  v44 = v5;
  v21 = v17;
  (*(v13 + 8))(v16, v12);
  *&v48[0] = 0;
  *(&v48[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4F8CF20);
  v42 = v21;
  MEMORY[0x1C6940010](v21, v20);
  MEMORY[0x1C6940010](0xD000000000000027, 0x80000001C4F8CF40);
  v22 = v20;
  v23 = sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v24 = swift_allocObject();
  v40 = xmmword_1C4F0D130;
  *(v24 + 16) = xmmword_1C4F0D130;
  *(v24 + 32) = 0x696669746E656469;
  *(v24 + 40) = 0xEA00000000007265;
  v25 = sub_1C45D2400();
  v26 = MEMORY[0x1E69A0138];
  *(v24 + 72) = MEMORY[0x1E69E6158];
  *(v24 + 80) = v26;
  *(v24 + 48) = v25;
  *(v24 + 56) = v27;
  v28 = v47;
  sub_1C4EFB738();
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  sub_1C4EFB998();
  v39[1] = v23;
  v29 = v42;

  sub_1C4420C3C(v48, &unk_1EC0BC770, &qword_1C4F10DC0);
  v30 = *(v43 + 8);
  v31 = v28;
  v32 = v44;
  v30(v31, v44);
  if (v51 == 1)
  {
    v47 = v30;
    *&v48[0] = 0;
    *(&v48[0] + 1) = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0x4920545245534E49, 0xEC000000204F544ELL);
    MEMORY[0x1C6940010](v29, v22);

    MEMORY[0x1C6940010](0xD00000000000002ALL, 0x80000001C4F8CF70);
    v33 = swift_allocObject();
    *(v33 + 16) = v40;
    *(v33 + 32) = 0x696669746E656469;
    *(v33 + 40) = 0xEA00000000007265;
    v34 = sub_1C45D2400();
    *(v33 + 72) = MEMORY[0x1E69E6158];
    *(v33 + 80) = MEMORY[0x1E69A0138];
    *(v33 + 48) = v34;
    *(v33 + 56) = v35;
    v36 = v41;
    sub_1C4EFB738();
    sub_1C4EFBFF8();
    v37 = v45;
    (v47)(v36, v32);

    result = sub_1C4EFBF18();
    v38 = result;
  }

  else
  {
    v38 = v50;

    v37 = v45;
  }

  *v37 = v38;
  return result;
}

void sub_1C45EBD20()
{
  sub_1C43FE96C();
  v75 = v1;
  v3 = sub_1C4EFDAB8();
  sub_1C43FCE64();
  v5 = v4;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v63 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v65 = &v61 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v61 - v16;
  v18 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  sub_1C43FBD18(v18);
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD1B4();
  v66 = v0;
  sub_1C45EC820(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider_type, v2);
  v22 = sub_1C44157D4(v2, 1, v3);
  v72 = v17;
  if (v22 == 1)
  {
    v23 = sub_1C4EFDA58();
  }

  else
  {
    v24 = *(v5 + 32);
    v24(v17, v2, v3);
    sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
    v25 = *(v5 + 72);
    v26 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C4F0D130;
    v24((v23 + v26), v17, v3);
  }

  v27 = 0;
  v28 = *(v23 + 16);
  v73 = v15;
  v74 = v28;
  v76 = v5 + 16;
  v71 = *MEMORY[0x1E69A9450];
  v70 = v5 + 104;
  v29 = v5 + 8;
  v64 = (v5 + 32);
  v67 = MEMORY[0x1E69E7CC0];
  v68 = v5;
  v69 = v23;
  while (v74 != v27)
  {
    if (v27 >= *(v23 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v30 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v31 = v23 + v30;
    v32 = *(v5 + 72);
    v33 = v3;
    v34 = v73;
    (*(v5 + 16))(v73, v31 + v32 * v27, v33);
    v35 = *(v5 + 104);
    v36 = v5;
    v37 = v72;
    v35(v72, v71, v33);
    sub_1C4419144();
    sub_1C45EC890(&unk_1EDDEFFC0, v38);
    v39 = sub_1C4F010B8();
    v40 = *(v36 + 8);
    v40(v37, v33);
    if (v39)
    {
      v40(v34, v33);
      ++v27;
      v5 = v68;
      v23 = v69;
      v3 = v33;
    }

    else
    {
      v41 = v32;
      v42 = v29;
      v62 = *v64;
      v62(v65, v34, v33);
      v43 = v67;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v43;
      v77 = v43;
      v3 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = *(v43 + 16);
        sub_1C459D1E0();
        v45 = v43;
      }

      v5 = v68;
      v23 = v69;
      v47 = *(v45 + 16);
      v48 = v47 + 1;
      if (v47 >= *(v45 + 24) >> 1)
      {
        v49 = v47 + 1;
        v67 = *(v45 + 16);
        sub_1C459D1E0();
        v48 = v49;
        v47 = v67;
        v29 = v42;
        v45 = v77;
      }

      ++v27;
      *(v45 + 16) = v48;
      v67 = v45;
      v62((v45 + v30 + v47 * v41), v65, v33);
    }
  }

  v50 = 0;
  v51 = v67;
  v74 = *(v67 + 16);
  v52 = v63;
  while (1)
  {
    if (v74 == v50)
    {

      sub_1C45EA42C();
      sub_1C4F00238();

      goto LABEL_21;
    }

    if (v50 >= *(v51 + 16))
    {
      goto LABEL_23;
    }

    v53 = (*(v5 + 16))(v52, v51 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v50, v3);
    v54 = *(v66 + 16);
    MEMORY[0x1EEE9AC00](v53);
    *(&v61 - 2) = v55;
    *(&v61 - 1) = v52;
    sub_1C4EFAFC8();
    v56 = v75;
    sub_1C4EFB2C8();
    v75 = v56;
    if (v56)
    {
      break;
    }

    ++v50;
    v57 = sub_1C4416DB8();
    v58(v57);
    v51 = v67;
  }

  v59 = sub_1C4416DB8();
  v60(v59);
LABEL_21:
  sub_1C43FBC80();
}

void sub_1C45EC28C()
{
  v1 = sub_1C4EFB768();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C45EB148();
  if (!v0)
  {
    strcpy(v8, "DELETE FROM ");
    HIBYTE(v8[6]) = 0;
    v8[7] = -5120;
    MEMORY[0x1C6940010](v6, v7);

    sub_1C4EFB758();
    sub_1C4EFBFF8();
    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_1C45EC3E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_1C4420C3C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider_type, &qword_1EC0B9AA0, &unk_1C4F10DA0);
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider____lazy_storage___behaviorKeyCache);

  return v0;
}

uint64_t sub_1C45EC440()
{
  sub_1C45EC3E8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1C45EC4C0()
{
  sub_1C45EC570();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C45EC570()
{
  if (!qword_1EDDFCCC8)
  {
    sub_1C4EFDAB8();
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFCCC8);
    }
  }
}

uint64_t sub_1C45EC610()
{
  result = sub_1C4EFDAB8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C45EC6F8()
{
  result = qword_1EDDEFE80;
  if (!qword_1EDDEFE80)
  {
    sub_1C4572308(&qword_1EC0B9B20, &qword_1C4F11008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFE80);
  }

  return result;
}

unint64_t sub_1C45EC7CC()
{
  result = qword_1EC0B9B28;
  if (!qword_1EC0B9B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9B28);
  }

  return result;
}

uint64_t sub_1C45EC820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45EC890(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1C45EC8F8(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v23 = a4;
  v24 = a5;
  v10 = v9;
  v11 = sub_1C4422F90(&v22);
  (*(*(a4 - 8) + 32))(v11, a1, a4);
  v21[3] = v10;
  v21[4] = &off_1F43E2510;
  v21[0] = a3;
  type metadata accessor for CachedBehaviorDatabaseHistogramManager();
  v12 = swift_allocObject();
  sub_1C4418280(v21, v10);
  sub_1C43FCE64();
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v21 - v16);
  (*(v18 + 16))(v21 - v16);
  v19 = *v17;
  v12[15] = v10;
  v12[16] = &off_1F43E2510;
  v12[12] = v19;
  v12[17] = MEMORY[0x1E69E7CC8];
  sub_1C441D670(&v22, (v12 + 2));
  sub_1C441D670(a2, (v12 + 7));
  sub_1C440962C(v21);
  return v12;
}

void sub_1C45ECABC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1C45EC28C();
}

uint64_t sub_1C45ECAD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *a3;
  result = sub_1C45ECBB0(a1, a2, isUniquelyReferenced_nonNull_native, &v13, a4, a5);
  *a3 = v13;
  return result;
}

uint64_t sub_1C45ECB54(uint64_t a1)
{
  v2 = type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C45ECBB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v10 = type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  v15 = sub_1C457AE68();
  if (__OFADD__(v14[2], (v16 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v15;
  v18 = v16;
  sub_1C456902C(&qword_1EC0B9B48, qword_1C4F11028);
  if ((sub_1C4F02458() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = *a4;
  v20 = sub_1C457AE68();
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_11:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v17 = v20;
LABEL_5:
  v22 = *a4;
  if (v18)
  {
    v23 = (v22[7] + 16 * v17);
    v24 = *v23;
    *v23 = a1;
    v23[1] = a6;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1C45ECD4C(a2, v13);
    return sub_1C45ECDB0(v17, v13, a1, v22, v27, a6);
  }
}

uint64_t sub_1C45ECD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45ECDB0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  result = sub_1C45ECE58(a2, v11 + *(*(v12 - 8) + 72) * a1);
  v14 = (a4[7] + 16 * a1);
  *v14 = a3;
  v14[1] = a6;
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_1C45ECE58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45ECEC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C45ECF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9B38, &qword_1C4F11018);

  return sub_1C44157D4(a1, a2, v4);
}

uint64_t sub_1C45ECF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0B9B38, &qword_1C4F11018);

  return sub_1C440BAA8(a1, a2, a3, v6);
}

uint64_t sub_1C45ECFE4(uint64_t a1)
{
  sub_1C45ED0B4();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_1C4EFDAB8();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v7 = *(v5 - 8);
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v9;
    }
  }

  return v3;
}

void sub_1C45ED0B4()
{
  if (!qword_1EC0B9B60)
  {
    sub_1C4EFDAB8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0B9B60);
    }
  }
}

uint64_t sub_1C45ED17C()
{
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___histogramKeyProvider))
  {
    v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___histogramKeyProvider);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_pool);
    v3 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    v1 = swift_allocObject();
    v6 = sub_1C45EA4BC(v2);
    sub_1C442FB60(v6);
  }

  return v1;
}

BOOL sub_1C45ED20C(uint64_t a1, uint64_t a2)
{
  sub_1C4EFDAB8();
  sub_1C441F4A8();
  sub_1C45F583C(v4, v5);
  sub_1C4F01578();
  sub_1C4F01578();
  if (v14 != v13)
  {
    return 0;
  }

  v6 = type metadata accessor for BehaviorPopularity(0);
  v7 = v6[5];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  sub_1C43FD1C0(v6[6]);
  if (!v11)
  {
    return 0;
  }

  sub_1C43FD1C0(v6[7]);
  if (!v11)
  {
    return 0;
  }

  sub_1C43FD1C0(v6[8]);
  return v11;
}

uint64_t sub_1C45ED314(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F697661686562 && a2 == 0xEC00000065707954;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C4F855A0 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974616C756D7563 && a2 == 0xEF746E756F436576;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7865646E49776F72 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C45ED4C4(char a1)
{
  result = 0x726F697661686562;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x746E756F63;
      break;
    case 3:
      result = 0x6974616C756D7563;
      break;
    case 4:
      result = 0x7865646E49776F72;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C45ED574(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0B9BF8, &qword_1C4F113E8);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C45F5C24();
  sub_1C4F02BF8();
  v24[15] = 0;
  sub_1C4EFDAB8();
  sub_1C441F4A8();
  sub_1C45F583C(v14, v15);
  sub_1C4402150();
  sub_1C4F027E8();
  if (!v2)
  {
    v16 = type metadata accessor for BehaviorPopularity(0);
    v17 = (v3 + v16[5]);
    v18 = *v17;
    v19 = v17[1];
    v24[14] = 1;
    sub_1C4402150();
    sub_1C4F02798();
    v20 = *(v3 + v16[6]);
    v24[13] = 2;
    sub_1C4402150();
    sub_1C4F027D8();
    v21 = *(v3 + v16[7]);
    v24[12] = 3;
    sub_1C4402150();
    sub_1C4F027D8();
    v22 = *(v3 + v16[8]);
    v24[11] = 4;
    sub_1C4402150();
    sub_1C4F027D8();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_1C45ED784()
{
  sub_1C43FE96C();
  v2 = v1;
  v30 = v3;
  v4 = sub_1C4EFDAB8();
  v5 = sub_1C43FCDF8(v4);
  v31 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v32 = v10 - v9;
  v33 = sub_1C456902C(&qword_1EC0B9BE0, &qword_1C4F113E0);
  sub_1C43FCDF8(v33);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v14 = type metadata accessor for BehaviorPopularity(0);
  v15 = sub_1C43FBCE0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C45F5C24();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    sub_1C441F4A8();
    sub_1C45F583C(v22, v23);
    sub_1C441C7EC();
    sub_1C4F026C8();
    (*(v31 + 32))(v20, v32, v4);
    sub_1C441C7EC();
    v24 = sub_1C4F02678();
    v25 = (v20 + v14[5]);
    *v25 = v24;
    v25[1] = v26;
    *(v20 + v14[6]) = sub_1C4F026B8();
    sub_1C441C7EC();
    *(v20 + v14[7]) = sub_1C4F026B8();
    sub_1C441C7EC();
    v27 = sub_1C4F026B8();
    v28 = sub_1C440A64C();
    v29(v28);
    *(v20 + v14[8]) = v27;
    sub_1C45F5940(v20, v30, type metadata accessor for BehaviorPopularity);
    sub_1C440962C(v2);
    sub_1C45F58A0(v20, type metadata accessor for BehaviorPopularity);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C45EDB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C45ED314(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C45EDB7C(uint64_t a1)
{
  v2 = sub_1C45F5C24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45EDBB8(uint64_t a1)
{
  v2 = sub_1C45F5C24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45EDC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C45F583C(&qword_1EC0B9BD8, type metadata accessor for BehaviorPopularity);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C45EDCD4()
{
  sub_1C45F583C(&qword_1EC0B9BA8, type metadata accessor for BehaviorPopularity);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C45EDE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C45F583C(&qword_1EC0B9C08, type metadata accessor for BehaviorPopularity);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C45EDEF8()
{
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___eventTracker))
  {
    v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___eventTracker);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_pool);
    type metadata accessor for BehaviorDatabaseEventTracker();
    v1 = swift_allocObject();
    v3 = sub_1C45DC594(0xD000000000000016, 0x80000001C4F8D170, v2, 0, 0, 0);
    sub_1C442FB60(v3);
  }

  return v1;
}

uint64_t sub_1C45EDFAC()
{
  sub_1C456902C(&qword_1EC0B9BC0, &qword_1C4F111D8);
  swift_allocObject();
  result = sub_1C4CE5194();
  qword_1EDE2CE60 = result;
  return result;
}

uint64_t sub_1C45EDFF8()
{
  sub_1C44F920C();
  result = static NSUserDefaults.sqlite3ReducedCacheSpillSize.getter();
  qword_1EDE2CE58 = result;
  return result;
}

void sub_1C45EE02C()
{
  sub_1C43FE96C();
  v50 = v1;
  v3 = v2;
  v55 = *v0;
  v4 = sub_1C4EFB148();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v5);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v46 - v13;
  v15 = sub_1C4EF98F8();
  v16 = sub_1C43FCDF8(v15);
  v52 = v17;
  v53 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = sub_1C4F00978();
  v24 = sub_1C43FBD18(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v47 = OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___histogramKeyProvider;
  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___histogramKeyProvider) = 0;
  v48 = OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___eventTracker;
  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___eventTracker) = 0;
  v27 = OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_signposter;
  sub_1C4F00188();
  v49 = v27;
  sub_1C4F008C8();
  v46 = OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_config;
  sub_1C45F5940(v3, v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_config, type metadata accessor for Configuration);
  sub_1C4411820();
  sub_1C4EF9888();
  v28 = *(type metadata accessor for Configuration() + 20);
  v51 = v3;
  v54 = *(v3 + v28);
  sub_1C45EE494(v22, &v54);
  sub_1C4EF98E8();
  v29 = v7;
  v30 = *(v7 + 16);
  v31 = v4;
  v30(v12, v14, v4);
  v32 = sub_1C4EFAFC8();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = v50;
  v36 = sub_1C4EFAF68();
  if (v35)
  {
    sub_1C45F58A0(v51, type metadata accessor for Configuration);
    (*(v29 + 8))(v14, v4);
    (*(v52 + 8))(v22, v53);
    sub_1C45F58A0(v0 + v46, type metadata accessor for Configuration);
    v37 = *(v0 + v47);

    v38 = *(v0 + v48);

    v39 = sub_1C4F008F8();
    sub_1C43FBCE0(v39);
    (*(v40 + 8))(v0 + v49);
    v41 = *(*v0 + 48);
    v42 = *(*v0 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v43 = v14;
    v44 = v51;
    *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_pool) = v36;
    sub_1C45EE6F0();
    sub_1C442C4E4();
    sub_1C45F58A0(v44, v45);
    (*(v29 + 8))(v43, v31);
    (*(v52 + 8))(v22, v53);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C45EE494(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = sub_1C4EFC018();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C441B2EC();
  v12 = sub_1C4F00D88();
  v13 = sub_1C43FBD18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v17 = *a2;
  v16 = a2[1];
  sub_1C4EFB138();
  sub_1C4EF98E8();
  sub_1C4EFB108();
  sub_1C4F00D68();
  sub_1C4EFB0E8();
  *v3 = 0x404E000000000000;
  (*(v9 + 104))(v3, *MEMORY[0x1E69A00D8], v6);
  sub_1C4EFB118();
  result = sub_1C4EFB0D8();
  if (qword_1EDDFEC70 != -1)
  {
    result = swift_once();
  }

  if ((xmmword_1EDDFEC78 & ~v17) == 0 && (*(&xmmword_1EDDFEC78 + 1) & v16) == *(&xmmword_1EDDFEC78 + 1))
  {
    return sub_1C4EFB0C8();
  }

  if (qword_1EDDFEC60 != -1)
  {
    result = swift_once();
  }

  if ((xmmword_1EDDFFAE0 & ~v17) == 0 && (*(&xmmword_1EDDFFAE0 + 1) & v16) == *(&xmmword_1EDDFFAE0 + 1))
  {
    *(swift_allocObject() + 16) = v4;
    sub_1C4EFB0C8();
  }

  return result;
}

uint64_t sub_1C45EE6F0()
{
  v0 = sub_1C4EFB5A8();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFB5F8();
  v25 = *(v5 - 8);
  v26 = v5;
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v32 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB5E8();
  v8 = v1[13];
  v9 = *MEMORY[0x1E699FE90];
  v8(v4);
  sub_1C4EFB5C8();
  v10 = v1[1];
  v10(v4, v0);
  v31 = v9;
  (v8)(v4, v9, v0);
  sub_1C4EFB5C8();
  v10(v4, v0);
  v24[0] = "to_behaviorPopularity";
  (v8)(v4, v9, v0);
  v28 = v8;

  sub_1C4EFB5C8();

  v10(v4, v0);
  v11 = v31;
  (v8)(v4, v31, v0);

  sub_1C4EFB5C8();

  v10(v4, v0);
  v27 = v10;
  v12 = v11;
  v13 = v28;
  (v28)(v4, v12, v0);
  v30 = v1 + 13;
  sub_1C4EFB5C8();
  v10(v4, v0);
  v14 = v31;
  v13(v4, v31, v0);
  v15 = v13;

  sub_1C4EFB5C8();

  v16 = v27;
  v27(v4, v0);
  v15(v4, v14, v0);

  sub_1C4EFB5C8();

  v16(v4, v0);
  v15(v4, v14, v0);
  sub_1C4EFB5C8();
  v16(v4, v0);
  v24[1] = v1 + 1;
  v15(v4, v14, v0);
  v17 = v29;

  sub_1C4EFB5C8();

  v16(v4, v0);
  v18 = v31;
  v15(v4, v31, v0);

  sub_1C4EFB5C8();

  v16(v4, v0);
  v19 = v28;
  (v28)(v4, v18, v0);
  sub_1C4EFB5C8();
  v20 = v27;
  v27(v4, v0);
  (v19)(v4, v31, v0);
  v21 = v32;
  sub_1C4EFB5C8();
  v20(v4, v0);
  v22 = *(v17 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_pool);
  sub_1C4EFB5D8();
  return (*(v25 + 8))(v21, v26);
}

uint64_t sub_1C45EEE50()
{
  v0 = sub_1C4EFB768();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1C45EEF4C()
{
  v0 = sub_1C4EFB768();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_1C4F02248();

  v7 = 0xD000000000000015;
  v8 = 0x80000001C4F8D6D0;
  if (qword_1EDDE7300 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDE2CE58;
  v5 = sub_1C4F02858();
  MEMORY[0x1C6940010](v5);

  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v1 + 8))(v4, v0);
}

unint64_t sub_1C45EF0F4()
{
  sub_1C4F02248();

  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_pool);
  v2 = sub_1C4EFAF78();
  MEMORY[0x1C6940010](v2);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_1C45EF18C(uint64_t a1)
{
  v29 = a1;
  v1 = sub_1C4EFB078();
  v23 = *(v1 - 8);
  v24 = v1;
  v2 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v22 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C4EFB0B8();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BehaviorPopularity(0);
  v21 = sub_1C45F583C(qword_1EDDE5DC0, type metadata accessor for BehaviorPopularity);
  v25 = sub_1C4EFADC8();
  sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
  v10 = *(v5 + 72);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C4F0D130;
  sub_1C4EFB058();
  *&v27[0] = v12;
  sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4F020C8();
  v13 = v26;
  sub_1C4EFBFC8();
  (*(v6 + 8))(v9, v4);
  if (v13)
  {
  }

  sub_1C4EFADC8();
  sub_1C456902C(&unk_1EC0BCA90, &unk_1C4F111C0);
  v15 = v23;
  v16 = *(v23 + 72);
  v17 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C4F0CE60;
  sub_1C4EFB068();
  sub_1C4EFB058();
  *&v27[0] = v18;
  sub_1C45F583C(&qword_1EDDFCD40, MEMORY[0x1E699FDD0]);
  sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
  sub_1C4401CBC(&qword_1EDDFA5C0, &unk_1EC0BCAA0, &unk_1C4F22520);
  v19 = v22;
  v20 = v24;
  sub_1C4F020C8();
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_1C4EFBFB8();

  sub_1C4420C3C(v27, &qword_1EC0C5040, &qword_1C4F0F950);
  return (*(v15 + 8))(v19, v20);
}

uint64_t sub_1C45EF63C()
{
  v0 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_1C4EFBF38();
  sub_1C440BAA8(v7, 1, 1, v8);
  sub_1C4EFB488();

  sub_1C4420C3C(v7, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  v9 = sub_1C4EFBE38();
  sub_1C440BAA8(v3, 0, 1, v9);
  sub_1C4EFB498();
  sub_1C4420C3C(v3, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v7, 1, 1, v8);
  sub_1C4EFB538();

  sub_1C4420C3C(v7, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v3, 0, 1, v9);
  sub_1C4EFB498();
  sub_1C4420C3C(v3, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v7, 1, 1, v8);
  sub_1C4EFB538();

  sub_1C4420C3C(v7, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  sub_1C440BAA8(v3, 0, 1, v9);
  sub_1C4EFB498();
  sub_1C4420C3C(v3, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v7, 1, 1, v8);
  sub_1C4EFB538();

  sub_1C4420C3C(v7, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  sub_1C440BAA8(v3, 0, 1, v9);
  sub_1C4EFB498();
  sub_1C4420C3C(v3, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v7, 1, 1, v8);
  sub_1C4EFB538();

  sub_1C4420C3C(v7, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C440BAA8(v7, 1, 1, v8);
  sub_1C4EFB4A8();
  return sub_1C4420C3C(v7, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C45EFA04()
{
  v1 = sub_1C4EFB078();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BehaviorPopularity(0);
  sub_1C45F583C(qword_1EDDE5DC0, type metadata accessor for BehaviorPopularity);
  sub_1C4EFADC8();
  sub_1C4EFBF78();
  if (v0)
  {
  }

  v14 = sub_1C4EFADC8();
  v11[1] = v7;
  sub_1C456902C(&unk_1EC0BCA90, &unk_1C4F111C0);
  v8 = *(v2 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C4F0D130;
  sub_1C4EFB058();
  *&v12[0] = v10;
  sub_1C45F583C(&qword_1EDDFCD40, MEMORY[0x1E699FDD0]);
  sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
  sub_1C4401CBC(&qword_1EDDFA5C0, &unk_1EC0BCAA0, &unk_1C4F22520);
  sub_1C4F020C8();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_1C4EFBFB8();

  sub_1C4420C3C(v12, &qword_1EC0C5040, &qword_1C4F0F950);
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1C45EFCF0()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12[-1] - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12[-1] - v6;
  sub_1C4EFBE08();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB458();
  sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = sub_1C4EFBF38();
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4420C3C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  v12[3] = MEMORY[0x1E69E6530];
  v12[4] = MEMORY[0x1E69A0180];
  v12[0] = 0;
  sub_1C4EFB548();

  return sub_1C440962C(v12);
}

uint64_t sub_1C45EFEA4(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_1C4EFB0B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
  v11 = *(v4 + 72);
  v44 = v4;
  v12 = *(v4 + 80);
  v41 = v11;
  v42 = v10;
  v13 = swift_allocObject();
  v40 = xmmword_1C4F0D130;
  *(v13 + 16) = xmmword_1C4F0D130;
  v32 = (v12 + 32) & ~v12;
  sub_1C4EFB058();
  v45 = v13;
  v14 = sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
  v15 = sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  v16 = sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0);
  v39 = v15;
  sub_1C4F020C8();
  v17 = v38;
  sub_1C4EFBFC8();
  if (v17)
  {
    return (*(v44 + 8))(v9, v3);
  }

  v34 = v16;
  v35 = v14;
  v36 = v12;
  v37 = a1;
  v19 = *(v44 + 8);
  v44 += 8;
  v38 = v19;
  v19(v9, v3);
  sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
  v20 = sub_1C4EFDAB8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = 6;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C4F0F820;
  v30 = v25;
  v26 = v25 + v23;
  v27 = *(v21 + 104);
  v27(v25 + v23, *MEMORY[0x1E69A9468], v20);
  v27(v26 + v22, *MEMORY[0x1E69A9460], v20);
  v27(v26 + 2 * v22, *MEMORY[0x1E69A93D0], v20);
  v27(v26 + 3 * v22, *MEMORY[0x1E69A9410], v20);
  v27(v26 + 4 * v22, *MEMORY[0x1E69A9438], v20);
  v33 = v22;
  v27(v26 + 5 * v22, *MEMORY[0x1E69A9448], v20);
  v28 = v31;
  while (v24)
  {
    sub_1C45ED17C();
    sub_1C45EB148();

    v29 = swift_allocObject();
    *(v29 + 16) = v40;
    sub_1C4EFB058();
    v45 = v29;
    sub_1C4F020C8();
    sub_1C4EFBFC8();

    v38(v28, v3);
    v26 += v33;
    --v24;
  }

  swift_setDeallocating();
  return sub_1C49E1558();
}

uint64_t sub_1C45F03E4()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C4EFBE08();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = sub_1C4EFBF38();
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4420C3C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4420C3C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDB8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4420C3C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB4A8();
  return sub_1C4420C3C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C45F06C8(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v2 = sub_1C4EFB0B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
  v7 = sub_1C4EFDAB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = 6;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C4F0F820;
  v22 = v12;
  v13 = v12 + v10;
  v14 = *(v8 + 104);
  v14(v13, *MEMORY[0x1E69A93E0], v7);
  v14(v13 + v9, *MEMORY[0x1E69A9428], v7);
  v14(v13 + 2 * v9, *MEMORY[0x1E69A93D8], v7);
  v14(v13 + 3 * v9, *MEMORY[0x1E69A9470], v7);
  v14(v13 + 4 * v9, *MEMORY[0x1E69A9400], v7);
  v23 = v9;
  v15 = 5 * v9;
  v16 = v13;
  v14(v13 + v15, *MEMORY[0x1E69A93F0], v7);
  v17 = v30;
  v25 = (v3 + 8);
  v26 = v3;
  v24 = xmmword_1C4F0D130;
  while (1)
  {
    sub_1C45ED17C();
    sub_1C45EB148();
    if (v17)
    {
      break;
    }

    v29 = v16;
    v30 = v11;

    sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
    v18 = *(v26 + 72);
    v19 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v24;
    sub_1C4EFB058();
    v31 = v20;
    sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
    sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
    sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0);
    sub_1C4F020C8();
    sub_1C4EFBFC8();

    (*v25)(v6, v2);
    v16 = v29 + v23;
    v11 = v30 - 1;
    if (v30 == 1)
    {
      swift_setDeallocating();
      return sub_1C49E1558();
    }
  }
}

void sub_1C45F0B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v23 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C43FBD18(v23);
  v25 = *(v24 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C440DED0();
  v27 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C43FBD18(v27);
  v29 = *(v28 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  sub_1C4EFBDD8();
  v33 = sub_1C4EFBE38();
  sub_1C440BAA8(v32, 0, 1, v33);
  sub_1C4EFB498();
  sub_1C4420C3C(v32, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v34 = sub_1C4EFBF38();
  sub_1C440BAA8(v20, 1, 1, v34);
  sub_1C4EFB538();

  v35 = sub_1C440BB4C();
  sub_1C4420C3C(v35, v36, &unk_1C4F111A0);
  sub_1C440BAA8(v20, 1, 1, v34);
  sub_1C4EFB518();

  v37 = sub_1C440BB4C();
  sub_1C4420C3C(v37, v38, &unk_1C4F111A0);
  sub_1C43FBC80();
}

uint64_t sub_1C45F0CA4(uint64_t a1)
{
  v2 = sub_1C4EFB078();
  v19 = *(v2 - 8);
  v20 = v2;
  v3 = *(v19 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v17 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v18 = &v17 - v6;
  v7 = sub_1C4EFB0B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = MEMORY[0x1E69E7CC0];
  sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4F020C8();
  v21 = a1;
  v12 = v22;
  sub_1C4EFBFC8();
  if (v12)
  {
    return (*(v8 + 8))(v11, v7);
  }

  (*(v8 + 8))(v11, v7);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v26 = MEMORY[0x1E69E7CC0];
  sub_1C45F583C(&qword_1EDDFCD40, MEMORY[0x1E699FDD0]);
  sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
  sub_1C4401CBC(&qword_1EDDFA5C0, &unk_1EC0BCAA0, &unk_1C4F22520);
  v14 = v18;
  v15 = v20;
  sub_1C4F020C8();
  sub_1C4EFBFB8();
  v22 = *(v19 + 8);
  v22(v14, v15);
  sub_1C4420C3C(&v23, &qword_1EC0C5040, &qword_1C4F0F950);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v26 = MEMORY[0x1E69E7CC0];
  v16 = v17;
  sub_1C4F020C8();
  sub_1C4EFBFB8();
  v22(v16, v15);
  return sub_1C4420C3C(&v23, &qword_1EC0C5040, &qword_1C4F0F950);
}

uint64_t sub_1C45F1158()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C4EFBE08();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = sub_1C4EFBF38();
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4420C3C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4420C3C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDC8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4420C3C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDC8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  return sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C45F1478(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v3 = sub_1C4EFB0B8();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
  v7 = sub_1C4EFDAB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C4F0CE60;
  v20 = v11;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v11 + v10, *MEMORY[0x1E69A93C8], v7);
  v14 = *MEMORY[0x1E69A9430];
  v21 = v9;
  v13(v12 + v9, v14, v7);
  v23 = (v26 + 8);
  v15 = 2;
  v22 = xmmword_1C4F0D130;
  while (1)
  {
    sub_1C45ED17C();
    sub_1C45EB148();
    if (v2)
    {
      break;
    }

    v27 = v12;
    v28 = v15;

    sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
    v16 = *(v26 + 72);
    v17 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    sub_1C4EFB058();
    v29 = v18;
    sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
    sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
    sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0);
    sub_1C4F020C8();
    sub_1C4EFBFC8();

    (*v23)(v6, v3);
    v12 = v27 + v21;
    v15 = v28 - 1;
    if (v28 == 1)
    {
      swift_setDeallocating();
      return sub_1C49E1558();
    }
  }
}

uint64_t sub_1C45F1830(uint64_t a1)
{
  v20 = a1;
  v2 = sub_1C4EFB0B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
  v7 = sub_1C4EFDAB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  v19 = xmmword_1C4F0D130;
  *(v11 + 16) = xmmword_1C4F0D130;
  (*(v8 + 104))(v11 + v10, *MEMORY[0x1E69A9458], v7);
  sub_1C45ED17C();
  sub_1C45EB148();
  if (v1)
  {
  }

  else
  {
    v17 = v12;

    sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
    v14 = *(v3 + 72);
    v18 = v3;
    v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v19;
    sub_1C4EFB058();
    v21 = v16;
    sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
    sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
    sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0);
    sub_1C4F020C8();
    sub_1C4EFBFC8();

    (*(v18 + 8))(v6, v2);
    swift_setDeallocating();
    return sub_1C49E1558();
  }
}

uint64_t sub_1C45F1B7C(uint64_t a1)
{
  v11[1] = a1;
  v1 = sub_1C4EFB078();
  v2 = *(v1 - 8);
  v3 = v2;
  v4 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&unk_1EC0BCA90, &unk_1C4F111C0);
  v7 = *(v2 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4F0D130;
  sub_1C4EFB058();
  *&v12[0] = v9;
  sub_1C45F583C(&qword_1EDDFCD40, MEMORY[0x1E699FDD0]);
  sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
  sub_1C4401CBC(&qword_1EDDFA5C0, &unk_1EC0BCAA0, &unk_1C4F22520);
  sub_1C4F020C8();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_1C4EFBFB8();
  sub_1C4420C3C(v12, &qword_1EC0C5040, &qword_1C4F0F950);
  return (*(v3 + 8))(v6, v1);
}

void sub_1C45F1DD0()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C4EFB0B8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v10 = sub_1C4EFDAB8();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  sub_1C45ED17C();
  (*(v13 + 104))(v18, *v3, v10);
  sub_1C45EB148();
  (*(v13 + 8))(v18, v10);

  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
    v19 = *(v7 + 72);
    v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_1C4F0D130;
    sub_1C4EFB058();
    sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
    sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
    sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0);
    sub_1C4F020C8();
    sub_1C4EFBFC8();
    (*(v7 + 8))(v1, v4);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C45F2090()
{
  v0 = sub_1C4EFB078();
  v22 = *(v0 - 8);
  v23 = v0;
  v1 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C4EFB0B8();
  v4 = *(v3 - 8);
  v5 = v4;
  v6 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
  v9 = *(v4 + 72);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C4F0D130;
  sub_1C4EFB058();
  *&v24[0] = v11;
  sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4F020C8();
  v20 = "histogramKey_EntityInteraction";
  v12 = v26;
  sub_1C4EFBFC8();
  if (v12)
  {
    return (*(v5 + 8))(v8, v3);
  }

  (*(v5 + 8))(v8, v3);
  sub_1C456902C(&unk_1EC0BCA90, &unk_1C4F111C0);
  v14 = v22;
  v15 = *(v22 + 72);
  v16 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C4F0CE60;
  sub_1C4EFB068();
  sub_1C4EFB058();
  *&v24[0] = v17;
  sub_1C45F583C(&qword_1EDDFCD40, MEMORY[0x1E699FDD0]);
  sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
  sub_1C4401CBC(&qword_1EDDFA5C0, &unk_1EC0BCAA0, &unk_1C4F22520);
  v18 = v21;
  v19 = v23;
  sub_1C4F020C8();
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_1C4EFBFB8();
  sub_1C4420C3C(v24, &qword_1EC0C5040, &qword_1C4F0F950);
  return (*(v14 + 8))(v18, v19);
}

uint64_t sub_1C45F24DC()
{
  v0 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_1C4EFBF38();
  sub_1C440BAA8(v7, 1, 1, v8);
  sub_1C4EFB488();

  sub_1C4420C3C(v7, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  v9 = sub_1C4EFBE38();
  sub_1C440BAA8(v3, 0, 1, v9);
  sub_1C4EFB498();
  sub_1C4420C3C(v3, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v7, 1, 1, v8);
  sub_1C4EFB538();

  sub_1C4420C3C(v7, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  sub_1C440BAA8(v3, 0, 1, v9);
  sub_1C4EFB498();
  sub_1C4420C3C(v3, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v7, 1, 1, v8);
  sub_1C4EFB538();

  sub_1C4420C3C(v7, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v3, 0, 1, v9);
  sub_1C4EFB498();
  sub_1C4420C3C(v3, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v7, 1, 1, v8);
  sub_1C4EFB538();

  sub_1C4420C3C(v7, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDE8();
  sub_1C440BAA8(v3, 0, 1, v9);
  sub_1C4EFB498();
  sub_1C4420C3C(v3, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v7, 1, 1, v8);
  sub_1C4EFB538();

  sub_1C4420C3C(v7, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C440BAA8(v7, 1, 1, v8);
  sub_1C4EFB4A8();
  return sub_1C4420C3C(v7, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C45F28AC()
{
  v0 = sub_1C4EFB0B8();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
  v6 = *(v1 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4F0D130;
  sub_1C4EFB058();
  v10[3] = v8;
  sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_1C45F2ACC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4F008B8();
  v7 = sub_1C43FCDF8(v6);
  v33 = v8;
  v34 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v30 = sub_1C4F008F8();
  v32 = *(v30 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v29 = v14;
  (*(v32 + 16))(v14, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_signposter, v30);
  sub_1C4F008D8();
  sub_1C4F00898();
  v16 = swift_slowAlloc();
  *v16 = 0;
  v17 = sub_1C4F008D8();
  LOBYTE(v14) = sub_1C4F01E28();
  v18 = sub_1C4F008A8();
  _os_signpost_emit_with_name_impl(&dword_1C43F8000, v17, v14, v18, "BehaviorDatabase.updateBehaviorCounts", "", v16, 2u);
  v27 = objc_autoreleasePoolPush();
  v39 = sub_1C45F5910;
  v40 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1C44405F8;
  v38 = &unk_1F43E2678;
  v19 = _Block_copy(&aBlock);

  v20 = swift_allocObject();
  v20[2] = v3;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = v15;
  v39 = sub_1C45F5918;
  v40 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1C4623884;
  v38 = &unk_1F43E26C8;
  v21 = _Block_copy(&aBlock);

  v22 = [a1 sinkWithCompletion:v19 shouldContinue:v21];
  _Block_release(v21);
  _Block_release(v19);

  objc_autoreleasePoolPop(v27);
  LOBYTE(v19) = sub_1C4F01E18();
  v23 = sub_1C4F008A8();
  _os_signpost_emit_with_name_impl(&dword_1C43F8000, v17, v19, v23, "BehaviorDatabase.updateBehaviorCounts", "", v16, 2u);

  MEMORY[0x1C6942830](v16, -1, -1);
  (*(v33 + 8))(v4, v34);
  (*(v32 + 8))(v29, v30);
  swift_beginAccess();
  v24 = *(v15 + 16);
  if (v24)
  {
    swift_willThrow();
    v25 = v24;
  }
}

void sub_1C45F2EE8(void *a1, uint64_t a2)
{
  v3 = [a1 error];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }
}

uint64_t sub_1C45F2F4C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v9 = objc_autoreleasePoolPush();
  sub_1C45F2FC8(a1, a3, a4, (a5 + 16), &v11);
  objc_autoreleasePoolPop(v9);
  return v11;
}

void sub_1C45F2FC8(uint64_t a1@<X1>, void (*a2)(char *)@<X2>, uint64_t a3@<X3>, void **a4@<X4>, char *a5@<X8>)
{
  v39 = a3;
  v40 = a2;
  v9 = sub_1C4EF9CD8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C45F3338();
  v14 = v5;
  if (v5)
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v15 = sub_1C4F00978();
    sub_1C442B738(v15, qword_1EDE2DDE0);

    v16 = v5;
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CD8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v37 = a4;
      v20 = v19;
      v36 = swift_slowAlloc();
      v41[0] = v36;
      *v20 = 136315394;
      v21 = *(a1 + 32);
      v42 = *(a1 + 16);
      v43[0] = v21;
      *(v43 + 9) = *(a1 + 41);
      v35 = v18;
      v22 = sub_1C45D58F8();
      v24 = sub_1C441D828(v22, v23, v41);
      v38 = a5;
      v25 = v24;

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      v44 = v5;
      v26 = v5;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v27 = sub_1C4F01198();
      v29 = sub_1C441D828(v27, v28, v41);

      *(v20 + 14) = v29;
      a5 = v38;
      _os_log_impl(&dword_1C43F8000, v17, v35, "BehaviorDatabase: Unable to update/insert BehaviorPopularity row for behavior %s due to error: %s", v20, 0x16u);
      v30 = v36;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v30, -1, -1);
      v31 = v20;
      a4 = v37;
      MEMORY[0x1C6942830](v31, -1, -1);
    }

    else
    {
    }

    v14 = 0;
  }

  (*(v10 + 16))(v13, *(a1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v9);
  v40(v13);
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    swift_beginAccess();
    v32 = *a4;
    *a4 = v14;

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  *a5 = v33;
}

uint64_t sub_1C45F3338()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_pool);
  sub_1C4EFAFC8();
  return sub_1C4EFB2C8();
}

uint64_t sub_1C45F33B0(uint64_t a1, _OWORD *a2)
{
  v57 = a1;
  v56 = type metadata accessor for BehaviorPopularity(0);
  v3 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v50 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1C4EFB4E8();
  v59 = *(v60 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v50 - v9;
  v53 = sub_1C4EFDAB8();
  v52 = *(v53 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1C456902C(&qword_1EC0B9B68, &qword_1C4F11190);
  v58 = *(v51 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v15 = &v50 - v14;
  v16 = sub_1C4EFBD38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v50 - v22;
  sub_1C4EFBD48();
  sub_1C4EFBD48();
  v72 = v16;
  v73 = MEMORY[0x1E69A0050];
  v24 = sub_1C4422F90(v71);
  v76 = v17;
  v25 = *(v17 + 16);
  v63 = v23;
  v25(v24, v23, v16);
  v26 = a2[2];
  v74 = a2[1];
  *v75 = v26;
  *&v75[9] = *(a2 + 41);
  v27 = sub_1C45D2400();
  v66 = MEMORY[0x1E69E6158];
  v67 = MEMORY[0x1E69A0130];
  v65[0] = v27;
  v65[1] = v28;
  v29 = sub_1C4EFB298();
  v30 = MEMORY[0x1E699FE60];
  v69 = v29;
  v70 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v68);
  sub_1C4EFBB28();
  sub_1C4420C3C(v65, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v71);
  v72 = v16;
  v73 = MEMORY[0x1E69A0050];
  v31 = sub_1C4422F90(v71);
  v62 = v21;
  v32 = v21;
  v33 = v54;
  v25(v31, v32, v16);
  v34 = v15;
  v35 = v51;
  sub_1C45D5A24(v12);
  v36 = sub_1C4EFDAA8();
  (*(v52 + 8))(v12, v53);
  v37 = MEMORY[0x1E69A0178];
  v64[4] = MEMORY[0x1E69A0178];
  v64[3] = MEMORY[0x1E69E6530];
  v64[0] = v36;
  v66 = v29;
  v67 = v30;
  sub_1C4422F90(v65);
  sub_1C4EFBB28();
  sub_1C4420C3C(v64, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v71);
  v72 = v29;
  v73 = v30;
  v38 = v56;
  sub_1C4422F90(v71);
  sub_1C4EFBB08();
  sub_1C440962C(v65);
  sub_1C440962C(v68);
  sub_1C45F583C(qword_1EDDE5DC0, type metadata accessor for BehaviorPopularity);
  sub_1C4EFAE28();
  sub_1C440962C(v71);
  v39 = sub_1C4EFBF38();
  v40 = v55;
  sub_1C440BAA8(v55, 1, 1, v39);
  v72 = v16;
  v73 = MEMORY[0x1E69A0030];
  sub_1C4422F90(v71);
  sub_1C4EFBD48();
  v70 = v37;
  v69 = MEMORY[0x1E69E6530];
  v68[0] = 1;
  sub_1C4EFBB88();
  sub_1C440962C(v68);
  sub_1C440962C(v71);
  v41 = v61;
  v42 = sub_1C4EFB8B8();
  if (v41)
  {
    (*(v59 + 8))(v33, v60);
    sub_1C4420C3C(v40, &unk_1EC0BCAB0, &unk_1C4F111A0);
    (*(v58 + 8))(v34, v35);
  }

  else
  {
    v43 = v42;
    (*(v59 + 8))(v33, v60);
    sub_1C4420C3C(v40, &unk_1EC0BCAB0, &unk_1C4F111A0);
    (*(v58 + 8))(v34, v35);
    if (!v43)
    {
      v44 = v50;
      sub_1C45D5A24(v50);
      v45 = sub_1C45D2400();
      v46 = (v44 + v38[5]);
      *v46 = v45;
      v46[1] = v47;
      *(v44 + v38[6]) = 1;
      *(v44 + v38[7]) = 0;
      *(v44 + v38[8]) = 0;
      sub_1C45F583C(&qword_1EC0B9BA8, type metadata accessor for BehaviorPopularity);
      sub_1C4EFB6C8();
      sub_1C45F58A0(v44, type metadata accessor for BehaviorPopularity);
    }
  }

  v48 = *(v76 + 8);
  v48(v62, v16);
  return (v48)(v63, v16);
}

void sub_1C45F3BBC()
{
  sub_1C43FE96C();
  v27 = sub_1C4F008B8();
  v2 = sub_1C43FCDF8(v27);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C441B2EC();
  v5 = sub_1C4F008F8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v11 = sub_1C440F2DC();
  v12(v11);
  sub_1C4F008D8();
  sub_1C4F00898();
  v13 = swift_slowAlloc();
  *v13 = 0;
  v14 = sub_1C4F008D8();
  v15 = sub_1C4F01E28();
  v16 = sub_1C4F008A8();
  sub_1C4412CB4(&dword_1C43F8000, v17, v15, v16, "BehaviorDatabase.recomputeCumulativeCounts", "");
  v18 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_pool);
  sub_1C4EFAFC8();
  sub_1C4EFB2C8();
  if (v1)
  {
  }

  else
  {
    v19 = sub_1C4F01E18();
    v20 = sub_1C4F008A8();
    sub_1C4412CB4(&dword_1C43F8000, v21, v19, v20, "BehaviorDatabase.recomputeCumulativeCounts", "");

    MEMORY[0x1C6942830](v13, -1, -1);
  }

  v22 = sub_1C43FEBB4();
  v23(v22);
  v24 = *(v8 + 8);
  v25 = sub_1C440BB4C();
  v26(v25);
  sub_1C43FBC80();
}

uint64_t sub_1C45F3DFC()
{
  v1 = sub_1C4EFB768();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  if (v0)
  {
    return (*(v2 + 8))(v8, v1);
  }

  v10 = *(v2 + 8);
  v10(v8, v1);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  return (v10)(v6, v1);
}

uint64_t sub_1C45F3F88()
{
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_pool);
  sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
  result = sub_1C4EFAF88();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1C45F4004@<X0>(uint64_t *a1@<X8>)
{
  v36 = a1;
  v2 = sub_1C456902C(&qword_1EC0B9B68, &qword_1C4F11190);
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - v4;
  v6 = sub_1C456902C(&qword_1EC0B9B90, &qword_1C4F11198);
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  type metadata accessor for BehaviorPopularity(0);
  sub_1C45F583C(qword_1EDDE5DC0, type metadata accessor for BehaviorPopularity);
  result = sub_1C4EFADD8();
  if (!v1)
  {
    v30 = v10;
    v32 = result;
    sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
    v14 = swift_allocObject();
    v31 = xmmword_1C4F0D130;
    *(v14 + 16) = xmmword_1C4F0D130;
    v15 = sub_1C4EFBD38();
    v16 = MEMORY[0x1E69A0048];
    *(v14 + 56) = v15;
    *(v14 + 64) = v16;
    sub_1C4422F90((v14 + 32));
    sub_1C4EFBD48();
    sub_1C4EFAE08();

    sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
    v17 = swift_allocObject();
    *(v17 + 16) = v31;
    v18 = MEMORY[0x1E69A0038];
    *(v17 + 56) = v15;
    *(v17 + 64) = v18;
    sub_1C4422F90((v17 + 32));
    sub_1C4EFBD48();
    sub_1C4EFB878();

    (*(v35 + 8))(v5, v2);
    v19 = v33;
    v20 = v34;
    v21 = v12;
    if (v32 >= 10001)
    {
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v22 = sub_1C4F00978();
      sub_1C442B738(v22, qword_1EDE2DDE0);
      v23 = sub_1C4F00968();
      v24 = sub_1C4F01CE8();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v30;
      if (v25)
      {
        v27 = swift_slowAlloc();
        *v27 = 134218240;
        *(v27 + 4) = 10000;
        *(v27 + 12) = 2048;
        *(v27 + 14) = 10000;
        _os_log_impl(&dword_1C43F8000, v23, v24, "BehaviorDatabase: Has more than %ld unique behaviors in it. Reducing to the first %ld rows", v27, 0x16u);
        MEMORY[0x1C6942830](v27, -1, -1);
      }

      sub_1C4401CBC(&qword_1EC0B9BA0, &qword_1EC0B9B90, &qword_1C4F11198);
      v21 = v12;
      sub_1C4EFB608();
      (*(v19 + 8))(v12, v20);
      (*(v19 + 32))(v12, v26, v20);
    }

    sub_1C4401CBC(&qword_1EC0B9B98, &qword_1EC0B9B90, &qword_1C4F11198);
    v28 = sub_1C4EFB008();
    result = (*(v19 + 8))(v21, v20);
    *v36 = v28;
  }

  return result;
}

void sub_1C45F4558(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  v24 = v3;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v10 = *(a2 + 48) + 48 * (__clz(__rbit64(v6)) | (v8 << 6));
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v15 = *(v10 + 32);
      v16 = *(v10 + 40);
      *&v30 = v11;
      *(&v30 + 1) = v12;
      v31 = v13;
      v32 = v14;
      v33 = v15;
      v34 = v16;
      sub_1C45D7F78(v11, v12, v13, v14, v15, v16);
      v17 = v35;
      sub_1C45F476C(&v30, a1, &v28);
      v35 = v17;
      if (v17)
      {
        break;
      }

      sub_1C45A23B4(v11, v12, v13, v14, v15, v16);
      if ((v29 & 1) == 0)
      {
        v18 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v27 + 16);
          sub_1C445C3F8();
          v27 = v21;
        }

        v19 = *(v27 + 16);
        if (v19 >= *(v27 + 24) >> 1)
        {
          sub_1C445C3F8();
          v27 = v22;
        }

        *(v27 + 16) = v19 + 1;
        *(v27 + 8 * v19 + 32) = v18;
      }

      v3 = v24;
      v6 &= v6 - 1;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    sub_1C45A23B4(v11, v12, v13, v14, v15, v16);
  }

  else
  {
LABEL_4:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        *a3 = sub_1C459760C(v27);
        return;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C45F476C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v31 = a3;
  v4 = sub_1C4EFDAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1C456902C(&qword_1EC0B9B68, &qword_1C4F11190);
  v28 = *(v27 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v27 - v10;
  v29 = sub_1C456902C(&qword_1EC0B9B90, &qword_1C4F11198);
  v30 = *(v29 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v14 = &v27 - v13;
  v15 = a1[1];
  v41 = *a1;
  v42[0] = v15;
  *(v42 + 9) = *(a1 + 25);
  type metadata accessor for BehaviorPopularity(0);
  v16 = sub_1C4EFBD38();
  v39 = v16;
  v40 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v38);
  sub_1C4EFBD48();
  sub_1C45D5A24(v8);
  v17 = sub_1C4EFDAA8();
  (*(v5 + 8))(v8, v4);
  v35 = MEMORY[0x1E69E6530];
  v36 = MEMORY[0x1E69A0178];
  v34[0] = v17;
  v18 = sub_1C4EFB298();
  v19 = MEMORY[0x1E699FE60];
  v37[3] = v18;
  v37[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v37);
  sub_1C4EFBB28();
  sub_1C4420C3C(v34, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v38);
  v39 = v16;
  v40 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v38);
  sub_1C4EFBD48();
  v20 = sub_1C45D2400();
  v33[3] = MEMORY[0x1E69E6158];
  v33[4] = MEMORY[0x1E69A0130];
  v33[0] = v20;
  v33[1] = v21;
  v35 = v18;
  v36 = v19;
  sub_1C4422F90(v34);
  sub_1C4EFBB28();
  sub_1C4420C3C(v33, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v38);
  v39 = v18;
  v40 = v19;
  sub_1C4422F90(v38);
  sub_1C4EFBB08();
  sub_1C440962C(v34);
  sub_1C440962C(v37);
  sub_1C45F583C(qword_1EDDE5DC0, type metadata accessor for BehaviorPopularity);
  sub_1C4EFAE28();
  sub_1C440962C(v38);
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C4F0D130;
  v23 = MEMORY[0x1E69A0038];
  *(v22 + 56) = v16;
  *(v22 + 64) = v23;
  sub_1C4422F90((v22 + 32));
  sub_1C4EFBD48();
  v24 = v27;
  sub_1C4EFB878();

  (*(v28 + 8))(v11, v24);
  sub_1C4401CBC(&qword_1EC0B9B98, &qword_1EC0B9B90, &qword_1C4F11198);
  v25 = v29;
  sub_1C4EFB018();
  return (*(v30 + 8))(v14, v25);
}

uint64_t sub_1C45F4D00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_pool);
  sub_1C456902C(a2, a3);
  result = sub_1C4EFAF88();
  if (!v4)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1C45F4D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a1;
  v42 = a3;
  v4 = sub_1C4EFDAB8();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v46 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BehaviorPopularity(0);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0B9B68, &qword_1C4F11190);
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v39 - v13;
  v51 = a2;
  v47[3] = sub_1C4EFBD38();
  v47[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v47);
  sub_1C4EFBD48();
  v48[3] = sub_1C4EFB298();
  v48[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v48);
  sub_1C456902C(&qword_1EC0B9B70, &unk_1C4F37490);
  sub_1C4401CBC(&qword_1EC0B9B78, &qword_1EC0B9B70, &unk_1C4F37490);
  sub_1C4F01458();
  sub_1C440962C(v47);
  sub_1C45F583C(qword_1EDDE5DC0, type metadata accessor for BehaviorPopularity);
  sub_1C4EFAE28();
  sub_1C440962C(v48);
  sub_1C4401CBC(&qword_1EC0B9B80, &qword_1EC0B9B68, &qword_1C4F11190);
  sub_1C45F583C(&qword_1EC0B9B88, type metadata accessor for BehaviorPopularity);
  v15 = v45;
  v16 = sub_1C4EFAFE8();
  result = (*(v43 + 8))(v14, v11);
  if (!v15)
  {
    v39[1] = 0;
    v18 = v40;
    v19 = v42;
    v20 = v41;
    v21 = v16;
    v22 = *(v16 + 16);
    if (v22)
    {
      v45 = v7;
      v48[0] = MEMORY[0x1E69E7CC0];
      sub_1C459D238();
      v23 = v48[0];
      v24 = v18;
      v25 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v39[0] = v21;
      v26 = v21 + v25;
      v27 = *(v24 + 72);
      v43 = v20 + 16;
      v44 = v27;
      v28 = v10;
      do
      {
        sub_1C45F5940(v26, v28, type metadata accessor for BehaviorPopularity);
        v29 = v46;
        v30 = v4;
        (*v43)(v46, v10, v4);
        v31 = &v10[*(v45 + 20)];
        v32 = *v31;
        v33 = v31[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v34 = v29;
        v28 = v10;
        sub_1C45D29E0(v34, v32, v33, &v49);
        sub_1C45F58A0(v10, type metadata accessor for BehaviorPopularity);
        v48[0] = v23;
        v35 = *(v23 + 16);
        if (v35 >= *(v23 + 24) >> 1)
        {
          sub_1C459D238();
          v23 = v48[0];
        }

        *(v23 + 16) = v35 + 1;
        v36 = (v23 + 48 * v35);
        v37 = v49;
        v38 = v50[0];
        *(v36 + 57) = *(v50 + 9);
        v36[2] = v37;
        v36[3] = v38;
        v26 += v44;
        --v22;
        v4 = v30;
      }

      while (v22);

      v19 = v42;
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
    }

    *v19 = v23;
  }

  return result;
}

void sub_1C45F52A4()
{
  sub_1C43FE96C();
  v27 = sub_1C4F008B8();
  v2 = sub_1C43FCDF8(v27);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C441B2EC();
  v5 = sub_1C4F008F8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v11 = sub_1C440F2DC();
  v12(v11);
  sub_1C4F008D8();
  sub_1C4F00898();
  v13 = swift_slowAlloc();
  *v13 = 0;
  v14 = sub_1C4F008D8();
  v15 = sub_1C4F01E28();
  v16 = sub_1C4F008A8();
  sub_1C4412CB4(&dword_1C43F8000, v17, v15, v16, "BehaviorDatabase.removeAllBehaviors", "");
  v18 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_pool);
  sub_1C4EFAFC8();
  sub_1C4EFB2C8();
  if (v1)
  {
  }

  else
  {
    v19 = sub_1C4F01E18();
    v20 = sub_1C4F008A8();
    sub_1C4412CB4(&dword_1C43F8000, v21, v19, v20, "BehaviorDatabase.removeAllBehaviors", "");

    MEMORY[0x1C6942830](v13, -1, -1);
  }

  v22 = sub_1C43FEBB4();
  v23(v22);
  v24 = *(v8 + 8);
  v25 = sub_1C440BB4C();
  v26(v25);
  sub_1C43FBC80();
}

uint64_t sub_1C45F54E4()
{
  type metadata accessor for BehaviorPopularity(0);
  sub_1C45F583C(qword_1EDDE5DC0, type metadata accessor for BehaviorPopularity);
  return sub_1C4EFAE88();
}

uint64_t sub_1C45F5568()
{
  sub_1C442C4E4();
  sub_1C45F58A0(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_pool);

  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___histogramKeyProvider);

  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___eventTracker);

  v6 = OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_signposter;
  v7 = sub_1C4F008F8();
  sub_1C43FBCE0(v7);
  (*(v8 + 8))(v0 + v6);
  return v0;
}

uint64_t sub_1C45F5604()
{
  sub_1C45F5568();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C45F5684()
{
  result = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1C4F008F8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C45F578C()
{
  if (qword_1EDDE7308 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C45F583C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C45F58A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C45F5940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C45F5AC4()
{
  result = sub_1C4EFDAB8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C45F5C24()
{
  result = qword_1EC0B9BE8;
  if (!qword_1EC0B9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9BE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BehaviorPopularity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C45F5D58()
{
  result = qword_1EC0B9C10;
  if (!qword_1EC0B9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9C10);
  }

  return result;
}

unint64_t sub_1C45F5DB0()
{
  result = qword_1EC0B9C18;
  if (!qword_1EC0B9C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9C18);
  }

  return result;
}

unint64_t sub_1C45F5E08()
{
  result = qword_1EC0B9C20[0];
  if (!qword_1EC0B9C20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC0B9C20);
  }

  return result;
}

uint64_t sub_1C45F5E7C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C45F5F10(uint64_t *a1)
{
  v2 = *(sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461AFD4(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1C45F7C94(v7);
  *a1 = v3;
  return result;
}

void sub_1C45F5FC4()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C4EFDAB8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v11 = sub_1C44109B4();
  v12 = type metadata accessor for BehaviorDigestTaskIdentifier(v11);
  v13 = sub_1C43FBD18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  v19 = sub_1C456902C(&qword_1EC0B9D10, &qword_1C4F11678);
  sub_1C43FBD18(v19);
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v26 = &v41 + *(v23 + 56) - v24;
  sub_1C45FB2DC(v4, &v41 - v24);
  sub_1C45FB2DC(v2, v26);
  v27 = sub_1C456902C(&qword_1EC0B9CA8, &qword_1C4F22290);
  v28 = sub_1C44157D4(v25, 2, v27);
  if (v28)
  {
    if (v28 == 1)
    {
      if (sub_1C442FB80() != 1)
      {
        goto LABEL_9;
      }

LABEL_19:
      sub_1C4411840();
      goto LABEL_10;
    }

    if (sub_1C442FB80() == 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_1C45FB2DC(v25, v18);
    v29 = *(v27 + 48);
    v31 = *(v18 + v29);
    v30 = *(v18 + v29 + 8);
    if (!sub_1C442FB80())
    {
      v32 = *&v26[v29 + 8];
      v41 = *&v26[v29];
      v42 = v32;
      (*(v8 + 32))(v0, v26, v5);
      sub_1C440A65C();
      sub_1C4498E28(v33, v34);
      sub_1C4F01578();
      sub_1C4F01578();
      v36 = v43;
      v35 = v44;
      v37 = *(v8 + 8);
      v37(v18, v5);
      if (v35 == v36)
      {
        if (v31 != v41 || v30 != v42)
        {
          sub_1C4F02938();
        }

        v39 = sub_1C4405814();
        (v37)(v39);
      }

      else
      {
        v40 = sub_1C4405814();
        (v37)(v40);
      }

      goto LABEL_19;
    }

    (*(v8 + 8))(v18, v5);
  }

LABEL_9:
  sub_1C4420C3C(v25, &qword_1EC0B9D10, &qword_1C4F11678);
LABEL_10:
  sub_1C43FE9F0();
}

uint64_t sub_1C45F62F0()
{
  v2 = v0;
  sub_1C4403FC0();
  v3 = sub_1C4EFDAB8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v9 = sub_1C44109B4();
  v10 = type metadata accessor for BehaviorDigestTaskIdentifier(v9);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  sub_1C45FB2DC(v2, v15 - v14);
  v17 = sub_1C456902C(&qword_1EC0B9CA8, &qword_1C4F22290);
  v18 = sub_1C44157D4(v16, 2, v17);
  if (v18)
  {
    return MEMORY[0x1C69417F0](v18 != 1);
  }

  v19 = (v16 + *(v17 + 48));
  v20 = *v19;
  v21 = v19[1];
  (*(v6 + 32))(v1, v16, v3);
  MEMORY[0x1C69417F0](2);
  sub_1C440A65C();
  sub_1C4498E28(v22, v23);
  sub_1C4F00FE8();
  sub_1C4F01298();

  v24 = *(v6 + 8);
  v25 = sub_1C4405814();
  return v26(v25);
}

uint64_t sub_1C45F64B4()
{
  sub_1C4F02AF8();
  sub_1C45F62F0();
  return sub_1C4F02B68();
}

uint64_t sub_1C45F64FC()
{
  sub_1C4F02AF8();
  sub_1C45F62F0();
  return sub_1C4F02B68();
}

uint64_t sub_1C45F653C()
{
  sub_1C43FBCD4();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v0[2] = v4;
  v5 = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C45F6608, 0, 0);
}

uint64_t sub_1C45F6608()
{
  result = sub_1C46AAB48(*(v0 + 40), *(v0 + 16));
  *(v0 + 64) = result;
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(result + 16);
  *(v0 + 72) = v4;
  *(v0 + 80) = 0;
  if (v4)
  {
    v24 = v3;
    if (*(result + 16))
    {
      v5 = *(v0 + 24);
      sub_1C4460050(result + ((*(v2 + 80) + 32) & ~*(v2 + 80)), *(v0 + 56), &qword_1EC0B84B8, &unk_1C4F0D4F0);
      ObjectType = swift_getObjectType();
      sub_1C440F2F4(ObjectType, v7, v8, v9, v10, v11, v12, v13, v22, v24);
      v23 = v14 + *v14;
      v16 = *(v15 + 4);
      v17 = swift_task_alloc();
      *(v0 + 88) = v17;
      *v17 = v0;
      v18 = sub_1C441F4C0(v17);

      return v19(v18);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v20 = *(v0 + 56);

    sub_1C43FBDA0();

    return v21();
  }

  return result;
}

uint64_t sub_1C45F67A8()
{
  sub_1C43FBCD4();
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    sub_1C4420C3C(*(v2 + 56), &qword_1EC0B84B8, &unk_1C4F0D4F0);

    v5 = sub_1C45F6A74;
  }

  else
  {
    sub_1C4420C3C(*(v2 + 56), &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v5 = sub_1C45F68F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C45F68F0()
{
  v1 = v0[9];
  v2 = v0[10] + 1;
  v0[10] = v2;
  result = v0[8];
  if (v2 == v1)
  {
    v4 = v0[7];

    sub_1C43FBDA0();

    return v5();
  }

  else if (v2 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v6 = v0[3];
    v23 = v0[4];
    sub_1C4460050(result + ((*(v0[6] + 80) + 32) & ~*(v0[6] + 80)) + *(v0[6] + 72) * v2, v0[7], &qword_1EC0B84B8, &unk_1C4F0D4F0);
    ObjectType = swift_getObjectType();
    sub_1C440F2F4(ObjectType, v8, v9, v10, v11, v12, v13, v14, v21, v23);
    v22 = v15 + *v15;
    v17 = *(v16 + 4);
    v18 = swift_task_alloc();
    v0[11] = v18;
    *v18 = v0;
    v19 = sub_1C441F4C0(v18);

    return v20(v19);
  }

  return result;
}

uint64_t sub_1C45F6A74()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C45F6B40()
{
  sub_1C45F6AD0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C45F6BF8()
{
  sub_1C45F6C50();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1C45F6C50()
{
  if (!qword_1EC0B9CC0)
  {
    sub_1C4EFDAB8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0B9CC0);
    }
  }
}

void sub_1C45F6D04()
{
  sub_1C45F6D88();
  if (v0 <= 0x3F)
  {
    sub_1C45F6E1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C45F6D88()
{
  if (!qword_1EDDDBD70)
  {
    sub_1C4EF9CD8();
    sub_1C4498E28(&qword_1EDDFCD70, MEMORY[0x1E6969530]);
    v0 = sub_1C4F010A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDDBD70);
    }
  }
}

void sub_1C45F6E1C()
{
  if (!qword_1EC0B9CD8)
  {
    sub_1C4572308(&qword_1EC0B88A8, &qword_1C4F115E0);
    v0 = sub_1C4F017A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0B9CD8);
    }
  }
}

void sub_1C45F6EC8()
{
  sub_1C43FBD3C();
  v1 = v0;
  v94 = v2;
  v101 = sub_1C456902C(&qword_1EC0B9CE8, &qword_1C4F11650);
  sub_1C43FBCE0(v101);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v90 - v6);
  v8 = sub_1C456902C(&qword_1EC0B9CF0, &qword_1C4F11658);
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v102 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v90 - v18;
  v20 = sub_1C4EF9CD8();
  v21 = sub_1C43FCDF8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBD08();
  v95 = v26 - v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  v105 = &v90 - v29;
  v30 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v31 = *(v30 - 8);
  v32 = v31[8];
  MEMORY[0x1EEE9AC00](v30 - 8);
  sub_1C43FBD08();
  v100 = v33 - v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  v103 = v36;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  *&v106 = v38;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v90 - v40;
  v110 = v0[1];
  v42 = *(v110 + 16);
  v43 = MEMORY[0x1E69E7CC0];
  v108 = v23;
  v109 = v20;
  v99 = v1;
  v104 = v14;
  if (v42)
  {
    v97 = v19;
    v98 = v7;
    v111 = MEMORY[0x1E69E7CC0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C459CF78();
    v44 = v110;
    v45 = 0;
    v46 = *(v110 + 16);
    v43 = v111;
    v47 = *v1;
    v107 = v23 + 16;
    v48 = v47 + 48;
    do
    {
      if (v46 == v45)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);

        __break(1u);
        return;
      }

      if (v45 >= *(v44 + 16))
      {
        goto LABEL_51;
      }

      if (v45 >= *(v47 + 16))
      {
        goto LABEL_52;
      }

      v49 = *(v44 + 8 * v45 + 32);
      if (v49 >= *(*v48 + 16))
      {
        v50 = 1;
      }

      else
      {
        if (v49 < 0)
        {
          goto LABEL_53;
        }

        (*(v108 + 16))(v41, *v48 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v49, v20);
        v50 = 0;
      }

      sub_1C440BAA8(v41, v50, 1, v20);
      v111 = v43;
      v51 = *(v43 + 16);
      if (v51 >= *(v43 + 24) >> 1)
      {
        sub_1C459CF78();
        v43 = v111;
      }

      ++v45;
      *(v43 + 16) = v51 + 1;
      sub_1C44CD9E0(v41, v43 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + v31[9] * v51, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v48 += 24;
      v20 = v109;
      v44 = v110;
    }

    while (v42 != v45);

    v19 = v97;
    v7 = v98;
    v14 = v104;
  }

  v52 = sub_1C45FA95C(v43);

  v111 = v52;
  sub_1C45F5F10(&v111);
  v53 = v111;
  sub_1C4868010(v111, v19);
  v107 = sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8);
  v54 = sub_1C44157D4(v19, 1, v107);
  v55 = v108;
  if (v54 == 1)
  {

    sub_1C4420C3C(v19, &qword_1EC0B9CF0, &qword_1C4F11658);
    v56 = v106;
    sub_1C440BAA8(v106, 1, 1, v20);
LABEL_19:
    v57 = v94;
    sub_1C4420C3C(v56, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v58 = sub_1C456902C(&qword_1EC0B9CF8, &unk_1C4F11660);
    v59 = v57;
    v60 = 1;
    goto LABEL_49;
  }

  v96 = v53;
  v56 = v106;
  sub_1C44CD9E0(&v19[*(v107 + 48)], v106, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C440582C(v56);
  if (v74)
  {

    goto LABEL_19;
  }

  v62 = *(v55 + 32);
  v61 = v55 + 32;
  v93 = v62;
  v62(v105, v56, v20);
  v63 = 0;
  v92 = v107 - 8;
  v64 = MEMORY[0x1E69E7CC0];
  v98 = (v61 - 16);
  v65 = *(v96 + 16);
  v108 = v61;
  v91 = (v61 - 24);
  v31 = qword_1C4F0D2D0;
  v66 = v103;
  v97 = v65;
  while (1)
  {
    if (v63 == v65)
    {
      v67 = 1;
      v63 = v65;
    }

    else
    {
      if ((v63 & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }

      if (v63 >= *(v96 + 16))
      {
        goto LABEL_59;
      }

      sub_1C4460050(v96 + ((*(*v92 + 80) + 32) & ~*(*v92 + 80)) + *(*v92 + 72) * v63, v14, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
      v67 = 0;
      ++v63;
    }

    sub_1C440BAA8(v14, v67, 1, v107);
    v68 = v102;
    sub_1C44CD9E0(v14, v102, &qword_1EC0B9CF0, &qword_1C4F11658);
    sub_1C440582C(v68);
    if (v74)
    {
LABEL_45:

      v87 = v94;
      goto LABEL_48;
    }

    v69 = *v68;
    v70 = *(v107 + 48);
    v71 = v109;
    (*v98)(v66, v105, v109);
    sub_1C440BAA8(v66, 0, 1, v71);
    v72 = *(v101 + 48);
    sub_1C44CD9E0(v68 + v70, v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4460050(v66, v7 + v72, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C440582C(v7);
    if (!v74)
    {
      break;
    }

    sub_1C4420C3C(v66, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C440582C(v7 + v72);
    if (!v74)
    {

      goto LABEL_47;
    }

    sub_1C4420C3C(v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v14 = v104;
      v77 = v110;
      if ((v69 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      sub_1C48347BC(v110);
      v14 = v104;
      if ((v69 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }
    }

    if (v69 >= *(v77 + 16))
    {
      goto LABEL_55;
    }

    v78 = *(v77 + 32 + 8 * v69);
    v79 = __OFADD__(v78, 1);
    v80 = v78 + 1;
    if (v79)
    {
      goto LABEL_56;
    }

    *(v77 + 32 + 8 * v69) = v80;
    v81 = v99;
    v99[1] = v77;
    v82 = *v81;
    if (v69 >= *(v82 + 16))
    {
      goto LABEL_57;
    }

    v110 = v77;
    v106 = *(v82 + 24 * v69 + 32);
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = *(v64 + 16);
      sub_1C458A3C0();
      v64 = v85;
    }

    v65 = v97;
    v83 = *(v64 + 16);
    if (v83 >= *(v64 + 24) >> 1)
    {
      sub_1C458A3C0();
      v64 = v86;
    }

    *(v64 + 16) = v83 + 1;
    *(v64 + 16 * v83 + 32) = v106;
  }

  v73 = v100;
  sub_1C4460050(v7, v100, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C440582C(v7 + v72);
  if (!v74)
  {
    v75 = v95;
    v93(v95, v7 + v72, v71);
    sub_1C4498E28(&qword_1EC0B9D00, MEMORY[0x1E6969530]);
    LODWORD(v106) = sub_1C4F010B8();
    v76 = *v91;
    (*v91)(v75, v71);
    sub_1C4420C3C(v103, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v66 = v103;
    v76(v100, v71);
    sub_1C4420C3C(v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if ((v106 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

  sub_1C4420C3C(v66, &unk_1EC0B84E0, qword_1C4F0D2D0);
  (*v91)(v73, v71);
LABEL_47:
  v87 = v94;
  sub_1C4420C3C(v7, &qword_1EC0B9CE8, &qword_1C4F11650);
LABEL_48:
  v88 = sub_1C456902C(&qword_1EC0B9CF8, &unk_1C4F11660);
  v89 = *(v88 + 48);
  v93(v87, v105, v109);
  *(v87 + v89) = v64;
  v59 = v87;
  v60 = 0;
  v58 = v88;
LABEL_49:
  sub_1C440BAA8(v59, v60, 1, v58);
  sub_1C43FE9F0();
}

uint64_t sub_1C45F78F8(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = sub_1C4EF9CD8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  sub_1C4460050(a1, v9, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
  v18 = *(v3 + 48);
  if (sub_1C44157D4(&v9[v18], 1, v10) == 1)
  {
    sub_1C4420C3C(&v9[v18], &unk_1EC0B84E0, qword_1C4F0D2D0);
    v19 = 0;
  }

  else
  {
    v20 = &v9[v18];
    v21 = *(v11 + 32);
    v21(v17, v20, v10);
    sub_1C4460050(v26, v7, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
    v22 = *(v3 + 48);
    if (sub_1C44157D4(&v7[v22], 1, v10) == 1)
    {
      (*(v11 + 8))(v17, v10);
      sub_1C4420C3C(&v7[v22], &unk_1EC0B84E0, qword_1C4F0D2D0);
      v19 = 1;
    }

    else
    {
      v21(v15, &v7[v22], v10);
      v19 = sub_1C4EF9C18();
      v23 = *(v11 + 8);
      v23(v15, v10);
      v23(v17, v10);
    }
  }

  return v19 & 1;
}

uint64_t sub_1C45F7BA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v2)
  {
    v3 = sub_1C4F01728();
    *(v3 + 16) = v2;
    bzero((v3 + 32), 8 * v2);
  }

  return a1;
}

uint64_t sub_1C45F7C10@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1C45F7BA4(*v1);
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t sub_1C45F7C94(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8);
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C45F82F0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C45F7DDC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C45F7DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v73 = sub_1C4EF9CD8();
  v8 = *(v73 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v73);
  v58 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v51[-v12];
  v71 = sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8);
  v13 = *(*(v71 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v71);
  v61 = &v51[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v66 = &v51[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v51[-v19];
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v51[-v22];
  result = MEMORY[0x1EEE9AC00](v21);
  v72 = &v51[-v26];
  v53 = a2;
  if (a3 != a2)
  {
    v27 = *a4;
    v28 = *(v25 + 72);
    v63 = (v8 + 8);
    v64 = (v8 + 32);
    v29 = v27 + v28 * (a3 - 1);
    v59 = -v28;
    v60 = v27;
    v30 = a1 - a3;
    v52 = v28;
    v31 = v27 + v28 * a3;
    v65 = v20;
    v62 = v23;
    while (2)
    {
      v56 = v29;
      v57 = a3;
      v54 = v31;
      v55 = v30;
      v32 = v30;
      while (1)
      {
        v33 = v72;
        sub_1C4460050(v31, v72, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        sub_1C4460050(v29, v23, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        sub_1C4460050(v33, v20, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        v34 = v71;
        v35 = *(v71 + 48);
        if (sub_1C44157D4(&v20[v35], 1, v73) == 1)
        {
          break;
        }

        v68 = v31;
        v69 = v32;
        v36 = v73;
        v67 = *v64;
        v67(v70, &v20[v35], v73);
        v37 = v66;
        sub_1C4460050(v23, v66, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        v38 = *(v34 + 48);
        if (sub_1C44157D4(&v37[v38], 1, v36) == 1)
        {
          (*v63)(v70, v73);
          sub_1C4420C3C(&v37[v38], &unk_1EC0B84E0, qword_1C4F0D2D0);
          v23 = v62;
          sub_1C4420C3C(v62, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
          result = sub_1C4420C3C(v72, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
          v20 = v65;
          v40 = v68;
          v39 = v69;
        }

        else
        {
          v41 = &v37[v38];
          v42 = v70;
          v43 = v58;
          v67(v58, v41, v73);
          v44 = sub_1C4EF9C18();
          v45 = *v63;
          v46 = v43;
          v47 = v42;
          v48 = v73;
          (*v63)(v46, v73);
          v45(v47, v48);
          v23 = v62;
          sub_1C4420C3C(v62, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
          result = sub_1C4420C3C(v72, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
          v20 = v65;
          v40 = v68;
          v39 = v69;
          if ((v44 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        if (!v60)
        {
          __break(1u);
          return result;
        }

        v49 = v61;
        sub_1C44CD9E0(v40, v61, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1C44CD9E0(v49, v29, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        v29 += v59;
        v31 = v40 + v59;
        v50 = __CFADD__(v39, 1);
        v32 = v39 + 1;
        if (v50)
        {
          goto LABEL_13;
        }
      }

      sub_1C4420C3C(&v20[v35], &unk_1EC0B84E0, qword_1C4F0D2D0);
      sub_1C4420C3C(v23, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
      result = sub_1C4420C3C(v72, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
LABEL_13:
      a3 = v57 + 1;
      v29 = v56 + v52;
      v30 = v55 - 1;
      v31 = v54 + v52;
      if (v57 + 1 != v53)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C45F82F0(int64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v162 = a1;
  v188 = sub_1C4EF9CD8();
  v7 = *(v188 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v188);
  v179 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v191 = &v157 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v163 = &v157 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v157 - v15;
  v194 = sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8);
  v174 = *(v194 - 8);
  v17 = *(v174 + 64);
  v18 = MEMORY[0x1EEE9AC00](v194);
  v168 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v184 = &v157 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v157 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v192 = &v157 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v193 = &v157 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v169 = &v157 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v177 = &v157 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v176 = &v157 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v159 = &v157 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v42 = &v157 - v39;
  v175 = a3;
  v43 = a3[1];
  if (v43 < 1)
  {
    v45 = MEMORY[0x1E69E7CC0];
LABEL_113:
    v4 = v45;
    v45 = *v162;
    if (!*v162)
    {
      goto LABEL_155;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_115;
    }

    goto LABEL_149;
  }

  v158 = a4;
  v44 = 0;
  v186 = (v7 + 8);
  v187 = (v7 + 32);
  v45 = MEMORY[0x1E69E7CC0];
  v46 = &qword_1C4F0E9F8;
  v173 = v16;
  v181 = v24;
  v185 = v40;
  v167 = v41;
  v47 = v177;
  v161 = &v157 - v39;
  while (1)
  {
    v48 = v44;
    v49 = v44 + 1;
    v164 = v44;
    if (v44 + 1 < v43)
    {
      v183 = v43;
      v160 = v45;
      v50 = *v175;
      v45 = *(v174 + 72);
      v180 = v44 + 1;
      v51 = v50 + v45 * v49;
      sub_1C4460050(v51, v42, &unk_1EC0BE4E0, v46);
      v190 = v50;
      v52 = v50 + v45 * v48;
      v53 = v159;
      sub_1C4460050(v52, v159, &unk_1EC0BE4E0, v46);
      v54 = v178;
      LODWORD(v182) = sub_1C45F78F8(v42, v53);
      v178 = v54;
      v4 = v48;
      v55 = v169;
      if (v54)
      {
        sub_1C4420C3C(v53, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        sub_1C4420C3C(v161, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
LABEL_123:

        return;
      }

      sub_1C4420C3C(v53, &unk_1EC0BE4E0, v46);
      sub_1C4420C3C(v161, &unk_1EC0BE4E0, v46);
      v56 = v4 + 2;
      v57 = v190 + v45 * (v4 + 2);
      v58 = v180;
      v59 = v45;
      v189 = v45;
      v60 = v183;
      while (1)
      {
        v61 = v56;
        v180 = v58;
        if (v58 + 1 >= v60)
        {
          break;
        }

        v190 = v56;
        v62 = v176;
        sub_1C4460050(v57, v176, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        sub_1C4460050(v51, v47, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        sub_1C4460050(v62, v55, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        v63 = v47;
        v64 = *(v194 + 48);
        v65 = v188;
        if (sub_1C44157D4(v55 + v64, 1, v188) == 1)
        {
          sub_1C4420C3C(v55 + v64, &unk_1EC0B84E0, qword_1C4F0D2D0);
          v4 = 0;
        }

        else
        {
          v172 = *v187;
          v172(v173, v55 + v64, v65);
          v66 = v63;
          v67 = v167;
          sub_1C4460050(v66, v167, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
          v68 = *(v194 + 48);
          if (sub_1C44157D4(v67 + v68, 1, v65) == 1)
          {
            (*v186)(v173, v65);
            sub_1C4420C3C(v67 + v68, &unk_1EC0B84E0, qword_1C4F0D2D0);
            v4 = 1;
          }

          else
          {
            v69 = v67 + v68;
            v70 = v163;
            v172(v163, v69, v65);
            v71 = v173;
            v4 = sub_1C4EF9C18();
            v72 = *v186;
            (*v186)(v70, v65);
            v72(v71, v65);
          }

          v55 = v169;
        }

        v47 = v177;
        v45 = &unk_1EC0BE4E0;
        sub_1C4420C3C(v177, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        sub_1C4420C3C(v176, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        v59 = v189;
        v61 = v190;
        v57 += v189;
        v51 += v189;
        v58 = v180 + 1;
        v56 = v190 + 1;
        v60 = v183;
        if ((v182 & 1) != (v4 & 1))
        {
          goto LABEL_16;
        }
      }

      v58 = v60;
LABEL_16:
      v180 = v58;
      if (v182)
      {
        v49 = v180;
        v48 = v164;
        v46 = &qword_1C4F0E9F8;
        if (v180 < v164)
        {
          goto LABEL_148;
        }

        if (v164 >= v180)
        {
          v45 = v160;
          goto LABEL_39;
        }

        if (v60 >= v61)
        {
          v73 = v61;
        }

        else
        {
          v73 = v60;
        }

        v74 = v59 * (v73 - 1);
        v4 = v164;
        v75 = v59 * v73;
        v76 = v164 * v59;
        do
        {
          if (v4 != --v49)
          {
            v77 = *v175;
            if (!*v175)
            {
              goto LABEL_153;
            }

            sub_1C44CD9E0(v77 + v76, v168, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
            v78 = v76 < v74 || v77 + v76 >= v77 + v75;
            if (v78)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v76 != v74)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C44CD9E0(v168, v77 + v74, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
            v59 = v189;
          }

          ++v4;
          v74 -= v59;
          v75 -= v59;
          v76 += v59;
        }

        while (v4 < v49);
        v45 = v160;
        v47 = v177;
        v49 = v180;
      }

      else
      {
        v45 = v160;
        v49 = v180;
        v46 = &qword_1C4F0E9F8;
      }

      v48 = v164;
    }

LABEL_39:
    v79 = v175[1];
    if (v49 < v79)
    {
      if (__OFSUB__(v49, v48))
      {
        goto LABEL_145;
      }

      if (v49 - v48 < v158)
      {
        break;
      }
    }

LABEL_60:
    if (v49 < v48)
    {
      goto LABEL_144;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v180 = v49;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v146 = *(v45 + 16);
      sub_1C458A358();
      v45 = v147;
    }

    v102 = *(v45 + 16);
    v103 = v102 + 1;
    if (v102 >= *(v45 + 24) >> 1)
    {
      sub_1C458A358();
      v45 = v148;
    }

    *(v45 + 16) = v103;
    v104 = v45 + 32;
    v105 = (v45 + 32 + 16 * v102);
    v106 = v180;
    *v105 = v164;
    v105[1] = v106;
    v190 = *v162;
    if (!v190)
    {
      goto LABEL_154;
    }

    if (v102)
    {
      while (1)
      {
        v107 = v103 - 1;
        v108 = (v104 + 16 * (v103 - 1));
        v109 = (v45 + 16 * v103);
        if (v103 >= 4)
        {
          break;
        }

        if (v103 == 3)
        {
          v110 = *(v45 + 32);
          v111 = *(v45 + 40);
          v120 = __OFSUB__(v111, v110);
          v112 = v111 - v110;
          v113 = v120;
LABEL_80:
          if (v113)
          {
            goto LABEL_131;
          }

          v125 = *v109;
          v124 = v109[1];
          v126 = __OFSUB__(v124, v125);
          v127 = v124 - v125;
          v128 = v126;
          if (v126)
          {
            goto LABEL_134;
          }

          v129 = v108[1];
          v130 = v129 - *v108;
          if (__OFSUB__(v129, *v108))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v127, v130))
          {
            goto LABEL_139;
          }

          if (v127 + v130 >= v112)
          {
            if (v112 < v130)
            {
              v107 = v103 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        if (v103 < 2)
        {
          goto LABEL_133;
        }

        v132 = *v109;
        v131 = v109[1];
        v120 = __OFSUB__(v131, v132);
        v127 = v131 - v132;
        v128 = v120;
LABEL_95:
        if (v128)
        {
          goto LABEL_136;
        }

        v134 = *v108;
        v133 = v108[1];
        v120 = __OFSUB__(v133, v134);
        v135 = v133 - v134;
        if (v120)
        {
          goto LABEL_138;
        }

        if (v135 < v127)
        {
          goto LABEL_109;
        }

LABEL_102:
        if (v107 - 1 >= v103)
        {
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*v175)
        {
          goto LABEL_151;
        }

        v139 = (v104 + 16 * (v107 - 1));
        v140 = *v139;
        v141 = v104;
        v142 = v104 + 16 * v107;
        v4 = *(v142 + 8);
        v143 = v178;
        sub_1C45F9254(*v175 + *(v174 + 72) * *v139, *v175 + *(v174 + 72) * *v142, *v175 + *(v174 + 72) * v4, v190);
        v178 = v143;
        if (v143)
        {
          goto LABEL_123;
        }

        if (v4 < v140)
        {
          goto LABEL_126;
        }

        v144 = v45;
        v45 = *(v45 + 16);
        if (v107 > v45)
        {
          goto LABEL_127;
        }

        *v139 = v140;
        v139[1] = v4;
        if (v107 >= v45)
        {
          goto LABEL_128;
        }

        v103 = v45 - 1;
        sub_1C461950C((v142 + 16), v45 - 1 - v107, v142);
        *(v144 + 16) = v45 - 1;
        v145 = v45 > 2;
        v45 = v144;
        v24 = v181;
        v47 = v177;
        v104 = v141;
        if (!v145)
        {
          goto LABEL_109;
        }
      }

      v114 = v104 + 16 * v103;
      v115 = *(v114 - 64);
      v116 = *(v114 - 56);
      v120 = __OFSUB__(v116, v115);
      v117 = v116 - v115;
      if (v120)
      {
        goto LABEL_129;
      }

      v119 = *(v114 - 48);
      v118 = *(v114 - 40);
      v120 = __OFSUB__(v118, v119);
      v112 = v118 - v119;
      v113 = v120;
      if (v120)
      {
        goto LABEL_130;
      }

      v121 = v109[1];
      v122 = v121 - *v109;
      if (__OFSUB__(v121, *v109))
      {
        goto LABEL_132;
      }

      v120 = __OFADD__(v112, v122);
      v123 = v112 + v122;
      if (v120)
      {
        goto LABEL_135;
      }

      if (v123 >= v117)
      {
        v137 = *v108;
        v136 = v108[1];
        v120 = __OFSUB__(v136, v137);
        v138 = v136 - v137;
        if (v120)
        {
          goto LABEL_143;
        }

        if (v112 < v138)
        {
          v107 = v103 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_80;
    }

LABEL_109:
    v43 = v175[1];
    v44 = v180;
    v42 = v161;
    if (v180 >= v43)
    {
      goto LABEL_113;
    }
  }

  v80 = v48 + v158;
  if (__OFADD__(v48, v158))
  {
    goto LABEL_146;
  }

  if (v80 >= v79)
  {
    v80 = v175[1];
  }

  if (v80 < v48)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    v4 = sub_1C46194F4(v4);
LABEL_115:
    v149 = (v4 + 16);
    for (i = *(v4 + 16); i >= 2; *v149 = i)
    {
      if (!*v175)
      {
        goto LABEL_152;
      }

      v151 = (v4 + 16 * i);
      v152 = *v151;
      v153 = &v149[2 * i];
      v154 = *(v153 + 1);
      v155 = v178;
      sub_1C45F9254(*v175 + *(v174 + 72) * *v151, *v175 + *(v174 + 72) * *v153, *v175 + *(v174 + 72) * v154, v45);
      v178 = v155;
      if (v155)
      {
        break;
      }

      if (v154 < v152)
      {
        goto LABEL_140;
      }

      if (i - 2 >= *v149)
      {
        goto LABEL_141;
      }

      *v151 = v152;
      v151[1] = v154;
      v156 = *v149 - i;
      if (*v149 < i)
      {
        goto LABEL_142;
      }

      i = *v149 - 1;
      sub_1C461950C(v153 + 16, v156, v153);
    }

    goto LABEL_123;
  }

  if (v49 == v80)
  {
    goto LABEL_60;
  }

  v160 = v45;
  v81 = *v175;
  v82 = *(v174 + 72);
  v83 = *v175 + v82 * (v49 - 1);
  v182 = -v82;
  v183 = v81;
  v84 = v48 - v49;
  v165 = v82;
  v85 = v81 + v49 * v82;
  v86 = v192;
  v166 = v80;
LABEL_48:
  v180 = v49;
  v170 = v85;
  v87 = v85;
  v171 = v84;
  v88 = v84;
  v172 = v83;
  while (1)
  {
    v89 = v193;
    sub_1C4460050(v87, v193, &unk_1EC0BE4E0, v46);
    sub_1C4460050(v83, v86, &unk_1EC0BE4E0, v46);
    v4 = v46;
    v90 = v185;
    sub_1C4460050(v89, v185, &unk_1EC0BE4E0, v4);
    v91 = *(v194 + 48);
    v92 = v188;
    if (sub_1C44157D4(v90 + v91, 1, v188) == 1)
    {
      sub_1C4420C3C(v90 + v91, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v86 = v192;
      sub_1C4420C3C(v192, &unk_1EC0BE4E0, v4);
      sub_1C4420C3C(v193, &unk_1EC0BE4E0, v4);
      v46 = v4;
LABEL_58:
      v49 = v180 + 1;
      v83 = v172 + v165;
      v84 = v171 - 1;
      v85 = v170 + v165;
      if (v180 + 1 == v166)
      {
        v49 = v166;
        v45 = v160;
        v47 = v177;
        v48 = v164;
        goto LABEL_60;
      }

      goto LABEL_48;
    }

    v190 = v88;
    v189 = *v187;
    (v189)(v191, v90 + v91, v92);
    sub_1C4460050(v192, v24, &unk_1EC0BE4E0, v4);
    v93 = *(v194 + 48);
    v94 = v92;
    if (sub_1C44157D4(&v24[v93], 1, v92) == 1)
    {
      (*v186)(v191, v92);
      sub_1C4420C3C(&v24[v93], &unk_1EC0B84E0, qword_1C4F0D2D0);
      v86 = v192;
      sub_1C4420C3C(v192, &unk_1EC0BE4E0, v4);
      sub_1C4420C3C(v193, &unk_1EC0BE4E0, v4);
      v46 = v4;
    }

    else
    {
      v95 = &v24[v93];
      v96 = v191;
      v97 = v179;
      (v189)(v179, v95, v94);
      LODWORD(v189) = sub_1C4EF9C18();
      v98 = *v186;
      (*v186)(v97, v94);
      v24 = v181;
      v98(v96, v94);
      v86 = v192;
      sub_1C4420C3C(v192, &unk_1EC0BE4E0, v4);
      sub_1C4420C3C(v193, &unk_1EC0BE4E0, v4);
      v46 = v4;
      if ((v189 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v99 = v190;
    if (!v183)
    {
      break;
    }

    v100 = v184;
    sub_1C44CD9E0(v87, v184, &unk_1EC0BE4E0, v46);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C44CD9E0(v100, v83, &unk_1EC0BE4E0, v46);
    v83 += v182;
    v87 += v182;
    v78 = __CFADD__(v99, 1);
    v88 = v99 + 1;
    if (v78)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_1C45F9254(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v111 = a4;
  v7 = sub_1C4EF9CD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v92 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v91 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v94 = &v91 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v91 - v17;
  v109 = sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8);
  v18 = *(*(v109 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v109);
  v93 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v95 = &v91 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v98 = &v91 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v103 = &v91 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v97 = &v91 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v105 = &v91 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v108 = &v91 - v32;
  result = MEMORY[0x1EEE9AC00](v31);
  v99 = &v91 - v34;
  v36 = *(v35 + 72);
  if (!v36)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v36 == -1)
  {
    goto LABEL_70;
  }

  v38 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v36 == -1)
  {
    goto LABEL_71;
  }

  v107 = v7;
  v40 = (a2 - a1) / v36;
  v114 = a1;
  v113 = v111;
  v100 = (v8 + 8);
  v101 = (v8 + 32);
  v41 = v38 / v36;
  if (v40 < v38 / v36)
  {
    v42 = v111;
    sub_1C459C374(a1, (a2 - a1) / v36, v111);
    v102 = a3;
    v103 = v42 + v40 * v36;
    v112 = v103;
    v43 = &unk_1EC0BE4E0;
    v44 = v36;
    v45 = v105;
    v46 = v108;
    v47 = v99;
    v96 = v44;
    while (1)
    {
      if (v111 >= v103 || a2 >= a3)
      {
        goto LABEL_68;
      }

      v110 = a2;
      sub_1C4460050(a2, v47, v43, &qword_1C4F0E9F8);
      sub_1C4460050(v111, v46, v43, &qword_1C4F0E9F8);
      sub_1C4460050(v47, v45, v43, &qword_1C4F0E9F8);
      v49 = v47;
      v50 = v109;
      v51 = *(v109 + 48);
      v52 = v43;
      v53 = v107;
      if (sub_1C44157D4(v45 + v51, 1, v107) == 1)
      {
        break;
      }

      v106 = a1;
      v56 = v45;
      v57 = *v101;
      v58 = v104;
      (*v101)(v104, v56 + v51, v53);
      v59 = v97;
      sub_1C4460050(v108, v97, v52, &qword_1C4F0E9F8);
      v60 = *(v50 + 48);
      if (sub_1C44157D4(v59 + v60, 1, v53) == 1)
      {
        (*v100)(v58, v53);
        sub_1C4420C3C(v59 + v60, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v46 = v108;
        sub_1C4420C3C(v108, v52, &qword_1C4F0E9F8);
        v47 = v99;
        sub_1C4420C3C(v99, v52, &qword_1C4F0E9F8);
        a1 = v106;
        v44 = v96;
        v43 = v52;
      }

      else
      {
        v61 = v59 + v60;
        v62 = v94;
        v57(v94, v61, v53);
        v63 = sub_1C4EF9C18();
        v64 = *v100;
        (*v100)(v62, v53);
        v64(v104, v53);
        v46 = v108;
        sub_1C4420C3C(v108, v52, &qword_1C4F0E9F8);
        v47 = v99;
        sub_1C4420C3C(v99, v52, &qword_1C4F0E9F8);
        a1 = v106;
        v44 = v96;
        v43 = v52;
        if ((v63 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      a2 = v110 + v44;
      if (a1 < v110 || a1 >= a2)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v102;
      }

      else
      {
        a3 = v102;
        if (a1 != v110)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

LABEL_38:
      a1 += v44;
      v114 = a1;
      v45 = v105;
    }

    sub_1C4420C3C(v45 + v51, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v46 = v108;
    sub_1C4420C3C(v108, v52, &qword_1C4F0E9F8);
    sub_1C4420C3C(v49, v52, &qword_1C4F0E9F8);
    v47 = v49;
    v43 = v52;
LABEL_18:
    a2 = v110;
    v54 = v111 + v44;
    if (a1 < v111 || a1 >= v54)
    {
      swift_arrayInitWithTakeFrontToBack();
      a3 = v102;
    }

    else
    {
      a3 = v102;
      if (a1 != v111)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v113 = v54;
    v111 = v54;
    goto LABEL_38;
  }

  v99 = v14;
  v66 = v111;
  sub_1C459C374(a2, v38 / v36, v111);
  v67 = v66 + v41 * v36;
  v68 = -v36;
  v69 = v67;
  v70 = v109;
  v71 = v98;
  v105 = -v36;
  v106 = a1;
LABEL_40:
  v110 = a2;
  v72 = a2 + v68;
  v108 = a3;
  v94 = v69;
  v73 = v95;
  v102 = v72;
  while (1)
  {
    if (v67 <= v111)
    {
      v114 = v110;
      v112 = v69;
      goto LABEL_68;
    }

    if (v110 <= a1)
    {
      break;
    }

    v97 = v69;
    v104 = v67;
    v74 = v67 + v68;
    v75 = v103;
    sub_1C4460050(v67 + v68, v103, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
    sub_1C4460050(v72, v71, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
    sub_1C4460050(v75, v73, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
    v76 = v71;
    v77 = *(v70 + 48);
    v78 = v70;
    v79 = v107;
    if (sub_1C44157D4(v73 + v77, 1, v107) == 1)
    {
      sub_1C4420C3C(v73 + v77, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v80 = 0;
    }

    else
    {
      v96 = *v101;
      v96(v99, v73 + v77, v79);
      v81 = v93;
      sub_1C4460050(v76, v93, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
      v82 = *(v78 + 48);
      if (sub_1C44157D4(v81 + v82, 1, v79) == 1)
      {
        (*v100)(v99, v79);
        sub_1C4420C3C(v81 + v82, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v80 = 1;
      }

      else
      {
        v83 = v92;
        v96(v92, v81 + v82, v79);
        v84 = v99;
        v80 = sub_1C4EF9C18();
        v85 = *v100;
        (*v100)(v83, v79);
        v85(v84, v79);
      }

      a1 = v106;
      v73 = v95;
    }

    v86 = v108;
    a3 = v108 + v105;
    v71 = v98;
    sub_1C4420C3C(v98, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
    sub_1C4420C3C(v103, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
    v70 = v109;
    if (v80)
    {
      if (v86 < v110 || a3 >= v110)
      {
        a2 = v102;
        swift_arrayInitWithTakeFrontToBack();
        v69 = v97;
        v67 = v104;
        v68 = v105;
      }

      else
      {
        v69 = v97;
        v89 = v102;
        a2 = v102;
        v67 = v104;
        v68 = v105;
        if (v86 != v110)
        {
          v90 = v97;
          swift_arrayInitWithTakeBackToFront();
          v67 = v104;
          a2 = v89;
          v69 = v90;
        }
      }

      goto LABEL_40;
    }

    if (v86 < v104 || a3 >= v104)
    {
      swift_arrayInitWithTakeFrontToBack();
      v108 = a3;
      v67 = v74;
      v69 = v74;
      v68 = v105;
      v72 = v102;
    }

    else
    {
      v69 = v74;
      v108 = a3;
      v67 = v74;
      v68 = v105;
      v72 = v102;
      if (v104 != v86)
      {
        swift_arrayInitWithTakeBackToFront();
        v108 = a3;
        v67 = v74;
        v69 = v74;
      }
    }
  }

  v114 = v110;
  v112 = v94;
LABEL_68:
  sub_1C4BEB3C0(&v114, &v113, &v112);
  return 1;
}

void sub_1C45F9C18()
{
  sub_1C43FBD3C();
  sub_1C4403FC0();
  v1 = type metadata accessor for GDInteractionEnumeration.GDInteractionIterator();
  v2 = sub_1C43FBD18(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v5 = v0;
  sub_1C4EF97F8();
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0] + 32;
  v9 = off_1E81EC5C8;
  v10 = MEMORY[0x1E69E7CA0];
  while (1)
  {
    sub_1C4EF97D8();
    if (!v22[3])
    {
      sub_1C4420C3C(v22, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_18:
      sub_1C45FB340();
      v18 = v7[3];
      if (v18 >= 2)
      {
        v19 = v18 >> 1;
        v17 = __OFSUB__(v19, v6);
        v20 = v19 - v6;
        if (v17)
        {
          goto LABEL_24;
        }

        v7[2] = v20;
      }

      sub_1C43FE9F0();
      return;
    }

    sub_1C4461BB8(0, &qword_1EDDF0578, v9);
    if ((sub_1C43FBF98() & 1) == 0)
    {
      goto LABEL_18;
    }

    if (!v6)
    {
      v11 = v7[3];
      sub_1C4431F7C();
      if (v12)
      {
        goto LABEL_23;
      }

      v9 = v10;
      sub_1C4412CD0();
      sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
      v13 = sub_1C44182F4();
      v14 = j__malloc_size(v13);
      sub_1C4402C54(v14);
      if (v15)
      {
        if (v13 != v7 || &v7[v8 + 4] == 0)
        {
          memmove(0, v7 + 4, 8 * v8);
        }

        v7[2] = 0;
      }

      sub_1C4404BD8();
      sub_1C44040B4();
    }

    v17 = __OFSUB__(v6--, 1);
    if (v17)
    {
      break;
    }

    *v8 = v21;
    v8 += 8;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_1C45F9DD0()
{
  sub_1C43FBD3C();
  v2 = v1;
  v3 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C44109B4();
  v7 = type metadata accessor for Source();
  v8 = sub_1C43FCDF8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  v51 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  v53 = v18;
  v54 = &v48 - v17;
  v56 = 0;
  v49 = *(v18 + 80);
  v50 = (v49 + 32) & ~v49;
  v57 = MEMORY[0x1E69E7CC0];
  v55 = MEMORY[0x1E69E7CC0] + v50;
  v19 = 1;
  while (1)
  {
    while (1)
    {
      if (qword_1EDDFA6A8 != -1)
      {
        swift_once();
      }

      if (qword_1EDE2DCF0 < v19)
      {
        v45 = v57[3];
        if (v45 >= 2)
        {
          v46 = v45 >> 1;
          v20 = __OFSUB__(v46, v56);
          v47 = v46 - v56;
          if (v20)
          {
            goto LABEL_50;
          }

          v57[2] = v47;
        }

        sub_1C43FE9F0();
        return;
      }

      sub_1C449E530(v19, v0);
      if (sub_1C44157D4(v0, 1, v7) != 1)
      {
        break;
      }

      sub_1C4420C3C(v0, &unk_1EC0C0760, &qword_1C4F170D0);
      v20 = __OFADD__(v19++, 1);
      if (v20)
      {
        goto LABEL_48;
      }
    }

    sub_1C448B210(v0, v13);
    v21 = v19 - 1;
    if (__OFSUB__(v19, 1))
    {
      break;
    }

    v20 = __OFADD__(v19++, 1);
    if (v20)
    {
      goto LABEL_49;
    }

    v22 = v21 > 0x40;
    if (v21 >= 0x40)
    {
      v23 = 0;
    }

    else
    {
      v23 = 1 << v21;
    }

    if (v22)
    {
      v23 = 0;
    }

    if ((v23 & v2) >= 1)
    {
      v24 = v51;
      sub_1C448B210(v13, v51);
      sub_1C448B210(v24, v54);
      v25 = v56;
      if (v56)
      {
        v26 = v57;
        goto LABEL_41;
      }

      v27 = v57[3];
      sub_1C4431F7C();
      if (v28)
      {
        goto LABEL_52;
      }

      sub_1C4412CD0();
      if (v28 ^ v20 | v35)
      {
        v30 = 1;
      }

      else
      {
        v30 = v29;
      }

      sub_1C456902C(&unk_1EC0BAC00, &unk_1C4F11680);
      v31 = *(v53 + 72);
      v56 = v30;
      v52 = swift_allocObject();
      v32 = j__malloc_size(v52);
      if (!v31)
      {
        goto LABEL_53;
      }

      v33 = v50;
      v34 = v32 - v50;
      v35 = v32 - v50 == 0x8000000000000000 && v31 == -1;
      if (v35)
      {
        goto LABEL_54;
      }

      v36 = v34 / v31;
      v37 = v52;
      v38 = v57;
      *(v52 + 2) = v56;
      v37[3] = 2 * (v34 / v31);
      v39 = v37 + v33;
      v40 = v38[3];
      v41 = (v40 >> 1) * v31;
      if (v38[2])
      {
        if (v37 >= v38 && v39 < v38 + v50 + v41)
        {
          if (v37 != v38)
          {
            sub_1C4433124();
            swift_arrayInitWithTakeBackToFront();
LABEL_38:
            v41 = v48;
            v39 = v55;
            v40 = v56;
            v36 = v31;
          }

          v57[2] = 0;
          goto LABEL_40;
        }

        sub_1C4433124();
        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_38;
      }

LABEL_40:
      v55 = v39 + v41;
      v25 = (v36 & 0x7FFFFFFFFFFFFFFFLL) - (v40 >> 1);

      v26 = v52;
LABEL_41:
      v20 = __OFSUB__(v25, 1);
      v43 = v25 - 1;
      if (v20)
      {
        goto LABEL_51;
      }

      v56 = v43;
      v44 = v55;
      v52 = v26;
      sub_1C448B210(v54, v55);
      v55 = v44 + *(v53 + 72);
      v57 = v52;
    }

    else
    {
      sub_1C45FB340();
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_1C45FA1A8()
{
  sub_1C43FBD3C();
  v1 = v0;
  v2 = sub_1C456902C(&qword_1EC0B9D20, &qword_1C4F117D0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v44 - v6;
  v8 = &qword_1EC0B9CF8;
  v9 = &unk_1C4F11660;
  v10 = sub_1C456902C(&qword_1EC0B9CF8, &unk_1C4F11660);
  sub_1C43FCDF8(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v44 - v14;
  v48 = v16;
  v46 = *(v16 + 80);
  v17 = MEMORY[0x1E69E7CC0];
  v47 = (v46 + 32) & ~v46;
  v18 = MEMORY[0x1E69E7CC0] + v47;
  v19 = *(v1 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v20 = sub_1C4A72854(0, v19);
  v21 = 0;
  v44[1] = v1;
  v45 = v7;
  v49 = v1;
  v50 = v20;
  while (1)
  {
    sub_1C45F6EC8();
    sub_1C440582C(v7);
    if (v35)
    {

      sub_1C4420C3C(v7, &qword_1EC0B9D20, &qword_1C4F117D0);
      v41 = v17[3];
      if (v41 >= 2)
      {
        v42 = v41 >> 1;
        v29 = __OFSUB__(v42, v21);
        v43 = v42 - v21;
        if (v29)
        {
          goto LABEL_35;
        }

        v17[2] = v43;
      }

      sub_1C43FE9F0();
      return;
    }

    sub_1C44CD9E0(v7, v15, v8, v9);
    if (v21)
    {
      v22 = v17;
    }

    else
    {
      v23 = v17[3];
      sub_1C4431F7C();
      if (v24)
      {
        goto LABEL_32;
      }

      v25 = v15;
      v26 = v9;
      v27 = v8;
      sub_1C4412CD0();
      if (v24 ^ v29 | v35)
      {
        v30 = 1;
      }

      else
      {
        v30 = v28;
      }

      sub_1C456902C(&qword_1EC0B9D28, qword_1C4F117D8);
      v31 = v47;
      v32 = *(v48 + 72);
      v22 = swift_allocObject();
      v33 = j__malloc_size(v22);
      if (!v32)
      {
        goto LABEL_33;
      }

      v34 = v33 - v31;
      v35 = v33 - v31 == 0x8000000000000000 && v32 == -1;
      if (v35)
      {
        goto LABEL_34;
      }

      v36 = v34 / v32;
      v22[2] = v30;
      v22[3] = 2 * (v34 / v32);
      v37 = v22 + v31;
      v38 = v17[3];
      v39 = (v38 >> 1) * v32;
      if (v17[2])
      {
        if (v22 < v17 || v37 >= v17 + v47 + v39)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v22 != v17)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v17[2] = 0;
      }

      v18 = &v37[v39];
      v21 = (v36 & 0x7FFFFFFFFFFFFFFFLL) - (v38 >> 1);

      v8 = v27;
      v9 = v26;
      v15 = v25;
      v7 = v45;
    }

    v29 = __OFSUB__(v21--, 1);
    if (v29)
    {
      break;
    }

    sub_1C44CD9E0(v15, v18, v8, v9);
    v18 += *(v48 + 72);
    v17 = v22;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1C45FA498()
{
  sub_1C43FBD3C();
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; ++i)
  {
    v3 = sub_1C4D295BC();
    if (!v3)
    {
      v17 = v1[3];
      if (v17 >= 2)
      {
        v18 = v17 >> 1;
        v9 = __OFSUB__(v18, v0);
        v19 = v18 - v0;
        if (v9)
        {
          goto LABEL_25;
        }

        v1[2] = v19;
      }

      sub_1C43FE9F0();
      return;
    }

    v4 = v3;
    if (!v0)
    {
      v5 = v1[3];
      sub_1C4431F7C();
      if (v6)
      {
        goto LABEL_24;
      }

      sub_1C4412CD0();
      if (v6 ^ v9 | v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = v7;
      }

      sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
      v11 = sub_1C44182F4();
      v12 = (j__malloc_size(v11) - 32) / 8;
      v11[2] = v10;
      v11[3] = (2 * v12) | 1;
      v13 = (v11 + 4);
      v14 = v1[3];
      v15 = v14 >> 1;
      if (v1[2])
      {
        if (v11 != v1 || v13 >= &v1[v15 + 4])
        {
          memmove(v11 + 4, v1 + 4, 8 * v15);
        }

        v1[2] = 0;
      }

      i = (v13 + 8 * v15);
      v0 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - (v14 >> 1);

      v1 = v11;
    }

    v9 = __OFSUB__(v0--, 1);
    if (v9)
    {
      break;
    }

    *i = v4;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1C45FA5C0()
{
  sub_1C43FBD3C();
  v1 = sub_1C4403FC0();
  v2 = type metadata accessor for PhotosMetadataSequence.Iterator(v1);
  v3 = sub_1C43FBD18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v0;
  sub_1C4EFFAB8();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0] + 32;
  v10 = 0x1E6978630;
  v11 = MEMORY[0x1E69E7CA0];
  while (1)
  {
    sub_1C4EFFA98();
    if (!v23[3])
    {
      sub_1C4420C3C(v23, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_18:
      sub_1C45FB340();
      v19 = v8[3];
      if (v19 >= 2)
      {
        v20 = v19 >> 1;
        v18 = __OFSUB__(v20, v7);
        v21 = v20 - v7;
        if (v18)
        {
          goto LABEL_24;
        }

        v8[2] = v21;
      }

      sub_1C43FE9F0();
      return;
    }

    sub_1C4461BB8(0, &qword_1EDDDB860, v10);
    if ((sub_1C43FBF98() & 1) == 0)
    {
      goto LABEL_18;
    }

    if (!v7)
    {
      v12 = v8[3];
      sub_1C4431F7C();
      if (v13)
      {
        goto LABEL_23;
      }

      v10 = v11;
      sub_1C4412CD0();
      sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
      v14 = sub_1C44182F4();
      v15 = j__malloc_size(v14);
      sub_1C4402C54(v15);
      if (v16)
      {
        if (v14 != v8 || &v8[v9 + 4] == 0)
        {
          memmove(0, v8 + 4, 8 * v9);
        }

        v8[2] = 0;
      }

      sub_1C4404BD8();
      sub_1C44040B4();
    }

    v18 = __OFSUB__(v7--, 1);
    if (v18)
    {
      break;
    }

    *v9 = v22;
    v9 += 8;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_1C45FA778()
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v0 = objc_autoreleasePoolPush();
  sub_1C4415EA8();
  v1 = sub_1C4F01FC8();

  objc_autoreleasePoolPop(v0);
  v2 = 0;
  v3 = 0;
  v4 = *(v1 + 16);
  v5 = (v1 + 40);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = (MEMORY[0x1E69E7CC0] + 32);
  while (v4 != v3)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v9 = *(v5 - 1);
    v8 = *v5;
    if (v2)
    {
      v10 = *v5;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v11 = v6;
    }

    else
    {
      v12 = v6[3];
      sub_1C4431F7C();
      if (v13)
      {
        goto LABEL_28;
      }

      sub_1C4412CD0();
      if (v13 ^ v16 | v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = v14;
      }

      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v11 = sub_1C44182F4();
      v18 = (j__malloc_size(v11) - 32) / 16;
      v11[2] = v17;
      v11[3] = 2 * v18;
      v19 = v11 + 4;
      v20 = v6[3] >> 1;
      v7 = &v11[2 * v20 + 4];
      v2 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;
      if (v6[2])
      {
        if (v11 != v6 || v19 >= &v6[2 * v20 + 4])
        {
          memmove(v19, v6 + 4, 16 * v20);
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v6[2] = 0;
      }

      else
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }
    }

    v16 = __OFSUB__(v2--, 1);
    if (v16)
    {
      goto LABEL_27;
    }

    *v7 = v9;
    v7[1] = v8;
    v7 += 2;
    v5 += 2;
    ++v3;
    v6 = v11;
  }

  v22 = v6[3];
  if (v22 < 2)
  {
    return;
  }

  v23 = v22 >> 1;
  v16 = __OFSUB__(v23, v2);
  v24 = v23 - v2;
  if (!v16)
  {
    v6[2] = v24;
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_1C45FA95C(uint64_t a1)
{
  v38 = sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8);
  v2 = *(*(v38 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v38);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v34 - v7;
  v9 = 0;
  v10 = 0;
  v39 = v11;
  v34 = *(v11 + 80);
  v12 = MEMORY[0x1E69E7CC0];
  v35 = (v34 + 32) & ~v34;
  v36 = a1;
  v13 = MEMORY[0x1E69E7CC0] + v35;
  v37 = *(a1 + 16);
  while (1)
  {
    if (v37 == v10)
    {
      v31 = v12[3];
      if (v31 >= 2)
      {
        v32 = v31 >> 1;
        v30 = __OFSUB__(v32, v9);
        v33 = v32 - v9;
        if (v30)
        {
          goto LABEL_35;
        }

        v12[2] = v33;
      }

      return v12;
    }

    v14 = *(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8);
    v15 = v36 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v10;
    v16 = *(v38 + 48);
    *v5 = v10;
    sub_1C4460050(v15, v5 + v16, &unk_1EC0B84E0, qword_1C4F0D2D0);
    result = sub_1C44CD9E0(v5, v8, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
    if (v9)
    {
      v17 = v12;
    }

    else
    {
      v18 = v12[3];
      if (((v18 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
      if (v19 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      sub_1C456902C(&qword_1EC0B8F30, &qword_1C4F0EA00);
      v21 = *(v39 + 72);
      v22 = v35;
      v17 = swift_allocObject();
      result = j__malloc_size(v17);
      if (!v21)
      {
        goto LABEL_33;
      }

      v23 = result - v22;
      if (result - v22 == 0x8000000000000000 && v21 == -1)
      {
        goto LABEL_34;
      }

      v25 = v23 / v21;
      v17[2] = v20;
      v17[3] = 2 * (v23 / v21);
      v26 = v17 + v22;
      v27 = v12[3];
      v28 = (v27 >> 1) * v21;
      if (v12[2])
      {
        if (v17 < v12 || v26 >= v12 + v35 + v28)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v17 != v12)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v12[2] = 0;
      }

      v13 = &v26[v28];
      v9 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - (v27 >> 1);
    }

    v30 = __OFSUB__(v9--, 1);
    if (v30)
    {
      break;
    }

    result = sub_1C44CD9E0(v8, v13, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
    v13 += *(v39 + 72);
    ++v10;
    v12 = v17;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}