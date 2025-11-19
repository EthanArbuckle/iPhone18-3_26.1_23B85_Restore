uint64_t sub_1D1D32AF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4E657361656C6572 && a2 == 0xEB0000000065746FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x536E6F6973726576 && a2 == 0xED0000676E697274 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC8890 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D1D32C7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001D1EC88B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7964616572 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC88D0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D1D32DA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617453326868 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC88F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1D32F00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x50656D6F48326868 && a2 == 0xEA0000000000646FLL;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x50656D6F48316868 && a2 == 0xEA0000000000646FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC8910 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC8930 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1D33070(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEB00000000676E69 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEA00000000006465 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696C6C6174736E69 && a2 == 0xEA0000000000676ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C6C6174736E69 && a2 == 0xE900000000000064)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1D1D332D0()
{
  result = qword_1EC64E0C8;
  if (!qword_1EC64E0C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC64E0C8);
  }

  return result;
}

void sub_1D1D3335C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v7 = [a1 name];
  v8 = sub_1D1E6781C();
  v10 = v9;

  v11 = type metadata accessor for StaticUser();
  v12 = (a3 + v11[5]);
  *v12 = v8;
  v12[1] = v10;
  v13 = [a2 uniqueIdentifier];
  v14 = a3 + v11[6];
  sub_1D1E66A5C();

  sub_1D1D3676C(a2, a1, &v18);
  *(a3 + v11[7]) = v18;
  v15 = [a2 homeAccessControlForUser_];
  v16 = [v15 camerasAccessLevel];

  if (v16 == 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  if (!v16)
  {
    v17 = 0;
  }

  *(a3 + v11[8]) = v17;
}

uint64_t StaticUser.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticUser.name.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticUser() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticUser.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticUser() + 24);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticUser.kind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticUser();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t StaticUser.cameraAccess.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticUser();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t type metadata accessor for StaticUser()
{
  result = qword_1EE07DB80;
  if (!qword_1EE07DB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1D33694()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6449656D6F68;
  v4 = 1684957547;
  if (v1 != 3)
  {
    v4 = 0x63416172656D6163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

uint64_t sub_1D1D33718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D38AAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1D33740(uint64_t a1)
{
  v2 = sub_1D1D3707C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D3377C(uint64_t a1)
{
  v2 = sub_1D1D3707C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticUser.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E0E8, &qword_1D1EAA100);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D3707C();
  sub_1D1E6930C();
  v24 = 0;
  sub_1D1E66A7C();
  sub_1D1D3800C(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticUser();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v23 = 1;
    sub_1D1E68ECC();
    v15 = v11[6];
    v22 = 2;
    sub_1D1E68F1C();
    v21 = *(v3 + v11[7]);
    v20 = 3;
    sub_1D1D370D0();
    sub_1D1E68F1C();
    v19 = *(v3 + v11[8]);
    v18 = 4;
    sub_1D1D37124();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticUser.hash(into:)()
{
  v1 = v0;
  sub_1D1E66A7C();
  sub_1D1D3800C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for StaticUser();
  v3 = (v0 + v2[5]);
  v4 = *v3;
  v5 = v3[1];
  sub_1D1E678EC();
  v6 = v0 + v2[6];
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v1 + v2[7]));
  return MEMORY[0x1D3892850](*(v1 + v2[8]));
}

uint64_t StaticUser.hashValue.getter()
{
  v1 = v0;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D3800C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for StaticUser();
  v3 = (v0 + v2[5]);
  v4 = *v3;
  v5 = v3[1];
  sub_1D1E678EC();
  v6 = v0 + v2[6];
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v1 + v2[7]));
  MEMORY[0x1D3892850](*(v1 + v2[8]));
  return sub_1D1E6926C();
}

uint64_t StaticUser.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v34 = sub_1D1E66A7C();
  v31 = *(v34 - 8);
  v3 = *(v31 + 64);
  v4 = MEMORY[0x1EEE9AC00](v34);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v28 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E108, &qword_1D1EAA108);
  v32 = *(v35 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v11 = v28 - v10;
  v12 = type metadata accessor for StaticUser();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D3707C();
  v33 = v11;
  v17 = v36;
  sub_1D1E692FC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v6;
  v18 = v15;
  v43 = 0;
  sub_1D1D3800C(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  sub_1D1E68D7C();
  v19 = *(v31 + 32);
  v20 = v8;
  v21 = v34;
  v19(v18, v20, v34);
  v42 = 1;
  v22 = sub_1D1E68D2C();
  v28[0] = v19;
  v28[1] = 0;
  v29 = v12;
  v23 = (v18 + *(v12 + 20));
  *v23 = v22;
  v23[1] = v24;
  v41 = 2;
  v25 = v36;
  sub_1D1E68D7C();
  v26 = v29;
  (v28[0])(v18 + *(v29 + 24), v25, v21);
  v39 = 3;
  sub_1D1D37178();
  sub_1D1E68D7C();
  *(v18 + *(v26 + 28)) = v40;
  v37 = 4;
  sub_1D1D371CC();
  sub_1D1E68D7C();
  (*(v32 + 8))(v33, v35);
  *(v18 + *(v26 + 32)) = v38;
  sub_1D1D37220(v18, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1D37284(v18);
}

uint64_t sub_1D1D340F0(int *a1)
{
  v3 = v1;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D3800C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = (v1 + a1[5]);
  v5 = *v4;
  v6 = v4[1];
  sub_1D1E678EC();
  v7 = v1 + a1[6];
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v3 + a1[7]));
  MEMORY[0x1D3892850](*(v3 + a1[8]));
  return sub_1D1E6926C();
}

uint64_t sub_1D1D341E0(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1D1E66A7C();
  sub_1D1D3800C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v5 = (v2 + a2[5]);
  v6 = *v5;
  v7 = v5[1];
  sub_1D1E678EC();
  v8 = v2 + a2[6];
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v4 + a2[7]));
  return MEMORY[0x1D3892850](*(v4 + a2[8]));
}

uint64_t sub_1D1D342B4(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D3800C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v5 = (v2 + a2[5]);
  v6 = *v5;
  v7 = v5[1];
  sub_1D1E678EC();
  v8 = v2 + a2[6];
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v4 + a2[7]));
  MEMORY[0x1D3892850](*(v4 + a2[8]));
  return sub_1D1E6926C();
}

uint64_t sub_1D1D343D0(uint64_t a1)
{
  v2 = sub_1D1D373DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D3440C(uint64_t a1)
{
  v2 = sub_1D1D373DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D34448()
{
  v1 = 0x72656E776FLL;
  v2 = 0x746E656469736572;
  if (*v0 != 2)
  {
    v2 = 0x7463697274736572;
  }

  if (*v0)
  {
    v1 = 0x7473696E696D6461;
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

uint64_t sub_1D1D344D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D38C54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1D34500(uint64_t a1)
{
  v2 = sub_1D1D372E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D3453C(uint64_t a1)
{
  v2 = sub_1D1D372E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D34578(uint64_t a1)
{
  v2 = sub_1D1D37430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D345B4(uint64_t a1)
{
  v2 = sub_1D1D37430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D345F0(uint64_t a1)
{
  v2 = sub_1D1D37388();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D3462C(uint64_t a1)
{
  v2 = sub_1D1D37388();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D34668(uint64_t a1)
{
  v2 = sub_1D1D37334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D346A4(uint64_t a1)
{
  v2 = sub_1D1D37334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticUser.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E120, &qword_1D1EAA110);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E128, &qword_1D1EAA118);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E130, &qword_1D1EAA120);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E138, &qword_1D1EAA128);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E140, &qword_1D1EAA130);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D372E0();
  sub_1D1E6930C();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1D1D37388();
      v24 = v33;
      sub_1D1E68DFC();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1D1D37334();
      v24 = v36;
      sub_1D1E68DFC();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1D1D373DC();
    v24 = v30;
    sub_1D1E68DFC();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1D1D37430();
  sub_1D1E68DFC();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t StaticUser.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E170, &qword_1D1EAA138);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E178, &qword_1D1EAA140);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E180, &qword_1D1EAA148);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E188, &qword_1D1EAA150);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E190, &unk_1D1EAA158);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D1D372E0();
  v21 = v53;
  sub_1D1E692FC();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1D1E68DDC();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1D18085BC();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1D1E688EC();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v34 = &type metadata for StaticUser.Kind;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1D1D373DC();
        v39 = v42;
        sub_1D1E68C4C();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1D1D37430();
        v31 = v42;
        sub_1D1E68C4C();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1D1D37388();
      v38 = v42;
      sub_1D1E68C4C();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1D1D37334();
      v40 = v42;
      sub_1D1E68C4C();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_1D1D351A4()
{
  v1 = 0x6D6165727473;
  if (*v0 != 1)
  {
    v1 = 0x6E416D6165727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7373656363416F6ELL;
  }
}

uint64_t sub_1D1D35208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D38DC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1D35230(uint64_t a1)
{
  v2 = sub_1D1D37484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D3526C(uint64_t a1)
{
  v2 = sub_1D1D37484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D352A8(uint64_t a1)
{
  v2 = sub_1D1D37580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D352E4(uint64_t a1)
{
  v2 = sub_1D1D37580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D35320(uint64_t a1)
{
  v2 = sub_1D1D374D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D3535C(uint64_t a1)
{
  v2 = sub_1D1D374D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D35398(uint64_t a1)
{
  v2 = sub_1D1D3752C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D353D4(uint64_t a1)
{
  v2 = sub_1D1D3752C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticUser.CameraAccessLevel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E198, &qword_1D1EAA168);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E1A0, &qword_1D1EAA170);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E1A8, &qword_1D1EAA178);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E1B0, &qword_1D1EAA180);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D37484();
  sub_1D1E6930C();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1D1D3752C();
      v12 = v26;
      sub_1D1E68DFC();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1D1D374D8();
      v12 = v29;
      sub_1D1E68DFC();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1D1D37580();
    sub_1D1E68DFC();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t StaticUser.CameraAccessLevel.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E1D8, &qword_1D1EAA188);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E1E0, &qword_1D1EAA190);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E1E8, &qword_1D1EAA198);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E1F0, &qword_1D1EAA1A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D1D37484();
  v20 = v43;
  sub_1D1E692FC();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1D1E68DDC();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1D18085C8();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1D1E688EC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v30 = &type metadata for StaticUser.CameraAccessLevel;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1D1D3752C();
          sub_1D1E68C4C();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1D1D374D8();
          v33 = v22;
          sub_1D1E68C4C();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1D1D37580();
        sub_1D1E68C4C();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t StaticUser.user.getter()
{
  v1[15] = v0;
  v2 = sub_1D1E66A7C();
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D35E18, 0, 0);
}

uint64_t sub_1D1D35E18()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[20] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1D35F08;
    v4 = 0;
  }

  else
  {
    v0[22] = sub_1D1E67E1C();
    v0[23] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1D364A0;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1D35F08()
{
  v45 = v0;
  v2 = v0[20];
  swift_beginAccess();
  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = [v3 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v44 = sub_1D1749970(v5);
    sub_1D1747DDC(&v44);

    v6 = v44;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = v0[18];
  v8 = v0[16];
  v9 = v0[15];
  v10 = *(v0[17] + 16);
  v10(v0[19], v9, v8);
  v10(v7, v9, v8);
  v41 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_31:
    v43 = v6 & 0xFFFFFFFFFFFFFF8;
    v11 = sub_1D1E6873C();
  }

  else
  {
    v43 = v6 & 0xFFFFFFFFFFFFFF8;
    v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v42 = v6 & 0xC000000000000001;
  v40 = v6 + 32;
  while (v11 != v12)
  {
    if (v42)
    {
      v13 = v6;
      v14 = MEMORY[0x1D3891EF0](v12, v6);
    }

    else
    {
      if (v12 >= *(v43 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v13 = v6;
      v14 = *(v6 + 8 * v12 + 32);
    }

    v15 = v14;
    v16 = v0[18];
    v17 = [v14 users];
    sub_1D1741B10(0, &qword_1EE079BF8, 0x1E696CCA0);
    v18 = sub_1D1E67C1C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73FA0;
    *(inited + 32) = [v15 currentUser];
    v44 = v18;
    sub_1D17A3D50(inited);
    v20 = v44;
    v1 = swift_task_alloc();
    *(v1 + 16) = v16;
    v21 = sub_1D174A6C4(sub_1D1749C64, v1, v20);

    if (v21)
    {
      v11 = v12;
      v6 = v13;
      break;
    }

    v22 = __OFADD__(v12++, 1);
    v6 = v13;
    if (v22)
    {
      goto LABEL_30;
    }
  }

  if (!v41)
  {
    if (v11 != *(v43 + 16))
    {
      goto LABEL_19;
    }

LABEL_25:
    v1 = *(v0[17] + 8);
    (v1)(v0[19], v0[16]);
    v33 = 0;
    goto LABEL_26;
  }

  if (v11 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v42)
  {
    v23 = MEMORY[0x1D3891EF0](v11, v6);
  }

  else
  {
    if (v11 >= *(v43 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v23 = *(v40 + 8 * v11);
  }

  v24 = v23;
  v25 = v0[19];
  v27 = v0[16];
  v26 = v0[17];
  v28 = [v23 users];
  sub_1D1741B10(0, &qword_1EE079BF8, 0x1E696CCA0);
  v29 = sub_1D1E67C1C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1D1E73FA0;
  *(v30 + 32) = [v24 currentUser];
  v44 = v29;
  sub_1D17A3D50(v30);
  v31 = v44;
  v32 = swift_task_alloc();
  *(v32 + 16) = v25;
  v33 = sub_1D174A6C4(sub_1D1778988, v32, v31);

  v1 = *(v26 + 8);
  (v1)(v25, v27);

  if (!v33)
  {
LABEL_34:
    v36 = (v1)(v0[18], v0[16]);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v36, v37, v38);
  }

LABEL_26:
  v0[21] = v33;
  v34 = v0[18];
  v35 = v0[16];

  (v1)(v34, v35);
  v36 = sub_1D1D36428;
  v37 = 0;
  v38 = 0;

  return MEMORY[0x1EEE6DFA0](v36, v37, v38);
}

uint64_t sub_1D1D36428()
{
  v1 = v0[20];

  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];

  v5 = v0[1];

  return v5(v2);
}

uint64_t sub_1D1D364A0()
{
  v1 = *(v0 + 184);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1D36538, 0, 0);
}

uint64_t sub_1D1D36538()
{
  v1 = *(v0 + 176);
  *(v0 + 192) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D365C4, v3, v2);
}

uint64_t sub_1D1D365C4()
{
  v1 = *(v0 + 192);

  *(v0 + 200) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1D36638, 0, 0);
}

uint64_t sub_1D1D36638()
{
  v1 = v0[22];
  v2 = v0[15];
  v0[26] = sub_1D1E66A2C();
  v0[27] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D366D0, v4, v3);
}

uint64_t sub_1D1D366D0()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];

  v4 = [v3 userFor_];

  v6 = v0[18];
  v5 = v0[19];

  v7 = v0[1];

  return v7(v4);
}

void sub_1D1D3676C(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = [a1 homeAccessControlForUser_];
  if ([v4 isOwner])
  {

    v5 = 0;
  }

  else
  {
    if (![v4 isAdministrator])
    {
      if ([v4 isRestrictedGuest])
      {
        v7[3] = &type metadata for HomeKitFeatures;
        v7[4] = sub_1D18076E8();
        LOBYTE(v7[0]) = 1;
        v6 = sub_1D1E66D5C();

        __swift_destroy_boxed_opaque_existential_1(v7);
        if (v6)
        {
          v5 = 3;
          goto LABEL_10;
        }
      }

      else
      {
      }

      v5 = 2;
      goto LABEL_10;
    }

    v5 = 1;
  }

LABEL_10:
  *a3 = v5;
}

uint64_t static StaticUser.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticUser() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v5 == *v7 && v6 == v7[1];
  if (v8 || (v9 = 1, v10 = *v7, v11 = v7[1], (sub_1D1E6904C() & 1) == 0) && (v9 = 0, (sub_1D1E6904C() & 1) != 0))
  {

    JUMPOUT(0x1D3890070);
  }

  return v9;
}

uint64_t sub_1D1D3692C()
{
  v0 = sub_1D1E66A7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticUser();
  __swift_allocate_value_buffer(v5, qword_1EE0814B0);
  v6 = __swift_project_value_buffer(v5, qword_1EE0814B0);
  if (qword_1EE07DB98 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_1EE0814C8);
  v8 = *(v1 + 16);
  v8(v4, v7, v0);
  if (qword_1EE07DD70 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EE081518);
  v8((v6 + v5[6]), v9, v0);
  result = (*(v1 + 32))(v6, v4, v0);
  v11 = (v6 + v5[5]);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *(v6 + v5[7]) = 0;
  *(v6 + v5[8]) = 1;
  return result;
}

uint64_t sub_1D1D36B04()
{
  v0 = sub_1D1E66A7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticUser();
  __swift_allocate_value_buffer(v5, qword_1EC64E0D0);
  v6 = __swift_project_value_buffer(v5, qword_1EC64E0D0);
  if (qword_1EC642400 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_1EC6BE220);
  v8 = *(v1 + 16);
  v8(v4, v7, v0);
  if (qword_1EC6423E0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EC6BE208);
  v8((v6 + v5[6]), v9, v0);
  result = (*(v1 + 32))(v6, v4, v0);
  v11 = (v6 + v5[5]);
  *v11 = 0x5520656C706D6153;
  v11[1] = 0xEB00000000726573;
  *(v6 + v5[7]) = 0;
  *(v6 + v5[8]) = 1;
  return result;
}

uint64_t static StaticUser.sample.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6423F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StaticUser();
  v3 = __swift_project_value_buffer(v2, qword_1EC64E0D0);

  return sub_1D1D37220(v3, a1);
}

uint64_t sub_1D1D36D6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v4, qword_1EE0814C8);
  v5 = __swift_project_value_buffer(v4, qword_1EE0814C8);
  sub_1D1E66A0C();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D36E9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v4, qword_1EC6BE220);
  v5 = __swift_project_value_buffer(v4, qword_1EC6BE220);
  sub_1D1E66A0C();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

BOOL _s13HomeDataModel10StaticUserV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && ((v4 = type metadata accessor for StaticUser(), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_1D1E6904C()) && (v10 = v4[6], (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0()) && *(a1 + v4[7]) == *(a2 + v4[7])))
  {
    return *(a1 + v4[8]) == *(a2 + v4[8]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D1D3707C()
{
  result = qword_1EC64E0F0;
  if (!qword_1EC64E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E0F0);
  }

  return result;
}

unint64_t sub_1D1D370D0()
{
  result = qword_1EC64E0F8;
  if (!qword_1EC64E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E0F8);
  }

  return result;
}

unint64_t sub_1D1D37124()
{
  result = qword_1EC64E100;
  if (!qword_1EC64E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E100);
  }

  return result;
}

unint64_t sub_1D1D37178()
{
  result = qword_1EC64E110;
  if (!qword_1EC64E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E110);
  }

  return result;
}

unint64_t sub_1D1D371CC()
{
  result = qword_1EC64E118;
  if (!qword_1EC64E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E118);
  }

  return result;
}

uint64_t sub_1D1D37220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticUser();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D37284(uint64_t a1)
{
  v2 = type metadata accessor for StaticUser();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D1D372E0()
{
  result = qword_1EC64E148;
  if (!qword_1EC64E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E148);
  }

  return result;
}

unint64_t sub_1D1D37334()
{
  result = qword_1EC64E150;
  if (!qword_1EC64E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E150);
  }

  return result;
}

unint64_t sub_1D1D37388()
{
  result = qword_1EC64E158;
  if (!qword_1EC64E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E158);
  }

  return result;
}

unint64_t sub_1D1D373DC()
{
  result = qword_1EC64E160;
  if (!qword_1EC64E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E160);
  }

  return result;
}

unint64_t sub_1D1D37430()
{
  result = qword_1EC64E168;
  if (!qword_1EC64E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E168);
  }

  return result;
}

unint64_t sub_1D1D37484()
{
  result = qword_1EC64E1B8;
  if (!qword_1EC64E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E1B8);
  }

  return result;
}

unint64_t sub_1D1D374D8()
{
  result = qword_1EC64E1C0;
  if (!qword_1EC64E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E1C0);
  }

  return result;
}

unint64_t sub_1D1D3752C()
{
  result = qword_1EC64E1C8;
  if (!qword_1EC64E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E1C8);
  }

  return result;
}

unint64_t sub_1D1D37580()
{
  result = qword_1EC64E1D0;
  if (!qword_1EC64E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E1D0);
  }

  return result;
}

uint64_t sub_1D1D375D4(uint64_t a1, char a2, uint64_t *a3)
{
  v51 = a3;
  v5 = type metadata accessor for StaticUser();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437D8, &unk_1D1EAAD40);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v45 = *(result + 48);
    v18 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v44 = *(v15 + 72);
    v48 = (v43 + 32);
    v42 = (v43 + 8);
    while (1)
    {
      v49 = v17;
      v20 = v47;
      sub_1D1D38FB4(v18, v47);
      v21 = *v48;
      v22 = v50;
      v23 = v9;
      (*v48)(v50, v20, v9);
      v24 = v8;
      sub_1D1D38EE0(v20 + v45, v8);
      v25 = *v51;
      v27 = sub_1D1742188(v22);
      v28 = *(v25 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (*(v25 + 24) >= v30)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D1736910();
        }
      }

      else
      {
        v32 = v51;
        sub_1D17248B4(v30, a2 & 1);
        v33 = *v32;
        v34 = sub_1D1742188(v50);
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_17;
        }

        v27 = v34;
      }

      v36 = *v51;
      if (v31)
      {
        v9 = v23;
        (*v42)(v50, v23);
        v19 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1D39024(v24, v19);
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        v9 = v23;
        v21((v36[6] + *(v43 + 72) * v27), v50, v23);
        v37 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1D38EE0(v24, v37);
        v38 = v36[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_16;
        }

        v36[2] = v40;
      }

      v18 += v44;
      a2 = 1;
      v17 = v49 - 1;
      if (v49 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1D3798C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437D8, &unk_1D1EAAD40);
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - v4;
  v59 = type metadata accessor for StaticUser();
  v56 = *(v59 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 users];
  sub_1D1741B10(0, &qword_1EE079BF8, 0x1E696CCA0);
  v10 = sub_1D1E67C1C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73FA0;
  *(inited + 32) = [a1 currentUser];
  v60[0] = v10;
  sub_1D17A3D50(inited);
  v12 = v60[0];
  if (v60[0] >> 62)
  {
    goto LABEL_42;
  }

  v13 = *((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v15 = 0;
    v52 = v12 & 0xFFFFFFFFFFFFFF8;
    v53 = v12 & 0xC000000000000001;
    v50 = v12;
    v51 = v5;
    v49 = v13;
    do
    {
      if (v53)
      {
        v16 = MEMORY[0x1D3891EF0](v15, v12);
      }

      else
      {
        if (v15 >= *(v52 + 16))
        {
          goto LABEL_41;
        }

        v16 = *(v12 + 8 * v15 + 32);
      }

      v17 = v16;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        v13 = sub_1D1E6873C();
        goto LABEL_3;
      }

      v57 = v15 + 1;
      v58 = v14;
      v18 = [v16 uniqueIdentifier];
      sub_1D1E66A5C();

      v19 = [v17 name];
      v20 = sub_1D1E6781C();
      v21 = a1;
      v23 = v22;

      v24 = v59;
      v25 = &v8[*(v59 + 20)];
      *v25 = v20;
      v25[1] = v23;
      a1 = v21;
      v26 = [v21 uniqueIdentifier];
      v27 = &v8[*(v24 + 24)];
      sub_1D1E66A5C();

      v28 = [v21 homeAccessControlForUser_];
      if ([v28 isOwner])
      {

        v29 = 0;
        v5 = v51;
        v14 = v58;
      }

      else
      {
        v30 = [v28 isAdministrator];
        v14 = v58;
        if (v30)
        {

          v29 = 1;
          v5 = v51;
        }

        else
        {
          if (![v28 isRestrictedGuest])
          {

            v5 = v51;
LABEL_17:
            v29 = 2;
            goto LABEL_18;
          }

          v60[3] = &type metadata for HomeKitFeatures;
          v60[4] = sub_1D18076E8();
          LOBYTE(v60[0]) = 1;
          v31 = sub_1D1E66D5C();

          __swift_destroy_boxed_opaque_existential_1(v60);
          v5 = v51;
          if ((v31 & 1) == 0)
          {
            goto LABEL_17;
          }

          v29 = 3;
        }
      }

LABEL_18:
      v32 = v59;
      v8[*(v59 + 28)] = v29;
      v33 = [a1 homeAccessControlForUser_];
      v34 = [v33 camerasAccessLevel];

      if (v34 == 2)
      {
        v35 = 2;
      }

      else
      {
        v35 = 1;
      }

      if (!v34)
      {
        v35 = 0;
      }

      v8[*(v32 + 32)] = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1D177D7F4(0, v14[2] + 1, 1, v14);
      }

      v37 = v14[2];
      v36 = v14[3];
      if (v37 >= v36 >> 1)
      {
        v14 = sub_1D177D7F4(v36 > 1, v37 + 1, 1, v14);
      }

      v14[2] = v37 + 1;
      sub_1D1D38EE0(v8, v14 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v37);
      ++v15;
      v12 = v50;
    }

    while (v57 != v49);
  }

  v38 = v14[2];
  if (v38)
  {
    v60[0] = MEMORY[0x1E69E7CC0];
    sub_1D178D218(0, v38, 0);
    v39 = v60[0];
    v40 = v14 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v41 = *(v56 + 72);
    do
    {
      v42 = *(v55 + 48);
      sub_1D1D37220(v40, &v5[v42]);
      v43 = sub_1D1E66A7C();
      (*(*(v43 - 8) + 16))(v5, &v5[v42], v43);
      v60[0] = v39;
      v45 = *(v39 + 16);
      v44 = *(v39 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1D178D218(v44 > 1, v45 + 1, 1);
        v39 = v60[0];
      }

      *(v39 + 16) = v45 + 1;
      sub_1D1D38F44(v5, v39 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v45);
      v40 += v41;
      --v38;
    }

    while (v38);

    if (*(v39 + 16))
    {
      goto LABEL_36;
    }

LABEL_38:
    v46 = MEMORY[0x1E69E7CC8];
    goto LABEL_39;
  }

  v39 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_38;
  }

LABEL_36:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B40, &qword_1D1E7E7D0);
  v46 = sub_1D1E68BCC();
LABEL_39:
  v60[0] = v46;
  sub_1D1D375D4(v39, 1, v60);

  return v60[0];
}

uint64_t sub_1D1D3800C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1D380A0()
{
  result = qword_1EC64E200;
  if (!qword_1EC64E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E200);
  }

  return result;
}

unint64_t sub_1D1D380F8()
{
  result = qword_1EC64E208;
  if (!qword_1EC64E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E208);
  }

  return result;
}

uint64_t sub_1D1D38174()
{
  result = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D1D382C8()
{
  result = qword_1EC64E210;
  if (!qword_1EC64E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E210);
  }

  return result;
}

unint64_t sub_1D1D38320()
{
  result = qword_1EC64E218;
  if (!qword_1EC64E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E218);
  }

  return result;
}

unint64_t sub_1D1D38378()
{
  result = qword_1EC64E220;
  if (!qword_1EC64E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E220);
  }

  return result;
}

unint64_t sub_1D1D383D0()
{
  result = qword_1EC64E228;
  if (!qword_1EC64E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E228);
  }

  return result;
}

unint64_t sub_1D1D38428()
{
  result = qword_1EC64E230;
  if (!qword_1EC64E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E230);
  }

  return result;
}

unint64_t sub_1D1D38480()
{
  result = qword_1EC64E238;
  if (!qword_1EC64E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E238);
  }

  return result;
}

unint64_t sub_1D1D384D8()
{
  result = qword_1EC64E240;
  if (!qword_1EC64E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E240);
  }

  return result;
}

unint64_t sub_1D1D38530()
{
  result = qword_1EC64E248;
  if (!qword_1EC64E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E248);
  }

  return result;
}

unint64_t sub_1D1D38588()
{
  result = qword_1EC64E250;
  if (!qword_1EC64E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E250);
  }

  return result;
}

unint64_t sub_1D1D385E0()
{
  result = qword_1EC64E258;
  if (!qword_1EC64E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E258);
  }

  return result;
}

unint64_t sub_1D1D38638()
{
  result = qword_1EC64E260;
  if (!qword_1EC64E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E260);
  }

  return result;
}

unint64_t sub_1D1D38690()
{
  result = qword_1EC64E268;
  if (!qword_1EC64E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E268);
  }

  return result;
}

unint64_t sub_1D1D386E8()
{
  result = qword_1EC64E270;
  if (!qword_1EC64E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E270);
  }

  return result;
}

unint64_t sub_1D1D38740()
{
  result = qword_1EC64E278;
  if (!qword_1EC64E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E278);
  }

  return result;
}

unint64_t sub_1D1D38798()
{
  result = qword_1EC64E280;
  if (!qword_1EC64E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E280);
  }

  return result;
}

unint64_t sub_1D1D387F0()
{
  result = qword_1EC64E288;
  if (!qword_1EC64E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E288);
  }

  return result;
}

unint64_t sub_1D1D38848()
{
  result = qword_1EC64E290;
  if (!qword_1EC64E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E290);
  }

  return result;
}

unint64_t sub_1D1D388A0()
{
  result = qword_1EC64E298;
  if (!qword_1EC64E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E298);
  }

  return result;
}

unint64_t sub_1D1D388F8()
{
  result = qword_1EC64E2A0;
  if (!qword_1EC64E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E2A0);
  }

  return result;
}

unint64_t sub_1D1D38950()
{
  result = qword_1EC64E2A8;
  if (!qword_1EC64E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E2A8);
  }

  return result;
}

unint64_t sub_1D1D389A8()
{
  result = qword_1EC64E2B0;
  if (!qword_1EC64E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E2B0);
  }

  return result;
}

unint64_t sub_1D1D38A00()
{
  result = qword_1EC64E2B8;
  if (!qword_1EC64E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E2B8);
  }

  return result;
}

unint64_t sub_1D1D38A58()
{
  result = qword_1EC64E2C0;
  if (!qword_1EC64E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E2C0);
  }

  return result;
}

uint64_t sub_1D1D38AAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x63416172656D6163 && a2 == 0xEC00000073736563)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D1D38C54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656E776FLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473696E696D6461 && a2 == 0xED0000726F746172 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E656469736572 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7463697274736572 && a2 == 0xEF74736575476465)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1D38DC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373656363416F6ELL && a2 == 0xE800000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6165727473 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E416D6165727473 && a2 == 0xEE007370696C4364)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1D38EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticUser();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D38F44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437D8, &unk_1D1EAAD40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D38FB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437D8, &unk_1D1EAAD40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D39024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticUser();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D39098(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - v8;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v19[1] = v6 + 8;
  v19[2] = v6 + 16;
  v21 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v16;
LABEL_10:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    (*(v6 + 16))(v9, *(v21 + 56) + *(v6 + 72) * (v18 | (v17 << 6)), v5);
    v20(v9);
    result = (*(v6 + 8))(v9, v5);
    if (v3)
    {
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1D1D3926C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3891EF0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1D1D3936C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v6 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v25 - v7;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v28 = a3;

  v14 = 0;
  while (v11)
  {
    v29 = v4;
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = v28;
    v19 = *(v28 + 48);
    v20 = sub_1D1E66A7C();
    v21 = v25;
    (*(*(v20 - 8) + 16))(v25, v19 + *(*(v20 - 8) + 72) * v17, v20);
    v22 = *(v18 + 56);
    v23 = type metadata accessor for StaticService(0);
    sub_1D1D401E4(v22 + *(*(v23 - 8) + 72) * v17, v21 + *(v26 + 48), type metadata accessor for StaticService);
    v24 = v29;
    v27(v21);
    v4 = v24;
    result = sub_1D1741A30(v21, &qword_1EC642DB0, &unk_1D1E6F360);
    if (v24)
    {
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v29 = v4;
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D395CC(uint64_t a1)
{
  v2 = sub_1D1D3EDF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D39608(uint64_t a1)
{
  v2 = sub_1D1D3EDF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D39644()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x726F737365636361;
  v4 = 0x4765636976726573;
  if (v1 != 3)
  {
    v4 = 0x737953616964656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656E656373;
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

uint64_t sub_1D1D396F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D3EEF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1D39718(uint64_t a1)
{
  v2 = sub_1D1D3ECF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D39754(uint64_t a1)
{
  v2 = sub_1D1D3ECF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D39790(uint64_t a1)
{
  v2 = sub_1D1D3ED4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D397CC(uint64_t a1)
{
  v2 = sub_1D1D3ED4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D39808(uint64_t a1)
{
  v2 = sub_1D1D3EE48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D39844(uint64_t a1)
{
  v2 = sub_1D1D3EE48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D39880(uint64_t a1)
{
  v2 = sub_1D1D3EDA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D398BC(uint64_t a1)
{
  v2 = sub_1D1D3EDA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D398F8(uint64_t a1)
{
  v2 = sub_1D1D3EE9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D39934(uint64_t a1)
{
  v2 = sub_1D1D3EE9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictionKind.encode(to:)(void *a1, int a2)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E2C8, &qword_1D1EAAD50);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E2D0, &qword_1D1EAAD58);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E2D8, &qword_1D1EAAD60);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E2E0, &qword_1D1EAAD68);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E2E8, &qword_1D1EAAD70);
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E2F0, &unk_1D1EAAD78);
  v20 = *(v48 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v23 = &v36 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D3ECF8();
  sub_1D1E6930C();
  v25 = (v20 + 8);
  if (v47 <= 1u)
  {
    v31 = v45;
    v30 = v46;
    if (v47)
    {
      v50 = 1;
      sub_1D1D3EE48();
      v35 = v48;
      sub_1D1E68DFC();
      (*(v30 + 8))(v15, v12);
      return (*v25)(v23, v35);
    }

    v49 = 0;
    sub_1D1D3EE9C();
    v32 = v48;
    sub_1D1E68DFC();
    (*(v31 + 8))(v19, v16);
    return (*v25)(v23, v32);
  }

  if (v47 == 2)
  {
    v51 = 2;
    sub_1D1D3EDF4();
    v33 = v36;
    v32 = v48;
    sub_1D1E68DFC();
    (*(v37 + 8))(v33, v38);
    return (*v25)(v23, v32);
  }

  if (v47 == 3)
  {
    v52 = 3;
    sub_1D1D3EDA0();
    v26 = v39;
    v27 = v48;
    sub_1D1E68DFC();
    v29 = v40;
    v28 = v41;
  }

  else
  {
    v53 = 4;
    sub_1D1D3ED4C();
    v26 = v42;
    v27 = v48;
    sub_1D1E68DFC();
    v29 = v43;
    v28 = v44;
  }

  (*(v29 + 8))(v26, v28);
  return (*v25)(v23, v27);
}

uint64_t PredictionKind.hashValue.getter(unsigned __int8 a1)
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](a1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D39F6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D1D3F0AC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t StaticUserActionPrediction.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D1D3A0AC()
{
  v1 = 25705;
  v2 = 0x4965636976726573;
  if (*v0 != 2)
  {
    v2 = 1684957547;
  }

  if (*v0)
  {
    v1 = 0x65726F6373;
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

uint64_t sub_1D1D3A114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D40084(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1D3A13C(uint64_t a1)
{
  v2 = sub_1D1D3F810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D3A178(uint64_t a1)
{
  v2 = sub_1D1D3F810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticUserActionPrediction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E328, &qword_1D1EAAD88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D3F810();
  sub_1D1E6930C();
  v20 = 0;
  sub_1D1E66A7C();
  sub_1D1D40314(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticUserActionPrediction();
    v12 = *(v3 + v11[5]);
    v19 = 1;
    sub_1D1E68EEC();
    v13 = v11[6];
    v18 = 2;
    sub_1D1E68E5C();
    v17 = *(v3 + v11[7]);
    v16 = 3;
    sub_1D1D3F864();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticUserActionPrediction.hash(into:)()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  sub_1D1D40314(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v10 = type metadata accessor for StaticUserActionPrediction();
  v11 = *(v0 + v10[5]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x1D3892890](*&v11);
  sub_1D1741C08(v0 + v10[6], v9, &qword_1EC642590, qword_1D1E71260);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v2 + 8))(v5, v1);
  }

  return MEMORY[0x1D3892850](*(v0 + v10[7]));
}

uint64_t StaticUserActionPrediction.hashValue.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  sub_1D1E6920C();
  sub_1D1D40314(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v10 = type metadata accessor for StaticUserActionPrediction();
  v11 = *(v0 + v10[5]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x1D3892890](*&v11);
  sub_1D1741C08(v0 + v10[6], v9, &qword_1EC642590, qword_1D1E71260);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v2 + 8))(v5, v1);
  }

  MEMORY[0x1D3892850](*(v0 + v10[7]));
  return sub_1D1E6926C();
}

uint64_t StaticUserActionPrediction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v28 = sub_1D1E66A7C();
  v25 = *(v28 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E340, &unk_1D1EAAD90);
  v26 = *(v29 - 8);
  v10 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v22 - v11;
  v13 = type metadata accessor for StaticUserActionPrediction();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D3F810();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v7;
  v18 = v25;
  v34 = 0;
  sub_1D1D40314(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  sub_1D1E68D7C();
  (*(v18 + 32))(v16, v27, v28);
  v33 = 1;
  sub_1D1E68D4C();
  *&v16[v13[5]] = v19;
  v32 = 2;
  v20 = v23;
  sub_1D1E68CBC();
  sub_1D1778308(v20, &v16[v13[6]]);
  v30 = 3;
  sub_1D1D3F8B8();
  sub_1D1E68D7C();
  (*(v26 + 8))(v12, v29);
  v16[v13[7]] = v31;
  sub_1D1D401E4(v16, v24, type metadata accessor for StaticUserActionPrediction);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1D402B4(v16, type metadata accessor for StaticUserActionPrediction);
}

uint64_t sub_1D1D3AD30(uint64_t a1, int *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v15 - v11;
  sub_1D1E6920C();
  sub_1D1D40314(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v13 = *(v2 + a2[5]);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x1D3892890](*&v13);
  sub_1D1741C08(v2 + a2[6], v12, &qword_1EC642590, qword_1D1E71260);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v5 + 8))(v8, v4);
  }

  MEMORY[0x1D3892850](*(v2 + a2[7]));
  return sub_1D1E6926C();
}

void *sub_1D1D3B008(uint64_t a1, uint64_t a2)
{
  v86 = type metadata accessor for StaticService(0);
  v98 = *(v86 - 8);
  v4 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v97 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v6 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v96 = &v82 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC40, &unk_1D1EAADA0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v82 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v82 - v20;
  v22 = type metadata accessor for StaticUserActionPrediction();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v94 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1E69E7CC0];
  v101 = MEMORY[0x1E69E7CC0];
  v27 = *(a2 + 16);

  v92 = v27;
  if (!v27)
  {
    v95 = v26;
LABEL_53:

    MEMORY[0x1EEE9AC00](v80);
    *(&v82 - 2) = a1;
    *(&v82 - 1) = &v101;
    v81 = sub_1D178A420(sub_1D1D40360, (&v82 - 4), a2);

    return v81;
  }

  v90 = v21;
  v28 = 0;
  v100 = a2 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v99 = *(v23 + 72);
  v87 = MEMORY[0x1E69E7CC0];
  v88 = v19;
  v95 = MEMORY[0x1E69E7CC0];
  v89 = v22;
  v29 = v94;
  v30 = v92;
  v84 = a1;
  v85 = a2;
  v82 = v14;
  v83 = v12;
  while (1)
  {
    sub_1D1D401E4(v100 + v99 * v28, v29, type metadata accessor for StaticUserActionPrediction);
    v31 = *(v29 + *(v22 + 28));
    if (v31 > 2)
    {
      break;
    }

    if (v31 < 2)
    {
      goto LABEL_3;
    }

    v32 = *(a1 + *(type metadata accessor for StateSnapshot(0) + 32));
    if (*(v32 + 16) && (v33 = sub_1D1742188(v94), (v34 & 1) != 0))
    {
      v35 = v33;
      v36 = *(v32 + 56);
      v37 = type metadata accessor for StaticAccessory(0);
      v38 = *(v37 - 8);
      v39 = v36 + *(v38 + 72) * v35;
      v40 = v90;
      sub_1D1D401E4(v39, v90, type metadata accessor for StaticAccessory);
      (*(v38 + 56))(v40, 0, 1, v37);
      v19 = v88;
    }

    else
    {
      v37 = type metadata accessor for StaticAccessory(0);
      v40 = v90;
      (*(*(v37 - 8) + 56))(v90, 1, 1, v37);
    }

    sub_1D1741C08(v40, v19, &qword_1EC6436C8, &unk_1D1E97C40);
    type metadata accessor for StaticAccessory(0);
    if ((*(*(v37 - 8) + 48))(v19, 1, v37) == 1)
    {
      sub_1D1741A30(v19, &qword_1EC6436C8, &unk_1D1E97C40);
      v48 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v48 = StaticAccessory.visibleStaticServices.getter();
      sub_1D1D402B4(v19, type metadata accessor for StaticAccessory);
    }

    v49 = *(v48 + 16);
    result = v95;
    v51 = v95[2];
    v52 = v51 + v49;
    if (__OFADD__(v51, v49))
    {
      goto LABEL_55;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v53 = v95;
    if (!result || v52 > v95[3] >> 1)
    {
      if (v51 <= v52)
      {
        v54 = v51 + v49;
      }

      else
      {
        v54 = v51;
      }

      result = sub_1D177D048(result, v54, 1, v95);
      v53 = result;
    }

    v22 = v89;
    v55 = *(v48 + 16);
    v95 = v53;
    if (v55)
    {
      v56 = v53[2];
      if ((v53[3] >> 1) - v56 < v49)
      {
        goto LABEL_57;
      }

      v57 = v53 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v56;
      swift_arrayInitWithCopy();

      v29 = v94;
      v30 = v92;
      if (v49)
      {
        v58 = v95[2];
        v59 = __OFADD__(v58, v49);
        v60 = v58 + v49;
        if (v59)
        {
          goto LABEL_58;
        }

        v95[2] = v60;
      }
    }

    else
    {

      v29 = v94;
      v30 = v92;
      if (v49)
      {
        goto LABEL_56;
      }
    }

    sub_1D1741A30(v90, &qword_1EC6436C8, &unk_1D1E97C40);
    sub_1D1D402B4(v29, type metadata accessor for StaticUserActionPrediction);
LABEL_4:
    if (++v28 == v30)
    {
      goto LABEL_53;
    }
  }

  if (v31 != 3)
  {
LABEL_3:
    sub_1D1D402B4(v29, type metadata accessor for StaticUserActionPrediction);
    goto LABEL_4;
  }

  v41 = *(a1 + *(type metadata accessor for StateSnapshot(0) + 56));
  if (*(v41 + 16) && (v42 = sub_1D1742188(v94), (v43 & 1) != 0))
  {
    v44 = v42;
    v45 = *(v41 + 56);
    v46 = type metadata accessor for StaticServiceGroup();
    v47 = *(v46 - 8);
    sub_1D1D401E4(v45 + *(v47 + 72) * v44, v14, type metadata accessor for StaticServiceGroup);
    (*(v47 + 56))(v14, 0, 1, v46);
    v19 = v88;
  }

  else
  {
    v46 = type metadata accessor for StaticServiceGroup();
    (*(*(v46 - 8) + 56))(v14, 1, 1, v46);
  }

  sub_1D1741C08(v14, v12, &qword_1EC64CC40, &unk_1D1EAADA0);
  type metadata accessor for StaticServiceGroup();
  if ((*(*(v46 - 8) + 48))(v12, 1, v46) == 1)
  {
    sub_1D1741A30(v14, &qword_1EC64CC40, &unk_1D1EAADA0);
    v29 = v94;
    sub_1D1D402B4(v94, type metadata accessor for StaticUserActionPrediction);
    sub_1D1741A30(v12, &qword_1EC64CC40, &unk_1D1EAADA0);
LABEL_51:
    v22 = v89;
    v30 = v92;
    goto LABEL_4;
  }

  v61 = *&v12[*(v46 + 56)];

  sub_1D1D402B4(v12, type metadata accessor for StaticServiceGroup);
  v62 = v61 + 64;
  v63 = 1 << *(v61 + 32);
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  else
  {
    v64 = -1;
  }

  v65 = v64 & *(v61 + 64);
  v66 = (v63 + 63) >> 6;
  v93 = v61;

  v67 = 0;
  v68 = v87;
  if (v65)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v69 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v69 >= v66)
    {
      v87 = v68;

      v14 = v82;
      sub_1D1741A30(v82, &qword_1EC64CC40, &unk_1D1EAADA0);
      v29 = v94;
      sub_1D1D402B4(v94, type metadata accessor for StaticUserActionPrediction);

      a1 = v84;
      a2 = v85;
      v12 = v83;
      v19 = v88;
      goto LABEL_51;
    }

    v65 = *(v62 + 8 * v69);
    ++v67;
    if (v65)
    {
      v67 = v69;
      do
      {
LABEL_44:
        v70 = __clz(__rbit64(v65)) | (v67 << 6);
        v71 = v93;
        v72 = *(v93 + 48);
        v73 = sub_1D1E66A7C();
        v74 = v96;
        (*(*(v73 - 8) + 16))(v96, v72 + *(*(v73 - 8) + 72) * v70, v73);
        v75 = *(v98 + 72);
        v76 = *(v71 + 56) + v75 * v70;
        v77 = *(v91 + 48);
        sub_1D1D401E4(v76, v74 + v77, type metadata accessor for StaticService);
        sub_1D1D401E4(v74 + v77, v97, type metadata accessor for StaticService);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_1D177D048(0, v68[2] + 1, 1, v68);
        }

        v79 = v68[2];
        v78 = v68[3];
        if (v79 >= v78 >> 1)
        {
          v68 = sub_1D177D048(v78 > 1, v79 + 1, 1, v68);
        }

        v65 &= v65 - 1;
        v68[2] = v79 + 1;
        sub_1D1D4024C(v97, v68 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + v79 * v75, type metadata accessor for StaticService);
        v101 = v68;
        result = sub_1D1741A30(v96, &qword_1EC642DB0, &unk_1D1E6F360);
      }

      while (v65);
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t Collection<>.mapSnapshot(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v119 = a1;
  v107 = type metadata accessor for StaticService(0);
  v122 = *(v107 - 8);
  v7 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v121 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v9 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v120 = &v101 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC40, &unk_1D1EAADA0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v112 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v101 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v111 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v115 = &v101 - v20;
  v108 = type metadata accessor for StaticUserActionPrediction();
  v113 = *(v108 - 8);
  v21 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v23 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC00, &unk_1D1EA1FA0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v101 - v27;
  v29 = *(a2 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v32 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v102 = *(AssociatedTypeWitness - 8);
  v35 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v37 = &v101 - v36;
  v38 = MEMORY[0x1E69E7CC0];
  v126 = MEMORY[0x1E69E7CC0];
  v39 = *(v29 + 16);
  v105 = v4;
  v39(v32, v4, a2);
  sub_1D1E67A2C();
  v103 = v33;
  v40 = v28;
  v104 = a2;
  v42 = v108;
  v41 = v109;
  v43 = v113;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1D1E685CC();
  v45 = *(v43 + 48);
  v44 = v43 + 48;
  v123 = v45;
  if (v45(v28, 1, v42) == 1)
  {
LABEL_2:
    (*(v102 + 8))(v37, AssociatedTypeWitness);

    MEMORY[0x1EEE9AC00](v46);
    *(&v101 - 2) = v119;
    *(&v101 - 1) = &v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
    v47 = sub_1D1E67A4C();

    return v47;
  }

  v125 = v38;
  v113 = v44;
  v114 = AssociatedTypeWitness;
  v117 = v37;
  v110 = v23;
  v106 = v28;
  while (1)
  {
    sub_1D1D4024C(v40, v23, type metadata accessor for StaticUserActionPrediction);
    v49 = v23[*(v42 + 28)];
    if (v49 > 2)
    {
      break;
    }

    if (v49 < 2)
    {
      goto LABEL_4;
    }

    v50 = *(v119 + *(type metadata accessor for StateSnapshot(0) + 32));
    if (*(v50 + 16) && (v51 = sub_1D1742188(v23), (v52 & 1) != 0))
    {
      v53 = v51;
      v54 = *(v50 + 56);
      v55 = type metadata accessor for StaticAccessory(0);
      v56 = *(v55 - 8);
      v118 = v38;
      v57 = v41;
      v58 = v56;
      v59 = v54 + *(v56 + 72) * v53;
      v60 = v115;
      sub_1D1D401E4(v59, v115, type metadata accessor for StaticAccessory);
      (*(v58 + 56))(v60, 0, 1, v55);
      v41 = v57;
      v38 = v118;
    }

    else
    {
      v55 = type metadata accessor for StaticAccessory(0);
      v60 = v115;
      (*(*(v55 - 8) + 56))(v115, 1, 1, v55);
    }

    v71 = v111;
    sub_1D1741C08(v60, v111, &qword_1EC6436C8, &unk_1D1E97C40);
    type metadata accessor for StaticAccessory(0);
    if ((*(*(v55 - 8) + 48))(v71, 1, v55) == 1)
    {
      result = sub_1D1741A30(v71, &qword_1EC6436C8, &unk_1D1E97C40);
      v72 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v72 = StaticAccessory.visibleStaticServices.getter();
      result = sub_1D1D402B4(v71, type metadata accessor for StaticAccessory);
    }

    v23 = v110;
    v73 = *(v72 + 16);
    v74 = v38[2];
    v75 = v74 + v73;
    if (__OFADD__(v74, v73))
    {
      goto LABEL_54;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v75 > v38[3] >> 1)
    {
      if (v74 <= v75)
      {
        v76 = v74 + v73;
      }

      else
      {
        v76 = v74;
      }

      result = sub_1D177D048(result, v76, 1, v38);
      v38 = result;
    }

    AssociatedTypeWitness = v114;
    v37 = v117;
    if (*(v72 + 16))
    {
      v77 = v38[2];
      if ((v38[3] >> 1) - v77 < v73)
      {
        goto LABEL_56;
      }

      v78 = v38 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v77;
      swift_arrayInitWithCopy();

      result = v115;
      if (v73)
      {
        v79 = v38[2];
        v80 = __OFADD__(v79, v73);
        v81 = v79 + v73;
        if (v80)
        {
          goto LABEL_57;
        }

        v38[2] = v81;
      }
    }

    else
    {

      result = v115;
      if (v73)
      {
        goto LABEL_55;
      }
    }

    sub_1D1741A30(result, &qword_1EC6436C8, &unk_1D1E97C40);
    sub_1D1D402B4(v23, type metadata accessor for StaticUserActionPrediction);
LABEL_5:
    sub_1D1E685CC();
    if (v123(v40, 1, v42) == 1)
    {
      goto LABEL_2;
    }
  }

  if (v49 != 3)
  {
LABEL_4:
    sub_1D1D402B4(v23, type metadata accessor for StaticUserActionPrediction);
    goto LABEL_5;
  }

  v61 = *(v119 + *(type metadata accessor for StateSnapshot(0) + 56));
  v62 = *(v61 + 16);
  v118 = v38;
  if (v62 && (v63 = sub_1D1742188(v23), (v64 & 1) != 0))
  {
    v65 = v63;
    v66 = *(v61 + 56);
    v67 = type metadata accessor for StaticServiceGroup();
    v68 = v41;
    v69 = *(v67 - 8);
    v70 = v66 + *(v69 + 72) * v65;
    v37 = v117;
    sub_1D1D401E4(v70, v68, type metadata accessor for StaticServiceGroup);
    (*(v69 + 56))(v68, 0, 1, v67);
    v41 = v68;
  }

  else
  {
    v67 = type metadata accessor for StaticServiceGroup();
    (*(*(v67 - 8) + 56))(v41, 1, 1, v67);
  }

  v82 = v112;
  sub_1D1741C08(v41, v112, &qword_1EC64CC40, &unk_1D1EAADA0);
  type metadata accessor for StaticServiceGroup();
  if ((*(*(v67 - 8) + 48))(v82, 1, v67) == 1)
  {
    sub_1D1741A30(v41, &qword_1EC64CC40, &unk_1D1EAADA0);
    sub_1D1D402B4(v23, type metadata accessor for StaticUserActionPrediction);
    sub_1D1741A30(v82, &qword_1EC64CC40, &unk_1D1EAADA0);
    v38 = v118;
    AssociatedTypeWitness = v114;
    goto LABEL_5;
  }

  v83 = v82;
  v84 = *(v82 + *(v67 + 56));

  sub_1D1D402B4(v83, type metadata accessor for StaticServiceGroup);
  v85 = 1 << *(v84 + 32);
  if (v85 < 64)
  {
    v86 = ~(-1 << v85);
  }

  else
  {
    v86 = -1;
  }

  v87 = v86 & *(v84 + 64);
  v88 = (v85 + 63) >> 6;

  v89 = 0;
  while (v87)
  {
LABEL_47:
    v91 = __clz(__rbit64(v87)) | (v89 << 6);
    v92 = *(v84 + 48);
    v93 = sub_1D1E66A7C();
    v94 = v120;
    (*(*(v93 - 8) + 16))(v120, v92 + *(*(v93 - 8) + 72) * v91, v93);
    v95 = *(v122 + 72);
    v96 = *(v84 + 56) + v95 * v91;
    v97 = *(v116 + 48);
    sub_1D1D401E4(v96, v94 + v97, type metadata accessor for StaticService);
    sub_1D1D401E4(v94 + v97, v121, type metadata accessor for StaticService);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v125 = sub_1D177D048(0, v125[2] + 1, 1, v125);
    }

    v99 = v125[2];
    v98 = v125[3];
    if (v99 >= v98 >> 1)
    {
      v125 = sub_1D177D048(v98 > 1, v99 + 1, 1, v125);
    }

    v87 &= v87 - 1;
    v100 = v125;
    v125[2] = v99 + 1;
    sub_1D1D4024C(v121, v100 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + v99 * v95, type metadata accessor for StaticService);
    v126 = v100;
    result = sub_1D1741A30(v120, &qword_1EC642DB0, &unk_1D1E6F360);
  }

  v37 = v117;
  while (1)
  {
    v90 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      break;
    }

    if (v90 >= v88)
    {

      v41 = v109;
      sub_1D1741A30(v109, &qword_1EC64CC40, &unk_1D1EAADA0);
      sub_1D1D402B4(v23, type metadata accessor for StaticUserActionPrediction);

      v42 = v108;
      AssociatedTypeWitness = v114;
      v40 = v106;
      v38 = v118;
      goto LABEL_5;
    }

    v87 = *(v84 + 64 + 8 * v90);
    ++v89;
    if (v87)
    {
      v89 = v90;
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1D1D3C888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v134 = a3;
  v139 = a2;
  v140 = a4;
  v132 = type metadata accessor for StaticServiceGroup();
  v129 = *(v132 - 8);
  v5 = *(v129 + 64);
  v6 = MEMORY[0x1EEE9AC00](v132);
  v130 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v131 = &v118 - v8;
  v9 = type metadata accessor for StaticActionSet();
  v137 = *(v9 - 8);
  v10 = *(v137 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v118 - v14;
  v128 = type metadata accessor for StaticMediaSystem();
  v125 = *(v128 - 8);
  v16 = *(v125 + 64);
  v17 = MEMORY[0x1EEE9AC00](v128);
  v126 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v127 = &v118 - v19;
  v20 = type metadata accessor for StaticService(0);
  v121 = *(v20 - 8);
  v122 = v20;
  v21 = *(v121 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v120 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v123 = &v118 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v119 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v118 - v29;
  v31 = sub_1D1E66A7C();
  v135 = *(v31 - 8);
  v136 = v31;
  v32 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v124 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for StaticAccessory(0);
  v34 = *(v133 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v133);
  v38 = &v118 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v118 - v39;
  result = type metadata accessor for StaticUserActionPrediction();
  v42 = *(result + 28);
  v138 = a1;
  v43 = *(a1 + v42);
  if (v43 <= 1)
  {
    v53 = v137;
    if (v43)
    {
      result = type metadata accessor for StateSnapshot(0);
      v54 = *(v139 + *(result + 36));
      if (*(v54 + 16))
      {
        result = sub_1D1742188(v138);
        if (v55)
        {
          sub_1D1D401E4(*(v54 + 56) + *(v53 + 72) * result, v13, type metadata accessor for StaticActionSet);
          sub_1D1D4024C(v13, v15, type metadata accessor for StaticActionSet);
          if (v15[*(v9 + 48)] == 1)
          {
            v56 = v140;
            v140[3] = v9;
            v56[4] = sub_1D1D40314(&qword_1EC64C000, type metadata accessor for StaticActionSet);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
            return sub_1D1D4024C(v15, boxed_opaque_existential_1, type metadata accessor for StaticActionSet);
          }

          result = sub_1D1D402B4(v15, type metadata accessor for StaticActionSet);
        }
      }
    }

    goto LABEL_32;
  }

  if (v43 != 2)
  {
    if (v43 == 3)
    {
      result = type metadata accessor for StateSnapshot(0);
      v44 = *(v139 + *(result + 56));
      if (*(v44 + 16))
      {
        result = sub_1D1742188(v138);
        if (v45)
        {
          v46 = *(v44 + 56);
          v47 = v130;
          sub_1D1D401E4(v46 + *(v129 + 72) * result, v130, type metadata accessor for StaticServiceGroup);
          v48 = type metadata accessor for StaticServiceGroup;
          v49 = v131;
          sub_1D1D4024C(v47, v131, type metadata accessor for StaticServiceGroup);
          v50 = v140;
          v140[3] = v132;
          v51 = &qword_1EC64BA10;
          v52 = type metadata accessor for StaticServiceGroup;
LABEL_19:
          v50[4] = sub_1D1D40314(v51, v52);
          v70 = __swift_allocate_boxed_opaque_existential_1(v50);
          return sub_1D1D4024C(v49, v70, v48);
        }
      }
    }

    else
    {
      result = type metadata accessor for StateSnapshot(0);
      v66 = *(v139 + *(result + 44));
      if (*(v66 + 16))
      {
        result = sub_1D1742188(v138);
        if (v67)
        {
          v68 = *(v66 + 56);
          v69 = v126;
          sub_1D1D401E4(v68 + *(v125 + 72) * result, v126, type metadata accessor for StaticMediaSystem);
          v48 = type metadata accessor for StaticMediaSystem;
          v49 = v127;
          sub_1D1D4024C(v69, v127, type metadata accessor for StaticMediaSystem);
          v50 = v140;
          v140[3] = v128;
          v51 = &qword_1EC64BFE8;
          v52 = type metadata accessor for StaticMediaSystem;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_32;
  }

  v58 = result;
  result = type metadata accessor for StateSnapshot(0);
  v59 = *(v139 + *(result + 32));
  if (!*(v59 + 16) || (v60 = result, result = sub_1D1742188(v138), (v61 & 1) == 0))
  {
LABEL_32:
    v87 = v140;
    v140[4] = 0;
    *v87 = 0u;
    *(v87 + 1) = 0u;
    return result;
  }

  sub_1D1D401E4(*(v59 + 56) + *(v34 + 72) * result, v38, type metadata accessor for StaticAccessory);
  sub_1D1D4024C(v38, v40, type metadata accessor for StaticAccessory);
  sub_1D1741C08(v138 + v58[6], v30, &qword_1EC642590, qword_1D1E71260);
  v63 = v135;
  v62 = v136;
  v64 = *(v135 + 48);
  if (v64(v30, 1, v136) == 1)
  {
    v65 = sub_1D1741A30(v30, &qword_1EC642590, qword_1D1E71260);
LABEL_34:
    v82 = v134;
    goto LABEL_35;
  }

  v71 = v124;
  (*(v63 + 32))(v124, v30, v62);
  v72 = *(v139 + v60[15]);
  if (!*(v72 + 16) || (v73 = sub_1D1742188(v71), (v74 & 1) == 0))
  {
    v65 = (*(v63 + 8))(v71, v62);
    goto LABEL_34;
  }

  v75 = *(v72 + 56);
  v76 = v120;
  v77 = *(v121 + 72);
  sub_1D1D401E4(v75 + v77 * v73, v120, type metadata accessor for StaticService);
  v78 = v123;
  sub_1D1D4024C(v76, v123, type metadata accessor for StaticService);
  if (qword_1EC642398 != -1)
  {
    swift_once();
  }

  v79 = v122;
  v80 = *(v122 + 104);
  v81 = sub_1D171951C(*(v78 + v80), qword_1EC6BE1B0);
  v82 = v134;
  if ((v81 & 1) == 0)
  {
    goto LABEL_30;
  }

  v83 = v78 + *(v79 + 116);
  v84 = v119;
  sub_1D1741C08(v83, v119, &qword_1EC642590, qword_1D1E71260);
  v85 = v64(v84, 1, v136);
  v62 = v136;
  v82 = v134;
  sub_1D1741A30(v84, &qword_1EC642590, qword_1D1E71260);
  v86 = v85 == 1;
  v78 = v123;
  if (!v86)
  {
    goto LABEL_30;
  }

  if (qword_1EE07AB30 != -1)
  {
    swift_once();
  }

  if (sub_1D171951C(*(v78 + v80), off_1EE07AB38))
  {
LABEL_30:
    sub_1D1D402B4(v78, type metadata accessor for StaticService);
    v65 = (*(v135 + 8))(v124, v62);
LABEL_35:
    v88 = v133;
    goto LABEL_36;
  }

  v88 = v133;
  if ((v40[*(v133 + 76)] & 1) != 0 || (v104 = StaticAccessory.staticServicesExcludingComponents.getter(), v82 = v134, v105 = v104[2], , v105 == 1))
  {
    v106 = *v82;
    v107 = *(*v82 + 16);

    v108 = v107 + 1;
    v109 = v106;
    v110 = v135;
    v111 = v121;
    v112 = v122;
    while (--v108)
    {
      v113 = v109 + v77;
      v114 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v109 + ((*(v111 + 80) + 32) & ~*(v111 + 80)), v123);
      v109 = v113;
      if (v114)
      {

        sub_1D1D402B4(v123, type metadata accessor for StaticService);
        (*(v110 + 8))(v124, v136);
        v115 = v140;
        v140[4] = 0;
        *v115 = 0u;
        *(v115 + 1) = 0u;
        return sub_1D1D402B4(v40, type metadata accessor for StaticAccessory);
      }
    }

    v116 = v140;
    v140[3] = v112;
    v116[4] = sub_1D1D40314(&qword_1EC646AF0, type metadata accessor for StaticService);
    v117 = __swift_allocate_boxed_opaque_existential_1(v116);
    sub_1D1D4024C(v123, v117, type metadata accessor for StaticService);
    (*(v110 + 8))(v124, v136);
    return sub_1D1D402B4(v40, type metadata accessor for StaticAccessory);
  }

  sub_1D1D402B4(v78, type metadata accessor for StaticService);
  v65 = (*(v135 + 8))(v124, v136);
LABEL_36:
  v89 = &v40[*(v88 + 92)];
  v90 = v89[8];
  if (v90 <= 2)
  {
    if (v90 >= 2)
    {
      v91 = *v89;
      if (v91 & 0x100) == 0 && (v91)
      {
        goto LABEL_40;
      }
    }

LABEL_43:
    v102 = v140;
    v140[4] = 0;
    *v102 = 0u;
    *(v102 + 1) = 0u;
    return sub_1D1D402B4(v40, type metadata accessor for StaticAccessory);
  }

  if (v90 == 3)
  {
    goto LABEL_43;
  }

LABEL_40:
  v92 = v82;
  v93 = *&v40[*(v88 + 84)];
  MEMORY[0x1EEE9AC00](v65);
  *(&v118 - 2) = v40;
  v95 = sub_1D17868B8(sub_1D1820ECC, (&v118 - 4), v94);
  v96 = sub_1D1785078(v95);

  v97 = *v92;

  v99 = sub_1D1785078(v98);

  LOBYTE(v97) = sub_1D1A47370(v99, v96);

  if (v97)
  {
    v100 = v140;
    v140[3] = v88;
    v100[4] = sub_1D1D40314(&qword_1EC64BA18, type metadata accessor for StaticAccessory);
    v101 = __swift_allocate_boxed_opaque_existential_1(v100);
    sub_1D1D401E4(v40, v101, type metadata accessor for StaticAccessory);
  }

  else
  {
    v103 = v140;
    v140[4] = 0;
    *v103 = 0u;
    *(v103 + 1) = 0u;
  }

  return sub_1D1D402B4(v40, type metadata accessor for StaticAccessory);
}

void *StateSnapshot.userRecommendationsTileInfos.getter()
{
  v3 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 68));
  swift_bridgeObjectRetain_n();
  sub_1D1D3D69C(&v3);

  v1 = sub_1D1D3B008(v0, v3);

  return v1;
}

uint64_t sub_1D1D3D69C(void **a1)
{
  v2 = *(type metadata accessor for StaticUserActionPrediction() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1E0C148(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D1D3D744(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D1D3D744(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
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
        type metadata accessor for StaticUserActionPrediction();
        v6 = sub_1D1E67C8C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for StaticUserActionPrediction() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D1D3DAC8(v8, v9, a1, v4);
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
    return sub_1D1D3D870(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1D3D870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for StaticUserActionPrediction();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v30 - v18;
  v32 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v37 = v20;
    v31 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v35 = v22;
    v36 = a3;
    v33 = v25;
    v34 = v24;
    while (1)
    {
      sub_1D1D401E4(v25, v19, type metadata accessor for StaticUserActionPrediction);
      sub_1D1D401E4(v22, v15, type metadata accessor for StaticUserActionPrediction);
      v26 = *(v8 + 20);
      v27 = *&v19[v26];
      v28 = *&v15[v26];
      sub_1D1D402B4(v15, type metadata accessor for StaticUserActionPrediction);
      result = sub_1D1D402B4(v19, type metadata accessor for StaticUserActionPrediction);
      if (v28 >= v27)
      {
LABEL_4:
        a3 = v36 + 1;
        v22 = v35 + v31;
        v24 = v34 - 1;
        v25 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      sub_1D1D4024C(v25, v12, type metadata accessor for StaticUserActionPrediction);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1D4024C(v12, v22, type metadata accessor for StaticUserActionPrediction);
      v22 += v23;
      v25 += v23;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1D3DAC8(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v9 = type metadata accessor for StaticUserActionPrediction();
  v119 = *(v9 - 8);
  v10 = *(v119 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v114 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v122 = &v108 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v123 = &v108 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = &v108 - v18;
  v121 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_1D1E0BE44(a4);
    }

    v125 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v121)
      {
        v104 = *(result + 16 * a4);
        v105 = result;
        v106 = *(result + 16 * (a4 - 1) + 40);
        sub_1D1D3E42C(*v121 + *(v119 + 72) * v104, *v121 + *(v119 + 72) * *(result + 16 * (a4 - 1) + 32), *v121 + *(v119 + 72) * v106, v5);
        if (v6)
        {
        }

        if (v106 < v104)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_1D1E0BE44(v105);
        }

        if (a4 - 2 >= *(v105 + 2))
        {
          goto LABEL_123;
        }

        v107 = &v105[16 * a4];
        *v107 = v104;
        *(v107 + 1) = v106;
        v125 = v105;
        sub_1D1E0BDB8(a4 - 1);
        result = v125;
        a4 = *(v125 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v110 = a4;
  v124 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v115 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v119 + 72);
      v5 = *v121 + v25 * v24;
      v118 = *v121;
      v26 = v118;
      sub_1D1D401E4(v118 + v25 * v24, v19, type metadata accessor for StaticUserActionPrediction);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v123;
      sub_1D1D401E4(v27, v123, type metadata accessor for StaticUserActionPrediction);
      v30 = *(v9 + 20);
      v31 = *&v19[v30];
      v32 = *(v29 + v30);
      sub_1D1D402B4(v29, type metadata accessor for StaticUserActionPrediction);
      result = sub_1D1D402B4(v19, type metadata accessor for StaticUserActionPrediction);
      v109 = v28;
      v33 = v28 + 2;
      v120 = v25;
      v34 = v118 + v25 * (v28 + 2);
      while (v20 != v33)
      {
        sub_1D1D401E4(v34, v19, type metadata accessor for StaticUserActionPrediction);
        v35 = v123;
        sub_1D1D401E4(v5, v123, type metadata accessor for StaticUserActionPrediction);
        v36 = *(v124 + 20);
        v37 = *&v19[v36];
        v38 = *(v35 + v36);
        sub_1D1D402B4(v35, type metadata accessor for StaticUserActionPrediction);
        result = sub_1D1D402B4(v19, type metadata accessor for StaticUserActionPrediction);
        ++v33;
        v34 += v120;
        v5 += v120;
        if (v32 < v31 == v38 >= v37)
        {
          v20 = v33 - 1;
          break;
        }
      }

      v23 = v109;
      a4 = v110;
      v9 = v124;
      if (v32 < v31)
      {
        if (v20 < v109)
        {
          goto LABEL_126;
        }

        if (v109 < v20)
        {
          v108 = v6;
          v39 = v120 * (v20 - 1);
          v40 = v20 * v120;
          v41 = v20;
          v42 = v20;
          v43 = v109;
          v44 = v109 * v120;
          do
          {
            if (v43 != --v42)
            {
              v45 = *v121;
              if (!*v121)
              {
                goto LABEL_132;
              }

              v5 = v45 + v44;
              sub_1D1D4024C(v45 + v44, v114, type metadata accessor for StaticUserActionPrediction);
              if (v44 < v39 || v5 >= v45 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1D1D4024C(v114, v45 + v39, type metadata accessor for StaticUserActionPrediction);
            }

            ++v43;
            v39 -= v120;
            v40 -= v120;
            v44 += v120;
          }

          while (v43 < v42);
          v6 = v108;
          v23 = v109;
          a4 = v110;
          v9 = v124;
          v20 = v41;
        }
      }
    }

    v46 = v121[1];
    if (v20 < v46)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_125;
      }

      if (v20 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_127;
        }

        if ((v23 + a4) >= v46)
        {
          v47 = v121[1];
        }

        else
        {
          v47 = v23 + a4;
        }

        if (v47 < v23)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v20 != v47)
        {
          break;
        }
      }
    }

    v21 = v20;
    if (v20 < v23)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v115;
    }

    else
    {
      result = sub_1D1E0BE58(0, *(v115 + 2) + 1, 1, v115);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v48 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      result = sub_1D1E0BE58((v48 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v49 = &v22[16 * a4];
    *(v49 + 4) = v23;
    *(v49 + 5) = v21;
    v50 = *v111;
    if (!*v111)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v51 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v52 = *(v22 + 4);
          v53 = *(v22 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_52:
          if (v55)
          {
            goto LABEL_113;
          }

          v68 = &v22[16 * v5];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_116;
          }

          v74 = &v22[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_120;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v78 = &v22[16 * v5];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_66:
        if (v73)
        {
          goto LABEL_115;
        }

        v81 = &v22[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v51 - 1;
        if (v51 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
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
          goto LABEL_128;
        }

        if (!*v121)
        {
          goto LABEL_131;
        }

        v89 = v22;
        v90 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v51 + 40];
        sub_1D1D3E42C(*v121 + *(v119 + 72) * v90, *v121 + *(v119 + 72) * *&v22[16 * v51 + 32], *v121 + *(v119 + 72) * v5, v50);
        if (v6)
        {
        }

        if (v5 < v90)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v91 = v89;
        }

        else
        {
          v91 = sub_1D1E0BE44(v89);
        }

        v9 = v124;
        if (a4 >= *(v91 + 2))
        {
          goto LABEL_110;
        }

        v92 = &v91[16 * a4];
        *(v92 + 4) = v90;
        *(v92 + 5) = v5;
        v125 = v91;
        result = sub_1D1E0BDB8(v51);
        v22 = v125;
        v5 = *(v125 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v22[16 * v5 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_111;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_112;
      }

      v63 = &v22[16 * v5];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_114;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_117;
      }

      if (v67 >= v59)
      {
        v85 = &v22[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_121;
        }

        if (v54 < v88)
        {
          v51 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v121[1];
    a4 = v110;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  v108 = v6;
  v109 = v23;
  a4 = *v121;
  v93 = *(v119 + 72);
  v94 = *v121 + v93 * (v20 - 1);
  v95 = -v93;
  v96 = v23 - v20;
  v112 = v93;
  v113 = v47;
  v5 = a4 + v20 * v93;
LABEL_86:
  v120 = v20;
  v116 = v5;
  v117 = v96;
  v118 = v94;
  v97 = v124;
  while (1)
  {
    sub_1D1D401E4(v5, v19, type metadata accessor for StaticUserActionPrediction);
    v98 = v123;
    sub_1D1D401E4(v94, v123, type metadata accessor for StaticUserActionPrediction);
    v99 = *(v97 + 20);
    v100 = *&v19[v99];
    v101 = *(v98 + v99);
    sub_1D1D402B4(v98, type metadata accessor for StaticUserActionPrediction);
    result = sub_1D1D402B4(v19, type metadata accessor for StaticUserActionPrediction);
    if (v101 >= v100)
    {
LABEL_85:
      v20 = v120 + 1;
      v21 = v113;
      v94 = v118 + v112;
      v96 = v117 - 1;
      v5 = v116 + v112;
      if (v120 + 1 != v113)
      {
        goto LABEL_86;
      }

      v6 = v108;
      v23 = v109;
      v9 = v124;
      if (v113 < v109)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v102 = v122;
    sub_1D1D4024C(v5, v122, type metadata accessor for StaticUserActionPrediction);
    v97 = v124;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1D4024C(v102, v94, type metadata accessor for StaticUserActionPrediction);
    v94 += v95;
    v5 += v95;
    if (__CFADD__(v96++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_1D1D3E42C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = a3;
  v48 = type metadata accessor for StaticUserActionPrediction();
  v8 = *(*(v48 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v48);
  v47 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = v43 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = v49 - a2;
  if (v49 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v52 = a1;
  v51 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43[1] = v4;
    v26 = a4 + v19;
    if (v19 < 1)
    {
      v29 = a4 + v19;
    }

    else
    {
      v27 = -v15;
      v28 = a4 + v19;
      v29 = v26;
      v45 = v27;
      v46 = a4;
      do
      {
        v43[0] = v29;
        v30 = a2;
        v31 = a2 + v27;
        while (1)
        {
          v33 = v49;
          if (v30 <= a1)
          {
            v52 = v30;
            v50 = v43[0];
            goto LABEL_59;
          }

          v44 = v29;
          v49 += v27;
          v34 = v28 + v27;
          sub_1D1D401E4(v34, v13, type metadata accessor for StaticUserActionPrediction);
          v35 = v31;
          v36 = v31;
          v37 = v13;
          v38 = v47;
          sub_1D1D401E4(v36, v47, type metadata accessor for StaticUserActionPrediction);
          v39 = *(v48 + 20);
          v40 = *(v37 + v39);
          v41 = *(v38 + v39);
          v42 = v38;
          v13 = v37;
          sub_1D1D402B4(v42, type metadata accessor for StaticUserActionPrediction);
          sub_1D1D402B4(v37, type metadata accessor for StaticUserActionPrediction);
          if (v41 < v40)
          {
            break;
          }

          v29 = v34;
          if (v33 < v28 || v49 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v35;
          }

          else
          {
            v31 = v35;
            if (v33 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v32 = v34 > v46;
          v27 = v45;
          if (!v32)
          {
            a2 = v30;
            goto LABEL_58;
          }
        }

        if (v33 < v30 || v49 >= v30)
        {
          a2 = v35;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v44;
          v27 = v45;
        }

        else
        {
          v29 = v44;
          v27 = v45;
          a2 = v35;
          if (v33 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v46);
    }

LABEL_58:
    v52 = a2;
    v50 = v29;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v50 = a4 + v18;
    if (v18 >= 1 && a2 < v49)
    {
      do
      {
        sub_1D1D401E4(a2, v13, type metadata accessor for StaticUserActionPrediction);
        v22 = v47;
        sub_1D1D401E4(a4, v47, type metadata accessor for StaticUserActionPrediction);
        v23 = *(v48 + 20);
        v24 = *&v13[v23];
        v25 = *(v22 + v23);
        sub_1D1D402B4(v22, type metadata accessor for StaticUserActionPrediction);
        sub_1D1D402B4(v13, type metadata accessor for StaticUserActionPrediction);
        if (v25 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = a4 + v15;
          a4 += v15;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        a1 += v15;
        v52 = a1;
      }

      while (a4 < v20 && a2 < v49);
    }
  }

LABEL_59:
  sub_1D1DC7234(&v52, &v51, &v50);
  return 1;
}

BOOL _s13HomeDataModel26StaticUserActionPredictionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for StaticUserActionPrediction();
  if (*(a1 + *(v17 + 20)) != *(a2 + *(v17 + 20)))
  {
    return 0;
  }

  v18 = *(v17 + 24);
  v19 = a1;
  v20 = *(v13 + 48);
  v26 = v19;
  v27 = v17;
  sub_1D1741C08(v19 + v18, v16, &qword_1EC642590, qword_1D1E71260);
  v28 = a2;
  sub_1D1741C08(a2 + v18, &v16[v20], &qword_1EC642590, qword_1D1E71260);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
      return *(v26 + *(v27 + 28)) == *(v28 + *(v27 + 28));
    }

    goto LABEL_8;
  }

  sub_1D1741C08(v16, v12, &qword_1EC642590, qword_1D1E71260);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_8:
    sub_1D1741A30(v16, &qword_1EC642980, &unk_1D1E6E6E0);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v20], v4);
  sub_1D1D40314(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  v23 = sub_1D1E6775C();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
  if (v23)
  {
    return *(v26 + *(v27 + 28)) == *(v28 + *(v27 + 28));
  }

  return 0;
}

uint64_t type metadata accessor for StaticUserActionPrediction()
{
  result = qword_1EE07BD08;
  if (!qword_1EE07BD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1D3ECF8()
{
  result = qword_1EC64E2F8;
  if (!qword_1EC64E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E2F8);
  }

  return result;
}

unint64_t sub_1D1D3ED4C()
{
  result = qword_1EC64E300;
  if (!qword_1EC64E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E300);
  }

  return result;
}

unint64_t sub_1D1D3EDA0()
{
  result = qword_1EC64E308;
  if (!qword_1EC64E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E308);
  }

  return result;
}

unint64_t sub_1D1D3EDF4()
{
  result = qword_1EC64E310;
  if (!qword_1EC64E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E310);
  }

  return result;
}

unint64_t sub_1D1D3EE48()
{
  result = qword_1EC64E318;
  if (!qword_1EC64E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E318);
  }

  return result;
}

unint64_t sub_1D1D3EE9C()
{
  result = qword_1EC64E320;
  if (!qword_1EC64E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E320);
  }

  return result;
}

uint64_t sub_1D1D3EEF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E656373 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xE900000000000079 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4765636976726573 && a2 == 0xEC00000070756F72 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737953616964656DLL && a2 == 0xEB000000006D6574)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D1D3F0AC(uint64_t *a1)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E3E0, &qword_1D1EAB5E0);
  v50 = *(v53 - 8);
  v2 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E3E8, &qword_1D1EAB5E8);
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E3F0, &qword_1D1EAB5F0);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E3F8, &qword_1D1EAB5F8);
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E400, &qword_1D1EAB600);
  v45 = *(v14 - 8);
  v15 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E408, &qword_1D1EAB608);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v43 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D1D3ECF8();
  v25 = v58;
  sub_1D1E692FC();
  if (v25)
  {
    goto LABEL_9;
  }

  v26 = v17;
  v44 = v14;
  v27 = v56;
  v58 = v19;
  v28 = v22;
  v29 = sub_1D1E68DDC();
  v30 = (2 * *(v29 + 16)) | 1;
  v59 = v29;
  v60 = v29 + 32;
  v61 = 0;
  v62 = v30;
  v31 = sub_1D18085CC();
  if (v31 == 5 || v61 != v62 >> 1)
  {
    v35 = v18;
    v36 = sub_1D1E688EC();
    v19 = swift_allocError();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v38 = &type metadata for PredictionKind;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v58 + 8))(v28, v35);
    swift_unknownObjectRelease();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v57);
    return v19;
  }

  v19 = v31;
  if (v31 <= 1u)
  {
    if (v31)
    {
      v63 = 1;
      sub_1D1D3EE48();
      sub_1D1E68C4C();
      (*(v46 + 8))(v13, v47);
    }

    else
    {
      v63 = 0;
      sub_1D1D3EE9C();
      sub_1D1E68C4C();
      (*(v45 + 8))(v26, v44);
    }

    (*(v58 + 8))(v22, v18);
  }

  else if (v31 == 2)
  {
    v63 = 2;
    sub_1D1D3EDF4();
    sub_1D1E68C4C();
    v41 = v58;
    (*(v48 + 8))(v27, v49);
    (*(v41 + 8))(v22, v18);
  }

  else
  {
    v32 = v58;
    v33 = v28;
    if (v31 == 3)
    {
      v63 = 3;
      sub_1D1D3EDA0();
      v34 = v54;
      sub_1D1E68C4C();
      (*(v51 + 8))(v34, v52);
    }

    else
    {
      v63 = 4;
      sub_1D1D3ED4C();
      v42 = v55;
      sub_1D1E68C4C();
      (*(v50 + 8))(v42, v53);
    }

    (*(v32 + 8))(v33, v18);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v57);
  return v19;
}

unint64_t sub_1D1D3F810()
{
  result = qword_1EC64E330;
  if (!qword_1EC64E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E330);
  }

  return result;
}

unint64_t sub_1D1D3F864()
{
  result = qword_1EC64E338;
  if (!qword_1EC64E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E338);
  }

  return result;
}

unint64_t sub_1D1D3F8B8()
{
  result = qword_1EC64E348;
  if (!qword_1EC64E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E348);
  }

  return result;
}

unint64_t sub_1D1D3F92C()
{
  result = qword_1EC64E350;
  if (!qword_1EC64E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E350);
  }

  return result;
}

void sub_1D1D3FA00()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D177868C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D1D3FB08()
{
  result = qword_1EC64E360;
  if (!qword_1EC64E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E360);
  }

  return result;
}

unint64_t sub_1D1D3FB60()
{
  result = qword_1EC64E368;
  if (!qword_1EC64E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E368);
  }

  return result;
}

unint64_t sub_1D1D3FBB8()
{
  result = qword_1EC64E370;
  if (!qword_1EC64E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E370);
  }

  return result;
}

unint64_t sub_1D1D3FC10()
{
  result = qword_1EC64E378;
  if (!qword_1EC64E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E378);
  }

  return result;
}

unint64_t sub_1D1D3FC68()
{
  result = qword_1EC64E380;
  if (!qword_1EC64E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E380);
  }

  return result;
}

unint64_t sub_1D1D3FCC0()
{
  result = qword_1EC64E388;
  if (!qword_1EC64E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E388);
  }

  return result;
}

unint64_t sub_1D1D3FD18()
{
  result = qword_1EC64E390;
  if (!qword_1EC64E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E390);
  }

  return result;
}

unint64_t sub_1D1D3FD70()
{
  result = qword_1EC64E398;
  if (!qword_1EC64E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E398);
  }

  return result;
}

unint64_t sub_1D1D3FDC8()
{
  result = qword_1EC64E3A0;
  if (!qword_1EC64E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E3A0);
  }

  return result;
}

unint64_t sub_1D1D3FE20()
{
  result = qword_1EC64E3A8;
  if (!qword_1EC64E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E3A8);
  }

  return result;
}

unint64_t sub_1D1D3FE78()
{
  result = qword_1EC64E3B0;
  if (!qword_1EC64E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E3B0);
  }

  return result;
}

unint64_t sub_1D1D3FED0()
{
  result = qword_1EC64E3B8;
  if (!qword_1EC64E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E3B8);
  }

  return result;
}

unint64_t sub_1D1D3FF28()
{
  result = qword_1EC64E3C0;
  if (!qword_1EC64E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E3C0);
  }

  return result;
}

unint64_t sub_1D1D3FF80()
{
  result = qword_1EC64E3C8;
  if (!qword_1EC64E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E3C8);
  }

  return result;
}

unint64_t sub_1D1D3FFD8()
{
  result = qword_1EC64E3D0;
  if (!qword_1EC64E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E3D0);
  }

  return result;
}

unint64_t sub_1D1D40030()
{
  result = qword_1EC64E3D8;
  if (!qword_1EC64E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E3D8);
  }

  return result;
}

uint64_t sub_1D1D40084(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4965636976726573 && a2 == 0xE900000000000044 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1D401E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D4024C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D402B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1D40314(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t StaticZone.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticZone.name.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticZone() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for StaticZone()
{
  result = qword_1EE07CF00;
  if (!qword_1EE07CF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticZone.roomIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticZone() + 24));
}

uint64_t static StaticZone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticZone();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return sub_1D17796E4(v11, v12);
}

uint64_t sub_1D1D4053C()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x7344496D6F6F72;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D1D40584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D421C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1D405AC(uint64_t a1)
{
  v2 = sub_1D1D40874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D405E8(uint64_t a1)
{
  v2 = sub_1D1D40874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticZone.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E410, &qword_1D1EAB610);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D40874();
  sub_1D1E6930C();
  v19 = 0;
  sub_1D1E66A7C();
  sub_1D1D41450(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticZone();
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v18 = 1;
    sub_1D1E68ECC();
    v17 = *(v3 + *(v11 + 24));
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D1D412AC(&qword_1EC644D58, &qword_1EE07B258);
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D1D40874()
{
  result = qword_1EC64E418;
  if (!qword_1EC64E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E418);
  }

  return result;
}

uint64_t StaticZone.hash(into:)()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = sub_1D1D41450(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v6 = type metadata accessor for StaticZone();
  v7 = (v0 + *(v6 + 20));
  v8 = *v7;
  v9 = v7[1];
  sub_1D1E678EC();
  v10 = *(v0 + *(v6 + 24));
  result = MEMORY[0x1D3892850](*(v10 + 16));
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = v2 + 16;
    v14 = *(v2 + 16);
    v15 = v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v14(v5, v15, v1);
      sub_1D1E676EC();
      result = (*v17)(v5, v1);
      v15 += v16;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t StaticZone.hashValue.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  sub_1D1D41450(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v6 = type metadata accessor for StaticZone();
  v7 = (v0 + *(v6 + 20));
  v8 = *v7;
  v9 = v7[1];
  sub_1D1E678EC();
  v10 = *(v0 + *(v6 + 24));
  MEMORY[0x1D3892850](*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v14 = *(v2 + 16);
    v12 = v2 + 16;
    v13 = v14;
    v15 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v1);
      sub_1D1E676EC();
      (*(v12 - 8))(v5, v1);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  return sub_1D1E6926C();
}

uint64_t StaticZone.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1D1E66A7C();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E420, &qword_1D1EAB618);
  v28 = *(v31 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v25 - v8;
  v10 = type metadata accessor for StaticZone();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D40874();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v28;
  v15 = v29;
  v25 = v13;
  v26 = a1;
  v35 = 0;
  sub_1D1D41450(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v18 = v30;
  v17 = v31;
  sub_1D1E68D7C();
  (*(v15 + 32))(v25, v18, v4);
  v34 = 1;
  v19 = sub_1D1E68D2C();
  v20 = &v25[*(v10 + 20)];
  *v20 = v19;
  v20[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
  v33 = 2;
  sub_1D1D412AC(&qword_1EC644DA0, &qword_1EC644B20);
  sub_1D1E68D7C();
  (*(v16 + 8))(v9, v17);
  v22 = *(v10 + 24);
  v23 = v25;
  *&v25[v22] = v32;
  sub_1D1D41348(v23, v27);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_1D1D413AC(v23);
}

uint64_t sub_1D1D41054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_1D17796E4(v12, v13);
}

uint64_t sub_1D1D410F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  sub_1D1D41450(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v9 = (v2 + *(a2 + 20));
  v10 = *v9;
  v11 = v9[1];
  sub_1D1E678EC();
  v12 = *(v2 + *(a2 + 24));
  MEMORY[0x1D3892850](*(v12 + 16));
  v13 = *(v12 + 16);
  if (v13)
  {
    v16 = *(v5 + 16);
    v14 = v5 + 16;
    v15 = v16;
    v17 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v8, v17, v4);
      sub_1D1E676EC();
      (*(v14 - 8))(v8, v4);
      v17 += v18;
      --v13;
    }

    while (v13);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1D412AC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D1D41450(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1D41348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticZone();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D413AC(uint64_t a1)
{
  v2 = type metadata accessor for StaticZone();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1D41450(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1D41538()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D1861350();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D1D415D8()
{
  result = qword_1EC64E428;
  if (!qword_1EC64E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E428);
  }

  return result;
}

unint64_t sub_1D1D41630()
{
  result = qword_1EC64E430;
  if (!qword_1EC64E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E430);
  }

  return result;
}

unint64_t sub_1D1D41688()
{
  result = qword_1EC64E438;
  if (!qword_1EC64E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E438);
  }

  return result;
}

uint64_t sub_1D1D416DC(uint64_t a1, char a2, uint64_t *a3)
{
  v51 = a3;
  v5 = type metadata accessor for StaticZone();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437C8, &qword_1D1E71F28);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v45 = *(result + 48);
    v18 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v44 = *(v15 + 72);
    v48 = (v43 + 32);
    v42 = (v43 + 8);
    while (1)
    {
      v49 = v17;
      v20 = v47;
      sub_1D1D423A8(v18, v47);
      v21 = *v48;
      v22 = v50;
      v23 = v9;
      (*v48)(v50, v20, v9);
      v24 = v8;
      sub_1D1D422D4(v20 + v45, v8);
      v25 = *v51;
      v27 = sub_1D1742188(v22);
      v28 = *(v25 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (*(v25 + 24) >= v30)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D1736C50();
        }
      }

      else
      {
        v32 = v51;
        sub_1D1724D68(v30, a2 & 1);
        v33 = *v32;
        v34 = sub_1D1742188(v50);
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_17;
        }

        v27 = v34;
      }

      v36 = *v51;
      if (v31)
      {
        v9 = v23;
        (*v42)(v50, v23);
        v19 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1D42418(v24, v19);
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        v9 = v23;
        v21((v36[6] + *(v43 + 72) * v27), v50, v23);
        v37 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1D422D4(v24, v37);
        v38 = v36[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_16;
        }

        v36[2] = v40;
      }

      v18 += v44;
      a2 = 1;
      v17 = v49 - 1;
      if (v49 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1D41A94(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437C8, &qword_1D1E71F28);
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - v4;
  v66 = sub_1D1E66A7C();
  v6 = *(v66 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StaticZone();
  v59 = *(v9 - 8);
  v10 = *(v59 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v49 - v14;
  v16 = [a1 zones];
  sub_1D1741B10(0, &qword_1EE07B268, 0x1E696CCC8);
  v17 = sub_1D1E67C1C();

  if (v17 >> 62)
  {
    goto LABEL_46;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v19 = MEMORY[0x1E69E7CC0];
  v50 = v17;
  if (v18)
  {
    v20 = 0;
    v57 = v17 & 0xFFFFFFFFFFFFFF8;
    v58 = v17 & 0xC000000000000001;
    v55 = v5;
    v56 = v17 + 32;
    v65 = v6 + 32;
    v53 = v13;
    v54 = v9;
    v51 = v18;
    v52 = v15;
    do
    {
      if (v58)
      {
        v38 = v20;
        v22 = MEMORY[0x1D3891EF0](v20, v50);
        v23 = __OFADD__(v38, 1);
        v17 = v38 + 1;
        if (v23)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v20 >= *(v57 + 16))
        {
          goto LABEL_45;
        }

        v21 = v20;
        v22 = *(v56 + 8 * v20);
        v23 = __OFADD__(v21, 1);
        v17 = v21 + 1;
        if (v23)
        {
          goto LABEL_44;
        }
      }

      v63 = v17;
      v17 = v22;
      v24 = [v22 uniqueIdentifier];
      sub_1D1E66A5C();

      v25 = [v17 name];
      v26 = sub_1D1E6781C();
      v28 = v27;

      v29 = &v13[*(v9 + 20)];
      *v29 = v26;
      v29[1] = v28;
      v62 = v17;
      v30 = [v17 rooms];
      sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
      v5 = sub_1D1E67C1C();

      if (v5 >> 62)
      {
        v31 = sub_1D1E6873C();
        v64 = v19;
        if (v31)
        {
LABEL_10:
          v15 = 0;
          v13 = (v5 & 0xC000000000000001);
          v9 = v5 & 0xFFFFFFFFFFFFFF8;
          v32 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            if (v13)
            {
              v33 = MEMORY[0x1D3891EF0](v15, v5);
            }

            else
            {
              if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_43;
              }

              v33 = *(v5 + 8 * v15 + 32);
            }

            v34 = v33;
            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            v35 = [v33 uniqueIdentifier];
            sub_1D1E66A5C();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_1D177D0AC(0, v32[2] + 1, 1, v32);
            }

            v37 = v32[2];
            v36 = v32[3];
            if (v37 >= v36 >> 1)
            {
              v32 = sub_1D177D0AC(v36 > 1, v37 + 1, 1, v32);
            }

            v32[2] = v37 + 1;
            (*(v6 + 32))(v32 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v37, v67, v66);
            ++v15;
            if (v17 == v31)
            {
              goto LABEL_27;
            }
          }

          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          v18 = sub_1D1E6873C();
          goto LABEL_3;
        }
      }

      else
      {
        v31 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v64 = v19;
        if (v31)
        {
          goto LABEL_10;
        }
      }

      v32 = MEMORY[0x1E69E7CC0];
LABEL_27:

      v13 = v53;
      v9 = v54;
      *&v53[*(v54 + 24)] = v32;
      v15 = v52;
      sub_1D1D422D4(v13, v52);
      v19 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1D177D7A4(0, v19[2] + 1, 1, v19);
      }

      v5 = v55;
      v17 = v19[2];
      v39 = v19[3];
      if (v17 >= v39 >> 1)
      {
        v19 = sub_1D177D7A4(v39 > 1, v17 + 1, 1, v19);
      }

      v19[2] = v17 + 1;
      sub_1D1D422D4(v15, v19 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v17);
      v20 = v63;
    }

    while (v63 != v51);
  }

  v40 = v19[2];
  if (v40)
  {
    v68 = MEMORY[0x1E69E7CC0];
    sub_1D178D258(0, v40, 0);
    v41 = v68;
    v42 = v19 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v43 = *(v59 + 72);
    do
    {
      v44 = *(v61 + 48);
      sub_1D1D41348(v42, v5 + v44);
      (*(v6 + 16))(v5, v5 + v44, v66);
      v68 = v41;
      v46 = *(v41 + 16);
      v45 = *(v41 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1D178D258(v45 > 1, v46 + 1, 1);
        v41 = v68;
      }

      *(v41 + 16) = v46 + 1;
      sub_1D1D42338(v5, v41 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v46);
      v42 += v43;
      --v40;
    }

    while (v40);

    if (*(v41 + 16))
    {
      goto LABEL_38;
    }

LABEL_40:
    v47 = MEMORY[0x1E69E7CC8];
    goto LABEL_41;
  }

  v41 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_40;
  }

LABEL_38:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B38, &unk_1D1E6E880);
  v47 = sub_1D1E68BCC();
LABEL_41:
  v68 = v47;
  sub_1D1D416DC(v41, 1, &v68);

  return v68;
}

uint64_t sub_1D1D421C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7344496D6F6F72 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1D422D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticZone();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D42338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437C8, &qword_1D1E71F28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D423A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437C8, &qword_1D1E71F28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D42418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticZone();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double static StatusStrings.Options.context(_:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for StatusStrings.Options();
  v5 = v4[11];
  v6 = sub_1D1E669FC();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  *&result = 65793;
  *a2 = 65793;
  *(a2 + 4) = v3;
  *(a2 + 5) = 0;
  *(a2 + v4[12]) = 2;
  v8 = a2 + v4[13];
  *(v8 + 4) = 0;
  *v8 = 2;
  return result;
}

double static StatusStrings.Options.context(_:isStatusTitle:isDetailedStatusTitle:)@<D0>(char *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for StatusStrings.Options();
  v9 = v8[11];
  v10 = sub_1D1E669FC();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  *&result = 65793;
  *a4 = 65793;
  *(a4 + 4) = v7;
  *(a4 + 5) = a2;
  *(a4 + 6) = a3;
  *(a4 + v8[12]) = 2;
  v12 = a4 + v8[13];
  *(v12 + 4) = 0;
  *v12 = 2;
  return result;
}

double static StatusStrings.Options.context(_:accessoryNoResponseContextFlags:isStatusTitle:isDetailedStatusTitle:)@<D0>(char *a1@<X0>, int *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = *(a2 + 4);
  v11 = type metadata accessor for StatusStrings.Options();
  v12 = v11[11];
  v13 = sub_1D1E669FC();
  (*(*(v13 - 8) + 56))(a5 + v12, 1, 1, v13);
  *&result = 65793;
  *a5 = 65793;
  *(a5 + 4) = v8;
  *(a5 + 5) = a3;
  *(a5 + 6) = a4;
  *(a5 + v11[12]) = 2;
  v15 = a5 + v11[13];
  *(v15 + 4) = v10;
  *v15 = v9;
  return result;
}

uint64_t StatusStrings.Options.init(showReachabilityError:showDeviceError:showUpdating:temperatureScale:context:isStatusTitle:isDetailedStatusTitle:lastSeenDate:lastSeenBatteryStatus:accessoryNoResponseContextFlags:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char *a4@<X3>, char *a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, char *a10, int *a11)
{
  v13 = *a4;
  v14 = *a5;
  v15 = *a10;
  v16 = *a11;
  v17 = *(a11 + 4);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = v13;
  a9[4] = v14;
  a9[5] = a6;
  a9[6] = a7;
  v18 = type metadata accessor for StatusStrings.Options();
  result = sub_1D19A376C(a8, &a9[v18[11]]);
  a9[v18[12]] = v15;
  v20 = &a9[v18[13]];
  v20[4] = v17;
  *v20 = v16;
  return result;
}

uint64_t type metadata accessor for StatusStrings.Options()
{
  result = qword_1EC64E450;
  if (!qword_1EC64E450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id StatusStrings.string(for:)(_BYTE *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v58 - v5;
  v7 = sub_1D1E669FC();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v15 = &v58 - v14;
  v16 = *(v1 + 1);
  v17 = *(v1 + 4);
  v19 = *(v1 + 8);
  v18 = *(v1 + 16);
  v21 = *(v1 + 24);
  v20 = *(v1 + 32);
  if (a1[1] == 1)
  {
    v22 = *(v1 + 2);
    v23 = *(v1 + 3);
    if (v22 != 2 && (v22 & 1) != 0)
    {
      v24 = "HFServiceDescriptionCalibrating";
LABEL_35:
      v42 = (v24 - 32) | 0x8000000000000000;
      v27 = 0xD00000000000001FLL;
      return static String.hfLocalized(_:)(v27, v42);
    }

    if (v23 != 2 && (v23 & 1) != 0)
    {
      v25 = "HFMediaAccessoryStateSettingsSyncingStatus";
LABEL_8:
      v26 = (v25 - 32);
      v27 = 0xD00000000000002ALL;
LABEL_71:
      v42 = v26 | 0x8000000000000000;
      return static String.hfLocalized(_:)(v27, v42);
    }
  }

  if (a1[6] & 1) == 0 && a1[2] == 1 && v17 != 2 && (v17)
  {
    v26 = "HFServiceDescriptionUnavailable";
    v27 = 0xD00000000000001CLL;
    goto LABEL_71;
  }

  if (*v1 & 1 | ((*a1 & 1) == 0))
  {
    result = 0;
    v29 = a1[4];
    if (v29 <= 1)
    {
      if (!a1[4])
      {
        return result;
      }
    }

    else
    {
      if (v29 != 2)
      {
        if (v29 != 3)
        {
          return result;
        }

        goto LABEL_44;
      }

      if (v18)
      {
        if (v20)
        {
          v63 = *(v1 + 8);
          v64 = v18;

          MEMORY[0x1D3890F70](0x20A280E220, 0xA500000000000000);
          MEMORY[0x1D3890F70](v21, v20);
          return v63;
        }

        goto LABEL_46;
      }
    }

    if (v20)
    {
LABEL_44:
      v43 = *(v1 + 32);

      return v21;
    }

LABEL_46:
    v44 = *(v1 + 16);

    return v19;
  }

  v60 = v13;
  v61 = v12;
  v65 = &type metadata for HomeAppFeatures;
  v30 = sub_1D19C6154();
  v66 = v30;
  LOBYTE(v63) = 3;
  v31 = sub_1D1E66D5C();
  __swift_destroy_boxed_opaque_existential_1(&v63);
  if ((v31 & 1) != 0 && v20)
  {
    v59 = v30;

    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v32 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      v34 = 1312902231;
    }

    else
    {
      v34 = 1229343063;
    }

    v63 = 0xD000000000000026;
    v64 = 0x80000001D1EBDAC0;
    MEMORY[0x1D3890F70](95, 0xE100000000000000);
    MEMORY[0x1D3890F70](v34, 0xE400000000000000);

    v35 = static String.hfLocalized(_:)(v63, v64);
    v37 = v36;

    if (v21 == v35 && v20 == v37)
    {

      return v21;
    }

    v38 = sub_1D1E6904C();

    if (v38)
    {
      return v21;
    }

    v30 = v59;
  }

  v39 = a1[4];
  v40 = type metadata accessor for StatusStrings.Options();
  v41 = *&a1[v40[13]] | (a1[v40[13] + 4] << 32);
  if (v39 >= 3)
  {
    result = 0;
    if (v39 != 3)
    {
      return result;
    }

    if (v16)
    {
      if (v16 == 1)
      {
        v26 = "mErrorNoResidentDevice";
        v27 = 0xD000000000000030;
      }

      else
      {
        v26 = "ED-B3C6-67BBEB01242C";
        v27 = 0xD000000000000026;
      }

      goto LABEL_71;
    }

    if (v41 != 2 && (~v41 & 0x101000000) == 0)
    {
      if ((v41 & 0x10000) == 0)
      {
        v25 = "HFServiceLongFormErrorNoThreadNetworkLocal";
        goto LABEL_8;
      }

      if ((v41 & 1) == 0)
      {
        v26 = "mErrorNoThreadNetworkLocal";
        v27 = 0xD00000000000002FLL;
        goto LABEL_71;
      }

      if ((v41 & 0x100) == 0)
      {
        v26 = "mErrorNoThreadNetworkNoResident";
        v27 = 0xD00000000000003ALL;
        goto LABEL_71;
      }
    }

    v26 = "staticMatterDevice";
    v27 = 0xD000000000000022;
    goto LABEL_71;
  }

  if (v16)
  {
LABEL_34:
    v24 = "HFServiceDescriptionUnavailable";
    goto LABEL_35;
  }

  v45 = v30;
  v46 = v40[11];
  v47 = a1[v40[12]];
  v48 = a1[5];
  a1[v40[13] + 4];
  if (*&a1[v40[13]] != 2)
  {
    a1[v40[13] + 4];
    if ((*&a1[v40[13]] & 0x10000) != 0)
    {
      if ((v41 & 0x101000100) == 0x101000000)
      {
        goto LABEL_34;
      }
    }

    else if ((~v41 & 0x101000000) == 0)
    {
      goto LABEL_34;
    }
  }

  v65 = &type metadata for HomeAppFeatures;
  v66 = v45;
  LOBYTE(v63) = 3;
  v49 = sub_1D1E66D5C();
  __swift_destroy_boxed_opaque_existential_1(&v63);
  if ((v49 & 1) == 0)
  {
LABEL_64:
    v26 = "ionSecuritySystem_Disarmed";
    v27 = 0xD00000000000001ELL;
    goto LABEL_71;
  }

  sub_1D174A548(&a1[v46], v6);
  v50 = v60;
  if ((*(v60 + 48))(v6, 1, v61) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC642570, &qword_1D1E6C6A0);
    goto LABEL_64;
  }

  v51 = v61;
  (*(v50 + 32))(v15, v6, v61);
  sub_1D1E668FC();
  sub_1D1D43A94(&qword_1EC642AC8, MEMORY[0x1E6969530]);
  v52 = sub_1D1E6775C();
  v53 = *(v50 + 8);
  v53(v11, v51);
  if (v52 & 1) != 0 || (sub_1D1E6691C(), v54 = v61, v55 = sub_1D1E6775C(), v53(v11, v54), (v55))
  {
    v53(v15, v61);
    goto LABEL_64;
  }

  LOBYTE(v63) = 0;
  if (v48)
  {
    v56 = sub_1D1CF096C();
  }

  else
  {
    v62 = v47;
    v56 = sub_1D1CF0230(v15, &v62);
  }

  v57 = v56;
  v53(v15, v61);
  return v57;
}

double static StatusStrings.Options.context(_:isStatusTitle:isDetailedStatusTitle:lastSeenDate:lastSeenBatteryStatus:)@<D0>(char *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = *a5;
  v12 = type metadata accessor for StatusStrings.Options();
  sub_1D174A548(a4, a6 + v12[11]);
  *&result = 65793;
  *a6 = 65793;
  *(a6 + 4) = v10;
  *(a6 + 5) = a2;
  *(a6 + 6) = a3;
  *(a6 + v12[12]) = v11;
  v14 = a6 + v12[13];
  *(v14 + 4) = 0;
  *v14 = 2;
  return result;
}

uint64_t StatusContext.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StatusStrings.Options.lastSeenDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StatusStrings.Options() + 44);

  return sub_1D174A548(v3, a1);
}

uint64_t StatusStrings.Options.lastSeenBatteryStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StatusStrings.Options();
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t StatusStrings.Options.accessoryNoResponseContextFlags.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StatusStrings.Options();
  v4 = (v1 + *(result + 52));
  v5 = *v4;
  *(a1 + 4) = *(v4 + 4);
  *a1 = v5;
  return result;
}

uint64_t static StatusStrings.Options.context(_:temperatureScale:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = type metadata accessor for StatusStrings.Options();
  v7 = v6[11];
  v8 = sub_1D1E669FC();
  result = (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  *a3 = 257;
  *(a3 + 2) = 1;
  *(a3 + 3) = v5;
  *(a3 + 4) = v4;
  *(a3 + 5) = 0;
  *(a3 + v6[12]) = 2;
  v10 = a3 + v6[13];
  *(v10 + 4) = 0;
  *v10 = 2;
  return result;
}

uint64_t StatusStrings.Options.hash(into:)()
{
  v1 = sub_1D1E669FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = *v0;
  sub_1D1E6922C();
  v11 = v0[1];
  sub_1D1E6922C();
  v12 = v0[2];
  sub_1D1E6922C();
  MEMORY[0x1D3892850](v0[3]);
  MEMORY[0x1D3892850](v0[4]);
  v13 = v0[5];
  sub_1D1E6922C();
  v14 = v0[6];
  sub_1D1E6922C();
  v15 = type metadata accessor for StatusStrings.Options();
  sub_1D174A548(&v0[v15[11]], v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1D1E6922C();
    sub_1D1D43A94(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v2 + 8))(v5, v1);
  }

  if (v0[v15[12]] == 2)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  v16 = &v0[v15[13]];
  v17 = *v16 | (v16[4] << 32);
  if (*v16 != 2)
  {
    sub_1D1E6922C();
    sub_1D1E6922C();
    sub_1D1E6922C();
    sub_1D1E6922C();
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t StatusStrings.Options.hashValue.getter()
{
  sub_1D1E6920C();
  StatusStrings.Options.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1D434C8()
{
  sub_1D1E6920C();
  StatusStrings.Options.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1D4350C()
{
  sub_1D1E6920C();
  StatusStrings.Options.hash(into:)();
  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel13StatusStringsV7OptionsV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6])
  {
    return 0;
  }

  v18 = v15;
  v41 = type metadata accessor for StatusStrings.Options();
  v19 = *(v41 + 44);
  v20 = *(v18 + 48);
  sub_1D174A548(&a1[v19], v17);
  sub_1D174A548(&a2[v19], &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_16;
    }

LABEL_13:
    sub_1D1741A30(v17, &qword_1EC642AC0, &qword_1D1E6E810);
    return 0;
  }

  sub_1D174A548(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_13;
  }

  (*(v5 + 32))(v8, &v17[v20], v4);
  sub_1D1D43A94(&qword_1EC642AC8, MEMORY[0x1E6969530]);
  v23 = sub_1D1E6775C();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v25 = v41;
  v26 = *(v41 + 48);
  v27 = a1[v26];
  v28 = a2[v26];
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v28 == 2)
    {
      return 0;
    }

    if (v27)
    {
      v29 = 0x6C616D726F6ELL;
    }

    else
    {
      v29 = 7827308;
    }

    if (v27)
    {
      v30 = 0xE600000000000000;
    }

    else
    {
      v30 = 0xE300000000000000;
    }

    if (v28)
    {
      v31 = 0x6C616D726F6ELL;
    }

    else
    {
      v31 = 7827308;
    }

    if (v28)
    {
      v32 = 0xE600000000000000;
    }

    else
    {
      v32 = 0xE300000000000000;
    }

    if (v29 == v31 && v30 == v32)
    {
    }

    else
    {
      v33 = sub_1D1E6904C();

      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v34 = *(v25 + 52);
  v35 = a1[v34 + 4];
  v36 = *&a1[v34];
  v37 = &a2[v34];
  v38 = v37[4];
  v39 = *v37;
  v40 = *v37;
  v45 = v35;
  v44 = v36;
  v47 = v38;
  v46 = v39;
  if (v36 != 2)
  {
    v42 = v36;
    v43 = (v36 | (v35 << 32)) >> 32;
    return v40 != 2 && _s13HomeDataModel31AccessoryNoResponseContextFlagsV2eeoiySbAC_ACtFZ_0(&v42, &v46);
  }

  return v40 == 2;
}

unint64_t sub_1D1D439F8()
{
  result = qword_1EC64E440;
  if (!qword_1EC64E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E440);
  }

  return result;
}

uint64_t sub_1D1D43A94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1D43AEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D1D43B48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_1D1D43BDC()
{
  sub_1D17B77BC();
  if (v0 <= 0x3F)
  {
    sub_1D17BDF80(319, qword_1EE07CAB8);
    if (v1 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EC64E460);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D1D43CCC()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_1D1E675FC();
  if (*(v2 + 16))
  {
    sub_1D171D2F0(0x5345545F54494E55, 0xE900000000000054);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t static StaticThermostatClusterGroup.thermostat(with:setpointOffset:setpointHold:setpointHoldDuration:setpointHoldExpiryTimestamp:ignorePredictedPresets:holdUntilPresetSuggestionChange:isReducingEnergy:setpointReduceOffset:supportsHomeActivityState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int8 *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13)
{
  v101 = a8;
  v100 = a7;
  v103 = a6;
  v105 = a5;
  v104 = a3;
  v102 = a2;
  v106 = a9;
  v99 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v15 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for EndpointPath(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *a4;
  sub_1D1D46A14(a1, v21, type metadata accessor for EndpointPath);
  v22 = sub_1D1D46170();
  v97 = sub_1D1D466F4();
  v23 = sub_1D1D46170();
  if (*(v23 + 16))
  {
    v24 = *(v23 + 48);
    v115 = *(v23 + 32);
    v116 = v24;
    v25 = *(v23 + 80);
    v117 = *(v23 + 64);
    v118 = v25;
    sub_1D17806DC(&v115, v114);

    v96 = *(&v116 + 1);
    v95 = v117;
    sub_1D1771B38(*(&v116 + 1), v117);
    result = sub_1D1780738(&v115);
  }

  else
  {

    v96 = 0;
    v95 = 0xF000000000000000;
  }

  v27 = *(v22 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  v107 = v22;
  if (v27)
  {
    v29 = 0;
    v30 = v22 + 32;
    v31 = v27 - 1;
    v32 = MEMORY[0x1E69E7CC0];
    do
    {
      v33 = *(v22 + 16);
      v34 = (v30 + (v29 << 6));
      v35 = v29;
      while (1)
      {
        if (v35 >= v33)
        {
          __break(1u);
          return result;
        }

        v36 = v34[3];
        v37 = *v34;
        v38 = v34[1];
        v117 = v34[2];
        v118 = v36;
        v115 = v37;
        v116 = v38;
        v29 = v35 + 1;
        if (v38 < 2u)
        {
          break;
        }

        v34 += 4;
        ++v35;
        if (v27 == v29)
        {
          goto LABEL_18;
        }
      }

      v94 = v31;
      sub_1D17806DC(&v115, v114);
      result = swift_isUniquelyReferenced_nonNull_native();
      v113 = v32;
      v93 = v30;
      if ((result & 1) == 0)
      {
        result = sub_1D178D694(0, v32[2] + 1, 1);
        v32 = v113;
      }

      v31 = v94;
      v40 = v32[2];
      v39 = v32[3];
      if (v40 >= v39 >> 1)
      {
        result = sub_1D178D694((v39 > 1), v40 + 1, 1);
        v31 = v94;
        v32 = v113;
      }

      v32[2] = v40 + 1;
      v41 = &v32[8 * v40];
      v42 = v115;
      v43 = v116;
      v44 = v118;
      *(v41 + 4) = v117;
      *(v41 + 5) = v44;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v22 = v107;
      v30 = v93;
    }

    while (v31 != v35);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:
  v94 = v21;
  v45 = v32[2];
  if (v45)
  {
    *&v115 = v28;
    sub_1D178D8B8(0, v45, 0);
    v46 = v115;
    v47 = v32 + 8;
    do
    {
      v48 = *(v47 - 1);
      v49 = *v47;
      sub_1D1771B38(v48, *v47);
      *&v115 = v46;
      v51 = *(v46 + 16);
      v50 = *(v46 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1D178D8B8((v50 > 1), v51 + 1, 1);
        v46 = v115;
      }

      v47 += 8;
      *(v46 + 16) = v51 + 1;
      v52 = v46 + 16 * v51;
      *(v52 + 32) = v48;
      *(v52 + 40) = v49;
      --v45;
    }

    while (v45);
  }

  LODWORD(v93) = a13;
  v92 = a12;
  v91 = a11;
  v90 = a10;
  v53 = *(v22 + 16);
  v54 = MEMORY[0x1E69E7CC0];
  v89 = v53;
  if (v53)
  {
    *&v115 = MEMORY[0x1E69E7CC0];
    sub_1D178D8F8(0, v53, 0);
    v54 = v115;
    v55 = (v22 + 64);
    do
    {
      v57 = *(v55 - 1);
      v56 = *v55;
      sub_1D1771B38(v57, *v55);
      *&v115 = v54;
      v59 = *(v54 + 16);
      v58 = *(v54 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1D178D8F8((v58 > 1), v59 + 1, 1);
        v54 = v115;
      }

      v55 += 8;
      *(v54 + 16) = v59 + 1;
      v60 = v54 + 24 * v59;
      *(v60 + 32) = v57;
      *(v60 + 40) = v56;
      *(v60 + 48) = 257;
      --v53;
    }

    while (v53);
    v22 = v107;
  }

  v61 = v99;
  v62 = *(v99 + 36);
  v63 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  (*(*(v63 - 8) + 56))(&v17[v62], 1, 1, v63);
  v64 = v61[13];
  v65 = v96;
  v66 = v95;
  sub_1D1771B38(v96, v95);
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v67 = sub_1D1E669FC();
  v68 = *(*(v67 - 8) + 56);
  v68(&v17[v64], 0, 1, v67);
  *v17 = 1;
  *(v17 + 1) = v97;
  *(v17 + 2) = v22;
  v69 = v89;
  *(v17 + 3) = v54;
  *(v17 + 4) = v69;
  v17[40] = 0;
  *&v17[v61[10]] = 256;
  v70 = &v17[v61[11]];
  *v70 = v65;
  v70[1] = v66;
  v71 = &v17[v61[12]];
  *v71 = v65;
  v71[1] = v66;
  v17[v61[14]] = 3;
  v17[v61[15]] = 0;
  v17[v61[16]] = v100 & 1;
  v17[v61[17]] = v101 & 1;
  v17[v61[19]] = 6;
  v17[v61[20]] = 0;
  v72 = &v17[v61[18]];
  v72[4] = 0;
  *v72 = 196609;
  v17[v61[21]] = 1;
  v73 = type metadata accessor for StaticThermostatClusterGroup();
  v74 = v106;
  v75 = v106 + v73[8];
  v76 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
  sub_1D174A548(v103, v75 + *(v76 + 28));
  *v75 = v102;
  *(v75 + 8) = v104 & 1;
  *(v75 + 9) = v98;
  v77 = BYTE2(v105);
  *(v75 + 10) = v105;
  *(v75 + 12) = v77 & 1;
  v78 = v75 + *(v76 + 32);
  *v78 = 25;
  *(v78 + 8) = 0;
  v100 = 0;
  v101 = 0;
  LODWORD(v102) = 0;
  LOBYTE(v115) = 0;
  v114[0] = 0;
  LOBYTE(v113) = 0;
  LOBYTE(v112[0]) = 0;
  LOBYTE(v111[0]) = 0;
  LODWORD(v103) = 0;
  v104 = 0;
  v105 = 0;
  v79 = v74 + v73[12];
  LODWORD(v107) = 0;
  v80 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
  v81 = v80[8];
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v68((v79 + v81), 0, 1, v67);
  v82 = v80[9];
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v68((v79 + v82), 0, 1, v67);
  *v79 = 257;
  *(v79 + 2) = v90 & 1;
  *(v79 + 3) = 3;
  *(v79 + v80[10]) = 0;
  *(v79 + v80[11]) = 1;
  v83 = v79 + v80[12];
  *v83 = v91;
  *(v83 + 8) = v92 & 1;
  sub_1D1D46A7C(v94, v74, type metadata accessor for EndpointPath);
  result = sub_1D1D46A7C(v17, v74 + v73[7], type metadata accessor for StaticThermostatClusterGroup.PresetsConfig);
  v84 = v74 + v73[9];
  *v84 = 1600;
  *(v84 + 8) = 0;
  *(v84 + 9) = v111[0];
  *(v84 + 12) = *(v111 + 3);
  *(v84 + 16) = 1600;
  *(v84 + 24) = 0;
  *(v84 + 25) = *v110;
  *(v84 + 28) = *&v110[3];
  *(v84 + 32) = 3200;
  *(v84 + 40) = v100;
  *(v84 + 44) = *&v109[3];
  *(v84 + 41) = *v109;
  *(v84 + 48) = 1600;
  *(v84 + 56) = v101;
  *(v84 + 57) = *v108;
  *(v84 + 60) = *&v108[3];
  *(v84 + 64) = 3200;
  *(v84 + 72) = v102;
  v85 = v74 + v73[10];
  *v85 = 800;
  *(v85 + 8) = 0;
  *(v85 + 9) = v115;
  *(v85 + 12) = *(&v115 + 3);
  *(v85 + 16) = 700;
  *(v85 + 24) = v103;
  *(v85 + 25) = *v114;
  *(v85 + 28) = *&v114[3];
  *(v85 + 32) = 3000;
  *(v85 + 40) = v104;
  v86 = v113;
  *(v85 + 44) = *(&v113 + 3);
  *(v85 + 41) = v86;
  *(v85 + 48) = 700;
  *(v85 + 56) = v105;
  v87 = v112[0];
  *(v85 + 60) = *(v112 + 3);
  *(v85 + 57) = v87;
  *(v85 + 64) = 3000;
  *(v85 + 72) = v107;
  *(v74 + v73[6]) = 1;
  *(v74 + v73[5]) = v93 & 1;
  *(v74 + v73[11]) = 256;
  return result;
}

uint64_t static StaticMatterDevice.thermostat(with:endpointPath:setpointOffset:setpointHold:setpointHoldDuration:setpointHoldExpiryTimestamp:ignorePredictedPresets:holdUntilPresetSuggestionChange:isReducingEnergy:setpointReduceOffset:supportsHomeActivityState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, unsigned __int8 *a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15)
{
  v216 = a8;
  LODWORD(v218) = a7;
  LODWORD(v217) = a5;
  v215 = a4;
  v231 = a2;
  v226 = type metadata accessor for MatterTilePath(0);
  v19 = *(*(v226 - 8) + 64);
  MEMORY[0x1EEE9AC00](v226);
  v238 = &v200 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for StaticEndpoint();
  v21 = *(*(v227 - 8) + 64);
  MEMORY[0x1EEE9AC00](v227);
  v23 = &v200 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for MatterTileMetadata();
  v24 = *(*(v225 - 8) + 64);
  MEMORY[0x1EEE9AC00](v225);
  v246 = &v200 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v223 = (&v200 - v28);
  v222 = type metadata accessor for StaticClusterGroups();
  v29 = *(*(v222 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v222);
  v229 = &v200 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v233 = &v200 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v242 = &v200 - v35;
  v245 = sub_1D1E66A7C();
  v36 = *(v245 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v245 - 8);
  v235 = &v200 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v240 = &v200 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v239 = &v200 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v237 = &v200 - v44;
  v212 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v45 = *(*(v212 - 8) + 64);
  MEMORY[0x1EEE9AC00](v212);
  v214 = &v200 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for EndpointPath(0);
  v47 = *(*(v232 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v232);
  v50 = &v200 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v48);
  v221 = &v200 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v244 = &v200 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v56 = (&v200 - v55);
  v220 = type metadata accessor for StaticThermostatClusterGroup();
  v219 = *(v220 - 8);
  v57 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v220);
  v236 = &v200 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = *a6;
  v224 = a3;
  v213 = v56;
  sub_1D1D46A14(a3, v56, type metadata accessor for EndpointPath);
  v59 = sub_1D1D46170();
  v210 = sub_1D1D466F4();
  v60 = sub_1D1D46170();
  if (*(v60 + 16))
  {
    v61 = *(v60 + 48);
    v257 = *(v60 + 32);
    v258 = v61;
    v62 = *(v60 + 80);
    v259 = *(v60 + 64);
    v260 = v62;
    sub_1D17806DC(&v257, &v256);

    v209 = *(&v258 + 1);
    v208 = v259;
    sub_1D1771B38(*(&v258 + 1), v259);
    sub_1D1780738(&v257);
  }

  else
  {

    v209 = 0;
    v208 = 0xF000000000000000;
  }

  v228 = v50;
  v241 = v36;
  v234 = v23;
  v63 = *(v59 + 16);
  v64 = MEMORY[0x1E69E7CC0];
  v243 = v59;
  v230 = a9;
  if (v63)
  {
    v65 = 0;
    v66 = v59 + 32;
    v67 = (v63 - 1);
    v68 = MEMORY[0x1E69E7CC0];
    do
    {
      v69 = *(v59 + 16);
      v70 = (v66 + (v65 << 6));
      v71 = v65;
      while (1)
      {
        if (v71 >= v69)
        {
          __break(1u);
          goto LABEL_42;
        }

        v72 = v70[3];
        v73 = *v70;
        v74 = v70[1];
        v259 = v70[2];
        v260 = v72;
        v257 = v73;
        v258 = v74;
        v65 = v71 + 1;
        if (v74 < 2u)
        {
          break;
        }

        v70 += 4;
        ++v71;
        if (v63 == v65)
        {
          goto LABEL_18;
        }
      }

      v50 = v67;
      sub_1D17806DC(&v257, &v256);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v255 = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D178D694(0, v68[2] + 1, 1);
        v68 = v255;
      }

      v67 = v50;
      v77 = v68[2];
      v76 = v68[3];
      if (v77 >= v76 >> 1)
      {
        sub_1D178D694((v76 > 1), v77 + 1, 1);
        v67 = v50;
        v68 = v255;
      }

      v68[2] = v77 + 1;
      v78 = &v68[8 * v77];
      v79 = v257;
      v80 = v258;
      v81 = v260;
      *(v78 + 4) = v259;
      *(v78 + 5) = v81;
      *(v78 + 2) = v79;
      *(v78 + 3) = v80;
      v59 = v243;
      v64 = MEMORY[0x1E69E7CC0];
    }

    while (v67 != v71);
  }

  else
  {
    v68 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:
  v82 = v68[2];
  if (v82)
  {
    *&v257 = v64;
    sub_1D178D8B8(0, v82, 0);
    v83 = v257;
    v84 = v68 + 8;
    do
    {
      v86 = *(v84 - 1);
      v85 = *v84;
      sub_1D1771B38(v86, *v84);
      *&v257 = v83;
      v88 = *(v83 + 16);
      v87 = *(v83 + 24);
      if (v88 >= v87 >> 1)
      {
        sub_1D178D8B8((v87 > 1), v88 + 1, 1);
        v83 = v257;
      }

      v84 += 8;
      *(v83 + 16) = v88 + 1;
      v89 = v83 + 16 * v88;
      *(v89 + 32) = v86;
      *(v89 + 40) = v85;
      --v82;
    }

    while (v82);

    v59 = v243;
  }

  else
  {
  }

  v207 = a1;
  v206 = a15;
  v205 = a14;
  v204 = a13;
  v203 = a12;
  v90 = a11;
  v202 = a10;
  v91 = *(v59 + 16);
  v92 = MEMORY[0x1E69E7CC0];
  v201 = v91;
  if (v91)
  {
    LODWORD(v200) = a11;
    *&v257 = MEMORY[0x1E69E7CC0];
    sub_1D178D8F8(0, v91, 0);
    v92 = v257;
    v93 = (v59 + 64);
    do
    {
      v95 = *(v93 - 1);
      v94 = *v93;
      sub_1D1771B38(v95, *v93);
      *&v257 = v92;
      v97 = *(v92 + 16);
      v96 = *(v92 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_1D178D8F8((v96 > 1), v97 + 1, 1);
        v92 = v257;
      }

      v93 += 8;
      *(v92 + 16) = v97 + 1;
      v98 = v92 + 24 * v97;
      *(v98 + 32) = v95;
      *(v98 + 40) = v94;
      *(v98 + 48) = 257;
      --v91;
    }

    while (v91);
    v90 = v200;
  }

  v99 = v212;
  v100 = *(v212 + 36);
  v101 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  v102 = v214;
  (*(*(v101 - 8) + 56))(&v214[v100], 1, 1, v101);
  v103 = v99[13];
  v104 = v209;
  v105 = v208;
  sub_1D1771B38(v209, v208);
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v106 = sub_1D1E669FC();
  v200 = *(*(v106 - 8) + 56);
  v200(v102 + v103, 0, 1, v106);
  *v102 = 1;
  v107 = v243;
  *(v102 + 8) = v210;
  *(v102 + 16) = v107;
  v108 = v201;
  *(v102 + 24) = v92;
  *(v102 + 32) = v108;
  *(v102 + 40) = 0;
  *(v102 + v99[10]) = 256;
  v109 = (v102 + v99[11]);
  *v109 = v104;
  v109[1] = v105;
  v110 = (v102 + v99[12]);
  *v110 = v104;
  v110[1] = v105;
  *(v102 + v99[14]) = 3;
  *(v102 + v99[15]) = 0;
  *(v102 + v99[16]) = v202 & 1;
  *(v102 + v99[17]) = v90 & 1;
  *(v102 + v99[19]) = 6;
  *(v102 + v99[20]) = 0;
  v111 = v102 + v99[18];
  *(v111 + 4) = 0;
  *v111 = 196609;
  *(v102 + v99[21]) = 1;
  v112 = v220;
  v113 = v236;
  v114 = v236 + *(v220 + 32);
  v115 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
  sub_1D174A548(v216, v114 + *(v115 + 28));
  *v114 = v215;
  *(v114 + 8) = v217 & 1;
  *(v114 + 9) = v211;
  v116 = BYTE2(v218);
  *(v114 + 10) = v218;
  *(v114 + 12) = v116 & 1;
  v117 = v114 + *(v115 + 32);
  *v117 = 25;
  *(v117 + 8) = 0;
  v211 = 0;
  LODWORD(v212) = 0;
  LODWORD(v215) = 0;
  LOBYTE(v257) = 0;
  LOBYTE(v256) = 0;
  LOBYTE(v255) = 0;
  LOBYTE(v254[0]) = 0;
  LOBYTE(v253[0]) = 0;
  LODWORD(v216) = 0;
  LODWORD(v217) = 0;
  LODWORD(v218) = 0;
  v118 = v113 + v112[12];
  LODWORD(v243) = 0;
  v119 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
  v120 = v119[8];
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v121 = v118 + v120;
  v122 = v200;
  v200(v121, 0, 1, v106);
  v123 = v119[9];
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v122(v118 + v123, 0, 1, v106);
  *v118 = 257;
  *(v118 + 2) = v203 & 1;
  *(v118 + 3) = 3;
  *(v118 + v119[10]) = 0;
  *(v118 + v119[11]) = 1;
  v124 = v118 + v119[12];
  *v124 = v204;
  *(v124 + 8) = v205 & 1;
  sub_1D1D46A7C(v213, v113, type metadata accessor for EndpointPath);
  sub_1D1D46A7C(v102, v113 + v112[7], type metadata accessor for StaticThermostatClusterGroup.PresetsConfig);
  v125 = v113 + v112[9];
  *v125 = 1600;
  *(v125 + 8) = 0;
  *(v125 + 9) = *v250;
  *(v125 + 12) = *&v250[3];
  *(v125 + 16) = 1600;
  *(v125 + 24) = 0;
  *(v125 + 25) = *v249;
  *(v125 + 28) = *&v249[3];
  *(v125 + 32) = 3200;
  *(v125 + 40) = v211;
  *(v125 + 44) = *&v248[3];
  *(v125 + 41) = *v248;
  *(v125 + 48) = 1600;
  *(v125 + 56) = v212;
  *(v125 + 57) = *v247;
  *(v125 + 60) = *&v247[3];
  *(v125 + 64) = 3200;
  *(v125 + 72) = v215;
  v126 = v113 + v112[10];
  *v126 = 800;
  *(v126 + 8) = 0;
  *(v126 + 9) = v254[0];
  *(v126 + 12) = *(v254 + 3);
  *(v126 + 16) = 700;
  *(v126 + 24) = v216;
  v127 = *&v252[3];
  *(v126 + 25) = v253[0];
  *(v126 + 28) = *(v253 + 3);
  *(v126 + 32) = 3000;
  *(v126 + 40) = v217;
  v128 = *v252;
  *(v126 + 44) = v127;
  *(v126 + 41) = v128;
  *(v126 + 48) = 700;
  *(v126 + 56) = v218;
  v129 = *v251;
  *(v126 + 60) = *&v251[3];
  *(v126 + 57) = v129;
  *(v126 + 64) = 3000;
  *(v126 + 72) = v243;
  *(v113 + v112[6]) = 1;
  *(v113 + v112[5]) = v206 & 1;
  *(v113 + v112[11]) = 256;
  v71 = v232;
  v130 = v224;
  v217 = *(v224 + *(v232 + 20));
  v218 = sub_1D179C134(&unk_1F4D66200);
  v213 = *(v241 + 16);
  v212 = v241 + 16;
  v213(v237, v130, v245);
  sub_1D1E66A6C();
  sub_1D1E66A6C();
  v122(v242, 1, 1, v106);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E468, &qword_1D1EAB9C8);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646130, &qword_1D1E7E6A8);
  v131 = *(*(v215 - 8) + 72);
  v132 = (*(*(v215 - 8) + 80) + 32) & ~*(*(v215 - 8) + 80);
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_1D1E739C0;
  v216 = v133;
  v134 = *(v130 + *(v71 + 24));
  v214 = (v133 + v132);
  *(v133 + v132) = v134;
  v59 = v235;
  sub_1D1E66A6C();
  v135 = v130;
  v50 = v244;
  sub_1D1D46A14(v135, v244, type metadata accessor for EndpointPath);
  v224 = sub_1D179C134(&unk_1F4D66228);
  v243 = sub_1D18D9C84(MEMORY[0x1E69E7CC0]);
  v136 = v223;
  sub_1D1D46A14(v113, v223, type metadata accessor for StaticThermostatClusterGroup);
  v137 = *(v219 + 56);
  v137(v136, 0, 1, v112);
  v138 = type metadata accessor for StaticRVCClusterGroup();
  a1 = v233;
  (*(*(v138 - 8) + 56))(v233, 1, 1, v138);
  v139 = *(v222 + 20);
  v137((a1 + v139), 1, 1, v112);
  sub_1D1D469A4(v136, a1 + v139);
  if (qword_1EC642290 != -1)
  {
LABEL_42:
    swift_once();
  }

  v140 = __swift_project_value_buffer(v225, qword_1EC648EE8);
  v223 = type metadata accessor for MatterTileMetadata;
  v225 = v140;
  sub_1D1D46A14(v140, v246, type metadata accessor for MatterTileMetadata);
  v141 = v221;
  sub_1D1D46A14(v50, v221, type metadata accessor for EndpointPath);
  v142 = v238;
  v143 = v245;
  v144 = v213;
  v213(v238, v141, v245);
  v145 = *(v141 + *(v71 + 20));
  v146 = *(v141 + *(v71 + 24));
  sub_1D1D46B4C(v141, type metadata accessor for EndpointPath);
  v147 = v142 + *(v226 + 24);
  *(v142 + *(v226 + 20)) = v145;
  v148 = v244;
  *v147 = v146;
  *(v147 + 2) = 0;
  v149 = v234;
  v144(v234, v59, v143);
  v150 = v227;
  sub_1D1D46A14(v148, v149 + *(v227 + 20), type metadata accessor for EndpointPath);
  v151 = MEMORY[0x1E69E7CD0];
  *(v149 + v150[12]) = MEMORY[0x1E69E7CD0];
  *(v149 + v150[9]) = v243;
  sub_1D1D46A14(a1, v149 + v150[10], type metadata accessor for StaticClusterGroups);
  *(v149 + v150[7]) = 1;
  *(v149 + v150[11]) = v151;
  v152 = v224;
  *(v149 + v150[8]) = v224;
  v153 = (v149 + v150[6]);
  *v153 = 0x452072657474614DLL;
  v153[1] = 0xEF746E696F70646ELL;
  sub_1D1D46A14(v246, v149 + v150[13], v223);
  v154 = v149 + v150[14];
  *v154 = 0;
  *(v154 + 2) = 1;
  *(v149 + v150[15]) = 6;
  v155 = qword_1EE07A0A8;

  v156 = v143;
  v157 = a1;
  if (v155 != -1)
  {
    swift_once();
  }

  v158 = sub_1D1E6709C();
  __swift_project_value_buffer(v158, qword_1EE07A0B0);
  v159 = v228;
  sub_1D1D46A14(v148, v228, type metadata accessor for EndpointPath);
  v160 = a1;
  v161 = v229;
  sub_1D1D46A14(v160, v229, type metadata accessor for StaticClusterGroups);

  v162 = sub_1D1E6707C();
  v163 = sub_1D1E6832C();

  if (os_log_type_enabled(v162, v163))
  {
    LODWORD(v227) = v163;
    v164 = swift_slowAlloc();
    v165 = v159;
    v166 = swift_slowAlloc();
    *v164 = 136447746;
    *&v257 = 3829371;
    *(&v257 + 1) = 0xE300000000000000;
    v167 = v232;
    v255 = *(v165 + *(v232 + 20));
    v256 = v166;
    v168 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v168);

    MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
    LOWORD(v255) = *(v165 + *(v167 + 24));
    v169 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v169);

    MEMORY[0x1D3890F70](125, 0xE100000000000000);
    v170 = v257;
    sub_1D1D46B4C(v165, type metadata accessor for EndpointPath);
    v171 = sub_1D1B1312C(v170, *(&v170 + 1), &v256);

    *(v164 + 4) = v171;
    *(v164 + 12) = 2080;
    *(v164 + 14) = sub_1D1B1312C(0x452072657474614DLL, 0xEF746E696F70646ELL, &v256);
    *(v164 + 22) = 2082;
    sub_1D1785A60();
    v172 = sub_1D1E6817C();
    v174 = sub_1D1B1312C(v172, v173, &v256);

    *(v164 + 24) = v174;
    *(v164 + 32) = 2082;
    static MatterDeviceType.primaryDeviceType(for:)(v152, &v257);

    if (v257 == 28)
    {
      v175 = 0xE600000000000000;
      v176 = 0x296C6C756E28;
    }

    else
    {
      LOBYTE(v255) = v257;
      v176 = sub_1D1E6789C();
      v175 = v179;
    }

    v180 = v235;
    v181 = sub_1D1B1312C(v176, v175, &v256);

    *(v164 + 34) = v181;
    *(v164 + 42) = 2082;
    *(v164 + 44) = sub_1D1B1312C(0x6C62616863616572, 0xE900000000000065, &v256);
    *(v164 + 52) = 2082;
    type metadata accessor for StaticCluster();
    sub_1D1785A0C();
    v182 = sub_1D1E6762C();
    v184 = v183;

    v185 = sub_1D1B1312C(v182, v184, &v256);

    *(v164 + 54) = v185;
    *(v164 + 62) = 2082;
    v186 = StaticClusterGroups.description.getter();
    v188 = v187;
    sub_1D1D46B4C(v161, type metadata accessor for StaticClusterGroups);
    v189 = sub_1D1B1312C(v186, v188, &v256);

    *(v164 + 64) = v189;
    _os_log_impl(&dword_1D16EC000, v162, v227, "Creating StaticEndpoint: (%{public}s) name: (%s) deviceTypes:%{public}s primaryDeviceType:(%{public}s) deviceState: (%{public}s) clusters: %{public}s clusterGroup: (%{public}s)", v164, 0x48u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v166, -1, -1);
    MEMORY[0x1D3893640](v164, -1, -1);

    sub_1D1D46B4C(v238, type metadata accessor for MatterTilePath);
    sub_1D1D46B4C(v246, type metadata accessor for MatterTileMetadata);
    sub_1D1D46B4C(v244, type metadata accessor for EndpointPath);
    v177 = v241;
    v190 = v180;
    v156 = v245;
    (*(v241 + 8))(v190, v245);
    sub_1D1D46B4C(v233, type metadata accessor for StaticClusterGroups);
    v178 = v231;
    v149 = v234;
  }

  else
  {

    sub_1D1D46B4C(v161, type metadata accessor for StaticClusterGroups);
    sub_1D1D46B4C(v159, type metadata accessor for EndpointPath);
    sub_1D1D46B4C(v238, type metadata accessor for MatterTilePath);
    sub_1D1D46B4C(v246, type metadata accessor for MatterTileMetadata);
    sub_1D1D46B4C(v148, type metadata accessor for EndpointPath);
    v177 = v241;
    (*(v241 + 8))(v235, v156);
    sub_1D1D46B4C(v157, type metadata accessor for StaticClusterGroups);
    v178 = v231;
  }

  v191 = v214;
  sub_1D1D46A7C(v149, &v214[*(v215 + 48)], type metadata accessor for StaticEndpoint);
  v192 = sub_1D18DBDD8(v216);
  swift_setDeallocating();
  sub_1D1D46AE4(v191);
  swift_deallocClassInstance();
  v193 = type metadata accessor for StaticMatterDevice();
  v194 = v230;
  sub_1D1D46A14(v225, v230 + v193[15], type metadata accessor for MatterTileMetadata);
  v195 = v217;
  static UUID.matterObjectIdentifier(deviceID:endpointID:)(v217, 0, v194);
  sub_1D1D46B4C(v236, type metadata accessor for StaticThermostatClusterGroup);
  *(v194 + v193[5]) = v195;
  *(v194 + v193[7]) = 1;
  *(v194 + v193[8]) = v218;
  v196 = *(v177 + 32);
  v196(v194 + v193[9], v237, v156);
  v196(v194 + v193[10], v239, v156);
  v196(v194 + v193[12], v240, v156);
  sub_1D19A376C(v242, v194 + v193[13]);
  v197 = (v194 + v193[11]);
  *v197 = 0;
  v197[1] = 0;
  *(v194 + v193[14]) = v192;
  v198 = (v194 + v193[6]);
  *v198 = v207;
  v198[1] = v178;
  *(v194 + v193[16]) = 0;
}

uint64_t sub_1D1D46170()
{
  v51 = *MEMORY[0x1E69E9840];
  v43 = MEMORY[0x1E69E7CC0];
  sub_1D178D694(0, 7, 0);
  v0 = 0;
  do
  {
    v1 = *(&unk_1F4D65818 + v0 + 32);
    if (v1 <= 2)
    {
      if (*(&unk_1F4D65818 + v0 + 32))
      {
        if (v1 == 1)
        {
          v4 = static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC0DD0);
          v6 = v5;
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648388, &qword_1D1E8C278);
          v49 = v7;
          v50 = sub_1D19B9764();
          v48[0] = &unk_1F4D66160;
          v8 = __swift_project_boxed_opaque_existential_1(v48, v7);
          v9 = *v8;
          v10 = *(*v8 + 16);
          if (!v10)
          {
            goto LABEL_23;
          }

          if (v10 > 0xE)
          {
            goto LABEL_21;
          }

          memset(__dst, 0, sizeof(__dst));
          v45 = v10;
          memcpy(__dst, (v9 + 32), v10);
          v11 = *__dst;
          v12 = v42 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v45 << 16)) << 32);
          v42 = v12;
        }

        else
        {
          v4 = static String.hfLocalized(_:)(0xD000000000000018, 0x80000001D1EC0DB0);
          v6 = v18;
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648388, &qword_1D1E8C278);
          v49 = v19;
          v50 = sub_1D19B9764();
          v48[0] = &unk_1F4D661B0;
          v20 = __swift_project_boxed_opaque_existential_1(v48, v19);
          v21 = *v20;
          v10 = *(*v20 + 16);
          if (!v10)
          {
            goto LABEL_23;
          }

          if (v10 > 0xE)
          {
            goto LABEL_21;
          }

          memset(__dst, 0, sizeof(__dst));
          v45 = v10;
          memcpy(__dst, (v21 + 32), v10);
          v11 = *__dst;
          v12 = v40 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v45 << 16)) << 32);
          v40 = v12;
        }
      }

      else
      {
        v4 = static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC0DF0);
        v6 = v14;
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648388, &qword_1D1E8C278);
        v49 = v15;
        v50 = sub_1D19B9764();
        v48[0] = &unk_1F4D66188;
        v16 = __swift_project_boxed_opaque_existential_1(v48, v15);
        v17 = *v16;
        v10 = *(*v16 + 16);
        if (!v10)
        {
          goto LABEL_23;
        }

        if (v10 > 0xE)
        {
          goto LABEL_21;
        }

        memset(__dst, 0, sizeof(__dst));
        v45 = v10;
        memcpy(__dst, (v17 + 32), v10);
        v11 = *__dst;
        v12 = v41 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v45 << 16)) << 32);
        v41 = v12;
      }
    }

    else
    {
      if (*(&unk_1F4D65818 + v0 + 32) > 4u)
      {
        if (v1 == 5)
        {
          v3 = 0xD00000000000001FLL;
          v13 = "XCTestConfigurationFilePath";
        }

        else
        {
          v3 = 0xD00000000000001ELL;
          v13 = "enablePresets(presets:)";
        }

        v2 = v13 | 0x8000000000000000;
        goto LABEL_26;
      }

      if (v1 == 3)
      {
        v2 = 0x80000001D1EC0D90;
        v3 = 0xD000000000000017;
LABEL_26:
        v4 = static String.hfLocalized(_:)(v3, v2);
        v6 = v31;
        v11 = 0;
        v12 = 0xC000000000000000;
        goto LABEL_30;
      }

      v4 = static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EC0D70);
      v6 = v22;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648388, &qword_1D1E8C278);
      v49 = v23;
      v50 = sub_1D19B9764();
      v48[0] = &unk_1F4D661D8;
      v24 = __swift_project_boxed_opaque_existential_1(v48, v23);
      v25 = *v24;
      v10 = *(*v24 + 16);
      if (!v10)
      {
LABEL_23:
        v11 = 0;
        v12 = 0xC000000000000000;
        goto LABEL_29;
      }

      if (v10 > 0xE)
      {
LABEL_21:
        v26 = sub_1D1E661AC();
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        swift_allocObject();
        v29 = sub_1D1E6615C();
        v30 = v29;
        if (v10 >= 0x7FFFFFFF)
        {
          sub_1D1E6685C();
          v11 = swift_allocObject();
          *(v11 + 16) = 0;
          *(v11 + 24) = v10;
          v12 = v30 | 0x8000000000000000;
        }

        else
        {
          v11 = v10 << 32;
          v12 = v29 | 0x4000000000000000;
        }

        goto LABEL_29;
      }

      memset(__dst, 0, sizeof(__dst));
      v45 = v10;
      memcpy(__dst, (v25 + 32), v10);
      v11 = *__dst;
      v12 = v39 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v45 << 16)) << 32);
      v39 = v12;
    }

LABEL_29:
    __swift_destroy_boxed_opaque_existential_1(v48);
LABEL_30:
    LODWORD(v48[0]) = *v47;
    *(v48 + 3) = *&v47[3];
    *__dst = *v46;
    *&__dst[3] = *&v46[3];
    v33 = *(v43 + 16);
    v32 = *(v43 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_1D178D694((v32 > 1), v33 + 1, 1);
    }

    ++v0;
    *(v43 + 16) = v33 + 1;
    v34 = v43 + (v33 << 6);
    *(v34 + 32) = xmmword_1D1E8BF30;
    *(v34 + 48) = v1;
    v35 = *(v48 + 3);
    *(v34 + 49) = v48[0];
    *(v34 + 52) = v35;
    *(v34 + 56) = v11;
    *(v34 + 64) = v12;
    *(v34 + 72) = 0;
    v36 = *__dst;
    *(v34 + 76) = *&__dst[3];
    *(v34 + 73) = v36;
    *(v34 + 80) = v4;
    *(v34 + 88) = v6;
  }

  while (v0 != 7);
  v37 = *MEMORY[0x1E69E9840];
  return v43;
}

uint64_t sub_1D1D466F4()
{
  v29 = MEMORY[0x1E69E7CC0];
  sub_1D178D6B4(0, 7, 0);
  result = v29;
  v1 = byte_1F4D65838;
  v3 = *(v29 + 16);
  v2 = *(v29 + 24);
  v4 = v3 + 1;
  if (v3 >= v2 >> 1)
  {
    sub_1D178D6B4((v2 > 1), v3 + 1, 1);
    result = v29;
  }

  *(result + 16) = v4;
  v5 = result + 24 * v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = 1;
  *(v5 + 48) = 1;
  v6 = byte_1F4D65839;
  v30 = result;
  v7 = *(result + 24);
  v8 = v3 + 2;
  if (v4 >= v7 >> 1)
  {
    sub_1D178D6B4((v7 > 1), v3 + 2, 1);
    result = v30;
  }

  *(result + 16) = v8;
  v9 = result + 24 * v4;
  *(v9 + 32) = v6;
  *(v9 + 40) = 1;
  *(v9 + 48) = 1;
  v10 = byte_1F4D6583A;
  v31 = result;
  v11 = *(result + 24);
  v12 = v3 + 3;
  if (v8 >= v11 >> 1)
  {
    sub_1D178D6B4((v11 > 1), v3 + 3, 1);
    result = v31;
  }

  *(result + 16) = v12;
  v13 = result + 24 * v8;
  *(v13 + 32) = v10;
  *(v13 + 40) = 1;
  *(v13 + 48) = 1;
  v14 = byte_1F4D6583B;
  v32 = result;
  v15 = *(result + 24);
  v16 = v3 + 4;
  if (v12 >= v15 >> 1)
  {
    sub_1D178D6B4((v15 > 1), v3 + 4, 1);
    result = v32;
  }

  *(result + 16) = v16;
  v17 = result + 24 * v12;
  *(v17 + 32) = v14;
  *(v17 + 40) = 1;
  *(v17 + 48) = 1;
  v18 = byte_1F4D6583C;
  v33 = result;
  v19 = *(result + 24);
  v20 = v3 + 5;
  if (v16 >= v19 >> 1)
  {
    sub_1D178D6B4((v19 > 1), v3 + 5, 1);
    result = v33;
  }

  *(result + 16) = v20;
  v21 = result + 24 * v16;
  *(v21 + 32) = v18;
  *(v21 + 40) = 1;
  *(v21 + 48) = 1;
  v22 = byte_1F4D6583D;
  v34 = result;
  v23 = *(result + 24);
  v24 = v3 + 6;
  if (v20 >= v23 >> 1)
  {
    sub_1D178D6B4((v23 > 1), v3 + 6, 1);
    result = v34;
  }

  *(result + 16) = v24;
  v25 = result + 24 * v20;
  *(v25 + 32) = v22;
  *(v25 + 40) = 1;
  *(v25 + 48) = 1;
  v26 = byte_1F4D6583E;
  v35 = result;
  v27 = *(result + 24);
  if (v24 >= v27 >> 1)
  {
    sub_1D178D6B4((v27 > 1), v3 + 7, 1);
    result = v35;
  }

  *(result + 16) = v3 + 7;
  v28 = result + 24 * v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 1;
  *(v28 + 48) = 1;
  return result;
}

uint64_t sub_1D1D469A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D46A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D46A7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D46AE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646130, &qword_1D1E7E6A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1D46B4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AutoClimateModel.homeToThermostatControllers.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);
  sub_1D1E66CAC();

  v1 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_1D1D46C6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D1D46D34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);
  sub_1D1E66C9C();
}

uint64_t type metadata accessor for AutoClimateModel()
{
  result = qword_1EC64E498;
  if (!qword_1EC64E498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AutoClimateModel.homeToThermostatControllers.setter()
{
  swift_getKeyPath();
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);
  sub_1D1E66C9C();
}

uint64_t sub_1D1D46F1C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void (*AutoClimateModel.homeToThermostatControllers.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  swift_beginAccess();
  return sub_1D1D470F0;
}

void sub_1D1D470F0(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1D1E66CBC();

  free(v1);
}

uint64_t sub_1D1D47174()
{
  swift_getKeyPath();
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);
  sub_1D1E66CAC();

  return *(v0 + OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__isTestMode);
}

uint64_t sub_1D1D4721C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);
  sub_1D1E66CAC();

  *a2 = *(v3 + OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__isTestMode);
  return result;
}

uint64_t sub_1D1D472CC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__isTestMode) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__isTestMode) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);
    sub_1D1E66C9C();
  }

  return result;
}

id AutoClimateModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D1D47510()
{
  result = [objc_allocWithZone(type metadata accessor for AutoClimateModel()) init];
  qword_1EC64E470 = result;
  return result;
}

id static AutoClimateModel.shared.getter()
{
  if (qword_1EC642408 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64E470;

  return v1;
}

uint64_t AutoClimateModel.addController(for:to:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = type metadata accessor for StaticService(0);
  v3[23] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  sub_1D1E67E1C();
  v3[26] = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();
  v3[27] = v8;
  v3[28] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D1D476A4, v8, v7);
}

uint64_t sub_1D1D476A4()
{
  v62 = v0;
  v1 = v0[23];
  v2 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436B8, &unk_1D1E71E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  v4 = *(v1 + 104);
  *(inited + 32) = *(v2 + v4);
  LOBYTE(v1) = sub_1D17C4E00(46, inited);
  swift_setDeallocating();
  if ((v1 & 1) == 0)
  {
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_1D1E739C0;
    *(v5 + 32) = *(v2 + v4);
    v6 = sub_1D17C4E00(20, v5);
    swift_setDeallocating();
    if (!v6)
    {
      v37 = v0[26];

      goto LABEL_20;
    }
  }

  v7 = v0[25];
  sub_1D1741C08(v0[20] + *(v0[23] + 156), v7, &qword_1EC644870, &unk_1D1EABA00);
  v8 = type metadata accessor for EndpointPath(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    v10 = v0[25];
    v9 = v0[26];

    sub_1D1741A30(v10, &qword_1EC644870, &unk_1D1EABA00);
LABEL_20:
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v38 = v0[24];
    v39 = v0[20];
    v40 = sub_1D1E6709C();
    __swift_project_value_buffer(v40, qword_1EC64F470);
    sub_1D1D4D138(v39, v38, type metadata accessor for StaticService);
    v41 = sub_1D1E6707C();
    v42 = sub_1D1E6833C();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[24];
    if (v43)
    {
      v45 = v0[23];
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v61 = v47;
      *v46 = 136315138;
      v48 = (v44 + *(v45 + 20));
      v49 = *v48;
      v50 = v48[1];

      sub_1D1D4D1A0(v44, type metadata accessor for StaticService);
      v51 = sub_1D1B1312C(v49, v50, &v61);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_1D16EC000, v41, v42, "(AutoClimateModel - addController(for:)) - Failed to load thermostat controller for: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1D3893640](v47, -1, -1);
      MEMORY[0x1D3893640](v46, -1, -1);
    }

    else
    {

      sub_1D1D4D1A0(v44, type metadata accessor for StaticService);
    }

    goto LABEL_25;
  }

  v11 = v0[25];
  v12 = *(v11 + *(v8 + 20));
  v0[29] = v12;
  sub_1D1D4D1A0(v11, type metadata accessor for EndpointPath);
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EC64F470);
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6835C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v12;
    _os_log_impl(&dword_1D16EC000, v14, v15, "(AutoClimateModel - addController(for:)) - Loading thermostat controller for thermostat with matterDeviceID: %llu if needed", v16, 0xCu);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  v17 = v0[22];

  swift_getKeyPath();
  v0[18] = v17;
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);
  sub_1D1E66CAC();

  v18 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  if (*(*(v17 + v18) + 16) && (v19 = v0[21], v20 = *(v17 + v18), , sub_1D1742188(v19), LOBYTE(v19) = v21, , (v19 & 1) != 0))
  {
    v22 = v0[22];
    swift_getKeyPath();
    v0[19] = v22;
    sub_1D1E66CAC();

    v23 = *(v17 + v18);
    if (!*(v23 + 16))
    {
      v55 = v0[26];

      goto LABEL_25;
    }

    v24 = v0[21];
    v25 = *(v17 + v18);

    v26 = sub_1D1742188(v24);
    if ((v27 & 1) == 0)
    {
      v56 = v0[26];

      goto LABEL_25;
    }

    v28 = *(*(v23 + 56) + 8 * v26);
    v0[31] = v28;

    v29 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_thermostatControllers;
    swift_beginAccess();
    if (*(*(v28 + v29) + 16))
    {
      sub_1D17420B0(v12);
      if (v30)
      {
        v31 = v0[26];

LABEL_25:
        v53 = v0[24];
        v52 = v0[25];

        v54 = v0[1];

        return v54();
      }
    }

    v57 = swift_task_alloc();
    v0[32] = v57;
    *v57 = v0;
    v57[1] = sub_1D1D47F04;
    v58 = v0[21];
    v59 = v0[22];
    v60 = v0[20];

    return sub_1D1D48B8C(v60, v58);
  }

  else
  {
    v32 = swift_task_alloc();
    v0[30] = v32;
    *v32 = v0;
    v32[1] = sub_1D1D47D74;
    v33 = v0[21];
    v34 = v0[22];
    v35 = v0[20];

    return sub_1D1D482D4(v35, v12, v33);
  }
}

uint64_t sub_1D1D47D74()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v6 = *v0;

  v3 = *(v1 + 224);
  v4 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1D1D47E94, v4, v3);
}

uint64_t sub_1D1D47E94()
{
  v1 = v0[26];

  v3 = v0[24];
  v2 = v0[25];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1D47F04(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = a1;

  v4 = *(v2 + 224);
  v5 = *(v2 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1D1D4802C, v5, v4);
}

uint64_t sub_1D1D4802C()
{
  if (v0[33])
  {
    v1 = swift_task_alloc();
    v0[34] = v1;
    *v1 = v0;
    v1[1] = sub_1D1D48114;

    return sub_1D1D54E08();
  }

  else
  {
    v3 = v0[31];
    v4 = v0[26];

    v6 = v0[24];
    v5 = v0[25];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1D1D48114()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v6 = *v0;

  v3 = *(v1 + 224);
  v4 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1D1D48234, v4, v3);
}

uint64_t sub_1D1D48234()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[26];

  sub_1D1D4D328(v1, v3);

  v6 = v0[24];
  v5 = v0[25];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D1D482D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1D1E66A7C();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  sub_1D1E67E1C();
  v4[15] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  v4[16] = v9;
  v4[17] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1D483CC, v9, v8);
}

uint64_t sub_1D1D483CC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v2 + 16))(v1, v0[10], v3);
  v4 = type metadata accessor for AutoClimateModel.Home();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v0[18] = v7;
  v8 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_thermostatControllers;
  *(v7 + v8) = sub_1D18DBFD4(MEMORY[0x1E69E7CC0]);
  *(v7 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig) = 0;
  (*(v2 + 32))(v7 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_homeUUID, v1, v3);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_1D1D48504;

  return AutoClimateModel.Home.fetchLocalPresenceRooms()();
}

uint64_t sub_1D1D48504()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[20] = v4;
  *v4 = v3;
  v4[1] = sub_1D1D48670;
  v5 = v1[11];
  v6 = v1[10];
  v7 = v1[8];

  return sub_1D1D48B8C(v7, v6);
}

uint64_t sub_1D1D48670(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = a1;

  v4 = *(v2 + 136);
  v5 = *(v2 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D1D48798, v5, v4);
}

uint64_t sub_1D1D48798()
{
  if (v0[21])
  {
    v1 = swift_task_alloc();
    v0[22] = v1;
    *v1 = v0;
    v1[1] = sub_1D1D48878;

    return sub_1D1D54E08();
  }

  else
  {
    v3 = v0[18];
    v4 = v0[15];

    v5 = v0[14];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D1D48878()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D1D48998, v4, v3);
}

uint64_t sub_1D1D48998()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];

  sub_1D1D4D328(v1, v6);
  swift_getKeyPath();
  v0[5] = v5;
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);

  sub_1D1E66CAC();

  v0[6] = v5;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v7 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  v8 = *(v5 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v7);
  *(v5 + v7) = 0x8000000000000000;
  sub_1D175707C(v2, v4, isUniquelyReferenced_nonNull_native);
  *(v5 + v7) = v13;
  swift_endAccess();
  v0[7] = v5;
  swift_getKeyPath();
  sub_1D1E66CBC();

  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1D48B8C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_1D1E66A7C();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v7 = type metadata accessor for StaticService(0);
  v3[14] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  sub_1D1E67E1C();
  v3[18] = sub_1D1E67E0C();
  v10 = sub_1D1E67D4C();
  v3[19] = v10;
  v3[20] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D1D48CE4, v10, v9);
}

uint64_t sub_1D1D48CE4()
{
  v70 = v0;
  v1 = *(v0 + 64);
  swift_getKeyPath();
  *(v0 + 40) = v1;
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);
  sub_1D1E66CAC();

  if (*(v1 + OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__isTestMode) == 1)
  {
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v4 = *(v0 + 104);
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);

    sub_1D1D4D138(v8, v3, type metadata accessor for StaticService);
    (*(v6 + 16))(v4, v7, v5);
    v9 = type metadata accessor for AutoClimateModel.Thermostat(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = AutoClimateModel.Thermostat.init(staticService:homeUUID:)(v3, v4);
LABEL_3:
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);
    v17 = *(v0 + 96);
    v16 = *(v0 + 104);
    v18 = *(v0 + 88);

    v19 = *(v0 + 8);

    return v19(v12);
  }

  v21 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  *(v0 + 168) = v21;
  if (!v21)
  {
    v23 = *(v0 + 144);

    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v24 = qword_1EE07DC60;
    v25 = *(v0 + 48) + *(*(v0 + 112) + 44);
    v26 = sub_1D1E66A2C();
    v27 = [v24 accessoryFor_];

    if (v27)
    {
      if (([v27 supportsAdaptiveTemperatureAutomations] & 1) != 0 || objc_msgSend(v27, sel_supportsCleanEnergyAutomation))
      {
        v28 = *(v0 + 136);
        v29 = *(v0 + 104);
        v30 = *(v0 + 72);
        v31 = *(v0 + 80);
        v32 = *(v0 + 56);
        sub_1D1D4D138(*(v0 + 48), v28, type metadata accessor for StaticService);
        (*(v31 + 16))(v29, v32, v30);
        v33 = type metadata accessor for AutoClimateModel.Thermostat(0);
        v34 = *(v33 + 48);
        v35 = *(v33 + 52);
        swift_allocObject();
        v12 = AutoClimateModel.Thermostat.init(staticService:homeUUID:)(v28, v29);

        goto LABEL_3;
      }

      if (qword_1EC642480 != -1)
      {
        swift_once();
      }

      v53 = *(v0 + 128);
      v54 = *(v0 + 48);
      v55 = sub_1D1E6709C();
      __swift_project_value_buffer(v55, qword_1EC64F470);
      sub_1D1D4D138(v54, v53, type metadata accessor for StaticService);
      v56 = sub_1D1E6707C();
      v57 = sub_1D1E6835C();
      v58 = os_log_type_enabled(v56, v57);
      v59 = *(v0 + 128);
      if (v58)
      {
        v60 = *(v0 + 112);
        v61 = *(v0 + 72);
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v69 = v63;
        *v62 = 136315138;
        v64 = *(v60 + 44);
        sub_1D1D4D2B0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
        v65 = sub_1D1E68FAC();
        v67 = v66;
        sub_1D1D4D1A0(v59, type metadata accessor for StaticService);
        v68 = sub_1D1B1312C(v65, v67, &v69);

        *(v62 + 4) = v68;
        _os_log_impl(&dword_1D16EC000, v56, v57, "(AutoClimateModel - thermostatController(for:)) - Accessory: %s does not support auto climate control.", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x1D3893640](v63, -1, -1);
        MEMORY[0x1D3893640](v62, -1, -1);

        goto LABEL_29;
      }

      v52 = v59;
    }

    else
    {
      if (qword_1EC642480 != -1)
      {
        swift_once();
      }

      v36 = *(v0 + 120);
      v37 = *(v0 + 48);
      v38 = sub_1D1E6709C();
      __swift_project_value_buffer(v38, qword_1EC64F470);
      sub_1D1D4D138(v37, v36, type metadata accessor for StaticService);
      v39 = sub_1D1E6707C();
      v40 = sub_1D1E6833C();
      v41 = os_log_type_enabled(v39, v40);
      v42 = *(v0 + 120);
      if (v41)
      {
        v43 = *(v0 + 112);
        v44 = *(v0 + 72);
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v69 = v46;
        *v45 = 136315138;
        v47 = *(v43 + 44);
        sub_1D1D4D2B0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
        v48 = sub_1D1E68FAC();
        v50 = v49;
        sub_1D1D4D1A0(v42, type metadata accessor for StaticService);
        v51 = sub_1D1B1312C(v48, v50, &v69);

        *(v45 + 4) = v51;
        _os_log_impl(&dword_1D16EC000, v39, v40, "(AutoClimateModel - thermostatController(for:)) - Failed to find accessory for static service with accessoryId: %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x1D3893640](v46, -1, -1);
        MEMORY[0x1D3893640](v45, -1, -1);

LABEL_29:
        v12 = 0;
        goto LABEL_3;
      }

      v52 = v42;
    }

    sub_1D1D4D1A0(v52, type metadata accessor for StaticService);
    goto LABEL_29;
  }

  *(v0 + 184) = *(*(v0 + 112) + 44);
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v22 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1D49408, v22, 0);
}

uint64_t sub_1D1D49408()
{
  v46 = v0;
  v1 = v0;
  v2 = *(v0 + 168);
  swift_beginAccess();
  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = [v3 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v45 = sub_1D1749970(v5);
    sub_1D1747DDC(&v45);

    v6 = v45;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  v10 = *(v0 + 48);
  v11 = *(*(v0 + 80) + 16);
  v11(*(v0 + 96), v10 + v7, v9);
  v11(v8, v10 + v7, v9);
  v43 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_31:
    v44 = v6 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1D1E6873C();
  }

  else
  {
    v44 = v6 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = 0;
  v15 = v6 & 0xC000000000000001;
  v42 = v6 + 32;
  while (v12 != v13)
  {
    if (v15)
    {
      v11 = v6;
      v16 = MEMORY[0x1D3891EF0](v13, v6);
    }

    else
    {
      if (v13 >= *(v44 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v11 = v6;
      v16 = *(v6 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v1;
    v19 = v1[11];
    v20 = [v16 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v21 = sub_1D1E67C1C();

    v22 = swift_task_alloc();
    *(v22 + 16) = v19;
    v23 = sub_1D174A6C4(sub_1D1749C64, v22, v21);

    if (v23)
    {
      v12 = v13;
      v6 = v11;
      v1 = v18;
      break;
    }

    v24 = __OFADD__(v13++, 1);
    v6 = v11;
    v1 = v18;
    if (v24)
    {
      goto LABEL_30;
    }
  }

  if (v43)
  {
    if (v12 != sub_1D1E6873C())
    {
LABEL_19:
      if (v15)
      {
        v25 = MEMORY[0x1D3891EF0](v12, v6);
      }

      else
      {
        if (v12 >= *(v44 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v25 = *(v42 + 8 * v12);
      }

      v26 = v25;
      v27 = v1[12];
      v29 = v1[9];
      v28 = v1[10];
      v30 = [v25 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v31 = sub_1D1E67C1C();

      v32 = swift_task_alloc();
      *(v32 + 16) = v27;
      v33 = v1;
      v34 = sub_1D174A6C4(sub_1D1778988, v32, v31);
      v33[22] = v34;

      v11 = *(v28 + 8);
      (v11)(v27, v29);

      v12 = v33[11];
      v14 = v33[9];
      if (v34)
      {

        (v11)(v12, v14);
        v35 = v33[19];
        v36 = v33[20];
        v37 = sub_1D1D49B38;
        goto LABEL_26;
      }

LABEL_34:
      v37 = (v11)(v12, v14);
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v37, v35, v36);
    }
  }

  else if (v12 != *(v44 + 16))
  {
    goto LABEL_19;
  }

  v38 = v1[11];
  v39 = v1[9];
  v40 = *(v1[10] + 8);
  v40(v1[12], v39);

  v40(v38, v39);
  v35 = v1[19];
  v36 = v1[20];
  v37 = sub_1D1D498A4;
LABEL_26:

  return MEMORY[0x1EEE6DFA0](v37, v35, v36);
}