void sub_1C2D964B4()
{
  if (!qword_1EC05B2A0)
  {
    type metadata accessor for MenuItem();
    v0 = sub_1C2E75DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05B2A0);
    }
  }
}

uint64_t sub_1C2D9650C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D96570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1C2D96648()
{
  sub_1C2E74594();
  *&xmmword_1EC0619F0 = 0x4044000000000000;
  *(&xmmword_1EC0619F0 + 1) = v0;
  result = 28.0;
  xmmword_1EC061A00 = xmmword_1C2E87C60;
  return result;
}

double sub_1C2D96680()
{
  sub_1C2E74554();
  *&xmmword_1EC061A10 = 0x4028000000000000;
  *(&xmmword_1EC061A10 + 1) = v0;
  result = 8.0;
  xmmword_1EC061A20 = xmmword_1C2E87C70;
  return result;
}

double sub_1C2D966B8()
{
  sub_1C2E74554();
  *&xmmword_1EC061A30 = 0x4024000000000000;
  *(&xmmword_1EC061A30 + 1) = v0;
  result = 8.0;
  xmmword_1EC061A40 = xmmword_1C2E87C70;
  return result;
}

void *sub_1C2D966F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EC05CFB8 != -1)
  {
    swift_once();
  }

  type metadata accessor for KeypadNumberElement();
  v12 = swift_allocObject();
  v17 = xmmword_1EC061A00;
  v19 = xmmword_1EC0619F0;
  sub_1C2E71A94();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = v19;
  *(v12 + 48) = v17;
  if (a4)
  {

    if (a6)
    {
      sub_1C2D9698C(a3, a4);
      if (qword_1EC05CFC8 != -1)
      {
        swift_once();
      }

      v18 = xmmword_1EC061A30;
      v20 = xmmword_1EC061A40;
      v13 = swift_allocObject();

      sub_1C2E71A94();
      *(v13 + 16) = a5;
      *(v13 + 24) = a6;
      *(v13 + 32) = v18;
      *(v13 + 48) = v20;
    }

    else
    {
      sub_1C2D9698C(a3, a4);
      if (qword_1EC05CFC0 != -1)
      {
        swift_once();
      }

      v13 = 0;
      v18 = xmmword_1EC061A10;
      v20 = xmmword_1EC061A20;
    }

    v15 = swift_allocObject();
    sub_1C2E71A94();

    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    *(v15 + 32) = v18;
    *(v15 + 48) = v20;
    type metadata accessor for KeypadNumber();
    v14 = swift_allocObject();
    v14[4] = 0;
    v14[3] = 0;
    v14[2] = v12;
    swift_beginAccess();
    v14[3] = v15;
    v14[4] = v13;
  }

  else
  {
    type metadata accessor for KeypadNumber();
    v14 = swift_allocObject();
    v14[4] = 0;
    v14[3] = 0;
    v14[2] = v12;
    swift_beginAccess();
    v14[4] = 0;
    v14[3] = 0;
  }

  return v14;
}

uint64_t sub_1C2D9698C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 BackgroundGradientView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;

  sub_1C2E758A4();
  sub_1C2E758C4();
  MEMORY[0x1C6925F80](v3);
  sub_1C2E73434();
  v4 = sub_1C2E74454();
  *a1 = v6;
  result = v7;
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  *(a1 + 40) = v4;
  return result;
}

__n128 sub_1C2D96A94@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;

  sub_1C2E758A4();
  sub_1C2E758C4();
  MEMORY[0x1C6925F80](v3);
  sub_1C2E73434();
  v4 = sub_1C2E74454();
  *a1 = v6;
  result = v7;
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  *(a1 + 40) = v4;
  return result;
}

unint64_t sub_1C2D96B3C()
{
  result = qword_1EC061A50;
  if (!qword_1EC061A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061A58);
    sub_1C2D96BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061A50);
  }

  return result;
}

unint64_t sub_1C2D96BC8()
{
  result = qword_1EC061A60;
  if (!qword_1EC061A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061A60);
  }

  return result;
}

uint64_t WaitOnHoldHoldingDetectedViewFactory.makeWithUIButtons(viewModel:_:_:)@<X0>(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  type metadata accessor for WaitOnHoldViewModel(0);
  a1;
  a2;

  sub_1C2E75174();
  *a3 = v7;
  a3[1] = v8;
  sub_1C2E75174();
  return sub_1C2E75174();
}

uint64_t WaitOnHoldHoldingDetectedView.init(viewModel:leadingButton:trailingButton:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v24 = a6;
  v25 = a7;
  v26 = a3;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  type metadata accessor for WaitOnHoldViewModel(0);
  sub_1C2E75174();
  v20 = v28;
  *a8 = v27;
  a8[1] = v20;
  (*(v16 + 16))(v19, a2, a4);
  v27 = a4;
  v28 = a5;
  v29 = v24;
  v30 = v25;
  type metadata accessor for WaitOnHoldHoldingDetectedView();
  sub_1C2D96F98(v19, a4);
  v21 = v26;
  (*(v12 + 16))(v14, v26, a5);
  sub_1C2D97088(v14, v22, a5);

  (*(v12 + 8))(v21, a5);
  return (*(v16 + 8))(a2, a4);
}

uint64_t sub_1C2D96EF4()
{
  type metadata accessor for WaitOnHoldViewModel(0);
  sub_1C2E75174();
  return v1;
}

uint64_t sub_1C2D96F48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061B00);
  sub_1C2E75184();
  return v1;
}

uint64_t sub_1C2D96F98(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_1C2E75174();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_1C2D97088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  sub_1C2E75174();
  return (*(v5 + 8))(a1, a3);
}

uint64_t WaitOnHoldHoldingDetectedView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F580);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC061A68);
  v3 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = v3;
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  v4 = sub_1C2E752E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = sub_1C2E73654();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  sub_1C2E73DD4();
  v23 = v20;
  v24 = v19;
  v25 = *(a1 + 32);
  v26 = v21;
  sub_1C2E752D4();
  sub_1C2E74474();
  WitnessTable = swift_getWitnessTable();
  sub_1C2E74D84();
  (*(v5 + 8))(v7, v4);
  v27 = WitnessTable;
  v28 = MEMORY[0x1E697E5D8];
  v16 = swift_getWitnessTable();
  sub_1C2C6EE48(v11, v8, v16);
  v17 = *(v9 + 8);
  v17(v11, v8);
  sub_1C2C6EE48(v14, v8, v16);
  return (v17)(v14, v8);
}

uint64_t sub_1C2D974E8@<X0>(void (*a1)(void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v99 = a1;
  v94 = a6;
  swift_getTupleTypeMetadata2();
  v84 = sub_1C2E75844();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1C2E75214();
  v88 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v74 - v11;
  v89 = v12;
  v93 = sub_1C2E73654();
  v90 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v91 = &v74 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v98 = &v74 - v17;
  v18 = sub_1C2E71664();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v97 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v74 - v22;
  v24 = sub_1C2E73D04();
  MEMORY[0x1EEE9AC00](v24 - 8);
  sub_1C2E73CF4();
  sub_1C2E73CE4();
  v83 = a2;
  v108 = a2;
  v109 = a3;
  v85 = a3;
  v86 = a4;
  v110 = a4;
  v111 = a5;
  v87 = a5;
  type metadata accessor for WaitOnHoldHoldingDetectedView();
  v25 = sub_1C2D96F48();
  v75 = *(v19 + 16);
  v75(v23, v25 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_title, v18);

  sub_1C2E73CA4();
  v26 = *(v19 + 8);
  v96 = v19 + 8;
  v95 = v26;
  v26(v23, v18);
  sub_1C2E73CE4();
  sub_1C2E73D24();
  v73 = 256;
  v72 = 0;
  v27 = sub_1C2E74884();
  v29 = v28;
  LOBYTE(a2) = v30;
  sub_1C2E74694();
  v79 = sub_1C2E747F4();
  v78 = v31;
  v76 = v32;
  v80 = v33;
  v34 = v98;

  sub_1C2C72340(v27, v29, a2 & 1);

  KeyPath = swift_getKeyPath();
  v35 = sub_1C2D96F48();
  sub_1C2D98888(v35 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_subtitle, v34);

  v36 = v18;
  if ((*(v19 + 48))(v34, 1, v18) == 1)
  {
    v37 = sub_1C2D988F8(v34);
    v95 = 0;
    v98 = 0;
    v96 = 0;
    v97 = 0;
  }

  else
  {
    v38 = *(v19 + 32);
    v39 = v97;
    v74 = v36;
    v38(v97, v34, v36);
    v40 = v39;
    v75(v23, v39, v36);
    v41 = sub_1C2E74894();
    v43 = v42;
    v45 = v44;
    LODWORD(v108) = sub_1C2E740F4();
    v46 = sub_1C2E74794();
    v48 = v47;
    v50 = v49;
    sub_1C2C72340(v41, v43, v45 & 1);

    sub_1C2E744F4();
    v51 = sub_1C2E747F4();
    v53 = v52;
    v55 = v54;
    v57 = v56;

    sub_1C2C72340(v46, v48, v50 & 1);

    v95(v40, v74);
    v95 = v51;
    v98 = v53;
    v96 = v55 & 1;
    sub_1C2C72330(v51, v53, v55 & 1);
    v97 = v57;
  }

  MEMORY[0x1EEE9AC00](v37);
  v58 = v85;
  *(&v74 - 6) = v83;
  *(&v74 - 5) = v58;
  v59 = v87;
  *(&v74 - 4) = v86;
  *(&v74 - 3) = v59;
  v72 = v99;
  sub_1C2E73C24();
  v60 = v82;
  sub_1C2E75204();
  sub_1C2E74464();
  v61 = v89;
  v62 = swift_getWitnessTable();
  v63 = v92;
  sub_1C2E74D84();
  (*(v88 + 8))(v60, v61);
  v115[3] = v62;
  v115[4] = MEMORY[0x1E697E5D8];
  v64 = v93;
  v89 = swift_getWitnessTable();
  v65 = v91;
  sub_1C2C6EE48(v63, v64, v89);
  v66 = v90;
  v99 = *(v90 + 8);
  v99(v63, v64);
  v67 = v79;
  v68 = v78;
  v108 = v79;
  v109 = v78;
  v69 = v76 & 1;
  LOBYTE(v110) = v76 & 1;
  v111 = v80;
  v112 = KeyPath;
  v113 = 1;
  v114 = 0;
  v104 = v95;
  v105 = v98;
  v106 = v96;
  v107 = v97;
  v115[0] = &v108;
  v115[1] = &v104;
  (*(v66 + 16))(v63, v65, v64);
  v115[2] = v63;
  sub_1C2C72330(v67, v68, v69);

  v103[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F580);
  v103[1] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC061A68);
  v103[2] = v64;
  v100 = sub_1C2C74F38();
  v101 = sub_1C2D989F4();
  v102 = v89;
  sub_1C2C6EC40(v115, 3uLL, v103);
  sub_1C2C7F6D4(v95, v98, v96, v97);
  sub_1C2C72340(v67, v68, v69);

  v70 = v99;
  v99(v65, v64);
  v70(v63, v64);
  sub_1C2C7F6D4(v104, v105, v106, v107);
  sub_1C2C72340(v108, v109, v110);
}

uint64_t sub_1C2D97F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a5;
  v42 = a6;
  v41 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v34 - v12;
  v36 = *(v13 - 8);
  v14 = v36;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v43 = &v34 - v19;
  v47 = v20;
  v48 = v21;
  v49 = v22;
  v50 = v23;
  v38 = v22;
  type metadata accessor for WaitOnHoldHoldingDetectedView();
  sub_1C2E751B4();
  sub_1C2E75184();
  v35 = a2;
  sub_1C2C6EE48(v17, a2, a4);
  v39 = *(v14 + 8);
  v39(v17, a2);
  sub_1C2E751B4();
  v24 = v10;
  sub_1C2E75184();
  v25 = v40;
  v26 = v10;
  v27 = a3;
  v28 = v37;
  sub_1C2C6EE48(v26, a3, v37);
  v29 = v41;
  v30 = *(v41 + 8);
  v30(v24, v27);
  v31 = v35;
  (*(v36 + 16))(v17, v43, v35);
  v47 = v17;
  (*(v29 + 16))(v24, v25, v27);
  v48 = v24;
  v46[0] = v31;
  v46[1] = v27;
  v44 = v38;
  v45 = v28;
  sub_1C2C6EC40(&v47, 2uLL, v46);
  v30(v25, v27);
  v32 = v39;
  v39(v43, v31);
  v30(v24, v27);
  return v32(v17, v31);
}

void sub_1C2D98294()
{
  sub_1C2D98830();
  if (v0 <= 0x3F)
  {
    sub_1C2E751B4();
    if (v1 <= 0x3F)
    {
      sub_1C2E751B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C2D98338(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v5)
  {
    v9 = *(v4 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v4 + 80) & 0xF8;
  v12 = v11 | 7;
  v13 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = *(v7 + 80) & 0xF8 | 7;
  if (v10 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v13 + v14 + ((v11 + 23) & ~v12)) & ~v14) + 8;
  v16 = a2 - v10;
  v17 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = v16 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v15);
      if (!v21)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v21 = *(a1 + v15);
      if (!v21)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v20 || (v21 = *(a1 + v15)) == 0)
  {
LABEL_30:
    if ((v9 & 0x80000000) != 0)
    {
      v26 = (a1 + v12 + 16) & ~v12;
      if (v5 == v10)
      {
        return (*(v4 + 48))(v26);
      }

      else
      {
        return (*(v7 + 48))((v26 + v13 + v14) & ~v14, v8, v6);
      }
    }

    else
    {
      v25 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }
  }

  v23 = v21 - 1;
  if (v17)
  {
    v23 = 0;
    v24 = *a1;
  }

  else
  {
    v24 = 0;
  }

  return v10 + (v24 | v23) + 1;
}

void sub_1C2D9853C(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v5 + 80);
  if (*(v9 + 84) <= 0x7FFFFFFEu)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v6 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = v10 & 0xF8 | 7;
  v15 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v18 = ((v15 + v16 + (((v10 & 0xF8) + 23) & ~v14)) & ~v16) + v17;
  if (v18)
  {
    v19 = 2;
  }

  else
  {
    v19 = a3 - v13 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v13 < a3)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (a2 > v13)
  {
    if (v18)
    {
      v23 = 1;
    }

    else
    {
      v23 = a2 - v13;
    }

    if (v18)
    {
      v24 = ~v13 + a2;
      v25 = a1;
      bzero(a1, v18);
      a1 = v25;
      *v25 = v24;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        *(a1 + v18) = v23;
      }

      else
      {
        *(a1 + v18) = v23;
      }
    }

    else if (v22)
    {
      *(a1 + v18) = v23;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *(a1 + v18) = 0;
  }

  else if (v22)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if ((v12 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      a1[1] = 0;
    }

    else
    {
      *a1 = a2 - 1;
    }

    return;
  }

  v26 = ((a1 + v14 + 16) & ~v14);
  if (v6 == v13)
  {
    if (v7 < a2)
    {
      if (!v15)
      {
        return;
      }

      v27 = ~v7 + a2;
      v28 = v26;
      v29 = v15;
LABEL_59:
      bzero(v26, v29);
      *v28 = v27;
      return;
    }

    v30 = *(v5 + 56);

    v30(v26);
  }

  else
  {
    v26 = ((v26 + v15 + v16) & ~v16);
    if (v11 < a2)
    {
      if (!v17)
      {
        return;
      }

      v27 = ~v11 + a2;
      v28 = v26;
      v29 = v17;
      goto LABEL_59;
    }

    v31 = *(v9 + 56);

    v31(v26);
  }
}

void sub_1C2D98830()
{
  if (!qword_1EC061AF0)
  {
    type metadata accessor for WaitOnHoldViewModel(255);
    v0 = sub_1C2E751B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC061AF0);
    }
  }
}

uint64_t sub_1C2D98888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D988F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C2D98990()
{
  result = qword_1EDDCDA10;
  if (!qword_1EDDCDA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCDA10);
  }

  return result;
}

unint64_t sub_1C2D989F4()
{
  result = qword_1EC061AF8;
  if (!qword_1EC061AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC061A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061AF8);
  }

  return result;
}

void sub_1C2D98AB4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16CommunicationsUI30AudioMiddleStackBackgroundView_effect;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1C2D98B14()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI30AudioMiddleStackBackgroundView_effect;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

id AudioMiddleStackBackgroundView.init(effect:usesGlass:)(void *a1, char a2)
{
  v5 = sub_1C2E72D04();
  MEMORY[0x1EEE9AC00](v5 - 8);
  *&v2[OBJC_IVAR____TtC16CommunicationsUI30AudioMiddleStackBackgroundView_effect] = a1;
  v2[OBJC_IVAR____TtC16CommunicationsUI30AudioMiddleStackBackgroundView_usesGlass] = a2;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for AudioMiddleStackBackgroundView();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v29, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v7 _setContinuousCornerRadius_];
  [v7 setClipsToBounds_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor_];

  if (a2)
  {
    v9 = v7;
    sub_1C2E72CF4();
    v28[3] = sub_1C2E72D14();
    v28[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v28);
    sub_1C2E72D24();
    sub_1C2E761A4();
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = v7;
    [v11 addSubview_];
    v12 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C2E7A700;
    v14 = [v10 topAnchor];
    v15 = [v11 topAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    *(v13 + 32) = v16;
    v17 = [v10 leadingAnchor];
    v18 = [v11 leadingAnchor];

    v19 = [v17 constraintEqualToAnchor_];
    *(v13 + 40) = v19;
    v20 = [v10 trailingAnchor];
    v21 = [v11 trailingAnchor];

    v22 = [v20 constraintEqualToAnchor_];
    *(v13 + 48) = v22;
    v23 = [v10 bottomAnchor];

    v24 = [v11 bottomAnchor];
    v25 = [v23 constraintEqualToAnchor_];

    *(v13 + 56) = v25;
    sub_1C2CBF630();
    v26 = sub_1C2E75D64();

    [v12 activateConstraints_];
  }

  return v7;
}

id AudioMiddleStackBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AudioMiddleStackBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioMiddleStackBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static CUAvatarView.avatarView(for:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (sub_1C2E764E4())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:

    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C2E7A720;
  *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
LABEL_6:

  return sub_1C2E71504();
}

uint64_t CUPosterOrAvatarView.init(contacts:posterAvatarStyle:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v5;
  v7[4] = v6;
  type metadata accessor for CUPosterOrAvatarView(0);
  _s5ModelCMa(0);
  return sub_1C2E73074();
}

_BYTE *PosterOrAvatarViewStyle.init(legibilityAdjustment:fallbackBackgroundColors:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t EnvironmentValues.posterAvatarStyle.getter()
{
  sub_1C2D99D88();

  return sub_1C2E73BB4();
}

uint64_t sub_1C2D99324@<X0>(uint64_t a1@<X8>)
{
  sub_1C2D99D88();
  result = sub_1C2E73BB4();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1C2D9937C()
{
  sub_1C2D99D88();

  return sub_1C2E73BC4();
}

uint64_t sub_1C2D9942C()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1C2D994E0()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for PosterRenderingViewController();
  objc_msgSendSuper2(&v18, sel_viewDidLayoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC16CommunicationsUI29PosterRenderingViewController_renderSize];
  v1 = *&v0[OBJC_IVAR____TtC16CommunicationsUI29PosterRenderingViewController_renderSize + 8];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = v3;
  [v3 frame];
  v6 = v5;
  v8 = v7;

  v9 = v6 == 0.0 && v2 == 0.0;
  v10 = v6 / v2;
  if (v9)
  {
    v10 = -INFINITY;
  }

  v11 = v8 == 0.0 && v1 == 0.0;
  v12 = v8 / v1;
  if (v11)
  {
    v12 = -INFINITY;
  }

  if (v10 > v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  v14 = *&v0[OBJC_IVAR____TtC16CommunicationsUI29PosterRenderingViewController_viewController];
  if (v14)
  {
    v15 = [v14 view];
    if (v15)
    {
      v16 = v15;
      CGAffineTransformMakeScale(&v17, v13, v13);
      [v16 setTransform_];

      return;
    }

LABEL_20:
    __break(1u);
  }
}

uint64_t sub_1C2D996F8()
{
  v0 = sub_1C2E72B44();
  __swift_allocate_value_buffer(v0, qword_1EC075A48);
  __swift_project_value_buffer(v0, qword_1EC075A48);
  return sub_1C2E72B34();
}

uint64_t sub_1C2D99778()
{
  v0 = sub_1C2E72B44();
  __swift_allocate_value_buffer(v0, qword_1EC075A18);
  __swift_project_value_buffer(v0, qword_1EC075A18);
  return sub_1C2E72B34();
}

uint64_t PosterOrAvatarViewStyle.LegibilityAdjustmentMode.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

uint64_t PosterOrAvatarViewStyle.fallbackBackgroundColors.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t static PosterOrAvatarViewStyle.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && (v2 = *(a1 + 1), v3 = *(a2 + 1), v4 = *(v2 + 16), v4 == *(v3 + 16)))
  {
    if (!v4 || v2 == v3)
    {
      v7 = 1;
    }

    else
    {
      v5 = v2 + 32;
      v6 = v3 + 32;
      do
      {
        v5 += 8;
        v6 += 8;

        v7 = sub_1C2E74ED4();

        if ((v7 & 1) == 0)
        {
          break;
        }

        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1C2D999D8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_1C2CF6E00(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2D999FC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E800);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C2E7A930;
  v3 = [objc_opt_self() currentDevice];
  [v3 userInterfaceIdiom];

  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v7[4] = sub_1C2CF0D4C;
  v7[5] = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C2CF0DD4;
  v7[3] = &block_descriptor_12;
  v5 = _Block_copy(v7);
  [v4 initWithDynamicProvider_];
  _Block_release(v5);

  result = sub_1C2E74E94();
  *(v2 + 32) = result;
  *a1 = 0;
  *(a1 + 8) = v2;
  return result;
}

uint64_t sub_1C2D99B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C2D9BC68();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.posterAvatarStyle.modify(uint64_t *a1))(_BYTE **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1C2D99D88();
  sub_1C2E73BB4();
  return sub_1C2D99C38;
}

void sub_1C2D99C38(_BYTE **a1, char a2)
{
  v2 = *a1;
  (*a1)[16] = **a1;
  v2[3] = v2[1];
  if (a2)
  {

    sub_1C2E73BC4();
  }

  else
  {
    sub_1C2E73BC4();
  }

  free(v2);
}

uint64_t sub_1C2D99CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9[0] = a2;
  v9[1] = a3;
  v6 = qword_1EC05CCA0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC075A60;
  _s5ModelCMa(0);
  swift_allocObject();

  result = sub_1C2E3BADC(a1, v9, v7);
  *a4 = result;
  return result;
}

unint64_t sub_1C2D99D88()
{
  result = qword_1EC05CB68;
  if (!qword_1EC05CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB68);
  }

  return result;
}

uint64_t sub_1C2D99DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061B58);
  MEMORY[0x1EEE9AC00](v20);
  v4 = (&v19 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061CA8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v19 - v6);
  v8 = type metadata accessor for CUPosterOrAvatarView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061BF0);
  sub_1C2E73084();
  v11 = v22;
  swift_getKeyPath();
  v22 = v11;
  sub_1C2C7A6AC(&qword_1EC05CE90, _s5ModelCMa);
  sub_1C2E71A64();

  v13 = *(v11 + 32);
  v12 = *(v11 + 40);
  sub_1C2D9E5A0(v13, v12);

  if ((v13 >> 62) > 1)
  {
    sub_1C2D9E0D4(a1, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CUPosterOrAvatarView);
    v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v18 = swift_allocObject();
    sub_1C2D9E13C(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CUPosterOrAvatarView);
    *v7 = sub_1C2D9E71C;
    v7[1] = v18;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061B48);
    sub_1C2C94F38(&qword_1EC05CBD0, &unk_1EC061B48);
    sub_1C2C94F38(&qword_1EC05CAD0, &unk_1EC061B58);
    return sub_1C2E73F44();
  }

  else
  {

    *v4 = sub_1C2E75744();
    v4[1] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061CB8);
    sub_1C2D9B020(a1, (v4 + *(v15 + 44)));

    sub_1C2C736A4(v4, v7, &unk_1EC061B58);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061B48);
    sub_1C2C94F38(&qword_1EC05CBD0, &unk_1EC061B48);
    sub_1C2C94F38(&qword_1EC05CAD0, &unk_1EC061B58);
    sub_1C2E73F44();
    return sub_1C2C73644(v4, &unk_1EC061B58);
  }
}

uint64_t sub_1C2D9A22C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C2D9A23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1C2E75744();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061CC0);
  return sub_1C2D9A29C(a2, a1, (a3 + *(v7 + 44)));
}

uint64_t sub_1C2D9A29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v95 = a2;
  v107 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061CC8);
  v103 = *(v4 - 8);
  v104 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v87 = &v84 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061CD0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v106 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v84 - v9;
  v92 = sub_1C2E71514();
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061CD8);
  MEMORY[0x1EEE9AC00](v88);
  v94 = &v84 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061CE0);
  v12 = MEMORY[0x1EEE9AC00](v93);
  v102 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v91 = &v84 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v108 = &v84 - v16;
  v86 = sub_1C2E73BA4();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for CUPosterOrAvatarView(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061BF0);
  sub_1C2E73084();
  v19 = v111;
  swift_getKeyPath();
  *&v111 = v19;
  sub_1C2C7A6AC(&qword_1EC05CE90, _s5ModelCMa);
  sub_1C2E71A64();

  v20 = *(v19 + 16);

  v98 = v18;
  sub_1C2E73084();
  v21 = v111;
  swift_getKeyPath();
  *&v111 = v21;
  sub_1C2E71A64();

  v22 = *(v21 + 64);
  v23 = *(v21 + 72);

  if (v23)
  {
    LOBYTE(v111) = v22;
    *(&v111 + 1) = v23;
    v24 = a1;
  }

  else
  {
    v25 = *a1;
    v23 = *(a1 + 8);
    v24 = a1;
    if (*(a1 + 16) == 1)
    {
      LOBYTE(v111) = *a1;
      *(&v111 + 1) = v23;
    }

    else
    {

      sub_1C2E75FD4();
      v26 = sub_1C2E74404();
      sub_1C2E72B14();

      v27 = v84;
      sub_1C2E73B94();
      swift_getAtKeyPath();
      sub_1C2D9A22C(v25, v23, 0);
      (*(v85 + 8))(v27, v86);
      v23 = *(&v111 + 1);
    }
  }

  v28 = sub_1C2D32960(v20, v23);
  v100 = v29;
  v101 = v28;
  v99 = v30;
  v97 = v31;
  sub_1C2E73084();
  v32 = v111;
  swift_getKeyPath();
  *&v111 = v32;
  sub_1C2E71A64();

  v96 = *(v32 + 24);

  sub_1C2E73084();
  v33 = v111;
  swift_getKeyPath();
  *&v111 = v33;
  sub_1C2E71A64();

  v34 = *(v33 + 16);

  if (!(v34 >> 62))
  {
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!sub_1C2E764E4())
  {
LABEL_8:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1C2E7A720;
    *(v35 + 32) = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  }

LABEL_9:
  v36 = v89;
  sub_1C2E71504();
  KeyPath = swift_getKeyPath();
  *&v111 = sub_1C2E74F44();
  v38 = sub_1C2E73284();
  v39 = v94;
  (*(v90 + 32))(v94, v36, v92);
  v40 = (v39 + *(v88 + 36));
  *v40 = KeyPath;
  v40[1] = v38;
  sub_1C2E732C4();
  sub_1C2E732C4();
  sub_1C2E75744();
  sub_1C2E73274();
  v41 = v91;
  sub_1C2C71D5C(v39, v91, &qword_1EC061CD8);
  v42 = (v41 + *(v93 + 36));
  v43 = v112;
  *v42 = v111;
  v42[1] = v43;
  v42[2] = v113;
  sub_1C2C71D5C(v41, v108, &qword_1EC061CE0);
  sub_1C2E73084();
  v44 = v109;
  swift_getKeyPath();
  v109 = v44;
  sub_1C2E71A64();

  v46 = *(v44 + 64);
  v45 = *(v44 + 72);

  if (v45)
  {
    v47 = v46;
    LOBYTE(v109) = v46;
    v110 = v45;
  }

  else
  {
    v49 = *v24;
    v48 = *(v24 + 8);
    if (*(v24 + 16) == 1)
    {
      v47 = *v24;
      LOBYTE(v109) = *v24;
      v110 = v48;
    }

    else
    {

      sub_1C2E75FD4();
      v50 = sub_1C2E74404();
      sub_1C2E72B14();

      v51 = v84;
      sub_1C2E73B94();
      swift_getAtKeyPath();
      sub_1C2D9A22C(v49, v48, 0);
      (*(v85 + 8))(v51, v86);
      v47 = v109;
    }
  }

  if (v47 == 2)
  {
    sub_1C2E73084();
    v52 = v109;
    swift_getKeyPath();
    v109 = v52;
    sub_1C2E71A64();

    v53 = *(v52 + 16);

    sub_1C2E73084();
    v54 = v109;
    swift_getKeyPath();
    v109 = v54;
    sub_1C2E71A64();

    v56 = *(v54 + 64);
    v55 = *(v54 + 72);

    if (v55)
    {
      LOBYTE(v109) = v56;
      v110 = v55;
    }

    else
    {
      v60 = *v24;
      v55 = *(v24 + 8);
      if (*(v24 + 16) == 1)
      {
        LOBYTE(v109) = *v24;
        v110 = v55;
      }

      else
      {

        sub_1C2E75FD4();
        v61 = sub_1C2E74404();
        sub_1C2E72B14();

        v62 = v84;
        sub_1C2E73B94();
        swift_getAtKeyPath();
        sub_1C2D9A22C(v60, v55, 0);
        (*(v85 + 8))(v62, v86);
        v55 = v110;
      }
    }

    v63 = sub_1C2D32960(v53, v55);
    v65 = v64;
    v67 = v66;
    v69 = v68;
    sub_1C2E73084();
    v70 = v109;
    swift_getKeyPath();
    v109 = v70;
    sub_1C2E71A64();

    v71 = *(v70 + 24);

    v59 = v104;
    v72 = v87;
    v73 = &v87[*(v104 + 36)];
    sub_1C2CA4CB0();
    sub_1C2E756C4();
    v74 = sub_1C2E74454();
    v73[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E848) + 36)] = v74;
    *v72 = v63;
    *(v72 + 1) = v65;
    *(v72 + 2) = v67;
    *(v72 + 3) = v69;
    v72[32] = v71;
    *(v72 + 5) = 0x3FD3333333333333;
    v75 = v72;
    v58 = v105;
    sub_1C2C71D5C(v75, v105, &qword_1EC061CC8);
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v59 = v104;
    v58 = v105;
  }

  (*(v103 + 56))(v58, v57, 1, v59);
  v76 = v108;
  v77 = v102;
  sub_1C2C736A4(v108, v102, &qword_1EC061CE0);
  v78 = v106;
  sub_1C2C736A4(v58, v106, &qword_1EC061CD0);
  v79 = v107;
  v80 = v100;
  *v107 = v101;
  v79[1] = v80;
  v81 = v97;
  v79[2] = v99;
  v79[3] = v81;
  *(v79 + 32) = v96;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061CE8);
  sub_1C2C736A4(v77, v79 + *(v82 + 48), &qword_1EC061CE0);
  sub_1C2C736A4(v78, v79 + *(v82 + 64), &qword_1EC061CD0);

  sub_1C2C73644(v58, &qword_1EC061CD0);
  sub_1C2C73644(v76, &qword_1EC061CE0);
  sub_1C2C73644(v78, &qword_1EC061CD0);
  sub_1C2C73644(v77, &qword_1EC061CE0);
}

uint64_t sub_1C2D9B020@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061CC8);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v53 - v5;
  v7 = sub_1C2E73BA4();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061CD0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v53 - v12;
  v61 = sub_1C2E74F44();
  v13 = sub_1C2E75744();
  v15 = v14;
  sub_1C2D9B7DC(&v71);
  LOBYTE(v65[2]) = v73;
  v65[0] = v71;
  v65[1] = v72;
  v74[0] = v71;
  v74[1] = v72;
  *&v75 = *&v65[2];
  *(&v75 + 1) = v13;
  v76 = v15;
  v84 = v15;
  v81 = v71;
  v82 = v72;
  v83 = v75;
  v77[0] = v71;
  v77[1] = v72;
  v78 = *&v65[2];
  v79 = v13;
  v80 = v15;
  sub_1C2C736A4(v74, &v66, &qword_1EC061CF0);
  sub_1C2C73644(v77, &qword_1EC061CF0);
  v16 = *(type metadata accessor for CUPosterOrAvatarView(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061BF0);
  v59 = v16;
  sub_1C2E73084();
  v17 = v66;
  swift_getKeyPath();
  v66 = v17;
  sub_1C2C7A6AC(&qword_1EC05CE90, _s5ModelCMa);
  sub_1C2E71A64();

  v19 = *(v17 + 64);
  v18 = *(v17 + 72);

  if (v18)
  {
    v20 = v19;
    LOBYTE(v66) = v19;
    *&v67 = v18;
  }

  else
  {
    v22 = *a1;
    v21 = *(a1 + 8);
    if (*(a1 + 16) == 1)
    {
      v20 = *a1;
      LOBYTE(v66) = *a1;
      *&v67 = v21;
    }

    else
    {

      sub_1C2E75FD4();
      v23 = sub_1C2E74404();
      sub_1C2E72B14();

      v24 = v56;
      sub_1C2E73B94();
      swift_getAtKeyPath();
      sub_1C2D9A22C(v22, v21, 0);
      (*(v57 + 8))(v24, v58);
      v20 = v66;
    }
  }

  if (v20 == 2)
  {
    v54 = v6;
    sub_1C2E73084();
    v25 = v66;
    swift_getKeyPath();
    v66 = v25;
    sub_1C2E71A64();

    v53 = *(v25 + 16);

    sub_1C2E73084();
    v26 = v66;
    swift_getKeyPath();
    v66 = v26;
    sub_1C2E71A64();

    v28 = *(v26 + 64);
    v27 = *(v26 + 72);

    v55 = a2;
    if (v27)
    {
      LOBYTE(v66) = v28;
      *&v67 = v27;
      v29 = v54;
    }

    else
    {
      v33 = *a1;
      v27 = *(a1 + 8);
      v29 = v54;
      if (*(a1 + 16) == 1)
      {
        LOBYTE(v66) = *a1;
        *&v67 = v27;
      }

      else
      {

        sub_1C2E75FD4();
        v34 = sub_1C2E74404();
        sub_1C2E72B14();

        v35 = v56;
        sub_1C2E73B94();
        swift_getAtKeyPath();
        sub_1C2D9A22C(v33, v27, 0);
        (*(v57 + 8))(v35, v58);
        v27 = v67;
      }
    }

    v36 = sub_1C2D32960(v53, v27);
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_1C2E73084();
    v43 = v66;
    swift_getKeyPath();
    v66 = v43;
    sub_1C2E71A64();

    v44 = *(v43 + 24);

    v31 = v63;
    v45 = v29 + *(v63 + 36);
    sub_1C2CA4CB0();
    sub_1C2E756C4();
    v46 = sub_1C2E74454();
    *(v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E848) + 36)) = v46;
    *v29 = v36;
    *(v29 + 8) = v38;
    *(v29 + 16) = v40;
    *(v29 + 24) = v42;
    *(v29 + 32) = v44;
    *(v29 + 40) = 0x3FD3333333333333;
    v32 = v60;
    sub_1C2C71D5C(v29, v60, &qword_1EC061CC8);
    v30 = 0;
    a2 = v55;
  }

  else
  {
    v30 = 1;
    v31 = v63;
    v32 = v60;
  }

  (*(v62 + 56))(v32, v30, 1, v31);
  v47 = v64;
  sub_1C2C736A4(v32, v64, &qword_1EC061CD0);
  v48 = v61;
  *&v65[0] = v61;
  *(v65 + 8) = v81;
  *(&v65[1] + 8) = v82;
  *(&v65[2] + 8) = v83;
  *(&v65[3] + 1) = v84;
  v49 = v65[1];
  *a2 = v65[0];
  a2[1] = v49;
  v50 = v65[3];
  a2[2] = v65[2];
  a2[3] = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061CF8);
  sub_1C2C736A4(v47, a2 + *(v51 + 48), &qword_1EC061CD0);
  sub_1C2C736A4(v65, &v66, &unk_1EC061D00);
  sub_1C2C73644(v32, &qword_1EC061CD0);
  sub_1C2C73644(v47, &qword_1EC061CD0);
  v66 = v48;
  v67 = v81;
  v68 = v82;
  v69 = v83;
  v70 = v84;
  return sub_1C2C73644(&v66, &unk_1EC061D00);
}

void sub_1C2D9B7DC(uint64_t a1@<X8>)
{
  v2 = sub_1C2E75054();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
  v6 = 0.0;
  v7 = sub_1C2E750C4();
  (*(v3 + 8))(v5, v2);
  type metadata accessor for CUPosterOrAvatarView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061BF0);
  sub_1C2E73084();
  v8 = v12;
  swift_getKeyPath();
  v12 = v8;
  sub_1C2C7A6AC(&qword_1EC05CE90, _s5ModelCMa);
  sub_1C2E71A64();

  v10 = *(v8 + 32);
  v9 = *(v8 + 40);
  sub_1C2D9E5A0(v10, v9);

  if (v10 >> 62)
  {
    sub_1C2D9E79C(v10, v9);
  }

  else
  {

    v6 = 30.0;
  }

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = 1;
  *(a1 + 19) = 0;
  *(a1 + 24) = v6;
  *(a1 + 32) = 1;
}

uint64_t sub_1C2D9B9F4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  type metadata accessor for CUPosterOrAvatarView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061BF0);
  sub_1C2E73084();
  v5[0] = v2;
  v5[1] = v3;

  sub_1C2E3B100(v5);
}

uint64_t sub_1C2D9BA80(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for CUPosterOrAvatarView(0);

  return sub_1C2D9B9F4(a1, a2);
}

unint64_t sub_1C2D9BB00()
{
  result = qword_1EC05CAE8;
  if (!qword_1EC05CAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061B20);
    sub_1C2D9BB84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CAE8);
  }

  return result;
}

unint64_t sub_1C2D9BB84()
{
  result = qword_1EC05CB50;
  if (!qword_1EC05CB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC061B38);
    sub_1C2C94F38(&qword_1EC05CBD0, &unk_1EC061B48);
    sub_1C2C94F38(&qword_1EC05CAD0, &unk_1EC061B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB50);
  }

  return result;
}

unint64_t sub_1C2D9BC68()
{
  result = qword_1EC05CE40;
  if (!qword_1EC05CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CE40);
  }

  return result;
}

unint64_t sub_1C2D9BCC0()
{
  result = qword_1EC061B68;
  if (!qword_1EC061B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061B68);
  }

  return result;
}

void sub_1C2D9BD80()
{
  sub_1C2D9BE34();
  if (v0 <= 0x3F)
  {
    sub_1C2D9DB68(319, &unk_1EC061BF8, _s5ModelCMa, MEMORY[0x1E697DA80]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C2D9BE34()
{
  if (!qword_1EC05CC10)
  {
    v0 = sub_1C2E730F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05CC10);
    }
  }
}

id sub_1C2D9BE84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061D40);
  sub_1C2E75184();
  v0 = [v4 hasBeenPersisted];

  sub_1C2E75184();
  if (v0)
  {
    v1 = &selRef_viewControllerForContact_;
  }

  else
  {
    v1 = &selRef_viewControllerForUnknownContact_;
  }

  v2 = [objc_opt_self() *v1];

  [v2 setAllowsActions_];
  [v2 setActions_];
  return v2;
}

uint64_t sub_1C2D9BFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D9EAD0();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1C2D9C024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D9EAD0();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1C2D9C088()
{
  sub_1C2D9EAD0();
  sub_1C2E74344();
  __break(1u);
}

uint64_t sub_1C2D9C0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D9EB38();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1C2D9C114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D9EB38();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1C2D9C178()
{
  sub_1C2D9EB38();
  sub_1C2E74344();
  __break(1u);
}

uint64_t sub_1C2D9C1A0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6)
{
  v32 = a6;
  v10 = sub_1C2E735B4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C2E735E4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061CA0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C2E87ED0;
  sub_1C2E74F44();
  *(v18 + 32) = sub_1C2E75534();
  *(v18 + 40) = v19;
  _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
  sub_1C2E74F74();

  *(v18 + 48) = sub_1C2E75534();
  *(v18 + 56) = v20;
  _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
  sub_1C2E74F74();

  *(v18 + 64) = sub_1C2E75534();
  *(v18 + 72) = v21;
  _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
  sub_1C2E74F74();

  *(v18 + 80) = sub_1C2E75534();
  *(v18 + 88) = v22;
  _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
  sub_1C2E74F74();

  *(v18 + 96) = sub_1C2E75534();
  *(v18 + 104) = v23;
  _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
  sub_1C2E74F74();

  *(v18 + 112) = sub_1C2E75534();
  *(v18 + 120) = v24;
  _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
  sub_1C2E74F74();

  *(v18 + 128) = sub_1C2E75534();
  *(v18 + 136) = v25;
  _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
  sub_1C2E74F74();

  *(v18 + 144) = sub_1C2E75534();
  *(v18 + 152) = v26;
  _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
  sub_1C2E74F74();

  *(v18 + 160) = sub_1C2E75534();
  *(v18 + 168) = v27;
  _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
  sub_1C2E74F74();

  *(v18 + 176) = sub_1C2E75534();
  *(v18 + 184) = v28;
  sub_1C2E75544();
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  CGRectGetMaxY(v33);
  sub_1C2E735C4();

  sub_1C2E735A4();
  sub_1C2E735F4();
  (*(v11 + 8))(v13, v10);
  v29 = v32;
  sub_1C2E75034();
  sub_1C2E73574();

  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1C2D9C610@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for CUVideoMessagingURLImageView.VideoPlayerView(0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_1C2E71784();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061C78);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v33 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v37 = &v30 - v15;
  v16 = type metadata accessor for CUVideoMessagingURLImageView(0);
  v17 = *(v16 + 24);
  v38 = a1;
  v42 = *(a1 + v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061C70);
  sub_1C2E75184();
  v18 = v39;
  if (v39)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v39 = sub_1C2D9E588;
    v40 = v19;
    v41 = 0;
  }

  else
  {
    v39 = sub_1C2E74F14();
    v40 = 0;
    v41 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C80);
  sub_1C2C94F38(&qword_1EC05B9F8, &unk_1EC061C80);
  sub_1C2E73F44();
  v20 = v42;
  v21 = v43;
  sub_1C2C736A4(v38 + *(v16 + 20), v8, &unk_1EC061C20);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C2D1CA18();
    sub_1C2C73644(v8, &unk_1EC061C20);
    v22 = 1;
    v23 = v35;
  }

  else
  {
    v24 = v32;
    (*(v10 + 32))(v32, v8, v9);
    (*(v10 + 16))(v5, v24, v9);
    v31 = v9;
    v23 = v35;
    sub_1C2D1CA18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061C98);
    sub_1C2E751A4();
    (*(v10 + 8))(v24, v31);
    sub_1C2D9E13C(v5, v37, type metadata accessor for CUVideoMessagingURLImageView.VideoPlayerView);
    v22 = 0;
  }

  v25 = v37;
  (*(v34 + 56))(v37, v22, 1, v23);
  v26 = v33;
  sub_1C2C736A4(v25, v33, &qword_1EC061C78);
  v27 = v36;
  *v36 = v20;
  *(v27 + 16) = v21;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061C90);
  sub_1C2C736A4(v26, v27 + *(v28 + 48), &qword_1EC061C78);
  sub_1C2D1CA18();
  sub_1C2D7BD04();
  sub_1C2C73644(v25, &qword_1EC061C78);
  sub_1C2C73644(v26, &qword_1EC061C78);
  return sub_1C2D7BD04();
}

double sub_1C2D9CB24@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1C2E75054();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C2E73C34();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [a1 size];
  v14 = v13;
  v16 = v15;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v14;
  v17[5] = v16;
  v17[6] = a1;
  (*(v9 + 104))(v12, *MEMORY[0x1E697F3A0], v8);
  v18 = a1;
  sub_1C2E75094();
  (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
  v19 = sub_1C2E750C4();

  (*(v5 + 8))(v7, v4);
  sub_1C2E732C4();
  sub_1C2E732C4();
  sub_1C2E75744();
  sub_1C2E73274();
  *&v23[38] = v26;
  *&v23[22] = v25;
  *&v23[6] = v24;
  v20 = *&v23[16];
  *(a2 + 18) = *v23;
  *a2 = v19;
  *(a2 + 8) = 0;
  *(a2 + 16) = 257;
  *(a2 + 34) = v20;
  result = *&v23[32];
  *(a2 + 50) = *&v23[32];
  *(a2 + 64) = *&v23[46];
  return result;
}

void sub_1C2D9CDEC()
{
  v1 = type metadata accessor for CUVideoMessagingURLImageView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = [objc_opt_self() sharedSession];
  v5 = sub_1C2E71734();
  sub_1C2D9E0D4(v0, aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CUVideoMessagingURLImageView);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_1C2D9E13C(aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CUVideoMessagingURLImageView);
  aBlock[4] = sub_1C2D9E388;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2D9D4C4;
  aBlock[3] = &block_descriptor_69;
  v8 = _Block_copy(aBlock);

  v9 = [v4 dataTaskWithURL:v5 completionHandler:v8];
  _Block_release(v8);

  [v9 resume];
}

void sub_1C2D9CFD4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v7 = sub_1C2E759D4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C2E75A04();
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CUVideoMessagingURLImageView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  if (a2 >> 60 != 15)
  {
    v27 = v11;
    v28 = v8;
    v29 = v7;
    v17 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1C2D9E488(a1, a2);
    sub_1C2D9E488(a1, a2);
    v18 = sub_1C2E71794();
    v19 = [v17 initWithData_];

    sub_1C2D9E420(a1, a2);
    if (v19)
    {
      sub_1C2C9DC60();
      v26 = sub_1C2E76084();
      sub_1C2D9E0D4(v30, &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CUVideoMessagingURLImageView);
      v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
      v21 = swift_allocObject();
      sub_1C2D9E13C(&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for CUVideoMessagingURLImageView);
      *(v21 + ((v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
      aBlock[4] = sub_1C2D9E4DC;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C2CB2CC4;
      aBlock[3] = &block_descriptor_75;
      v22 = _Block_copy(aBlock);
      v23 = v19;

      sub_1C2E759F4();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1C2C7A6AC(&qword_1EDDCDA00, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C60);
      sub_1C2C94F38(&qword_1EDDCD9F0, &unk_1EC061C60);
      v24 = v29;
      sub_1C2E76464();
      v25 = v26;
      MEMORY[0x1C6926AC0](0, v13, v10, v22);
      _Block_release(v22);

      sub_1C2D9E420(a1, a2);
      (*(v28 + 8))(v10, v24);
      (*(v31 + 8))(v13, v27);
    }

    else
    {

      sub_1C2D9E420(a1, a2);
    }
  }
}

uint64_t sub_1C2D9D458(uint64_t a1, void *a2)
{
  type metadata accessor for CUVideoMessagingURLImageView(0);
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061C70);
  return sub_1C2E75194();
}

uint64_t sub_1C2D9D4C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1C2E717A4();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1C2D9E420(v6, v10);
}

id sub_1C2D9D58C(uint64_t a1)
{
  type metadata accessor for CUVideoMessagingURLImageView.VideoPlayerView(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061D48);
  MEMORY[0x1C6925DB0](v8, v2);
  v3 = v9;
  if (v9)
  {
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 16))(v3, v4);
    sub_1C2C73644(v8, &unk_1EC061C40);
    if (v5)
    {
      result = *(a1 + OBJC_IVAR____TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView_queuePlayer);
      if (!result)
      {
        return result;
      }

      v7 = &selRef_play;
      return [result *v7];
    }
  }

  else
  {
    sub_1C2C73644(v8, &unk_1EC061C40);
  }

  result = *(a1 + OBJC_IVAR____TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView_queuePlayer);
  if (!result)
  {
    return result;
  }

  v7 = &selRef_pause;
  return [result *v7];
}

void sub_1C2D9D694()
{
  v1 = OBJC_IVAR____TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView_queuePlayer;
  if (!*&v0[OBJC_IVAR____TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView_queuePlayer])
  {
    v2 = v0;
    v3 = sub_1C2E71734();
    v4 = [objc_opt_self() assetWithURL_];

    v5 = [objc_allocWithZone(MEMORY[0x1E69880B0]) initWithAsset_];
    v6 = [objc_allocWithZone(MEMORY[0x1E6988100]) init];
    [v6 setMuted_];
    v7 = [objc_opt_self() playerLooperWithPlayer:v6 templateItem:v5];
    v8 = *&v2[OBJC_IVAR____TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView_looper];
    *&v2[OBJC_IVAR____TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView_looper] = v7;

    v9 = [objc_opt_self() playerLayerWithPlayer_];
    v10 = OBJC_IVAR____TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView_playerLayer;
    v11 = *&v2[OBJC_IVAR____TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView_playerLayer];
    *&v2[OBJC_IVAR____TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView_playerLayer] = v9;
    v12 = v9;

    if (v12)
    {
      [v12 setVideoGravity_];
    }

    v13 = *&v2[v10];
    if (v13)
    {
      v14 = v13;
      v15 = [v2 layer];
      [v15 addSublayer_];
    }

    v16 = *&v2[v1];
    *&v2[v1] = v6;
  }
}

id sub_1C2D9D9AC(void *a1)
{
  *&v1[OBJC_IVAR____TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView_queuePlayer] = 0;
  *&v1[OBJC_IVAR____TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView_playerLayer] = 0;
  *&v1[OBJC_IVAR____TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView_looper] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CUVideoMessagingURLImageView.VideoPlayerView.PlayerView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1C2D9DA78(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1C2D9DB68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1C2D9DBE8()
{
  type metadata accessor for CUVideoMessagingURLImageView.VideoPlayerView.PlayerView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1C2D9D694();
  return v0;
}

uint64_t sub_1C2D9DC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2C7A6AC(&qword_1EC05BD70, type metadata accessor for CUVideoMessagingURLImageView.VideoPlayerView);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C2D9DCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2C7A6AC(&qword_1EC05BD70, type metadata accessor for CUVideoMessagingURLImageView.VideoPlayerView);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C2D9DD5C()
{
  sub_1C2C7A6AC(&qword_1EC05BD70, type metadata accessor for CUVideoMessagingURLImageView.VideoPlayerView);
  sub_1C2E73EE4();
  __break(1u);
}

uint64_t sub_1C2D9DDB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  *a2 = sub_1C2E75744();
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061C50);
  sub_1C2D9C610(v2, (a2 + *(v7 + 44)));
  sub_1C2D9E0D4(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CUVideoMessagingURLImageView);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_1C2D9E13C(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for CUVideoMessagingURLImageView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061C58);
  v11 = (a2 + *(result + 36));
  *v11 = sub_1C2D9E1A4;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  return result;
}

uint64_t sub_1C2D9DF14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2C7A6AC(&qword_1EC05CE90, _s5ModelCMa);
  sub_1C2E71A64();

  *a2 = *(v3 + 16);
}

uint64_t sub_1C2D9DFEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2C7A6AC(&qword_1EC05CE90, _s5ModelCMa);
  sub_1C2E71A64();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2D9E0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2D9E13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_62Tm()
{
  v1 = type metadata accessor for CUVideoMessagingURLImageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v11 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = sub_1C2E71784();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);
  v8 = v1[5];
  if (!(*(v6 + 48))(v0 + v3 + v8, 1, v5))
  {
    v7(v4 + v8, v5);
  }

  v9 = v4 + v1[7];
  if (*(v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v11, v2 | 7);
}

void sub_1C2D9E388(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for CUVideoMessagingURLImageView(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  sub_1C2D9CFD4(a1, a2, a3, a4, v10);
}

uint64_t sub_1C2D9E420(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C2D9E434(a1, a2);
  }

  return a1;
}

uint64_t sub_1C2D9E434(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C2D9E488(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C2D9E4DC()
{
  v1 = *(type metadata accessor for CUVideoMessagingURLImageView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C2D9D458(v0 + v2, v3);
}

unint64_t sub_1C2D9E5A0(unint64_t result, void *a2)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    v2 = a2;
  }

  else
  {
    v2 = a2;
  }

  return v2;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = (type metadata accessor for CUPosterOrAvatarView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_1C2D9A22C(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16));
  v5 = v0 + v3 + v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061B28);
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061B30);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C2D9E71C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for CUPosterOrAvatarView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1C2D9A23C(a1, v6, a2);
}

void sub_1C2D9E79C(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    v2 = a2;
  }

  else
  {
    v2 = a2;
  }
}

void sub_1C2D9E834()
{
  sub_1C2E71784();
  if (v0 <= 0x3F)
  {
    sub_1C2D9E8E4(319, &qword_1EC05B320, &unk_1EC061C40, &unk_1C2E7EA40, MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C2D9E8E4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1C2D9E948()
{
  result = qword_1EC05B880;
  if (!qword_1EC05B880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061C58);
    sub_1C2D9E9D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B880);
  }

  return result;
}

unint64_t sub_1C2D9E9D4()
{
  result = qword_1EC05B428;
  if (!qword_1EC05B428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC061D10);
    sub_1C2C94F38(&qword_1EC05B338, &unk_1EC061D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B428);
  }

  return result;
}

unint64_t sub_1C2D9EAD0()
{
  result = qword_1EC061D38;
  if (!qword_1EC061D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061D38);
  }

  return result;
}

unint64_t sub_1C2D9EB38()
{
  result = qword_1EC061D50;
  if (!qword_1EC061D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061D50);
  }

  return result;
}

id AutoSizingSheetHostingController.__allocating_init(rootView:alongsideTransition:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = sub_1C2DA132C(a1, a2, a3);
  (*(*(*(v4 + class metadata base offset for AutoSizingSheetHostingController) - 8) + 8))(a1);
  return v9;
}

id AutoSizingSheetHostingController.init(rootView:alongsideTransition:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E7D40] & *v3;
  v6 = sub_1C2DA132C(a1, a2, a3);
  (*(*(*(v5 + class metadata base offset for AutoSizingSheetHostingController) - 8) + 8))(a1);
  return v6;
}

double sub_1C2D9ECDC()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t sub_1C2D9ED08(uint64_t result, double a2, double a3)
{
  v3 = *(result + 16);
  if (v3)
  {

    v3(v6, a2, a3);

    return sub_1C2C71668(v3);
  }

  return result;
}

uint64_t sub_1C2D9ED80(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {

    v1(v2);

    return sub_1C2C71668(v1);
  }

  return result;
}

uint64_t AutoSizingSheetHostingController.SizeUpdateView.init(view:onSizeUpdate:onDisappear:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  result = type metadata accessor for AutoSizingSheetHostingController.SizeUpdateView();
  v13 = (a7 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  v14 = (a7 + *(result + 40));
  *v14 = a4;
  v14[1] = a5;
  return result;
}

void sub_1C2D9EE88(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *((*MEMORY[0x1E69E7D40] & *Strong) + class metadata base offset for AutoSizingSheetHostingController + 40);
    v6 = *(Strong + v5);
    *(Strong + v5) = a2;
    sub_1C2DA067C(v6);
  }
}

void sub_1C2D9EF34()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  [v0 setModalPresentationStyle_];
  v2 = [v0 sheetPresentationController];
  if (v2)
  {
    v3 = v2;
    [v2 setPrefersEdgeAttachedInCompactHeight_];
    [v3 setPrefersScrollingExpandsWhenScrolledToEdge_];
    [v3 setPrefersPageSizing_];
    v4 = sub_1C2D9F44C();
    [v3 setDelegate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C2E7A720;
    sub_1C2C6E1B4(0, &unk_1EC061FC0);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v8 = v1 + class metadata base offset for AutoSizingSheetHostingController;
    v7[2] = *(v1 + class metadata base offset for AutoSizingSheetHostingController);
    v7[3] = *(v8 + 8);
    v7[4] = v6;

    v9 = sub_1C2E76164();

    *(v5 + 32) = v9;
    v10 = sub_1C2E75D64();

    [v3 setDetents_];
  }
}

Swift::Void __swiftcall AutoSizingSheetHostingController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  if (_UISolariumEnabled())
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      v3 = [objc_opt_self() clearColor];
      [v2 setBackgroundColor_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C2D9F25C(void *a1)
{
  v1 = a1;
  AutoSizingSheetHostingController.viewDidLoad()();
}

Swift::Void __swiftcall AutoSizingSheetHostingController.viewWillDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_viewWillDisappear_, a1);
  v5 = sub_1C2D9F44C();
  v6 = v5[OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_isTransitioning];

  if ((v6 & 1) == 0)
  {
    v7 = [v1 transitionCoordinator];
    if (v7)
    {
      v8 = v7;
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_allocObject();
      v11 = v4 + class metadata base offset for AutoSizingSheetHostingController;
      v10[2] = *(v4 + class metadata base offset for AutoSizingSheetHostingController);
      v10[3] = *(v11 + 8);
      v10[4] = v9;
      v13[4] = sub_1C2DA17C0;
      v13[5] = v10;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 1107296256;
      v13[2] = sub_1C2D9F5B8;
      v13[3] = &block_descriptor_13;
      v12 = _Block_copy(v13);

      [v8 animateAlongsideTransition:v12 completion:0];
      _Block_release(v12);
      swift_unknownObjectRelease();
    }
  }
}

char *sub_1C2D9F44C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for AutoSizingSheetHostingController + 24);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_1C2DA0140(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1C2D9F4EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + class metadata base offset for AutoSizingSheetHostingController + 16));
    v2 = Strong;
    sub_1C2C6EE50(v1);

    if (v1)
    {
      v1(0);
      sub_1C2C71668(v1);
    }
  }
}

uint64_t sub_1C2D9F5B8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_1C2D9F618(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  AutoSizingSheetHostingController.viewWillDisappear(_:)(a3);
}

Swift::Void __swiftcall AutoSizingSheetHostingController.updateSourceView(_:)(UIView_optional *a1)
{
  if (a1)
  {
    v2 = v1;
    sub_1C2C6E1B4(0, &qword_1EC061D68);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = a1;

    v5 = sub_1C2E76154();

    [v2 setPreferredTransition_];
  }
}

Swift::Void __swiftcall AutoSizingSheetHostingController.overrideUserInterfaceStyle(_:)(UIUserInterfaceStyle a1)
{
  v3 = sub_1C2E72B74();
  [v1 setOverrideUserInterfaceStyle_];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 setOverrideUserInterfaceStyle_];

    v6 = [v1 sheetPresentationController];
    if (v6)
    {
      v7 = v6;
      sub_1C2E76134();
      sub_1C2E72B64();
      sub_1C2E76144();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t AutoSizingSheetHostingController.SizeUpdateView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = *(a1 - 8);
  v32 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v7 = v5;
  v27 = v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061D70);
  v31 = sub_1C2E73654();
  v34 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v27 - v8;
  v9 = sub_1C2E73654();
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v27 - v12;
  v13 = *(v7 + 24);
  v37 = v6;
  v38 = v13;
  v39 = v2;
  sub_1C2E75744();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061D78);
  sub_1C2C94F38(&qword_1EC061D80, &qword_1EC061D78);
  v14 = v28;
  sub_1C2E74D64();
  v15 = v30;
  v16 = v27;
  (*(v3 + 16))(v30, v2, v27);
  v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v13;
  (*(v3 + 32))(v18 + v17, v15, v16);
  v19 = sub_1C2C94F38(qword_1EC061D88, &qword_1EC061D70);
  v42 = v13;
  v43 = v19;
  v20 = v31;
  WitnessTable = swift_getWitnessTable();
  v22 = v29;
  sub_1C2E749C4();

  (*(v34 + 8))(v14, v20);
  v40 = WitnessTable;
  v41 = MEMORY[0x1E69805D0];
  v23 = swift_getWitnessTable();
  v24 = v33;
  sub_1C2C6EE48(v22, v9, v23);
  v25 = *(v35 + 8);
  v25(v22, v9);
  sub_1C2C6EE48(v24, v9, v23);
  return (v25)(v24, v9);
}

uint64_t sub_1C2D9FCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  updated = type metadata accessor for AutoSizingSheetHostingController.SizeUpdateView();
  v9 = *(updated - 8);
  v10 = MEMORY[0x1EEE9AC00](updated);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, updated, v10);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  result = (*(v9 + 32))(v14 + v13, v12, updated);
  *a4 = sub_1C2DA22B4;
  a4[1] = v14;
  return result;
}

uint64_t sub_1C2D9FE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v34 = a1;
  v35 = a3;
  v31 = a2;
  v32 = a5;
  v6 = sub_1C2E732F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AutoSizingSheetHostingController.SizeUpdateView();
  v10 = *(updated - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v13 = &v26 - v12;
  v36 = sub_1C2E74F44();
  v30 = *(v10 + 16);
  v30(v13, a2, updated);
  v14 = v6;
  (*(v7 + 16))(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v6);
  v15 = *(v10 + 80);
  v16 = (v15 + 32) & ~v15;
  v28 = v15 | 7;
  v29 = v16 + v11;
  v17 = (v16 + v11 + *(v7 + 80)) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v19 = v33;
  *(v18 + 16) = v35;
  *(v18 + 24) = v19;
  v20 = *(v10 + 32);
  v20(v18 + v16, v13, updated);
  (*(v7 + 32))(v18 + v17, v27, v14);
  v39 = v36;
  v40 = sub_1C2DA2350;
  v41 = v18;
  v42 = 0;
  v43 = 0;
  sub_1C2E732C4();
  v37 = v21;
  v38 = v22;
  v30(v13, v31, updated);
  v23 = swift_allocObject();
  v24 = v33;
  *(v23 + 16) = v35;
  *(v23 + 24) = v24;
  v20(v23 + v16, v13, updated);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061FA0);
  type metadata accessor for CGSize(0);
  sub_1C2DA25AC();
  sub_1C2DA2630();
  sub_1C2E74DD4();
}

char *sub_1C2DA0140(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *a1;
  v4 = [objc_allocWithZone(type metadata accessor for AutoSizingPresentationDelegate()) init];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v7 = v3 + class metadata base offset for AutoSizingSheetHostingController;
  v8 = *(v3 + class metadata base offset for AutoSizingSheetHostingController);
  *(v6 + 2) = v8;
  v9 = *(v7 + 8);
  *(v6 + 3) = v9;
  *(v6 + 4) = v5;
  v10 = &v4[OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_updateContentViewHeight];
  v11 = *&v4[OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_updateContentViewHeight];
  *v10 = sub_1C2DA2688;
  v10[1] = v6;

  sub_1C2C71668(v11);

  v12 = (a1 + *((*v2 & *a1) + class metadata base offset for AutoSizingSheetHostingController + 16));
  v13 = *v12;
  if (*v12)
  {
    v14 = v12[1];
    v15 = &v4[OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_alongsideTransition];
    v16 = *&v4[OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_alongsideTransition];
    *v15 = v13;
    *(v15 + 1) = v14;

    sub_1C2C71668(v16);
  }

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 2) = v8;
  *(v18 + 3) = v9;
  *(v18 + 4) = v17;
  v19 = &v4[OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_animationWillStart];
  v20 = *&v4[OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_animationWillStart];
  *v19 = sub_1C2DA2694;
  v19[1] = v18;

  sub_1C2C71668(v20);

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 2) = v8;
  *(v22 + 3) = v9;
  *(v22 + 4) = v21;
  v23 = &v4[OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_animationDidEnd];
  v24 = *&v4[OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_animationDidEnd];
  *v23 = sub_1C2DA26BC;
  v23[1] = v22;

  sub_1C2C71668(v24);

  return v4;
}

void sub_1C2DA03D8(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *((*MEMORY[0x1E69E7D40] & *Strong) + class metadata base offset for AutoSizingSheetHostingController + 40);
    v5 = *(Strong + v4);
    *(Strong + v4) = a1;
    sub_1C2DA067C(v5);
  }
}

void sub_1C2DA0484(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + class metadata base offset for AutoSizingSheetHostingController + 32)) = a4;
    v9 = [Strong view];
    if (v9)
    {
      v10 = v9;
      [v9 setUserInteractionEnabled_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C2DA0560()
{
  sub_1C2C71668(*(v0 + 16));
  sub_1C2C71668(*(v0 + 32));

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

double sub_1C2DA05A0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [a1 maximumDetentValue];
    v5 = v4;
    v6 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + class metadata base offset for AutoSizingSheetHostingController + 40));

    if (v6 >= v5)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    [a1 maximumDetentValue];
  }

  return result;
}

void sub_1C2DA067C(double a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  if (*(v1 + *(v2 + class metadata base offset for AutoSizingSheetHostingController + 40)) == a1)
  {
    return;
  }

  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *(v1 + *(v2 + class metadata base offset for AutoSizingSheetHostingController + 32));
  v5 = [v1 sheetPresentationController];
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    if (!v5)
    {
      return;
    }

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v10 = v3 + class metadata base offset for AutoSizingSheetHostingController;
    v9[2] = *(v3 + class metadata base offset for AutoSizingSheetHostingController);
    v9[3] = *(v10 + 8);
    v9[4] = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1C2DA26E4;
    *(v11 + 24) = v9;
    aBlock[4] = sub_1C2CB1B14;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C2D0A7A0;
    aBlock[3] = &block_descriptor_65;
    v12 = _Block_copy(aBlock);

    [v6 animateChanges_];

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  [v5 invalidateDetents];

  v7 = [v1 view];
  if (!v7)
  {
    goto LABEL_11;
  }

  v14 = v7;
  [v7 setNeedsLayout];
}

void sub_1C2DA08F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [v1 sheetPresentationController];
    [v2 invalidateDetents];

    v3 = [v1 view];
    if (v3)
    {
      [v3 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C2DA0A9C()
{
  v1 = MEMORY[0x1E69E7D40];
  sub_1C2C71668(*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for AutoSizingSheetHostingController + 16)));
  v2 = *(v0 + *((*v1 & *v0) + class metadata base offset for AutoSizingSheetHostingController + 24));
}

void sub_1C2DA0B60(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  sub_1C2C71668(*(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + class metadata base offset for AutoSizingSheetHostingController + 16)));
  v3 = *(a1 + *((*v2 & *a1) + class metadata base offset for AutoSizingSheetHostingController + 24));
}

void sub_1C2DA0C24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_isTransitioning) = 0;
    v2 = *(Strong + OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_animationDidEnd);
    if (v2)
    {

      v2(v3);
      sub_1C2C71668(v2);
    }
  }
}

void sub_1C2DA0D38(void *a1)
{
  v2 = [a1 presentingViewController];
  v3 = [v2 transitionCoordinator];

  if (v3)
  {
    v4 = [v3 viewControllerForKey_];
    v5 = v4;
    *(v1 + OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_isTransitioning) = 1;
    if (v4)
    {
      v6 = [v4 view];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      [v6 setUserInteractionEnabled_];
    }

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = sub_1C2DA1F30;
    v20 = v8;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1C2D9F5B8;
    v18 = &block_descriptor_19;
    v9 = _Block_copy(&v15);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v5;
    v19 = sub_1C2DA1F50;
    v20 = v11;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1C2D9F5B8;
    v18 = &block_descriptor_26;
    v12 = _Block_copy(&v15);
    v13 = v5;

    [v3 animateAlongsideTransition:v9 completion:v12];
    _Block_release(v12);
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = *(v1 + OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_alongsideTransition);
    if (v14)
    {

      v14(0);

      sub_1C2C71668(v14);
    }
  }
}

void sub_1C2DA0FF4(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *&Strong[OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_alongsideTransition];
    if (v6)
    {
      sub_1C2C6EE50(*&Strong[OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_alongsideTransition]);

      v6(a3 & 1);
      sub_1C2C71668(v6);
    }

    else
    {
    }
  }
}

void sub_1C2DA1098(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_isTransitioning] = 0;
  }

  if (a3)
  {
    v6 = [a3 view];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 setUserInteractionEnabled_];
  }

  if ([a1 isCancelled])
  {
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = *&v8[OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_alongsideTransition];
      if (v10)
      {
        sub_1C2C6EE50(*&v8[OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_alongsideTransition]);

        v10(1);
        sub_1C2C71668(v10);
      }

      else
      {
      }
    }
  }
}

id sub_1C2DA132C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a3;
  v5 = *MEMORY[0x1E69E7D40] & *v3;
  v6 = sub_1C2E743B4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = v5 + class metadata base offset for AutoSizingSheetHostingController;
  v8 = *(v5 + class metadata base offset for AutoSizingSheetHostingController);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = *(v7 + 8);
  updated = type metadata accessor for AutoSizingSheetHostingController.SizeUpdateView();
  v34 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v16 = &v31 - v15;
  *(v3 + *(v7 + 24)) = 0;
  v17 = MEMORY[0x1E69E7D40];
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + class metadata base offset for AutoSizingSheetHostingController + 32)) = 1;
  *(v3 + *((*v17 & *v3) + class metadata base offset for AutoSizingSheetHostingController + 40)) = 0;
  type metadata accessor for AutoSizingSheetHostingController.SizeUpdateHandler();
  v18 = swift_allocObject();
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  (*(v9 + 16))(v12, v32, v8);
  (*(v9 + 32))(v16, v12, v8);
  v19 = &v16[*(updated + 36)];
  *v19 = sub_1C2DA26F0;
  v19[1] = v18;
  v20 = updated;
  v21 = &v16[*(updated + 40)];
  *v21 = sub_1C2DA26F8;
  v21[1] = v18;
  v22 = (v3 + *((*MEMORY[0x1E69E7D40] & *v3) + class metadata base offset for AutoSizingSheetHostingController + 16));
  v23 = v33;
  *v22 = a2;
  v22[1] = v23;
  swift_retain_n();
  sub_1C2C6EE50(a2);
  v24 = sub_1C2DA8090(v16);
  sub_1C2E743A4();
  sub_1C2E73E14();
  sub_1C2E73E24();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v26[2] = v8;
  v26[3] = v13;
  v26[4] = v25;
  v27 = *(v18 + 16);
  *(v18 + 16) = sub_1C2DA2700;
  *(v18 + 24) = v26;

  sub_1C2C71668(v27);

  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = v23;
  v29 = *(v18 + 32);
  *(v18 + 32) = sub_1C2D952FC;
  *(v18 + 40) = v28;
  sub_1C2C6EE50(a2);
  sub_1C2C71668(v29);
  sub_1C2D9EF34();

  sub_1C2C71668(a2);

  (*(v34 + 8))(v16, v20);
  return v24;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C2DA1898()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for AutoSizingSheetHostingController + 24)) = 0;
  *(v0 + *((*v1 & *v0) + class metadata base offset for AutoSizingSheetHostingController + 32)) = 1;
  *(v0 + *((*v1 & *v0) + class metadata base offset for AutoSizingSheetHostingController + 40)) = 0;
  sub_1C2E766F4();
  __break(1u);
}

unint64_t sub_1C2DA1B18()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1C2D72450();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C2DA1BA0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1C2DA1CE4(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

id sub_1C2DA1F58(id result)
{
  v2 = v1;
  if (result)
  {
    v3 = result;
    v4 = [result viewForKey_];
    if (v4)
    {
      v5 = v4;
      [v4 frame];
      v7 = v6;
      v9 = v8;
    }

    else
    {
      v7 = INFINITY;
      v9 = INFINITY;
    }

    v12 = [v3 viewControllerForKey_];
    if (v12)
    {
      v13 = v12;
      result = [v12 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v14 = result;
      [result systemLayoutSizeFittingSize_];
      v16 = v15;

      v17 = *(v2 + OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_updateContentViewHeight);
      if (v17)
      {

        v17(v18, v16);
        sub_1C2C71668(v17);
      }
    }

    *(v2 + OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_isTransitioning) = 1;
    v19 = *(v2 + OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_animationWillStart);
    swift_unknownObjectRetain();
    if (v19)
    {
      v20 = sub_1C2C6EE50(v19);
      v19(v20);
      sub_1C2C71668(v19);
    }

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_1C2DA228C;
    v30 = v21;
    v25 = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1C2D9F5B8;
    v28 = &block_descriptor_30_0;
    v22 = _Block_copy(&v25);

    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_1C2DA22AC;
    v30 = v23;
    v25 = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1C2D9F5B8;
    v28 = &block_descriptor_34;
    v24 = _Block_copy(&v25);

    [v3 animateAlongsideTransition:v22 completion:v24];
    _Block_release(v24);
    _Block_release(v22);
    return swift_unknownObjectRelease();
  }

  else
  {
    v10 = *(v1 + OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_animationDidEnd);
    if (v10)
    {

      v10(v11);

      return sub_1C2C71668(v10);
    }
  }

  return result;
}

uint64_t sub_1C2DA22B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for AutoSizingSheetHostingController.SizeUpdateView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1C2D9FE14(a1, v8, v5, v6, a2);
}

uint64_t sub_1C2DA2350()
{
  v1 = (type metadata accessor for AutoSizingSheetHostingController.SizeUpdateView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  sub_1C2E732F4();
  v3 = *(v0 + v1[11] + v2);
  v4 = sub_1C2E732C4();
  return v3(v4);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for AutoSizingSheetHostingController.SizeUpdateView() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(*(v1 - 8) + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

unint64_t sub_1C2DA25AC()
{
  result = qword_1EC061FA8;
  if (!qword_1EC061FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061FA8);
  }

  return result;
}

unint64_t sub_1C2DA2630()
{
  result = qword_1EC061FB0;
  if (!qword_1EC061FB0)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061FB0);
  }

  return result;
}

uint64_t sub_1C2DA2748()
{
  type metadata accessor for ScreenAndFilterUnknownCallersTipController();
  swift_allocObject();
  result = sub_1C2DA291C();
  qword_1EC05CC88 = result;
  return result;
}

uint64_t static ScreenAndFilterUnknownCallersTipController.shared.getter()
{
  if (qword_1EC05CC80 != -1)
  {
    swift_once();
  }
}

uint64_t ScreenAndFilterUnknownCallersTipController.isPhoneFilteringTipAvailable.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 20);
  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t ScreenAndFilterUnknownCallersTipController.isFaceTimeFilteringTipAvailable.getter()
{
  os_unfair_lock_lock((v0 + 24));
  v1 = *(v0 + 28);
  os_unfair_lock_unlock((v0 + 24));
  return v1;
}

uint64_t ScreenAndFilterUnknownCallersTipController.isPhoneScreeningTipAvailable.getter()
{
  os_unfair_lock_lock((v0 + 32));
  v1 = *(v0 + 36);
  os_unfair_lock_unlock((v0 + 32));
  return v1;
}

uint64_t ScreenAndFilterUnknownCallersTipController.onUpdatePublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062030);
  sub_1C2C94F38(&qword_1EC05CC20, &qword_1EC062030);
  return sub_1C2E72E94();
}

uint64_t sub_1C2DA291C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  *(v0 + 16) = 0;
  *(v0 + 20) = 0;
  *(v0 + 24) = 0;
  *(v0 + 28) = 0;
  *(v0 + 32) = 0;
  *(v0 + 36) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062030);
  swift_allocObject();
  *(v0 + 40) = sub_1C2E72DE4();
  sub_1C2E71B14();
  sub_1C2E71B34();
  sub_1C2E71AF4();
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI42ScreenAndFilterUnknownCallersTipController_tipListeners) = MEMORY[0x1E69E7CC0];
  v5 = sub_1C2E75E74();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1C2E75E34();

  v6 = sub_1C2E75E24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_1C2D22B9C(0, 0, v4, &unk_1C2E889B0, v7);

  return v1;
}

uint64_t sub_1C2DA2ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1C2E71B04();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();
  v7 = sub_1C2E71B44();
  v4[7] = v7;
  v8 = *(v7 - 8);
  v4[8] = v8;
  v4[9] = *(v8 + 64);
  v4[10] = swift_task_alloc();
  v9 = sub_1C2E71B24();
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v4[13] = *(v10 + 64);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  v4[15] = swift_task_alloc();
  v4[16] = sub_1C2E75E34();
  v4[17] = sub_1C2E75E24();
  v12 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2DA2CCC, v12, v11);
}

uint64_t sub_1C2DA2CCC()
{
  v2 = v0[14];
  v1 = v0[15];
  v34 = v1;
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v31 = v0[10];
  v23 = v0[8];
  v24 = v0[7];
  v25 = v0[9];
  v28 = v0[6];
  v29 = v0[5];
  v6 = v0[2];
  v26 = v0[4];
  v27 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062058);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1C2E7AA50;
  v33 = sub_1C2E75E74();
  v32 = *(*(v33 - 8) + 56);
  v32(v1, 1, 1, v33);
  v7 = swift_allocObject();
  v30 = v6;
  swift_weakInit();
  (*(v3 + 16))(v2, v6 + OBJC_IVAR____TtC16CommunicationsUI42ScreenAndFilterUnknownCallersTipController_screenUnknownCallersTip, v5);

  v8 = sub_1C2E75E24();
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v8;
  *(v11 + 24) = v12;
  (*(v3 + 32))(v11 + v9, v2, v5);
  *(v11 + v10) = v7;

  *(v35 + 32) = sub_1C2D22B9C(0, 0, v34, &unk_1C2E889C8, v11);
  v32(v34, 1, 1, v33);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v23 + 16))(v31, v30 + OBJC_IVAR____TtC16CommunicationsUI42ScreenAndFilterUnknownCallersTipController_filterUnknownFaceTimeCallersTip, v24);

  v14 = sub_1C2E75E24();
  v15 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = MEMORY[0x1E69E85E0];
  (*(v23 + 32))(v16 + v15, v31, v24);
  *(v16 + ((v25 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;

  *(v35 + 40) = sub_1C2D22B9C(0, 0, v34, &unk_1C2E889D8, v16);
  v32(v34, 1, 1, v33);
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v26 + 16))(v28, v30 + OBJC_IVAR____TtC16CommunicationsUI42ScreenAndFilterUnknownCallersTipController_filterUnknownCallersTip, v27);

  v18 = sub_1C2E75E24();
  v19 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = MEMORY[0x1E69E85E0];
  (*(v26 + 32))(v20 + v19, v28, v27);
  *(v20 + ((v29 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;

  *(v35 + 48) = sub_1C2D22B9C(0, 0, v34, &unk_1C2E889E8, v20);
  *(v30 + OBJC_IVAR____TtC16CommunicationsUI42ScreenAndFilterUnknownCallersTipController_tipListeners) = v35;

  v21 = v0[1];

  return v21();
}

uint64_t sub_1C2DA317C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062060);
  v5[11] = swift_task_alloc();
  v6 = sub_1C2E72D64();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062068);
  v5[16] = swift_task_alloc();
  v5[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062070);
  v5[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062078);
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062080);
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = sub_1C2E75E34();
  v5[26] = sub_1C2E75E24();
  v10 = sub_1C2E75DD4();
  v5[27] = v10;
  v5[28] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C2DA33F4, v10, v9);
}

uint64_t sub_1C2DA33F4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  sub_1C2E71B24();
  sub_1C2DA673C(&qword_1EC05CEF0, MEMORY[0x1E69D8960]);
  sub_1C2E72D34();
  MEMORY[0x1C69270D0](v3);
  sub_1C2C94F38(&qword_1EC05CAA0, &qword_1EC062068);
  sub_1C2E75EE4();
  sub_1C2E766C4();
  (*(v2 + 8))(v1, v3);
  sub_1C2E766D4();
  swift_beginAccess();
  v4 = sub_1C2E75E24();
  v0[29] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_1C2E75DD4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[30] = v5;
  v0[31] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C2DA35D4, v5, v7);
}

uint64_t sub_1C2DA35D4()
{
  v1 = v0[29];
  v0[32] = sub_1C2E766B4();
  sub_1C2C94F38(&qword_1EC05CAA8, &qword_1EC062070);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_1C2DA36D8;
  v3 = v0[11];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_1C2DA36D8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_1C2DA7C10;
  }

  else
  {
    (*(v2 + 256))();
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_1C2DA3800;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1C2DA3800()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1C2DA7B98(v3);
    v4 = v0[27];
    v5 = v0[28];

    return MEMORY[0x1EEE6DFA0](sub_1C2DA7C00, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[14], v3, v1);
    v6 = sub_1C2E766C4();
    v0[34] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[35] = v8;
    *v8 = v0;
    v8[1] = sub_1C2DA39B0;
    v9 = v0[14];

    return (v11)(v0 + 36, v9);
  }
}

uint64_t sub_1C2DA39B0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  (*(v3 + 8))(v2, v4);
  *(v1 + 289) = *(v1 + 288);
  v5 = *(v1 + 248);
  v6 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1C2DA3B5C, v6, v5);
}

uint64_t sub_1C2DA3B5C()
{

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1C2DA3BC0, v1, v2);
}

uint64_t sub_1C2DA3BC0()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 289);
    v3 = Strong;
    os_unfair_lock_lock(Strong + 8);
    LOBYTE(v3[9]._os_unfair_lock_opaque) = v2;
    os_unfair_lock_unlock(v3 + 8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062030);
    sub_1C2C94F38(&unk_1EC05CC28, &qword_1EC062030);
    sub_1C2E72E44();

    v4 = sub_1C2E75E24();
    *(v0 + 232) = v4;
    if (v4)
    {
      swift_getObjectType();
      v5 = sub_1C2E75DD4();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    *(v0 + 240) = v5;
    *(v0 + 248) = v7;

    return MEMORY[0x1EEE6DFA0](sub_1C2DA35D4, v5, v7);
  }

  else
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1C2DA3DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062060);
  v5[11] = swift_task_alloc();
  v6 = sub_1C2E72D64();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062068);
  v5[16] = swift_task_alloc();
  v5[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062070);
  v5[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062078);
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062080);
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = sub_1C2E75E34();
  v5[26] = sub_1C2E75E24();
  v10 = sub_1C2E75DD4();
  v5[27] = v10;
  v5[28] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C2DA401C, v10, v9);
}

uint64_t sub_1C2DA401C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  sub_1C2E71B44();
  sub_1C2DA673C(&qword_1EC05CEE8, MEMORY[0x1E69D8970]);
  sub_1C2E72D34();
  MEMORY[0x1C69270D0](v3);
  sub_1C2C94F38(&qword_1EC05CAA0, &qword_1EC062068);
  sub_1C2E75EE4();
  sub_1C2E766C4();
  (*(v2 + 8))(v1, v3);
  sub_1C2E766D4();
  swift_beginAccess();
  v4 = sub_1C2E75E24();
  v0[29] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_1C2E75DD4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[30] = v5;
  v0[31] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C2DA41FC, v5, v7);
}

uint64_t sub_1C2DA41FC()
{
  v1 = v0[29];
  v0[32] = sub_1C2E766B4();
  sub_1C2C94F38(&qword_1EC05CAA8, &qword_1EC062070);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_1C2DA4300;
  v3 = v0[11];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_1C2DA4300()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_1C2DA45D8;
  }

  else
  {
    (*(v2 + 256))();
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_1C2DA4428;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1C2DA4428()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1C2DA7B98(v3);
    v4 = v0[27];
    v5 = v0[28];

    return MEMORY[0x1EEE6DFA0](sub_1C2DA49E4, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[14], v3, v1);
    v6 = sub_1C2E766C4();
    v0[34] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[35] = v8;
    *v8 = v0;
    v8[1] = sub_1C2DA45F0;
    v9 = v0[14];

    return (v11)(v0 + 36, v9);
  }
}

uint64_t sub_1C2DA45F0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  (*(v3 + 8))(v2, v4);
  *(v1 + 289) = *(v1 + 288);
  v5 = *(v1 + 248);
  v6 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1C2DA479C, v6, v5);
}

uint64_t sub_1C2DA479C()
{

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1C2DA4800, v1, v2);
}

uint64_t sub_1C2DA4800()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 289);
    v3 = Strong;
    os_unfair_lock_lock(Strong + 6);
    LOBYTE(v3[7]._os_unfair_lock_opaque) = v2;
    os_unfair_lock_unlock(v3 + 6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062030);
    sub_1C2C94F38(&unk_1EC05CC28, &qword_1EC062030);
    sub_1C2E72E44();

    v4 = sub_1C2E75E24();
    *(v0 + 232) = v4;
    if (v4)
    {
      swift_getObjectType();
      v5 = sub_1C2E75DD4();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    *(v0 + 240) = v5;
    *(v0 + 248) = v7;

    return MEMORY[0x1EEE6DFA0](sub_1C2DA41FC, v5, v7);
  }

  else
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1C2DA49E4()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C2DA4AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062060);
  v5[11] = swift_task_alloc();
  v6 = sub_1C2E72D64();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062068);
  v5[16] = swift_task_alloc();
  v5[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062070);
  v5[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062078);
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062080);
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = sub_1C2E75E34();
  v5[26] = sub_1C2E75E24();
  v10 = sub_1C2E75DD4();
  v5[27] = v10;
  v5[28] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C2DA4D30, v10, v9);
}

uint64_t sub_1C2DA4D30()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  sub_1C2E71B04();
  sub_1C2DA673C(&unk_1EC05CEF8, MEMORY[0x1E69D8948]);
  sub_1C2E72D34();
  MEMORY[0x1C69270D0](v3);
  sub_1C2C94F38(&qword_1EC05CAA0, &qword_1EC062068);
  sub_1C2E75EE4();
  sub_1C2E766C4();
  (*(v2 + 8))(v1, v3);
  sub_1C2E766D4();
  swift_beginAccess();
  v4 = sub_1C2E75E24();
  v0[29] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_1C2E75DD4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[30] = v5;
  v0[31] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C2DA4F10, v5, v7);
}

uint64_t sub_1C2DA4F10()
{
  v1 = v0[29];
  v0[32] = sub_1C2E766B4();
  sub_1C2C94F38(&qword_1EC05CAA8, &qword_1EC062070);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_1C2DA5014;
  v3 = v0[11];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_1C2DA5014()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_1C2DA7C10;
  }

  else
  {
    (*(v2 + 256))();
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_1C2DA513C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1C2DA513C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1C2DA7B98(v3);
    v4 = v0[27];
    v5 = v0[28];

    return MEMORY[0x1EEE6DFA0](sub_1C2DA7C00, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[14], v3, v1);
    v6 = sub_1C2E766C4();
    v0[34] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[35] = v8;
    *v8 = v0;
    v8[1] = sub_1C2DA52EC;
    v9 = v0[14];

    return (v11)(v0 + 36, v9);
  }
}

uint64_t sub_1C2DA52EC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  (*(v3 + 8))(v2, v4);
  *(v1 + 289) = *(v1 + 288);
  v5 = *(v1 + 248);
  v6 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1C2DA5498, v6, v5);
}

uint64_t sub_1C2DA5498()
{

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1C2DA54FC, v1, v2);
}

uint64_t sub_1C2DA54FC()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 289);
    v3 = Strong;
    os_unfair_lock_lock(Strong + 4);
    LOBYTE(v3[5]._os_unfair_lock_opaque) = v2;
    os_unfair_lock_unlock(v3 + 4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062030);
    sub_1C2C94F38(&unk_1EC05CC28, &qword_1EC062030);
    sub_1C2E72E44();

    v4 = sub_1C2E75E24();
    *(v0 + 232) = v4;
    if (v4)
    {
      swift_getObjectType();
      v5 = sub_1C2E75DD4();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    *(v0 + 240) = v5;
    *(v0 + 248) = v7;

    return MEMORY[0x1EEE6DFA0](sub_1C2DA4F10, v5, v7);
  }

  else
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

    v8 = *(v0 + 8);

    return v8();
  }
}

id ScreenAndFilterUnknownCallersTipController.configurePhoneFilteringTip(for:actionHandler:dismiss:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC16CommunicationsUI42ScreenAndFilterUnknownCallersTipController_filterUnknownCallersTip;
  v12 = sub_1C2E71B04();
  v18[3] = v12;
  v18[4] = sub_1C2DA673C(&unk_1EC05CEF8, MEMORY[0x1E69D8948]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v5 + v11, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  v15 = sub_1C2E72D44();

  __swift_destroy_boxed_opaque_existential_1(v18);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;

  sub_1C2C6EE50(sub_1C2DA5B1C);
  MEMORY[0x1C6923780](sub_1C2DA5B1C, v16);

  return [a1 setLayoutMargins_];
}

uint64_t sub_1C2DA58D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1C2E75E34();
  v4[3] = sub_1C2E75E24();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1C2DA59E0;

  return v8();
}

uint64_t sub_1C2DA59E0()
{

  v1 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2DA7C04, v1, v0);
}

uint64_t sub_1C2DA5B54(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1C2E75E34();
  v4[3] = sub_1C2E75E24();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1C2DA5C64;

  return v8();
}

uint64_t sub_1C2DA5C64()
{

  v1 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2DA5DA0, v1, v0);
}

uint64_t sub_1C2DA5DA0()
{

  sub_1C2E71AE4();
  sub_1C2E71AB4();
  v1 = *(v0 + 8);

  return v1();
}

id ScreenAndFilterUnknownCallersTipController.configureFaceTimeFilteringTip(for:actionHandler:dismiss:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC16CommunicationsUI42ScreenAndFilterUnknownCallersTipController_filterUnknownFaceTimeCallersTip;
  v12 = sub_1C2E71B44();
  v18[3] = v12;
  v18[4] = sub_1C2DA673C(&qword_1EC05CEE8, MEMORY[0x1E69D8970]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v5 + v11, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  v15 = sub_1C2E72D44();

  __swift_destroy_boxed_opaque_existential_1(v18);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;

  sub_1C2C6EE50(sub_1C2DA624C);
  MEMORY[0x1C6923780](sub_1C2DA624C, v16);

  return [a1 setLayoutMargins_];
}

uint64_t sub_1C2DA6000(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1C2E75E34();
  v4[3] = sub_1C2E75E24();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1C2DA6110;

  return v8();
}

uint64_t sub_1C2DA6110()
{

  v1 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2DA7C08, v1, v0);
}

uint64_t sub_1C2DA6284(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1C2E75E34();
  v4[3] = sub_1C2E75E24();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1C2DA6394;

  return v8();
}

uint64_t sub_1C2DA6394()
{

  v1 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2DA64D0, v1, v0);
}

uint64_t sub_1C2DA64D0()
{

  sub_1C2E71AE4();
  sub_1C2E71AD4();
  v1 = *(v0 + 8);

  return v1();
}

id ScreenAndFilterUnknownCallersTipController.configurePhoneScreeningTip(for:actionHandler:dismiss:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC16CommunicationsUI42ScreenAndFilterUnknownCallersTipController_screenUnknownCallersTip;
  v12 = sub_1C2E71B24();
  v21[3] = v12;
  v21[4] = sub_1C2DA673C(&qword_1EC05CEF0, MEMORY[0x1E69D8960]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v5 + v11, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  v15 = sub_1C2E72D44();

  __swift_destroy_boxed_opaque_existential_1(v21);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;

  sub_1C2C6EE50(sub_1C2DA6B2C);
  MEMORY[0x1C6923780](sub_1C2DA6B2C, v16);

  v17 = [objc_opt_self() currentDevice];
  v18 = [v17 userInterfaceIdiom];

  v19 = 28.0;
  if (v18 != 1)
  {
    v19 = 16.0;
  }

  return [a1 setLayoutMargins_];
}

uint64_t sub_1C2DA673C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2DA6784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1C2E75E74();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1C2E75E34();

  v12 = sub_1C2E75E24();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a2;
  v13[5] = a3;
  sub_1C2D22B9C(0, 0, v10, a5, v13);
}

uint64_t sub_1C2DA68E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1C2E75E34();
  v4[3] = sub_1C2E75E24();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1C2DA69F0;

  return v8();
}

uint64_t sub_1C2DA69F0()
{

  v1 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2DA7C0C, v1, v0);
}

uint64_t sub_1C2DA6B64(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1C2E75E34();
  v4[3] = sub_1C2E75E24();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1C2DA6C74;

  return v8();
}

uint64_t sub_1C2DA6C74()
{

  v1 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2DA6DB0, v1, v0);
}

uint64_t sub_1C2DA6DB0()
{

  sub_1C2E71AE4();
  sub_1C2E71AC4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ScreenAndFilterUnknownCallersTipController.deinit()
{

  v1 = OBJC_IVAR____TtC16CommunicationsUI42ScreenAndFilterUnknownCallersTipController_screenUnknownCallersTip;
  v2 = sub_1C2E71B24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16CommunicationsUI42ScreenAndFilterUnknownCallersTipController_filterUnknownFaceTimeCallersTip;
  v4 = sub_1C2E71B44();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16CommunicationsUI42ScreenAndFilterUnknownCallersTipController_filterUnknownCallersTip;
  v6 = sub_1C2E71B04();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t ScreenAndFilterUnknownCallersTipController.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16CommunicationsUI42ScreenAndFilterUnknownCallersTipController_screenUnknownCallersTip;
  v2 = sub_1C2E71B24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16CommunicationsUI42ScreenAndFilterUnknownCallersTipController_filterUnknownFaceTimeCallersTip;
  v4 = sub_1C2E71B44();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16CommunicationsUI42ScreenAndFilterUnknownCallersTipController_filterUnknownCallersTip;
  v6 = sub_1C2E71B04();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v7, v8);
}

uint64_t type metadata accessor for ScreenAndFilterUnknownCallersTipController()
{
  result = qword_1EC05CC68;
  if (!qword_1EC05CC68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2DA70A0()
{
  result = sub_1C2E71B24();
  if (v1 <= 0x3F)
  {
    result = sub_1C2E71B44();
    if (v2 <= 0x3F)
    {
      result = sub_1C2E71B04();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1C2DA71E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2CC8E70;

  return sub_1C2DA6B64(a1, v4, v5, v6);
}

uint64_t sub_1C2DA72A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2CC8E70;

  return sub_1C2DA68E0(a1, v4, v5, v6);
}

uint64_t sub_1C2DA7364(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2CC8E70;

  return sub_1C2DA6284(a1, v4, v5, v6);
}

uint64_t sub_1C2DA7424(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2CC8E70;

  return sub_1C2DA6000(a1, v4, v5, v6);
}

uint64_t sub_1C2DA74E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2C7DC10;

  return sub_1C2DA5B54(a1, v4, v5, v6);
}

uint64_t objectdestroy_20Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2DA75E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2CC8E70;

  return sub_1C2DA58D0(a1, v4, v5, v6);
}

uint64_t sub_1C2DA76A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2CC8E70;

  return sub_1C2DA2ACC(a1, v4, v5, v6);
}

uint64_t sub_1C2DA7758(uint64_t a1)
{
  v4 = *(sub_1C2E71B24() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C2CC8E70;

  return sub_1C2DA317C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1C2DA7878(uint64_t a1)
{
  v4 = *(sub_1C2E71B44() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C2CC8E70;

  return sub_1C2DA3DA4(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_57Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v6 + 8, v4 | 7);
}

uint64_t sub_1C2DA7A78(uint64_t a1)
{
  v4 = *(sub_1C2E71B04() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C2CC8E70;

  return sub_1C2DA4AB8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1C2DA7B98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LockScreenHostingController.init(rootView:)(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = sub_1C2DA8090(a1);
  (*(*(*(v3 + class metadata base offset for LockScreenHostingController) - 8) + 8))(a1);
  return v4;
}

uint64_t LockScreenHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = sub_1C2DA8178(a1);
  (*(*(*(v1 + class metadata base offset for LockScreenHostingController) - 8) + 8))(a1);
  return v3;
}

void *LockScreenHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for LockScreenHostingController);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v12 - v7, v6);
  v8 = sub_1C2E73E34();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id LockScreenHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LockScreenHostingController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LockScreenHostingController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id LockScreenHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockScreenHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C2DA8090(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return sub_1C2E73E44();
}

__n128 AperturePlacementUIView.LayoutOptions.init(pushLeadingTrailingOutwards:layoutTopEdgeToAperture:insets:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  *(a4 + 48) = *(a3 + 32);
  return result;
}

id sub_1C2DA8220()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView____lazy_storage___centerLayoutGuide;
  v2 = *&v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView____lazy_storage___centerLayoutGuide];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView____lazy_storage___centerLayoutGuide];
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
    [v0 addLayoutGuide_];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1C2DA82F0(char *a1)
{
  if (a1[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions + 48])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1C2E7A720;
    v3 = [a1 SBUISA_systemApertureCustomControlsContentLayoutGuide];
    v4 = [v3 leadingAnchor];

    v5 = sub_1C2DA8220();
    v6 = [v5 leadingAnchor];

    v7 = [v4 constraintEqualToAnchor_];
  }

  else
  {
    v8 = *&a1[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions + 24];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1C2E7A720;
    v4 = [a1 leadingAnchor];
    v9 = sub_1C2DA8220();
    v6 = [v9 leadingAnchor];

    v7 = [v4 constraintEqualToAnchor:v6 constant:-v8];
  }

  v10 = v7;

  LODWORD(v11) = 1148829696;
  [v10 setPriority_];
  *(v2 + 32) = v10;
  return v2;
}

uint64_t sub_1C2DA84BC(uint64_t *a1, void *a2, SEL *a3, SEL *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C2E7A720;
    v11 = [*(v4 + *a2) *a3];
    v12 = sub_1C2DA8220();
    v13 = [v12 *a4];

    v14 = [v11 constraintEqualToAnchor_];
    *(v7 + 32) = v14;
    *(v4 + v5) = v7;
  }

  return v7;
}

uint64_t sub_1C2DA85E4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_1C2DA864C(char *a1)
{
  if (a1[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions + 48])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1C2E7A720;
    v3 = [a1 SBUISA_systemApertureCustomControlsContentLayoutGuide];
    v4 = [v3 trailingAnchor];

    v5 = sub_1C2DA8220();
    v6 = [v5 trailingAnchor];

    v7 = [v4 constraintEqualToAnchor_];
  }

  else
  {
    v8 = *&a1[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions + 40];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1C2E7A720;
    v4 = [a1 trailingAnchor];
    v9 = sub_1C2DA8220();
    v6 = [v9 trailingAnchor];

    v7 = [v4 constraintEqualToAnchor:v6 constant:v8];
  }

  v10 = v7;

  LODWORD(v11) = 1148829696;
  [v10 setPriority_];
  *(v2 + 32) = v10;
  return v2;
}

id sub_1C2DA87F4(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions];
  v4 = 0.0;
  if ((v1[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions + 48] & 1) == 0)
  {
    v4 = v3[5] + v3[3] + 8.0;
  }

  [*&v1[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_systemApertureLayout] maximumExpandedSize];
  Width = v5;
  Height = v7;
  if ((v3[6] & 1) != 0 || ([v1 bounds], CGRectGetWidth(v16) <= 0.1) && *(v3 + 48) == 1)
  {
    [v1 bounds];
    if (CGRectGetWidth(v13) > 0.1)
    {
      [v1 bounds];
      Width = CGRectGetWidth(v14);
      [v1 bounds];
      Height = CGRectGetHeight(v15);
    }
  }

  LODWORD(v9) = 1148846080;
  LODWORD(v10) = 1132068864;

  return [a1 systemLayoutSizeFittingSize:Width - v4 withHorizontalFittingPriority:Height - v4 verticalFittingPriority:{v9, v10}];
}

id sub_1C2DA8934()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView;
  v3 = *&v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView];
  sub_1C2DA87F4(v3);
  v5 = v4;

  v6 = *&v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView];
  sub_1C2DA87F4(v6);
  v8 = v7;

  v9 = *&v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView];
  sub_1C2DA87F4(v9);
  v11 = v10;

  v12 = *&v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView];
  sub_1C2DA87F4(v12);
  v14 = v13;

  if (v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions + 48])
  {
    v15 = v5 + v8;
  }

  else
  {
    v15 = v5 + v8 + *&v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions + 16] + *&v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions + 32];
  }

  if (qword_1EC05CFE0 != -1)
  {
    swift_once();
  }

  v16 = sub_1C2E72B44();
  __swift_project_value_buffer(v16, qword_1EC075B70);
  v17 = v0;
  v18 = sub_1C2E72B24();
  v19 = sub_1C2E75FE4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134219776;
    *(v20 + 4) = v5;
    *(v20 + 12) = 2048;
    [*&v1[v2] frame];
    *(v20 + 14) = CGRectGetMinY(v31);
    *(v20 + 22) = 2048;
    *(v20 + 24) = v8;
    *(v20 + 32) = 2048;
    *(v20 + 34) = v11;
    *(v20 + 42) = 2048;
    *(v20 + 44) = v14;
    *(v20 + 52) = 2048;
    v21 = [v17 SBUISA_systemApertureObstructedAreaLayoutGuide];
    [v21 layoutFrame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v32.origin.x = v23;
    v32.origin.y = v25;
    v32.size.width = v27;
    v32.size.height = v29;
    *(v20 + 54) = CGRectGetHeight(v32);
    *(v20 + 62) = 2048;
    [v17 bounds];
    *(v20 + 64) = CGRectGetHeight(v33);
    *(v20 + 72) = 2048;
    *(v20 + 74) = v15;
    _os_log_impl(&dword_1C2C6B000, v18, v19, "AperturePlacementUIView.intrinsicContentSize\ncenterSize.height: %f\ncenterView.frame.minY: %f\nbottomSize.height: %f\ntrailingSize.height: %f\nleadingSize.height: %f\napertureHeight: %f\nboundsHeight: %f\nintrinsicContentSize: %f", v20, 0x52u);
    MEMORY[0x1C6927DF0](v20, -1, -1);
  }

  return [*&v17[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_systemApertureLayout] maximumExpandedSize];
}

char *AperturePlacementUIView.__allocating_init<A, B, C, D>(hostingVC:layout:leading:trailing:center:bottom:)(void *a1, uint64_t *a2, void (*a3)(__n128), uint64_t a4, void (*a5)(__n128), uint64_t a6, void (*a7)(__n128), uint64_t a8, void (*a9)(__n128), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v53 = *a2;
  v58 = a2[1];
  v55 = *(a2 + 2);
  v56 = *(a2 + 1);
  v54 = *(a2 + 48);
  v65 = sub_1C2DA914C(a3, a4, a1, a11, a12, a13, a14, a11);
  v64 = sub_1C2DA914C(a5, a6, a1, a11, a12, a13, a14, a12);
  v62 = sub_1C2DA914C(a7, a8, a1, a11, a12, a13, a14, a13);
  v60 = a1;
  v20 = sub_1C2DA914C(a9, a10, a1, a11, a12, a13, a14, a14);
  v21 = [objc_allocWithZone(v59) initWithFrame_];
  v22 = v21;
  if (v58)
  {
    v23 = &v21[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions];
    *v23 = v53 & 1;
    *(v23 + 1) = v58;
    *(v23 + 1) = v56;
    *(v23 + 2) = v55;
    v23[48] = v54 & 1;
  }

  if (v65)
  {
    v24 = v65;
    v25 = sub_1C2E75C24();
    [v24 setAccessibilityIdentifier_];

    [v24 setTranslatesAutoresizingMaskIntoConstraints_];
    v26 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView;
    [*&v22[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView] removeFromSuperview];
    v27 = *&v22[v26];
    *&v22[v26] = v24;
    v28 = v24;

    [v22 addSubview_];
  }

  if (v64)
  {
    v29 = v64;
    v30 = sub_1C2E75C24();
    [v29 setAccessibilityIdentifier_];

    [v29 setTranslatesAutoresizingMaskIntoConstraints_];
    v31 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView;
    [*&v22[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView] removeFromSuperview];
    v32 = *&v22[v31];
    *&v22[v31] = v29;
    v33 = v29;

    [v22 addSubview_];
  }

  if (v62)
  {
    v34 = v62;
    v35 = sub_1C2E75C24();
    [v34 setAccessibilityIdentifier_];

    [v34 setTranslatesAutoresizingMaskIntoConstraints_];
    v36 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView;
    [*&v22[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView] removeFromSuperview];
    v37 = *&v22[v36];
    *&v22[v36] = v34;
    v38 = v34;

    [v22 addSubview_];
  }

  if (v20)
  {
    v39 = v20;
    v40 = sub_1C2E75C24();
    [v39 setAccessibilityIdentifier_];

    [v39 setTranslatesAutoresizingMaskIntoConstraints_];
    v41 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView;
    [*&v22[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView] removeFromSuperview];
    v42 = *&v22[v41];
    *&v22[v41] = v39;
    v43 = v39;

    [v22 addSubview_];
  }

  sub_1C2DA9E64();
  v44 = *&v22[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView];
  v45 = sub_1C2E75C24();
  [v44 _setLayoutDebuggingIdentifier_];

  v46 = *&v22[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView];
  v47 = sub_1C2E75C24();
  [v46 _setLayoutDebuggingIdentifier_];

  v48 = *&v22[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView];
  v49 = sub_1C2E75C24();
  [v48 _setLayoutDebuggingIdentifier_];

  v50 = *&v22[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView];
  v51 = sub_1C2E75C24();
  [v50 _setLayoutDebuggingIdentifier_];

  return v22;
}

id sub_1C2DA914C(void (*a1)(__n128), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_1C2E743B4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = *(a8 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v14);
  v17 = View.inLockScreenHostingController()();
  (*(v12 + 8))(v16, a8);
  sub_1C2E743A4();
  sub_1C2E73E14();
  v18 = [v17 view];
  if (v18)
  {
    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 clearColor];
    [v20 setBackgroundColor_];

    [v20 setOpaque_];
  }

  [a3 addChildViewController_];

  return v18;
}

char *AperturePlacementUIView.__allocating_init(layout:leading:trailing:center:bottom:)(uint64_t *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = *a1;
  v9 = a1[1];
  v47 = *(a1 + 2);
  v48 = *(a1 + 1);
  v11 = *(a1 + 48);
  v12 = [objc_allocWithZone(v5) initWithFrame_];
  v13 = v12;
  if (v9)
  {
    v14 = &v12[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions];
    *v14 = v10 & 1;
    *(v14 + 1) = v9;
    *(v14 + 1) = v48;
    *(v14 + 2) = v47;
    v14[48] = v11 & 1;
  }

  v15 = 0x1FAB99000;
  p_opt_class_meths = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 48);
  if (a2)
  {
    v17 = a2;
    v18 = sub_1C2E75C24();
    [v17 setAccessibilityIdentifier_];

    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    v19 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView;
    [*&v13[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView] removeFromSuperview];
    v20 = *&v13[v19];
    *&v13[v19] = v17;
    v15 = &property descriptor for KeypadNumber.secondary;
    v21 = v17;

    [v13 addSubview_];
    p_opt_class_meths = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 48);
  }

  if (a3)
  {
    v22 = a3;
    v23 = sub_1C2E75C24();
    [v22 setAccessibilityIdentifier_];

    [v22 setTranslatesAutoresizingMaskIntoConstraints_];
    v24 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView;
    [*&v13[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView] removeFromSuperview];
    v25 = *&v13[v24];
    *&v13[v24] = v22;
    v15 = &property descriptor for KeypadNumber.secondary;
    v26 = v22;

    [v13 addSubview_];
    p_opt_class_meths = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 48);
  }

  if (a4)
  {
    v27 = a4;
    v28 = sub_1C2E75C24();
    [v27 setAccessibilityIdentifier_];

    [v27 setTranslatesAutoresizingMaskIntoConstraints_];
    v29 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView;
    [*&v13[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView] removeFromSuperview];
    v30 = *&v13[v29];
    *&v13[v29] = v27;
    v15 = &property descriptor for KeypadNumber.secondary;
    v31 = v27;

    [v13 addSubview_];
    p_opt_class_meths = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 48);
  }

  if (a5)
  {
    v32 = a5;
    v33 = v15;
    v34 = sub_1C2E75C24();
    [v32 setAccessibilityIdentifier_];

    [v32 &off_1E819D5B8 + 2];
    v35 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView;
    [*&v13[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView] removeFromSuperview];
    v36 = *&v13[v35];
    *&v13[v35] = v32;
    v37 = v32;

    [v13 v33 + 2040];
    p_opt_class_meths = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate.opt_class_meths;
  }

  sub_1C2DA9E64();
  v38 = *(p_opt_class_meths[20] + v13);
  v39 = sub_1C2E75C24();
  [v38 _setLayoutDebuggingIdentifier_];

  v40 = *&v13[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView];
  v41 = sub_1C2E75C24();
  [v40 _setLayoutDebuggingIdentifier_];

  v42 = *&v13[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView];
  v43 = sub_1C2E75C24();
  [v42 _setLayoutDebuggingIdentifier_];

  v44 = *&v13[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView];
  v45 = sub_1C2E75C24();
  [v44 _setLayoutDebuggingIdentifier_];

  return v13;
}

char *sub_1C2DA97CC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_systemApertureLayout;
  *&v4[v9] = [objc_opt_self() sharedInstanceForEmbeddedDisplay];
  v10 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v11 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v12 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v13 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v4[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_hasLayedOutForSmallerSize] = 0;
  v14 = &v4[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions];
  KeyPath = swift_getKeyPath();
  *v14 = 1;
  *(v14 + 1) = KeyPath;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  v14[48] = 1;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView____lazy_storage___centerLayoutGuide] = 0;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView____lazy_storage___leadingOverlapConstraints] = 0;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView____lazy_storage___leadingConstraints] = 0;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView____lazy_storage___trailingOverlapConstraints] = 0;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView____lazy_storage___trailingConstraints] = 0;
  v32.receiver = v4;
  v32.super_class = type metadata accessor for AperturePlacementUIView();
  v16 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView;
  v18 = *&v16[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView];
  v19 = v16;
  v20 = v18;
  v21 = sub_1C2E75C24();
  [v20 _setLayoutDebuggingIdentifier_];

  v22 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView;
  v23 = *&v19[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView];
  v24 = sub_1C2E75C24();
  [v23 _setLayoutDebuggingIdentifier_];

  v25 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView;
  v26 = *&v19[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView];
  v27 = sub_1C2E75C24();
  [v26 _setLayoutDebuggingIdentifier_];

  v28 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView;
  v29 = *&v19[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView];
  v30 = sub_1C2E75C24();
  [v29 _setLayoutDebuggingIdentifier_];

  [v19 addSubview_];
  [v19 addSubview_];
  [v19 addSubview_];
  [v19 addSubview_];

  return v19;
}

void sub_1C2DA9B3C()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for AperturePlacementUIView();
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  [*&v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView] frame];
  MaxY = CGRectGetMaxY(v19);
  v2 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView;
  [*&v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView] frame];
  MinY = CGRectGetMinY(v20);
  v4 = objc_opt_self();
  if (MinY >= MaxY)
  {
    sub_1C2DA82AC();
    sub_1C2CBF630();
    v6 = sub_1C2E75D64();

    [v4 deactivateConstraints_];

    sub_1C2DA82D0();
  }

  else
  {
    sub_1C2DA82D0();
    sub_1C2CBF630();
    v5 = sub_1C2E75D64();

    [v4 deactivateConstraints_];

    sub_1C2DA82AC();
  }

  v7 = sub_1C2E75D64();

  [v4 activateConstraints_];

  [*&v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView] frame];
  v8 = CGRectGetMaxY(v21);
  [*&v0[v2] frame];
  v9 = CGRectGetMinY(v22);
  v10 = objc_opt_self();
  if (v9 >= v8)
  {
    sub_1C2DA8498();
    sub_1C2CBF630();
    v12 = sub_1C2E75D64();

    [v10 deactivateConstraints_];

    sub_1C2DA85C4();
  }

  else
  {
    sub_1C2DA85C4();
    sub_1C2CBF630();
    v11 = sub_1C2E75D64();

    [v10 deactivateConstraints_];

    sub_1C2DA8498();
  }

  v13 = sub_1C2E75D64();

  [v10 activateConstraints_];

  v14 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_hasLayedOutForSmallerSize;
  if ((v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_hasLayedOutForSmallerSize] & 1) != 0 || ([v0 intrinsicContentSize], v16 = v15, objc_msgSend(v0, sel_frame), CGRectGetHeight(v23) >= v16))
  {
    v17 = 0;
  }

  else
  {
    [v0 invalidateIntrinsicContentSize];
    [v0 setNeedsLayout];
    v17 = 1;
  }

  v0[v14] = v17;
}

void sub_1C2DA9E64()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView;
  [*&v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView] setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView;
  [*&v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView] setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView;
  [*&v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView] setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView;
  [*&v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView] setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v6) = 1148846080;
  [*&v0[v2] setContentHuggingPriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [*&v0[v3] setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [*&v0[v2] setContentHuggingPriority:1 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [*&v0[v3] setContentHuggingPriority:1 forAxis:v9];
  LODWORD(v10) = 1148846080;
  [*&v0[v2] setContentCompressionResistancePriority:0 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [*&v0[v3] setContentCompressionResistancePriority:0 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [*&v0[v2] setContentCompressionResistancePriority:1 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [*&v0[v3] setContentCompressionResistancePriority:1 forAxis:v13];
  v104 = v4;
  LODWORD(v14) = 1144750080;
  [*&v0[v4] setContentCompressionResistancePriority:1 forAxis:v14];
  LODWORD(v15) = 1144750080;
  [*&v0[v5] setContentCompressionResistancePriority:1 forAxis:v15];
  LODWORD(v16) = 1144750080;
  [*&v0[v4] setContentHuggingPriority:1 forAxis:v16];
  v103 = v5;
  LODWORD(v17) = 1144750080;
  [*&v0[v5] setContentHuggingPriority:1 forAxis:v17];
  v102 = [v0 SBUISA_systemApertureCustomControlsContentLayoutGuide];
  v105 = [v0 SBUISA_systemApertureObstructedAreaLayoutGuide];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C2E7A710;
  v100 = v2;
  v19 = [*&v0[v2] topAnchor];
  v20 = [v0 property descriptor for FilterMenuViewModel.actionHandler];
  v99 = &v0[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions];

  swift_getAtKeyPath();

  v21 = [v19 constraintEqualToAnchor_];

  LODWORD(v22) = 1148829696;
  [v21 setPriority_];
  *(v18 + 32) = v21;
  *(v18 + 40) = sub_1C2DAAC30(v0, v105, &OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView, &selRef_trailingAnchor, &selRef_leadingAnchor, &selRef_constraintLessThanOrEqualToAnchor_);
  *(v18 + 48) = sub_1C2DAAB80(v0, &OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView, &selRef_leadingAnchor, &selRef_constraintGreaterThanOrEqualToAnchor_);
  v23 = objc_opt_self();
  v24 = sub_1C2DA82D0();
  sub_1C2CA2AE4(v24);
  sub_1C2CBF630();
  v25 = sub_1C2E75D64();

  [v23 activateConstraints_];

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C2E7A710;
  v101 = v3;
  v27 = [*&v0[v3] topAnchor];
  v28 = [v1 SBUISA_systemApertureObstructedAreaLayoutGuide];

  swift_getAtKeyPath();

  v29 = [v27 constraintEqualToAnchor_];

  LODWORD(v30) = 1148829696;
  [v29 setPriority_];
  *(v26 + 32) = v29;
  *(v26 + 40) = sub_1C2DAAB80(v1, &OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView, &selRef_trailingAnchor, &selRef_constraintLessThanOrEqualToAnchor_);
  *(v26 + 48) = sub_1C2DAAC30(v1, v105, &OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView, &selRef_leadingAnchor, &selRef_trailingAnchor, &selRef_constraintGreaterThanOrEqualToAnchor_);
  v31 = sub_1C2DA85C4();
  sub_1C2CA2AE4(v31);
  v32 = sub_1C2E75D64();

  v33 = v23;
  [v23 activateConstraints_];

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1C2E7A720;
  v35 = [*&v1[v104] topAnchor];
  v36 = [v105 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  LODWORD(v38) = 1148829696;
  [v37 setPriority_];
  *(v34 + 32) = v37;
  v39 = sub_1C2E75D64();

  [v33 activateConstraints_];

  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1C2E7A710;
  v41 = sub_1C2DA8220();
  v42 = [v41 widthAnchor];

  v43 = [*&v1[v104] widthAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v40 + 32) = v44;
  v45 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView____lazy_storage___centerLayoutGuide;
  v46 = [*&v1[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView____lazy_storage___centerLayoutGuide] leadingAnchor];
  v47 = [*&v1[v104] leadingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v40 + 40) = v48;
  v49 = [*&v1[v45] trailingAnchor];
  v50 = [*&v1[v104] trailingAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v40 + 48) = v51;
  v52 = sub_1C2E75D64();

  [v33 activateConstraints_];

  if (v99[6])
  {
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1C2E88A60;
    v54 = [*&v1[v103] topAnchor];
    v55 = [*&v1[v104] bottomAnchor];
    v56 = [v54 constraintEqualToAnchor_];

    *(v53 + 32) = v56;
    v57 = [*&v1[v103] leadingAnchor];
    v58 = v102;
    v59 = [v102 leadingAnchor];
    v60 = [v57 constraintEqualToAnchor_];

    LODWORD(v61) = 1148829696;
    [v60 setPriority_];
    *(v53 + 40) = v60;
    v62 = [*&v1[v103] trailingAnchor];
    v63 = [v102 trailingAnchor];
    v64 = [v62 constraintEqualToAnchor_];

    LODWORD(v65) = 1148829696;
    [v64 setPriority_];
    *(v53 + 48) = v64;
    v66 = [*&v1[v103] topAnchor];
    v67 = [*&v1[v100] bottomAnchor];
    v68 = [v66 constraintGreaterThanOrEqualToAnchor_];

    *(v53 + 56) = v68;
    v69 = [*&v1[v103] topAnchor];
    v70 = [*&v1[v101] bottomAnchor];
    v71 = [v69 constraintGreaterThanOrEqualToAnchor_];

    *(v53 + 64) = v71;
    v72 = [v102 bottomAnchor];
    v73 = [*&v1[v103] bottomAnchor];
    v74 = [v72 constraintGreaterThanOrEqualToAnchor_];
    v75 = 1144750080;
  }

  else
  {
    v76 = v99[4];
    v77 = v99[5];
    v78 = v99[3];
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1C2E88A60;
    v79 = [*&v1[v103] topAnchor];
    v80 = [*&v1[v104] bottomAnchor];
    v81 = [v79 constraintEqualToAnchor_];

    *(v53 + 32) = v81;
    v82 = [*&v1[v103] leadingAnchor];
    v83 = [v1 leadingAnchor];
    v84 = [v82 constraintEqualToAnchor:v83 constant:v78];

    v75 = 1148829696;
    LODWORD(v85) = 1148829696;
    [v84 setPriority_];
    *(v53 + 40) = v84;
    v86 = [*&v1[v103] trailingAnchor];
    v87 = [v1 trailingAnchor];
    v88 = [v86 constraintEqualToAnchor:v87 constant:-v77];

    LODWORD(v89) = 1148829696;
    [v88 setPriority_];
    *(v53 + 48) = v88;
    v90 = [*&v1[v103] topAnchor];
    v91 = [*&v1[v100] bottomAnchor];
    v92 = [v90 constraintGreaterThanOrEqualToAnchor_];

    *(v53 + 56) = v92;
    v93 = [*&v1[v103] topAnchor];
    v94 = [*&v1[v101] bottomAnchor];
    v95 = [v93 constraintGreaterThanOrEqualToAnchor_];

    *(v53 + 64) = v95;
    v72 = [v1 bottomAnchor];
    v73 = [*&v1[v103] bottomAnchor];
    v74 = [v72 constraintGreaterThanOrEqualToAnchor:v73 constant:v76];
    v58 = v102;
  }

  v96 = v74;

  LODWORD(v97) = v75;
  [v96 setPriority_];
  *(v53 + 72) = v96;
  v98 = sub_1C2E75D64();

  [v33 activateConstraints_];
}

id sub_1C2DAAB80(unsigned __int8 *a1, void *a2, SEL *a3, SEL *a4)
{
  v7 = a1[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions];
  v8 = [*&a1[*a2] *a3];
  v9 = [a1 *a3];
  v10 = &selRef_constraintEqualToAnchor_;
  if (!v7)
  {
    v10 = a4;
  }

  v11 = [v8 *v10];

  return v11;
}

id sub_1C2DAAC30(uint64_t a1, void *a2, void *a3, SEL *a4, SEL *a5, SEL *a6)
{
  v9 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions);
  v10 = [*(a1 + *a3) *a4];
  v11 = [a2 *a5];
  v12 = &selRef_constraintEqualToAnchor_;
  if (v9)
  {
    v12 = a6;
  }

  v13 = [v10 *v12];

  LODWORD(v14) = 1148829696;
  [v13 setPriority_];
  return v13;
}

id AperturePlacementUIView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AperturePlacementUIView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE **sub_1C2DAAE10(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1C2DAAEE4()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_systemApertureLayout;
  *(v0 + v1) = [objc_opt_self() sharedInstanceForEmbeddedDisplay];
  v2 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v3 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v4 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v5 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_hasLayedOutForSmallerSize) = 0;
  v6 = v0 + OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions;
  KeyPath = swift_getKeyPath();
  *v6 = 1;
  *(v6 + 8) = KeyPath;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 1;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView____lazy_storage___centerLayoutGuide) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView____lazy_storage___leadingOverlapConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView____lazy_storage___leadingConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView____lazy_storage___trailingOverlapConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView____lazy_storage___trailingConstraints) = 0;
  sub_1C2E766F4();
  __break(1u);
}

id sub_1C2DAB148()
{
  v1[0] = xmmword_1C2E88BF0;
  v1[1] = xmmword_1C2E88C00;
  v1[2] = xmmword_1C2E88C10;
  v2 = 1067567809;
  v4 = 0;
  v3 = 0;
  v5 = 0;
  v6 = 1065353216;
  result = [objc_opt_self() _colorEffectCAMatrix_];
  if (result)
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static UIColorEffect.inCallControlsKeypadButton.getter()
{
  v1[0] = xmmword_1C2E88BF0;
  v1[1] = xmmword_1C2E88C00;
  v1[2] = xmmword_1C2E88C10;
  v2 = 1067567809;
  v4 = 0;
  v3 = 0;
  v5 = 0;
  v6 = 1065353216;
  result = [objc_opt_self() _colorEffectCAMatrix_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1C2DAB28C(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = xmmword_1C2E7A980;
  result = [objc_opt_self() _colorEffectCAMatrix_];
  if (result)
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C2DAB328(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = xmmword_1C2E7A980;
  result = [objc_opt_self() _colorEffectCAMatrix_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2DAB3A0(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x1E69E7CC0];
  sub_1C2CA4E1C(0, v5, 0);
  v6 = v16;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;

    a1(&v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v15;
    v16 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1C2CA4E1C((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    *(v6 + 16) = v12 + 1;
    *(v6 + 8 * v12 + 32) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t static GridViewConfiguration.keypad(service:endControlViewModel:width:)(uint64_t a1, uint64_t a2, double a3)
{
  v16[2] = a1;
  v5 = a3 * 0.1976;
  *&v16[3] = a3 * 0.1976;
  *&v16[4] = a3 * 0.1976;
  v6 = sub_1C2DAB3A0(sub_1C2DAB884, v16, &unk_1F4297830);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1C2DD2554(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1C2DD2554((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v6[v8 + 4] = &unk_1F4297870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB38);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C2E7AA50;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = v5;
  *(v10 + 32) = v5;
  *(v9 + 48) = sub_1C2DAC9D8;
  *(v9 + 56) = v10;
  sub_1C2C6E3A4(a1, v17);
  v11 = swift_allocObject();
  sub_1C2C716EC(v17, v11 + 16);
  *(v9 + 64) = sub_1C2DAC9E4;
  *(v9 + 72) = v11;
  v12 = v6[2];
  v13 = v6[3];

  if (v12 >= v13 >> 1)
  {
    v6 = sub_1C2DD2554((v13 > 1), v12 + 1, 1, v6);
  }

  v6[2] = v12 + 1;
  v6[v12 + 4] = v9;
  type metadata accessor for GridViewConfiguration();
  v14 = swift_allocObject();
  sub_1C2E71A94();
  *(v14 + 16) = v6;
  *(v14 + 24) = xmmword_1C2E88C70;
  *(v14 + 48) = 0;
  *(v14 + 56) = 0;
  *(v14 + 40) = 0;
  return v14;
}

uint64_t sub_1C2DAB6EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *result;
  v6 = *(*result + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v21 = a3;
    v25 = MEMORY[0x1E69E7CC0];
    result = sub_1C2CA4E5C(0, v6, 0);
    v10 = 0;
    v7 = v25;
    v11 = (v5 + 56);
    v22 = v6;
    while (v10 < *(v5 + 16))
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      sub_1C2C6E3A4(a2, v24);
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      *(v16 + 24) = v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      sub_1C2C716EC(v24, v16 + 48);
      *(v16 + 88) = a4;
      *(v16 + 96) = a5;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_1C2DACAAC;
      *(v17 + 24) = v16;
      v25 = v7;
      v18 = *(v7 + 16);
      v19 = *(v7 + 24);

      if (v18 >= v19 >> 1)
      {
        result = sub_1C2CA4E5C((v19 > 1), v18 + 1, 1);
        v7 = v25;
      }

      ++v10;
      *(v7 + 16) = v18 + 1;
      v20 = v7 + 16 * v18;
      *(v20 + 32) = sub_1C2DACAC0;
      *(v20 + 40) = v17;
      v11 += 4;
      if (v22 == v10)
      {
        a3 = v21;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1C2DAB8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v55 = a5;
  v50[1] = 0;
  v59 = type metadata accessor for ControlButton(0);
  MEMORY[0x1EEE9AC00](v59);
  v51 = (v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ControlButtonElement(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v50 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v50 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = (v50 - v24);
  v26 = swift_allocObject();
  *(v26 + 2) = a1;
  *(v26 + 3) = a2;
  v56 = a3;
  *(v26 + 4) = a3;
  *(v26 + 5) = a4;
  *v25 = sub_1C2DACAF0;
  v25[1] = v26;
  swift_storeEnumTagMultiPayload();

  v58 = a4;

  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v27 = sub_1C2E74F74();

  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v28 = sub_1C2E74F74();

  v57 = v25;
  sub_1C2D15F5C(v25, v22);
  v29 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v54 = v22;
  sub_1C2D15F5C(v22, v19);
  v53 = v19;
  sub_1C2D15F5C(v19, v16);
  v50[4] = type metadata accessor for ControlButtonConfiguration(0);
  v30 = swift_allocObject();
  v31 = v30 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0;
  *(v31 + 56) = -256;
  v32 = (v30 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityIdentifier);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v30 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityValue);
  *v33 = 0;
  v33[1] = 0;
  v34 = v30 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityTraits;
  *v34 = 0;
  v50[0] = v34;
  *(v34 + 8) = 1;

  sub_1C2E71A94();
  *(v30 + 16) = 1;
  v50[3] = v27;
  *(v30 + 24) = v27;
  *(v30 + 32) = 1;
  v50[2] = v28;
  *(v30 + 40) = v28;
  *(v30 + 48) = 1;
  v52 = v16;
  sub_1C2D15F5C(v16, v30 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element);
  *(v30 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor) = v29;
  v35 = v30 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__clipShape;
  *v35 = 0;
  *(v35 + 8) = 1;
  v36 = v30 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration;
  *v36 = sub_1C2DAC1A0;
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v62 = -256;

  sub_1C2D7E988(v60);
  swift_beginAccess();
  if (v32[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v50[-3] = 0;
    v50[-2] = 0;
    v50[-4] = v30;
    *&v60[0] = v30;
    sub_1C2CF25A0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
    sub_1C2E71A54();
  }

  else
  {
    *v32 = 0;
    v32[1] = 0;
  }

  swift_beginAccess();
  if (v33[1])
  {
    v38 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v38);
    v50[-3] = 0;
    v50[-2] = 0;
    v50[-4] = v30;
    *&v60[0] = v30;
    sub_1C2CF25A0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
    sub_1C2E71A54();
  }

  else
  {
    *v33 = 0;
    v33[1] = 0;
  }

  v39 = v50[0];
  swift_beginAccess();
  if (*(v39 + 8))
  {

    sub_1C2D15FC0(v52);
    sub_1C2D15FC0(v53);
    sub_1C2D15FC0(v54);
    *v39 = 0;
    *(v39 + 8) = 1;
  }

  else
  {
    v40 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v40);
    v50[-4] = v30;
    v50[-3] = 0;
    LOBYTE(v50[-2]) = 1;
    *&v60[0] = v30;
    sub_1C2CF25A0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
    sub_1C2E71A54();

    sub_1C2D15FC0(v52);
    sub_1C2D15FC0(v53);
    sub_1C2D15FC0(v54);
  }

  sub_1C2C6E3A4(v55, v60);
  v41 = swift_allocObject();
  sub_1C2C716EC(v60, v41 + 16);
  v42 = v58;
  *(v41 + 56) = v56;
  *(v41 + 64) = v42;
  v43 = v59;
  v44 = *(v59 + 28);
  v45 = swift_getKeyPath();
  v46 = v51;
  *(v51 + v44) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2D0);
  swift_storeEnumTagMultiPayload();
  *v46 = sub_1C2DACAFC;
  v46[1] = v41;
  sub_1C2CF25A0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

  sub_1C2E754C4();
  v47 = (v46 + *(v43 + 24));
  *v47 = a6;
  v47[1] = a7;
  sub_1C2CF25A0(&qword_1EC05C608, type metadata accessor for ControlButton);
  v48 = sub_1C2E75374();

  sub_1C2D15FC0(v57);
  return v48;
}

uint64_t sub_1C2DAC108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  sub_1C2D966F0(a3, a4, v7, a2, 0, 0);
  sub_1C2DACB64(v7, a2);
  sub_1C2DACBA8();
  return sub_1C2E75374();
}

double sub_1C2DAC1A0(uint64_t a1)
{
  v2 = sub_1C2E73DB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8.n128_u64[0] = 26.0;
  if (v7 != *MEMORY[0x1E697F658] && v7 != *MEMORY[0x1E697F690])
  {
    v10 = v7 == *MEMORY[0x1E697F698] || v7 == *MEMORY[0x1E697F680];
    v11 = v10 || v7 == *MEMORY[0x1E697F650];
    v12 = v11 || v7 == *MEMORY[0x1E697F660];
    if (!v12 && v7 != *MEMORY[0x1E697F630])
    {
      if (v7 == *MEMORY[0x1E697F670] || v7 == *MEMORY[0x1E697F668] || v7 == *MEMORY[0x1E697F678] || v7 == *MEMORY[0x1E697F640] || v7 == *MEMORY[0x1E697F648])
      {
        v8.n128_u64[0] = 0x4041000000000000;
      }

      else
      {
        (*(v3 + 8))(v6, v2, v8);
        v8.n128_u64[0] = 26.0;
      }
    }
  }

  return v8.n128_f64[0];
}

uint64_t sub_1C2DAC378@<X0>(uint64_t *a1@<X8>)
{
  sub_1C2E75744();
  sub_1C2E73274();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062100);
  sub_1C2DACBFC();
  result = sub_1C2E75374();
  *a1 = result;
  return result;
}

uint64_t sub_1C2DAC434@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = type metadata accessor for ControlButton(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = *(a1 + 16);
  swift_getKeyPath();
  v16[1] = v12;
  sub_1C2CF25A0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v13 = *(v8 + 28);
  *(v10 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2D0);
  swift_storeEnumTagMultiPayload();
  *v10 = sub_1C2DACAA4;
  v10[1] = v11;
  type metadata accessor for ControlButtonConfiguration(0);
  sub_1C2CF25A0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

  sub_1C2E754C4();
  v14 = (v10 + *(v8 + 24));
  *v14 = a3;
  v14[1] = a4;
  sub_1C2CF25A0(&qword_1EC05C608, type metadata accessor for ControlButton);
  result = sub_1C2E75374();
  *a2 = result;
  return result;
}

uint64_t sub_1C2DAC680@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a1;
  v19 = a2;
  v2 = sub_1C2E757E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0620E8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v11 = sub_1C2E74534();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = sub_1C2E745C4();
  sub_1C2CB410C(v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E6981DF0], v2);
  type metadata accessor for ControlTextConfiguration();
  v13 = swift_allocObject();
  v14 = v13 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__lineLimit;
  *v14 = 0;
  v14[8] = 1;
  sub_1C2E71A94();
  v13[2] = 0x79654B2065646948;
  v13[3] = 0xEB00000000646170;
  v13[4] = v10;
  v13[5] = v12;
  (*(v3 + 32))(v13 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__blendMode, v5, v2);
  *(v13 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__wrapText) = 0;
  *v14 = 0;
  v14[8] = 1;
  *(v13 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__alignment) = 0;
  v21 = v13;
  sub_1C2C6E3A4(v18, v20);
  v15 = swift_allocObject();
  sub_1C2C716EC(v20, v15 + 16);
  v16 = sub_1C2DACA50();
  sub_1C2E749F4();

  *&v20[0] = &type metadata for ControlText;
  *(&v20[0] + 1) = v16;
  swift_getOpaqueTypeConformance2();
  result = sub_1C2E75374();
  *v19 = result;
  return result;
}

uint64_t sub_1C2DAC9FC()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

unint64_t sub_1C2DACA50()
{
  result = qword_1EC0620F0;
  if (!qword_1EC0620F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0620F0);
  }

  return result;
}

uint64_t sub_1C2DACAC0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1C2DACAFC()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  return (*(v4 + 8))(v1, v2, v3, v4);
}

uint64_t sub_1C2DACB64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1C2DACBA8()
{
  result = qword_1EC0620F8;
  if (!qword_1EC0620F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0620F8);
  }

  return result;
}

unint64_t sub_1C2DACBFC()
{
  result = qword_1EC062108;
  if (!qword_1EC062108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062108);
  }

  return result;
}

uint64_t (*AudioCallVoicemailControlViewModel.buttonAction.getter())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2DACD80;
}

uint64_t sub_1C2DACCE0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2C6E3A4(result + 24, v3);

    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 8))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return result;
}

uint64_t AudioCallVoicemailControlViewModel.__allocating_init(service:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AudioCallVoicemailControlViewModel.init(service:)(a1);
  return v2;
}

uint64_t AudioCallVoicemailControlViewModel.init(service:)(uint64_t a1)
{
  v19 = a1;
  v3 = sub_1C2E757E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  sub_1C2E71A94();
  sub_1C2C6E3A4(a1, v1 + 24);
  v26 = xmmword_1C2E88D60;
  v27 = 1;
  sub_1C2DAD650(&qword_1EC062118, type metadata accessor for AudioCallVoicemailControlViewModel);
  v10 = sub_1C2DFDC24(0, &v26);
  sub_1C2C77608(v26, *(&v26 + 1), v27);
  swift_getKeyPath();
  v22 = v10;
  v23 = sub_1C2DAD264;
  v24 = 0;
  v25 = 0;
  *&v26 = v10;
  sub_1C2DAD650(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A54();

  v11 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v12 = sub_1C2E74534();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = sub_1C2E745C4();
  sub_1C2CB410C(v9);
  (*(v4 + 104))(v6, *MEMORY[0x1E6981DF0], v3);
  type metadata accessor for ControlTextConfiguration();
  v14 = swift_allocObject();
  v15 = v14 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__lineLimit;
  *v15 = 0;
  v15[8] = 1;
  sub_1C2E71A94();
  v14[2] = 0x69616D6563696F56;
  v14[3] = 0xE90000000000006CLL;
  v14[4] = v11;
  v14[5] = v13;
  (*(v4 + 32))(v14 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__blendMode, v6, v3);
  *(v14 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__wrapText) = 0;
  *v15 = 0;
  v15[8] = 1;
  *(v14 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__alignment) = 0;
  type metadata accessor for StackedControlButtonConfiguration();
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  sub_1C2E71A94();
  *(v16 + 16) = v10;
  swift_getKeyPath();
  v20 = v16;
  v21 = v14;
  *&v26 = v16;
  sub_1C2DAD650(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);

  sub_1C2E71A54();

  __swift_destroy_boxed_opaque_existential_1(v19);
  result = v18;
  *(v18 + 16) = v16;
  return result;
}

double sub_1C2DAD264(uint64_t a1)
{
  v2 = sub_1C2E73DB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8.n128_u64[0] = 18.0;
  if (v7 != *MEMORY[0x1E697F658] && v7 != *MEMORY[0x1E697F690])
  {
    v10 = v7 == *MEMORY[0x1E697F698] || v7 == *MEMORY[0x1E697F680];
    v11 = v10 || v7 == *MEMORY[0x1E697F650];
    v12 = v11 || v7 == *MEMORY[0x1E697F660];
    if (!v12 && v7 != *MEMORY[0x1E697F630])
    {
      v8.n128_u64[0] = 22.0;
      if (v7 != *MEMORY[0x1E697F670] && v7 != *MEMORY[0x1E697F668] && v7 != *MEMORY[0x1E697F678] && v7 != *MEMORY[0x1E697F640] && v7 != *MEMORY[0x1E697F648])
      {
        (*(v3 + 8))(v6, v2, v8);
        v8.n128_u64[0] = 18.0;
      }
    }
  }

  return v8.n128_f64[0];
}

uint64_t AudioCallVoicemailControlViewModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v1 = OBJC_IVAR____TtC16CommunicationsUI34AudioCallVoicemailControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AudioCallVoicemailControlViewModel.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v1 = OBJC_IVAR____TtC16CommunicationsUI34AudioCallVoicemailControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t (*sub_1C2DAD550())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2DAD774;
}

uint64_t type metadata accessor for AudioCallVoicemailControlViewModel()
{
  result = qword_1EC062128;
  if (!qword_1EC062128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2DAD5F8(uint64_t a1)
{
  result = sub_1C2DAD650(&qword_1EC062120, type metadata accessor for AudioCallVoicemailControlViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C2DAD650(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2DAD6A0()
{
  result = sub_1C2E71AA4();
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

double *SupplementaryControlViewConfiguration.__allocating_init(arrangement:buttonSize:edgeInsets:)(__int128 *a1, __int128 *a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = swift_allocObject();
  sub_1C2C716EC(a1, v18);
  sub_1C2C716EC(a2, v19 + 8);
  v17[0] = v19[0];
  v17[1] = v19[1];
  v17[2] = v19[2];
  v16[0] = v18[0];
  v16[1] = v18[1];
  sub_1C2C716EC(v16, (v14 + 2));
  sub_1C2C716EC((v17 + 8), (v14 + 7));
  v14[12] = a3;
  v14[13] = a4;
  v14[14] = a5;
  v14[15] = a6;
  v14[16] = a7;
  return v14;
}

uint64_t sub_1C2DAD854@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_1C2C736A4(v3 + 16, v5, &qword_1EC062138);
  sub_1C2C716EC(v5, a2);
  return sub_1C2C716EC(&v6, a2 + 40);
}

uint64_t sub_1C2DAD8D4(uint64_t a1, uint64_t *a2)
{
  sub_1C2C736A4(a1, v9, &qword_1EC062138);
  v3 = *a2;
  sub_1C2C716EC(v9, v7);
  sub_1C2C716EC(&v10, v8 + 8);
  v6[0] = v8[0];
  v6[1] = v8[1];
  v6[2] = v8[2];
  v5[0] = v7[0];
  v5[1] = v7[1];
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + 16);
  sub_1C2C716EC(v5, v3 + 16);
  __swift_destroy_boxed_opaque_existential_1(v3 + 56);
  sub_1C2C716EC((v6 + 8), v3 + 56);
  return swift_endAccess();
}

uint64_t sub_1C2DAD9A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C2C736A4(v2 + 16, v6, &qword_1EC062138);
  sub_1C2C716EC(v6, a1);
  return sub_1C2C716EC(&v7, a2);
}

uint64_t sub_1C2DADA20(__int128 *a1, __int128 *a2)
{
  sub_1C2C716EC(a1, v7);
  sub_1C2C716EC(a2, v8 + 8);
  v6[0] = v8[0];
  v6[1] = v8[1];
  v6[2] = v8[2];
  v5[0] = v7[0];
  v5[1] = v7[1];
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  sub_1C2C716EC(v5, v2 + 16);
  __swift_destroy_boxed_opaque_existential_1(v2 + 56);
  sub_1C2C716EC((v6 + 8), v2 + 56);
  return swift_endAccess();
}

uint64_t sub_1C2DADAFC(double a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_1C2DADBC4(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = a3;
  v4[16] = a4;
  return result;
}

double *SupplementaryControlViewConfiguration.init(arrangement:buttonSize:edgeInsets:)(__int128 *a1, __int128 *a2, double a3, double a4, double a5, double a6, double a7)
{
  sub_1C2C716EC(a1, v17);
  sub_1C2C716EC(a2, v18 + 8);
  v16[0] = v18[0];
  v16[1] = v18[1];
  v16[2] = v18[2];
  v15[0] = v17[0];
  v15[1] = v17[1];
  sub_1C2C716EC(v15, (v7 + 2));
  sub_1C2C716EC((v16 + 8), (v7 + 7));
  v7[12] = a3;
  v7[13] = a4;
  v7[14] = a5;
  v7[15] = a6;
  v7[16] = a7;
  return v7;
}

uint64_t SupplementaryControlViewConfiguration.__deallocating_deinit()
{
  sub_1C2C73644(v0 + 16, &qword_1EC062138);

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

__n128 SupplementaryControlView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062140);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  v6 = *v1;
  swift_beginAccess();
  v7 = *(v6 + 96);
  v8 = sub_1C2E73C24();
  LOBYTE(v44[0]) = 1;
  sub_1C2DAE0CC(v6, &v29, v7, v7);
  v40 = v33;
  v41 = v34;
  v42 = v35;
  v36 = v29;
  v37 = v30;
  v38 = v31;
  v39 = v32;
  v43[0] = v29;
  v43[1] = v30;
  v43[2] = v31;
  v43[3] = v32;
  v43[4] = v33;
  v43[5] = v34;
  v43[6] = v35;
  sub_1C2C736A4(&v36, &v27, &qword_1EC062148);
  sub_1C2C73644(v43, &qword_1EC062148);
  *(&v28[3] + 7) = v39;
  *(&v28[4] + 7) = v40;
  *(&v28[5] + 7) = v41;
  *(&v28[6] + 7) = v42;
  *(v28 + 7) = v36;
  *(&v28[1] + 7) = v37;
  *(&v28[2] + 7) = v38;
  v9 = v44[0];
  swift_beginAccess();
  v10 = *(v6 + 104);
  v24 = *(v6 + 120);
  v25 = v10;
  LOBYTE(v6) = sub_1C2E74454();
  LOBYTE(v29) = 0;
  v11 = *(v3 + 44);
  v12 = *MEMORY[0x1E697DBA8];
  v13 = sub_1C2E730D4();
  v14 = *(v13 - 8);
  (*(v14 + 104))(&v5[v11], v12, v13);
  (*(v14 + 56))(&v5[v11], 0, 1, v13);
  v15 = v28[5];
  *(v5 + 81) = v28[4];
  *(v5 + 97) = v15;
  *(v5 + 113) = v28[6];
  v16 = v28[1];
  *(v5 + 17) = v28[0];
  *(v5 + 33) = v16;
  v17 = v28[3];
  *(v5 + 49) = v28[2];
  *v5 = v8;
  *(v5 + 1) = 0;
  v5[16] = v9;
  *(v5 + 16) = *(&v28[6] + 15);
  *(v5 + 65) = v17;
  v5[136] = v6;
  *(v5 + 35) = *(v44 + 3);
  *(v5 + 137) = v44[0];
  v18 = v24;
  *(v5 + 9) = v25;
  *(v5 + 10) = v18;
  v5[176] = 0;
  sub_1C2E75744();
  sub_1C2E737F4();
  v19 = v26;
  sub_1C2DAE3CC(v5, v26);
  v20 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062150) + 36);
  v21 = v34;
  *(v20 + 64) = v33;
  *(v20 + 80) = v21;
  *(v20 + 96) = v35;
  v22 = v30;
  *v20 = v29;
  *(v20 + 16) = v22;
  result = v32;
  *(v20 + 32) = v31;
  *(v20 + 48) = result;
  return result;
}

uint64_t sub_1C2DAE0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  swift_beginAccess();
  sub_1C2C736A4(a1 + 16, &v33, &qword_1EC062138);
  sub_1C2C716EC(&v33, v40);
  sub_1C2C716EC(&v36, v39);
  sub_1C2C716EC(v40, &v33);
  sub_1C2C716EC(v39, &v36);
  v8 = v34;
  v9 = v35;
  __swift_project_boxed_opaque_existential_1(&v33, v34);
  v24 = (*(v9 + 24))(v8, v9);
  v11 = v10;
  sub_1C2C736A4(a1 + 16, &v25, &qword_1EC062138);
  sub_1C2C716EC(&v25, v32);
  sub_1C2C716EC(&v28, v31);
  sub_1C2C716EC(v32, &v25);
  sub_1C2C716EC(v31, &v28);
  v12 = v26;
  v13 = v27;
  __swift_project_boxed_opaque_existential_1(&v25, v26);
  v14 = (*(v13 + 16))(v12, v13);
  sub_1C2C73644(&v25, &qword_1EC062138);
  sub_1C2C73644(&v33, &qword_1EC062138);
  sub_1C2C736A4(a1 + 16, &v33, &qword_1EC062138);
  sub_1C2C716EC(&v33, v40);
  sub_1C2C716EC(&v36, v39);
  sub_1C2C716EC(v40, &v33);
  sub_1C2C716EC(v39, &v36);
  v15 = v37;
  v16 = v38;
  __swift_project_boxed_opaque_existential_1(&v36, v37);
  v17 = (*(v16 + 24))(v15, v16);
  v19 = v18;
  sub_1C2C736A4(a1 + 16, &v25, &qword_1EC062138);
  sub_1C2C716EC(&v25, v32);
  sub_1C2C716EC(&v28, v31);
  sub_1C2C716EC(v32, &v25);
  sub_1C2C716EC(v31, &v28);
  v20 = v29;
  v21 = v30;
  __swift_project_boxed_opaque_existential_1(&v28, v29);
  v22 = (*(v21 + 16))(v20, v21);
  sub_1C2C73644(&v25, &qword_1EC062138);
  sub_1C2C73644(&v33, &qword_1EC062138);
  LOBYTE(v33) = 1;
  *a2 = v24;
  *(a2 + 8) = v11;
  *(a2 + 16) = v14;
  *(a2 + 24) = a3;
  *(a2 + 32) = a4;
  *(a2 + 40) = 0x4018000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = v17;
  *(a2 + 72) = v19;
  *(a2 + 80) = v22;
  *(a2 + 88) = a3;
  *(a2 + 96) = a4;
  *(a2 + 104) = 0x4018000000000000;
}

uint64_t sub_1C2DAE3CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2DAE600()
{
  result = qword_1EC062158;
  if (!qword_1EC062158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062150);
    sub_1C2DAE68C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062158);
  }

  return result;
}

unint64_t sub_1C2DAE68C()
{
  result = qword_1EC062160;
  if (!qword_1EC062160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062140);
    sub_1C2DAE744();
    sub_1C2C94F38(&qword_1EC062188, &qword_1EC062190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062160);
  }

  return result;
}

unint64_t sub_1C2DAE744()
{
  result = qword_1EC062168;
  if (!qword_1EC062168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062170);
    sub_1C2C94F38(&qword_1EC062178, &qword_1EC062180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062168);
  }

  return result;
}

uint64_t sub_1C2DAE7FC()
{
  v0 = sub_1C2E72B44();
  __swift_allocate_value_buffer(v0, qword_1EC075B58);
  __swift_project_value_buffer(v0, qword_1EC075B58);
  return sub_1C2E72B34();
}

uint64_t sub_1C2DAE878()
{
  v0 = sub_1C2E72B44();
  __swift_allocate_value_buffer(v0, qword_1EC075B70);
  __swift_project_value_buffer(v0, qword_1EC075B70);
  return sub_1C2E72B34();
}

uint64_t sub_1C2DAE8F0()
{
  v0 = sub_1C2E72B44();
  __swift_allocate_value_buffer(v0, qword_1EC075B88);
  __swift_project_value_buffer(v0, qword_1EC075B88);
  return sub_1C2E72B34();
}

uint64_t sub_1C2DAE970()
{
  v0 = sub_1C2E72B44();
  __swift_allocate_value_buffer(v0, qword_1EC075A30);
  __swift_project_value_buffer(v0, qword_1EC075A30);
  return sub_1C2E72B34();
}

id sub_1C2DAE9F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 centerYAnchor];
  *a2 = result;
  return result;
}

id sub_1C2DAEA2C(void (*a1)(__int128 *__return_ptr, __n128), uint64_t a2, void *a3)
{
  v5 = sub_1C2E743B4();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  a1(&v15, v6);
  v20[2] = v17;
  v20[3] = v18;
  v21[0] = v19[0];
  *(v21 + 9) = *(v19 + 9);
  v20[0] = v15;
  v20[1] = v16;
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0621C0));
  v24 = v17;
  v25 = v18;
  v26[0] = v19[0];
  *(v26 + 9) = *(v19 + 9);
  v22 = v15;
  v23 = v16;
  sub_1C2C736A4(v20, &v14, &qword_1EC0621C8);
  v8 = sub_1C2E73E44();
  v24 = v17;
  v25 = v18;
  v26[0] = v19[0];
  *(v26 + 9) = *(v19 + 9);
  v22 = v15;
  v23 = v16;
  sub_1C2C73644(&v22, &qword_1EC0621C8);
  sub_1C2E743A4();
  sub_1C2E73E14();
  v9 = [v8 view];
  if (v9)
  {
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 clearColor];
    [v11 setBackgroundColor_];

    [v11 setOpaque_];
  }

  [a3 addChildViewController_];

  return v9;
}

id sub_1C2DAEC44(void (*a1)(void *__return_ptr, __n128), uint64_t a2, void *a3)
{
  v5 = sub_1C2E743B4();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  a1(v16, v6);
  v7 = v16[0];
  v8 = v16[1];
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0621B8));

  v10 = sub_1C2E73E44();

  sub_1C2E743A4();
  sub_1C2E73E14();
  v11 = [v10 view];
  if (v11)
  {
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 clearColor];
    [v13 setBackgroundColor_];

    [v13 setOpaque_];
  }

  [a3 addChildViewController_];

  return v11;
}

id sub_1C2DAEDD4(void (*a1)(uint64_t *__return_ptr, __n128), uint64_t a2, void *a3)
{
  v5 = sub_1C2E743B4();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  a1(&v22, v6);
  v7 = v22;
  v8 = v23;
  v9 = v24;
  v10 = v25;
  v11 = v26;
  v12 = v27;
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0621B0));
  LOBYTE(v20) = v8;
  LOBYTE(v21) = v10;
  v14 = sub_1C2E73E44();
  sub_1C2E743A4();
  sub_1C2E73E14();
  v15 = [v14 view];
  if (v15)
  {
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 clearColor];
    [v17 setBackgroundColor_];

    [v17 setOpaque_];
  }

  [a3 addChildViewController_];

  return v15;
}

id sub_1C2DAEF74(void (*a1)(void *__return_ptr, __n128), uint64_t a2, void *a3)
{
  v5 = sub_1C2E743B4();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  a1(v22, v6);
  v8 = v22[0];
  v7 = v22[1];
  v10 = v22[2];
  v9 = v22[3];
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0621A8));
  v20 = v8;
  v21 = v10;

  v12 = v8;

  v13 = v10;
  v14 = sub_1C2E73E44();

  sub_1C2E743A4();
  sub_1C2E73E14();
  v15 = [v14 view];
  if (v15)
  {
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 clearColor];
    [v17 setBackgroundColor_];

    [v17 setOpaque_];
  }

  [a3 addChildViewController_];

  return v15;
}

id sub_1C2DAF12C(void (*a1)(void *__return_ptr, __n128), uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = sub_1C2E743B4();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  a1(v20, v8);
  v9 = v20[0];
  v10 = v20[1];
  v11 = v22;
  v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(a4));
  v19 = v21;
  v13 = sub_1C2E73E44();
  sub_1C2E743A4();
  sub_1C2E73E14();
  v14 = [v13 view];
  if (v14)
  {
    v15 = objc_opt_self();
    v16 = v14;
    v17 = [v15 clearColor];
    [v16 setBackgroundColor_];

    [v16 setOpaque_];
  }

  [a3 addChildViewController_];

  return v14;
}

uint64_t ApertureCallScreeningReceptionistIncomingComposer.init(bottomStatusViewModel:participantViewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void __swiftcall ApertureCallScreeningReceptionistIncomingComposer.compose(hostingVC:)(UIView *__return_ptr retstr, UIViewController *hostingVC)
{
  v5 = *v2;
  v4 = v2[1];
  v13[0] = 1;
  v13[1] = swift_getKeyPath();
  v14 = xmmword_1C2E88FE0;
  v15 = xmmword_1C2E88FF0;
  v16 = 0;
  v11 = v5;
  v12 = v4;
  v8 = v5;
  v9 = v4;
  v6 = hostingVC;
  sub_1C2DAF978(v6, v13, sub_1C2DB03EC, 0, sub_1C2DB03EC, 0, sub_1C2DAF904, v10, sub_1C2DAF970, v7);
}

double sub_1C2DAF3A4@<D0>(uint64_t a1@<X8>)
{
  sub_1C2E75744();
  sub_1C2E73274();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  result = *&v7;
  *(a1 + 32) = v7;
  return result;
}

id sub_1C2DAF418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v47 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v48 = &v44 - v5;
  v6 = sub_1C2E71784();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IntelligenceBodyViewModel.Action(0);
  MEMORY[0x1EEE9AC00](v10);
  KeyPath = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v44 - v23;
  (*(v7 + 56))(&v44 - v23, 1, 1, v6, v22);
  result = [objc_opt_self() faceTimeShowInCallUIURL];
  if (result)
  {
    v26 = result;
    sub_1C2E71754();

    (*(v7 + 32))(v14, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_1C2DB0388(v14, v17);
    sub_1C2C736A4(v24, v20, &unk_1EC061C20);
    v27 = KeyPath;
    sub_1C2CBE768(v17, KeyPath);
    type metadata accessor for IntelligenceBodyViewModel(0);
    v28 = swift_allocObject();
    sub_1C2E71A94();
    sub_1C2CBE7CC(v17);
    sub_1C2C73644(v24, &unk_1EC061C20);
    *(v28 + 16) = 0;
    sub_1C2CEA0A0(v20, v28 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_callImageURL);
    v29 = (v28 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_contactIdentifier);
    *v29 = 0;
    v29[1] = 0;
    sub_1C2DB0388(v27, v28 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_action);
    KeyPath = swift_getKeyPath();
    v51 = v28;
    sub_1C2E75174();
    v30 = v49;
    v31 = v50;
    v51 = v46;
    type metadata accessor for ParticipantLabelViewModel();

    sub_1C2E75174();
    v32 = v49;
    v33 = v50;
    v34 = sub_1C2E74474();
    swift_getKeyPath();
    v35 = v47;
    v49 = v47;
    sub_1C2D16CBC();
    sub_1C2E71A64();

    v36 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessage;
    swift_beginAccess();
    v37 = v35 + v36;
    v38 = v48;
    sub_1C2C736A4(v37, v48, &qword_1EC05E088);
    v39 = sub_1C2E71664();
    (*(*(v39 - 8) + 48))(v38, 1, v39);
    sub_1C2C73644(v38, &qword_1EC05E088);
    result = sub_1C2E73034();
    LOBYTE(v51) = 0;
    v52 = 0;
    *a3 = v30;
    *(a3 + 8) = v31;
    *(a3 + 16) = v32;
    *(a3 + 24) = v33;
    *(a3 + 32) = KeyPath;
    *(a3 + 40) = 0;
    *(a3 + 48) = v34;
    *(a3 + 56) = v40;
    *(a3 + 64) = v41;
    *(a3 + 72) = v42;
    *(a3 + 80) = v43;
    *(a3 + 88) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2DAF90C@<X0>(void *a1@<X8>)
{
  type metadata accessor for IntelligenceMessageViewModel();

  result = sub_1C2E75174();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

char *sub_1C2DAF978(void *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, __n128), uint64_t a4, void (*a5)(uint64_t *__return_ptr, __n128), uint64_t a6, void (*a7)(__int128 *__return_ptr, __n128), uint64_t a8, void (*a9)(void *__return_ptr, __n128), uint64_t a10)
{
  v16 = sub_1C2DAEDD4(a3, a4, a1);
  v57 = sub_1C2DAEDD4(a5, a6, a1);
  v17 = sub_1C2DAEA2C(a7, a8, a1);
  v18 = sub_1C2DAEC44(a9, a10, a1);
  v19 = [objc_allocWithZone(type metadata accessor for AperturePlacementUIView()) initWithFrame_];
  v20 = v19;
  v21 = *(a2 + 8);
  if (v21)
  {
    v22 = &v19[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions];
    *v22 = *a2;
    *(v22 + 1) = v21;
    v23 = *(a2 + 32);
    *(v22 + 1) = *(a2 + 16);
    *(v22 + 2) = v23;
    v22[48] = *(a2 + 48);
  }

  v24 = 0x1FAB99000;
  p_opt_class_meths = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 48);
  if (v16)
  {
    v26 = v16;
    v27 = sub_1C2E75C24();
    [v26 setAccessibilityIdentifier_];

    [v26 setTranslatesAutoresizingMaskIntoConstraints_];
    v28 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView;
    [*&v20[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView] removeFromSuperview];
    v29 = *&v20[v28];
    *&v20[v28] = v26;
    v24 = &property descriptor for KeypadNumber.secondary;
    v30 = v26;

    [v20 addSubview_];
    p_opt_class_meths = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 48);
  }

  if (v57)
  {
    v31 = v57;
    v32 = sub_1C2E75C24();
    [v31 setAccessibilityIdentifier_];

    [v31 setTranslatesAutoresizingMaskIntoConstraints_];
    v33 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView;
    [*&v20[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView] removeFromSuperview];
    v34 = *&v20[v33];
    *&v20[v33] = v31;
    v24 = &property descriptor for KeypadNumber.secondary;
    v35 = v31;

    [v20 addSubview_];
    p_opt_class_meths = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 48);
  }

  v56 = v16;
  if (v17)
  {
    v36 = v17;
    v37 = sub_1C2E75C24();
    [v36 setAccessibilityIdentifier_];

    [v36 setTranslatesAutoresizingMaskIntoConstraints_];
    v38 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView;
    [*&v20[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView] removeFromSuperview];
    v39 = *&v20[v38];
    *&v20[v38] = v36;
    v24 = &property descriptor for KeypadNumber.secondary;
    v40 = v36;

    [v20 addSubview_];
    p_opt_class_meths = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 48);
  }

  if (v18)
  {
    v41 = v18;
    v42 = v24;
    v43 = sub_1C2E75C24();
    [v41 setAccessibilityIdentifier_];

    [v41 &off_1E819D5B8 + 2];
    v44 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView;
    [*&v20[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView] removeFromSuperview];
    v45 = *&v20[v44];
    *&v20[v44] = v41;
    v46 = v41;

    [v20 v42 + 2040];
    p_opt_class_meths = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate.opt_class_meths;
  }

  sub_1C2DA9E64();
  v47 = *(p_opt_class_meths[20] + v20);
  v48 = sub_1C2E75C24();
  [v47 _setLayoutDebuggingIdentifier_];

  v49 = *&v20[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView];
  v50 = sub_1C2E75C24();
  [v49 _setLayoutDebuggingIdentifier_];

  v51 = *&v20[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView];
  v52 = sub_1C2E75C24();
  [v51 _setLayoutDebuggingIdentifier_];

  v53 = *&v20[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView];
  v54 = sub_1C2E75C24();
  [v53 _setLayoutDebuggingIdentifier_];

  return v20;
}

char *sub_1C2DAFE74(void *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, __n128), uint64_t a4, void (*a5)(void *__return_ptr, __n128), uint64_t a6, void (*a7)(void *__return_ptr, __n128), uint64_t a8, void (*a9)(void *__return_ptr, __n128), uint64_t a10)
{
  v16 = sub_1C2DAEDD4(a3, a4, a1);
  v17 = sub_1C2DAEF74(a5, a6, a1);
  v59 = sub_1C2DAF12C(a7, a8, a1, &qword_1EC0621A0);
  v18 = sub_1C2DAF12C(a9, a10, a1, &qword_1EC062198);
  v19 = [objc_allocWithZone(type metadata accessor for AperturePlacementUIView()) initWithFrame_];
  v20 = v19;
  v21 = *(a2 + 8);
  if (v21)
  {
    v22 = &v19[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_layoutOptions];
    *v22 = *a2;
    *(v22 + 1) = v21;
    v23 = *(a2 + 32);
    *(v22 + 1) = *(a2 + 16);
    *(v22 + 2) = v23;
    v22[48] = *(a2 + 48);
  }

  v24 = 0x1FAB99000;
  p_opt_class_meths = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 48);
  if (v16)
  {
    v26 = v16;
    v27 = sub_1C2E75C24();
    [v26 setAccessibilityIdentifier_];

    [v26 setTranslatesAutoresizingMaskIntoConstraints_];
    v28 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView;
    [*&v20[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_leadingView] removeFromSuperview];
    v29 = *&v20[v28];
    *&v20[v28] = v26;
    v24 = &property descriptor for KeypadNumber.secondary;
    v30 = v26;

    [v20 addSubview_];
    p_opt_class_meths = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 48);
  }

  if (v17)
  {
    v31 = v17;
    v32 = sub_1C2E75C24();
    [v31 setAccessibilityIdentifier_];

    [v31 setTranslatesAutoresizingMaskIntoConstraints_];
    v33 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView;
    [*&v20[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView] removeFromSuperview];
    v34 = *&v20[v33];
    *&v20[v33] = v31;
    v24 = &property descriptor for KeypadNumber.secondary;
    v35 = v31;

    [v20 addSubview_];
    p_opt_class_meths = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 48);
  }

  v58 = v17;
  if (v59)
  {
    v36 = v59;
    v37 = sub_1C2E75C24();
    [v36 setAccessibilityIdentifier_];

    [v36 setTranslatesAutoresizingMaskIntoConstraints_];
    v38 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView;
    [*&v20[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView] removeFromSuperview];
    v39 = *&v20[v38];
    *&v20[v38] = v36;
    v24 = &property descriptor for KeypadNumber.secondary;
    v40 = v36;

    [v20 addSubview_];
    p_opt_class_meths = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 48);
  }

  if (v18)
  {
    v41 = v18;
    v42 = v16;
    v43 = v24;
    v44 = sub_1C2E75C24();
    [v41 setAccessibilityIdentifier_];

    [v41 &off_1E819D5B8 + 2];
    v45 = OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView;
    [*&v20[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView] removeFromSuperview];
    v46 = *&v20[v45];
    *&v20[v45] = v41;
    v47 = v41;

    v48 = v43 + 2040;
    v16 = v42;
    [v20 v48];

    p_opt_class_meths = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate.opt_class_meths;
  }

  sub_1C2DA9E64();
  v49 = *(p_opt_class_meths[20] + v20);
  v50 = sub_1C2E75C24();
  [v49 _setLayoutDebuggingIdentifier_];

  v51 = *&v20[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_trailingView];
  v52 = sub_1C2E75C24();
  [v51 _setLayoutDebuggingIdentifier_];

  v53 = *&v20[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_centerView];
  v54 = sub_1C2E75C24();
  [v53 _setLayoutDebuggingIdentifier_];

  v55 = *&v20[OBJC_IVAR____TtC16CommunicationsUI23AperturePlacementUIView_bottomView];
  v56 = sub_1C2E75C24();
  [v55 _setLayoutDebuggingIdentifier_];

  return v20;
}

uint64_t sub_1C2DB0388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceBodyViewModel.Action(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 CapsuleButton.init(content:action:largeScale:viewModel:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 32);
  v7 = *a5;
  result = *a1;
  v9 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v9;
  *(a6 + 32) = v6;
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = a4;
  *(a6 + 64) = v7;
  return result;
}

uint64_t CapsuleButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0621D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0621D8);
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v33 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0621E0);
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v33 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0621E8);
  MEMORY[0x1EEE9AC00](v34);
  v10 = &v33 - v9;
  v11 = v1[3];
  v51 = v1[2];
  v52 = v11;
  v53 = *(v1 + 8);
  v12 = v1[1];
  v49 = *v1;
  v50 = v12;
  v13 = swift_allocObject();
  v14 = v1[3];
  *(v13 + 48) = v1[2];
  *(v13 + 64) = v14;
  *(v13 + 80) = *(v1 + 8);
  v15 = v1[1];
  *(v13 + 16) = *v1;
  *(v13 + 32) = v15;
  v41 = &v49;
  sub_1C2DB0AB4(&v49, &v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0621F0);
  sub_1C2C94F38(&qword_1EC0621F8, &qword_1EC0621F0);
  sub_1C2E751C4();
  if (v53 < 1)
  {
    goto LABEL_5;
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1C2DB0BA4();
  v17 = sub_1C2E76214();
  v18 = [v16 stringFromNumber_];

  if (!v18)
  {

LABEL_5:
    v19 = 0;
    v21 = 0;
    goto LABEL_6;
  }

  v19 = sub_1C2E75C64();
  v21 = v20;

LABEL_6:
  *&v46 = v19;
  *(&v46 + 1) = v21;
  v22 = sub_1C2C94F38(&qword_1EC062200, &qword_1EC0621D0);
  v23 = sub_1C2C74960();
  v24 = MEMORY[0x1E69E6158];
  sub_1C2E74D04();

  (*(v3 + 8))(v5, v2);
  v46 = v49;
  v47 = v50;
  v48 = v51;
  sub_1C2DB0AEC(v49, *(&v49 + 1), v50, *(&v50 + 1), v51);
  v42 = v2;
  v43 = v24;
  v44 = v22;
  v45 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1C2DB0B50();
  v25 = v35;
  v26 = v39;
  sub_1C2E74984();
  sub_1C2DB09C8(v46, *(&v46 + 1), v47, *(&v47 + 1), v48);
  (*(v38 + 8))(v7, v26);
  v27 = sub_1C2E74464();
  (*(v36 + 32))(v10, v25, v37);
  v10[*(v34 + 36)] = v27;
  v28 = sub_1C2E74F44();
  v29 = sub_1C2E74454();
  v30 = v40;
  sub_1C2C8DD14(v10, v40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062210);
  v32 = v30 + *(result + 36);
  *v32 = v28;
  *(v32 + 8) = v29;
  return result;
}

uint64_t sub_1C2DB09C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {
  }

  if (a5 == 2)
  {
  }

  return result;
}

uint64_t sub_1C2DB0A54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1C2E73C24();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0622B0);
  return sub_1C2DB0BF0(a1, a2 + *(v4 + 44));
}

uint64_t sub_1C2DB0AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {
  }

  if (a5 == 2)
  {
  }

  return result;
}

unint64_t sub_1C2DB0B50()
{
  result = qword_1EC062208;
  if (!qword_1EC062208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062208);
  }

  return result;
}

unint64_t sub_1C2DB0BA4()
{
  result = qword_1EC0626C0;
  if (!qword_1EC0626C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0626C0);
  }

  return result;
}

uint64_t sub_1C2DB0BF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0622B8);
  MEMORY[0x1EEE9AC00](v46);
  v48 = (v43 - v3);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0622C0);
  MEMORY[0x1EEE9AC00](v44);
  v5 = v43 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0622C8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = v43 - v6;
  v7 = sub_1C2E750B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCA8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = v43 - v15;
  v17 = a1[1];
  if (*(a1 + 32))
  {
    if (*(a1 + 32) == 1)
    {
      v50 = *a1;
      v51 = v17;
      sub_1C2C74960();

      v18 = sub_1C2E748A4();
      v20 = v19;
      *v5 = v18;
      *(v5 + 1) = v19;
      v22 = v21 & 1;
      v5[16] = v21 & 1;
      *(v5 + 3) = v23;
      v43[1] = v23;
      swift_storeEnumTagMultiPayload();
      sub_1C2C72330(v18, v20, v22);
      sub_1C2C76D5C();

      v24 = v45;
      sub_1C2E73F44();
      sub_1C2C736A4(v24, v48, &qword_1EC0622C8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0622D0);
      sub_1C2DB2264();
      sub_1C2C94F38(&qword_1EC0622E0, &qword_1EC0622D0);
      sub_1C2E73F44();
      sub_1C2C72340(v18, v20, v22);

      return sub_1C2C73644(v24, &qword_1EC0622C8);
    }

    else
    {
      v33 = a1[2];
      v32 = a1[3];

      v34 = sub_1C2E75044();
      v50 = v33;
      v51 = v32;
      sub_1C2C74960();
      v35 = sub_1C2E748A4();
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v39 &= 1u;
      sub_1C2C72330(v35, v37, v39);

      sub_1C2C72330(v35, v37, v39);

      sub_1C2C72340(v35, v37, v39);

      v42 = v48;
      *v48 = v34;
      v42[1] = v35;
      v42[2] = v37;
      *(v42 + 24) = v39;
      v42[4] = v41;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0622D0);
      sub_1C2DB2264();
      sub_1C2C94F38(&qword_1EC0622E0, &qword_1EC0622D0);
      sub_1C2E73F44();
      sub_1C2C72340(v35, v37, v39);
    }
  }

  else
  {

    v26 = sub_1C2E75044();
    v27 = MEMORY[0x1E69816C0];
    if ((a1[7] & 1) == 0)
    {
      v27 = MEMORY[0x1E69816E0];
    }

    (*(v8 + 104))(v10, *v27, v7);
    KeyPath = swift_getKeyPath();
    v29 = (v13 + *(v11 + 36));
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCB0);
    (*(v8 + 32))(v29 + *(v30 + 28), v10, v7);
    *v29 = KeyPath;
    *v13 = v26;
    sub_1C2C71D5C(v13, v16, &qword_1EC05DCA8);
    sub_1C2C736A4(v16, v5, &qword_1EC05DCA8);
    swift_storeEnumTagMultiPayload();
    sub_1C2C76D5C();
    v31 = v45;
    sub_1C2E73F44();
    sub_1C2C736A4(v31, v48, &qword_1EC0622C8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0622D0);
    sub_1C2DB2264();
    sub_1C2C94F38(&qword_1EC0622E0, &qword_1EC0622D0);
    sub_1C2E73F44();
    sub_1C2C73644(v31, &qword_1EC0622C8);
    return sub_1C2C73644(v16, &qword_1EC05DCA8);
  }
}

uint64_t sub_1C2DB1304()
{
  v1 = sub_1C2E75404();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062268);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v25 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062270);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v25 - v8);
  if (*(v0 + 32) == 1)
  {
    v11 = *MEMORY[0x1E697F468];
    v12 = sub_1C2E73D44();
    (*(*(v12 - 8) + 104))(v3, v11, v12);
    sub_1C2DB1FA0(&qword_1EC061500, MEMORY[0x1E6981998]);
    v13 = sub_1C2E754A4();
    sub_1C2E75604();
    *v6 = v13;
    *(v6 + *(v7 + 56)) = 256;
    KeyPath = swift_getKeyPath();
    v15 = (v6 + *(v4 + 36));
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC70) + 28);
    v17 = *MEMORY[0x1E697DBB8];
    v18 = sub_1C2E730D4();
    (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
    *v15 = KeyPath;
    sub_1C2DB2180();
  }

  else if (*(v0 + 32))
  {
    v19 = *MEMORY[0x1E697F468];
    v20 = sub_1C2E73D44();
    (*(*(v20 - 8) + 104))(v3, v19, v20);
    sub_1C2DB1FA0(&qword_1EC061500, MEMORY[0x1E6981998]);
    v21 = sub_1C2E754A4();
    sub_1C2E74F54();
    v22 = sub_1C2E74F74();

    _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
    v23 = sub_1C2E74F74();

    v25[0] = v21;
    v25[1] = v22;
    v25[2] = v23;
    v25[3] = 0x4000000000000000;
    v25[4] = 0;
    v25[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062278);
    sub_1C2DB1FE8();
  }

  else
  {
    sub_1C2CB2AB4();
    v10 = sub_1C2E754A4();
    sub_1C2E75644();
    *v9 = v10;
    *(v9 + *(v7 + 56)) = 256;
    sub_1C2C94F38(&qword_1EC0622A8, &qword_1EC062270);
  }

  return sub_1C2E75374();
}

uint64_t CapsuleButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062218);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062220);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = *v1;
  v25 = v1[1];
  v26 = v10;
  v11 = *(v1 + 32);
  sub_1C2E741C4();
  v12 = sub_1C2E74454();
  v13 = &v6[*(v4 + 44)];
  *v13 = v12;
  *(v13 + 8) = xmmword_1C2E89140;
  *(v13 + 24) = xmmword_1C2E89140;
  v13[40] = 0;
  v14 = sub_1C2E741D4();
  v15 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  if (v14)
  {
    v16 = sub_1C2E74F74();

    v15 = v16;
  }

  KeyPath = swift_getKeyPath();
  sub_1C2C71D5C(v6, v9, &qword_1EC062218);
  v18 = &v9[*(v7 + 36)];
  *v18 = KeyPath;
  v18[1] = v15;
  v28 = v25;
  v27 = v26;
  v29 = v11;
  v19 = sub_1C2DB1304();
  v20 = sub_1C2E75744();
  v22 = v21;
  sub_1C2C71D5C(v9, a1, &qword_1EC062220);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062228);
  v24 = (a1 + *(result + 36));
  *v24 = v19;
  v24[1] = v20;
  v24[2] = v22;
  return result;
}

uint64_t sub_1C2DB1900@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C2E73964();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CallRecordingRecordingView.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CallRecordingRecordingView.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1C2DB19F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2DB1A3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C2DB1AB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C2DB1AFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C2DB1B54()
{
  result = qword_1EC062230;
  if (!qword_1EC062230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062210);
    sub_1C2DB1C0C();
    sub_1C2C94F38(&qword_1EC05E3E0, &qword_1EC05E3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062230);
  }

  return result;
}

unint64_t sub_1C2DB1C0C()
{
  result = qword_1EC062238;
  if (!qword_1EC062238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0621E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0621D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0621D0);
    sub_1C2C94F38(&qword_1EC062200, &qword_1EC0621D0);
    sub_1C2C74960();
    swift_getOpaqueTypeConformance2();
    sub_1C2DB0B50();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062238);
  }

  return result;
}

unint64_t sub_1C2DB1D74()
{
  result = qword_1EC062240;
  if (!qword_1EC062240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062228);
    sub_1C2DB1E2C();
    sub_1C2C94F38(&qword_1EC062258, &qword_1EC062260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062240);
  }

  return result;
}

unint64_t sub_1C2DB1E2C()
{
  result = qword_1EC062248;
  if (!qword_1EC062248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062220);
    sub_1C2DB1EE4();
    sub_1C2C94F38(&qword_1EC05CB00, &qword_1EC05DD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062248);
  }

  return result;
}

unint64_t sub_1C2DB1EE4()
{
  result = qword_1EC062250;
  if (!qword_1EC062250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062218);
    sub_1C2DB1FA0(&qword_1EC05CB20, MEMORY[0x1E697C8D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062250);
  }

  return result;
}

uint64_t sub_1C2DB1FA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C2DB1FE8()
{
  result = qword_1EC062280;
  if (!qword_1EC062280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062278);
    sub_1C2DB2074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062280);
  }

  return result;
}

unint64_t sub_1C2DB2074()
{
  result = qword_1EC062288;
  if (!qword_1EC062288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062290);
    sub_1C2DB212C();
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062288);
  }

  return result;
}

unint64_t sub_1C2DB212C()
{
  result = qword_1EC062298;
  if (!qword_1EC062298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062298);
  }

  return result;
}

unint64_t sub_1C2DB2180()
{
  result = qword_1EC0622A0;
  if (!qword_1EC0622A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062268);
    sub_1C2C94F38(&qword_1EC0622A8, &qword_1EC062270);
    sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0622A0);
  }

  return result;
}

unint64_t sub_1C2DB2264()
{
  result = qword_1EC0622D8;
  if (!qword_1EC0622D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0622C8);
    sub_1C2C76D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0622D8);
  }

  return result;
}

uint64_t CallTranslationMoreMenuViewModel.__allocating_init(service:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CallTranslationMoreMenuViewModel.init(service:)(a1);
  return v2;
}

uint64_t CallTranslationMoreMenuViewModel.init(service:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062D80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31[-1] - v14;
  sub_1C2E72704();
  sub_1C2E718F4();
  v16 = sub_1C2E71934();
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 0, 1, v16);
  sub_1C2E718F4();
  v17(v12, 0, 1, v16);
  v18 = MEMORY[0x1E69E7CC0];
  v19 = sub_1C2E726F4();
  *(v2 + 32) = 0u;
  *(v2 + 16) = v19;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 72) = v18;
  swift_beginAccess();
  sub_1C2DB282C(a1, v2 + 32);
  swift_endAccess();
  sub_1C2C736A4(a1, v31, &qword_1EC062300);
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    sub_1C2E724F4();
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_1C2C73644(v31, &qword_1EC062300);
  }

  sub_1C2E720E4();
  *(v2 + 24) = sub_1C2E71FE4();
  swift_allocObject();
  swift_weakInit();

  sub_1C2E71EC4();

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062DA0);
  v21 = &v9[*(v20 + 48)];
  v22 = *MEMORY[0x1E6995D80];
  v23 = sub_1C2E72024();
  (*(*(v23 - 8) + 104))(v9, v22, v23);
  v24 = swift_allocObject();
  swift_weakInit();

  *v21 = sub_1C2DB2C04;
  v21[1] = v24;
  (*(*(v20 - 8) + 56))(v9, 0, 1, v20);

  sub_1C2E71FB4();

  sub_1C2DB34F8();
  v25 = sub_1C2E75E74();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  sub_1C2E75E34();

  v26 = sub_1C2E75E24();
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v2;
  sub_1C2D22B9C(0, 0, v6, &unk_1C2E89590, v27);

  sub_1C2C73644(a1, &qword_1EC062300);
  return v2;
}

uint64_t sub_1C2DB282C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062300);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2DB289C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2DB28FC();
  }

  return result;
}

void sub_1C2DB28FC()
{
  swift_beginAccess();
  sub_1C2C736A4(v0 + 32, &v7, &qword_1EC062300);
  if (v8)
  {
    sub_1C2C716EC(&v7, v9);
    __swift_project_boxed_opaque_existential_1(v9, v10);
    if (sub_1C2E724C4() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v9, v10), (sub_1C2E72514()))
    {
      sub_1C2E72064();
      __swift_project_boxed_opaque_existential_1(v9, v10);
      v1 = sub_1C2E72514();
      __swift_project_boxed_opaque_existential_1(v9, v10);
      if (v1)
      {
        v2 = sub_1C2E724C4();
        __swift_project_boxed_opaque_existential_1(v9, v10);
        if (v2)
        {
          sub_1C2E725A4();
        }

        else
        {
          sub_1C2E725B4();
        }

        __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
        sub_1C2E72584();
      }

      else
      {
        sub_1C2E724D4();
      }

      __swift_destroy_boxed_opaque_existential_1(v9);
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_1C2C73644(&v7, &qword_1EC062300);
  }

  if (qword_1EC05CFF8 != -1)
  {
    swift_once();
  }

  v3 = sub_1C2E72B44();
  __swift_project_value_buffer(v3, qword_1EC0622E8);
  v4 = sub_1C2E72B24();
  v5 = sub_1C2E75FC4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C2C6B000, v4, v5, "Translation is already stopped.", v6, 2u);
    MEMORY[0x1C6927DF0](v6, -1, -1);
  }
}

uint64_t sub_1C2DB2B78()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v0 = sub_1C2DB2C0C();

  return v0;
}

uint64_t sub_1C2DB2C0C()
{
  v1 = v0;
  v2 = sub_1C2E75C14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - v7;
  v66 = sub_1C2E759E4();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C2E71934();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v53 - v14;
  v16 = type metadata accessor for CallTranslationLanguagePicker();
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  swift_beginAccess();
  sub_1C2C736A4(v1 + 32, &v71, &qword_1EC062300);
  if (v72)
  {
    v60 = v5;
    v61 = v8;
    v62 = v3;
    v63 = v2;
    sub_1C2C716EC(&v71, v73);
    __swift_project_boxed_opaque_existential_1(v73, v74);
    if ((sub_1C2E72514() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v73, v74);
      if ((sub_1C2E724C4() & 1) == 0)
      {
        v53 = v11;
        v22 = *(v11 + 56);
        v59 = v15;
        v57 = v10;
        v22(v15, 1, 1, v10);
        v56 = *(v1 + 16);
        v23 = swift_allocObject();
        swift_weakInit();
        sub_1C2C6E3A4(v73, &v71);
        v24 = swift_allocObject();
        v58 = v24;
        *(v24 + 16) = v23;
        v55 = v23;
        sub_1C2C716EC(&v71, v24 + 24);
        v54 = swift_allocObject();
        swift_weakInit();

        sub_1C2E718F4();
        LOBYTE(v69) = 0;
        sub_1C2E75174();
        v25 = *(&v70 + 1);
        *v20 = v70;
        *(v20 + 1) = v25;
        LOBYTE(v69) = 0;
        sub_1C2E75174();
        v26 = *(&v70 + 1);
        v20[16] = v70;
        *(v20 + 3) = v26;
        v69 = 0;
        sub_1C2E75174();
        *(v20 + 2) = v70;
        v27 = v16[9];
        *&v20[v27] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
        swift_storeEnumTagMultiPayload();
        v28 = v16[10];
        v69 = 0;
        sub_1C2E75174();
        *&v20[v28] = v70;
        v29 = v16[11];
        v69 = 0;
        sub_1C2E75174();
        *&v20[v29] = v70;
        v30 = &v20[v16[17]];
        LOBYTE(v69) = 0;
        sub_1C2E75174();
        v31 = *(&v70 + 1);
        *v30 = v70;
        *(v30 + 1) = v31;
        v32 = &v20[v16[18]];
        v69 = MEMORY[0x1E69E7CC0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060618);
        sub_1C2E75174();
        v33 = *(&v70 + 1);
        *v32 = v70;
        *(v32 + 1) = v33;
        v34 = &v20[v16[19]];
        sub_1C2E72F64();
        swift_allocObject();
        v35 = sub_1C2E72F54();
        sub_1C2C9DC60();
        v36 = v65;
        v37 = v64;
        v38 = v66;
        (*(v65 + 104))(v64, *MEMORY[0x1E69E7F90], v66);
        v39 = sub_1C2E760A4();
        (*(v36 + 8))(v37, v38);
        sub_1C2E72F44();

        v69 = v35;
        sub_1C2E75174();
        v40 = *(&v70 + 1);
        *v34 = v70;
        *(v34 + 1) = v40;
        v41 = v53;
        v42 = v68;
        v43 = v57;
        (*(v53 + 16))(&v20[v16[12]], v68, v57);
        v44 = v59;
        sub_1C2C736A4(v59, &v20[v16[13]], &qword_1EC05DBF8);
        (*(v41 + 8))(v42, v43);
        sub_1C2C73644(v44, &qword_1EC05DBF8);

        v45 = v54;

        *&v20[v16[14]] = v56;
        v20[v16[15]] = 1;
        v20[v16[16]] = 0;
        v46 = v58;
        *(v20 + 6) = sub_1C2DB4BF8;
        *(v20 + 7) = v46;
        *(v20 + 8) = sub_1C2DB4C04;
        *(v20 + 9) = v45;
        v47 = v61;
        sub_1C2E75BB4();
        v48 = v62;
        v49 = v63;
        (*(v62 + 16))(v60, v47, v63);
        type metadata accessor for StringDummy();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v51 = [objc_opt_self() bundleForClass_];
        sub_1C2E718F4();
        v52 = sub_1C2E75C84();
        (*(v48 + 8))(v47, v49);
        sub_1C2D4D0EC(v20, v67);
        sub_1C2DB4C0C();
        sub_1C2E75374();
        sub_1C2DB4C64(v20);
        __swift_destroy_boxed_opaque_existential_1(v73);
        return v52;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v73);
  }

  else
  {
    sub_1C2C73644(&v71, &qword_1EC062300);
  }

  return 0;
}

uint64_t sub_1C2DB34F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062308);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  swift_beginAccess();
  *(v1 + 72) = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  sub_1C2C736A4(v1 + 32, &v18, &qword_1EC062300);
  if (!v19)
  {
    return sub_1C2C73644(&v18, &qword_1EC062300);
  }

  sub_1C2C716EC(&v18, v20);
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v15 = v2;
  v13 = sub_1C2E724B4();
  *&v18 = v13;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v12 = sub_1C2E72504();
  v17 = v12;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v16 = sub_1C2E72594();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC10);
  v14 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC48);
  sub_1C2C94F38(&qword_1EC05BAC8, &qword_1EC05DC10);
  sub_1C2C94F38(&qword_1EC05BAE8, &qword_1EC05DC48);
  v6 = v5;
  sub_1C2E72EA4();

  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C2DB4B18;
  *(v8 + 24) = v7;
  sub_1C2C94F38(&qword_1EC05BB20, &qword_1EC062308);
  v9 = v15;
  sub_1C2E72F14();

  (*(v14 + 8))(v6, v9);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC28);
  sub_1C2C94F38(&unk_1EC05B280, &qword_1EC05DC28);
  sub_1C2E72DA4();
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1C2DB38F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1C2E75E34();
  v4[3] = sub_1C2E75E24();
  v6 = sub_1C2E75DD4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C2DB3990, v6, v5);
}

uint64_t sub_1C2DB3990()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1C2DB3A28;

  return MEMORY[0x1EEDF75E0]();
}

uint64_t sub_1C2DB3A28()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1C2DB3B48, v3, v2);
}

uint64_t sub_1C2DB3B48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C2DB3BA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2C7DC10;

  return sub_1C2DB38F8(a1, v4, v5, v6);
}

uint64_t CallTranslationMoreMenuViewModel.createMenuItem()()
{
  swift_beginAccess();
  sub_1C2C736A4(v0 + 32, &v11, &qword_1EC062300);
  if (v12)
  {
    sub_1C2C716EC(&v11, v13);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    if (sub_1C2E72524())
    {
      v1 = *(v0 + 24);

      __swift_destroy_boxed_opaque_existential_1(v13);
      return v1;
    }

    if (qword_1EC05CFF8 != -1)
    {
      swift_once();
    }

    v7 = sub_1C2E72B44();
    __swift_project_value_buffer(v7, qword_1EC0622E8);
    v8 = sub_1C2E72B24();
    v9 = sub_1C2E75FA4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C2C6B000, v8, v9, "Translation is not available for more menu.", v10, 2u);
      MEMORY[0x1C6927DF0](v10, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1C2C73644(&v11, &qword_1EC062300);
    if (qword_1EC05CFF8 != -1)
    {
      swift_once();
    }

    v3 = sub_1C2E72B44();
    __swift_project_value_buffer(v3, qword_1EC0622E8);
    v4 = sub_1C2E72B24();
    v5 = sub_1C2E75FA4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C2C6B000, v4, v5, "Translation service doesn't exist for more menu.", v6, 2u);
      MEMORY[0x1C6927DF0](v6, -1, -1);
    }
  }

  return 0;
}

uint64_t CallTranslationMoreMenuViewModel.update(_:)(uint64_t a1)
{
  sub_1C2C736A4(a1, v3, &qword_1EC062300);
  swift_beginAccess();
  sub_1C2DB282C(v3, v1 + 32);
  swift_endAccess();
  sub_1C2DB34F8();
  return sub_1C2C73644(v3, &qword_1EC062300);
}

uint64_t sub_1C2DB3F28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1C2E72064();
  }

  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  return sub_1C2E724E4();
}

uint64_t sub_1C2DB3FD8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1C2E72064();
  }

  return result;
}

uint64_t sub_1C2DB4044(char a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_1C2DB4200();
    sub_1C2E720D4();
    sub_1C2E71FD4();
    swift_beginAccess();
    v8 = *(v7 + 56);
    if (v8)
    {
      v9 = __swift_project_boxed_opaque_existential_1((v7 + 32), *(v7 + 56));
      v15[1] = v15;
      v10 = *(v8 - 8);
      v11 = MEMORY[0x1EEE9AC00](v9);
      v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = sub_1C2E724F4();
      (*(v10 + 8))(v13, v8);
    }

    else
    {
      v14 = 0;
    }

    sub_1C2DB44CC(a2 & 1, v14 & 1, a3, a1 & 1);
    sub_1C2E720A4();
  }

  return result;
}

uint64_t sub_1C2DB4200()
{
  v0 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C2E75C14();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12[-v6];
  sub_1C2E75BB4();
  (*(v2 + 16))(v4, v7, v1);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  v10 = sub_1C2E75C84();
  (*(v2 + 8))(v7, v1);
  return v10;
}

uint64_t sub_1C2DB44CC(char a1, char a2, uint64_t a3, int a4)
{
  v32 = a4;
  v7 = sub_1C2E73D04();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1C2E71934();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC38);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC40);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v30 - v17;
  if (a1)
  {
    goto LABEL_11;
  }

  v31 = v18;
  sub_1C2C736A4(a3, v14, &qword_1EC05DC38);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v19 = &qword_1EC05DC38;
    v20 = v14;
LABEL_10:
    sub_1C2C73644(v20, v19);
LABEL_11:
    sub_1C2E720E4();
    return MEMORY[0x1C6922A60](a2 & 1);
  }

  v21 = v31;
  sub_1C2DB4B88(v14, v31);
  sub_1C2E718F4();
  v22 = sub_1C2E72284();
  v24 = v23;
  v25 = *(v9 + 8);
  v25(v11, v8);
  if (!v24)
  {
    v19 = &qword_1EC05DC40;
    v20 = v21;
    goto LABEL_10;
  }

  v30[1] = v22;
  sub_1C2E718F4();
  sub_1C2E72284();
  v27 = v26;
  v25(v11, v8);
  if (!v27)
  {
    sub_1C2C73644(v21, &qword_1EC05DC40);

    goto LABEL_11;
  }

  if (v32)
  {
    sub_1C2E73CF4();
    sub_1C2E73CE4();
    sub_1C2E73CD4();

    sub_1C2E73CE4();
    sub_1C2E75044();
    sub_1C2E73CC4();

    sub_1C2E73CE4();
    sub_1C2E73CD4();

    sub_1C2E73CE4();
    sub_1C2E73D24();
    v28 = sub_1C2E74884();
  }

  else
  {

    sub_1C2E720E4();
    v28 = MEMORY[0x1C6922A60](a2 & 1);
  }

  sub_1C2C73644(v31, &qword_1EC05DC40);
  return v28;
}