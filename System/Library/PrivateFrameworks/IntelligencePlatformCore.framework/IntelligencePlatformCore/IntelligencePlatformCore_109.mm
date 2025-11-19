uint64_t sub_1C4D9E2F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001C4FC81B0 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001C4FC8230 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1701667182 && a2 == 0xE400000000000000;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x646572705F656761 && a2 == 0xED00006574616369;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 6645601 && a2 == 0xE300000000000000;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001ALL && 0x80000001C4FC8A90 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000010 && 0x80000001C4FC8AB0 == a2;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000017 && 0x80000001C4FC81D0 == a2;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6E65727275437369 && a2 == 0xED00007265735574;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000012 && 0x80000001C4FC8130 == a2;
                                  if (v21 || (sub_1C4F02938() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x656D616E72657375 && a2 == 0xE800000000000000;
                                    if (v22 || (sub_1C4F02938() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0xD000000000000015 && 0x80000001C4FC85C0 == a2)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_1C4F02938();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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
      }
    }
  }
}

unint64_t sub_1C4D9E8A8(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x6D614E7473726966;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x614E796C696D6166;
      break;
    case 8:
      result = 0x6572705F656D616ELL;
      break;
    case 9:
      result = 1701667182;
      break;
    case 10:
      result = 0x646572705F656761;
      break;
    case 11:
      result = 6645601;
      break;
    case 12:
      v3 = 10;
      goto LABEL_19;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0x6E65727275437369;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x656D616E72657375;
      break;
    case 18:
      v3 = 5;
LABEL_19:
      result = v3 | 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4D9EADC()
{
  sub_1C43FE96C();
  v3 = v0;
  v4 = sub_1C456902C(&qword_1EC0C7268, &qword_1C4F72C68);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44058BC();
  sub_1C43FD870();
  sub_1C4DA2934();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C4EFF0C8();
  sub_1C440FFEC();
  sub_1C44CD3A0(v10, v11);
  sub_1C440C8D0();
  sub_1C4F027E8();
  if (!v1)
  {
    v12 = type metadata accessor for FAFamilyStructs.Person(0);
    v13 = v12[5];
    sub_1C4EFEEF8();
    sub_1C442DB24();
    sub_1C44CD3A0(v14, v15);
    sub_1C440A38C();
    sub_1C4F02778();
    v16 = v12[6];
    sub_1C4EFD548();
    sub_1C4420AD0();
    sub_1C44CD3A0(v17, v18);
    sub_1C440C8D0();
    sub_1C4F027E8();
    v19 = v12[7];
    type metadata accessor for Source();
    sub_1C4412A64();
    sub_1C44CD3A0(v20, v21);
    sub_1C440C8D0();
    sub_1C4F027E8();
    sub_1C4427014(v12[8]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v12[9]);
    sub_1C4405604(5);
    sub_1C4427014(v12[10]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v12[11]);
    sub_1C4405604(7);
    sub_1C4427014(v12[12]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v12[13]);
    sub_1C4405604(9);
    sub_1C4427014(v12[14]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v12[15]);
    sub_1C4405604(11);
    sub_1C4427014(v12[16]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v12[17]);
    sub_1C4405604(13);
    sub_1C4427014(v12[18]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v12[19]);
    sub_1C4405604(15);
    sub_1C4427014(v12[20]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v12[21]);
    sub_1C4405604(17);
    v22 = *(v3 + v12[22]);
    sub_1C456902C(&qword_1EC0C7188, &qword_1C4F729F8);
    sub_1C4DA2988(&qword_1EC0C7270, &qword_1EC0C71D8);
    sub_1C440C8D0();
    sub_1C4F02778();
  }

  (*(v6 + 8))(v2, v4);
  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4D9EF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v13 = v12;
  v95 = v14;
  v15 = sub_1C4EFEEF8();
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD230();
  v98 = v27;
  v28 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v28);
  v30 = *(v29 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBC74();
  v103 = v32;
  sub_1C43FBE44();
  v33 = sub_1C4EFF0C8();
  v34 = sub_1C43FCDF8(v33);
  v96 = v35;
  v97 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBCC4();
  v40 = v39 - v38;
  v41 = sub_1C456902C(&qword_1EC0C7250, &qword_1C4F72C60);
  sub_1C43FCDF8(v41);
  v43 = *(v42 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  v45 = sub_1C441B2EC();
  v46 = type metadata accessor for FAFamilyStructs.Person(v45);
  v47 = sub_1C43FBCE0(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v108 = *(v50 + 20);
  sub_1C43FCF64();
  sub_1C440BAA8(v51, v52, v53, v15);
  v100 = v46[6];
  sub_1C4EFD4C8();
  v54 = v46[7];
  if (qword_1EDDFED38 != -1)
  {
    sub_1C4432F50();
  }

  v55 = type metadata accessor for Source();
  sub_1C442B738(v55, qword_1EDDFD0F0);
  sub_1C441AC28();
  sub_1C448D30C(v56, v11 + v54, v57);
  v107 = v46[8];
  sub_1C4EFEE68();
  v106 = v46[10];
  sub_1C4EFE2C8();
  v105 = v46[12];
  sub_1C4EFEBF8();
  v104 = v46[14];
  sub_1C4EFEBA8();
  v102 = v46[16];
  sub_1C4EFE788();
  v101 = v46[18];
  sub_1C4EFE5D8();
  v99 = v46[20];
  sub_1C4EFEE18();
  v58 = v13[4];
  sub_1C4409678(v13, v13[3]);
  sub_1C4DA2934();
  sub_1C4F02BC8();
  if (v10)
  {
    sub_1C4429114();
    sub_1C4420C3C(v11 + v108, &qword_1EC0B9A08, &unk_1C4F107B0);
    v61 = sub_1C4EFD548();
    sub_1C43FBCE0(v61);
    (*(v62 + 8))(v11 + v100);
    sub_1C4409450();
    sub_1C4DA1E58(v11 + v54, v63);
    v64 = *(v18 + 8);
    v65 = sub_1C4401998(v107);
    v64(v65);

    v66 = sub_1C4401998(v106);
    v64(v66);

    v67 = sub_1C4401998(v105);
    v64(v67);

    v68 = sub_1C4401998(v104);
    v64(v68);

    v69 = sub_1C4401998(v102);
    v64(v69);

    v70 = sub_1C4401998(v101);
    v64(v70);

    v71 = sub_1C4401998(v99);
    v64(v71);
  }

  else
  {
    sub_1C440FFEC();
    sub_1C44CD3A0(v59, v60);
    sub_1C4F026C8();
    (*(v96 + 32))(v11, v40, v97);
    LOBYTE(a10) = 1;
    sub_1C442DB24();
    sub_1C44CD3A0(v72, v73);
    sub_1C4F02658();
    sub_1C444088C(v103, v11 + v108, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FE79C(4);
    sub_1C4416628();
    sub_1C4F026C8();
    v74 = *(v18 + 40);
    (v74)(v11 + v107, v98, v15);
    sub_1C4402038(5);
    v75 = sub_1C4F02618();
    sub_1C447E4E0(v75, v76, v46[9]);
    sub_1C43FE79C(6);
    sub_1C4416628();
    sub_1C4F026C8();
    sub_1C4415E34();
    v74();
    sub_1C4402038(7);
    v77 = sub_1C4F02618();
    sub_1C447E4E0(v77, v78, v46[11]);
    sub_1C43FE79C(8);
    sub_1C4416628();
    sub_1C4F026C8();
    sub_1C4415E34();
    v74();
    sub_1C4402038(9);
    v79 = sub_1C4F02618();
    sub_1C447E4E0(v79, v80, v46[13]);
    sub_1C43FE79C(10);
    sub_1C4416628();
    sub_1C4F026C8();
    sub_1C4415E34();
    v74();
    sub_1C4402038(11);
    v81 = sub_1C4F02618();
    v82 = (v11 + v46[15]);
    *v82 = v81;
    v82[1] = v83;
    sub_1C43FE79C(12);
    sub_1C4416628();
    sub_1C44169BC();
    sub_1C4F026C8();
    sub_1C4415E34();
    v74();
    v84 = sub_1C4423918(13);
    sub_1C447E4E0(v84, v85, v46[17]);
    sub_1C43FE79C(14);
    sub_1C4416628();
    sub_1C44169BC();
    sub_1C4F026C8();
    sub_1C4415E34();
    v74();
    v86 = sub_1C4423918(15);
    sub_1C447E4E0(v86, v87, v46[19]);
    sub_1C43FE79C(16);
    sub_1C4416628();
    sub_1C44169BC();
    sub_1C4F026C8();
    sub_1C4415E34();
    v74();
    v88 = sub_1C4423918(17);
    sub_1C447E4E0(v88, v89, v46[21]);
    sub_1C456902C(&qword_1EC0C7188, &qword_1C4F729F8);
    sub_1C4DA2988(&qword_1EC0C7260, &qword_1EC0C71D0);
    sub_1C44169BC();
    sub_1C4F02658();
    v90 = v46[22];
    v91 = sub_1C4427028();
    v92(v91);
    *(v11 + v90) = a10;
    sub_1C446C1D4();
    sub_1C448D30C(v11, v95, v93);
    sub_1C440962C(v13);
    sub_1C4413DD4();
    sub_1C4DA1E58(v11, v94);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D9FAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D9E2F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D9FB00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4D9E8A0();
  *a1 = result;
  return result;
}

uint64_t sub_1C4D9FB28(uint64_t a1)
{
  v2 = sub_1C4DA2934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D9FB64(uint64_t a1)
{
  v2 = sub_1C4DA2934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D9FBE8()
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v41 = type metadata accessor for FAFamilyStructs.Person(v6);
  v7 = sub_1C43FCDF8(v41);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = *(type metadata accessor for FAFamilyStructs.GroupRelationshipType(0) + 28);
  result = *(v1 + v18);
  if (result)
  {
    v20 = *(result + 16);
    if (v20)
    {
      v39 = v18;
      v40 = v1;
      v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v38 = result;
      v22 = result + v21;
      v23 = *(v9 + 72);
      v24 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C448D30C(v22, v17, type metadata accessor for FAFamilyStructs.Person);
        sub_1C4EFE548();
        v25 = sub_1C4EFEEF8();
        sub_1C440CBF4(v25);
        sub_1C444088C(v0, &v17[*(v41 + 20)], &qword_1EC0B9A08, &unk_1C4F107B0);
        v26 = sub_1C43FE99C();
        sub_1C448D30C(v26, v27, type metadata accessor for FAFamilyStructs.Person);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = *(v24 + 16);
          v32 = sub_1C43FCEC0();
          sub_1C458D47C(v32, v33, v34, v24);
          v24 = v35;
        }

        v29 = *(v24 + 16);
        v28 = *(v24 + 24);
        if (v29 >= v28 >> 1)
        {
          v36 = sub_1C43FCFE8(v28);
          sub_1C458D47C(v36, v29 + 1, 1, v24);
          v24 = v37;
        }

        *(v24 + 16) = v29 + 1;
        sub_1C44DD8B0(v14, v24 + v21 + v29 * v23, type metadata accessor for FAFamilyStructs.Person);
        sub_1C4413DD4();
        sub_1C4DA1E58(v17, v30);
        v22 += v23;
        --v20;
      }

      while (v20);

      v18 = v39;
      v1 = v40;
    }

    else
    {

      v24 = MEMORY[0x1E69E7CC0];
    }

    *(v1 + v18) = v24;
  }

  return result;
}

void sub_1C4D9FE44()
{
  sub_1C43FE628();
  v3 = v1;
  v182 = v0;
  v5 = v4;
  v172 = v6;
  v177 = v7;
  v184 = v8;
  v9 = sub_1C4EFF0C8();
  v10 = sub_1C43FCDF8(v9);
  v175 = v11;
  v176 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD2D8();
  v166 = v14;
  v15 = sub_1C43FBE44();
  v16 = type metadata accessor for EntityTriple(v15);
  v170 = sub_1C43FCDF8(v16);
  v171 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v170);
  sub_1C43FBFDC();
  v167 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD230();
  v162 = v22;
  v23 = sub_1C43FBE44();
  v160 = type metadata accessor for FAFamilyStructs.Person(v23);
  v24 = sub_1C43FCDF8(v160);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  sub_1C441B2EC();
  v179 = sub_1C4EFD548();
  v29 = sub_1C43FCDF8(v179);
  v174 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD2D8();
  v173 = v33;
  sub_1C43FBE44();
  v34 = sub_1C4EFF8A8();
  v180 = sub_1C43FCDF8(v34);
  v181 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v180);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v150 - v39;
  v41 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v42 = sub_1C43FBD18(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v150 - v46;
  v48 = sub_1C4EFEEF8();
  v49 = sub_1C43FCDF8(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v150 - v55;
  v183 = *v5;
  v57 = v182;
  v59 = v58;
  sub_1C445FFA8(v182, v47, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (sub_1C44157D4(v47, 1, v59) == 1)
  {
    sub_1C4420C3C(v47, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    sub_1C43FFB2C();
    sub_1C43FE7A8(v60, 2);
LABEL_25:
    sub_1C44109F8();
    return;
  }

  v61 = *(v51 + 32);
  v168 = v56;
  v178 = v59;
  v157 = v51 + 32;
  v159 = v61;
  v61(v56, v47, v59);
  v62 = type metadata accessor for FAFamilyStructs.GroupRelationshipType(0);
  v63 = *(v174 + 16);
  v158 = *(v62 + 20);
  v63(v173, v57 + v158, v179);
  v169 = v40;
  sub_1C4EFF838();
  v186 = MEMORY[0x1E69E7CC0];
  v174 = v62;
  v64 = *(v57 + *(v62 + 28));
  v161 = v51;
  if (!v64)
  {
    v179 = MEMORY[0x1E69E7CC0];
    v67 = v177;
LABEL_19:
    v108 = v179;
    v109 = v180;
    v2 = v167;
    v110 = v168;
    v111 = v169;
    v112 = v161;
    if (*(v179 + 16))
    {
      (*(v175 + 16))(v167, v172, v176);
      v179 = v108;
      v113 = v109;
      v114 = v170;
      (*(v112 + 16))(v2 + *(v170 + 20), v110, v178);
      (*(v181 + 16))(v2 + v114[6], v111, v113);
      v115 = v2 + v114[7];
      sub_1C4EFEBB8();
      v116 = sub_1C4EFD2F8();
      v118 = v117;
      v119 = *(v174 + 24);
      v120 = v114[9];
      sub_1C441AC28();
      sub_1C448D30C(v57 + v121, v2 + v122, v123);
      sub_1C4EF9AE8();
      v124 = (v2 + v114[8]);
      *v124 = v116;
      v124[1] = v118;
      v125 = (v2 + v114[10]);
      *v125 = v184;
      v125[1] = v67;
      *(v2 + v114[11]) = v126;
      *(v2 + v114[12]) = v183;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v66 = v179;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_28:
        v141 = *(v66 + 16);
        v142 = sub_1C43FCEC0();
        sub_1C44C9240(v142, v143, v144, v66);
        v66 = v145;
      }

      v128 = *(v66 + 16);
      v127 = *(v66 + 24);
      v129 = v178;
      v130 = v180;
      v131 = v169;
      if (v128 >= v127 >> 1)
      {
        sub_1C43FCFE8(v127);
        sub_1C4460700();
        sub_1C44C9240(v146, v147, v148, v66);
        v66 = v149;
      }

      (*(v181 + 8))(v131, v130);
      v132 = sub_1C4440EC4();
      v133(v132, v129);
      *(v66 + 16) = v128 + 1;
      sub_1C43FBF6C();
      v135 = *(v134 + 72);
      sub_1C440838C();
      sub_1C44DD8B0(v2, v136, v137);
    }

    else
    {
      (*(v181 + 8))(v169, v180, v176);
      (*(v112 + 8))(v110, v178);
    }

    goto LABEL_25;
  }

  v65 = 0;
  v66 = *(v64 + 16);
  v173 = (v175 + 16);
  v156 = (v51 + 16);
  v155 = (v181 + 16);
  v154 = (v175 + 32);
  v153 = (v181 + 32);
  v179 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v67 = v177;
    while (1)
    {
      if (v66 == v65)
      {
        v57 = v182;
        goto LABEL_19;
      }

      if (v65 >= *(v64 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v68 = v64 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v69 = *(v26 + 72);
      sub_1C446C1D4();
      sub_1C448D30C(v70, v2, v71);
      v185 = v183;
      sub_1C4D9D644();
      if (v3)
      {
        sub_1C4413DD4();
        sub_1C4DA1E58(v2, v138);
        (*(v181 + 8))(v169, v180);
        v139 = sub_1C4440EC4();
        v140(v139, v178);

        goto LABEL_25;
      }

      if (*(v72 + 16))
      {
        break;
      }

      sub_1C4413DD4();
      sub_1C4DA1E58(v2, v73);

      ++v65;
    }

    v152 = v66;
    v74 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C49D3614(v74);
    (*v173)(v166, v172, v176);
    (*v156)(v163, v168, v178);
    (*v155)(v165, v169, v180);
    v75 = v164;
    sub_1C445FFA8(v2 + *(v160 + 20), v164, &qword_1EC0B9A08, &unk_1C4F107B0);
    if (sub_1C44157D4(v75, 1, v178) == 1)
    {
      break;
    }

    v179 = sub_1C4EFF048();
    v151 = v76;
    v77 = *(v174 + 24);
    v78 = v170;
    v79 = *(v170 + 36);
    sub_1C441AC28();
    v81 = v162;
    sub_1C448D30C(v182 + v80, v162 + v82, v83);
    sub_1C4EF9AE8();
    v85 = v84;
    (*v154)(v81, v166, v176);
    v159(v81 + v78[5], v163, v178);
    (*v153)(v81 + v78[6], v165, v180);
    v159(v81 + v78[7], v164, v178);
    v86 = (v81 + v78[8]);
    v87 = v151;
    *v86 = v179;
    v86[1] = v87;
    v88 = (v81 + v78[10]);
    *v88 = v184;
    v88[1] = v67;
    *(v81 + v78[11]) = v85;
    *(v81 + v78[12]) = v183;
    v89 = v186;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v179 = v89;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = *(v179 + 16);
      v99 = sub_1C43FCEC0();
      sub_1C44C9240(v99, v100, v101, v102);
      v179 = v103;
    }

    v91 = *(v179 + 16);
    v90 = *(v179 + 24);
    v66 = v152;
    if (v91 >= v90 >> 1)
    {
      sub_1C43FCFE8(v90);
      sub_1C4460700();
      sub_1C44C9240(v104, v105, v106, v179);
      v179 = v107;
    }

    ++v65;
    sub_1C4413DD4();
    sub_1C4DA1E58(v2, v92);
    v93 = v179;
    *(v179 + 16) = v91 + 1;
    sub_1C43FBF6C();
    v95 = *(v94 + 72);
    sub_1C440838C();
    sub_1C44DD8B0(v162, v96, v97);
    v186 = v93;
  }

  __break(1u);
}

uint64_t sub_1C4DA0890(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73614870756F7267 && a2 == 0xEC00000074726150)
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

uint64_t sub_1C4DA09F4(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0x73614870756F7267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4DA0A88()
{
  sub_1C440EDD4();
  v2 = sub_1C456902C(&qword_1EC0C7240, &qword_1C4F72C58);
  sub_1C43FCDF8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4DA2854();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB24();
  sub_1C44CD3A0(v8, v9);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F02778();
  if (!v0)
  {
    v10 = type metadata accessor for FAFamilyStructs.GroupRelationshipType(0);
    v11 = v10[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420AD0();
    sub_1C44CD3A0(v12, v13);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v14 = v10[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C4412A64();
    sub_1C44CD3A0(v15, v16);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v21 = *(v1 + v10[7]);
    sub_1C456902C(&qword_1EC0C7180, &qword_1C4F729E8);
    sub_1C4DA28A8(&qword_1EC0C7248, &qword_1EC0C7198);
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v17 = *(v4 + 8);
  v18 = sub_1C43FD024();
  return v19(v18);
}

void sub_1C4DA0CDC()
{
  sub_1C43FE96C();
  v3 = v2;
  v34 = v4;
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v35 = v9;
  v10 = sub_1C456902C(&qword_1EC0C7228, &qword_1C4F72C50);
  sub_1C43FCDF8(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4428F80();
  v15 = sub_1C43FBCE0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  sub_1C441B2EC();
  v18 = sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v19, v20, v21, v18);
  v22 = v1 + v14[5];
  sub_1C4EFD188();
  v23 = v14[6];
  if (qword_1EDDFED38 != -1)
  {
    sub_1C4432F50();
  }

  v24 = type metadata accessor for Source();
  sub_1C442B738(v24, qword_1EDDFD0F0);
  sub_1C441AC28();
  sub_1C448D30C(v25, v1 + v23, v26);
  v27 = v14[7];
  *(v1 + v27) = 0;
  v28 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4DA2854();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C442DB24();
    sub_1C44CD3A0(v29, v30);
    sub_1C43FE6CC();
    sub_1C4F02658();
    sub_1C444088C(v35, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C456902C(&qword_1EC0C7180, &qword_1C4F729E8);
    sub_1C4DA28A8(&qword_1EC0C7238, &qword_1EC0C7190);
    sub_1C4F02658();
    v31 = sub_1C445C2E8();
    v32(v31);
    *(v1 + v27) = v36;
    sub_1C448D30C(v1, v34, type metadata accessor for FAFamilyStructs.GroupRelationshipType);
  }

  sub_1C440962C(v3);
  sub_1C4404990();
  sub_1C4DA1E58(v1, v33);
  sub_1C43FBC80();
}

uint64_t sub_1C4DA1010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DA0890(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DA1038(uint64_t a1)
{
  v2 = sub_1C4DA2854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DA1074(uint64_t a1)
{
  v2 = sub_1C4DA2854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DA10F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000017 && 0x80000001C4FC8A70 == a2)
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

unint64_t sub_1C4DA12FC(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4DA13C8()
{
  sub_1C440EDD4();
  v1 = sub_1C456902C(&qword_1EC0C7208, &qword_1C4F72C38);
  sub_1C43FCDF8(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4DA27AC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C440FFEC();
  sub_1C44CD3A0(v7, v8);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F027E8();
  if (!v0)
  {
    v9 = type metadata accessor for FAFamilyStructs.GroupOfHumans(0);
    v10 = v9[5];
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C442DB24();
    sub_1C44CD3A0(v11, v12);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F02778();
    v13 = v9[6];
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C4420AD0();
    sub_1C44CD3A0(v14, v15);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v16 = v9[7];
    type metadata accessor for Source();
    sub_1C4412A64();
    sub_1C44CD3A0(v17, v18);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v19 = v9[8];
    type metadata accessor for FAFamilyStructs.IdentifierRelationshipType(0);
    sub_1C441D510();
    sub_1C44CD3A0(v20, v21);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F02778();
    v22 = v9[9];
    type metadata accessor for FAFamilyStructs.GroupRelationshipType(0);
    sub_1C442F524();
    sub_1C44CD3A0(v23, v24);
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v25 = *(v3 + 8);
  v26 = sub_1C43FD024();
  return v27(v26);
}

void sub_1C4DA1698()
{
  sub_1C43FE96C();
  v3 = v2;
  v71 = v4;
  v5 = sub_1C456902C(&qword_1EC0BD1B0, &unk_1C4F72950);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v72 = v9;
  v10 = sub_1C456902C(&qword_1EC0BD1B8, &unk_1C4F2D460);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v73 = v14;
  v15 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v15);
  v17 = *(v16 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBC74();
  v74 = v19;
  sub_1C43FBE44();
  v77 = sub_1C4EFF0C8();
  v20 = sub_1C43FCDF8(v77);
  v75 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v26 = v25 - v24;
  v27 = sub_1C456902C(&qword_1EC0C71F8, &qword_1C4F72C30);
  v76 = sub_1C43FCDF8(v27);
  v29 = *(v28 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  v31 = type metadata accessor for FAFamilyStructs.GroupOfHumans(0);
  v32 = sub_1C43FBCE0(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v36 = *(v35 + 20);
  v37 = sub_1C4EFEEF8();
  v82 = v36;
  sub_1C43FCF64();
  sub_1C440BAA8(v38, v39, v40, v37);
  v78 = v31[6];
  sub_1C4EFCF48();
  v41 = v31[7];
  if (qword_1EDDFED38 != -1)
  {
    sub_1C4432F50();
  }

  v42 = type metadata accessor for Source();
  sub_1C442B738(v42, qword_1EDDFD0F0);
  sub_1C441AC28();
  v79 = v41;
  sub_1C448D30C(v43, v1 + v41, v44);
  v45 = v31[8];
  v46 = type metadata accessor for FAFamilyStructs.IdentifierRelationshipType(0);
  v81 = v45;
  sub_1C43FCF64();
  sub_1C440BAA8(v47, v48, v49, v46);
  v50 = v31[9];
  v51 = type metadata accessor for FAFamilyStructs.GroupRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v52, v53, v54, v51);
  v55 = v3;
  v56 = v3[3];
  v57 = v3[4];
  v80 = v55;
  sub_1C4409678(v55, v56);
  sub_1C4DA27AC();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v80);
    sub_1C4420C3C(v1 + v82, &qword_1EC0B9A08, &unk_1C4F107B0);
    v60 = sub_1C4EFD548();
    sub_1C43FBCE0(v60);
    (*(v61 + 8))(v1 + v78);
    sub_1C4409450();
    sub_1C4DA1E58(v1 + v79, v62);
    sub_1C4420C3C(v1 + v81, &qword_1EC0BD1B8, &unk_1C4F2D460);
    sub_1C4420C3C(v1 + v50, &qword_1EC0BD1B0, &unk_1C4F72950);
  }

  else
  {
    sub_1C440FFEC();
    sub_1C44CD3A0(v58, v59);
    sub_1C43FE6CC();
    sub_1C441409C();
    sub_1C4F026C8();
    (*(v75 + 32))(v1, v26, v77);
    sub_1C442DB24();
    sub_1C44CD3A0(v63, v64);
    sub_1C441409C();
    sub_1C4F02658();
    sub_1C444088C(v74, v1 + v82, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441D510();
    sub_1C44CD3A0(v65, v66);
    sub_1C441409C();
    sub_1C4F02658();
    sub_1C444088C(v73, v1 + v81, &qword_1EC0BD1B8, &unk_1C4F2D460);
    sub_1C442F524();
    sub_1C44CD3A0(v67, v68);
    sub_1C441409C();
    sub_1C4F02658();
    v69 = sub_1C4433F54();
    v70(v69, v76);
    sub_1C444088C(v72, v1 + v50, &qword_1EC0BD1B0, &unk_1C4F72950);
    sub_1C448D30C(v1, v71, type metadata accessor for FAFamilyStructs.GroupOfHumans);
    sub_1C440962C(v80);
    sub_1C4DA1E58(v1, type metadata accessor for FAFamilyStructs.GroupOfHumans);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4DA1D1C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4DA1D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DA10F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DA1D98(uint64_t a1)
{
  v2 = sub_1C4DA27AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DA1DD4(uint64_t a1)
{
  v2 = sub_1C4DA27AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DA1E58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C4DA1F40()
{
  sub_1C4EFF0C8();
  if (v0 <= 0x3F)
  {
    sub_1C4DA2078(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    if (v1 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Source();
        if (v3 <= 0x3F)
        {
          sub_1C4DA2078(319, qword_1EDDE7ED0, type metadata accessor for FAFamilyStructs.IdentifierRelationshipType);
          if (v4 <= 0x3F)
          {
            sub_1C4DA2078(319, qword_1EDDE8028, type metadata accessor for FAFamilyStructs.GroupRelationshipType);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C4DA2078(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C4DA20F4()
{
  sub_1C4DA2078(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  sub_1C444C2A0();
  if (!(!v2 & v1))
  {
    sub_1C4EFD548();
    sub_1C444C2A0();
    if (!(!v2 & v1))
    {
      type metadata accessor for Source();
      sub_1C444C2A0();
      if (!(!v2 & v1))
      {
        sub_1C4EFEEF8();
        sub_1C444C2A0();
        if (!(!v2 & v1))
        {
          sub_1C4700EB8();
          if (v4 > 0x3F)
          {
            return v3;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

void sub_1C4DA222C()
{
  sub_1C4DA2078(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  if (v0 <= 0x3F)
  {
    sub_1C4EFD548();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Source();
      if (v2 <= 0x3F)
      {
        sub_1C487B8D4(319, &qword_1EDDDBCA8, &qword_1EC0C7180, &qword_1C4F729E8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C4DA233C()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    sub_1C4DA2078(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      v0 = sub_1C4EFD548();
      if (v4 <= 0x3F)
      {
        v0 = type metadata accessor for Source();
        if (v5 <= 0x3F)
        {
          v0 = sub_1C4EFEEF8();
          if (v6 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v8 > 0x3F)
            {
              return v7;
            }

            else
            {
              sub_1C487B8D4(319, &qword_1EDDDBCB0, &qword_1EC0C7188, &qword_1C4F729F8);
              v0 = v9;
              if (v10 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_1C4DA24C4(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD3A0(&qword_1EC0C7190, type metadata accessor for FAFamilyStructs.Person);
  result = sub_1C44CD3A0(&qword_1EC0C7198, type metadata accessor for FAFamilyStructs.Person);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DA2548(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD3A0(&qword_1EC0C71A0, type metadata accessor for FAFamilyStructs.GroupRelationshipType);
  result = sub_1C44CD3A0(&qword_1EC0C71A8, type metadata accessor for FAFamilyStructs.GroupRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DA25CC(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD3A0(&qword_1EC0C71B0, type metadata accessor for FAFamilyStructs.IdentifierRelationshipType);
  result = sub_1C44CD3A0(&qword_1EC0C71B8, type metadata accessor for FAFamilyStructs.IdentifierRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DA2650(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD3A0(&qword_1EC0C71C0, type metadata accessor for FAFamilyStructs.GroupOfHumans);
  result = sub_1C44CD3A0(&qword_1EC0C71C8, type metadata accessor for FAFamilyStructs.GroupOfHumans);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DA26D4(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD3A0(&qword_1EC0C71D0, type metadata accessor for FAFamilyStructs.AddressRelationshipType);
  result = sub_1C44CD3A0(&qword_1EC0C71D8, type metadata accessor for FAFamilyStructs.AddressRelationshipType);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4DA2758()
{
  result = qword_1EC0C71E8;
  if (!qword_1EC0C71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C71E8);
  }

  return result;
}

unint64_t sub_1C4DA27AC()
{
  result = qword_1EC0C7200;
  if (!qword_1EC0C7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7200);
  }

  return result;
}

unint64_t sub_1C4DA2800()
{
  result = qword_1EC0C7218;
  if (!qword_1EC0C7218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7218);
  }

  return result;
}

unint64_t sub_1C4DA2854()
{
  result = qword_1EC0C7230;
  if (!qword_1EC0C7230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7230);
  }

  return result;
}

uint64_t sub_1C4DA28A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C7180, &qword_1C4F729E8);
    sub_1C44CD3A0(a2, type metadata accessor for FAFamilyStructs.Person);
    result = sub_1C44254A0();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4DA2934()
{
  result = qword_1EC0C7258;
  if (!qword_1EC0C7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7258);
  }

  return result;
}

uint64_t sub_1C4DA2988(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C7188, &qword_1C4F729F8);
    sub_1C44CD3A0(a2, type metadata accessor for FAFamilyStructs.AddressRelationshipType);
    result = sub_1C44254A0();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FAFamilyStructs.Person.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FAFamilyStructs.Person.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FAFamilyStructs.GroupRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FAFamilyStructs.GroupOfHumans.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C4DA2D40(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4DA2E20()
{
  result = qword_1EC0C7278;
  if (!qword_1EC0C7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7278);
  }

  return result;
}

unint64_t sub_1C4DA2E78()
{
  result = qword_1EC0C7280;
  if (!qword_1EC0C7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7280);
  }

  return result;
}

unint64_t sub_1C4DA2ED0()
{
  result = qword_1EC0C7288;
  if (!qword_1EC0C7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7288);
  }

  return result;
}

unint64_t sub_1C4DA2F28()
{
  result = qword_1EC0C7290;
  if (!qword_1EC0C7290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7290);
  }

  return result;
}

unint64_t sub_1C4DA2F80()
{
  result = qword_1EC0C7298;
  if (!qword_1EC0C7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7298);
  }

  return result;
}

unint64_t sub_1C4DA2FD8()
{
  result = qword_1EC0C72A0;
  if (!qword_1EC0C72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72A0);
  }

  return result;
}

unint64_t sub_1C4DA3030()
{
  result = qword_1EC0C72A8;
  if (!qword_1EC0C72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72A8);
  }

  return result;
}

unint64_t sub_1C4DA3088()
{
  result = qword_1EC0C72B0;
  if (!qword_1EC0C72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72B0);
  }

  return result;
}

unint64_t sub_1C4DA30E0()
{
  result = qword_1EC0C72B8;
  if (!qword_1EC0C72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72B8);
  }

  return result;
}

unint64_t sub_1C4DA3138()
{
  result = qword_1EC0C72C0;
  if (!qword_1EC0C72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72C0);
  }

  return result;
}

unint64_t sub_1C4DA3190()
{
  result = qword_1EC0C72C8;
  if (!qword_1EC0C72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72C8);
  }

  return result;
}

unint64_t sub_1C4DA31E8()
{
  result = qword_1EC0C72D0;
  if (!qword_1EC0C72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72D0);
  }

  return result;
}

unint64_t sub_1C4DA3240()
{
  result = qword_1EC0C72D8;
  if (!qword_1EC0C72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72D8);
  }

  return result;
}

unint64_t sub_1C4DA3298()
{
  result = qword_1EC0C72E0;
  if (!qword_1EC0C72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72E0);
  }

  return result;
}

unint64_t sub_1C4DA32F0()
{
  result = qword_1EC0C72E8;
  if (!qword_1EC0C72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72E8);
  }

  return result;
}

void sub_1C4DA334C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v156 = v20;
  v24 = v23;
  v164 = v25;
  v27 = v26;
  v28 = sub_1C4F00DD8();
  v29 = sub_1C43FCDF8(v28);
  v157 = v30;
  v158 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD2D8();
  v153 = v33;
  sub_1C43FBE44();
  v34 = sub_1C4F00DC8();
  v35 = sub_1C43FCDF8(v34);
  v159 = v36;
  v160 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBFDC();
  v152 = v39;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD230();
  v154 = v41;
  sub_1C43FBE44();
  v42 = sub_1C4F01188();
  v43 = sub_1C43FCDF8(v42);
  v162 = v44;
  v163 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD2D8();
  v161 = v47;
  sub_1C43FBE44();
  v170 = sub_1C4EFD548();
  v48 = sub_1C43FCDF8(v170);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBFDC();
  v149 = v53;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v54);
  v56 = v137 - v55;
  v57 = sub_1C4EFF0C8();
  v58 = sub_1C43FCDF8(v57);
  v150 = v59;
  v151 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBFDC();
  v147 = v62;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FD230();
  v146 = v64;
  v65 = sub_1C43FBE44();
  v66 = type metadata accessor for FavoriteSportsTeamStructs.Person(v65);
  v67 = v66[5];
  v68 = sub_1C4EFEEF8();
  v148 = v67;
  sub_1C43FCF64();
  sub_1C440BAA8(v69, v70, v71, v68);
  v72 = v66[6];
  sub_1C4EFD4C8();
  v73 = (v27 + v66[7]);
  if (qword_1EDDFD240 != -1)
  {
    sub_1C43FE2C8();
  }

  v74 = type metadata accessor for Source();
  sub_1C442B738(v74, &qword_1EDDFD248);
  sub_1C441AC40();
  sub_1C448D364(v75, v73);
  v145 = v66[8];
  sub_1C4EFE5D8();
  v76 = (v27 + v66[9]);
  *v76 = 0;
  v76[1] = 0;
  v77 = v66[10];
  type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(0);
  v144 = v77;
  sub_1C43FCF64();
  sub_1C440BAA8(v78, v79, v80, v81);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v82 = sub_1C4F00978();
  v83 = sub_1C442B738(v82, qword_1EDE2DE10);
  v84 = *(v50 + 16);
  v143 = v50 + 16;
  v142 = v84;
  v84(v56, v27 + v72, v170);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v140 = v83;
  v85 = sub_1C4F00968();
  v86 = sub_1C4F01CB8();

  v87 = os_log_type_enabled(v85, v86);
  v165 = v27;
  v166 = v72;
  v155 = v50;
  if (v87)
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v139 = v73;
    v138 = v89;
    v167 = v89;
    *v88 = 136381187;
    v90 = v50;
    v91 = v164;
    *(v88 + 4) = sub_1C441D828(v164, v24, &v167);
    *(v88 + 12) = 2080;
    sub_1C44014FC();
    sub_1C44CD3E8(v92, v93);
    v137[3] = v86;
    v94 = v68;
    v95 = sub_1C4F02858();
    v97 = v96;
    v141 = *(v90 + 8);
    v141(v56, v170);
    sub_1C441D828(v95, v97, &v167);
    v68 = v94;

    sub_1C441D7D8();
    sub_1C4435DA8(&dword_1C43F8000, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", &v169);
    swift_arrayDestroy();
    v73 = v139;
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v141 = *(v50 + 8);
    v141(v56, v170);
    v91 = v164;
  }

  v98 = *v73;
  v99 = v73[1];
  v167 = v91;
  v168 = v24;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v98, v99);

  v100 = v167;
  v101 = v168;
  sub_1C4F01178();
  sub_1C4401EF4();
  sub_1C4F01148();
  v102 = sub_1C445FF58();
  v103(v102);
  if (v85 >> 60 == 15)
  {
    v104 = v73;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v105 = sub_1C4F00968();
    v106 = sub_1C4F01CD8();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v167 = v108;
      *v107 = 136380675;
      v109 = sub_1C441D828(v100, v101, &v167);

      *(v107 + 4) = v109;
      _os_log_impl(&dword_1C43F8000, v105, v106, "Source: failed to encode identifier as UTF8 data: %{private}s", v107, 0xCu);
      sub_1C440962C(v108);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    swift_allocError();
    *v131 = 5;
    swift_willThrow();
    v132 = v165;
    sub_1C4420C3C(v165 + v148, &qword_1EC0B9A08, &unk_1C4F107B0);
    v141((v132 + v166), v170);
    sub_1C4432F70();
    sub_1C4DA84F0(v104, v133);
    (*(*(v68 - 8) + 8))(v132 + v145, v68);
    v134 = sub_1C4429108(&a15);
    sub_1C4420C3C(v134, v135, v136);
  }

  else
  {

    sub_1C440A3C4();
    sub_1C44CD3E8(v110, v111);
    v112 = v153;
    v113 = v158;
    sub_1C44158DC();
    sub_1C4F00DB8();
    v114 = sub_1C440DE18();
    sub_1C44344B8(v114, v115);
    v116 = sub_1C440DE18();
    v117 = v156;
    sub_1C4498FD8(v116, v118);
    v164 = v117;
    v119 = sub_1C440DE18();
    sub_1C441DFEC(v119, v120);
    v121 = v154;
    sub_1C44158DC();
    sub_1C4F00DA8();
    (*(v157 + 8))(v112, v113);
    v122 = v165;
    v142(v149, v165 + v166, v170);
    v123 = v159;
    v124 = v160;
    (*(v159 + 16))(v152, v121, v160);
    v125 = v147;
    sub_1C4EFF028();
    v126 = sub_1C440DE18();
    sub_1C441DFEC(v126, v127);
    (*(v123 + 8))(v121, v124);
    v128 = v151;
    v129 = *(v150 + 32);
    v130 = v146;
    v129(v146, v125, v151);
    v129(v122, v130, v128);
  }

  sub_1C43FBC80();
}

void sub_1C4DA3C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v167 = v20;
  v24 = v23;
  v176 = v25;
  v27 = v26;
  v28 = sub_1C4F00DD8();
  v29 = sub_1C43FCDF8(v28);
  v168 = v30;
  v169 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD2D8();
  v164 = v33;
  sub_1C43FBE44();
  v34 = sub_1C4F00DC8();
  v35 = sub_1C43FCDF8(v34);
  v170 = v36;
  v171 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBFDC();
  v163 = v39;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD230();
  v165 = v41;
  sub_1C43FBE44();
  v42 = sub_1C4F01188();
  v43 = sub_1C43FCDF8(v42);
  v173 = v44;
  v174 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD2D8();
  v172 = v47;
  sub_1C43FBE44();
  v48 = sub_1C4EFD548();
  v49 = sub_1C43FCDF8(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBFDC();
  v159 = v54;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v55);
  v57 = v147 - v56;
  v58 = sub_1C4EFF0C8();
  v59 = sub_1C43FCDF8(v58);
  v160 = v60;
  v161 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBFDC();
  v157 = v63;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FD230();
  v156 = v65;
  v66 = sub_1C43FBE44();
  v67 = type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(v66);
  v68 = v67[5];
  sub_1C4EFEEF8();
  v158 = v68;
  sub_1C43FCF64();
  v162 = v69;
  sub_1C440BAA8(v70, v71, v72, v69);
  v73 = v67[6];
  sub_1C4EFCED8();
  v74 = (v27 + v67[7]);
  if (qword_1EDDFD240 != -1)
  {
    sub_1C43FE2C8();
  }

  v75 = type metadata accessor for Source();
  sub_1C442B738(v75, &qword_1EDDFD248);
  sub_1C441AC40();
  sub_1C448D364(v76, v74);
  v155 = v67[8];
  sub_1C4EFEBF8();
  v77 = (v27 + v67[9]);
  *v77 = 0;
  v77[1] = 0;
  v154 = v67[10];
  sub_1C4EFEBC8();
  v78 = (v27 + v67[11]);
  *v78 = 0;
  v78[1] = 0;
  v79 = v67[12];
  type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(0);
  v153 = v79;
  sub_1C43FCF64();
  sub_1C440BAA8(v80, v81, v82, v83);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v84 = sub_1C4F00978();
  v85 = sub_1C442B738(v84, qword_1EDE2DE10);
  v86 = *(v51 + 16);
  v175 = v27;
  v152 = v51 + 16;
  v151 = v86;
  v86(v57, v27 + v73, v48);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v150 = v85;
  v87 = sub_1C4F00968();
  v88 = sub_1C4F01CB8();

  v89 = os_log_type_enabled(v87, v88);
  v180 = v48;
  v177 = v73;
  v166 = v51;
  if (v89)
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v149 = v74;
    v148 = v91;
    v178 = v91;
    *v90 = 136381187;
    v147[1] = v88;
    v92 = v176;
    *(v90 + 4) = sub_1C441D828(v176, v24, &v178);
    *(v90 + 12) = 2080;
    sub_1C44014FC();
    sub_1C44CD3E8(v93, v94);
    v95 = sub_1C4F02858();
    v97 = v96;
    v98 = sub_1C44343DC();
    (v51)(v98);
    sub_1C441D828(v95, v97, &v178);

    sub_1C441D7D8();
    sub_1C4435DA8(&dword_1C43F8000, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", &v179 + 4);
    swift_arrayDestroy();
    v74 = v149;
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v99 = sub_1C44343DC();
    (v51)(v99);
    v92 = v176;
  }

  v100 = *v74;
  v101 = v74[1];
  v178 = v92;
  v179 = v24;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v100, v101);

  v102 = v178;
  v103 = v179;
  sub_1C4F01178();
  sub_1C4401EF4();
  sub_1C4F01148();
  v104 = sub_1C445FF58();
  v105(v104);
  if (v87 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v106 = sub_1C4F00968();
    v107 = sub_1C4F01CD8();

    v108 = os_log_type_enabled(v106, v107);
    v109 = v175;
    if (v108)
    {
      v110 = swift_slowAlloc();
      v111 = v51;
      v112 = swift_slowAlloc();
      v178 = v112;
      *v110 = 136380675;
      v113 = sub_1C441D828(v102, v103, &v178);

      *(v110 + 4) = v113;
      _os_log_impl(&dword_1C43F8000, v106, v107, "Source: failed to encode identifier as UTF8 data: %{private}s", v110, 0xCu);
      sub_1C440962C(v112);
      v51 = v111;
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    swift_allocError();
    *v135 = 5;
    swift_willThrow();
    v136 = sub_1C4429108(&a18);
    sub_1C4420C3C(v136, v137, v138);
    (v51)(v109 + v177, v180);
    sub_1C4432F70();
    sub_1C4DA84F0(v74, v139);
    v140 = v162;
    v141 = *(*(v162 - 8) + 8);
    v142 = sub_1C4429108(&a15);
    v141(v142, v140);
    v143 = sub_1C4429108(&a14);
    v141(v143, v140);
    v144 = sub_1C4429108(&a13);
    sub_1C4420C3C(v144, v145, v146);
  }

  else
  {

    sub_1C440A3C4();
    sub_1C44CD3E8(v114, v115);
    v116 = v164;
    v117 = v169;
    sub_1C44158DC();
    sub_1C4F00DB8();
    v118 = sub_1C4404DC8();
    sub_1C44344B8(v118, v119);
    v120 = sub_1C4404DC8();
    v121 = v167;
    sub_1C4498FD8(v120, v122);
    v176 = v121;
    v123 = sub_1C4404DC8();
    sub_1C441DFEC(v123, v124);
    v125 = v165;
    sub_1C44158DC();
    sub_1C4F00DA8();
    (*(v168 + 8))(v116, v117);
    v126 = v175;
    v151(v159, v175 + v177, v180);
    v127 = v170;
    v128 = v171;
    (*(v170 + 16))(v163, v125, v171);
    v129 = v157;
    sub_1C4EFF028();
    v130 = sub_1C4404DC8();
    sub_1C441DFEC(v130, v131);
    (*(v127 + 8))(v125, v128);
    v132 = v161;
    v133 = *(v160 + 32);
    v134 = v156;
    v133(v156, v129, v161);
    v133(v126, v134, v132);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DA4534(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C44042B0();
  v9 = *(type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(v8) + 48);
  sub_1C44D7768(a1, v2 + v9, &qword_1EC0BD238, &qword_1C4F731B0);
  v10 = type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(0);
  if (sub_1C44157D4(v2 + v9, 1, v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BD238, &qword_1C4F731B0);
  }

  sub_1C4EFE308();
  sub_1C4420C3C(a1, &qword_1EC0BD238, &qword_1C4F731B0);
  sub_1C4EFEEF8();
  v12 = sub_1C4401EF4();
  sub_1C440BAA8(v12, v13, 1, v14);
  return sub_1C444088C(v1, v2 + v9, &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4DA464C(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C44042B0();
  v9 = v2 + *(type metadata accessor for FavoriteSportsTeamStructs.Person(v8) + 40);
  sub_1C44D7768(a1, v9, &qword_1EC0BD230, &unk_1C4F2D800);
  v10 = type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(0);
  if (sub_1C44157D4(v9, 1, v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BD230, &unk_1C4F2D800);
  }

  sub_1C4EFEA28();
  sub_1C4420C3C(a1, &qword_1EC0BD230, &unk_1C4F2D800);
  sub_1C4EFEEF8();
  v12 = sub_1C4401EF4();
  sub_1C440BAA8(v12, v13, 1, v14);
  return sub_1C444088C(v1, v9 + *(v10 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4DA4778(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = v4;
  v158 = a2;
  v163 = a1;
  v8 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  v153 = v12;
  sub_1C43FBE44();
  v159 = sub_1C4EFF0C8();
  v13 = sub_1C43FCDF8(v159);
  v161 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v155 = v17;
  v18 = sub_1C456902C(&qword_1EC0BD230, &unk_1C4F2D800);
  sub_1C43FBD18(v18);
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  v160 = sub_1C4422C70();
  v22 = sub_1C43FBCE0(v160);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD2D8();
  v156 = v25;
  v26 = sub_1C43FBE44();
  v27 = type metadata accessor for EntityTriple(v26);
  v28 = sub_1C43FCDF8(v27);
  v157 = v29;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v28);
  v34 = &v150 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v154 = &v150 - v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v150 - v37;
  v162 = *a3;
  v39 = MEMORY[0x1E69E7CC0];
  v167 = MEMORY[0x1E69E7CC0];
  v40 = type metadata accessor for FavoriteSportsTeamStructs.Person(0);
  v164 = v3;
  v165 = v40;
  v41 = (v3 + *(v40 + 36));
  v42 = v41[1];
  if (!v42)
  {
    goto LABEL_9;
  }

  v43 = *v41;
  v44 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v44 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v44)
  {
    v39 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v61 = v158;
    goto LABEL_10;
  }

  v151 = v34;
  v152 = v4;
  v45 = v164;
  (*(v161 + 16))(v38, v164, v159);
  v46 = v165;
  v47 = v165[8];
  v48 = v27[5];
  v49 = sub_1C4EFEEF8();
  sub_1C43FCE50(v49);
  (*(v50 + 16))(&v38[v48], v45 + v47);
  v51 = v46[7];
  v52 = v27[9];
  sub_1C441AC40();
  sub_1C448D364(v45 + v53, &v38[v54]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v56 = v55;
  v57 = &v38[v27[6]];
  sub_1C4EFF888();
  v58 = &v38[v27[7]];
  sub_1C4EFEC38();
  v59 = &v38[v27[8]];
  *v59 = v43;
  *(v59 + 1) = v42;
  v60 = &v38[v27[10]];
  v61 = v158;
  *v60 = v163;
  *(v60 + 1) = v61;
  *&v38[v27[11]] = v56;
  v38[v27[12]] = v162;
  v62 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v62, v63, v64, MEMORY[0x1E69E7CC0]);
  v39 = v65;
  v67 = *(v65 + 16);
  v66 = *(v65 + 24);
  if (v67 >= v66 >> 1)
  {
    v137 = sub_1C43FF640(v66);
    sub_1C44C9240(v137, v138, v139, v39);
    v39 = v140;
  }

  *(v39 + 16) = v67 + 1;
  sub_1C43FBF6C();
  v69 = *(v68 + 72);
  sub_1C44083A4();
  sub_1C44DD908(v38, v70);
  v167 = v39;
  v34 = v151;
  v6 = v152;
LABEL_10:
  v71 = v164;
  sub_1C445FFA8(v164 + v165[10], v5, &qword_1EC0BD230, &unk_1C4F2D800);
  v72 = sub_1C44157D4(v5, 1, v160);
  v73 = v163;
  if (v72 == 1)
  {
    sub_1C4420C3C(v5, &qword_1EC0BD230, &unk_1C4F2D800);
LABEL_12:
    v74 = v161;
LABEL_13:
    if (*(v39 + 16))
    {
      (*(v74 + 16))(v34, v71, v159);
      v75 = &v34[v27[5]];
      sub_1C4EFEBB8();
      v76 = v165;
      v77 = v71 + v165[6];
      v78 = sub_1C4EFD2F8();
      v80 = v79;
      v81 = v76[7];
      v82 = v27[9];
      sub_1C441AC40();
      sub_1C448D364(v84 + v83, &v34[v85]);
      sub_1C4EF9AE8();
      v87 = v86;
      v88 = &v34[v27[6]];
      sub_1C4EFF888();
      v89 = &v34[v27[7]];
      sub_1C4EFEC38();
      v90 = &v34[v27[8]];
      *v90 = v78;
      v90[1] = v80;
      v91 = &v34[v27[10]];
      *v91 = v73;
      v91[1] = v61;
      *&v34[v27[11]] = v87;
      v34[v27[12]] = v162;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v128 = *(v39 + 16);
        v129 = sub_1C43FCEC0();
        sub_1C44C9240(v129, v130, v131, v39);
        v39 = v132;
      }

      v93 = *(v39 + 16);
      v92 = *(v39 + 24);
      if (v93 >= v92 >> 1)
      {
        v133 = sub_1C43FF640(v92);
        sub_1C44C9240(v133, v134, v135, v39);
        v39 = v136;
      }

      *(v39 + 16) = v93 + 1;
      sub_1C43FBF6C();
      v95 = *(v94 + 72);
      sub_1C44083A4();
      sub_1C44DD908(v34, v96);
    }

    goto LABEL_21;
  }

  v97 = v5;
  v98 = v156;
  sub_1C44DD908(v97, v156);
  v166 = v162;
  sub_1C4DA60FC(v73, v61, &v166);
  if (v6)
  {
    sub_1C4413DEC();
    sub_1C4DA84F0(v98, v100);

LABEL_21:
    sub_1C440EE0C();
    return;
  }

  if (!*(v99 + 16))
  {
    sub_1C4413DEC();
    sub_1C4DA84F0(v98, v127);

    v71 = v164;
    goto LABEL_12;
  }

  v101 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v101);
  v102 = v98;
  v103 = v164;
  (*(v161 + 16))(v155, v164, v159);
  v104 = v153;
  sub_1C445FFA8(v102 + *(v160 + 20), v153, &qword_1EC0B9A08, &unk_1C4F107B0);
  v105 = sub_1C4EFEEF8();
  if (sub_1C44157D4(v104, 1, v105) != 1)
  {

    v160 = sub_1C4EFF048();
    v107 = v106;
    v108 = v165[7];
    v109 = v27[9];
    sub_1C441AC40();
    v111 = v103 + v110;
    v112 = v154;
    sub_1C448D364(v111, v154 + v113);
    sub_1C4EF9AE8();
    v115 = v114;
    v116 = v112 + v27[6];
    sub_1C4EFF888();
    v117 = v112 + v27[7];
    sub_1C4EFEC38();
    v118 = v161;
    (*(v161 + 32))(v112, v155, v159);
    (*(*(v105 - 8) + 32))(v112 + v27[5], v104, v105);
    v119 = (v112 + v27[8]);
    *v119 = v160;
    v119[1] = v107;
    v120 = (v112 + v27[10]);
    v73 = v163;
    *v120 = v163;
    v120[1] = v61;
    *(v112 + v27[11]) = v115;
    *(v112 + v27[12]) = v162;
    v39 = v167;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v74 = v118;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v141 = *(v39 + 16);
      v142 = sub_1C43FCEC0();
      sub_1C44C9240(v142, v143, v144, v39);
      v39 = v145;
    }

    v122 = *(v39 + 16);
    v121 = *(v39 + 24);
    if (v122 >= v121 >> 1)
    {
      v146 = sub_1C43FF640(v121);
      sub_1C44C9240(v146, v147, v148, v39);
      v39 = v149;
    }

    sub_1C4413DEC();
    sub_1C4DA84F0(v156, v123);
    *(v39 + 16) = v122 + 1;
    sub_1C43FBF6C();
    v125 = *(v124 + 72);
    sub_1C44083A4();
    sub_1C44DD908(v154, v126);
    v71 = v164;
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1C4DA4F74()
{
  sub_1C43FE96C();
  v160 = v1;
  v3 = v0;
  v168 = v4;
  v163 = v5;
  v165 = v6;
  v166 = v7;
  v164 = type metadata accessor for EntityTriple(0);
  v8 = sub_1C43FCDF8(v164);
  v167 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v159 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  v158 = &v152 - v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  v157 = v16;
  sub_1C43FBE44();
  v162 = sub_1C4EFD548();
  v17 = sub_1C43FCDF8(v162);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  v170 = sub_1C4EFF8A8();
  v25 = sub_1C43FCDF8(v170);
  v169 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v31 = v30 - v29;
  v32 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v32);
  v34 = *(v33 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C44058BC();
  v36 = sub_1C4EFEEF8();
  v37 = sub_1C43FCDF8(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBCC4();
  v44 = v43 - v42;
  LODWORD(v168) = *v168;
  v46 = v45;
  sub_1C445FFA8(v3, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (sub_1C44157D4(v2, 1, v46) == 1)
  {
    sub_1C4420C3C(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    swift_allocError();
    *v47 = 2;
    swift_willThrow();
  }

  else
  {
    (*(v39 + 32))(v44, v2, v46);
    v48 = type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(0);
    v49 = *(v19 + 16);
    v155 = v48[5];
    v49(v24, v3 + v155, v162);
    sub_1C4EFF838();
    v161 = v3;
    v162 = v48;
    v50 = (v3 + v48[8]);
    v51 = v50[1];
    v52 = v31;
    v156 = v31;
    v53 = v39;
    if (!v51)
    {
      goto LABEL_10;
    }

    v54 = *v50;
    v55 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v55 = v54 & 0xFFFFFFFFFFFFLL;
    }

    if (v55)
    {
      v56 = sub_1C4EFF0C8();
      sub_1C43FCE50(v56);
      v58 = v44;
      v59 = v157;
      (*(v57 + 16))(v157, v163);
      v60 = v53;
      v61 = v164;
      v62 = v164[5];
      v153 = v60;
      v154 = v58;
      v63 = *(v60 + 16);
      v63(v59 + v62, v58, v46);
      (*(v169 + 16))(v59 + v61[6], v52, v170);
      v65 = v161;
      v64 = v162;
      v63(v59 + v61[7], v161 + v162[7], v46);
      v66 = v64[6];
      v67 = v61[9];
      sub_1C441AC40();
      sub_1C448D364(v65 + v68, v59 + v69);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v70 = (v59 + v61[8]);
      *v70 = v54;
      v70[1] = v51;
      v71 = (v59 + v61[10]);
      v72 = v166;
      *v71 = v165;
      v71[1] = v72;
      *(v59 + v61[11]) = v73;
      *(v59 + v61[12]) = v168;
      v74 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v74, v75, v76, MEMORY[0x1E69E7CC0]);
      v78 = v77;
      v80 = *(v77 + 16);
      v79 = *(v77 + 24);
      if (v80 >= v79 >> 1)
      {
        sub_1C44348C8(v79);
        v78 = v145;
      }

      *(v78 + 16) = v80 + 1;
      sub_1C43FBF6C();
      v82 = *(v81 + 72);
      sub_1C44083A4();
      sub_1C44DD908(v157, v83);
      v52 = v156;
      v53 = v153;
      v44 = v154;
    }

    else
    {
LABEL_10:
      v78 = MEMORY[0x1E69E7CC0];
    }

    v84 = v161;
    v85 = (v161 + v162[10]);
    v86 = v85[1];
    if (!v86)
    {
      goto LABEL_20;
    }

    v87 = *v85;
    v88 = HIBYTE(v86) & 0xF;
    if ((v86 & 0x2000000000000000) == 0)
    {
      v88 = v87 & 0xFFFFFFFFFFFFLL;
    }

    if (v88)
    {
      v89 = sub_1C4EFF0C8();
      sub_1C43FCE50(v89);
      v91 = v158;
      (*(v90 + 16))(v158, v163);
      v92 = v44;
      v93 = v46;
      v94 = v164;
      v95 = v164[5];
      v153 = v53;
      v154 = v92;
      v96 = *(v53 + 16);
      v96(v91 + v95);
      (*(v169 + 16))(v91 + v94[6], v52, v170);
      v97 = v162;
      v98 = v91 + v94[7];
      v99 = v161 + v162[9];
      v157 = v93;
      (v96)(v98, v99, v93);
      v84 = v161;
      v100 = v97[6];
      v101 = v94[9];
      sub_1C441AC40();
      sub_1C448D364(v84 + v102, v91 + v103);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v104 = (v91 + v94[8]);
      *v104 = v87;
      v104[1] = v86;
      v105 = (v91 + v94[10]);
      v106 = v166;
      *v105 = v165;
      v105[1] = v106;
      *(v91 + v94[11]) = v107;
      *(v91 + v94[12]) = v168;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v146 = *(v78 + 16);
        v147 = sub_1C43FCEC0();
        sub_1C44C9240(v147, v148, v149, v78);
        v78 = v150;
      }

      v109 = *(v78 + 16);
      v108 = *(v78 + 24);
      v110 = v159;
      v46 = v157;
      v53 = v153;
      v44 = v154;
      if (v109 >= v108 >> 1)
      {
        sub_1C44348C8(v108);
        v78 = v151;
      }

      *(v78 + 16) = v109 + 1;
      sub_1C43FBF6C();
      v112 = *(v111 + 72);
      sub_1C44083A4();
      sub_1C44DD908(v158, v113);
      v52 = v156;
    }

    else
    {
LABEL_20:
      v110 = v159;
    }

    if (*(v78 + 16))
    {
      v114 = sub_1C4EFF0C8();
      sub_1C43FCE50(v114);
      (*(v115 + 16))(v110, v163);
      v116 = v164;
      v117 = v44;
      (*(v53 + 16))(v110 + v164[5], v44, v46);
      (*(v169 + 16))(v110 + v116[6], v52, v170);
      v118 = v110 + v116[7];
      sub_1C4EFEBB8();
      v119 = sub_1C4EFD2F8();
      v121 = v120;
      v122 = v162[6];
      v123 = v116[9];
      sub_1C441AC40();
      sub_1C448D364(v84 + v124, v110 + v125);
      sub_1C4EF9AE8();
      v126 = (v110 + v116[8]);
      *v126 = v119;
      v126[1] = v121;
      v127 = (v110 + v116[10]);
      v128 = v166;
      *v127 = v165;
      v127[1] = v128;
      *(v110 + v116[11]) = v129;
      *(v110 + v116[12]) = v168;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v139 = *(v78 + 16);
        v140 = sub_1C43FCEC0();
        sub_1C44C9240(v140, v141, v142, v78);
        v78 = v143;
      }

      v131 = *(v78 + 16);
      v130 = *(v78 + 24);
      if (v131 >= v130 >> 1)
      {
        sub_1C44C9240(v130 > 1, v131 + 1, 1, v78);
        v78 = v144;
      }

      v132 = sub_1C43FE5EC();
      v133(v132, v170);
      (*(v53 + 8))(v117, v46);
      *(v78 + 16) = v131 + 1;
      sub_1C43FBF6C();
      v135 = *(v134 + 72);
      sub_1C44083A4();
      sub_1C44DD908(v110, v136);
    }

    else
    {
      v137 = sub_1C43FE5EC();
      v138(v137, v170);
      (*(v53 + 8))(v44, v46);
    }
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4DA5800(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 6:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DA58E4()
{
  sub_1C43FE96C();
  v2 = sub_1C456902C(&qword_1EC0C7388, &qword_1C4F73368);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD870();
  sub_1C4DA8BAC();
  sub_1C440F61C();
  sub_1C4EFEEF8();
  sub_1C442DB3C();
  sub_1C44CD3E8(v6, v7);
  sub_1C4402150();
  sub_1C4F02778();
  if (!v1)
  {
    v24 = type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(0);
    v8 = v24[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C44014FC();
    sub_1C44CD3E8(v9, v10);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v11 = v24[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C43FF9FC();
    sub_1C44CD3E8(v12, v13);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v14 = v24[7];
    sub_1C4402150();
    sub_1C4F027E8();
    v15 = (v0 + v24[8]);
    v16 = *v15;
    v17 = v15[1];
    sub_1C4402150();
    sub_1C4F02738();
    v18 = v24[9];
    sub_1C4402150();
    sub_1C4F027E8();
    v19 = (v0 + v24[10]);
    v20 = *v19;
    v21 = v19[1];
    sub_1C4402150();
    sub_1C4F02738();
  }

  v22 = sub_1C440231C();
  v23(v22);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DA5B8C()
{
  sub_1C43FE96C();
  v3 = v2;
  v51 = v4;
  v5 = sub_1C4EFEEF8();
  v6 = sub_1C43FCDF8(v5);
  v53 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v52 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v54 = v12;
  v13 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBC74();
  v55 = v17;
  v18 = sub_1C456902C(&qword_1EC0C7378, &qword_1C4F73360);
  v19 = sub_1C43FCDF8(v18);
  v57 = v20;
  v58 = v19;
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBC74();
  v59 = v24;
  v25 = sub_1C43FBE44();
  v26 = type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(v25);
  v27 = sub_1C43FBCE0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C43FCF64();
  v56 = v5;
  sub_1C440BAA8(v30, v31, v32, v5);
  v33 = v1 + v26[5];
  sub_1C4EFD258();
  v34 = v26[6];
  if (qword_1EDDFD240 != -1)
  {
    sub_1C43FE2C8();
  }

  v35 = type metadata accessor for Source();
  sub_1C442B738(v35, &qword_1EDDFD248);
  sub_1C441AC40();
  sub_1C448D364(v36, v1 + v34);
  v37 = v26[7];
  sub_1C4EFE558();
  v38 = (v1 + v26[8]);
  *v38 = 0;
  v38[1] = 0;
  v39 = v26[9];
  sub_1C4EFE658();
  v40 = (v1 + v26[10]);
  *v40 = 0;
  v40[1] = 0;
  v41 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4DA8BAC();
  sub_1C4F02BC8();
  if (!v0)
  {
    v50 = v38;
    sub_1C442DB3C();
    sub_1C44CD3E8(v42, v43);
    sub_1C44147D8();
    sub_1C4F02658();
    sub_1C444088C(v55, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44147D8();
    sub_1C4F026C8();
    v44 = *(v53 + 40);
    v44(v1 + v37, v54, v56);
    *v50 = sub_1C4F02618();
    v50[1] = v45;
    sub_1C44147D8();
    sub_1C4F026C8();
    v44(v1 + v39, v52, v56);
    v47 = sub_1C4F02618();
    v49 = v48;
    (*(v57 + 8))(v59, v58);
    *v40 = v47;
    v40[1] = v49;
    sub_1C448D364(v1, v51);
  }

  sub_1C440962C(v3);
  sub_1C4409468();
  sub_1C4DA84F0(v1, v46);
  sub_1C43FBC80();
}

uint64_t sub_1C4DA603C(uint64_t a1)
{
  v2 = sub_1C4DA8BAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DA6078(uint64_t a1)
{
  v2 = sub_1C4DA8BAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DA60FC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = v4;
  v6 = v3;
  v153 = a1;
  v9 = sub_1C456902C(&qword_1EC0BD238, &qword_1C4F731B0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  v150 = v13;
  v14 = sub_1C43FBE44();
  v149 = type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(v14);
  v15 = sub_1C43FBCE0(v149);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD2D8();
  v151 = v18;
  v19 = sub_1C43FBE44();
  v20 = type metadata accessor for EntityTriple(v19);
  v21 = sub_1C43FCDF8(v20);
  v152 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  v148 = v25;
  sub_1C43FD1D0();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v147 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v147 - v30;
  v155 = *a3;
  v32 = MEMORY[0x1E69E7CC0];
  v158 = MEMORY[0x1E69E7CC0];
  v156 = type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(0);
  v33 = (v6 + v156[9]);
  v34 = v33[1];
  if (v34 && (sub_1C442EE64(v33), v36))
  {
    v154 = v4;
    v147 = v35;
    v37 = sub_1C4EFF0C8();
    sub_1C43FCE50(v37);
    (*(v38 + 16))(v31, v6);
    v39 = v6;
    v40 = v156;
    v41 = v156[8];
    v42 = a2;
    v43 = v20[5];
    v44 = sub_1C4EFEEF8();
    sub_1C43FCE50(v44);
    v46 = &v31[v43];
    a2 = v42;
    (*(v45 + 16))(v46, v39 + v41);
    v47 = v40[7];
    v6 = v39;
    v48 = v20[9];
    sub_1C441AC40();
    sub_1C448D364(v39 + v49, &v31[v50]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    v52 = v51;
    v53 = &v31[v20[6]];
    sub_1C4EFF888();
    v54 = &v31[v20[7]];
    sub_1C4EFEC38();
    v55 = &v31[v20[8]];
    *v55 = v147;
    *(v55 + 1) = v34;
    v56 = &v31[v20[10]];
    v57 = v153;
    *v56 = v153;
    *(v56 + 1) = a2;
    *&v31[v20[11]] = v52;
    v31[v20[12]] = v155;
    v58 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4401EC4(v58, v59, v60, MEMORY[0x1E69E7CC0]);
    v32 = v61;
    v63 = *(v61 + 16);
    v62 = *(v61 + 24);
    if (v63 >= v62 >> 1)
    {
      v134 = sub_1C43FF640(v62);
      sub_1C44C9240(v134, v135, v136, v32);
      v32 = v137;
    }

    *(v32 + 16) = v63 + 1;
    sub_1C43FBF6C();
    v65 = *(v64 + 72);
    sub_1C44083A4();
    sub_1C44DD908(v31, v66);
    v158 = v32;
    v5 = v154;
  }

  else
  {
    v57 = v153;
  }

  v67 = (v6 + v156[11]);
  v68 = v67[1];
  if (v68)
  {
    sub_1C442EE64(v67);
    if (v70)
    {
      v154 = v5;
      v147 = v69;
      v71 = sub_1C4EFF0C8();
      sub_1C43FCE50(v71);
      (*(v72 + 16))(v29, v6);
      v73 = a2;
      v74 = v6;
      v75 = v156;
      v76 = v156[10];
      v77 = v20[5];
      v78 = sub_1C4EFEEF8();
      sub_1C43FCE50(v78);
      v80 = v74 + v76;
      a2 = v73;
      v57 = v153;
      (*(v79 + 16))(&v29[v77], v80);
      v81 = v75[7];
      v6 = v74;
      v82 = v20[9];
      sub_1C441AC40();
      sub_1C448D364(v74 + v83, &v29[v84]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v85 = &v29[v20[6]];
      sub_1C4EFF888();
      v86 = &v29[v20[7]];
      sub_1C4EFEC38();
      v87 = &v29[v20[8]];
      *v87 = v147;
      *(v87 + 1) = v68;
      v88 = &v29[v20[10]];
      *v88 = v57;
      *(v88 + 1) = a2;
      sub_1C441D528();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = *(v32 + 16);
        v139 = sub_1C43FCEC0();
        sub_1C44C9240(v139, v140, v141, v32);
        v32 = v142;
      }

      v90 = *(v32 + 16);
      v89 = *(v32 + 24);
      v5 = v154;
      if (v90 >= v89 >> 1)
      {
        v143 = sub_1C43FF640(v89);
        sub_1C44C9240(v143, v144, v145, v32);
        v32 = v146;
      }

      *(v32 + 16) = v90 + 1;
      sub_1C43FBF6C();
      v92 = *(v91 + 72);
      sub_1C44083A4();
      sub_1C44DD908(v29, v93);
      v158 = v32;
    }
  }

  v94 = v150;
  sub_1C445FFA8(v6 + v156[12], v150, &qword_1EC0BD238, &qword_1C4F731B0);
  v95 = sub_1C44157D4(v94, 1, v149);
  v96 = v151;
  if (v95 == 1)
  {
    sub_1C4420C3C(v94, &qword_1EC0BD238, &qword_1C4F731B0);
  }

  else
  {
    sub_1C44DD908(v94, v151);
    v157 = v155;
    sub_1C4402150();
    sub_1C4DA4F74();
    v5 = v4;
    if (v4)
    {
      sub_1C4409468();
      sub_1C4DA84F0(v96, v98);

      goto LABEL_25;
    }

    sub_1C49D3614(v97);
    sub_1C4409468();
    sub_1C4DA84F0(v96, v99);
    v32 = v158;
  }

  if (*(v32 + 16))
  {
    v154 = v5;
    v100 = sub_1C4EFF0C8();
    sub_1C43FCE50(v100);
    v102 = v148;
    (*(v101 + 16))(v148, v6);
    v103 = v102 + v20[5];
    sub_1C4EFEBB8();
    v104 = v57;
    v105 = v6;
    v106 = v156;
    v107 = a2;
    v108 = v105 + v156[6];
    v109 = sub_1C4EFD2F8();
    v111 = v110;
    v112 = v106[7];
    v113 = v20[9];
    sub_1C441AC40();
    sub_1C448D364(v105 + v114, v102 + v115);
    sub_1C4EF9AE8();
    v116 = v102 + v20[6];
    sub_1C4EFF888();
    v117 = v102 + v20[7];
    sub_1C4EFEC38();
    v118 = (v102 + v20[8]);
    *v118 = v109;
    v118[1] = v111;
    v119 = (v102 + v20[10]);
    *v119 = v104;
    v119[1] = v107;
    sub_1C441D528();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v125 = *(v32 + 16);
      v126 = sub_1C43FCEC0();
      sub_1C44C9240(v126, v127, v128, v32);
      v32 = v129;
    }

    v121 = *(v32 + 16);
    v120 = *(v32 + 24);
    if (v121 >= v120 >> 1)
    {
      v130 = sub_1C43FF640(v120);
      sub_1C44C9240(v130, v131, v132, v32);
      v32 = v133;
    }

    *(v32 + 16) = v121 + 1;
    sub_1C43FBF6C();
    v123 = *(v122 + 72);
    sub_1C44083A4();
    sub_1C44DD908(v148, v124);
  }

LABEL_25:
  sub_1C440EE0C();
}

uint64_t sub_1C4DA67B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x646572705F646971 && a2 == 0xED00006574616369;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 6580593 && a2 == 0xE300000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C4F02938();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1C4DA6A9C(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x646572705F646971;
      break;
    case 7:
      result = 6580593;
      break;
    case 8:
      result = 0x696669746E656469;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DA6BB0()
{
  sub_1C43FE96C();
  v2 = v0;
  v3 = sub_1C456902C(&qword_1EC0C73A0, &qword_1C4F73378);
  sub_1C43FCDF8(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD870();
  sub_1C4DA8C00();
  sub_1C440F61C();
  sub_1C4EFF0C8();
  sub_1C4412A7C();
  sub_1C44CD3E8(v7, v8);
  sub_1C43FE6CC();
  sub_1C43FC428();
  sub_1C4F027E8();
  if (!v1)
  {
    v9 = type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(0);
    v10 = v9[5];
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C442DB3C();
    sub_1C44CD3E8(v11, v12);
    sub_1C44032B0();
    sub_1C4F02778();
    v13 = v9[6];
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C44014FC();
    sub_1C44CD3E8(v14, v15);
    sub_1C43FC428();
    sub_1C4F027E8();
    v16 = v9[7];
    type metadata accessor for Source();
    sub_1C43FF9FC();
    sub_1C44CD3E8(v17, v18);
    sub_1C43FC428();
    sub_1C4F027E8();
    v19 = v9[8];
    sub_1C4F027E8();
    v20 = (v2 + v9[9]);
    v21 = *v20;
    v22 = v20[1];
    sub_1C4F02738();
    v23 = v9[10];
    sub_1C44032B0();
    sub_1C4F027E8();
    v24 = (v2 + v9[11]);
    v25 = *v24;
    v26 = v24[1];
    sub_1C4F02738();
    v27 = v9[12];
    type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(0);
    sub_1C4415224();
    sub_1C44CD3E8(v28, v29);
    sub_1C43FC428();
    sub_1C4F02778();
  }

  v30 = sub_1C440231C();
  v31(v30);
  sub_1C43FBC80();
}

void sub_1C4DA6F08()
{
  sub_1C43FE96C();
  v3 = v2;
  v70 = v4;
  v5 = sub_1C456902C(&qword_1EC0BD238, &qword_1C4F731B0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v71 = v9;
  sub_1C43FBE44();
  v10 = sub_1C4EFEEF8();
  v11 = sub_1C43FCDF8(v10);
  v80 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  v16 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  v72 = v20;
  sub_1C43FBE44();
  v74 = sub_1C4EFF0C8();
  v21 = sub_1C43FCDF8(v74);
  v73 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  v28 = sub_1C456902C(&qword_1EC0C7390, &qword_1C4F73370);
  sub_1C43FCDF8(v28);
  v30 = *(v29 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  v32 = sub_1C4422C70();
  v33 = sub_1C43FBCE0(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v81 = *(v36 + 20);
  sub_1C43FCF64();
  sub_1C440BAA8(v37, v38, v39, v10);
  v75 = v32[6];
  sub_1C4EFCED8();
  v40 = v32[7];
  if (qword_1EDDFD240 != -1)
  {
    sub_1C43FE2C8();
  }

  v41 = type metadata accessor for Source();
  sub_1C442B738(v41, &qword_1EDDFD248);
  sub_1C441AC40();
  v76 = v40;
  sub_1C448D364(v42, v1 + v40);
  v79 = v32[8];
  sub_1C4EFEBF8();
  v78 = v32[10];
  sub_1C4EFEBC8();
  v43 = v32[12];
  v44 = type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(0);
  v77 = v43;
  sub_1C43FCF64();
  sub_1C440BAA8(v45, v46, v47, v44);
  v48 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4DA8C00();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v3);
    sub_1C4420C3C(v1 + v81, &qword_1EC0B9A08, &unk_1C4F107B0);
    v51 = sub_1C4EFD548();
    sub_1C43FBCE0(v51);
    (*(v52 + 8))(v1 + v75);
    sub_1C4432F70();
    sub_1C4DA84F0(v1 + v76, v53);
    v54 = *(v80 + 8);
    v54(v1 + v79, v10);

    v54(v1 + v78, v10);

    sub_1C4420C3C(v1 + v77, &qword_1EC0BD238, &qword_1C4F731B0);
  }

  else
  {
    sub_1C4412A7C();
    sub_1C44CD3E8(v49, v50);
    sub_1C43FE6CC();
    sub_1C440194C();
    sub_1C4F026C8();
    (*(v73 + 32))(v1, v27, v74);
    sub_1C442DB3C();
    sub_1C44CD3E8(v55, v56);
    sub_1C442C24C();
    sub_1C440194C();
    sub_1C4F02658();
    sub_1C444088C(v72, v1 + v81, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C442C24C();
    sub_1C440194C();
    sub_1C4F026C8();
    v57 = *(v80 + 40);
    sub_1C442393C();
    v59 = v58;
    v58();
    sub_1C4441684();
    sub_1C440194C();
    v60 = sub_1C4F02618();
    sub_1C440CEC8(v60, v61);
    sub_1C442C24C();
    sub_1C440194C();
    sub_1C4F026C8();
    sub_1C442393C();
    v59();
    sub_1C440194C();
    v62 = sub_1C4F02618();
    v63 = (v1 + v32[11]);
    *v63 = v62;
    v63[1] = v64;
    sub_1C4415224();
    sub_1C44CD3E8(v65, v66);
    sub_1C440194C();
    sub_1C4F02658();
    v67 = sub_1C44348B8();
    v68(v67);
    sub_1C444088C(v71, v1 + v43, &qword_1EC0BD238, &qword_1C4F731B0);
    sub_1C448D364(v1, v70);
    sub_1C440962C(v3);
    sub_1C4413DEC();
    sub_1C4DA84F0(v1, v69);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DA761C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DA67B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DA7644(uint64_t a1)
{
  v2 = sub_1C4DA8C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DA7680(uint64_t a1)
{
  v2 = sub_1C4DA8C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DA7704(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x80000001C4FC81D0 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E65727275437369 && a2 == 0xED00007265735574;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000015 && 0x80000001C4FC8AD0 == a2)
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

unint64_t sub_1C4DA794C(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x6E65727275437369;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DA7A44()
{
  sub_1C43FE96C();
  v2 = v0;
  v3 = sub_1C456902C(&qword_1EC0C7370, &qword_1C4F73358);
  sub_1C43FCDF8(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD870();
  sub_1C4DA8B58();
  sub_1C440F61C();
  sub_1C4EFF0C8();
  sub_1C4412A7C();
  sub_1C44CD3E8(v7, v8);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F027E8();
  if (!v1)
  {
    v9 = type metadata accessor for FavoriteSportsTeamStructs.Person(0);
    v10 = *(v9 + 20);
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C442DB3C();
    sub_1C44CD3E8(v11, v12);
    sub_1C44032B0();
    sub_1C4F02778();
    v28 = v9;
    v13 = *(v9 + 24);
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C44014FC();
    sub_1C44CD3E8(v14, v15);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v16 = v28[7];
    type metadata accessor for Source();
    sub_1C43FF9FC();
    sub_1C44CD3E8(v17, v18);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v19 = v28[8];
    sub_1C44032B0();
    sub_1C4F027E8();
    v20 = (v2 + v28[9]);
    v21 = *v20;
    v22 = v20[1];
    sub_1C4402150();
    sub_1C4F02738();
    v23 = v28[10];
    type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(0);
    sub_1C441E97C();
    sub_1C44CD3E8(v24, v25);
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v26 = sub_1C440231C();
  v27(v26);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DA7D24()
{
  sub_1C43FE96C();
  v3 = v2;
  v63 = v4;
  v5 = sub_1C456902C(&qword_1EC0BD230, &unk_1C4F2D800);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v64 = v9;
  sub_1C43FBE44();
  v10 = sub_1C4EFEEF8();
  v11 = sub_1C43FCDF8(v10);
  v71 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  v15 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v15);
  v17 = *(v16 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBC74();
  v65 = v19;
  sub_1C43FBE44();
  v67 = sub_1C4EFF0C8();
  v20 = sub_1C43FCDF8(v67);
  v66 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v24 = sub_1C456902C(&qword_1EC0C7360, &qword_1C4F73350);
  sub_1C43FCDF8(v24);
  v26 = *(v25 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  v28 = type metadata accessor for FavoriteSportsTeamStructs.Person(0);
  v29 = sub_1C43FBCE0(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v73 = *(v32 + 20);
  sub_1C43FCF64();
  v33 = v10;
  sub_1C440BAA8(v34, v35, v36, v10);
  v68 = v28[6];
  sub_1C4EFD4C8();
  v37 = v28[7];
  if (qword_1EDDFD240 != -1)
  {
    sub_1C43FE2C8();
  }

  v38 = type metadata accessor for Source();
  sub_1C442B738(v38, &qword_1EDDFD248);
  sub_1C441AC40();
  v69 = v37;
  sub_1C448D364(v39, v1 + v37);
  v72 = v28[8];
  sub_1C4EFE5D8();
  v40 = v28[10];
  v41 = type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(0);
  v70 = v40;
  sub_1C43FCF64();
  sub_1C440BAA8(v42, v43, v44, v41);
  v45 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4DA8B58();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v3);
    sub_1C4420C3C(v1 + v73, &qword_1EC0B9A08, &unk_1C4F107B0);
    v48 = sub_1C4EFD548();
    sub_1C43FBCE0(v48);
    (*(v49 + 8))(v1 + v68);
    sub_1C4432F70();
    sub_1C4DA84F0(v1 + v69, v50);
    (*(v71 + 8))(v1 + v72, v33);

    sub_1C4420C3C(v1 + v70, &qword_1EC0BD230, &unk_1C4F2D800);
  }

  else
  {
    sub_1C4412A7C();
    sub_1C44CD3E8(v46, v47);
    sub_1C43FE6CC();
    sub_1C4460520();
    sub_1C4F026C8();
    v51 = *(v66 + 32);
    sub_1C442393C();
    v52();
    sub_1C442DB3C();
    sub_1C44CD3E8(v53, v54);
    sub_1C4460520();
    sub_1C4F02658();
    sub_1C444088C(v65, v1 + v73, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C442C24C();
    sub_1C4460520();
    sub_1C4F026C8();
    v55 = *(v71 + 40);
    sub_1C442393C();
    v56();
    sub_1C4441684();
    sub_1C4460520();
    v57 = sub_1C4F02618();
    sub_1C440CEC8(v57, v58);
    sub_1C441E97C();
    sub_1C44CD3E8(v59, v60);
    sub_1C4460520();
    sub_1C4F02658();
    v61 = sub_1C43FCCB0();
    v62(v61);
    sub_1C444088C(v64, v1 + v70, &qword_1EC0BD230, &unk_1C4F2D800);
    sub_1C448D364(v1, v63);
    sub_1C440962C(v3);
    sub_1C4DA84F0(v1, type metadata accessor for FavoriteSportsTeamStructs.Person);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DA8394(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4DA83E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DA7704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DA8410(uint64_t a1)
{
  v2 = sub_1C4DA8B58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DA844C(uint64_t a1)
{
  v2 = sub_1C4DA8B58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DA84F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C4DA8570()
{
  sub_1C4EFF0C8();
  if (v0 <= 0x3F)
  {
    sub_1C4DA86A4(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    if (v1 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Source();
        if (v3 <= 0x3F)
        {
          sub_1C4EFEEF8();
          if (v4 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v5 <= 0x3F)
            {
              sub_1C4DA86A4(319, &qword_1EC0C7300, type metadata accessor for FavoriteSportsTeamStructs.SportsTeam);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C4DA86A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C4DA8720()
{
  sub_1C4DA86A4(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C4DA8868()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    sub_1C4DA86A4(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      v0 = sub_1C4EFD548();
      if (v4 <= 0x3F)
      {
        v0 = type metadata accessor for Source();
        if (v5 <= 0x3F)
        {
          v0 = sub_1C4EFEEF8();
          if (v6 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v8 > 0x3F)
            {
              return v7;
            }

            else
            {
              sub_1C4DA86A4(319, &qword_1EC0C7328, type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType);
              v0 = v9;
              if (v10 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_1C4DA89CC(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD3E8(&qword_1EC0C7330, type metadata accessor for FavoriteSportsTeamStructs.SportsTeam);
  result = sub_1C44CD3E8(&qword_1EC0C7338, type metadata accessor for FavoriteSportsTeamStructs.SportsTeam);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DA8A50(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD3E8(&qword_1EC0C7340, type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType);
  result = sub_1C44CD3E8(&qword_1EC0C7348, type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DA8AD4(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD3E8(&qword_1EC0C7350, type metadata accessor for FavoriteSportsTeamStructs.Person);
  result = sub_1C44CD3E8(&qword_1EC0C7358, type metadata accessor for FavoriteSportsTeamStructs.Person);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4DA8B58()
{
  result = qword_1EC0C7368;
  if (!qword_1EC0C7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7368);
  }

  return result;
}

unint64_t sub_1C4DA8BAC()
{
  result = qword_1EC0C7380;
  if (!qword_1EC0C7380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7380);
  }

  return result;
}

unint64_t sub_1C4DA8C00()
{
  result = qword_1EC0C7398;
  if (!qword_1EC0C7398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7398);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FavoriteSportsTeamStructs.SportsTeam.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C4DA8D40(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4DA8E20()
{
  result = qword_1EC0C73A8;
  if (!qword_1EC0C73A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73A8);
  }

  return result;
}

unint64_t sub_1C4DA8E78()
{
  result = qword_1EC0C73B0;
  if (!qword_1EC0C73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73B0);
  }

  return result;
}

unint64_t sub_1C4DA8ED0()
{
  result = qword_1EC0C73B8;
  if (!qword_1EC0C73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73B8);
  }

  return result;
}

unint64_t sub_1C4DA8F28()
{
  result = qword_1EC0C73C0;
  if (!qword_1EC0C73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73C0);
  }

  return result;
}

unint64_t sub_1C4DA8F80()
{
  result = qword_1EC0C73C8;
  if (!qword_1EC0C73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73C8);
  }

  return result;
}

unint64_t sub_1C4DA8FD8()
{
  result = qword_1EC0C73D0;
  if (!qword_1EC0C73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73D0);
  }

  return result;
}

unint64_t sub_1C4DA9030()
{
  result = qword_1EC0C73D8;
  if (!qword_1EC0C73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73D8);
  }

  return result;
}

unint64_t sub_1C4DA9088()
{
  result = qword_1EC0C73E0;
  if (!qword_1EC0C73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73E0);
  }

  return result;
}

unint64_t sub_1C4DA90E0()
{
  result = qword_1EC0C73E8;
  if (!qword_1EC0C73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73E8);
  }

  return result;
}

void sub_1C4DA9138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v158 = v20;
  v162 = v23;
  a10 = v24;
  v26 = v25;
  v27 = sub_1C4F00DD8();
  v159 = sub_1C43FCDF8(v27);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v159);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v30 = sub_1C4F00DC8();
  v31 = sub_1C43FCDF8(v30);
  v160 = v32;
  v161 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  v156 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  v157 = v37;
  sub_1C43FBE44();
  v38 = sub_1C4F01188();
  v39 = sub_1C43FCDF8(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v42 = sub_1C4EFD548();
  v43 = sub_1C43FCDF8(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  v152 = v48;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FD230();
  v51 = v50;
  sub_1C43FBE44();
  v52 = sub_1C4EFF0C8();
  v53 = sub_1C43FCDF8(v52);
  v153 = v54;
  v154 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FD230();
  v59 = sub_1C43FD2C8(v58);
  v60 = type metadata accessor for FutureLifeEventStructs.CommuteActivity(v59);
  v61 = v60[5];
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  v155 = v62;
  sub_1C440BAA8(v63, v64, v65, v62);
  v66 = v60[6];
  sub_1C4EFCFD8();
  v67 = (v26 + v60[7]);
  if (qword_1EDDFED40 != -1)
  {
    sub_1C4415A7C();
    swift_once();
  }

  v68 = type metadata accessor for Source();
  sub_1C442B738(v68, qword_1EDDFD2A8);
  sub_1C441AC58();
  sub_1C448D3B8(v69, v67, v70);
  v149 = v60[8];
  sub_1C4EFEBF8();
  sub_1C4401738(v60[9]);
  v148 = v60[10];
  sub_1C4EFE2A8();
  sub_1C4401738(v60[11]);
  v71 = v60[12];
  type metadata accessor for FutureLifeEventStructs.CommuteActivityType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v72, v73, v74, v75);
  v76 = v60[13];
  v77 = type metadata accessor for FutureLifeEventStructs.Place(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v78, v79, v80, v77);
  v147 = v60[14];
  sub_1C43FCF64();
  sub_1C440BAA8(v81, v82, v83, v77);
  *(v26 + v60[15]) = 0;
  *(v26 + v60[16]) = 0;
  v84 = v60[17];
  type metadata accessor for FutureLifeEventStructs.DateRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v85, v86, v87, v88);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v89 = sub_1C4F00978();
  sub_1C442B738(v89, qword_1EDE2DE10);
  v163 = v66;
  v146 = *(v45 + 16);
  v146(v51, v26 + v66, v42);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v90 = sub_1C4F00968();
  v91 = sub_1C4F01CB8();

  v164 = v42;
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    *v92 = 136381187;
    *(v92 + 4) = sub_1C441D828(a10, v162, &v165);
    *(v92 + 12) = 2080;
    sub_1C440B92C();
    sub_1C4DB625C(v93, v94);
    sub_1C4F02858();
    v145 = *(v45 + 8);
    v145(v51, v42);
    v95 = sub_1C43FE5F8();
    v98 = sub_1C441D828(v95, v96, v97);

    *(v92 + 14) = v98;
    v99 = a10;
    *(v92 + 22) = 1024;
    *(v92 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v90, v91, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v92, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v145 = *(v45 + 8);
    v145(v51, v42);
    v99 = a10;
  }

  v100 = *v67;
  v101 = v67[1];
  v165 = v99;
  v166 = v162;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v100, v101);

  v102 = v165;
  v103 = v166;
  sub_1C4F01178();
  sub_1C4F01148();
  v105 = v104;
  v106 = sub_1C44018C0();
  v107(v106);
  if (v105 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v108 = sub_1C4F00968();
    v109 = sub_1C4F01CD8();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = v67;
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v165 = v112;
      *v111 = 136380675;
      v113 = sub_1C441D828(v102, v103, &v165);

      *(v111 + 4) = v113;
      sub_1C440E068(&dword_1C43F8000, v114, v115, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v112);
      sub_1C43FBE2C();
      v67 = v110;
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    sub_1C43FFB2C();
    *v129 = 5;
    swift_willThrow();
    v130 = sub_1C4429108(&a18);
    sub_1C4420C3C(v130, v131, v132);
    v145(v26 + v163, v164);
    sub_1C4410004();
    sub_1C447EC94(v67, v133);
    v134 = *(*(v155 - 8) + 8);
    v135 = sub_1C4429108(&a15);
    v134(v135, v155);
    v136 = sub_1C4429108(&a14);
    v134(v136, v155);
    v137 = sub_1C4429108(&a13);
    sub_1C4420C3C(v137, v138, v139);
    v140 = sub_1C4429108(&a12);
    sub_1C4420C3C(v140, &qword_1EC0C3430, &qword_1C4F51390);
    v141 = sub_1C4429108(&a11);
    sub_1C4420C3C(v141, &qword_1EC0C3430, &qword_1C4F51390);
    v142 = sub_1C4429108(&a10);
    sub_1C4420C3C(v142, v143, v144);
  }

  else
  {

    sub_1C44181B0();
    sub_1C4DB625C(v116, v117);
    sub_1C4F00DB8();
    v118 = sub_1C4404DC8();
    sub_1C44344B8(v118, v119);
    v120 = sub_1C4404DC8();
    sub_1C4498FD8(v120, v121);
    a10 = v158;
    v122 = sub_1C4404DC8();
    sub_1C441DFEC(v122, v123);
    sub_1C4F00DA8();
    v124 = sub_1C4417840();
    v125(v124, v159);
    v146(v152, v26 + v163, v42);
    (*(v160 + 16))(v156, v157, v161);
    sub_1C4EFF028();
    v126 = sub_1C4404DC8();
    sub_1C441DFEC(v126, v127);
    (*(v160 + 8))(v157, v161);
    v128 = *(v153 + 32);
    v128(v150, v151, v154);
    v128(v26, v150, v154);
  }

  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C4DA9B14(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C44042B0();
  v9 = *(type metadata accessor for FutureLifeEventStructs.CommuteActivity(v8) + 68);
  sub_1C44D7768(a1, v2 + v9, &qword_1EC0C3428, &unk_1C4F73720);
  v10 = type metadata accessor for FutureLifeEventStructs.DateRelationshipType(0);
  if (sub_1C44157D4(v2 + v9, 1, v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0C3428, &unk_1C4F73720);
  }

  sub_1C4EFECF8();
  sub_1C4420C3C(a1, &qword_1EC0C3428, &unk_1C4F73720);
  v12 = sub_1C4EFEEF8();
  sub_1C440CBF4(v12);
  return sub_1C444088C(v1, v2 + v9, &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4DA9C20(uint64_t a1)
{
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C44042B0();
  v10 = v2 + *(type metadata accessor for FutureLifeEventStructs.CommuteActivity(v9) + 52);
  sub_1C44D7768(a1, v10, &qword_1EC0C3430, &qword_1C4F51390);
  v11 = type metadata accessor for FutureLifeEventStructs.Place(0);
  if (sub_1C4457A10(v11))
  {
    return sub_1C4420C3C(a1, &qword_1EC0C3430, &qword_1C4F51390);
  }

  sub_1C4EFE818();
  sub_1C4420C3C(a1, &qword_1EC0C3430, &qword_1C4F51390);
  v13 = sub_1C4EFEEF8();
  sub_1C440CBF4(v13);
  return sub_1C444088C(v1, v10 + *(v3 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4DA9D30(uint64_t a1)
{
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C44042B0();
  v10 = v2 + *(type metadata accessor for FutureLifeEventStructs.CommuteActivity(v9) + 56);
  sub_1C44D7768(a1, v10, &qword_1EC0C3430, &qword_1C4F51390);
  v11 = type metadata accessor for FutureLifeEventStructs.Place(0);
  if (sub_1C4457A10(v11))
  {
    return sub_1C4420C3C(a1, &qword_1EC0C3430, &qword_1C4F51390);
  }

  sub_1C4EFE3F8();
  sub_1C4420C3C(a1, &qword_1EC0C3430, &qword_1C4F51390);
  v13 = sub_1C4EFEEF8();
  sub_1C440CBF4(v13);
  return sub_1C444088C(v1, v10 + *(v3 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4DA9E40(uint64_t a1@<X8>)
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v2, v3, v4, v5);
  v6 = type metadata accessor for FutureLifeEventStructs.DateRelationshipType(0);
  v7 = a1 + v6[5];
  sub_1C4EFD168();
  v8 = v6[6];
  if (qword_1EDDFED40 != -1)
  {
    sub_1C4415A7C();
    swift_once();
  }

  v9 = type metadata accessor for Source();
  sub_1C442B738(v9, qword_1EDDFD2A8);
  sub_1C441AC58();
  sub_1C448D3B8(v10, a1 + v8, v11);
  v12 = a1 + v6[7];
  sub_1C4EFEEE8();
  sub_1C4401738(v6[8]);
  v13 = a1 + v6[9];
  sub_1C4EFE7B8();
  sub_1C4401738(v6[10]);
  v14 = a1 + v6[11];
  sub_1C4EFECE8();
  sub_1C4401738(v6[12]);
  v15 = a1 + v6[13];
  sub_1C4EFE668();
  sub_1C4401738(v6[14]);
  v16 = a1 + v6[15];
  sub_1C4EFE698();
  sub_1C4401738(v6[16]);
  v17 = a1 + v6[17];
  sub_1C4EFEA38();
  sub_1C4401738(v6[18]);
}

void sub_1C4DA9F58()
{
  sub_1C43FE96C();
  v1 = v0;
  v120 = v2;
  v4 = v3;
  v5 = sub_1C4F00DD8();
  v6 = sub_1C43FCDF8(v5);
  v115 = v7;
  v116 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  v113 = v10;
  sub_1C43FBE44();
  v11 = sub_1C4F00DC8();
  v12 = sub_1C43FCDF8(v11);
  v117 = v13;
  v118 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v112 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  v114 = v18;
  sub_1C43FBE44();
  v19 = sub_1C4F01188();
  v20 = sub_1C43FCDF8(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v123 = sub_1C4EFD548();
  v23 = sub_1C43FCDF8(v123);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  v109 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD230();
  v31 = v30;
  sub_1C43FBE44();
  v32 = sub_1C4EFF0C8();
  v33 = sub_1C43FCDF8(v32);
  v110 = v34;
  v111 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  v107 = v37;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD230();
  v40 = sub_1C43FD2C8(v39);
  v41 = type metadata accessor for FutureLifeEventStructs.Place(v40);
  v42 = v41[5];
  sub_1C4EFEEF8();
  v108 = v42;
  sub_1C43FCF64();
  sub_1C440BAA8(v43, v44, v45, v46);
  v47 = v41[6];
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  v48 = v4;
  v49 = (v4 + v41[7]);
  if (qword_1EDDFED40 != -1)
  {
    sub_1C4415A7C();
    swift_once();
  }

  v50 = type metadata accessor for Source();
  sub_1C442B738(v50, qword_1EDDFD2A8);
  sub_1C441AC58();
  sub_1C448D3B8(v51, v49, v52);
  *(v4 + v41[8]) = 0;
  v53 = v41[9];
  type metadata accessor for FutureLifeEventStructs.AddressRelationshipType(0);
  v105 = v53;
  sub_1C43FCF64();
  sub_1C440BAA8(v54, v55, v56, v57);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v58 = sub_1C4F00978();
  sub_1C442B738(v58, qword_1EDE2DE10);
  v104 = *(v25 + 16);
  v104(v31, v4 + v47, v123);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v59 = sub_1C4F00968();
  v60 = sub_1C4F01CB8();

  v119 = v47;
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    *v61 = 136381187;
    *(v61 + 4) = sub_1C441D828(v120, v1, &v121);
    *(v61 + 12) = 2080;
    sub_1C440B92C();
    sub_1C4DB625C(v62, v63);
    v101 = v60;
    v102 = v1;
    v64 = v49;
    v65 = sub_1C4F02858();
    v66 = v48;
    v68 = v67;
    v103 = *(v25 + 8);
    v103(v31, v123);
    v69 = sub_1C441D828(v65, v68, &v121);
    v48 = v66;
    v49 = v64;
    v1 = v102;

    *(v61 + 14) = v69;
    v70 = v120;
    *(v61 + 22) = 1024;
    *(v61 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v59, v101, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v61, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v103 = *(v25 + 8);
    v103(v31, v123);
    v70 = v120;
  }

  v71 = *v49;
  v72 = v49[1];
  v73 = v49;
  v121 = v70;
  v122 = v1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v71, v72);

  v74 = v121;
  v75 = v122;
  sub_1C4F01178();
  sub_1C4F01148();
  v77 = v76;
  v78 = sub_1C44018C0();
  v79(v78);
  if (v77 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v80 = sub_1C4F00968();
    v81 = sub_1C4F01CD8();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v121 = v83;
      *v82 = 136380675;
      v84 = sub_1C441D828(v74, v75, &v121);

      *(v82 + 4) = v84;
      sub_1C440E068(&dword_1C43F8000, v85, v86, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v83);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    sub_1C43FFB2C();
    *v99 = 5;
    swift_willThrow();
    sub_1C4420C3C(v48 + v108, &qword_1EC0B9A08, &unk_1C4F107B0);
    v103(v48 + v119, v123);
    sub_1C4410004();
    sub_1C447EC94(v73, v100);
    sub_1C4420C3C(v48 + v105, &qword_1EC0C74A0, &unk_1C4F73760);
  }

  else
  {

    sub_1C44181B0();
    sub_1C4DB625C(v87, v88);
    sub_1C4F00DB8();
    v89 = sub_1C4404044();
    sub_1C44344B8(v89, v90);
    v91 = sub_1C4404044();
    sub_1C4498FD8(v91, v92);
    v93 = sub_1C4404044();
    sub_1C441DFEC(v93, v94);
    sub_1C4F00DA8();
    (*(v115 + 8))(v113, v116);
    v104(v109, v48 + v119, v123);
    (*(v117 + 16))(v112, v114, v118);
    sub_1C4EFF028();
    v95 = sub_1C4404044();
    sub_1C441DFEC(v95, v96);
    (*(v117 + 8))(v114, v118);
    v97 = *(v110 + 32);
    v97(v106, v107, v111);
    v98 = sub_1C43FE5F8();
    (v97)(v98);
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C4DAA804()
{
  sub_1C43FE628();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v90 = v7;
  v8 = type metadata accessor for EntityTriple(0);
  v9 = sub_1C43FCDF8(v8);
  v91 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v86 - v17;
  v89 = *v4;
  v19 = type metadata accessor for FutureLifeEventStructs.CommuteActivityType(0);
  sub_1C443F04C(v19[9]);
  if (!v4)
  {
    goto LABEL_8;
  }

  v21 = *v20;
  v22 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v87 = v21;
    v88 = v1;
    v23 = sub_1C4EFF0C8();
    sub_1C43FCE50(v23);
    (*(v24 + 16))(v18, v2);
    v25 = v6;
    v26 = v19[8];
    v27 = v8[5];
    v28 = sub_1C4EFEEF8();
    sub_1C43FCE50(v28);
    (*(v29 + 16))(&v18[v27], v2 + v26);
    v30 = v19[7];
    v31 = v8[9];
    sub_1C441AC58();
    sub_1C448D3B8(v2 + v32, &v18[v33], v34);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    v36 = v35;
    v37 = &v18[v8[6]];
    sub_1C4EFF888();
    v38 = &v18[v8[7]];
    sub_1C4EFEC38();
    v39 = &v18[v8[8]];
    *v39 = v87;
    *(v39 + 1) = v4;
    v40 = &v18[v8[10]];
    *v40 = v90;
    *(v40 + 1) = v25;
    *&v18[v8[11]] = v36;
    v18[v8[12]] = v89;
    v87 = v25;
    v41 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4401EC4(v41, v42, v43, MEMORY[0x1E69E7CC0]);
    v45 = v44;
    v47 = *(v44 + 16);
    v46 = *(v44 + 24);
    if (v47 >= v46 >> 1)
    {
      v84 = sub_1C43FCFE8(v46);
      sub_1C44C9240(v84, v47 + 1, 1, v45);
      v45 = v85;
    }

    *(v45 + 16) = v47 + 1;
    sub_1C43FBF6C();
    v49 = *(v48 + 72);
    sub_1C44083BC();
    sub_1C44DD95C(v18, v50, v51);
    v6 = v87;
  }

  else
  {
LABEL_8:
    v45 = MEMORY[0x1E69E7CC0];
  }

  if (*(v45 + 16))
  {
    v52 = sub_1C4EFF0C8();
    sub_1C43FCE50(v52);
    (*(v53 + 16))(v15, v2);
    v54 = v15 + v8[5];
    sub_1C4EFEBB8();
    v55 = v2 + v19[6];
    v56 = sub_1C4EFD2F8();
    v58 = v57;
    v59 = v19[7];
    v60 = v8[9];
    sub_1C441AC58();
    sub_1C4DB80BC(v61, v62);
    sub_1C4EF9AE8();
    v64 = v63;
    v65 = v15 + v8[6];
    sub_1C4EFF888();
    v66 = v15 + v8[7];
    sub_1C4EFEC38();
    v67 = (v15 + v8[8]);
    *v67 = v56;
    v67[1] = v58;
    v68 = (v15 + v8[10]);
    *v68 = v90;
    v68[1] = v6;
    *(v15 + v8[11]) = v64;
    *(v15 + v8[12]) = v89;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = *(v45 + 16);
      v76 = sub_1C43FCEC0();
      sub_1C44C9240(v76, v77, v78, v45);
      v45 = v79;
    }

    v70 = *(v45 + 16);
    v69 = *(v45 + 24);
    if (v70 >= v69 >> 1)
    {
      v80 = sub_1C43FFD98(v69);
      sub_1C44C9240(v80, v81, v82, v45);
      v45 = v83;
    }

    *(v45 + 16) = v70 + 1;
    sub_1C43FBF6C();
    v72 = *(v71 + 72);
    sub_1C44083BC();
    sub_1C44DD95C(v15, v73, v74);
  }

  sub_1C440EE0C();
  sub_1C44109F8();
}

uint64_t sub_1C4DAAB98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

unint64_t sub_1C4DAAD98(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DAAE5C()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  v2 = sub_1C456902C(&qword_1EC0C75C0, &qword_1C4F73C00);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4DB7478();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C4413E04();
  sub_1C4DB625C(v6, v7);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F027E8();
  if (!v0)
  {
    v8 = type metadata accessor for FutureLifeEventStructs.CommuteActivityType(0);
    v9 = v8[5];
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C442DB54();
    sub_1C4DB625C(v10, v11);
    sub_1C4460C30();
    sub_1C4402150();
    sub_1C4F02778();
    v12 = v8[6];
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C440B92C();
    sub_1C4DB625C(v13, v14);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C443439C();
    sub_1C4412A94();
    sub_1C4DB625C(v15, v16);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v17 = v8[8];
    sub_1C4402150();
    sub_1C4F027E8();
    v18 = (v1 + v8[9]);
    v19 = *v18;
    v20 = v18[1];
    sub_1C4402150();
    sub_1C4F02738();
  }

  v21 = sub_1C440231C();
  v22(v21);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DAB0C8()
{
  sub_1C43FE96C();
  v2 = v1;
  v56 = v3;
  v4 = sub_1C4EFEEF8();
  v5 = sub_1C43FCDF8(v4);
  v65 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  v57 = v9;
  v10 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v58 = v14;
  sub_1C43FBE44();
  v60 = sub_1C4EFF0C8();
  v15 = sub_1C43FCDF8(v60);
  v59 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v61 = sub_1C456902C(&qword_1EC0C7570, &qword_1C4F73BD8);
  sub_1C43FCDF8(v61);
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C440DED0();
  v25 = type metadata accessor for FutureLifeEventStructs.CommuteActivityType(0);
  v26 = sub_1C43FBCE0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v31 = v30 - v29;
  v66 = *(v32 + 20);
  sub_1C43FCF64();
  v64 = v4;
  sub_1C440BAA8(v33, v34, v35, v4);
  v62 = v25[6];
  sub_1C4EFD128();
  v36 = v25[7];
  if (qword_1EDDFED40 != -1)
  {
    sub_1C4415A7C();
    swift_once();
  }

  v37 = type metadata accessor for Source();
  sub_1C442B738(v37, qword_1EDDFD2A8);
  sub_1C441AC58();
  v63 = v36;
  sub_1C448D3B8(v38, v31 + v36, v39);
  v40 = v25[8];
  sub_1C4EFEBF8();
  v41 = v2[4];
  sub_1C4417F50(v2, v2[3]);
  sub_1C4DB7478();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
    sub_1C4420C3C(v31 + v66, &qword_1EC0B9A08, &unk_1C4F107B0);
    v44 = sub_1C4EFD548();
    sub_1C43FBCE0(v44);
    (*(v45 + 8))(v31 + v62);
    sub_1C4410004();
    sub_1C447EC94(v31 + v63, v46);
    (*(v65 + 8))(v31 + v40, v64);
  }

  else
  {
    sub_1C4413E04();
    sub_1C4DB625C(v42, v43);
    sub_1C43FE6CC();
    sub_1C441B0B4();
    sub_1C4F026C8();
    (*(v59 + 32))(v31, v21, v60);
    sub_1C442DB54();
    sub_1C4DB625C(v47, v48);
    sub_1C441B0B4();
    sub_1C4F02658();
    sub_1C444088C(v58, v31 + v66, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441B0B4();
    sub_1C4F026C8();
    (*(v65 + 40))(v31 + v40, v57, v64);
    sub_1C4456A34();
    sub_1C441B0B4();
    v49 = sub_1C4F02618();
    v51 = v50;
    v52 = (v31 + v25[9]);
    sub_1C44585FC();
    v53 = sub_1C4485B1C();
    v54(v53);
    *v52 = v49;
    v52[1] = v51;
    sub_1C448D3B8(v31, v56, type metadata accessor for FutureLifeEventStructs.CommuteActivityType);
    sub_1C440962C(v2);
    sub_1C442C260();
    sub_1C447EC94(v31, v55);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DAB634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DAAB98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DAB65C(uint64_t a1)
{
  v2 = sub_1C4DB7478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DAB698(uint64_t a1)
{
  v2 = sub_1C4DB7478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DAB71C()
{
  sub_1C43FE96C();
  v3 = v0;
  v160 = v4;
  v156 = v5;
  v158 = v6;
  v159 = v7;
  v157 = type metadata accessor for EntityTriple(0);
  v8 = sub_1C43FCDF8(v157);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v152 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v151 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v150 = v15;
  sub_1C43FBE44();
  v154 = sub_1C4EFD548();
  v16 = sub_1C43FCDF8(v154);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v163 = sub_1C4EFF8A8();
  v21 = sub_1C43FCDF8(v163);
  v162 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  v28 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v28);
  v30 = *(v29 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C4401780();
  v32 = sub_1C4EFEEF8();
  v33 = sub_1C43FCDF8(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBCC4();
  v40 = v39 - v38;
  v161 = *v160;
  v42 = v41;
  sub_1C445FFA8(v3, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
  v43 = sub_1C44A1500();
  sub_1C440175C(v43, v44, v42);
  if (v45)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v46 = sub_1C43FFB2C();
    sub_1C4414040(v46, v47);
  }

  else
  {
    (*(v35 + 32))(v40, v1, v42);
    v48 = type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType(0);
    (*(v18 + 16))(v2, v3 + *(v48 + 20), v154);
    sub_1C4EFF838();
    v153 = v3;
    v155 = v48;
    v49 = (v3 + *(v48 + 32));
    v50 = v49[1];
    v51 = v27;
    v149 = v27;
    v52 = v35;
    if (!v50)
    {
      goto LABEL_11;
    }

    v53 = *v49;
    v54 = HIBYTE(v50) & 0xF;
    if ((v50 & 0x2000000000000000) == 0)
    {
      v54 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (v54)
    {
      v55 = sub_1C4EFF0C8();
      sub_1C43FCE50(v55);
      (*(v56 + 16))(v150, v156);
      v57 = *(v35 + 16);
      v57(v150 + v157[5], v40, v42);
      (*(v162 + 16))(v150 + v157[6], v51, v163);
      v57(v150 + v157[7], v3 + v155[7], v42);
      v58 = v155[6];
      v59 = v157[9];
      sub_1C441AC58();
      sub_1C448D3B8(v3 + v60, v150 + v61, v62);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v63 = (v150 + v157[8]);
      *v63 = v53;
      v63[1] = v50;
      v64 = (v150 + v157[10]);
      *v64 = v158;
      v64[1] = v159;
      *(v150 + v157[11]) = v65;
      *(v150 + v157[12]) = v161;
      v66 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v66, v67, v68, MEMORY[0x1E69E7CC0]);
      v70 = v69;
      v72 = *(v69 + 16);
      v71 = *(v69 + 24);
      if (v72 >= v71 >> 1)
      {
        v140 = sub_1C43FCFE8(v71);
        sub_1C44C9240(v140, v72 + 1, 1, v70);
        v70 = v141;
      }

      *(v70 + 16) = v72 + 1;
      sub_1C43FBF6C();
      v74 = *(v73 + 72);
      sub_1C44083BC();
      sub_1C44DD95C(v150, v75, v76);
      v51 = v149;
    }

    else
    {
LABEL_11:
      v70 = MEMORY[0x1E69E7CC0];
    }

    v77 = (v3 + v155[10]);
    v78 = v77[1];
    if (!v78)
    {
      goto LABEL_21;
    }

    v79 = *v77;
    v80 = HIBYTE(v78) & 0xF;
    if ((v78 & 0x2000000000000000) == 0)
    {
      v80 = v79 & 0xFFFFFFFFFFFFLL;
    }

    if (v80)
    {
      v81 = sub_1C4EFF0C8();
      sub_1C43FCE50(v81);
      (*(v82 + 16))(v151, v156);
      v83 = *(v52 + 16);
      v83(v151 + v157[5]);
      (*(v162 + 16))(v151 + v157[6], v51, v163);
      (v83)(v151 + v157[7], v153 + v155[9], v42);
      v3 = v153;
      v84 = v155[6];
      v85 = v157[9];
      sub_1C441AC58();
      sub_1C448D3B8(v153 + v86, v151 + v87, v88);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v89 = (v151 + v157[8]);
      *v89 = v79;
      v89[1] = v78;
      v90 = (v151 + v157[10]);
      *v90 = v158;
      v90[1] = v159;
      *(v151 + v157[11]) = v91;
      *(v151 + v157[12]) = v161;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v142 = *(v70 + 16);
        v143 = sub_1C43FCEC0();
        sub_1C44C9240(v143, v144, v145, v70);
        v70 = v146;
      }

      v93 = *(v70 + 16);
      v92 = *(v70 + 24);
      v94 = v152;
      if (v93 >= v92 >> 1)
      {
        v147 = sub_1C43FCFE8(v92);
        sub_1C44C9240(v147, v93 + 1, 1, v70);
        v70 = v148;
      }

      *(v70 + 16) = v93 + 1;
      sub_1C43FBF6C();
      v96 = *(v95 + 72);
      sub_1C44083BC();
      sub_1C44DD95C(v151, v97, v98);
      v51 = v149;
    }

    else
    {
LABEL_21:
      v94 = v152;
    }

    if (*(v70 + 16))
    {
      v99 = sub_1C4EFF0C8();
      sub_1C43FCE50(v99);
      v101 = *(v100 + 16);
      v102 = sub_1C4485B1C();
      v103(v102);
      v104 = sub_1C4456310(v157[5]);
      v105 = v40;
      v106(v104, v40, v42);
      v107 = sub_1C4456310(v157[6]);
      v108(v107, v51, v163);
      v109 = v94 + v157[7];
      sub_1C4EFEBB8();
      v110 = sub_1C4EFD2F8();
      v112 = v111;
      v113 = v155[6];
      v114 = v157[9];
      sub_1C441AC58();
      sub_1C448D3B8(v3 + v115, v94 + v116, v117);
      sub_1C4EF9AE8();
      v118 = (v94 + v157[8]);
      *v118 = v110;
      v118[1] = v112;
      v119 = (v94 + v157[10]);
      *v119 = v158;
      v119[1] = v159;
      *(v94 + v157[11]) = v120;
      *(v94 + v157[12]) = v161;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v131 = *(v70 + 16);
        v132 = sub_1C43FCEC0();
        sub_1C44C9240(v132, v133, v134, v70);
        v70 = v135;
      }

      v122 = *(v70 + 16);
      v121 = *(v70 + 24);
      if (v122 >= v121 >> 1)
      {
        v136 = sub_1C43FFD98(v121);
        sub_1C44C9240(v136, v137, v138, v70);
        v70 = v139;
      }

      v123 = sub_1C43FEBB4();
      v124(v123);
      (*(v52 + 8))(v105, v42);
      *(v70 + 16) = v122 + 1;
      sub_1C43FBF6C();
      v126 = *(v125 + 72);
      sub_1C44083BC();
      sub_1C44DD95C(v94, v127, v128);
    }

    else
    {
      v129 = sub_1C43FEBB4();
      v130(v129);
      (*(v52 + 8))(v40, v42);
    }
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4DABF78(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 6:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DAC05C()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  v2 = sub_1C456902C(&qword_1EC0C75D0, &qword_1C4F73C10);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4DB7520();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB54();
  sub_1C4DB625C(v6, v7);
  sub_1C44D7E30();
  sub_1C4405570();
  sub_1C4F02778();
  if (!v1)
  {
    v20 = type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType(0);
    v8 = v20[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C440B92C();
    sub_1C4DB625C(v9, v10);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v11 = v20[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C4412A94();
    sub_1C4DB625C(v12, v13);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C43FE7C0();
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C440C15C((v0 + v20[8]));
    sub_1C4F02738();
    v14 = v20[9];
    sub_1C4405570();
    sub_1C4F027E8();
    v15 = (v0 + v20[10]);
    v16 = *v15;
    v17 = v15[1];
    sub_1C4402150();
    sub_1C4F02738();
  }

  v18 = sub_1C440231C();
  v19(v18);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DAC2C8()
{
  sub_1C43FE96C();
  v2 = v1;
  v54 = v3;
  v4 = sub_1C4EFEEF8();
  v5 = sub_1C43FCDF8(v4);
  v56 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v55 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  v57 = v11;
  v12 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  v58 = v16;
  v17 = sub_1C456902C(&qword_1EC0C7590, &qword_1C4F73BE8);
  v60 = sub_1C43FCDF8(v17);
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBC74();
  v21 = sub_1C43FBE44();
  v22 = type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType(v21);
  v23 = sub_1C43FBCE0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v28 = v27 - v26;
  sub_1C43FCF64();
  v59 = v4;
  sub_1C440BAA8(v29, v30, v31, v4);
  v32 = v28 + v22[5];
  sub_1C4EFD258();
  v33 = v22[6];
  if (qword_1EDDFED40 != -1)
  {
    sub_1C4415A7C();
    swift_once();
  }

  v34 = type metadata accessor for Source();
  sub_1C442B738(v34, qword_1EDDFD2A8);
  sub_1C441AC58();
  sub_1C448D3B8(v35, v28 + v33, v36);
  v37 = v22[7];
  sub_1C4EFE558();
  v38 = (v28 + v22[8]);
  *v38 = 0;
  v38[1] = 0;
  v39 = v22[9];
  sub_1C4EFE658();
  v40 = (v28 + v22[10]);
  *v40 = 0;
  v40[1] = 0;
  v41 = v2[4];
  sub_1C4417F50(v2, v2[3]);
  sub_1C4DB7520();
  sub_1C4F02BC8();
  if (!v0)
  {
    v53 = v38;
    sub_1C442DB54();
    sub_1C4DB625C(v42, v43);
    sub_1C44147D8();
    sub_1C4F02658();
    sub_1C444088C(v58, v28, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C44147D8();
    sub_1C4F026C8();
    v44 = *(v56 + 40);
    v44(v28 + v37, v57, v59);
    sub_1C4428F20();
    sub_1C43FE664();
    *v53 = sub_1C4F02618();
    v53[1] = v45;
    sub_1C4456A34();
    sub_1C44147D8();
    sub_1C43FE664();
    sub_1C4F026C8();
    v44(v28 + v39, v55, v59);
    sub_1C43FE664();
    v47 = sub_1C4F02618();
    v49 = v48;
    v50 = sub_1C4416968();
    v51(v50, v60);
    *v40 = v47;
    v40[1] = v49;
    sub_1C4441370();
    sub_1C448D3B8(v28, v54, v52);
  }

  sub_1C440962C(v2);
  sub_1C440EBE8();
  sub_1C447EC94(v28, v46);
  sub_1C43FBC80();
}

uint64_t sub_1C4DAC728(uint64_t a1)
{
  v2 = sub_1C4DB7520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DAC764(uint64_t a1)
{
  v2 = sub_1C4DB7520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DAC7E8()
{
  sub_1C43FE96C();
  v4 = v3;
  v419 = v5;
  v421 = v6;
  v422 = v7;
  v420 = type metadata accessor for EntityTriple(0);
  v8 = sub_1C43FCDF8(v420);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v414 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v413 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  v412 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C446C1EC(v17, v18, v19, v20, v21, v22, v23, v24, v402);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  v410 = v26;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  v409 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  v408 = v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD230();
  sub_1C43FD2C8(v35);
  v427 = sub_1C4EFD548();
  v36 = sub_1C43FCDF8(v427);
  v425 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  v42 = v41 - v40;
  v43 = sub_1C4EFF8A8();
  v44 = sub_1C43FCDF8(v43);
  v423 = v45;
  v424 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBCC4();
  v50 = v49 - v48;
  v51 = &qword_1EC0B9A08;
  v52 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v52);
  v54 = *(v53 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C4401780();
  v56 = sub_1C4EFEEF8();
  v57 = sub_1C43FCDF8(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v417 = *v4;
  v62 = v0;
  v63 = v0;
  v65 = v64;
  sub_1C445FFA8(v62, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
  v66 = sub_1C44A1500();
  sub_1C440175C(v66, v67, v65);
  if (v68)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v69 = sub_1C43FFB2C();
    sub_1C4414040(v69, v70);
    goto LABEL_87;
  }

  v71 = *(v59 + 32);
  v72 = sub_1C43FE5F8();
  v418 = v65;
  v73(v72);
  v74 = type metadata accessor for FutureLifeEventStructs.AddressRelationshipType(0);
  v403 = v74[5];
  (*(v425 + 16))(v42, v63 + v403, v427);
  v415 = v50;
  sub_1C4EFF838();
  v75 = v63 + v74[8];
  v76 = *(v75 + 1);
  v426 = v63;
  v416 = v2;
  if (v76)
  {
    v51 = *v75;
    v77 = HIBYTE(v76) & 0xF;
    if ((v76 & 0x2000000000000000) == 0)
    {
      v77 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (v77)
    {
      v78 = sub_1C4EFF0C8();
      sub_1C43FCE50(v78);
      v80 = *(v79 + 16);
      v81 = sub_1C440F108();
      v82(v81);
      v65 = v420;
      v83 = *(v59 + 16);
      (v83)(v74 + v420[5], v2, v418);
      sub_1C440CEE0();
      v85 = sub_1C44B67C4(v84);
      v86(v85);
      v87 = v74 + v420[7];
      sub_1C441D540(v74[7]);
      v83();
      v63 = v426;
      v88 = v74[6];
      v89 = v420[9];
      sub_1C441AC58();
      sub_1C4DB80BC(v90, v91);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C442A7D8();
      *v92 = v51;
      v92[1] = v76;
      v94 = sub_1C4418DE8(v93);
      sub_1C4401EC4(v94, v95, v96, MEMORY[0x1E69E7CC0]);
      v51 = *(v97 + 16);
      v98 = *(v97 + 24);
      v428 = v97;
      if (v51 >= v98 >> 1)
      {
        v312 = sub_1C43FCFE8(v98);
        sub_1C44C9240(v312, v51 + 1, 1, v428);
        v428 = v313;
      }

      *(v428 + 16) = v51 + 1;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v404, v99, v100);
      v101 = v59;
      goto LABEL_14;
    }

    v428 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v428 = MEMORY[0x1E69E7CC0];
  }

  v101 = v59;
LABEL_14:
  v102 = v63 + v74[10];
  v103 = *(v102 + 1);
  if (v103)
  {
    v51 = *v102;
    v104 = HIBYTE(v103) & 0xF;
    if ((v103 & 0x2000000000000000) == 0)
    {
      v104 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (v104)
    {
      v105 = sub_1C4EFF0C8();
      sub_1C43FCE50(v105);
      v107 = *(v106 + 16);
      v108 = sub_1C440F108();
      v109(v108);
      sub_1C441E994();
      sub_1C442EEA8();
      v63();
      sub_1C440CEE0();
      v111 = sub_1C44B67C4(v110);
      v112(v111);
      v113 = v74 + *(v65 + 28);
      sub_1C441D540(v74[9]);
      v63();
      v63 = v426;
      v114 = v74[6];
      v115 = *(v65 + 36);
      sub_1C441AC58();
      sub_1C4DB80BC(v116, v117);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C442A7D8();
      *v118 = v51;
      v118[1] = v103;
      sub_1C4418DE8(v119);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v314 = *(v428 + 16);
        v315 = sub_1C43FCEC0();
        sub_1C44C9240(v315, v316, v317, v318);
        v428 = v319;
      }

      v51 = *(v428 + 16);
      v120 = *(v428 + 24);
      v103 = v51 + 1;
      v101 = v59;
      if (v51 >= v120 >> 1)
      {
        v320 = sub_1C43FCFE8(v120);
        sub_1C44C9240(v320, v51 + 1, 1, v428);
        v428 = v321;
      }

      *(v428 + 16) = v103;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v405, v121, v122);
    }
  }

  sub_1C443F04C(v74[12]);
  if (v51)
  {
    sub_1C44304FC(v123);
    if (v124)
    {
      v125 = sub_1C4EFF0C8();
      sub_1C43FCE50(v125);
      v127 = *(v126 + 16);
      v128 = sub_1C440F108();
      v129(v128);
      sub_1C441E994();
      sub_1C442EEA8();
      v63();
      sub_1C440CEE0();
      v131 = sub_1C44B67C4(v130);
      v132(v131);
      v133 = v74 + *(v65 + 28);
      sub_1C441D540(v74[11]);
      v63();
      v63 = v426;
      v134 = v74[6];
      v135 = *(v65 + 36);
      sub_1C441AC58();
      sub_1C4DB80BC(v136, v137);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C442A7D8();
      *v138 = v103;
      v138[1] = v51;
      sub_1C4418DE8(v139);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v322 = *(v428 + 16);
        v323 = sub_1C43FCEC0();
        sub_1C44C9240(v323, v324, v325, v326);
        v428 = v327;
      }

      sub_1C440C1C8();
      v101 = v59;
      if (v141)
      {
        v328 = sub_1C43FF640(v140);
        sub_1C44C9240(v328, v329, v330, v428);
        v428 = v331;
      }

      *(v428 + 16) = v51;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v406, v142, v143);
    }
  }

  sub_1C443F04C(v74[14]);
  if (v51)
  {
    sub_1C44304FC(v144);
    if (v145)
    {
      v146 = sub_1C4EFF0C8();
      sub_1C43FCE50(v146);
      v148 = *(v147 + 16);
      v149 = sub_1C440F108();
      v150(v149);
      sub_1C441E994();
      sub_1C442EEA8();
      v63();
      sub_1C440CEE0();
      v152 = sub_1C44B67C4(v151);
      v153(v152);
      v154 = v74 + *(v65 + 28);
      sub_1C441D540(v74[13]);
      v63();
      v63 = v426;
      v155 = v74[6];
      v156 = *(v65 + 36);
      sub_1C441AC58();
      sub_1C4DB80BC(v157, v158);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C442A7D8();
      *v159 = v103;
      v159[1] = v51;
      sub_1C4418DE8(v160);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v332 = *(v428 + 16);
        v333 = sub_1C43FCEC0();
        sub_1C44C9240(v333, v334, v335, v336);
        v428 = v337;
      }

      sub_1C440C1C8();
      v101 = v59;
      if (v141)
      {
        v338 = sub_1C43FF640(v161);
        sub_1C44C9240(v338, v339, v340, v428);
        v428 = v341;
      }

      *(v428 + 16) = v51;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v407, v162, v163);
    }
  }

  sub_1C443F04C(v74[16]);
  if (v51)
  {
    sub_1C44304FC(v164);
    if (v165)
    {
      v166 = sub_1C4EFF0C8();
      sub_1C43FCE50(v166);
      v168 = *(v167 + 16);
      v169 = sub_1C442F9D4();
      v170(v169);
      v171 = sub_1C43FFA14();
      (v63)(v171);
      v172 = sub_1C441C67C();
      v173(v172);
      v174 = sub_1C44107D8(v74[15]);
      (v63)(v174);
      v63 = v426;
      v175 = v74[6];
      v176 = *(v65 + 36);
      sub_1C441AC58();
      sub_1C4475CE8(v177, v178);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C44115C0(v179);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v342 = *(v428 + 16);
        v343 = sub_1C43FCEC0();
        sub_1C44C9240(v343, v344, v345, v346);
        v428 = v347;
      }

      sub_1C440C1C8();
      v101 = v59;
      if (v141)
      {
        v348 = sub_1C43FF640(v180);
        sub_1C44C9240(v348, v349, v350, v428);
        v428 = v351;
      }

      *(v428 + 16) = v51;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v408, v181, v182);
    }
  }

  sub_1C443F04C(v74[18]);
  if (v51)
  {
    sub_1C44304FC(v183);
    if (v184)
    {
      v185 = sub_1C4EFF0C8();
      sub_1C43FCE50(v185);
      v187 = *(v186 + 16);
      v188 = sub_1C442F9D4();
      v189(v188);
      v190 = sub_1C43FFA14();
      (v63)(v190);
      v191 = sub_1C441C67C();
      v192(v191);
      v193 = sub_1C44107D8(v74[17]);
      (v63)(v193);
      v63 = v426;
      v194 = v74[6];
      v195 = *(v65 + 36);
      sub_1C441AC58();
      sub_1C4475CE8(v196, v197);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C44115C0(v198);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v352 = *(v428 + 16);
        v353 = sub_1C43FCEC0();
        sub_1C44C9240(v353, v354, v355, v356);
        v428 = v357;
      }

      sub_1C440C1C8();
      v101 = v59;
      if (v141)
      {
        v358 = sub_1C43FF640(v199);
        sub_1C44C9240(v358, v359, v360, v428);
        v428 = v361;
      }

      *(v428 + 16) = v51;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v409, v200, v201);
    }
  }

  sub_1C443F04C(v74[20]);
  if (v51)
  {
    sub_1C44304FC(v202);
    if (v203)
    {
      v204 = sub_1C4EFF0C8();
      sub_1C43FCE50(v204);
      v206 = *(v205 + 16);
      v207 = sub_1C442F9D4();
      v208(v207);
      v209 = sub_1C43FFA14();
      (v63)(v209);
      v210 = sub_1C441C67C();
      v211(v210);
      v212 = sub_1C44107D8(v74[19]);
      (v63)(v212);
      v63 = v426;
      v213 = v74[6];
      v214 = *(v65 + 36);
      sub_1C441AC58();
      sub_1C4475CE8(v215, v216);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C44115C0(v217);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v362 = *(v428 + 16);
        v363 = sub_1C43FCEC0();
        sub_1C44C9240(v363, v364, v365, v366);
        v428 = v367;
      }

      sub_1C440C1C8();
      v101 = v59;
      if (v141)
      {
        v368 = sub_1C43FF640(v218);
        sub_1C44C9240(v368, v369, v370, v428);
        v428 = v371;
      }

      *(v428 + 16) = v51;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v410, v219, v220);
    }
  }

  sub_1C443F04C(v74[22]);
  if (v51)
  {
    sub_1C44304FC(v221);
    if (v222)
    {
      v223 = sub_1C4EFF0C8();
      sub_1C43FCE50(v223);
      v225 = *(v224 + 16);
      v226 = sub_1C442F9D4();
      v227(v226);
      v228 = sub_1C43FFA14();
      (v63)(v228);
      v229 = sub_1C441C67C();
      v230(v229);
      v231 = sub_1C44107D8(v74[21]);
      (v63)(v231);
      v63 = v426;
      v232 = v74[6];
      v233 = *(v65 + 36);
      sub_1C441AC58();
      sub_1C4475CE8(v234, v235);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C44115C0(v236);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v372 = *(v428 + 16);
        v373 = sub_1C43FCEC0();
        sub_1C44C9240(v373, v374, v375, v376);
        v428 = v377;
      }

      sub_1C440C1C8();
      v101 = v59;
      if (v141)
      {
        v378 = sub_1C43FF640(v237);
        sub_1C44C9240(v378, v379, v380, v428);
        v428 = v381;
      }

      *(v428 + 16) = v51;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v411, v238, v239);
    }
  }

  sub_1C443F04C(v74[24]);
  if (v51)
  {
    sub_1C44304FC(v240);
    if (v241)
    {
      v242 = sub_1C4EFF0C8();
      sub_1C43FCE50(v242);
      v244 = *(v243 + 16);
      v245 = sub_1C442F9D4();
      v246(v245);
      v247 = sub_1C43FFA14();
      (v63)(v247);
      v248 = sub_1C441C67C();
      v249(v248);
      v250 = sub_1C44107D8(v74[23]);
      (v63)(v250);
      v63 = v426;
      v251 = v74[6];
      v252 = *(v65 + 36);
      sub_1C441AC58();
      sub_1C4475CE8(v253, v254);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C44115C0(v255);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v382 = *(v428 + 16);
        v383 = sub_1C43FCEC0();
        sub_1C44C9240(v383, v384, v385, v386);
        v428 = v387;
      }

      sub_1C440C1C8();
      v101 = v59;
      if (v141)
      {
        v388 = sub_1C43FF640(v256);
        sub_1C44C9240(v388, v389, v390, v428);
        v428 = v391;
      }

      *(v428 + 16) = v51;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v412, v257, v258);
    }
  }

  sub_1C443F04C(v74[26]);
  if (v51 && (sub_1C44304FC(v259), v260))
  {
    v261 = sub_1C4EFF0C8();
    sub_1C43FCE50(v261);
    v263 = *(v262 + 16);
    v264 = sub_1C442F9D4();
    v265(v264);
    v266 = sub_1C43FFA14();
    (v63)(v266);
    v267 = sub_1C441C67C();
    v268(v267);
    v269 = sub_1C44107D8(v74[25]);
    (v63)(v269);
    v63 = v426;
    v270 = v74[6];
    v271 = *(v65 + 36);
    sub_1C441AC58();
    sub_1C4475CE8(v272, v273);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C44115C0(v274);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v392 = *(v428 + 16);
      v393 = sub_1C43FCEC0();
      sub_1C44C9240(v393, v394, v395, v396);
      v428 = v397;
    }

    sub_1C440C1C8();
    v101 = v59;
    v276 = v415;
    if (v141)
    {
      v398 = sub_1C43FF640(v275);
      sub_1C44C9240(v398, v399, v400, v428);
      v428 = v401;
    }

    *(v428 + 16) = v51;
    sub_1C43FBF6C();
    v278 = *(v277 + 72);
    sub_1C44083BC();
    sub_1C44DD95C(v413, v279, v280);
  }

  else
  {
    v276 = v415;
  }

  if (*(v428 + 16))
  {
    v281 = sub_1C4EFF0C8();
    sub_1C43FCE50(v281);
    (*(v282 + 16))(v414, v419);
    v283 = sub_1C4456310(v420[5]);
    v284(v283, v416, v418);
    v285 = sub_1C4456310(v420[6]);
    v286(v285, v276);
    v287 = v414 + v420[7];
    sub_1C4EFEBB8();
    sub_1C4EFD2F8();
    sub_1C440D158();
    v288 = v74[6];
    v289 = v420[9];
    sub_1C441AC58();
    sub_1C448D3B8(v63 + v290, v414 + v291, v292);
    sub_1C4EF9AE8();
    v293 = (v414 + v420[8]);
    *v293 = v51;
    v293[1] = v63 + v403;
    v294 = (v414 + v420[10]);
    *v294 = v421;
    v294[1] = v422;
    *(v414 + v420[11]) = v295;
    *(v414 + v420[12]) = v417;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v302 = *(v428 + 16);
      v303 = sub_1C43FCEC0();
      sub_1C44C9240(v303, v304, v305, v306);
      v428 = v307;
    }

    v297 = *(v428 + 16);
    v296 = *(v428 + 24);
    if (v297 >= v296 >> 1)
    {
      v308 = sub_1C43FF640(v296);
      sub_1C44C9240(v308, v309, v310, v428);
      v428 = v311;
    }

    (*(v423 + 8))(v276, v424);
    (*(v101 + 8))(v416, v418);
    *(v428 + 16) = v297 + 1;
    sub_1C43FBF6C();
    v299 = *(v298 + 72);
    sub_1C44083BC();
    sub_1C44DD95C(v414, v300, v301);
  }

  else
  {
    (*(v423 + 8))(v276, v424);
    (*(v101 + 8))(v416, v418);
  }

LABEL_87:
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4DAD8EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4FC7FF0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6867756F726F6874 && a2 == 0xEC00000065726166;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000019 && 0x80000001C4FC8B30 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F726F6854627573 && a2 == 0xEF65726166686775;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000015 && 0x80000001C4FC8010 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6C61636F4C627573 && a2 == 0xEB00000000797469;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x80000001C4FC8030 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7974696C61636F6CLL && a2 == 0xE800000000000000;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001FLL && 0x80000001C4FC8050 == a2;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000015 && 0x80000001C4FB0B70 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001CLL && 0x80000001C4FC8070 == a2;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000012 && 0x80000001C4FB0B50 == a2;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000014 && 0x80000001C4FC8090 == a2;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564;
                                  if (v21 || (sub_1C4F02938() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000011 && 0x80000001C4FC80B0 == a2;
                                    if (v22 || (sub_1C4F02938() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
                                      if (v23 || (sub_1C4F02938() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000018 && 0x80000001C4FC80D0 == a2;
                                        if (v24 || (sub_1C4F02938() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972;
                                          if (v25 || (sub_1C4F02938() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
                                            if (v26 || (sub_1C4F02938() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else if (a1 == 1701667182 && a2 == 0xE400000000000000)
                                            {

                                              return 22;
                                            }

                                            else
                                            {
                                              v28 = sub_1C4F02938();

                                              if (v28)
                                              {
                                                return 22;
                                              }

                                              else
                                              {
                                                return 23;
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
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4DAE008(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6867756F726F6874;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0x6F726F6854627573;
      break;
    case 7:
    case 12:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x6C61636F4C627573;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x7974696C61636F6CLL;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
      result = 0x6F436C6174736F70;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x7972746E756F63;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    case 20:
      result = 0x746E756F436F7369;
      break;
    case 21:
      result = 0x6572705F656D616ELL;
      break;
    case 22:
      result = 1701667182;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DAE2C4()
{
  sub_1C43FE96C();
  v2 = sub_1C456902C(&qword_1EC0C75F8, &qword_1C4F73C30);
  sub_1C43FCDF8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4401780();
  sub_1C43FD870();
  sub_1C4DB761C();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB54();
  sub_1C4DB625C(v8, v9);
  sub_1C44D7E30();
  sub_1C4409480();
  sub_1C4F02778();
  if (!v0)
  {
    v25 = type metadata accessor for FutureLifeEventStructs.AddressRelationshipType(0);
    v10 = v25[5];
    sub_1C4EFD548();
    sub_1C440B92C();
    sub_1C4DB625C(v11, v12);
    sub_1C4428FA0();
    v13 = v25[6];
    type metadata accessor for Source();
    sub_1C4412A94();
    sub_1C4DB625C(v14, v15);
    sub_1C4428FA0();
    sub_1C43FE7C0();
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v25[8]);
    sub_1C44151C4(4);
    v16 = v25[9];
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v25[10]);
    sub_1C44151C4(6);
    v17 = v25[11];
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v25[12]);
    sub_1C44151C4(8);
    v18 = v25[13];
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v25[14]);
    sub_1C44151C4(10);
    v19 = v25[15];
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v25[16]);
    sub_1C44151C4(12);
    v20 = v25[17];
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v25[18]);
    sub_1C44151C4(14);
    v21 = v25[19];
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v25[20]);
    sub_1C44151C4(16);
    v22 = v25[21];
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v25[22]);
    sub_1C44151C4(18);
    v23 = v25[23];
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v25[24]);
    sub_1C44151C4(20);
    v24 = v25[25];
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v25[26]);
    sub_1C44151C4(22);
  }

  (*(v4 + 8))(v1, v2);
  sub_1C43FBC80();
}

void sub_1C4DAE730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  v130 = v29;
  v30 = sub_1C4EFEEF8();
  v31 = sub_1C43FCDF8(v30);
  v140 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  v132 = v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C446C1EC(v42, v43, v44, v45, v46, v47, v48, v49, v129);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FD230();
  v141 = v53;
  v54 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v54);
  v56 = *(v55 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBC74();
  v142 = v58;
  v145 = sub_1C456902C(&qword_1EC0C75E8, &qword_1C4F73C28);
  sub_1C43FCDF8(v145);
  v143 = v59;
  v61 = *(v60 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBC74();
  v149 = v63;
  v64 = sub_1C43FBE44();
  v65 = type metadata accessor for FutureLifeEventStructs.AddressRelationshipType(v64);
  v66 = sub_1C43FBCE0(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FBCC4();
  sub_1C440DED0();
  sub_1C43FCF64();
  v144 = v30;
  sub_1C440BAA8(v69, v70, v71, v30);
  v72 = v24 + v65[5];
  sub_1C4EFD1D8();
  v73 = v65[6];
  if (qword_1EDDFED40 != -1)
  {
    sub_1C4415A7C();
    swift_once();
  }

  v74 = type metadata accessor for Source();
  sub_1C442B738(v74, qword_1EDDFD2A8);
  sub_1C441AC58();
  sub_1C448D3B8(v75, v24 + v73, v76);
  v139 = v65[7];
  sub_1C4EFE5A8();
  sub_1C442A790(v65[8]);
  v138 = v77;
  v137 = v65[9];
  sub_1C4EFE748();
  sub_1C442A790(v65[10]);
  v136 = v78;
  v135 = v65[11];
  sub_1C4EFE4B8();
  sub_1C442A790(v65[12]);
  v134 = v79;
  v133 = v65[13];
  sub_1C4EFEDE8();
  sub_1C442A790(v65[14]);
  sub_1C444C0B0(v65[15]);
  sub_1C4EFEA58();
  sub_1C442A790(v65[16]);
  sub_1C444C0B0(v65[17]);
  sub_1C4EFE8D8();
  v80 = (v24 + v65[18]);
  *v80 = 0;
  v80[1] = 0;
  sub_1C444C0B0(v65[19]);
  sub_1C4EFE378();
  v81 = (v24 + v65[20]);
  *v81 = 0;
  v81[1] = 0;
  sub_1C444C0B0(v65[21]);
  sub_1C4EFECD8();
  v82 = (v24 + v65[22]);
  *v82 = 0;
  v82[1] = 0;
  sub_1C444C0B0(v65[23]);
  sub_1C4EFE688();
  v83 = (v24 + v65[24]);
  *v83 = 0;
  v83[1] = 0;
  v84 = v65[25];
  sub_1C4EFEBF8();
  v85 = v65[26];
  v148 = v24;
  v86 = (v24 + v85);
  *v86 = 0;
  v86[1] = 0;
  v87 = v28;
  v88 = v28[3];
  v89 = v28[4];
  v147 = v87;
  sub_1C4417F50(v87, v88);
  sub_1C4DB761C();
  sub_1C4F02BC8();
  if (v23)
  {
    sub_1C440962C(v147);
    sub_1C44063A4();
    v128 = v148;
  }

  else
  {
    v146 = v80;
    a13 = 0;
    sub_1C442DB54();
    sub_1C4DB625C(v90, v91);
    sub_1C44D7E30();
    sub_1C445BC70();
    v92 = v149;
    sub_1C4F02658();
    sub_1C444088C(v142, v148, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441599C(3);
    sub_1C445BC70();
    sub_1C4F026C8();
    v93 = v145;
    v94 = *(v140 + 40);
    v94(v148 + v139, v141, v144);
    sub_1C443500C(4);
    *v138 = sub_1C445FC68();
    v138[1] = v95;
    sub_1C4414400(5);
    v96 = sub_1C447CEEC(v148);
    (v94)(v96);
    sub_1C443500C(6);
    *v136 = sub_1C445FC68();
    v136[1] = v97;
    sub_1C4414400(7);
    v98 = sub_1C447CEEC(v148);
    (v94)(v98);
    sub_1C443500C(8);
    *v134 = sub_1C445FC68();
    v134[1] = v99;
    sub_1C4414400(9);
    v100 = sub_1C447CEEC(v148);
    (v94)(v100);
    sub_1C443500C(10);
    v101 = sub_1C445FC68();
    sub_1C443E4B8(v101, v102, &a21);
    sub_1C441599C(11);
    sub_1C4F026C8();
    v94(v148 + v131, v132, v144);
    v103 = sub_1C446052C(12);
    sub_1C443E4B8(v103, v104, &a18);
    sub_1C441599C(13);
    sub_1C44343F0(&a19);
    sub_1C44D4088(&a19);
    (v94)(v105, v106);
    v107 = sub_1C446052C(14);
    v108 = v146;
    *v146 = v107;
    v108[1] = v109;
    sub_1C441599C(15);
    sub_1C4F026C8();
    sub_1C44D4088(&a16);
    (v94)(v110, v111);
    v112 = sub_1C446052C(16);
    sub_1C443E4B8(v112, v113, &v147);
    sub_1C441599C(17);
    sub_1C44343F0(&a14);
    sub_1C444C0D8(&v148);
    sub_1C44D4088(&a14);
    (v94)(v114, v115);
    v116 = sub_1C446052C(18);
    sub_1C443E4B8(v116, v117, &v146);
    sub_1C441599C(19);
    sub_1C44343F0(&v150);
    sub_1C444C0D8(&v149);
    sub_1C44D4088(&v150);
    (v94)(v118, v119);
    v120 = sub_1C446052C(20);
    sub_1C443E4B8(v120, v121, &v143);
    sub_1C441599C(21);
    sub_1C44343F0(&a9);
    sub_1C444C0D8(&v144);
    sub_1C44D4088(&a9);
    (v94)(v122, v123);
    sub_1C446052C(22);
    sub_1C440D158();
    v124 = sub_1C4417840();
    v125(v124, v145);
    *v86 = v93;
    v86[1] = v92;
    v126 = v148;
    sub_1C448D3B8(v148, v130, type metadata accessor for FutureLifeEventStructs.AddressRelationshipType);
    sub_1C440962C(v147);
    sub_1C44063A4();
    v128 = v126;
  }

  sub_1C447EC94(v128, v127);
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C4DAF03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DAD8EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DAF064(uint64_t a1)
{
  v2 = sub_1C4DB761C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DAF0A0(uint64_t a1)
{
  v2 = sub_1C4DB761C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DAF124()
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C44042B0();
  v9 = type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType(v8);
  v10 = sub_1C43FCF7C(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4402CA8();
  v17 = *(type metadata accessor for FutureLifeEventStructs.Place(0) + 32);
  result = *(v1 + v17);
  if (result)
  {
    v19 = *(result + 16);
    if (v19)
    {
      sub_1C4401968(result);
      v20 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C448D3B8(v17, v2, type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType);
        sub_1C4EFE308();
        v21 = sub_1C4EFEEF8();
        sub_1C440CBF4(v21);
        sub_1C444088C(v0, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C448D3B8(v2, v15, type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = *(v20 + 16);
          v26 = sub_1C43FCEC0();
          sub_1C458C7D4(v26, v27, v28, v20);
          v20 = v29;
        }

        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        if (v23 >= v22 >> 1)
        {
          v30 = sub_1C43FCFE8(v22);
          sub_1C458C7D4(v30, v23 + 1, 1, v20);
          v20 = v31;
        }

        *(v20 + 16) = v23 + 1;
        sub_1C44DD95C(v15, v20 + v1 + v23 * v3, type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType);
        sub_1C440EBE8();
        sub_1C447EC94(v2, v24);
        v17 += v3;
        --v19;
      }

      while (v19);

      v17 = v32;
      v1 = v33;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    *(v1 + v17) = v20;
  }

  return result;
}

void sub_1C4DAF358()
{
  sub_1C43FE628();
  v4 = v1;
  v6 = v5;
  v105 = v7;
  v9 = v8;
  v10 = type metadata accessor for EntityTriple(0);
  v98 = sub_1C43FCDF8(v10);
  v99 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v98);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v14 = sub_1C456902C(&qword_1EC0C74A0, &unk_1C4F73760);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4402A68();
  v96 = type metadata accessor for FutureLifeEventStructs.AddressRelationshipType(0);
  v18 = sub_1C43FBCE0(v96);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  v24 = type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType(0);
  v25 = sub_1C43FCF7C(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD2D8();
  v104 = v28;
  v29 = *v6;
  v30 = MEMORY[0x1E69E7CC0];
  v108 = MEMORY[0x1E69E7CC0];
  v97 = type metadata accessor for FutureLifeEventStructs.Place(0);
  v31 = v0;
  v32 = *(v0 + v97[8]);
  if (v32)
  {
    v95 = v3;
    v33 = 0;
    v103 = *(v32 + 16);
    v3 = MEMORY[0x1E69E7CC0];
    v100 = v9;
    v101 = *(v0 + v97[8]);
    v102 = v23;
    while (1)
    {
      if (v103 == v33)
      {
        v30 = v3;
        v3 = v95;
        goto LABEL_21;
      }

      if (v33 >= *(v32 + 16))
      {
        break;
      }

      sub_1C43FBF6C();
      v35 = *(v34 + 72);
      v106 = v36;
      sub_1C4441370();
      sub_1C448D3B8(v37, v104, v38);
      sub_1C4DAB71C();
      if (v4)
      {
        sub_1C440EBE8();
        sub_1C447EC94(v104, v62);
        goto LABEL_27;
      }

      v40 = v39;
      v41 = v29;
      v42 = v31;
      v30 = 0;
      sub_1C440EBE8();
      sub_1C447EC94(v104, v43);
      v44 = *(v40 + 16);
      v45 = *(v3 + 16);
      v46 = v45 + v44;
      if (__OFADD__(v45, v44))
      {
        goto LABEL_36;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v48 = *(v3 + 24) >> 1, v48 < v46))
      {
        if (v45 <= v46)
        {
          v49 = v45 + v44;
        }

        else
        {
          v49 = v45;
        }

        sub_1C44C9240(isUniquelyReferenced_nonNull_native, v49, 1, v3);
        v3 = v50;
        v48 = *(v50 + 24) >> 1;
      }

      v31 = v42;
      v29 = v41;
      if (*(v40 + 16))
      {
        if (v48 - *(v3 + 16) < v44)
        {
          goto LABEL_38;
        }

        v51 = (*(v99 + 80) + 32) & ~*(v99 + 80);
        v52 = *(v99 + 72);
        swift_arrayInitWithCopy();

        v32 = v101;
        v23 = v102;
        v53 = v106;
        if (v44)
        {
          v54 = *(v3 + 16);
          v55 = __OFADD__(v54, v44);
          v56 = v54 + v44;
          if (v55)
          {
            goto LABEL_39;
          }

          *(v3 + 16) = v56;
        }
      }

      else
      {

        v32 = v101;
        v23 = v102;
        v53 = v106;
        if (v44)
        {
          goto LABEL_37;
        }
      }

      v108 = v3;
      v33 = v53 + 1;
      v4 = 0;
      v9 = v100;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v86 = *(v30 + 16);
    v87 = sub_1C43FCEC0();
    sub_1C44C9240(v87, v88, v89, v30);
    v30 = v90;
LABEL_31:
    v83 = *(v30 + 16);
    v82 = *(v30 + 24);
    if (v83 >= v82 >> 1)
    {
      v91 = sub_1C43FFD98(v82);
      sub_1C44C9240(v91, v92, v93, v30);
      v30 = v94;
    }

    *(v30 + 16) = v83 + 1;
    sub_1C43FBF6C();
    sub_1C4428A68();
    sub_1C44083BC();
    sub_1C44DD95C(v3, v84, v85);
    goto LABEL_34;
  }

LABEL_21:
  sub_1C445FFA8(v31 + v97[9], v2, &qword_1EC0C74A0, &unk_1C4F73760);
  sub_1C440175C(v2, 1, v96);
  if (v57)
  {
    sub_1C4420C3C(v2, &qword_1EC0C74A0, &unk_1C4F73760);
    goto LABEL_29;
  }

  v58 = sub_1C445AC78();
  sub_1C44DD95C(v58, v23, v59);
  sub_1C4DAC7E8();
  if (!v4)
  {
    sub_1C49D3614(v60);
    sub_1C44063A4();
    sub_1C447EC94(v23, v63);
    v30 = v108;
LABEL_29:
    if (!*(v30 + 16))
    {
      goto LABEL_34;
    }

    v107 = v30;
    v64 = sub_1C4EFF0C8();
    sub_1C43FCE50(v64);
    (*(v65 + 16))(v3, v31);
    v66 = v3 + v98[5];
    sub_1C4EFEBB8();
    v67 = v31 + v97[6];
    v68 = sub_1C4EFD2F8();
    v70 = v69;
    v71 = v97[7];
    v72 = v98[9];
    sub_1C441AC58();
    sub_1C448D3B8(v31 + v73, v3 + v74, v75);
    sub_1C4EF9AE8();
    v77 = v76;
    v78 = v3 + v98[6];
    sub_1C4EFF888();
    v79 = v3 + v98[7];
    sub_1C4EFEC38();
    v80 = (v3 + v98[8]);
    *v80 = v68;
    v80[1] = v70;
    v81 = (v3 + v98[10]);
    *v81 = v9;
    v81[1] = v105;
    *(v3 + v98[11]) = v77;
    *(v3 + v98[12]) = v29;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v30 = v107;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  sub_1C44063A4();
  sub_1C447EC94(v23, v61);
LABEL_27:

LABEL_34:
  sub_1C4402144();
  sub_1C44109F8();
}

uint64_t sub_1C4DAF8C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6572646441736168 && a2 == 0xEA00000000007373)
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

unint64_t sub_1C4DAFAC8(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0x6572646441736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4DAFB94()
{
  sub_1C440EDD4();
  v3 = sub_1C456902C(&qword_1EC0C75C8, &qword_1C4F73C08);
  sub_1C43FCDF8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4DB74CC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C4413E04();
  sub_1C4DB625C(v9, v10);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F027E8();
  if (!v0)
  {
    v11 = type metadata accessor for FutureLifeEventStructs.Place(0);
    v12 = v11[5];
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C442DB54();
    sub_1C4DB625C(v13, v14);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F02778();
    v15 = v11[6];
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C440B92C();
    sub_1C4DB625C(v16, v17);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C443439C();
    sub_1C4412A94();
    sub_1C4DB625C(v18, v19);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v26 = *(v2 + v11[8]);
    sub_1C456902C(&qword_1EC0C7428, &qword_1C4F73748);
    sub_1C444C49C();
    sub_1C4DB6454(v20, v21);
    sub_1C43FCB2C();
    sub_1C4F02778();
    v22 = v11[9];
    type metadata accessor for FutureLifeEventStructs.AddressRelationshipType(0);
    sub_1C4462594();
    sub_1C4DB625C(v23, v24);
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  return (*(v5 + 8))(v1, v3);
}

void sub_1C4DAFE74()
{
  sub_1C43FE96C();
  v2 = v1;
  v66 = v3;
  v4 = sub_1C456902C(&qword_1EC0C74A0, &unk_1C4F73760);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBC74();
  v67 = v8;
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  v68 = v13;
  sub_1C43FBE44();
  v71 = sub_1C4EFF0C8();
  v14 = sub_1C43FCDF8(v71);
  v69 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = sub_1C456902C(&qword_1EC0C7580, &qword_1C4F73BE0);
  v70 = sub_1C43FCDF8(v21);
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  v25 = type metadata accessor for FutureLifeEventStructs.Place(0);
  v26 = sub_1C43FBCE0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v31 = v30 - v29;
  v33 = *(v32 + 20);
  v34 = sub_1C4EFEEF8();
  v75 = v33;
  sub_1C43FCF64();
  sub_1C440BAA8(v35, v36, v37, v34);
  v72 = v25[6];
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  v38 = v25[7];
  if (qword_1EDDFED40 != -1)
  {
    sub_1C4415A7C();
    swift_once();
  }

  v39 = type metadata accessor for Source();
  sub_1C442B738(v39, qword_1EDDFD2A8);
  sub_1C441AC58();
  v73 = v38;
  sub_1C448D3B8(v40, v31 + v38, v41);
  v42 = v25[9];
  v43 = type metadata accessor for FutureLifeEventStructs.AddressRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v44, v45, v46, v43);
  v47 = v2;
  v49 = v2[3];
  v48 = v2[4];
  v74 = v47;
  sub_1C4417F50(v47, v49);
  sub_1C4DB74CC();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v74);
    sub_1C4420C3C(v31 + v75, &qword_1EC0B9A08, &unk_1C4F107B0);
    v52 = sub_1C4EFD548();
    sub_1C43FBCE0(v52);
    (*(v53 + 8))(v31 + v72);
    sub_1C4410004();
    sub_1C447EC94(v31 + v73, v54);

    sub_1C4420C3C(v31 + v42, &qword_1EC0C74A0, &unk_1C4F73760);
  }

  else
  {
    sub_1C4413E04();
    sub_1C4DB625C(v50, v51);
    sub_1C43FE6CC();
    sub_1C441C7EC();
    sub_1C4F026C8();
    (*(v69 + 32))(v31, v20, v71);
    sub_1C442DB54();
    sub_1C4DB625C(v55, v56);
    sub_1C4449464();
    sub_1C441C7EC();
    sub_1C4F02658();
    sub_1C444088C(v68, v31 + v75, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C456902C(&qword_1EC0C7428, &qword_1C4F73748);
    sub_1C4455510();
    sub_1C4DB6454(v57, v58);
    sub_1C441C7EC();
    sub_1C4F02658();
    *(v31 + v25[8]) = v76;
    sub_1C4456A34();
    sub_1C4462594();
    sub_1C4DB625C(v59, v60);
    sub_1C441C7EC();
    sub_1C4F02658();
    v61 = sub_1C44169C8();
    v62(v61, v70);
    sub_1C444088C(v67, v31 + v42, &qword_1EC0C74A0, &unk_1C4F73760);
    v63 = sub_1C445AC78();
    sub_1C448D3B8(v63, v66, v64);
    sub_1C440962C(v74);
    sub_1C4401514();
    sub_1C447EC94(v31, v65);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DB047C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DAF8C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DB04A4(uint64_t a1)
{
  v2 = sub_1C4DB74CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DB04E0(uint64_t a1)
{
  v2 = sub_1C4DB74CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DB0564()
{
  sub_1C43FE628();
  v205 = v1;
  v4 = v3;
  v198 = v5;
  v207 = v6;
  v213 = v7;
  v8 = sub_1C4EFF0C8();
  v208 = sub_1C43FCDF8(v8);
  v209 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v208);
  sub_1C43FD2D8();
  v203 = v12;
  v13 = sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBC74();
  v202 = v17;
  v18 = sub_1C43FBE44();
  v206 = type metadata accessor for FutureLifeEventStructs.Place(v18);
  v19 = sub_1C43FBCE0(v206);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD2D8();
  v204 = v22;
  v23 = sub_1C43FBE44();
  v197 = type metadata accessor for EntityTriple(v23);
  v24 = sub_1C43FCDF8(v197);
  v199 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD230();
  sub_1C43FD2C8(v30);
  v31 = sub_1C4EFD548();
  v32 = sub_1C43FCDF8(v31);
  v200 = v33;
  v201 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  v38 = v37 - v36;
  v39 = sub_1C4EFF8A8();
  v40 = sub_1C43FCDF8(v39);
  v211 = v41;
  v212 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C4402CA8();
  v45 = sub_1C43FE5F8();
  v47 = sub_1C456902C(v45, v46);
  v48 = sub_1C43FBD18(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  v53 = v185 - v52;
  v54 = sub_1C4EFEEF8();
  v55 = sub_1C43FCDF8(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  v62 = v185 - v61;
  v210 = *v4;
  v63 = v0;
  v65 = v64;
  sub_1C445FFA8(v0, v53, &qword_1EC0B9A08, &unk_1C4F107B0);
  v66 = sub_1C45089A0();
  sub_1C440175C(v66, v67, v65);
  if (v68)
  {
    sub_1C4420C3C(v53, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v69 = sub_1C43FFB2C();
    sub_1C4414040(v69, v70);
LABEL_25:
    sub_1C440EE0C();
    sub_1C44109F8();
    return;
  }

  v195 = v57;
  v71 = *(v57 + 32);
  v194 = v62;
  v72 = sub_1C4404DC8();
  v196 = v65;
  v186 = v73;
  v185[1] = v57 + 32;
  (v73)(v72);
  v74 = type metadata accessor for FutureLifeEventStructs.LocationRelationshipType(0);
  v75 = *(v200 + 16);
  v187 = *(v74 + 20);
  v75(v38, v63 + v187, v201);
  sub_1C4EFF838();
  v76 = MEMORY[0x1E69E7CC0];
  v215 = MEMORY[0x1E69E7CC0];
  v200 = v63;
  v201 = v74;
  v77 = (v63 + *(v74 + 32));
  v78 = v77[1];
  v192 = v2;
  if (!v78)
  {
    goto LABEL_12;
  }

  v79 = *v77;
  v80 = HIBYTE(v78) & 0xF;
  if ((v78 & 0x2000000000000000) == 0)
  {
    v80 = v79 & 0xFFFFFFFFFFFFLL;
  }

  if (!v80)
  {
    v76 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v95 = v207;
    v103 = v203;
    v104 = v204;
    v105 = v202;
    goto LABEL_13;
  }

  v81 = v193;
  (*(v209 + 16))(v193, v198, v208);
  v82 = v2;
  v84 = v196;
  v83 = v197;
  v85 = *(v195 + 16);
  v85(v81 + v197[5], v194, v196);
  (v211)[2](v81 + v83[6], v82, v212);
  v86 = v200;
  v87 = v201;
  v85(v81 + v83[7], (v200 + v201[7]), v84);
  v88 = v87[6];
  v89 = v83[9];
  sub_1C441AC58();
  sub_1C448D3B8(v86 + v90, v81 + v91, v92);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v93 = (v81 + v83[8]);
  *v93 = v79;
  v93[1] = v78;
  v94 = (v81 + v83[10]);
  v95 = v207;
  *v94 = v213;
  v94[1] = v95;
  *(v81 + v83[11]) = v96;
  *(v81 + v83[12]) = v210;
  v97 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v97, v98, v99, MEMORY[0x1E69E7CC0]);
  v76 = v100;
  v102 = *(v100 + 16);
  v101 = *(v100 + 24);
  if (v102 >= v101 >> 1)
  {
    v172 = sub_1C43FF640(v101);
    sub_1C44C9240(v172, v173, v174, v76);
    v76 = v175;
  }

  v103 = v203;
  v104 = v204;
  v105 = v202;
  *(v76 + 16) = v102 + 1;
  sub_1C43FBF6C();
  sub_1C4428A68();
  sub_1C44083BC();
  sub_1C44DD95C(v193, v106, v107);
  v215 = v76;
  v2 = v192;
LABEL_13:
  v108 = v200;
  sub_1C445FFA8(v200 + v201[9], v105, &qword_1EC0C3430, &qword_1C4F51390);
  sub_1C440175C(v105, 1, v206);
  v109 = v205;
  if (v68)
  {
    sub_1C4420C3C(v105, &qword_1EC0C3430, &qword_1C4F51390);
    sub_1C4432CFC();
LABEL_16:
    v110 = v212;
LABEL_17:
    v111 = v195;
    v112 = v211;
    if (*(v76 + 16))
    {
      (*(v209 + 16))(v2, v198, v208);
      v113 = v95;
      v114 = v197;
      (*(v111 + 16))(v2 + v197[5], v194, v196);
      (v112)[2](v2 + v114[6], v192, v110);
      v115 = v2 + v114[7];
      sub_1C4EFEBB8();
      v116 = v108 + v187;
      sub_1C4EFD2F8();
      sub_1C440D158();
      v117 = v201[6];
      v118 = v114[9];
      sub_1C441AC58();
      sub_1C448D3B8(v120 + v119, v2 + v121, v122);
      sub_1C4EF9AE8();
      v123 = (v2 + v114[8]);
      *v123 = v108;
      v123[1] = v116;
      v124 = (v2 + v114[10]);
      *v124 = v213;
      v124[1] = v113;
      *(v2 + v114[11]) = v125;
      *(v2 + v114[12]) = v210;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v126 = v110;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v163 = *(v76 + 16);
        v164 = sub_1C43FCEC0();
        sub_1C44C9240(v164, v165, v166, v76);
        v76 = v167;
      }

      v128 = *(v76 + 16);
      v127 = *(v76 + 24);
      v129 = v194;
      if (v128 >= v127 >> 1)
      {
        v168 = sub_1C43FF640(v127);
        sub_1C44C9240(v168, v169, v170, v76);
        v76 = v171;
      }

      (v112[1])(v192, v126);
      (*(v195 + 8))(v129, v196);
      *(v76 + 16) = v128 + 1;
      sub_1C43FBF6C();
      sub_1C4428A68();
      sub_1C44083BC();
      sub_1C44DD95C(v2, v130, v131);
    }

    else
    {
      (v211)[1](v192, v110, v208);
      (*(v111 + 8))(v194, v196);
    }

    goto LABEL_25;
  }

  sub_1C44367E8();
  sub_1C44DD95C(v105, v104, v132);
  v214 = v210;
  sub_1C4DAF358();
  if (v109)
  {
    sub_1C4401514();
    sub_1C447EC94(v104, v134);
    v135 = sub_1C4401D04();
    v136(v135);
    (*(v195 + 8))(v194, v196);

    goto LABEL_25;
  }

  if (!*(v133 + 16))
  {
    sub_1C4401514();
    sub_1C447EC94(v104, v162);

    sub_1C4432CFC();
    v108 = v200;
    goto LABEL_16;
  }

  v137 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v137);
  v138 = v208;
  (*(v209 + 16))(v103, v198, v208);
  v139 = v196;
  (*(v195 + 16))(v189, v194, v196);
  (v211)[2](v190, v2, v212);
  v140 = v188;
  sub_1C445FFA8(v104 + *(v206 + 20), v188, &qword_1EC0B9A08, &unk_1C4F107B0);
  v141 = sub_1C44A1500();
  sub_1C440175C(v141, v142, v139);
  if (!v68)
  {

    v206 = sub_1C4EFF048();
    v144 = v143;
    v145 = v201[6];
    v2 = v197;
    v146 = v197[9];
    sub_1C441AC58();
    v149 = v191;
    sub_1C448D3B8(v148 + v147, v191 + v150, v151);
    sub_1C4EF9AE8();
    v153 = v152;
    (*(v209 + 32))(v149, v103, v138);
    v154 = v186;
    v186(v149 + v2[5], v189, v139);
    v211[4](v149 + v2[6], v190, v212);
    v154(v149 + v2[7], v140, v139);
    v155 = (v149 + v2[8]);
    v95 = v207;
    *v155 = v206;
    v155[1] = v144;
    v156 = (v149 + v2[10]);
    *v156 = v213;
    v156[1] = v95;
    *(v149 + v2[11]) = v153;
    *(v149 + v2[12]) = v210;
    v76 = v215;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v176 = *(v76 + 16);
      v177 = sub_1C43FCEC0();
      sub_1C44C9240(v177, v178, v179, v76);
      v76 = v180;
    }

    sub_1C4432CFC();
    v158 = *(v76 + 16);
    v157 = *(v76 + 24);
    v110 = v212;
    if (v158 >= v157 >> 1)
    {
      v181 = sub_1C43FF640(v157);
      sub_1C44C9240(v181, v182, v183, v76);
      v76 = v184;
    }

    sub_1C4401514();
    sub_1C447EC94(v104, v159);
    *(v76 + 16) = v158 + 1;
    sub_1C43FBF6C();
    sub_1C4428A68();
    sub_1C44083BC();
    sub_1C44DD95C(v191, v160, v161);
    v108 = v200;
    goto LABEL_17;
  }

  __break(1u);
}

unint64_t sub_1C4DB10C0(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0x7461636F4C736168;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DB1194()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  v2 = sub_1C456902C(&qword_1EC0C75D8, &qword_1C4F73C18);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4DB7574();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB54();
  sub_1C4DB625C(v6, v7);
  sub_1C4402150();
  sub_1C4F02778();
  if (!v0)
  {
    v19 = type metadata accessor for FutureLifeEventStructs.LocationRelationshipType(0);
    v8 = v19[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C440B92C();
    sub_1C4DB625C(v9, v10);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v11 = v19[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C4412A94();
    sub_1C4DB625C(v12, v13);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C43FE7C0();
    sub_1C4402150();
    sub_1C4F027E8();
    sub_1C440C15C((v1 + v19[8]));
    sub_1C4F02738();
    v14 = v19[9];
    type metadata accessor for FutureLifeEventStructs.Place(0);
    sub_1C442E79C();
    sub_1C4DB625C(v15, v16);
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v17 = sub_1C440231C();
  v18(v17);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DB140C()
{
  sub_1C43FE96C();
  v3 = v2;
  v56 = v4;
  v5 = sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v57 = v9;
  sub_1C43FBE44();
  v10 = sub_1C4EFEEF8();
  v11 = sub_1C43FCDF8(v10);
  v58 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  v59 = v15;
  v16 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  v61 = v20;
  v21 = sub_1C456902C(&qword_1EC0C75A0, &qword_1C4F73BF0);
  v62 = sub_1C43FCDF8(v21);
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  v25 = type metadata accessor for FutureLifeEventStructs.LocationRelationshipType(0);
  v26 = sub_1C43FBCE0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  sub_1C440DED0();
  sub_1C43FCF64();
  v60 = v10;
  sub_1C440BAA8(v29, v30, v31, v10);
  v32 = v1 + v25[5];
  sub_1C4EFD1F8();
  v33 = v25[6];
  if (qword_1EDDFED40 != -1)
  {
    sub_1C4415A7C();
    swift_once();
  }

  v34 = type metadata accessor for Source();
  sub_1C442B738(v34, qword_1EDDFD2A8);
  sub_1C441AC58();
  sub_1C448D3B8(v35, v1 + v33, v36);
  v37 = v25[7];
  sub_1C4EFE5E8();
  v38 = (v1 + v25[8]);
  *v38 = 0;
  v38[1] = 0;
  v39 = v25[9];
  v40 = type metadata accessor for FutureLifeEventStructs.Place(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v41, v42, v43, v40);
  v44 = v3;
  v46 = v3[3];
  v45 = v3[4];
  v63 = v44;
  sub_1C4417F50(v44, v46);
  sub_1C4DB7574();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C442DB54();
    sub_1C4DB625C(v47, v48);
    sub_1C43FE6CC();
    sub_1C43FE664();
    sub_1C4F02658();
    sub_1C444088C(v61, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C43FE664();
    sub_1C4F026C8();
    (*(v58 + 40))(v1 + v37, v59, v60);
    sub_1C4428F20();
    sub_1C43FE664();
    *v38 = sub_1C4F02618();
    v38[1] = v50;
    sub_1C4456A34();
    sub_1C442E79C();
    sub_1C4DB625C(v51, v52);
    sub_1C43FE664();
    sub_1C4F02658();
    v53 = sub_1C4416968();
    v54(v53, v62);
    sub_1C444088C(v57, v1 + v39, &qword_1EC0C3430, &qword_1C4F51390);
    sub_1C445C0A4();
    sub_1C448D3B8(v1, v56, v55);
  }

  sub_1C440962C(v63);
  sub_1C4433F64();
  sub_1C447EC94(v1, v49);
  sub_1C43FBC80();
}

uint64_t sub_1C4DB1874(uint64_t a1)
{
  v2 = sub_1C4DB7574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DB18B0(uint64_t a1)
{
  v2 = sub_1C4DB7574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DB1934()
{
  sub_1C43FE96C();
  v4 = v3;
  v279 = v5;
  v277 = v6;
  v278 = v7;
  v271 = type metadata accessor for EntityTriple(0);
  v8 = sub_1C43FCDF8(v271);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v270 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v269 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  v268 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C446C1EC(v17, v18, v19, v20, v21, v22, v23, v24, v262);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  v266 = v26;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  v265 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD230();
  v264 = v30;
  sub_1C43FBE44();
  v284 = sub_1C4EFD548();
  v31 = sub_1C43FCDF8(v284);
  v282 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD2D8();
  v273 = v35;
  sub_1C43FBE44();
  v36 = sub_1C4EFF8A8();
  v37 = sub_1C43FCDF8(v36);
  v280 = v38;
  v281 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v41 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v41);
  v43 = *(v42 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C44042B0();
  v45 = sub_1C4EFEEF8();
  v46 = sub_1C43FCDF8(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBCC4();
  v53 = v52 - v51;
  v275 = *v4;
  v54 = v1;
  sub_1C445FFA8(v1, v0, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v0, 1, v45);
  if (v55)
  {
    sub_1C4420C3C(v0, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v56 = sub_1C43FFB2C();
    sub_1C4414040(v56, v57);
    goto LABEL_57;
  }

  v276 = v48;
  (*(v48 + 32))(v53, v0, v45);
  v58 = type metadata accessor for FutureLifeEventStructs.DateRelationshipType(0);
  v263 = *(v58 + 20);
  v59 = v1 + v263;
  v60 = v273;
  (*(v282 + 16))(v273, v59, v284);
  v272 = v2;
  sub_1C4EFF838();
  v285 = v58;
  v283 = v54;
  v61 = (v54 + *(v58 + 32));
  v62 = v61[1];
  v274 = v53;
  if (!v62)
  {
    v81 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v86 = v283;
    goto LABEL_14;
  }

  v58 = *v61;
  v63 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v63 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (v63)
  {
    v64 = sub_1C4EFF0C8();
    sub_1C43FCE50(v64);
    (*(v65 + 16))(v264, v279);
    v66 = *(v276 + 16);
    v66(v264 + v271[5], v53, v45);
    v67 = sub_1C4456310(v271[6]);
    v68(v67, v2);
    v60 = v54;
    v66(v264 + v271[7], v54 + v285[7], v45);
    v69 = v285[6];
    v70 = v271[9];
    sub_1C441AC58();
    sub_1C448D3B8(v54 + v71, v264 + v72, v73);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    v74 = (v264 + v271[8]);
    *v74 = v58;
    v74[1] = v62;
    v75 = (v264 + v271[10]);
    *v75 = v277;
    v75[1] = v278;
    *(v264 + v271[11]) = v76;
    *(v264 + v271[12]) = v275;
    v77 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4401EC4(v77, v78, v79, MEMORY[0x1E69E7CC0]);
    v81 = v80;
    v83 = *(v80 + 16);
    v82 = *(v80 + 24);
    v58 = v83 + 1;
    if (v83 >= v82 >> 1)
    {
      v213 = sub_1C43FF640(v82);
      sub_1C44C9240(v213, v214, v215, v81);
      v81 = v216;
    }

    *(v81 + 16) = v58;
    sub_1C4409498();
    sub_1C44083BC();
    sub_1C44DD95C(v264, v84, v85);
    goto LABEL_12;
  }

  v81 = MEMORY[0x1E69E7CC0];
  v86 = v54;
LABEL_14:
  v87 = v276;
  sub_1C44A1E10(v285[10]);
  if (v60)
  {
    sub_1C4404978(v88);
    if (v89)
    {
      v90 = sub_1C4EFF0C8();
      sub_1C43FCE50(v90);
      v92 = *(v91 + 16);
      v93 = sub_1C4401D48();
      v94(v93);
      v95 = sub_1C441F200();
      v86(v95);
      v96 = sub_1C4418DD0();
      v97(v96);
      v98 = sub_1C445EB64(v285[9]);
      v86(v98);
      v86 = v283;
      v99 = v285[6];
      v100 = v271[9];
      sub_1C441AC58();
      sub_1C4DB80D4(v101, v102);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C43FCCC4(v103);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v217 = *(v81 + 16);
        v218 = sub_1C43FCEC0();
        sub_1C44C9240(v218, v219, v220, v81);
        v81 = v221;
      }

      sub_1C441C66C();
      v87 = v276;
      if (v105)
      {
        v222 = sub_1C43FF640(v104);
        sub_1C44C9240(v222, v223, v224, v81);
        v81 = v225;
      }

      *(v81 + 16) = v58;
      sub_1C4409498();
      sub_1C44083BC();
      sub_1C44DD95C(v265, v106, v107);
    }
  }

  sub_1C44A1E10(v285[12]);
  if (v60)
  {
    sub_1C4404978(v108);
    if (v109)
    {
      v110 = sub_1C4EFF0C8();
      sub_1C43FCE50(v110);
      v112 = *(v111 + 16);
      v113 = sub_1C4401D48();
      v114(v113);
      v115 = sub_1C441F200();
      v86(v115);
      v116 = sub_1C4418DD0();
      v117(v116);
      v118 = sub_1C445EB64(v285[11]);
      v86(v118);
      v86 = v283;
      v119 = v285[6];
      v120 = v271[9];
      sub_1C441AC58();
      sub_1C4DB80D4(v121, v122);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C43FCCC4(v123);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v226 = *(v81 + 16);
        v227 = sub_1C43FCEC0();
        sub_1C44C9240(v227, v228, v229, v81);
        v81 = v230;
      }

      sub_1C441C66C();
      v87 = v276;
      if (v105)
      {
        v231 = sub_1C43FF640(v124);
        sub_1C44C9240(v231, v232, v233, v81);
        v81 = v234;
      }

      *(v81 + 16) = v58;
      sub_1C4409498();
      sub_1C44083BC();
      sub_1C44DD95C(v266, v125, v126);
    }
  }

  sub_1C44A1E10(v285[14]);
  if (v60)
  {
    sub_1C4404978(v127);
    if (v128)
    {
      v129 = sub_1C4EFF0C8();
      sub_1C43FCE50(v129);
      v131 = *(v130 + 16);
      v132 = sub_1C4401D48();
      v133(v132);
      v134 = sub_1C441F200();
      v86(v134);
      v135 = sub_1C4418DD0();
      v136(v135);
      v137 = sub_1C445EB64(v285[13]);
      v86(v137);
      v86 = v283;
      v138 = v285[6];
      v139 = v271[9];
      sub_1C441AC58();
      sub_1C4DB80D4(v140, v141);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C43FCCC4(v142);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v235 = *(v81 + 16);
        v236 = sub_1C43FCEC0();
        sub_1C44C9240(v236, v237, v238, v81);
        v81 = v239;
      }

      sub_1C441C66C();
      v87 = v276;
      if (v105)
      {
        v240 = sub_1C43FF640(v143);
        sub_1C44C9240(v240, v241, v242, v81);
        v81 = v243;
      }

      *(v81 + 16) = v58;
      sub_1C4409498();
      sub_1C44083BC();
      sub_1C44DD95C(v267, v144, v145);
    }
  }

  sub_1C44A1E10(v285[16]);
  if (v60)
  {
    sub_1C4404978(v146);
    if (v147)
    {
      v148 = sub_1C4EFF0C8();
      sub_1C43FCE50(v148);
      v150 = *(v149 + 16);
      v151 = sub_1C4401D48();
      v152(v151);
      v153 = sub_1C441F200();
      v86(v153);
      v154 = sub_1C4418DD0();
      v155(v154);
      v156 = sub_1C445EB64(v285[15]);
      v86(v156);
      v86 = v283;
      v157 = v285[6];
      v158 = v271[9];
      sub_1C441AC58();
      sub_1C4DB80D4(v159, v160);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C43FCCC4(v161);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v244 = *(v81 + 16);
        v245 = sub_1C43FCEC0();
        sub_1C44C9240(v245, v246, v247, v81);
        v81 = v248;
      }

      sub_1C441C66C();
      v87 = v276;
      if (v105)
      {
        v249 = sub_1C43FF640(v162);
        sub_1C44C9240(v249, v250, v251, v81);
        v81 = v252;
      }

      *(v81 + 16) = v58;
      sub_1C4409498();
      sub_1C44083BC();
      sub_1C44DD95C(v268, v163, v164);
    }
  }

  sub_1C44A1E10(v285[18]);
  if (v60 && (sub_1C4404978(v165), v166))
  {
    v167 = sub_1C4EFF0C8();
    sub_1C43FCE50(v167);
    v169 = *(v168 + 16);
    v170 = sub_1C4401D48();
    v171(v170);
    v172 = sub_1C441F200();
    v86(v172);
    v173 = sub_1C4418DD0();
    v174(v173);
    v175 = sub_1C445EB64(v285[17]);
    v86(v175);
    v86 = v283;
    v176 = v285[6];
    v177 = v271[9];
    sub_1C441AC58();
    sub_1C4DB80D4(v178, v179);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C43FCCC4(v180);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v253 = *(v81 + 16);
      v254 = sub_1C43FCEC0();
      sub_1C44C9240(v254, v255, v256, v81);
      v81 = v257;
    }

    sub_1C441C66C();
    v182 = v272;
    v87 = v276;
    if (v105)
    {
      v258 = sub_1C43FF640(v181);
      sub_1C44C9240(v258, v259, v260, v81);
      v81 = v261;
    }

    *(v81 + 16) = v58;
    sub_1C4409498();
    sub_1C44083BC();
    sub_1C44DD95C(v269, v183, v184);
  }

  else
  {
    v182 = v272;
  }

  if (*(v81 + 16))
  {
    v185 = sub_1C4EFF0C8();
    sub_1C43FCE50(v185);
    (*(v186 + 16))(v270, v279);
    (*(v87 + 16))(v270 + v271[5], v274, v45);
    (*(v280 + 16))(v270 + v271[6], v182, v281);
    v187 = v270 + v271[7];
    sub_1C4EFEBB8();
    sub_1C4EFD2F8();
    sub_1C440D158();
    v188 = v285[6];
    v189 = v271[9];
    sub_1C441AC58();
    sub_1C448D3B8(v86 + v190, v270 + v191, v192);
    sub_1C4EF9AE8();
    v193 = (v270 + v271[8]);
    *v193 = v274;
    v193[1] = v86 + v263;
    v194 = (v270 + v271[10]);
    *v194 = v277;
    v194[1] = v278;
    *(v270 + v271[11]) = v195;
    *(v270 + v271[12]) = v275;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v204 = *(v81 + 16);
      v205 = sub_1C43FCEC0();
      sub_1C44C9240(v205, v206, v207, v81);
      v81 = v208;
    }

    sub_1C441C66C();
    if (v105)
    {
      v209 = sub_1C43FF640(v196);
      sub_1C44C9240(v209, v210, v211, v81);
      v81 = v212;
    }

    v197 = sub_1C4401D04();
    v198(v197);
    sub_1C44585FC();
    v199(v274, v45);
    *(v81 + 16) = v274;
    sub_1C4409498();
    sub_1C44083BC();
    sub_1C44DD95C(v270, v200, v201);
  }

  else
  {
    v202 = sub_1C4401D04();
    v203(v202);
    (*(v87 + 8))(v274, v45);
  }

LABEL_57:
  sub_1C4402144();
  sub_1C43FBC80();
}

unint64_t sub_1C4DB2550(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6D69547472617473;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x656D6954646E65;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0x4564657475706D69;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x6E6572727563636FLL;
      break;
    case 13:
      result = 0xD00000000000001FLL;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DB2728()
{
  sub_1C43FE96C();
  v1 = sub_1C456902C(&qword_1EC0C75E0, &qword_1C4F73C20);
  sub_1C43FCDF8(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4DB75C8();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB54();
  sub_1C4DB625C(v5, v6);
  sub_1C44D7E30();
  sub_1C43FF9BC();
  sub_1C4F02778();
  if (!v0)
  {
    v21 = type metadata accessor for FutureLifeEventStructs.DateRelationshipType(0);
    v7 = v21[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C440B92C();
    sub_1C4DB625C(v8, v9);
    sub_1C43FEF68();
    sub_1C4F027E8();
    v10 = v21[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C4412A94();
    sub_1C4DB625C(v11, v12);
    sub_1C43FEF68();
    sub_1C4F027E8();
    v13 = v21[7];
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4401774(v21[8]);
    sub_1C43FBF44();
    sub_1C4F02738();
    v14 = v21[9];
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4401774(v21[10]);
    sub_1C43FBF44();
    sub_1C4F02738();
    v15 = v21[11];
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4401774(v21[12]);
    sub_1C43FBF44();
    sub_1C4F02738();
    v16 = v21[13];
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4401774(v21[14]);
    sub_1C43FBF44();
    sub_1C4F02738();
    v17 = v21[15];
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4401774(v21[16]);
    sub_1C43FBF44();
    sub_1C4F02738();
    v18 = v21[17];
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4401774(v21[18]);
    sub_1C43FBF44();
    sub_1C4F02738();
  }

  v19 = sub_1C440231C();
  v20(v19);
  sub_1C44103B4();
  sub_1C43FBC80();
}