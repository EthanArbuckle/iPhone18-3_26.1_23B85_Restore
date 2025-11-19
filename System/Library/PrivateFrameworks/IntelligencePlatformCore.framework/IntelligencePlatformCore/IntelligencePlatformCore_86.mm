unint64_t sub_1C4BAD8C4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x746567726174;
      break;
    case 3:
      result = 0x61486769666E6F63;
      break;
    case 4:
      result = 0x69746172656E6567;
      break;
    case 5:
      result = 0x79546D6F74737563;
      break;
    case 6:
      result = 0x7247657461647075;
      break;
    case 7:
      result = 0x536F546574697277;
      break;
    case 8:
    case 9:
    case 10:
      result = 0x7463616669747261;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x6769666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4BADA4C(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C4548, &qword_1C4F596C8);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4BB2BDC();
  sub_1C4F02BF8();
  v14 = *v3;
  LOBYTE(v32) = 0;
  sub_1C441BD40();
  sub_1C4F027D8();
  if (!v2)
  {
    v15 = v3[1];
    v16 = v3[2];
    sub_1C44126A4(1);
    sub_1C4F02798();
    v17 = v3[3];
    v18 = v3[4];
    sub_1C44126A4(2);
    sub_1C4F02738();
    v19 = v3[5];
    v20 = v3[6];
    sub_1C44126A4(3);
    sub_1C4F02798();
    LOBYTE(v32) = *(v3 + 56);
    v33 = 4;
    sub_1C4BB2C84();
    sub_1C4414FD4();
    sub_1C441BD40();
    sub_1C4F027E8();
    LOBYTE(v32) = *(v3 + 57);
    v33 = 5;
    sub_1C4BB2CD8();
    sub_1C4414FD4();
    sub_1C441BD40();
    sub_1C4F02778();
    v21 = v3[8];
    v22 = v3[9];
    sub_1C44126A4(6);
    sub_1C4F02738();
    v23 = *(v3 + 80);
    LOBYTE(v32) = 7;
    sub_1C441BD40();
    sub_1C4F027A8();
    LOBYTE(v32) = *(v3 + 81);
    v33 = 8;
    sub_1C4BB2D2C();
    sub_1C4414FD4();
    sub_1C441BD40();
    sub_1C4F027E8();
    v24 = v3[11];
    v25 = v3[12];
    sub_1C44126A4(9);
    sub_1C4F02798();
    v26 = v3[13];
    v27 = v3[14];
    sub_1C44126A4(10);
    sub_1C4F02738();
    v32 = v3[15];
    v33 = 11;
    sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
    sub_1C44BB458(&qword_1EDDFA560);
    sub_1C4414FD4();
    sub_1C441BD40();
    sub_1C4F027E8();
    v32 = v3[16];
    v33 = 12;
    sub_1C4414FD4();
    sub_1C441BD40();
    sub_1C4F027E8();
    v28 = *(_s16ViewConfigRecordVMa() + 68);
    LOBYTE(v32) = 13;
    _s10ViewConfigVMa(0);
    sub_1C442D4F8();
    sub_1C4505F5C(v29, v30);
    sub_1C441BD40();
    sub_1C4F027E8();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_1C4BADDC8()
{
  sub_1C43FE96C();
  v2 = v1;
  v37 = v3;
  v4 = _s10ViewConfigVMa(0);
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v38 = sub_1C456902C(&qword_1EC0C4540, &unk_1C4F596B8);
  sub_1C43FCDF8(v38);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4422BD8();
  v14 = _s16ViewConfigRecordVMa();
  v15 = sub_1C43FBCE0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v40 = v19 - v18;
  v20 = v2[3];
  v21 = v2[4];
  v39 = v2;
  v22 = sub_1C4409678(v2, v20);
  sub_1C4BB2BDC();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C442E5F4();
    sub_1C440962C(v39);

    if (v22)
    {
      v24 = *(v40 + 96);

      if ((v20 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {

      if (!v20)
      {
        goto LABEL_8;
      }
    }

    v23 = *(v40 + 120);

    goto LABEL_8;
  }

  *v40 = sub_1C4F026B8();
  sub_1C4417910(1);
  *(v40 + 8) = sub_1C4F02678();
  *(v40 + 16) = v25;
  sub_1C4417910(2);
  *(v40 + 24) = sub_1C4F02618();
  *(v40 + 32) = v26;
  sub_1C4417910(3);
  *(v40 + 40) = sub_1C4F02678();
  *(v40 + 48) = v27;
  sub_1C4506098();
  sub_1C440A164();
  sub_1C4F026C8();
  *(v40 + 56) = 0;
  sub_1C4508038();
  sub_1C440A164();
  sub_1C4F02658();
  *(v40 + 57) = 0;
  sub_1C4417910(6);
  *(v40 + 64) = sub_1C4F02618();
  *(v40 + 72) = v28;
  sub_1C4417910(7);
  *(v40 + 80) = sub_1C4F02688() & 1;
  sub_1C4BB2C30();
  sub_1C440A164();
  sub_1C4F026C8();
  *(v40 + 81) = 0;
  sub_1C4417910(9);
  *(v40 + 88) = sub_1C4F02678();
  *(v40 + 96) = v29;
  LOBYTE(v41) = 10;
  *(v40 + 104) = sub_1C4F02618();
  *(v40 + 112) = v30;
  sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
  sub_1C44BB458(&qword_1EDDFCEB0);
  sub_1C442ED74();
  *(v40 + 120) = v41;
  sub_1C442ED74();
  *(v40 + 128) = v41;
  sub_1C442D4F8();
  sub_1C4505F5C(v31, v32);
  sub_1C4F026C8();
  v33 = sub_1C441CE58();
  v34(v33);
  v35 = *(v14 + 68);
  sub_1C43FDF54();
  sub_1C4437D00(v10, v40 + v36);
  sub_1C443BF44(v40, v37);
  sub_1C440962C(v39);
  sub_1C443C070(v40, _s16ViewConfigRecordVMa);
LABEL_8:
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4BAE438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BAD488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BAE460@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C46154F4();
  *a1 = result;
  return result;
}

uint64_t sub_1C4BAE488(uint64_t a1)
{
  v2 = sub_1C4BB2BDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BAE4C4(uint64_t a1)
{
  v2 = sub_1C4BB2BDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BAE530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4505F5C(&qword_1EC0C4538, _s16ViewConfigRecordVMa);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4BAE5C4()
{
  sub_1C4505F5C(&qword_1EC0C4550, _s16ViewConfigRecordVMa);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4BAE748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4505F5C(&qword_1EC0C4558, _s16ViewConfigRecordVMa);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void sub_1C4BAE7E8()
{
  sub_1C43FE96C();
  v88 = v1;
  v89 = v0;
  v86 = v2;
  v87 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  v81 = v16;
  sub_1C43FBE44();
  v17 = sub_1C4EFBC98();
  v18 = sub_1C43FCDF8(v17);
  v84 = v19;
  v85 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v83 = v23 - v22;
  sub_1C43FBE44();
  v95 = sub_1C4EFB678();
  v24 = sub_1C43FCDF8(v95);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBD08();
  v82 = v29 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v81 - v32;
  v34 = _s6ConfigVMa();
  v35 = sub_1C43FBD18(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  v40 = v39 - v38;
  sub_1C4438D00(v39 - v38);
  sub_1C4EFB648();
  sub_1C43FE984();
  sub_1C4EFB638();
  v93 = MEMORY[0x1E69E6530];
  v94 = MEMORY[0x1E69A0178];
  v90 = v9;
  sub_1C4EFB658();
  sub_1C4420C3C(&v90, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440FCD0();
  v41 = *(v11 + 8);
  v90 = *v11;
  v91 = v41;
  sub_1C4415EA8();
  sub_1C4EFB668();
  sub_1C440FCD0();
  v42 = _s10ViewConfigVMa(0);
  v43 = (v11 + *(v42 + 76));
  if (v43[1])
  {
    v45 = v43[4];
    v44 = v43[5];
    v46 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v47 = MEMORY[0x1E69A0130];
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v92 = 0;
  }

  v90 = v45;
  v91 = v46;
  sub_1C448E0D8(v47);
  sub_1C4420C3C(&v90, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440FCD0();
  v90 = v7;
  v91 = v5;
  sub_1C440189C();
  sub_1C4EFB668();
  sub_1C440FCD0();
  sub_1C445EDE8(*(v11 + 32));
  v90 = v48;
  v91 = v49;
  sub_1C440189C();
  sub_1C4EFB668();

  sub_1C440FCD0();
  if (*(v11 + 136) == 30)
  {
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v92 = 0;
  }

  else
  {
    sub_1C4BDC4C0();
    v52 = MEMORY[0x1E69A0130];
  }

  v90 = v50;
  v91 = v51;
  sub_1C448E0D8(v52);
  sub_1C4420C3C(&v90, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440FCD0();
  v53 = *(v11 + 296);
  if (v53)
  {
    v54 = *(v11 + 288);
    v55 = MEMORY[0x1E69A0130];
    v56 = MEMORY[0x1E69E6158];
  }

  else
  {
    v54 = 0;
    v56 = 0;
    v55 = 0;
    v92 = 0;
  }

  v90 = v54;
  v91 = v53;
  v93 = v56;
  v94 = v55;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB658();
  v57 = sub_1C440189C();
  sub_1C4420C3C(v57, v58, &qword_1C4F0F950);
  sub_1C440FCD0();
  v59 = *(v11 + *(v42 + 88));
  v93 = MEMORY[0x1E69E6370];
  v94 = MEMORY[0x1E69A0148];
  LOBYTE(v90) = v59 & 1;
  sub_1C4EFB658();
  v60 = sub_1C440189C();
  sub_1C4420C3C(v60, v61, &qword_1C4F0F950);
  sub_1C440FCD0();
  sub_1C4C6EC08(*v40);
  v90 = v62;
  v91 = v63;
  sub_1C4EFB668();

  sub_1C440FCD0();
  v64 = *(v40 + 16);
  v90 = *(v40 + 8);
  v91 = v64;
  sub_1C4EFB668();
  sub_1C440FCD0();
  v65 = sub_1C4C895B8(v40);
  if (v66)
  {
    v67 = MEMORY[0x1E69A0130];
  }

  else
  {
    v65 = 0;
    v67 = 0;
    v92 = 0;
  }

  v90 = v65;
  v91 = v66;
  sub_1C448E0D8(v67);
  sub_1C4420C3C(&v90, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440FCD0();
  v68 = v89;
  v69 = Array<A>.jsonString()(v88);
  if (v68)
  {
    (*(v26 + 8))(v33, v95);
  }

  else
  {
    v90 = v69;
    v91 = v70;
    sub_1C4EFB668();

    sub_1C440FCD0();
    v90 = Array<A>.jsonString()(v87);
    v91 = v71;
    sub_1C4EFB668();

    sub_1C440FCD0();
    v93 = v42;
    sub_1C442D4F8();
    v94 = sub_1C4505F5C(v72, v73);
    sub_1C4422F90(&v90);
    sub_1C44038A8();
    sub_1C443BF44(v11, v74);
    sub_1C4EFB658();
    sub_1C4420C3C(&v90, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C4EFB638();
    (*(v26 + 32))(v82, v33, v95);
    v75 = v83;
    sub_1C4EFBC88();
    sub_1C4EFBEE8();
    (*(v84 + 8))(v75, v85);
    sub_1C4EFB768();
    v76 = v81;
    sub_1C43FCF64();
    sub_1C440BAA8(v77, v78, v79, v80);
    sub_1C4EFC0A8();

    sub_1C4420C3C(v76, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C443C070(v40, _s6ConfigVMa);
  sub_1C43FBC80();
}

void sub_1C4BAEE80(void *a1@<X8>)
{
  sub_1C4BAEEAC();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1C4BAEEAC()
{
  sub_1C43FE96C();
  v2 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FE984();
  v6 = sub_1C4EFBED8();
  if (v0)
  {
    goto LABEL_3;
  }

  v7 = v6;
  sub_1C4EFBC58();
  sub_1C43FBE94();
  sub_1C4EFB768();
  sub_1C43FCF64();
  sub_1C44112DC(v8, v9, v10, v11);
  v12 = sub_1C4EFBC28();

  sub_1C4420C3C(&v49, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
  v13 = sub_1C4428DA0(v12);
  v14 = 0;
  v47 = v12 & 0xC000000000000001;
  v48 = v13;
  v15 = MEMORY[0x1E69E7CC8];
  v45 = v12;
  v46 = v12 & 0xFFFFFFFFFFFFFF8;
LABEL_4:
  for (i = v14; ; ++i)
  {
    if (v48 == i)
    {

LABEL_3:
      sub_1C4402144();
      sub_1C43FBC80();
      return;
    }

    if (v47)
    {
      v13 = MEMORY[0x1C6940F90](i, v12);
      v17 = v13;
    }

    else
    {
      if (i >= *(v46 + 16))
      {
        goto LABEL_34;
      }

      v17 = *(v12 + 8 * i + 32);
    }

    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1C44091DC();
    sub_1C4EFBBA8();
    if (sub_1C4EFBBE8())
    {
      sub_1C442AA00();
      v19 = MEMORY[0x1EEE9AC00](v18);
      v7 = (&v43 - 4);
      *(&v43 - 2) = v17;
      *(&v43 - 1) = 0;
      v13 = sqlite3_column_type(v19, 0);
      if (v13 == 5)
      {
        goto LABEL_37;
      }

      v20 = sub_1C4F011E8();
      v22 = v21;
    }

    else
    {
      sub_1C446C094();
      sub_1C4EFBB98();
      v20 = v49;
      v22 = v50;
    }

    sub_1C445FEE0();
    sub_1C4EFBBA8();
    v23 = sub_1C4EFBBE8();
    if (v23)
    {
      if (sqlite3_column_type(v23, 1) != 5)
      {
        v7 = sub_1C4F011E8();
        v25 = v24;
        v49 = v7;
        if (v24)
        {
LABEL_23:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v49 = v15;
          v13 = sub_1C445FAA8(v20, v22);
          v43 = v13;
          v51 = v31;
          if (__OFADD__(v15[2], (v31 & 1) == 0))
          {
            goto LABEL_35;
          }

          sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
          if (sub_1C4F02458())
          {
            v32 = sub_1C445FAA8(v20, v22);
            if ((v51 & 1) != (v33 & 1))
            {
              goto LABEL_38;
            }

            v34 = v32;
            if ((v51 & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v34 = v43;
            if ((v51 & 1) == 0)
            {
LABEL_27:
              v15 = v49;
              v49[(v34 >> 6) + 8] |= 1 << v34;
              v35 = (v15[6] + 16 * v34);
              *v35 = v20;
              v35[1] = v22;
              v36 = (v15[7] + 16 * v34);
              *v36 = v7;
              v36[1] = v25;

              v37 = v15[2];
              v38 = __OFADD__(v37, 1);
              v39 = v37 + 1;
              if (v38)
              {
                goto LABEL_36;
              }

              v15[2] = v39;
LABEL_31:
              v12 = v45;
              goto LABEL_4;
            }
          }

          v15 = v49;
          v40 = (v49[7] + 16 * v34);
          v41 = v40[1];
          *v40 = v7;
          v40[1] = v25;

          goto LABEL_31;
        }
      }
    }

    else
    {
      sub_1C440CDC4();
      sub_1C4EFBBF8();
      v7 = v49;
      v25 = v50;
      if (v50)
      {
        goto LABEL_23;
      }
    }

    v26 = sub_1C445FAA8(v20, v22);
    v7 = v27;

    if (v7)
    {
      v7 = swift_isUniquelyReferenced_nonNull_native();
      v49 = v15;
      v28 = v15[3];
      sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
      sub_1C4F02458();
      v15 = v49;
      v29 = *(v49[6] + 16 * v26 + 8);

      v30 = *(v15[7] + 16 * v26 + 8);

      sub_1C4F02478();

      goto LABEL_31;
    }

    v12 = v45;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD954();
  *(v42 - 16) = sub_1C487BF24;
  *(v42 - 8) = v7;
  sub_1C441D408();
  sub_1C4433888();
  swift_unexpectedError();
  __break(1u);
LABEL_38:
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C4BAF42C()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v31 = v6;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C440A474();
  v11 = sub_1C4EFB768();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  swift_unownedRetainStrong();
  v20 = sub_1C4440C6C(v3);

  if (!v0)
  {
    v21 = *(v20 + 32);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v22 = sub_1C44331AC();
    *(v22 + 16) = xmmword_1C4F0D130;
    v23 = MEMORY[0x1E69A0138];
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = v23;
    *(v22 + 32) = v31;
    *(v22 + 40) = v5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v14 + 8))(v19, v11);
    sub_1C43FCF64();
    sub_1C440BAA8(v24, v25, v26, v11);
    sub_1C445EA20();
    sub_1C443474C();
    sub_1C4EFB9A8();
    sub_1C4420C3C(&v29, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
    if (v30)
    {
      sub_1C450B034();
      sub_1C441C114();
      v27 = swift_allocError();
      *v28 = v31;
      *(v28 + 8) = v5;
      *(v28 + 16) = xmmword_1C4F59260;
      *(v28 + 32) = 0xD000000000000016;
      *(v28 + 40) = 0x80000001C4FB4F00;
      sub_1C4426EA4(v29, v27, v28);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  sub_1C43FBC80();
}

void sub_1C4BAF708()
{
  sub_1C43FE96C();
  sub_1C4401F00();
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C44042B0();
  v8 = sub_1C4EFB768();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C441C544();
  v14 = sub_1C4440C6C(v3);

  if (!v1)
  {
    v15 = *(v14 + 56);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v16 = sub_1C44331AC();
    v17 = MEMORY[0x1E69E6530];
    *(v16 + 16) = xmmword_1C4F0D130;
    v18 = MEMORY[0x1E69A0180];
    *(v16 + 56) = v17;
    *(v16 + 64) = v18;
    *(v16 + 32) = v2;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v19 = *(v11 + 8);
    v20 = sub_1C4400068();
    v21(v20);
    sub_1C43FCF64();
    sub_1C44112DC(v22, v23, v24, v8);
    sub_1C4462098();
    sub_1C4EFB988();

    sub_1C4420C3C(&v25, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4BAF8E8()
{
  sub_1C43FE96C();
  sub_1C4401F00();
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C44042B0();
  v8 = sub_1C4EFB768();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C441C544();
  v14 = sub_1C4440C6C(v3);

  if (!v1)
  {
    v15 = *(v14 + 64);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v16 = sub_1C44331AC();
    v17 = MEMORY[0x1E69E6530];
    *(v16 + 16) = xmmword_1C4F0D130;
    v18 = MEMORY[0x1E69A0180];
    *(v16 + 56) = v17;
    *(v16 + 64) = v18;
    *(v16 + 32) = v2;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v19 = *(v11 + 8);
    v20 = sub_1C4400068();
    v21(v20);
    sub_1C43FCF64();
    sub_1C44112DC(v22, v23, v24, v8);
    sub_1C4462098();
    sub_1C4EFB988();

    sub_1C4420C3C(&v25, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4BAFAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v22 = MEMORY[0x1E69E7CD0];
  v7 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = sub_1C459760C(v7);
  v21 = v8;
  while (*(v8 + 16))
  {
    v9 = sub_1C486BC38(v8);
    v11 = v10;
    v13 = v12;
    v14 = sub_1C4BB27A4(v9, v10);
    sub_1C440951C(v9, v11, v13 & 1);
    sub_1C483A4A0(v20, v14);
    v15 = a4(v14, a2, a3);
    if (v4)
    {

      break;
    }

    v16 = sub_1C459760C(v15);
    v17 = sub_1C4A7C82C(v22, v16);
    sub_1C4D4024C(v17);
    v8 = v21;
  }

  return sub_1C4408D00();
}

void sub_1C4BAFBD8()
{
  sub_1C43FE96C();
  v35[1] = v2;
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C44042B0();
  v7 = sub_1C4EFBC98();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v13 = sub_1C4EFB678();
  v14 = sub_1C43FCDF8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v35 - v23;
  sub_1C4EFB648();
  sub_1C4EFB638();
  v36[0] = 0x65727574616566;
  v36[1] = 0xE700000000000000;
  sub_1C4415EA8();
  sub_1C4EFB668();
  sub_1C43FE984();
  sub_1C4EFB638();
  (*(v16 + 32))(v21, v24, v13);
  sub_1C4EFBC88();
  sub_1C4EFBEE8();
  if (v1)
  {
    v25 = *(v10 + 8);
    v26 = sub_1C43FD018();
    v27(v26);
  }

  else
  {
    v28 = *(v10 + 8);
    v29 = sub_1C43FD018();
    v30(v29);
    sub_1C4EFB768();
    sub_1C43FCF64();
    sub_1C44112DC(v31, v32, v33, v34);
    sub_1C4402E08();
    sub_1C4EFB9A8();

    sub_1C4420C3C(v36, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C43FBC80();
}

void sub_1C4BAFEA8()
{
  sub_1C441AE30();
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  v18 = v5;
  v19 = v6;
  v7 = sub_1C49A56A0(sub_1C4BB28D4, v17);
  if (!v7)
  {
    sub_1C450B034();
    sub_1C441C114();
    v12 = swift_allocError();
    v13->n128_u64[0] = v3;
    v13->n128_u64[1] = v2;
    v13[1].n128_u64[0] = 0xD000000000000014;
    v13[1].n128_u64[1] = 0x80000001C4FB5140;
    v13[2].n128_u64[0] = 0;
    v13[2].n128_u64[1] = 0xE000000000000000;
    sub_1C4426EA4(v20, v12, v13);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_13:
    sub_1C441DE88();
    return;
  }

  v8 = v7;
  sub_1C44091DC();
  sub_1C4EFBBA8();
  v9 = sub_1C4EFBBE8();
  if (!v9)
  {
    sub_1C446C094();
    sub_1C4EFBB98();
    if (!v1)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_1C4433888();
    goto LABEL_17;
  }

  MEMORY[0x1EEE9AC00](v9);
  v16[2] = v8;
  v16[3] = 0;
  v11 = sqlite3_column_type(v10, 0);
  if (v11 == 5)
  {
    MEMORY[0x1EEE9AC00](v11);
    sub_1C43FD954();
    *(v15 - 16) = sub_1C487BF24;
    *(v15 - 8) = v16;
    sub_1C441D408();
    goto LABEL_15;
  }

  sub_1C4F011E8();
LABEL_7:
  sub_1C445FEE0();
  sub_1C4EFBBA8();
  v14 = sub_1C4EFBBE8();
  if (v14)
  {
    if (sqlite3_column_type(v14, 1) != 5)
    {
      sub_1C4F011E8();
    }

    goto LABEL_12;
  }

  sub_1C440CDC4();
  sub_1C4EFBBF8();
  if (!v1)
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_1C4433888();
LABEL_17:
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1C4BB015C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v31 = a1;
  v29 = a4;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v28 - v8;
  v9 = sub_1C4EFBC98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C4EFB678();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  sub_1C4EFB648();
  sub_1C4EFB638();
  *&v32[0] = a2;
  *(&v32[0] + 1) = a3;
  sub_1C4415EA8();
  sub_1C4EFB668();
  sub_1C4EFB638();
  (*(v15 + 32))(v18, v21, v14);
  sub_1C4EFBC88();
  v22 = v34;
  sub_1C4EFBEE8();
  if (v22)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v24 = v29;
  (*(v10 + 8))(v13, v9);
  sub_1C4EFBC58();
  v25 = sub_1C4EFB768();
  v26 = v30;
  sub_1C440BAA8(v30, 1, 1, v25);
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v27 = sub_1C4EFBC48();

  sub_1C4420C3C(v32, &unk_1EC0BC770, &qword_1C4F10DC0);
  result = sub_1C4420C3C(v26, &unk_1EC0C06C0, &unk_1C4F10DB0);
  *v24 = v27;
  return result;
}

unint64_t sub_1C4BB047C()
{
  sub_1C441AE30();
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  v11[2] = v2;
  v11[3] = v3;
  sub_1C445E5B0(sub_1C4BB28F0, v11);
  if (!v4 || (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), sub_1C4402E08(), v5 = sub_1C443C388(), v5 == 15))
  {
    v11[4] = 0;
    v12 = 0xE000000000000000;
    sub_1C4F02248();

    sub_1C442AC70();
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    v7 = sub_1C4402E08();
    MEMORY[0x1C6940010](v7);

    v6 = v12;
    sub_1C446D0DC();
    sub_1C441C114();
    v8 = swift_allocError();
    sub_1C441689C(v8, v9);
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

uint64_t sub_1C4BB05AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a1;
  v26[1] = a4;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v27 = v26 - v8;
  v9 = sub_1C4EFBC98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C4EFB678();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v26 - v20;
  sub_1C4EFB648();
  sub_1C4EFB638();
  *&v29[0] = a2;
  *(&v29[0] + 1) = a3;
  sub_1C4415EA8();
  sub_1C4EFB668();
  sub_1C4EFB638();
  (*(v15 + 32))(v18, v21, v14);
  sub_1C4EFBC88();
  v22 = v31;
  sub_1C4EFBEE8();
  if (v22)
  {
    return (*(v10 + 8))(v13, v9);
  }

  (*(v10 + 8))(v13, v9);
  v24 = sub_1C4EFB768();
  v25 = v27;
  sub_1C440BAA8(v27, 1, 1, v24);
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  sub_1C4EFB9A8();

  sub_1C4420C3C(v29, &unk_1EC0BC770, &qword_1C4F10DC0);
  return sub_1C4420C3C(v25, &unk_1EC0C06C0, &unk_1C4F10DB0);
}

void sub_1C4BB08D0()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440A474();
  v10 = sub_1C4EFB768();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  swift_unownedRetainStrong();
  v19 = sub_1C4408D00();
  v20 = sub_1C4440C6C(v19);
  v21 = v0;

  if (v0)
  {
    goto LABEL_3;
  }

  v22 = v5;
  v23 = *(v20 + 80);

  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v24 = sub_1C44331AC();
  *(v24 + 16) = xmmword_1C4F0D130;
  v25 = MEMORY[0x1E69A0138];
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = v25;
  *(v24 + 32) = v22;
  *(v24 + 40) = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C4EFC088();
  (*(v13 + 8))(v18, v10);
  sub_1C4EFBC58();
  sub_1C43FCF64();
  sub_1C44112DC(v26, v27, v28, v10);
  sub_1C4400068();
  v29 = sub_1C4EFBC28();
  sub_1C4420C3C(v55, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
  v30 = sub_1C4428DA0(v29);
  if (!v30)
  {

LABEL_3:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  v31 = v30;
  v49 = v23;
  v56 = MEMORY[0x1E69E7CC0];
  sub_1C459EF78();
  if ((v31 & 0x8000000000000000) == 0)
  {
    v33 = 0;
    v52 = v29;
    v53 = v29 & 0xC000000000000001;
    v50 = v29 & 0xFFFFFFFFFFFFFF8;
    v51 = v31;
    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        break;
      }

      if (v53)
      {
        v35 = MEMORY[0x1C6940F90](v33, v29);
      }

      else
      {
        if (v33 >= *(v50 + 16))
        {
          goto LABEL_26;
        }

        v35 = *(v29 + 8 * v33 + 32);
      }

      sub_1C44091DC();
      sub_1C4EFBBA8();
      if (sub_1C4EFBBE8())
      {
        sub_1C442AA00();
        v37 = MEMORY[0x1EEE9AC00](v36);
        v1 = &v49 - 4;
        *(&v49 - 2) = v35;
        *(&v49 - 1) = 0;
        v32 = sqlite3_column_type(v37, 0);
        if (v32 == 5)
        {
          goto LABEL_28;
        }

        v54 = sub_1C4F02AA8();
      }

      else
      {
        sub_1C446C094();
        sub_1C4EFBB98();
        v54 = v55[0];
      }

      sub_1C44091DC();
      sub_1C4EFBBA8();
      v38 = sub_1C4EFBBE8();
      if (v38)
      {
        v39 = MEMORY[0x1EEE9AC00](v38);
        v40 = sub_1C4414708(v39, &v49);
        if (v40 == 5)
        {
          MEMORY[0x1EEE9AC00](v40);
          sub_1C43FD954();
          *(v48 - 16) = sub_1C487BF24;
          *(v48 - 8) = &v49 - 4;
          sub_1C440D3D8();
          sub_1C444157C();
          goto LABEL_30;
        }

        v41 = v21;
        sub_1C440D3D8();
        v42 = sub_1C4F011E8();
        v44 = v43;
      }

      else
      {
        sub_1C440CDC4();
        sub_1C4EFBB98();
        v41 = 0;

        v42 = v55[0];
        v44 = v55[1];
      }

      v45 = *(v56 + 16);
      v1 = (v45 + 1);
      if (v45 >= *(v56 + 24) >> 1)
      {
        sub_1C459EF78();
      }

      *(v56 + 16) = v1;
      v46 = (v56 + 24 * v45);
      v46[4] = v54;
      v46[5] = v42;
      v46[6] = v44;
      ++v33;
      v29 = v52;
      v21 = v41;
      if (v34 == v51)
      {

        goto LABEL_3;
      }
    }
  }

  __break(1u);
LABEL_28:
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD954();
  *(v47 - 16) = sub_1C487BF24;
  *(v47 - 8) = v1;
  sub_1C441D408();
LABEL_30:
  swift_unexpectedError();
  __break(1u);
}

void sub_1C4BB0EA0()
{
  sub_1C43FE96C();
  v4 = v3;
  v39 = v5;
  v7 = v6;
  v8 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C440A474();
  v12 = sub_1C456902C(&qword_1EC0C4508, &unk_1C4F594D0);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  v41 = v16;
  sub_1C43FBE44();
  v17 = sub_1C4EFB768();
  v18 = sub_1C43FCDF8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  swift_unownedRetainStrong();
  v23 = sub_1C4440C6C(v4);

  if (!v0)
  {
    v24 = *(v23 + 16);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v25 = sub_1C44331AC();
    v26 = MEMORY[0x1E69E6530];
    *(v25 + 16) = xmmword_1C4F0D130;
    v27 = MEMORY[0x1E69A0180];
    *(v25 + 56) = v26;
    *(v25 + 64) = v27;
    *(v25 + 32) = v39;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v20 + 8))(v2, v17);
    v28 = _s16ViewConfigRecordVMa();
    sub_1C43FCF64();
    sub_1C440BAA8(v29, v30, v31, v17);
    sub_1C4505F5C(&qword_1EC0C4510, _s16ViewConfigRecordVMa);
    sub_1C440BFD0();
    sub_1C4400068();
    sub_1C4EFB408();
    sub_1C4420C3C(&v40, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v32 = sub_1C440D3D8();
    if (sub_1C44157D4(v32, v33, v28) == 1)
    {
      sub_1C4420C3C(v41, &qword_1EC0C4508, &unk_1C4F594D0);
      v40.n128_u64[0] = v39;
      v34 = sub_1C4F02858();
      v36 = v35;
      sub_1C450B034();
      sub_1C441C114();
      v37 = swift_allocError();
      v38->n128_u64[0] = v34;
      v38->n128_u64[1] = v36;
      v38[1].n128_u64[0] = 0xD000000000000010;
      v38[1].n128_u64[1] = 0x80000001C4F87A60;
      v38[2].n128_u64[0] = 0xD00000000000001ALL;
      v38[2].n128_u64[1] = 0x80000001C4FB5260;
      sub_1C4426EA4(v40, v37, v38);
    }

    else
    {

      sub_1C4437D00(v41, v7);
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4BB1238(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4505F5C(&qword_1EDDEAEA0, _s10ViewConfigVMa);

  return MEMORY[0x1EEE09B40](a1, a2, v4);
}

uint64_t sub_1C4BB12BC(uint64_t a1)
{
  v2 = sub_1C4505F5C(&qword_1EDDFF5F8, _s10ViewConfigVMa);

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C4BB1338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4505F5C(&qword_1EDDFF5F8, _s10ViewConfigVMa);

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

void sub_1C4BB13BC(uint64_t *a1)
{
  v3 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C444C3A8();
  sub_1C4F02BB8();
  if (!v1)
  {
    sub_1C4409678(v5, v5[3]);
    sub_1C444C3A8();
    v4 = sub_1C4F02968();
    sub_1C4441B18(v4);
    sub_1C440962C(v5);
  }

  sub_1C440962C(a1);
  sub_1C441DE88();
}

uint64_t sub_1C4BB147C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4F02BE8();
  sub_1C44511EC(a2, a3, a4, a5);
  sub_1C4418280(v11, v11[3]);
  sub_1C4F02978();

  return sub_1C440962C(v11);
}

uint64_t sub_1C4BB1550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_1C4F02938(), result = 0, (v13 & 1) != 0))
  {
    if (a4)
    {
      if (a8)
      {
        v15 = a3 == a7 && a4 == a8;
        if (v15 || (sub_1C4F02938() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C4BB15EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C4F01298();
  if (!a5)
  {
    return sub_1C4F02B18();
  }

  sub_1C4F02B18();

  return sub_1C4F01298();
}

uint64_t sub_1C4BB1660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4F02AF8();
  sub_1C4F01298();
  sub_1C4F02B18();
  if (a4)
  {
    sub_1C4F01298();
  }

  return sub_1C4F02B68();
}

void sub_1C4BB16EC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1C4BB13BC(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }
}

uint64_t sub_1C4BB1770()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1C4F02AF8();
  sub_1C4BB15EC(v6, v1, v2, v4, v3);
  return sub_1C4F02B68();
}

unint64_t sub_1C4BB17F0()
{
  result = qword_1EC0C44F0;
  if (!qword_1EC0C44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C44F0);
  }

  return result;
}

void *sub_1C4BB18D4@<X0>(void *a1@<X8>)
{
  sub_1C43FE984();
  v3 = sub_1C4EFBE98();
  if (v1)
  {
  }

  v4 = v3;
  sub_1C43FE984();
  v17 = sub_1C4EFBE98();
  v13 = sub_1C441431C();
  v12 = sub_1C4EFBE98();
  v11 = sub_1C441431C();
  v10 = sub_1C441431C();
  v9 = sub_1C441431C();
  v8 = sub_1C441431C();
  v5 = sub_1C441431C();
  v6 = sub_1C441431C();

  __src[0] = v4;
  __src[1] = v17;
  __src[2] = v13;
  __src[3] = v12;
  __src[4] = v11;
  __src[5] = v10;
  __src[6] = v9;
  __src[7] = v8;
  __src[8] = v5;
  __src[9] = v6;
  v16[0] = v4;
  v16[1] = v17;
  v16[2] = v13;
  v16[3] = v12;
  v16[4] = v11;
  v16[5] = v10;
  v16[6] = v9;
  v16[7] = v8;
  v16[8] = v5;
  v16[9] = v6;
  sub_1C4BB1E64(__src, v14);
  sub_1C4BB1E9C(v16);
  return memcpy(a1, __src, 0x50uLL);
}

unint64_t sub_1C4BB1C18()
{
  result = qword_1EDDFD490;
  if (!qword_1EDDFD490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD490);
  }

  return result;
}

unint64_t sub_1C4BB1C6C()
{
  result = qword_1EDDFED68;
  if (!qword_1EDDFED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFED68);
  }

  return result;
}

unint64_t sub_1C4BB1CC0()
{
  result = qword_1EDDFD360;
  if (!qword_1EDDFD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD360);
  }

  return result;
}

unint64_t sub_1C4BB1D14()
{
  result = qword_1EDDFED70;
  if (!qword_1EDDFED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFED70);
  }

  return result;
}

unint64_t sub_1C4BB1D68()
{
  result = qword_1EDDFEF50;
  if (!qword_1EDDFEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEF50);
  }

  return result;
}

unint64_t sub_1C4BB1DBC()
{
  result = qword_1EDDFEF30;
  if (!qword_1EDDFEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEF30);
  }

  return result;
}

unint64_t sub_1C4BB1E10()
{
  result = qword_1EDDFEF40;
  if (!qword_1EDDFEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEF40);
  }

  return result;
}

uint64_t sub_1C4BB1ECC(uint64_t *a1)
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
      sub_1C4BB1FC0(v7, v8, a1, v4);
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
    return sub_1C4958BB4(0, v2, 1, a1);
  }

  return result;
}

void sub_1C4BB1FC0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v85 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9);
        v11 = (*a3 + 24 * v7);
        v12 = 24 * v7;
        v15 = *v11;
        v14 = v11 + 6;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 3;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 24 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *(v25 + 2);
                v28 = *v25;
                v29 = *(v26 - 8);
                *v25 = *(v26 - 24);
                *(v25 + 2) = v29;
                *(v26 - 24) = v28;
                *(v26 - 8) = v27;
              }

              ++v23;
              v21 -= 24;
              v12 += 24;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
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

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9 - 24;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *v35)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                v37 = *(v35 + 40);
                *(v35 + 24) = *v35;
                *(v35 + 40) = *(v35 + 16);
                *v35 = v33;
                *(v35 + 8) = v36;
                *(v35 + 16) = v37;
                v35 -= 24;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v87 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_1C442BC40();
        sub_1C458A358();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1C442BC40();
        sub_1C458A358();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v87;
      v88 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
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

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1C4BB2600(*a3 + 24 * *v75, *a3 + 24 * *v77, *a3 + 24 * v78, v88);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C4BB24C8(&v90, *a1, a3);
LABEL_89:
}

uint64_t sub_1C4BB24C8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C46194F4(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C4BB2600(*a3 + 24 * *v4, *a3 + 24 * *v9, *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C4BB2600(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  sub_1C441AE30();
  v11 = (v8 - v10) / 24;
  v12 = (v9 - v8) / 24;
  if (v11 < v12)
  {
    sub_1C455B518(v5, v11, a4);
    v13 = &a4[24 * v11];
    while (1)
    {
      if (a4 >= v13 || v4 >= a3)
      {
        v4 = v5;
        goto LABEL_28;
      }

      if (*v4 >= *a4)
      {
        break;
      }

      v15 = v4;
      v16 = v5 == v4;
      v4 += 24;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v5 += 24;
    }

    v15 = a4;
    v16 = v5 == a4;
    a4 += 24;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *v15;
    *(v5 + 2) = *(v15 + 2);
    *v5 = v17;
    goto LABEL_13;
  }

  sub_1C455B518(v4, (v9 - v8) / 24, a4);
  v13 = &a4[24 * v12];
LABEL_15:
  v18 = v4 - 24;
  for (a3 -= 24; v13 > a4 && v4 > v5; a3 -= 24)
  {
    if (*(v13 - 3) < *v18)
    {
      v16 = a3 + 24 == v4;
      v4 -= 24;
      if (!v16)
      {
        v21 = *v18;
        *(a3 + 16) = *(v18 + 2);
        *a3 = v21;
        v4 = v18;
      }

      goto LABEL_15;
    }

    if (v13 != (a3 + 24))
    {
      v20 = *(v13 - 24);
      *(a3 + 16) = *(v13 - 1);
      *a3 = v20;
    }

    v13 -= 24;
  }

LABEL_28:
  v22 = (v13 - a4) / 24;
  if (v4 != a4 || v4 >= &a4[24 * v22])
  {
    memmove(v4, a4, 24 * v22);
  }

  return 1;
}

uint64_t sub_1C4BB27A4(int64_t a1, int a2)
{
  v3 = v2;
  v6 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v8 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v8 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    sub_1C4849A24();
    v8 = v11;
  }

  v9 = *(*(v8 + 48) + 8 * a1);
  sub_1C4A7FFD8(a1);
  *v3 = v11;
  return v9;
}

uint64_t sub_1C4BB2864(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s16ViewConfigRecordVMa()
{
  result = qword_1EDDF8920;
  if (!qword_1EDDF8920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BB2980()
{
  sub_1C44FCCB8(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1C44FCCB8(319, &qword_1EDDFF390, &_s14CustomViewTypeON, MEMORY[0x1E69E6720]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1C44FCCB8(319, &unk_1EC0C4520, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        v1 = _s10ViewConfigVMa(319);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

unint64_t sub_1C4BB2BDC()
{
  result = qword_1EDDFC170;
  if (!qword_1EDDFC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC170);
  }

  return result;
}

unint64_t sub_1C4BB2C30()
{
  result = qword_1EDDFF380;
  if (!qword_1EDDFF380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF380);
  }

  return result;
}

unint64_t sub_1C4BB2C84()
{
  result = qword_1EDDE84F0;
  if (!qword_1EDDE84F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE84F0);
  }

  return result;
}

unint64_t sub_1C4BB2CD8()
{
  result = qword_1EDDE87F8[0];
  if (!qword_1EDDE87F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE87F8);
  }

  return result;
}

unint64_t sub_1C4BB2D2C()
{
  result = qword_1EDDE84F8[0];
  if (!qword_1EDDE84F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE84F8);
  }

  return result;
}

uint64_t _s16ViewConfigRecordV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s16ViewConfigRecordV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BB2EE8()
{
  result = qword_1EC0C4560;
  if (!qword_1EC0C4560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4560);
  }

  return result;
}

unint64_t sub_1C4BB2F40()
{
  result = qword_1EDDFC160;
  if (!qword_1EDDFC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC160);
  }

  return result;
}

unint64_t sub_1C4BB2F98()
{
  result = qword_1EDDFC168;
  if (!qword_1EDDFC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC168);
  }

  return result;
}

uint64_t sub_1C4BB2FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v39 = a1;
  v8 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = &v36 - v10;
  v11 = sub_1C4EFBC98();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v17 = sub_1C4EFB678();
  v18 = sub_1C43FCDF8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v18);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C4400B4C();
  sub_1C4EFB648();
  sub_1C4EFB638();
  v40 = a2;
  v41 = a3;
  sub_1C4415EA8();
  sub_1C4EFB668();
  sub_1C4EFB638();
  v40 = v37;
  v41 = v38;
  sub_1C4EFB668();
  sub_1C4EFB638();
  (*(v20 + 32))(v25, v5, v17);
  sub_1C4EFBC88();
  v26 = v42;
  sub_1C4EFBEE8();
  if (v26)
  {
    v27 = *(v14 + 8);
    v28 = sub_1C43FE990();
    return v29(v28);
  }

  else
  {
    v31 = *(v14 + 8);
    v32 = sub_1C43FE990();
    v33(v32);
    v34 = sub_1C4EFB768();
    v35 = v36;
    sub_1C440BAA8(v36, 1, 1, v34);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v35, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }
}

uint64_t sub_1C4BB32BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34[1] = a1;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34[0] = v34 - v8;
  v9 = sub_1C4EFBC98();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v15 = sub_1C4EFB678();
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4400B4C();
  sub_1C4EFB648();
  sub_1C4EFB638();
  *&v35[0] = a2;
  *(&v35[0] + 1) = a3;
  sub_1C4415EA8();
  sub_1C4EFB668();
  sub_1C4EFB638();
  (*(v18 + 32))(v23, v3, v15);
  sub_1C4EFBC88();
  v24 = v38;
  sub_1C4EFBEE8();
  if (v24)
  {
    v25 = *(v12 + 8);
    v26 = sub_1C43FE990();
    return v27(v26);
  }

  else
  {
    v29 = *(v12 + 8);
    v30 = sub_1C43FE990();
    v31(v30);
    v32 = sub_1C4EFB768();
    v33 = v34[0];
    sub_1C440BAA8(v34[0], 1, 1, v32);
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    sub_1C4EFB9A8();

    sub_1C4423A0C(v35, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v33, &unk_1EC0C06C0, &unk_1C4F10DB0);
    return v37;
  }
}

void *sub_1C4BB35B4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v8 = v7;
  v10 = *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  sub_1C49A57A0(sub_1C4BB44B4, v8, a1, a2, a3, a4, a5, a6);
  return memcpy(a7, v12, 0x70uLL);
}

uint64_t sub_1C4BB361C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4BB32BC(a1, 0x6E6F6973726576, 0xE700000000000000);
  if (!v2)
  {
    if (v6)
    {
      v7 = result;
    }

    else
    {
      v7 = 0;
    }

    v8 = 0xE000000000000000;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    v10 = sub_1C4BB32BC(a1, 0x4665727574616566, 0xEC0000007367616CLL);
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v8 = v11;
    }

    v13 = sub_1C4BB32BC(a1, 0x656C756465686373, 0xE900000000000073);
    v39 = v12;
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    v16 = 0xE000000000000000;
    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0xE000000000000000;
    }

    v18 = sub_1C4BB32BC(a1, 0x654465746F6D6572, 0xED00007365636976);
    v37 = v15;
    v38 = v17;
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v16 = v19;
    }

    v21 = sub_1C4BB32BC(a1, 0xD000000000000015, 0x80000001C4FB53D0);
    v35 = v20;
    v36 = v16;
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v25 = sub_1C4BB32BC(a1, 0xD000000000000015, 0x80000001C4FB53F0);
    v33 = v25;
    v34 = v24;
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    result = sub_1C4BB32BC(a1, 0x73736553746F6F62, 0xEB000000006E6F69);
    v30 = v33;
    if (!v27)
    {
      v30 = 0;
    }

    *a2 = v7;
    a2[1] = v9;
    if (v29)
    {
      v31 = result;
    }

    else
    {
      v31 = 0;
    }

    v32 = 0xE000000000000000;
    if (v29)
    {
      v32 = v29;
    }

    a2[2] = v39;
    a2[3] = v8;
    a2[4] = v37;
    a2[5] = v38;
    a2[6] = v35;
    a2[7] = v36;
    a2[8] = v23;
    a2[9] = v34;
    a2[10] = v30;
    a2[11] = v28;
    a2[12] = v31;
    a2[13] = v32;
  }

  return result;
}

uint64_t sub_1C4BB38D0(uint64_t a1, uint64_t *a2)
{
  result = sub_1C4BB2FEC(a1, 0x6E6F6973726576, 0xE700000000000000, *a2, a2[1]);
  if (!v2)
  {
    sub_1C4BB2FEC(a1, 0x4665727574616566, 0xEC0000007367616CLL, a2[2], a2[3]);
    sub_1C4BB2FEC(a1, 0x656C756465686373, 0xE900000000000073, a2[4], a2[5]);
    sub_1C440B498(a2[8], a2[9], "viewUpdateDependents");
    sub_1C440B498(a2[10], a2[11], "forceMigrationVersion");
    sub_1C4BB2FEC(a1, 0x654465746F6D6572, 0xED00007365636976, a2[6], a2[7]);
    return sub_1C4BB2FEC(a1, 0x73736553746F6F62, 0xEB000000006E6F69, a2[12], a2[13]);
  }

  return result;
}

char *sub_1C4BB39F0()
{
  v43 = *MEMORY[0x1E69E9840];
  v0 = sub_1C4EF9D38();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = sub_1C4F01188();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1C43FBCC4();
  v39 = 37;
  v11 = sub_1C4EF9578();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v41 = 0x2500000000;
  v42 = sub_1C4EF9548() | 0x4000000000000000;
  if (!sub_1C4BB3E84(&v41, &v39))
  {
    sub_1C4BB3DB4();
    v28 = v41;
    v29 = v42;
    sub_1C4F01178();
    v30 = sub_1C4F01158();
    if (v31)
    {
      v32 = v30;
      v33 = v28;
      v34 = v29;
LABEL_18:
      sub_1C4434000(v33, v34);
      v35 = *MEMORY[0x1E69E9840];
      return v32;
    }

    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660();
    }

    v36 = sub_1C4F00978();
    sub_1C442B738(v36, qword_1EDE2DDF8);
    v21 = sub_1C4F00968();
    v37 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v21, v37))
    {
LABEL_17:

      sub_1C4EF9058();
      v32 = sub_1C4EF9CF8();
      (*(v3 + 8))(v8, v0);
      v33 = v41;
      v34 = v42;
      goto LABEL_18;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1C43F8000, v21, v37, "ViewGeneration: Error creating string from utf8 data", v38, 2u);
    v27 = v38;
LABEL_13:
    MEMORY[0x1C6942830](v27, -1, -1);
    goto LABEL_17;
  }

  v14 = MEMORY[0x1C693F6A0]();
  result = strerror(v14);
  if (result)
  {
    v16 = sub_1C4F010E8();
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0x6E776F6E6B6E55;
    }

    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xE700000000000000;
    }

    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660();
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CD8();

    if (!os_log_type_enabled(v21, v22))
    {

      goto LABEL_17;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40 = v24;
    *v23 = 136315394;
    v25 = sub_1C441D828(v18, v19, &v40);

    *(v23 + 4) = v25;
    *(v23 + 12) = 1024;
    *(v23 + 14) = MEMORY[0x1C693F6A0](v26);
    _os_log_impl(&dword_1C43F8000, v21, v22, "ViewGeneration: Error from sysctlbyname: %s(%d", v23, 0x12u);
    sub_1C440962C(v24);
    MEMORY[0x1C6942830](v24, -1, -1);
    v27 = v23;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1C4BB3DB4()
{
  v1 = *v0;
  v2 = v0[1];
  switch(v2 >> 62)
  {
    case 1uLL:
      v3 = v1;
      v4 = v1 >> 32;
      goto LABEL_5;
    case 2uLL:
      v3 = *(v1 + 16);
      v4 = *(v1 + 24);
      goto LABEL_5;
    case 3uLL:
      goto LABEL_16;
    default:
      v3 = 0;
      v4 = BYTE6(v2);
LABEL_5:
      if (v3 == v4)
      {
        goto LABEL_16;
      }

      if ((sub_1C4BB4304() & 0x100) != 0)
      {
        v5 = *v0;
        v6 = v0[1];
        v7 = 0;
        switch(v6 >> 62)
        {
          case 1uLL:
            v7 = v5 >> 32;
            break;
          case 2uLL:
            v7 = *(v5 + 24);
            break;
          case 3uLL:
            break;
          default:
            v7 = BYTE6(v6);
            break;
        }

        if (__OFSUB__(v7, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
        }

        else
        {

          sub_1C4BB4254(v7 - 1);
        }
      }

      return;
  }
}

uint64_t sub_1C4BB3E84(uint64_t *a1, size_t *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v12 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1C4434000(v4, v3);
      *a1 = xmmword_1C4F4FDA0;
      sub_1C4434000(0, 0xC000000000000000);
      v13 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_12;
      }

      if (v13 < v4)
      {
        goto LABEL_16;
      }

      if (sub_1C4EF9538() && __OFSUB__(v4, sub_1C4EF9568()))
      {
        goto LABEL_17;
      }

      v14 = sub_1C4EF9578();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = sub_1C4EF9518();

      v12 = v17;
LABEL_12:
      if (v13 < v4)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
      }

      v7 = sub_1C4BB41D4(v4, v4 >> 32, v12, a2);

      *a1 = v4;
      a1[1] = v12 | 0x4000000000000000;
LABEL_14:
      v18 = *MEMORY[0x1E69E9840];
      return v7;
    case 2uLL:
      v9 = *a1;

      sub_1C4434000(v4, v3);
      *&v21 = v4;
      *(&v21 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1C4F4FDA0;
      sub_1C4434000(0, 0xC000000000000000);
      v7 = &v21;
      sub_1C4EF9918();
      v10 = v21;
      v11 = sub_1C4BB41D4(*(v21 + 16), *(v21 + 24), *(&v21 + 1), a2);
      *a1 = v10;
      a1[1] = *(&v10 + 1) | 0x8000000000000000;
      if (!v2)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    case 3uLL:
      *(&v21 + 7) = 0;
      *&v21 = 0;
      v11 = sysctlbyname("kern.bootsessionuuid", &v21, a2, 0, 0);
LABEL_6:
      v7 = v11;
      goto LABEL_14;
    default:
      sub_1C4434000(v4, v3);
      *&v21 = v4;
      WORD4(v21) = v3;
      BYTE10(v21) = BYTE2(v3);
      BYTE11(v21) = BYTE3(v3);
      BYTE12(v21) = BYTE4(v3);
      BYTE13(v21) = BYTE5(v3);
      BYTE14(v21) = BYTE6(v3);
      v7 = sysctlbyname("kern.bootsessionuuid", &v21, a2, 0, 0);
      v8 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
      *a1 = v21;
      a1[1] = v8;
      goto LABEL_14;
  }
}

uint64_t sub_1C4BB41D4(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  result = sub_1C4EF9538();
  if (result)
  {
    v7 = result;
    result = sub_1C4EF9568();
    v8 = __OFSUB__(a1, result);
    v9 = a1 - result;
    if (!v8)
    {
      sub_1C4EF9558();
      return sysctlbyname("kern.bootsessionuuid", (v7 + v9), a4, 0, 0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4BB4254(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = result;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v2;
      v6 = v2 >> 32;
      goto LABEL_5;
    case 2uLL:
      v5 = *(v2 + 16);
      v6 = *(v2 + 24);
      goto LABEL_5;
    case 3uLL:
      goto LABEL_11;
    default:
      v5 = 0;
      v6 = BYTE6(v3);
LABEL_5:
      if (v5 == v6)
      {
        goto LABEL_11;
      }

      result = sub_1C4EF9A28();
      if (__OFADD__(v4, 1))
      {
        __break(1u);
      }

      else if (v4 + 1 >= v4)
      {
        v7 = result;
        sub_1C4EF99E8();
        return v7;
      }

      __break(1u);
LABEL_11:
      __break(1u);
      return result;
  }
}

uint64_t sub_1C4BB4304()
{
  result = sub_1C4BB43F4(*v0, *(v0 + 8));
  if ((result & 0x100) == 0)
  {
    v2 = *v0;
    v3 = *(v0 + 8);
    v4 = result;
    v5 = 0;
    v6 = 0;
    switch(v3 >> 62)
    {
      case 1uLL:
        v5 = v2;
        v6 = v2 >> 32;
        break;
      case 2uLL:
        v5 = *(v2 + 16);
        v6 = *(v2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v5 = 0;
        v6 = BYTE6(v3);
        break;
    }

    sub_1C44344B8(*v0, *(v0 + 8));
    result = sub_1C4434000(v2, v3);
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
    }

    else if (v6 - 1 >= v5)
    {
      v7 = sub_1C4EF9A18();
      v9 = v8;
      sub_1C4434000(v2, v3);
      *v0 = v7;
      *(v0 + 8) = v9;
      return v4;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4BB43F4(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  v4 = 1;
  v6 = 0;
  v7 = a1 >> 32;
  switch(v3)
  {
    case 1uLL:
      v8 = a1;
      v9 = a1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
LABEL_6:
      if (v8 == v9)
      {
        v6 = 0;
        v4 = 1;
        return v6 | (v4 << 8);
      }

      if (v3 == 2)
      {
        v7 = *(a1 + 24);
      }

      goto LABEL_10;
    case 3uLL:
      return v6 | (v4 << 8);
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
        v6 = 0;
        return v6 | (v4 << 8);
      }

      v7 = BYTE6(a2);
LABEL_10:
      result = v7 - 1;
      if (!__OFSUB__(v7, 1))
      {
        v6 = sub_1C4EF9A28();
        v4 = 0;
        return v6 | (v4 << 8);
      }

      __break(1u);
      return result;
  }
}

uint64_t sub_1C4BB44E0(char a1, uint64_t a2)
{
  v8 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1C440101C();
  v11 = sub_1C43FFC58(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C441A65C();
  v16 = sub_1C4440C6C(a2);

  if (!v3)
  {
    v18 = *(v16 + 280);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C4F0D130;
    v20 = sub_1C4424B10(a1);
    v21 = MEMORY[0x1E69A0138];
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = v21;
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v13 + 8))(v5, v4);
    sub_1C44204FC();
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_1C4EFB9A8();

    sub_1C4423A0C(v23, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v2, &unk_1EC0C06C0, &unk_1C4F10DB0);
    if (v26)
    {
      return 0;
    }

    else
    {
      return v25;
    }
  }

  return result;
}

uint64_t sub_1C4BB4718()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C4BB4764(char a1)
{
  if (!a1)
  {
    return 0x64657461647075;
  }

  if (a1 == 1)
  {
    return 0x676E697461647075;
  }

  return 0x647055736465656ELL;
}

uint64_t sub_1C4BB47E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4BB4718();
  *a2 = result;
  return result;
}

uint64_t sub_1C4BB4818@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4BB4764(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4BB494C(uint64_t a1)
{
  v2 = sub_1C4BB50AC();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C4BB4998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4BB50AC();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

uint64_t sub_1C4BB49EC()
{
  v1 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20 - v3;
  result = sub_1C4EFBED8();
  if (!v0)
  {
    v6 = 0;
    v23 = 0x80000001C4F862C0;
    v21 = 0x80000001C4F86260;
    v22 = xmmword_1C4F0CE60;
    do
    {
      v7 = &unk_1F43D9F00 + v6++;
      v8 = v7[32];
      sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v9 = swift_allocObject();
      *(v9 + 16) = v22;
      v10 = 0xE400000000000000;
      v11 = 1702259052;
      v12 = v9;
      switch(v8)
      {
        case 1:
          v11 = 1701736302;
          break;
        case 2:
          v10 = 0xE500000000000000;
          v11 = 0x796C696164;
          break;
        case 3:
          v11 = 0xD000000000000013;
          v10 = v21;
          break;
        case 4:
          v10 = 0xE600000000000000;
          v13 = 1801807223;
          goto LABEL_10;
        case 5:
          sub_1C441B53C();
          v16 = v15 & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
          goto LABEL_13;
        case 6:
          sub_1C441B53C();
          v16 = v17 & 0xFFFF0000FFFFFFFFLL | 0x327900000000;
LABEL_13:
          v11 = v16 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v10 = 0xEB00000000737275;
          break;
        case 7:
          v10 = 0xE600000000000000;
          v13 = 1920298856;
LABEL_10:
          v11 = v13 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          sub_1C441B53C();
          v11 = v18 | 0x4D31327900000000;
          v10 = 0xEE00736574756E69;
          break;
        case 9:
          sub_1C441B53C();
          v11 = v14 | 0x694D377900000000;
          v10 = 0xED0000736574756ELL;
          break;
        case 10:
          v11 = 0xD000000000000013;
          v10 = v23;
          break;
        default:
          break;
      }

      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = MEMORY[0x1E69A0138];
      *(v12 + 32) = v11;
      *(v12 + 40) = v10;
      *(v12 + 96) = &_s11UpdateStateON;
      *(v12 + 104) = sub_1C4BB50AC();
      *(v12 + 72) = 2;
      sub_1C4EFB728();
      v19 = sub_1C4EFB768();
      sub_1C440BAA8(v4, 0, 1, v19);
      sub_1C4EFC0A8();
      sub_1C4423A0C(v4, &unk_1EC0C06C0, &unk_1C4F10DB0);
    }

    while (v6 != 11);
  }

  return result;
}

uint64_t sub_1C4BB4CCC(uint64_t a1)
{
  v2 = sub_1C44248E8();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C4BB4D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C44248E8();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

unint64_t sub_1C4BB4D70()
{
  result = qword_1EDDF95F0;
  if (!qword_1EDDF95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF95F0);
  }

  return result;
}

unint64_t sub_1C4BB4DC8()
{
  result = qword_1EDDF95E8;
  if (!qword_1EDDF95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF95E8);
  }

  return result;
}

uint64_t sub_1C4BB4E1C(char a1, uint64_t a2, uint64_t a3)
{
  v10 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1C440101C();
  v13 = sub_1C43FFC58(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C441A65C();
  v18 = sub_1C4440C6C(a3);

  if (!v4)
  {
    v20 = *(v18 + 288);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E6530];
    *(v21 + 16) = xmmword_1C4F0CE60;
    v23 = MEMORY[0x1E69A0180];
    *(v21 + 56) = v22;
    *(v21 + 64) = v23;
    *(v21 + 32) = a2;
    v24 = sub_1C4424B10(a1);
    v25 = MEMORY[0x1E69A0138];
    *(v21 + 96) = MEMORY[0x1E69E6158];
    *(v21 + 104) = v25;
    *(v21 + 72) = v24;
    *(v21 + 80) = v26;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v15 + 8))(v6, v5);
    sub_1C44204FC();
    sub_1C4EFC0A8();
    sub_1C4423A0C(v3, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

uint64_t sub_1C4BB5004()
{
  v2 = sub_1C4EFBE98();
  if (!v0)
  {
    v1 = v2;
    sub_1C4EFBE98();
  }

  return v1;
}

unint64_t sub_1C4BB50AC()
{
  result = qword_1EDDEAEC0;
  if (!qword_1EDDEAEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAEC0);
  }

  return result;
}

_BYTE *_s11UpdateStateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BB51E0()
{
  result = qword_1EC0C4568;
  if (!qword_1EC0C4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4568);
  }

  return result;
}

unint64_t sub_1C4BB5238()
{
  result = qword_1EDDEAEB8;
  if (!qword_1EDDEAEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAEB8);
  }

  return result;
}

unint64_t sub_1C4BB5290()
{
  result = qword_1EDDEAEB0;
  if (!qword_1EDDEAEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAEB0);
  }

  return result;
}

unint64_t sub_1C4BB52E4()
{
  result = qword_1EDDF8810;
  if (!qword_1EDDF8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8810);
  }

  return result;
}

unint64_t sub_1C4BB5338()
{
  result = qword_1EDDF8818;
  if (!qword_1EDDF8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8818);
  }

  return result;
}

unint64_t sub_1C4BB538C()
{
  result = qword_1EDDF8820;
  if (!qword_1EDDF8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8820);
  }

  return result;
}

uint64_t sub_1C4BB53E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4BB5420(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4BB549C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001C4F879E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6564724F77656976 && a2 == 0xED00006449646572;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E496769666E6F63 && a2 == 0xEB00000000786564;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001C4FB6280 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6465726975716572 && a2 == 0xEE00656372756F53;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F69725068676968 && a2 == 0xEC00000079746972;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x56646C6975626572 && a2 == 0xEB00000000776569;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x80000001C4FB62A0 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C4F02938();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4BB5818(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C45A0, &qword_1C4F5A048);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4445D68();
  sub_1C4F02BF8();
  v14 = *v3;
  v25[15] = 0;
  sub_1C4400324();
  sub_1C4F027D8();
  if (!v2)
  {
    v15 = v3[1];
    v25[14] = 1;
    sub_1C4400324();
    sub_1C4F027D8();
    v25[13] = *(v3 + 16);
    v25[12] = 2;
    sub_1C444A808();
    sub_1C4400324();
    sub_1C4F027E8();
    v16 = v3[3];
    v25[11] = 3;
    sub_1C4400324();
    sub_1C4F027D8();
    v25[10] = *(v3 + 32);
    v25[9] = 4;
    sub_1C44644B0();
    sub_1C4400324();
    sub_1C4F027E8();
    v17 = *(v3 + 33);
    v25[8] = 5;
    sub_1C4400324();
    sub_1C4F027A8();
    v18 = *(v3 + 34);
    v25[7] = 6;
    sub_1C4400324();
    sub_1C4F027A8();
    v19 = *(v3 + 35);
    v25[6] = 7;
    sub_1C4400324();
    sub_1C4F027A8();
    v20 = *(v3 + 36);
    v25[5] = 8;
    sub_1C4400324();
    sub_1C4F027A8();
    v21 = *(v3 + 37);
    v25[4] = 9;
    sub_1C4400324();
    sub_1C4F027A8();
    v22 = v3[5];
    v23 = v3[6];
    v25[3] = 10;
    sub_1C4F02798();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1C4BB5ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BB549C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BB5AF4(uint64_t a1)
{
  v2 = sub_1C4445D68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BB5B30(uint64_t a1)
{
  v2 = sub_1C4445D68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BB5B84()
{
  sub_1C4BB7AA8();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4BB5C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4BB7AFC();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C4BB5CE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001C4F87A20 == a2;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001C4F879E0 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449656372756F73 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4FAAF10 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D695479426E7572 && a2 == 0xEE00706D61747365;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4BB5EE4(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C45B8, &unk_1C4F5A058);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C444C970();
  sub_1C4F02BF8();
  v14 = *v3;
  v20[0] = 0;
  sub_1C43FDF6C();
  sub_1C4F027D8();
  if (!v2)
  {
    v15 = *(v3 + 8);
    v20[0] = 1;
    sub_1C43FDF6C();
    sub_1C4F027D8();
    v16 = *(v3 + 16);
    v20[0] = 2;
    sub_1C43FDF6C();
    sub_1C4F027D8();
    v17 = *(v3 + 24);
    sub_1C442BFE0(3);
    v18 = *(v3 + 32);
    sub_1C442BFE0(4);
    v21 = *(v3 + 40);
    v20[63] = 5;
    sub_1C444C58C(v3, v20);
    sub_1C446E5F8();
    sub_1C43FDF6C();
    sub_1C4F02778();
    sub_1C441DFEC(v21, *(&v21 + 1));
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1C4BB60BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4BB6108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BB5CE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BB6130(uint64_t a1)
{
  v2 = sub_1C444C970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BB616C(uint64_t a1)
{
  v2 = sub_1C444C970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BB61A8(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_1C4BB5EE4(a1);
}

uint64_t sub_1C4BB61EC()
{
  sub_1C4BB7B50();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4BB62E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4BB7BA4();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

unint64_t sub_1C4BB6354()
{
  result = qword_1EC0C4570;
  if (!qword_1EC0C4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4570);
  }

  return result;
}

unint64_t sub_1C4BB63AC()
{
  result = qword_1EDDEAEA8;
  if (!qword_1EDDEAEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAEA8);
  }

  return result;
}

unint64_t sub_1C4BB6404()
{
  result = qword_1EC0C4578;
  if (!qword_1EC0C4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4578);
  }

  return result;
}

unint64_t sub_1C4BB645C()
{
  result = qword_1EC0C4580;
  if (!qword_1EC0C4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4580);
  }

  return result;
}

unint64_t sub_1C4BB64B4()
{
  result = qword_1EC0C4588;
  if (!qword_1EC0C4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4588);
  }

  return result;
}

unint64_t sub_1C4BB650C()
{
  result = qword_1EC0C4590;
  if (!qword_1EC0C4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4590);
  }

  return result;
}

void sub_1C4BB6560()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v78 = v7;
  v9 = v8;
  v76 = v10;
  v11 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v71[0] = v71 - v15;
  v16 = sub_1C4EFBC98();
  v17 = sub_1C43FCDF8(v16);
  v74 = v18;
  v75 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v73 = v22 - v21;
  v23 = sub_1C4EFB678();
  v24 = sub_1C43FCDF8(v23);
  v79 = v25;
  v80 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBD08();
  v72 = v28 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v71 - v31;
  sub_1C442E860(v6, &v85);
  sub_1C456902C(&qword_1EC0B8BE0, &unk_1C4F0EF30);
  if (swift_dynamicCast())
  {
    v33 = BYTE2(v83);

    v77 = v33 & 1;
  }

  else
  {
    v77 = 0;
  }

  sub_1C4EFB648();
  sub_1C43FE984();
  sub_1C4EFB638();
  v34 = MEMORY[0x1E69E6530];
  v35 = MEMORY[0x1E69A0178];
  v83 = MEMORY[0x1E69E6530];
  v84 = MEMORY[0x1E69A0178];
  v81 = v9;
  sub_1C4EFB658();
  sub_1C44061C8();
  sub_1C440FCD0();
  v83 = &_s10SourceTypeON;
  v84 = sub_1C4BB75B4();
  LOBYTE(v81) = v4;
  sub_1C4EFB658();
  sub_1C44061C8();
  sub_1C440FCD0();
  v83 = v34;
  v84 = v35;
  v81 = v2;
  sub_1C4EFB658();
  sub_1C44061C8();
  sub_1C440FCD0();
  v36 = v78;
  v81 = sub_1C4424B10(v78);
  v82 = v37;
  v71[1] = sub_1C4415EA8();
  sub_1C4EFB668();

  sub_1C440FCD0();
  v38 = v6[3];
  v39 = v6[4];
  sub_1C4409678(v6, v38);
  v40 = (*(v39 + 48))(v38, v39);
  v41 = MEMORY[0x1E69E6370];
  v42 = MEMORY[0x1E69A0148];
  v83 = MEMORY[0x1E69E6370];
  v84 = MEMORY[0x1E69A0148];
  if (v40 == 2)
  {
    if (sub_1C4424B10(v36) == 1701736302 && v43 == 0xE400000000000000)
    {

      v46 = 0;
    }

    else
    {
      v45 = sub_1C4F02938();

      v46 = v45 ^ 1;
    }

    v47 = v46 & 1;
  }

  else
  {
    v47 = v40 & 1;
  }

  sub_1C440D9AC(v47);
  sub_1C440FCF0();
  sub_1C440FCD0();
  sub_1C43FC9A0();
  v49 = *(v48 + 40);
  v50 = sub_1C44260E0();
  v52 = v51(v50);
  v83 = v41;
  v84 = v42;
  if (v52 == 2)
  {
    v53 = 1;
  }

  else
  {
    v53 = v52 & 1;
  }

  sub_1C440D9AC(v53);
  sub_1C440FCF0();
  sub_1C440FCD0();
  v83 = v41;
  v84 = v42;
  LOBYTE(v81) = v77;
  sub_1C4EFB658();
  sub_1C440FCF0();
  sub_1C440FCD0();
  sub_1C43FC9A0();
  v55 = *(v54 + 56);
  v56 = sub_1C44260E0();
  v58 = v57(v56);
  v83 = v41;
  v84 = v42;
  sub_1C440D9AC(v58 & 1);
  sub_1C440FCF0();
  sub_1C440FCD0();
  sub_1C43FC9A0();
  v60 = *(v59 + 64);
  v61 = sub_1C44260E0();
  v63 = v62(v61);
  v83 = v41;
  v84 = v42;
  sub_1C440D9AC(v63 & 1);
  sub_1C440FCF0();
  sub_1C440FCD0();
  v64 = v6[3];
  v65 = v6[4];
  sub_1C4409678(v6, v64);
  sub_1C4CE59A8(v64, v65);
  if (v0)
  {
    (*(v79 + 8))(v32, v80);
  }

  else
  {
    v81 = v66;
    v82 = v67;
    sub_1C4EFB668();

    sub_1C4EFB638();
    (*(v79 + 32))(v72, v32, v80);
    v68 = v73;
    sub_1C4EFBC88();
    sub_1C4EFBEE8();
    (*(v74 + 8))(v68, v75);
    v69 = sub_1C4EFB768();
    v70 = v71[0];
    sub_1C440BAA8(v71[0], 1, 1, v69);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v70, &unk_1EC0C06C0, &unk_1C4F10DB0);

    sub_1C4EFBF18();
  }

  sub_1C43FBC80();
}

void sub_1C4BB6B24()
{
  sub_1C43FE96C();
  v54 = v1;
  v55 = v0;
  v3 = v2;
  v52 = v4;
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v51 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v50 - v12;
  v60 = sub_1C4EFBC98();
  v13 = sub_1C43FCDF8(v60);
  v56 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD08();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v53 = sub_1C4EFB678();
  v21 = sub_1C43FCDF8(v53);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBD08();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v50 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v50 - v31;
  if (v3)
  {
    sub_1C4EFB648();
    sub_1C4EFB638();
    v33 = MEMORY[0x1E69E6530];
    v34 = MEMORY[0x1E69A0178];
    v58 = MEMORY[0x1E69E6530];
    v59 = MEMORY[0x1E69A0178];
    sub_1C444001C(v52);
    sub_1C4423A0C(v57, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440FCD0();
    v58 = v33;
    v59 = v34;
    sub_1C444001C(v54);
    sub_1C4423A0C(v57, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C43FE984();
    sub_1C4EFB638();
    (*(v23 + 32))(v30, v32, v53);
    sub_1C4EFBC88();
    v35 = v55;
    sub_1C4EFBEE8();
    if (!v35)
    {
      v36 = sub_1C4404794();
      v37(v36);
      sub_1C4EFB768();
      v38 = v50;
LABEL_7:
      v46 = sub_1C44038D0();
      sub_1C440BAA8(v46, v47, v48, v49);
      sub_1C4EFC0A8();
      sub_1C4423A0C(v38, &unk_1EC0C06C0, &unk_1C4F10DB0);

      sub_1C4EFBF18();
      goto LABEL_8;
    }
  }

  else
  {
    sub_1C4EFB648();
    sub_1C4EFB638();
    v39 = MEMORY[0x1E69A0178];
    v58 = MEMORY[0x1E69E6530];
    v59 = MEMORY[0x1E69A0178];
    sub_1C444001C(v52);
    sub_1C4423A0C(v57, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440FCD0();
    v59 = v39;
    v58 = MEMORY[0x1E69E6530];
    sub_1C444001C(v54);
    sub_1C4423A0C(v57, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C43FE984();
    sub_1C4EFB638();
    v40 = *(v23 + 32);
    v41 = sub_1C43FE990();
    v42(v41);
    sub_1C4EFBC88();
    v43 = v55;
    sub_1C4EFBEE8();
    if (!v43)
    {
      (*(v56 + 8))(v19, v60);
      sub_1C4EFB768();
      v38 = v51;
      goto LABEL_7;
    }
  }

  v44 = sub_1C4404794();
  v45(v44);
LABEL_8:
  sub_1C43FBC80();
}

void sub_1C4BB6FB0()
{
  sub_1C43FE96C();
  v4 = v3;
  v37 = v5;
  v7 = v6;
  v36 = v8;
  v10 = v9;
  v11 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C440101C();
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C44247B4();
  sub_1C4440C6C(v4);
  sub_1C441CE68();
  if (!v1)
  {
    v35 = v18;
    v21 = 216;
    if (v36)
    {
      v21 = 224;
    }

    v22 = *(v4 + v21);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C4F0CE60;
    v24 = v37;
    if (v37 >> 60 == 15)
    {
      sub_1C44053F0();
      *(v23 + 48) = 0;
      v29 = v7;
    }

    else
    {
      v25 = MEMORY[0x1E699FD70];
      v26 = MEMORY[0x1E6969080];
      v29 = v7;
      v27 = v7;
      v28 = v37;
    }

    *(v23 + 32) = v27;
    *(v23 + 40) = v28;
    v30 = MEMORY[0x1E69E6530];
    *(v23 + 56) = v26;
    *(v23 + 64) = v25;
    v31 = MEMORY[0x1E69A0180];
    *(v23 + 96) = v30;
    *(v23 + 104) = v31;
    *(v23 + 72) = v10;
    sub_1C4431E64(v29, v24);
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v35 + 8))(v2, v15);
    v32 = sub_1C44038D0();
    sub_1C440FD0C(v32, v33, v34, v15);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4BB71C8()
{
  sub_1C441EFD0();
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C440101C();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  swift_unownedRetainStrong();
  sub_1C4440C6C(v3);
  result = sub_1C441CE68();
  if (!v1)
  {
    v15 = *(v3 + 224);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C4F0CE60;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 0u;
    v17 = MEMORY[0x1E69A0180];
    *(v16 + 96) = MEMORY[0x1E69E6530];
    *(v16 + 104) = v17;
    *(v16 + 64) = 0;
    *(v16 + 72) = v2;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v18 = *(v11 + 8);
    v19 = sub_1C43FE990();
    v20(v19);
    v21 = sub_1C44038D0();
    sub_1C440FD0C(v21, v22, v23, v8);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

uint64_t sub_1C4BB7370()
{
  sub_1C441EFD0();
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C440101C();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  swift_unownedRetainStrong();
  sub_1C4440C6C(v3);
  result = sub_1C441CE68();
  if (!v1)
  {
    v15 = *(v3 + 232);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E6530];
    *(v16 + 16) = xmmword_1C4F0D130;
    v18 = MEMORY[0x1E69A0180];
    *(v16 + 56) = v17;
    *(v16 + 64) = v18;
    *(v16 + 32) = v2;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v19 = *(v11 + 8);
    v20 = sub_1C43FE990();
    v21(v20);
    v22 = sub_1C44038D0();
    sub_1C440FD0C(v22, v23, v24, v8);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

uint64_t sub_1C4BB7510(uint64_t a1)
{
  v2 = sub_1C444323C();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C4BB755C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C444323C();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

unint64_t sub_1C4BB75B4()
{
  result = qword_1EDDF9D50;
  if (!qword_1EDDF9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D50);
  }

  return result;
}

unint64_t sub_1C4BB760C()
{
  result = qword_1EDDF9D48;
  if (!qword_1EDDF9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D48);
  }

  return result;
}

uint64_t sub_1C4BB7660()
{
  sub_1C43FE984();
  v2 = sub_1C4EFBE98();
  if (!v0)
  {
    v1 = v2;
    sub_1C441431C();
  }

  return v1;
}

void *sub_1C4BB76FC@<X0>(void *a1@<X8>)
{
  v3 = sub_1C4EFBE98();
  if (v1)
  {
  }

  v4 = v3;
  v17 = sub_1C441431C();
  v13 = sub_1C441431C();
  sub_1C43FE984();
  v12 = sub_1C4EFBE98();
  v11 = sub_1C441431C();
  v10 = sub_1C441431C();
  sub_1C43FE984();
  v9 = sub_1C4EFBE98();
  v8 = sub_1C441431C();
  v5 = sub_1C441431C();
  v6 = sub_1C441431C();

  __src[0] = v4;
  __src[1] = v17;
  __src[2] = v13;
  __src[3] = v12;
  __src[4] = v11;
  __src[5] = v10;
  __src[6] = v9;
  __src[7] = v8;
  __src[8] = v5;
  __src[9] = v6;
  v16[0] = v4;
  v16[1] = v17;
  v16[2] = v13;
  v16[3] = v12;
  v16[4] = v11;
  v16[5] = v10;
  v16[6] = v9;
  v16[7] = v8;
  v16[8] = v5;
  v16[9] = v6;
  sub_1C4BB7A40(__src, v14);
  sub_1C4BB7A78(v16);
  return memcpy(a1, __src, 0x50uLL);
}

unint64_t sub_1C4BB7AA8()
{
  result = qword_1EC0C45A8;
  if (!qword_1EC0C45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C45A8);
  }

  return result;
}

unint64_t sub_1C4BB7AFC()
{
  result = qword_1EDDF8680;
  if (!qword_1EDDF8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8680);
  }

  return result;
}

unint64_t sub_1C4BB7B50()
{
  result = qword_1EC0C45C0;
  if (!qword_1EC0C45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C45C0);
  }

  return result;
}

unint64_t sub_1C4BB7BA4()
{
  result = qword_1EDDF86C0;
  if (!qword_1EDDF86C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF86C0);
  }

  return result;
}

_BYTE *_s19SourceListenerStateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s20SourceListenerConfigV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BB7DB4()
{
  result = qword_1EC0C45C8;
  if (!qword_1EC0C45C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C45C8);
  }

  return result;
}

unint64_t sub_1C4BB7E0C()
{
  result = qword_1EC0C45D0;
  if (!qword_1EC0C45D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C45D0);
  }

  return result;
}

unint64_t sub_1C4BB7E64()
{
  result = qword_1EDDF86D0;
  if (!qword_1EDDF86D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF86D0);
  }

  return result;
}

unint64_t sub_1C4BB7EBC()
{
  result = qword_1EDDF86D8;
  if (!qword_1EDDF86D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF86D8);
  }

  return result;
}

unint64_t sub_1C4BB7F14()
{
  result = qword_1EDDF8698;
  if (!qword_1EDDF8698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8698);
  }

  return result;
}

unint64_t sub_1C4BB7F6C()
{
  result = qword_1EDDF86A0;
  if (!qword_1EDDF86A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF86A0);
  }

  return result;
}

uint64_t sub_1C4BB7FE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656372756F73 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001C4F87A00 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7954657461647075 && a2 == 0xEA00000000006570;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001C4FB65B0 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000015 && 0x80000001C4FB65D0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4BB8228(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C45F0, &unk_1C4F5A570);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21[-v11 - 8];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C444D218();
  sub_1C4F02BF8();
  v14 = *v3;
  LOBYTE(v22) = 0;
  sub_1C43FDF6C();
  sub_1C4F027D8();
  if (!v2)
  {
    LOBYTE(v22) = *(v3 + 8);
    v21[0] = 1;
    sub_1C444A808();
    sub_1C43FDF6C();
    sub_1C4F027E8();
    v15 = v3[2];
    v16 = v3[3];
    LOBYTE(v22) = 2;
    sub_1C4F02798();
    LOBYTE(v22) = *(v3 + 32);
    v21[0] = 3;
    sub_1C4BB9554();
    sub_1C43FDF6C();
    sub_1C4F027E8();
    v17 = v3[5];
    LOBYTE(v22) = 4;
    sub_1C4F027B8();
    v18 = *(v3 + 48);
    LOBYTE(v22) = 5;
    sub_1C43FDF6C();
    sub_1C4F027A8();
    v22 = *(v3 + 7);
    v23 = v22;
    v21[23] = 6;
    sub_1C4BB95A8(&v23, v21);
    sub_1C446E5F8();
    sub_1C43FDF6C();
    sub_1C4F02778();
    sub_1C441DFEC(v22, *(&v22 + 1));
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1C4BB847C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BB7FE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BB84A4(uint64_t a1)
{
  v2 = sub_1C444D218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BB84E0(uint64_t a1)
{
  v2 = sub_1C444D218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BB8534()
{
  sub_1C4BB9618();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4BB8628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4BB966C();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

unint64_t sub_1C4BB86A0()
{
  result = qword_1EC0C45D8;
  if (!qword_1EC0C45D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C45D8);
  }

  return result;
}

unint64_t sub_1C4BB86F8()
{
  result = qword_1EDDEAEC8;
  if (!qword_1EDDEAEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAEC8);
  }

  return result;
}

unint64_t sub_1C4BB8750()
{
  result = qword_1EC0C45E0;
  if (!qword_1EC0C45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C45E0);
  }

  return result;
}

uint64_t sub_1C4BB87A4@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v45 = a1;
  v42 = a4;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v42 - v11;
  v44 = sub_1C4EFBC98();
  v12 = sub_1C43FCDF8(v44);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v20 = sub_1C4EFB678();
  v21 = sub_1C43FCDF8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBD08();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C4400B4C();
  sub_1C4EFB648();
  sub_1C4EFB638();
  sub_1C4409528(a2);
  *&v46[0] = v30;
  *(&v46[0] + 1) = v31;
  sub_1C4415EA8();
  sub_1C4EFB668();

  sub_1C4433898();
  if (a3)
  {
    v32 = 0x6E6F6974656C6564;
    if (a3 == 1)
    {
      v33 = 0xE800000000000000;
    }

    else
    {
      v32 = 0x646574736F70;
      v33 = 0xE600000000000000;
    }
  }

  else
  {
    v33 = 0xE600000000000000;
    v32 = 0x6C616D726F6ELL;
  }

  *&v46[0] = v32;
  *(&v46[0] + 1) = v33;
  sub_1C4EFB668();

  sub_1C4EFB638();
  (*(v23 + 32))(v28, v4, v20);
  sub_1C4EFBC88();
  v34 = v48;
  sub_1C4EFBEE8();
  if (v34)
  {
    return (*(v14 + 8))(v19, v44);
  }

  (*(v14 + 8))(v19, v44);
  sub_1C4EFB768();
  v36 = v43;
  sub_1C43FCF64();
  sub_1C440BAA8(v37, v38, v39, v40);
  sub_1C444C5E8();
  memset(v46, 0, sizeof(v46));
  v47 = 0;
  v41 = sub_1C4EFB3E8();

  sub_1C4423A0C(v46, &unk_1EC0BC770, &qword_1C4F10DC0);
  result = sub_1C4423A0C(v36, &unk_1EC0C06C0, &unk_1C4F10DB0);
  *v42 = v41;
  return result;
}

void sub_1C4BB8B20()
{
  sub_1C43FE628();
  v73 = v1;
  v3 = v2;
  v77 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v80 = v11;
  v12 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v13 = sub_1C43FBD18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD08();
  v67 = v16 - v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v64 - v19;
  v79 = sub_1C4EFBC98();
  v20 = sub_1C43FCDF8(v79);
  v76 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBD08();
  v72 = v24 - v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v64 - v27;
  v78 = sub_1C4EFB678();
  v29 = sub_1C43FCDF8(v78);
  v75 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBD08();
  v71 = v33 - v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  v70 = &v64 - v36;
  sub_1C43FD1D0();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v64 - v39;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C4400B4C();
  sub_1C4EFB648();
  sub_1C4EFB638();
  v68 = v10;
  sub_1C4409528(v10);
  *&v81 = v41;
  *(&v81 + 1) = v42;
  sub_1C4415EA8();
  sub_1C4EFB668();

  sub_1C4EFB638();
  *&v69 = v8;
  *(&v69 + 1) = v6;
  *&v81 = v8;
  *(&v81 + 1) = v6;
  sub_1C4EFB668();
  sub_1C4433898();
  if (v77)
  {
    v43 = 0x6E6F6974656C6564;
    if (v77 == 1)
    {
      v44 = 0xE800000000000000;
    }

    else
    {
      v43 = 0x646574736F70;
      v44 = 0xE600000000000000;
    }
  }

  else
  {
    v44 = 0xE600000000000000;
    v43 = 0x6C616D726F6ELL;
  }

  *&v81 = v43;
  *(&v81 + 1) = v44;
  sub_1C4EFB668();

  sub_1C4EFB638();
  v45 = *(v75 + 4);
  v45(v40, v0, v78);
  sub_1C4EFBC88();
  v46 = v73;
  v47 = sub_1C4EFBEE8();
  v48 = v74;
  if (!v46)
  {
    v49 = v47;
    v75 = v45;
    v50 = *(v76 + 8);
    v50(v28, v79);
    v51 = sub_1C4EFB768();
    sub_1C43FCF64();
    sub_1C440BAA8(v52, v53, v54, v51);
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    v55 = MEMORY[0x1E69E6530];
    sub_1C4EFB9A8();
    v76 = 0;
    v65 = v51;
    v73 = v49;
    v66 = v50;
    sub_1C4423A0C(&v81, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v48, &unk_1EC0C06C0, &unk_1C4F10DB0);
    if (v84)
    {
      v56 = v70;
      sub_1C4EFB648();
      sub_1C4EFB638();
      *(&v82 + 1) = &_s10SourceTypeON;
      v83 = sub_1C4BB75B4();
      LOBYTE(v81) = v68;
      sub_1C4EFB658();
      sub_1C4432BAC();
      sub_1C44260F0();
      v81 = v69;
      sub_1C4EFB668();
      sub_1C44260F0();
      *(&v82 + 1) = &_s10UpdateTypeON;
      v83 = sub_1C4BB9500();
      LOBYTE(v81) = v77;
      sub_1C4EFB658();
      sub_1C4432BAC();
      sub_1C44260F0();
      *(&v82 + 1) = MEMORY[0x1E69E63B0];
      v83 = MEMORY[0x1E69A0160];
      *&v81 = v3;
      sub_1C4EFB658();
      sub_1C4432BAC();
      sub_1C44260F0();
      *(&v82 + 1) = v55;
      v83 = MEMORY[0x1E69A0178];
      *&v81 = 1;
      sub_1C4EFB658();
      sub_1C4432BAC();
      sub_1C4EFB638();
      v75(v71, v56, v78);
      sub_1C4EFBC88();
      v57 = v76;
      sub_1C4EFBEE8();
      if (!v57)
      {
        sub_1C440E3C8();
        v59();
        v60 = v67;
        sub_1C43FCF64();
        sub_1C440BAA8(v61, v62, v63, v65);
        sub_1C4EFC0A8();
        sub_1C4423A0C(v60, &unk_1EC0C06C0, &unk_1C4F10DB0);

        sub_1C4EFBF18();

        goto LABEL_14;
      }

      sub_1C440E3C8();
      v58();
    }

    goto LABEL_14;
  }

  (*(v76 + 8))(v28, v79);
LABEL_14:
  sub_1C44109F8();
}

void sub_1C4BB91E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1C440101C();
  v14 = sub_1C43FCDF8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  swift_unownedRetainStrong();
  v22 = sub_1C4440C6C(a4);

  if (!v5)
  {
    v23 = *(v22 + 272);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C4F0CE60;
    if (a3 >> 60 == 15)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      *(v24 + 48) = 0;
    }

    else
    {
      v28 = MEMORY[0x1E699FD70];
      v27 = MEMORY[0x1E6969080];
      v25 = a2;
      v26 = a3;
    }

    *(v24 + 32) = v25;
    *(v24 + 40) = v26;
    v29 = MEMORY[0x1E69E6530];
    *(v24 + 56) = v27;
    *(v24 + 64) = v28;
    v30 = MEMORY[0x1E69A0180];
    *(v24 + 96) = v29;
    *(v24 + 104) = v30;
    *(v24 + 72) = a1;
    sub_1C4431E64(a2, a3);
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v16 + 8))(v21, v13);
    sub_1C43FCF64();
    sub_1C440BAA8(v31, v32, v33, v13);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v4, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
}

uint64_t sub_1C4BB9410()
{
  sub_1C4EFBE98();
  if (!v0)
  {
    v1 = sub_1C4EFBE98();
    sub_1C4EFBE98();
  }

  return v1;
}

unint64_t sub_1C4BB9500()
{
  result = qword_1EDDF9D80;
  if (!qword_1EDDF9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D80);
  }

  return result;
}

unint64_t sub_1C4BB9554()
{
  result = qword_1EDDF9D70;
  if (!qword_1EDDF9D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D70);
  }

  return result;
}

uint64_t sub_1C4BB95A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BD330, &qword_1C4F2DAF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4BB9618()
{
  result = qword_1EC0C45F8;
  if (!qword_1EC0C45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C45F8);
  }

  return result;
}

unint64_t sub_1C4BB966C()
{
  result = qword_1EDDF8830;
  if (!qword_1EDDF8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8830);
  }

  return result;
}

_BYTE *_s11SourceStateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BB97A0()
{
  result = qword_1EC0C4600;
  if (!qword_1EC0C4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4600);
  }

  return result;
}

unint64_t sub_1C4BB97F8()
{
  result = qword_1EDDF8848;
  if (!qword_1EDDF8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8848);
  }

  return result;
}

unint64_t sub_1C4BB9850()
{
  result = qword_1EDDF8850;
  if (!qword_1EDDF8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8850);
  }

  return result;
}

void sub_1C4BB98B0()
{
  sub_1C43FE96C();
  v3 = v2;
  v35 = v4;
  v6 = v5;
  v8 = v7;
  v34 = v9;
  v10 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C440101C();
  v15 = sub_1C43FCDF8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  swift_unownedRetainStrong();
  v23 = sub_1C4440C6C(v3);

  if (!v1)
  {
    v24 = *(v23 + 120);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1C4F0C890;
    v26 = MEMORY[0x1E69E6530];
    v27 = MEMORY[0x1E69A0180];
    *(v25 + 56) = MEMORY[0x1E69E6530];
    *(v25 + 64) = v27;
    *(v25 + 32) = v34;
    if (v35)
    {
      v28 = MEMORY[0x1E69A0138];
      v29 = MEMORY[0x1E69E6158];
      v30 = v35;
    }

    else
    {
      v6 = 0;
      v30 = 0;
      v29 = 0;
      v28 = 0;
      *(v25 + 88) = 0;
    }

    *(v25 + 72) = v6;
    *(v25 + 80) = v30;
    *(v25 + 96) = v29;
    *(v25 + 104) = v28;
    *(v25 + 136) = v26;
    *(v25 + 144) = v27;
    *(v25 + 112) = v8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v17 + 8))(v22, v14);
    v31 = sub_1C44038D0();
    sub_1C440FD0C(v31, v32, v33, v14);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4BB9AC8(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  swift_unownedRetainStrong();
  v9 = sub_1C4440C6C(a1);

  if (!v1)
  {
    v10 = *(v9 + 152);

    v11 = sub_1C4EFB768();
    sub_1C440BAA8(v8, 1, 1, v11);
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_1C43FE99C();
    v9 = sub_1C4EFB988();

    sub_1C4423A0C(v13, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v8, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return v9;
}

uint64_t sub_1C4BB9C24()
{
  v1 = 0xE000000000000000;
  *&v14 = 0;
  *(&v14 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  v13 = v14;
  MEMORY[0x1C6940010](0xD000000000000010, 0x80000001C4FB6B60);
  *&v14 = *v0;
  v2 = sub_1C4F02858();
  MEMORY[0x1C6940010](v2);

  MEMORY[0x1C6940010](0x203A652027, 0xE500000000000000);
  v3 = sub_1C4CC2358(*(v0 + 8));
  MEMORY[0x1C6940010](v3);

  MEMORY[0x1C6940010](0x203A72726520, 0xE600000000000000);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  if (v4)
  {
    v6 = *(v0 + 24);
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v1 = *(v0 + 32);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v6, v1);

  v7 = 0xE400000000000000;
  MEMORY[0x1C6940010](540696864, 0xE400000000000000);
  *&v14 = *(v0 + 16);
  v8 = sub_1C4F02858();
  MEMORY[0x1C6940010](v8);

  MEMORY[0x1C6940010](0x736E6F6974706F20, 0xEA0000000000203ALL);
  *&v14 = *(v0 + 40);
  sub_1C43FC9C4();
  MEMORY[0x1C6940010](0x203A637420, 0xE500000000000000);
  if (*(v0 + 48))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if ((*(v0 + 48) & 1) == 0)
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v9, v7);

  MEMORY[0x1C6940010](0x203A6570797420, 0xE700000000000000);
  LOBYTE(v14) = *(v0 + 49);
  sub_1C43FC9C4();
  MEMORY[0x1C6940010](0x72616D6B6F6F6220, 0xEB00000000203A6BLL);
  v14 = *(v0 + 56);
  v12[1] = *(v0 + 56);
  sub_1C4BB95A8(&v14, v12);
  sub_1C456902C(&qword_1EC0BD330, &qword_1C4F2DAF0);
  v10 = sub_1C4F01198();
  MEMORY[0x1C6940010](v10);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return v13;
}

uint64_t sub_1C4BB9EE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564724F77656976 && a2 == 0xED00006449646572;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5364656C62616E65 && a2 == 0xED00007375746174;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4374706D65747461 && a2 == 0xEC000000746E756FLL;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x724373656C626174 && a2 == 0xED00006465746165;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6570795466666964 && a2 == 0xE800000000000000;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4BBA188(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C4610, &unk_1C4F5A9C0);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21[-v11 - 8];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C44429A8();
  sub_1C4F02BF8();
  v14 = *v3;
  LOBYTE(v22) = 0;
  sub_1C43FDF6C();
  sub_1C4F027D8();
  if (!v2)
  {
    LOBYTE(v22) = *(v3 + 8);
    v21[0] = 1;
    sub_1C4BBB954();
    sub_1C43FDF6C();
    sub_1C4F027E8();
    v15 = v3[2];
    LOBYTE(v22) = 2;
    sub_1C43FDF6C();
    sub_1C4F027D8();
    v16 = v3[3];
    v17 = v3[4];
    LOBYTE(v22) = 3;
    sub_1C4F02738();
    *&v22 = v3[5];
    v21[0] = 4;
    sub_1C4BBB9A8();
    sub_1C43FDF6C();
    sub_1C4F027E8();
    v18 = *(v3 + 48);
    LOBYTE(v22) = 5;
    sub_1C43FDF6C();
    sub_1C4F027A8();
    LOBYTE(v22) = *(v3 + 49);
    v21[0] = 6;
    sub_1C4BBB9FC();
    sub_1C43FDF6C();
    sub_1C4F027E8();
    v22 = *(v3 + 7);
    v23 = v22;
    v21[23] = 7;
    sub_1C4BB95A8(&v23, v21);
    sub_1C446E5F8();
    sub_1C43FDF6C();
    sub_1C4F02778();
    sub_1C441DFEC(v22, *(&v22 + 1));
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1C4BBA40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BB9EE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BBA434(uint64_t a1)
{
  v2 = sub_1C44429A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BBA470(uint64_t a1)
{
  v2 = sub_1C44429A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BBA4C8()
{
  sub_1C4BBBA50();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4BBA5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4BBBAA4();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void sub_1C4BBA67C()
{
  sub_1C43FE96C();
  v2 = v1;
  v45 = v3;
  v5 = v4;
  v7 = v6;
  v48 = v8;
  v9 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v42 - v13;
  v14 = sub_1C4EFBC98();
  v15 = sub_1C43FCDF8(v14);
  v46 = v16;
  v47 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v44 = sub_1C4EFB678();
  v22 = sub_1C43FCDF8(v44);
  v24 = v23;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v22);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v42 - v30;
  v32 = v5 & 1;
  if ((v2 & 1) == 0)
  {
    v32 = v5 & 1 | 2;
  }

  v43 = v32;
  sub_1C4EFB648();
  sub_1C4EFB638();
  v33 = MEMORY[0x1E69E6530];
  v34 = MEMORY[0x1E69A0178];
  v51 = MEMORY[0x1E69E6530];
  v52 = MEMORY[0x1E69A0178];
  v49 = v7;
  sub_1C4EFB658();
  sub_1C44338B8();
  sub_1C4EFB638();
  v51 = v33;
  v52 = v34;
  v49 = 0;
  sub_1C4EFB658();
  sub_1C44338B8();
  sub_1C4EFB638();
  v51 = v33;
  v52 = v34;
  v49 = v43;
  sub_1C4EFB658();
  sub_1C44338B8();
  sub_1C4EFB638();
  v35 = 0x6E61684377656976;
  if (v45)
  {
    v35 = 0x4F64657461647075;
    v36 = 0xED00007463656A62;
  }

  else
  {
    v36 = 0xEB00000000646567;
  }

  v49 = v35;
  v50 = v36;
  sub_1C4415EA8();
  sub_1C4EFB668();

  sub_1C4EFB638();
  (*(v24 + 32))(v29, v31, v44);
  sub_1C4EFBC88();
  sub_1C4EFBEE8();
  (*(v46 + 8))(v21, v47);
  if (!v0)
  {
    sub_1C4EFB768();
    v37 = v42;
    v38 = sub_1C44038D0();
    sub_1C440FD0C(v38, v39, v40, v41);
    sub_1C4423A0C(v37, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4BBAA38()
{
  sub_1C43FE96C();
  v4 = v3;
  v6 = v5;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C440101C();
  v12 = sub_1C43FCDF8(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  sub_1C4405820();
  swift_unownedRetainStrong();
  sub_1C4440C6C(v4);
  sub_1C4402530();
  if (!v1)
  {
    v15 = *(v2 + 96);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E6530];
    *(v16 + 16) = xmmword_1C4F0D130;
    v18 = MEMORY[0x1E69A0180];
    *(v16 + 56) = v17;
    *(v16 + 64) = v18;
    *(v16 + 32) = v6;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v19 = sub_1C43FBF04();
    v20(v19);
    v21 = sub_1C44038D0();
    sub_1C440BAA8(v21, v22, v23, v11);
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_1C4EFB9A8();

    sub_1C4423A0C(v24, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4BBAC48()
{
  sub_1C43FE96C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1C440101C();
  v14 = sub_1C43FCDF8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C4405820();
  swift_unownedRetainStrong();
  sub_1C4440C6C(v4);
  sub_1C4402530();
  if (!v1)
  {
    v19 = *(v4 + 104);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C4F0CE60;
    v21 = MEMORY[0x1E69E6530];
    v22 = MEMORY[0x1E69A0180];
    *(v20 + 56) = MEMORY[0x1E69E6530];
    *(v20 + 64) = v22;
    *(v20 + 32) = v8;
    *(v20 + 96) = v21;
    *(v20 + 104) = v22;
    *(v20 + 72) = v6;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v16 + 8))(v2, v13);
    v23 = sub_1C44038D0();
    sub_1C440FD0C(v23, v24, v25, v13);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4BBADF4()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C440101C();
  v13 = sub_1C43FCDF8(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  sub_1C4405820();
  swift_unownedRetainStrong();
  sub_1C4440C6C(v3);
  sub_1C4402530();
  if (!v1)
  {
    v16 = *(v3 + 128);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E6370];
    v19 = MEMORY[0x1E69A0150];
    *(v17 + 16) = xmmword_1C4F0CE60;
    *(v17 + 56) = v18;
    *(v17 + 64) = v19;
    v20 = MEMORY[0x1E69E6530];
    *(v17 + 32) = v5 & 1;
    v21 = MEMORY[0x1E69A0180];
    *(v17 + 96) = v20;
    *(v17 + 104) = v21;
    *(v17 + 72) = v7;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v22 = sub_1C43FBF04();
    v23(v22);
    v24 = sub_1C44038D0();
    sub_1C440FD0C(v24, v25, v26, v12);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4BBAFAC()
{
  sub_1C43FE96C();
  v3 = v2;
  v34 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1C440101C();
  v14 = sub_1C43FCDF8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  swift_unownedRetainStrong();
  v22 = sub_1C4440C6C(v3);

  if (!v1)
  {
    v23 = *(v22 + 136);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C4F0CE60;
    if (v34 >> 60 == 15)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      *(v24 + 48) = 0;
    }

    else
    {
      v28 = MEMORY[0x1E699FD70];
      v27 = MEMORY[0x1E6969080];
      v25 = v6;
      v26 = v34;
    }

    *(v24 + 32) = v25;
    *(v24 + 40) = v26;
    v29 = MEMORY[0x1E69E6530];
    *(v24 + 56) = v27;
    *(v24 + 64) = v28;
    v30 = MEMORY[0x1E69A0180];
    *(v24 + 96) = v29;
    *(v24 + 104) = v30;
    *(v24 + 72) = v8;
    sub_1C4431E64(v6, v34);
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v16 + 8))(v21, v13);
    v31 = sub_1C44038D0();
    sub_1C440FD0C(v31, v32, v33, v13);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4BBB1BC()
{
  sub_1C43FE96C();
  if (*(v0 + 64) >> 60 != 15)
  {
    v2 = *(v0 + 56);
    if (*(v0 + 49))
    {
      sub_1C44F92C4();
    }

    else
    {
      sub_1C4463B90();
    }

    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_1C43FCDF8(AssociatedTypeWitness);
    v5 = *(v4 + 64);
    sub_1C43FBC68();
    MEMORY[0x1EEE9AC00](v6);
    sub_1C4405820();
    v7 = sub_1C43FE99C();
    sub_1C44344B8(v7, v8);
    sub_1C43FE99C();
    sub_1C4BA9CC8();
    if (v1)
    {
      v9 = sub_1C43FE99C();
      sub_1C441DFEC(v9, v10);
    }

    else
    {
      v11 = *(swift_getAssociatedConformanceWitness() + 16);
      sub_1C4F00FB8();
      v12 = sub_1C43FE99C();
      sub_1C441DFEC(v12, v13);
      v14 = sub_1C43FBF04();
      v15(v14);
    }
  }

  sub_1C43FBC80();
}

void sub_1C4BBB34C()
{
  sub_1C43FE96C();
  v43 = v2;
  v3 = sub_1C4EFBC98();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C4405820();
  v9 = sub_1C4EFB678();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - v18;
  sub_1C4EFB648();
  sub_1C4EFB638();
  v38 = MEMORY[0x1E69E6530];
  v39 = MEMORY[0x1E69A0178];
  v37[0] = 0;
  sub_1C4EFB658();
  sub_1C4423A0C(v37, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C4EFB638();
  (*(v12 + 32))(v17, v19, v9);
  sub_1C4EFBC88();
  v20 = sub_1C4EFBEA8();
  if (v0)
  {
    (*(v6 + 8))(v1, v3);
  }

  else
  {
    v21 = v20;
    (*(v6 + 8))(v1, v3);
    v22 = sub_1C43FDF7C();
    v31 = sub_1C43FDF7C();
    v30 = sub_1C43FDF7C();
    v29 = sub_1C4EFBE98();
    v28 = sub_1C43FDF7C();
    v23 = sub_1C43FDF7C();
    v24 = sub_1C4EFBE98();

    *&v33 = v22;
    *(&v33 + 1) = v31;
    *&v34 = v30;
    *(&v34 + 1) = v29;
    *&v35 = v28;
    *(&v35 + 1) = v24;
    *&v36 = v23;
    *(&v36 + 1) = v21;
    v37[0] = v22;
    v37[1] = v31;
    v37[2] = v30;
    v38 = v29;
    v39 = v28;
    v40 = v24;
    v41 = v23;
    v42 = v21;
    sub_1C4BBB7D8(&v33, &v32);
    sub_1C4BBB810(v37);
    v25 = v34;
    *v43 = v33;
    v43[1] = v25;
    v26 = v36;
    v43[2] = v35;
    v43[3] = v26;
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4BBB850()
{
  result = qword_1EDDEAED0;
  if (!qword_1EDDEAED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAED0);
  }

  return result;
}

unint64_t sub_1C4BBB8A8()
{
  result = qword_1EDDEAED8;
  if (!qword_1EDDEAED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAED8);
  }

  return result;
}

unint64_t sub_1C4BBB900()
{
  result = qword_1EC0C4608;
  if (!qword_1EC0C4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4608);
  }

  return result;
}

unint64_t sub_1C4BBB954()
{
  result = qword_1EDDF9E40;
  if (!qword_1EDDF9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9E40);
  }

  return result;
}

unint64_t sub_1C4BBB9A8()
{
  result = qword_1EDDF8868[0];
  if (!qword_1EDDF8868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF8868);
  }

  return result;
}

unint64_t sub_1C4BBB9FC()
{
  result = qword_1EDDF8E00;
  if (!qword_1EDDF8E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8E00);
  }

  return result;
}

unint64_t sub_1C4BBBA50()
{
  result = qword_1EC0C4620;
  if (!qword_1EC0C4620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4620);
  }

  return result;
}

unint64_t sub_1C4BBBAA4()
{
  result = qword_1EDDF8860;
  if (!qword_1EDDF8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8860);
  }

  return result;
}

_BYTE *_s9ViewStateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BBBBE4()
{
  result = qword_1EC0C4628;
  if (!qword_1EC0C4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4628);
  }

  return result;
}

unint64_t sub_1C4BBBC3C()
{
  result = qword_1EC0C4630;
  if (!qword_1EC0C4630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4630);
  }

  return result;
}

unint64_t sub_1C4BBBC98()
{
  result = qword_1EC0C4638;
  if (!qword_1EC0C4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4638);
  }

  return result;
}

unint64_t sub_1C4BBBCF0()
{
  result = qword_1EC0C4640;
  if (!qword_1EC0C4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4640);
  }

  return result;
}

unint64_t sub_1C4BBBD48()
{
  result = qword_1EDDFDF48;
  if (!qword_1EDDFDF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDF48);
  }

  return result;
}

unint64_t sub_1C4BBBDA0()
{
  result = qword_1EDDFDF50;
  if (!qword_1EDDFDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDF50);
  }

  return result;
}

unint64_t sub_1C4BBBDF4()
{
  sub_1C4F02248();

  sub_1C4EF98F8();
  sub_1C449021C(&qword_1EDDFF9E8, MEMORY[0x1E6968FB0]);
  v0 = sub_1C4F02858();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000010;
}

void sub_1C4BBBF08()
{
  sub_1C43FE96C();
  v39 = v0;
  v40 = v1;
  v2 = sub_1C4EFB5A8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v42 = sub_1C4EFB5F8();
  v8 = sub_1C43FCDF8(v42);
  v41 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4BBC758();
  sub_1C4EFB5E8();
  v14 = *MEMORY[0x1E699FE90];
  v15 = *(v5 + 104);
  v16 = sub_1C4401068();
  v15(v16);
  sub_1C4432BC8();
  sub_1C4EFB5C8();
  v17 = *(v5 + 8);
  v18 = sub_1C43FD018();
  v17(v18);
  v19 = sub_1C4401068();
  v15(v19);
  sub_1C4432BC8();
  sub_1C4EFB5C8();
  v20 = sub_1C43FD018();
  v17(v20);
  v21 = sub_1C4401068();
  v15(v21);
  sub_1C4432BC8();
  sub_1C4EFB5C8();
  v22 = sub_1C43FD018();
  v17(v22);
  v23 = sub_1C4401068();
  v15(v23);
  sub_1C4432BC8();
  sub_1C4EFB5C8();
  v24 = sub_1C43FD018();
  v17(v24);
  v25 = sub_1C4401068();
  v15(v25);
  sub_1C4432BC8();
  sub_1C4EFB5C8();
  v26 = sub_1C43FD018();
  v17(v26);
  v27 = sub_1C4401068();
  v15(v27);
  sub_1C4432BC8();
  sub_1C4EFB5C8();
  v28 = sub_1C43FD018();
  v17(v28);
  v29 = *&v39[OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool];
  sub_1C449021C(&qword_1EDDFEDB0, type metadata accessor for ErrorHandlingDatabasePool);
  v30 = v40;
  v31 = sub_1C4EFB5D8();
  if (!v30)
  {
    MEMORY[0x1EEE9AC00](v31);
    *(&v38 - 2) = v13;
    sub_1C4418704(sub_1C4BC1B18, (&v38 - 4), v32, v33, v34, v35, v36, v37, v38, v39);
  }

  (*(v41 + 8))(v13, v42);
  sub_1C43FBC80();
}

uint64_t sub_1C4BBC318(uint64_t a1)
{
  result = sub_1C4418EA8(a1, &OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_initialFilterStatementCacheBacking, type metadata accessor for ViewDatabase.InitialFilterStatementCache, 32, sub_1C4BC0E28);
  if (!v1)
  {

    sub_1C4418EA8(a1, &OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_enqueueViewStatementCacheBacking, type metadata accessor for ViewDatabase.EnqueueViewStatementCache, 48, sub_1C4BC1004);

    sub_1C4418EA8(a1, &OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_statementCacheBacking, type metadata accessor for ViewDatabase.StatementCache, 488, sub_1C4BC11DC);
  }

  return result;
}

uint64_t sub_1C4BBC424()
{
  sub_1C4BBC4EC();
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_url;
  v2 = sub_1C4EF98F8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_config);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);

  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_statementCacheBacking);

  v6 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_initialFilterStatementCacheBacking);

  v7 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_enqueueViewStatementCacheBacking);

  v8 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_viewAccessStatementCacheBacking);

  v9 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_configCache);

  return v0;
}

uint64_t sub_1C4BBC4EC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_configCache);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  sub_1C4F00238();
  os_unfair_lock_unlock((v2 + 24));
  v4 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  sub_1C446C37C(sub_1C4BC1AE0, v1);
  v5 = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  return sub_1C4EFAEB8();
}

uint64_t sub_1C4BBC574()
{
  sub_1C4BBC424();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BBC5D4()
{
  result = sub_1C4EF98F8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Configuration();
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

uint64_t sub_1C4BBC6E4()
{
  if (qword_1EDDFF7A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C4BBC758()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  v5[2] = v1;
  v5[3] = v2;
  return sub_1C446C37C(sub_1C4BC1B34, v5);
}

uint64_t sub_1C4BBC7D0(uint64_t a1)
{
  v81 = a1;
  v67 = sub_1C4EFB078();
  v66 = *(v67 - 8);
  v1 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C4EFB0B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v68 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v64 = v59 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v69 = v59 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v70 = v59 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v71 = v59 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v72 = v59 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v73 = v59 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v74 = v59 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v59 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v75 = v59 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v59 - v27;
  v29 = sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
  v30 = *(v4 + 72);
  v85 = v4;
  v31 = *(v4 + 80);
  v79 = v29;
  v76 = ((v31 + 32) & ~v31) + 2 * v30;
  v32 = swift_allocObject();
  v77 = xmmword_1C4F0CE60;
  *(v32 + 16) = xmmword_1C4F0CE60;
  v78 = (v31 + 32) & ~v31;
  sub_1C4EFB058();
  sub_1C4EFB0A8();
  *&v82 = v32;
  v33 = sub_1C449021C(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
  v34 = sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  v35 = sub_1C4829BD0();
  sub_1C4F020C8();
  v36 = v80;
  sub_1C4EFBFC8();
  if (v36)
  {
    return (*(v85 + 8))(v28, v3);
  }

  v62 = v24;
  v38 = *(v85 + 8);
  v85 += 8;
  v80 = v38;
  v38(v28, v3);
  v39 = swift_allocObject();
  v63 = 0;
  v40 = v39;
  *(v39 + 16) = v77;
  sub_1C4EFB058();
  sub_1C4EFB0A8();
  *&v82 = v40;
  v41 = v75;
  sub_1C4F020C8();
  v42 = v63;
  sub_1C4EFBFC8();
  if (v42)
  {
    return (v80)(v41, v3);
  }

  v80(v41, v3);
  v43 = swift_allocObject();
  v63 = v30;
  v44 = v43;
  v60 = xmmword_1C4F0D130;
  *(v43 + 16) = xmmword_1C4F0D130;
  sub_1C4EFB058();
  *&v82 = v44;
  v45 = v62;
  v61 = v34;
  sub_1C4F020C8();
  v75 = "create_view_state";
  sub_1C4EFBFC8();
  v59[1] = v35;
  v59[2] = v33;
  v59[3] = v31;
  v46 = v80;
  v80(v45, v3);
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  sub_1C4EFBFA8();
  v75 = v3;
  sub_1C446F170(&v82, &qword_1EC0C5040, &qword_1C4F0F950);
  v47 = v74;
  sub_1C4EFB058();
  sub_1C4EFBFC8();
  v48 = v75;
  v46(v47, v75);
  v49 = swift_allocObject();
  *(v49 + 16) = v60;
  sub_1C4EFB058();
  *&v82 = v49;
  v50 = v73;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v46(v50, v48);
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  sub_1C4EFBFA8();
  sub_1C446F170(&v82, &qword_1EC0C5040, &qword_1C4F0F950);
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  sub_1C4EFBFA8();
  sub_1C446F170(&v82, &qword_1EC0C5040, &qword_1C4F0F950);
  v51 = swift_allocObject();
  *(v51 + 16) = v60;
  sub_1C4EFB058();
  *&v82 = v51;
  v52 = v72;
  v53 = v75;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v80(v52, v53);
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  sub_1C4EFBFA8();
  sub_1C446F170(&v82, &qword_1EC0C5040, &qword_1C4F0F950);
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  sub_1C4EFBFA8();
  sub_1C446F170(&v82, &qword_1EC0C5040, &qword_1C4F0F950);
  v54 = swift_allocObject();
  *(v54 + 16) = v60;
  sub_1C4EFB058();
  *&v82 = v54;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v80(v71, v75);
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  sub_1C4EFBFA8();
  sub_1C446F170(&v82, &qword_1EC0C5040, &qword_1C4F0F950);
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  sub_1C4EFBFA8();
  sub_1C446F170(&v82, &qword_1EC0C5040, &qword_1C4F0F950);
  v55 = swift_allocObject();
  *(v55 + 16) = v60;
  sub_1C4EFB058();
  *&v82 = v55;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v80(v70, v75);
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  sub_1C4EFBFA8();
  sub_1C446F170(&v82, &qword_1EC0C5040, &qword_1C4F0F950);
  v56 = swift_allocObject();
  *(v56 + 16) = v77;
  sub_1C4EFB058();
  sub_1C4EFB0A8();
  *&v82 = v56;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v80(v69, v75);
  v57 = swift_allocObject();
  *(v57 + 16) = v60;
  sub_1C4EFB058();
  *&v82 = v57;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v80(v64, v75);
  sub_1C4EFB058();
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  sub_1C4EFBFB8();
  sub_1C446F170(&v82, &qword_1EC0C5040, &qword_1C4F0F950);
  (*(v66 + 8))(v65, v67);
  v58 = swift_allocObject();
  *(v58 + 16) = v77;
  sub_1C4EFB058();
  sub_1C4EFB0A8();
  *&v82 = v58;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  return (v80)(v68, v75);
}

uint64_t sub_1C4BBD8E0()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C4EFBDD8();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = *MEMORY[0x1E69A00D0];
  v10 = sub_1C4EFBF38();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1C440BAA8(v3, 0, 1, v10);
  sub_1C4EFB4F8();

  sub_1C446F170(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  return sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4BBDAFC()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C4EFBDD8();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = sub_1C4EFBF38();
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB4F8();

  sub_1C446F170(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBE08();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  return sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4BBDD38()
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
  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = sub_1C4EFBF38();
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB4F8();

  sub_1C446F170(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  return sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4BBE288()
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
  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = sub_1C4EFBF38();
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB4F8();

  sub_1C446F170(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBE08();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDB8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  return sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4BBE674()
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
  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = sub_1C4EFBF38();
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB4F8();

  sub_1C446F170(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBE08();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDB8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  return sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

void sub_1C4BBEB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v23 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &a9 - v25;
  v27 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  sub_1C4EFBE08();
  sub_1C4EFBE38();
  sub_1C44126D0();
  sub_1C4EFB498();
  sub_1C441392C();
  v29 = sub_1C4EFBF38();
  sub_1C440BAA8(v26, 1, 1, v29);
  sub_1C4EFB4F8();

  sub_1C446F170(v26, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  sub_1C44126D0();
  sub_1C44091EC();
  sub_1C4EFB498();

  sub_1C441392C();
  sub_1C4EFBE08();
  sub_1C44126D0();
  sub_1C4EFB498();

  sub_1C441392C();
  sub_1C4EFBDE8();
  sub_1C44126D0();
  sub_1C44091EC();
  sub_1C4EFB498();

  sub_1C441392C();
  sub_1C4EFBDE8();
  sub_1C44126D0();
  sub_1C4EFB498();

  sub_1C441392C();
  sub_1C4EFBDB8();
  sub_1C44126D0();
  sub_1C4EFB498();

  sub_1C441392C();
  sub_1C43FBC80();
}

uint64_t sub_1C4BBEDA8()
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
  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = sub_1C4EFBF38();
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB4F8();

  sub_1C446F170(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDE8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  return sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4BBF0DC()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v12 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  sub_1C4EFBE08();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBE08();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = *MEMORY[0x1E69A00C8];
  v10 = sub_1C4EFBF38();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1C440BAA8(v3, 0, 1, v10);
  sub_1C4EFB478();
  return sub_1C446F170(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4BBF2F8()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C4EFBE08();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = *MEMORY[0x1E69A00C8];
  v10 = sub_1C4EFBF38();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1C440BAA8(v3, 0, 1, v10);
  sub_1C4EFB4F8();

  sub_1C446F170(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDE8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v3, 1, 1, v10);
  sub_1C4EFB538();

  return sub_1C446F170(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4BBF574()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v12 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  sub_1C4EFBE08();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBE08();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C446F170(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = *MEMORY[0x1E69A00C8];
  v10 = sub_1C4EFBF38();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1C440BAA8(v3, 0, 1, v10);
  sub_1C4EFB478();
  return sub_1C446F170(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4BBF798()
{
  v1 = sub_1C4EFB078();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C4EFBF78();
  if (!v0)
  {
    sub_1C4EFB058();
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1C4EFBFB8();
    sub_1C446F170(v7, &qword_1EC0C5040, &qword_1C4F0F950);
    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_1C4BBF920()
{
  v0 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v6 - v2;
  sub_1C4EFBDD8();
  v4 = sub_1C4EFBE38();
  sub_1C440BAA8(v3, 0, 1, v4);
  sub_1C4EFB458();

  return sub_1C446F170(v3, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4BBFA9C()
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

uint64_t sub_1C4BBFB98(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v35 - v5;
  v7 = sub_1C4EFB768();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4EFB0B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB058();
  v37 = a1;
  sub_1C4EFBFC8();
  if (v1)
  {
    return (*(v13 + 8))(v16, v12);
  }

  (*(v13 + 8))(v16, v12);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  v35[0] = v8;
  v19 = *(v8 + 8);
  v18 = v8 + 8;
  v19(v11, v7);
  sub_1C456902C(&qword_1EC0C4658, &qword_1C4F5AEC8);
  v20 = *(v18 + 64);
  v21 = (*(v18 + 72) + 32) & ~*(v18 + 72);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C4F0D480;
  v35[1] = v22;
  v23 = v22 + v21;
  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v24 = swift_allocObject();
  v36 = xmmword_1C4F0CE60;
  v25 = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1E69A0138];
  *(v24 + 16) = xmmword_1C4F0CE60;
  *(v24 + 56) = v25;
  *(v24 + 64) = v26;
  *(v24 + 32) = 0x6E6F697461636F4CLL;
  *(v24 + 40) = 0xEF7365676E616843;
  *(v24 + 96) = v25;
  *(v24 + 104) = v26;
  *(v24 + 72) = 0x6E6F697461636F4CLL;
  *(v24 + 80) = 0xE800000000000000;
  sub_1C4EFB728();
  v27 = swift_allocObject();
  *(v27 + 16) = v36;
  *(v27 + 56) = v25;
  *(v27 + 64) = v26;
  strcpy((v27 + 32), "PersonChanges");
  *(v27 + 46) = -4864;
  *(v27 + 96) = v25;
  *(v27 + 104) = v26;
  *(v27 + 72) = 0x6E6F73726550;
  *(v27 + 80) = 0xE600000000000000;
  sub_1C4EFB728();
  v28 = swift_allocObject();
  *(v28 + 16) = v36;
  *(v28 + 56) = v25;
  *(v28 + 64) = v26;
  strcpy((v28 + 32), "EventChanges");
  *(v28 + 45) = 0;
  *(v28 + 46) = -5120;
  *(v28 + 96) = v25;
  *(v28 + 104) = v26;
  *(v28 + 72) = 0x746E657645;
  *(v28 + 80) = 0xE500000000000000;
  sub_1C4EFB728();
  v29 = swift_allocObject();
  *(v29 + 16) = v36;
  *(v29 + 56) = v25;
  v30 = MEMORY[0x1E69A0138];
  *(v29 + 32) = 0x6572617774666F53;
  *(v29 + 40) = 0xEF7365676E616843;
  *(v29 + 96) = v25;
  *(v29 + 104) = v30;
  *(v29 + 64) = v30;
  *(v29 + 72) = 0x6572617774666F53;
  *(v29 + 80) = 0xE800000000000000;
  sub_1C4EFB728();
  v37 = sub_1C4EFBE98();
  *&v36 = v20;
  v31 = v35[0] + 16;
  v32 = *(v35[0] + 16);
  v33 = 4;
  do
  {
    v34 = v31;
    v32(v6, v23, v7);
    sub_1C440BAA8(v6, 0, 1, v7);
    sub_1C4EFC0A8();
    sub_1C446F170(v6, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v23 += v36;
    --v33;
    v31 = v34;
  }

  while (v33);
  swift_setDeallocating();
  sub_1C49E17B8();
}

uint64_t sub_1C4BC0128()
{
  v0 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v6 - v2;
  sub_1C4EFBE08();
  v4 = sub_1C4EFBE38();
  sub_1C440BAA8(v3, 0, 1, v4);
  sub_1C4EFB498();

  sub_1C446F170(v3, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v3, 0, 1, v4);
  sub_1C4EFB498();

  return sub_1C446F170(v3, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4BC02C4()
{
  v0 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v6 - v2;
  sub_1C4EFBDB8();
  v4 = sub_1C4EFBE38();
  sub_1C440BAA8(v3, 0, 1, v4);
  sub_1C4EFB458();

  return sub_1C446F170(v3, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4BC03A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EFB5F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = *(v4 + 16);
  v18 = a2;
  v11(&v17 - v9, a2, v3);
  v12 = v19;
  v13 = sub_1C4EFB5B8();
  if (v12)
  {
    return (*(v4 + 8))(v10, v3);
  }

  v15 = v13;
  v19 = *(v4 + 8);
  result = v19(v10, v3);
  if (v15)
  {
    v11(v8, v18, v3);
    sub_1C4B62F60();
    v19(v8, v3);
    sub_1C4778114();
    swift_allocError();
    *v16 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C4BC0594()
{
  v1 = v0;
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2E088);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C43F8000, v3, v4, "ViewDatabase: clearing all tables", v5, 2u);
    MEMORY[0x1C6942830](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  return sub_1C446C37C(sub_1C4BC0698, 0);
}

uint64_t sub_1C4BC06EC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v23 - v7;
  v9 = sub_1C4EFB768();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C4EFBE58();
  if (!v2 && (result & 1) != 0)
  {
    v15 = sub_1C4EFBE98();
    v23[1] = a1;
    v23[2] = a2;
    v24 = 0;
    v16 = 0;
    v28 = (v10 + 8);
    v25 = xmmword_1C4F0D130;
LABEL_4:
    v17 = (&unk_1F43DCF20 + 16 * v16 + 40);
    while (++v16 != 3)
    {
      v18 = v15;
      v20 = *(v17 - 1);
      v19 = *v17;
      sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v21 = swift_allocObject();
      *(v21 + 16) = v25;
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = MEMORY[0x1E69A0138];
      *(v21 + 32) = v20;
      *(v21 + 40) = v19;
      v15 = v18;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB728();
      sub_1C4EFC088();
      (*v28)(v13, v9);
      sub_1C4EFBC58();
      sub_1C440BAA8(v8, 1, 1, v9);
      v27 = 0;
      memset(v26, 0, sizeof(v26));
      v22 = sub_1C4EFBC48();
      v17 += 2;
      sub_1C446F170(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
      sub_1C446F170(v8, &unk_1EC0C06C0, &unk_1C4F10DB0);
      if (v22)
      {

        v24 = 1;
        goto LABEL_4;
      }
    }

    if (v24)
    {
      sub_1C4BC0A2C();
    }
  }

  return result;
}

void sub_1C4BC0A2C()
{
  v1 = v0;
  v2 = sub_1C4EFB768();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFFAF0 != -1)
  {
LABEL_19:
    swift_once();
  }

  v7 = sub_1C4F00978();
  v28 = sub_1C442B738(v7, qword_1EDE2E088);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C43F8000, v8, v9, "ViewDatabase: resetDatabaseAndMigrations: starting...", v10, 2u);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  v11 = sub_1C46A9F90(0, 0, 0x656C626174, 0xE500000000000000);
  if (!v1)
  {
    v12 = v11;
    v25 = v6;
    v26 = v3;
    v27 = v2;
    v13 = v11 + 64;
    v14 = 1 << *(v11 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v6 = v15 & *(v11 + 64);
    v2 = (v14 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = 0;
    if (v6)
    {
      while (1)
      {
        v3 = v16;
LABEL_12:
        v17 = (*(v12 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v6)))));
        v18 = *v17;
        v19 = v17[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFBF68();
        v6 &= v6 - 1;

        v16 = v3;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v3 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v3 >= v2)
      {
        break;
      }

      v6 = *(v13 + 8 * v3);
      ++v16;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    v20 = v25;
    sub_1C4EFB758();
    sub_1C4EFBFF8();
    (*(v26 + 8))(v20, v27);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CF8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C43F8000, v21, v22, "ViewDatabase: resetDatabaseAndMigrations: completed.", v23, 2u);
      MEMORY[0x1C6942830](v23, -1, -1);
    }
  }
}

uint64_t sub_1C4BC0DB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_statementCacheBacking);
  *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_statementCacheBacking) = 0;

  v4 = *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_viewAccessStatementCacheBacking);
  *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_viewAccessStatementCacheBacking) = 0;

  v5 = *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_enqueueViewStatementCacheBacking);
  *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_enqueueViewStatementCacheBacking) = 0;

  v6 = *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_initialFilterStatementCacheBacking);
  *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_initialFilterStatementCacheBacking) = 0;
}

uint64_t sub_1C4BC0E28()
{
  sub_1C44038E0();
  v2 = *v0;
  v3 = sub_1C4EFBE98();
  if (v1)
  {

    sub_1C4402CD0();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v0[2] = v3;
    sub_1C43FE984();
    v4 = sub_1C441CE84();
    sub_1C44354B4();
    v0[3] = v4;
  }

  return sub_1C43FF5E8();
}

uint64_t sub_1C4BC0F14()
{
  sub_1C44038E0();
  v2 = *v0;
  v3 = sub_1C4EFBE98();
  if (v1)
  {

    sub_1C4402CD0();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v0[2] = v3;
    sub_1C43FE984();
    v4 = sub_1C441CE84();
    sub_1C44354B4();
    v0[3] = v4;
  }

  return sub_1C43FF5E8();
}

uint64_t sub_1C4BC1004()
{
  sub_1C44038E0();
  v2 = *v0;
  v3 = sub_1C4EFBE98();
  if (v1)
  {

    sub_1C4402CD0();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v0[2] = v3;
    v0[3] = sub_1C4417924();
    v0[4] = sub_1C4EFBE98();
    sub_1C43FE984();
    v5 = sub_1C441CE84();
    sub_1C44354B4();
    v0[5] = v5;
  }

  return sub_1C43FF5E8();
}

void *sub_1C4BC114C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t sub_1C4BC1184()
{
  sub_1C4BC114C();

  return swift_deallocClassInstance();
}

void sub_1C4BC11DC()
{
  sub_1C43FE96C();
  v2 = *v0;

  sub_1C4BB18D4(__src);
  if (v1)
  {

    sub_1C4402CD0();
    swift_deallocPartialClassInstance();
  }

  else
  {
    memcpy(v0 + 2, __src, 0x50uLL);

    sub_1C4BBB34C();
    v3 = v17;
    *(v0 + 6) = v16;
    *(v0 + 7) = v3;
    v4 = v19;
    *(v0 + 8) = v18;
    *(v0 + 9) = v4;

    v0[20] = sub_1C4BB7660();
    v0[21] = v5;

    sub_1C4BB76FC(v20);
    memcpy(v0 + 22, v20, 0x50uLL);

    v0[32] = sub_1C4BB9410();
    v0[33] = v6;
    v0[34] = v7;

    v0[35] = sub_1C4BB5004();
    v0[36] = v8;

    v0[37] = sub_1C4CE5A84();
    v0[38] = v9;
    v0[39] = v10;

    sub_1C4CE5B5C(v21);
    v11 = v21[1];
    *(v0 + 20) = v21[0];
    *(v0 + 21) = v11;
    v12 = v21[3];
    *(v0 + 22) = v21[2];
    *(v0 + 23) = v12;

    sub_1C4CE5E00();
    v13 = v21[5];
    *(v0 + 24) = v21[4];
    *(v0 + 25) = v13;
    v0[52] = v22;
    v0[53] = sub_1C4417924();
    v0[54] = sub_1C4417924();
    v0[56] = sub_1C4417924();
    v0[57] = sub_1C4417924();
    v0[55] = sub_1C4417924();
    v0[58] = sub_1C4417924();
    sub_1C43FE984();
    v0[59] = sub_1C441CE84();
    v14 = sub_1C4417924();

    v0[60] = v14;
  }

  sub_1C43FF5E8();
  sub_1C43FBC80();
}

void *sub_1C4BC17D4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v10 = v0[10];
  v9 = v0[11];

  v11 = v0[12];
  v12 = v0[13];
  v13 = v0[14];
  v14 = v0[15];
  v15 = v0[16];
  v16 = v0[17];
  v18 = v0[18];
  v17 = v0[19];

  v20 = v0[20];
  v19 = v0[21];

  v21 = v0[22];
  v22 = v0[23];
  v23 = v0[24];
  v24 = v0[25];
  v25 = v0[26];
  v26 = v0[27];
  v27 = v0[28];
  v28 = v0[29];
  v30 = v0[30];
  v29 = v0[31];

  v31 = v0[32];
  v32 = v0[33];
  v33 = v0[34];

  v35 = v0[35];
  v34 = v0[36];

  v36 = v0[37];
  v37 = v0[38];
  v38 = v0[39];

  v39 = v0[40];
  v40 = v0[41];
  v41 = v0[42];
  v42 = v0[43];
  v43 = v0[44];
  v44 = v0[45];
  v46 = v0[46];
  v45 = v0[47];

  v47 = v0[48];
  v48 = v0[49];
  v49 = v0[50];
  v50 = v0[51];
  v51 = v0[52];

  v52 = v0[53];

  v53 = v0[54];

  v54 = v0[55];

  v55 = v0[56];

  v56 = v0[57];

  v57 = v0[58];

  v58 = v0[59];

  v59 = v0[60];

  return v0;
}

uint64_t sub_1C4BC1A34()
{
  sub_1C4BC17D4();

  return swift_deallocClassInstance();
}

void sub_1C4BC1B7C()
{
  if (!qword_1EDDFCF78[0])
  {
    type metadata accessor for VectorDB.Config(255);
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, qword_1EDDFCF78);
    }
  }
}

uint64_t sub_1C4BC1BE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6573616261746164 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746567726174 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1701869940 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C4BC1D38(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C4698, &qword_1C4F5B010);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4509158();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = v3[1];
  v23[15] = 0;
  sub_1C4409190();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v23[14] = 1;
    sub_1C4409190();
    v18 = v3[4];
    v19 = v3[5];
    v23[13] = 2;
    sub_1C4409190();
    v20 = v3[6];
    v21 = v3[7];
    v23[12] = 3;
    sub_1C4409190();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1C4BC1EAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1752457584 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7463757274736E75 && a2 == 0xEC00000064657275;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F526D6F74737563 && a2 == 0xE900000000000077;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F527463656A626FLL && a2 == 0xE900000000000077;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6870617267627573 && a2 == 0xE800000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6264726F74636576 && a2 == 0xE800000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6570795466666964 && a2 == 0xE800000000000000;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x4F64657461647075 && a2 == 0xED00007463656A62;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000016 && 0x80000001C4F85FA0 == a2;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6154797469746E65 && a2 == 0xED0000676E696767;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001ALL && 0x80000001C4F85F60 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000010 && 0x80000001C4F85F80 == a2;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000021 && 0x80000001C4F85FC0 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_1C4F02938();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4BC233C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 1752457584;
      break;
    case 2:
      result = 0x7463757274736E75;
      break;
    case 3:
      v3 = 0x6D6F74737563;
      goto LABEL_10;
    case 4:
      v3 = 0x7463656A626FLL;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F52000000000000;
      break;
    case 5:
      result = 0x6870617267627573;
      break;
    case 6:
      result = 0x6E69646465626D65;
      break;
    case 7:
      result = 0x6264726F74636576;
      break;
    case 8:
      result = 0x6570795466666964;
      break;
    case 9:
      result = 0x4F64657461647075;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x6154797469746E65;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4BC24F8(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C4688, &qword_1C4F5B000);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4BC3718();
  sub_1C4F02BF8();
  __dst[0] = *v3;
  v56[0] = 0;
  sub_1C4BB2D2C();
  sub_1C4401078();
  sub_1C4F027E8();
  if (!v2)
  {
    v14 = *(v3 + 8);
    v15 = *(v3 + 16);
    __dst[0] = 1;
    sub_1C4F02798();
    v16 = *(v3 + 56);
    v17 = *(v3 + 40);
    v58 = *(v3 + 24);
    v59 = v17;
    v60 = v16;
    v65 = 2;
    sub_1C4BC39C4();
    sub_1C4401078();
    sub_1C4F02778();
    memcpy(__dst, (v3 + 64), sizeof(__dst));
    memcpy(v56, (v3 + 64), sizeof(v56));
    v64 = 3;
    sub_1C445FFF0(__dst, v55, &qword_1EC0C4680, &qword_1C4F5E660);
    sub_1C4BC3A18();
    sub_1C4401078();
    sub_1C4F02778();
    memcpy(v55, v56, sizeof(v55));
    sub_1C4420C3C(v55, &qword_1EC0C4680, &qword_1C4F5E660);
    v18 = sub_1C44338D4(*(v3 + 168), *(v3 + 176), *(v3 + 184), *(v3 + 192), *(v3 + 200), *(v3 + 208), *(v3 + 216));
    v52[0] = 4;
    sub_1C4BC3A6C(v18, v19);
    sub_1C4BC3ADC();
    sub_1C4401078();
    sub_1C4F02778();
    v20 = sub_1C4432BD4();
    sub_1C4BC376C(v20, v21);
    v22 = *(v3 + 240);
    v23 = *(v3 + 248);
    v24 = *(v3 + 250);
    v53[0] = *(v3 + 224);
    *&v53[1] = v22;
    BYTE10(v53[1]) = v24;
    WORD4(v53[1]) = v23;
    v52[0] = 5;
    sub_1C4BC3B30();
    sub_1C4401078();
    sub_1C4F02778();
    v25 = *(v3 + 272);
    v53[0] = *(v3 + 256);
    LOBYTE(v53[1]) = v25;
    v52[0] = 6;
    sub_1C4BC3B84();
    sub_1C4401078();
    sub_1C4F02778();
    v26 = _s6ConfigVMa();
    v27 = v26[11];
    LOBYTE(v53[0]) = 7;
    type metadata accessor for VectorDB.Config(0);
    sub_1C4BC3BD8(&qword_1EDDDBE20);
    sub_1C4F02778();
    LOBYTE(v53[0]) = *(v3 + v26[12]);
    v52[0] = 8;
    sub_1C4BBB9FC();
    sub_1C4401078();
    sub_1C4F02778();
    v28 = sub_1C442611C((v3 + v26[13]));
    v35 = sub_1C44338D4(v28, v29, v30, v31, v32, v33, v34);
    v52[0] = 9;
    sub_1C4BC3C1C(v35, v36);
    sub_1C4B8C734();
    sub_1C4401078();
    sub_1C4F02778();
    v37 = sub_1C4432BD4();
    sub_1C4BA83CC(v37, v38);
    v39 = v3 + v26[14];
    v40 = *(v39 + 16);
    v53[0] = *v39;
    LOBYTE(v53[1]) = v40;
    v52[0] = 10;
    sub_1C4BC3C6C();
    sub_1C4401078();
    sub_1C4F02778();
    v41 = v3 + v26[15];
    v42 = *(v41 + 16);
    v53[6] = *v41;
    v54 = v42;
    v63 = 11;
    sub_1C4BC3CC0();
    sub_1C4401078();
    sub_1C4F02778();
    v44 = v26[16];
    memcpy(v53, (v3 + v44), 0x58uLL);
    memcpy(v52, (v3 + v44), sizeof(v52));
    v62 = 12;
    sub_1C445FFF0(v53, v51, &qword_1EC0C4678, &unk_1C4F5C7F0);
    sub_1C4707E08();
    sub_1C4401078();
    sub_1C4F02778();
    memcpy(v51, v52, sizeof(v51));
    sub_1C4420C3C(v51, &qword_1EC0C4678, &unk_1C4F5C7F0);
    v45 = (v3 + v26[17]);
    v46 = *(v45 + 16);
    v49 = *v45;
    LOBYTE(v50) = v46;
    v61 = 13;
    sub_1C4BC3D14();
    sub_1C4401078();
    sub_1C4F02778();
    v47 = (v3 + v26[18]);
    v48 = v47[1];
    v49 = *v47;
    v50 = v48;
    v61 = 14;
    sub_1C4BC3D68();
    sub_1C4401078();
    sub_1C4F02778();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1C4BC2B1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(sub_1C456902C(&qword_1EC0C4668, "TZ\b") - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v77[-v7];
  v81 = sub_1C456902C(&qword_1EC0C4670, &qword_1C4F5AFF8);
  sub_1C43FCDF8(v81);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v77[-v14];
  v84 = _s6ConfigVMa();
  v16 = sub_1C43FBCE0(v84);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v77[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1[3];
  v21 = a1[4];
  v82 = a1;
  v22 = sub_1C4409678(a1, v20);
  sub_1C4BC3718();
  v80 = v15;
  sub_1C4F02BC8();
  v23 = v2;
  if (v2)
  {
    v83 = v2;
    LODWORD(v24) = 0;
    LODWORD(v8) = 0;
    v25 = 0;
    v26 = 0;
    sub_1C442D534();
  }

  else
  {
    v83 = v8;
    v79 = a2;
    v25 = v10;
    LOBYTE(v88[0]) = 0;
    sub_1C4BB2C30();
    v22 = v80;
    sub_1C4413948();
    sub_1C4F026C8();
    v48 = v85;
    *v85 = v89[0];
    LOBYTE(v89[0]) = 1;
    v26 = v10;
    *(v48 + 1) = sub_1C4F02678();
    *(v48 + 2) = v49;
    LOBYTE(v88[0]) = 2;
    sub_1C443C3D0();
    sub_1C4413948();
    sub_1C4F02658();
    v50 = *&v89[2];
    v51 = v89[1];
    *(v48 + 24) = v89[0];
    *(v48 + 40) = v51;
    *(v48 + 7) = v50;
    v93 = 3;
    sub_1C4BB1E10();
    sub_1C4413948();
    sub_1C4F02658();
    v23 = 0;
    memcpy(v48 + 64, v89, 0x68uLL);
    LOBYTE(v86) = 4;
    sub_1C4BB1DBC();
    sub_1C44126F0();
    sub_1C4F02658();
    v52 = *&v88[3];
    v53 = v88[1];
    *(v48 + 168) = v88[0];
    *(v48 + 184) = v53;
    *(v48 + 200) = v88[2];
    *(v48 + 27) = v52;
    LOBYTE(v86) = 5;
    sub_1C4BB1D68();
    sub_1C44126F0();
    sub_1C4F02658();
    v54 = *&v88[1];
    v55 = WORD4(v88[1]);
    v56 = BYTE10(v88[1]);
    *(v48 + 14) = v88[0];
    *(v48 + 30) = v54;
    v48[250] = v56;
    *(v48 + 124) = v55;
    LOBYTE(v86) = 6;
    sub_1C4BC3840();
    sub_1C44126F0();
    sub_1C4F02658();
    v57 = v88[1];
    *(v48 + 16) = v88[0];
    v48[272] = v57;
    type metadata accessor for VectorDB.Config(0);
    LOBYTE(v88[0]) = 7;
    sub_1C4BC3BD8(&qword_1EDDFEAF0);
    v24 = v83;
    sub_1C4F02658();
    v58 = v85;
    sub_1C4BC3894(v24, &v85[v84[11]]);
    LOBYTE(v86) = 8;
    sub_1C4442E20();
    sub_1C44126F0();
    sub_1C4F02658();
    v83 = 0;
    v58[v84[12]] = v88[0];
    LOBYTE(v86) = 9;
    sub_1C45096F8();
    sub_1C44126F0();
    v59 = v83;
    sub_1C4F02658();
    v83 = v59;
    if (!v59)
    {
      v63 = *&v88[3];
      v64 = &v85[v84[13]];
      v65 = v88[1];
      *v64 = v88[0];
      *(v64 + 1) = v65;
      *(v64 + 2) = v88[2];
      *(v64 + 6) = v63;
      LOBYTE(v86) = 10;
      sub_1C4BB1C6C();
      sub_1C440E874();
      v83 = 0;
      v66 = v88[1];
      v67 = &v85[v84[14]];
      *v67 = v88[0];
      v67[16] = v66;
      LOBYTE(v86) = 11;
      sub_1C4BB1C18();
      sub_1C440E874();
      v83 = 0;
      v68 = *&v88[1];
      v69 = &v85[v84[15]];
      *v69 = v88[0];
      *(v69 + 2) = v68;
      v92 = 12;
      sub_1C4707CC4();
      sub_1C440E874();
      v83 = 0;
      memcpy(&v85[v84[16]], v88, 0x58uLL);
      v91 = 13;
      sub_1C4BB1D14();
      sub_1C440E874();
      v83 = 0;
      v70 = v87;
      v71 = &v85[v84[17]];
      *v71 = v86;
      v71[16] = v70;
      v91 = 14;
      sub_1C4BB1CC0();
      sub_1C440E874();
      v83 = 0;
      v72 = sub_1C440FD38();
      v73(v72);
      v74 = v85;
      v75 = &v85[v84[18]];
      v76 = v87;
      *v75 = v86;
      v75[1] = v76;
      sub_1C4BC3904(v74, v79);
      sub_1C440962C(v82);
      return sub_1C4BC3968(v74);
    }

    v60 = sub_1C440FD38();
    v61(v60);
    v90 = 0;
    sub_1C440B4CC();
    sub_1C441A6A0();
    v78 = v62;
    LODWORD(v79) = 0;
  }

  v27 = v85;
  result = sub_1C440962C(v82);
  if (v24)
  {
    v29 = *(v27 + 2);

    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
LABEL_6:
    v30 = *(v27 + 5);
    v31 = *(v27 + 6);
    v32 = *(v27 + 7);
    result = sub_1C4BC37DC(*(v27 + 3), *(v27 + 4));
    if ((v25 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

  if (!v25)
  {
LABEL_7:
    if (v26)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  memcpy(v89, v27 + 64, 0x68uLL);
  result = sub_1C4420C3C(v89, &qword_1EC0C4680, &qword_1C4F5E660);
  if (v26)
  {
LABEL_8:
    v33 = *(v27 + 23);
    v34 = *(v27 + 24);
    v35 = *(v27 + 25);
    v36 = *(v27 + 26);
    v37 = *(v27 + 27);
    result = sub_1C4BC376C(*(v27 + 21), *(v27 + 22));
    if ((v23 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  if (!v23)
  {
LABEL_9:
    if (v22)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v44 = *(v27 + 30);
  v45 = v27[250];
  v46 = *(v27 + 124);
  result = sub_1C45E8E50(*(v27 + 28), *(v27 + 29));
  if (v22)
  {
LABEL_10:
    v38 = *(v27 + 33);

    if ((v78 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  if (!v78)
  {
LABEL_11:
    v39 = v84;
    if (v90)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v39 = v84;
  result = sub_1C4420C3C(&v27[v84[11]], &qword_1EC0C4668, "TZ\b");
  if (v90)
  {
LABEL_12:
    v40 = sub_1C442611C(&v27[v39[13]]);
    result = sub_1C4BA83CC(v40, v41);
    if ((v79 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  if (!v79)
  {
LABEL_13:
    if (v80)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v47 = *&v27[v39[14] + 8];

  if (v80)
  {
LABEL_14:
    v42 = &v27[v39[15]];
    v43 = v42[2];
    result = sub_1C45E8E50(*v42, v42[1]);
    if ((v81 & 1) == 0)
    {
      return result;
    }

LABEL_26:
    memcpy(v89, &v27[v39[16]], 0x58uLL);
    return sub_1C4420C3C(v89, &qword_1EC0C4678, &unk_1C4F5C7F0);
  }

LABEL_25:
  if (v81)
  {
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1C4BC353C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BC1BE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BC3564(uint64_t a1)
{
  v2 = sub_1C4509158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BC35A0(uint64_t a1)
{
  v2 = sub_1C4509158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BC35F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4BC3648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BC1EAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BC3670(uint64_t a1)
{
  v2 = sub_1C4BC3718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BC36AC(uint64_t a1)
{
  v2 = sub_1C4BC3718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C4BC3718()
{
  result = qword_1EDDFD620;
  if (!qword_1EDDFD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD620);
  }

  return result;
}

uint64_t sub_1C4BC376C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C4BC37DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1C4BC3840()
{
  result = qword_1EDDFF8D0;
  if (!qword_1EDDFF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF8D0);
  }

  return result;
}

uint64_t sub_1C4BC3894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4668, "TZ\b");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4BC3904(uint64_t a1, uint64_t a2)
{
  v4 = _s6ConfigVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4BC3968(uint64_t a1)
{
  v2 = _s6ConfigVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C4BC39C4()
{
  result = qword_1EDDE1218[0];
  if (!qword_1EDDE1218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE1218);
  }

  return result;
}

unint64_t sub_1C4BC3A18()
{
  result = qword_1EDDE3028[0];
  if (!qword_1EDDE3028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE3028);
  }

  return result;
}

uint64_t sub_1C4BC3A6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

unint64_t sub_1C4BC3ADC()
{
  result = qword_1EDDE29A8;
  if (!qword_1EDDE29A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE29A8);
  }

  return result;
}

unint64_t sub_1C4BC3B30()
{
  result = qword_1EDDE3240;
  if (!qword_1EDDE3240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE3240);
  }

  return result;
}

unint64_t sub_1C4BC3B84()
{
  result = qword_1EDDEAEE0;
  if (!qword_1EDDEAEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAEE0);
  }

  return result;
}

uint64_t sub_1C4BC3BD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VectorDB.Config(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4BC3C1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

unint64_t sub_1C4BC3C6C()
{
  result = qword_1EDDDD0C0;
  if (!qword_1EDDDD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDD0C0);
  }

  return result;
}

unint64_t sub_1C4BC3CC0()
{
  result = qword_1EDDE10A0;
  if (!qword_1EDDE10A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE10A0);
  }

  return result;
}

unint64_t sub_1C4BC3D14()
{
  result = qword_1EDDDF818[0];
  if (!qword_1EDDDF818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDDF818);
  }

  return result;
}

unint64_t sub_1C4BC3D68()
{
  result = qword_1EDDDC170;
  if (!qword_1EDDDC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC170);
  }

  return result;
}

_BYTE *_s6ConfigV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}