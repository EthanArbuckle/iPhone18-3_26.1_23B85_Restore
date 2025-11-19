uint64_t sub_1B0B9A4C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5060, &qword_1B0ECAF58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4878();
  sub_1B0E46D48();
  v11 = *v3;
  LOBYTE(v40) = 0;
  sub_1B0E46948();
  if (!v2)
  {
    v12 = *(v3 + 2);
    v13 = *(v3 + 12);
    LOBYTE(v40) = 1;
    LOBYTE(v37[0]) = v13;
    sub_1B0E46908();
    v14 = *(v3 + 4);
    v15 = *(v3 + 20);
    LOBYTE(v40) = 2;
    LOBYTE(v37[0]) = v15;
    sub_1B0E46908();
    v16 = v3[3];
    v17 = *(v3 + 32);
    LOBYTE(v40) = 3;
    sub_1B0E46918();
    v18 = v3[5];
    v19 = *(v3 + 48);
    LOBYTE(v40) = 4;
    sub_1B0E46918();
    *&v40 = v3[7];
    LOBYTE(v37[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B0BA3210(&qword_1EB6DB080, &qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B0E46958();
    *&v40 = v3[8];
    LOBYTE(v37[0]) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5068, &qword_1B0ECAF60);
    sub_1B0BA49C8(&qword_1EB6DB668, &qword_1EB6E5068, &qword_1B0ECAF60, sub_1B0BA48CC);
    sub_1B0E468F8();
    v20 = *(v3 + 11);
    v40 = *(v3 + 9);
    v41 = v20;
    v42 = *(v3 + 13);
    LOBYTE(v43) = *(v3 + 120);
    LOBYTE(v37[0]) = 7;
    sub_1B0BA4920();
    sub_1B0E46958();
    v21 = *(v3 + 11);
    v22 = *(v3 + 9);
    v50 = *(v3 + 10);
    v51 = v21;
    v23 = *(v3 + 11);
    v52 = *(v3 + 12);
    v24 = *(v3 + 9);
    v49[0] = *(v3 + 8);
    v49[1] = v24;
    v42 = v50;
    v43 = v23;
    v44 = *(v3 + 12);
    v53 = v3[26];
    v45 = v3[26];
    v40 = v49[0];
    v41 = v22;
    v39 = 8;
    sub_1B0BA1DD8(v49, v37);
    sub_1B0BA4974();
    sub_1B0E46958();
    v37[2] = v42;
    v37[3] = v43;
    v37[4] = v44;
    v38 = v45;
    v37[0] = v40;
    v37[1] = v41;
    sub_1B0BA1E10(v37);
    *&v33 = v3[27];
    LOBYTE(v30[0]) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5070, &qword_1B0ECAF68);
    sub_1B0BA49C8(&qword_1EB6DB4C0, &qword_1EB6E5070, &qword_1B0ECAF68, sub_1B0BA4A44);
    sub_1B0E46958();
    v25 = *(v3 + 15);
    v26 = *(v3 + 17);
    v47 = *(v3 + 16);
    v48[0] = v26;
    v27 = *(v3 + 15);
    v46[0] = *(v3 + 14);
    v46[1] = v27;
    v28 = *(v3 + 17);
    v35 = v47;
    v36[0] = v28;
    *(v48 + 14) = *(v3 + 286);
    *(v36 + 14) = *(v3 + 286);
    v33 = v46[0];
    v34 = v25;
    v32 = 10;
    sub_1B0BA1D70(v46, v30);
    sub_1B0BA4A98();
    sub_1B0E46958();
    v30[2] = v35;
    *v31 = v36[0];
    *&v31[14] = *(v36 + 14);
    v30[0] = v33;
    v30[1] = v34;
    sub_1B0BA1DA8(v30);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B0B9AA18()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x6574656C706D6F63;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x5564656972657571;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x676E697373696DLL;
  if (v1 != 1)
  {
    v5 = 1701736292;
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

uint64_t sub_1B0B9AB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0BA3DB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0B9AB28()
{
  sub_1B0BA5040();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9AB64()
{
  sub_1B0BA5040();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9ABA0(void *a1)
{
  v5 = v1[2];
  *v6 = v1[3];
  *&v6[14] = *(v1 + 62);
  v3 = *v1;
  v4 = v1[1];
  return sub_1B0B9A0E4(a1);
}

uint64_t sub_1B0B9ABEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0BA4018(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0B9AC20()
{
  sub_1B0BA4878();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9AC5C()
{
  sub_1B0BA4878();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9ACEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5178, &qword_1B0ECC190);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA6AE4();
  sub_1B0E46D48();
  v16 = 0;
  sub_1B0E468C8();
  if (!v5)
  {
    v15 = 1;
    sub_1B0E468C8();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1B0B9AE80(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50D0, &qword_1B0ECAFC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4F44();
  sub_1B0E46D48();
  v11 = *v3;
  LOBYTE(v21) = 0;
  sub_1B0E46938();
  if (!v2)
  {
    v12 = v3[1];
    LOBYTE(v21) = 1;
    sub_1B0E46938();
    v13 = v3[2];
    LOBYTE(v21) = 2;
    sub_1B0E46938();
    v14 = *(v3 + 24);
    v21 = *(v3 + 8);
    v22 = v14;
    v20 = 3;
    sub_1B0BA4F98();
    sub_1B0E468F8();
    v15 = *(v3 + 56);
    v21 = *(v3 + 40);
    v22 = v15;
    v20 = 4;
    sub_1B0E468F8();
    v16 = *(v3 + 9);
    v17 = *(v3 + 10);
    LOBYTE(v21) = 5;
    sub_1B0E468C8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B0B9B0E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FC0, &qword_1B0ECA2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA1888();
  sub_1B0E46D48();
  v11 = *v3;
  v12 = v3[1];
  v21[0] = 0;
  sub_1B0E46928();
  if (!v2)
  {
    v13 = *(v3 + 2);
    *v21 = *(v3 + 1);
    *&v21[16] = v13;
    v21[32] = *(v3 + 48);
    v20[0] = 1;
    sub_1B0BA18DC();
    sub_1B0E46958();
    v14 = v3[7];
    v15 = v3[8];
    v21[0] = 2;
    sub_1B0E468C8();
    memcpy(v22, v3 + 9, 0x126uLL);
    memcpy(v21, v3 + 9, sizeof(v21));
    v20[295] = 3;
    sub_1B03B5C80(v22, v20, &qword_1EB6E4FC8, &qword_1B0ECA2D8);
    sub_1B0BA1930();
    sub_1B0E468F8();
    memcpy(v20, v21, 0x126uLL);
    sub_1B0398EFC(v20, &qword_1EB6E4FC8, &qword_1B0ECA2D8);
    v19 = v3[46];
    v18 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FD0, &qword_1B0ECA2E0);
    sub_1B0BA3210(&qword_1EB6DADE0, &qword_1EB6E4FD0, &qword_1B0ECA2E0);
    sub_1B0E468F8();
    v19 = v3[47];
    v18 = 5;
    sub_1B0E468F8();
    v19 = v3[48];
    v18 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FD8, &qword_1B0ECA2E8);
    sub_1B0BA49C8(&qword_1EB6DB4B8, &qword_1EB6E4FD8, &qword_1B0ECA2E8, sub_1B0BA1984);
    sub_1B0E468F8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B0B9B488()
{
  if (*v0)
  {
    result = 1701736292;
  }

  else
  {
    result = 0x676E69646E6570;
  }

  *v0;
  return result;
}

uint64_t sub_1B0B9B4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701736292 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

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

uint64_t sub_1B0B9B598()
{
  sub_1B0BA6AE4();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9B5D4()
{
  sub_1B0BA6AE4();

  return sub_1B0E46F38();
}

unint64_t sub_1B0B9B630()
{
  v1 = *v0;
  v2 = 0xD00000000000001CLL;
  if (v1 == 4)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (v1 == 3)
  {
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD00000000000001ALL;
  if (v1 == 1)
  {
    v4 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B0B9B6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0BA43D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0B9B700()
{
  sub_1B0BA4F44();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9B73C()
{
  sub_1B0BA4F44();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9B778(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 10);
  v3 = *v1;
  v4 = v1[1];
  return sub_1B0B9AE80(a1);
}

uint64_t sub_1B0B9B7C4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000011;
    if (v1 != 1)
    {
      v5 = 0xD000000000000012;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1701667182;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    if (v1 == 5)
    {
      v2 = 0xD000000000000015;
    }

    v3 = 0x74617453636E7973;
    if (v1 != 3)
    {
      v3 = 0x75716552636E7973;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B0B9B8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0BA45CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0B9B8D4()
{
  sub_1B0BA1888();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9B910()
{
  sub_1B0BA1888();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9B9A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a3;
  v17 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5168, &qword_1B0ECC180);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA6A3C();
  sub_1B0E46D48();
  v19 = a2;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B0BA3210(&qword_1EB6DB080, &qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B0E468F8();
  if (!v5)
  {
    v19 = v16;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FD0, &qword_1B0ECA2E0);
    sub_1B0BA3210(&qword_1EB6DADE0, &qword_1EB6E4FD0, &qword_1B0ECA2E0);
    sub_1B0E468F8();
    LOBYTE(v19) = 2;
    sub_1B0E46948();
    LOBYTE(v19) = 3;
    sub_1B0E46948();
  }

  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1B0B9BBFC()
{
  v1 = 0x43676E696E6E7572;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x41676E696E6E7572;
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

uint64_t sub_1B0B9BC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0BA66B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0B9BCC4()
{
  sub_1B0BA6A3C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9BD00()
{
  sub_1B0BA6A3C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9BD5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5170, &qword_1B0ECC188);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA6A90();
  sub_1B0E46D48();
  v16 = 0;
  sub_1B0E46928();
  if (!v5)
  {
    v15 = 1;
    sub_1B0E468C8();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1B0B9BEF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50C8, &qword_1B0ECAFC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4E48();
  sub_1B0E46D48();
  v11 = v3[1];
  v21 = *v3;
  v22 = v11;
  v20 = 0;
  sub_1B0BA4E9C();
  sub_1B0E46958();
  if (!v2)
  {
    v12 = *(v3 + 4);
    v13 = *(v3 + 5);
    LOBYTE(v21) = 1;
    sub_1B0E46928();
    v14 = *(v3 + 48);
    LOBYTE(v21) = 2;
    sub_1B0E468D8();
    v15 = *(v3 + 72);
    v21 = *(v3 + 56);
    v22 = v15;
    v20 = 3;
    sub_1B0BA4EF0();
    sub_1B0E468F8();
    v16 = *(v3 + 88);
    LOBYTE(v21) = 4;
    sub_1B0E468D8();
    v17 = *(v3 + 89);
    LOBYTE(v21) = 5;
    sub_1B0E468D8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B0B9C14C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5048, &qword_1B0ECAF40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA32CC();
  sub_1B0E46D48();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5050, &qword_1B0ECAF48);
  sub_1B0BA49C8(&qword_1EB6DB468, &qword_1EB6E5050, &qword_1B0ECAF48, sub_1B0BA3320);
  sub_1B0E46958();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1B0B9C2D4()
{
  if (*v0)
  {
    result = 0x697463656E6E6F63;
  }

  else
  {
    result = 0x786F626C69616DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1B0B9C314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x786F626C69616DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

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

uint64_t sub_1B0B9C3F8()
{
  sub_1B0BA6A90();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9C434()
{
  sub_1B0BA6A90();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9C490()
{
  v1 = *v0;
  v2 = 0x79726F74736968;
  v3 = 0x54786F626C69616DLL;
  v4 = 0x6574656C706D6F63;
  if (v1 != 4)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_1B0B9C54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0BA6838(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0B9C574()
{
  sub_1B0BA4E48();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9C5B0()
{
  sub_1B0BA4E48();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9C5EC(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  *v7 = v1[4];
  *&v7[10] = *(v1 + 74);
  v3 = *v1;
  v4 = v1[1];
  return sub_1B0B9BEF0(a1);
}

uint64_t sub_1B0B9C64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736B736174 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B0E46A78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0B9C6D0()
{
  sub_1B0BA32CC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9C70C()
{
  sub_1B0BA32CC();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9C764(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0B94764(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B0E469A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B0E45278();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1B0B93C70(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B0B9C898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v6 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v6 > a1 || result < a1)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v9 > a3 || result < a3)
  {
    goto LABEL_20;
  }

  v10 = a3 - a1;
  if (__OFSUB__(a3, a1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2 >= 1)
  {
    if (v10 < 0 || v10 >= a2)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v10 <= 0 && v10 > a2)
  {
    return 0;
  }

LABEL_15:
  v12 = __OFADD__(a1, a2);
  v11 = a1 + a2;
  if (v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v11 >= v13 && result >= v11)
  {
    return v11;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B0B9C9AC(char a1)
{
  if (a1)
  {
    return sub_1B0E44C78();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0B9CA38(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1B0B0A664(0, v2, 0);
  v3 = v28;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  result = sub_1B0E460B8();
  v8 = result;
  v9 = 0;
  v24 = v2;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_21;
    }

    v26 = *(a1 + 36);
    v12 = *(a1 + 48) + 16 * v8;
    v13 = *v12;
    v27 = *(v12 + 8);
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v15 >= v14 >> 1)
    {
      result = sub_1B0B0A664((v14 > 1), v15 + 1, 1);
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v27;
    *(v16 + 44) = a2;
    v10 = 1 << *(a1 + 32);
    if (v8 >= v10)
    {
      goto LABEL_22;
    }

    v5 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v11);
    if ((v17 & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v8 & 0x3F));
    if (v18)
    {
      v10 = __clz(__rbit64(v18)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v21 = (a1 + 72 + 8 * v11);
      while (v20 < (v10 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1B0425168(v8, v26, 0);
          v10 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v8, v26, 0);
    }

LABEL_4:
    ++v9;
    v8 = v10;
    if (v9 == v24)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

double sub_1B0B9CC70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  sub_1B03BB0B4(a1, v39);
  v11 = sub_1B0B979B4(v8, v9);
  v13 = v12;
  if (!a3)
  {
    goto LABEL_16;
  }

  v14 = sub_1B0B9C9AC(v10);
  if (!v15)
  {

    goto LABEL_10;
  }

  if (v14 == a2 && v15 == a3)
  {

    goto LABEL_16;
  }

  v17 = sub_1B0E46A78();

  if ((v17 & 1) == 0)
  {
LABEL_10:
    v18 = sub_1B0B9C9AC(v10);
    v20 = v19;
    if (v19)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(a1 + 14);
    if (!v22)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

LABEL_16:
  v21 = 0;
  v20 = 0;
  v22 = *(a1 + 14);
  if (!v22)
  {
LABEL_22:
    v27 = 0;
    v25 = 0;
    goto LABEL_23;
  }

LABEL_17:
  LOWORD(v39[0]) = v22;
  v23 = sub_1B0E44BA8();
  v25 = v24;
  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

    goto LABEL_22;
  }

  v27 = v23;
LABEL_23:
  v28 = *(a1 + 16);
  sub_1B039E440(a1);
  v29 = qword_1B0ECC4B8[v28];
  v30 = qword_1B0ECC4F8[v28];
  *&v35 = v11;
  *(&v35 + 1) = v13;
  *&v36 = v21;
  *(&v36 + 1) = v20;
  *&v37 = v27;
  *(&v37 + 1) = v25;
  *&v38 = v29;
  *(&v38 + 1) = v30;
  v39[0] = v11;
  v39[1] = v13;
  v39[2] = v21;
  v39[3] = v20;
  v39[4] = v27;
  v39[5] = v25;
  v39[6] = v29;
  v39[7] = v30;
  sub_1B0BA1C04(&v35, v34);
  sub_1B0BA1C3C(v39);
  v31 = v36;
  *a4 = v35;
  a4[1] = v31;
  result = *&v37;
  v33 = v38;
  a4[2] = v37;
  a4[3] = v33;
  return result;
}

void sub_1B0B9CE3C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A6A4(0, v2, 0);
    v5 = v42;
    v6 = a1 + 64;
    v7 = -1 << *(a1 + 32);
    v8 = sub_1B0E460B8();
    v9 = 0;
    v35 = v2;
    v36 = a2[9];
    v10 = a2[11];
    v33 = v10;
    v34 = a2[10];
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v13 = v6;
      v37 = *(a1 + 36);
      v14 = *(a1 + 56) + 72 * v8;
      v40[0] = *v14;
      v16 = *(v14 + 32);
      v15 = *(v14 + 48);
      v17 = *(v14 + 16);
      v41 = *(v14 + 64);
      v40[2] = v16;
      v40[3] = v15;
      v40[1] = v17;
      if (v36)
      {
        v18 = v33;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v19 = v34;
      }

      else
      {
        v19 = 0;
        v18 = 0;
      }

      sub_1B03BB0B4(v40, v38);
      sub_1B0B9CC70(v40, v19, v18, v39);
      v42 = v5;
      v21 = *(v5 + 16);
      v20 = *(v5 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B0B0A6A4((v20 > 1), v21 + 1, 1);
        v5 = v42;
      }

      *(v5 + 16) = v21 + 1;
      v22 = (v5 + (v21 << 6));
      v23 = v39[0];
      v24 = v39[1];
      v25 = v39[3];
      v22[4] = v39[2];
      v22[5] = v25;
      v22[2] = v23;
      v22[3] = v24;
      v11 = 1 << *(a1 + 32);
      if (v8 >= v11)
      {
        goto LABEL_25;
      }

      v26 = *(v13 + 8 * v12);
      if ((v26 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      if (v37 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v6 = v13;
      v27 = v26 & (-2 << (v8 & 0x3F));
      if (v27)
      {
        v11 = __clz(__rbit64(v27)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v12 << 6;
        v29 = v12 + 1;
        v30 = (a1 + 72 + 8 * v12);
        while (v29 < (v11 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            sub_1B0425168(v8, v37, 0);
            v11 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        sub_1B0425168(v8, v37, 0);
      }

LABEL_4:
      ++v9;
      v8 = v11;
      if (v9 == v35)
      {
        return;
      }
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
  }
}

unsigned int *sub_1B0B9D0D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, v4, 0);
  v5 = v35;
  if (v4)
  {
    v31 = a2 + 32;
    v32 = a1 + 32;
    v33 = *(a1 + 16);

    v7 = 0;
    while (v7 != v33)
    {
      v8 = (v32 + 16 * v7);
      v9 = *v8;
      v10 = *(v8 + 2);
      v11 = *(v31 + 2 * v7);
      swift_bridgeObjectRetain_n();
      v12 = sub_1B0E44B88();
      v14 = v13;
      result = MailboxName.inbox.unsafeMutableAddressor();
      if ((v10 | (v10 << 32)) == (result[2] | (result[2] << 32)) && (v15 = *result, v16 = *(v9 + 16), v16 == *(*result + 16)))
      {
        if (v16)
        {
          v17 = v9 == v15;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          v18 = (v9 + 32);
          v19 = (v15 + 32);
          while (v16)
          {
            if (*v18 != *v19)
            {
              goto LABEL_15;
            }

            ++v18;
            ++v19;
            if (!--v16)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
          break;
        }
      }

      else
      {
LABEL_15:
        if (sub_1B0E44CF8() >= 3)
        {
          sub_1B0E44D38();
          sub_1B0E46298();
          v20 = sub_1B0E44EE8();
          v21 = MEMORY[0x1B2726D00](v20);
          v22 = v5;
          v23 = v4;
          v25 = v24;

          v34 = v25;
          v4 = v23;
          v5 = v22;
          MEMORY[0x1B2726E80](0x6E656C202CA680E2, 0xAC0000003D687467);
          sub_1B0E44CF8();
          v26 = sub_1B0E469C8();
          MEMORY[0x1B2726E80](v26);

          v12 = v21;
          v14 = v34;
        }
      }

LABEL_17:
      MEMORY[0x1B2726E80](v12, v14);

      MEMORY[0x1B2726E80](0x203E2D2027, 0xE500000000000000);
      v27 = sub_1B0E44BA8();
      MEMORY[0x1B2726E80](v27);

      v29 = *(v5 + 16);
      v28 = *(v5 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_1B041D32C((v28 > 1), v29 + 1, 1);
      }

      ++v7;
      *(v5 + 16) = v29 + 1;
      v30 = v5 + 16 * v29;
      *(v30 + 32) = 39;
      *(v30 + 40) = 0xE100000000000000;
      if (v7 == v4)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_22:

    return v5;
  }

  return result;
}

uint64_t sub_1B0B9D418(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 2;
  }

  v1 = *(a1 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  v3 = sub_1B0E46CB8() & ~(-1 << *(a1 + 32));
  if ((*(a1 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v3))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

unsigned int *sub_1B0B9D4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v7 = sub_1B0B9D0D8(a2, a3);

  v8 = MailboxesSelectionUsage.allConnections.getter(a4);
  v46 = *(v8 + 2);
  if (v46)
  {
    v44 = v7;
    v9 = 0;
    v45 = v8 + 32;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v12 = MailboxesSelectionUsage.subscript.getter(*&v45[4 * v9], a4);
      if (v12)
      {
        v16 = v12;
        v17 = v13;
        v18 = v14;
        v19 = v15;
        v47 = sub_1B0E44BA8();
        v48 = v20;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v21 = sub_1B0E44B88();
        v23 = v22;
        result = MailboxName.inbox.unsafeMutableAddressor();
        if ((v17 | (v17 << 32)) == (result[2] | (result[2] << 32)) && (v25 = *result, v26 = *(v16 + 16), v26 == *(*result + 16)))
        {
          if (v26)
          {
            v27 = v25 == v16;
          }

          else
          {
            v27 = 1;
          }

          if (!v27)
          {
            v28 = (v16 + 32);
            v29 = (v25 + 32);
            while (v26)
            {
              if (*v28 != *v29)
              {
                goto LABEL_17;
              }

              ++v28;
              ++v29;
              if (!--v26)
              {
                goto LABEL_19;
              }
            }

            __break(1u);
            return result;
          }
        }

        else
        {
LABEL_17:
          if (sub_1B0E44CF8() >= 3)
          {
            sub_1B0E44D38();
            sub_1B0E46298();
            v30 = sub_1B0E44EE8();
            v31 = MEMORY[0x1B2726D00](v30);
            v32 = v10;
            v33 = v19;
            v34 = a4;
            v36 = v35;

            v49 = v36;
            a4 = v34;
            v19 = v33;
            v10 = v32;
            MEMORY[0x1B2726E80](0x6E656C202CA680E2, 0xAC0000003D687467);
            sub_1B0E44CF8();
            v37 = sub_1B0E469C8();
            MEMORY[0x1B2726E80](v37);

            v21 = v31;
            v23 = v49;
          }
        }

LABEL_19:
        if (v19)
        {

          if (v18)
          {
            v38 = v47;
            if (v18 == 1)
            {
              v39 = 0x7953657669746361;
              v40 = 0xEA0000000000636ELL;
            }

            else
            {
              v40 = 0xEA00000000006B73;
              v39 = 0x6154657669746361;
            }
          }

          else
          {
            v40 = 0xE800000000000000;
            v39 = 0x6576697463616E69;
            v38 = v47;
          }
        }

        else
        {
          v41 = sub_1B0E469C8();
          MEMORY[0x1B2726E80](v41);

          v39 = 0x6576697463616E69;
          v40 = 0xE90000000000002DLL;
          v38 = v47;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B0B01324(0, *(v10 + 2) + 1, 1, v10);
        }

        v43 = *(v10 + 2);
        v42 = *(v10 + 3);
        if (v43 >= v42 >> 1)
        {
          v10 = sub_1B0B01324((v42 > 1), v43 + 1, 1, v10);
        }

        *(v10 + 2) = v43 + 1;
        v11 = &v10[48 * v43];
        *(v11 + 4) = v38;
        *(v11 + 5) = v48;
        *(v11 + 6) = v21;
        *(v11 + 7) = v23;
        *(v11 + 8) = v39;
        *(v11 + 9) = v40;
      }

      if (++v9 == v46)
      {

        return v44;
      }
    }
  }

  return v7;
}

unint64_t sub_1B0B9D8C8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0441038(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_1B0B34818(v15, v5 & 1);
    v17 = *a3;
    result = sub_1B0441038(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1B0E46BA8();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(result >> 6) + 8] |= 1 << result;
    v22 = (v19[6] + 16 * result);
    *v22 = v8;
    v22[1] = v7;
    *(v19[7] + 8 * result) = v9;
    v23 = v19[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v24;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  sub_1B0B8F7F4();
  result = v21;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = result;

  *(v19[7] + 8 * v20) = v9;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v26 = *a3;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = sub_1B0441038(v7, v6);
      v28 = v26[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v27;
      if (v26[3] < v30)
      {
        sub_1B0B34818(v30, 1);
        v31 = *a3;
        result = sub_1B0441038(v7, v6);
        if ((v8 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v33 = *a3;
      if (v8)
      {
        v25 = result;

        *(v33[7] + 8 * v25) = v9;
      }

      else
      {
        v33[(result >> 6) + 8] |= 1 << result;
        v34 = (v33[6] + 16 * result);
        *v34 = v7;
        v34[1] = v6;
        *(v33[7] + 8 * result) = v9;
        v35 = v33[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v33[2] = v36;
      }

      v5 += 3;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1B0B9DB20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskHistory.Previous(0);
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TaskHistory.Running(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v43 = a1;
  if (v13)
  {
    v40[1] = v4;
    v41 = a2;
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v45 = *(v10 + 72);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v15 = MEMORY[0x1E69E7CC0];
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B0BA1F50(v14, v12, type metadata accessor for TaskHistory.Running);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v18 = *v12;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B03E1BE8(*(v12 + 1));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1B0B017C4(0, *(v16 + 2) + 1, 1, v16);
        }

        v20 = *(v16 + 2);
        v19 = *(v16 + 3);
        if (v20 >= v19 >> 1)
        {
          v16 = sub_1B0B017C4((v19 > 1), v20 + 1, 1, v16);
        }

        *(v16 + 2) = v20 + 1;
        *&v16[4 * v20 + 32] = v18;
      }

      else
      {
        v44 = v16;
        v21 = v7;
        v22 = v8;
        v23 = *(v12 + 1);
        v48 = 0;
        v49 = 0xE000000000000000;
        v46 = v18;
        v47 = v23;
        sub_1B0E46508();
        v24 = v48;
        v25 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1B0AFF0E8(0, *(v15 + 2) + 1, 1, v15);
        }

        v27 = *(v15 + 2);
        v26 = *(v15 + 3);
        v28 = v15;
        if (v27 >= v26 >> 1)
        {
          v28 = sub_1B0AFF0E8((v26 > 1), v27 + 1, 1, v15);
        }

        v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0) + 64);
        *(v28 + 2) = v27 + 1;
        v15 = v28;
        v30 = &v28[16 * v27];
        *(v30 + 4) = v24;
        *(v30 + 5) = v25;
        sub_1B03BE2C4(&v12[v29], type metadata accessor for ClientCommand);
        v8 = v22;
        v7 = v21;
        v16 = v44;
      }

      v14 += v45;
      --v13;
    }

    while (v13);

    a2 = v41;
    if (!*(v15 + 2))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
    v16 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_16:

      v15 = 0;
    }
  }

  v31 = *(v16 + 2);

  if (!v31)
  {

    v32 = *(a2 + 16);
    if (v32)
    {
      goto LABEL_19;
    }

LABEL_29:

    return v15;
  }

  v32 = *(a2 + 16);
  if (!v32)
  {
    goto LABEL_29;
  }

LABEL_19:
  v33 = v15;
  v34 = 0;
  v35 = 0;
  v36 = a2 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
  v37 = *(v42 + 72);
  while (1)
  {
    sub_1B0BA1F50(v36, v7, type metadata accessor for TaskHistory.Previous);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      break;
    }

    v39 = __OFADD__(v35++, 1);
    if (v39)
    {
      goto LABEL_32;
    }

    sub_1B03BE2C4(v7, type metadata accessor for ClientCommand);
LABEL_21:
    v36 += v37;
    if (!--v32)
    {

      return v33;
    }
  }

  result = sub_1B03BE2C4(v7, type metadata accessor for TaskHistory.Previous);
  v39 = __OFADD__(v34++, 1);
  if (!v39)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

double sub_1B0B9DFA8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0B9DB20(v4, v5);
  v39 = v7;
  v40 = v6;
  v37 = v9;
  v38 = v8;
  v47 = 91;
  v48 = 0xE100000000000000;
  v10 = a1 + *(type metadata accessor for RunningTask() + 28);
  v11 = (v10 + *(type metadata accessor for Task.Logger(0) + 20));
  v12 = v11[1];
  v13 = v11[2];
  LOBYTE(v42) = *v11;
  sub_1B0BA1E94();
  v14 = sub_1B0E44E98();
  v16 = v15;
  if (sub_1B0E44CF8() <= 1)
  {
    MEMORY[0x1B2726E80](48, 0xE100000000000000);
  }

  MEMORY[0x1B2726E80](v14, v16);

  MEMORY[0x1B2726E80](45, 0xE100000000000000);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](v12, v13);

  MEMORY[0x1B2726E80](93, 0xE100000000000000);
  v17 = v47;
  v18 = v48;
  sub_1B0450DB0(a1, &v61);
  if (v67)
  {
    if (v67 == 1)
    {
      v19 = v65;
      v20 = v66;
      sub_1B0450C74(&v61, &v47);
      v21 = v50;
      v22 = v51;
      __swift_project_boxed_opaque_existential_0(&v47, v50);
      (*(v22 + 32))(&v69, v21, v22);
      v23 = v70;
      LODWORD(v21) = v71;
      v72 = v69;
      sub_1B039E440(&v72);
      v24 = sub_1B0B979B4(v23, v21);
      v26 = v25;
      if (v20)
      {
        v27 = 0;
        v28 = 0;
      }

      else
      {
        v27 = ConnectionID.debugDescription.getter(v19);
        v28 = v33;
      }

      v32 = v40;
      sub_1B03BE2C4(a1, type metadata accessor for RunningTask);
      __swift_destroy_boxed_opaque_existential_0(&v47);
      v30 = 2;
      v29 = 2;
    }

    else
    {
      v32 = v40;
      if (v65 | (v66 << 32) || v63 | v64 | v61 | v62 | *(&v61 + 1))
      {
        sub_1B03BE2C4(a1, type metadata accessor for RunningTask);
        v24 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v31 = 1;
        v30 = 2;
        v29 = 2;
        goto LABEL_15;
      }

      sub_1B03BE2C4(a1, type metadata accessor for RunningTask);
      v24 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 1;
      v30 = 2;
    }

    v31 = 2;
  }

  else
  {
    sub_1B03BE2C4(a1, type metadata accessor for RunningTask);
    sub_1B0B7ABB4(&v61);
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 2;
    v30 = 1;
    v31 = 2;
    v32 = v40;
  }

LABEL_15:
  *&v42 = v32;
  *(&v42 + 1) = v39;
  *&v43 = v38;
  *(&v43 + 1) = v37;
  *&v44 = v17;
  *(&v44 + 1) = v18;
  LOBYTE(v45) = v30;
  *(&v45 + 1) = *v68;
  DWORD1(v45) = *&v68[3];
  *(&v45 + 1) = v24;
  *v46 = v26;
  *&v46[8] = v27;
  *&v46[16] = v28;
  v46[24] = v29;
  v46[25] = v31;
  v47 = v32;
  v48 = v39;
  v49 = v38;
  v50 = v37;
  v51 = v17;
  v52 = v18;
  v53 = v30;
  *v54 = *v68;
  *&v54[3] = *&v68[3];
  v55 = v24;
  v56 = v26;
  v57 = v27;
  v58 = v28;
  v59 = v29;
  v60 = v31;
  sub_1B0BA1EE8(&v42, v41);
  sub_1B0BA1F20(&v47);
  v34 = v45;
  a2[2] = v44;
  a2[3] = v34;
  a2[4] = *v46;
  *(a2 + 74) = *&v46[10];
  result = *&v42;
  v36 = v43;
  *a2 = v42;
  a2[1] = v36;
  return result;
}

uint64_t sub_1B0B9E368(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RunningTask();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A5E4(0, v11, 0);
    v12 = v24;
    v13 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      sub_1B0BA1F50(v13, v10, type metadata accessor for RunningTask);
      sub_1B0BA1F50(v10, v7, type metadata accessor for RunningTask);
      sub_1B0B9DFA8(v7, v25);
      sub_1B03BE2C4(v10, type metadata accessor for RunningTask);
      v24 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1B0B0A5E4((v15 > 1), v16 + 1, 1);
        v12 = v24;
      }

      *(v12 + 16) = v16 + 1;
      v17 = (v12 + 96 * v16);
      v18 = v25[1];
      v17[2] = v25[0];
      v17[3] = v18;
      v19 = v25[2];
      v20 = v25[3];
      v21 = v26[0];
      *(v17 + 106) = *(v26 + 10);
      v17[5] = v20;
      v17[6] = v21;
      v17[4] = v19;
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v12;
}

uint64_t sub_1B0B9E56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  v6 = type metadata accessor for StateWithTasks();
  v7 = a1 + *(v6 + 28);
  LOBYTE(v66[0]) = *(v7 + *(type metadata accessor for State.Logger() + 20));
  sub_1B0BA1E94();
  v8 = sub_1B0E44E98();
  v10 = v9;
  if (sub_1B0E44CF8() <= 1)
  {
    MEMORY[0x1B2726E80](48, 0xE100000000000000);
  }

  MEMORY[0x1B2726E80](v8, v10);

  v58 = __dst[1];
  v59 = __dst[0];
  v11 = *(a1 + 48);
  if (*(a1 + 25))
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 | *(a1 + 24);
  if (*(a1 + 26))
  {
    v14 = 0x10000;
  }

  else
  {
    v14 = 0;
  }

  Environment.capturedValue.getter(v13 | v14, *(a1 + 32), *(a1 + 40), v63);
  v57 = sub_1B0B9D418(*(a1 + 56));
  v56 = sub_1B0B95114(*(a1 + 64));
  v15 = sub_1B0398D1C();
  v18 = sub_1B0BC9560(v15, v17, v16 & 1);
  v20 = v19;
  v22 = v21;
  v23 = *(a1 + *(v6 + 32));
  *&v67[12] = *(a1 + 228);
  v24 = *(a1 + 216);
  v66[2] = *(a1 + 200);
  *v67 = v24;
  v25 = *(a1 + 184);
  v66[0] = *(a1 + 168);
  v66[1] = v25;
  sub_1B03A3668(v66, __dst);
  v55 = v18;
  sub_1B0BCC328(v18, v20, v22, v7, v23, v66);
  sub_1B03AD10C(v66);
  memcpy(__dst, a1, sizeof(__dst));
  v26 = sub_1B03A7A88();
  v27 = LOBYTE(__dst[3]);
  v28 = BYTE1(__dst[3]);
  v29 = __dst[4];
  v30 = __dst[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31 = sub_1B0397D14();
  v32 = v31;
  if (v29 == 3 || v29 == 2)
  {

    v33 = 1;
    goto LABEL_12;
  }

  v53 = sub_1B0BAE1A4(v31);
  if (v28)
  {
    goto LABEL_23;
  }

  if (v29 == 1)
  {
    if (v27)
    {
      v33 = v27 == 1;
      goto LABEL_24;
    }

LABEL_23:
    v33 = v53 ^ 1;
    goto LABEL_24;
  }

  if (v29 || (v27 - 1) >= 2)
  {
    goto LABEL_23;
  }

  v33 = 0;
LABEL_24:
  sub_1B0397E04(&unk_1F2710548, v30);
  sub_1B0BAE1A4(v32);
  v54 = sub_1B039109C(v30);

  if (v54 & 1) == 0 && (v28)
  {
    sub_1B0BAE1A4(v32);
  }

LABEL_12:

  v34 = __dst[26];
  sub_1B03A8380(__dst[21], __dst[22], __dst[23], __dst[24] & 1, __dst[15], v26, v33 & 1, __dst[26]);
  v36 = v35;
  v38 = v37;

  rawValue = sub_1B03AC81C(v36, v38).elements._rawValue;

  v40 = sub_1B0B9D4A8(v55, v20, v22, rawValue);
  v42 = v41;

  v43 = sub_1B0B95400(v34);
  if (*(v43 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47E8, &qword_1B0EC5EC8);
    v44 = sub_1B0E466A8();
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC8];
  }

  v62 = v44;
  sub_1B0B9D8C8(v43, 1, &v62);

  v45 = v62;
  v46 = *(a1 + 272);
  v47 = *(a1 + 280);
  v48 = *(a1 + 264);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v49 = sub_1B0B9E368(v48, v46);
  result = sub_1B03BE2C4(a1, type metadata accessor for StateWithTasks);
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = v59;
  *(a4 + 24) = v58;
  v51 = v63[3];
  *(a4 + 64) = v63[2];
  *(a4 + 80) = v51;
  *(a4 + 96) = v64;
  v52 = v63[1];
  *(a4 + 32) = v63[0];
  *(a4 + 48) = v52;
  *(a4 + 104) = v57;
  *(a4 + 112) = v56;
  *(a4 + 120) = v40;
  *(a4 + 128) = v42;
  *(a4 + 136) = v45;
  *(a4 + 144) = v49;
  return result;
}

uint64_t sub_1B0B9E9B8(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v46 = MEMORY[0x1E69E7CC8];
  v41 = *(a1 + 16);
  if (!v41)
  {
    return v1;
  }

  v2 = 0;
  v40 = a1 + 32;
  while (1)
  {
    v4 = (v40 + 16 * v2);
    v5 = *v4;
    v7 = *(v4 + 2);
    v6 = *(v4 + 3);
    swift_bridgeObjectRetain_n();
    v8 = sub_1B0E44B88();
    v10 = v9;
    v11 = MailboxName.inbox.unsafeMutableAddressor();
    if ((v7 | (v7 << 32)) == (v11[2] | (v11[2] << 32)))
    {
      v12 = *v11;
      v13 = *(v5 + 16);
      if (v13 == *(*v11 + 16))
      {
        if (!v13 || v5 == v12)
        {
LABEL_12:

          goto LABEL_15;
        }

        v14 = 32;
        while (*(v5 + v14) == *(v12 + v14))
        {
          ++v14;
          if (!--v13)
          {
            goto LABEL_12;
          }
        }
      }
    }

    if (sub_1B0E44CF8() >= 3)
    {
      sub_1B0E44D38();
      sub_1B0E46298();
      v15 = sub_1B0E44EE8();
      v16 = v7;
      v7 = MEMORY[0x1B2726D00](v15);
      v42 = v6;
      v18 = v17;

      v44 = v7;
      v45 = v18;
      LODWORD(v7) = v16;
      MEMORY[0x1B2726E80](0x6E656C202CA680E2, 0xAC0000003D687467);
      sub_1B0E44CF8();
      v19 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v19);

      v6 = v42;

      v8 = v44;
      v10 = v45;
    }

LABEL_15:
    v21 = sub_1B0441038(v8, v10);
    v22 = v1[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v1[3] < v24)
    {
      sub_1B0B34ACC(v24, 1);
      v1 = v46;
      v26 = sub_1B0441038(v8, v10);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_29;
      }

      v21 = v26;
    }

    if (v25)
    {
      v43 = v6;

      v28 = v1[7];
      v29 = *(v28 + 8 * v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v28 + 8 * v21) = v29;
      v31 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_1B0B01568(0, v29[2] + 1, 1, v29);
        *(v28 + 8 * v21) = v29;
      }

      v33 = v29[2];
      v32 = v29[3];
      if (v33 >= v32 >> 1)
      {
        v29 = sub_1B0B01568((v32 > 1), v33 + 1, 1, v29);
        *(v28 + 8 * v21) = v29;
      }

      v29[2] = v33 + 1;
      v3 = &v29[2 * v33];
      v3[4] = v5;
      *(v3 + 10) = v31;
      *(v3 + 11) = v43;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4430, &unk_1B0EC51A0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1B0EC1E70;
      *(v34 + 32) = v5;
      *(v34 + 40) = v7;
      *(v34 + 44) = v6;
      v1[(v21 >> 6) + 8] |= 1 << v21;
      v35 = (v1[6] + 16 * v21);
      *v35 = v8;
      v35[1] = v10;
      *(v1[7] + 8 * v21) = v34;
      v36 = v1[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_28;
      }

      v1[2] = v38;
    }

    if (++v2 == v41)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

uint64_t sub_1B0B9ED88(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v54 = MEMORY[0x1E69E7CC8];
  v47 = *(a1 + 16);
  if (!v47)
  {
    return v1;
  }

  v2 = 0;
  v46 = a1 + 32;
  while (1)
  {
    v4 = (v46 + 56 * v2);
    v48 = *v4;
    v5 = *(v4 + 1);
    v6 = v4[4];
    v7 = *(v4 + 3);
    v8 = *(v4 + 4);
    v9 = *(v4 + 5);
    v10 = *(v4 + 48);
    swift_bridgeObjectRetain_n();
    sub_1B03B2000(v7, v8);
    v50 = v9;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = sub_1B0E44B88();
    v13 = v12;
    v14 = MailboxName.inbox.unsafeMutableAddressor();
    v52 = v8;
    v49 = v7;
    v51 = v10;
    if ((v6 | (v6 << 32)) == (v14[2] | (v14[2] << 32)))
    {
      v15 = *v14;
      v16 = *(v5 + 16);
      if (v16 == *(*v14 + 16))
      {
        if (!v16 || v5 == v15)
        {
LABEL_12:

          goto LABEL_15;
        }

        v17 = 32;
        while (*(v5 + v17) == *(v15 + v17))
        {
          ++v17;
          if (!--v16)
          {
            goto LABEL_12;
          }
        }
      }
    }

    if (sub_1B0E44CF8() >= 3)
    {
      sub_1B0E44D38();
      sub_1B0E46298();
      v18 = sub_1B0E44EE8();
      v19 = MEMORY[0x1B2726D00](v18);
      v20 = v1;
      v21 = v2;
      v22 = v6;
      v6 = v23;

      v53 = v6;
      LODWORD(v6) = v22;
      v2 = v21;
      v1 = v20;
      MEMORY[0x1B2726E80](0x6E656C202CA680E2, 0xAC0000003D687467);
      sub_1B0E44CF8();
      v24 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v24);

      v11 = v19;
      v13 = v53;
    }

LABEL_15:
    v25 = v11;
    v27 = sub_1B0441038(v11, v13);
    v28 = v1[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v1[3] >= v30)
    {
      if (v26)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1B0B34AB8(v30, 1);
      v1 = v54;
      v32 = sub_1B0441038(v25, v13);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_29;
      }

      v27 = v32;
      if (v31)
      {
LABEL_22:
        v39 = v5;

        v40 = v1[7];
        v41 = *(v40 + 8 * v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v40 + 8 * v27) = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v41 = sub_1B0B01444(0, *(v41 + 2) + 1, 1, v41);
          *(v40 + 8 * v27) = v41;
        }

        v44 = *(v41 + 2);
        v43 = *(v41 + 3);
        if (v44 >= v43 >> 1)
        {
          v41 = sub_1B0B01444((v43 > 1), v44 + 1, 1, v41);
          *(v40 + 8 * v27) = v41;
        }

        *(v41 + 2) = v44 + 1;
        v3 = &v41[56 * v44];
        *(v3 + 8) = v48;
        *(v3 + 5) = v39;
        *(v3 + 12) = v6;
        *(v3 + 7) = v49;
        *(v3 + 8) = v52;
        *(v3 + 9) = v50;
        v3[80] = v51;
        goto LABEL_4;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4428, &qword_1B0EC5198);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1B0EC1E70;
    *(v34 + 32) = v48;
    *(v34 + 40) = v5;
    *(v34 + 48) = v6;
    *(v34 + 56) = v49;
    *(v34 + 64) = v8;
    *(v34 + 72) = v50;
    *(v34 + 80) = v51;
    v1[(v27 >> 6) + 8] |= 1 << v27;
    v35 = (v1[6] + 16 * v27);
    *v35 = v25;
    v35[1] = v13;
    *(v1[7] + 8 * v27) = v34;
    v36 = v1[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_28;
    }

    v1[2] = v38;
LABEL_4:
    if (++v2 == v47)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

void *sub_1B0B9F200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = sub_1B0B95668(a1);

  v5 = *(a2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = 0;
    v8 = (a2 + 48);
    do
    {
      if (v7 >= *(a2 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v9 = *(v8 - 4);
      v10 = *(v8 - 1);
      v11 = *v8;
      if ((*v8 & 4) != 0)
      {
        v14 = *(v8 - 1);
        v15 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v13 = sub_1B0B9CA38(v15, v9);
      }

      else
      {
        sub_1B09AFB1C(*(v8 - 1), *v8);
        sub_1B09AFB1C(v10, v11);
        v12 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v13 = sub_1B0B9CA38(v12, v9);

        sub_1B09AEA14(v11);
      }

      result = sub_1B09AFBA0(v10, v11);
      v16 = *(v13 + 16);
      v17 = v6[2];
      v18 = v17 + v16;
      if (__OFADD__(v17, v16))
      {
        goto LABEL_67;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v18 <= v6[3] >> 1)
      {
        if (!*(v13 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v19 = v17 + v16;
        }

        else
        {
          v19 = v17;
        }

        result = sub_1B0B01568(result, v19, 1, v6);
        v6 = result;
        if (!*(v13 + 16))
        {
LABEL_3:

          if (v16)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }
      }

      if ((v6[3] >> 1) - v6[2] < v16)
      {
        goto LABEL_69;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4438, &qword_1B0ECA320);
      swift_arrayInitWithCopy();

      if (v16)
      {
        v20 = v6[2];
        v21 = __OFADD__(v20, v16);
        v22 = v20 + v16;
        if (v21)
        {
          goto LABEL_70;
        }

        v6[2] = v22;
      }

LABEL_4:
      ++v7;
      v8 += 3;
    }

    while (v5 != v7);
  }

  v23 = sub_1B0B9E9B8(v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5000, &qword_1B0ECA328);
  result = sub_1B0E46688();
  v24 = 0;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v94 = v23 + 64;
  v27 = v26 & *(v23 + 64);
  v28 = (v25 + 63) >> 6;
  v98 = result + 8;
  v29 = MEMORY[0x1E69E7CC0];
  v100 = result;
  for (i = v23; v27; v100[2] = v46)
  {
    v30 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
LABEL_31:
    v33 = v30 | (v24 << 6);
    v34 = (*(v23 + 48) + 16 * v33);
    v35 = *v34;
    v36 = *(*(v23 + 56) + 8 * v33);
    v37 = *(v36 + 16);
    if (v37)
    {
      v103 = *v34;
      v101 = v34[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B0A644(0, v37, 0);
      v38 = v29;
      v39 = *(v29 + 16);
      v40 = 44;
      do
      {
        v41 = *(v36 + v40);
        v42 = *(v38 + 24);
        if (v39 >= v42 >> 1)
        {
          sub_1B0B0A644((v42 > 1), v39 + 1, 1);
        }

        *(v38 + 16) = v39 + 1;
        *(v38 + 4 * v39 + 32) = v41;
        v40 += 16;
        ++v39;
        --v37;
      }

      while (v37);

      v29 = MEMORY[0x1E69E7CC0];
      v23 = i;
      v35 = v103;
      v43 = v101;
    }

    else
    {
      v43 = v34[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v38 = v29;
    }

    result = v100;
    *(v98 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    v44 = (v100[6] + 16 * v33);
    *v44 = v35;
    v44[1] = v43;
    *(v100[7] + 8 * v33) = v38;
    v45 = v100[2];
    v21 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v21)
    {
      goto LABEL_71;
    }
  }

  v31 = v24;
  while (1)
  {
    v24 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v24 >= v28)
    {
      break;
    }

    v32 = *(v94 + 8 * v24);
    ++v31;
    if (v32)
    {
      v30 = __clz(__rbit64(v32));
      v27 = (v32 - 1) & v32;
      goto LABEL_31;
    }
  }

  v47 = sub_1B0B9ED88(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5008, &qword_1B0ECA330);
  result = sub_1B0E46688();
  v48 = result;
  v49 = 0;
  v50 = *(v47 + 64);
  v86 = v47 + 64;
  v51 = 1 << *(v47 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & v50;
  v54 = (v51 + 63) >> 6;
  v89 = v47;
  v90 = result + 8;
  v87 = v54;
  v88 = result;
  if ((v52 & v50) == 0)
  {
LABEL_45:
    v56 = v49;
    while (1)
    {
      v49 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_65;
      }

      if (v49 >= v54)
      {

        return v85;
      }

      v57 = *(v86 + 8 * v49);
      ++v56;
      if (v57)
      {
        v55 = __clz(__rbit64(v57));
        v53 = (v57 - 1) & v57;
        goto LABEL_50;
      }
    }
  }

  while (1)
  {
    v55 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
LABEL_50:
    v58 = v55 | (v49 << 6);
    v59 = (*(v47 + 48) + 16 * v58);
    v60 = *v59;
    v61 = *(*(v47 + 56) + 8 * v58);
    v62 = *(v61 + 16);
    if (v62)
    {
      v93 = *v59;
      v95 = v58;
      v97 = v53;
      v99 = v49;
      v91 = v59[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B0A684(0, v62, 0);
      v63 = 0;
      v64 = v29;
      v65 = v61;
      do
      {
        v105 = v64;
        v104 = *(v65 + v63 + 32);
        v66 = *(v65 + v63 + 56);
        v67 = *(v65 + v63 + 64);
        v68 = *(v65 + v63 + 80);
        if (*(v65 + v63 + 72))
        {
          v102 = *(v65 + v63 + 40);
          sub_1B03B2000(v66, v67);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v66, v67);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v66, v67);
          v69 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v70 = SectionSpecifier.Part.debugDescription.getter(v69);
          v71 = v68;
          v73 = v72;

          MEMORY[0x1B2726E80](v70, v73);
          v68 = v71;

          sub_1B0391D50(v66, v67);

          sub_1B0391D50(v66, v67);

          v75 = 0x656D686361747461;
          v74 = 0xEB0000000020746ELL;
        }

        else
        {
          sub_1B03B2000(*(v65 + v63 + 56), *(v65 + v63 + 64));
          sub_1B03B2000(v66, v67);
          sub_1B0391D50(v66, v67);

          v74 = 0xE400000000000000;
          v75 = 1954047348;
        }

        v76 = dword_1B0ECC538[v68];
        v64 = v105;
        v78 = *(v105 + 16);
        v77 = *(v105 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_1B0B0A684((v77 > 1), v78 + 1, 1);
          v64 = v105;
        }

        *(v64 + 16) = v78 + 1;
        v79 = v64 + 48 * v78;
        *(v79 + 32) = v104;
        *(v79 + 40) = v66;
        *(v79 + 48) = v67;
        *(v79 + 56) = v75;
        *(v79 + 64) = v74;
        *(v79 + 72) = v76;
        v63 += 56;
        --v62;
      }

      while (v62);
      v80 = v64;

      v81 = v80;
      v29 = MEMORY[0x1E69E7CC0];
      v48 = v88;
      v47 = v89;
      v53 = v97;
      v49 = v99;
      v54 = v87;
      v60 = v93;
      v58 = v95;
      result = v91;
    }

    else
    {
      result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v81 = v29;
    }

    *(v90 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
    v82 = (v48[6] + 16 * v58);
    *v82 = v60;
    v82[1] = result;
    *(v48[7] + 8 * v58) = v81;
    v83 = v48[2];
    v21 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    if (v21)
    {
      break;
    }

    v48[2] = v84;
    if (!v53)
    {
      goto LABEL_45;
    }
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1B0B9F970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B0B11AE0(a1);
  v5 = *(a1 + 32);
  v6 = *(a1 + 36);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  if (*(a1 + 48))
  {
    v9 = 0;
  }

  else
  {
    v12 = *(a1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
    result = sub_1B0E46508();
    v9 = 0xE000000000000000;
  }

  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  *a2 = v10;
  *(a2 + 4) = v6 & 1;
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v8 & 1;
  return result;
}

double sub_1B0B9FA40@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v42 - v6;
  v8 = type metadata accessor for MessagesPendingDownload();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v15 = *a1;
  v47 = a1[1];
  v48 = v15;
  v46 = a1[2];
  v45 = type metadata accessor for PendingPersistenceUpdates();
  v16 = &a1[*(v45 + 28)];
  sub_1B0BA1F50(v16, v14, type metadata accessor for MessagesPendingDownload);
  if (*(*v14 + 16) || (v17 = *(v8 + 20), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270), (sub_1B0E46E98() & 1) == 0))
  {
    v19 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B24198(v19);
    v20 = sub_1B0B963BC();
    v43 = v21;
    v44 = v20;
    sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v22 = &v14[*(v8 + 20)];
    v42 = sub_1B0B963BC();
    v18 = v23;
  }

  else
  {
    v42 = 0;
    v18 = 0;
    v43 = 1;
    v44 = 0;
  }

  sub_1B03BE2C4(v14, type metadata accessor for MessagesPendingDownload);
  v24 = type metadata accessor for MessagesPendingDownloadPerPass();
  sub_1B0BA1F50(v16 + *(v24 + 20), v11, type metadata accessor for MessagesPendingDownload);
  if (*(*v11 + 16) || (v25 = *(v8 + 20), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270), (sub_1B0E46E98() & 1) == 0))
  {
    v30 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B24198(v30);
    v26 = sub_1B0B963BC();
    v29 = v31;
    sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v32 = &v11[*(v8 + 20)];
    v27 = sub_1B0B963BC();
    v28 = v33;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
  }

  sub_1B03BE2C4(v11, type metadata accessor for MessagesPendingDownload);
  v34 = &a1[*(v45 + 32)];
  v35 = sub_1B0B963BC();
  v37 = v36;
  sub_1B03BE2C4(a1, type metadata accessor for PendingPersistenceUpdates);
  LOBYTE(v50) = v48;
  BYTE1(v50) = v47;
  BYTE2(v50) = v46;
  *(&v50 + 1) = v44;
  *&v51 = v43;
  *(&v51 + 1) = v42;
  *&v52 = v18;
  *(&v52 + 1) = v26;
  *&v53 = v29;
  *(&v53 + 1) = v27;
  *&v54 = v28;
  *(&v54 + 1) = v35;
  v55 = v37;
  v56[0] = v48;
  v56[1] = v47;
  v56[2] = v46;
  v57 = v44;
  v58 = v43;
  v59 = v42;
  v60 = v18;
  v61 = v26;
  v62 = v29;
  v63 = v27;
  v64 = v28;
  v65 = v35;
  v66 = v37;
  sub_1B0BA1DD8(&v50, &v49);
  sub_1B0BA1E10(v56);
  v38 = v53;
  v39 = v54;
  *(a2 + 32) = v52;
  *(a2 + 48) = v38;
  *(a2 + 64) = v39;
  *(a2 + 80) = v55;
  result = *&v50;
  v41 = v51;
  *a2 = v50;
  *(a2 + 16) = v41;
  return result;
}

__n128 sub_1B0B9FDD0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s15MissingMessagesO8CompleteVMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v50[-v14];
  v16 = _s15MissingMessagesO10IncompleteVMa(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v50[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = _s15MissingMessagesOMa(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v50[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = 1;
  v70 = 1;
  sub_1B0BA1F50(a1, v23, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v52 = a1;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B03D3EF4(v23, v19, _s15MissingMessagesO10IncompleteVMa);
      sub_1B03B5C80(v19, v15, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v25 = sub_1B0B963BC();
      v27 = v26;
      sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v28 = _s15MissingMessagesO8ProgressVMa(0);
      v29 = &v19[*(v28 + 20)];
      v30 = sub_1B0B963BC();
      v32 = v31;
      v33 = *(v16 + 24);
      v34 = &v19[*(v16 + 20)];
      v35 = *v34;
      v36 = v34[4];
      if (v36)
      {
        v35 = 0;
      }

      v51 = v35;
      v71 = v36;
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_1B0BA1F50(&v19[v33], v11, _s15MissingMessagesO11QueriedUIDsVMa);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0E46508();
      sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v38 = v58;
      v37 = v59;
      sub_1B03BE2C4(v52, _s15MissingMessagesOMa);
      v39 = &v19[*(v28 + 24)];
      v40 = *v39;
      v41 = a2;
      v42 = v39[4];
      v43 = v19;
      v44 = v51;
      sub_1B03BE2C4(v43, _s15MissingMessagesO10IncompleteVMa);
      if (v42)
      {
        v45 = 0;
      }

      else
      {
        v45 = v40;
      }

      v70 = v42;
      a2 = v41;
      v46 = 2;
      v47 = 2;
    }

    else
    {
      sub_1B03D3EF4(v23, v7, _s15MissingMessagesO8CompleteVMa);
      if (v7[4])
      {
        v44 = 0;
      }

      else
      {
        v44 = *v7;
      }

      v71 = v7[4];
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_1B0BA1F50(&v7[*(v4 + 20)], v11, _s15MissingMessagesO11QueriedUIDsVMa);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0E46508();
      sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v38 = v58;
      v37 = v59;
      sub_1B03BE2C4(v52, _s15MissingMessagesOMa);
      sub_1B03BE2C4(v7, _s15MissingMessagesO8CompleteVMa);
      v32 = 0;
      v30 = 0;
      v27 = 0;
      v25 = 0;
      v45 = 0;
      v47 = 1;
      v46 = 2;
    }
  }

  else
  {
    sub_1B03BE2C4(a1, _s15MissingMessagesOMa);
    v37 = 0;
    v38 = 0;
    v44 = 0;
    v32 = 0;
    v30 = 0;
    v27 = 0;
    v25 = 0;
    v45 = 0;
    v47 = 2;
    v46 = 1;
  }

  LOBYTE(v54) = v46;
  *(&v54 + 1) = v25;
  v55.n128_u64[0] = v27;
  v55.n128_u64[1] = v30;
  *&v56 = v32;
  DWORD2(v56) = v44;
  BYTE12(v56) = v71;
  *v57 = v38;
  *&v57[8] = v37;
  *&v57[16] = v45;
  v57[20] = v70;
  v57[21] = v47;
  LOBYTE(v58) = v46;
  v59 = v25;
  v60 = v27;
  v61 = v30;
  v62 = v32;
  v63 = v44;
  v64 = v71;
  v65 = v38;
  v66 = v37;
  v67 = v45;
  v68 = v70;
  v69 = v47;
  sub_1B0BA1D70(&v54, v53);
  sub_1B0BA1DA8(&v58);
  v48 = *v57;
  *(a2 + 32) = v56;
  *(a2 + 48) = v48;
  *(a2 + 62) = *&v57[14];
  result = v55;
  *a2 = v54;
  *(a2 + 16) = result;
  return result;
}

void *sub_1B0BA0338@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = _s15MissingMessagesOMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PendingPersistenceUpdates();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 12);
  v78 = *(a1 + 12);
  v15 = *(a1 + 16);
  v16 = *(a1 + 20);
  v77 = *(a1 + 20);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v37 = v12;
  v38 = a2;
  v30 = v7;
  if (v18)
  {
    if (v18 == 1)
    {
      v35 = 0;
      v36 = v17;
      v76 = 1;
      v75 = 0;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v76 = 1;
      v75 = 1;
    }
  }

  else
  {
    v76 = 0;
    v75 = 1;
    v35 = v17;
    v36 = 0;
  }

  v34 = sub_1B0BAE8A0(*(a1 + 152), *(a1 + 160), *(a1 + 168));
  v19 = sub_1B0B95AA0(*(a1 + 176));
  if (*(v19 + 16))
  {
    v33 = v19;
  }

  else
  {

    v33 = 0;
  }

  if (v16)
  {
    v20 = 0;
  }

  else
  {
    v20 = v15;
  }

  if (v14)
  {
    v21 = 0;
  }

  else
  {
    v21 = v13;
  }

  v31 = v21;
  v32 = v20;
  v22 = type metadata accessor for MailboxSyncState();
  v23 = (a1 + v22[12]);
  v24 = v23[3];
  v25 = v23[4];
  __swift_project_boxed_opaque_existential_0(v23, v24);
  (*(v25 + 88))(&v71, v24, v25);
  sub_1B0BA1F50(a1 + v22[13], v11, type metadata accessor for PendingPersistenceUpdates);
  sub_1B0B9FA40(v11, v79);
  *(&v70[3] + 7) = v79[3];
  *(&v70[4] + 7) = v79[4];
  *(&v70[5] + 7) = v80;
  *(&v70[2] + 7) = v79[2];
  *(v70 + 7) = v79[0];
  *(&v70[1] + 7) = v79[1];
  v26 = sub_1B0B95CC8(*(a1 + v22[14]));
  v27 = v30;
  sub_1B0BA1F50(a1 + v22[17], v30, _s15MissingMessagesOMa);
  sub_1B0B9FDD0(v27, &v66);
  sub_1B03BE2C4(a1, type metadata accessor for MailboxSyncState);
  *&v40[104] = v73;
  *&v40[88] = v72;
  *&v40[72] = v71;
  *&v40[153] = v70[2];
  *&v40[169] = v70[3];
  *&v40[185] = v70[4];
  *&v40[200] = *(&v70[4] + 15);
  *&v40[121] = v70[0];
  *&v40[137] = v70[1];
  *&v40[286] = *&v69[14];
  *&v40[256] = v68;
  *&v40[272] = *v69;
  *&v40[224] = v66;
  *&v40[240] = v67;
  v54 = v73;
  v53 = v72;
  v52 = v71;
  v57 = v70[1];
  v56 = v70[0];
  *&v60[15] = *(&v70[4] + 15);
  *v60 = v70[4];
  v59 = v70[3];
  v58 = v70[2];
  *v40 = v37;
  *&v40[8] = v31;
  v40[12] = v78;
  *&v40[16] = v32;
  v40[20] = v77;
  *&v40[24] = v35;
  v40[32] = v76;
  *&v40[40] = v36;
  v40[48] = v75;
  *&v40[56] = v34;
  *&v40[64] = v33;
  v40[120] = v74;
  *&v40[216] = v26;
  v41 = v37;
  v42 = v31;
  v43 = v78;
  v44 = v32;
  v45 = v77;
  v46 = v35;
  v47 = v76;
  v48 = v36;
  v49 = v75;
  v50 = v34;
  v51 = v33;
  v55 = v74;
  v61 = v26;
  *(v65 + 14) = *&v69[14];
  v65[0] = *v69;
  v64 = v68;
  v62 = v66;
  v63 = v67;
  sub_1B0BA1D08(v40, &v39);
  sub_1B0BA1D40(&v41);
  return memcpy(v38, v40, 0x126uLL);
}

void *sub_1B0BA0798@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = _s19UserInitiatedSearchVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for MailboxSyncState();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BA1C6C(v84);
  memcpy(v73, v84, sizeof(v73));
  v13 = *a1;
  v79 = *(a1 + 16);
  v14 = *(a1 + 48);
  v80 = *(a1 + 32);
  v81 = v14;
  v82[0] = *(a1 + 64);
  *(v82 + 9) = *(a1 + 73);
  v78 = v13;
  v15 = DWORD2(v79);
  v16 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B0B979B4(v16, v15);
  v62 = v18;
  v63 = v17;
  sub_1B0B11A84(&v78, v68);
  sub_1B0B9F970(&v78, &v75);
  v19 = *(a1 + 96);
  if (v19)
  {
    v20 = (v19 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
    swift_beginAccess();
    LODWORD(v68[0]) = *v20;
    v21 = sub_1B0E44BA8();
    v60 = v22;
    v61 = v21;
    v23 = _s13SelectedStateV7WrappedVMa(0);
    sub_1B0BA1F50(v20 + *(v23 + 20), v12, type metadata accessor for MailboxSyncState);
    sub_1B0BA0338(v12, v67);
    memcpy(v68, v67, 0x126uLL);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v68);
    memcpy(v83, v68, sizeof(v83));
  }

  else
  {
    memcpy(v83, v84, sizeof(v83));
    v60 = 0;
    v61 = 0;
  }

  memcpy(v72, v73, 0x126uLL);
  sub_1B0398EFC(v72, &qword_1EB6E4FC8, &qword_1B0ECA2D8);
  memcpy(v73, v83, sizeof(v73));
  v24 = *(a1 + 136);
  v25 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v26 = sub_1B0B95884(v25);

  *&v68[0] = v26;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B9C764(v68);

  v27 = *(*&v68[0] + 16);
  v64 = a2;
  if (v27)
  {
    v59 = *&v68[0];
  }

  else
  {

    v59 = 0;
  }

  v28 = *(a1 + 152);
  v29 = *(v28 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v31 = a1;
    *&v68[0] = MEMORY[0x1E69E7CC0];
    sub_1B0B0A644(0, v29, 0);
    v32 = *&v68[0];
    v33 = v28 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v34 = *(v5 + 72);
    do
    {
      sub_1B0BA1F50(v33, v8, _s19UserInitiatedSearchVMa);
      v35 = *v8;
      sub_1B03BE2C4(v8, _s19UserInitiatedSearchVMa);
      *&v68[0] = v32;
      v37 = *(v32 + 16);
      v36 = *(v32 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1B0B0A644((v36 > 1), v37 + 1, 1);
        v32 = *&v68[0];
      }

      *(v32 + 16) = v37 + 1;
      *(v32 + 4 * v37 + 32) = v35;
      v33 += v34;
      --v29;
    }

    while (v29);
    a1 = v31;
    v30 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {

      v32 = 0;
    }
  }

  v58 = v32;
  v38 = *(a1 + 144);
  v39 = *(v38 + 16);
  if (v39)
  {
    v57 = a1;
    *v67 = v30;
    sub_1B0B0A684(0, v39, 0);
    v40 = *v67;
    v41 = (v38 + 64);
    do
    {
      v65 = *(v41 - 8);
      v42 = *(v41 - 3);
      v43 = *(v41 - 2);
      v44 = *v41;
      if (*(v41 - 1))
      {
        *&v68[0] = 0x656D686361747461;
        *(&v68[0] + 1) = 0xEB0000000020746ELL;
        sub_1B03B2000(v42, v43);
        sub_1B03B2000(v42, v43);
        v45 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v46 = SectionSpecifier.Part.debugDescription.getter(v45);
        MEMORY[0x1B2726E80](v46);

        sub_1B0391D50(v42, v43);

        v47 = *(&v68[0] + 1);
        v48 = *&v68[0];
      }

      else
      {
        sub_1B03B2000(*(v41 - 3), *(v41 - 2));
        v47 = 0xE400000000000000;
        v48 = 1954047348;
      }

      v49 = dword_1B0ECC538[v44];
      *v67 = v40;
      v51 = *(v40 + 16);
      v50 = *(v40 + 24);
      if (v51 >= v50 >> 1)
      {
        v56 = v47;
        sub_1B0B0A684((v50 > 1), v51 + 1, 1);
        v47 = v56;
        v40 = *v67;
      }

      *(v40 + 16) = v51 + 1;
      v52 = v40 + 48 * v51;
      *(v52 + 32) = v65;
      v41 += 40;
      *(v52 + 40) = v42;
      *(v52 + 48) = v43;
      *(v52 + 56) = v48;
      *(v52 + 64) = v47;
      *(v52 + 72) = v49;
      --v39;
    }

    while (v39);
    sub_1B03A3614(v57);
    v53 = v40;
  }

  else
  {
    sub_1B03A3614(a1);
    v53 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v53 + 16))
  {

    v53 = 0;
  }

  *v67 = v63;
  *&v67[8] = v62;
  *&v67[16] = v75;
  *&v67[32] = v76;
  v67[48] = v77;
  *&v67[49] = *v74;
  *&v67[52] = *&v74[3];
  *&v67[56] = v61;
  *&v67[64] = v60;
  memcpy(&v67[72], v73, 0x126uLL);
  *&v67[368] = v59;
  *&v67[376] = v58;
  *&v67[384] = v53;
  *&v68[0] = v63;
  *(&v68[0] + 1) = v62;
  v68[1] = v75;
  v68[2] = v76;
  LOBYTE(v68[3]) = v77;
  *(&v68[3] + 1) = *v74;
  DWORD1(v68[3]) = *&v74[3];
  *(&v68[3] + 1) = v61;
  *&v68[4] = v60;
  memcpy(&v68[4] + 8, v73, 0x126uLL);
  v69 = v59;
  v70 = v58;
  v71 = v53;
  sub_1B0BA1CA0(v67, &v66);
  sub_1B0BA1CD8(v68);
  return memcpy(v64, v67, 0x188uLL);
}

char *sub_1B0BA0E0C(char *result)
{
  if ((result[24] & 1) == 0)
  {
    return 0;
  }

  v1 = 0;
  v2 = *(*result + 16);
  v3 = *result + 32;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v5 = (v3 + 176 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v6 = *v5;
    v7 = v5[2];
    v19[1] = v5[1];
    v19[2] = v7;
    v19[0] = v6;
    v8 = v5[3];
    v9 = v5[4];
    v10 = v5[6];
    v19[5] = v5[5];
    v20 = v10;
    v19[3] = v8;
    v19[4] = v9;
    v11 = v5[7];
    v12 = v5[8];
    v13 = v5[10];
    v23 = v5[9];
    v24 = v13;
    v21 = v11;
    v22 = v12;
    v14 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    ++v1;
    v5 += 11;
    if (v20)
    {
      sub_1B03A35B8(v19, v17);
      sub_1B0BA0798(v19, __src);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1B0B0169C(0, *(v4 + 2) + 1, 1, v4);
      }

      v16 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v16 >= v15 >> 1)
      {
        v4 = sub_1B0B0169C((v15 > 1), v16 + 1, 1, v4);
      }

      *(v4 + 2) = v16 + 1;
      result = memcpy(&v4[392 * v16 + 32], __src, 0x188uLL);
      v1 = v14;
      goto LABEL_3;
    }
  }

  return v4;
}

uint64_t sub_1B0BA0F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if ((*a1 & 0xFF0000) != 0)
  {
    v5 = 0x20000;
  }

  else
  {
    v5 = 0x10000;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v6 = 0x1000000;
  }

  else
  {
    v6 = 0x2000000;
  }

  if ((v4 & 0x100) != 0)
  {
    v7 = 512;
  }

  else
  {
    v7 = 256;
  }

  if (v4)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8 | v5 | v7 | v6;
  if (*a1 == 2)
  {
    v10 = 3;
  }

  else
  {
    v10 = v9;
  }

  if (*(a1 + 48))
  {
    v11 = *(a1 + 48);
    v12 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B9CE3C(v12, a1);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 65);
  v16 = *(a1 + 72);
  if (v16)
  {
    v18 = *(a1 + 80);
    v17 = *(a1 + 88);
    v19 = *(a1 + 72);
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20 = MailboxName.init(_:)(v16);
    v22 = sub_1B0B979B4(v20, v21);
    v24 = v23;
    sub_1B0BA1B28(a1);
  }

  else
  {
    sub_1B0BA1B28(a1);
    v22 = 0;
    v24 = 0;
    v18 = 0;
    v17 = 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0BA1B7C(v22, v24);

  result = sub_1B0BA1BC0(v22, v24);
  *a2 = v10;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v22;
  *(a2 + 32) = v24;
  *(a2 + 40) = v18;
  *(a2 + 48) = v17;
  return result;
}

unint64_t sub_1B0BA1164()
{
  result = qword_1EB6DDC60;
  if (!qword_1EB6DDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC60);
  }

  return result;
}

unint64_t sub_1B0BA11B8()
{
  result = qword_1EB6DDC68;
  if (!qword_1EB6DDC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC68);
  }

  return result;
}

unint64_t sub_1B0BA120C()
{
  result = qword_1EB6DDE00;
  if (!qword_1EB6DDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE00);
  }

  return result;
}

uint64_t sub_1B0BA1260(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1B0BA12BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13IMAP2Behavior14StateWithTasksV08CapturedC033_EE00D354300B3A4BFC8C49B1137EE4E5LLV7MailboxV25PendingPersistenceUpdatesV08MessagesQ8DownloadVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_13IMAP2Behavior14StateWithTasksV08CapturedC033_EE00D354300B3A4BFC8C49B1137EE4E5LLV7MailboxV0p4SyncC0VSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B0BA1370(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
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

uint64_t sub_1B0BA13B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1B0BA14A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1B0BA14E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0BA155C()
{
  result = qword_1EB6DDDF8;
  if (!qword_1EB6DDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDF8);
  }

  return result;
}

unint64_t sub_1B0BA160C()
{
  result = qword_1EB6DCCD0;
  if (!qword_1EB6DCCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCCD0);
  }

  return result;
}

unint64_t sub_1B0BA16B4()
{
  result = qword_1EB6DDDC8;
  if (!qword_1EB6DDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDC8);
  }

  return result;
}

unint64_t sub_1B0BA1708()
{
  result = qword_1EB6DDE80;
  if (!qword_1EB6DDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE80);
  }

  return result;
}

unint64_t sub_1B0BA175C()
{
  result = qword_1EB6DDD68;
  if (!qword_1EB6DDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD68);
  }

  return result;
}

unint64_t sub_1B0BA17B0()
{
  result = qword_1EB6DB718;
  if (!qword_1EB6DB718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E4FB8, &qword_1B0ECA2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB718);
  }

  return result;
}

unint64_t sub_1B0BA1834()
{
  result = qword_1EB6DD4C0;
  if (!qword_1EB6DD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4C0);
  }

  return result;
}

unint64_t sub_1B0BA1888()
{
  result = qword_1EB6DDCE0;
  if (!qword_1EB6DDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCE0);
  }

  return result;
}

unint64_t sub_1B0BA18DC()
{
  result = qword_1EB6DDD48;
  if (!qword_1EB6DDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD48);
  }

  return result;
}

unint64_t sub_1B0BA1930()
{
  result = qword_1EB6DDCE8;
  if (!qword_1EB6DDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCE8);
  }

  return result;
}

unint64_t sub_1B0BA1984()
{
  result = qword_1EB6DDCB0;
  if (!qword_1EB6DDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCB0);
  }

  return result;
}

unint64_t sub_1B0BA19D8()
{
  result = qword_1EB6DDE78;
  if (!qword_1EB6DDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE78);
  }

  return result;
}

unint64_t sub_1B0BA1A2C()
{
  result = qword_1EB6DDE48;
  if (!qword_1EB6DDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE48);
  }

  return result;
}

unint64_t sub_1B0BA1A80()
{
  result = qword_1EB6DDE28;
  if (!qword_1EB6DDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE28);
  }

  return result;
}

unint64_t sub_1B0BA1AD4()
{
  result = qword_1EB6DDE08;
  if (!qword_1EB6DDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE08);
  }

  return result;
}

uint64_t sub_1B0BA1B7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0BA1BC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_1B0BA1C6C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 286) = 0;
  return result;
}

unint64_t sub_1B0BA1E40()
{
  result = qword_1EB6DDDA8;
  if (!qword_1EB6DDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDA8);
  }

  return result;
}

unint64_t sub_1B0BA1E94()
{
  result = qword_1EB6DA368;
  if (!qword_1EB6DA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DA368);
  }

  return result;
}

uint64_t sub_1B0BA1F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0BA1FB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B0BA2000(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B0BA2080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
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

uint64_t sub_1B0BA20C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0BA2130(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B0BA218C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B0BA2214(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 80);
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

uint64_t sub_1B0BA2270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0BA22E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0BA233C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy70_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B0BA23C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 70))
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

uint64_t sub_1B0BA241C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 70) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 70) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Flags.Label(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Flags.Label(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B0BA2618(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B0BA2660(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s13CapturedStateV14CapturedRemoteV6ServerVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[4])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t _s13CapturedStateV14CapturedRemoteV6ServerVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0BA2790(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0BA27D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0BA283C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 294))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0BA2884(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 292) = 0;
    *(result + 288) = 0;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 294) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 294) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0BA2928(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_1B0BA2984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0BA2A0C(uint64_t a1, int a2)
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

uint64_t sub_1B0BA2A54(uint64_t result, int a2, int a3)
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

uint64_t _s13CapturedStateV14PathAttributesVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

unint64_t sub_1B0BA2B64()
{
  result = qword_1EB6E5010;
  if (!qword_1EB6E5010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5010);
  }

  return result;
}

unint64_t sub_1B0BA2BBC()
{
  result = qword_1EB6E5018;
  if (!qword_1EB6E5018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5018);
  }

  return result;
}

unint64_t sub_1B0BA2C14()
{
  result = qword_1EB6E5020;
  if (!qword_1EB6E5020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5020);
  }

  return result;
}

unint64_t sub_1B0BA2C6C()
{
  result = qword_1EB6DDE68;
  if (!qword_1EB6DDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE68);
  }

  return result;
}

unint64_t sub_1B0BA2CC4()
{
  result = qword_1EB6DDE70;
  if (!qword_1EB6DDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE70);
  }

  return result;
}

unint64_t sub_1B0BA2D1C()
{
  result = qword_1EB6DDCD0;
  if (!qword_1EB6DDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCD0);
  }

  return result;
}

unint64_t sub_1B0BA2D74()
{
  result = qword_1EB6DDCD8;
  if (!qword_1EB6DDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCD8);
  }

  return result;
}

unint64_t sub_1B0BA2DCC()
{
  result = qword_1EB6DDDE8;
  if (!qword_1EB6DDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDE8);
  }

  return result;
}

unint64_t sub_1B0BA2E24()
{
  result = qword_1EB6DDDF0;
  if (!qword_1EB6DDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDF0);
  }

  return result;
}

uint64_t sub_1B0BA2E78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E676F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656E69676E65 && a2 == 0xE800000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B0F2B7B0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B0F2B7D0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B0F2B7F0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B0F2B810 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736B736174 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1B0BA3114()
{
  result = qword_1EB6DDDE0;
  if (!qword_1EB6DDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDE0);
  }

  return result;
}

unint64_t sub_1B0BA3168()
{
  result = qword_1EB6DDE98;
  if (!qword_1EB6DDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE98);
  }

  return result;
}

unint64_t sub_1B0BA31BC()
{
  result = qword_1EB6DDDA0;
  if (!qword_1EB6DDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDA0);
  }

  return result;
}

uint64_t sub_1B0BA3210(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B0BA3278()
{
  result = qword_1EB6DDD70;
  if (!qword_1EB6DDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD70);
  }

  return result;
}

unint64_t sub_1B0BA32CC()
{
  result = qword_1EB6DD4D8;
  if (!qword_1EB6DD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4D8);
  }

  return result;
}

unint64_t sub_1B0BA3320()
{
  result = qword_1EB6DD4E0;
  if (!qword_1EB6DD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4E0);
  }

  return result;
}

uint64_t sub_1B0BA3374(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463656E6E6F63 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786F626C69616DLL && a2 == 0xE700000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA3490(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7374726F70707573 && a2 == 0xEC00000065766F4DLL;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B0F2B950 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B0F2B970 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B0F2B990 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA3604(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6170655368746170 && a2 == 0xED0000726F746172 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x556C616963657073 && a2 == 0xEA00000000006573)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA377C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726576726573 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B0F2B8B0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA38F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53676E69646E6570 && a2 == 0xEB00000000636E79;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6552686372616573 && a2 == 0xEE00737473657571 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B0F2B9B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA3A1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64696C6156646975 && a2 == 0xEB00000000797469;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5764656863746566 && a2 == 0xED0000776F646E69 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D74736568676968 && a2 == 0xED0000716553646FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA3B48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7565169 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA3CA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6580597 && a2 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA3DB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E697373696DLL && a2 == 0xE700000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701736292 && a2 == 0xE400000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B0F2BAB0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5564656972657571 && a2 == 0xEB00000000734449 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B0F2BAD0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA4018(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x436567617373656DLL && a2 == 0xEC000000746E756FLL;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449557478656ELL && a2 == 0xE700000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64696C6156646975 && a2 == 0xEB00000000797469 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4D74736568676968 && a2 == 0xED0000716553646FLL || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473656867694879 && a2 == 0xEE00716553646F4DLL || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x70657453636E7973 && a2 == 0xE900000000000073 || (sub_1B0E46A78() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B0F2B8D0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B0F2B8F0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B0F2B910 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B0F2B930 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4D676E697373696DLL && a2 == 0xEF73656761737365)
  {

    return 10;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1B0BA43D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x80000001B0F2B9F0 == a2;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B0F2BA10 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B0F2BA30 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B0F2BA50 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B0F2BA70 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B0F2BA90 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B0BA45CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B0F2B830 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B0F2B850 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74617453636E7973 && a2 == 0xE900000000000065 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x75716552636E7973 && a2 == 0xEC00000073747365 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B0F2B870 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B0F2B890 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

unint64_t sub_1B0BA4824()
{
  result = qword_1EB6DDD60;
  if (!qword_1EB6DDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD60);
  }

  return result;
}

unint64_t sub_1B0BA4878()
{
  result = qword_1EB6DDD40;
  if (!qword_1EB6DDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD40);
  }

  return result;
}

unint64_t sub_1B0BA48CC()
{
  result = qword_1EB6DED18;
  if (!qword_1EB6DED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DED18);
  }

  return result;
}

unint64_t sub_1B0BA4920()
{
  result = qword_1EB6DD7D0;
  if (!qword_1EB6DD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD7D0);
  }

  return result;
}

unint64_t sub_1B0BA4974()
{
  result = qword_1EB6DDC70;
  if (!qword_1EB6DDC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC70);
  }

  return result;
}

uint64_t sub_1B0BA49C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B0BA4A44()
{
  result = qword_1EB6DDD10;
  if (!qword_1EB6DDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD10);
  }

  return result;
}

unint64_t sub_1B0BA4A98()
{
  result = qword_1EB6DDCF0;
  if (!qword_1EB6DDCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCF0);
  }

  return result;
}

unint64_t sub_1B0BA4AEC()
{
  result = qword_1EB6DDCC8;
  if (!qword_1EB6DDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCC8);
  }

  return result;
}

unint64_t sub_1B0BA4B40()
{
  result = qword_1EB6DDE60;
  if (!qword_1EB6DDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE60);
  }

  return result;
}

unint64_t sub_1B0BA4B94()
{
  result = qword_1EB6DDE40;
  if (!qword_1EB6DDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE40);
  }

  return result;
}

unint64_t sub_1B0BA4BE8()
{
  result = qword_1EB6DDE20;
  if (!qword_1EB6DDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE20);
  }

  return result;
}

unint64_t sub_1B0BA4C3C()
{
  result = qword_1EB6DDDC0;
  if (!qword_1EB6DDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDC0);
  }

  return result;
}

unint64_t sub_1B0BA4C90()
{
  result = qword_1EB6DB720;
  if (!qword_1EB6DB720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E50B0, &qword_1B0ECAFA8);
    sub_1B0BA3210(&qword_1EB6DADE0, &qword_1EB6E4FD0, &qword_1B0ECA2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB720);
  }

  return result;
}

unint64_t sub_1B0BA4D3C()
{
  result = qword_1EB6DB728;
  if (!qword_1EB6DB728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E50B8, &qword_1B0ECAFB0);
    sub_1B0BA49C8(&qword_1EB6DB4B8, &qword_1EB6E4FD8, &qword_1B0ECA2E8, sub_1B0BA1984);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB728);
  }

  return result;
}

unint64_t sub_1B0BA4DF4()
{
  result = qword_1EB6DDD88;
  if (!qword_1EB6DDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD88);
  }

  return result;
}

unint64_t sub_1B0BA4E48()
{
  result = qword_1EB6DD518;
  if (!qword_1EB6DD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD518);
  }

  return result;
}

unint64_t sub_1B0BA4E9C()
{
  result = qword_1EB6DD4E8;
  if (!qword_1EB6DD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4E8);
  }

  return result;
}

unint64_t sub_1B0BA4EF0()
{
  result = qword_1EB6DD520;
  if (!qword_1EB6DD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD520);
  }

  return result;
}

unint64_t sub_1B0BA4F44()
{
  result = qword_1EB6DDC88;
  if (!qword_1EB6DDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC88);
  }

  return result;
}

unint64_t sub_1B0BA4F98()
{
  result = qword_1EB6DDC90;
  if (!qword_1EB6DDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC90);
  }

  return result;
}

unint64_t sub_1B0BA4FEC()
{
  result = qword_1EB6DDD28;
  if (!qword_1EB6DDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD28);
  }

  return result;
}

unint64_t sub_1B0BA5040()
{
  result = qword_1EB6DDD08;
  if (!qword_1EB6DDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchRequest.Predicate.Color(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchRequest.Predicate.Color(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionStatus.Error.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConnectionStatus.Error.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s13CapturedStateV7MailboxV16MailboxSyncStateV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s13CapturedStateV7MailboxV16MailboxSyncStateV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B0BA5564(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B0BA55C0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1B0BA5638()
{
  result = qword_1EB6E50E8;
  if (!qword_1EB6E50E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E50E8);
  }

  return result;
}

unint64_t sub_1B0BA5690()
{
  result = qword_1EB6E50F0;
  if (!qword_1EB6E50F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E50F0);
  }

  return result;
}

unint64_t sub_1B0BA56E8()
{
  result = qword_1EB6E50F8;
  if (!qword_1EB6E50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E50F8);
  }

  return result;
}

unint64_t sub_1B0BA5740()
{
  result = qword_1EB6E5100;
  if (!qword_1EB6E5100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5100);
  }

  return result;
}

unint64_t sub_1B0BA5798()
{
  result = qword_1EB6E5108;
  if (!qword_1EB6E5108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5108);
  }

  return result;
}

unint64_t sub_1B0BA57F0()
{
  result = qword_1EB6E5110;
  if (!qword_1EB6E5110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5110);
  }

  return result;
}

unint64_t sub_1B0BA5848()
{
  result = qword_1EB6E5118;
  if (!qword_1EB6E5118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5118);
  }

  return result;
}

unint64_t sub_1B0BA58A0()
{
  result = qword_1EB6E5120;
  if (!qword_1EB6E5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5120);
  }

  return result;
}

unint64_t sub_1B0BA58F8()
{
  result = qword_1EB6E5128;
  if (!qword_1EB6E5128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5128);
  }

  return result;
}

unint64_t sub_1B0BA5950()
{
  result = qword_1EB6E5130;
  if (!qword_1EB6E5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5130);
  }

  return result;
}

unint64_t sub_1B0BA59A8()
{
  result = qword_1EB6E5138;
  if (!qword_1EB6E5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5138);
  }

  return result;
}

unint64_t sub_1B0BA5A00()
{
  result = qword_1EB6E5140;
  if (!qword_1EB6E5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5140);
  }

  return result;
}

unint64_t sub_1B0BA5A58()
{
  result = qword_1EB6E5148;
  if (!qword_1EB6E5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5148);
  }

  return result;
}

unint64_t sub_1B0BA5AB0()
{
  result = qword_1EB6E5150;
  if (!qword_1EB6E5150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5150);
  }

  return result;
}

unint64_t sub_1B0BA5B08()
{
  result = qword_1EB6E5158;
  if (!qword_1EB6E5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5158);
  }

  return result;
}

unint64_t sub_1B0BA5B60()
{
  result = qword_1EB6E5160;
  if (!qword_1EB6E5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5160);
  }

  return result;
}

unint64_t sub_1B0BA5BB8()
{
  result = qword_1EB6DDCF8;
  if (!qword_1EB6DDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCF8);
  }

  return result;
}

unint64_t sub_1B0BA5C10()
{
  result = qword_1EB6DDD00;
  if (!qword_1EB6DDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD00);
  }

  return result;
}

unint64_t sub_1B0BA5C68()
{
  result = qword_1EB6DDD18;
  if (!qword_1EB6DDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD18);
  }

  return result;
}

unint64_t sub_1B0BA5CC0()
{
  result = qword_1EB6DDD20;
  if (!qword_1EB6DDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD20);
  }

  return result;
}

unint64_t sub_1B0BA5D18()
{
  result = qword_1EB6DDC78;
  if (!qword_1EB6DDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC78);
  }

  return result;
}

unint64_t sub_1B0BA5D70()
{
  result = qword_1EB6DDC80;
  if (!qword_1EB6DDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC80);
  }

  return result;
}

unint64_t sub_1B0BA5DC8()
{
  result = qword_1EB6DD508;
  if (!qword_1EB6DD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD508);
  }

  return result;
}

unint64_t sub_1B0BA5E20()
{
  result = qword_1EB6DD510;
  if (!qword_1EB6DD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD510);
  }

  return result;
}

unint64_t sub_1B0BA5E78()
{
  result = qword_1EB6DDD78;
  if (!qword_1EB6DDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD78);
  }

  return result;
}

unint64_t sub_1B0BA5ED0()
{
  result = qword_1EB6DDD80;
  if (!qword_1EB6DDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD80);
  }

  return result;
}

unint64_t sub_1B0BA5F28()
{
  result = qword_1EB6DDDB0;
  if (!qword_1EB6DDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDB0);
  }

  return result;
}

unint64_t sub_1B0BA5F80()
{
  result = qword_1EB6DDDB8;
  if (!qword_1EB6DDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDB8);
  }

  return result;
}

unint64_t sub_1B0BA5FD8()
{
  result = qword_1EB6DDE10;
  if (!qword_1EB6DDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE10);
  }

  return result;
}

unint64_t sub_1B0BA6030()
{
  result = qword_1EB6DDE18;
  if (!qword_1EB6DDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE18);
  }

  return result;
}

unint64_t sub_1B0BA6088()
{
  result = qword_1EB6DDE30;
  if (!qword_1EB6DDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE30);
  }

  return result;
}

unint64_t sub_1B0BA60E0()
{
  result = qword_1EB6DDE38;
  if (!qword_1EB6DDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE38);
  }

  return result;
}

unint64_t sub_1B0BA6138()
{
  result = qword_1EB6DDE50;
  if (!qword_1EB6DDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE50);
  }

  return result;
}

unint64_t sub_1B0BA6190()
{
  result = qword_1EB6DDE58;
  if (!qword_1EB6DDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE58);
  }

  return result;
}

unint64_t sub_1B0BA61E8()
{
  result = qword_1EB6DDCB8;
  if (!qword_1EB6DDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCB8);
  }

  return result;
}

unint64_t sub_1B0BA6240()
{
  result = qword_1EB6DDCC0;
  if (!qword_1EB6DDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCC0);
  }

  return result;
}

unint64_t sub_1B0BA6298()
{
  result = qword_1EB6DDD30;
  if (!qword_1EB6DDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD30);
  }

  return result;
}

unint64_t sub_1B0BA62F0()
{
  result = qword_1EB6DDD38;
  if (!qword_1EB6DDD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD38);
  }

  return result;
}

unint64_t sub_1B0BA6348()
{
  result = qword_1EB6DDD50;
  if (!qword_1EB6DDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD50);
  }

  return result;
}

unint64_t sub_1B0BA63A0()
{
  result = qword_1EB6DDD58;
  if (!qword_1EB6DDD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD58);
  }

  return result;
}

unint64_t sub_1B0BA63F8()
{
  result = qword_1EB6DD4C8;
  if (!qword_1EB6DD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4C8);
  }

  return result;
}

unint64_t sub_1B0BA6450()
{
  result = qword_1EB6DD4D0;
  if (!qword_1EB6DD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4D0);
  }

  return result;
}

unint64_t sub_1B0BA64A8()
{
  result = qword_1EB6DDD90;
  if (!qword_1EB6DDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD90);
  }

  return result;
}

unint64_t sub_1B0BA6500()
{
  result = qword_1EB6DDD98;
  if (!qword_1EB6DDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD98);
  }

  return result;
}

unint64_t sub_1B0BA6558()
{
  result = qword_1EB6DDE88;
  if (!qword_1EB6DDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE88);
  }

  return result;
}

unint64_t sub_1B0BA65B0()
{
  result = qword_1EB6DDE90;
  if (!qword_1EB6DDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE90);
  }

  return result;
}

unint64_t sub_1B0BA6608()
{
  result = qword_1EB6DDDD0;
  if (!qword_1EB6DDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDD0);
  }

  return result;
}

unint64_t sub_1B0BA6660()
{
  result = qword_1EB6DDDD8;
  if (!qword_1EB6DDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDD8);
  }

  return result;
}

uint64_t sub_1B0BA66B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43676E696E6E7572 && a2 == 0xEF73646E616D6D6FLL;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x41676E696E6E7572 && a2 == 0xEE00736E6F697463 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B0F2BAF0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B0F2BB10 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA6838(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F74736968 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B0F2B9D0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54786F626C69616DLL && a2 == 0xEB000000006B7361 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1B0BA6A3C()
{
  result = qword_1EB6DD500;
  if (!qword_1EB6DD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD500);
  }

  return result;
}

unint64_t sub_1B0BA6A90()
{
  result = qword_1EB6DD538;
  if (!qword_1EB6DD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD538);
  }

  return result;
}

unint64_t sub_1B0BA6AE4()
{
  result = qword_1EB6DDCA8;
  if (!qword_1EB6DDCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCA8);
  }

  return result;
}

unint64_t sub_1B0BA6B6C()
{
  result = qword_1EB6E5180;
  if (!qword_1EB6E5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5180);
  }

  return result;
}

unint64_t sub_1B0BA6BC4()
{
  result = qword_1EB6E5188;
  if (!qword_1EB6E5188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5188);
  }

  return result;
}

unint64_t sub_1B0BA6C1C()
{
  result = qword_1EB6E5190;
  if (!qword_1EB6E5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5190);
  }

  return result;
}

unint64_t sub_1B0BA6C74()
{
  result = qword_1EB6DDC98;
  if (!qword_1EB6DDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC98);
  }

  return result;
}

unint64_t sub_1B0BA6CCC()
{
  result = qword_1EB6DDCA0;
  if (!qword_1EB6DDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCA0);
  }

  return result;
}

unint64_t sub_1B0BA6D24()
{
  result = qword_1EB6DD528;
  if (!qword_1EB6DD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD528);
  }

  return result;
}

unint64_t sub_1B0BA6D7C()
{
  result = qword_1EB6DD530;
  if (!qword_1EB6DD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD530);
  }

  return result;
}

unint64_t sub_1B0BA6DD4()
{
  result = qword_1EB6DD4F0;
  if (!qword_1EB6DD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4F0);
  }

  return result;
}

unint64_t sub_1B0BA6E2C()
{
  result = qword_1EB6DD4F8;
  if (!qword_1EB6DD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4F8);
  }

  return result;
}

uint64_t sub_1B0BA6EBC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 32); ; i += 15)
  {
    v8 = i[11];
    v9 = i[13];
    v65 = i[12];
    v66[0] = v9;
    *(v66 + 9) = *(i + 217);
    v10 = i[7];
    v11 = i[9];
    v61 = i[8];
    v62 = v11;
    v12 = i[9];
    v13 = i[11];
    v63 = i[10];
    v64 = v13;
    v14 = i[3];
    v15 = i[5];
    v57 = i[4];
    v58 = v15;
    v16 = i[5];
    v17 = i[7];
    v59 = i[6];
    v60 = v17;
    v18 = i[1];
    v54[0] = *i;
    v54[1] = v18;
    v19 = i[3];
    v21 = *i;
    v20 = i[1];
    v55 = i[2];
    v56 = v19;
    v22 = i[13];
    v52 = v65;
    v53[0] = v22;
    *(v53 + 9) = *(i + 217);
    v48 = v61;
    v49 = v12;
    v50 = v63;
    v51 = v8;
    v44 = v57;
    v45 = v16;
    v46 = v59;
    v47 = v10;
    v40 = v21;
    v41 = v20;
    v42 = v55;
    v43 = v14;
    sub_1B0ACE448(v54, &v26);
    v23 = a1(&v40);
    if (v3)
    {
      break;
    }

    v24 = v23;
    v38 = v52;
    v39[0] = v53[0];
    *(v39 + 9) = *(v53 + 9);
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v30 = v44;
    v31 = v45;
    v32 = v46;
    v33 = v47;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v29 = v43;
    sub_1B0ACE480(&v26);
    if (v24)
    {
      return v6;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  v38 = v52;
  v39[0] = v53[0];
  *(v39 + 9) = *(v53 + 9);
  v34 = v48;
  v35 = v49;
  v36 = v50;
  v37 = v51;
  v30 = v44;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = v43;
  sub_1B0ACE480(&v26);
  return v6;
}

uint64_t sub_1B0BA70C0(uint64_t (*a1)(int *), uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  for (i = (a3 + 48); ; i += 3)
  {
    v7 = *(i - 1);
    v8 = *i;
    v11 = *(i - 4);
    v12 = v7;
    v13 = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = v14(&v11);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_1B0BA7198(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v2, 0);
    v4 = v32;
    v5 = v1 + 56;
    v6 = -1 << *(v1 + 32);
    result = sub_1B0E460B8();
    v7 = result;
    v8 = 0;
    v26 = v1 + 64;
    v27 = v2;
    v28 = v1 + 56;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v29 = v8;
      v30 = *(v1 + 36);
      v31 = *(*(v1 + 48) + 4 * v7);
      result = sub_1B0E469C8();
      v11 = result;
      v13 = v12;
      v14 = v4;
      v33 = v4;
      v15 = v1;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1B041D32C((v16 > 1), v17 + 1, 1);
        v14 = v33;
      }

      *(v14 + 16) = v17 + 1;
      v18 = v14 + 16 * v17;
      *(v18 + 32) = v11;
      *(v18 + 40) = v13;
      v9 = 1 << *(v15 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v28;
      v19 = *(v28 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v15;
      v4 = v14;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v26 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1B0425168(v7, v30, 0);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_1B0425168(v7, v30, 0);
      }

LABEL_4:
      v8 = v29 + 1;
      v7 = v9;
      if (v29 + 1 == v27)
      {
        return v4;
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
  }

  return result;
}

uint64_t sub_1B0BA73DC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(v2 + 48) + ((v9 << 10) | (16 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03AB2E0(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0BA74E4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B019E4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0BA75E8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, uint64_t a4)
{
  v8 = sub_1B03A2BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v9 = sub_1B03CAD70(a1, a2, a3, a4);
  if (*(v8 + 16) <= *(v9 + 16) >> 3)
  {
    v13 = v9;
    sub_1B03CAC64(v8, sub_1B0B92B1C);

    v10 = v13;
    if (*(v13 + 16))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = sub_1B0BA8BB0(v8, v9, &qword_1EB6E4350, &qword_1B0EC5098);

    if (*(v10 + 16))
    {
LABEL_3:
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      return v11 | 0xA000000000000004;
    }
  }

  return 0xF000000000000007;
}

uint64_t StateWithTasks.init(windowOfInterestSizes:environment:mailboxFilter:fetchedMessageMetadata:tracingID:logName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13)
{
  v33 = type metadata accessor for StateWithTasks();
  v17 = *(v33 + 32);
  _s30MailboxesToSelectLoggingHelperCMa();
  v18 = swift_allocObject();
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = 0;
  *(a9 + v17) = v18;
  v19 = a8 & 1;
  v34 = a3 & 1;
  v20 = MEMORY[0x1E69E7CC0];
  v21 = sub_1B0BACD54(MEMORY[0x1E69E7CC0]);
  v22 = sub_1B0BAC2B4(v20);
  v23 = sub_1B03B1738(v20);
  v24 = sub_1B0BAC3F0(v20);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v34;
  *(a9 + 17) = v19;
  *(a9 + 18) = a10 & 1;
  *(a9 + 24) = a4;
  *(a9 + 25) = BYTE1(a4) & 1;
  *(a9 + 26) = BYTE2(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v25 = MEMORY[0x1E69E7CD0];
  *(a9 + 48) = a7;
  *(a9 + 56) = v25;
  *(a9 + 64) = v21;
  *(a9 + 72) = 2;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 111) = 0;
  *(a9 + 120) = 0;
  *(a9 + 128) = 0;
  *(a9 + 136) = 1;
  *(a9 + 144) = 0;
  *(a9 + 152) = 0;
  *(a9 + 160) = 0;
  *(a9 + 168) = v22;
  *(a9 + 176) = v20;
  *(a9 + 184) = v20;
  *(a9 + 192) = 0;
  *(a9 + 200) = v24;
  *(a9 + 208) = v23;
  *(a9 + 216) = v20;
  *(a9 + 224) = xmmword_1B0ECC550;
  *(a9 + 240) = 0;
  *(a9 + 248) = v20;
  *(a9 + 256) = v25;
  *(a9 + 288) = a12;
  *(a9 + 296) = a13;
  v26 = a9 + *(v33 + 28);
  sub_1B0E43998();
  result = type metadata accessor for State.Logger();
  *(v26 + *(result + 20)) = a11;
  *(a9 + 264) = a11;
  *(a9 + 272) = v20;
  *(a9 + 280) = 0;
  return result;
}

uint64_t sub_1B0BA790C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v22 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC8, &qword_1B0EC92F8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ClientCommand(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0A91328(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B0398EFC(v11, &qword_1EB6E4BC8, &qword_1B0EC92F8);
    return v22(a1, a5);
  }

  sub_1B0423C80(v11, v16, type metadata accessor for ClientCommand);
  v17 = *(a2 + 272);
  v18 = *(a2 + 280);
  v19 = *(a2 + 264);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v19) = sub_1B0B7D688(v16, v19, v17);

  sub_1B0390574(v16, type metadata accessor for ClientCommand);
  if (v19)
  {
    return v22(a1, a5);
  }

  return 0;
}

uint64_t StateWithTasks.logLongRunningSyncRequests(now:)(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = type metadata accessor for StateWithTasks();
  return sub_1B0B88194(a1, v1 + *(v3 + 28));
}

uint64_t StateWithTasks.logLongRunningTasks(now:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RunningTask();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 272);
  result = type metadata accessor for StateWithTasks();
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = *(result + 28);
    v13 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_1B0390720(v13, v8, type metadata accessor for RunningTask);
      sub_1B0B75C78(a1, v2 + v12);
      result = sub_1B0390574(v8, type metadata accessor for RunningTask);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_1B0BA7CA4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2 | (a2 << 32));
  result = sub_1B0E46CB8();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1B0E434F8();
    result = sub_1B0E43528();
    if ((v11 & 1) == 0)
    {
      do
      {
        v13 = (a3 + 16 * result);
        if ((v13[2] | (v13[2] << 32)) == (a2 | (a2 << 32)))
        {
          v14 = *v13;
          v15 = *(*v13 + 16);
          if (v15 == *(a1 + 16))
          {
            if (!v15 || v14 == a1)
            {
              return result;
            }

            v16 = (v14 + 32);
            for (i = (a1 + 32); *v16 == *i; ++i)
            {
              ++v16;
              if (!--v15)
              {
                return result;
              }
            }
          }
        }

        sub_1B0E43548();
        result = sub_1B0E43528();
      }

      while ((v12 & 1) == 0);
    }
  }

  return result;
}

uint64_t sub_1B0BA7E10(int a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  sub_1B0E46C28();
  sub_1B0E46C88();
  result = sub_1B0E46CB8();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1B0E434F8();
    result = sub_1B0E43528();
    if ((v9 & 1) == 0 && *(a2 + 4 * result) != a1)
    {
      do
      {
        sub_1B0E43548();
        result = sub_1B0E43528();
      }

      while ((v10 & 1) == 0 && *(a2 + 4 * result) != a1);
    }
  }

  return result;
}

uint64_t sub_1B0BA7F24(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = _s19UserInitiatedSearchVMa(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  v17 = *v2;
  result = sub_1B03CA1BC(a1, a2, *v2, _s19UserInitiatedSearchVMa);
  if (!v3)
  {
    if (v19)
    {
      return *(v17 + 16);
    }

    v37 = v16;
    v38 = a1;
    v34 = v14;
    v35 = v11;
    v39 = a2;
    v33 = v2;
    v41 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = (v17 + 16);
      v21 = *(v17 + 16);
      if (v20 == v21)
      {
        return v41;
      }

      v36 = v7;
      while (v20 < v21)
      {
        v23 = v17;
        v40 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v24 = v17 + v40;
        v25 = *(v7 + 72);
        v26 = v37;
        sub_1B0390720(v24 + v25 * v20, v37, _s19UserInitiatedSearchVMa);
        v27 = v38(v26);
        result = sub_1B0390574(v26, _s19UserInitiatedSearchVMa);
        if (v27)
        {
          v7 = v36;
          v17 = v23;
        }

        else
        {
          v28 = v41;
          if (v20 == v41)
          {
            v7 = v36;
            v17 = v23;
          }

          else
          {
            if ((v41 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v29 = *v22;
            if (v41 >= *v22)
            {
              goto LABEL_25;
            }

            v30 = v25 * v41;
            result = sub_1B0390720(v24 + v25 * v41, v34, _s19UserInitiatedSearchVMa);
            if (v20 >= v29)
            {
              goto LABEL_26;
            }

            v31 = v25 * v20;
            sub_1B0390720(v24 + v25 * v20, v35, _s19UserInitiatedSearchVMa);
            v17 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1B0B8C93C(v23);
            }

            v7 = v36;
            v32 = v17 + v40;
            result = sub_1B0450CE0(v35, v17 + v40 + v30, _s19UserInitiatedSearchVMa);
            if (v20 >= *(v17 + 16))
            {
              goto LABEL_27;
            }

            result = sub_1B0450CE0(v34, v32 + v31, _s19UserInitiatedSearchVMa);
            *v33 = v17;
            v28 = v41;
          }

          v41 = v28 + 1;
        }

        ++v20;
        v22 = (v17 + 16);
        v21 = *(v17 + 16);
        if (v20 == v21)
        {
          return v41;
        }
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
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BA8288(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        v14 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B9397C(v14, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1B0BA83B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B0B9443C(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1B0BA8944((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_1B0AFF300((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_1B0BA8944((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1B0BA8944(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[1] < v6[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_1B0BA8B48(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1B0BA8BB0(a1, a2, &qword_1EB6E4340, &qword_1B0EC5088);
}

uint64_t sub_1B0BA8BB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = a2;
  v60 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v50 = a3;
    v51 = a4;
    v53 = a1;
    v54 = 0;
    v10 = a1 + 56;
    v9 = *(a1 + 56);
    v11 = -1 << *(a1 + 32);
    v52 = ~v11;
    if (-v11 < 64)
    {
      v12 = ~(-1 << -v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & v9;
    v14 = (63 - v11) >> 6;
    v15 = a2 + 56;
    v16 = 1;
    while (1)
    {
      do
      {
        if (!v13)
        {
          v17 = v53;
          v18 = v54;
          while (1)
          {
            v19 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v19 >= v14)
            {
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              goto LABEL_43;
            }

            v13 = *(v10 + 8 * v19);
            ++v18;
            if (v13)
            {
              v54 = v19;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v17 = v53;
LABEL_13:
        v20 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v7 = *(*(v17 + 48) + ((v54 << 8) | (4 * v20)));
        v21 = *(v8 + 40);
        sub_1B0E46C28();
        sub_1B0E46C88();
        v22 = sub_1B0E46CB8();
        v23 = -1 << *(v8 + 32);
        v4 = v22 & ~v23;
        v5 = v4 >> 6;
        v6 = 1 << v4;
      }

      while (((1 << v4) & *(v15 + 8 * (v4 >> 6))) == 0);
      v24 = *(v8 + 48);
      if (*(v24 + 4 * v4) == v7)
      {
        break;
      }

      while (1)
      {
        v4 = (v4 + 1) & ~v23;
        v5 = v4 >> 6;
        v6 = 1 << v4;
        if (((1 << v4) & *(v15 + 8 * (v4 >> 6))) == 0)
        {
          break;
        }

        if (*(v24 + 4 * v4) == v7)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v57 = v52;
    v58 = v54;
    v59 = v13;
    v56[0] = v53;
    v56[1] = v10;
    v16 = (63 - v23) >> 6;
    v7 = 8 * v16;
    v25 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v16 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v44 = swift_slowAlloc();
      memcpy(v44, (v8 + 56), v7);
      v45 = sub_1B0BAA0B8(v44, v16, v8, v4, v56, v50, v51);

      MEMORY[0x1B272C230](v44, -1, -1);
      v52 = v57;
      v54 = v58;
      v8 = v45;
      goto LABEL_43;
    }

LABEL_18:
    v47 = v16;
    v48 = &v46;
    MEMORY[0x1EEE9AC00](v25);
    v16 = &v46 - v26;
    memcpy(&v46 - v26, (v8 + 56), v7);
    v27 = *(v8 + 16);
    *(v16 + 8 * v5) &= ~v6;
    v28 = v27 - 1;
    v5 = 1;
    v6 = v53;
LABEL_19:
    v49 = v28;
    while (v13)
    {
LABEL_27:
      v32 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v7 = *(*(v6 + 48) + ((v54 << 8) | (4 * v32)));
      v33 = *(v8 + 40);
      sub_1B0E46C28();
      v4 = &v55;
      sub_1B0E46C88();
      v34 = sub_1B0E46CB8();
      v35 = -1 << *(v8 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      v38 = 1 << v36;
      if (((1 << v36) & *(v15 + 8 * (v36 >> 6))) != 0)
      {
        v39 = *(v8 + 48);
        if (*(v39 + 4 * v36) == v7)
        {
LABEL_20:
          v29 = *(v16 + 8 * v37);
          *(v16 + 8 * v37) = v29 & ~v38;
          if ((v29 & v38) != 0)
          {
            v28 = v49 - 1;
            if (__OFSUB__(v49, 1))
            {
              __break(1u);
            }

            if (v49 == 1)
            {

              v8 = MEMORY[0x1E69E7CD0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v40 = ~v35;
          while (1)
          {
            v36 = (v36 + 1) & v40;
            v37 = v36 >> 6;
            v38 = 1 << v36;
            if (((1 << v36) & *(v15 + 8 * (v36 >> 6))) == 0)
            {
              break;
            }

            if (*(v39 + 4 * v36) == v7)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v30 = v54;
    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v31 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v31);
      ++v30;
      if (v13)
      {
        v54 = v31;
        goto LABEL_27;
      }
    }

    if (v14 <= v54 + 1)
    {
      v41 = v54 + 1;
    }

    else
    {
      v41 = v14;
    }

    v54 = v41 - 1;
    v8 = sub_1B0BAA92C(v16, v47, v49, v8, v50, v51);
LABEL_43:
    sub_1B03D91F8();
  }

  else
  {

    v8 = MEMORY[0x1E69E7CD0];
  }

  v42 = *MEMORY[0x1E69E9840];
  return v8;
}