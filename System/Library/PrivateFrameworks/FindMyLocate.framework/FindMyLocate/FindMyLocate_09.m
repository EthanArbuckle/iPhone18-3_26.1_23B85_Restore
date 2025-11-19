uint64_t FriendshipExpiration.description.getter()
{
  v1 = 0x796144664F646E65;
  if (*v0 != 1)
  {
    v1 = 0x72657665726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756F48656E6FLL;
  }
}

FindMyLocate::FriendshipExpiration_optional __swiftcall FriendshipExpiration.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B808E518()
{
  result = qword_1EBA67078;
  if (!qword_1EBA67078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67078);
  }

  return result;
}

uint64_t sub_1B808E574()
{
  v1 = 0x796144664F646E65;
  if (*v0 != 1)
  {
    v1 = 0x72657665726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756F48656E6FLL;
  }
}

uint64_t sub_1B808E5E4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1B80C916C();
  }

  else
  {
    return 0;
  }
}

uint64_t static Handle.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_1B80C90FC();
  v8 = v7;
  if (v6 == sub_1B80C90FC() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B80C981C();
  }

  return v11 & 1;
}

double Handle.init(with:prettyName:contactIdentifier:siblingIdentifiers:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a5;
  v52 = a4;
  v51 = a2;
  v11 = sub_1B80C8E2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[9];
  v61 = a1[8];
  v62 = v16;
  v63 = a1[10];
  v17 = a1[5];
  v57 = a1[4];
  v58 = v17;
  v18 = a1[7];
  v59 = a1[6];
  v60 = v18;
  v19 = a1[1];
  v55[0] = *a1;
  v55[1] = v19;
  v20 = a1[3];
  v55[2] = a1[2];
  v56 = v20;
  sub_1B7FCEC00(*&v55[0], *(&v55[0] + 1));
  v50 = sub_1B80C90FC();
  v22 = v21;

  v23 = *(&v63 + 1);
  v24 = v63;
  v25 = *(&v56 + 1);

  v49 = v25;

  sub_1B80C8E1C();
  sub_1B80C8DDC();
  v27 = v26;
  (*(v12 + 8))(v15, v11);
  v28 = v60;

  sub_1B7FCAD28(v55);
  v29 = *(a6 + 16);
  if (v29)
  {
    v45 = v24;
    v46 = v23;
    v48 = a3;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1B7FCF988(0, v29, 0);
    v30 = v54;
    v47 = a6;
    v31 = (a6 + 40);
    do
    {
      v32 = *(v31 - 1);
      v33 = *v31;
      v34 = sub_1B80C90FC();
      v36 = v35;
      v54 = v30;
      v38 = *(v30 + 16);
      v37 = *(v30 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1B7FCF988((v37 > 1), v38 + 1, 1);
        v30 = v54;
      }

      *(v30 + 16) = v38 + 1;
      v39 = v30 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
      v31 += 2;
      --v29;
    }

    while (v29);

    v40 = v53;
    v41 = v52;
    a3 = v48;
    v23 = v46;
    v24 = v45;
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
    v40 = v53;
    v41 = v52;
  }

  v42 = v50;
  *a7 = v50;
  *(a7 + 8) = v22;
  *(a7 + 16) = v42;
  *(a7 + 24) = v22;
  *(a7 + 32) = 0;
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 56) = v49;
  *(a7 + 64) = floor(v27 * 1000.0);
  result = 0.0;
  *(a7 + 72) = 0u;
  *(a7 + 88) = 0u;
  *(a7 + 104) = 1;
  v44 = v51;
  *(a7 + 112) = v28;
  *(a7 + 120) = v44;
  *(a7 + 128) = a3;
  *(a7 + 136) = v41;
  *(a7 + 144) = v40;
  *(a7 + 152) = v30;
  *(a7 + 160) = v24;
  *(a7 + 168) = v23;
  return result;
}

uint64_t HandleType.description.getter()
{
  v1 = *v0;
  v2 = 0x65776F6C6C6F662ELL;
  v3 = 0x466572757475662ELL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x676E69646E65702ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69776F6C6C6F662ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B808EACC()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1 - 1);
  return sub_1B80C997C();
}

uint64_t sub_1B808EB44()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1 - 1);
  return sub_1B80C997C();
}

uint64_t sub_1B808EBE8(uint64_t a1)
{
  v2 = sub_1B7FD1604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808EC24(uint64_t a1)
{
  v2 = sub_1B7FD1604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B808EC60(uint64_t a1)
{
  v2 = sub_1B7FD121C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808EC9C(uint64_t a1)
{
  v2 = sub_1B7FD121C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B808ECD8(uint64_t a1)
{
  v2 = sub_1B7FD1270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808ED14(uint64_t a1)
{
  v2 = sub_1B7FD1270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B808ED50(uint64_t a1)
{
  v2 = sub_1B80931E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808ED8C(uint64_t a1)
{
  v2 = sub_1B80931E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B808EDC8(uint64_t a1)
{
  v2 = sub_1B8093190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808EE04(uint64_t a1)
{
  v2 = sub_1B8093190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B808EE40(uint64_t a1)
{
  v2 = sub_1B809313C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808EE7C(uint64_t a1)
{
  v2 = sub_1B809313C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HandleType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67080, &qword_1B80D9FE0);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67088, &qword_1B80D9FE8);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67090, &qword_1B80D9FF0);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67098, &qword_1B80D9FF8);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670A0, &qword_1B80DA000);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670A8, &qword_1B80DA008);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_1B7FD1604();
  sub_1B80C99DC();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_1B7FD1270();
      v38 = v52;
      sub_1B80C974C();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_1B7FD121C();
      v38 = v52;
      sub_1B80C974C();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_1B80931E4();
      v29 = v40;
      v30 = v52;
      sub_1B80C974C();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_1B8093190();
      v29 = v43;
      v30 = v52;
      sub_1B80C974C();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_1B809313C();
      v29 = v46;
      v30 = v52;
      sub_1B80C974C();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

uint64_t HandleType.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t Handle.qualifiedIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Handle.dsid.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t Handle.hashedDSID.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t Handle.favoriteOrder.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t Handle.prettyName.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t Handle.contactIdentifier.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t Handle.serverIdentifier.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

__n128 Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)(a1, a2, a3, a4, a5, a6, a7, 0, v14, 0);
  v9 = v14[9];
  *(a8 + 128) = v14[8];
  *(a8 + 144) = v9;
  *(a8 + 160) = v14[10];
  v10 = v14[5];
  *(a8 + 64) = v14[4];
  *(a8 + 80) = v10;
  v11 = v14[7];
  *(a8 + 96) = v14[6];
  *(a8 + 112) = v11;
  v12 = v14[1];
  *a8 = v14[0];
  *(a8 + 16) = v12;
  result = v14[3];
  *(a8 + 32) = v14[2];
  *(a8 + 48) = result;
  return result;
}

uint64_t Handle.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B80C90FC();
  sub_1B80C911C();
}

uint64_t sub_1B808F6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8093D3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B808F6E4(uint64_t a1)
{
  v2 = sub_1B7FCAE90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808F720(uint64_t a1)
{
  v2 = sub_1B7FCAE90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Handle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670F8, &qword_1B80DA050);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v47 = v1[3];
  v48 = v10;
  v46 = *(v1 + 32);
  v11 = v1[5];
  v44 = v1[6];
  v45 = v11;
  v12 = v1[7];
  v13 = v1[8];
  v14 = v1[10];
  v42 = v1[9];
  v43 = v12;
  v15 = v1[12];
  v39 = v1[11];
  v40 = v15;
  v41 = v14;
  v38 = *(v1 + 104);
  v16 = v1[14];
  v17 = v1[15];
  v18 = v1[17];
  v36 = v1[16];
  v37 = v16;
  v33 = v18;
  v19 = v1[19];
  v34 = v1[18];
  v35 = v17;
  v20 = v1[21];
  v31 = v1[20];
  v32 = v19;
  v21 = a1[3];
  v22 = a1[4];
  v23 = a1;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1(v23, v21);
  sub_1B7FCAE90();
  sub_1B80C99DC();
  LOBYTE(v50) = 0;
  v26 = v49;
  sub_1B80C978C();
  if (v26)
  {
    return (*(v4 + 8))(v7, v25);
  }

  v27 = v46;
  v28 = v43;
  v49 = v20;
  LOBYTE(v50) = 1;
  sub_1B80C975C();
  LOBYTE(v50) = v27;
  v51 = 2;
  sub_1B8093238();
  sub_1B80C977C();
  v48 = v4;
  LOBYTE(v50) = 3;
  sub_1B80C975C();
  v50 = v28;
  v51 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67100, &unk_1B80DA058);
  sub_1B809328C();
  sub_1B80C97DC();
  LOBYTE(v50) = 5;
  sub_1B80C97AC();
  LOBYTE(v50) = 6;
  sub_1B80C975C();
  LOBYTE(v50) = 7;
  sub_1B80C975C();
  LOBYTE(v50) = 8;
  sub_1B80C976C();
  v50 = v37;
  v51 = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
  sub_1B7FCA738(&qword_1ED8DBBF8);
  v47 = v7;
  sub_1B80C977C();
  LOBYTE(v50) = 10;
  sub_1B80C975C();
  LOBYTE(v50) = 11;
  sub_1B80C975C();
  v50 = v32;
  v51 = 12;
  sub_1B80C97DC();
  LOBYTE(v50) = 13;
  v29 = v47;
  sub_1B80C975C();
  return (*(v4 + 8))(v29, v25);
}

uint64_t Handle.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B80C993C();
  sub_1B80C90FC();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B808FC7C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B80C993C();
  sub_1B80C90FC();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B808FCE4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B80C90FC();
  sub_1B80C911C();
}

uint64_t sub_1B808FD38()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1EBA7ACB0);
  __swift_project_value_buffer(v0, qword_1EBA7ACB0);
  return sub_1B80C8FFC();
}

uint64_t PersonHandle.email.getter()
{
  v1 = *v0;
  v3 = v0[1];
  sub_1B7FB6CB8();
  if ((sub_1B80C949C() & 1) == 0)
  {
    return 0;
  }

  return v1;
}

uint64_t PersonHandle.phoneNumber.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if ((_s12FindMyLocate6HandleV13isPhoneNumberySbSSFZ_0() & 1) == 0)
  {
    return 0;
  }

  return v1;
}

uint64_t static PersonHandle.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B80C981C();
  }
}

uint64_t sub_1B808FECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B80C981C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B808FF4C(uint64_t a1)
{
  v2 = sub_1B80933F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808FF88(uint64_t a1)
{
  v2 = sub_1B80933F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonHandle.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1B80C911C();
}

uint64_t PersonHandle.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B80C993C();
  sub_1B80C911C();
  return sub_1B80C997C();
}

uint64_t sub_1B8090018()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B80C993C();
  sub_1B80C911C();
  return sub_1B80C997C();
}

uint64_t sub_1B8090064()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1B80C911C();
}

uint64_t sub_1B809006C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B80C993C();
  sub_1B80C911C();
  return sub_1B80C997C();
}

uint64_t sub_1B80900B4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B80C981C();
  }
}

uint64_t PersonHandle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67110, &qword_1B80DA070);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80933F0();
  sub_1B80C99DC();
  sub_1B80C978C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t PersonHandle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67120, &qword_1B80DA078);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80933F0();
  sub_1B80C99BC();
  if (!v2)
  {
    v11 = sub_1B80C96DC();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1B80903AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67110, &qword_1B80DA070);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80933F0();
  sub_1B80C99DC();
  sub_1B80C978C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t static PersonHandle.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1B80C981C();
  }
}

uint64_t sub_1B8090518(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1B80C981C();
  }
}

uint64_t sub_1B8090548(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1B80C981C() ^ 1) & 1;
  }
}

uint64_t sub_1B8090590(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_1B80C981C() ^ 1) & 1;
  }
}

uint64_t sub_1B80905E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1B80C981C();
  }
}

uint64_t PersonHandle.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1B8090638()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1B8090668(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67180, &unk_1B80DACA0);
  v44 = a2;
  result = sub_1B80C965C();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1B80148D0(v31, v45, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
      }

      else
      {
        sub_1B80941CC(v31, v45, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
      }

      v32 = *(v12 + 40);
      sub_1B80C993C();
      sub_1B80C911C();
      result = sub_1B80C997C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1B80148D0(v45, *(v12 + 56) + v30 * v20, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1B80909E0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Location();
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v81 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660F0, &unk_1B80DAC60);
  v64 = a2;
  result = sub_1B80C965C();
  v12 = result;
  if (*(v9 + 16))
  {
    v61 = v3;
    v62 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v28 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v31 = v28 | (v13 << 6);
      if (v64)
      {
        v32 = *(v9 + 56);
        v33 = *(v9 + 48) + 176 * v31;
        v35 = *v33;
        v34 = *(v33 + 8);
        v66 = *(v33 + 16);
        v65 = *(v33 + 24);
        v67 = *(v33 + 32);
        v69 = *(v33 + 40);
        v68 = *(v33 + 48);
        v70 = *(v33 + 56);
        v36 = *(v33 + 64);
        v37 = *(v33 + 88);
        v71 = *(v33 + 72);
        v72 = v37;
        v73 = *(v33 + 104);
        v38 = *(v33 + 128);
        v74 = *(v33 + 112);
        v75 = v38;
        v76 = *(v33 + 144);
        v78 = *(v33 + 152);
        v39 = *(v63 + 72);
        v40 = v32 + v39 * v31;
        v41 = *(v33 + 168);
        v79 = *(v33 + 160);
        v80 = v39;
        v77 = v41;
        sub_1B80148D0(v40, v81, type metadata accessor for Location);
      }

      else
      {
        v42 = (*(v9 + 48) + 176 * v31);
        v43 = v42[3];
        v44 = v42[4];
        v45 = v42[6];
        v87[1] = v42[5];
        v87[2] = v45;
        v86 = v43;
        v87[0] = v44;
        v46 = v42[7];
        v47 = v42[8];
        v48 = v42[10];
        v90 = v42[9];
        v91 = v48;
        v88 = v46;
        v89 = v47;
        v50 = v42[1];
        v49 = v42[2];
        v83 = *v42;
        v84 = v50;
        v85 = v49;
        v51 = *(v9 + 56);
        v80 = *(v63 + 72);
        sub_1B80941CC(v51 + v80 * v31, v81, type metadata accessor for Location);
        v78 = *(&v90 + 1);
        v79 = v91;
        v76 = v90;
        v77 = *(&v91 + 1);
        v74 = v88;
        v75 = v89;
        v73 = BYTE8(v87[2]);
        v71 = *(v87 + 8);
        v72 = *(&v87[1] + 8);
        v36 = *&v87[0];
        v69 = *(&v85 + 1);
        v70 = *(&v86 + 1);
        v68 = v86;
        v67 = v85;
        v65 = *(&v84 + 1);
        v66 = v84;
        v34 = *(&v83 + 1);
        v35 = v83;
        sub_1B7FC8DA4(&v83, &v82);
      }

      v52 = *(v12 + 40);
      sub_1B80C993C();
      sub_1B80C90FC();
      sub_1B80C911C();

      result = sub_1B80C997C();
      v53 = -1 << *(v12 + 32);
      v54 = result & ~v53;
      v55 = v54 >> 6;
      if (((-1 << v54) & ~*(v19 + 8 * (v54 >> 6))) == 0)
      {
        v56 = 0;
        v57 = (63 - v53) >> 6;
        while (++v55 != v57 || (v56 & 1) == 0)
        {
          v58 = v55 == v57;
          if (v55 == v57)
          {
            v55 = 0;
          }

          v56 |= v58;
          v59 = *(v19 + 8 * v55);
          if (v59 != -1)
          {
            v20 = __clz(__rbit64(~v59)) + (v55 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v54) & ~*(v19 + 8 * (v54 >> 6)))) | v54 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = *(v12 + 48) + 176 * v20;
      *v21 = v35;
      *(v21 + 8) = v34;
      v22 = v65;
      *(v21 + 16) = v66;
      *(v21 + 24) = v22;
      *(v21 + 32) = v67;
      v23 = v68;
      *(v21 + 40) = v69;
      *(v21 + 48) = v23;
      *(v21 + 56) = v70;
      *(v21 + 64) = v36;
      v24 = v71;
      *(v21 + 88) = v72;
      *(v21 + 72) = v24;
      *(v21 + 104) = v73;
      v25 = v75;
      *(v21 + 112) = v74;
      *(v21 + 128) = v25;
      v26 = v78;
      *(v21 + 144) = v76;
      *(v21 + 152) = v26;
      v27 = v77;
      *(v21 + 160) = v79;
      *(v21 + 168) = v27;
      result = sub_1B80148D0(v81, *(v12 + 56) + v80 * v20, type metadata accessor for Location);
      ++*(v12 + 16);
      v9 = v62;
    }

    v29 = v13;
    while (1)
    {
      v13 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v30 = v14[v13];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v17 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v64 & 1) == 0)
    {

      v3 = v61;
      goto LABEL_36;
    }

    v60 = 1 << *(v9 + 32);
    v3 = v61;
    if (v60 >= 64)
    {
      bzero(v14, ((v60 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v60;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1B8090F00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F70, &qword_1B80DAC90);
  v33 = a2;
  result = sub_1B80C965C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1B80C993C();
      MEMORY[0x1B8CB8250](v21);
      result = sub_1B80C997C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B8091190(uint64_t a1, int a2)
{
  v3 = v2;
  v80 = sub_1B80C8E2C();
  v6 = *(v80 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v79 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67178, &qword_1B80DAC98);
  v62 = a2;
  result = sub_1B80C965C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v59[0] = v3;
    v59[1] = v6 + 16;
    v60 = v9;
    v61 = v6;
    v63 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v28 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v31 = v28 | (v13 << 6);
      if (v62)
      {
        v32 = *(v9 + 56);
        v33 = *(v9 + 48) + 176 * v31;
        v34 = *v33;
        v35 = *(v33 + 8);
        v65 = *(v33 + 16);
        v64 = *(v33 + 24);
        v66 = *(v33 + 32);
        v68 = *(v33 + 40);
        v67 = *(v33 + 48);
        v69 = *(v33 + 56);
        v36 = *(v33 + 64);
        v37 = *(v33 + 88);
        v70 = *(v33 + 72);
        v71 = v37;
        v72 = *(v33 + 104);
        v38 = *(v33 + 128);
        v73 = *(v33 + 112);
        v74 = v38;
        v75 = *(v33 + 144);
        v39 = *(v33 + 160);
        v76 = *(v33 + 168);
        v77 = v39;
        v78 = *(v61 + 72);
        (*(v61 + 32))(v79, v32 + v78 * v31, v80);
      }

      else
      {
        v40 = (*(v9 + 48) + 176 * v31);
        v41 = v40[3];
        v42 = v40[4];
        v43 = v40[6];
        v86[1] = v40[5];
        v86[2] = v43;
        v85 = v41;
        v86[0] = v42;
        v44 = v40[7];
        v45 = v40[8];
        v46 = v40[10];
        v89 = v40[9];
        v90 = v46;
        v87 = v44;
        v88 = v45;
        v48 = v40[1];
        v47 = v40[2];
        v82 = *v40;
        v83 = v48;
        v84 = v47;
        v49 = *(v9 + 56);
        v78 = *(v61 + 72);
        (*(v61 + 16))(v79, v49 + v78 * v31, v80);
        v76 = *(&v90 + 1);
        v77 = v90;
        v75 = v89;
        v73 = v87;
        v74 = v88;
        v72 = BYTE8(v86[2]);
        v70 = *(v86 + 8);
        v71 = *(&v86[1] + 8);
        v36 = *&v86[0];
        v68 = *(&v84 + 1);
        v69 = *(&v85 + 1);
        v67 = v85;
        v66 = v84;
        v64 = *(&v83 + 1);
        v65 = v83;
        v35 = *(&v82 + 1);
        v34 = v82;
        sub_1B7FC8DA4(&v82, &v81);
      }

      v50 = *(v12 + 40);
      sub_1B80C993C();
      sub_1B80C90FC();
      sub_1B80C911C();

      result = sub_1B80C997C();
      v51 = -1 << *(v12 + 32);
      v52 = result & ~v51;
      v53 = v52 >> 6;
      if (((-1 << v52) & ~*(v19 + 8 * (v52 >> 6))) == 0)
      {
        v54 = 0;
        v55 = (63 - v51) >> 6;
        while (++v53 != v55 || (v54 & 1) == 0)
        {
          v56 = v53 == v55;
          if (v53 == v55)
          {
            v53 = 0;
          }

          v54 |= v56;
          v57 = *(v19 + 8 * v53);
          if (v57 != -1)
          {
            v20 = __clz(__rbit64(~v57)) + (v53 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v52) & ~*(v19 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = *(v12 + 48) + 176 * v20;
      *v21 = v34;
      *(v21 + 8) = v35;
      v22 = v64;
      *(v21 + 16) = v65;
      *(v21 + 24) = v22;
      *(v21 + 32) = v66;
      v23 = v67;
      *(v21 + 40) = v68;
      *(v21 + 48) = v23;
      *(v21 + 56) = v69;
      *(v21 + 64) = v36;
      v24 = v70;
      *(v21 + 88) = v71;
      *(v21 + 72) = v24;
      *(v21 + 104) = v72;
      v25 = v74;
      *(v21 + 112) = v73;
      *(v21 + 128) = v25;
      v26 = *(&v75 + 1);
      *(v21 + 144) = v75;
      *(v21 + 152) = v26;
      v27 = v76;
      *(v21 + 160) = v77;
      *(v21 + 168) = v27;
      result = (*v63)(*(v12 + 56) + v78 * v20, v79, v80);
      ++*(v12 + 16);
      v9 = v60;
    }

    v29 = v13;
    while (1)
    {
      v13 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v30 = v14[v13];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v17 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v62 & 1) == 0)
    {

      v3 = v59[0];
      goto LABEL_36;
    }

    v58 = 1 << *(v9 + 32);
    v3 = v59[0];
    if (v58 >= 64)
    {
      bzero(v14, ((v58 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v58;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1B80916B8(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = sub_1B80C8E2C();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660F8, &qword_1B80D2F88);
  v40 = a2;
  result = sub_1B80C965C();
  v12 = result;
  if (*(v9 + 16))
  {
    v37[0] = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v41 = (v6 + 32);
    v37[2] = 0x80000001B80CB400;
    v38 = (v6 + 16);
    v37[1] = 0x80000001B80CB3E0;
    v19 = result + 64;
    v39 = v6;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + v24);
      v26 = *(v6 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v40)
      {
        (*v41)(v42, v27, v43);
      }

      else
      {
        (*v38)(v42, v27, v43);
      }

      v28 = *(v12 + 40);
      sub_1B80C993C();
      sub_1B80C911C();

      result = sub_1B80C997C();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + v20) = v25;
      result = (*v41)(*(v12 + 56) + v26 * v20, v42, v43);
      ++*(v12 + 16);
      v6 = v39;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37[0];
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37[0];
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

void *sub_1B8091A9C()
{
  v1 = v0;
  v2 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67180, &unk_1B80DACA0);
  v5 = *v0;
  v6 = sub_1B80C964C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 16 * v20);
        v24 = v5;
        v25 = *v23;
        v26 = v23[1];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        sub_1B80941CC(v22 + v28, v33, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v25;
        v30[1] = v26;
        v5 = v24;
        sub_1B80148D0(v27, *(v29 + 56) + v28, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_1B8091CFC()
{
  v1 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v32 - v3;
  v41 = sub_1B80C8E9C();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F80, &qword_1B80DAC80);
  v6 = *v0;
  v7 = sub_1B80C964C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1B8092058()
{
  v1 = v0;
  v2 = type metadata accessor for Location();
  v45 = *(v2 - 8);
  v3 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660F0, &unk_1B80DAC60);
  v5 = *v0;
  v6 = sub_1B80C964C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v43 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v46 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    for (i = (v13 + 63) >> 6; v15; result = sub_1B7FC8DA4(&v48, &v47))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = v17 | (v11 << 6);
      v21 = 176 * v20;
      v22 = (*(v5 + 48) + 176 * v20);
      v23 = v22[3];
      v24 = v22[4];
      v25 = v22[6];
      v53 = v22[5];
      v54 = v25;
      v51 = v23;
      v52 = v24;
      v26 = v22[7];
      v27 = v22[8];
      v28 = v22[10];
      v57 = v22[9];
      v58 = v28;
      v55 = v26;
      v56 = v27;
      v30 = v22[1];
      v29 = v22[2];
      v48 = *v22;
      v49 = v30;
      v50 = v29;
      v31 = v44;
      v32 = *(v45 + 72) * v20;
      sub_1B80941CC(*(v5 + 56) + v32, v44, type metadata accessor for Location);
      v33 = v46;
      v34 = (*(v46 + 48) + v21);
      v35 = v55;
      v36 = v56;
      v37 = v58;
      v34[9] = v57;
      v34[10] = v37;
      v34[7] = v35;
      v34[8] = v36;
      v38 = v51;
      v39 = v52;
      v40 = v54;
      v34[5] = v53;
      v34[6] = v40;
      v34[3] = v38;
      v34[4] = v39;
      v42 = v49;
      v41 = v50;
      *v34 = v48;
      v34[1] = v42;
      v34[2] = v41;
      sub_1B80148D0(v31, *(v33 + 56) + v32, type metadata accessor for Location);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= i)
      {

        v1 = v43;
        v7 = v46;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1B809230C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F70, &qword_1B80DAC90);
  v2 = *v0;
  v3 = sub_1B80C964C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B8092468()
{
  v1 = v0;
  v49 = sub_1B80C8E2C();
  v51 = *(v49 - 8);
  v2 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67178, &qword_1B80DAC98);
  v4 = *v0;
  v5 = sub_1B80C964C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v47[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v50 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v47[1] = v51 + 32;
    v47[2] = v51 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 176 * v19;
        v21 = (*(v4 + 48) + 176 * v19);
        v22 = v21[3];
        v23 = v21[4];
        v24 = v21[6];
        v59 = v21[5];
        v60 = v24;
        v57 = v22;
        v58 = v23;
        v25 = v21[7];
        v26 = v21[8];
        v27 = v21[10];
        v63 = v21[9];
        v64 = v27;
        v61 = v25;
        v62 = v26;
        v29 = v21[1];
        v28 = v21[2];
        v54 = *v21;
        v55 = v29;
        v56 = v28;
        v30 = v51;
        v31 = *(v51 + 72) * v19;
        v32 = *(v4 + 56) + v31;
        v33 = v48;
        v34 = v4;
        v35 = v49;
        (*(v51 + 16))(v48, v32, v49);
        v36 = v50;
        v37 = (*(v50 + 48) + v20);
        v38 = v61;
        v39 = v62;
        v40 = v64;
        v37[9] = v63;
        v37[10] = v40;
        v37[7] = v38;
        v37[8] = v39;
        v41 = v57;
        v42 = v58;
        v43 = v60;
        v37[5] = v59;
        v37[6] = v43;
        v37[3] = v41;
        v37[4] = v42;
        v45 = v55;
        v44 = v56;
        *v37 = v54;
        v37[1] = v45;
        v37[2] = v44;
        v46 = v35;
        v4 = v34;
        (*(v30 + 32))(*(v36 + 56) + v31, v33, v46);
        result = sub_1B7FC8DA4(&v54, &v53);
        v14 = v52;
      }

      while (v52);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v47[0];
        v6 = v50;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v52 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1B8092758()
{
  v1 = v0;
  v30 = sub_1B80C8E2C();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660F8, &qword_1B80D2F88);
  v4 = *v0;
  v5 = sub_1B80C964C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1B80929C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F88, &qword_1B80D99B0);
  v2 = *v0;
  v3 = sub_1B80C964C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v25 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v26 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v27 = (v11 - 1) & v11;
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 32 * v16;
        v18 = *(v2 + 48) + 32 * v16;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = 8 * v16;
        sub_1B7FC391C(*(v2 + 56) + 8 * v16, v28);
        v24 = *(v26 + 48) + v17;
        *v24 = v19;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        sub_1B7FBCEF4(v28, *(v26 + 56) + v23);

        v11 = v27;
      }

      while (v27);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v25;
        v4 = v26;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v27 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

size_t sub_1B8092B88(size_t a1, int64_t a2, char a3)
{
  result = sub_1B8092BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8092BA8(char *a1, int64_t a2, char a3)
{
  result = sub_1B8092DC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B8092BC8(void *a1, int64_t a2, char a3)
{
  result = sub_1B8092FF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B8092BE8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E88, &qword_1B80D9240);
  v10 = *(type metadata accessor for Friend() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Friend() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B8092DC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66100, &qword_1B80DACB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8092EE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67170, &qword_1B80DAC88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B8092FF4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E20, &unk_1B80D2110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67168, &unk_1B80DAC70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1B809313C()
{
  result = qword_1EBA670B0;
  if (!qword_1EBA670B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA670B0);
  }

  return result;
}

unint64_t sub_1B8093190()
{
  result = qword_1EBA670B8;
  if (!qword_1EBA670B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA670B8);
  }

  return result;
}

unint64_t sub_1B80931E4()
{
  result = qword_1EBA670C0;
  if (!qword_1EBA670C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA670C0);
  }

  return result;
}

unint64_t sub_1B8093238()
{
  result = qword_1ED8DBC30;
  if (!qword_1ED8DBC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBC30);
  }

  return result;
}

unint64_t sub_1B809328C()
{
  result = qword_1ED8DBC20;
  if (!qword_1ED8DBC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA67100, &unk_1B80DA058);
    sub_1B8093348();
    sub_1B7FBADF0(&qword_1ED8DC390, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBC20);
  }

  return result;
}

unint64_t sub_1B8093348()
{
  result = qword_1ED8DBC50;
  if (!qword_1ED8DBC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBC50);
  }

  return result;
}

unint64_t sub_1B809339C()
{
  result = qword_1ED8DBBA0;
  if (!qword_1ED8DBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBBA0);
  }

  return result;
}

unint64_t sub_1B80933F0()
{
  result = qword_1EBA67118;
  if (!qword_1EBA67118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67118);
  }

  return result;
}

unint64_t sub_1B8093448()
{
  result = qword_1EBA67128;
  if (!qword_1EBA67128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67128);
  }

  return result;
}

unint64_t sub_1B80934A0()
{
  result = qword_1EBA67130;
  if (!qword_1EBA67130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67130);
  }

  return result;
}

unint64_t sub_1B80934F8()
{
  result = qword_1ED8DC410;
  if (!qword_1ED8DC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC410);
  }

  return result;
}

unint64_t sub_1B809354C()
{
  result = qword_1EBA67138;
  if (!qword_1EBA67138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67138);
  }

  return result;
}

uint64_t sub_1B80935B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B80935F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B80936B8()
{
  result = qword_1EBA67140;
  if (!qword_1EBA67140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67140);
  }

  return result;
}

unint64_t sub_1B8093710()
{
  result = qword_1EBA67148;
  if (!qword_1EBA67148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67148);
  }

  return result;
}

unint64_t sub_1B8093768()
{
  result = qword_1EBA67150;
  if (!qword_1EBA67150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67150);
  }

  return result;
}

unint64_t sub_1B80937C0()
{
  result = qword_1EBA67158;
  if (!qword_1EBA67158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67158);
  }

  return result;
}

unint64_t sub_1B8093818()
{
  result = qword_1EBA67160;
  if (!qword_1EBA67160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67160);
  }

  return result;
}

unint64_t sub_1B8093870()
{
  result = qword_1ED8DC428;
  if (!qword_1ED8DC428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC428);
  }

  return result;
}

unint64_t sub_1B80938C8()
{
  result = qword_1ED8DC430;
  if (!qword_1ED8DC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC430);
  }

  return result;
}

unint64_t sub_1B8093920()
{
  result = qword_1ED8DD490;
  if (!qword_1ED8DD490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD490);
  }

  return result;
}

unint64_t sub_1B8093978()
{
  result = qword_1ED8DD498;
  if (!qword_1ED8DD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD498);
  }

  return result;
}

unint64_t sub_1B80939D0()
{
  result = qword_1ED8DD480;
  if (!qword_1ED8DD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD480);
  }

  return result;
}

unint64_t sub_1B8093A28()
{
  result = qword_1ED8DD488;
  if (!qword_1ED8DD488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD488);
  }

  return result;
}

unint64_t sub_1B8093A80()
{
  result = qword_1ED8DD460;
  if (!qword_1ED8DD460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD460);
  }

  return result;
}

unint64_t sub_1B8093AD8()
{
  result = qword_1ED8DD468;
  if (!qword_1ED8DD468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD468);
  }

  return result;
}

unint64_t sub_1B8093B30()
{
  result = qword_1ED8DD450;
  if (!qword_1ED8DD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD450);
  }

  return result;
}

unint64_t sub_1B8093B88()
{
  result = qword_1ED8DD458;
  if (!qword_1ED8DD458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD458);
  }

  return result;
}

unint64_t sub_1B8093BE0()
{
  result = qword_1ED8DD470;
  if (!qword_1ED8DD470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD470);
  }

  return result;
}

unint64_t sub_1B8093C38()
{
  result = qword_1ED8DD478;
  if (!qword_1ED8DD478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD478);
  }

  return result;
}

unint64_t sub_1B8093C90()
{
  result = qword_1ED8DD4A0;
  if (!qword_1ED8DD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4A0);
  }

  return result;
}

unint64_t sub_1B8093CE8()
{
  result = qword_1ED8DD4A8;
  if (!qword_1ED8DD4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4A8);
  }

  return result;
}

uint64_t sub_1B8093D3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B80CDF30 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7574617453736469 && a2 == 0xE900000000000073 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684632420 && a2 == 0xE400000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B80CDF50 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B80CDF70 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5344646568736168 && a2 == 0xEA00000000004449 || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xED0000726564724FLL || (sub_1B80C981C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C62616863616572 && a2 == 0xE900000000000065 || (sub_1B80C981C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E65644968737570 && a2 == 0xEF73726569666974 || (sub_1B80C981C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x614E797474657270 && a2 == 0xEA0000000000656DLL || (sub_1B80C981C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B80CDF90 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B80CDFB0 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B80CDFD0 == a2)
  {

    return 13;
  }

  else
  {
    v5 = sub_1B80C981C();

    if (v5)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1B80941CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void LocatePriority.schedulePriority.getter(char *a1@<X8>)
{
  if (*v1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

unint64_t LocatePriority.description.getter()
{
  v1 = 0x776F6C6C6168732ELL;
  v2 = 0x6576696C2ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

unint64_t sub_1B80942FC()
{
  result = qword_1ED8DC370;
  if (!qword_1ED8DC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC370);
  }

  return result;
}

unint64_t sub_1B80943A4()
{
  result = qword_1EBA67188;
  if (!qword_1EBA67188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA67190, &qword_1B80DADA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67188);
  }

  return result;
}

uint64_t Location.date.getter()
{
  v1 = *(v0 + *(type metadata accessor for Location() + 52));

  return sub_1B80C8DCC();
}

uint64_t Location.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Location.address.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Location() + 20));
  v4 = v3[9];
  v5 = v3[7];
  v30 = v3[8];
  v31 = v4;
  v6 = v3[9];
  v7 = v3[11];
  v32 = v3[10];
  v8 = v32;
  v33 = v7;
  v9 = v3[5];
  v11 = v3[3];
  v26 = v3[4];
  v10 = v26;
  v27 = v9;
  v12 = v3[5];
  v13 = v3[7];
  v28 = v3[6];
  v14 = v28;
  v29 = v13;
  v15 = v3[1];
  v16 = v3[3];
  v24 = v3[2];
  v17 = v24;
  v25 = v16;
  v18 = v3[1];
  v23[0] = *v3;
  v19 = v23[0];
  v23[1] = v18;
  a1[8] = v30;
  a1[9] = v6;
  v20 = v3[11];
  a1[10] = v8;
  a1[11] = v20;
  a1[4] = v10;
  a1[5] = v12;
  a1[6] = v14;
  a1[7] = v5;
  *a1 = v19;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v11;
  return sub_1B7FD7BE8(v23, &v22);
}

uint64_t Location.labels.getter()
{
  v1 = *(v0 + *(type metadata accessor for Location() + 36));
}

uint64_t Location.locationType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Location();
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t Location.motionActivityState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Location();
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t sub_1B8094738()
{
  v1 = *(v0 + *(type metadata accessor for Location() + 36));
  if (!v1[2])
  {
    return 0;
  }

  v3 = v1[4];
  v2 = v1[5];
  swift_bridgeObjectRetain_n();
  v4._countAndFlagsBits = v3;
  v4._object = v2;
  DefaultCustomLabel.init(rawValue:)(v4);
  if (v6 != 5)
  {
    v3 = DefaultCustomLabel.localizedLabel.getter();
  }

  return v3;
}

uint64_t Location.description.getter()
{
  v36 = sub_1B80C8E2C();
  v1 = *(v36 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0xE000000000000000;
  *&v50 = 0;
  *(&v50 + 1) = 0xE000000000000000;
  sub_1B80C952C();
  v49 = v50;
  MEMORY[0x1B8CB7A40](0x696669746E656469, 0xEC000000203A7265);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  sub_1B809736C(&qword_1EBA67198);
  v6 = sub_1B80C97FC();
  MEMORY[0x1B8CB7A40](v6);

  MEMORY[0x1B8CB7A40](0x737365726464610ALL, 0xE90000000000003ALL);
  v7 = type metadata accessor for Location();
  v8 = (v0 + v7[5]);
  v9 = v8[9];
  v58 = v8[8];
  v59 = v9;
  v10 = v8[11];
  v60 = v8[10];
  v61 = v10;
  v11 = v8[5];
  v54 = v8[4];
  v55 = v11;
  v12 = v8[7];
  v56 = v8[6];
  v57 = v12;
  v13 = v8[3];
  v52 = v8[2];
  v53 = v13;
  v14 = v8[1];
  v50 = *v8;
  v51 = v14;
  if (sub_1B8032DBC(&v50) == 1)
  {
    v15 = 0;
  }

  else
  {
    v45 = v58;
    v46 = v59;
    v47 = v60;
    v48 = v61;
    v41 = v54;
    v42 = v55;
    v43 = v56;
    v44 = v57;
    v37 = v50;
    v38 = v51;
    v39 = v52;
    v40 = v53;
    v15 = PlaceMark.description.getter();
    v5 = v16;
  }

  MEMORY[0x1B8CB7A40](v15, v5);

  MEMORY[0x1B8CB7A40](0x64757469746C610ALL, 0xEA00000000003A65);
  v17 = *(v0 + v7[6]);
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x654C726F6F6C660ALL, 0xEC0000003A6C6576);
  *&v37 = *(v0 + v7[7]);
  v18 = sub_1B80C97FC();
  MEMORY[0x1B8CB7A40](v18);

  MEMORY[0x1B8CB7A40](0xD000000000000014, 0x80000001B80CDFF0);
  v19 = *(v0 + v7[8]);
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0xD000000000000012, 0x80000001B80CE010);
  v20 = *(v0 + v7[14]);
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x3A736C6562616C0ALL, 0xE800000000000000);
  v21 = MEMORY[0x1B8CB7B30](*(v0 + v7[9]), MEMORY[0x1E69E6158]);
  MEMORY[0x1B8CB7A40](v21);

  MEMORY[0x1B8CB7A40](0x6475746974616C0ALL, 0xEA00000000003A65);
  v22 = *(v0 + v7[10]);
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x757469676E6F6C0ALL, 0xEB000000003A6564);
  v23 = *(v0 + v7[11]);
  sub_1B80C938C();
  v24 = 0xE700000000000000;
  MEMORY[0x1B8CB7A40](0x3A64656570730ALL, 0xE700000000000000);
  v25 = *(v0 + v7[12]);
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x617473656D69740ALL, 0xEB000000003A706DLL);
  v26 = *(v0 + v7[13]);
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x3A657079740ALL, 0xE600000000000000);
  if (*(v0 + v7[15]) > 1u)
  {
    if (*(v0 + v7[15]) == 2)
    {
      v24 = 0xE500000000000000;
      v27 = 0x6576696C2ELL;
    }

    else
    {
      v24 = 0xEA00000000006574;
      v27 = 0x696C6C657461732ELL;
    }
  }

  else if (*(v0 + v7[15]))
  {
    v24 = 0x80000001B80CCF10;
    v27 = 0xD000000000000013;
  }

  else
  {
    v27 = 0x79636167656C2ELL;
  }

  MEMORY[0x1B8CB7A40](v27, v24);

  MEMORY[0x1B8CB7A40](0x536E6F69746F6D0ALL, 0xED00003A65746174);
  v28 = *(v0 + v7[16]);
  if (v28 > 2)
  {
    if (v28 == 3)
    {
      v29 = 0xE800000000000000;
      v30 = 0x676E696E6E75722ELL;
    }

    else if (v28 == 4)
    {
      v29 = 0xE800000000000000;
      v30 = 0x676E696C6379632ELL;
    }

    else
    {
      v29 = 0xEB00000000657669;
      v30 = 0x746F6D6F7475612ELL;
    }
  }

  else if (*(v0 + v7[16]))
  {
    if (v28 == 1)
    {
      v29 = 0xEB00000000797261;
      v30 = 0x6E6F69746174732ELL;
    }

    else
    {
      v29 = 0xE800000000000000;
      v30 = 0x676E696B6C61772ELL;
    }
  }

  else
  {
    v29 = 0xE800000000000000;
    v30 = 0x6E776F6E6B6E752ELL;
  }

  MEMORY[0x1B8CB7A40](v30, v29);

  MEMORY[0x1B8CB7A40](0x3A657461640ALL, 0xE600000000000000);
  sub_1B80C8DCC();
  v31 = sub_1B80C8D4C();
  v33 = v32;
  (*(v1 + 8))(v4, v36);
  MEMORY[0x1B8CB7A40](v31, v33);

  return v49;
}

uint64_t Location.coarseAddressLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for Location() + 20));
  v2 = v1[9];
  v12 = v1[8];
  v13 = v2;
  v3 = v1[11];
  v14 = v1[10];
  v15 = v3;
  v4 = v1[5];
  v10[4] = v1[4];
  v10[5] = v4;
  v5 = v1[7];
  v10[6] = v1[6];
  v11 = v5;
  v6 = v1[3];
  v10[2] = v1[2];
  v10[3] = v6;
  v7 = v1[1];
  v10[0] = *v1;
  v10[1] = v7;
  v8 = 0;
  if (sub_1B8032DBC(v10) != 1)
  {
    v8 = v11;
  }

  return v8;
}

uint64_t Location.displayAddress.getter()
{
  v1 = type metadata accessor for Location();
  v3 = *(v0 + v1[16]) - 3 < 0xFFFFFFFE && *(v0 + v1[15]) == 2;
  v4 = (v0 + v1[5]);
  v5 = v4[9];
  v52 = v4[8];
  v53 = v5;
  v6 = v4[11];
  v54 = v4[10];
  v55 = v6;
  v7 = v4[5];
  v50[4] = v4[4];
  v50[5] = v7;
  v8 = v4[7];
  v50[6] = v4[6];
  v51 = v8;
  v9 = v4[1];
  v50[0] = *v4;
  v50[1] = v9;
  v10 = v4[3];
  v50[2] = v4[2];
  v50[3] = v10;
  v11 = 0;
  if (sub_1B8032DBC(v50) != 1)
  {
    v11 = v51;
  }

  if (v3)
  {
    return v11;
  }

  v13 = sub_1B8094738();
  if (v14)
  {
    v15 = v13;

    return v15;
  }

  else
  {
    v16 = v4[9];
    v46 = v4[8];
    v47 = v16;
    v17 = v4[11];
    v48 = v4[10];
    v49 = v17;
    v18 = v4[5];
    v45[4] = v4[4];
    v45[5] = v18;
    v19 = v4[7];
    v45[6] = v4[6];
    v45[7] = v19;
    v20 = v4[1];
    v45[0] = *v4;
    v45[1] = v20;
    v21 = v4[3];
    v45[2] = v4[2];
    v45[3] = v21;
    if (sub_1B8032DBC(v45) == 1 || !*(&v46 + 1))
    {
      v23 = v4[9];
      v41[8] = v4[8];
      v42 = v23;
      v24 = v4[11];
      v43 = v4[10];
      v44 = v24;
      v25 = v4[5];
      v41[4] = v4[4];
      v41[5] = v25;
      v26 = v4[7];
      v41[6] = v4[6];
      v41[7] = v26;
      v27 = v4[1];
      v41[0] = *v4;
      v41[1] = v27;
      v28 = v4[3];
      v41[2] = v4[2];
      v41[3] = v28;
      if (sub_1B8032DBC(v41) == 1)
      {
        v29 = 0;
        v30 = 0;
      }

      else
      {
        v30 = *(&v42 + 1);
        v29 = v42;
      }

      v31 = v4[9];
      v38[8] = v4[8];
      v38[9] = v31;
      v32 = v4[11];
      v39 = v4[10];
      v40 = v32;
      v33 = v4[5];
      v38[4] = v4[4];
      v38[5] = v33;
      v34 = v4[7];
      v38[6] = v4[6];
      v38[7] = v34;
      v35 = v4[1];
      v38[0] = *v4;
      v38[1] = v35;
      v36 = v4[3];
      v38[2] = v4[2];
      v38[3] = v36;
      if (sub_1B8032DBC(v38) == 1 || !*(&v39 + 1))
      {
        if (!v30)
        {
          return v11;
        }

        return v29;
      }

      else
      {
        v37 = v39;

        return v37;
      }
    }

    else
    {
      v22 = v46;

      return v22;
    }
  }
}

uint64_t Location.fullAddress.getter()
{
  v1 = type metadata accessor for Location();
  v3 = *(v0 + v1[16]) - 3 < 0xFFFFFFFE && *(v0 + v1[15]) == 2;
  v4 = (v0 + v1[5]);
  v5 = v4[9];
  v62 = v4[8];
  v63 = v5;
  v6 = v4[11];
  v64 = v4[10];
  v65 = v6;
  v7 = v4[5];
  v60[4] = v4[4];
  v60[5] = v7;
  v8 = v4[7];
  v60[6] = v4[6];
  v61 = v8;
  v9 = v4[1];
  v60[0] = *v4;
  v60[1] = v9;
  v10 = v4[3];
  v60[2] = v4[2];
  v60[3] = v10;
  v11 = 0;
  if (sub_1B8032DBC(v60) != 1)
  {
    v11 = v61;
  }

  if (v3)
  {
    return v11;
  }

  v13 = sub_1B8094738();
  if (v14)
  {
    v15 = v13;

    return v15;
  }

  else
  {
    v16 = v4[9];
    v56 = v4[8];
    v57 = v16;
    v17 = v4[11];
    v58 = v4[10];
    v59 = v17;
    v18 = v4[5];
    v55[4] = v4[4];
    v55[5] = v18;
    v19 = v4[7];
    v55[6] = v4[6];
    v55[7] = v19;
    v20 = v4[1];
    v55[0] = *v4;
    v55[1] = v20;
    v21 = v4[3];
    v55[2] = v4[2];
    v55[3] = v21;
    if (sub_1B8032DBC(v55) == 1 || !*(&v56 + 1))
    {
      v23 = v4[9];
      v51[8] = v4[8];
      v52 = v23;
      v24 = v4[11];
      v53 = v4[10];
      v54 = v24;
      v25 = v4[5];
      v51[4] = v4[4];
      v51[5] = v25;
      v26 = v4[7];
      v51[6] = v4[6];
      v51[7] = v26;
      v27 = v4[1];
      v51[0] = *v4;
      v51[1] = v27;
      v28 = v4[3];
      v51[2] = v4[2];
      v51[3] = v28;
      if (sub_1B8032DBC(v51) == 1)
      {
        v29 = 0;
        v30 = 0;
      }

      else
      {
        v30 = *(&v52 + 1);
        v29 = v52;
      }

      v31 = v4[9];
      v48[8] = v4[8];
      v48[9] = v31;
      v32 = v4[11];
      v49 = v4[10];
      v50 = v32;
      v33 = v4[5];
      v48[4] = v4[4];
      v48[5] = v33;
      v34 = v4[7];
      v48[6] = v4[6];
      v48[7] = v34;
      v35 = v4[1];
      v48[0] = *v4;
      v48[1] = v35;
      v36 = v4[3];
      v48[2] = v4[2];
      v48[3] = v36;
      if (sub_1B8032DBC(v48) == 1)
      {
        v37 = 0;
        v38 = 0;
      }

      else
      {
        v38 = *(&v49 + 1);
        v37 = v49;
      }

      v39 = v4[9];
      v46[8] = v4[8];
      v46[9] = v39;
      v40 = v4[11];
      v46[10] = v4[10];
      v47 = v40;
      v41 = v4[5];
      v46[4] = v4[4];
      v46[5] = v41;
      v42 = v4[7];
      v46[6] = v4[6];
      v46[7] = v42;
      v43 = v4[1];
      v46[0] = *v4;
      v46[1] = v43;
      v44 = v4[3];
      v46[2] = v4[2];
      v46[3] = v44;
      if (sub_1B8032DBC(v46) == 1 || !*(&v47 + 1))
      {
        if (v38)
        {

          return v37;
        }

        else
        {
          if (!v30)
          {
            return v11;
          }

          return v29;
        }
      }

      else
      {
        v45 = v47;

        return v45;
      }
    }

    else
    {
      v22 = v56;

      return v22;
    }
  }
}

unint64_t sub_1B8095730(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x73736572646461;
      break;
    case 2:
      result = 0x6564757469746C61;
      break;
    case 3:
      result = 0x76654C726F6F6C66;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x736C6562616CLL;
      break;
    case 6:
      result = 0x656475746974616CLL;
      break;
    case 7:
      result = 0x64757469676E6F6CLL;
      break;
    case 8:
      result = 0x6465657073;
      break;
    case 9:
      result = 0x6D617473656D6974;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6E6F697461636F6CLL;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B80958C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B80977A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B80958F8(uint64_t a1)
{
  v2 = sub_1B8097270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8095934(uint64_t a1)
{
  v2 = sub_1B8097270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Location.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA671A0, &qword_1B80DAE38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8097270();
  sub_1B80C99DC();
  v61 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  sub_1B809736C(&qword_1EBA671B0);
  sub_1B80C97DC();
  if (!v2)
  {
    v11 = type metadata accessor for Location();
    v12 = (v3 + v11[5]);
    v13 = v12[9];
    v14 = v12[7];
    v57 = v12[8];
    v58 = v13;
    v15 = v12[9];
    v16 = v12[11];
    v59 = v12[10];
    v60 = v16;
    v17 = v12[5];
    v18 = v12[3];
    v53 = v12[4];
    v54 = v17;
    v19 = v12[5];
    v20 = v12[7];
    v55 = v12[6];
    v56 = v20;
    v21 = v12[1];
    v22 = v12[3];
    v51 = v12[2];
    v52 = v22;
    v23 = v12[1];
    v50[0] = *v12;
    v50[1] = v23;
    v46 = v57;
    v47 = v15;
    v24 = v12[11];
    v48 = v59;
    v49 = v24;
    v42 = v53;
    v43 = v19;
    v44 = v55;
    v45 = v14;
    v38 = v50[0];
    v39 = v21;
    v40 = v51;
    v41 = v18;
    v37 = 1;
    sub_1B7FD7BE8(v50, v36);
    sub_1B807F03C();
    sub_1B80C977C();
    v36[8] = v46;
    v36[9] = v47;
    v36[10] = v48;
    v36[11] = v49;
    v36[4] = v42;
    v36[5] = v43;
    v36[6] = v44;
    v36[7] = v45;
    v36[0] = v38;
    v36[1] = v39;
    v36[2] = v40;
    v36[3] = v41;
    sub_1B7FB86D4(v36, &qword_1EBA65D70, &qword_1B80D1BB0);
    v25 = *(v3 + v11[6]);
    LOBYTE(v35) = 2;
    sub_1B80C97AC();
    v26 = *(v3 + v11[7]);
    LOBYTE(v35) = 3;
    sub_1B80C97BC();
    v27 = *(v3 + v11[8]);
    LOBYTE(v35) = 4;
    sub_1B80C97AC();
    v35 = *(v3 + v11[9]);
    HIBYTE(v34) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
    sub_1B7FCA738(&qword_1ED8DBBF8);
    sub_1B80C97DC();
    v28 = *(v3 + v11[10]);
    LOBYTE(v35) = 6;
    sub_1B80C97AC();
    v29 = *(v3 + v11[11]);
    LOBYTE(v35) = 7;
    sub_1B80C97AC();
    v30 = *(v3 + v11[12]);
    LOBYTE(v35) = 8;
    sub_1B80C97AC();
    v31 = *(v3 + v11[13]);
    LOBYTE(v35) = 9;
    sub_1B80C97AC();
    v32 = *(v3 + v11[14]);
    LOBYTE(v35) = 10;
    sub_1B80C97AC();
    LOBYTE(v35) = *(v3 + v11[15]);
    HIBYTE(v34) = 11;
    sub_1B80972C4();
    sub_1B80C97DC();
    LOBYTE(v35) = *(v3 + v11[16]);
    HIBYTE(v34) = 12;
    sub_1B8097318();
    sub_1B80C97DC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Location.hash(into:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  sub_1B809736C(&qword_1EBA671C8);
  sub_1B80C905C();
  v2 = type metadata accessor for Location();
  v3 = (v0 + v2[5]);
  v4 = v3[9];
  v5 = v3[7];
  v51 = v3[8];
  v52 = v4;
  v6 = v3[9];
  v7 = v3[11];
  v53 = v3[10];
  v54 = v7;
  v8 = v3[5];
  v9 = v3[3];
  v47 = v3[4];
  v48 = v8;
  v10 = v3[5];
  v11 = v3[7];
  v49 = v3[6];
  v50 = v11;
  v12 = v3[1];
  v13 = v3[3];
  v45 = v3[2];
  v46 = v13;
  v14 = v3[1];
  v43 = *v3;
  v44 = v14;
  v55[8] = v51;
  v55[9] = v6;
  v15 = v3[11];
  v55[10] = v53;
  v55[11] = v15;
  v55[4] = v47;
  v55[5] = v10;
  v55[6] = v49;
  v55[7] = v5;
  v55[0] = v43;
  v55[1] = v12;
  v55[2] = v45;
  v55[3] = v9;
  if (sub_1B8032DBC(v55) == 1)
  {
    sub_1B80C995C();
  }

  else
  {
    v37 = v51;
    v38 = v52;
    v39 = v53;
    v40 = v54;
    v33 = v47;
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v29 = v43;
    v30 = v44;
    v31 = v45;
    v32 = v46;
    sub_1B80C995C();
    v41[8] = v51;
    v41[9] = v52;
    v41[10] = v53;
    v41[11] = v54;
    v41[4] = v47;
    v41[5] = v48;
    v41[6] = v49;
    v41[7] = v50;
    v41[0] = v43;
    v41[1] = v44;
    v41[2] = v45;
    v41[3] = v46;
    sub_1B806FB80(v41, v42);
    PlaceMark.hash(into:)();
    v42[8] = v37;
    v42[9] = v38;
    v42[10] = v39;
    v42[11] = v40;
    v42[4] = v33;
    v42[5] = v34;
    v42[6] = v35;
    v42[7] = v36;
    v42[0] = v29;
    v42[1] = v30;
    v42[2] = v31;
    v42[3] = v32;
    sub_1B806FC7C(v42);
  }

  v16 = *(v0 + v2[6]);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x1B8CB8270](*&v16);
  MEMORY[0x1B8CB8250](*(v0 + v2[7]));
  v17 = *(v0 + v2[8]);
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

  MEMORY[0x1B8CB8270](*&v17);
  v18 = *(v0 + v2[9]);
  MEMORY[0x1B8CB8250](*(v18 + 16));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = (v18 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;

      sub_1B80C911C();

      v20 += 2;
      --v19;
    }

    while (v19);
  }

  v23 = *(v1 + v2[10]);
  if (v23 == 0.0)
  {
    v23 = 0.0;
  }

  MEMORY[0x1B8CB8270](*&v23);
  v24 = *(v1 + v2[11]);
  if (v24 == 0.0)
  {
    v24 = 0.0;
  }

  MEMORY[0x1B8CB8270](*&v24);
  v25 = *(v1 + v2[12]);
  if (v25 == 0.0)
  {
    v25 = 0.0;
  }

  MEMORY[0x1B8CB8270](*&v25);
  v26 = *(v1 + v2[13]);
  if (v26 == 0.0)
  {
    v26 = 0.0;
  }

  MEMORY[0x1B8CB8270](*&v26);
  v27 = *(v1 + v2[14]);
  if (v27 == 0.0)
  {
    v27 = 0.0;
  }

  MEMORY[0x1B8CB8270](*&v27);
  MEMORY[0x1B8CB8250](*(v1 + v2[15]));
  return MEMORY[0x1B8CB8250](*(v1 + v2[16]));
}

uint64_t Location.hashValue.getter()
{
  sub_1B80C993C();
  Location.hash(into:)();
  return sub_1B80C997C();
}

uint64_t Location.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v36 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA671D0, &qword_1B80DAE40);
  v40 = *(v41 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v10 = v36 - v9;
  v11 = type metadata accessor for Location();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B8097270();
  v42 = v10;
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v58);
  }

  v17 = v40;
  v37 = v14;
  LOBYTE(v46) = 0;
  sub_1B809736C(&qword_1EBA671D8);
  sub_1B80C972C();
  v18 = v37;
  (*(v39 + 32))(v37, v7, v4);
  v45 = 1;
  sub_1B807F1E0();
  sub_1B80C96CC();
  v36[2] = v4;
  v19 = &v18[v11[5]];
  v20 = v55;
  v21 = v56;
  v22 = v53;
  *(v19 + 8) = v54;
  *(v19 + 9) = v20;
  v23 = v57;
  *(v19 + 10) = v21;
  *(v19 + 11) = v23;
  v24 = v51;
  *(v19 + 4) = v50;
  *(v19 + 5) = v24;
  *(v19 + 6) = v52;
  *(v19 + 7) = v22;
  v25 = v47;
  *v19 = v46;
  *(v19 + 1) = v25;
  v26 = v49;
  *(v19 + 2) = v48;
  *(v19 + 3) = v26;
  LOBYTE(v44) = 2;
  v36[1] = 0;
  sub_1B80C96FC();
  *&v18[v11[6]] = v27;
  LOBYTE(v44) = 3;
  *&v18[v11[7]] = sub_1B80C970C();
  LOBYTE(v44) = 4;
  sub_1B80C96FC();
  *&v18[v11[8]] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
  v43 = 5;
  sub_1B7FCA738(&qword_1ED8DBB80);
  sub_1B80C972C();
  *&v18[v11[9]] = v44;
  LOBYTE(v44) = 6;
  sub_1B80C96FC();
  *&v18[v11[10]] = v29;
  LOBYTE(v44) = 7;
  sub_1B80C96FC();
  *&v18[v11[11]] = v30;
  LOBYTE(v44) = 8;
  sub_1B80C96FC();
  *&v18[v11[12]] = v31;
  LOBYTE(v44) = 9;
  sub_1B80C96FC();
  *&v37[v11[13]] = v32;
  LOBYTE(v44) = 10;
  sub_1B80C96FC();
  *&v37[v11[14]] = v33;
  v43 = 11;
  sub_1B80973BC();
  sub_1B80C972C();
  v37[v11[15]] = v44;
  v43 = 12;
  sub_1B8097410();
  sub_1B80C972C();
  (*(v17 + 8))(v42, v41);
  v34 = v37;
  v37[v11[16]] = v44;
  sub_1B7FD7C58(v34, v38);
  __swift_destroy_boxed_opaque_existential_0(v58);
  return sub_1B7FD7CBC(v34);
}

uint64_t sub_1B8096A64()
{
  sub_1B80C993C();
  Location.hash(into:)();
  return sub_1B80C997C();
}

uint64_t sub_1B8096AA8()
{
  sub_1B80C993C();
  Location.hash(into:)();
  return sub_1B80C997C();
}

uint64_t Location.LabelLength.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

BOOL _s12FindMyLocate8LocationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();
  if ((_s12FindMyLocate5FenceV2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v5 = (a1 + v4[5]);
  v7 = v5[1];
  v6 = v5[2];
  v8 = v6;
  v84[3] = v5[3];
  v84[2] = v6;
  v9 = v5[5];
  v10 = v5[6];
  v11 = v10;
  v84[7] = v5[7];
  v84[6] = v10;
  v12 = v5[4];
  v13 = v5[3];
  v84[5] = v5[5];
  v84[4] = v12;
  v14 = v5[9];
  v15 = v5[10];
  v16 = v15;
  v84[11] = v5[11];
  v84[10] = v15;
  v17 = v5[8];
  v18 = v5[7];
  v84[9] = v5[9];
  v84[8] = v17;
  v19 = *v5;
  v20 = *v5;
  v84[1] = v5[1];
  v84[0] = v19;
  v21 = (a2 + v4[5]);
  v22 = v21[9];
  v23 = v21[7];
  v92 = v21[8];
  v93 = v22;
  v24 = v21[9];
  v25 = v21[11];
  v94 = v21[10];
  v95 = v25;
  v26 = v21[5];
  v27 = v21[3];
  v88 = v21[4];
  v89 = v26;
  v28 = v21[5];
  v29 = v21[7];
  v90 = v21[6];
  v91 = v29;
  v30 = v21[1];
  v85[0] = *v21;
  v85[1] = v30;
  v31 = v21[3];
  v33 = *v21;
  v32 = v21[1];
  v86 = v21[2];
  v87 = v31;
  v34 = v5[9];
  __src[8] = v5[8];
  __src[9] = v34;
  v35 = v5[11];
  __src[10] = v5[10];
  __src[11] = v35;
  v36 = v5[5];
  __src[4] = v5[4];
  __src[5] = v36;
  v37 = v5[7];
  __src[6] = v5[6];
  __src[7] = v37;
  v38 = v5[1];
  __src[0] = *v5;
  __src[1] = v38;
  v39 = v5[3];
  __src[2] = v5[2];
  __src[3] = v39;
  __src[20] = v92;
  __src[21] = v24;
  v40 = v21[11];
  __src[22] = v94;
  __src[23] = v40;
  __src[16] = v88;
  __src[17] = v28;
  __src[18] = v90;
  __src[19] = v23;
  __src[12] = v33;
  __src[13] = v32;
  __src[14] = v86;
  __src[15] = v27;
  v96[8] = v17;
  v96[9] = v14;
  v41 = v5[11];
  v96[10] = v16;
  v96[11] = v41;
  v96[4] = v12;
  v96[5] = v9;
  v96[6] = v11;
  v96[7] = v18;
  v96[0] = v20;
  v96[1] = v7;
  v96[2] = v8;
  v96[3] = v13;
  if (sub_1B8032DBC(v96) != 1)
  {
    v79 = __src[8];
    v80 = __src[9];
    v81 = __src[10];
    v82 = __src[11];
    v75 = __src[4];
    v76 = __src[5];
    v77 = __src[6];
    v78 = __src[7];
    v71 = __src[0];
    v72 = __src[1];
    v73 = __src[2];
    v74 = __src[3];
    v66 = __src[8];
    v67 = __src[9];
    v68 = __src[10];
    v69 = __src[11];
    v62 = __src[4];
    v63 = __src[5];
    v64 = __src[6];
    v65 = __src[7];
    v58 = __src[0];
    v59 = __src[1];
    v60 = __src[2];
    v61 = __src[3];
    __dst[8] = __src[20];
    __dst[9] = __src[21];
    __dst[10] = __src[22];
    __dst[11] = __src[23];
    __dst[4] = __src[16];
    __dst[5] = __src[17];
    __dst[6] = __src[18];
    __dst[7] = __src[19];
    __dst[0] = __src[12];
    __dst[1] = __src[13];
    __dst[2] = __src[14];
    __dst[3] = __src[15];
    if (sub_1B8032DBC(__dst) != 1)
    {
      v54 = __src[20];
      v55 = __src[21];
      v56 = __src[22];
      v57 = __src[23];
      v50 = __src[16];
      v51 = __src[17];
      v52 = __src[18];
      v53 = __src[19];
      v46 = __src[12];
      v47 = __src[13];
      v48 = __src[14];
      v49 = __src[15];
      MyLocate9PlaceMarkV2eeoiySbAC_ACtFZ_0 = _s12FindMyLocate9PlaceMarkV2eeoiySbAC_ACtFZ_0(&v58, &v46);
      v44[8] = v54;
      v44[9] = v55;
      v44[10] = v56;
      v44[11] = v57;
      v44[4] = v50;
      v44[5] = v51;
      v44[6] = v52;
      v44[7] = v53;
      v44[0] = v46;
      v44[1] = v47;
      v44[2] = v48;
      v44[3] = v49;
      sub_1B7FD7BE8(v84, v45);
      sub_1B7FD7BE8(v85, v45);
      sub_1B7FD7BE8(&v71, v45);
      sub_1B806FC7C(v44);
      v45[8] = v66;
      v45[9] = v67;
      v45[10] = v68;
      v45[11] = v69;
      v45[4] = v62;
      v45[5] = v63;
      v45[6] = v64;
      v45[7] = v65;
      v45[0] = v58;
      v45[1] = v59;
      v45[2] = v60;
      v45[3] = v61;
      sub_1B806FC7C(v45);
      v54 = __src[8];
      v55 = __src[9];
      v56 = __src[10];
      v57 = __src[11];
      v50 = __src[4];
      v51 = __src[5];
      v52 = __src[6];
      v53 = __src[7];
      v46 = __src[0];
      v47 = __src[1];
      v48 = __src[2];
      v49 = __src[3];
      sub_1B7FB86D4(&v46, &qword_1EBA65D70, &qword_1B80D1BB0);
      if (!MyLocate9PlaceMarkV2eeoiySbAC_ACtFZ_0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    v54 = __src[8];
    v55 = __src[9];
    v56 = __src[10];
    v57 = __src[11];
    v50 = __src[4];
    v51 = __src[5];
    v52 = __src[6];
    v53 = __src[7];
    v46 = __src[0];
    v47 = __src[1];
    v48 = __src[2];
    v49 = __src[3];
    sub_1B7FD7BE8(v84, v45);
    sub_1B7FD7BE8(v85, v45);
    sub_1B7FD7BE8(&v71, v45);
    sub_1B806FC7C(&v46);
LABEL_8:
    memcpy(__dst, __src, sizeof(__dst));
    sub_1B7FB86D4(__dst, &qword_1EBA67218, &unk_1B80DB180);
    return 0;
  }

  __dst[8] = __src[20];
  __dst[9] = __src[21];
  __dst[10] = __src[22];
  __dst[11] = __src[23];
  __dst[4] = __src[16];
  __dst[5] = __src[17];
  __dst[6] = __src[18];
  __dst[7] = __src[19];
  __dst[0] = __src[12];
  __dst[1] = __src[13];
  __dst[2] = __src[14];
  __dst[3] = __src[15];
  if (sub_1B8032DBC(__dst) != 1)
  {
    sub_1B7FD7BE8(v84, &v71);
    sub_1B7FD7BE8(v85, &v71);
    goto LABEL_8;
  }

  v79 = __src[8];
  v80 = __src[9];
  v81 = __src[10];
  v82 = __src[11];
  v75 = __src[4];
  v76 = __src[5];
  v77 = __src[6];
  v78 = __src[7];
  v71 = __src[0];
  v72 = __src[1];
  v73 = __src[2];
  v74 = __src[3];
  sub_1B7FD7BE8(v84, &v58);
  sub_1B7FD7BE8(v85, &v58);
  sub_1B7FB86D4(&v71, &qword_1EBA65D70, &qword_1B80D1BB0);
LABEL_10:
  if (*(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]) && (sub_1B808ADA8(*(a1 + v4[9]), *(a2 + v4[9])) & 1) != 0 && *(a1 + v4[10]) == *(a2 + v4[10]) && *(a1 + v4[11]) == *(a2 + v4[11]) && *(a1 + v4[12]) == *(a2 + v4[12]) && *(a1 + v4[13]) == *(a2 + v4[13]) && *(a1 + v4[14]) == *(a2 + v4[14]) && *(a1 + v4[15]) == *(a2 + v4[15]))
  {
    return *(a1 + v4[16]) == *(a2 + v4[16]);
  }

  return 0;
}

unint64_t sub_1B8097270()
{
  result = qword_1EBA671A8;
  if (!qword_1EBA671A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA671A8);
  }

  return result;
}

unint64_t sub_1B80972C4()
{
  result = qword_1EBA671B8;
  if (!qword_1EBA671B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA671B8);
  }

  return result;
}

unint64_t sub_1B8097318()
{
  result = qword_1EBA671C0;
  if (!qword_1EBA671C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA671C0);
  }

  return result;
}

uint64_t sub_1B809736C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA65E30, &qword_1B80DC700);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B80973BC()
{
  result = qword_1EBA671E0;
  if (!qword_1EBA671E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA671E0);
  }

  return result;
}

unint64_t sub_1B8097410()
{
  result = qword_1EBA671E8;
  if (!qword_1EBA671E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA671E8);
  }

  return result;
}

unint64_t sub_1B8097464()
{
  result = qword_1EBA671F0;
  if (!qword_1EBA671F0)
  {
    type metadata accessor for Location();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA671F0);
  }

  return result;
}

unint64_t sub_1B80974C0()
{
  result = qword_1EBA671F8;
  if (!qword_1EBA671F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA671F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Location.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Location.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B80976A0()
{
  result = qword_1EBA67200;
  if (!qword_1EBA67200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67200);
  }

  return result;
}

unint64_t sub_1B80976F8()
{
  result = qword_1EBA67208;
  if (!qword_1EBA67208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67208);
  }

  return result;
}

unint64_t sub_1B8097750()
{
  result = qword_1EBA67210;
  if (!qword_1EBA67210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67210);
  }

  return result;
}

uint64_t sub_1B80977A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x76654C726F6F6C66 && a2 == 0xEA00000000006C65 || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B80CE030 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_1B80C981C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6465657073 && a2 == 0xE500000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1B80C981C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B80CE050 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000065707954 || (sub_1B80C981C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B80CE070 == a2)
  {

    return 12;
  }

  else
  {
    v5 = sub_1B80C981C();

    if (v5)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t LocationShiftingRequest.__allocating_init(location:)(uint64_t a1)
{
  v3 = sub_1B80C8E9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  v11 = sub_1B80C8E4C();
  v13 = v12;
  (*(v4 + 8))(v7, v3);
  v14 = (v10 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
  *v14 = v11;
  v14[1] = v13;
  sub_1B8083A34(a1, v10 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location);
  return v10;
}

uint64_t LocationShiftingRequest.__allocating_init(identifier:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_1B8083A34(a3, v9 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location);
  v10 = (v9 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
  *v10 = a1;
  v10[1] = a2;
  return v9;
}

uint64_t LocationShiftingRequest.init(identifier:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B8083A34(a3, v3 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location);
  v6 = (v3 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
  *v6 = a1;
  v6[1] = a2;
  return v3;
}

uint64_t LocationShiftingRequest.init(location:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B80C8E9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  v9 = sub_1B80C8E4C();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = (v2 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
  *v12 = v9;
  v12[1] = v11;
  sub_1B8083A34(a1, v2 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location);
  return v2;
}

uint64_t LocationShiftingRequest.deinit()
{
  sub_1B7FD7CBC(v0 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location);
  v1 = *(v0 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier + 8);

  return v0;
}

uint64_t LocationShiftingRequest.__deallocating_deinit()
{
  sub_1B7FD7CBC(v0 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location);
  v1 = *(v0 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier + 8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocationShiftingRequest()
{
  result = qword_1EBA67220;
  if (!qword_1EBA67220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8097FCC()
{
  result = type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t LocationType.description.getter()
{
  v1 = 0x79636167656C2ELL;
  v2 = 0x6576696C2ELL;
  if (*v0 != 2)
  {
    v2 = 0x696C6C657461732ELL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

FindMyLocate::LocationType_optional __swiftcall LocationType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B8098150()
{
  result = qword_1EBA67230;
  if (!qword_1EBA67230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67230);
  }

  return result;
}

unint64_t sub_1B8098260()
{
  result = qword_1EBA67238;
  if (!qword_1EBA67238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA67240, &qword_1B80DB2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67238);
  }

  return result;
}

unint64_t sub_1B80982D4()
{
  v1 = 0x79636167656C2ELL;
  v2 = 0x6576696C2ELL;
  if (*v0 != 2)
  {
    v2 = 0x696C6C657461732ELL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

unint64_t sub_1B8098364()
{
  result = qword_1EBA67248;
  if (!qword_1EBA67248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67248);
  }

  return result;
}

uint64_t MotionActivityState.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x676E696E6E75722ELL;
  v4 = 0x676E696C6379632ELL;
  if (v1 != 4)
  {
    v4 = 0x746F6D6F7475612ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F69746174732ELL;
  if (v1 != 1)
  {
    v5 = 0x676E696B6C61772ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

FindMyLocate::MotionActivityState_optional __swiftcall MotionActivityState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B80984B0()
{
  result = qword_1EBA67250;
  if (!qword_1EBA67250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67250);
  }

  return result;
}

unint64_t sub_1B80985C0()
{
  result = qword_1EBA67258;
  if (!qword_1EBA67258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA67260, &qword_1B80DB440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67258);
  }

  return result;
}

uint64_t sub_1B8098634()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x676E696E6E75722ELL;
  v4 = 0x676E696C6379632ELL;
  if (v1 != 4)
  {
    v4 = 0x746F6D6F7475612ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F69746174732ELL;
  if (v1 != 1)
  {
    v5 = 0x676E696B6C61772ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for MotionActivityState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MotionActivityState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8098850()
{
  result = qword_1EBA67268;
  if (!qword_1EBA67268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67268);
  }

  return result;
}

uint64_t PlaceMark.init(address:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x110uLL);
  v44 = __dst[15];
  v45 = __dst[16];
  v4 = __dst[13];
  v3 = __dst[14];
  v6 = __dst[11];
  v5 = __dst[12];
  v42 = __dst[9];
  v43 = __dst[10];
  v7 = __dst[8];
  v8 = __dst[4];
  v37 = __dst[7];
  v39 = __dst[3];
  v9 = __dst[2];
  if (*(__dst[2] + 16))
  {

    swift_bridgeObjectRetain_n();

    v41 = v9;
    v36 = sub_1B809A010(1, v9);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DD8, &qword_1B80D1EC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1B80D1EB0;
    if (v5)
    {
      v11 = v6;
    }

    else
    {
      v11 = 0;
    }

    if (v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    *(v10 + 32) = v11;
    *(v10 + 40) = v12;
    v41 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DD8, &qword_1B80D1EC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B80D1EB0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    v36 = v13;

    swift_bridgeObjectRetain_n();
  }

  v14 = v7 == 0;
  if (v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v16 = __dst[25];
  v34 = __dst[24];
  v35 = v15;
  if (v14)
  {
    v17 = 0;
  }

  else
  {
    v17 = v37;
  }

  if (v3)
  {
    v18 = v3;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  if (v3)
  {
    v19 = v4;
  }

  else
  {
    v19 = 0;
  }

  v29 = v19;
  v30 = v18;
  if (v8)
  {
    v20 = v8;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  if (v8)
  {
    v21 = v39;
  }

  else
  {
    v21 = 0;
  }

  if (v5)
  {
    v22 = v5;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  if (v5)
  {
    v23 = v6;
  }

  else
  {
    v23 = 0;
  }

  v24 = __dst[27];
  v38 = v17;
  v40 = __dst[26];
  v25 = __dst[29];
  v26 = __dst[31];
  v32 = __dst[30];
  v33 = __dst[28];
  v27 = __dst[33];
  v31 = __dst[32];

  result = sub_1B7FE0150(__dst);
  *a2 = v23;
  a2[1] = v22;
  a2[2] = v44;
  a2[3] = v45;
  a2[4] = v21;
  a2[5] = v20;
  a2[6] = v29;
  a2[7] = v30;
  a2[8] = v42;
  a2[9] = v43;
  a2[10] = v38;
  a2[11] = v35;
  a2[12] = v41;
  a2[13] = v36;
  a2[14] = v34;
  a2[15] = v16;
  a2[16] = v40;
  a2[17] = v24;
  a2[18] = v33;
  a2[19] = v25;
  a2[20] = v32;
  a2[21] = v26;
  a2[22] = v31;
  a2[23] = v27;
  return result;
}

uint64_t PlaceMark.shortDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v26 = *(v0 + 1);
  v3 = v0[4];
  v4 = v0[5];
  v29 = *(v0 + 3);
  v6 = v0[8];
  v5 = v0[9];
  v7 = *(v0 + 10);
  v36 = *(v0 + 9);
  v37 = v7;
  v38 = *(v0 + 11);
  v8 = *(v0 + 6);
  v32 = *(v0 + 5);
  v33 = v8;
  v9 = *(v0 + 8);
  v34 = *(v0 + 7);
  v35 = v9;
  v24 = v1;
  v25 = v2;
  v27 = v3;
  v28 = v4;
  v30 = v6;
  v31 = v5;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  MyLocate9PlaceMarkV2eeoiySbAC_ACtFZ_0 = _s12FindMyLocate9PlaceMarkV2eeoiySbAC_ACtFZ_0(&v24, &v12);
  v39[8] = v20;
  v39[9] = v21;
  v39[10] = v22;
  v39[11] = v23;
  v39[4] = v16;
  v39[5] = v17;
  v39[6] = v18;
  v39[7] = v19;
  v39[0] = v12;
  v39[1] = v13;
  v39[2] = v14;
  v39[3] = v15;
  sub_1B806FC7C(v39);
  if (MyLocate9PlaceMarkV2eeoiySbAC_ACtFZ_0)
  {
    return 10536;
  }

  result = 0;
  if (v5 && v2)
  {
    if (v4)
    {
      v24 = v6;
      v25 = v5;

      MEMORY[0x1B8CB7A40](8236, 0xE200000000000000);
      MEMORY[0x1B8CB7A40](v1, v2);
      MEMORY[0x1B8CB7A40](8236, 0xE200000000000000);
      MEMORY[0x1B8CB7A40](v3, v4);
      return v24;
    }
  }

  return result;
}

uint64_t PlaceMark.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[5];
  v6 = v0[7];
  v18 = v0[4];
  v19 = v0[6];
  v7 = v0[9];
  v8 = v0[11];
  v20 = v0[8];
  v21 = v0[12];
  v22 = v0[10];
  v23 = v0[13];

  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](0xD000000000000014, 0x80000001B80CE0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D98, &qword_1B80DE6E0);
  v9 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v9);

  MEMORY[0x1B8CB7A40](0x74696C61636F6C0ALL, 0xEB00000000203A79);
  v10 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v10);

  MEMORY[0x1B8CB7A40](0x7972746E756F630ALL, 0xEA0000000000203ALL);
  v11 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v11);

  MEMORY[0x1B8CB7A40](0x203A65746174730ALL, 0xE800000000000000);
  v12 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v12);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CD870);
  v13 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v13);

  MEMORY[0x1B8CB7A40](0x4E7465657274730ALL, 0xED0000203A656D61);
  v14 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v14);

  MEMORY[0x1B8CB7A40](0xD000000000000013, 0x80000001B80CE100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DA8, &qword_1B80D1BC0);
  v15 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v15);

  MEMORY[0x1B8CB7A40](0xD000000000000021, 0x80000001B80CE120);
  v16 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v16);

  return 0;
}

uint64_t PlaceMark.locality.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PlaceMark.administrativeArea.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PlaceMark.country.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PlaceMark.stateCode.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t PlaceMark.streetAddress.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t PlaceMark.streetName.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t PlaceMark.coarseAddress.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t PlaceMark.poiAddress.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t PlaceMark.smallAddress.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t PlaceMark.mediumAddress.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t PlaceMark.largeAddress.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

unint64_t sub_1B80991F0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6464416C6C616D73;
    v7 = 0x64416D756964656DLL;
    if (a1 != 10)
    {
      v7 = 0x646441656772616CLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000015;
    v9 = 0x6441657372616F63;
    if (a1 != 7)
    {
      v9 = 0x6572646441696F70;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7974696C61636F6CLL;
    v2 = 0x646F436574617473;
    v3 = 0x6441746565727473;
    if (a1 != 4)
    {
      v3 = 0x614E746565727473;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000012;
    if (a1 != 1)
    {
      v4 = 0x7972746E756F63;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B80993BC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1B80991F0(*a1);
  v5 = v4;
  if (v3 == sub_1B80991F0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B80C981C();
  }

  return v8 & 1;
}

uint64_t sub_1B8099444()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80991F0(v1);
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B80994A8()
{
  sub_1B80991F0(*v0);
  sub_1B80C911C();
}

uint64_t sub_1B80994FC()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80991F0(v1);
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B809955C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B809B8B4();
  *a2 = result;
  return result;
}

unint64_t sub_1B809958C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B80991F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B80995D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B809B8B4();
  *a1 = result;
  return result;
}

uint64_t sub_1B80995FC(uint64_t a1)
{
  v2 = sub_1B809B6E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8099638(uint64_t a1)
{
  v2 = sub_1B809B6E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaceMark.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67270, &qword_1B80DB4F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v79 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1B809B6E0();
  sub_1B80C99BC();
  if (v2)
  {
    v99 = v2;
    v91 = 0;
    v92 = 0;
    v89 = 0;
    v90 = 0;
    v93 = 0uLL;
    v94 = 0uLL;
    v97 = 0;
    v98 = 0;
    v95 = 0;
    v96 = 0;
    v86 = 0;
    v12 = 0;
    v88 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    LOBYTE(v112) = 0;
    *&v85 = sub_1B80C96AC();
    *(&v85 + 1) = v21;
    LOBYTE(v112) = 1;
    *&v84 = sub_1B80C96AC();
    *(&v84 + 1) = v22;
    LOBYTE(v112) = 2;
    v23 = a2;
    v83 = sub_1B80C96AC();
    v81 = v24;
    LOBYTE(v112) = 3;
    v25 = sub_1B80C96AC();
    v27 = v26;
    LOBYTE(v112) = 4;
    v28 = v6;
    v82 = sub_1B80C96AC();
    v86 = v29;
    LOBYTE(v112) = 5;
    v30 = sub_1B80C96AC();
    v99 = 0;
    v88 = v27;
    v32 = v31;
    v97 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
    LOBYTE(v100) = 6;
    sub_1B7FCA738(&qword_1ED8DBB80);
    v33 = v99;
    sub_1B80C96CC();
    v96 = v32;
    if (v33)
    {
      v99 = v33;
      (*(v28 + 8))(v9, v5);
      v91 = 0;
      v92 = 0;
      v89 = 0;
      v90 = 0;
      v93 = 0uLL;
      v94 = 0uLL;
      v98 = 0;
      v95 = 0;
    }

    else
    {
      v34 = v112;
      v35 = *(&v85 + 1);
      v95 = v112;
      if (v112)
      {
        if (*(v112 + 16))
        {

          v98 = sub_1B809A010(1, v34);
        }

        else
        {
          v99 = 0;
          if (v32)
          {

            v36 = sub_1B807D780(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v38 = *(v36 + 2);
            v37 = *(v36 + 3);
            v39 = (v38 + 1);
            if (v38 >= v37 >> 1)
            {
              v98 = (v38 + 1);
              v76 = sub_1B807D780((v37 > 1), v38 + 1, 1, v36);
              v39 = v98;
              v36 = v76;
            }

            v40 = v97;
            *(v36 + 2) = v39;
            v41 = &v36[16 * v38];
            *(v41 + 4) = v40;
            *(v41 + 5) = v32;
            v33 = v99;
            v35 = *(&v85 + 1);
          }

          else
          {
            v36 = MEMORY[0x1E69E7CC0];
          }

          if (v35)
          {
            v42 = v36;

            v98 = v42;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v98 = sub_1B807D780(0, *(v98 + 2) + 1, 1, v98);
            }

            v36 = v98;
            v33 = v99;
            v44 = *(v98 + 2);
            v43 = *(v98 + 3);
            v45 = v44 + 1;
            if (v44 >= v43 >> 1)
            {
              *(&v94 + 1) = v44 + 1;
              v77 = sub_1B807D780((v43 > 1), v44 + 1, 1, v98);
              v45 = *(&v94 + 1);
              v33 = v99;
              v36 = v77;
            }

            *(v36 + 2) = v45;
            v46 = &v36[16 * v44];
            v47 = *(&v85 + 1);
            *(v46 + 4) = v85;
            *(v46 + 5) = v47;
          }

          if (v27)
          {
            v48 = v36;

            v98 = v48;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v98 = sub_1B807D780(0, *(v98 + 2) + 1, 1, v98);
            }

            v36 = v98;
            v33 = v99;
            v50 = *(v98 + 2);
            v49 = *(v98 + 3);
            v51 = v50 + 1;
            if (v50 >= v49 >> 1)
            {
              *(&v94 + 1) = v50 + 1;
              v78 = sub_1B807D780((v49 > 1), v50 + 1, 1, v98);
              v51 = *(&v94 + 1);
              v33 = v99;
              v36 = v78;
            }

            *(v36 + 2) = v51;
            v52 = &v36[16 * v50];
            *(v52 + 4) = v25;
            *(v52 + 5) = v27;
          }

          v98 = v36;
        }
      }

      else
      {
        v98 = 0;
      }

      LOBYTE(v112) = 7;
      v53 = sub_1B80C96AC();
      if (!v33)
      {
        *&v94 = v53;
        *(&v94 + 1) = v54;
        LOBYTE(v112) = 8;
        *&v93 = sub_1B80C96AC();
        *(&v93 + 1) = v55;
        LOBYTE(v112) = 9;
        v90 = sub_1B80C96AC();
        v92 = v56;
        v80 = v25;
        LOBYTE(v112) = 10;
        v57 = sub_1B80C96AC();
        v99 = 0;
        v89 = v57;
        v91 = v58;
        v132 = 11;
        v59 = sub_1B80C96AC();
        v99 = 0;
        v60 = v59;
        v62 = v61;
        (*(v28 + 8))(v9, v5);
        v63 = v85;
        v100 = v85;
        v101 = v84;
        v64 = v81;
        *&v102 = v83;
        *(&v102 + 1) = v81;
        v65 = v88;
        *&v103 = v80;
        *(&v103 + 1) = v88;
        v66 = v86;
        *&v104 = v82;
        *(&v104 + 1) = v86;
        *&v105 = v97;
        *(&v105 + 1) = v96;
        *&v106 = v95;
        *(&v106 + 1) = v98;
        v107 = v94;
        v108 = v93;
        *&v109 = v90;
        *(&v109 + 1) = v92;
        *&v110 = v89;
        *(&v110 + 1) = v91;
        *&v111 = v60;
        *(&v111 + 1) = v62;
        v67 = v104;
        v68 = v105;
        v69 = v94;
        v23[6] = v106;
        v23[7] = v69;
        v23[4] = v67;
        v23[5] = v68;
        v70 = v100;
        v71 = v101;
        v72 = v103;
        v23[2] = v102;
        v23[3] = v72;
        *v23 = v70;
        v23[1] = v71;
        v73 = v108;
        v74 = v109;
        v75 = v111;
        v23[10] = v110;
        v23[11] = v75;
        v23[8] = v73;
        v23[9] = v74;
        sub_1B806FB80(&v100, &v112);
        __swift_destroy_boxed_opaque_existential_0(v87);
        v112 = v63;
        v113 = v84;
        v114 = v83;
        v115 = v64;
        v116 = v80;
        v117 = v65;
        v118 = v82;
        v119 = v66;
        v120 = v97;
        v121 = v96;
        v122 = v95;
        v123 = v98;
        v124 = v94;
        v125 = v93;
        v126 = v90;
        v127 = v92;
        v128 = v89;
        v129 = v91;
        v130 = v60;
        v131 = v62;
        return sub_1B806FC7C(&v112);
      }

      v99 = v33;
      (*(v28 + 8))(v9, v5);
      v91 = 0;
      v92 = 0;
      v89 = 0;
      v90 = 0;
      v93 = 0uLL;
      v94 = 0uLL;
    }

    v18 = *(&v85 + 1);
    v19 = v85;
    v16 = *(&v84 + 1);
    v17 = v84;
    v14 = v81;
    v13 = v25;
    v15 = v83;
    v12 = v82;
  }

  __swift_destroy_boxed_opaque_existential_0(v87);
  *&v112 = v19;
  *(&v112 + 1) = v18;
  *&v113 = v17;
  *(&v113 + 1) = v16;
  v114 = v15;
  v115 = v14;
  v116 = v13;
  v117 = v88;
  v118 = v12;
  v119 = v86;
  v120 = v97;
  v121 = v96;
  v122 = v95;
  v123 = v98;
  v124 = v94;
  v125 = v93;
  v126 = v90;
  v127 = v92;
  v128 = v89;
  v129 = v91;
  v131 = 0;
  v130 = 0;
  return sub_1B806FC7C(&v112);
}

uint64_t sub_1B809A010(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    v3 = result;
    if (result)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2 + 40;
        v33 = *(a2 + 16);
        v29 = v4 - 1;
        v8 = MEMORY[0x1E69E7CC0];
        v32 = MEMORY[0x1E69E7CC0];
        v30 = a2 + 40;
        while (1)
        {
          v31 = v6;
          v9 = (v7 + 16 * v5);
          while (1)
          {
            if (v5 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            v10 = *(v9 - 1);
            v11 = *v9;
            v12 = v5 + 1;
            v13 = *(v8 + 16);
            if (v13 >= v3)
            {
              break;
            }

            v14 = *v9;

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1B7FCF988(0, v13 + 1, 1);
            }

            v16 = *(v8 + 16);
            v15 = *(v8 + 24);
            if (v16 >= v15 >> 1)
            {
              result = sub_1B7FCF988((v15 > 1), v16 + 1, 1);
            }

            *(v8 + 16) = v16 + 1;
            v17 = v8 + 16 * v16;
            *(v17 + 32) = v10;
            *(v17 + 40) = v11;
            v9 += 2;
            v5 = v12;
            if (v33 == v12)
            {
              goto LABEL_29;
            }
          }

          if (v31 >= v13)
          {
            goto LABEL_33;
          }

          v18 = v8 + 16 * v31;
          v19 = *(v18 + 40);
          v27 = *(v18 + 32);

          v28 = v19;

          v20 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B7FCF988(0, *(v32 + 16) + 1, 1);
            v20 = v32;
          }

          v22 = *(v20 + 16);
          v21 = *(v20 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1B7FCF988((v21 > 1), v22 + 1, 1);
            v20 = v32;
          }

          *(v20 + 16) = v22 + 1;
          v32 = v20;
          v23 = v20 + 16 * v22;
          *(v23 + 32) = v27;
          *(v23 + 40) = v28;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B80B5740(v8);
            v8 = result;
          }

          v7 = v30;
          if (v31 >= *(v8 + 16))
          {
            goto LABEL_34;
          }

          v24 = v8 + 16 * v31;
          v25 = *(v24 + 40);
          *(v24 + 32) = v10;
          *(v24 + 40) = v11;

          if ((v31 + 1) < v3)
          {
            v6 = v31 + 1;
          }

          else
          {
            v6 = 0;
          }

          if (v29 == v5++)
          {
            goto LABEL_29;
          }
        }
      }

      v32 = MEMORY[0x1E69E7CC0];
LABEL_29:

      return v32;
    }

    return v2;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t PlaceMark.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67280, &qword_1B80DB4F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v28 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v38 = v1[3];
  v39 = v10;
  v11 = v1[4];
  v36 = v1[5];
  v37 = v11;
  v12 = v1[6];
  v34 = v1[7];
  v35 = v12;
  v13 = v1[8];
  v32 = v1[9];
  v33 = v13;
  v14 = v1[11];
  v30 = v1[10];
  v31 = v14;
  v15 = v1[12];
  v16 = v1[14];
  v28[9] = v1[15];
  v29 = v15;
  v17 = v1[16];
  v28[7] = v1[17];
  v28[8] = v16;
  v18 = v1[18];
  v28[5] = v1[19];
  v28[6] = v17;
  v19 = v1[21];
  v28[2] = v1[20];
  v28[3] = v19;
  v28[4] = v18;
  v20 = v1[23];
  v28[1] = v1[22];
  v21 = a1[3];
  v22 = a1[4];
  v23 = a1;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1(v23, v21);
  sub_1B809B6E0();
  sub_1B80C99DC();
  LOBYTE(v42) = 0;
  v26 = v40;
  sub_1B80C975C();
  if (!v26)
  {
    v40 = v20;
    LOBYTE(v42) = 1;
    sub_1B80C975C();
    LOBYTE(v42) = 2;
    sub_1B80C975C();
    LOBYTE(v42) = 3;
    sub_1B80C975C();
    LOBYTE(v42) = 4;
    sub_1B80C975C();
    LOBYTE(v42) = 5;
    sub_1B80C975C();
    v42 = v29;
    v41 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
    sub_1B7FCA738(&qword_1ED8DBBF8);
    sub_1B80C977C();
    LOBYTE(v42) = 7;
    sub_1B80C975C();
    LOBYTE(v42) = 8;
    sub_1B80C975C();
    LOBYTE(v42) = 9;
    sub_1B80C975C();
    LOBYTE(v42) = 10;
    sub_1B80C975C();
    LOBYTE(v42) = 11;
    sub_1B80C975C();
  }

  return (*(v4 + 8))(v7, v25);
}

double PlaceMark.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 PlaceMark.init(locality:administrativeArea:country:stateCode:streetAddress:streetName:formattedAddressLines:formattedAddressLinesWithoutCountry:coarseAddress:poiAddress:smallAddress:mediumAddress:largeAddress:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __n128 a16, uint64_t a17, uint64_t a18)
{
  result = a16;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 160) = a16;
  *(a9 + 176) = a17;
  *(a9 + 184) = a18;
  return result;
}

uint64_t PlaceMark.init(locality:administrativeArea:country:state:streetAddress:streetName:formattedAddress:coarseAddress:poiAddress:smallAddress:mediumAddress:largeAddress:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v30 = a24;
  v31 = a14;
  if (*(a14 + 16))
  {

    result = sub_1B809A010(1, a14);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DD8, &qword_1B80D1EC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1B80DB4E0;
    *(v33 + 32) = a12;
    *(v33 + 40) = a13;
    *(v33 + 48) = a1;
    *(v33 + 56) = a2;
    *(v33 + 64) = a7;
    *(v33 + 72) = a8;
    *(v33 + 80) = a5;
    *(v33 + 88) = a6;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    result = swift_allocObject();
    *(result + 16) = xmmword_1B80D2130;
    *(result + 32) = a12;
    *(result + 40) = a13;
    *(result + 48) = a1;
    *(result + 56) = a2;
    *(result + 64) = a7;
    *(result + 72) = a8;
    v31 = v33;
    v30 = a24;
  }

  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  a9[10] = a12;
  a9[11] = a13;
  a9[12] = v31;
  a9[13] = result;
  a9[14] = a15;
  a9[15] = a16;
  a9[16] = a17;
  a9[17] = a18;
  a9[18] = a19;
  a9[19] = a20;
  a9[20] = a21;
  a9[21] = a22;
  a9[22] = a23;
  a9[23] = v30;
  return result;
}

uint64_t PlaceMark.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v20 = v0[4];
  v21 = v0[6];
  v4 = v0[9];
  v22 = v0[8];
  v23 = v0[10];
  v5 = v0[11];
  v29 = v0[7];
  v30 = v0[12];
  v31 = v0[13];
  v32 = v0[15];
  v24 = v0[14];
  v25 = v0[16];
  v6 = v0[17];
  v33 = v0[19];
  v26 = v0[18];
  v27 = v0[20];
  v34 = v0[21];
  v28 = v0[22];
  v35 = v0[23];
  if (v0[1])
  {
    v7 = *v0;
    sub_1B80C995C();
    sub_1B80C911C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B80C995C();
    if (v2)
    {
LABEL_3:
      sub_1B80C995C();
      sub_1B80C911C();
      v8 = v29;
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  sub_1B80C995C();
  v8 = v29;
  if (v3)
  {
LABEL_4:
    sub_1B80C995C();
    sub_1B80C911C();
    if (v8)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  sub_1B80C995C();
  if (v8)
  {
LABEL_5:
    sub_1B80C995C();
    sub_1B80C911C();
    if (v4)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  sub_1B80C995C();
  if (v4)
  {
LABEL_6:
    sub_1B80C995C();
    sub_1B80C911C();
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  sub_1B80C995C();
  if (v5)
  {
LABEL_7:
    sub_1B80C995C();
    sub_1B80C911C();
    v9 = v30;
    if (v30)
    {
      goto LABEL_8;
    }

LABEL_23:
    sub_1B80C995C();
    v14 = v31;
    if (v31)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_22:
  sub_1B80C995C();
  v9 = v30;
  if (!v30)
  {
    goto LABEL_23;
  }

LABEL_8:
  sub_1B80C995C();
  MEMORY[0x1B8CB8250](*(v9 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      sub_1B80C911C();

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  v14 = v31;
  if (v31)
  {
LABEL_12:
    sub_1B80C995C();
    MEMORY[0x1B8CB8250](*(v14 + 16));
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;

        sub_1B80C911C();

        v16 += 2;
        --v15;
      }

      while (v15);
    }

    if (v32)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_24:
  sub_1B80C995C();
  if (v32)
  {
LABEL_16:
    sub_1B80C995C();
    sub_1B80C911C();
    goto LABEL_26;
  }

LABEL_25:
  sub_1B80C995C();
LABEL_26:
  if (v6)
  {
    sub_1B80C995C();
    sub_1B80C911C();
    if (v33)
    {
      goto LABEL_28;
    }
  }

  else
  {
    sub_1B80C995C();
    if (v33)
    {
LABEL_28:
      sub_1B80C995C();
      sub_1B80C911C();
      if (v34)
      {
        goto LABEL_29;
      }

LABEL_35:
      sub_1B80C995C();
      if (v35)
      {
        goto LABEL_30;
      }

      return sub_1B80C995C();
    }
  }

  sub_1B80C995C();
  if (!v34)
  {
    goto LABEL_35;
  }

LABEL_29:
  sub_1B80C995C();
  sub_1B80C911C();
  if (!v35)
  {
    return sub_1B80C995C();
  }

LABEL_30:
  sub_1B80C995C();

  return sub_1B80C911C();
}

uint64_t PlaceMark.hashValue.getter()
{
  sub_1B80C993C();
  PlaceMark.hash(into:)();
  return sub_1B80C997C();
}

uint64_t sub_1B809AC90()
{
  sub_1B80C993C();
  PlaceMark.hash(into:)();
  return sub_1B80C997C();
}

uint64_t sub_1B809ACD4()
{
  sub_1B80C993C();
  PlaceMark.hash(into:)();
  return sub_1B80C997C();
}

BOOL _s12FindMyLocate9PlaceMarkV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v241 = a1[2];
  v231 = a1[4];
  v4 = a1[6];
  v251 = a1[5];
  v254 = a1[3];
  v233 = a1[7];
  v222 = a1[8];
  v229 = a1[9];
  v219 = a1[10];
  v5 = a1[12];
  v225 = a1[11];
  v7 = a1[13];
  v6 = a1[14];
  v9 = a1[15];
  v8 = a1[16];
  v10 = a1[17];
  v11 = a1[18];
  v12 = a1[19];
  v13 = a1[20];
  v15 = a1[21];
  v14 = a1[22];
  v16 = a1[23];
  v17 = a2[1];
  v234 = a2[2];
  v18 = a2[3];
  v230 = a2[4];
  v249 = a2[5];
  v227 = a2[6];
  v232 = a2[7];
  v223 = a2[8];
  v228 = a2[9];
  v221 = a2[10];
  v224 = a2[11];
  v220 = a2[12];
  v20 = a2[13];
  v19 = a2[14];
  v22 = a2[15];
  v21 = a2[16];
  v23 = a2[17];
  v24 = a2[18];
  v25 = a2[19];
  v26 = a2[20];
  v27 = a2[21];
  v28 = a2[22];
  v29 = a2[23];
  if (v3)
  {
    if (!v17)
    {
      return 0;
    }

    v226 = a1[6];
    if (*a1 != *a2 || v3 != v17)
    {
      v151 = a1[16];
      v158 = a1[13];
      v143 = a1[21];
      v144 = a2[20];
      v200 = a2[22];
      v210 = a2[21];
      v183 = a1[14];
      v191 = a1[20];
      v141 = a1[23];
      v142 = a2[23];
      v165 = a2[14];
      v30 = a1[22];
      v180 = a1[15];
      v31 = a1[18];
      v32 = a1[19];
      v33 = a2[19];
      v145 = a1[12];
      v34 = a2[18];
      v35 = a1[17];
      v36 = a2[17];
      v37 = a2[16];
      v38 = sub_1B80C981C();
      v21 = v37;
      v23 = v36;
      v10 = v35;
      v24 = v34;
      v5 = v145;
      v8 = v151;
      v25 = v33;
      v12 = v32;
      v11 = v31;
      v9 = v180;
      v6 = v183;
      v14 = v30;
      v7 = v158;
      v19 = v165;
      v16 = v141;
      v29 = v142;
      v13 = v191;
      v28 = v200;
      v15 = v143;
      v26 = v144;
      v27 = v210;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v226 = a1[6];
    if (v17)
    {
      return 0;
    }
  }

  if (v254)
  {
    if (!v18)
    {
      return 0;
    }

    if (v241 != v234 || v254 != v18)
    {
      v152 = v8;
      v255 = v14;
      v39 = v11;
      v201 = v28;
      v211 = v27;
      v40 = v12;
      v192 = v13;
      v41 = v25;
      v146 = v5;
      v42 = v16;
      v173 = v22;
      v43 = v15;
      v44 = v29;
      v242 = v24;
      v159 = v7;
      v166 = v19;
      v45 = v26;
      v46 = v10;
      v184 = v6;
      v47 = v23;
      v235 = v21;
      v48 = sub_1B80C981C();
      v21 = v235;
      v24 = v242;
      v23 = v47;
      v6 = v184;
      v10 = v46;
      v26 = v45;
      v7 = v159;
      v19 = v166;
      v29 = v44;
      v15 = v43;
      v22 = v173;
      v16 = v42;
      v5 = v146;
      v8 = v152;
      v25 = v41;
      v13 = v192;
      v28 = v201;
      v12 = v40;
      v27 = v211;
      v11 = v39;
      v14 = v255;
      if ((v48 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v251)
  {
    v49 = v226;
    if (!v249)
    {
      return 0;
    }

    if (v231 != v230 || v251 != v249)
    {
      v153 = v8;
      v256 = v14;
      v50 = v11;
      v202 = v28;
      v212 = v27;
      v51 = v12;
      v193 = v13;
      v52 = v25;
      v147 = v5;
      v53 = v16;
      v174 = v22;
      v54 = v15;
      v55 = v29;
      v243 = v24;
      v160 = v7;
      v167 = v19;
      v56 = v26;
      v57 = v10;
      v185 = v6;
      v58 = v23;
      v236 = v21;
      v59 = sub_1B80C981C();
      v49 = v226;
      v21 = v236;
      v24 = v243;
      v23 = v58;
      v6 = v185;
      v10 = v57;
      v26 = v56;
      v7 = v160;
      v19 = v167;
      v29 = v55;
      v15 = v54;
      v22 = v174;
      v16 = v53;
      v5 = v147;
      v8 = v153;
      v25 = v52;
      v13 = v193;
      v28 = v202;
      v12 = v51;
      v27 = v212;
      v11 = v50;
      v14 = v256;
      if ((v59 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v49 = v226;
    if (v249)
    {
      return 0;
    }
  }

  if (v233)
  {
    if (!v232)
    {
      return 0;
    }

    if (v49 != v227 || v233 != v232)
    {
      v154 = v8;
      v257 = v14;
      v60 = v11;
      v203 = v28;
      v213 = v27;
      v61 = v12;
      v194 = v13;
      v62 = v25;
      v148 = v5;
      v63 = v16;
      v175 = v22;
      v64 = v15;
      v65 = v29;
      v244 = v24;
      v161 = v7;
      v168 = v19;
      v66 = v26;
      v67 = v10;
      v186 = v6;
      v68 = v23;
      v237 = v21;
      v69 = sub_1B80C981C();
      v21 = v237;
      v24 = v244;
      v23 = v68;
      v6 = v186;
      v10 = v67;
      v26 = v66;
      v7 = v161;
      v19 = v168;
      v29 = v65;
      v15 = v64;
      v22 = v175;
      v16 = v63;
      v5 = v148;
      v8 = v154;
      v25 = v62;
      v13 = v194;
      v28 = v203;
      v12 = v61;
      v27 = v213;
      v11 = v60;
      v14 = v257;
      if ((v69 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v232)
  {
    return 0;
  }

  if (v229)
  {
    if (!v228)
    {
      return 0;
    }

    if (v222 != v223 || v229 != v228)
    {
      v155 = v8;
      v258 = v14;
      v70 = v11;
      v204 = v28;
      v214 = v27;
      v71 = v12;
      v195 = v13;
      v72 = v25;
      v149 = v5;
      v73 = v16;
      v176 = v22;
      v74 = v15;
      v75 = v29;
      v245 = v24;
      v162 = v7;
      v169 = v19;
      v76 = v26;
      v77 = v10;
      v187 = v6;
      v78 = v23;
      v238 = v21;
      v79 = sub_1B80C981C();
      v21 = v238;
      v24 = v245;
      v23 = v78;
      v6 = v187;
      v10 = v77;
      v26 = v76;
      v7 = v162;
      v19 = v169;
      v29 = v75;
      v15 = v74;
      v22 = v176;
      v16 = v73;
      v5 = v149;
      v8 = v155;
      v25 = v72;
      v13 = v195;
      v28 = v204;
      v12 = v71;
      v27 = v214;
      v11 = v70;
      v14 = v258;
      if ((v79 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v228)
  {
    return 0;
  }

  if (v225)
  {
    if (!v224)
    {
      return 0;
    }

    if (v219 != v221 || v225 != v224)
    {
      v156 = v8;
      v259 = v14;
      v80 = v11;
      v205 = v28;
      v215 = v27;
      v81 = v12;
      v196 = v13;
      v82 = v25;
      v150 = v5;
      v83 = v16;
      v177 = v22;
      v84 = v15;
      v85 = v29;
      v246 = v24;
      v163 = v7;
      v170 = v19;
      v86 = v26;
      v87 = v10;
      v188 = v6;
      v88 = v23;
      v239 = v21;
      v89 = sub_1B80C981C();
      v21 = v239;
      v24 = v246;
      v23 = v88;
      v6 = v188;
      v10 = v87;
      v26 = v86;
      v7 = v163;
      v19 = v170;
      v29 = v85;
      v15 = v84;
      v22 = v177;
      v16 = v83;
      v5 = v150;
      v8 = v156;
      v25 = v82;
      v13 = v196;
      v28 = v205;
      v12 = v81;
      v27 = v215;
      v11 = v80;
      v14 = v259;
      if ((v89 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v224)
  {
    return 0;
  }

  if (v5)
  {
    if (!v220)
    {
      return 0;
    }

    v90 = v5;
    v260 = v14;
    v91 = v11;
    v250 = v12;
    v197 = v13;
    v206 = v28;
    v92 = v25;
    v93 = v16;
    v178 = v22;
    v94 = v15;
    v95 = v29;
    v247 = v24;
    v164 = v7;
    v171 = v19;
    v96 = v26;
    v97 = v8;
    v189 = v6;
    v98 = v10;
    v252 = v23;
    v181 = v9;
    v99 = v21;
    v100 = sub_1B808ADA8(v90, v220);
    v21 = v99;
    v12 = v250;
    v23 = v252;
    v10 = v98;
    v9 = v181;
    v6 = v189;
    v8 = v97;
    v26 = v96;
    v7 = v164;
    v19 = v171;
    v24 = v247;
    v29 = v95;
    v15 = v94;
    v22 = v178;
    v16 = v93;
    v25 = v92;
    v13 = v197;
    v28 = v206;
    v11 = v91;
    v14 = v260;
    if ((v100 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v220)
  {
    return 0;
  }

  if (v7)
  {
    if (!v20)
    {
      return 0;
    }

    v101 = v7;
    v261 = v14;
    v102 = v11;
    v207 = v28;
    v216 = v27;
    v103 = v12;
    v198 = v13;
    v104 = v25;
    v105 = v16;
    v179 = v22;
    v106 = v15;
    v107 = v29;
    v248 = v24;
    v108 = v26;
    v172 = v19;
    v109 = v8;
    v190 = v6;
    v110 = v10;
    v253 = v23;
    v182 = v9;
    v111 = v21;
    v112 = sub_1B808ADA8(v101, v20);
    v21 = v111;
    v23 = v253;
    v14 = v261;
    v10 = v110;
    v9 = v182;
    v6 = v190;
    v8 = v109;
    v26 = v108;
    v24 = v248;
    v29 = v107;
    v15 = v106;
    v19 = v172;
    v22 = v179;
    v16 = v105;
    v25 = v104;
    v13 = v198;
    v28 = v207;
    v12 = v103;
    v27 = v216;
    v11 = v102;
    if ((v112 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v9)
  {
    if (!v22)
    {
      return 0;
    }

    if (v6 != v19 || v9 != v22)
    {
      v157 = v8;
      v262 = v14;
      v113 = v11;
      v208 = v28;
      v217 = v27;
      v114 = v12;
      v199 = v13;
      v115 = v25;
      v116 = v16;
      v117 = v15;
      v118 = v29;
      v119 = v24;
      v120 = v26;
      v121 = v10;
      v122 = v23;
      v240 = v21;
      v123 = sub_1B80C981C();
      v21 = v240;
      v23 = v122;
      v10 = v121;
      v8 = v157;
      v26 = v120;
      v24 = v119;
      v29 = v118;
      v15 = v117;
      v16 = v116;
      v25 = v115;
      v13 = v199;
      v28 = v208;
      v12 = v114;
      v27 = v217;
      v11 = v113;
      v14 = v262;
      if ((v123 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v10)
  {
    if (!v23)
    {
      return 0;
    }

    if (v8 != v21 || v10 != v23)
    {
      v124 = v14;
      v125 = v11;
      v209 = v28;
      v218 = v27;
      v126 = v12;
      v127 = v13;
      v128 = v25;
      v129 = v16;
      v130 = v15;
      v131 = v29;
      v132 = v24;
      v133 = v26;
      v134 = sub_1B80C981C();
      v26 = v133;
      v24 = v132;
      v29 = v131;
      v15 = v130;
      v16 = v129;
      v25 = v128;
      v13 = v127;
      v12 = v126;
      v28 = v209;
      v27 = v218;
      v11 = v125;
      v14 = v124;
      if ((v134 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v23)
  {
    return 0;
  }

  v135 = v26;
  if (v12)
  {
    if (!v25)
    {
      return 0;
    }

    v136 = v15;
    v137 = v29;
    v138 = v16;
    v139 = v14;
    if ((v11 != v24 || v12 != v25) && (sub_1B80C981C() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v136 = v15;
    v137 = v29;
    v138 = v16;
    v139 = v14;
    if (v25)
    {
      return 0;
    }
  }

  if (v136)
  {
    if (!v27 || (v13 != v135 || v136 != v27) && (sub_1B80C981C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  if (v138)
  {
    return v137 && (v139 == v28 && v138 == v137 || (sub_1B80C981C() & 1) != 0);
  }

  return !v137;
}

unint64_t sub_1B809B6E0()
{
  result = qword_1EBA67278;
  if (!qword_1EBA67278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67278);
  }

  return result;
}

unint64_t sub_1B809B738()
{
  result = qword_1EBA67288;
  if (!qword_1EBA67288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67288);
  }

  return result;
}

unint64_t sub_1B809B7B0()
{
  result = qword_1EBA67290;
  if (!qword_1EBA67290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67290);
  }

  return result;
}

unint64_t sub_1B809B808()
{
  result = qword_1EBA67298;
  if (!qword_1EBA67298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67298);
  }

  return result;
}

unint64_t sub_1B809B860()
{
  result = qword_1EBA672A0;
  if (!qword_1EBA672A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA672A0);
  }

  return result;
}

uint64_t sub_1B809B8B4()
{
  v0 = sub_1B80C967C();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t GroupID.rawValue.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x46746C7561666564;
  }
}

uint64_t ClientOrigin.description.getter()
{
  v1 = 0x6567617373656D2ELL;
  if (*v0 != 1)
  {
    v1 = 0x726568746F2ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x41794D646E69662ELL;
  }
}

uint64_t sub_1B809B9E4(uint64_t a1)
{
  v2 = sub_1B7FC87B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B809BA20(uint64_t a1)
{
  v2 = sub_1B7FC87B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B809BA5C(uint64_t a1)
{
  v2 = sub_1B7FCF568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B809BA98(uint64_t a1)
{
  v2 = sub_1B7FCF568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B809BAD4(uint64_t a1)
{
  v2 = sub_1B809BF84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B809BB10(uint64_t a1)
{
  v2 = sub_1B809BF84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B809BB4C(uint64_t a1)
{
  v2 = sub_1B809BF30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B809BB88(uint64_t a1)
{
  v2 = sub_1B809BF30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientOrigin.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672A8, &qword_1B80DB800);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672B0, &qword_1B80DB808);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672B8, &qword_1B80DB810);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672C0, &qword_1B80DB818);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FC87B0();
  sub_1B80C99DC();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1B809BF84();
      v12 = v26;
      sub_1B80C974C();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1B809BF30();
      v12 = v29;
      sub_1B80C974C();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1B7FCF568();
    sub_1B80C974C();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1B809BF30()
{
  result = qword_1ED8DC478;
  if (!qword_1ED8DC478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC478);
  }

  return result;
}

unint64_t sub_1B809BF84()
{
  result = qword_1ED8DC368;
  if (!qword_1ED8DC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC368);
  }

  return result;
}

uint64_t ClientOrigin.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t sub_1B809C064(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x80000001B80CB3E0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001B80CB3E0;
  }

  else
  {
    v6 = 0x80000001B80CB400;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x46746C7561666564;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEA0000000000464DLL;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x80000001B80CB400;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x46746C7561666564;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA0000000000464DLL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B80C981C();
  }

  return v11 & 1;
}

uint64_t sub_1B809C144()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B809C1F8()
{
  *v0;
  *v0;
  sub_1B80C911C();
}

void sub_1B809C298(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000464DLL;
  v4 = 0x80000001B80CB3E0;
  v5 = 0xD000000000000013;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001B80CB400;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x46746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t RequestOrigin.contextBundleApp.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RequestOrigin.description.getter()
{
  v1 = *v0;
  v3 = v0[1];
  v2 = v0[2];
  v4 = v0[3];

  sub_1B80C952C();

  v5 = 0xEC00000070704173;
  v6 = 0x6567617373656D2ELL;
  if (v1 != 1)
  {
    v6 = 0x726568746F2ELL;
    v5 = 0xE600000000000000;
  }

  if (v1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x41794D646E69662ELL;
  }

  if (v1)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xEA00000000007070;
  }

  MEMORY[0x1B8CB7A40](v7, v8);

  MEMORY[0x1B8CB7A40](0x203A64697020, 0xE600000000000000);
  v9 = sub_1B80C97FC();
  MEMORY[0x1B8CB7A40](v9);

  MEMORY[0x1B8CB7A40](0x49656C646E756220, 0xEB00000000203A44);
  if (v4)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0;
  }

  if (!v4)
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x1B8CB7A40](v10, v4);

  MEMORY[0x1B8CB7A40](62, 0xE100000000000000);
  return 0x3A6E696769726F3CLL;
}

uint64_t sub_1B809C530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B809D210(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B809C558(uint64_t a1)
{
  v2 = sub_1B7FCFAAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B809C594(uint64_t a1)
{
  v2 = sub_1B7FCFAAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RequestOrigin.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672F0, &qword_1B80DB848);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[2] = *(v1 + 2);
  v13[3] = v10;
  v13[1] = *(v1 + 3);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FCFAAC();
  sub_1B80C99DC();
  v17 = v9;
  v16 = 0;
  sub_1B808A22C();
  sub_1B80C97DC();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_1B80C97BC();
  v14 = 2;
  sub_1B80C975C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t RequestOrigin.hash(into:)()
{
  v2 = v0[1];
  v1 = v0[2];
  v3 = v0[3];
  MEMORY[0x1B8CB8250](*v0);
  MEMORY[0x1B8CB8250](v2);
  if (!v3)
  {
    return sub_1B80C995C();
  }

  sub_1B80C995C();

  return sub_1B80C911C();
}

uint64_t RequestOrigin.hashValue.getter()
{
  v1 = *v0;
  v3 = v0[1];
  v2 = v0[2];
  v4 = v0[3];
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  MEMORY[0x1B8CB8250](v3);
  sub_1B80C995C();
  if (v4)
  {
    sub_1B80C911C();
  }

  return sub_1B80C997C();
}

uint64_t sub_1B809C8DC()
{
  v1 = *v0;
  v3 = v0[1];
  v2 = v0[2];
  v4 = v0[3];
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  MEMORY[0x1B8CB8250](v3);
  sub_1B80C995C();
  if (v4)
  {
    sub_1B80C911C();
  }

  return sub_1B80C997C();
}

uint64_t sub_1B809C974()
{
  v2 = v0[1];
  v1 = v0[2];
  v3 = v0[3];
  MEMORY[0x1B8CB8250](*v0);
  MEMORY[0x1B8CB8250](v2);
  if (!v3)
  {
    return sub_1B80C995C();
  }

  sub_1B80C995C();

  return sub_1B80C911C();
}

uint64_t sub_1B809C9F8()
{
  v1 = *v0;
  v3 = v0[1];
  v2 = v0[2];
  v4 = v0[3];
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  MEMORY[0x1B8CB8250](v3);
  sub_1B80C995C();
  if (v4)
  {
    sub_1B80C911C();
  }

  return sub_1B80C997C();
}

uint64_t _s12FindMyLocate13RequestOriginV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_1B80C981C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1B809CC38()
{
  result = qword_1EBA67300;
  if (!qword_1EBA67300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67300);
  }

  return result;
}

unint64_t sub_1B809CC90()
{
  result = qword_1ED8DC400;
  if (!qword_1ED8DC400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC400);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B809CCF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B809CD4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1B809CDF4()
{
  result = qword_1EBA67308;
  if (!qword_1EBA67308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67308);
  }

  return result;
}

unint64_t sub_1B809CE4C()
{
  result = qword_1EBA67310;
  if (!qword_1EBA67310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67310);
  }

  return result;
}

unint64_t sub_1B809CEA4()
{
  result = qword_1ED8DCA20;
  if (!qword_1ED8DCA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA20);
  }

  return result;
}

unint64_t sub_1B809CEFC()
{
  result = qword_1ED8DCA28;
  if (!qword_1ED8DCA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA28);
  }

  return result;
}

unint64_t sub_1B809CF54()
{
  result = qword_1ED8DCA70;
  if (!qword_1ED8DCA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA70);
  }

  return result;
}

unint64_t sub_1B809CFAC()
{
  result = qword_1ED8DCA78[0];
  if (!qword_1ED8DCA78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8DCA78);
  }

  return result;
}

unint64_t sub_1B809D004()
{
  result = qword_1ED8DCA38;
  if (!qword_1ED8DCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA38);
  }

  return result;
}

unint64_t sub_1B809D05C()
{
  result = qword_1ED8DCA40;
  if (!qword_1ED8DCA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA40);
  }

  return result;
}

unint64_t sub_1B809D0B4()
{
  result = qword_1ED8DCA48;
  if (!qword_1ED8DCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA48);
  }

  return result;
}

unint64_t sub_1B809D10C()
{
  result = qword_1ED8DCA50;
  if (!qword_1ED8DCA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA50);
  }

  return result;
}

unint64_t sub_1B809D164()
{
  result = qword_1ED8DCA58;
  if (!qword_1ED8DCA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA58);
  }

  return result;
}

unint64_t sub_1B809D1BC()
{
  result = qword_1ED8DCA60;
  if (!qword_1ED8DCA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA60);
  }

  return result;
}

uint64_t sub_1B809D210(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696769726FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6950746E65696C63 && a2 == 0xE900000000000064 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B80CE170 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

uint64_t sub_1B809D334()
{
  sub_1B80C911C();
}

FindMyLocate::SecureLocationsStewie::ServiceState_optional __swiftcall SecureLocationsStewie.ServiceState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SecureLocationsStewie.PublishResult.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - v3;
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](0x6C6275507473616CLL, 0xEF203A6465687369);
  sub_1B7FD6818(v0, v4);
  v5 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v5);

  MEMORY[0x1B8CB7A40](0xD000000000000016, 0x80000001B80CCFD0);
  v6 = *(v0 + *(type metadata accessor for SecureLocationsStewie.PublishResult() + 20));
  sub_1B80C938C();
  return v8[0];
}

uint64_t type metadata accessor for SecureLocationsStewie.PublishResult()
{
  result = qword_1EBA67348;
  if (!qword_1EBA67348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SecureLocationsStewie.PublishResult.init(lastPublished:nextAllowedPublish:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_1B805DC34(a1, a2);
  result = type metadata accessor for SecureLocationsStewie.PublishResult();
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t SecureLocationsStewie.PublishResult.init(lastPublished:nextAllowedPublish:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B7FD6818(a1, a3);
  sub_1B80C8DDC();
  v7 = v6;
  v8 = sub_1B80C8E2C();
  (*(*(v8 - 8) + 8))(a2, v8);
  sub_1B7FB86D4(a1, &unk_1EBA65FD0, &unk_1B80D1920);
  result = type metadata accessor for SecureLocationsStewie.PublishResult();
  *(a3 + *(result + 20)) = v7;
  return result;
}

unint64_t sub_1B809D76C()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x6C6275507473616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1B809D7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6275507473616CLL && a2 == 0xED00006465687369;
  if (v6 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B80CE190 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B809D8A4(uint64_t a1)
{
  v2 = sub_1B809E40C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B809D8E0(uint64_t a1)
{
  v2 = sub_1B809E40C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SecureLocationsStewie.PublishResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67320, &qword_1B80DBFC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B809E40C();
  sub_1B80C99DC();
  v13[15] = 0;
  sub_1B80C8E2C();
  sub_1B7FBAD64(&qword_1ED8DC390);
  sub_1B80C977C();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for SecureLocationsStewie.PublishResult() + 20));
    v13[14] = 1;
    sub_1B80C97AC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SecureLocationsStewie.PublishResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67330, &qword_1B80DBFD0);
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for SecureLocationsStewie.PublishResult();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B809E40C();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v14;
  v17 = v23;
  sub_1B80C8E2C();
  v26 = 0;
  sub_1B7FBAD64(&qword_1ED8DBBD8);
  v18 = v24;
  sub_1B80C96CC();
  sub_1B805DC34(v18, v16);
  v25 = 1;
  sub_1B80C96FC();
  v20 = v19;
  (*(v17 + 8))(v10, v7);
  *(v16 + *(v11 + 20)) = v20;
  sub_1B809E460(v16, v22);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1B804B954(v16);
}

FindMyLocate::SecureLocationsStewie::Error_optional __swiftcall SecureLocationsStewie.Error.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B80C967C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SecureLocationsStewie.Error.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x636972656E6567;
    v7 = 0x4C64696C61766E69;
    if (v1 != 2)
    {
      v7 = 0x64656C6261736964;
    }

    if (*v0)
    {
      v6 = 0x656C74746F726874;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x7373654D646E6573;
    v3 = 0xD000000000000012;
    if (v1 != 7)
    {
      v3 = 0xD000000000000014;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x696C616974696E69;
    if (v1 != 4)
    {
      v4 = 0x7550746F6E6E6163;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B809E04C()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B809D334();
  return sub_1B80C997C();
}

uint64_t sub_1B809E09C()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B809D334();
  return sub_1B80C997C();
}

uint64_t sub_1B809E0EC@<X0>(uint64_t *a1@<X8>)
{
  result = SecureLocationsStewie.Error.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL _s12FindMyLocate21SecureLocationsStewieO13PublishResultV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B80C8E2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D80, &unk_1B80DC400);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1B7FD6818(a1, &v24 - v16);
  sub_1B7FD6818(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1B7FD6818(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1B7FBAD64(&qword_1EBA65D90);
      v21 = sub_1B80C908C();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1B7FB86D4(v17, &unk_1EBA65FD0, &unk_1B80D1920);
      if (v21)
      {
        goto LABEL_9;
      }

      return 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_1B7FB86D4(v17, &qword_1EBA65D80, &unk_1B80DC400);
    return 0;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1B7FB86D4(v17, &unk_1EBA65FD0, &unk_1B80D1920);
LABEL_9:
  v23 = type metadata accessor for SecureLocationsStewie.PublishResult();
  return *(a1 + *(v23 + 20)) == *(a2 + *(v23 + 20));
}

unint64_t sub_1B809E40C()
{
  result = qword_1EBA67328;
  if (!qword_1EBA67328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67328);
  }

  return result;
}

uint64_t sub_1B809E460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocationsStewie.PublishResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B809E4C8()
{
  result = qword_1EBA67338;
  if (!qword_1EBA67338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67338);
  }

  return result;
}

unint64_t sub_1B809E520()
{
  result = qword_1EBA67340;
  if (!qword_1EBA67340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67340);
  }

  return result;
}

void sub_1B809E5AC()
{
  sub_1B7FB8A1C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for SecureLocationsStewie.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureLocationsStewie.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B809E774()
{
  result = qword_1EBA67358;
  if (!qword_1EBA67358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67358);
  }

  return result;
}

unint64_t sub_1B809E7CC()
{
  result = qword_1EBA67360;
  if (!qword_1EBA67360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67360);
  }

  return result;
}

unint64_t sub_1B809E824()
{
  result = qword_1EBA67368;
  if (!qword_1EBA67368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67368);
  }

  return result;
}

unint64_t sub_1B809E878()
{
  result = qword_1EBA67370;
  if (!qword_1EBA67370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67370);
  }

  return result;
}

uint64_t LocationShifter.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC12FindMyLocate15LocationShifter_logger;
  if (qword_1EBA65AB0 != -1)
  {
    swift_once();
  }

  v5 = sub_1B80C900C();
  v6 = __swift_project_value_buffer(v5, qword_1EBA7ACD8);
  (*(*(v5 - 8) + 16))(v3 + v4, v6, v5);
  v7 = [objc_allocWithZone(MEMORY[0x1E69A1E80]) init];
  *(v3 + OBJC_IVAR____TtC12FindMyLocate15LocationShifter_shifter) = v7;
  return v3;
}

uint64_t LocationShifter.LocationShifterError.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t LocationShifter.init()()
{
  v1 = OBJC_IVAR____TtC12FindMyLocate15LocationShifter_logger;
  if (qword_1EBA65AB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  v3 = __swift_project_value_buffer(v2, qword_1EBA7ACD8);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = [objc_allocWithZone(MEMORY[0x1E69A1E80]) init];
  *(v0 + OBJC_IVAR____TtC12FindMyLocate15LocationShifter_shifter) = v4;
  return v0;
}

uint64_t sub_1B809EB08(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Location();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B809EBA0, 0, 0);
}

uint64_t sub_1B809EBA0()
{
  v25 = v0;
  v1 = v0[5];
  v2 = v0[3];
  v3 = objc_opt_self();
  v4 = v2 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location;
  v5 = [v3 isLocationShiftRequiredForCoordinate_];
  v7 = v0[3];
  v6 = v0[4];
  if (v5)
  {
    v8 = swift_task_alloc();
    v0[7] = v8;
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = *(MEMORY[0x1E69E8920] + 4);
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_1B809EE30;
    v12 = v0[5];
    v11 = v0[6];

    return MEMORY[0x1EEE6DE38](v11, 0, 0, 0x6572287466696873, 0xEF293A7473657571, sub_1B809F51C, v8, v12);
  }

  else
  {
    v13 = v0[3];

    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C93EC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      v18 = Location.description.getter();
      v20 = sub_1B7FB84FC(v18, v19, &v24);

      *(v16 + 14) = v20;
      _os_log_impl(&dword_1B7FB5000, v14, v15, "LocationShifter: shifting not required for location %{private,mask.hash}s", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B7FD7C58(v4, v0[2]);
    v21 = v0[6];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1B809EE30()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1B809EFBC;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1B809EF4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B809EF4C()
{
  sub_1B8083A34(v0[6], v0[2]);
  v1 = v0[6];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B809EFBC()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_1B809F028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67398, &qword_1B80DC528);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_1B7FD7198(a3, sub_1B809F7D4, v11);
}

uint64_t sub_1B809F178(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Location();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  if (a2)
  {
    v21 = a2;
    v16 = a2;
  }

  else
  {
    sub_1B809F860(a1, v7);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_1B8083A34(v7, v15);
      sub_1B7FD7C58(v15, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67398, &qword_1B80DC528);
      sub_1B80C928C();
      return sub_1B7FD7CBC(v15);
    }

    sub_1B7FD7B80(v7);
    sub_1B809F8D0();
    v17 = swift_allocError();
    *v18 = 2;
    v21 = v17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67398, &qword_1B80DC528);
  return sub_1B80C927C();
}