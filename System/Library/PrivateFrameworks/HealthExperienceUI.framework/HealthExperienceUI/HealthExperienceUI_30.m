uint64_t sub_1BA22FE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x80000001BA4F5C10 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1BA4A8338();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1BA22FEA8(uint64_t a1)
{
  v2 = sub_1BA231B28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA22FEE4(uint64_t a1)
{
  v2 = sub_1BA231B28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StandardDataLoggingActionHandler.UserData.encode(to:)(void *a1)
{
  sub_1BA231B7C(0, &qword_1EBBEEAE0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA231B28();
  sub_1BA4A8548();
  sub_1BA4A8278();
  return (*(v4 + 8))(v6, v3);
}

uint64_t StandardDataLoggingActionHandler.UserData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BA231B7C(0, &qword_1EBBEEAF0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA231B28();
  sub_1BA4A8528();
  if (!v2)
  {
    v10 = sub_1BA4A81B8();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BA230200(void *a1)
{
  sub_1BA231B7C(0, &qword_1EBBEEAE0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA231B28();
  sub_1BA4A8548();
  sub_1BA4A8278();
  return (*(v4 + 8))(v6, v3);
}

__n128 StandardDataLoggingActionHandler.__allocating_init(content:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  result = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = result;
  return result;
}

_OWORD *StandardDataLoggingActionHandler.init(content:)(_OWORD *a1)
{
  v2 = a1[3];
  v1[3] = a1[2];
  v1[4] = v2;
  v1[5] = a1[4];
  v3 = a1[1];
  v1[1] = *a1;
  v1[2] = v3;
  return v1;
}

uint64_t StandardDataLoggingActionHandler.__deallocating_deinit()
{
  sub_1BA00D7E8(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t HostedDataLoggingQuickActionView.init(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1BA232268(0, &qword_1EBBEEAF8, type metadata accessor for DataLoggingPluginViewModel, type metadata accessor for ViewModelState);
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  v5 = *(v4 + 28);
  v6 = type metadata accessor for HostedDataLoggingQuickActionView();
  sub_1BA231BF8(a1 + v5, a2 + *(v6 + 36), type metadata accessor for DataLoggingPluginViewModel);
  return sub_1BA232DE8(a1, &qword_1EBBEEAF8, type metadata accessor for DataLoggingPluginViewModel, type metadata accessor for ViewModelState);
}

uint64_t HostedDataLoggingQuickActionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA231BF8(v2 + *(a1 + 36), a2, type metadata accessor for DataLoggingPluginViewModel);
  v4 = a2 + *(type metadata accessor for DataLoggingQuickActionView() + 20);
  result = swift_getKeyPath();
  *v4 = result;
  *(v4 + 8) = 0;
  return result;
}

void (*sub_1BA2305EC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = HostedDataLoggingQuickActionView.actionHandlerContent.modify();
  return sub_1B9FCDD98;
}

uint64_t sub_1BA230660()
{
  v1 = sub_1BA4A5398();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA232F38();
  v6 = v5;
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  v12 = sub_1BA4A2BF8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v0, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x1E69A3280])
  {
    goto LABEL_2;
  }

  if (v17 == *MEMORY[0x1E69A3288])
  {
    v24[1] = v0;
    (*(v13 + 96))(v16, v12);
    v26 = sub_1BA4A6128();
    sub_1BA4A5388();
    sub_1BA4A5F28();
    (*(v2 + 8))(v4, v1);

    v19 = v25;
    (*(v25 + 16))(v8, v11, v6);
    if (swift_dynamicCast())
    {
      v20 = v26;
    }

    else
    {
      v20 = sub_1BA4A2BE8();
    }

    sub_1B9F2C258();
    v23 = *(v22 + 48);
    (*(v19 + 8))(v11, v6);
    sub_1BA232E44(&v16[v23], sub_1BA232FB8);
    return v20;
  }

  else
  {
    if (v17 == *MEMORY[0x1E69A3290])
    {
LABEL_2:
      (*(v13 + 8))(v16, v12);
      return sub_1BA4A2BE8();
    }

    v21 = sub_1BA4A2BE8();
    (*(v13 + 8))(v16, v12);
    return v21;
  }
}

id sub_1BA2309FC()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for DataLoggingQuickActionView() + 20);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {

    return v6;
  }

  else
  {
    v9[0] = *v5;

    sub_1BA4A6FB8();
    v8 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA232F2C(v9[0], 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }
}

void DataLoggingQuickActionView.body.getter(uint64_t a1@<X8>)
{
  *a1 = sub_1BA4A5798();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1BA231CAC();
  sub_1BA230C48(v1, a1 + *(v3 + 44));
  v4 = sub_1BA4A5BD8();
  sub_1BA4A5188();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1BA23242C(0, &qword_1EBBEEBA0, sub_1BA232498, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v14 = a1 + *(v13 + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
}

uint64_t sub_1BA230C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA231DBC(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v26 - v9);
  *v10 = sub_1BA4A63C8();
  v10[1] = v11;
  sub_1BA232CDC();
  sub_1BA2314C8(v10 + *(v12 + 44));
  sub_1BA4A63C8();
  sub_1BA4A5278();
  v13 = (v10 + *(v5 + 44));
  v14 = v30;
  *v13 = v29;
  v13[1] = v14;
  v13[2] = v31;
  v15 = sub_1BA4A5878();
  v28 = 1;
  sub_1BA230FE0(a1, &v44);
  v36 = *&v45[48];
  v37 = *&v45[64];
  v38 = *&v45[80];
  v39 = *&v45[96];
  v32 = v44;
  v33 = *v45;
  v34 = *&v45[16];
  v35 = *&v45[32];
  v40[0] = v44;
  v40[1] = *v45;
  v40[2] = *&v45[16];
  v40[3] = *&v45[32];
  v40[4] = *&v45[48];
  v40[5] = *&v45[64];
  v40[6] = *&v45[80];
  v41 = *&v45[96];
  v16 = MEMORY[0x1E6981F40];
  sub_1BA232D74(&v32, &v42, &qword_1EBBEEB68, sub_1BA2322CC, MEMORY[0x1E6981F40], sub_1BA232268);
  sub_1BA232DE8(v40, &qword_1EBBEEB68, sub_1BA2322CC, v16);
  *(&v27[4] + 7) = v36;
  *(&v27[5] + 7) = v37;
  *(&v27[6] + 7) = v38;
  *(v27 + 7) = v32;
  *(&v27[1] + 7) = v33;
  *(&v27[2] + 7) = v34;
  *(&v27[7] + 7) = v39;
  *(&v27[3] + 7) = v35;
  v17 = v28;
  sub_1BA231BF8(v10, v7, sub_1BA231DBC);
  sub_1BA231BF8(v7, a2, sub_1BA231DBC);
  sub_1BA231D44();
  v19 = (a2 + *(v18 + 48));
  v42 = v15;
  LOBYTE(v43[0]) = v17;
  *(&v43[1] + 1) = v27[1];
  *(v43 + 1) = v27[0];
  *(&v43[4] + 1) = v27[4];
  *(&v43[5] + 1) = v27[5];
  *(&v43[6] + 1) = v27[6];
  v43[7] = *(&v27[6] + 15);
  *(&v43[2] + 1) = v27[2];
  *(&v43[3] + 1) = v27[3];
  v20 = v43[2];
  v19[2] = v43[1];
  v19[3] = v20;
  v21 = v43[0];
  *v19 = v42;
  v19[1] = v21;
  v22 = v43[7];
  v19[7] = v43[6];
  v19[8] = v22;
  v23 = v43[5];
  v19[5] = v43[4];
  v19[6] = v23;
  v19[4] = v43[3];
  v24 = a2 + *(v18 + 64);
  *v24 = 0;
  *(v24 + 8) = 0;
  sub_1BA231BF8(&v42, &v44, sub_1BA2321B4);
  sub_1BA232E44(v10, sub_1BA231DBC);
  *&v45[65] = v27[4];
  *&v45[81] = v27[5];
  *&v45[97] = v27[6];
  *&v45[112] = *(&v27[6] + 15);
  *&v45[1] = v27[0];
  *&v45[17] = v27[1];
  *&v45[33] = v27[2];
  v44 = v15;
  v45[0] = v17;
  *&v45[49] = v27[3];
  sub_1BA232E44(&v44, sub_1BA2321B4);
  return sub_1BA232E44(v7, sub_1BA231DBC);
}

uint64_t sub_1BA230FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA231240(a1, &v36);
  sub_1B9FD88E4();
  if (v3)
  {
    *(&v28 + 1) = v3;
    sub_1B9F252FC();
    v4 = sub_1BA4A5E18();
    v6 = v5;
    v8 = v7;
    sub_1BA4A5D28();
    v9 = sub_1BA4A5DE8();
    v11 = v10;
    v13 = v12;

    sub_1BA102AF4(v4, v6, v8 & 1);

    *&v28 = sub_1BA4A6088();
    v14 = sub_1BA4A5DC8();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    sub_1BA102AF4(v9, v11, v13 & 1);

    v21 = v18 & 1;
    sub_1BA1465C0(v14, v16, v18 & 1);
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v21 = 0;
    v20 = 0;
  }

  v26[2] = v38;
  v26[3] = v39;
  v26[4] = v40;
  v27 = v41;
  v26[0] = v36;
  v26[1] = v37;
  v30 = v38;
  v31 = v39;
  v32 = v40;
  LOWORD(v33) = v41;
  v28 = v36;
  v29 = v37;
  sub_1BA231BF8(v26, v34, sub_1BA232360);
  sub_1BA232EA4(v14, v16, v21, v20);
  sub_1BA232EE8(v14, v16, v21, v20);
  v22 = v31;
  *(a2 + 32) = v30;
  *(a2 + 48) = v22;
  *(a2 + 64) = v32;
  v23 = v33;
  v24 = v29;
  *a2 = v28;
  *(a2 + 16) = v24;
  *(a2 + 80) = v23;
  *(a2 + 88) = v14;
  *(a2 + 96) = v16;
  *(a2 + 104) = v21;
  *(a2 + 112) = v20;
  sub_1BA232EE8(v14, v16, v21, v20);
  v34[2] = v38;
  v34[3] = v39;
  v34[4] = v40;
  v35 = v41;
  v34[0] = v36;
  v34[1] = v37;
  return sub_1BA232E44(v34, sub_1BA232360);
}

uint64_t sub_1BA231240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A2C58();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v6 = *(a1 + 24);
  v38 = *(a1 + 16);
  v39 = v6;
  sub_1B9F252FC();

  v7 = sub_1BA4A5E18();
  v9 = v8;
  v11 = v10;
  sub_1BA4A5D28();
  v12 = sub_1BA4A5DE8();
  v14 = v13;
  v16 = v15;

  sub_1BA102AF4(v7, v9, v11 & 1);

  v17 = sub_1BA4A5DD8();
  v19 = v18;
  v21 = v20;
  sub_1BA102AF4(v12, v14, v16 & 1);

  type metadata accessor for DataLoggingPluginViewModel();
  sub_1BA2309FC();
  v22 = v34;
  sub_1BA4A2C48();
  v23 = sub_1BA4A2B78();
  (*(v36 + 8))(v22, v37);
  v38 = v23;
  v24 = sub_1BA4A5DC8();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1BA102AF4(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v24;
  *(a2 + 8) = v26;
  *(a2 + 16) = v28 & 1;
  *(a2 + 24) = v30;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = result;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0x3FF0000000000000;
  *(a2 + 80) = 256;
  return result;
}

uint64_t sub_1BA2314C8@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v47 = sub_1BA4A6138();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v2 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BA4A2C58();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA231F1C(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v46 - v11);
  type metadata accessor for DataLoggingPluginViewModel();
  sub_1BA2309FC();
  sub_1BA4A2C48();
  v13 = sub_1BA4A2B78();
  (*(v4 + 8))(v6, v3);
  v14 = v12 + *(v8 + 44);
  v15 = *(sub_1BA4A5438() + 20);
  v16 = *MEMORY[0x1E697F468];
  v17 = sub_1BA4A5818();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #7.0 }

  *v14 = _Q0;
  sub_1B9F80620();
  *&v14[*(v23 + 36)] = 256;
  *v12 = v13;
  v24 = v12;
  sub_1BA230660();
  v25 = v46;
  v26 = v47;
  (*(v46 + 104))(v2, *MEMORY[0x1E6981630], v47);
  v27 = sub_1BA4A6198();

  (*(v25 + 8))(v2, v26);
  LOBYTE(v26) = sub_1BA4A5B78();
  sub_1BA4A5188();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  LOBYTE(v59[0]) = 1;
  LOBYTE(v54[0]) = 0;
  v36 = [objc_opt_self() systemBackgroundColor];
  v37 = sub_1BA4A6048();
  v38 = v48;
  sub_1BA231BF8(v24, v48, sub_1BA231F1C);
  v39 = v49;
  sub_1BA231BF8(v38, v49, sub_1BA231F1C);
  sub_1BA231EAC();
  v41 = (v39 + *(v40 + 48));
  v54[0] = v27;
  v54[1] = 0;
  LOWORD(v55) = 1;
  *(&v55 + 2) = v51;
  WORD3(v55) = v52;
  BYTE8(v55) = v26;
  *(&v55 + 9) = *v50;
  HIDWORD(v55) = *&v50[3];
  *&v56 = v29;
  *(&v56 + 1) = v31;
  *&v57 = v33;
  *(&v57 + 1) = v35;
  LOBYTE(v58) = 0;
  *(&v58 + 1) = *v53;
  DWORD1(v58) = *&v53[3];
  *(&v58 + 1) = v37;
  v42 = v55;
  v43 = v58;
  v44 = v56;
  v41[3] = v57;
  v41[4] = v43;
  v41[1] = v42;
  v41[2] = v44;
  *v41 = v27;
  sub_1BA231BF8(v54, v59, sub_1BA231FDC);
  sub_1BA232E44(v24, sub_1BA231F1C);
  v59[0] = v27;
  v59[1] = 0;
  v60 = 1;
  v61 = v51;
  v62 = v52;
  v63 = v26;
  *v64 = *v50;
  *&v64[3] = *&v50[3];
  v65 = v29;
  v66 = v31;
  v67 = v33;
  v68 = v35;
  v69 = 0;
  *v70 = *v53;
  *&v70[3] = *&v53[3];
  v71 = v37;
  sub_1BA232E44(v59, sub_1BA231FDC);
  return sub_1BA232E44(v38, sub_1BA231F1C);
}

void sub_1BA231A04(uint64_t a1@<X8>)
{
  *a1 = sub_1BA4A5798();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1BA231CAC();
  sub_1BA230C48(v1, a1 + *(v3 + 44));
  v4 = sub_1BA4A5BD8();
  sub_1BA4A5188();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1BA23242C(0, &qword_1EBBEEBA0, sub_1BA232498, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v14 = a1 + *(v13 + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
}

unint64_t sub_1BA231AD4()
{
  result = qword_1EBBEEAD8;
  if (!qword_1EBBEEAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEAD8);
  }

  return result;
}

unint64_t sub_1BA231B28()
{
  result = qword_1EBBEEAE8;
  if (!qword_1EBBEEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEAE8);
  }

  return result;
}

void sub_1BA231B7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA231B28();
    v7 = a3(a1, &type metadata for StandardDataLoggingActionHandler.UserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA231BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for DataLoggingQuickActionView()
{
  result = qword_1EBBEEC48;
  if (!qword_1EBBEEC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA231CAC()
{
  if (!qword_1EBBEEB00)
  {
    sub_1BA232268(255, &qword_1EBBEEB08, sub_1BA231D44, MEMORY[0x1E6981F40]);
    v0 = sub_1BA4A52C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEEB00);
    }
  }
}

void sub_1BA231D44()
{
  if (!qword_1EBBEEB10)
  {
    sub_1BA231DBC(255);
    sub_1BA2321B4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBBEEB10);
    }
  }
}

void sub_1BA231DF8()
{
  if (!qword_1EBBEEB20)
  {
    sub_1BA232268(255, &qword_1EBBEEB28, sub_1BA231EAC, MEMORY[0x1E6981F40]);
    sub_1BA232150(&qword_1EBBEEB58, &qword_1EBBEEB28, sub_1BA231EAC);
    v0 = sub_1BA4A6278();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEEB20);
    }
  }
}

void sub_1BA231EAC()
{
  if (!qword_1EBBEEB30)
  {
    sub_1BA231F1C(255);
    sub_1BA231FDC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEEB30);
    }
  }
}

void sub_1BA231F50()
{
  if (!qword_1EBBEEB40)
  {
    sub_1BA2320FC(255, &qword_1EBBEC988, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEEB40);
    }
  }
}

void sub_1BA231FDC()
{
  if (!qword_1EBBEEB48)
  {
    sub_1BA232070();
    sub_1BA2320FC(255, &qword_1EBBEC988, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEEB48);
    }
  }
}

void sub_1BA232070()
{
  if (!qword_1EBBEEB50)
  {
    sub_1BA2320FC(255, &qword_1EDC5F170, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEEB50);
    }
  }
}

void sub_1BA2320FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BA232150(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1BA232268(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA2321B4()
{
  if (!qword_1EBBEEB60)
  {
    sub_1BA232268(255, &qword_1EBBEEB68, sub_1BA2322CC, MEMORY[0x1E6981F40]);
    sub_1BA232150(&qword_1EBBEEB98, &qword_1EBBEEB68, sub_1BA2322CC);
    v0 = sub_1BA4A6268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEEB60);
    }
  }
}

void sub_1BA232268(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA2322CC()
{
  if (!qword_1EBBEEB70)
  {
    sub_1BA232360();
    sub_1B9F85D98(255, &qword_1EBBEEB90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEEB70);
    }
  }
}

void sub_1BA232360()
{
  if (!qword_1EBBEEB78)
  {
    sub_1B9F85C94(255, &qword_1EBBEEB80, sub_1B9F85838, sub_1BA2323F0);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEEB78);
    }
  }
}

void sub_1BA23242C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1BA232498()
{
  if (!qword_1EBBEEBA8)
  {
    sub_1BA232268(255, &qword_1EBBEEB08, sub_1BA231D44, MEMORY[0x1E6981F40]);
    sub_1BA232150(&qword_1EBBEEBB0, &qword_1EBBEEB08, sub_1BA231D44);
    v0 = sub_1BA4A6218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEEBA8);
    }
  }
}

unint64_t sub_1BA23254C(uint64_t a1)
{
  *(a1 + 16) = sub_1BA23257C();
  result = sub_1BA2325D0();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1BA23257C()
{
  result = qword_1EBBEEBB8;
  if (!qword_1EBBEEBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEBB8);
  }

  return result;
}

unint64_t sub_1BA2325D0()
{
  result = qword_1EBBEEBC0[0];
  if (!qword_1EBBEEBC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBBEEBC0);
  }

  return result;
}

uint64_t sub_1BA232638(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BA232674(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1BA232780()
{
  sub_1B9F85D98(319, qword_1EDC6BB70, &type metadata for ConfigurationFeedItemActionContent, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DataLoggingPluginViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BA232878()
{
  type metadata accessor for DataLoggingPluginViewModel();
  if (v0 <= 0x3F)
  {
    sub_1BA232928(319, &qword_1EDC6B6C0, &qword_1EDC6B620, 0x1E696C1C0, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BA232928(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0ADF8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BA232990(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BA2329D8()
{
  result = qword_1EBBEEC60;
  if (!qword_1EBBEEC60)
  {
    sub_1BA23242C(255, &qword_1EBBEEBA0, sub_1BA232498, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1BA232990(&qword_1EBBEEC68, sub_1BA232498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEC60);
  }

  return result;
}

unint64_t sub_1BA232AE4()
{
  result = qword_1EBBEEC70;
  if (!qword_1EBBEEC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEC70);
  }

  return result;
}

unint64_t sub_1BA232B3C()
{
  result = qword_1EBBEEC78;
  if (!qword_1EBBEEC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEC78);
  }

  return result;
}

unint64_t sub_1BA232B94()
{
  result = qword_1EBBEEC80;
  if (!qword_1EBBEEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEC80);
  }

  return result;
}

unint64_t sub_1BA232BEC()
{
  result = qword_1EBBEEC88;
  if (!qword_1EBBEEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEC88);
  }

  return result;
}

unint64_t sub_1BA232C40()
{
  result = qword_1EDC6BD28;
  if (!qword_1EDC6BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BD28);
  }

  return result;
}

unint64_t sub_1BA232C94()
{
  result = qword_1EBBEECA0;
  if (!qword_1EBBEECA0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBEECA0);
  }

  return result;
}

void sub_1BA232CDC()
{
  if (!qword_1EBBEECE0)
  {
    sub_1BA232268(255, &qword_1EBBEEB28, sub_1BA231EAC, MEMORY[0x1E6981F40]);
    v0 = sub_1BA4A52C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEECE0);
    }
  }
}

uint64_t sub_1BA232D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1BA232DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1BA232268(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1BA232E44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA232EA4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BA1465C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BA232EE8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BA102AF4(result, a2, a3 & 1);
  }

  return result;
}

void sub_1BA232F2C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1BA232F38()
{
  if (!qword_1EBBEECE8)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBEECE8);
    }
  }
}

void sub_1BA232FB8()
{
  if (!qword_1EDC5E8B0)
  {
    sub_1BA232928(255, &qword_1EDC5E8B8, &unk_1EDC5E2D0, 0x1E69DCAD8, MEMORY[0x1E696B370]);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E8B0);
    }
  }
}

unint64_t sub_1BA23303C()
{
  result = qword_1EBBEECF0;
  if (!qword_1EBBEECF0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBEECF0);
  }

  return result;
}

uint64_t sub_1BA233084(uint64_t a1, uint64_t *a2)
{
  sub_1BA04B338(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_context;
  swift_beginAccess();
  sub_1BA2331A0(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA2330E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_context;
  swift_beginAccess();
  return sub_1BA04B338(v1 + v3, a1);
}

uint64_t sub_1BA233140(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_context;
  swift_beginAccess();
  sub_1BA2331A0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1BA2331A0(uint64_t a1, uint64_t a2)
{
  sub_1BA04B39C();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1BA233264()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_headerImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA2332B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_headerImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1BA233378()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView);
  }

  else
  {
    v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))();
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1BA233468(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView) = a1;
}

void (*sub_1BA23347C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA233378();
  return sub_1BA2334C4;
}

void sub_1BA2334C4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView) = v2;
}

id sub_1BA2334DC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle);
  }

  else
  {
    v4 = sub_1BA23353C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA23353C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  v2 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v0 setFont_];

  return v0;
}

void sub_1BA233640(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle) = a1;
}

void (*sub_1BA233654(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA2334DC();
  return sub_1BA23369C;
}

void sub_1BA23369C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle) = v2;
}

id sub_1BA2336DC(uint64_t *a1, uint64_t a2, double a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setDistribution_];
    [v9 setSpacing_];
    [v9 setAlignment_];
    v10 = *(v3 + v4);
    *(v3 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

void sub_1BA2337B4(int a1)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_isCompactVerticalLayout;
  v3 = v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_isCompactVerticalLayout];
  if (a1 == 2)
  {
    if (v3 == 2)
    {
      return;
    }
  }

  else
  {
    if (v3 == 2)
    {
      __break(1u);
      goto LABEL_13;
    }

    if (((v3 ^ a1) & 1) == 0)
    {
      return;
    }
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v3 & 1;
  *(v5 + 24) = v1;
  v11[4] = sub_1BA2357A8;
  v11[5] = v5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B9F0B040;
  v11[3] = &block_descriptor_28_1;
  v6 = _Block_copy(v11);
  v1;

  [v4 animateWithDuration:v6 animations:0.1];
  _Block_release(v6);
  v7 = v1[v2];
  if (v7 == 2)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v8 = objc_opt_self();
  if (v7)
  {
    v9 = &selRef_activateConstraints_;
  }

  else
  {
    v9 = &selRef_deactivateConstraints_;
  }

  swift_beginAccess();
  sub_1B9F740B0();

  v10 = sub_1BA4A6AE8();

  [v8 *v9];
}

void sub_1BA233988()
{
  v1 = v0;
  v69.receiver = v0;
  v69.super_class = type metadata accessor for FeatureOnboardingTileViewController();
  objc_msgSendSuper2(&v69, sel_viewDidLoad);
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v4 = sub_1BA4A74F8();
  }

  v7 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_isCompactVerticalLayout);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_isCompactVerticalLayout) = v4 & 1;
  sub_1BA2337B4(v7);
  sub_1B9F7A684();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5460;
  v9 = sub_1BA4A4858();
  v10 = MEMORY[0x1E69DC2B0];
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  v11 = sub_1BA4A4438();
  v12 = MEMORY[0x1E69DC130];
  *(v8 + 48) = v11;
  *(v8 + 56) = v12;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9FE8ED0();
  sub_1BA4A7228();
  swift_unknownObjectRelease();

  v14 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x168))(v13);
  v15 = v14;
  if (v14 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1BFAF2860](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = sub_1BA2336C8();
      [v21 addArrangedSubview_];

      ++v17;
      if (v20 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  v23 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x160))(v22);
  v24 = v23;
  v67 = v23 >> 62;
  if (v23 >> 62)
  {
    goto LABEL_29;
  }

  for (j = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1BA4A7CC8())
  {
    v26 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1BFAF2860](v26, v24);
      }

      else
      {
        if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v30 = sub_1BA2336B4();
      [v30 addArrangedSubview_];

      ++v26;
      if (v29 == j)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_30:
  sub_1B9F109F8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5890;
  *(inited + 32) = sub_1BA233378();
  *(inited + 40) = sub_1BA2334DC();
  *(inited + 48) = sub_1BA2336C8();
  *(inited + 56) = sub_1BA2336B4();
  v32 = inited & 0xFFFFFFFFFFFFFF8;
  v33 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_79;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_78;
  }

  for (k = *(inited + 32); ; k = MEMORY[0x1BFAF2860](0, inited))
  {
    v35 = k;
    v36 = [v1 view];
    if (!v36)
    {
      goto LABEL_88;
    }

    v37 = v36;
    [v36 addSubview_];

    if (v33)
    {
      v38 = MEMORY[0x1BFAF2860](1, inited);
    }

    else
    {
      if (*(v32 + 16) < 2uLL)
      {
        goto LABEL_78;
      }

      v38 = *(inited + 40);
    }

    v39 = v38;
    v40 = [v1 view];
    if (!v40)
    {
      goto LABEL_88;
    }

    v41 = v40;
    [v40 addSubview_];

    if (v33)
    {
      v42 = MEMORY[0x1BFAF2860](2, inited);
    }

    else
    {
      if (*(v32 + 16) < 3uLL)
      {
        goto LABEL_78;
      }

      v42 = *(inited + 48);
    }

    v43 = v42;
    v44 = [v1 view];
    if (!v44)
    {
      goto LABEL_88;
    }

    v45 = v44;
    [v44 addSubview_];

    if (v33)
    {
      v46 = MEMORY[0x1BFAF2860](3, inited);
    }

    else
    {
      if (*(v32 + 16) < 4uLL)
      {
        goto LABEL_78;
      }

      v46 = *(inited + 56);
    }

    v47 = v46;
    v48 = [v1 view];
    if (!v48)
    {
      goto LABEL_88;
    }

    v49 = v48;
    [v48 addSubview_];

    swift_setDeallocating();
    swift_arrayDestroy();
    if (!j)
    {
      goto LABEL_53;
    }

    if ((v24 & 0xC000000000000001) == 0)
    {
      break;
    }

    v68 = MEMORY[0x1BFAF2860](0, v24);
    v50 = v67;
    if (j < 1)
    {
      goto LABEL_84;
    }

LABEL_50:
    if (v50)
    {
      if (sub_1BA4A7CC8() < 1)
      {
        goto LABEL_87;
      }

      v51 = sub_1BA4A7CC8();
    }

    else
    {
      v51 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v51)
      {
        __break(1u);
LABEL_53:

LABEL_67:
        sub_1BA2343D4();
        return;
      }
    }

    if (v51 < j)
    {
      goto LABEL_86;
    }

    if ((v24 & 0xC000000000000001) == 0 || j == 1)
    {

      if (v50)
      {
        goto LABEL_64;
      }
    }

    else
    {
      type metadata accessor for FeatureOnboardingBulletListItemView();

      v52 = 1;
      do
      {
        v53 = v52 + 1;
        sub_1BA4A7E08();
        v52 = v53;
      }

      while (j != v53);
      if (v50)
      {
LABEL_64:

        v54 = sub_1BA4A8058();
        v55 = v57;
        v56 = v58;
        j = v59 >> 1;
        goto LABEL_65;
      }
    }

    v54 = v24 & 0xFFFFFFFFFFFFFF8;
    v55 = (v24 & 0xFFFFFFFFFFFFFF8) + 32;
    v56 = 1;
LABEL_65:
    v66 = v54;
    swift_unknownObjectRetain();

    v33 = j - v56;
    if (j == v56)
    {
LABEL_66:

      swift_unknownObjectRelease_n();
      goto LABEL_67;
    }

    v67 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_titleLabel;
    v60 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_bulletTitleVerticalAlignmentConstraints;
    if (j <= v56)
    {
      v61 = v56;
    }

    else
    {
      v61 = j;
    }

    v32 = v61 - v56;
    inited = v55 + 8 * v56;
    while (v32)
    {
      v62 = *(*inited + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_titleLabel);
      v24 = *inited;
      v63 = [v62 leadingAnchor];
      v64 = [*&v68[v67] leadingAnchor];
      j = [v63 constraintEqualToAnchor_];

      v65 = swift_beginAccess();
      MEMORY[0x1BFAF1510](v65);
      if (*((*(v1 + v60) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v60) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      swift_endAccess();

      --v32;
      inited += 8;
      if (!--v33)
      {
        goto LABEL_66;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    ;
  }

  v50 = v67;
  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_85;
  }

  v68 = *(v24 + 32);
  if (j >= 1)
  {
    goto LABEL_50;
  }

LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

void sub_1BA2341D8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 traitCollection];
    v5 = [v4 horizontalSizeClass];

    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      v7 = [a1 traitCollection];
      v8 = [v7 preferredContentSizeCategory];

      v6 = sub_1BA4A74F8();
    }

    v9 = v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_isCompactVerticalLayout];
    v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_isCompactVerticalLayout] = v6 & 1;
    sub_1BA2337B4(v9);
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 view];

    if (!v12)
    {
      __break(1u);
      goto LABEL_14;
    }

    [v12 invalidateIntrinsicContentSize];
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v15 = [v13 view];

  if (!v15)
  {
LABEL_14:
    __break(1u);
    return;
  }

  [v15 setNeedsLayout];
}

void sub_1BA2343D4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1 || (v4 = [v1 traitCollection], v5 = objc_msgSend(v4, sel_preferredContentSizeCategory), v4, LOBYTE(v4) = sub_1BA4A74F8(), v5, (v4 & 1) != 0))
  {
    v6 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_bulletTitleVerticalAlignmentConstraints;
    swift_beginAccess();
    v107 = *(v1 + v6);

    v7 = 1;
  }

  else
  {
    v7 = 0;
    v107 = MEMORY[0x1E69E7CC0];
  }

  if (_UISolariumEnabled())
  {
    v8 = 78.0;
  }

  else
  {
    v8 = 20.0;
  }

  sub_1B9F109F8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4C84A0;
  v10 = sub_1BA233378();
  v11 = [v10 topAnchor];

  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_23;
  }

  v13 = v12;
  v14 = [v12 topAnchor];

  v15 = [v11 constraintEqualToAnchor:v14 constant:22.0];
  *(v9 + 32) = v15;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView;
  v17 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView) leadingAnchor];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = v18;
  v106 = v7;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintGreaterThanOrEqualToAnchor:v20 constant:20.0];
  *(v9 + 40) = v21;
  v22 = [v1 view];
  if (!v22)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = [*(v1 + v16) trailingAnchor];
  v26 = [v24 constraintGreaterThanOrEqualToAnchor:v25 constant:20.0];

  *(v9 + 48) = v26;
  v27 = [*(v1 + v16) centerXAnchor];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v29 = v28;
  v30 = [v28 centerXAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  *(v9 + 56) = v31;
  v32 = [*(v1 + v16) heightAnchor];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))();
  v33 = [v32 constraintEqualToConstant_];

  *(v9 + 64) = v33;
  v34 = [*(v1 + v16) widthAnchor];
  v35 = [*(v1 + v16) heightAnchor];
  [*(v1 + v16) bounds];
  v37 = v36;
  [*(v1 + v16) bounds];
  v39 = [v34 constraintEqualToAnchor:v35 multiplier:v37 / (v38 + -3.0)];

  *(v9 + 72) = v39;
  v40 = sub_1BA2334DC();
  v41 = [v40 topAnchor];

  v42 = [*(v1 + v16) bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:12.0];

  *(v9 + 80) = v43;
  v44 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle;
  v45 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle) leadingAnchor];
  v46 = [v1 view];
  if (!v46)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v47 = v46;
  v48 = [v46 leadingAnchor];

  v49 = [v45 constraintGreaterThanOrEqualToAnchor:v48 constant:20.0];
  *(v9 + 88) = v49;
  v50 = [v1 view];
  if (!v50)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v51 = v50;
  v52 = [v50 trailingAnchor];

  v53 = [*(v1 + v44) trailingAnchor];
  v54 = [v52 constraintGreaterThanOrEqualToAnchor:v53 constant:20.0];

  *(v9 + 96) = v54;
  v55 = [*(v1 + v44) centerXAnchor];
  v56 = [v1 view];
  if (!v56)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v57 = v56;
  v58 = [v56 centerXAnchor];

  v59 = [v55 constraintEqualToAnchor_];
  *(v9 + 104) = v59;
  v60 = sub_1BA2336B4();
  v61 = [v60 leadingAnchor];

  v62 = [v1 view];
  if (!v62)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v63 = v62;
  v64 = [v62 leadingAnchor];

  v65 = [v61 constraintEqualToAnchor:v64 constant:20.0];
  *(v9 + 112) = v65;
  v66 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___bulletStack;
  v67 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___bulletStack) topAnchor];
  v68 = [*(v1 + v44) bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:20.0];

  *(v9 + 120) = v69;
  v70 = [v1 view];
  if (!v70)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v71 = v70;
  v72 = [v70 trailingAnchor];

  v73 = [*(v1 + v66) trailingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:20.0];

  *(v9 + 128) = v74;
  v75 = sub_1BA2336C8();
  v76 = [v75 leadingAnchor];

  v77 = [v1 view];
  if (!v77)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v78 = v77;
  v79 = [v77 leadingAnchor];

  v80 = [v76 constraintEqualToAnchor:v79 constant:v8];
  *(v9 + 136) = v80;
  v81 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___buttonStack;
  v82 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___buttonStack) topAnchor];
  v83 = [*(v1 + v66) bottomAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:24.0];

  *(v9 + 144) = v84;
  v85 = [*(v1 + v81) centerXAnchor];
  v86 = [v1 view];
  if (!v86)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v87 = v86;
  v88 = [v86 centerXAnchor];

  v89 = [v85 constraintEqualToAnchor_];
  *(v9 + 152) = v89;
  v90 = [v1 view];
  if (!v90)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v91 = v90;
  v92 = [v90 trailingAnchor];

  v93 = [*(v1 + v81) trailingAnchor];
  v94 = [v92 constraintEqualToAnchor:v93 constant:v8];

  *(v9 + 160) = v94;
  v95 = [v1 view];
  if (v95)
  {
    v96 = v95;
    v97 = objc_opt_self();
    v98 = [v96 bottomAnchor];

    v99 = [*(v1 + v81) bottomAnchor];
    v100 = [v98 constraintEqualToAnchor:v99 constant:24.0];

    *(v9 + 168) = v100;
    sub_1B9F73B50(v107);
    sub_1B9F740B0();
    v101 = sub_1BA4A6AE8();

    [v97 activateConstraints_];

    v102 = objc_opt_self();
    v103 = swift_allocObject();
    *(v103 + 16) = v106;
    *(v103 + 24) = v1;
    aBlock[4] = sub_1BA235798;
    aBlock[5] = v103;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_61;
    v104 = _Block_copy(aBlock);
    v105 = v1;

    [v102 animateWithDuration:v104 animations:0.1];
    _Block_release(v104);
    return;
  }

LABEL_34:
  __break(1u);
}

id sub_1BA234F50(char a1, uint64_t a2)
{
  v4 = sub_1BA2336B4();
  v5 = v4;
  if (a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  if (a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  [v4 setAxis_];

  v8 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___bulletStack;
  [*(a2 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___bulletStack) setDistribution_];
  [*(a2 + v8) setAlignment_];
  v9 = sub_1BA2336C8();
  [v9 setAxis_];

  v10 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___buttonStack;
  [*(a2 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___buttonStack) setDistribution_];
  v11 = *(a2 + v10);

  return [v11 setAlignment_];
}

id FeatureOnboardingTileViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id FeatureOnboardingTileViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_context];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_headerImage] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___bulletStack] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___buttonStack] = 0;
  v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_isCompactVerticalLayout] = 2;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_bulletTitleVerticalAlignmentConstraints] = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for FeatureOnboardingTileViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id FeatureOnboardingTileViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FeatureOnboardingTileViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_headerImage] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___bulletStack] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___buttonStack] = 0;
  v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_isCompactVerticalLayout] = 2;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_bulletTitleVerticalAlignmentConstraints] = MEMORY[0x1E69E7CC0];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FeatureOnboardingTileViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id FeatureOnboardingTileViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureOnboardingTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void AllHighlightsForDataTypeViewController.__allocating_init(hkType:healthStore:healthExperienceStore:hideShowAllButton:provenance:)(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hkType] = a1;
  *&v14[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthStore] = a2;
  sub_1B9F0A534(a3, &v14[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthExperienceStore]);
  v14[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hideShowAllButton] = a4;
  v15 = &v14[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_provenance];
  *v15 = a5;
  v15[1] = a6;
  sub_1B9F0A534(a3, v32);
  type metadata accessor for AllHighlightsForDataTypeDataSource();
  swift_allocObject();

  v16 = a1;
  v17 = a2;
  sub_1BA237ED8(v16, v17, v32, a4);

  v19 = CompoundDataSourceCollectionViewController.init(dataSource:)(v18);
  v20 = qword_1EDC5E100;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1B9F1B5B8(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B5480;
  v23 = [v17 displayTypeController];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 displayTypeForObjectType_];

    if (v25)
    {

      v26 = [v25 localization];

      v27 = [v26 displayName];
      v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v30 = v29;

      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1B9F1BE20();
      *(v22 + 32) = v28;
      *(v22 + 40) = v30;
      sub_1BA4A6768();

      v31 = sub_1BA4A6758();

      [v21 setTitle_];

      __swift_destroy_boxed_opaque_existential_1(a3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t AllHighlightsForDataTypeViewController.init(hkType:healthStore:healthExperienceStore:hideShowAllButton:provenance:)(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  sub_1BA238110(a1, a2, a3, a4, a5, a6);
  v9 = v8;

  return v9;
}

uint64_t AllHighlightsForDataTypeViewController.__allocating_init(userActivity:healthStore:healthExperienceStore:provenance:)(void *a1, void *a2, uint64_t a3)
{
  v43 = sub_1BA4A3EA8();
  v7 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A35F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = [a1 userInfo];
  v15 = MEMORY[0x1E69E7CA0];
  if (!v14)
  {
    v47 = 0u;
    v48 = 0u;
    goto LABEL_15;
  }

  v41 = v3;
  v42 = a2;
  v16 = a1;
  v17 = a3;
  v18 = v14;
  v19 = sub_1BA4A6628();

  (*(v11 + 104))(v13, *MEMORY[0x1E69A2B88], v10);
  v20 = sub_1BA4A35E8();
  v22 = v21;
  (*(v11 + 8))(v13, v10);
  v44 = v20;
  v45 = v22;
  sub_1BA4A7D58();
  if (!*(v19 + 16) || (v23 = sub_1B9FDA8E4(v46), (v24 & 1) == 0))
  {

    sub_1B9FDC768(v46);
    v47 = 0u;
    v48 = 0u;
    a3 = v17;
    a1 = v16;
    a2 = v42;
    v15 = MEMORY[0x1E69E7CA0];
    goto LABEL_15;
  }

  sub_1B9F0AD9C(*(v19 + 56) + 32 * v23, &v47);
  sub_1B9FDC768(v46);

  a3 = v17;
  a1 = v16;
  a2 = v42;
  v15 = MEMORY[0x1E69E7CA0];
  if (!*(&v48 + 1))
  {
LABEL_15:
    sub_1B9F0DDA0(&v47, &qword_1EDC6E300, v15 + 8, MEMORY[0x1E69E6720], sub_1B9F234D4);
    goto LABEL_16;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6E360);
  if (swift_dynamicCast())
  {
    v25 = v46[0];
    v26 = [objc_opt_self() dataTypeWithCode_];
    if (v26)
    {
      v27 = v26;
      v28 = [a1 userInfo];
      if (v28)
      {
        v29 = v28;
        v30 = sub_1BA4A6628();

        *&v47 = 0xD000000000000011;
        *(&v47 + 1) = 0x80000001BA4F5D70;
        sub_1BA4A7D58();
        if (*(v30 + 16))
        {
          v31 = sub_1B9FDA8E4(v46);
          if (v32)
          {
            sub_1B9F0AD9C(*(v30 + 56) + 32 * v31, &v47);
            sub_1B9FDC768(v46);

            if (*(&v48 + 1))
            {
              v33 = swift_dynamicCast();
              v34 = v41;
              if (v33)
              {
                v35 = LOBYTE(v46[0]);
              }

              else
              {
                v35 = 0;
              }

              goto LABEL_24;
            }

LABEL_23:
            sub_1B9F0DDA0(&v47, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B9F234D4);
            v35 = 0;
            v34 = v41;
LABEL_24:
            sub_1B9F0A534(a3, v46);
            v40 = (*(v34 + 344))(v27, v42, v46, v35, 0x7463412072657355, 0xED00007974697669);

            __swift_destroy_boxed_opaque_existential_1(a3);
            return v40;
          }
        }

        sub_1B9FDC768(v46);
      }

      v47 = 0u;
      v48 = 0u;
      goto LABEL_23;
    }
  }

LABEL_16:
  sub_1BA4A3DD8();
  v36 = sub_1BA4A3E88();
  v37 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1B9F07000, v36, v37, "Could not get the type code from the NSUserActivity", v38, 2u);
    MEMORY[0x1BFAF43A0](v38, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1(a3);
  (*(v7 + 8))(v9, v43);
  return 0;
}

id sub_1BA23624C()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for AllHighlightsForDataTypeViewController();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = sub_1BA4A6AE8();
    v4 = HKUIJoinStringsForAutomationIdentifier();

    [v2 setAccessibilityIdentifier_];
    v9 = 10;
    if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_provenance + 8])
    {
      v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_provenance];
      v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_provenance + 8];
    }

    else
    {
      v6 = 0xE300000000000000;
      v5 = 7104878;
    }

    type metadata accessor for HealthAppAnalyticsManager();
    v8 = 0;
    memset(v7, 0, sizeof(v7));

    static HealthAppAnalyticsManager.submitInteraction(action:viewController:analyticProvenance:pinnedContentManager:)(&v9, v0, v5, v6, v7);

    return sub_1BA238640(v7, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id AllHighlightsForDataTypeViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1BA2364E0()
{
  v1 = sub_1BA4A35F8();
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v39 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BA4A3678();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1B9F1B5B8(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B5480;
  v8 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthStore] displayTypeController];
  if (!v8)
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8;
  v42 = v0;
  v10 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hkType];
  v11 = [v8 displayTypeForObjectType_];

  if (!v11)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v12 = [v11 localization];

  v13 = [v12 displayName];
  v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v16 = v15;

  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B9F1BE20();
  *(v7 + 32) = v14;
  *(v7 + 40) = v16;
  sub_1BA4A6768();

  (*(v4 + 104))(v6, *MEMORY[0x1E69A2BF8], v3);
  v17 = sub_1BA4A35B8();

  (*(v4 + 8))(v6, v3);
  v18 = [v17 userInfo];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1BA4A6628();

    v22 = v40;
    v21 = v41;
    v23 = v10;
    v24 = v39;
    (*(v40 + 104))(v39, *MEMORY[0x1E69A2B88], v41);
    v25 = sub_1BA4A35E8();
    v27 = v26;
    (*(v22 + 8))(v24, v21);
    *&v45 = v25;
    *(&v45 + 1) = v27;
    sub_1BA4A7D58();
    v28 = [v23 code];
    v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v46 = sub_1B9F0ADF8(0, &qword_1EDC6E360);
    *&v45 = v29;
    sub_1B9F46920(&v45, v44);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v20;
    sub_1B9FF1AE4(v44, v47, isUniquelyReferenced_nonNull_native);
    sub_1B9FDC768(v47);
    if (v43)
    {
      v31 = sub_1BA4A6618();
    }

    else
    {
      v31 = 0;
    }

    v32 = v42;
    [v17 setUserInfo_];
  }

  else
  {
    [v17 setUserInfo_];
    v32 = v42;
  }

  v33 = [v17 userInfo];
  if (v33)
  {
    v34 = v33;
    v35 = sub_1BA4A6628();

    *&v45 = 0xD000000000000011;
    *(&v45 + 1) = 0x80000001BA4F5D70;
    sub_1BA4A7D58();
    v36 = v32[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hideShowAllButton];
    v46 = MEMORY[0x1E69E6370];
    LOBYTE(v45) = v36;
    sub_1B9F46920(&v45, v44);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v43 = v35;
    sub_1B9FF1AE4(v44, v47, v37);
    sub_1B9FDC768(v47);
    if (v43)
    {
      v38 = sub_1BA4A6618();
    }

    else
    {
      v38 = 0;
    }

    [v17 setUserInfo_];
  }

  else
  {
    [v17 setUserInfo_];
  }

  [v32 setUserActivity_];
}

id AllHighlightsForDataTypeViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_1BA236C1C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthExperienceStore);
}

id AllHighlightsForDataTypeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AllHighlightsForDataTypeViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA236D80(__int128 *a1)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  static GridLayoutEngine.largeCard.getter(&v16);
  v14 = v8;
  v15 = v2;
  v3 = GridLayoutEngine.layout(for:)(&v14);
  if (v1)
  {
    v11 = v18;
    v12 = v19;
    v13 = v20;
    v9 = v16;
    v10 = v17;
    return sub_1B9F5A690(&v9);
  }

  else
  {
    v5 = v3;
    v11 = v18;
    v12 = v19;
    v13 = v20;
    v9 = v16;
    v10 = v17;
    sub_1B9F5A690(&v9);
    v6 = [objc_opt_self() estimatedDimension_];
    v7 = sub_1B9F5CA58(v6, 2);

    return v7;
  }
}

uint64_t sub_1BA236E80(uint64_t a1, uint64_t a2)
{
  if (sub_1BA4A2068() == a1 && v4 == a2)
  {

    return 0;
  }

  v5 = sub_1BA4A8338();

  if (v5)
  {
    return 0;
  }

  if (sub_1BA4A2048() == a1 && v7 == a2)
  {
    goto LABEL_29;
  }

  v8 = sub_1BA4A8338();

  if (v8)
  {
    goto LABEL_10;
  }

  if (sub_1BA4A2038() == a1 && v9 == a2)
  {

    goto LABEL_16;
  }

  v10 = sub_1BA4A8338();

  if (v10)
  {
LABEL_16:
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_33;
  }

  if (sub_1BA4A2078() == a1 && v11 == a2)
  {
    goto LABEL_29;
  }

  v12 = sub_1BA4A8338();

  if (v12)
  {
    goto LABEL_10;
  }

  if (sub_1BA4A2098() == a1 && v13 == a2)
  {

    goto LABEL_25;
  }

  v14 = sub_1BA4A8338();

  if (v14)
  {
LABEL_25:
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_33;
  }

  if (sub_1BA4A2088() == a1 && v15 == a2)
  {
LABEL_29:

    goto LABEL_10;
  }

  v16 = sub_1BA4A8338();

  if ((v16 & 1) == 0)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_33;
  }

LABEL_10:
  if (qword_1EDC5E100 != -1)
  {
LABEL_33:
    swift_once();
  }

  return sub_1BA4A1318();
}

void sub_1BA237244(void *a1, uint64_t a2, void *a3)
{
  sub_1B9F0A534(a2, v11);
  *(objc_allocWithZone(type metadata accessor for AllHighlightsByCategoryViewController()) + OBJC_IVAR____TtC18HealthExperienceUI37AllHighlightsByCategoryViewController_provenance) = xmmword_1BA4C8530;
  v5 = [objc_opt_self() allCategories];
  sub_1B9F0ADF8(0, &qword_1EDC6B5C0);
  v6 = sub_1BA4A6B08();

  sub_1B9F0A534(v11, v10);
  type metadata accessor for AllHighlightsByCategoryDataSource(0);
  swift_allocObject();
  v7 = a3;
  v8 = sub_1BA46DEFC(v6, v10, v7);

  v9 = CompoundDataSourceCollectionViewController.init(dataSource:)(v8);
  __swift_destroy_boxed_opaque_existential_1(v11);
  [a1 showViewController:v9 sender:a1];
}

uint64_t sub_1BA2373B4()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI34AllHighlightsForDataTypeDataSource_healthExperienceStore;

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t AllHighlightsForDataTypeDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI34AllHighlightsForDataTypeDataSource_healthExperienceStore);
  return v0;
}

uint64_t AllHighlightsForDataTypeDataSource.__deallocating_deinit()
{
  AllHighlightsForDataTypeDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA23753C(void *a1, uint64_t a2)
{
  v62 = a2;
  v54 = a1;
  v2 = sub_1BA4A1798();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2385D0(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &v49 - v5;
  v53 = sub_1BA4A3FB8();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1BA4A3F18();
  v8 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContentConfigurationItem();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A4428();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A4418();
  v56 = v17;
  sub_1BA4A43B8();
  sub_1B9F0A534(v62, &v63);
  v18 = swift_allocObject();
  v62 = v18;
  sub_1B9F1134C(&v63, v18 + 16);
  v19 = v54;
  *(v18 + 56) = v54;
  v20 = MEMORY[0x1E69DC110];
  v49 = 0x80000001BA4F5FE0;
  *(v13 + 12) = v14;
  *(v13 + 13) = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13 + 9);
  v57 = v15;
  (*(v15 + 16))(boxed_opaque_existential_1, v17, v14);
  sub_1BA2385D0(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v55 = v14;
  v22 = swift_allocObject();
  v61 = xmmword_1BA4B5480;
  *(v22 + 16) = xmmword_1BA4B5480;
  v23 = v50;
  (*(v8 + 104))(v10, *MEMORY[0x1E69DBF28], v50);
  v24 = sub_1BA4A3F48();
  (*(*(v24 - 8) + 56))(v52, 1, 1, v24);
  v25 = v19;
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v51 + 8))(v7, v53);
  (*(v8 + 8))(v10, v23);
  v26 = v11[10];
  v27 = v62;

  sub_1BA4A4158();
  v28 = sub_1BA4A4168();
  (*(*(v28 - 8) + 56))(&v13[v26], 0, 1, v28);
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  sub_1BA238640(&v63, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  *(&v64 + 1) = &type metadata for BasicCellSelectionHandler;
  v65 = &off_1F381BCC8;
  *&v63 = sub_1BA238634;
  *(&v63 + 1) = v27;
  LOBYTE(v64) = 2;
  sub_1B9F2F698(&v63, (v13 + 16));
  *&v13[v11[12]] = 0;
  *&v13[v11[13]] = 0;
  *v13 = 0xD000000000000013;
  *(v13 + 1) = v49;
  v13[112] = 0;
  *(v13 + 15) = v22;
  *(v13 + 7) = 0;
  *(v13 + 8) = 0;
  v29 = &v13[v11[11]];
  *v29 = 0;
  *(v29 + 1) = 0;
  sub_1BA238640(&v63, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  sub_1B9F234D4(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v30 = swift_allocObject();
  *(v30 + 16) = v61;
  sub_1B9F1B5B8(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = v61;
  *(v31 + 56) = v11;
  *(v31 + 64) = sub_1BA238EE8(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem);
  v32 = __swift_allocate_boxed_opaque_existential_1((v31 + 32));
  sub_1BA224BD0(v13, v32);
  v33 = v58;
  sub_1BA4A1788();
  *&v61 = sub_1BA4A1748();
  v35 = v34;
  v36 = v60;
  v37 = *(v59 + 8);
  v37(v33, v60);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v39 = Array<A>.identifierToIndexDict()(v38);

  *(v30 + 32) = 0;
  *(v30 + 40) = 0;
  *(v30 + 48) = v31;
  *(v30 + 56) = v39;
  *(v30 + 64) = v61;
  *(v30 + 72) = v35;
  *&v63 = 0x3C53447961727241;
  *(&v63 + 1) = 0xE800000000000000;
  sub_1BA4A1788();
  v40 = sub_1BA4A1748();
  v42 = v41;
  v37(v33, v36);
  MEMORY[0x1BFAF1350](v40, v42);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v43 = v63;
  type metadata accessor for ArrayDataSource();
  swift_allocObject();
  v44 = sub_1B9F348D8(v30, v43, *(&v43 + 1));

  (*(v57 + 8))(v56, v55);
  v45 = swift_allocObject();
  v45[2] = sub_1B9F5AEA0;
  v45[3] = 0;
  v45[4] = v44;
  sub_1BA238F30(0, &qword_1EBBEAB10, type metadata accessor for ArrayDataSource, &protocol witness table for ArrayDataSource, type metadata accessor for DataSourceWithLayout);
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  v47 = v44[6];
  *(v46 + 24) = v44[5];
  *(v46 + 32) = v47;
  *(v46 + 40) = 0;
  *(v46 + 48) = sub_1BA2386B0;
  *(v46 + 56) = v45;

  sub_1BA224B74(v13);
  return v46;
}

uint64_t sub_1BA237ED8(void *a1, void *a2, uint64_t a3, char a4)
{
  v9 = *v4;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI34AllHighlightsForDataTypeDataSource_hkType) = a1;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI34AllHighlightsForDataTypeDataSource_healthStore) = a2;
  sub_1B9F0A534(a3, v4 + OBJC_IVAR____TtC18HealthExperienceUI34AllHighlightsForDataTypeDataSource_healthExperienceStore);
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI34AllHighlightsForDataTypeDataSource_hideShowAllButton) = a4;
  sub_1B9F234D4(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9A90;
  v11 = a1;
  v12 = a2;
  *(inited + 32) = sub_1BA4A2048();
  *(inited + 40) = v13;
  *(inited + 48) = sub_1BA4A2038();
  *(inited + 56) = v14;
  *(inited + 64) = sub_1BA4A2078();
  *(inited + 72) = v15;
  *(inited + 80) = sub_1BA4A2098();
  *(inited + 88) = v16;
  *(inited + 96) = sub_1BA4A2088();
  *(inited + 104) = v17;
  v28[2] = v11;
  v28[3] = v12;
  v28[4] = a3;
  v28[5] = v9;
  v18 = sub_1BA24AD10(sub_1BA238590, v28, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if ((a4 & 1) == 0)
  {
    v19 = sub_1BA23753C(v12, a3);
    v21 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_1B9F1E00C(0, *(v18 + 16) + 1, 1, v18);
      v29 = v18;
    }

    v24 = *(v18 + 16);
    v23 = *(v18 + 24);
    if (v24 >= v23 >> 1)
    {
      v18 = sub_1B9F1E00C(v23 > 1, v24 + 1, 1, v18);
      v29 = v18;
    }

    ObjectType = swift_getObjectType();
    sub_1BA1BA008(v24, v19, &v29, ObjectType, v21);
  }

  v26 = CompoundSectionedDataSource.init(_:)(v18);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v26;
}

void sub_1BA238110(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  *(v7 + OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hkType) = a1;
  *(v7 + OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthStore) = a2;
  sub_1B9F0A534(a3, v7 + OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthExperienceStore);
  *(v7 + OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hideShowAllButton) = a4;
  v14 = (v7 + OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_provenance);
  *v14 = a5;
  v14[1] = a6;
  sub_1B9F0A534(a3, v31);
  type metadata accessor for AllHighlightsForDataTypeDataSource();
  swift_allocObject();

  v15 = a1;
  v16 = a2;
  sub_1BA237ED8(v15, v16, v31, a4);

  v18 = CompoundDataSourceCollectionViewController.init(dataSource:)(v17);
  v19 = qword_1EDC5E100;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1B9F1B5B8(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B5480;
  v22 = [v16 displayTypeController];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 displayTypeForObjectType_];

    if (v24)
    {

      v25 = [v24 localization];

      v26 = [v25 displayName];
      v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v29 = v28;

      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = sub_1B9F1BE20();
      *(v21 + 32) = v27;
      *(v21 + 40) = v29;
      sub_1BA4A6768();

      v30 = sub_1BA4A6758();

      [v20 setTitle_];

      __swift_destroy_boxed_opaque_existential_1(a3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t type metadata accessor for AllHighlightsForDataTypeDataSource()
{
  result = qword_1EBBEED80;
  if (!qword_1EBBEED80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BA238590@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1BA2386D0(*(v2 + 16), *a1, a1[1], *(v2 + 32));
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_1BA2385D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA238640(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F1B5B8(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void *sub_1BA2386D0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v71 = a4;
  v66 = a2;
  v67 = a3;
  v5 = sub_1BA4A4428();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v62 - v8;
  v9 = MEMORY[0x1E6968130];
  v10 = MEMORY[0x1E69E6720];
  sub_1BA2385D0(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v62 - v12;
  sub_1BA4A27B8();
  v70 = MEMORY[0x1BFAED110]();
  v14 = MEMORY[0x1E69E6F90];
  sub_1B9F234D4(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v65 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B5470;
  *(v16 + 32) = a1;
  v17 = a1;
  v18 = MEMORY[0x1BFAED000](v16);

  sub_1BA2385D0(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v19 = sub_1BA4A1C68();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B5480;
  (*(v20 + 104))(v22 + v21, *MEMORY[0x1E69A3BF8], v19);
  v23 = sub_1BA4A0FA8();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  sub_1B9F234D4(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], v14);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BA4B5460;
  *(v24 + 32) = sub_1BA4A1D78();
  *(v24 + 40) = 0;
  v26 = v66;
  v25 = v67;
  v27 = sub_1BA4A25F8();

  sub_1B9F0DDA0(v13, &qword_1EDC6E2A0, v9, v10, sub_1BA2385D0);
  v28 = swift_allocObject();
  v64 = xmmword_1BA4B7510;
  *(v28 + 16) = xmmword_1BA4B7510;
  *(v28 + 32) = v18;
  *(v28 + 40) = v27;
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v69 = v18;
  v68 = v27;
  v29 = sub_1BA4A6AE8();

  v30 = [objc_opt_self() andPredicateWithSubpredicates_];
  v63 = v30;

  v31 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v32 = sub_1BA4A6758();
  v33 = [v31 initWithKey:v32 ascending:1];

  sub_1BA4A2798();
  v34 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v35 = sub_1BA4A6758();

  v36 = [v34 initWithKey:v35 ascending:1];

  v37 = swift_allocObject();
  *(v37 + 16) = v64;
  *(v37 + 32) = v33;
  *(v37 + 40) = v36;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v65 = v33;
  *&v64 = v36;
  v38 = sub_1BA4A6AE8();

  v39 = v70;
  [v70 setSortDescriptors_];

  [v39 setPredicate_];
  __swift_project_boxed_opaque_existential_1(v71, v71[3]);
  v40 = v39;
  v41 = sub_1BA4A1B68();
  v42 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v40 managedObjectContext:v41 sectionNameKeyPath:0 cacheName:0];

  sub_1BA0649AC();
  v44 = objc_allocWithZone(v43);
  v45 = &v44[qword_1EDC61AF0];
  *v45 = sub_1BA236D80;
  v45[1] = 0;
  v46 = v42;
  v47 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v46);
  v48 = sub_1BA236E80(v26, v25);
  v50 = v49;
  v51 = v72;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v52 = v73;
  v53 = v74;
  v54 = v75;
  (*(v74 + 16))(v73, v51, v75);
  v55 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v48, v50, 0, 0, 0, 0, v52, 0, 0);
  v57 = v56;
  (*(v53 + 8))(v51, v54);
  v77[3] = v55;
  v77[4] = sub_1BA238EE8(&qword_1EDC69800, type metadata accessor for HeaderItem);

  v77[0] = v57;
  sub_1B9F0A534(v77, v76);
  v58 = swift_allocObject();
  sub_1B9F1134C(v76, v58 + 16);
  sub_1BA238F30(0, &qword_1EBBEED90, sub_1BA0649AC, &protocol witness table for FetchedResultsControllerDataSource<A>, type metadata accessor for Supplementary);
  v59 = swift_allocObject();
  v59[4] = v47;
  v59[5] = sub_1B9F79BC8;
  v59[6] = v58;
  v60 = *&v47[qword_1EDC84AD0 + 8];
  v59[2] = *&v47[qword_1EDC84AD0];
  v59[3] = v60;

  __swift_destroy_boxed_opaque_existential_1(v77);
  return v59;
}

uint64_t sub_1BA238EE8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA238F30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t PlaceholderVisibilityRule.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t InteractivePickerRow.init(hidePlaceholder:label:showClearButton:clearButtonOnRight:onInteract:placeholderVisibility:baseAutomationIdentifier:inputPickerView:placeholderView:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = *a11;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 41) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a14;
  *(a9 + 72) = a15;
  *(a9 + 80) = a16;
  *(a9 + 88) = a17;
  *(a9 + 96) = v17;
  *(a9 + 104) = a12;
  *(a9 + 112) = a13;
  return result;
}

void *sub_1BA239084@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v4 = v2[4];
  v5 = v2[6];
  v27 = v2[5];
  v28 = v5;
  v6 = v2[1];
  v22 = *v2;
  v7 = v2[2];
  v8 = v2[3];
  v23 = v6;
  v24 = v7;
  v29 = *(v2 + 14);
  v25 = v8;
  v26 = v4;
  if ((BYTE8(v7) & 1) != 0 && (v9 = result, v20 = v22, v21 = v23 & 1, sub_1BA23E420(0, &qword_1EBBEEF30, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]), result = MEMORY[0x1BFAF0CD0](&v30), v30 == 1))
  {
    v11 = *(&v28 + 1);
    v10 = v29;
    v12 = swift_allocObject();
    v13 = *(v9 + 2);
    *(v12 + 16) = *(v9 + 1);
    *(v12 + 32) = v13;
    v14 = v27;
    v15 = v28;
    v16 = v25;
    *(v12 + 112) = v26;
    *(v12 + 128) = v14;
    *(v12 + 144) = v15;
    v17 = v23;
    v18 = v24;
    *(v12 + 48) = v22;
    *(v12 + 64) = v17;
    *(v12 + 160) = v29;
    *(v12 + 80) = v18;
    *(v12 + 96) = v16;

    result = (*(*(v9 - 1) + 16))(&v20, &v22, v9);
    v19 = sub_1BA23E3C0;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v19 = 0;
    v12 = 0;
  }

  *a2 = v11;
  a2[1] = v10;
  a2[2] = v19;
  a2[3] = v12;
  return result;
}

uint64_t sub_1BA239208(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[6];
  if (v10)
  {
    v10();
  }

  v11 = *a1;
  v12 = a1[1];
  v22 = *(a1 + 16);
  v20 = *(a1 + 81);
  *v21 = *(a1 + 97);
  *&v21[15] = a1[14];
  v16 = *(a1 + 17);
  v17 = *(a1 + 33);
  v18 = *(a1 + 49);
  v19 = *(a1 + 65);
  v23 = a2;
  v24 = a3;
  *v25 = a4;
  *&v25[8] = a5;
  v13 = type metadata accessor for InteractivePickerRow();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v23, a1, v13);
  v23 = v11;
  v24 = v12;
  v25[0] = v22;
  v31 = 0;
  sub_1BA23E420(0, &qword_1EBBEEF30, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  sub_1BA4A62A8();
  v28 = v19;
  v29 = v20;
  *v30 = *v21;
  *&v25[1] = v16;
  v26 = v17;
  v23 = v11;
  v24 = v12;
  v25[0] = v22;
  *&v30[15] = *&v21[15];
  v27 = v18;
  return (*(v14 + 8))(&v23, v13);
}

uint64_t InteractivePickerRow.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  sub_1B9F892AC(255, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8]);
  sub_1BA23D8A8(255, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
  *&v73 = a1 + 5;
  v4 = a1[2];
  v69 = a1;
  v70 = v4;
  *&v72 = a1[4];
  *&v75 = v4;
  *(&v75 + 1) = v72;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A6218();
  v5 = a1[3];
  sub_1BA4A58F8();
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  v6 = sub_1BA4A6218();
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A6218();
  swift_getTupleTypeMetadata2();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A5268();
  sub_1BA4A58F8();
  swift_getTupleTypeMetadata2();
  sub_1BA4A6428();
  swift_getWitnessTable();
  v7 = sub_1BA4A6268();
  WitnessTable = swift_getWitnessTable();
  v64 = swift_getWitnessTable();
  *&v75 = v6;
  *(&v75 + 1) = v7;
  *&v76 = WitnessTable;
  *(&v76 + 1) = v64;
  v8 = type metadata accessor for AXLayoutView();
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v53 - v9);
  v11 = sub_1BA4A5418();
  v66 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v61 = v53 - v12;
  sub_1BA239CE0();
  v56 = v11;
  v13 = sub_1BA4A5418();
  v68 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v58 = v53 - v14;
  v54 = swift_getWitnessTable();
  v74[17] = v54;
  v74[18] = MEMORY[0x1E697FB50];
  v15 = swift_getWitnessTable();
  v53[1] = v15;
  v16 = sub_1BA23E13C(&qword_1EBBEEDB8, sub_1BA239CE0);
  v74[15] = v15;
  v74[16] = v16;
  v59 = v13;
  v60 = swift_getWitnessTable();
  *&v75 = v13;
  *(&v75 + 1) = v60;
  v62 = MEMORY[0x1E6981218];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v55 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v57 = v53 - v20;
  v21 = v2[5];
  v79 = v2[4];
  v80 = v21;
  v81 = v2[6];
  v82 = *(v2 + 14);
  v22 = v2[1];
  v75 = *v2;
  v76 = v22;
  v23 = v2[3];
  v77 = v2[2];
  v78 = v23;
  v24 = swift_allocObject();
  *&v25 = v72;
  *(&v25 + 1) = *v73;
  *&v26 = v70;
  *(&v26 + 1) = v5;
  v72 = v25;
  v73 = v26;
  *(v24 + 16) = v26;
  *(v24 + 32) = v25;
  v27 = v2[5];
  *(v24 + 112) = v2[4];
  *(v24 + 128) = v27;
  *(v24 + 144) = v2[6];
  *(v24 + 160) = *(v2 + 14);
  v28 = v2[1];
  *(v24 + 48) = *v2;
  *(v24 + 64) = v28;
  v29 = v2[3];
  *(v24 + 80) = v2[2];
  *(v24 + 96) = v29;
  v30 = swift_allocObject();
  v31 = v72;
  *(v30 + 16) = v73;
  *(v30 + 32) = v31;
  v32 = v2[5];
  *(v30 + 112) = v2[4];
  *(v30 + 128) = v32;
  *(v30 + 144) = v2[6];
  *(v30 + 160) = *(v2 + 14);
  v33 = v2[1];
  *(v30 + 48) = *v2;
  *(v30 + 64) = v33;
  v34 = v2[3];
  *(v30 + 80) = v2[2];
  *(v30 + 96) = v34;
  v35 = v10;
  sub_1BA23C4F0(sub_1BA23A068, v24, sub_1BA23B680, v30, v10);
  v36 = v69;
  v37 = *(*(v69 - 1) + 16);
  v37(v74, &v75, v69);
  v37(v74, &v75, v36);
  v38 = v61;
  sub_1BA4A5ED8();
  (*(v67 + 8))(v35, v8);
  sub_1B9F58524();
  v39 = v58;
  v40 = v56;
  sub_1BA4A5EE8();
  (*(v66 + 8))(v38, v40);
  v41 = swift_allocObject();
  v42 = v72;
  *(v41 + 16) = v73;
  *(v41 + 32) = v42;
  v43 = v80;
  *(v41 + 112) = v79;
  *(v41 + 128) = v43;
  *(v41 + 144) = v81;
  *(v41 + 160) = v82;
  v44 = v76;
  *(v41 + 48) = v75;
  *(v41 + 64) = v44;
  v45 = v78;
  *(v41 + 80) = v77;
  *(v41 + 96) = v45;
  v37(v74, &v75, v36);
  v46 = v55;
  v48 = v59;
  v47 = v60;
  sub_1BA4A5F08();

  (*(v68 + 8))(v39, v48);
  v74[0] = v48;
  v74[1] = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v57;
  sub_1B9F51AA8(v46, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v51 = *(v63 + 8);
  v51(v46, OpaqueTypeMetadata2);
  sub_1B9F51AA8(v50, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v51)(v50, OpaqueTypeMetadata2);
}

void sub_1BA239CE0()
{
  if (!qword_1EBBEEDB0)
  {
    sub_1B9F58524();
    v0 = sub_1BA4A5958();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEEDB0);
    }
  }
}

uint64_t sub_1BA239D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[0] = a5;
  v20[1] = a6;
  sub_1B9F892AC(255, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8]);
  v20[10] = a2;
  v20[11] = a4;
  swift_getOpaqueTypeMetadata2();
  sub_1BA23D8A8(255, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A6218();
  swift_getTupleTypeMetadata2();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A5268();
  sub_1BA4A58F8();
  swift_getTupleTypeMetadata2();
  sub_1BA4A6428();
  swift_getWitnessTable();
  v10 = sub_1BA4A6268();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  sub_1BA4A5878();
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;
  v20[7] = v20[0];
  v20[8] = a1;
  sub_1BA4A6258();
  WitnessTable = swift_getWitnessTable();
  sub_1B9F51AA8(v13, v10, WitnessTable);
  v18 = *(v11 + 8);
  v18(v13, v10);
  sub_1B9F51AA8(v16, v10, WitnessTable);
  return (v18)(v16, v10);
}

void sub_1BA23A080(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v80 = a3;
  v87 = a4;
  v68 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v67 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v65 - v8;
  v77 = v9;
  v93 = v9;
  v94 = v10;
  v79 = v10;
  swift_getOpaqueTypeMetadata2();
  sub_1BA23D8A8(255, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A6218();
  swift_getTupleTypeMetadata2();
  v11 = sub_1BA4A6428();
  WitnessTable = swift_getWitnessTable();
  v72 = v11;
  v71 = WitnessTable;
  v13 = sub_1BA4A5268();
  v75 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v73 = &v65 - v18;
  v78 = a2;
  v82 = sub_1BA4A58F8();
  v86 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v84 = &v65 - v21;
  sub_1B9F892AC(0, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8]);
  v81 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v83 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v65 - v25;
  v27 = *(a1 + 32);
  v93 = *(a1 + 24);
  v94 = v27;
  sub_1B9F252FC();

  v28 = MEMORY[0x1E69E6158];
  v29 = sub_1BA4A5E18();
  v31 = v30;
  v93 = v29;
  v94 = v30;
  v33 = v32 & 1;
  LOBYTE(v95) = v32 & 1;
  v96 = v34;
  sub_1BA23E420(0, &qword_1EDC6E330, v28, MEMORY[0x1E69E6F90]);
  v35 = swift_allocObject();
  v69 = xmmword_1BA4B5460;
  *(v35 + 16) = xmmword_1BA4B5460;
  v36 = *(a1 + 112);
  *(v35 + 32) = *(a1 + 104);
  *(v35 + 40) = v36;
  *(v35 + 48) = 0x656C746954;
  *(v35 + 56) = 0xE500000000000000;

  v37 = sub_1BA4A6AE8();

  v38 = HKUIJoinStringsForAutomationIdentifier();

  if (v38)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    v76 = v26;
    sub_1BA4A5F18();

    sub_1BA102AF4(v29, v31, v33);

    v39 = *a1;
    v40 = *(a1 + 8);
    v41 = *(a1 + 16);
    v42 = v78;
    v93 = v77;
    v94 = v78;
    v43 = v80;
    v95 = v79;
    v96 = v80;
    type metadata accessor for InteractivePickerRow();
    v93 = v39;
    v94 = v40;
    LOBYTE(v95) = v41 & 1;
    sub_1BA23E420(0, &qword_1EBBEEF30, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    v44 = MEMORY[0x1BFAF0CD0](v92);
    if ((v92[0] & 1) != 0 || !*(a1 + 96))
    {
      MEMORY[0x1EEE9AC00](v44);
      *(&v65 - 6) = v50;
      *(&v65 - 5) = v42;
      *(&v65 - 4) = v51;
      *(&v65 - 3) = v43;
      *(&v65 - 2) = a1;
      sub_1BA23E420(0, &qword_1EBBEEF50, MEMORY[0x1E6980D08], MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = v69;
      v53 = sub_1BA4A5B38();
      *(inited + 32) = v53;
      v54 = sub_1BA4A5B58();
      *(inited + 33) = v54;
      sub_1BA4A5B48();
      sub_1BA4A5B48();
      if (sub_1BA4A5B48() != v53)
      {
        sub_1BA4A5B48();
      }

      sub_1BA4A5B48();
      if (sub_1BA4A5B48() != v54)
      {
        sub_1BA4A5B48();
      }

      v49 = v76;
      v55 = v70;
      sub_1BA4A5258();
      v56 = swift_getWitnessTable();
      v57 = v73;
      sub_1B9F51AA8(v55, v13, v56);
      v58 = *(v75 + 8);
      v58(v55, v13);
      v59 = v74;
      sub_1B9F51AA8(v57, v13, v56);
      v48 = v84;
      sub_1BA100874(v59, v13);
      v58(v59, v13);
      v58(v57, v13);
    }

    else
    {
      v45 = v67;
      (*(a1 + 80))(v44);
      v46 = v66;
      sub_1B9F51AA8(v45, v42, v43);
      v47 = *(v68 + 8);
      v47(v45, v42);
      sub_1B9F51AA8(v46, v42, v43);
      swift_getWitnessTable();
      v48 = v84;
      sub_1B9F511C0(v45, v13, v42);
      v47(v45, v42);
      v47(v46, v42);
      v49 = v76;
    }

    v60 = v83;
    sub_1BA23E0B4(v49, v83);
    v93 = v60;
    v62 = v85;
    v61 = v86;
    v63 = v82;
    (*(v86 + 16))(v85, v48, v82);
    v94 = v62;
    v92[0] = v81;
    v92[1] = v63;
    v90 = sub_1BA102EC0();
    v88 = swift_getWitnessTable();
    v89 = v43;
    v91 = swift_getWitnessTable();
    sub_1B9F50770(&v93, 2uLL, v92);
    v64 = *(v61 + 8);
    v64(v48, v63);
    sub_1BA23E184(v49);
    v64(v62, v63);
    sub_1BA23E184(v60);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA23AA50@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v42 = a5;
  WitnessTable = a3;
  v47 = a6;
  v46 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v10;
  v57 = v11;
  v44 = MEMORY[0x1E697CEA0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v34 - v15;
  sub_1BA23D8A8(255, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  v16 = sub_1BA4A6218();
  v36 = *(v16 - 8);
  v17 = v36;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v37 = &v34 - v21;
  v48 = a2;
  v49 = WitnessTable;
  v50 = a4;
  v51 = v42;
  v52 = a1;
  sub_1BA4A5798();
  sub_1BA4A6208();
  v35 = v16;
  WitnessTable = swift_getWitnessTable();
  sub_1B9F51AA8(v19, v16, WitnessTable);
  v22 = *(v17 + 8);
  v38 = v17 + 8;
  v42 = v22;
  v23 = (v22)(v19, v16);
  v24 = v39;
  (*(a1 + 64))(v23);
  sub_1BA4A5EF8();
  (*(v46 + 8))(v24, a2);
  v56 = a2;
  v57 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v43;
  v27 = OpaqueTypeMetadata2;
  sub_1B9F51AA8(v13, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v28 = v45;
  v29 = *(v45 + 8);
  v29(v13, v27);
  v30 = v37;
  v31 = v35;
  (*(v36 + 16))(v19, v37, v35);
  v56 = v19;
  (*(v28 + 16))(v13, v26, v27);
  v57 = v13;
  v55[0] = v31;
  v55[1] = v27;
  v53 = WitnessTable;
  v54 = OpaqueTypeConformance2;
  sub_1B9F50770(&v56, 2uLL, v55);
  v29(v26, v27);
  v32 = v42;
  v42(v30, v31);
  v29(v13, v27);
  return v32(v19, v31);
}

uint64_t sub_1BA23AF34@<X0>(void (**a1)(double)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a5;
  v36 = a3;
  v43 = a6;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v48 = v12;
  *(&v48 + 1) = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - v19;
  a1[8](v18);
  sub_1BA4A5EF8();
  (*(v9 + 8))(v11, a2);
  *&v48 = a2;
  v37 = a4;
  *(&v48 + 1) = a4;
  v21 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v20;
  v40 = OpaqueTypeConformance2;
  sub_1B9F51AA8(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v41 = *(v21 + 8);
  v41(v16, OpaqueTypeMetadata2);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 1;
  if (*(a1 + 96) == 1)
  {
    v27 = *(a1 + 5);
    v52 = *(a1 + 4);
    v53 = v27;
    v54 = *(a1 + 6);
    v55 = a1[14];
    v28 = *(a1 + 1);
    v48 = *a1;
    v29 = *(a1 + 2);
    v30 = *(a1 + 3);
    v49 = v28;
    v50 = v29;
    v51 = v30;
    v44 = a2;
    v45 = v36;
    v46 = v37;
    v47 = v38;
    v31 = type metadata accessor for InteractivePickerRow();
    sub_1BA239084(v31, &v44);
    v23 = v44;
    v26 = v45;
    v24 = v46;
    v25 = v47;
    sub_1BA1AE4BC(v44, v45);
  }

  v32 = v42;
  (*(v21 + 16))(v16, v42, OpaqueTypeMetadata2);
  v60 = 0;
  v61 = 1;
  v44 = v16;
  v45 = &v60;
  *&v48 = v23;
  *(&v48 + 1) = v26;
  *&v49 = v24;
  *(&v49 + 1) = v25;
  v46 = &v48;
  v59[0] = OpaqueTypeMetadata2;
  v59[1] = MEMORY[0x1E6981840];
  sub_1BA23D8A8(0, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
  v59[2] = v33;
  v56 = v40;
  v57 = MEMORY[0x1E6981838];
  v58 = sub_1BA23E21C();
  sub_1B9F50770(&v44, 3uLL, v59);
  sub_1BA23E3B0(v23, v26);
  v34 = v41;
  v41(v32, OpaqueTypeMetadata2);
  sub_1BA23E3B0(v48, *(&v48 + 1));
  return v34(v16, OpaqueTypeMetadata2);
}

uint64_t sub_1BA23B394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[0] = a5;
  v20[1] = a6;
  sub_1B9F892AC(255, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8]);
  sub_1BA23D8A8(255, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
  v20[10] = a2;
  v20[11] = a4;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A6218();
  sub_1BA4A58F8();
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  v10 = sub_1BA4A6218();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;
  v20[7] = v20[0];
  v20[8] = a1;
  sub_1BA4A5798();
  sub_1BA4A6208();
  WitnessTable = swift_getWitnessTable();
  sub_1B9F51AA8(v13, v10, WitnessTable);
  v18 = *(v11 + 8);
  v18(v13, v10);
  sub_1B9F51AA8(v16, v10, WitnessTable);
  return (v18)(v16, v10);
}

void sub_1BA23B6B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v77 = a5;
  v84 = a6;
  v67 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v66 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v64 - v12;
  sub_1BA23D8A8(255, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
  v74 = a2;
  v93 = a2;
  v94 = a4;
  v76 = a4;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  v13 = sub_1BA4A6428();
  WitnessTable = swift_getWitnessTable();
  v69 = v13;
  v68 = WitnessTable;
  v15 = sub_1BA4A6218();
  v72 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v64 - v18;
  v75 = a3;
  v19 = sub_1BA4A58F8();
  v82 = *(v19 - 8);
  v83 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v81 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v80 = &v64 - v22;
  sub_1B9F892AC(0, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8]);
  v78 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v79 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v64 - v26;
  v28 = *(a1 + 32);
  v93 = *(a1 + 24);
  v94 = v28;
  sub_1B9F252FC();

  v29 = MEMORY[0x1E69E6158];
  v30 = sub_1BA4A5E18();
  v32 = v31;
  v93 = v30;
  v94 = v31;
  v34 = v33 & 1;
  LOBYTE(v95) = v33 & 1;
  v96 = v35;
  sub_1BA23E420(0, &qword_1EDC6E330, v29, MEMORY[0x1E69E6F90]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1BA4B5460;
  v37 = *(a1 + 112);
  *(v36 + 32) = *(a1 + 104);
  *(v36 + 40) = v37;
  *(v36 + 48) = 0x656C746954;
  *(v36 + 56) = 0xE500000000000000;

  v38 = sub_1BA4A6AE8();

  v39 = HKUIJoinStringsForAutomationIdentifier();

  if (v39)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    v73 = v27;
    sub_1BA4A5F18();

    sub_1BA102AF4(v30, v32, v34);

    v40 = *a1;
    v41 = *(a1 + 8);
    v42 = *(a1 + 16);
    v43 = v75;
    v93 = v74;
    v94 = v75;
    v44 = v77;
    v95 = v76;
    v96 = v77;
    type metadata accessor for InteractivePickerRow();
    v93 = v40;
    v94 = v41;
    LOBYTE(v95) = v42 & 1;
    sub_1BA23E420(0, &qword_1EBBEEF30, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    v45 = MEMORY[0x1BFAF0CD0](v90);
    v46 = v44;
    if ((v90[0] & 1) != 0 || !*(a1 + 96))
    {
      MEMORY[0x1EEE9AC00](v45);
      *(&v64 - 6) = v52;
      *(&v64 - 5) = v43;
      *(&v64 - 4) = v53;
      *(&v64 - 3) = v44;
      *(&v64 - 2) = a1;
      sub_1BA4A5798();
      v54 = v71;
      sub_1BA4A6208();
      v55 = swift_getWitnessTable();
      v56 = v70;
      sub_1B9F51AA8(v54, v15, v55);
      v57 = *(v72 + 8);
      v57(v54, v15);
      sub_1B9F51AA8(v56, v15, v55);
      v51 = v80;
      sub_1BA100874(v54, v15);
      v57(v54, v15);
      v57(v56, v15);
    }

    else
    {
      v47 = *(a1 + 80);
      v48 = v66;
      v47(v45);
      v49 = v65;
      sub_1B9F51AA8(v48, v43, v44);
      v50 = *(v67 + 8);
      v50(v48, v43);
      sub_1B9F51AA8(v49, v43, v46);
      swift_getWitnessTable();
      v51 = v80;
      sub_1B9F511C0(v48, v15, v43);
      v50(v48, v43);
      v50(v49, v43);
    }

    v58 = v73;
    v59 = v79;
    sub_1BA23E0B4(v73, v79);
    v91 = 0;
    v92 = 1;
    v93 = v59;
    v94 = &v91;
    v61 = v81;
    v60 = v82;
    v62 = v83;
    (*(v82 + 16))(v81, v51, v83);
    v95 = v61;
    v90[0] = v78;
    v90[1] = MEMORY[0x1E6981840];
    v90[2] = v62;
    v87 = sub_1BA102EC0();
    v88 = MEMORY[0x1E6981838];
    v85 = swift_getWitnessTable();
    v86 = v46;
    v89 = swift_getWitnessTable();
    sub_1B9F50770(&v93, 3uLL, v90);
    v63 = *(v60 + 8);
    v63(v51, v62);
    sub_1BA23E184(v58);
    v63(v61, v62);
    sub_1BA23E184(v59);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA23BF64@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a3;
  v52 = a6;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v57 = v13;
  *(&v57 + 1) = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v54 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - v18;
  v20 = *(a1 + 41);
  v43 = a5;
  if ((v20 & 1) != 0 || *(a1 + 96) != 1)
  {
    v51 = 0;
    v50 = 0;
    v49 = 0;
    v48 = 1;
  }

  else
  {
    v21 = a1[5];
    v61 = a1[4];
    v62 = v21;
    v63 = a1[6];
    v64 = *(a1 + 14);
    v22 = a1[1];
    v57 = *a1;
    v58 = v22;
    v23 = a1[3];
    v59 = a1[2];
    v60 = v23;
    v69 = a2;
    v70 = v44;
    v71 = a4;
    v72 = a5;
    v24 = type metadata accessor for InteractivePickerRow();
    sub_1BA239084(v24, &v69);
    v51 = v69;
    v48 = v70;
    v50 = v71;
    v49 = v72;
    v17 = sub_1BA1AE4BC(v69, v70);
  }

  (*(a1 + 8))(v17);
  v25 = v54;
  sub_1BA4A5EF8();
  (*(v10 + 8))(v12, a2);
  *&v57 = a2;
  *(&v57 + 1) = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v19;
  v27 = OpaqueTypeMetadata2;
  v46 = OpaqueTypeConformance2;
  sub_1B9F51AA8(v25, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v47 = *(v56 + 8);
  v45 = v56 + 8;
  v47(v25, v27);
  if ((v20 & 1) != 0 && *(a1 + 96) == 1)
  {
    v28 = a1[5];
    v61 = a1[4];
    v62 = v28;
    v63 = a1[6];
    v64 = *(a1 + 14);
    v29 = a1[1];
    v57 = *a1;
    v58 = v29;
    v30 = a1[3];
    v59 = a1[2];
    v60 = v30;
    v69 = a2;
    v70 = v44;
    v71 = a4;
    v72 = v43;
    v31 = type metadata accessor for InteractivePickerRow();
    sub_1BA239084(v31, &v69);
    v32 = v69;
    v33 = v70;
    v34 = v71;
    v35 = v72;
    sub_1BA1AE4BC(v69, v70);
  }

  else
  {
    v32 = 0;
    v34 = 0;
    v35 = 0;
    v33 = 1;
  }

  v36 = v51;
  *&v57 = v51;
  v37 = v48;
  *(&v57 + 1) = v48;
  *&v58 = v50;
  *(&v58 + 1) = v49;
  v73[0] = &v57;
  v38 = v54;
  v39 = OpaqueTypeMetadata2;
  (*(v56 + 16))(v54, v53, OpaqueTypeMetadata2);
  v69 = v32;
  v70 = v33;
  v71 = v34;
  v72 = v35;
  v73[1] = v38;
  v73[2] = &v69;
  sub_1BA23D8A8(0, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
  v68[0] = v40;
  v68[1] = v39;
  v68[2] = v40;
  v65 = sub_1BA23E21C();
  v66 = v46;
  v67 = v65;
  sub_1B9F50770(v73, 3uLL, v68);
  sub_1BA23E3B0(v36, v37);
  sub_1BA23E3B0(v32, v33);
  v41 = v47;
  v47(v53, v39);
  sub_1BA23E3B0(v69, v70);
  v41(v38, v39);
  return sub_1BA23E3B0(v57, *(&v57 + 1));
}

uint64_t sub_1BA23C4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  sub_1BA23CB10(0, &qword_1EDC6B6E0, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for AXLayoutView();
  v11 = (a5 + *(result + 52));
  *v11 = a3;
  v11[1] = a4;
  v12 = (a5 + *(result + 56));
  *v12 = a1;
  v12[1] = a2;
  return result;
}

void *sub_1BA23C5F0(void *result)
{
  v1 = *(result + 96);
  if (*(result + 96))
  {
    v2 = type metadata accessor for InteractivePickerRow();
    sub_1BA23E420(0, &qword_1EBBEEF30, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    result = MEMORY[0x1BFAF0CD0](&v3);
    if ((v3 & 1) == 0 || v1 == 1)
    {
      return sub_1BA23C760(v2);
    }
  }

  return result;
}

unint64_t sub_1BA23C6F4()
{
  result = qword_1EBBEEDC0[0];
  if (!qword_1EBBEEDC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBBEEDC0);
  }

  return result;
}

uint64_t sub_1BA23C760(uint64_t a1)
{
  v2 = *(v1 + 48);
  if (v2)
  {
    a1 = (v2)();
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1BA4A6408();
  sub_1BA4A52D8();
}

uint64_t sub_1BA23C840(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v13 = v2;
  v9 = v2;
  v10 = v1;
  v11 = v3;
  sub_1BA23DFEC(&v13, v7);
  sub_1BA23E420(0, &qword_1EBBEEF30, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v5 = v4;

  MEMORY[0x1BFAF0CD0](&v12, v5);
  v7[0] = v2;
  v7[1] = v1;
  v8 = v3;
  sub_1BA4A62A8();
  sub_1BA23E048(&v13);
}

uint64_t sub_1BA23C930()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1BA23C998(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA23C9E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BA23CA5C()
{
  sub_1BA23CB10(319, &qword_1EDC6B6D0, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1B9F37BB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BA23CB10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA4A53C8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1BA23CBB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a1;
  v43 = a3;
  v8 = a1;
  v41[1] = a5;
  sub_1BA23E588(0, &qword_1EBBEEEC8, &qword_1EBBEEED0, sub_1BA23D734, sub_1BA239CE0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v41 - v11;
  sub_1BA23DAFC(0, &qword_1EBBEEF00, sub_1BA23DB58);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v41 - v15;
  v17 = swift_allocObject();
  v17[2] = v8;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  sub_1BA23D798();
  sub_1BA23D924();

  v18 = v14;
  sub_1BA4A61C8();
  LOBYTE(v8) = sub_1BA4A5B78();
  sub_1BA4A5188();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1BA23DAFC(0, &qword_1EBBEEED0, sub_1BA23D734);
  v28 = &v12[*(v27 + 36)];
  *v28 = v8;
  *(v28 + 1) = v20;
  *(v28 + 2) = v22;
  *(v28 + 3) = v24;
  *(v28 + 4) = v26;
  v28[40] = 0;
  v12[*(v10 + 36)] = 0;
  v29 = swift_allocObject();
  v31 = v42;
  v30 = v43;
  v29[2] = v42;
  v29[3] = a2;
  v29[4] = v30;
  v29[5] = a4;
  sub_1BA23DC14();

  sub_1BA4A5F08();

  sub_1BA23DE30(v12);
  v32 = sub_1BA4A5B78();
  sub_1BA4A5188();
  v33 = &v16[*(v18 + 36)];
  *v33 = v32;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  sub_1BA23E420(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BA4B5460;
  *(v38 + 32) = v31;
  *(v38 + 40) = a2;
  *(v38 + 48) = 0x7475427261656C43;
  *(v38 + 56) = 0xEB000000006E6F74;

  v39 = sub_1BA4A6AE8();

  v40 = HKUIJoinStringsForAutomationIdentifier();

  if (v40)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA23DEC4();
    sub_1BA4A5F18();

    sub_1B9F9B98C(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA23CF78@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BA4A6128();
  v3 = [objc_opt_self() systemGray3Color];
  v4 = sub_1BA4A6048();
  v5 = sub_1BA4A5C18();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v5;
  return result;
}

uint64_t sub_1BA23D004@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BA4A5718();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA23CB10(0, &qword_1EDC6B6E0, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1BA23D6B4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BA4A53C8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1BA4A6FB8();
    v13 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1BA23D254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = *(a1 + 16);
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v34 - v8;
  v10 = *(v9 + 24);
  v35 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v34 - v14;
  v15 = sub_1BA4A53C8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A58F8();
  v39 = *(v19 - 8);
  v40 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v38 = &v34 - v20;
  v21 = v2;
  sub_1BA23D004(v18);
  v22 = sub_1BA4A53B8();
  v23 = (*(v16 + 8))(v18, v15);
  if (v22)
  {
    (*(v21 + *(a1 + 56)))(v23);
    v24 = *(a1 + 40);
    v25 = v34;
    sub_1B9F51AA8(v12, v10, v24);
    v26 = *(v35 + 8);
    v26(v12, v10);
    sub_1B9F51AA8(v25, v10, v24);
    v27 = *(a1 + 32);
    v28 = v38;
    sub_1BA100874(v12, v10);
    v26(v12, v10);
    v26(v25, v10);
  }

  else
  {
    (*(v21 + *(a1 + 52)))(v23);
    v27 = *(a1 + 32);
    v29 = v36;
    sub_1B9F51AA8(v6, v4, v27);
    v30 = *(v37 + 8);
    v30(v6, v4);
    sub_1B9F51AA8(v29, v4, v27);
    v24 = *(a1 + 40);
    v28 = v38;
    sub_1B9F511C0(v6, v10, v4);
    v30(v6, v4);
    v30(v29, v4);
  }

  v42 = v24;
  v43 = v27;
  v31 = v40;
  WitnessTable = swift_getWitnessTable();
  sub_1B9F51AA8(v28, v31, WitnessTable);
  return (*(v39 + 8))(v28, v31);
}

uint64_t sub_1BA23D6B4(uint64_t a1, uint64_t a2)
{
  sub_1BA23CB10(0, &qword_1EDC6B6E0, MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA23D734()
{
  if (!qword_1EBBEEED8)
  {
    sub_1BA23D798();
    sub_1BA23D924();
    v0 = sub_1BA4A61F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEEED8);
    }
  }
}

void sub_1BA23D798()
{
  if (!qword_1EBBEEEE0)
  {
    sub_1B9F892AC(255, &qword_1EBBEEEE8, sub_1BA23D850);
    sub_1BA23D8A8(255, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50], MEMORY[0x1E6980A08]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEEEE0);
    }
  }
}

void sub_1BA23D850()
{
  if (!qword_1EBBEC988)
  {
    v0 = sub_1BA4A59F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC988);
    }
  }
}

void sub_1BA23D8A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1BA23E420(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA23D924()
{
  result = qword_1EBBEEEF0;
  if (!qword_1EBBEEEF0)
  {
    sub_1BA23D798();
    sub_1BA23D9A4();
    sub_1BA23DA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEEF0);
  }

  return result;
}

unint64_t sub_1BA23D9A4()
{
  result = qword_1EBBEEEF8;
  if (!qword_1EBBEEEF8)
  {
    sub_1B9F892AC(255, &qword_1EBBEEEE8, sub_1BA23D850);
    sub_1BA23E13C(&qword_1EBBEC9F0, sub_1BA23D850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEEF8);
  }

  return result;
}

unint64_t sub_1BA23DA78()
{
  result = qword_1EDC5EC50;
  if (!qword_1EDC5EC50)
  {
    sub_1BA23D8A8(255, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EC50);
  }

  return result;
}

void sub_1BA23DAFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A5418();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA23DB58()
{
  if (!qword_1EBBEEF08)
  {
    sub_1BA23E588(255, &qword_1EBBEEEC8, &qword_1EBBEEED0, sub_1BA23D734, sub_1BA239CE0);
    sub_1BA23DC14();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBEEF08);
    }
  }
}

unint64_t sub_1BA23DC14()
{
  result = qword_1EBBEEF10;
  if (!qword_1EBBEEF10)
  {
    sub_1BA23E588(255, &qword_1EBBEEEC8, &qword_1EBBEEED0, sub_1BA23D734, sub_1BA239CE0);
    sub_1BA23DCFC();
    sub_1BA23E13C(&qword_1EBBEEDB8, sub_1BA239CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF10);
  }

  return result;
}

unint64_t sub_1BA23DCFC()
{
  result = qword_1EBBEEF18;
  if (!qword_1EBBEEF18)
  {
    sub_1BA23DAFC(255, &qword_1EBBEEED0, sub_1BA23D734);
    sub_1BA23E13C(&qword_1EBBEEF20, sub_1BA23D734);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF18);
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BA23DE30(uint64_t a1)
{
  sub_1BA23E588(0, &qword_1EBBEEEC8, &qword_1EBBEEED0, sub_1BA23D734, sub_1BA239CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA23DEC4()
{
  result = qword_1EBBEEF28;
  if (!qword_1EBBEEF28)
  {
    sub_1BA23DAFC(255, &qword_1EBBEEF00, sub_1BA23DB58);
    sub_1BA23E588(255, &qword_1EBBEEEC8, &qword_1EBBEEED0, sub_1BA23D734, sub_1BA239CE0);
    sub_1BA23DC14();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF28);
  }

  return result;
}

uint64_t sub_1BA23E0B4(uint64_t a1, uint64_t a2)
{
  sub_1B9F892AC(0, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA23E13C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA23E184(uint64_t a1)
{
  sub_1B9F892AC(0, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA23E21C()
{
  result = qword_1EBBEEF38;
  if (!qword_1EBBEEF38)
  {
    sub_1BA23D8A8(255, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
    sub_1BA23E2C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF38);
  }

  return result;
}

unint64_t sub_1BA23E2C0()
{
  result = qword_1EBBEEF40;
  if (!qword_1EBBEEF40)
  {
    sub_1BA23E420(255, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
    sub_1BA23E35C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF40);
  }

  return result;
}

unint64_t sub_1BA23E35C()
{
  result = qword_1EBBEEF48;
  if (!qword_1EBBEEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF48);
  }

  return result;
}

uint64_t sub_1BA23E3B0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_1BA1AE55C(a1, a2);
  }

  return a1;
}

void sub_1BA23E420(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1BA23E4A0()
{
  result = qword_1EBBEEF58;
  if (!qword_1EBBEEF58)
  {
    sub_1BA23E588(255, &qword_1EBBEEF60, &qword_1EBBEEF00, sub_1BA23DB58, MEMORY[0x1E697CBE8]);
    sub_1BA23DEC4();
    sub_1BA23E13C(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF58);
  }

  return result;
}

void sub_1BA23E588(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1BA23DAFC(255, a3, a4);
    a5(255);
    v7 = sub_1BA4A5418();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t AttributedString.mapOutUIFonts()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A1278();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A12C8();
  (*(*(v7 - 8) + 16))(a1, v1, v7);
  sub_1BA4A1288();
  sub_1B9F4D364(v6, a1);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BA23E720(uint64_t a1)
{
  v3 = sub_1BA4A4428();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI31SummarySharingContactPickerCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v7);
  swift_endAccess();
  sub_1B9F68124(v1 + v7, v14);
  if (v15)
  {
    sub_1B9FCD918();
    if (swift_dynamicCast())
    {
      v8 = v13[2];
      MEMORY[0x1BFAF2040]();
      v9 = v8;
      sub_1BA4A43D8();

      sub_1BA4A43B8();
      v15 = v3;
      v16 = MEMORY[0x1E69DC110];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
      (*(v4 + 16))(boxed_opaque_existential_1, v6, v3);
      MEMORY[0x1BFAF1EF0](v14);

      sub_1B9F7B644(a1);
      return (*(v4 + 8))(v6, v3);
    }

    v12 = a1;
  }

  else
  {
    sub_1B9F7B644(a1);
    v12 = v14;
  }

  return sub_1B9F7B644(v12);
}

void (*sub_1BA23E90C(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xA8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 128) = v1;
  v6 = sub_1BA4A4428();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC18HealthExperienceUI31SummarySharingContactPickerCell_item;
  v5[19] = v8;
  v5[20] = v9;
  swift_beginAccess();
  return sub_1BA23E9FC;
}

void sub_1BA23E9FC(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1B9F68124(*(v3 + 128) + *(v3 + 160), v3);
    if (*(v3 + 24))
    {
      sub_1B9FCD918();
      if (swift_dynamicCast())
      {
        v5 = *(v3 + 144);
        v4 = *(v3 + 152);
        v6 = *(v3 + 136);
        v7 = *(v3 + 120);
        MEMORY[0x1BFAF2040]();
        v8 = v7;
        sub_1BA4A43D8();

        sub_1BA4A43B8();
        v9 = MEMORY[0x1E69DC110];
        *(v3 + 64) = v6;
        *(v3 + 72) = v9;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 40));
        (*(v5 + 16))(boxed_opaque_existential_1, v4, v6);
        MEMORY[0x1BFAF1EF0](v3 + 40);

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      sub_1B9F7B644(v3);
    }
  }

  free(*(v3 + 152));

  free(v3);
}

id sub_1BA23EC74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingContactPickerCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA23ECDC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31SummarySharingContactPickerCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

void (*sub_1BA23ED38(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1BA23E90C(v2);
  return sub_1B9FCDD98;
}

unint64_t sub_1BA23EDB8(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x1BFAF1350]();
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v4 = [a3 CGImage];
  if (v4)
  {
    v5 = v4;
    v6 = CGImageGetDataProvider(v4);

    if (v6)
    {
      v7 = CGDataProviderCopyData(v6);

      sub_1B9F0D430(0, &qword_1EBBEEF88, type metadata accessor for CFData);
      sub_1BA23F0C0();
      sub_1BA4A7AB8();
    }
  }

  sub_1BA23F070();
  v8 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v8);

  return 0xD00000000000001ALL;
}

uint64_t sub_1BA23EEF0()
{
  type metadata accessor for SummarySharingContactPickerCell();
  sub_1BA23EFD8();
  return sub_1BA4A6808();
}

uint64_t sub_1BA23EF34(uint64_t a1)
{
  v2 = sub_1BA23F01C();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

unint64_t sub_1BA23EF84()
{
  result = qword_1EBBEEF70;
  if (!qword_1EBBEEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF70);
  }

  return result;
}

unint64_t sub_1BA23EFD8()
{
  result = qword_1EBBEEF78;
  if (!qword_1EBBEEF78)
  {
    type metadata accessor for SummarySharingContactPickerCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBEEF78);
  }

  return result;
}

unint64_t sub_1BA23F01C()
{
  result = qword_1EBBEEF80;
  if (!qword_1EBBEEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF80);
  }

  return result;
}

void sub_1BA23F070()
{
  if (!qword_1EDC6B640)
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B640);
    }
  }
}

unint64_t sub_1BA23F0C0()
{
  result = qword_1EBBE9468;
  if (!qword_1EBBE9468)
  {
    type metadata accessor for CFData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9468);
  }

  return result;
}

void sub_1BA23F118(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *&a3[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_sharingEntryStore];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v11[4] = sub_1BA243474;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1BA454240;
  v11[3] = &block_descriptor_83_0;
  v8 = _Block_copy(v11);
  v9 = v6;

  v10 = a3;

  [v9 fetchSharingEntriesWithCompletion_];
  _Block_release(v8);
}

uint64_t sub_1BA23F224(uint64_t a1, void *a2, __objc2_class **a3, unint64_t a4, uint64_t a5)
{
  sub_1BA243838(0, &qword_1EBBEB8F0, MEMORY[0x1E69E6530], MEMORY[0x1E69A3C40]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  sub_1BA243480(0);
  v15 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v19 = a2;
    SummarySharingOnboardingError.init(error:)(a2, v18);
LABEL_30:
    swift_storeEnumTagMultiPayload();
    goto LABEL_31;
  }

  v38 = v13;
  v20 = [*(a5 + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_sharingEntryStore) sharingEntries];
  sub_1B9F0ADF8(0, &qword_1EBBE9FC0);
  v21 = sub_1BA4A6B08();

  v40 = MEMORY[0x1E69E7CC0];
  if (v21 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v32 = v11;
    v33 = v10;
    v34 = v15;
    v35 = v18;
    v36 = a4;
    v37 = a3;
    v11 = 0;
    v10 = v21 & 0xC000000000000001;
    v15 = v21 & 0xFFFFFFFFFFFFFF8;
    a3 = &off_1E7EEF000;
    v39 = v21 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v10)
      {
        v23 = MEMORY[0x1BFAF2860](v11, v21);
      }

      else
      {
        if (v11 >= *(v15 + 16))
        {
          goto LABEL_19;
        }

        v23 = *(v21 + 8 * v11 + 32);
      }

      v24 = v23;
      a4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ([v23 direction] == 1 && objc_msgSend(v24, sel_status) == 1 && (v25 = objc_msgSend(v24, sel_profileIdentifier)) != 0)
      {

        sub_1BA4A7ED8();
        v18 = i;
        sub_1BA4A7F18();
        sub_1BA4A7F28();
        sub_1BA4A7EE8();
        v15 = v39;
      }

      else
      {
      }

      ++v11;
      if (a4 == i)
      {
        v26 = v40;
        a3 = v37;
        v18 = v35;
        v11 = v32;
        v10 = v33;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_22:

  if (v26 < 0 || (v26 & 0x4000000000000000) != 0)
  {
    v27 = sub_1BA4A7CC8();
  }

  else
  {
    v27 = *(v26 + 16);
  }

  v28 = v38;

  if (qword_1EBBE8328 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v10, qword_1EBBEB818);
  (*(v11 + 16))(v28, v29, v10);
  sub_1BA4A1CA8();
  (*(v11 + 8))(v28, v10);
  if (v27 >= v40)
  {
    *v18 = 1;
    type metadata accessor for SummarySharingOnboardingError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_30;
  }

  type metadata accessor for SummarySharingOnboardingError();
  sub_1BA2425AC(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
  sub_1BA4A84E8();
LABEL_31:
  (a3)(v18);
  return sub_1BA2437D8(v18, sub_1BA243480);
}

uint64_t sub_1BA23F6A4()
{
  sub_1BA2432D8();
  v11 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = v0;
  sub_1BA2433F8(0);
  swift_allocObject();
  v5 = v0;
  v12 = sub_1BA4A4EA8();
  sub_1BA2425AC(&qword_1EBBEF080, sub_1BA2433F8);
  v6 = sub_1BA4A4F98();

  v12 = v6;
  *(swift_allocObject() + 16) = v5;
  v7 = v5;
  sub_1BA4A4D08();
  sub_1BA2433C4(0);
  sub_1BA242584(0);
  sub_1BA2425AC(&qword_1EBBEF070, sub_1BA2433C4);
  sub_1BA2425AC(&qword_1EBBEF058, sub_1BA242584);
  sub_1BA4A5088();

  sub_1BA2425AC(&qword_1EBBEF088, sub_1BA2432D8);
  v8 = v11;
  v9 = sub_1BA4A4F98();
  (*(v2 + 8))(v4, v8);
  return v9;
}

void sub_1BA23F970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v26 = a6;
  v27 = a7;
  v24 = a1;
  v25 = a5;
  v9 = sub_1BA4A1798();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A33C8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_sharingEntryStore);
  (*(v14 + 16))(v17, a3 + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_profileInformation, v13, v15);
  v19 = v18;
  sub_1BA4A3358();
  (*(v14 + 8))(v17, v13);
  v20 = sub_1BA4A1758();
  (*(v10 + 8))(v12, v9);
  v21 = swift_allocObject();
  v22 = v25;
  *(v21 + 16) = v24;
  *(v21 + 24) = a2;
  aBlock[4] = v22;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA454240;
  aBlock[3] = v26;
  v23 = _Block_copy(aBlock);

  [v19 *v27];
  _Block_release(v23);
}

uint64_t sub_1BA23FBDC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEEF90 = result;
  *algn_1EBBEEF98 = v1;
  return result;
}

uint64_t sub_1BA23FC88()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEEFA0 = result;
  *algn_1EBBEEFA8 = v1;
  return result;
}

uint64_t sub_1BA23FD34()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEEFB0 = result;
  *algn_1EBBEEFB8 = v1;
  return result;
}

uint64_t sub_1BA23FDE0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEEFC0 = result;
  *algn_1EBBEEFC8 = v1;
  return result;
}

uint64_t sub_1BA23FE8C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEEFD0 = result;
  *algn_1EBBEEFD8 = v1;
  return result;
}

uint64_t sub_1BA23FF38()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEEFE0 = result;
  *algn_1EBBEEFE8 = v1;
  return result;
}

uint64_t sub_1BA23FFE4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEEFF0 = result;
  *algn_1EBBEEFF8 = v1;
  return result;
}

uint64_t sub_1BA240090@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA4A79E8();
  *a1 = result;
  return result;
}

uint64_t sub_1BA2400CC()
{
  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_acceptButton] showsBusyIndicator];
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_cancelButton];
  if (v1)
  {
    [v1 setEnabled_];
  }

  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_declineButton];
  if (v2)
  {
    [v2 setEnabled_];
  }

  v3 = sub_1BA23F6A4();
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v4 = sub_1BA4A1318();
  v6 = v5;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BA00B570(v3, v0, v4, v6, v0, v7);
}

void sub_1BA24024C(char a1)
{
  v2 = sub_1BA4A33C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-4] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [*(Strong + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_acceptButton) hidesBusyIndicator];
    v8 = *&v7[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_cancelButton];
    if (v8)
    {
      [v8 setEnabled_];
    }

    v9 = *&v7[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_declineButton];
    if (v9)
    {
      [v9 setEnabled_];
    }

    if (a1)
    {
      type metadata accessor for SummarySharingInviteToReceiveAnalyticsEvent();
      v10 = OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthStore;
      v11 = *&v7[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthStore];
      v19 = 1;
      v18[0] = 0;
      static SummarySharingInviteToReceiveAnalyticsEvent.submitAnalytics(healthStore:location:version:stepDetails:)(v11, &v19, v12, v18);
      (*(v3 + 16))(v5, &v7[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_profileInformation], v2);
      v13 = *&v7[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_selectedContactPhotoPublisher];
      sub_1B9F0A534(&v7[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthExperienceStore], v18);
      v14 = *&v7[v10];
      objc_allocWithZone(type metadata accessor for SummarySharingInvitationEnableUpdatesViewController());

      v15 = v14;
      v16 = sub_1BA12A050(v5, v13, v18, v15);

      [v7 showViewController:v16 sender:0];
      v7 = v16;
    }
  }
}

uint64_t sub_1BA2404A0()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_acceptButton];
  if (v1)
  {
    [v1 setEnabled_];
  }

  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_cancelButton];
  if (v2)
  {
    [v2 setEnabled_];
  }

  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_declineButton];
  if (v3)
  {
    [v3 setEnabled_];
  }

  *(swift_allocObject() + 16) = v0;
  sub_1BA242584(0);
  swift_allocObject();
  v4 = v0;
  sub_1BA4A4EA8();
  sub_1BA2425AC(&qword_1EBBEF058, sub_1BA242584);
  v5 = sub_1BA4A4F98();

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v6 = sub_1BA4A1318();
  v8 = v7;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BA00BBF0(v5, v4, v6, v8, v4, v9);
}

void sub_1BA2406C8(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_acceptButton);
    if (v4)
    {
      [v4 setEnabled_];
    }

    v5 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_cancelButton];
    if (v5)
    {
      [v5 setEnabled_];
    }

    v6 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_declineButton];
    if (v6)
    {
      [v6 setEnabled_];
    }

    if (a1)
    {
      type metadata accessor for SummarySharingInviteToReceiveAnalyticsEvent();
      v7 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthStore];
      v10 = 1;
      v9 = 256;
      static SummarySharingInviteToReceiveAnalyticsEvent.submitAnalytics(healthStore:location:version:stepDetails:)(v7, &v10, v8, &v9);
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_1BA240858()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthExperienceStore);

  v1 = OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_profileInformation;
  v2 = sub_1BA4A33C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_cancelButton);
}

uint64_t type metadata accessor for OBKSummarySharingInvitationTopicsViewController()
{
  result = qword_1EBBEF018;
  if (!qword_1EBBEF018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA240A9C()
{
  result = sub_1BA4A33C8();
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

unint64_t sub_1BA240B64(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v121 = a5;
  ObjectType = swift_getObjectType();
  v11 = MEMORY[0x1E69E6720];
  sub_1B9F1B620(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v139 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v140 = (&v121 - v15);
  v16 = sub_1BA4A1C68();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v145 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v133 = &v121 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v144 = &v121 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v150 = &v121 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v134 = &v121 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v151 = &v121 - v28;
  v147 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v141 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v143 = &v121 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v142 = (&v121 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v149 = &v121 - v35;
  sub_1B9F1B620(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, v11);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v126 = &v121 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v121 - v39;
  v41 = MEMORY[0x1E69E7CC0];
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_cancellables) = MEMORY[0x1E69E7CC0];
  v129 = a4;
  sub_1B9F0A534(a4, v6 + OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_healthExperienceStore);
  v42 = type metadata accessor for SummarySharingSelectionFlow(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v125 = v42;
  v124 = v44;
  v123 = v43 + 56;
  (v44)(v40, 1, 1);
  type metadata accessor for SummarySharingSelectedDataTypesContext();
  swift_allocObject();

  v127 = v40;
  v46 = SummarySharingSelectedDataTypesContext.init(selectedItems:selectionFlow:)(v45, v40);
  v128 = v6;
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_selectedDataTypesContext) = v46;
  v158 = v41;
  v47 = a3;
  if (a2)
  {
    v48 = sub_1BA4A33A8();
    v50 = sub_1BA4676CC(v48, v49);

    v51 = sub_1B9F1E00C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v158 = v51;
    v53 = *(v51 + 16);
    v52 = *(v51 + 24);
    if (v53 >= v52 >> 1)
    {
      v51 = sub_1B9F1E00C(v52 > 1, v53 + 1, 1, v51);
      v158 = v51;
    }

    sub_1BA2438CC(0, &qword_1EBBEF0C0, sub_1BA243890, &protocol witness table for CellRegistering<A>, type metadata accessor for DataSourceWithLayout);
    sub_1BA1BA008(v53, v50, &v158, v54, &protocol witness table for DataSourceWithLayout<A>);
    v158 = v51;
  }

  v122 = v47;
  v55 = *(a1 + 16);
  v148 = a1;
  ObjectType = v55;
  if (!v55)
  {
LABEL_22:

    v56 = v127;
    v124(v127, 1, 1, v125);
    sub_1B9F0A534(v129, &v155);
    if (qword_1EBBE83E0 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_23;
  }

  v56 = 0;
  v132 = (v17 + 16);
  v131 = (v17 + 32);
  v130 = *MEMORY[0x1E69A3B68];
  LODWORD(v136) = *MEMORY[0x1E69A3B90];
  v57 = (v17 + 8);
  v58 = MEMORY[0x1E69E7CC0];
  v137 = (v17 + 104);
  v135 = (v17 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v59 = v140;
  v60 = v151;
  v138 = v17;
  while (v56 < *(a1 + 16))
  {
    v61 = (*(v146 + 80) + 32) & ~*(v146 + 80);
    v62 = *(v146 + 72);
    v63 = v149;
    sub_1BA025290(a1 + v61 + v62 * v56, v149);
    sub_1BA2436E8(v63 + *(v147 + 40), v59, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v64 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
    if ((*(*(v64 - 8) + 48))(v59, 1, v64) == 1)
    {
      sub_1BA243768(v59, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v65 = *v137;
      (*v137)(v60, v130, v16);
    }

    else
    {
      v66 = v59 + *(v64 + 40);
      v67 = v134;
      (*v132)(v134, v66, v16);
      sub_1BA2437D8(v59, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      (*v131)(v60, v67, v16);
      v65 = *v137;
    }

    (v65)(v150, v136, v16);
    sub_1BA2425AC(&qword_1EBBEF0B8, MEMORY[0x1E69A3C08]);
    sub_1BA4A6A58();
    sub_1BA4A6A58();
    if (v155 == v153 && v156 == v154)
    {
      v68 = *v57;
      (*v57)(v150, v16);
      v68(v151, v16);

      a1 = v148;
LABEL_17:
      sub_1BA025350(v149, v142);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v157 = v58;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BA066E50(0, *(v58 + 16) + 1, 1);
        v58 = v157;
      }

      v73 = *(v58 + 16);
      v72 = *(v58 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_1BA066E50(v72 > 1, v73 + 1, 1);
        v58 = v157;
      }

      *(v58 + 16) = v73 + 1;
      sub_1BA025350(v142, v58 + v61 + v73 * v62);
      goto LABEL_8;
    }

    v69 = sub_1BA4A8338();
    v70 = *v57;
    (*v57)(v150, v16);
    v70(v151, v16);
    a1 = v148;

    if (v69)
    {
      goto LABEL_17;
    }

    sub_1BA2437D8(v149, type metadata accessor for SummarySharingSelectableDataTypeItem);
LABEL_8:
    v59 = v140;
    ++v56;
    v60 = v151;
    v17 = v138;
    if (ObjectType == v56)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  swift_once();
LABEL_23:
  v75 = qword_1EBBECA08;
  v74 = unk_1EBBECA10;
  v76 = v126;
  sub_1BA2436E8(v56, v126, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  sub_1B9F1B620(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v77 = (v17[80] + 32) & ~v17[80];
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1BA4B5480;
  v79 = *MEMORY[0x1E69A3B90];
  v150 = *(v17 + 13);
  v151 = v17 + 104;
  (v150)(v78 + v77, v79, v16);
  type metadata accessor for SummarySharingSelectedDataTypesDataSource();
  v80 = swift_allocObject();
  *(v80 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isHeaderLinkEnabled) = 1;
  *(v80 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(&v155, v80 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore);
  *(v80 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isEditable) = 0;
  v81 = (v80 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
  *v81 = v75;
  v81[1] = v74;
  sub_1BA2436E8(v76, v80 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  *(v80 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_contentKinds) = v78;
  *(v80 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_canEditSelection) = 0;
  v82 = (v80 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter);
  *v82 = 0;
  v82[1] = 0;

  v83 = MEMORY[0x1E69E7CC0];
  v84 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA146B8C, 0);
  sub_1BA243768(v76, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  __swift_destroy_boxed_opaque_existential_1(&v155);
  sub_1BA243768(v56, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  v136 = OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_sharedAlertsDataSource;
  *(v128 + OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_sharedAlertsDataSource) = v84;
  if (ObjectType)
  {
    v56 = 0;
    v140 = (v17 + 16);
    v137 = (v17 + 32);
    v85 = *MEMORY[0x1E69A3B68];
    v142 = (v17 + 8);
    v86 = v139;
    v17 = v150;
    LODWORD(v149) = v85;
    while (1)
    {
      if (v56 >= *(a1 + 16))
      {
        goto LABEL_54;
      }

      v87 = (*(v146 + 80) + 32) & ~*(v146 + 80);
      v88 = a1 + v87;
      v89 = *(v146 + 72);
      v90 = v143;
      sub_1BA025290(v88 + v89 * v56, v143);
      sub_1BA2436E8(v90 + *(v147 + 40), v86, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v91 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
      if ((*(*(v91 - 8) + 48))(v86, 1, v91) == 1)
      {
        sub_1BA243768(v86, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v92 = v149;
        (v17)(v144, v149, v16);
      }

      else
      {
        (*v140)(v133, v86 + *(v91 + 40), v16);
        sub_1BA2437D8(v86, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        (*v137)(v144);
        v92 = v149;
      }

      (v17)(v145, v92, v16);
      sub_1BA2425AC(&qword_1EBBEF0B8, MEMORY[0x1E69A3C08]);
      sub_1BA4A6A58();
      sub_1BA4A6A58();
      if (v155 == v153 && v156 == v154)
      {
        break;
      }

      v94 = sub_1BA4A8338();
      v95 = *v142;
      (*v142)(v145, v16);
      v95(v144, v16);

      if (v94)
      {
        goto LABEL_35;
      }

      sub_1BA2437D8(v143, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v86 = v139;
LABEL_26:
      v17 = v150;
      ++v56;
      a1 = v148;
      if (ObjectType == v56)
      {
        goto LABEL_40;
      }
    }

    v93 = *v142;
    (*v142)(v145, v16);
    v93(v144, v16);

LABEL_35:
    sub_1BA025350(v143, v141);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v157 = v83;
    if ((v96 & 1) == 0)
    {
      sub_1BA066E50(0, *(v83 + 16) + 1, 1);
      v83 = v157;
    }

    v86 = v139;
    v98 = *(v83 + 16);
    v97 = *(v83 + 24);
    if (v98 >= v97 >> 1)
    {
      sub_1BA066E50(v97 > 1, v98 + 1, 1);
      v83 = v157;
    }

    *(v83 + 16) = v98 + 1;
    sub_1BA025350(v141, v83 + v87 + v98 * v89);
    goto LABEL_26;
  }

LABEL_40:

  v99 = _s18HealthExperienceUI031SummarySharingSelectedDataTypesG6SourceC31withCategorySectionsIfNecessary5items5storeSayACGSayAA0de10SelectableG8TypeItemVG_0A8Platform0aB5Store_ptFZ_0(v83, v129);

  v100 = v128;
  *(v128 + OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_sharedTopicsDataSources) = v99;
  sub_1BA243838(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5470;
  *(inited + 32) = *(v100 + v136);
  v155 = inited;

  sub_1B9FE2414(v102);
  v103 = sub_1B9FE98D4(v155);

  sub_1B9FE20B8(v103);
  v104 = v158;
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();

  v106 = CompoundSectionedDataSource.init(_:)(v105);
  v107 = CompoundDataSourceCollectionViewController.init(dataSource:)(v106);
  v108 = OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_selectedDataTypesContext;
  swift_beginAccess();
  v153 = *(*&v107[v108] + 48);
  v109 = MEMORY[0x1E695BF70];
  sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
  sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v109);
  v56 = v107;
  v153 = sub_1BA4A4F98();
  v110 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v111 = swift_allocObject();
  *(v111 + 16) = sub_1BA243888;
  *(v111 + 24) = v110;
  v112 = MEMORY[0x1E695BED0];
  sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
  sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v112);
  sub_1BA4A5148();

  swift_beginAccess();
  sub_1B9F1B620(0, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1BA091D04();
  sub_1BA4A4D38();
  swift_endAccess();

  v17 = &off_1F3810808;
  *(*(v56 + OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_sharedAlertsDataSource) + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = &off_1F3810808;
  swift_unknownObjectWeakAssign();

  sub_1BA146CA4();

  v113 = *(v56 + OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_sharedTopicsDataSources);
  ObjectType = v104;
  if (v113 >> 62)
  {
    v114 = sub_1BA4A7CC8();
  }

  else
  {
    v114 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v114)
  {
    v115 = 0;
    v16 = v113 & 0xC000000000000001;
    a1 = v113 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v16)
      {
        v116 = MEMORY[0x1BFAF2860](v115, v113);
        v117 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v115 >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v116 = *(v113 + 8 * v115 + 32);

        v117 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
LABEL_51:
          __break(1u);
          break;
        }
      }

      *(v116 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = &off_1F3810808;
      swift_unknownObjectWeakAssign();
      v118 = v56;
      sub_1BA146CA4();

      ++v115;
    }

    while (v117 != v114);
  }

  __swift_destroy_boxed_opaque_existential_1(v129);
  v119 = sub_1BA4A33C8();
  (*(*(v119 - 8) + 8))(v122, v119);

  return v56;
}

void sub_1BA24204C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
    v2 = Strong;
    swift_beginAccess();
    v3 = *&v2[v1];

    if (v3)
    {
      sub_1BA10BB30(1);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BA242158()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SummarySharingInvitationTopicsViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = [v0 collectionView];
    if (v4)
    {
      v5 = v4;
      [v4 setPreservesSuperviewLayoutMargins_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BA2422DC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_healthExperienceStore);
}

id sub_1BA242364(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BA242484(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_selectedDataTypesContext;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1BA2425AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA2425F8@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  sub_1BA242584(0);
  swift_allocObject();
  v4 = a1;
  result = sub_1BA4A4EA8();
  *a2 = result;
  return result;
}

uint64_t sub_1BA242680()
{
  sub_1BA4A33C8();
  v0 = sub_1BA4A2AF8();
  v2 = v1;
  if ((sub_1BA4A33B8() & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    if (qword_1EBBE8530 != -1)
    {
      swift_once();
    }

    sub_1B9F1B620(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BA4B5480;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1B9F1BE20();
    *(v4 + 32) = v0;
    *(v4 + 40) = v2;
    v5 = sub_1BA4A6768();
  }

  else
  {
LABEL_8:

    if (qword_1EBBE8538 != -1)
    {
      swift_once();
    }

    v5 = qword_1EBBEEFA0;
  }

  return v5;
}

uint64_t sub_1BA242808()
{
  sub_1BA4A33C8();
  v0 = sub_1BA4A2AE8();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    if (sub_1BA4A33B8())
    {
      if (qword_1EBBE8540 != -1)
      {
        swift_once();
      }

      sub_1B9F1B620(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1BA4B5460;
      v5 = sub_1BA4A2AF8();
      v7 = v6;
      v8 = MEMORY[0x1E69E6158];
      *(v4 + 56) = MEMORY[0x1E69E6158];
      v9 = sub_1B9F1BE20();
      *(v4 + 64) = v9;
      *(v4 + 32) = v5;
      *(v4 + 40) = v7;
      v10 = MEMORY[0x1BFAEDD10]();
      *(v4 + 96) = v8;
      *(v4 + 104) = v9;
    }

    else
    {
      if (qword_1EBBE8548 != -1)
      {
        swift_once();
      }

      sub_1B9F1B620(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1BA4B5460;
      v16 = MEMORY[0x1BFAEDD10]();
      v18 = v17;
      v19 = MEMORY[0x1E69E6158];
      *(v4 + 56) = MEMORY[0x1E69E6158];
      v20 = sub_1B9F1BE20();
      *(v4 + 64) = v20;
      *(v4 + 32) = v16;
      *(v4 + 40) = v18;
      v10 = sub_1BA4A2AE8();
      *(v4 + 96) = v19;
      *(v4 + 104) = v20;
    }

    *(v4 + 72) = v10;
    *(v4 + 80) = v11;
  }

  else
  {
    if (qword_1EBBE8550 != -1)
    {
      swift_once();
    }

    sub_1B9F1B620(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BA4B5480;
    v13 = MEMORY[0x1BFAEDD10]();
    v15 = v14;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1B9F1BE20();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
  }

  v21 = sub_1BA4A6768();

  return v21;
}

char *sub_1BA242B14(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v59 = a4;
  v56 = a3;
  v55 = a2;
  v10 = sub_1BA4A33C8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA243558();
  v53 = v13;
  v58 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_inviteStreamCancellable] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_acceptButton] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_declineButton] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_cancelButton] = 0;
  sub_1B9F0A534(a4, &v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthExperienceStore]);
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthStore] = a5;
  v15 = objc_allocWithZone(MEMORY[0x1E696C4F0]);
  v52 = a5;
  v16 = [v15 initWithHealthStore_];
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_sharingEntryStore] = v16;
  v57 = v11;
  v17 = *(v11 + 16);
  v17(&v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_profileInformation], a1, v10);
  v50 = v17;
  sub_1B9F0ADF8(0, &qword_1EDC5E540);
  v18 = sub_1BA4A7068();
  v61[3] = v10;
  v61[4] = MEMORY[0x1E69A3410];
  v61[5] = MEMORY[0x1E69A3418];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  v17(boxed_opaque_existential_1, a1, v10);
  sub_1BA4A6FF8();
  v20 = sub_1BA4A7058();

  __swift_destroy_boxed_opaque_existential_1(v61);
  v61[0] = v20;
  sub_1BA243680(0, &qword_1EBBEF0A0, &qword_1EBBEE5C8);
  sub_1B9F0ADF8(0, &qword_1EDC6E370);
  v21 = a1;
  sub_1BA243624(&qword_1EBBEF0A8, &qword_1EBBEF0A0, &qword_1EBBEE5C8);
  v22 = v51;
  sub_1BA4A4FE8();

  sub_1BA2425AC(&qword_1EBBEF0B0, sub_1BA243558);
  v23 = v53;
  v24 = sub_1BA4A4F98();
  (*(v58 + 8))(v22, v23);
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_selectedContactPhotoPublisher] = v24;
  v25 = v54;
  v58 = v10;
  v50(v54, v21, v10);
  sub_1B9F0A534(v59, v61);
  v26 = objc_allocWithZone(type metadata accessor for SummarySharingInvitationTopicsViewController());
  v27 = v52;
  v28 = sub_1BA240B64(v55, v56, v25, v61, v27);
  sub_1BA242680();
  sub_1BA242808();
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] = 0;
  v29 = &v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastWidthUseForCollectionViewLayout];
  *v29 = 0;
  v29[8] = 1;
  v30 = &v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight];
  *v30 = 0;
  v30[8] = 1;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentSizeObserver] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] = v28;
  v31 = v28;
  v32 = sub_1BA4A6758();

  v33 = sub_1BA4A6758();

  v34 = type metadata accessor for OnboardingCollectionViewController();
  v60.receiver = v6;
  v60.super_class = v34;
  v35 = objc_msgSendSuper2(&v60, sel_initWithTitle_detailText_icon_contentLayout_, v32, v33, 0, 3);

  v61[0] = *&v35[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_selectedContactPhotoPublisher];
  *(swift_allocObject() + 16) = v35;
  sub_1BA243680(0, &qword_1EBBEC120, &qword_1EDC6E370);
  sub_1BA243624(&qword_1EBBEE650, &qword_1EBBEC120, &qword_1EDC6E370);
  v36 = v35;

  sub_1BA4A4F88();

  if (qword_1EBBE8558 != -1)
  {
    swift_once();
  }

  v37 = sub_1BA4A6758();
  v38 = sub_1BA4A6758();
  v39 = [v36 hxui:v37 addPrimaryFooterButtonWithTitle:v38 accessibilityIdentifier:?];

  v40 = *&v36[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_acceptButton];
  *&v36[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_acceptButton] = v39;

  if (qword_1EBBE8560 != -1)
  {
    swift_once();
  }

  v41 = sub_1BA4A6758();
  v42 = sub_1BA4A6758();
  v43 = [v36 hxui:v41 addSecondaryFooterButtonWithTitle:0 bold:v42 accessibilityIdentifier:?];

  v44 = *&v36[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_declineButton];
  *&v36[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_declineButton] = v43;

  v45 = [v36 hxui_addCancelButton];
  v46 = *&v36[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_cancelButton];
  *&v36[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_cancelButton] = v45;

  v47 = [v36 navigationItem];
  v48 = sub_1BA35F6F8();
  [v47 setTitleView_];

  __swift_destroy_boxed_opaque_existential_1(v59);
  (*(v57 + 8))(v21, v58);
  return v36;
}

void sub_1BA2432D8()
{
  if (!qword_1EBBEF060)
  {
    sub_1BA242584(255);
    sub_1BA2433C4(255);
    sub_1BA2425AC(&qword_1EBBEF058, sub_1BA242584);
    sub_1BA2425AC(&qword_1EBBEF070, sub_1BA2433C4);
    v0 = sub_1BA4A4C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF060);
    }
  }
}

void sub_1BA2434AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for SummarySharingOnboardingError();
    v9 = sub_1BA2425AC(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
    v10 = a4(a1, a3, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1BA243558()
{
  if (!qword_1EBBEF098)
  {
    sub_1BA243680(255, &qword_1EBBEF0A0, &qword_1EBBEE5C8);
    sub_1B9F0ADF8(255, &qword_1EDC6E370);
    sub_1BA243624(&qword_1EBBEF0A8, &qword_1EBBEF0A0, &qword_1EBBEE5C8);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF098);
    }
  }
}

uint64_t sub_1BA243624(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BA243680(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA243680(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1B9F0ADF8(255, a3);
    v4 = sub_1BA4A4D18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA2436E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F1B620(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA243768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F1B620(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA2437D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA243838(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA2438CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

HealthExperienceUI::SummarySharingSetupUIErrorsEvent __swiftcall SummarySharingSetupUIErrorsEvent.init(operation:errorReason:)(HealthExperienceUI::SummarySharingOnboardingError::SharingOperation operation, Swift::String errorReason)
{
  v3 = v2;
  sub_1BA0B2740();
  *v3 = sub_1BA4A77C8();
  v4 = sub_1BA4A6758();

  v3[1] = v4;
  result.errorReason = v6;
  result.operation = v5;
  return result;
}

unint64_t sub_1BA243A3C()
{
  result = qword_1EBBEF0C8;
  if (!qword_1EBBEF0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF0C8);
  }

  return result;
}

unint64_t sub_1BA243A94()
{
  result = qword_1EBBEF0D0;
  if (!qword_1EBBEF0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF0D0);
  }

  return result;
}

id UIView.roundCorners(radius:curve:maskedCorners:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = [v3 layer];
  [v7 setCornerCurve_];

  v8 = [v3 layer];
  [v8 setCornerRadius_];

  v9 = [v3 layer];
  [v9 setMaskedCorners_];

  return [v3 setClipsToBounds_];
}

Swift::Void __swiftcall UIView.resetCornerRadius()()
{
  v1 = [v0 layer];
  [v1 setCornerCurve_];

  v2 = [v0 layer];
  [v2 setCornerRadius_];

  [v0 setClipsToBounds_];
}

uint64_t sub_1BA243CC8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF0D8 = result;
  unk_1EBBEF0E0 = v1;
  return result;
}

uint64_t sub_1BA243D74()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF0E8 = result;
  unk_1EBBEF0F0 = v1;
  return result;
}

id sub_1BA243E20()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v64 - v7;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___pendingMessageLabel;
  v10 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___pendingMessageLabel];
  if (!v10)
  {
    v69 = v6;
    v12 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    [v12 setNumberOfLines_];
    v13 = [objc_opt_self() secondaryLabelColor];
    [v12 setTextColor_];

    [v12 setAdjustsFontForContentSizeCategory_];
    v14 = [v0 traitCollection];
    v15 = [v14 preferredContentSizeCategory];

    v70 = v15;
    v16 = sub_1BA4A74F8();
    v17 = *MEMORY[0x1E69DDD80];
    v18 = objc_opt_self();
    v19 = [v18 preferredFontDescriptorWithTextStyle:v17 compatibleWithTraitCollection:0];
    v20 = v19;
    if (v16)
    {
      v21 = [v19 fontDescriptorWithSymbolicTraits_];

      if (v21)
      {
        v22 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];

LABEL_15:
        [v12 setFont_];

        LODWORD(v59) = 1148846080;
        [v12 setContentCompressionResistancePriority:1 forAxis:v59];
        LODWORD(v60) = 1148846080;
        [v12 setContentHuggingPriority:1 forAxis:v60];
        v61 = *&v0[v9];
        *&v0[v9] = v12;
        v11 = v12;

        v10 = 0;
        goto LABEL_16;
      }

      v68 = v0;
      sub_1BA4A3DD8();
      v23 = v17;
      v24 = sub_1BA4A3E88();
      v25 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v73 = v66;
        *v26 = 136315906;
        v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v29 = sub_1B9F0B82C(v27, v28, &v73);
        v67 = v23;
        v30 = v29;

        *(v26 + 4) = v30;
        *(v26 + 12) = 2080;
        v71 = 0;
        v72 = 1;
        sub_1B9F47F20(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v31 = sub_1BA4A6808();
        v33 = sub_1B9F0B82C(v31, v32, &v73);

        *(v26 + 14) = v33;
        *(v26 + 22) = 2080;
        LODWORD(v71) = 0x8000;
        type metadata accessor for SymbolicTraits(0);
        v34 = sub_1BA4A6808();
        v36 = sub_1B9F0B82C(v34, v35, &v73);
        v23 = v67;

        *(v26 + 24) = v36;
        *(v26 + 32) = 2112;
        v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v26 + 34) = v37;
        v38 = v65;
        *v65 = v37;
        _os_log_impl(&dword_1B9F07000, v24, v25, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v26, 0x2Au);
        sub_1B9F8C6C8(v38);
        MEMORY[0x1BFAF43A0](v38, -1, -1);
        v39 = v66;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v39, -1, -1);
        MEMORY[0x1BFAF43A0](v26, -1, -1);
      }

      (*(v2 + 8))(v8, v69);
      v0 = v68;
      v40 = [v18 preferredFontDescriptorWithTextStyle_];
      v41 = [objc_opt_self() fontWithDescriptor:v40 size:0.0];
    }

    else
    {
      if (v19)
      {
        v22 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];

        goto LABEL_15;
      }

      v68 = v0;
      sub_1BA4A3DD8();
      v42 = v17;
      v43 = sub_1BA4A3E88();
      v44 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v73 = v66;
        *v45 = 136315906;
        v46 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v48 = sub_1B9F0B82C(v46, v47, &v73);
        v67 = v42;
        v49 = v48;

        *(v45 + 4) = v49;
        *(v45 + 12) = 2080;
        v71 = 0;
        v72 = 1;
        sub_1B9F47F20(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v50 = sub_1BA4A6808();
        v52 = sub_1B9F0B82C(v50, v51, &v73);

        *(v45 + 14) = v52;
        *(v45 + 22) = 2080;
        LODWORD(v71) = 0;
        type metadata accessor for SymbolicTraits(0);
        v53 = sub_1BA4A6808();
        v55 = sub_1B9F0B82C(v53, v54, &v73);
        v42 = v67;

        *(v45 + 24) = v55;
        *(v45 + 32) = 2112;
        v56 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v45 + 34) = v56;
        v57 = v65;
        *v65 = v56;
        _os_log_impl(&dword_1B9F07000, v43, v44, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v45, 0x2Au);
        sub_1B9F8C6C8(v57);
        MEMORY[0x1BFAF43A0](v57, -1, -1);
        v58 = v66;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v58, -1, -1);
        MEMORY[0x1BFAF43A0](v45, -1, -1);
      }

      (*(v2 + 8))(v4, v69);
      v0 = v68;
      v40 = [v18 preferredFontDescriptorWithTextStyle_];
      v41 = [objc_opt_self() fontWithDescriptor:v40 size:0.0];
    }

    v22 = v41;

    goto LABEL_15;
  }

  v11 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___pendingMessageLabel];
LABEL_16:
  v62 = v10;
  return v11;
}

id sub_1BA244604()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton);
  }

  else
  {
    v4 = sub_1BA244664();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA244664()
{
  sub_1B9F47F20(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1BA4A7838();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A79A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A7988();
  if (qword_1EBBE8568 != -1)
  {
    swift_once();
  }

  sub_1BA4A7978();
  (*(v4 + 104))(v6, *MEMORY[0x1E69DC508], v3);
  sub_1BA4A7848();
  v11 = [objc_opt_self() buttonWithType_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  (*(v8 + 16))(v2, v10, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  sub_1BA4A79D8();
  LODWORD(v12) = 1148846080;
  [v11 setContentHuggingPriority:1 forAxis:v12];
  (*(v8 + 8))(v10, v7);
  return v11;
}

void sub_1BA2449EC()
{
  sub_1BA1925B0();
  v1 = sub_1BA191D10();
  v2 = sub_1BA243E20();
  [v1 addSubview_];

  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView);
  v4 = sub_1BA244604();
  [v3 addSubview_];
}

void sub_1BA244A8C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1BA192798();
  sub_1BA191E60(v3);
  v4 = sub_1BA1946B4();
  sub_1BA19452C(v4);
  v5 = sub_1BA191DB4();
  [v5 setHidden_];

  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner] stopAnimating];
  v34 = objc_opt_self();
  sub_1B9F109F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4C27A0;
  v7 = sub_1BA243E20();
  v8 = [v7 topAnchor];

  v9 = sub_1BA191D10();
  v10 = [v9 topAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v6 + 32) = v11;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___pendingMessageLabel;
  v13 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___pendingMessageLabel] leadingAnchor];
  v14 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView;
  v15 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView] &selRef__totalDistance + 1];
  v16 = [v13 constraintEqualToAnchor_];

  *(v6 + 40) = v16;
  v17 = [*&v0[v12] trailingAnchor];
  v18 = [*&v0[v14] trailingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v6 + 48) = v19;
  v20 = sub_1BA244604();
  v21 = [v20 topAnchor];

  v22 = [*&v0[v12] bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:7.0];

  *(v6 + 56) = v23;
  v24 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton;
  v25 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton] leadingAnchor];
  v26 = [*&v0[v14] leadingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v6 + 64) = v27;
  v28 = [*&v0[v24] trailingAnchor];
  v29 = [*&v0[v14] trailingAnchor];
  v30 = [v28 constraintLessThanOrEqualToAnchor_];

  *(v6 + 72) = v30;
  v31 = [*&v0[v24] bottomAnchor];
  v32 = [*&v0[v14] bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:-5.0];

  *(v6 + 80) = v33;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v35 = sub_1BA4A6AE8();

  [v34 activateConstraints_];
}

uint64_t sub_1BA244EB0()
{
  swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A33C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA193198();
  v9 = sub_1BA244604();
  [v9 addTarget:v0 action:sel_viewPendingInvitation forControlEvents:64];

  v10 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  sub_1BA246AD0(v0 + v10, v25, sub_1B9F7B6F8);
  if (v25[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    type metadata accessor for SummarySharingPendingProfileTileItem();
    if (swift_dynamicCast())
    {
      v11 = v24[1];
      v12 = sub_1BA243E20();
      (*(v6 + 16))(v8, v11 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_sharingEntryProfileInformation, v5);
      sub_1BA246B98(v8);
      (*(v6 + 8))(v8, v5);
      v13 = sub_1BA4A6758();

      [v12 setText_];

      [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton) setEnabled_];
      sub_1BA2452E0();
    }
  }

  else
  {
    sub_1BA246B38(v25, sub_1B9F7B6F8);
  }

  v15 = sub_1BA243E20();
  if (qword_1EBBE8570 != -1)
  {
    swift_once();
  }

  v16 = sub_1BA4A6758();
  [v15 setText_];

  sub_1BA4A3DD8();
  v17 = sub_1BA4A3E88();
  v18 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25[0] = v20;
    *v19 = 136315138;
    v21 = sub_1BA4A85D8();
    v23 = sub_1B9F0B82C(v21, v22, v25);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1B9F07000, v17, v18, "[%s] Couldn't find SummarySharingPendingProfileTileItem to view pending invitation for", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    MEMORY[0x1BFAF43A0](v19, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_1BA2452E0()
{
  v0 = sub_1BA243E20();

  MEMORY[0x1BFAF1350](0xD000000000000015, 0x80000001BA4F68A0);
  v1 = sub_1BA4A6758();

  [v0 setAccessibilityIdentifier_];

  v2 = sub_1BA244604();

  MEMORY[0x1BFAF1350](0x6E6F747475422ELL, 0xE700000000000000);
  v3 = sub_1BA4A6758();

  [v2 setAccessibilityIdentifier_];
}

uint64_t sub_1BA245410()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A33C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46[-v7];
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46[-v14];
  v16 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  sub_1BA246AD0(v1 + v16, v53, sub_1B9F7B6F8);
  if (v54)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    type metadata accessor for SummarySharingPendingProfileTileItem();
    if (swift_dynamicCast())
    {
      v50 = v3;
      v17 = v52[0];
      sub_1BA4A3DD8();

      v18 = sub_1BA4A3E88();
      v19 = sub_1BA4A6FC8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v49 = v5;
        v21 = v20;
        v48 = swift_slowAlloc();
        v53[0] = v48;
        *v21 = 136315394;
        v22 = sub_1BA4A85D8();
        ObjectType = v18;
        v24 = sub_1B9F0B82C(v22, v23, v53);
        v47 = v19;
        v25 = v24;

        *(v21 + 4) = v25;
        *(v21 + 12) = 2080;
        v26 = v50;
        v27 = (*(v50 + 16))(v8, v17 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_sharingEntryProfileInformation, v2);
        v28 = MEMORY[0x1BFAEDD10](v27);
        v30 = v29;
        (*(v26 + 8))(v8, v2);
        v31 = sub_1B9F0B82C(v28, v30, v53);

        *(v21 + 14) = v31;
        v18 = ObjectType;
        _os_log_impl(&dword_1B9F07000, ObjectType, v47, "[%s] Viewing invitation for: %s", v21, 0x16u);
        v32 = v48;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v32, -1, -1);
        v33 = v21;
        v5 = v49;
        MEMORY[0x1BFAF43A0](v33, -1, -1);
      }

      (*(v10 + 8))(v15, v9);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
      }

      v35 = Strong;
      v36 = v50;
      (*(v50 + 16))(v5, v17 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_sharingEntryProfileInformation, v2);
      v37 = qword_1EDC84AF8;
      swift_beginAccess();
      sub_1BA246AD0(v35 + v37, v53, sub_1BA1A29E0);
      if (v54)
      {
        sub_1B9F0A534(v53, v52);
        sub_1BA246B38(v53, sub_1BA1A29E0);
        __swift_project_boxed_opaque_existential_1(v52, v52[3]);
        sub_1BA0068DC(v5);

        swift_unknownObjectRelease();
        (*(v36 + 8))(v5, v2);
        return __swift_destroy_boxed_opaque_existential_1(v52);
      }

      else
      {
        swift_unknownObjectRelease();

        (*(v36 + 8))(v5, v2);
        return sub_1BA246B38(v53, sub_1BA1A29E0);
      }
    }
  }

  else
  {
    sub_1BA246B38(v53, sub_1B9F7B6F8);
  }

  sub_1BA4A3DD8();
  v39 = sub_1BA4A3E88();
  v40 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v53[0] = v42;
    *v41 = 136315138;
    v43 = sub_1BA4A85D8();
    v45 = sub_1B9F0B82C(v43, v44, v53);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_1B9F07000, v39, v40, "[%s] Couldn't find SummarySharingPendingProfileTileItem to view pending invitation for", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1BFAF43A0](v42, -1, -1);
    MEMORY[0x1BFAF43A0](v41, -1, -1);
  }

  return (*(v10 + 8))(v12, v9);
}

void sub_1BA245A68(void *a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v60 - v8;
  v10 = type metadata accessor for SummarySharingPendingProfileTileCell();
  v68.receiver = v1;
  v68.super_class = v10;
  objc_msgSendSuper2(&v68, sel_traitCollectionDidChange_, a1);
  if (!a1 || (v11 = [a1 preferredContentSizeCategory], v12 = sub_1BA4A74F8() & 1, v11, v13 = objc_msgSend(v1, sel_traitCollection), v14 = objc_msgSend(v13, sel_preferredContentSizeCategory), v13, LODWORD(v13) = sub_1BA4A74F8() & 1, v14, v12 != v13))
  {
    v15 = sub_1BA243E20();
    v16 = [v1 traitCollection];
    v17 = [v16 preferredContentSizeCategory];

    v18 = sub_1BA4A74F8();
    v19 = *MEMORY[0x1E69DDD80];
    v20 = objc_opt_self();
    v21 = [v20 preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:0];
    v22 = v21;
    if (v18)
    {
      v23 = [v21 fontDescriptorWithSymbolicTraits_];

      if (v23)
      {
        v24 = [objc_opt_self() fontWithDescriptor:v23 size:0.0];
        v22 = v23;
      }

      else
      {
        sub_1BA4A3DD8();
        v25 = v19;
        v26 = sub_1BA4A3E88();
        v27 = sub_1BA4A6FB8();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v67 = v62;
          *v28 = 136315906;
          v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v64 = v4;
          v31 = sub_1B9F0B82C(v29, v30, &v67);
          v63 = v25;
          v32 = v31;

          *(v28 + 4) = v32;
          *(v28 + 12) = 2080;
          v65 = 0;
          v66 = 1;
          sub_1B9F47F20(0, &qword_1EBBECB00, type metadata accessor for Weight);
          v33 = sub_1BA4A6808();
          v35 = sub_1B9F0B82C(v33, v34, &v67);

          *(v28 + 14) = v35;
          *(v28 + 22) = 2080;
          LODWORD(v65) = 0x8000;
          type metadata accessor for SymbolicTraits(0);
          v36 = sub_1BA4A6808();
          v38 = sub_1B9F0B82C(v36, v37, &v67);
          v25 = v63;

          *(v28 + 24) = v38;
          *(v28 + 32) = 2112;
          v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
          *(v28 + 34) = v39;
          v40 = v61;
          *v61 = v39;
          _os_log_impl(&dword_1B9F07000, v26, v27, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v28, 0x2Au);
          sub_1B9F8C6C8(v40);
          MEMORY[0x1BFAF43A0](v40, -1, -1);
          v41 = v62;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v41, -1, -1);
          MEMORY[0x1BFAF43A0](v28, -1, -1);

          (*(v64 + 8))(v9, v3);
        }

        else
        {

          (*(v4 + 8))(v9, v3);
        }

        v22 = [v20 preferredFontDescriptorWithTextStyle_];
        v24 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];
      }
    }

    else if (v21)
    {
      v24 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
    }

    else
    {
      sub_1BA4A3DD8();
      v42 = v19;
      v43 = sub_1BA4A3E88();
      v44 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v67 = v62;
        *v45 = 136315906;
        v46 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v64 = v4;
        v48 = sub_1B9F0B82C(v46, v47, &v67);
        v63 = v42;
        v49 = v48;

        *(v45 + 4) = v49;
        *(v45 + 12) = 2080;
        v65 = 0;
        v66 = 1;
        sub_1B9F47F20(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v50 = sub_1BA4A6808();
        v52 = sub_1B9F0B82C(v50, v51, &v67);

        *(v45 + 14) = v52;
        *(v45 + 22) = 2080;
        LODWORD(v65) = 0;
        type metadata accessor for SymbolicTraits(0);
        v53 = sub_1BA4A6808();
        v55 = sub_1B9F0B82C(v53, v54, &v67);
        v42 = v63;

        *(v45 + 24) = v55;
        *(v45 + 32) = 2112;
        v56 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v45 + 34) = v56;
        v57 = v61;
        *v61 = v56;
        _os_log_impl(&dword_1B9F07000, v43, v44, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v45, 0x2Au);
        sub_1B9F8C6C8(v57);
        MEMORY[0x1BFAF43A0](v57, -1, -1);
        v58 = v62;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v58, -1, -1);
        MEMORY[0x1BFAF43A0](v45, -1, -1);

        (*(v64 + 8))(v6, v3);
      }

      else
      {

        (*(v4 + 8))(v6, v3);
      }

      v22 = [v20 preferredFontDescriptorWithTextStyle_];
      v24 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];
    }

    v59 = v24;

    [v15 setFont_];
  }
}

void sub_1BA246260()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton);
}

id sub_1BA2462A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingPendingProfileTileCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA246344()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 80);
  if (v6)
  {
    v7 = *(v0 + 80);
  }

  else
  {
    type metadata accessor for ProfileGradientsProviderFactory();
    swift_initStaticObject();
    (*(v3 + 16))(v5, v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_uuid, v2);
    v8 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    v9 = v8;
    if (*(v0 + 72))
    {
      [v8 setProfileIdentifier_];
    }

    [v9 resume];
    v10 = sub_1B9FE19E8(v5, v9);

    (*(v3 + 8))(v5, v2);
    v11 = *(v1 + 80);
    *(v1 + 80) = v10;
    v7 = v10;

    v6 = 0;
  }

  v12 = v6;
  return v7;
}

uint64_t sub_1BA2464D0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  sub_1BA05DB44(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_lastUpdatedDate);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_sharingEntryProfileInformation;
  v2 = sub_1BA4A33C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_uuid;
  v4 = sub_1BA4A1798();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_viewPendingInviteDelegate);
  return v0;
}

uint64_t sub_1BA2465CC()
{
  sub_1BA2464D0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummarySharingPendingProfileTileItem()
{
  result = qword_1EBBEF108;
  if (!qword_1EBBEF108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA246678()
{
  sub_1B9F47F20(319, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_1BA4A33C8();
    if (v1 <= 0x3F)
    {
      sub_1BA4A1798();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void *sub_1BA2467F0()
{
  v1 = *(*v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t sub_1BA246840@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_lastUpdatedDate;
  swift_beginAccess();
  return sub_1BA246A0C(v3 + v4, a1);
}

uint64_t sub_1BA24689C()
{
  type metadata accessor for SummarySharingPendingProfileTileCell();
  sub_1BA246A8C();
  return sub_1BA4A6808();
}

uint64_t sub_1BA2468EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA246984(uint64_t a1)
{
  result = sub_1BA2469C8(&qword_1EBBED550);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA2469C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SummarySharingPendingProfileTileItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA246A0C(uint64_t a1, uint64_t a2)
{
  sub_1B9F47F20(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA246A8C()
{
  result = qword_1EDC60D20;
  if (!qword_1EDC60D20)
  {
    type metadata accessor for SummarySharingPendingProfileTileCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC60D20);
  }

  return result;
}

uint64_t sub_1BA246AD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA246B38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA246B98(uint64_t a1)
{
  v2 = sub_1BA4A11C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC5E540);
  v6 = sub_1BA4A7068();
  v7 = sub_1BA4A33C8();
  v23[3] = v7;
  v23[4] = MEMORY[0x1E69A3410];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1, v7);
  v9 = sub_1BA4A7008();
  v10 = sub_1BA4A7038();
  v22 = v9;
  sub_1B9FE260C(v10);
  v11 = sub_1BA4A6FE8();

  __swift_destroy_boxed_opaque_existential_1(v23);
  if (v11)
  {
    v12 = sub_1BA4A79F8();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      sub_1BA4A7A18();
      LocalizedGeminiString(_:defaultValue:comment:options:)("SHARING_TOPICS_LABEL_%@", 23, 2, 0, 0xE000000000000000, "", 0, 2, v5);
      (*(v3 + 8))(v5, v2);
      sub_1B9F2EAC0();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1BA4B5480;
      v17 = sub_1BA4A2AE8();
      v19 = v18;
      *(v16 + 56) = MEMORY[0x1E69E6158];
      *(v16 + 64) = sub_1B9F1BE20();
      *(v16 + 32) = v17;
      *(v16 + 40) = v19;
      v20 = sub_1BA4A6768();

      return v20;
    }
  }

  if (qword_1EBBE8570 != -1)
  {
    swift_once();
  }

  v20 = qword_1EBBEF0E8;

  return v20;
}

void sub_1BA246E78(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0ADF8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

char *sub_1BA246EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v7 = v6;
  v52 = a5;
  v53 = a4;
  v55 = a3;
  v56 = a2;
  sub_1BA2474C0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F47F20(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v47 = &v45 - v13;
  v14 = sub_1BA4A1798();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *a6;
  *(v6 + 9) = 0;
  *(v6 + 10) = 0;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_lastUpdatedDate;
  v19 = sub_1BA4A1728();
  v46 = *(*(v19 - 8) + 56);
  v46(&v6[v18], 1, 1, v19);
  v6[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_disabledState] = 2;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_viewPendingInviteDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v57 = sub_1BA4A85D8();
  *(&v57 + 1) = v20;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A3358();
  v21 = sub_1BA4A1748();
  v23 = v22;
  v50 = v15;
  v51 = v14;
  (*(v15 + 8))(v17, v14);
  MEMORY[0x1BFAF1350](v21, v23);

  v24 = *(&v57 + 1);
  *(v6 + 2) = v57;
  *(v6 + 3) = v24;
  sub_1B9F0A534(v56, (v6 + 32));
  v25 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_sharingEntryProfileInformation;
  v26 = sub_1BA4A33C8();
  v27 = *(v26 - 8);
  v48 = *(v27 + 16);
  v48(&v7[v25], a1, v26);
  v28 = v47;
  v29 = v19;
  v30 = a1;
  v46(v47, 1, 1, v29);
  v31 = v49;
  v32 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_lastUpdatedDate;
  swift_beginAccess();
  sub_1B9F7B4F4(v28, &v7[v32]);
  swift_endAccess();
  sub_1BA4A32E8();
  sub_1BA246E78(0, &qword_1EBBEADE8, &qword_1EDC5E3D8, 0x1E696C338, MEMORY[0x1E696B370]);
  v34 = v33;
  v35 = *(v33 - 8);
  if ((*(v35 + 48))(v31, 1, v33) == 1)
  {
    sub_1BA246B38(v31, sub_1BA2474C0);
    v36 = 0;
  }

  else
  {
    v36 = sub_1BA4A65C8();
    (*(v35 + 8))(v31, v34);
  }

  v37 = *(v7 + 9);
  *(v7 + 9) = v36;

  sub_1BA4A3358();
  v38 = (*(v50 + 32))(&v7[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_uuid], v17, v51);
  v39 = MEMORY[0x1BFAEDD10](v38);
  v40 = &v7[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_accountIdentifier];
  *v40 = v39;
  v40[1] = v41;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_viewPendingInviteDelegate + 8] = v52;
  swift_unknownObjectWeakAssign();
  v58 = v26;
  v59 = MEMORY[0x1E69A3410];
  v60 = MEMORY[0x1E69A3418];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v57);
  v48(boxed_opaque_existential_1, v30, v26);
  sub_1B9F0ADF8(0, &qword_1EDC5E540);
  sub_1BA4A6FF8();
  v43 = sub_1BA4A7018();

  __swift_destroy_boxed_opaque_existential_1(&v57);
  sub_1BA4A3328();
  sub_1BA4A79E8();
  v58 = sub_1BA4A2FF8();
  v59 = MEMORY[0x1E69A3390];
  __swift_allocate_boxed_opaque_existential_1(&v57);
  sub_1BA4A2FE8();

  __swift_destroy_boxed_opaque_existential_1(v56);
  (*(v27 + 8))(v30, v26);
  sub_1B9F1134C(&v57, (v7 + 88));
  v7[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_disabledState] = v54;
  return v7;
}

void sub_1BA2474C0()
{
  if (!qword_1EBBEADE0)
  {
    sub_1BA246E78(255, &qword_1EBBEADE8, &qword_1EDC5E3D8, 0x1E696C338, MEMORY[0x1E696B370]);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEADE0);
    }
  }
}

uint64_t sub_1BA247544(void *a1, void *a2)
{
  v38 = a1;
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36 - v4;
  sub_1BA4A27B8();
  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v6 = sub_1BA4A1C68();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v40 = xmmword_1BA4B5480;
  *(v9 + 16) = xmmword_1BA4B5480;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x1E69A3B80], v6);
  v10 = sub_1BA4A0FA8();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v11 = swift_allocObject();
  *(v11 + 16) = v40;
  *(v11 + 32) = a2;
  *&v40 = a2;
  v12 = MEMORY[0x1BFAED020](v9, 0, v5, v11);

  sub_1B9F1C1B0(v5);
  sub_1BA4A1FE8();
  v13 = sub_1BA4A2628();

  sub_1B9F1C048(0, &qword_1EDC6B400);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B7510;
  *(v14 + 32) = v12;
  *(v14 + 40) = v13;
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v39 = v12;
  v37 = v13;
  v15 = sub_1BA4A6AE8();

  v16 = [objc_opt_self() andPredicateWithSubpredicates_];

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5470;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  swift_getKeyPath();
  *(v17 + 32) = sub_1BA4A71B8();
  v18 = v16;
  v19 = sub_1BA4A26C8();

  v20 = sub_1BA4A6AE8();

  [v19 setSortDescriptors_];

  [v19 setFetchLimit_];
  v21 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v22 = v38;
  v23 = [v21 initWithFetchRequest:v19 managedObjectContext:? sectionNameKeyPath:? cacheName:?];
  if (qword_1EDC6D410 != -1)
  {
    swift_once();
  }

  v49[4] = xmmword_1EDC6D458;
  v49[5] = *&qword_1EDC6D468;
  v49[6] = xmmword_1EDC6D478;
  v49[7] = xmmword_1EDC6D488;
  v49[0] = xmmword_1EDC6D418;
  v49[1] = *&qword_1EDC6D428;
  v49[2] = xmmword_1EDC6D438;
  v49[3] = xmmword_1EDC6D448;
  v48 = qword_1EDC6D428;
  v47 = xmmword_1EDC6D418;
  v24 = unk_1EDC6D430;
  v26 = xmmword_1EDC6D438;
  v25 = xmmword_1EDC6D448;
  v46 = qword_1EDC6D470;
  v44 = *(&xmmword_1EDC6D448 + 8);
  v45 = *(&xmmword_1EDC6D458 + 8);
  v43 = *(&xmmword_1EDC6D488 + 1);
  v42 = *(&xmmword_1EDC6D478 + 8);
  sub_1B9F1D9A4(v49, &v53);
  sub_1B9F1DA18(v24, v26, *(&v26 + 1), v25);
  v50 = v47;
  *(&v51[2] + 8) = v44;
  *(v51 + 8) = 0u;
  *(&v51[1] + 8) = 0u;
  *(&v51[3] + 8) = v45;
  *&v51[0] = v48;
  *(&v51[4] + 1) = v46;
  *&v52[0] = 0x4034000000000000;
  *(&v52[1] + 1) = v43;
  *(v52 + 8) = v42;
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  *&v54[48] = v51[3];
  *&v54[64] = v51[4];
  *v55 = v52[0];
  *&v55[16] = v52[1];
  v53 = v50;
  *v54 = v51[0];
  *&v54[16] = v51[1];
  *&v54[32] = v51[2];
  v27 = v23;
  sub_1B9F1D9A4(&v50, &v41);
  v28 = sub_1B9F293A8(&v53);
  sub_1BA0649AC();
  v30 = objc_allocWithZone(v29);
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  v32 = &v30[qword_1EDC61AF0];
  *v32 = sub_1BA064A10;
  v32[1] = v31;
  v33 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v27);
  v34 = sub_1BA0488BC(v33, 1);

  v53 = v47;
  memset(&v54[8], 0, 32);
  *&v54[40] = v44;
  *&v54[56] = v45;
  *v54 = v48;
  *&v54[72] = v46;
  *v55 = 0x4034000000000000;
  *&v55[24] = v43;
  *&v55[8] = v42;
  sub_1B9F1DA58(&v53);
  return v34;
}

void sub_1BA247BC0(id *a1)
{
  v1 = [*a1 dateSubmitted];
  sub_1BA4A16F8();
}

uint64_t type metadata accessor for PluginVersionMismatchAlertDataSource()
{
  result = qword_1EBBEF120;
  if (!qword_1EBBEF120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA247C78()
{

  sub_1BA061448(v0 + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_action);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CloudSyncDataSourceItem()
{
  result = qword_1EBBEF130;
  if (!qword_1EBBEF130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA247D70()
{
  sub_1BA06138C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_1BA247E24()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0xD000000000000018;
  v22 = 0x80000001BA4F6A00;
  sub_1BA4A1788();
  sub_1BA2482DC(&qword_1EDC6AE60, MEMORY[0x1E69695A8]);
  v6 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v6);

  (*(v3 + 8))(v5, v2);
  v7 = v22;
  v0[2] = v21;
  v0[3] = v7;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_action;
  v9 = type metadata accessor for CloudSyncAction(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_animateCloudSync) = 2;
  v10 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_reuseIdentifier);
  v21 = type metadata accessor for CloudSyncCollectionViewCell();
  sub_1BA248324();
  *v10 = sub_1BA4A6808();
  v10[1] = v11;
  sub_1B9F25350();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5460;
  *(v12 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v12 + 40) = v13;
  *(v12 + 48) = 0x6E795364756F6C43;
  *(v12 + 56) = 0xEF73757461745363;
  v14 = sub_1BA4A6AE8();

  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (v15)
  {
    v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_baseIdentifier);
  *v19 = v16;
  v19[1] = v18;
  return v1;
}

uint64_t sub_1BA2480CC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_reuseIdentifier);

  return v1;
}

uint64_t sub_1BA24810C()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA248168(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1BA248230(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA2482DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BA248324()
{
  result = qword_1EBBE9DA8;
  if (!qword_1EBBE9DA8)
  {
    type metadata accessor for CloudSyncCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9DA8);
  }

  return result;
}

uint64_t sub_1BA248374(uint64_t a1)
{
  v2 = sub_1BA2486AC();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void sub_1BA2483C0(uint64_t a1@<X8>)
{
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0xD000000000000023;
  v23 = 0x80000001BA4F6A20;
  sub_1BA4A1788();
  sub_1B9FD9EDC();
  v6 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v6);

  (*(v3 + 8))(v5, v2);
  v7 = v22;
  v8 = v23;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v9 = sub_1BA4A1318();
  v11 = v10;
  v22 = type metadata accessor for CollectionViewListDisclosureCell();
  sub_1BA16A6B4();
  v12 = sub_1BA4A6808();
  v14 = v13;
  sub_1B9F25350();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5460;
  *(v15 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v15 + 40) = v16;
  *(v15 + 48) = 0xD000000000000018;
  *(v15 + 56) = 0x80000001BA4F6A90;
  v17 = sub_1BA4A6AE8();

  v18 = HKUIJoinStringsForAutomationIdentifier();

  if (v18)
  {
    v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = v12;
  *(a1 + 64) = v14;
  *(a1 + 72) = v19;
  *(a1 + 80) = v21;
}

unint64_t sub_1BA248684(uint64_t a1)
{
  result = sub_1BA2486AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA2486AC()
{
  result = qword_1EBBEF140;
  if (!qword_1EBBEF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF140);
  }

  return result;
}

unint64_t sub_1BA248704()
{
  result = qword_1EBBEF148;
  if (!qword_1EBBEF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF148);
  }

  return result;
}

void sub_1BA248758(void *a1)
{
  UIViewController.resolvedHealthExperienceStore.getter(v7);
  sub_1B9F0A534(v7, v6);
  v2 = objc_allocWithZone(type metadata accessor for NotificationSettingsViewController());
  v3 = NotificationSettingsViewController.init(healthExperienceStore:)(v6);
  v4 = [a1 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 pushViewController:v3 animated:1];

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }
}

void __swiftcall MultiselectItem.init(title:subtitle:accessibilityIdentifierPrefix:state:identifier:)(HealthExperienceUI::MultiselectItem *__return_ptr retstr, Swift::String title, Swift::String subtitle, Swift::String_optional accessibilityIdentifierPrefix, Swift::Bool state, Swift::String identifier)
{
  countAndFlagsBits = identifier._countAndFlagsBits;
  object = accessibilityIdentifierPrefix.value._object;
  v9 = accessibilityIdentifierPrefix.value._countAndFlagsBits;
  v15 = title._object;
  v10 = title._countAndFlagsBits;
  v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v18 = v12;

  MEMORY[0x1BFAF1350](46, 0xE100000000000000);

  if (!object)
  {
    v9 = 0x6C657369746C754DLL;
    object = 0xEF6D657449746365;
  }

  MEMORY[0x1BFAF1350](v9, object);

  if (state)
  {
    v13 = 0x44455443454C4553;
  }

  else
  {
    v13 = 0x5443454C45534E55;
  }

  if (state)
  {
    v14 = 0xE800000000000000;
  }

  else
  {
    v14 = 0xEA00000000004445;
  }

  MEMORY[0x1BFAF1350](v13, v14);

  retstr->uniqueIdentifier._countAndFlagsBits = countAndFlagsBits;
  retstr->uniqueIdentifier._object = identifier._object;
  retstr->title._countAndFlagsBits = v10;
  retstr->title._object = v15;
  retstr->subtitle = subtitle;
  retstr->baseIdentifier.value._countAndFlagsBits = v17;
  retstr->baseIdentifier.value._object = v18;
  retstr->state = state;
}

uint64_t MultiselectItem.reuseIdentifier.getter()
{
  type metadata accessor for MultiselectTableViewCell();
  sub_1BA2489D0();
  return sub_1BA4A6808();
}

unint64_t sub_1BA2489D0()
{
  result = qword_1EBBE9720;
  if (!qword_1EBBE9720)
  {
    type metadata accessor for MultiselectTableViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9720);
  }

  return result;
}

uint64_t MultiselectItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MultiselectItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MultiselectItem.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MultiselectItem.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MultiselectItem.baseIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t MultiselectItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

unint64_t sub_1BA248B94()
{
  result = qword_1EBBEF150[0];
  if (!qword_1EBBEF150[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBBEF150);
  }

  return result;
}

uint64_t sub_1BA248BE8()
{
  type metadata accessor for MultiselectTableViewCell();
  sub_1BA2489D0();
  return sub_1BA4A6808();
}

uint64_t sub_1BA248C24(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_1BA248C5C(uint64_t a1)
{
  v2 = sub_1BA120A24();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA248CA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA248CF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA248D80()
{
  v1 = *v0;
  v2 = 96;
  if (*(v0 + 40))
  {
    v2 = 104;
  }

  v3 = *(v1 + v2);
  if (*(v0 + 40))
  {
    v4 = 88;
  }

  else
  {
    v4 = 80;
  }

  v5 = *(v3 + 40);
  v6 = *(v1 + v4);
  swift_unknownObjectRetain();
  v7 = v5(v6, v3);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t _ConditionalDataSource.identifier.getter()
{
  v0 = sub_1B9F25DF0();

  return v0;
}

uint64_t _ConditionalDataSource.storage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  return swift_unknownObjectRetain();
}

uint64_t _ConditionalDataSource.__allocating_init(storage:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  _ConditionalDataSource.init(storage:)(a1);
  return v2;
}

uint64_t _ConditionalDataSource.init(storage:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = type metadata accessor for _ConditionalDataSource.Storage();
  v6 = 32;
  if (v4)
  {
    v6 = 40;
  }

  v7 = *(v5 + v6);
  if (v4)
  {
    v8 = 24;
  }

  else
  {
    v8 = 16;
  }

  *(v2 + 16) = (*(v7 + 8))(*(v5 + v8));
  *(v2 + 24) = v9;
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  return v2;
}

uint64_t _ConditionalDataSource.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t _ConditionalDataSource.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall _ConditionalDataSource.isReorderable()()
{
  v1 = 96;
  if (*(v0 + 40))
  {
    v1 = 104;
  }

  v2 = *(*v0 + v1);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 32);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t _ConditionalDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v10 = *v5;
  v11 = sub_1BA4A3EA8();
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 96;
  if (*(v5 + 40))
  {
    v14 = 104;
  }

  v15 = *(v10 + v14);
  v41 = v5[4];
  v42 = v15;
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1B9F0D9AC(0, qword_1EDC648F8);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v39, v43);
    v16 = v44;
    v17 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    (*(v17 + 8))(a1, a2, a3, v16, v17);
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    sub_1BA1EAFD0(v39);
    sub_1BA4A3D88();
    swift_retain_n();
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v39[0] = v36;
      *v21 = 136315650;
      v22 = sub_1BA4A85D8();
      v24 = sub_1B9F0B82C(v22, v23, v39);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      v25 = 104;
      if (!*(v5 + 40))
      {
        v25 = 96;
      }

      v26 = *(*v5 + v25);
      v43[0] = v5[4];
      v43[1] = v26;
      swift_unknownObjectRetain();
      v27 = sub_1BA4A6808();
      v29 = sub_1B9F0B82C(v27, v28, v39);

      *(v21 + 14) = v29;
      *(v21 + 22) = 2080;
      v30 = _ConditionalDataSource.description.getter();
      v32 = v31;

      v33 = sub_1B9F0B82C(v30, v32, v39);

      *(v21 + 24) = v33;
      _os_log_impl(&dword_1B9F07000, v19, v20, "%s asked for a supplementaryItem, but currentDataSource=%s does not conform to SupplementaryItemDataSource. %s", v21, 0x20u);
      v34 = v36;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    else
    {
    }

    (*(v37 + 8))(v13, v38);
    a4[3] = &type metadata for FallbackHeaderItem;
    a4[4] = sub_1BA1BA0F8();
    *a4 = swift_allocObject();
    return FallbackHeaderItem.init()();
  }
}

uint64_t _ConditionalDataSource.description.getter()
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000018, 0x80000001BA4F6AB0);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](0x203A676E69737520, 0xE800000000000000);
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1BA4A7FB8();
  return 0;
}

Swift::Bool __swiftcall _ConditionalDataSource.isReorderableItem(identifier:)(Swift::String identifier)
{
  v2 = v1;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v5 = *v2;
  v6 = v2[4];
  v7 = *(v2 + 40) == 0;
  v8 = 96;
  if (!v7)
  {
    v8 = 104;
  }

  v9 = *(v5 + v8);
  v15 = v6;
  v16 = v9;
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1BA10CBC8();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v14, v17);
    v10 = v18;
    v11 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    *&v14[0] = countAndFlagsBits;
    *(&v14[0] + 1) = object;
    v12 = (*(v11 + 40))(v14, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t _ConditionalDataSource.canMoveItem(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = v3[4];
  v8 = *(v3 + 40) == 0;
  v9 = 96;
  if (!v8)
  {
    v9 = 104;
  }

  v10 = *(v6 + v9);
  v16 = v7;
  v17 = v10;
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1BA10CBC8();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(&v15, v18);
    v11 = v19;
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = (*(v12 + 56))(a1, a2, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

Swift::Void __swiftcall _ConditionalDataSource.applyReorder(sectionTransactions:)(Swift::OpaquePointer sectionTransactions)
{
  v3 = 96;
  if (*(v1 + 40))
  {
    v3 = 104;
  }

  v4 = *(*v1 + v3);
  v8 = *(v1 + 32);
  v9 = v4;
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1BA10CBC8();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(&v7, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v6 + 48))(sectionTransactions._rawValue, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }
}

uint64_t sub_1BA249B2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BA249B74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BA249BBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void static ProfileDeepLinkRouter.openMedicalID(presentingViewController:)(void *a1)
{
  v2 = UIViewController.resolvedHealthStore.getter();
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  }

  v3 = v2;
  sub_1BA4A22B8();
  v4 = v3;
  v5 = sub_1BA4A22A8();
  v6 = objc_allocWithZone(type metadata accessor for ProfileViewController());
  swift_retain_n();
  v7 = v4;
  v8 = sub_1BA249DB8(v7, v5, v6);

  v10 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v9 = [v10 navigationBar];
  [v9 setPrefersLargeTitles_];

  v11 = xmmword_1BA4C92B0;
  v12 = 2;
  ProfileViewController.handleRestoration(restorationType:)(&v11);

  [a1 presentViewController:v10 animated:0 completion:0];
}

id sub_1BA249DB8(void *a1, uint64_t a2, char *a3)
{
  v13[3] = sub_1BA4A22B8();
  v13[4] = MEMORY[0x1E69A3CF8];
  v13[0] = a2;
  v6 = &a3[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_restorationRowToLoad];
  v6[16] = -1;
  *v6 = 0;
  *(v6 + 1) = 0;
  *&a3[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView] = 0;
  *&a3[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_providedHealthStore] = a1;
  sub_1B9F0A534(v13, &a3[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_pinnedContentManager]);
  v7 = objc_allocWithZone(MEMORY[0x1E69DC840]);
  v8 = a1;
  v9 = [v7 init];
  v12.receiver = a3;
  v12.super_class = type metadata accessor for ProfileViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithCollectionViewLayout_, v9);

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

void _s18HealthExperienceUI21ProfileDeepLinkRouterV07restoreD8Activity04userI024presentingViewControllerySo06NSUserI0C_So06UIViewM0CtFZ_0(uint64_t a1, void *a2)
{
  v4 = UIViewController.resolvedHealthStore.getter();
  if (!v4)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  }

  v5 = v4;
  sub_1BA4A22B8();
  v6 = v5;
  v7 = sub_1BA4A22A8();
  v8 = objc_allocWithZone(type metadata accessor for ProfileViewController());
  v9 = v6;

  v10 = sub_1BA249DB8(v9, v7, v8);

  v12 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v11 = [v12 navigationBar];
  [v11 setPrefersLargeTitles_];

  [v12 restoreUserActivityState_];
  [a2 presentViewController:v12 animated:0 completion:0];
}

void _s18HealthExperienceUI21ProfileDeepLinkRouterV7openURL24presentingViewController7urlTypeySo06UIViewL0C_0A11AppServices7URLTypeOtFZ_0(void *a1, uint64_t a2)
{
  v4 = sub_1BA4A3898();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = UIViewController.resolvedHealthStore.getter();
  if (!v8)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  }

  v9 = v8;
  (*(v5 + 16))(v7, a2, v4);
  v10 = (*(v5 + 88))(v7, v4);
  if (v10 == *MEMORY[0x1E69A2CB8])
  {
    v11 = 0;
LABEL_7:
    sub_1BA4A22B8();
    v12 = v9;
    v13 = sub_1BA4A22A8();
    v14 = objc_allocWithZone(type metadata accessor for ProfileViewController());
    swift_retain_n();
    v15 = v12;
    v16 = sub_1BA249DB8(v15, v13, v14);

    v17 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
    v18 = [v17 navigationBar];
    [v18 setPrefersLargeTitles_];

    v20 = v11;
    v21 = 0;
    v22 = 2;
    ProfileViewController.handleRestoration(restorationType:)(&v20);

    sub_1BA24A460(v20, v21, v22);
    [a1 dismissViewControllerAnimated:0 completion:0];
    [a1 presentViewController:v17 animated:0 completion:0];

    return;
  }

  if (v10 == *MEMORY[0x1E69A2D38])
  {
    v11 = 1;
    goto LABEL_7;
  }

  (*(v5 + 8))(v7, v4);
}

void sub_1BA24A2B0(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = UIViewController.resolvedHealthStore.getter();
  if (!v8)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  }

  v9 = v8;
  sub_1BA4A22B8();
  v10 = v9;
  v11 = sub_1BA4A22A8();
  v12 = objc_allocWithZone(type metadata accessor for ProfileViewController());
  swift_retain_n();
  v13 = v10;
  v14 = sub_1BA249DB8(v13, v11, v12);

  v16 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v15 = [v16 navigationBar];
  [v15 setPrefersLargeTitles_];

  v17 = a2;
  v18 = a3;
  v19 = a4;

  ProfileViewController.handleRestoration(restorationType:)(&v17);

  sub_1BA24A460(v17, v18, v19);
  [a1 dismissViewControllerAnimated:0 completion:0];
  [a1 presentViewController:v16 animated:0 completion:0];
}

uint64_t sub_1BA24A460(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1BA24A478(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  sub_1B9F39554(0, v4, 0);
  v5 = v15;
  for (i = a3 + 32; ; i += 40)
  {
    a1(&v14, i);
    if (v3)
    {
      break;
    }

    v9 = v14;
    v15 = v5;
    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    if (v11 >= v10 >> 1)
    {
      v13 = v14;
      sub_1B9F39554((v10 > 1), v11 + 1, 1);
      v9 = v13;
      v5 = v15;
    }

    *(v5 + 16) = v11 + 1;
    *(v5 + 16 * v11 + 32) = v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA24A584(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1BA4A7F08();
    v9 = (a3 + 32);
    while (1)
    {
      v10 = *v9++;
      v11 = v10;
      a1(&v12, &v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BA24A670(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1BA4A7F08();
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v11[0] = *(i - 1);
      v11[1] = v10;

      a1(&v12, v11);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BA24A778(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x1E69E7CC0];
  sub_1BA066DC0(0, v5, 0);
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
      sub_1BA066DC0((v11 > 1), v12 + 1, 1);
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

uint64_t sub_1BA24A8A4(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1BA4A7F08();
    for (i = (a3 + 32); ; ++i)
    {
      v11 = *i;
      v10 = v11;

      a1(&v12, &v11);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BA24A9C8(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v16 = MEMORY[0x1E69E7CC0];
  sub_1BA066F50(0, v4, 0);
  v5 = v16;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v14 = v9;
    a1(&v15, &v14);
    if (v3)
    {
      break;
    }

    v10 = v15;
    v16 = v5;
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1BA066F50((v11 > 1), v12 + 1, 1);
      v5 = v16;
    }

    *(v5 + 16) = v12 + 1;
    *(v5 + 8 * v12 + 32) = v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA24AAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24[0] = a1;
  v24[1] = a2;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v42 = MEMORY[0x1E69E7CC0];
  sub_1BA066BEC(0, v5, 0);
  v6 = v42;
  v8 = (a3 + 32);
  for (i = v5 - 1; ; --i)
  {
    v10 = v8[1];
    v11 = v8[3];
    v39 = v8[2];
    v40 = v11;
    v12 = v8[3];
    v41 = v8[4];
    v13 = v8[1];
    v38[0] = *v8;
    v38[1] = v13;
    v32 = v39;
    v33 = v12;
    v34 = v8[4];
    v30 = v38[0];
    v31 = v10;
    sub_1B9FF3650(v38, &v25);
    (v24[0])(v35, &v30);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v27 = v32;
    v28 = v33;
    v29 = v34;
    v25 = v30;
    v26 = v31;
    sub_1B9FF3768(&v25);
    v42 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1BA066BEC((v14 > 1), v15 + 1, 1);
    }

    v16 = v36;
    v17 = v37;
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
    v19 = MEMORY[0x1EEE9AC00](v18);
    v21 = v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v21, v19);
    sub_1BA1F2854(v15, v21, &v42, v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v6 = v42;
    if (!i)
    {
      return v6;
    }

    v8 += 5;
  }

  v27 = v32;
  v28 = v33;
  v29 = v34;
  v25 = v30;
  v26 = v31;
  sub_1B9FF3768(&v25);

  __break(1u);
  return result;
}

uint64_t sub_1BA24AD10(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1B9F39554(0, v5, 0);
  v6 = v19;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v17[0] = *(i - 1);
    v17[1] = v10;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v12 = v18[0];
    v11 = v18[1];
    v19 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1B9F39554((v13 > 1), v14 + 1, 1);
    }

    ObjectType = swift_getObjectType();
    sub_1B9F38934(v14, v12, &v19, ObjectType, v11);
    v6 = v19;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t OnboardingConfirmDetailsDataSource.init(sections:detailsFormatter:detailsProvider:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_1BA24D9CC(a1, v12, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

uint64_t OnboardingConfirmDetailsDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1BA24EB64(v0 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate);

  return v0;
}

uint64_t sub_1BA24B0A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  return sub_1BA24EBC0(v3 + v4, a1, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
}

uint64_t sub_1BA24B12C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();

  sub_1BA24EC2C(a1, v3 + v4, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  swift_endAccess();
}

void (*sub_1BA24B1C8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1BA24F0CC(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model;
  v5[11] = v8;
  v5[12] = v10;
  v11 = *(v1 + v10);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA24EBC0(v11 + v12, v9, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  return sub_1BA24B308;
}

void sub_1BA24B308(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  v6 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  if (a2)
  {
    sub_1BA24EBC0(*(*a1 + 88), v5, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
    v7 = *(v6 + v4);
    v8 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
    swift_beginAccess();

    sub_1BA24EC2C(v5, v7 + v8, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
    swift_endAccess();

    sub_1BA24EB64(v3, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  }

  else
  {
    v9 = *(v6 + v4);
    v10 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
    swift_beginAccess();

    sub_1BA24EC2C(v3, v9 + v10, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
    swift_endAccess();
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_1BA24B4C0(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

void (*sub_1BA24B538(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model;
  *(v3 + 80) = v1;
  *(v3 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1BA24B5E4;
}

void sub_1BA24B5E4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*(*a1 + 80) + *(*a1 + 88));
  v5 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues;
  if (a2)
  {
    swift_beginAccess();
    *(v4 + v5) = v3;
  }

  else
  {
    swift_beginAccess();
    *(v4 + v5) = v3;
  }

  free(v2);
}

uint64_t sub_1BA24B698@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath;
  swift_beginAccess();
  return sub_1BA24EBC0(v1 + v3, a1, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
}

uint64_t sub_1BA24B70C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath;
  swift_beginAccess();
  sub_1BA24EC2C(a1, v1 + v3, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
  return swift_endAccess();
}

uint64_t sub_1BA24B838(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA24B8A4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}