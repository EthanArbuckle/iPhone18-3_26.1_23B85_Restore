uint64_t sub_1E648A7DC(uint64_t a1)
{
  v2 = sub_1E648AB78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E648A818(uint64_t a1)
{
  v2 = sub_1E648AB78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E648A884(uint64_t a1, int *a2)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  sub_1E5DF2E28(&qword_1EE2D6888, MEMORY[0x1E699CC08]);
  sub_1E65E4DB8();
  v5 = a2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  sub_1E65E4DB8();
  v6 = a2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E613CC1C();
  sub_1E65E4DB8();
  v7 = v4 + a2[7];
  sub_1E65E4DB8();
  v8 = a2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  sub_1E5DF2E28(&unk_1EE2D68E0, MEMORY[0x1E699CAD0]);
  return sub_1E65E4DB8();
}

uint64_t sub_1E648AA0C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1E65DE788();
  sub_1E5DF2E28(&qword_1EE2D6880, MEMORY[0x1E699CC08]);
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  v4 = a3[5];
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  v5 = a3[6];
  sub_1E5DF23E0();
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  v6 = a3[7];
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  v7 = a3[8];
  sub_1E65DE508();
  sub_1E5DF2E28(&qword_1EE2D68D8, MEMORY[0x1E699CAD0]);

  return sub_1E65E4D98();
}

unint64_t sub_1E648AB78()
{
  result = qword_1EE2D81F0[0];
  if (!qword_1EE2D81F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D81F0);
  }

  return result;
}

uint64_t sub_1E648ABCC(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for WorkoutContextMenuLoadState();
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

uint64_t sub_1E648AC30(uint64_t a1)
{
  State = type metadata accessor for WorkoutContextMenuLoadState();
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

uint64_t sub_1E648AC8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737C8, &unk_1E6605140);
    v3 = MEMORY[0x1E699CC08];
    sub_1E5DF2E28(&qword_1ED0759F0, MEMORY[0x1E699CC08]);
    sub_1E5DF2E28(&qword_1ED0759F8, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E648AD60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077A70, &qword_1E65F2620);
    v3 = MEMORY[0x1E699CAD0];
    sub_1E5DF2E28(&qword_1ED075A18, MEMORY[0x1E699CAD0]);
    sub_1E5DF2E28(&qword_1ED075A20, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E648AE48()
{
  result = qword_1ED07A0E8;
  if (!qword_1ED07A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A0E8);
  }

  return result;
}

unint64_t sub_1E648AEA0()
{
  result = qword_1EE2D81E0;
  if (!qword_1EE2D81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D81E0);
  }

  return result;
}

unint64_t sub_1E648AEF8()
{
  result = qword_1EE2D81E8;
  if (!qword_1EE2D81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D81E8);
  }

  return result;
}

uint64_t _s8ResourceOMa()
{
  result = qword_1ED07A0F0;
  if (!qword_1ED07A0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E648AF98()
{
  sub_1E65D74E8();
  if (v0 <= 0x3F)
  {
    sub_1E648B030(319);
    if (v1 <= 0x3F)
    {
      sub_1E648B15C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1E648B030(uint64_t a1)
{
  if (!qword_1ED07A100)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072978, &unk_1E65F0E80);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED07A100);
    }
  }
}

void sub_1E648B15C()
{
  if (!qword_1ED07A108)
  {
    sub_1E65D74E8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED07A108);
    }
  }
}

uint64_t sub_1E648B1C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D6F74746F62;
    }

    else
    {
      v4 = 0x676E696C69617274;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E696461656CLL;
    }

    else
    {
      v4 = 7368564;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6D6F74746F62;
  if (a2 != 2)
  {
    v8 = 0x676E696C69617274;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x676E696461656CLL;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E65E6C18();
  }

  return v11 & 1;
}

uint64_t sub_1E648B2FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x2D74756F6B726F77;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2)
    {
      v4 = 0xEC00000065707974;
    }

    else
    {
      v4 = 0x80000001E660FCB0;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE700000000000000;
    v3 = 0x6D6172676F7270;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x72656E69617274;
    }

    else
    {
      v3 = 0x74756F6B726F77;
    }

    v4 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x2D74756F6B726F77;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a2)
    {
      v5 = 0xEC00000065707974;
    }

    else
    {
      v5 = 0x80000001E660FCB0;
    }

    if (v3 != v6)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (a2 == 2)
    {
      if (v3 != 0x6D6172676F7270)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 3)
    {
      if (v3 != 0x72656E69617274)
      {
        goto LABEL_32;
      }
    }

    else if (v3 != 0x74756F6B726F77)
    {
LABEL_32:
      v7 = sub_1E65E6C18();
      goto LABEL_33;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_32;
  }

  v7 = 1;
LABEL_33:

  return v7 & 1;
}

uint64_t sub_1E648B49C(uint64_t a1, int64_t a2, uint64_t a3, int64_t a4)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v6 = 0xE700000000000000;
      v7 = 0x7972617262696CLL;
      if (a4 <= 2)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (a2 != 4)
    {
      if (a2 == 5)
      {
        v6 = 0xE600000000000000;
        v7 = 0x7478654E7075;
        if (a4 <= 2)
        {
          goto LABEL_27;
        }

        goto LABEL_19;
      }

LABEL_16:
      v7 = a1;
      v6 = a2;
      if (a4 <= 2)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    v6 = 0xE600000000000000;
    v7 = 0x686372616573;
    if (a4 > 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (!a2)
    {
      v6 = 0xE500000000000000;
      v7 = 0x736E616C70;
      if (a4 <= 2)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (a2 != 1)
    {
      if (a2 == 2)
      {
        v6 = 0xE600000000000000;
        v7 = 0x756F59726F66;
        if (a4 <= 2)
        {
          goto LABEL_27;
        }

LABEL_19:
        switch(a4)
        {
          case 3:
            v8 = 0xE700000000000000;
            if (v7 != 0x7972617262696CLL)
            {
              goto LABEL_41;
            }

            break;
          case 4:
            v8 = 0xE600000000000000;
            if (v7 != 0x686372616573)
            {
              goto LABEL_41;
            }

            goto LABEL_39;
          case 5:
            v8 = 0xE600000000000000;
            if (v7 != 0x7478654E7075)
            {
              goto LABEL_41;
            }

            break;
          default:
            goto LABEL_34;
        }

        goto LABEL_39;
      }

      goto LABEL_16;
    }

    v6 = 0xE700000000000000;
    v7 = 0x65726F6C707865;
    if (a4 > 2)
    {
      goto LABEL_19;
    }
  }

LABEL_27:
  if (!a4)
  {
    v8 = 0xE500000000000000;
    if (v7 != 0x736E616C70)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      v8 = 0xE600000000000000;
      if (v7 != 0x756F59726F66)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

LABEL_34:
    v8 = a4;
    if (v7 != a3)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v8 = 0xE700000000000000;
  if (v7 != 0x65726F6C707865)
  {
LABEL_41:
    v10 = a1;
    v11 = a2;
    v12 = sub_1E65E6C18();
    a2 = v11;
    v9 = v12;
    a1 = v10;
    goto LABEL_42;
  }

LABEL_39:
  if (v6 != v8)
  {
    goto LABEL_41;
  }

  v9 = 1;
LABEL_42:
  sub_1E5E05374(a1, a2);
  sub_1E5E05374(a3, a4);

  return v9 & 1;
}

uint64_t sub_1E648B700@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v179 = a2;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073450, &qword_1E65ED1E0);
  v162 = *(v163 - 8);
  v3 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v161 = v152 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A200, &unk_1E66054C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v171 = v152 - v7;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073408, &qword_1E65ED1B0);
  v165 = *(v166 - 8);
  v8 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v164 = v152 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A208, &qword_1E66054D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v172 = v152 - v12;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A210, &qword_1E66054D8);
  v173 = *(v175 - 8);
  v13 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v160 = v152 - v14;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073300, &unk_1E66054E0);
  v169 = *(v170 - 8);
  v15 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v168 = v152 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v158 = v152 - v19;
  v20 = sub_1E65D74E8();
  v21 = *(v20 - 8);
  v176 = v20;
  v177 = v21;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v154 = v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v155 = v152 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A218, &unk_1E66054F0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = v152 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732E8, &qword_1E65ED118);
  v180 = *(v30 - 8);
  v181 = v30;
  v31 = *(v180 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v167 = v152 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = v152 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A220, &qword_1E6605500);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v40 = v152 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v42 = v152 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A228, &qword_1E6605508);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x1EEE9AC00](v43);
  v156 = v152 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v157 = v152 - v48;
  *&v186 = sub_1E65D7428();
  *(&v186 + 1) = v49;
  sub_1E5F9AEA8();
  *&v183 = sub_1E65E66C8();
  v51 = v50;

  v178 = a1;
  if (!v51)
  {
    v57 = *(v44 + 56);
    v57(v42, 1, 1, v43);
    sub_1E5DFE50C(v42, &qword_1ED07A220, &qword_1E6605500);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A230, &qword_1E6605510);
    (*(*(v58 - 8) + 56))(v29, 1, 1, v58);
    sub_1E5DFE50C(v29, &qword_1ED07A218, &unk_1E66054F0);
    v57(v40, 1, 1, v43);
    sub_1E5DFE50C(v40, &qword_1ED07A220, &qword_1E6605500);
    v59 = v172;
    (*(v173 + 56))(v172, 1, 1, v175);
    sub_1E5DFE50C(v59, &qword_1ED07A208, &qword_1E66054D0);
    v61 = v176;
    v60 = v177;
    v62 = v171;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A238, &qword_1E6605518);
    (*(*(v87 - 8) + 56))(v62, 1, 1, v87);
    v88 = v178;
    goto LABEL_24;
  }

  v159 = v29;
  v153 = v40;
  v174 = v44;
  v52 = v43;
  v53 = qword_1ED0718E8;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = v181;
  __swift_project_value_buffer(v181, qword_1ED096218);
  v55 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v55 = v183;
  }

  v56 = 7;
  if (((v51 >> 60) & ((v183 & 0x800000000000000) == 0)) != 0)
  {
    v56 = 11;
  }

  v182 = v56 | (v55 << 16);
  sub_1E65E5E68();

  v152[1] = sub_1E6490900(&qword_1ED0732F8, &qword_1ED0732E8, &qword_1E65ED118);
  sub_1E65E1C98();
  sub_1E65E1CD8();
  v63 = *(v180 + 8);
  v63(v35, v54);

  v64 = v174;
  v65 = (*(v174 + 48))(v42, 1, v52);
  if (v65 != 1)
  {

    v96 = v157;
    (*(v64 + 32))(v157, v42, v52);
    if (qword_1ED071898 != -1)
    {
      swift_once();
    }

    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732E0, &unk_1E6605520);
    __swift_project_value_buffer(v97, qword_1ED096128);
    sub_1E65E1CE8();
    v98 = MEMORY[0x1E694D730](v186, *(&v186 + 1), v187, v188);
    v100 = v99;

    v102 = v176;
    v101 = v177;
    if (qword_1ED0718C8 != -1)
    {
      swift_once();
    }

    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D0, &qword_1E65ED110);
    __swift_project_value_buffer(v103, qword_1ED0961B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D8, &qword_1E6605530);
    sub_1E65E1CE8();
    if (v188)
    {
      v104 = MEMORY[0x1E694D730](v186, *(&v186 + 1), v187, v188);
      v106 = v105;
    }

    else
    {
      v104 = 0;
      v106 = 0;
    }

    *&v186 = 0;
    *(&v186 + 1) = 0xE000000000000000;
    sub_1E65E68A8();

    *&v186 = v98;
    *(&v186 + 1) = v100;
    MEMORY[0x1E694D7C0](3092282, 0xE300000000000000);
    MEMORY[0x1E694D7C0](0xD000000000000011, 0x80000001E6611500);
    MEMORY[0x1E694D7C0](0x697263736275732FLL, 0xEB000000003F6562);
    v184 = v104;
    v185 = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
    v133 = sub_1E65E6648();
    v135 = v134;

    MEMORY[0x1E694D7C0](v133, v135);

    v136 = v158;
    sub_1E65D74C8();

    (*(v174 + 8))(v96, v52);
    if ((*(v101 + 48))(v136, 1, v102) == 1)
    {
      sub_1E5DFE50C(v136, &qword_1ED072340, &qword_1E65EA410);
      (*(v101 + 32))(v179, v178, v102);
    }

    else
    {
      (*(v101 + 8))(v178, v102);
      v137 = *(v101 + 32);
      v138 = v155;
      v137(v155, v136, v102);
      v137(v179, v138, v102);
    }

    goto LABEL_57;
  }

  v157 = v63;
  sub_1E5DFE50C(v42, &qword_1ED07A220, &qword_1E6605500);
  v66 = qword_1ED0718F0;

  if (v66 != -1)
  {
    swift_once();
  }

  v158 = v52;
  v67 = v170;
  __swift_project_value_buffer(v170, qword_1ED096230);
  sub_1E65E5E68();

  sub_1E6490900(&qword_1ED073368, &qword_1ED073300, &unk_1E66054E0);
  v68 = v168;
  sub_1E65E1C98();
  v69 = v159;
  sub_1E65E1CD8();
  (*(v169 + 8))(v68, v67);

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A230, &qword_1E6605510);
  v71 = (*(*(v70 - 8) + 48))(v69, 1, v70);
  v72 = v181;
  if (v71 != 1)
  {

    (*(v177 + 8))(v178, v176);
    sub_1E5DFE50C(v69, &qword_1ED07A218, &unk_1E66054F0);
    _s8ResourceOMa();
    return swift_storeEnumTagMultiPayload();
  }

  sub_1E5DFE50C(v69, &qword_1ED07A218, &unk_1E66054F0);
  v73 = qword_1ED0718F8;

  if (v73 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v72, qword_1ED096248);
  sub_1E65E5E68();

  v74 = v167;
  sub_1E65E1C98();
  v75 = v153;
  sub_1E65E1CD8();
  (v157)(v74, v72);

  v76 = v174;
  v77 = v158;
  if ((*(v174 + 48))(v75, 1, v158) != 1)
  {

    v116 = v156;
    (*(v76 + 32))(v156, v75, v77);
    if (qword_1ED0718A8 != -1)
    {
      swift_once();
    }

    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D0, &qword_1E65ED110);
    __swift_project_value_buffer(v117, qword_1ED096158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D8, &qword_1E6605530);
    sub_1E65E1CE8();
    v119 = v176;
    v118 = v177;
    if (v188 && (v120 = MEMORY[0x1E694D730](v186, *(&v186 + 1), v187, v188), v122 = v121, , RootItem.init(rawValue:)(v120, v122, &v186), v123 = *(&v186 + 1), *(&v186 + 1) != 6))
    {
      v125 = v186;
      (*(v118 + 8))(v178, v119);
    }

    else
    {
      v124 = v178;
      swift_beginAccess();
      v125 = qword_1ED075948;
      v123 = qword_1ED075950;
      sub_1E5E05374(qword_1ED075948, qword_1ED075950);
      (*(v118 + 8))(v124, v119);
    }

    (*(v76 + 8))(v116, v77);
    v142 = v179;
    *v179 = v125;
    v142[1] = v123;
    v142[2] = 0;
    *(v142 + 24) = 1;
    goto LABEL_57;
  }

  sub_1E5DFE50C(v75, &qword_1ED07A220, &qword_1E6605500);
  v78 = qword_1ED071910;

  if (v78 != -1)
  {
    swift_once();
  }

  v79 = v166;
  __swift_project_value_buffer(v166, qword_1ED096278);
  sub_1E65E5E68();

  sub_1E6490900(&qword_1ED073418, &qword_1ED073408, &qword_1E65ED1B0);
  v80 = v164;
  sub_1E65E1C98();
  v81 = v172;
  v82 = v80;
  sub_1E65E1CD8();
  v83 = v173;
  (*(v165 + 8))(v82, v79);

  v84 = v175;
  if ((*(v83 + 48))(v81, 1, v175) == 1)
  {
    sub_1E5DFE50C(v81, &qword_1ED07A208, &qword_1E66054D0);
    goto LABEL_21;
  }

  v126 = v160;
  (*(v83 + 32))(v160, v81, v84);
  if (qword_1ED0718B0 != -1)
  {
    swift_once();
  }

  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732E0, &unk_1E6605520);
  __swift_project_value_buffer(v127, qword_1ED096170);
  sub_1E65E1CE8();
  v128 = MEMORY[0x1E694D730](v186, *(&v186 + 1), v187, v188);
  v130 = v129;

  v131._countAndFlagsBits = v128;
  v131._object = v130;
  SharingURLResource.init(rawValue:)(v131);
  v132 = v184;
  if (v184 == 5)
  {
    (*(v83 + 8))(v126, v84);
LABEL_21:
    v85 = v163;
    v86 = v161;
    if (qword_1ED071900 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v85, qword_1ED096260);
    sub_1E65E5E68();

    sub_1E6490900(&qword_1ED07A240, &qword_1ED073450, &qword_1E65ED1E0);
    sub_1E65E1C98();
    v62 = v171;
    sub_1E65E1CD8();
    (*(v162 + 8))(v86, v85);

    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A238, &qword_1E6605518);
    v108 = (*(*(v107 - 8) + 48))(v62, 1, v107);
    v60 = v177;
    v88 = v178;
    v61 = v176;
    if (v108 != 1)
    {
      sub_1E5DFE50C(v62, &qword_1ED07A200, &unk_1E66054C0);
      v109 = v154;
      (*(v60 + 16))(v154, v88, v61);
      sub_1E64F5410(v109, &v186);
      v110 = v188;
      if (v188 != 255)
      {
        v111 = v187;
        v183 = v186;
        (*(v60 + 8))(v88, v61);
        v112 = v179;
        *v179 = v183;
        v112[2] = v111;
        *(v112 + 24) = v110;
LABEL_57:
        _s8ResourceOMa();
        return swift_storeEnumTagMultiPayload();
      }

LABEL_25:
      v89 = sub_1E65D74B8();
      if (v90)
      {
        if (v89 == 0x617373656E746966 && v90 == 0xEA00000000007070)
        {

LABEL_30:
          v92 = sub_1E65D7488();
          if (v93)
          {
            v94 = MEMORY[0x1E6945780](v92);
            if (v94 != 4)
            {
              v113 = v94;
              v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A28, &qword_1E6605420) + 48);
              v115 = v179;
              *v179 = v113;
              (*(v60 + 32))(v115 + v114, v88, v61);
              _s8ResourceOMa();
              return swift_storeEnumTagMultiPayload();
            }
          }

          goto LABEL_32;
        }

        v91 = sub_1E65E6C18();

        if (v91)
        {
          goto LABEL_30;
        }
      }

LABEL_32:
      (*(v60 + 32))(v179, v88, v61);
      _s8ResourceOMa();
      return swift_storeEnumTagMultiPayload();
    }

LABEL_24:
    sub_1E5DFE50C(v62, &qword_1ED07A200, &unk_1E66054C0);
    goto LABEL_25;
  }

  if (qword_1ED0718A0 != -1)
  {
    swift_once();
  }

  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D0, &qword_1E65ED110);
  __swift_project_value_buffer(v139, qword_1ED096140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D8, &qword_1E6605530);
  sub_1E65E1CE8();
  if (v188)
  {
    *&v183 = MEMORY[0x1E694D730](v186, *(&v186 + 1), v187, v188);
    v141 = v140;
  }

  else
  {
    *&v183 = 0;
    v141 = 0;
  }

  if (qword_1ED0718B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v139, qword_1ED096188);
  sub_1E65E1CE8();
  if (v188)
  {
    v143 = MEMORY[0x1E694D730](v186, *(&v186 + 1), v187, v188);
    v145 = v144;
  }

  else
  {
    v143 = 0;
    v145 = 0;
  }

  if (qword_1ED0718C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v127, qword_1ED0961A0);
  v146 = v175;
  v147 = v160;
  sub_1E65E1CE8();
  v148 = MEMORY[0x1E694D730](v186, *(&v186 + 1), v187, v188);
  v150 = v149;

  (*(v177 + 8))(v178, v176);
  (*(v83 + 8))(v147, v146);
  v151 = v179;
  *v179 = v183;
  v151[1] = v141;
  *(v151 + 16) = v132;
  v151[3] = v143;
  v151[4] = v145;
  v151[5] = v148;
  v151[6] = v150;
  _s8ResourceOMa();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E648D184(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A1B0, &qword_1E6605478);
  v101 = *(v2 - 8);
  v102 = v2;
  v3 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v100 = &v87 - v4;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A1B8, &qword_1E6605480);
  v98 = *(v99 - 8);
  v5 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v87 - v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A1C0, &qword_1E6605488);
  v96 = *(v108 - 8);
  v7 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v87 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A1C8, &qword_1E6605490);
  v95 = *(v106 - 8);
  v9 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v87 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A1D0, &qword_1E6605498);
  v92 = *(v94 - 8);
  v11 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v87 - v12;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A1D8, &qword_1E66054A0);
  v93 = *(v104 - 8);
  v13 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v87 - v14;
  v15 = sub_1E65D74E8();
  v16 = *(v15 - 8);
  v109 = v15;
  v110 = v16;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v91 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v87 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v87 - v23;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A1E0, &qword_1E66054A8);
  v88 = *(v89 - 8);
  v25 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v27 = &v87 - v26;
  v28 = _s8ResourceOMa();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A1E8, &unk_1E66054B0);
  v112 = *(v115 - 8);
  v32 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v34 = &v87 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E64904C8();
  v114 = v34;
  sub_1E65E6DA8();
  sub_1E648FB80(v111, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v46 = v24;
    v47 = v103;
    v48 = v104;
    v50 = v107;
    v49 = v108;
    v51 = v105;
    v52 = v106;
    if (EnumCaseMultiPayload)
    {
      v53 = v110;
      if (EnumCaseMultiPayload == 1)
      {
        v55 = *v31;
        v54 = *(v31 + 1);
        LODWORD(v111) = v31[16];
        v56 = *(v31 + 3);
        v57 = *(v31 + 4);
        v58 = *(v31 + 6);
        v109 = *(v31 + 5);
        v110 = v56;
        LOBYTE(v116) = 3;
        sub_1E64906C0();
        v60 = v114;
        v59 = v115;
        sub_1E65E6B18();
        LOBYTE(v116) = 0;
        v61 = v113;
        sub_1E65E6B28();

        if (v61)
        {

          (*(v95 + 8))(v51, v52);
          v62 = *(v112 + 8);
          v63 = v60;
        }

        else
        {
          LOBYTE(v116) = v111;
          v120 = 1;
          sub_1E643EEE4();
          sub_1E65E6B78();
          LOBYTE(v116) = 2;
          sub_1E65E6B28();
          v86 = v95;

          LOBYTE(v116) = 3;
          sub_1E65E6B48();

          (*(v86 + 8))(v51, v52);
          v62 = *(v112 + 8);
          v63 = v114;
        }

        goto LABEL_20;
      }

      v70 = *v31;
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A28, &qword_1E6605420);
      v72 = v22;
      v73 = v109;
      (*(v53 + 32))(v22, &v31[*(v71 + 48)], v109);
      LOBYTE(v116) = 4;
      sub_1E6490618();
      v74 = v50;
      v75 = v114;
      v59 = v115;
      sub_1E65E6B18();
      LOBYTE(v116) = v70;
      v120 = 0;
      sub_1E64908AC();
      v76 = v113;
      sub_1E65E6B78();
      if (v76)
      {
        (*(v96 + 8))(v74, v49);
        (*(v53 + 8))(v72, v73);
        v62 = *(v112 + 8);
        v63 = v75;
LABEL_20:
        v85 = v59;
        return v62(v63, v85);
      }

      LOBYTE(v116) = 1;
      sub_1E6490810(&qword_1ED073F50, MEMORY[0x1E6968FB0]);
      sub_1E65E6B78();
      (*(v96 + 8))(v74, v49);
      (*(v53 + 8))(v72, v73);
      v62 = *(v112 + 8);
      v63 = v114;
    }

    else
    {
      v66 = v109;
      v67 = v110;
      v68 = v46;
      (*(v110 + 32))(v46, v31, v109);
      LOBYTE(v116) = 1;
      sub_1E6490768();
      v69 = v114;
      sub_1E65E6B18();
      sub_1E6490810(&qword_1ED073F50, MEMORY[0x1E6968FB0]);
      sub_1E65E6B78();
      (*(v93 + 8))(v47, v48);
      (*(v67 + 8))(v68, v66);
      v62 = *(v112 + 8);
      v63 = v69;
    }

    v85 = v115;
    return v62(v63, v85);
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      LOBYTE(v116) = 0;
      sub_1E64907BC();
      v65 = v114;
      v64 = v115;
      sub_1E65E6B18();
      (*(v88 + 8))(v27, v89);
    }

    else
    {
      LOBYTE(v116) = 2;
      sub_1E6490714();
      v84 = v90;
      v65 = v114;
      v64 = v115;
      sub_1E65E6B18();
      (*(v92 + 8))(v84, v94);
    }

    return (*(v112 + 8))(v65, v64);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v38 = *v31;
    v37 = *(v31 + 1);
    v39 = *(v31 + 2);
    v40 = v31[24];
    LOBYTE(v116) = 5;
    sub_1E6490570();
    v41 = v97;
    v43 = v114;
    v42 = v115;
    sub_1E65E6B18();
    v111 = v38;
    v116 = v38;
    v117 = v37;
    v118 = v39;
    v119 = v40;
    sub_1E6490858();
    v44 = v99;
    sub_1E65E6B78();
    (*(v98 + 8))(v41, v44);
    (*(v112 + 8))(v43, v42);
    return sub_1E5FFF204(v111, v37, v39, v40);
  }

  else
  {
    v77 = v109;
    v78 = v110;
    v79 = v91;
    (*(v110 + 32))(v91, v31, v109);
    LOBYTE(v116) = 6;
    sub_1E649051C();
    v80 = v100;
    v82 = v114;
    v81 = v115;
    sub_1E65E6B18();
    sub_1E6490810(&qword_1ED073F50, MEMORY[0x1E6968FB0]);
    v83 = v102;
    sub_1E65E6B78();
    (*(v101 + 8))(v80, v83);
    (*(v78 + 8))(v79, v77);
    return (*(v112 + 8))(v82, v81);
  }
}

uint64_t sub_1E648DEC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A120, &qword_1E6605430);
  v121 = *(v120 - 8);
  v3 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v130 = &v102 - v4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A128, &qword_1E6605438);
  v115 = *(v116 - 8);
  v5 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v129 = &v102 - v6;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A130, &qword_1E6605440);
  v119 = *(v118 - 8);
  v7 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v124 = &v102 - v8;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A138, &qword_1E6605448);
  v122 = *(v117 - 8);
  v9 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v128 = &v102 - v10;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A140, &qword_1E6605450);
  v112 = *(v111 - 8);
  v11 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v123 = &v102 - v12;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A148, &qword_1E6605458);
  v113 = *(v114 - 8);
  v13 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v127 = &v102 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A150, &qword_1E6605460);
  v108 = *(v109 - 8);
  v15 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v126 = &v102 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A158, &unk_1E6605468);
  v132 = *(v17 - 8);
  v133 = v17;
  v18 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v102 - v19;
  v125 = _s8ResourceOMa();
  v21 = *(*(v125 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v125);
  v110 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v102 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v102 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v102 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v102 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v102 - v36;
  v39 = a1[3];
  v38 = a1[4];
  v134 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_1E64904C8();
  v40 = v135;
  sub_1E65E6D98();
  if (v40)
  {
    goto LABEL_12;
  }

  v105 = v35;
  v41 = v126;
  v104 = v26;
  v106 = v29;
  v103 = v32;
  v42 = v127;
  v43 = v128;
  v135 = 0;
  v44 = v129;
  v45 = v130;
  v107 = v37;
  v46 = v131;
  v47 = v133;
  v48 = sub_1E65E6AF8();
  v49 = (2 * *(v48 + 16)) | 1;
  v139 = v48;
  v140 = v48 + 32;
  v141 = 0;
  v142 = v49;
  v50 = sub_1E5FBC814();
  if (v50 == 7 || v141 != v142 >> 1)
  {
    v56 = sub_1E65E68F8();
    swift_allocError();
    v58 = v57;
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
    *v58 = v125;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E69E6AF8], v56);
    swift_willThrow();
  }

  else
  {
    if (v50 > 2u)
    {
      if (v50 <= 4u)
      {
        v51 = v132;
        if (v50 == 3)
        {
          LOBYTE(v136) = 3;
          sub_1E64906C0();
          v52 = v43;
          v53 = v135;
          sub_1E65E6A68();
          if (!v53)
          {
            LOBYTE(v136) = 0;
            v54 = v117;
            v55 = sub_1E65E6A88();
            v84 = v83;
            v85 = v55;
            v143 = 1;
            sub_1E643FF0C();
            sub_1E65E6AD8();
            v130 = v20;
            v88 = v136;
            v143 = 2;
            v89 = sub_1E65E6A88();
            v90 = v54;
            v129 = v92;
            LODWORD(v126) = v88;
            v127 = v89;
            v143 = 3;
            v93 = sub_1E65E6AA8();
            v135 = 0;
            v94 = v93;
            v96 = v95;
            (*(v122 + 8))(v52, v90);
            (*(v132 + 8))(v130, v133);
            swift_unknownObjectRelease();
            v97 = v103;
            *v103 = v85;
            v97[1] = v84;
            *(v97 + 16) = v126;
            v98 = v129;
            v97[3] = v127;
            v97[4] = v98;
            v97[5] = v94;
            v97[6] = v96;
            swift_storeEnumTagMultiPayload();
            v99 = v97;
            v100 = v107;
            sub_1E6078118(v99, v107);
            v101 = v134;
LABEL_34:
            v62 = v46;
LABEL_37:
            sub_1E6078118(v100, v62);
            v60 = v101;
            return __swift_destroy_boxed_opaque_existential_1(v60);
          }

          goto LABEL_32;
        }

        LOBYTE(v136) = 4;
        sub_1E6490618();
        v72 = v135;
        sub_1E65E6A68();
        if (v72)
        {
LABEL_32:
          (*(v51 + 8))(v20, v47);
          goto LABEL_11;
        }

        v62 = v46;
        LOBYTE(v136) = 0;
        sub_1E649066C();
        v73 = v118;
        sub_1E65E6AD8();
        v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A28, &qword_1E6605420) + 48);
        sub_1E65D74E8();
        LOBYTE(v136) = 1;
        sub_1E6490810(&qword_1ED073F38, MEMORY[0x1E6968FB0]);
        v87 = v124;
        sub_1E65E6AD8();
        (*(v119 + 8))(v87, v73);
        (*(v51 + 8))(v20, v47);
        swift_unknownObjectRelease();
        v91 = v106;
        swift_storeEnumTagMultiPayload();
        v67 = v91;
        goto LABEL_35;
      }

      v68 = v132;
      if (v50 == 5)
      {
        LOBYTE(v136) = 5;
        sub_1E6490570();
        v69 = v135;
        sub_1E65E6A68();
        if (v69)
        {
LABEL_20:
          (*(v68 + 8))(v20, v47);
          goto LABEL_11;
        }

        sub_1E64905C4();
        v76 = v116;
        sub_1E65E6AD8();
        (*(v115 + 8))(v44, v76);
        (*(v68 + 8))(v20, v47);
        swift_unknownObjectRelease();
        v77 = v137;
        v78 = v138;
        v79 = v104;
        *v104 = v136;
        *(v79 + 2) = v77;
        *(v79 + 24) = v78;
        swift_storeEnumTagMultiPayload();
        v80 = v79;
      }

      else
      {
        LOBYTE(v136) = 6;
        sub_1E649051C();
        v74 = v45;
        v75 = v135;
        sub_1E65E6A68();
        if (v75)
        {
          goto LABEL_20;
        }

        sub_1E65D74E8();
        sub_1E6490810(&qword_1ED073F38, MEMORY[0x1E6968FB0]);
        v81 = v110;
        v82 = v120;
        sub_1E65E6AD8();
        (*(v121 + 8))(v74, v82);
        (*(v68 + 8))(v20, v47);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v80 = v81;
      }

      v100 = v107;
      sub_1E6078118(v80, v107);
      v101 = v134;
      goto LABEL_34;
    }

    if (v50)
    {
      v62 = v46;
      v63 = v135;
      if (v50 == 1)
      {
        LOBYTE(v136) = 1;
        sub_1E6490768();
        v64 = v42;
        sub_1E65E6A68();
        if (!v63)
        {
          sub_1E65D74E8();
          sub_1E6490810(&qword_1ED073F38, MEMORY[0x1E6968FB0]);
          v65 = v105;
          v66 = v114;
          sub_1E65E6AD8();
          (*(v113 + 8))(v64, v66);
          (*(v132 + 8))(v20, v47);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v67 = v65;
LABEL_35:
          v100 = v107;
          sub_1E6078118(v67, v107);
          goto LABEL_36;
        }

        goto LABEL_10;
      }

      LOBYTE(v136) = 2;
      sub_1E6490714();
      v71 = v123;
      sub_1E65E6A68();
      if (!v63)
      {
        (*(v112 + 8))(v71, v111);
        (*(v132 + 8))(v20, v47);
        swift_unknownObjectRelease();
        v100 = v107;
        goto LABEL_25;
      }
    }

    else
    {
      LOBYTE(v136) = 0;
      sub_1E64907BC();
      v70 = v135;
      sub_1E65E6A68();
      if (!v70)
      {
        v62 = v46;
        (*(v108 + 8))(v41, v109);
        (*(v132 + 8))(v20, v47);
        swift_unknownObjectRelease();
        v100 = v107;
LABEL_25:
        swift_storeEnumTagMultiPayload();
LABEL_36:
        v101 = v134;
        goto LABEL_37;
      }
    }
  }

LABEL_10:
  (*(v132 + 8))(v20, v47);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v60 = v134;
  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t sub_1E648EFEC()
{
  v1 = v0;
  v2 = sub_1E65D74E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s8ResourceOMa();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E648FB80(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v6, v10, v2);
      v25 = 1;
LABEL_14:
      MEMORY[0x1E694E740](v25);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v26 = *v10;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A28, &qword_1E6605420);
      (*(v3 + 32))(v6, &v10[*(v27 + 48)], v2);
      MEMORY[0x1E694E740](4);
      sub_1E65DDD88();
      sub_1E65E5D78();

LABEL_15:
      sub_1E6490810(&qword_1ED073F58, MEMORY[0x1E6968FB0]);
      sub_1E65E5B48();
      return (*(v3 + 8))(v6, v2);
    }

    v18 = *v10;
    v17 = *(v10 + 1);
    v19 = v10[16];
    v21 = *(v10 + 3);
    v20 = *(v10 + 4);
    v23 = *(v10 + 5);
    v22 = *(v10 + 6);
    MEMORY[0x1E694E740](3);
    sub_1E65E6D48();
    if (v17)
    {
      sub_1E65E5D78();
    }

    sub_1E65E5D78();

    sub_1E65E6D48();
    if (v20)
    {
      sub_1E65E5D78();
    }

    sub_1E65E5D78();
  }

  else
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v12 = *v10;
        v13 = *(v10 + 1);
        v14 = *(v10 + 2);
        v15 = v10[24];
        MEMORY[0x1E694E740](5);
        v28[0] = v12;
        v28[1] = v13;
        v28[2] = v14;
        v29 = v15;
        URLAction.hash(into:)();
        return sub_1E5FFF204(v12, v13, v14, v15);
      }

      (*(v3 + 32))(v6, v10, v2);
      v25 = 6;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v24 = 0;
    }

    else
    {
      v24 = 2;
    }

    return MEMORY[0x1E694E740](v24);
  }
}

uint64_t sub_1E648F41C(uint64_t a1)
{
  v2 = sub_1E6490570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E648F458(uint64_t a1)
{
  v2 = sub_1E6490570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E648F494()
{
  v1 = *v0;
  v2 = 1953460082;
  v3 = 0x6E6F69746361;
  if (v1 != 5)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  v4 = 0x676E6972616873;
  if (v1 != 3)
  {
    v4 = 0x6B6E694C6E65706FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6269726373627573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
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

uint64_t sub_1E648F568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6491164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E648F590(uint64_t a1)
{
  v2 = sub_1E64904C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E648F5CC(uint64_t a1)
{
  v2 = sub_1E64904C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E648F608()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 0x6E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_1E648F638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E648F710(uint64_t a1)
{
  v2 = sub_1E6490618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E648F74C(uint64_t a1)
{
  v2 = sub_1E6490618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E648F788(uint64_t a1)
{
  v2 = sub_1E64907BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E648F7C4(uint64_t a1)
{
  v2 = sub_1E64907BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E648F800()
{
  v1 = 0x7972746E756F63;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = 0x79726F6765746163;
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

uint64_t sub_1E648F87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E64913B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E648F8A4(uint64_t a1)
{
  v2 = sub_1E64906C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E648F8E0(uint64_t a1)
{
  v2 = sub_1E64906C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E648F91C(uint64_t a1)
{
  v2 = sub_1E6490768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E648F958(uint64_t a1)
{
  v2 = sub_1E6490768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E648F994(uint64_t a1)
{
  v2 = sub_1E6490714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E648F9D0(uint64_t a1)
{
  v2 = sub_1E6490714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E648FA0C(uint64_t a1)
{
  v2 = sub_1E649051C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E648FA48(uint64_t a1)
{
  v2 = sub_1E649051C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E648FAB4()
{
  sub_1E65E6D28();
  sub_1E648EFEC();
  return sub_1E65E6D78();
}

uint64_t sub_1E648FAF8()
{
  sub_1E65E6D28();
  sub_1E648EFEC();
  return sub_1E65E6D78();
}

uint64_t sub_1E648FB80(uint64_t a1, uint64_t a2)
{
  v4 = _s8ResourceOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E648FBE4(uint64_t a1, uint64_t a2)
{
  v95 = a1;
  v96 = a2;
  v2 = sub_1E65D74E8();
  v3 = *(v2 - 8);
  v93 = v2;
  v94 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v91 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v91 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v91 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v91 - v13;
  v15 = _s8ResourceOMa();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v92 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v91 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v91 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v91 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v91 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A118, &qword_1E6605428);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v34 = &v91 - v33;
  v35 = &v91 + *(v32 + 56) - v33;
  sub_1E648FB80(v95, &v91 - v33);
  sub_1E648FB80(v96, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1E648FB80(v34, v29);
      if (!swift_getEnumCaseMultiPayload())
      {
        v81 = v93;
        v82 = v94;
        (*(v94 + 32))(v14, v35, v93);
        v45 = sub_1E65D7468();
        v83 = *(v82 + 8);
        v83(v14, v81);
        v83(v29, v81);
        goto LABEL_43;
      }

      (*(v94 + 8))(v29, v93);
      goto LABEL_38;
    }

    if (EnumCaseMultiPayload != 1)
    {
      sub_1E648FB80(v34, v24);
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A28, &qword_1E6605420) + 48);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v61 = *(v94 + 32);
        v62 = *v24;
        v63 = *v35;
        v96 = v12;
        v64 = v12;
        v65 = v93;
        v61(v64, &v24[v60], v93);
        v66 = &v35[v60];
        v67 = v9;
        v61(v9, v66, v65);
        v68 = sub_1E65DDD88();
        v70 = v69;
        if (v68 == sub_1E65DDD88() && v70 == v71)
        {
        }

        else
        {
          v73 = sub_1E65E6C18();

          if ((v73 & 1) == 0)
          {
            v74 = *(v94 + 8);
            v74(v67, v65);
            v74(v96, v65);
            sub_1E649046C(v34);
LABEL_39:
            v45 = 0;
            return v45 & 1;
          }
        }

        v84 = v96;
        v45 = sub_1E65D7468();
        v85 = *(v94 + 8);
        v85(v67, v65);
        v85(v84, v65);
        goto LABEL_43;
      }

      (*(v94 + 8))(&v24[v60], v93);
      goto LABEL_38;
    }

    v96 = v34;
    sub_1E648FB80(v34, v27);
    v47 = *v27;
    v46 = *(v27 + 1);
    v48 = v27[16];
    v50 = *(v27 + 3);
    v49 = *(v27 + 4);
    v52 = *(v27 + 5);
    v51 = *(v27 + 6);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v34 = v96;
      goto LABEL_38;
    }

    v94 = v52;
    v53 = *(v35 + 1);
    v54 = v35[16];
    v55 = *(v35 + 3);
    v56 = *(v35 + 4);
    v57 = *(v35 + 5);
    v95 = *(v35 + 6);
    if (v46)
    {
      if (!v53)
      {

        goto LABEL_59;
      }

      v92 = v57;
      v93 = v55;
      if (v47 == *v35 && v46 == v53)
      {
      }

      else
      {
        v59 = sub_1E65E6C18();

        if ((v59 & 1) == 0)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
      v92 = v57;
      v93 = v55;
      if (v53)
      {

        goto LABEL_61;
      }
    }

    if (sub_1E648B2FC(v48, v54))
    {
      if (v49)
      {
        if (v56)
        {
          if (v50 == v93 && v49 == v56)
          {

            goto LABEL_68;
          }

          v88 = sub_1E65E6C18();

          if (v88)
          {
LABEL_68:
            if (v94 == v92 && v51 == v95)
            {

              v80 = v96;
              goto LABEL_33;
            }

            v90 = sub_1E65E6C18();

            if (v90)
            {
              v80 = v96;
              goto LABEL_33;
            }

LABEL_62:
            sub_1E649046C(v96);
            goto LABEL_39;
          }
        }

        else
        {
        }

LABEL_61:

        goto LABEL_62;
      }

      if (!v56)
      {
        goto LABEL_68;
      }

LABEL_60:

      goto LABEL_61;
    }

LABEL_59:

    goto LABEL_60;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1E648FB80(v34, v21);
      v38 = *v21;
      v37 = *(v21 + 1);
      v39 = *(v21 + 2);
      v40 = v21[24];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v41 = *v35;
        v42 = *(v35 + 1);
        v43 = *(v35 + 2);
        v44 = v35[24];
        v99[0] = v38;
        v99[1] = v37;
        v99[2] = v39;
        v100 = v40;
        v97[0] = v41;
        v97[1] = v42;
        v97[2] = v43;
        v98 = v44;
        v45 = _s10Blackbeard9URLActionO2eeoiySbAC_ACtFZ_0(v99, v97);
        sub_1E5FFF204(v41, v42, v43, v44);
        sub_1E5FFF204(v38, v37, v39, v40);
LABEL_43:
        sub_1E649046C(v34);
        return v45 & 1;
      }

      sub_1E5FFF204(v38, v37, v39, v40);
    }

    else
    {
      v75 = v92;
      sub_1E648FB80(v34, v92);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v76 = v93;
        v77 = v94;
        v78 = v91;
        (*(v94 + 32))(v91, v35, v93);
        v45 = sub_1E65D7468();
        v79 = *(v77 + 8);
        v79(v78, v76);
        v79(v75, v76);
        goto LABEL_43;
      }

      (*(v94 + 8))(v75, v93);
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload == 5)
  {
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
LABEL_38:
    sub_1E5DFE50C(v34, &qword_1ED07A118, &qword_1E6605428);
    goto LABEL_39;
  }

LABEL_32:
  v80 = v34;
LABEL_33:
  sub_1E649046C(v80);
  v45 = 1;
  return v45 & 1;
}

uint64_t sub_1E649046C(uint64_t a1)
{
  v2 = _s8ResourceOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E64904C8()
{
  result = qword_1ED07A160;
  if (!qword_1ED07A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A160);
  }

  return result;
}

unint64_t sub_1E649051C()
{
  result = qword_1ED07A168;
  if (!qword_1ED07A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A168);
  }

  return result;
}

unint64_t sub_1E6490570()
{
  result = qword_1ED07A170;
  if (!qword_1ED07A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A170);
  }

  return result;
}

unint64_t sub_1E64905C4()
{
  result = qword_1ED07A178;
  if (!qword_1ED07A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A178);
  }

  return result;
}

unint64_t sub_1E6490618()
{
  result = qword_1ED07A180;
  if (!qword_1ED07A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A180);
  }

  return result;
}

unint64_t sub_1E649066C()
{
  result = qword_1ED07A188;
  if (!qword_1ED07A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A188);
  }

  return result;
}

unint64_t sub_1E64906C0()
{
  result = qword_1ED07A190;
  if (!qword_1ED07A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A190);
  }

  return result;
}

unint64_t sub_1E6490714()
{
  result = qword_1ED07A198;
  if (!qword_1ED07A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A198);
  }

  return result;
}

unint64_t sub_1E6490768()
{
  result = qword_1ED07A1A0;
  if (!qword_1ED07A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A1A0);
  }

  return result;
}

unint64_t sub_1E64907BC()
{
  result = qword_1ED07A1A8;
  if (!qword_1ED07A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A1A8);
  }

  return result;
}

uint64_t sub_1E6490810(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E6490858()
{
  result = qword_1ED07A1F0;
  if (!qword_1ED07A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A1F0);
  }

  return result;
}

unint64_t sub_1E64908AC()
{
  result = qword_1ED07A1F8;
  if (!qword_1ED07A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A1F8);
  }

  return result;
}

uint64_t sub_1E6490900(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1E64909D8()
{
  result = qword_1ED07A248;
  if (!qword_1ED07A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A248);
  }

  return result;
}

unint64_t sub_1E6490A30()
{
  result = qword_1ED07A250;
  if (!qword_1ED07A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A250);
  }

  return result;
}

unint64_t sub_1E6490A88()
{
  result = qword_1ED07A258;
  if (!qword_1ED07A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A258);
  }

  return result;
}

unint64_t sub_1E6490AE0()
{
  result = qword_1ED07A260;
  if (!qword_1ED07A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A260);
  }

  return result;
}

unint64_t sub_1E6490B38()
{
  result = qword_1ED07A268;
  if (!qword_1ED07A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A268);
  }

  return result;
}

unint64_t sub_1E6490B90()
{
  result = qword_1ED07A270;
  if (!qword_1ED07A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A270);
  }

  return result;
}

unint64_t sub_1E6490BE8()
{
  result = qword_1ED07A278;
  if (!qword_1ED07A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A278);
  }

  return result;
}

unint64_t sub_1E6490C40()
{
  result = qword_1ED07A280;
  if (!qword_1ED07A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A280);
  }

  return result;
}

unint64_t sub_1E6490C98()
{
  result = qword_1ED07A288;
  if (!qword_1ED07A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A288);
  }

  return result;
}

unint64_t sub_1E6490CF0()
{
  result = qword_1ED07A290;
  if (!qword_1ED07A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A290);
  }

  return result;
}

unint64_t sub_1E6490D48()
{
  result = qword_1ED07A298;
  if (!qword_1ED07A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A298);
  }

  return result;
}

unint64_t sub_1E6490DA0()
{
  result = qword_1ED07A2A0;
  if (!qword_1ED07A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2A0);
  }

  return result;
}

unint64_t sub_1E6490DF8()
{
  result = qword_1ED07A2A8;
  if (!qword_1ED07A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2A8);
  }

  return result;
}

unint64_t sub_1E6490E50()
{
  result = qword_1ED07A2B0;
  if (!qword_1ED07A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2B0);
  }

  return result;
}

unint64_t sub_1E6490EA8()
{
  result = qword_1ED07A2B8;
  if (!qword_1ED07A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2B8);
  }

  return result;
}

unint64_t sub_1E6490F00()
{
  result = qword_1ED07A2C0;
  if (!qword_1ED07A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2C0);
  }

  return result;
}

unint64_t sub_1E6490F58()
{
  result = qword_1ED07A2C8;
  if (!qword_1ED07A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2C8);
  }

  return result;
}

unint64_t sub_1E6490FB0()
{
  result = qword_1ED07A2D0;
  if (!qword_1ED07A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2D0);
  }

  return result;
}

unint64_t sub_1E6491008()
{
  result = qword_1ED07A2D8;
  if (!qword_1ED07A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2D8);
  }

  return result;
}

unint64_t sub_1E6491060()
{
  result = qword_1ED07A2E0;
  if (!qword_1ED07A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2E0);
  }

  return result;
}

unint64_t sub_1E64910B8()
{
  result = qword_1ED07A2E8;
  if (!qword_1ED07A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2E8);
  }

  return result;
}

unint64_t sub_1E6491110()
{
  result = qword_1ED07A2F0;
  if (!qword_1ED07A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2F0);
  }

  return result;
}

uint64_t sub_1E6491164(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953460082 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xE900000000000065 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E6618020 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6972616873 && a2 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B6E694C6E65706FLL && a2 == 0xE800000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E65E6C18();

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

uint64_t sub_1E64913B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E65E6C18();

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

char *DynamicBarButtonItem.__allocating_init<A>(store:presentationContextKey:rootView:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1E649198C(a1, a2, a3, a4, a5);
  (*(*(a5 - 8) + 8))(a4, a5);
  return v12;
}

char *DynamicBarButtonItem.init<A>(store:presentationContextKey:rootView:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E649198C(a1, a2, a3, a4, a5);
  (*(*(a5 - 8) + 8))(a4, a5);
  return v7;
}

void sub_1E6491634(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setHidden_];
  }
}

void sub_1E6491698()
{
  v0 = sub_1E65DEBD8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    (*(v1 + 104))(v4, *MEMORY[0x1E699CD18], v0);
    v7 = sub_1E65DEBC8();
    (*(v1 + 8))(v4, v0);
    [v6 _setPrefersNoPlatter_];
  }
}

id DynamicBarButtonItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DynamicBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1E649198C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[1] = a2;
  v10 = sub_1E65D76F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v13);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F80, &qword_1E65FA950);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v5 + OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver) = sub_1E65E4D18();
  (*(v11 + 16))(v15, a3, v10);
  v19 = sub_1E60946F0(v15, a4, a5);
  v20 = OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver;
  v21 = *&v19[OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver];
  v26[4] = swift_getKeyPath();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = v19;

  sub_1E65E4D08();

  v23 = *&v19[v20];
  v26[2] = swift_getKeyPath();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E6491D60(&qword_1EE2D6840, MEMORY[0x1E699CD20]);
  sub_1E65E4D08();

  v24 = *&v19[v20];

  sub_1E65E4CF8();

  (*(v11 + 8))(a3, v10);
  return v22;
}

uint64_t type metadata accessor for DynamicBarButtonItem()
{
  result = qword_1EE2D9658;
  if (!qword_1EE2D9658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6491D60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6491DA8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 80) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(sub_1E65D76A8() - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6491E40, 0, 0);
}

uint64_t sub_1E6491E40()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 80);
  v3 = v1 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 44);
  v5 = BookmarkService.removeBookmarks.getter();
  *(v0 + 48) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073228, &qword_1E65ED080);
  v7 = sub_1E65DADD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E65EA670;
  v12 = qword_1E6605FB0[v2];
  v13 = *(v0 + 40);
  sub_1E600B01C(*(v0 + 16), *(v0 + 24), *(v0 + 80));
  sub_1E65D7698();
  sub_1E65DAD98();
  v14 = sub_1E5F9B3B0(v11);
  *(v0 + 56) = v14;
  swift_setDeallocating();
  (*(v8 + 8))(v11 + v10, v7);
  swift_deallocClassInstance();
  v18 = (v5 + *v5);
  v15 = v5[1];
  v16 = swift_task_alloc();
  *(v0 + 64) = v16;
  *v16 = v0;
  v16[1] = sub_1E64920A0;

  return v18(v14);
}

uint64_t sub_1E64920A0()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E64921F4, 0, 0);
  }

  else
  {
    v4 = v3[6];
    v5 = v3[7];
    v6 = v3[5];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1E64921F4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[9];

  return v4();
}

id sub_1E649226C(uint64_t a1, uint64_t a2, void *a3)
{
  v71 = a3;
  v68 = a2;
  v78 = a1;
  v70 = sub_1E65D76F8();
  v65 = *(v70 - 8);
  v4 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v67 = v5;
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v66 = *(v6 - 8);
  v79 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D40, &qword_1E65FAA90);
  v76 = *(v8 - 8);
  v77 = v8;
  v9 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v58 - v10;
  v11 = type metadata accessor for AppComposer();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D48, &qword_1E65FAA98);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D50, &unk_1E65FAAA0);
  v73 = *(v17 - 8);
  v74 = v17;
  v18 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - v19;
  if (qword_1ED071938 != -1)
  {
    swift_once();
  }

  v72 = qword_1ED0962A8;
  v69 = *v3;
  sub_1E5E1DEAC(v3, &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v12 + 80);
  v22 = ((v21 + 16) & ~v21) + v13;
  v23 = (v21 + 16) & ~v21;
  v24 = v21 | 7;
  v25 = swift_allocObject();
  sub_1E5E1FA80(v14, v25 + v23);
  sub_1E5E1DEAC(v3, v14);
  v26 = swift_allocObject();
  sub_1E5E1FA80(v14, v26 + v23);
  sub_1E5E1DEAC(v3, v14);
  v60 = v22;
  v62 = v24;
  v27 = swift_allocObject();
  v63 = v23;
  sub_1E5E1FA80(v14, v27 + v23);
  sub_1E5E1DEAC(v3, v14);
  v28 = swift_allocObject();
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v28;
  sub_1E5E1FA80(v59, v28 + v23);
  v30 = swift_allocObject();
  *(v30 + 16) = &unk_1E6605FA0;
  *(v30 + 24) = v29;
  sub_1E604BABC();
  v58 = v3;
  sub_1E65DEB78();
  v64 = v20;
  sub_1E65DE8E8();
  v31 = v75;
  sub_1E6494C60(v78, v75);
  v32 = v65;
  v33 = v61;
  v34 = v70;
  (*(v65 + 16))(v61, v68, v70);
  v35 = *(v66 + 80);
  v36 = (v35 + 16) & ~v35;
  v37 = (v36 + v79 + *(v32 + 80)) & ~*(v32 + 80);
  v38 = swift_allocObject();
  sub_1E5FAB460(v31, v38 + v36, &qword_1ED073950, &unk_1E65F4360);
  (*(v32 + 32))(v38 + v37, v33, v34);
  v39 = v78;
  sub_1E6494C60(v78, v31);
  v40 = swift_allocObject();
  sub_1E5FAB460(v31, v40 + v36, &qword_1ED073950, &unk_1E65F4360);
  type metadata accessor for AppFeature();
  sub_1E5DED16C();
  v70 = sub_1E6494E24();
  v41 = v74;
  sub_1E65E4DE8();
  v42 = v59;
  sub_1E5E1DEAC(v58, v59);
  v43 = v71;
  v44 = *v71;
  v45 = v71[3];
  v46 = v71[7];
  v66 = v71[5];
  v67 = v46;
  v68 = v71[9];
  sub_1E6494C60(v39, v31);
  v47 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + v35 + 80) & ~v35;
  v49 = swift_allocObject();
  sub_1E5E1FA80(v42, v49 + v63);
  v50 = (v49 + v47);
  v51 = v43[3];
  v50[2] = v43[2];
  v50[3] = v51;
  v50[4] = v43[4];
  v52 = v43[1];
  *v50 = *v43;
  v50[1] = v52;
  sub_1E5FAB460(v31, v49 + v48, &qword_1ED073950, &unk_1E65F4360);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1E64961C8;
  *(v53 + 24) = v49;

  v54 = v64;
  v55 = v80;
  v56 = sub_1E65E4F08();

  (*(v76 + 8))(v55, v77);
  (*(v73 + 8))(v54, v41);
  return sub_1E63884E0(v72, v56, sub_1E5E278AC, 0, sub_1E6493B4C, 0);
}

id sub_1E6492AD8(uint64_t a1, uint64_t a2, void *a3)
{
  v71 = a3;
  v68 = a2;
  v78 = a1;
  v70 = sub_1E65D76F8();
  v65 = *(v70 - 8);
  v4 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v67 = v5;
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v66 = *(v6 - 8);
  v79 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D40, &qword_1E65FAA90);
  v76 = *(v8 - 8);
  v77 = v8;
  v9 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v58 - v10;
  v11 = type metadata accessor for AppComposer();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D48, &qword_1E65FAA98);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D50, &unk_1E65FAAA0);
  v73 = *(v17 - 8);
  v74 = v17;
  v18 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - v19;
  if (qword_1ED071968 != -1)
  {
    swift_once();
  }

  v72 = qword_1ED0962D8;
  v69 = *v3;
  sub_1E5E1DEAC(v3, &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v12 + 80);
  v22 = ((v21 + 16) & ~v21) + v13;
  v23 = (v21 + 16) & ~v21;
  v24 = v21 | 7;
  v25 = swift_allocObject();
  sub_1E5E1FA80(v14, v25 + v23);
  sub_1E5E1DEAC(v3, v14);
  v26 = swift_allocObject();
  sub_1E5E1FA80(v14, v26 + v23);
  sub_1E5E1DEAC(v3, v14);
  v60 = v22;
  v62 = v24;
  v27 = swift_allocObject();
  v63 = v23;
  sub_1E5E1FA80(v14, v27 + v23);
  sub_1E5E1DEAC(v3, v14);
  v28 = swift_allocObject();
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v28;
  sub_1E5E1FA80(v59, v28 + v23);
  v30 = swift_allocObject();
  *(v30 + 16) = &unk_1E6605F08;
  *(v30 + 24) = v29;
  sub_1E604BABC();
  v58 = v3;
  sub_1E65DEB78();
  v64 = v20;
  sub_1E65DE8E8();
  v31 = v75;
  sub_1E6494C60(v78, v75);
  v32 = v65;
  v33 = v61;
  v34 = v70;
  (*(v65 + 16))(v61, v68, v70);
  v35 = *(v66 + 80);
  v36 = (v35 + 16) & ~v35;
  v37 = (v36 + v79 + *(v32 + 80)) & ~*(v32 + 80);
  v38 = swift_allocObject();
  sub_1E5FAB460(v31, v38 + v36, &qword_1ED073950, &unk_1E65F4360);
  (*(v32 + 32))(v38 + v37, v33, v34);
  v39 = v78;
  sub_1E6494C60(v78, v31);
  v40 = swift_allocObject();
  sub_1E5FAB460(v31, v40 + v36, &qword_1ED073950, &unk_1E65F4360);
  type metadata accessor for AppFeature();
  sub_1E5DED16C();
  v70 = sub_1E6494E24();
  v41 = v74;
  sub_1E65E4DE8();
  v42 = v59;
  sub_1E5E1DEAC(v58, v59);
  v43 = v71;
  v44 = *v71;
  v45 = v71[3];
  v46 = v71[7];
  v66 = v71[5];
  v67 = v46;
  v68 = v71[9];
  sub_1E6494C60(v39, v31);
  v47 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + v35 + 80) & ~v35;
  v49 = swift_allocObject();
  sub_1E5E1FA80(v42, v49 + v63);
  v50 = (v49 + v47);
  v51 = v43[3];
  v50[2] = v43[2];
  v50[3] = v51;
  v50[4] = v43[4];
  v52 = v43[1];
  *v50 = *v43;
  v50[1] = v52;
  sub_1E5FAB460(v31, v49 + v48, &qword_1ED073950, &unk_1E65F4360);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1E64961C8;
  *(v53 + 24) = v49;

  v54 = v64;
  v55 = v80;
  v56 = sub_1E65E4F08();

  (*(v76 + 8))(v55, v77);
  (*(v73 + 8))(v54, v41);
  return sub_1E63884E0(v72, v56, sub_1E5F870C8, 0, sub_1E6493E10, 0);
}

uint64_t sub_1E6493344(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v67 = a6;
  v69 = a2;
  v70 = a5;
  v79 = a4;
  v76 = a3;
  v7 = sub_1E65D76F8();
  v73 = *(v7 - 8);
  v74 = v7;
  v75 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v71 = *(v9 - 8);
  v83 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D40, &qword_1E65FAA90);
  v80 = *(v11 - 8);
  v81 = v11;
  v12 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v60 - v13;
  v14 = type metadata accessor for AppComposer();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D48, &qword_1E65FAA98);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D50, &unk_1E65FAAA0);
  v78 = *(v82 - 8);
  v20 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v68 = &v60 - v21;
  v77 = *a1;
  sub_1E5E1DEAC(a1, v17);
  v22 = *(v15 + 80);
  v23 = ((v22 + 16) & ~v22) + v16;
  v24 = (v22 + 16) & ~v22;
  v25 = v22 | 7;
  v26 = swift_allocObject();
  sub_1E5E1FA80(v17, v26 + v24);
  sub_1E5E1DEAC(a1, v17);
  v27 = swift_allocObject();
  sub_1E5E1FA80(v17, v27 + v24);
  v63 = a1;
  sub_1E5E1DEAC(a1, v17);
  v64 = v23;
  v65 = v25;
  v28 = swift_allocObject();
  v66 = v24;
  sub_1E5E1FA80(v17, v28 + v24);
  sub_1E5E1DEAC(a1, v17);
  v29 = swift_allocObject();
  sub_1E5E1FA80(v17, v29 + v24);
  v30 = swift_allocObject();
  *(v30 + 16) = &unk_1E65FAAC8;
  *(v30 + 24) = v29;
  sub_1E604BABC();

  sub_1E65DEB78();
  sub_1E65DE8E8();
  v31 = v69;
  v32 = v62;
  sub_1E6494C60(v69, v62);
  v33 = v72;
  v34 = v73;
  v35 = v74;
  (*(v73 + 16))(v72, v76, v74);
  v36 = *(v71 + 80);
  v37 = (v36 + 16) & ~v36;
  v76 = v37 + v83;
  v71 = v36 | 7;
  v38 = (v37 + v83 + *(v34 + 80)) & ~*(v34 + 80);
  v39 = swift_allocObject();
  sub_1E5FAB460(v32, v39 + v37, &qword_1ED073950, &unk_1E65F4360);
  (*(v34 + 32))(v39 + v38, v33, v35);
  v40 = v31;
  v41 = v32;
  sub_1E6494C60(v31, v32);
  v42 = swift_allocObject();
  sub_1E5FAB460(v32, v42 + v37, &qword_1ED073950, &unk_1E65F4360);
  type metadata accessor for AppFeature();
  sub_1E5DED16C();
  v76 = sub_1E6494E24();
  sub_1E65E4DE8();
  v43 = v61;
  sub_1E5E1DEAC(v63, v61);
  v44 = *v79;
  v45 = v79[3];
  v46 = v79[5];
  v47 = v79[9];
  v74 = v79[7];
  v75 = v47;
  v48 = v79;
  sub_1E6494C60(v40, v41);
  v49 = (v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  sub_1E5E1FA80(v43, v50 + v66);
  v51 = (v50 + v49);
  v52 = v48[3];
  v51[2] = v48[2];
  v51[3] = v52;
  v51[4] = v48[4];
  v53 = v48[1];
  *v51 = *v48;
  v51[1] = v53;
  sub_1E5FAB460(v41, v50 + ((v49 + v36 + 80) & ~v36), &qword_1ED073950, &unk_1E65F4360);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1E62BC0F4;
  *(v54 + 24) = v50;

  v55 = v68;
  v56 = v84;
  v57 = v82;
  v58 = sub_1E65E4F08();

  (*(v80 + 8))(v56, v81);
  (*(v78 + 8))(v55, v57);
  return v58;
}

uint64_t sub_1E6493B4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v22 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E5FAB460(v12, v10, &unk_1ED077CC0, &unk_1E65F2610);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v15 = *v10;
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v15 = *v10;
      v16 = sub_1E65D76A8();
      (*(*(v16 - 8) + 8))(&v10[v14], v16);
      goto LABEL_8;
    }

    sub_1E5DFE50C(v10, &unk_1ED077CC0, &unk_1E65F2610);
  }

  v15 = 0;
LABEL_8:
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E5FAB460(v7, v4, &unk_1ED077CC0, &unk_1E65F2610);
  v17 = swift_getEnumCaseMultiPayload();
  if (v17 > 2)
  {
    goto LABEL_16;
  }

  if (v17)
  {
    if (v17 == 1)
    {
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v19 = *v4;
      v20 = sub_1E65D76A8();
      (*(*(v20 - 8) + 8))(&v4[v18], v20);
      if (v15)
      {
        return v19 ^ 1u;
      }

      return 0;
    }

    sub_1E5DFE50C(v4, &unk_1ED077CC0, &unk_1E65F2610);
LABEL_16:
    v19 = 0;
    result = 0;
    if (!v15)
    {
      return result;
    }

    return v19 ^ 1u;
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  return v19 ^ 1u;
}

uint64_t sub_1E6493E10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v22 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E5FAB460(v12, v10, &unk_1ED077CC0, &unk_1E65F2610);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v15 = *v10;
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v15 = *v10;
      v16 = sub_1E65D76A8();
      (*(*(v16 - 8) + 8))(&v10[v14], v16);
      goto LABEL_8;
    }

    sub_1E5DFE50C(v10, &unk_1ED077CC0, &unk_1E65F2610);
  }

  v15 = 0;
LABEL_8:
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E5FAB460(v7, v4, &unk_1ED077CC0, &unk_1E65F2610);
  v17 = swift_getEnumCaseMultiPayload();
  if (v17 > 2)
  {
LABEL_14:
    v19 = 0;
    return v15 & v19;
  }

  if (!v17)
  {
    v19 = *v4;
    return v15 & v19;
  }

  if (v17 != 1)
  {
    sub_1E5DFE50C(v4, &unk_1ED077CC0, &unk_1E65F2610);
    goto LABEL_14;
  }

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
  v19 = *v4;
  v20 = sub_1E65D76A8();
  (*(*(v20 - 8) + 8))(&v4[v18], v20);
  return v15 & v19;
}

uint64_t sub_1E64940C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A300, &qword_1E6605EE8) - 8) + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = *a1;
  *(v2 + 160) = *(a1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E649417C, 0, 0);
}

uint64_t sub_1E649417C()
{
  v1 = v0[7];
  v0[12] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  v0[13] = sub_1E65E6058();
  v0[14] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E649422C, v3, v2);
}

uint64_t sub_1E649422C()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[8];

  sub_1E5E20198(22, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  v0[15] = v4;
  v5 = swift_dynamicCast();
  v6 = *(v4 - 8);
  v0[16] = v6;
  v7 = *(v6 + 56);
  if (v5)
  {
    v8 = v6;
    v10 = v0[8];
    v9 = v0[9];
    v7(v10, 0, 1, v4);
    (*(v8 + 32))(v9, v10, v4);
    v11 = 0;
  }

  else
  {
    v12 = v0[8];
    v11 = 1;
    v7(v12, 1, 1, v4);
    sub_1E5DFE50C(v12, &qword_1ED07A300, &qword_1E6605EE8);
  }

  v7(v0[9], v11, 1, v4);

  return MEMORY[0x1EEE6DFA0](sub_1E64943D8, 0, 0);
}

uint64_t sub_1E64943D8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  *(v0 + 136) = v1;
  if ((*(v1 + 48))(v2, 1) != 1)
  {
    v8 = *(v0 + 104);
    *(v0 + 144) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v9;
    v7 = sub_1E649456C;
    goto LABEL_5;
  }

  sub_1E5DFE50C(v2, &qword_1ED07A300, &qword_1E6605EE8);
  if (*(v0 + 160) == 2)
  {
    v3 = *(v0 + 104);
    *(v0 + 152) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v5;
    v7 = sub_1E64946DC;
LABEL_5:

    return MEMORY[0x1EEE6DFA0](v7, v4, v6);
  }

  v11 = *(v0 + 64);
  v10 = *(v0 + 72);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1E649456C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[9];

  sub_1E65E4E28();
  (*(v2 + 8))(v4, v3);

  return MEMORY[0x1EEE6DFA0](sub_1E6494604, 0, 0);
}

uint64_t sub_1E6494604()
{
  if (*(v0 + 160) == 2)
  {
    v1 = *(v0 + 104);
    *(v0 + 152) = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E64946DC, v3, v2);
  }

  else
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1E64946DC()
{
  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];

  sub_1E6461AA0(v4, v2);
  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E6494768(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v4 = *(*(sub_1E65D76A8() - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 32) = *a1;
  *(v2 + 80) = *(a1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E649480C, 0, 0);
}

uint64_t sub_1E649480C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 44);
  v5 = BookmarkService.insertBookmarks.getter();
  *(v0 + 48) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073228, &qword_1E65ED080);
  v7 = sub_1E65DADD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E65EA670;
  v12 = qword_1E6605FB0[v1];
  v13 = *(v0 + 24);
  sub_1E600B01C(*(v0 + 32), *(v0 + 40), *(v0 + 80));
  sub_1E65D7698();
  sub_1E65DAD98();
  v14 = sub_1E5F9B3B0(v11);
  *(v0 + 56) = v14;
  swift_setDeallocating();
  (*(v8 + 8))(v11 + v10, v7);
  swift_deallocClassInstance();
  v18 = (v5 + *v5);
  v15 = v5[1];
  v16 = swift_task_alloc();
  *(v0 + 64) = v16;
  *v16 = v0;
  v16[1] = sub_1E6494A6C;

  return v18(v14);
}

uint64_t sub_1E6494A6C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6494BC0, 0, 0);
  }

  else
  {
    v4 = v3[6];
    v5 = v3[7];
    v6 = v3[3];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1E6494BC0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];

  v4 = v0[1];
  v5 = v0[9];

  return v4();
}

uint64_t sub_1E6494C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6494CD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB0, &qword_1E65EC480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v12 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  sub_1E65DE488();
  v6 = v12[1];
  v7 = v12[2];
  v8 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A2F8, &qword_1E6605ED8);
  sub_1E65DE7E8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  v10 = a1 + *(type metadata accessor for AppState() + 192) + 64;
  return sub_1E64076CC(v5, v6, v7, v8);
}

unint64_t sub_1E6494E24()
{
  result = qword_1ED077D68;
  if (!qword_1ED077D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077D50, &unk_1E65FAAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077D68);
  }

  return result;
}

uint64_t sub_1E6494E88(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  HIDWORD(v22) = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  sub_1E65DE488();
  v11 = v23;
  v10 = v24;
  v12 = sub_1E65E60A8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = *a4;
  v14 = a4[3];
  v15 = a4[5];
  v16 = a4[7];
  v17 = a4[9];
  v18 = swift_allocObject();
  v19 = *a4;
  *(v18 + 72) = *(a4 + 1);
  v20 = *(a4 + 3);
  *(v18 + 88) = *(a4 + 2);
  *(v18 + 104) = v20;
  *(v18 + 120) = *(a4 + 4);
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = BYTE4(v22);
  *(v18 + 40) = v11;
  *(v18 + 48) = v10;
  *(v18 + 56) = v19;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v9, &unk_1E6605ED0, v18);
}

uint64_t sub_1E6495040(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E61FAD2C(a1, v4, v5, v8, v6, v7, v1 + 56);
}

uint64_t sub_1E6495114(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E64940C0(a1, v1 + v5);
}

uint64_t sub_1E64951EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65D76F8() - 8);
  return sub_1E608C678(a1, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a2);
}

uint64_t sub_1E64952D0(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360) - 8) + 80);

  return sub_1E6494CD4(a1);
}

uint64_t objectdestroy_25Tm_1()
{
  v129 = type metadata accessor for AppComposer();
  v127 = *(*(v129 - 1) + 80);
  v1 = (v127 + 16) & ~v127;
  v124 = (*(*(v129 - 1) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360) - 8);
  v126 = *(v2 + 80);
  v125 = *(v2 + 64);
  v128 = v0;
  v121 = v0 + v1;
  v3 = *(v0 + v1);

  v4 = (v0 + v1 + v129[5]);
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v123 = type metadata accessor for AccountService();
  v122 = *(v123[-1].Description + 1);
  v122(&v4[v7], v123);
  v8 = v6[7];
  v120 = type metadata accessor for AppStateService();
  v119 = *(v120[-1].Description + 1);
  v119(&v4[v8], v120);
  v9 = v6[8];
  v118 = type metadata accessor for ArchivedSessionService();
  v117 = *(v118[-1].Description + 1);
  v117(&v4[v9], v118);
  v10 = v6[9];
  v116 = type metadata accessor for AssetService();
  v115 = *(v116[-1].Description + 1);
  v115(&v4[v10], v116);
  v11 = v6[10];
  v114 = type metadata accessor for AwardsService();
  v113 = *(v114[-1].Description + 1);
  v113(&v4[v11], v114);
  v12 = v6[11];
  v112 = type metadata accessor for BookmarkService();
  v111 = *(v112[-1].Description + 1);
  v111(&v4[v12], v112);
  v13 = v6[12];
  v110 = type metadata accessor for CatalogService();
  v109 = *(v110[-1].Description + 1);
  v109(&v4[v13], v110);
  v14 = v6[13];
  v108 = type metadata accessor for ConfigurationService();
  v107 = *(v108[-1].Description + 1);
  v107(&v4[v14], v108);
  v15 = v6[14];
  v106 = type metadata accessor for ContentAvailabilityService();
  v105 = *(v106[-1].Description + 1);
  v105(&v4[v15], v106);
  v16 = v6[15];
  v104 = type metadata accessor for EngagementService();
  v103 = *(v104[-1].Description + 1);
  v103(&v4[v16], v104);
  v17 = v6[16];
  v102 = type metadata accessor for HealthDataService();
  v101 = *(v102[-1].Description + 1);
  v101(&v4[v17], v102);
  v18 = v6[17];
  v100 = type metadata accessor for InteropService();
  v99 = *(v100[-1].Description + 1);
  v99(&v4[v18], v100);
  v19 = v6[18];
  v98 = type metadata accessor for LocalizationService();
  v97 = *(v98[-1].Description + 1);
  v97(&v4[v19], v98);
  v20 = v6[19];
  v96 = type metadata accessor for MarketingService();
  v95 = *(v96[-1].Description + 1);
  v95(&v4[v20], v96);
  v21 = v6[20];
  v94 = type metadata accessor for MetricService();
  v93 = *(v94[-1].Description + 1);
  v93(&v4[v21], v94);
  v22 = v6[21];
  v92 = type metadata accessor for PersonalizationService();
  v91 = *(v92[-1].Description + 1);
  v91(&v4[v22], v92);
  v23 = v6[22];
  v90 = type metadata accessor for PlayerService();
  v89 = *(v90[-1].Description + 1);
  v89(&v4[v23], v90);
  v24 = v6[23];
  v88 = type metadata accessor for PrivacyPreferenceService();
  v87 = *(v88[-1].Description + 1);
  v87(&v4[v24], v88);
  v25 = v6[24];
  v86 = type metadata accessor for RecommendationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v4[v25], v86);
  v26 = v6[25];
  v84 = type metadata accessor for RemoteBrowsingService();
  v83 = *(v84[-1].Description + 1);
  v83(&v4[v26], v84);
  v27 = v6[26];
  v82 = type metadata accessor for SearchService();
  v81 = *(v82[-1].Description + 1);
  v81(&v4[v27], v82);
  v28 = v6[27];
  v80 = type metadata accessor for ServiceSubscriptionService();
  v79 = *(v80[-1].Description + 1);
  v79(&v4[v28], v80);
  v29 = v6[28];
  v73 = type metadata accessor for SessionService();
  v78 = *(v73[-1].Description + 1);
  v78(&v4[v29], v73);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v77 = *(v31[-1].Description + 1);
  v77(&v4[v30], v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v76 = *(v33[-1].Description + 1);
  v76(&v4[v32], v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v75 = *(v35[-1].Description + 1);
  v75(&v4[v34], v35);
  v36 = &v4[v6[32]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 3);

  v39 = *(v36 + 5);

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v74 = *(QueueService[-1].Description + 1);
  v74(&v4[v40], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v4[v6[34]]);
  v42 = *&v4[v6[35]];

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v72 = *(v44[-1].Description + 1);
  v72(&v4[v43], v44);
  v45 = *(v121 + v129[6]);

  v46 = (v121 + v129[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(type metadata accessor for AppDataItemResolver() + 24);
  v50 = *v49;
  swift_unknownObjectRelease();
  v122(&v49[v6[6]], v123);
  v119(&v49[v6[7]], v120);
  v117(&v49[v6[8]], v118);
  v115(&v49[v6[9]], v116);
  v113(&v49[v6[10]], v114);
  v111(&v49[v6[11]], v112);
  v109(&v49[v6[12]], v110);
  v107(&v49[v6[13]], v108);
  v105(&v49[v6[14]], v106);
  v103(&v49[v6[15]], v104);
  v101(&v49[v6[16]], v102);
  v99(&v49[v6[17]], v100);
  v97(&v49[v6[18]], v98);
  v95(&v49[v6[19]], v96);
  v93(&v49[v6[20]], v94);
  v91(&v49[v6[21]], v92);
  v89(&v49[v6[22]], v90);
  v87(&v49[v6[23]], v88);
  v85(&v49[v6[24]], v86);
  v83(&v49[v6[25]], v84);
  v81(&v49[v6[26]], v82);
  v79(&v49[v6[27]], v80);
  v78(&v49[v6[28]], v73);
  v77(&v49[v6[29]], v31);
  v76(&v49[v6[30]], v33);
  v75(&v49[v6[31]], v35);
  v51 = &v49[v6[32]];
  v52 = *(v51 + 1);

  v53 = *(v51 + 3);

  v54 = *(v51 + 5);

  v74(&v49[v6[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v49[v6[34]]);
  v55 = *&v49[v6[35]];

  v72(&v49[v6[36]], v44);
  v56 = *(v121 + v129[8]);
  swift_unknownObjectRelease();
  if (*(v121 + v129[9] + 8) >= 0xCuLL)
  {
  }

  v57 = (v121 + v129[10]);
  if (v57[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v58 = *(v128 + v124);
  swift_unknownObjectRelease();
  v59 = *(v128 + v124 + 24);

  v60 = *(v128 + v124 + 40);

  v61 = *(v128 + v124 + 56);

  v62 = *(v128 + v124 + 72);

  v63 = v128 + ((v124 + v126 + 80) & ~v126);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v63, *(v63 + 8), *(v63 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v65 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D60, &unk_1E65F72D0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v66 = swift_getEnumCaseMultiPayload();
    if (v66 == 2)
    {
      v69 = *(v65 + 8);

      v70 = *(v65 + 32);
    }

    else if (v66 == 1)
    {
      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v68 = sub_1E65D76A8();
      (*(*(v68 - 8) + 8))(v65 + v67, v68);
    }
  }

  return swift_deallocObject();
}

void *sub_1E64961CC(char *a1, uint64_t a2)
{
  v43 = a1;
  v3 = sub_1E65D7968();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E65E0E48();
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758F8, &qword_1E65F20A8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v42 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  v19 = *(a2 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v37 = &v37 - v17;
    v38 = v7;
    v39 = v4;
    v41 = v3;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1E601CF48(0, v19, 0);
    v20 = v47;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v23 = *(v21 + 64);
    v40 = a2;
    v24 = a2 + ((v23 + 32) & ~v23);
    v44 = *(v21 + 56);
    v45 = v22;
    v25 = (v21 - 8);
    do
    {
      v26 = v46;
      v27 = v21;
      v45(v11, v24, v46);
      v28 = sub_1E65E0E38();
      v30 = v29;
      v31 = sub_1E61442E8(v28, v29);
      sub_1E6496D88(v28, v30);
      v16 = (*v25)(v11, v26);
      v47 = v20;
      v33 = *(v20 + 16);
      v32 = *(v20 + 24);
      if (v33 >= v32 >> 1)
      {
        v16 = sub_1E601CF48((v32 > 1), v33 + 1, 1);
        v20 = v47;
      }

      *(v20 + 16) = v33 + 1;
      *(v20 + 8 * v33 + 32) = v31;
      v24 += v44;
      --v19;
      v21 = v27;
    }

    while (v19);
    a2 = v40;
    v3 = v41;
    v7 = v38;
    v4 = v39;
    v18 = v37;
  }

  MEMORY[0x1EEE9AC00](v16);
  *(&v37 - 2) = v43;
  sub_1E612C4B4(sub_1E6496D9C, v20, v18);

  v34 = v42;
  sub_1E5DFD1CC(v18, v42, &qword_1ED0758F8, &qword_1E65F20A8);
  if ((*(v4 + 48))(v34, 1, v3) == 1)
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v4 + 32))(v7, v34, v3);

    v35 = sub_1E64965BC(v7, a2);

    (*(v4 + 8))(v7, v3);
  }

  sub_1E5DFE50C(v18, &qword_1ED0758F8, &qword_1E65F20A8);
  return v35;
}

void *sub_1E64965BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E65D8F28();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v43 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65D72D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v38 - v19;
  v44 = sub_1E65D86A8();
  v42 = *(v44 - 8);
  v21 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v39 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v24 = sub_1E65D7958();
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = v24;
    if (v24 < *(a2 + 16))
    {
      v26 = *(sub_1E65E0E48() - 8);
      v27 = a2 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25;
      v28 = sub_1E65D7938();
      v29 = sub_1E6496AC8(v28);
      sub_1E5FAA0F0(v29);
      v30 = sub_1E65E0E18();
      v38[1] = v31;
      v38[2] = v30;
      _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
      v38[0] = v32;
      sub_1E65D7958();
      sub_1E65E0E28();
      sub_1E5DFD1CC(v20, v18, &qword_1ED072D90, &qword_1E66040F0);
      if ((*(v7 + 48))(v18, 1, v6) != 1)
      {
        (*(v7 + 32))(v13, v18, v6);
        (*(v7 + 16))(v11, v13, v6);
        sub_1E65E5D58();
        (*(v7 + 8))(v13, v6);
      }

      sub_1E5DFE50C(v20, &qword_1ED072D90, &qword_1E66040F0);
      (*(v40 + 104))(v43, *MEMORY[0x1E69CBCB0], v41);
      sub_1E6427498(MEMORY[0x1E69E7CC0]);
      v33 = v39;
      sub_1E65D8678();
      v23 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1E64F6A68(0, v23[2] + 1, 1, v23);
      }

      v34 = v42;
      v36 = v23[2];
      v35 = v23[3];
      if (v36 >= v35 >> 1)
      {
        v23 = sub_1E64F6A68(v35 > 1, v36 + 1, 1, v23);
      }

      v23[2] = v36 + 1;
      (*(v34 + 32))(v23 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v36, v33);
    }
  }

  return v23;
}

uint64_t sub_1E6496AC8(uint64_t a1)
{
  v2 = sub_1E65D8F28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E0E38();
  v9 = v8;
  v10 = sub_1E61453F8(v7, v8);
  sub_1E6496D88(v7, v9);
  if (a1 < 0 || *(v10 + 16) <= a1)
  {

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1E5DF650C(v10 + 40 * a1 + 32, &v22);

    sub_1E5DF599C(&v22, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    v11 = *(sub_1E65D86A8() - 8);
    v12 = *(v11 + 72);
    v21[3] = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1E65EA670;
    sub_1E5DF650C(v25, &v22);
    v14 = v23;
    v15 = v24;
    __swift_project_boxed_opaque_existential_1(&v22, v23);
    v16 = (*(v15 + 8))(v14, v15);
    v21[1] = v17;
    v21[2] = v16;
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v19 = v23;
    v18 = v24;
    __swift_project_boxed_opaque_existential_1(&v22, v23);
    (*(v18 + 16))(v19, v18);
    (*(v3 + 104))(v6, *MEMORY[0x1E69CBCC8], v2);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    __swift_destroy_boxed_opaque_existential_1(&v22);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return v13;
  }
}

uint64_t sub_1E6496D88(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 7u)
  {
  }

  return result;
}

uint64_t sub_1E6496DCC(uint64_t a1)
{
  v3 = type metadata accessor for ItemContext();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v31 = v6;
  v28 = v1;
  v36 = MEMORY[0x1E69E7CC0];
  sub_1E601BFA8(0, v7, 0);
  v8 = v36;
  v9 = -1 << *(a1 + 32);
  v35 = a1 + 56;
  result = sub_1E65E6748();
  v11 = result;
  v12 = 0;
  v29 = a1 + 64;
  v30 = v7;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v35 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v34 = *(a1 + 36);
    v15 = (*(a1 + 48) + 16 * v11);
    v16 = *v15;
    v17 = v15[1];
    swift_bridgeObjectRetain_n();
    v18 = v31;
    sub_1E65E3538();
    type metadata accessor for ProgramDetailItemContext();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();

    v36 = v8;
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1E601BFA8(v19 > 1, v20 + 1, 1);
      v8 = v36;
    }

    *(v8 + 16) = v20 + 1;
    result = sub_1E5E1EA08(v18, v8 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v20, type metadata accessor for ItemContext);
    v13 = 1 << *(a1 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v21 = *(v35 + 8 * v14);
    if ((v21 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v11 & 0x3F));
    if (v22)
    {
      v13 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v14 << 6;
      v24 = v14 + 1;
      v25 = (v29 + 8 * v14);
      while (v24 < (v13 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1E5F87098(v11, v34, 0);
          v13 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v11, v34, 0);
    }

LABEL_4:
    ++v12;
    v11 = v13;
    if (v12 == v30)
    {
      return v8;
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

uint64_t sub_1E64970E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v145 = a3;
  v135 = a2;
  v147 = a1;
  v129 = a5;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771B0, &qword_1E65FA6D0);
  v125 = *(v124 - 8);
  v7 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v121 = v105 - v8;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A40, &qword_1E65F9748);
  v9 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v122 = v105 - v10;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077100, &unk_1E65FA500);
  v11 = *(*(v128 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v128);
  v123 = v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v126 = v105 - v14;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A308, &qword_1E6605FD8);
  v119 = *(v120 - 8);
  v15 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v117 = v105 - v16;
  v17 = sub_1E65E2E98();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v114 = v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1E65E2F78();
  v118 = *(v116 - 8);
  v20 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v138 = v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AppComposer();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22 - 8);
  v112 = v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v111 = v105 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v109 = v105 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v106 = v105 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v133 = v105 - v34;
  v36 = v35;
  v105[1] = v35;
  MEMORY[0x1EEE9AC00](v33);
  v38 = v105 - v37;
  v139 = type metadata accessor for AppComposer;
  sub_1E5E1DD0C(v5, v105 - v37, type metadata accessor for AppComposer);
  v136 = *a4;
  v137 = a4[3];
  v134 = a4[5];
  v132 = a4[7];
  v144 = a4[9];
  v39 = *(v23 + 80);
  v146 = ((v39 + 16) & ~v39) + v36;
  v141 = (v39 + 16) & ~v39;
  v40 = (v146 + 7) & 0xFFFFFFFFFFFFFFF8;
  v113 = v40;
  v41 = swift_allocObject();
  sub_1E5E1EA08(v38, v41 + ((v39 + 16) & ~v39), type metadata accessor for AppComposer);
  v42 = (v41 + v40);
  v131 = a4;
  v43 = *(a4 + 3);
  v42[2] = *(a4 + 2);
  v42[3] = v43;
  v42[4] = *(a4 + 4);
  v44 = *(a4 + 1);
  *v42 = *a4;
  v42[1] = v44;
  swift_unknownObjectRetain();

  v45 = v148;
  v140 = sub_1E6498460(v147, v135, v145, sub_1E64983B4, v41);

  v115 = *v45;
  v130 = v38;
  v46 = v139;
  sub_1E5E1DD0C(v45, v38, v139);
  v110 = swift_allocObject();
  v47 = v141;
  sub_1E5E1EA08(v38, v110 + v141, type metadata accessor for AppComposer);
  v48 = v133;
  v49 = v46;
  sub_1E5E1DD0C(v45, v133, v46);
  v108 = swift_allocObject();
  sub_1E5E1EA08(v48, v108 + v47, type metadata accessor for AppComposer);
  v50 = v45;
  v51 = v45;
  v52 = v106;
  sub_1E5E1DD0C(v51, v106, v46);
  v107 = swift_allocObject();
  sub_1E5E1EA08(v52, v107 + v47, type metadata accessor for AppComposer);
  v53 = v50;
  v54 = v50;
  v55 = v109;
  sub_1E5E1DD0C(v53, v109, v46);
  v106 = swift_allocObject();
  v56 = v47;
  sub_1E5E1EA08(v55, v106 + v47, type metadata accessor for AppComposer);
  v57 = v145;
  sub_1E5DF650C(v145, &v150);
  v58 = swift_allocObject();
  sub_1E5DF599C(&v150, v58 + 16);
  sub_1E5DF650C(v57, &v149);
  v59 = v111;
  sub_1E5E1DD0C(v54, v111, v49);
  v143 = v39;
  v60 = swift_allocObject();
  sub_1E5DF599C(&v149, v60 + 16);
  v142 = type metadata accessor for AppComposer;
  sub_1E5E1EA08(v59, v60 + ((v39 + 56) & ~v39), type metadata accessor for AppComposer);
  v61 = v112;
  sub_1E5E1DD0C(v54, v112, v49);
  v62 = swift_allocObject();
  sub_1E5E1EA08(v61, v62 + v56, type metadata accessor for AppComposer);

  sub_1E65E2E88();
  sub_1E65E2F68();
  v63 = swift_allocObject();
  v64 = v147;
  v65 = v135;
  *(v63 + 16) = v147;
  *(v63 + 24) = v65;
  v66 = swift_allocObject();
  *(v66 + 16) = v64;
  *(v66 + 24) = v65;
  type metadata accessor for AppFeature();
  sub_1E64A33B8(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E64A33B8(&qword_1ED07A310, MEMORY[0x1E699EAB8]);
  swift_bridgeObjectRetain_n();
  v67 = v117;
  v68 = v116;
  sub_1E65E4DE8();
  v69 = v130;
  v70 = v139;
  sub_1E5E1DD0C(v148, v130, v139);
  v71 = v113;
  v72 = (v113 + 87) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  sub_1E5E1EA08(v69, v73 + v141, v142);
  v74 = (v73 + v71);
  v75 = v131;
  v76 = v131[3];
  v74[2] = v131[2];
  v74[3] = v76;
  v74[4] = v75[4];
  v77 = v75[1];
  *v74 = *v75;
  v74[1] = v77;
  v78 = (v73 + v72);
  *v78 = v147;
  v78[1] = v65;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v79 = swift_allocObject();
  *(v79 + 16) = sub_1E649CCBC;
  *(v79 + 24) = v73;

  v80 = v138;
  v147 = sub_1E65E4F08();

  (*(v119 + 8))(v67, v120);
  (*(v118 + 8))(v80, v68);
  v81 = v148;
  sub_1E5E1DD0C(v148, v69, v70);
  sub_1E5DF650C(v145, &v150);
  v82 = v71;
  v83 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
  v84 = swift_allocObject();
  v85 = v141;
  v86 = v69;
  v87 = v142;
  sub_1E5E1EA08(v86, v84 + v141, v142);
  *(v84 + v82) = v140;
  sub_1E5DF599C(&v150, v84 + v83);
  v88 = (v84 + ((v83 + 47) & 0xFFFFFFFFFFFFFFF8));
  v89 = v131;
  v90 = v131[3];
  v88[2] = v131[2];
  v88[3] = v90;
  v88[4] = *(v89 + 4);
  v91 = *(v89 + 1);
  *v88 = *v89;
  v88[1] = v91;
  v92 = v81;
  v93 = v133;
  sub_1E5E1DD0C(v92, v133, v70);
  v94 = swift_allocObject();
  sub_1E5E1EA08(v93, v94 + v85, v87);
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  sub_1E5FEB2FC();
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
  v95 = v121;
  sub_1E65E2EC8();
  v96 = sub_1E5FED46C(&unk_1ED077A50, &qword_1ED0771B0, &qword_1E65FA6D0);
  v97 = v122;
  v98 = v89;
  v99 = v124;
  sub_1E630FCD8(v98, v124, v96, v122);
  (*(v125 + 8))(v95, v99);
  v100 = v130;
  sub_1E5E1DD0C(v148, v130, v139);
  v101 = swift_allocObject();
  sub_1E5E1EA08(v100, v101 + v85, v142);
  sub_1E626FC24();
  v102 = v123;
  sub_1E6259D5C(sub_1E5FF0278, v101, v127);

  sub_1E5DFE50C(v97, &unk_1ED077A40, &qword_1E65F9748);
  sub_1E626FB98();
  v103 = v126;
  sub_1E5FEE4C8(v102);
  sub_1E5DFE50C(v102, &qword_1ED077100, &unk_1E65FA500);
  sub_1E5FEE4C8(v103);
  return sub_1E5DFE50C(v103, &qword_1ED077100, &unk_1E65FA500);
}

uint64_t sub_1E649805C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v30 - v17;
  v33 = v30 - v17;
  v32 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  v19 = sub_1E65E60A8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1E5DFD1CC(a1, v14, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 16))(v10, v34, v6);
  v20 = *(a4 + 24);
  v30[0] = *a4;
  v30[1] = v20;
  v21 = *(a4 + 56);
  v30[2] = *(a4 + 40);
  v30[3] = v21;
  v34 = *(a4 + 72);
  v22 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v23 = (v12 + *(v7 + 80) + v22) & ~*(v7 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1E5FAB460(v14, v25 + v22, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 32))(v25 + v23, v10, v6);
  *(v25 + v24) = v32;
  v26 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = *(a4 + 64);
  v26[3] = *(a4 + 48);
  v26[4] = v27;
  v28 = *(a4 + 32);
  v26[1] = *(a4 + 16);
  v26[2] = v28;
  *v26 = *a4;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v33, &unk_1E65EC0C8, v25);
}

uint64_t sub_1E64983B4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E649805C(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E6498460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a5;
  v62 = a4;
  v75 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v65 = *(v66 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v61 = v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v55 = v49 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v64 = *(v60 - 8);
  v14 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = v49 - v15;
  v16 = type metadata accessor for AppComposer();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8);
  v57 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v77 = v49 - v22;
  v24 = v23;
  v54 = v23;
  MEMORY[0x1EEE9AC00](v21);
  v26 = v49 - v25;
  *&v82 = 0;
  *(&v82 + 1) = 0xE000000000000000;
  sub_1E65E68A8();

  *&v82 = 0xD000000000000012;
  *(&v82 + 1) = 0x80000001E66180F0;
  v49[10] = a2;
  MEMORY[0x1E694D7C0](a1, a2);
  v56 = v82;
  sub_1E5DF650C(a3, &v82);
  v76 = swift_allocObject();
  sub_1E5DF599C(&v82, v76 + 16);
  v27 = v5;
  v52 = type metadata accessor for AppComposer;
  sub_1E5E1DD0C(v5, v26, type metadata accessor for AppComposer);
  v28 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v51 = *(v17 + 80);
  v29 = swift_allocObject();
  v78 = v29;
  v53 = type metadata accessor for AppComposer;
  sub_1E5E1EA08(v26, v29 + v28, type metadata accessor for AppComposer);
  v30 = (v29 + ((v28 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = v75;
  v30[1] = a2;
  v31 = v27;
  v50 = v27;
  v32 = v27;
  v33 = v77;
  sub_1E5E1DD0C(v32, v77, type metadata accessor for AppComposer);
  v75 = swift_allocObject();
  sub_1E5E1EA08(v33, v75 + v28, type metadata accessor for AppComposer);
  v58 = *v31;
  v77 = type metadata accessor for ActionButtonDescriptor(0);
  v74 = type metadata accessor for ArtworkDescriptor();
  v73 = type metadata accessor for ContextMenu(0);
  v72 = type metadata accessor for ItemContext();
  v49[9] = type metadata accessor for ItemMetrics();
  v71 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v49[8] = type metadata accessor for SectionMetrics();
  v70 = type metadata accessor for ViewDescriptor();
  v69 = sub_1E64A33B8(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v68 = sub_1E64A33B8(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v67 = sub_1E64A33B8(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v49[7] = sub_1E64A33B8(&qword_1EE2DB720, type metadata accessor for ItemContext);
  v49[6] = sub_1E64A33B8(&qword_1EE2DB738, type metadata accessor for ItemContext);
  v49[5] = sub_1E64A33B8(&qword_1EE2DB730, type metadata accessor for ItemContext);
  v49[4] = sub_1E64A33B8(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  v49[3] = sub_1E64A33B8(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  v49[2] = sub_1E64A33B8(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  v49[1] = sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E64A33B8(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);

  sub_1E65DC178();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v35 = sub_1E65DC168();
  v80 = v34;
  v81 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70);
  v79 = v35;
  v36 = v59;
  sub_1E65DC248();
  v37 = v57;
  sub_1E5E1DD0C(v50, v57, v52);
  v38 = (v51 + 32) & ~v51;
  v39 = (v54 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v56;
  *(v40 + 16) = v56;
  sub_1E5E1EA08(v37, v40 + v38, v53);
  v42 = (v40 + v39);
  *v42 = sub_1E5F8AA74;
  v42[1] = 0;
  *(swift_allocObject() + 16) = v41;
  type metadata accessor for AppFeature();
  sub_1E64A33B8(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98);

  v43 = v61;
  v44 = v60;
  sub_1E65E4DE8();
  v45 = swift_allocObject();
  *(v45 + 16) = v62;
  *(v45 + 24) = v63;

  sub_1E65E4CC8();
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1E5FE9CE8;
  *(v46 + 24) = v45;

  v47 = sub_1E65E4F08();

  (*(v65 + 8))(v43, v66);
  (*(v64 + 8))(v36, v44);
  return v47;
}

uint64_t sub_1E6499064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_1E65D76A8() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_1E65DADD8();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6499154, 0, 0);
}

uint64_t sub_1E6499154()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  sub_1E65D7698();
  sub_1E65DAD98();
  v8 = v6 + *(type metadata accessor for AppComposer() + 20);
  v9 = v8 + *(type metadata accessor for AppEnvironment() + 44);
  v10 = BookmarkService.insertBookmarks.getter();
  v0[9] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073228, &qword_1E65ED080);
  v12 = *(v2 + 72);
  v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E65EA670;
  (*(v2 + 16))(v14 + v13, v1, v3);
  v15 = sub_1E5F9B3B0(v14);
  v0[10] = v15;
  swift_setDeallocating();
  v16 = *(v2 + 8);
  v0[11] = v16;
  v0[12] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v14 + v13, v3);
  swift_deallocClassInstance();
  v20 = (v10 + *v10);
  v17 = v10[1];
  v18 = swift_task_alloc();
  v0[13] = v18;
  *v18 = v0;
  v18[1] = sub_1E6499370;

  return v20(v15);
}

uint64_t sub_1E6499370()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {

    v7 = sub_1E6499554;
  }

  else
  {

    v7 = sub_1E64994D4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E64994D4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  (*(v0 + 88))(*(v0 + 64), *(v0 + 48));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E6499554()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  (*(v0 + 88))(*(v0 + 64), *(v0 + 48));

  v3 = *(v0 + 8);
  v4 = *(v0 + 112);

  return v3();
}

uint64_t sub_1E64995D4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6499064(a1, a2, v2 + v7);
}

uint64_t sub_1E64996B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65D7848();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_1E65D94D8();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64997D4, 0, 0);
}

uint64_t sub_1E64997D4()
{
  v1 = *(v0 + 40);
  v2 = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 128) = v2;
  v3 = v1 + v2;
  v4 = type metadata accessor for AppEnvironment();
  *(v0 + 96) = v4;
  v5 = v3 + *(v4 + 48);
  v6 = CatalogService.fetchRemoteCatalogProgramDetail.getter();
  *(v0 + 104) = v7;
  v14 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_1E64998FC;
  v10 = *(v0 + 88);
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);

  return v14(v10, v11, v12);
}

uint64_t sub_1E64998FC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1E5F9C8B4;
  }

  else
  {
    v4 = sub_1E6499A2C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6499A2C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v12 = *(v0 + 48);
  v13 = *(v0 + 72);
  v7 = *(v0 + 16);
  v8 = v6 + *(v0 + 128);
  v9 = *v6;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E63BAE10(v5, &v8[*(v2 + 136)], v7);
  (*(v4 + 8))(v5, v12);
  (*(v3 + 8))(v1, v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E6499B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E64996B4(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E6499C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65DADD8();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6499CFC, 0, 0);
}

uint64_t sub_1E6499CFC()
{
  v1 = v0[5];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 44);
  v4 = BookmarkService.queryBookmarksByReferenceTypes.getter();
  v0[9] = v5;
  v6 = sub_1E5F9B84C(&unk_1F5FA8D18);
  v0[10] = v6;
  v10 = (v4 + *v4);
  v7 = v4[1];
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1E6499E38;

  return v10(v6);
}

uint64_t sub_1E6499E38(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v9 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = sub_1E649A1AC;
  }

  else
  {
    v6 = v3[9];
    v7 = v3[10];

    v5 = sub_1E6499F5C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6499F5C()
{
  v1 = v0[12];
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(v0[12] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v31 = v0[7];
  v30 = (v31 + 8);
  v32 = v0[12];

  v10 = 0;
  while (v7)
  {
LABEL_9:
    v13 = v0[3];
    v12 = v0[4];
    (*(v31 + 16))(v0[8], *(v32 + 48) + *(v31 + 72) * (__clz(__rbit64(v7)) | (v10 << 6)), v0[6]);
    v14 = sub_1E65DADA8();
    v16 = v0[8];
    v17 = v0[6];
    if (v14 == v13 && v15 == v12)
    {

      (*v30)(v16, v17);
LABEL_17:
      v24 = v0[12];

      v23 = MEMORY[0x1E699EBA8];
LABEL_18:
      v25 = v0[8];
      v26 = v0[2];
      v27 = *v23;
      v28 = sub_1E65E3298();
      (*(*(v28 - 8) + 104))(v26, v27, v28);

      v29 = v0[1];

      return v29();
    }

    v19 = v0[3];
    v20 = v0[4];
    v7 &= v7 - 1;
    v21 = sub_1E65E6C18();

    result = (*v30)(v16, v17);
    if (v21)
    {
      goto LABEL_17;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      v22 = v0[12];

      v23 = MEMORY[0x1E699EBA0];
      goto LABEL_18;
    }

    v7 = *(v3 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E649A1AC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_1E649A224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6499C38(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E649A318(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E60A9C54(a1, v1 + v5);
}

uint64_t sub_1E649A3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E649A494, 0, 0);
}

uint64_t sub_1E649A494()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = sub_1E65E60A8();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_1E5DF650C(v1, v0 + 16);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  sub_1E5DF599C((v0 + 16), (v6 + 4));
  v6[9] = v4;
  v6[10] = v3;

  sub_1E6059EAC(0, 0, v2, &unk_1E6606088, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E649A5B4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E649A3F4(a1, a2, v2 + 16);
}

uint64_t sub_1E649A65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for RouteSource(0);
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v9 = type metadata accessor for RouteDestination();
  v6[7] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E649A724, 0, 0);
}

uint64_t sub_1E649A724()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  v9 = v7[3];
  v8 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v9);
  swift_storeEnumTagMultiPayload();
  *v1 = v6;
  v1[1] = v5;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5E1DD0C(v3, v1 + *(v2 + 20), type metadata accessor for RouteSource);

  sub_1E64A3400(v3, type metadata accessor for RouteSource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 88));
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_1E649A8A0;
  v11 = *(v0 + 64);

  return RoutingContext.appendDestination(_:priority:)(v11, (v0 + 88), v9, v8);
}

uint64_t sub_1E649A8A0()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[10] = v0;

  sub_1E64A3400(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6354FAC, 0, 0);
  }

  else
  {
    v5 = v4[8];
    v6 = v4[6];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_1E649AA28(uint64_t a1)
{
  v2 = sub_1E65D74E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_1E65E60A8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v3 + 32))(v11 + v10, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_1E64B80F8(0, 0, v8, &unk_1E6606078, v11);
}

uint64_t sub_1E649AC18()
{
  v0[3] = objc_opt_self();
  v0[4] = sub_1E65E6058();
  v0[5] = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E649ACC0, v2, v1);
}

uint64_t sub_1E649ACC0()
{
  v1 = v0[5];
  v2 = v0[3];

  v0[6] = [v2 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E649AD48, 0, 0);
}

uint64_t sub_1E649AD48()
{
  v1 = v0[4];
  v2 = v0[2];
  v0[7] = sub_1E65D7448();
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E64A33B8(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey);
  v0[8] = sub_1E65E5AF8();

  v0[9] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E649AE60, v4, v3);
}

uint64_t sub_1E649AE60()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  [v4 openURL:v3 options:v2 completionHandler:0];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E649AEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v10 = type metadata accessor for RouteDestination();
  v5[15] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E649B070, 0, 0);
}

uint64_t sub_1E649B070()
{
  v1 = *(v0 + 128);
  v35 = *(v0 + 104);
  v36 = *(v0 + 96);
  v38 = *(v0 + 88);
  v39 = *(v0 + 120);
  v33 = *(v0 + 112);
  v34 = *(v0 + 80);
  v2 = *(v0 + 72);
  v42 = *(v0 + 64);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v40 = v2[3];
  v41 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
  v6 = (v1 + v5[16]);
  v28 = v5[12];
  v29 = v5[20];
  v7 = (v1 + v5[24]);
  v8 = (v1 + v5[28]);
  v30 = v5[32];
  v37 = v5[36];
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;

  sub_1E65E6848();
  v9 = sub_1E65D74E8();
  v10 = *(v9 - 8);
  v31 = v9;
  v32 = *(v10 + 16);
  v32(v1 + v28, v42, v9);
  v11 = sub_1E65DB3E8();
  *v6 = 0;
  v6[1] = 0;
  (*(*(v11 - 8) + 56))(v1 + v29, 1, 1, v11);
  *v7 = v4;
  v7[1] = v3;
  *v8 = v4;
  v8[1] = v3;
  v12 = *MEMORY[0x1E69CD548];
  v13 = sub_1E65DB5D8();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v1 + v30, v12, v13);
  (*(v14 + 56))(v1 + v30, 0, 1, v13);
  v15 = *MEMORY[0x1E69CBDC0];
  v16 = sub_1E65D8F38();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v33, v15, v16);
  (*(v17 + 56))(v33, 0, 1, v16);
  v18 = (v34 + *(type metadata accessor for AppComposer() + 36));
  v19 = *v18;
  v20 = v18[1];
  v32(v35, v42, v31);
  (*(v10 + 56))(v35, 0, 1, v31);
  v21 = sub_1E65D9908();
  (*(*(v21 - 8) + 56))(v36, 1, 1, v21);
  v22 = sub_1E65D9F88();
  (*(*(v22 - 8) + 56))(v38, 1, 1, v22);
  swift_bridgeObjectRetain_n();
  sub_1E5FA9D34(v19, v20);
  sub_1E65D7A28();
  v23 = sub_1E65D7A38();
  (*(*(v23 - 8) + 56))(v1 + v37, 0, 1, v23);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v24 = *(v39 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v39 + 24)) = MEMORY[0x1E69E7CD0];
  *(v0 + 32) = 2;
  *(v0 + 40) = -64;
  sub_1E600F5B0((v0 + 41));
  v25 = swift_task_alloc();
  *(v0 + 136) = v25;
  *v25 = v0;
  v25[1] = sub_1E649B580;
  v26 = *(v0 + 128);

  return RoutingContext.presentDestination(_:style:priority:)(v26, (v0 + 32), (v0 + 41), v40, v41);
}

uint64_t sub_1E649B580()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *v1;
  v4[18] = v0;

  sub_1E64A3400(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E649B724, 0, 0);
  }

  else
  {
    v5 = v4[16];
    v7 = v4[13];
    v6 = v4[14];
    v8 = v4[11];
    v9 = v4[12];

    v10 = v4[1];

    return v10();
  }
}

uint64_t sub_1E649B724()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];

  v6 = v0[1];
  v7 = v0[18];

  return v6();
}

uint64_t sub_1E649B7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E649AEF4(a1, a2, a3, v3 + 16, v3 + v9);
}

uint64_t sub_1E649B8AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E649B94C, 0, 0);
}

uint64_t sub_1E649B94C()
{
  sub_1E65E6058();
  *(v0 + 48) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E649B9E0, v2, v1);
}

uint64_t sub_1E649B9E0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v6 = sub_1E6496DCC(v5);
  v7 = sub_1E600A878(v6);

  *v2 = v7;
  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  sub_1E5DFE50C(v2, &qword_1ED072828, &qword_1E65EBE20);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E649BAB4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E649B8AC(a1, v1);
}

uint64_t sub_1E649BB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_1E65D76A8() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_1E65DADD8();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E649BC3C, 0, 0);
}

uint64_t sub_1E649BC3C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  sub_1E65D7698();
  sub_1E65DAD98();
  v8 = v6 + *(type metadata accessor for AppComposer() + 20);
  v9 = v8 + *(type metadata accessor for AppEnvironment() + 44);
  v10 = BookmarkService.removeBookmarks.getter();
  v0[9] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073228, &qword_1E65ED080);
  v12 = *(v2 + 72);
  v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E65EA670;
  (*(v2 + 16))(v14 + v13, v1, v3);
  v15 = sub_1E5F9B3B0(v14);
  v0[10] = v15;
  swift_setDeallocating();
  v16 = *(v2 + 8);
  v0[11] = v16;
  v0[12] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v14 + v13, v3);
  swift_deallocClassInstance();
  v20 = (v10 + *v10);
  v17 = v10[1];
  v18 = swift_task_alloc();
  v0[13] = v18;
  *v18 = v0;
  v18[1] = sub_1E649BE58;

  return v20(v15);
}

uint64_t sub_1E649BE58()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {

    v7 = sub_1E64A353C;
  }

  else
  {

    v7 = sub_1E64A3540;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E649BFBC(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E649BB4C(a1, a2, v2 + v7);
}

uint64_t sub_1E649C09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a3;
  v90 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v84 = &v76 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v88 = &v76 - v11;
  v86 = sub_1E65D7848();
  v83 = *(v86 - 8);
  v12 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v94 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65E2F88();
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v78 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v76 - v18;
  v91 = sub_1E65E2F28();
  v19 = *(v91 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v91);
  v76 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v79 = &v76 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v77 = &v76 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v76 - v27;
  v80 = sub_1E65E3298();
  v29 = *(v80 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v80);
  v33 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v76 - v34;
  v36 = sub_1E65E2F58();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v76 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for AppState();
  v41 = a1 + v40[6];
  v85 = v39;
  sub_1E63164FC();
  v42 = v40[78];
  v87 = a1;
  v43 = *(a1 + v42);
  v44 = *(v43 + 16);
  v92 = v35;
  if (v44 && (v45 = sub_1E6215038(a2, v93), (v46 & 1) != 0))
  {
    v47 = a2;
    v48 = v93;
    v49 = *(v43 + 56) + *(v19 + 72) * v45;
    v50 = *(v19 + 16);
    v51 = v19;
    v52 = v91;
    v50(v28, v49, v91);
    sub_1E65E2EE8();
    v53 = v52;
    v19 = v51;
    (*(v51 + 8))(v28, v53);
    (*(v29 + 32))(v92, v33, v80);
  }

  else
  {
    v47 = a2;
    v48 = v93;
    (*(v29 + 104))(v35, *MEMORY[0x1E699EBA0], v80);
  }

  v54 = v89;
  v55 = v86;
  if (*(v43 + 16) && (v56 = sub_1E6215038(v47, v48), (v57 & 1) != 0))
  {
    v58 = v77;
    v59 = v91;
    (*(v19 + 16))(v77, *(v43 + 56) + *(v19 + 72) * v56, v91);
    v60 = v78;
    sub_1E65E2ED8();
    (*(v19 + 8))(v58, v59);
    (*(v81 + 32))(v54, v60, v82);
  }

  else
  {
    (*(v81 + 104))(v54, *MEMORY[0x1E699EAC0], v82);
  }

  v61 = v40[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v62 = v84;
  sub_1E65E4C98();
  v63 = v88;
  sub_1E5E1F544(v88);
  sub_1E5DFE50C(v62, &qword_1ED071F78, &unk_1E65EA3F0);
  v64 = v83;
  v65 = *(v83 + 48);
  if (v65(v63, 1, v55) == 1)
  {
    sub_1E65D77C8();
    if (v65(v63, 1, v55) != 1)
    {
      sub_1E5DFE50C(v63, &qword_1ED071F80, &unk_1E65F4310);
    }

    if (!*(v43 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    (*(v64 + 32))(v94, v63, v55);
    if (!*(v43 + 16))
    {
      goto LABEL_21;
    }
  }

  v66 = sub_1E6215038(v47, v48);
  if (v67)
  {
    v68 = v79;
    v69 = v91;
    (*(v19 + 16))(v79, *(v43 + 56) + *(v19 + 72) * v66, v91);
    sub_1E65E2F08();
    (*(v19 + 8))(v68, v69);
    if (!*(v43 + 16))
    {
      goto LABEL_21;
    }
  }

  else if (!*(v43 + 16))
  {
    goto LABEL_21;
  }

  v70 = sub_1E6215038(v47, v48);
  if (v71)
  {
    v72 = *(v43 + 56) + *(v19 + 72) * v70;
    v73 = v76;
    v74 = v91;
    (*(v19 + 16))(v76, v72, v91);
    sub_1E65E2EF8();
    (*(v19 + 8))(v73, v74);
  }

LABEL_21:

  return sub_1E65E2F18();
}

uint64_t sub_1E649C840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0793D0, &qword_1E6601538);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;
  v11 = sub_1E65E2F28();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a2, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  LODWORD(a2) = *(type metadata accessor for AppState() + 312);

  return sub_1E6409244(v10, a3, a4);
}

uint64_t sub_1E649C978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v9 = type metadata accessor for AppComposer();
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65E2F38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v32 - v17;
  v19 = sub_1E65E60A8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v14, a1, v11);
  v20 = a4[3];
  v34 = *a4;
  v35 = v20;
  v21 = a4[7];
  v36 = a4[5];
  v37 = v21;
  v38 = a4[9];
  sub_1E5E1DD0C(a3, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v22 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v39 + 80) + v23 + 80) & ~*(v39 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v12 + 32))(v25 + v22, v14, v11);
  v26 = (v25 + v23);
  v27 = *(a4 + 3);
  v26[2] = *(a4 + 2);
  v26[3] = v27;
  v26[4] = *(a4 + 4);
  v28 = *(a4 + 1);
  *v26 = *a4;
  v26[1] = v28;
  sub_1E5E1EA08(v33, v25 + v24, type metadata accessor for AppComposer);
  v29 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v30 = v41;
  *v29 = v40;
  v29[1] = v30;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v18, &unk_1E6606068, v25);
}

uint64_t sub_1E649CCBC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v2 + ((v7 + 87) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1E649C978(a1, a2, v2 + v6, (v2 + v7), v9, v10);
}

uint64_t sub_1E649CD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v108 = a3;
  v110 = a2;
  v103 = a1;
  v99 = a5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v90 = *(v91 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v112 = v78 - v9;
  v115 = sub_1E65D76F8();
  v111 = *(v115 - 8);
  v88 = *(v111 + 64);
  v10 = MEMORY[0x1EEE9AC00](v115);
  v114 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v117 = v78 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v113 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v116 = v78 - v17;
  v18 = type metadata accessor for AppComposer();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18 - 8);
  v81 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v78 - v22;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v98 = *(v97 - 8);
  v24 = *(v98 + 64);
  v25 = MEMORY[0x1EEE9AC00](v97);
  v93 = v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v94 = v78 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v95 = v78 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v96 = v78 - v31;
  v104 = type metadata accessor for AppComposer;
  sub_1E5E1DD0C(a1, v23, type metadata accessor for AppComposer);
  sub_1E5DF650C(a3, &v119);
  v84 = *a4;
  v85 = *(a4 + 24);
  v86 = *(a4 + 40);
  v87 = *(a4 + 56);
  v109 = *(a4 + 72);
  v32 = *(v19 + 80);
  v33 = (v32 + 16) & ~v32;
  v105 = v33 + v20;
  v101 = v33;
  v102 = v32 | 7;
  v34 = (v33 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v107 = v34;
  v106 = (v34 + 47) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v92 = v35;
  v100 = type metadata accessor for AppComposer;
  sub_1E5E1EA08(v23, v35 + v33, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v119, v35 + v34);
  v36 = (v35 + ((v34 + 47) & 0xFFFFFFFFFFFFFFF8));
  v37 = *(a4 + 48);
  v36[2] = *(a4 + 32);
  v36[3] = v37;
  v36[4] = *(a4 + 64);
  v38 = *(a4 + 16);
  *v36 = *a4;
  v36[1] = v38;
  v39 = sub_1E65E3E08();
  (*(*(v39 - 8) + 56))(v116, 1, 1, v39);
  swift_unknownObjectRetain();

  sub_1E65D76E8();
  (*(v90 + 104))(v112, *MEMORY[0x1E699D720], v91);
  v40 = v103;
  v41 = v81;
  v42 = v104;
  sub_1E5E1DD0C(v103, v81, v104);
  v91 = swift_allocObject();
  v43 = v101;
  v44 = v100;
  sub_1E5E1EA08(v41, v91 + v101, v100);
  sub_1E5E1DD0C(v40, v41, v42);
  v90 = swift_allocObject();
  sub_1E5E1EA08(v41, v90 + v43, v44);
  sub_1E5E1DD0C(v40, v41, v42);
  v89 = swift_allocObject();
  v45 = v43;
  sub_1E5E1EA08(v41, v89 + v43, v44);
  sub_1E5E1DD0C(v40, v41, v42);
  sub_1E5DF650C(v108, &v118);
  v46 = v111;
  v47 = *(v111 + 16);
  v82 = v111 + 16;
  v83 = v47;
  v48 = v114;
  v47(v114, v117, v115);
  v49 = v106;
  v50 = (v106 + 87) & 0xFFFFFFFFFFFFFFF8;
  v80 = v50 + 8;
  v79 = v50;
  v51 = (v50 + 8 + *(v46 + 80)) & ~*(v46 + 80);
  v52 = swift_allocObject();
  v53 = v100;
  sub_1E5E1EA08(v41, v52 + v45, v100);
  sub_1E5DF599C(&v118, v52 + v107);
  v88 = v52;
  v54 = (v52 + v49);
  v55 = *(a4 + 48);
  v54[2] = *(a4 + 32);
  v54[3] = v55;
  v54[4] = *(a4 + 64);
  v56 = *(a4 + 16);
  *v54 = *a4;
  v54[1] = v56;
  v57 = v110;
  *(v52 + v50) = v110;
  v58 = v52 + v51;
  v59 = v115;
  (*(v46 + 32))(v58, v48, v115);
  v60 = v103;
  v61 = v104;
  sub_1E5E1DD0C(v103, v41, v104);
  sub_1E5DF650C(v108, &v118);
  v62 = swift_allocObject();
  v63 = v101;
  sub_1E5E1EA08(v41, v62 + v101, v53);
  sub_1E5DF599C(&v118, v62 + v107);
  v64 = (v62 + v106);
  v108 = v62;
  v65 = *(a4 + 48);
  v64[2] = *(a4 + 32);
  v64[3] = v65;
  v64[4] = *(a4 + 64);
  v66 = *(a4 + 16);
  *v64 = *a4;
  v64[1] = v66;
  *(v62 + v79) = v57;
  sub_1E5E1DD0C(v60, v41, v61);
  v107 = swift_allocObject();
  sub_1E5E1EA08(v41, v107 + v63, v53);
  sub_1E5DFD1CC(v116, v113, &qword_1ED074410, &qword_1E65F0B78);
  v83(v114, v117, v59);
  v106 = type metadata accessor for ActionButtonDescriptor(0);
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v105 = type metadata accessor for ArtworkDescriptor();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
  v101 = type metadata accessor for ContextMenu(0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
  v86 = type metadata accessor for ItemContext();
  v85 = type metadata accessor for ItemMetrics();
  v84 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
  v82 = type metadata accessor for SectionMetrics();
  v81 = type metadata accessor for ViewDescriptor();
  v80 = sub_1E64A33B8(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v79 = sub_1E60731B0();
  v78[5] = sub_1E64A33B8(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v78[4] = sub_1E5FEB2FC();
  v78[3] = sub_1E60C08DC();
  v78[2] = sub_1E60C15C0();
  v78[1] = sub_1E64A33B8(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v69 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  *&v118 = v68;
  *(&v118 + 1) = v69;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v118 = v67;
  *(&v118 + 1) = OpaqueTypeConformance2;
  v78[0] = swift_getOpaqueTypeConformance2();
  sub_1E60728B0();
  sub_1E64A33B8(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E64A33B8(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E64A33B8(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E64A33B8(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E64A33B8(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  sub_1E60C217C();
  sub_1E64A33B8(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E64A33B8(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  v71 = v93;
  sub_1E65DC198();
  (*(v111 + 8))(v117, v115);
  sub_1E5DFE50C(v116, &qword_1ED074410, &qword_1E65F0B78);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
  v72 = v94;
  v73 = v97;
  sub_1E5FEE4C8(v71);
  v74 = *(v98 + 8);
  v74(v71, v73);
  v75 = v95;
  sub_1E5FEE4C8(v72);
  v74(v72, v73);
  v76 = v96;
  sub_1E5FEE4C8(v75);
  v74(v75, v73);
  sub_1E5FEE4C8(v76);
  return (v74)(v76, v73);
}

uint64_t sub_1E649DE44(char *a1, uint64_t a2, char *a3, __int128 *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  sub_1E61E66C8(a1, a3, a4, v16 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v13 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  v16[0] = v12;
  v16[1] = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v11, v7, OpaqueTypeConformance2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1E649DFC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ArtworkContent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArtworkDescriptor();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E64FCC04(v7);
  v13 = *(a1 + *(type metadata accessor for AppComposer() + 20) + 8);
  v14 = sub_1E65DAE38();
  v15 = sub_1E65DAE38();
  v16 = sub_1E65E4B48();
  v17 = 4.0;
  if (v16)
  {
    v17 = 8.0;
  }

  v18 = 16.0;
  if (v16)
  {
    v18 = 18.0;
  }

  if (v14 == v15)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  if (v14 == v15)
  {
    v20 = 12.0;
  }

  else
  {
    v20 = 8.0;
  }

  sub_1E5E1EA08(v7, v12, type metadata accessor for ArtworkContent);
  *(v12 + v9[7]) = MEMORY[0x1E69E7CD0];
  v21 = (v12 + v9[8]);
  *v21 = 0.0;
  v21[1] = v19;
  v21[2] = v19;
  v21[3] = v20;
  *(v12 + v9[9]) = 1;
  v22 = (v12 + v9[10]);
  *v22 = 0;
  v22[1] = 0;
  sub_1E64D2DD0(v12, a1, a2);
  v23 = sub_1E65E4B98();
  v25 = v24;
  v26 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v12, a1, v26);
  sub_1E64A3400(v12, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v28 = (v26 + *(result + 36));
  *v28 = v23;
  v28[1] = v25;
  return result;
}

uint64_t sub_1E649E1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v65 = a3;
  v58 = type metadata accessor for CanvasTaskIdentifier();
  v4 = *(*(v58 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v58);
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v53 - v7;
  v55 = type metadata accessor for RouteSource(0);
  v8 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RouteDestination();
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v60 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v53 - v14);
  v64 = sub_1E65E3578();
  v61 = *(v64 - 8);
  v16 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ItemContext();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ProgramDetailItemContext();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v53 - v27;
  sub_1E5E1DD0C(a1, v21, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1E5E1EA08(v21, v28, type metadata accessor for ProgramDetailItemContext);
    sub_1E5E1DD0C(v28, v26, type metadata accessor for ProgramDetailItemContext);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = v61;
      (*(v61 + 32))(v63, v26, v64);
      v30 = sub_1E65E3548();
      v32 = v31;
      swift_storeEnumTagMultiPayload();
      *v15 = v30;
      v15[1] = v32;
      type metadata accessor for RouteResource();
      swift_storeEnumTagMultiPayload();
      sub_1E5E1EA08(v10, v15 + *(v11 + 20), type metadata accessor for RouteSource);
      *(v15 + *(v11 + 24)) = MEMORY[0x1E69E7CD0];
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072948, &qword_1E65EC0D8);
      v34 = v33[12];
      v35 = v33[16];
      v54 = v33[20];
      v55 = v34;
      v36 = v65;
      v37 = (v65 + v33[24]);
      v38 = v57;
      sub_1E5E1DD0C(v15, v57, type metadata accessor for RouteDestination);
      sub_1E5E1DD0C(v38, v56, type metadata accessor for CanvasTaskIdentifier);
      sub_1E64A33B8(&qword_1ED072950, type metadata accessor for CanvasTaskIdentifier);
      sub_1E65E6848();
      sub_1E64A3400(v38, type metadata accessor for CanvasTaskIdentifier);
      v39 = *MEMORY[0x1E6999B50];
      v40 = sub_1E65E4EB8();
      (*(*(v40 - 8) + 104))(v36 + v35, v39, v40);
      v41 = *MEMORY[0x1E6999B48];
      v42 = sub_1E65E4EA8();
      (*(*(v42 - 8) + 104))(v36 + v54, v41, v42);
      sub_1E5DF650C(v62, v66);
      v43 = v60;
      sub_1E5E1DD0C(v15, v60, type metadata accessor for RouteDestination);
      v44 = (*(v59 + 80) + 56) & ~*(v59 + 80);
      v45 = swift_allocObject();
      sub_1E5DF599C(v66, v45 + 16);
      sub_1E5E1EA08(v43, v45 + v44, type metadata accessor for RouteDestination);
      *v37 = &unk_1E6606140;
      v37[1] = v45;
      sub_1E65E6068();
      sub_1E64A3400(v15, type metadata accessor for RouteDestination);
      (*(v29 + 8))(v63, v64);
      sub_1E64A3400(v28, type metadata accessor for ProgramDetailItemContext);
      v46 = *MEMORY[0x1E6999AD8];
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
      v48 = *(v47 - 8);
      (*(v48 + 104))(v36, v46, v47);
      return (*(v48 + 56))(v36, 0, 1, v47);
    }

    sub_1E64A3400(v28, type metadata accessor for ProgramDetailItemContext);
    v51 = v26;
    v50 = type metadata accessor for ProgramDetailItemContext;
  }

  else
  {
    v50 = type metadata accessor for ItemContext;
    v51 = v21;
  }

  sub_1E64A3400(v51, v50);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
  return (*(*(v52 - 8) + 56))(v65, 1, 1, v52);
}

uint64_t sub_1E649E950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v5 = sub_1E65E0438();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = sub_1E65E03F8();
  v4[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  v4[17] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v18 = *(*(sub_1E65D72D8() - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v19 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v20 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v21 = sub_1E65D76F8();
  v4[26] = v21;
  v22 = *(v21 - 8);
  v4[27] = v22;
  v23 = *(v22 + 64) + 15;
  v4[28] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v25 = sub_1E65E2F28();
  v4[31] = v25;
  v26 = *(v25 - 8);
  v4[32] = v26;
  v27 = *(v26 + 64) + 15;
  v4[33] = swift_task_alloc();
  v28 = sub_1E65E2F88();
  v4[34] = v28;
  v29 = *(v28 - 8);
  v4[35] = v29;
  v30 = *(v29 + 64) + 15;
  v4[36] = swift_task_alloc();
  v31 = sub_1E65E32E8();
  v4[37] = v31;
  v32 = *(v31 - 8);
  v4[38] = v32;
  v33 = *(v32 + 64) + 15;
  v4[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E649EDF8, 0, 0);
}

uint64_t sub_1E649EDF8()
{
  v1 = **(v0 + 24);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1E6215038(*(v0 + 32), *(v0 + 40)), (v4 & 1) != 0))
  {
    v6 = *(v0 + 280);
    v5 = *(v0 + 288);
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    v9 = *(v0 + 248);
    v10 = *(v0 + 256);
    (*(v10 + 16))(v8, *(v2 + 56) + *(v10 + 72) * v3, v9);

    sub_1E65E2ED8();
    (*(v10 + 8))(v8, v9);
    if ((*(v6 + 88))(v5, v7) == *MEMORY[0x1E699EAC8])
    {
      v12 = *(v0 + 304);
      v11 = *(v0 + 312);
      v14 = *(v0 + 288);
      v13 = *(v0 + 296);
      v16 = *(v0 + 216);
      v15 = *(v0 + 224);
      v17 = *(v0 + 208);
      v18 = *(v0 + 32);
      v19 = *(v0 + 40);
      v98 = *(v0 + 24);
      (*(*(v0 + 280) + 96))(v14, *(v0 + 272));
      (*(v12 + 32))(v11, v14, v13);

      MEMORY[0x1E694D7C0](45, 0xE100000000000000);
      sub_1E65D76E8();
      v20 = sub_1E65D76C8();
      v22 = v21;
      (*(v16 + 8))(v15, v17);
      MEMORY[0x1E694D7C0](v20, v22);

      v23 = *(v98 + *(type metadata accessor for AppComposer() + 20) + 8);
      if (v23 >= 2)
      {
        if (v23 == 2)
        {
          return sub_1E65E69D8();
        }

        v63 = *(v0 + 240);
        v64 = *(v0 + 160);
        v65 = *(v0 + 136);
        v66 = *(v0 + 88);
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
        (*(*(v67 - 8) + 56))(v63, 1, 1, v67);
        *v64 = 2;
        v68 = *MEMORY[0x1E699D848];
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
        (*(*(v69 - 8) + 104))(v64, v68, v69);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v24 = *(v0 + 192);
        v25 = *(v0 + 200);
        sub_1E65E5BA8();
        type metadata accessor for LocalizationBundle();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v27 = [objc_opt_self() bundleForClass_];
        sub_1E65D77C8();
        sub_1E65E5D48();
        if (qword_1EE2D7270 != -1)
        {
          swift_once();
        }

        v28 = *(v0 + 240);
        v30 = *(v0 + 176);
        v29 = *(v0 + 184);
        v31 = *(v0 + 168);
        v32 = *(v0 + 128);
        v33 = *(v0 + 104);
        v99 = *(v0 + 96);
        v34 = sub_1E65D7348();
        __swift_project_value_buffer(v34, qword_1EE2EA268);
        sub_1E65E5D38();

        v35 = type metadata accessor for SectionHeaderSubtitleDescriptor();
        (*(*(v35 - 8) + 56))(v30, 1, 1, v35);
        v36 = type metadata accessor for ActionButtonDescriptor(0);
        (*(*(v36 - 8) + 56))(v31, 1, 1, v36);
        sub_1E64A33B8(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
        sub_1E64A33B8(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
        sub_1E65E0458();
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
        (*(*(v37 - 8) + 56))(v28, 0, 1, v37);
        swift_getKeyPath();
        sub_1E65E4EC8();

        sub_1E65E0708();
        v38 = *(v33 + 8);
        v38(v32, v99);
        v39 = *(v0 + 160);
        if (*(v0 + 321) > 2u)
        {
          v53 = *(v0 + 152);
          v101 = *(v0 + 136);
          v54 = *(v0 + 120);
          v55 = *(v0 + 96);
          swift_getKeyPath();
          sub_1E65E4EC8();

          sub_1E65E0678();
          v38(v54, v55);
          v56 = sub_1E65E07C8();
          v57 = 2;
          if (v56)
          {
            v57 = 4;
          }

          *v53 = v57;
          v53[1] = 0x4034000000000000;
          v58 = *MEMORY[0x1E699D840];
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
          (*(*(v59 - 8) + 104))(v53, v58, v59);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_1E5FAB460(v53, v39, &qword_1ED072650, &qword_1E65EB968);
        }

        else
        {
          v40 = *(v0 + 136);
          *v39 = 1;
          swift_storeEnumTagMultiPayload();
        }

        v60 = *(v0 + 112);
        v61 = *(v0 + 96);
        swift_getKeyPath();
        sub_1E65E4EC8();

        sub_1E65E0708();
        v38(v60, v61);
        v62 = *(v0 + 88);
        if (*(v0 + 320) <= 2u)
        {
          sub_1E65E0AC8();
LABEL_24:
          v93 = *(v0 + 304);
          v95 = *(v0 + 296);
          v71 = *(v0 + 232);
          v70 = *(v0 + 240);
          v90 = *(v0 + 312);
          v72 = *(v0 + 160);
          v73 = *(v0 + 144);
          v74 = *(v0 + 72);
          v82 = *(v0 + 64);
          v75 = *(v0 + 56);
          v83 = *(v0 + 48);
          v76 = *(v0 + 88);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073018, &qword_1E65ECE70);
          v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A0, &qword_1E65EA788) - 8);
          v78 = *(v77 + 72);
          v86 = (*(v77 + 80) + 32) & ~*(v77 + 80);
          v100 = swift_allocObject();
          *(v100 + 16) = xmmword_1E65EA670;
          sub_1E5DFD1CC(v72, v73, &qword_1ED072650, &qword_1E65EB968);
          sub_1E5DFD1CC(v70, v71, &qword_1ED072648, &qword_1E65EB960);
          v79 = sub_1E65E32C8();
          v80 = swift_task_alloc();
          *(v80 + 16) = v76;
          sub_1E5F9FD68(sub_1E64A3398, v80, v79);

          v81 = type metadata accessor for SectionMetrics();
          (*(*(v81 - 8) + 56))(v74, 1, 1, v81);
          (*(v75 + 104))(v82, *MEMORY[0x1E699D7D8], v83);
          type metadata accessor for ActionButtonDescriptor(0);
          type metadata accessor for ArtworkDescriptor();
          type metadata accessor for ContextMenu(0);
          type metadata accessor for ItemContext();
          type metadata accessor for ItemMetrics();
          type metadata accessor for SectionHeaderSubtitleDescriptor();
          type metadata accessor for ViewDescriptor();
          sub_1E64A33B8(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
          sub_1E64A33B8(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
          sub_1E64A33B8(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
          sub_1E64A33B8(&qword_1EE2DB720, type metadata accessor for ItemContext);
          sub_1E64A33B8(&qword_1EE2DB738, type metadata accessor for ItemContext);
          sub_1E64A33B8(&qword_1EE2DB730, type metadata accessor for ItemContext);
          sub_1E64A33B8(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
          sub_1E64A33B8(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
          sub_1E5DF11E0();
          sub_1E64A33B8(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
          sub_1E64A33B8(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
          sub_1E65E0418();
          sub_1E5DFE50C(v72, &qword_1ED072650, &qword_1E65EB968);
          sub_1E5DFE50C(v70, &qword_1ED072648, &qword_1E65EB960);
          (*(v93 + 8))(v90, v95);
          sub_1E64A3400(v76, MEMORY[0x1E699D780]);
          goto LABEL_11;
        }
      }

      sub_1E65E0A68();
      goto LABEL_24;
    }

    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
  }

  else
  {
  }

  v100 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v41 = *(v0 + 312);
  v42 = *(v0 + 288);
  v43 = *(v0 + 264);
  v44 = *(v0 + 232);
  v45 = *(v0 + 240);
  v46 = *(v0 + 224);
  v48 = *(v0 + 192);
  v47 = *(v0 + 200);
  v50 = *(v0 + 176);
  v49 = *(v0 + 184);
  v84 = *(v0 + 168);
  v85 = *(v0 + 160);
  v87 = *(v0 + 152);
  v88 = *(v0 + 144);
  v89 = *(v0 + 128);
  v91 = *(v0 + 120);
  v92 = *(v0 + 112);
  v94 = *(v0 + 88);
  v96 = *(v0 + 72);
  v97 = *(v0 + 64);

  v51 = *(v0 + 8);

  return v51(v100);
}

uint64_t sub_1E649FC44(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1E65E03F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ItemContext();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = *a1;
  v11 = a1[1];

  sub_1E65E3538();
  type metadata accessor for ProgramDetailItemContext();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1E5E1DD0C(a2, v7, MEMORY[0x1E699D780]);
  sub_1E64A33B8(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E64A33B8(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E64A33B8(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E65E04D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E649FE50(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65D9CC8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_1E65E3578();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v9 = type metadata accessor for ItemContext();
  v2[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v11 = type metadata accessor for ProgramDetailItemContext();
  v2[14] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v2[19] = v13;
  v14 = *(v13 - 8);
  v2[20] = v14;
  v15 = *(v14 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64A0088, 0, 0);
}

unint64_t sub_1E64A0088()
{
  v1 = v0[20];
  v100 = v0[17];
  v2 = v0[8];
  v3 = v0[2];
  v4 = sub_1E6427DF8(MEMORY[0x1E69E7CC0]);
  v5 = v3 + 56;
  v6 = -1;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v3 + 56);
  v9 = (63 - v7) >> 6;
  v109 = (v1 + 8);
  v102 = (v2 + 8);
  v103 = (v2 + 32);
  v97 = (v1 + 40);
  v99 = (v1 + 32);
  v112 = v3;

  v10 = 0;
  v106 = v1;
  v107 = v9;
LABEL_4:
  v104 = v4;
  v0[24] = v4;
  v11 = v10;
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = v11;
LABEL_9:
    v12 = v0[13];
    v13 = v0[11];
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = *(v1 + 72);
    v16 = *(v1 + 16);
    v16(v0[23], *(v112 + 48) + v15 * (v14 | (v10 << 6)), v0[19]);
    sub_1E65E04E8();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v95 = v15;
      v19 = v0[17];
      v18 = v0[18];
      v20 = v0[14];
      sub_1E5E1EA08(v0[13], v18, type metadata accessor for ProgramDetailItemContext);
      sub_1E5E1DD0C(v18, v19, type metadata accessor for ProgramDetailItemContext);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v22 = v0[17];
      if (EnumCaseMultiPayload == 1)
      {
        v23 = v0[10];
        v24 = v0[7];
        (*v103)(v23, v22, v24);
        v25 = sub_1E65E3548();
        v27 = v26;
        (*v102)(v23, v24);
      }

      else
      {
        v25 = *v22;
        v27 = *(v100 + 8);
      }

      v16(v0[22], v0[23], v0[19]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v115 = v104;
      result = sub_1E6215038(v25, v27);
      v31 = v104[2];
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        __break(1u);
      }

      else
      {
        v35 = v30;
        if (v104[3] >= v34)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v46 = result;
            sub_1E6424B84();
            result = v46;
          }
        }

        else
        {
          sub_1E641BE8C(v34, isUniquelyReferenced_nonNull_native);
          result = sub_1E6215038(v25, v27);
          if ((v35 & 1) != (v36 & 1))
          {
LABEL_55:

            return sub_1E65E6C68();
          }
        }

        v37 = v0[22];
        v38 = v0[23];
        v39 = v0[19];
        v105 = v0[18];
        if (v35)
        {
          v40 = v0[23];
          v41 = result;

          v4 = v115;
          (*v97)(v115[7] + v41 * v95, v37, v39);
          sub_1E64A3400(v105, type metadata accessor for ProgramDetailItemContext);
          (*v109)(v40, v39);
LABEL_25:
          v1 = v106;
          v9 = v107;
          goto LABEL_4;
        }

        v42 = v25;
        v4 = v115;
        v115[(result >> 6) + 8] |= 1 << result;
        v43 = (v115[6] + 16 * result);
        *v43 = v42;
        v43[1] = v27;
        (*v99)(v115[7] + result * v95, v37, v39);
        sub_1E64A3400(v105, type metadata accessor for ProgramDetailItemContext);
        result = (*v109)(v38, v39);
        v44 = v115[2];
        v33 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (!v33)
        {
          v115[2] = v45;
          goto LABEL_25;
        }
      }

      __break(1u);
      return result;
    }

    v17 = v0[13];
    (*v109)(v0[23], v0[19]);
    sub_1E64A3400(v17, type metadata accessor for ItemContext);
    v11 = v10;
    v1 = v106;
    v9 = v107;
  }

  while (v8);
  while (1)
  {
LABEL_6:
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  v47 = v0[5];
  v48 = v0[2];

  v49 = -1;
  v50 = -1 << *(v112 + 32);
  if (-v50 < 64)
  {
    v49 = ~(-1 << -v50);
  }

  v51 = v49 & *(v112 + 56);
  v52 = (63 - v50) >> 6;
  v101 = v47;

  v53 = 0;
  v54 = MEMORY[0x1E69E7CC0];
  v0[25] = MEMORY[0x1E69E7CC0];
  if (v51)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v58 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      goto LABEL_54;
    }

    if (v58 >= v52)
    {
      break;
    }

    v51 = *(v5 + 8 * v58);
    ++v53;
    if (v51)
    {
      v108 = v54;
LABEL_37:
      v60 = v0[11];
      v59 = v0[12];
      v61 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      (*(v1 + 16))(v0[21], *(v112 + 48) + *(v1 + 72) * (v61 | (v58 << 6)), v0[19]);
      sub_1E65E04E8();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v63 = v0[15];
        v62 = v0[16];
        v64 = v0[14];
        sub_1E5E1EA08(v0[12], v62, type metadata accessor for ProgramDetailItemContext);
        sub_1E5E1DD0C(v62, v63, type metadata accessor for ProgramDetailItemContext);
        v65 = swift_getEnumCaseMultiPayload();
        v66 = v0[21];
        v67 = v0[19];
        v68 = v0[15];
        if (v65 != 1)
        {
          sub_1E64A3400(v0[16], type metadata accessor for ProgramDetailItemContext);
          (*v109)(v66, v67);
          v57 = v68;
          v56 = type metadata accessor for ProgramDetailItemContext;
          goto LABEL_31;
        }

        v69 = v0[9];
        v94 = v0[6];
        v96 = v0[7];
        v98 = v0[16];
        (*v103)(v69, v68);
        sub_1E65E3548();
        sub_1E65E3558();
        sub_1E65D9C88();
        (*v102)(v69, v96);
        sub_1E64A3400(v98, type metadata accessor for ProgramDetailItemContext);
        (*v109)(v66, v67);
        v54 = v108;
        v70 = v1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_1E64F610C(0, v108[2] + 1, 1, v108);
        }

        v72 = v54[2];
        v71 = v54[3];
        if (v72 >= v71 >> 1)
        {
          v54 = sub_1E64F610C(v71 > 1, v72 + 1, 1, v54);
        }

        v73 = v0[6];
        v74 = v0[4];
        v54[2] = v72 + 1;
        (*(v101 + 32))(v54 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v72, v73, v74);
        v53 = v58;
        v1 = v70;
        v0[25] = v54;
        if (!v51)
        {
          continue;
        }
      }

      else
      {
        v55 = v0[12];
        (*v109)(v0[21], v0[19]);
        v56 = type metadata accessor for ItemContext;
        v57 = v55;
LABEL_31:
        sub_1E64A3400(v57, v56);
        v53 = v58;
        v54 = v108;
        v0[25] = v108;
        if (!v51)
        {
          continue;
        }
      }

LABEL_32:
      v108 = v54;
      v58 = v53;
      goto LABEL_37;
    }
  }

  v75 = v0[2];

  if (v54[2])
  {
    v76 = v0[3];
    v77 = v76 + *(type metadata accessor for AppComposer() + 20);
    v78 = v77 + *(type metadata accessor for AppEnvironment() + 48);
    v79 = CatalogService.fetchRemoteCatalogLockups.getter();
    v0[26] = v80;
    v113 = (v79 + *v79);
    v81 = v79[1];
    v82 = swift_task_alloc();
    v0[27] = v82;
    *v82 = v0;
    v82[1] = sub_1E64A0A74;

    return (v113)(19, v54);
  }

  else
  {

    v83 = v0[22];
    v84 = v0[23];
    v85 = v0[21];
    v87 = v0[17];
    v86 = v0[18];
    v89 = v0[15];
    v88 = v0[16];
    v90 = v0[12];
    v91 = v0[13];
    v110 = v0[10];
    v111 = v0[9];
    v114 = v0[6];

    v92 = v0[1];
    v93 = MEMORY[0x1E69E7CD0];

    return v92(v93);
  }
}

uint64_t sub_1E64A0A74(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = sub_1E64A0D1C;
  }

  else
  {
    v9 = v4[25];
    v8 = v4[26];

    v4[29] = a1;
    v7 = sub_1E64A0BAC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E64A0BAC()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[24];
  v4 = v0[3];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = sub_1E6404CB8(sub_1E64A337C, v5, v1);

  v7 = sub_1E600A848(v6);
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];
  v12 = v0[17];
  v11 = v0[18];
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[13];
  v18 = v0[12];
  v19 = v0[10];
  v20 = v0[9];
  v21 = v0[6];
  v22 = v7;

  v16 = v0[1];

  return v16(v22);
}

uint64_t sub_1E64A0D1C()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[17];
  v7 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  v14 = v0[13];
  v15 = v0[12];
  v16 = v0[10];
  v17 = v0[9];
  v18 = v0[6];

  v11 = v0[1];
  v12 = v0[28];

  return v11();
}

uint64_t sub_1E64A0E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v234 = a3;
  v256 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v201 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v232 = &v201 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v230 = &v201 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v243 = &v201 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v242 = &v201 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v254 = &v201 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v231 = &v201 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v255 = &v201 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v217 = &v201 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v215 = &v201 - v33;
  v214 = sub_1E65DAC98();
  v212 = *(v214 - 8);
  v34 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v209 = &v201 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_1E65DB268();
  v36 = *(*(v216 - 8) + 64);
  MEMORY[0x1EEE9AC00](v216);
  v210 = &v201 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_1E65DA0B8();
  v211 = *(v213 - 8);
  v38 = *(v211 + 64);
  v39 = MEMORY[0x1EEE9AC00](v213);
  v208 = &v201 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v226 = &v201 - v41;
  v207 = sub_1E65D9D58();
  v206 = *(v207 - 8);
  v42 = *(v206 + 64);
  v43 = MEMORY[0x1EEE9AC00](v207);
  v205 = &v201 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v204 = &v201 - v45;
  v222 = sub_1E65D8BB8();
  v46 = *(*(v222 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v222);
  v223 = &v201 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v233 = &v201 - v49;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
  v50 = *(*(v225 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v225);
  v224 = &v201 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v253 = (&v201 - v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54 - 8);
  v238 = &v201 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v246 = &v201 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v252 = &v201 - v60;
  v260 = sub_1E65D72D8();
  v251 = *(v260 - 8);
  v61 = *(v251 + 64);
  MEMORY[0x1EEE9AC00](v260);
  v259 = &v201 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v220 = &v201 - v65;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v218 = *(v219 - 1);
  v66 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v219);
  v68 = &v201 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69 - 8);
  v72 = &v201 - v71;
  v241 = sub_1E65D9AC8();
  v258 = *(v241 - 8);
  v73 = v258[8];
  v74 = MEMORY[0x1EEE9AC00](v241);
  v221 = &v201 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v244 = &v201 - v76;
  v229 = sub_1E65D7848();
  v228 = *(v229 - 8);
  v77 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v229);
  v261 = &v201 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for ItemContext();
  v79 = *(*(v227 - 8) + 64);
  v80 = MEMORY[0x1EEE9AC00](v227);
  v239 = &v201 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80);
  v250 = &v201 - v82;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v235 = *(v236 - 8);
  v83 = *(v235 + 64);
  v84 = MEMORY[0x1EEE9AC00](v236);
  v249 = &v201 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v201 - v86;
  v88 = sub_1E65E03F8();
  v89 = *(*(v88 - 8) + 64);
  v90 = MEMORY[0x1EEE9AC00](v88);
  v248 = &v201 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v90);
  v237 = &v201 - v92;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v240 = *(v247 - 8);
  v93 = *(v240 + 64);
  v94 = MEMORY[0x1EEE9AC00](v247);
  v96 = &v201 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94);
  v245 = &v201 - v97;
  v257 = a1;
  v98 = sub_1E65D8078();
  if (!*(a2 + 16))
  {

    goto LABEL_7;
  }

  v100 = a2;
  v203 = v9;
  v101 = sub_1E6215038(v98, v99);
  v103 = v102;

  if ((v103 & 1) == 0)
  {
LABEL_7:
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
    return (*(*(v114 - 8) + 56))(v256, 1, 1, v114);
  }

  v104 = v240;
  v105 = *(v100 + 56) + *(v240 + 72) * v101;
  v106 = v247;
  (*(v240 + 16))(v96, v105, v247);
  (*(v104 + 32))(v245, v96, v106);
  v107 = type metadata accessor for AppComposer();
  v108 = v234;
  v202 = v234 + *(v107 + 20);
  v109 = v202[8];
  if (v109 >= 2)
  {
    v112 = v241;
    if (v109 != 3)
    {
      result = sub_1E65E69D8();
      __break(1u);
      return result;
    }

    v113 = v237;
    sub_1E65E0A68();
  }

  else
  {
    v110 = *v234;
    swift_getKeyPath();
    sub_1E65E4EC8();

    v111 = v236;
    sub_1E65E0708();
    (*(v235 + 8))(v87, v111);
    v112 = v241;
    v113 = v237;
    if (v262 > 2u)
    {
      sub_1E65E0A68();
    }

    else
    {
      sub_1E65E0AC8();
    }

    v108 = v234;
  }

  swift_storeEnumTagMultiPayload();
  sub_1E5E1DD0C(v113, v248, MEMORY[0x1E699D780]);
  v116 = *v108;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E04E8();
  swift_getKeyPath();
  sub_1E65E4EC8();

  swift_getKeyPath();
  sub_1E65E4EC8();

  v117 = v220;
  v118 = v219;
  sub_1E65E4C98();
  sub_1E60EEE88(v72);
  sub_1E5DFE50C(v117, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v218 + 8))(v68, v118);
  v119 = v258;
  v120 = v258[6];
  if (v120(v72, 1, v112) == 1)
  {
    MEMORY[0x1E6941490]();
    v121 = v120(v72, 1, v112);
    v122 = v202;
    if (v121 != 1)
    {
      sub_1E5DFE50C(v72, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (v119[4])(v244, v72, v112);
    v122 = v202;
  }

  v123 = *(type metadata accessor for AppEnvironment() + 136);
  v218 = sub_1E5F9B6D0(&unk_1F5FA8D40);
  v124 = sub_1E65D8248();
  v234 = v123;
  v125 = v122;
  sub_1E63C4134(v261, (v123 + v122), v124, v259);

  v220 = sub_1E65D80A8();
  v126 = sub_1E65D9AA8();
  v128 = v127;
  v129 = v221;
  MEMORY[0x1E6941490]();
  v130 = sub_1E65D9AA8();
  v132 = v131;
  v133 = v258[1];
  ++v258;
  v133(v129, v112);
  v265 = v109;
  v219 = v133;
  if (v126 == v130 && v128 == v132)
  {
  }

  else
  {
    v134 = sub_1E65E6C18();

    if ((v134 & 1) == 0)
    {
      v138 = sub_1E65D8198();
      v139 = sub_1E65D9AA8();
      v141 = sub_1E637CA94(v139, v140, v138);

      v137 = v125;
      if (v141)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        v142 = *(sub_1E65DADF8() - 8);
        v143 = *(v142 + 72);
        v144 = (*(v142 + 80) + 32) & ~*(v142 + 80);
        v145 = swift_allocObject();
        *(v145 + 16) = xmmword_1E65EB9E0;
        v146 = (v145 + v144);
        *v146 = sub_1E65D9AA8();
        v146[1] = v147;
        swift_storeEnumTagMultiPayload();
        *(v146 + v143) = 1;
        swift_storeEnumTagMultiPayload();
        v148 = sub_1E65D80A8();
        v262 = v145;
        sub_1E5FA9E2C(v148);
        v220 = v262;
      }

      v135 = v233;
      v136 = v223;
      goto LABEL_24;
    }
  }

  v135 = v233;
  v136 = v223;
  v137 = v125;
LABEL_24:
  v149 = v218;
  v150 = *(sub_1E65D8068() + 16);

  if (v150)
  {
    v151 = sub_1E65D8068();
    v152 = v252;
    sub_1E63C4134(v261, (v234 + v137), v151, v252);

    v153 = 0;
  }

  else
  {
    v153 = 1;
    v152 = v252;
  }

  v154 = *(v251 + 56);
  v222 = v251 + 56;
  v221 = v154;
  (v154)(v152, v153, 1, v260);
  v223 = sub_1E63B0704(v149);

  sub_1E65D8128();
  sub_1E5E1DD0C(v135, v136, MEMORY[0x1E69CB950]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v155 = v211;
    v156 = v226;
    v157 = v136;
    v158 = v213;
    (*(v211 + 32))(v226, v157, v213);
    v159 = v208;
    (*(v155 + 16))(v208, v156, v158);
    v160 = v209;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DB248();
    v135 = v233;
    (*(v212 + 8))(v160, v214);
    sub_1E65DA0A8();
    sub_1E64A33B8(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
    v161 = v224;
    sub_1E65DC438();
    v162 = *(v155 + 8);
    v162(v159, v158);
    v162(v226, v158);
    v137 = v202;
  }

  else
  {
    v163 = v206;
    v164 = v204;
    v165 = v207;
    (*(v206 + 32))(v204, v136, v207);
    v166 = v205;
    (*(v163 + 16))(v205, v164, v165);
    v161 = v224;
    sub_1E6134678(v166, v224);
    (*(v163 + 8))(v164, v165);
  }

  sub_1E64A3400(v135, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E5FAB460(v161, v253, &qword_1ED074530, &qword_1E65F0CA8);
  v167 = sub_1E65D81E8();
  v170 = v220;
  v171 = v221;
  if (v169 == -1)
  {
    v175 = 4;
  }

  else
  {
    v262 = v167;
    v263 = v168;
    v264 = v169 & 1;
    v172 = v167;
    v173 = v168;
    v174 = v169;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074538, &qword_1E65F0D18);
    sub_1E65D7FB8();
    sub_1E5F87158(v172, v173, v174);
    v175 = v266;
  }

  LODWORD(v233) = v175;
  v176 = v246;
  v177 = v260;
  (*(v251 + 16))(v246, v259, v260);
  v178 = 1;
  v171(v176, 0, 1, v177);
  sub_1E65D8158();
  v179 = v238;
  if (*(v170 + 16))
  {
    sub_1E63C4134(v261, (v234 + v137), v170, v238);
    v178 = 0;
  }

  v171(v179, v178, 1, v260);
  sub_1E65D8178();
  v180 = type metadata accessor for ActionButtonDescriptor(0);
  v234 = v180;
  v181 = *(*(v180 - 8) + 56);
  v182 = v243;
  v181();
  v183 = v230;
  (v181)(v230, 1, 1, v180);
  v184 = sub_1E65D8088();
  v186 = v185;
  v226 = v185;
  v187 = sub_1E65D80C8();
  v189 = v188;
  v191 = v190;
  v192 = sub_1E65D81B8();
  v191 &= 1u;
  v200 = v184;
  v199 = v182;
  v193 = v238;
  v194 = v242;
  sub_1E63A0574(v249, v253, v223, v233, v246, v254, v238, v242, v255, v252, v265, v199, v183, v200, v186, v187, v189, v191, v192, v195, 7u);

  sub_1E5F87058(v187, v189, v191);

  sub_1E5DFE50C(v183, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v243, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v194, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v193, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v254, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v246, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5E1DD0C(v250, v239, type metadata accessor for ItemContext);
  sub_1E5DFD1CC(v255, v231, &qword_1ED072610, &qword_1E65EB930);
  sub_1E62E2980(v232);
  sub_1E622BB88(v259, v203);
  v257 = type metadata accessor for ArtworkDescriptor();
  v254 = type metadata accessor for ContextMenu(0);
  v246 = type metadata accessor for ItemMetrics();
  v243 = type metadata accessor for ViewDescriptor();
  v242 = sub_1E64A33B8(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  sub_1E64A33B8(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  sub_1E64A33B8(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  sub_1E64A33B8(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E64A33B8(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E64A33B8(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E64A33B8(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E64A33B8(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  v196 = v256;
  sub_1E65E0488();
  sub_1E5DFE50C(v255, &qword_1ED072610, &qword_1E65EB930);
  sub_1E5DFE50C(v253, &qword_1ED074530, &qword_1E65F0CA8);
  sub_1E5DFE50C(v252, &qword_1ED072D90, &qword_1E66040F0);
  (*(v251 + 8))(v259, v260);
  (v219)(v244, v241);
  (*(v228 + 8))(v261, v229);
  sub_1E64A3400(v250, type metadata accessor for ItemContext);
  (*(v235 + 8))(v249, v236);
  v197 = MEMORY[0x1E699D780];
  sub_1E64A3400(v248, MEMORY[0x1E699D780]);
  sub_1E64A3400(v237, v197);
  (*(v240 + 8))(v245, v247);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v198 - 8) + 56))(v196, 0, 1, v198);
}

uint64_t sub_1E64A2BB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);

  return sub_1E649CD78(v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8), a1);
}

uint64_t sub_1E64A2C7C(char *a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E649DE44(a1, v1 + v4, (v1 + v5), (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E64A2D94(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E64A2E28(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E2F38() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (v7 + *(v8 + 80) + 80) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1E5DFA78C;

  return sub_1E637FACC(a1, v10, v11, v1 + v6, v1 + v7, v1 + v9, v13, v14);
}

uint64_t sub_1E64A2FD0(uint64_t a1)
{
  v4 = *(sub_1E65D74E8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E649ABF8(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E64A30C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E649A65C(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_1E64A318C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5FE99E8;

  return sub_1E649E950(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E64A32A4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FEE4D4;

  return sub_1E649FE50(a1, v1 + v5);
}

uint64_t sub_1E64A33B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E64A3400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E64A3460(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FD0850(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E64A3544(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v34 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = (*(a1 + 56) + 16 * v11);
        v13 = v12[1];
        if (v13)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v15 = (*(a1 + 48) + 16 * v11);
      v32 = v15[1];
      v33 = *v15;
      v31 = *v12;
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {

        sub_1E6419E3C(v16 + 1, 1);
        v2 = v34;
      }

      else
      {
      }

      v17 = *(v2 + 40);
      sub_1E65E6D28();
      sub_1E65E5D78();
      result = sub_1E65E6D78();
      v18 = v2 + 64;
      v19 = -1 << *(v2 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      v23 = v32;
LABEL_24:
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v28 = 16 * v22;
      v29 = (*(v2 + 48) + v28);
      *v29 = v33;
      v29[1] = v23;
      v30 = (*(v2 + 56) + v28);
      *v30 = v31;
      v30[1] = v13;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v24 = 0;
    v25 = (63 - v19) >> 6;
    v23 = v32;
    while (++v21 != v25 || (v24 & 1) == 0)
    {
      v26 = v21 == v25;
      if (v21 == v25)
      {
        v21 = 0;
      }

      v24 |= v26;
      v27 = *(v18 + 8 * v21);
      if (v27 != -1)
      {
        v22 = __clz(__rbit64(~v27)) + (v21 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v14);
      ++v9;
      if (v6)
      {
        v9 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E64A37AC()
{
  v29 = sub_1E65D70A8();
  v0 = *(v29 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v28 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E65D74D8();
  v4 = *(v3 + 16);
  if (v4)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1E601C0D8(0, v4, 0);
    v5 = v30;
    v7 = *(v0 + 16);
    v6 = v0 + 16;
    v8 = v3 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v25 = *(v6 + 56);
    v26 = v7;
    v23[1] = v3;
    v24 = (v6 - 8);
    v27 = v6;
    do
    {
      v10 = v28;
      v9 = v29;
      v26(v28, v8, v29);
      v11 = sub_1E65D7088();
      v13 = v12;
      v14 = sub_1E65D7098();
      v16 = v15;
      (*v24)(v10, v9);
      v30 = v5;
      v18 = v5[2];
      v17 = v5[3];
      if (v18 >= v17 >> 1)
      {
        sub_1E601C0D8((v17 > 1), v18 + 1, 1);
        v5 = v30;
      }

      v5[2] = v18 + 1;
      v19 = &v5[4 * v18];
      v19[4] = v11;
      v19[5] = v13;
      v19[6] = v14;
      v19[7] = v16;
      v8 += v25;
      --v4;
    }

    while (v4);

    if (v5[2])
    {
      goto LABEL_7;
    }

LABEL_9:
    v20 = MEMORY[0x1E69E7CC8];
    goto LABEL_10;
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795D8, &qword_1E6601708);
  v20 = sub_1E65E6A28();
LABEL_10:
  v30 = v20;
  sub_1E64A3AA8(v5, 1, &v30);
  v21 = sub_1E64A3544(v30);

  return v21;
}

uint64_t sub_1E64A3A24()
{
  v0 = sub_1E64A37AC();
  if (*(v0 + 16) && (v1 = sub_1E6215038(0x696669746E656469, 0xEA00000000007265), (v2 & 1) != 0))
  {
    v3 = (*(v0 + 56) + 16 * v1);
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1E64A3AA8(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  v9 = *a3;

  v10 = sub_1E6215038(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1E641A3AC(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_1E6215038(v6, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1E65E6C68();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_1E6423ACC();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v6;
  v23[1] = v5;
  v24 = (v22[7] + 16 * v10);
  *v24 = v8;
  v24[1] = v7;
  v25 = v22[2];
  v14 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1E65E68A8();
    MEMORY[0x1E694D7C0](0xD00000000000001BLL, 0x80000001E6611C70);
    sub_1E65E69B8();
    MEMORY[0x1E694D7C0](39, 0xE100000000000000);
    sub_1E65E69D8();
    __break(1u);
    return;
  }

  v22[2] = v26;
  if (v41 != 1)
  {
    v4 = a1 + 11;
    v8 = 1;
    while (v8 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v27 = *(v4 - 1);
      v7 = *v4;
      v28 = *a3;

      v29 = sub_1E6215038(v6, v5);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v30;
      if (v28[3] < v33)
      {
        sub_1E641A3AC(v33, 1);
        v34 = *a3;
        v29 = sub_1E6215038(v6, v5);
        if ((v16 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v6;
      v37[1] = v5;
      v38 = (v36[7] + 16 * v29);
      *v38 = v27;
      v38[1] = v7;
      v39 = v36[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v36[2] = v40;
      v4 += 4;
      if (v41 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1E64A3E58(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = a4;
  *(v4 + 228) = a3;
  *(v4 + 64) = a1;
  sub_1E65E6058();
  *(v4 + 88) = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  *(v4 + 96) = v6;
  *(v4 + 104) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E64A3EF8, v6, v5);
}

uint64_t sub_1E64A3EF8()
{
  v1 = *(v0 + 80);
  if (*(v0 + 228))
  {
    v2 = type metadata accessor for AppComposer();
    *(v0 + 144) = v2;
    v3 = *(v2 + 20);
    *(v0 + 224) = v3;
    v4 = v1 + v3;
    v5 = type metadata accessor for AppEnvironment();
    *(v0 + 152) = v5;
    v6 = v4 + *(v5 + 112);
    v7 = SessionService.makeQueueSessionItems.getter();
    *(v0 + 160) = v8;
    v24 = (v7 + *v7);
    v9 = v7[1];
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = sub_1E64A42F0;
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);

    return v24(v12, v11);
  }

  else
  {
    v14 = *(v0 + 64);
    v15 = v1 + *(type metadata accessor for AppComposer() + 20);
    v16 = v15 + *(type metadata accessor for AppEnvironment() + 88);
    v17 = PlayerService.makeQueueSessionViewController.getter();
    *(v0 + 112) = v18;
    v19 = sub_1E65D8CC8();
    v21 = v20;
    *(v0 + 120) = v20;
    v25 = (v17 + *v17);
    v22 = v17[1];
    v23 = swift_task_alloc();
    *(v0 + 128) = v23;
    *v23 = v0;
    v23[1] = sub_1E64A4158;

    return v25(v14, v19, v21);
  }
}

uint64_t sub_1E64A4158(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[16];
  v12 = *v2;
  v4[17] = v1;

  if (v1)
  {
    v6 = v4[12];
    v7 = v4[13];
    v8 = sub_1E64A4818;
  }

  else
  {
    v9 = v4[14];
    v10 = v4[15];

    v6 = v4[12];
    v7 = v4[13];
    v8 = sub_1E64A4284;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1E64A4284()
{
  v1 = v0[3];
  v2 = v0[11];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1E64A42F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v7 = *(v3 + 104);
  v8 = *(v3 + 96);
  if (v1)
  {
    v9 = sub_1E64A4890;
  }

  else
  {
    v9 = sub_1E64A4434;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E64A4434()
{
  v20 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 224);
  v4 = *(v0 + 144);
  v5 = *(v0 + 80);

  v6 = v5 + v3 + *(v2 + 88);
  v7 = PlayerService.makeQueueSessionViewController.getter();
  *(v0 + 192) = v8;
  sub_1E5FB9CA4(*(v5 + *(v4 + 36)), *(v5 + *(v4 + 36) + 8), &v18);
  v9 = v18;
  v10 = v19;
  if (v19 <= 2)
  {
    if (v19)
    {
      if (v19 == 1)
      {
        v11 = 0xE700000000000000;
        v12 = 0x65726F6C707865;
      }

      else
      {
        if (v19 != 2)
        {
          goto LABEL_17;
        }

        v11 = 0xE600000000000000;
        v12 = 0x756F59726F66;
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      v12 = 0x736E616C70;
    }

    goto LABEL_16;
  }

  if (v19 <= 4)
  {
    if (v19 == 3)
    {
      v11 = 0xE700000000000000;
      v12 = 0x7972617262696CLL;
    }

    else
    {
      v11 = 0xE600000000000000;
      v12 = 0x686372616573;
    }

    goto LABEL_16;
  }

  if (v19 == 5)
  {
    v11 = 0xE600000000000000;
    v12 = 0x7478654E7075;
LABEL_16:
    sub_1E5E07DA0(v18, v19);
    v9 = v12;
    v10 = v11;
    goto LABEL_17;
  }

  if (v19 == 6)
  {
    v9 = 0;
    v10 = 0;
  }

LABEL_17:
  *(v0 + 200) = v10;
  v17 = (v7 + *v7);
  v13 = v7[1];
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *v14 = v0;
  v14[1] = sub_1E64A466C;
  v15 = *(v0 + 176);

  return v17(v15, v9, v10);
}

uint64_t sub_1E64A466C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[26];
  v13 = *v2;
  v4[27] = v1;

  if (v1)
  {
    v6 = v4[12];
    v7 = v4[13];
    v8 = sub_1E64A4900;
  }

  else
  {
    v9 = v4[24];
    v10 = v4[25];
    v11 = v4[22];

    v6 = v4[12];
    v7 = v4[13];
    v8 = sub_1E64A47AC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1E64A47AC()
{
  v1 = v0[6];
  v2 = v0[11];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1E64A4818()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];

  v4 = v0[17];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E64A4890()
{
  v1 = v0[20];
  v2 = v0[11];

  v3 = v0[23];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E64A4900()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[11];

  v5 = v0[27];
  v6 = v0[1];

  return v6();
}

uint64_t sub_1E64A498C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  *(v8 + 72) = a7;
  *(v8 + 64) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_1E65E5798();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  sub_1E65E6058();
  *(v8 + 104) = sub_1E65E6048();
  v13 = sub_1E65E5FC8();
  *(v8 + 112) = v13;
  *(v8 + 120) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1E64A4A90, v13, v12);
}

void sub_1E64A4A90()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for AppComposer();
  v3 = *(v2 + 20);
  *(v0 + 200) = v3;
  v4 = v1 + v3;
  v5 = type metadata accessor for AppEnvironment();
  *(v0 + 128) = v5;
  v6 = v4 + *(v5 + 112);
  v7 = SessionService.makeSessionConfiguration.getter();
  *(v0 + 136) = v8;
  sub_1E5FB9CA4(*(v1 + *(v2 + 36)), *(v1 + *(v2 + 36) + 8), &v26);
  v9 = v26;
  v10 = v27;
  if (v27 <= 2)
  {
    if (v27)
    {
      if (v27 == 1)
      {
        v11 = 0xE700000000000000;
        v12 = 0x65726F6C707865;
      }

      else
      {
        if (v27 != 2)
        {
LABEL_17:
          v13 = v9;
          v14 = v10;
LABEL_18:
          *(v0 + 144) = v14;
          v25 = v7 + *v7;
          v15 = v7[1];
          v16 = swift_task_alloc();
          *(v0 + 152) = v16;
          *v16 = v0;
          v16[1] = sub_1E64A4D00;
          v17 = *(v0 + 96);
          v18 = *(v0 + 72);
          v19 = *(v0 + 64);
          v20 = *(v0 + 48);
          v21 = *(v0 + 56);
          v22 = *(v0 + 32);
          v23 = *(v0 + 40);
          v24 = *(v0 + 24);
          v30 = v13;
          v31 = v14;
          v29 = v18;

          __asm { BRAA            X8, X16 }
        }

        v11 = 0xE600000000000000;
        v12 = 0x756F59726F66;
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      v12 = 0x736E616C70;
    }
  }

  else if (v27 > 4)
  {
    if (v27 != 5)
    {
      v13 = 0;
      v14 = 0;
      if (v27 == 6)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = 0xE600000000000000;
    v12 = 0x7478654E7075;
  }

  else if (v27 == 3)
  {
    v11 = 0xE700000000000000;
    v12 = 0x7972617262696CLL;
  }

  else
  {
    v11 = 0xE600000000000000;
    v12 = 0x686372616573;
  }

  sub_1E5E07DA0(v26, v27);
  v9 = v12;
  v10 = v11;
  goto LABEL_17;
}

uint64_t sub_1E64A4D00()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v10 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_1E64A5114;
  }

  else
  {
    v7 = v2[17];
    v8 = v2[18];

    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_1E64A4E24;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E64A4E24()
{
  v1 = *(v0 + 16) + *(v0 + 200) + *(*(v0 + 128) + 88);
  v2 = PlayerService.makeSessionViewController.getter();
  *(v0 + 168) = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_1E64A4F34;
  v6 = *(v0 + 96);

  return v8(v6);
}

uint64_t sub_1E64A4F34(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *(*v2 + 168);
  v7 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v8 = v4[14];
    v9 = v4[15];
    v10 = sub_1E64A5194;
  }

  else
  {
    v4[24] = a1;
    v8 = v4[14];
    v9 = v4[15];
    v10 = sub_1E64A5080;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1E64A5080()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];
  v6 = v0[24];

  return v5(v6);
}

uint64_t sub_1E64A5114()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[13];

  v4 = v0[20];
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E64A5194()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];

  (*(v4 + 8))(v2, v3);
  v5 = v0[23];
  v6 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E64A5224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  *(v8 + 72) = a7;
  *(v8 + 64) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0) - 8) + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  v10 = sub_1E65E5798();
  *(v8 + 88) = v10;
  v11 = *(v10 - 8);
  *(v8 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  sub_1E65E6058();
  *(v8 + 112) = sub_1E65E6048();
  v14 = sub_1E65E5FC8();
  *(v8 + 120) = v14;
  *(v8 + 128) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1E64A5360, v14, v13);
}

void sub_1E64A5360()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for AppComposer();
  v4 = *(v3 + 20);
  *(v0 + 208) = v4;
  v5 = v2 + v4;
  v6 = type metadata accessor for AppEnvironment();
  *(v0 + 136) = v6;
  v7 = v5 + *(v6 + 112);
  v8 = SessionService.makeSampleContentSessionConfiguration.getter();
  *(v0 + 144) = v9;
  v10 = (v2 + *(v3 + 36));
  v11 = *v10;
  v12 = v10[1];
  v13 = sub_1E65D96F8();
  (*(*(v13 - 8) + 56))(v1, 1, 1, v13);
  sub_1E5FB9CA4(v11, v12, &v31);
  v14 = v31;
  v15 = v32;
  if (v32 <= 2)
  {
    if (v32)
    {
      if (v32 == 1)
      {
        v16 = 0xE700000000000000;
        v17 = 0x65726F6C707865;
      }

      else
      {
        if (v32 != 2)
        {
LABEL_17:
          v18 = v14;
          v19 = v15;
LABEL_18:
          *(v0 + 152) = v19;
          v30 = v8 + *v8;
          v20 = v8[1];
          v21 = swift_task_alloc();
          *(v0 + 160) = v21;
          *v21 = v0;
          v21[1] = sub_1E64A5614;
          v22 = *(v0 + 104);
          v23 = *(v0 + 80);
          v24 = *(v0 + 64);
          v25 = *(v0 + 48);
          v26 = *(v0 + 56);
          v27 = *(v0 + 32);
          v28 = *(v0 + 40);
          v29 = *(v0 + 24);
          v35 = v18;
          v36 = v19;
          v34 = v23;

          __asm { BRAA            X8, X16 }
        }

        v16 = 0xE600000000000000;
        v17 = 0x756F59726F66;
      }
    }

    else
    {
      v16 = 0xE500000000000000;
      v17 = 0x736E616C70;
    }
  }

  else if (v32 > 4)
  {
    if (v32 != 5)
    {
      v18 = 0;
      v19 = 0;
      if (v32 == 6)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v16 = 0xE600000000000000;
    v17 = 0x7478654E7075;
  }

  else if (v32 == 3)
  {
    v16 = 0xE700000000000000;
    v17 = 0x7972617262696CLL;
  }

  else
  {
    v16 = 0xE600000000000000;
    v17 = 0x686372616573;
  }

  sub_1E5E07DA0(v31, v32);
  v14 = v17;
  v15 = v16;
  goto LABEL_17;
}

uint64_t sub_1E64A5614()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v6 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 168) = v0;

  sub_1E64A5BC0(v6);

  v8 = *(v2 + 128);
  v9 = *(v2 + 120);
  if (v0)
  {
    v10 = sub_1E64A5AAC;
  }

  else
  {
    v10 = sub_1E64A57AC;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1E64A57AC()
{
  v1 = *(v0 + 16) + *(v0 + 208) + *(*(v0 + 136) + 88);
  v2 = PlayerService.makeSampleContentSessionViewController.getter();
  *(v0 + 176) = v3;
  v9 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_1E64A58C0;
  v6 = *(v0 + 104);
  v7 = *(v0 + 72);

  return v9(v6, v7);
}

uint64_t sub_1E64A58C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *(*v2 + 176);
  v7 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v8 = v4[15];
    v9 = v4[16];
    v10 = sub_1E64A5B24;
  }

  else
  {
    v4[25] = a1;
    v8 = v4[15];
    v9 = v4[16];
    v10 = sub_1E64A5A0C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1E64A5A0C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];

  (*(v4 + 8))(v2, v3);

  v6 = v0[1];
  v7 = v0[25];

  return v6(v7);
}

uint64_t sub_1E64A5AAC()
{
  v1 = v0[14];

  v2 = v0[21];
  v3 = v0[13];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E64A5B24()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];

  (*(v4 + 8))(v2, v3);
  v5 = v0[24];
  v6 = v0[13];
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E64A5BC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E64A5C28()
{
  v0 = sub_1E65E3C48();
  __swift_allocate_value_buffer(v0, qword_1ED0966C0);
  __swift_project_value_buffer(v0, qword_1ED0966C0);
  return sub_1E65E3C58();
}

uint64_t sub_1E64A5C8C()
{
  v0 = sub_1E65E3C48();
  __swift_allocate_value_buffer(v0, qword_1EE2D4F38);
  __swift_project_value_buffer(v0, qword_1EE2D4F38);
  return sub_1E65E3C58();
}

uint64_t sub_1E64A5D14()
{
  v0 = sub_1E65E3C48();
  __swift_allocate_value_buffer(v0, qword_1EE2D4F10);
  __swift_project_value_buffer(v0, qword_1EE2D4F10);
  return sub_1E65E3C58();
}

uint64_t sub_1E64A5D9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1E65E3C48();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1E64A5E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v108 = a3;
  v109 = a1;
  v118 = sub_1E65E2758();
  v115 = *(v118 - 8);
  v110 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E27D8();
  v107 = *(v7 - 8);
  v106 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v105 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v116 = &v87 - v11;
  v12 = type metadata accessor for AppComposer();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8);
  v104 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v99 = &v87 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v95 = &v87 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v94 = (&v87 - v22);
  v111 = v23;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v87 - v24;
  v121 = &v87 - v24;
  v112 = sub_1E65E29E8();
  v26 = *(*(v112 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v112);
  v96 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v28;
  v103 = v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v87 - v30;
  v33 = v32;
  v34 = *(v32 + 16);
  v113 = v32 + 16;
  v114 = v34;
  v98 = &v87 - v30;
  v97 = a2;
  (v34)(&v87 - v30, a2);
  v89 = type metadata accessor for AppComposer;
  sub_1E5E1DD74(v4, v25, type metadata accessor for AppComposer);
  v102 = *(v33 + 80);
  v35 = v33;
  v36 = (v102 + 16) & ~v102;
  v37 = *(v13 + 80);
  v38 = swift_allocObject();
  v39 = *(v35 + 32);
  v120 = v38;
  v40 = v31;
  v41 = v112;
  v39(v38 + v36, v40, v112);
  v100 = v35 + 32;
  v101 = v39;
  v42 = v89;
  sub_1E5E1EA70(v121, v38 + ((v36 + v29 + v37) & ~v37), v89);
  v43 = v96;
  v114(v96, a2, v41);
  v121 = swift_allocObject();
  v39(v121 + v36, v43, v41);
  sub_1E65E5148();
  v44 = sub_1E65E5138();
  v45 = v119;
  v46 = v94;
  v47 = v42;
  sub_1E5E1DD74(v119, v94, v42);
  v48 = (v37 + 32) & ~v37;
  v49 = v111 + v48;
  v92 = v48;
  v50 = (v111 + v48) & 0xFFFFFFFFFFFFFFF8;
  v91 = v111 + v48;
  v51 = swift_allocObject();
  v96 = v51;
  v90 = &unk_1E6606198;
  v52 = v120;
  *(v51 + 16) = &unk_1E6606198;
  *(v51 + 24) = v52;
  sub_1E5E1EA70(v46, v51 + v48, v42);
  v49[v51] = 0;
  v53 = v51 + v50;
  v94 = sub_1E64A72E0;
  v54 = v121;
  *(v53 + 8) = sub_1E64A72E0;
  *(v53 + 16) = v54;
  v55 = (v51 + ((v50 + 31) & 0xFFFFFFFFFFFFFFF8));
  v56 = MEMORY[0x1E69AB380];
  *v55 = v44;
  v55[1] = v56;
  v57 = v44;
  v58 = v95;
  v59 = v42;
  sub_1E5E1DD74(v45, v95, v42);
  v60 = v111 + ((v37 + 48) & ~v37);
  v88 = (v37 + 48) & ~v37;
  v61 = swift_allocObject();
  v111 = v61;
  v62 = v90;
  v63 = v120;
  *(v61 + 16) = v90;
  *(v61 + 24) = v63;
  *(v61 + 32) = v44;
  v93 = v44;
  *(v61 + 40) = MEMORY[0x1E69AB380];
  sub_1E5E1EA70(v58, v61 + ((v37 + 48) & ~v37), v47);
  *(v61 + v60) = 0;
  v64 = (v61 + (v60 & 0xFFFFFFFFFFFFFFF8));
  v65 = v94;
  v66 = v121;
  *(v64 + 1) = v94;
  *(v64 + 2) = v66;
  v67 = v99;
  sub_1E5E1DD74(v119, v99, v59);
  v68 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v69[2] = v62;
  v69[3] = v63;
  v69[4] = v57;
  v69[5] = MEMORY[0x1E69AB380];
  sub_1E5E1EA70(v67, v69 + v88, v59);
  v70 = v69 + v68;
  *v70 = v65;
  *(v70 + 1) = v66;
  v70[16] = 0;
  v71 = v104;
  sub_1E5E1DD74(v119, v104, v59);
  v72 = swift_allocObject();
  v119 = v72;
  *(v72 + 16) = v62;
  *(v72 + 24) = v63;
  sub_1E5E1EA70(v71, v72 + v92, v59);
  v73 = sub_1E65E60A8();
  (*(*(v73 - 8) + 56))(v116, 1, 1, v73);
  v74 = MEMORY[0x1E699F460];
  v75 = v105;
  sub_1E5E1DD74(v108, v105, MEMORY[0x1E699F460]);
  v76 = v98;
  v77 = v112;
  v114(v98, v97, v112);
  v78 = v115;
  (*(v115 + 16))(v117, v109, v118);
  v79 = (*(v107 + 80) + 32) & ~*(v107 + 80);
  v80 = (v106 + v102 + v79) & ~v102;
  v81 = (v103 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = (*(v78 + 80) + v81 + 80) & ~*(v78 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = 0;
  *(v83 + 24) = 0;
  sub_1E5E1EA70(v75, v83 + v79, v74);
  v101(v83 + v80, v76, v77);
  v84 = (v83 + v81);
  *v84 = v93;
  v84[1] = MEMORY[0x1E69AB380];
  v84[2] = &unk_1E65EB918;
  v84[3] = v96;
  v84[4] = &unk_1E65FA770;
  v84[5] = v111;
  v84[6] = &unk_1E65EB920;
  v84[7] = v69;
  v84[8] = &unk_1E65FA780;
  v85 = v118;
  v84[9] = v119;
  (*(v115 + 32))(v83 + v82, v117, v85);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1E6059EAC(0, 0, v116, &unk_1E66061D0, v83);
}

uint64_t sub_1E64A6760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64A68A8, 0, 0);
}

uint64_t sub_1E64A68A8()
{
  v1 = v0[3];
  sub_1E65E2988();
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = v0[2];
  v8 = *MEMORY[0x1E69CBD48];
  v9 = sub_1E65D8F38();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v3, v8, v9);
  (*(v10 + 56))(v3, 0, 1, v9);
  v11 = (v6 + *(type metadata accessor for AppComposer() + 36));
  v12 = *v11;
  v13 = v11[1];
  v14 = sub_1E65D74E8();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  v15 = sub_1E65D9908();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  v16 = sub_1E65D9F88();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  sub_1E5FA9D34(v12, v13);
  sub_1E65D7A28();
  v17 = sub_1E65D7A38();
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1E64A6C40(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E29E8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFA78C;

  return sub_1E64A6760(a1, v1 + v6, v1 + v9);
}

unint64_t sub_1E64A6D7C(uint64_t a1)
{
  v38 = sub_1E65D76F8();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v38);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA190;
  *(inited + 32) = 3;
  v36 = inited + 32;
  v37 = a1;
  sub_1E65E29C8();
  v19 = sub_1E65E1FC8();
  v20 = *(v19 - 8);
  v34 = *(v20 + 48);
  if (v34(v17, 1, v19) == 1)
  {
    sub_1E5DFE50C(v17, &unk_1ED077750, &unk_1E66011C0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    sub_1E65E1FB8();
    (*(v20 + 8))(v17, v19);
    v21 = sub_1E65D76C8();
    v22 = v23;
    (*(v2 + 8))(v8, v38);
  }

  v39 = v21;
  v40 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
  sub_1E5DF4B74(&qword_1ED072980, &qword_1ED072978, &unk_1E65F0E80);
  sub_1E65E6848();
  *(inited + 80) = 9;
  sub_1E65E2958();
  v24 = sub_1E65D76C8();
  v26 = v25;
  (*(v2 + 8))(v6, v38);
  v39 = v24;
  v40 = v26;
  sub_1E65E6848();
  *(inited + 128) = 0;
  sub_1E65E29C8();
  v27 = v34;
  v28 = v34(v15, 1, v19);
  if (v28 == 1)
  {
    sub_1E5DFE50C(v15, &unk_1ED077750, &unk_1E66011C0);
    v29 = 0;
  }

  else
  {
    v29 = sub_1E65E1FA8();
    (*(v20 + 8))(v15, v19);
  }

  v30 = v35;
  v39 = v29;
  LOBYTE(v40) = v28 == 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762B8, &qword_1E65F52F8);
  sub_1E64B54A0();
  sub_1E65E6848();
  *(inited + 176) = 7;
  sub_1E65E29C8();
  if (v27(v30, 1, v19) == 1)
  {
    sub_1E5DFE50C(v30, &unk_1ED077750, &unk_1E66011C0);
    v31 = 0;
  }

  else
  {
    sub_1E65E1F88();
    (*(v20 + 8))(v30, v19);
    v31 = sub_1E65E5F78();
  }

  v39 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787A8, &qword_1E65FD688);
  sub_1E633EEA8();
  sub_1E65E6848();
  v32 = sub_1E6427784(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
  swift_arrayDestroy();
  return v32;
}

unint64_t sub_1E64A72E0()
{
  v1 = *(sub_1E65E29E8() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1E64A6D7C(v2);
}

uint64_t sub_1E64A7340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v8 = sub_1E65D7908();
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v10 = *(v9 + 64) + 15;
  v7[28] = swift_task_alloc();
  v11 = sub_1E65E2BF8();
  v7[29] = v11;
  v12 = *(v11 - 8);
  v7[30] = v12;
  v13 = *(v12 + 64) + 15;
  v7[31] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079428, &qword_1E6601580) - 8) + 64) + 15;
  v7[32] = swift_task_alloc();
  v15 = sub_1E65E27C8();
  v7[33] = v15;
  v16 = *(v15 - 8);
  v7[34] = v16;
  v17 = *(v16 + 64) + 15;
  v7[35] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v7[36] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A340, &qword_1E66061D8) - 8) + 64) + 15;
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v20 = sub_1E65E2A38();
  v7[41] = v20;
  v21 = *(v20 - 8);
  v7[42] = v21;
  v22 = *(v21 + 64) + 15;
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v23 = sub_1E65E2698();
  v7[47] = v23;
  v24 = *(v23 - 8);
  v7[48] = v24;
  v25 = *(v24 + 64) + 15;
  v7[49] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570) - 8) + 64) + 15;
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60) - 8) + 64) + 15;
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075500, &qword_1E65F1B18) - 8) + 64) + 15;
  v7[56] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A348, &qword_1E66061E0) - 8) + 64) + 15;
  v7[57] = swift_task_alloc();
  v31 = sub_1E65D8C68();
  v7[58] = v31;
  v32 = *(v31 - 8);
  v7[59] = v32;
  v33 = *(v32 + 64) + 15;
  v7[60] = swift_task_alloc();
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v7[65] = swift_task_alloc();
  v7[66] = swift_task_alloc();
  v34 = type metadata accessor for PageMetricsClick();
  v7[67] = v34;
  v35 = *(*(v34 - 8) + 64) + 15;
  v7[68] = swift_task_alloc();
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  v7[71] = swift_task_alloc();
  v7[72] = swift_task_alloc();
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  v7[75] = swift_task_alloc();
  v7[76] = swift_task_alloc();
  v7[77] = swift_task_alloc();
  v7[78] = swift_task_alloc();
  v7[79] = swift_task_alloc();
  v7[80] = swift_task_alloc();
  v7[81] = swift_task_alloc();
  v7[82] = swift_task_alloc();
  v7[83] = swift_task_alloc();
  v36 = sub_1E65E2CB8();
  v7[84] = v36;
  v37 = *(v36 - 8);
  v7[85] = v37;
  v38 = *(v37 + 64) + 15;
  v7[86] = swift_task_alloc();
  v7[87] = swift_task_alloc();
  v7[88] = swift_task_alloc();
  v7[89] = swift_task_alloc();
  v7[90] = swift_task_alloc();
  v7[91] = swift_task_alloc();
  v7[92] = swift_task_alloc();
  v7[93] = swift_task_alloc();
  v39 = sub_1E65E2E58();
  v7[94] = v39;
  v40 = *(v39 - 8);
  v7[95] = v40;
  v41 = *(v40 + 64) + 15;
  v7[96] = swift_task_alloc();
  v7[97] = swift_task_alloc();
  v42 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A350, &qword_1E66061E8) - 8) + 64) + 15;
  v7[98] = swift_task_alloc();
  v7[99] = swift_task_alloc();
  v7[100] = swift_task_alloc();
  v7[101] = swift_task_alloc();
  v43 = sub_1E65E27D8();
  v7[102] = v43;
  v44 = *(*(v43 - 8) + 64) + 15;
  v7[103] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64A7ACC, 0, 0);
}

unint64_t sub_1E64A7ACC()
{
  v1 = *(v0 + 816);
  sub_1E5E1DD74(*(v0 + 176), *(v0 + 824), MEMORY[0x1E699F460]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v138 = *(v0 + 824);
      v140 = v138[1];
      v139 = v138[2];
      if (!v140)
      {
        v383 = v138[2];
LABEL_112:

        goto LABEL_113;
      }

      if (!v139)
      {
        v504 = v138[1];
        goto LABEL_112;
      }

      v674 = *v138;
      v141 = *(v138 + 24);
      v143 = *(v0 + 448);
      v142 = *(v0 + 456);
      v144 = *(v0 + 200);
      sub_1E65E2748();
      sub_1E60F0514(v142);
      sub_1E5DFE50C(v143, &qword_1ED075500, &qword_1E65F1B18);
      v145 = sub_1E65E2648();
      v146 = (*(*(v145 - 8) + 48))(v142, 1, v145);
      sub_1E5DFE50C(v142, &qword_1ED07A348, &qword_1E66061E0);
      v147 = *(v0 + 440);
      if (v141)
      {
        v148 = *MEMORY[0x1E69CC908];
        v149 = sub_1E65D9D78();
        v150 = *(v149 - 8);
        (*(v150 + 104))(v147, v148, v149);
        (*(v150 + 56))(v147, 0, 1, v149);
      }

      else
      {
        v546 = sub_1E65D9D78();
        (*(*(v546 - 8) + 56))(v147, 1, 1, v546);
      }

      v547 = *(v0 + 624);
      v548 = *(v0 + 536);
      v549 = *(v0 + 464);
      v550 = *(v0 + 472);
      v686 = v549;
      v691 = *(v0 + 520);
      v551 = *(v0 + 424);
      v678 = v551;
      v682 = *(v0 + 440);
      v552 = *(v0 + 408);
      v673 = v552;
      v704 = *(v0 + 192);
      v553 = *MEMORY[0x1E69CBA50];
      (*(v550 + 104))();
      v554 = sub_1E65D74E8();
      (*(*(v554 - 8) + 56))(v551, 1, 1, v554);
      v555 = sub_1E65DA208();
      (*(*(v555 - 8) + 56))(v552, 1, 1, v555);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E65EB9E0;
      *(inited + 32) = 9;
      *(v0 + 144) = v674;
      *(v0 + 152) = v140;
      sub_1E65E6848();
      *(inited + 80) = 12;
      *(v0 + 168) = v139;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076108, &unk_1E65F4AF0);
      sub_1E61A8F10();
      sub_1E65E6848();
      v676 = sub_1E6427784(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
      swift_arrayDestroy();
      if (v146 == 1)
      {
        v557 = 0x6C50657461657243;
      }

      else
      {
        v557 = 0xD000000000000014;
      }

      if (v146 == 1)
      {
        v558 = 0xEA00000000006E61;
      }

      else
      {
        v558 = 0x80000001E66181B0;
      }

      v559 = v548[14];
      v560 = *MEMORY[0x1E69CBCC8];
      v561 = sub_1E65D8F28();
      (*(*(v561 - 8) + 104))(v547 + v559, v560, v561);
      v562 = v548[15];
      v563 = *MEMORY[0x1E69CC448];
      v564 = sub_1E65D9908();
      v565 = *(v564 - 8);
      (*(v565 + 104))(v547 + v562, v563, v564);
      (*(v565 + 56))(v547 + v562, 0, 1, v564);
      sub_1E5FAB460(v682, v547, &qword_1ED073578, &qword_1E65F0E60);
      (*(v550 + 32))(v547 + v548[5], v691, v686);
      sub_1E5FAB460(v678, v547 + v548[6], &qword_1ED072340, &qword_1E65EA410);
      *(v547 + v548[7]) = MEMORY[0x1E69E7CC0];
      sub_1E5FAB460(v673, v547 + v548[8], &qword_1ED073570, &unk_1E65F4570);
      v566 = (v547 + v548[9]);
      *v566 = 0;
      v566[1] = 0;
      v567 = (v547 + v548[10]);
      *v567 = 0;
      v567[1] = 0;
      *(v547 + v548[11]) = v676;
      v568 = (v547 + v548[12]);
      *v568 = 0;
      v568[1] = 0;
      v569 = (v547 + v548[13]);
      *v569 = v557;
      v569[1] = v558;
      v570 = *(v704 + 48);
      v692 = (v570 + *v570);
      v571 = v570[1];
      v572 = swift_task_alloc();
      *(v0 + 1048) = v572;
      *v572 = v0;
      v572[1] = sub_1E64AD1C4;
      v29 = *(v0 + 624);
LABEL_133:

      return v692(v29);
    case 2u:
    case 0xCu:
    case 0x11u:
    case 0x12u:
      sub_1E64B5420(*(v0 + 824), MEMORY[0x1E699F460]);
      goto LABEL_113;
    case 3u:
      v63 = *(v0 + 824);
      v64 = *(v0 + 512);
      v65 = *(v0 + 464);
      v66 = *(v0 + 472);
      v67 = *(v0 + 184);
      v69 = *v63;
      v68 = v63[1];
      v70 = sub_1E65E29D8();
      v71 = sub_1E637CA94(v69, v68, v70);

      v72 = MEMORY[0x1E69CBA70];
      if ((v71 & 1) == 0)
      {
        v72 = MEMORY[0x1E69CBA68];
      }

      (*(v66 + 104))(v64, *v72, v65);
      result = sub_1E65E2978();
      v74 = result;
      v75 = *(result + 16);
      if (!v75)
      {
        goto LABEL_18;
      }

      v76 = 0;
      v77 = *(v0 + 680);
      v78 = (v77 + 8);
      while (v76 < *(v74 + 16))
      {
        (*(v77 + 16))(*(v0 + 720), v74 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v76, *(v0 + 672));
        if (sub_1E65E2C88() == v69 && v79 == v68)
        {

LABEL_117:

          v516 = *(v0 + 728);
          v517 = *(v0 + 672);
          (*(*(v0 + 680) + 32))(v516, *(v0 + 720), v517);
          v82 = sub_1E65E2CA8();
          v83 = v518;
          (*v78)(v516, v517);
LABEL_118:
          v519 = *(v0 + 608);
          v520 = *(v0 + 536);
          v521 = *(v0 + 512);
          v522 = *(v0 + 464);
          v523 = *(v0 + 472);
          v524 = *(v0 + 192);
          v525 = sub_1E65D9D78();
          (*(*(v525 - 8) + 56))(v519, 1, 1, v525);
          (*(v523 + 16))(v519 + v520[5], v521, v522);
          v526 = v520[6];
          v527 = sub_1E65D74E8();
          (*(*(v527 - 8) + 56))(v519 + v526, 1, 1, v527);
          v528 = v520[8];
          v529 = sub_1E65DA208();
          (*(*(v529 - 8) + 56))(v519 + v528, 1, 1, v529);
          v530 = v520[14];
          v531 = *MEMORY[0x1E69CBCC8];
          v532 = sub_1E65D8F28();
          (*(*(v532 - 8) + 104))(v519 + v530, v531, v532);
          v533 = v520[15];
          v534 = *MEMORY[0x1E69CC4B0];
          v535 = sub_1E65D9908();
          v536 = *(v535 - 8);
          (*(v536 + 104))(v519 + v533, v534, v535);
          (*(v536 + 56))(v519 + v533, 0, 1, v535);
          v537 = MEMORY[0x1E69E7CC0];
          v538 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
          *(v519 + v520[7]) = v537;
          v539 = (v519 + v520[9]);
          *v539 = 0;
          v539[1] = 0;
          v540 = (v519 + v520[10]);
          *v540 = 0;
          v540[1] = 0;
          *(v519 + v520[11]) = v538;
          v541 = (v519 + v520[12]);
          *v541 = 0;
          v541[1] = 0;
          v542 = (v519 + v520[13]);
          *v542 = v82;
          v542[1] = v83;
          v543 = *(v524 + 56);
          v692 = (*(v524 + 48) + **(v524 + 48));
          v544 = *(*(v524 + 48) + 4);
          v545 = swift_task_alloc();
          *(v0 + 1080) = v545;
          *v545 = v0;
          v545[1] = sub_1E64ADB2C;
          v29 = *(v0 + 608);
          goto LABEL_133;
        }

        v81 = sub_1E65E6C18();

        if (v81)
        {
          goto LABEL_117;
        }

        ++v76;
        result = (*v78)(*(v0 + 720), *(v0 + 672));
        if (v75 == v76)
        {
LABEL_18:

          v82 = 0;
          v83 = 0;
          goto LABEL_118;
        }
      }

      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      return result;
    case 4u:
      v198 = *(v0 + 824);
      v199 = *(v0 + 712);
      v200 = *(v0 + 680);
      v201 = *(v0 + 672);
      v203 = *(v0 + 384);
      v202 = *(v0 + 392);
      v205 = *(v0 + 368);
      v204 = *(v0 + 376);
      v695 = *(v0 + 184);
      v206 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A318, &qword_1E66061A8) + 48);
      (*(v203 + 32))(v202, v198, v204);
      (*(v200 + 32))(v199, v198 + v206, v201);
      sub_1E65E2C88();
      sub_1E65E2A08();
      v207 = sub_1E65E29B8();
      v208 = sub_1E65E2C88();
      if (*(v207 + 16))
      {
        v210 = sub_1E6215038(v208, v209);
        v212 = v211;

        if (v212)
        {
          (*(*(v0 + 336) + 16))(*(v0 + 320), *(v207 + 56) + *(*(v0 + 336) + 72) * v210, *(v0 + 328));
          v213 = 0;
          goto LABEL_94;
        }
      }

      else
      {
      }

      v213 = 1;
LABEL_94:
      v384 = *(v0 + 328);
      v385 = *(v0 + 336);
      v387 = *(v0 + 312);
      v386 = *(v0 + 320);
      (*(v385 + 56))(v386, v213, 1, v384);
      sub_1E5FAB460(v386, v387, &qword_1ED07A340, &qword_1E66061D8);
      if ((*(v385 + 48))(v387, 1, v384) == 1)
      {
        v388 = *(v0 + 312);
        (*(*(v0 + 336) + 16))(*(v0 + 360), *(v0 + 368), *(v0 + 328));

        sub_1E5DFE50C(v388, &qword_1ED07A340, &qword_1E66061D8);
      }

      else
      {
        v389 = *(v0 + 360);
        v390 = *(v0 + 328);
        v391 = *(v0 + 336);
        v392 = *(v0 + 312);

        (*(v391 + 32))(v389, v392, v390);
      }

      v393 = *(v0 + 600);
      v394 = *(v0 + 536);
      v395 = *(v0 + 504);
      v396 = *(v0 + 464);
      v397 = *(v0 + 472);
      v398 = *(v0 + 392);
      v399 = *(v0 + 360);
      v701 = *(v0 + 192);
      v400 = sub_1E65E2A28();
      v401 = sub_1E65E2688();
      v403 = sub_1E637CA94(v401, v402, v400);

      v404 = MEMORY[0x1E69CBA70];
      if ((v403 & 1) == 0)
      {
        v404 = MEMORY[0x1E69CBA68];
      }

      (*(v397 + 104))(v395, *v404, v396);
      v405 = sub_1E65D9D78();
      (*(*(v405 - 8) + 56))(v393, 1, 1, v405);
      (*(v397 + 16))(v393 + v394[5], v395, v396);
      v406 = v394[6];
      v407 = sub_1E65D74E8();
      (*(*(v407 - 8) + 56))(v393 + v406, 1, 1, v407);
      v408 = v394[8];
      v409 = sub_1E65DA208();
      (*(*(v409 - 8) + 56))(v393 + v408, 1, 1, v409);
      v410 = sub_1E65E2688();
      v412 = v411;
      v413 = v394[14];
      v414 = *MEMORY[0x1E69CBCC8];
      v415 = sub_1E65D8F28();
      (*(*(v415 - 8) + 104))(v393 + v413, v414, v415);
      v416 = v394[15];
      v417 = sub_1E65D9908();
      (*(*(v417 - 8) + 56))(v393 + v416, 1, 1, v417);
      v418 = MEMORY[0x1E69E7CC0];
      v419 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v393 + v394[7]) = v418;
      v420 = (v393 + v394[9]);
      *v420 = 0;
      v420[1] = 0;
      v421 = (v393 + v394[10]);
      *v421 = 0;
      v421[1] = 0;
      *(v393 + v394[11]) = v419;
      v422 = (v393 + v394[12]);
      *v422 = 0;
      v422[1] = 0;
      v423 = (v393 + v394[13]);
      *v423 = v410;
      v423[1] = v412;
      v424 = *(v701 + 48);
      v692 = (v424 + *v424);
      v425 = v424[1];
      v426 = swift_task_alloc();
      *(v0 + 1096) = v426;
      *v426 = v0;
      v426[1] = sub_1E64AE000;
      v29 = *(v0 + 600);
      goto LABEL_133;
    case 7u:
      v61 = *(v0 + 824);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A320, &qword_1E66061B0);
      sub_1E5DFE50C(v61 + *(v62 + 48), &qword_1ED07A380, &qword_1E6606218);
      goto LABEL_113;
    case 8u:
      v120 = *(v0 + 824);
      v121 = *(v0 + 792);
      v122 = *(v0 + 784);
      v123 = *(v0 + 264);
      v124 = *(v0 + 272);
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A378, &qword_1E6606210);
      v126 = *(v120 + *(v125 + 48));
      v127 = *(v120 + *(v125 + 64) + 8);
      sub_1E5FAB460(v120, v121, &qword_1ED07A350, &qword_1E66061E8);
      sub_1E5DFD1CC(v121, v122, &qword_1ED07A350, &qword_1E66061E8);
      v128 = *(v124 + 48);
      if (v128(v122, 1, v123) == 1)
      {
        v129 = *(v0 + 792);
        v130 = *(v0 + 288);
        v131 = *(v0 + 264);
        sub_1E5DFE50C(*(v0 + 784), &qword_1ED07A350, &qword_1E66061E8);
        v133 = v128(v129, 1, v131) == 1 && v126 == 7;
        v134 = sub_1E65D9908();
        (*(*(v134 - 8) + 56))(v130, 1, 1, v134);
        v135 = (v133 & v127) == 0;
        if ((v133 & v127) != 0)
        {
          v136 = 0x446464416E616C50;
        }

        else
        {
          v136 = 0x6C61646F4D646441;
        }

        if (v135)
        {
          v137 = 0xEB00000000797469;
        }

        else
        {
          v137 = 0xEA00000000007961;
        }
      }

      else
      {
        v375 = *(v0 + 680);
        v376 = *(v0 + 672);
        v377 = *(v0 + 280);
        v378 = *(v0 + 256);
        v379 = *(v0 + 184);
        (*(*(v0 + 272) + 32))(v377, *(v0 + 784), *(v0 + 264));
        v380 = sub_1E65E2978();
        *(swift_task_alloc() + 16) = v377;
        sub_1E64105E0(sub_1E64B5480, v380, v378);

        if ((*(v375 + 48))(v378, 1, v376) == 1)
        {
          v381 = *(v0 + 280);
          sub_1E5DFE50C(*(v0 + 256), &qword_1ED079428, &qword_1E6601580);
          v136 = sub_1E65E27A8();
          v137 = v382;
        }

        else
        {
          v470 = *(v0 + 680);
          v471 = *(v0 + 672);
          v472 = *(v0 + 256);
          v136 = sub_1E65E2CA8();
          v137 = v473;
          (*(v470 + 8))(v472, v471);
        }

        v475 = *(v0 + 280);
        v474 = *(v0 + 288);
        v476 = *(v0 + 264);
        v477 = *(v0 + 272);
        v478 = *MEMORY[0x1E69CC4B0];
        v479 = sub_1E65D9908();
        v480 = *(v479 - 8);
        (*(v480 + 104))(v474, v478, v479);
        (*(v480 + 56))(v474, 0, 1, v479);
        (*(v477 + 8))(v475, v476);
      }

      v481 = *(v0 + 592);
      v482 = *(v0 + 536);
      v483 = *(v0 + 464);
      v484 = *(v0 + 472);
      v485 = *(v0 + 288);
      v486 = *(v0 + 192);
      v487 = sub_1E65D9D78();
      (*(*(v487 - 8) + 56))(v481, 1, 1, v487);
      (*(v484 + 104))(v481 + v482[5], *MEMORY[0x1E69CBAA0], v483);
      v488 = v482[6];
      v489 = sub_1E65D74E8();
      (*(*(v489 - 8) + 56))(v481 + v488, 1, 1, v489);
      v490 = v482[8];
      v491 = sub_1E65DA208();
      (*(*(v491 - 8) + 56))(v481 + v490, 1, 1, v491);
      v492 = v482[14];
      v493 = *MEMORY[0x1E69CBCC8];
      v494 = sub_1E65D8F28();
      (*(*(v494 - 8) + 104))(v481 + v492, v493, v494);
      sub_1E5DFD1CC(v485, v481 + v482[15], &qword_1ED072330, &qword_1E65EAB70);
      v495 = MEMORY[0x1E69E7CC0];
      v496 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v481 + v482[7]) = v495;
      v497 = (v481 + v482[9]);
      *v497 = 0;
      v497[1] = 0;
      v498 = (v481 + v482[10]);
      *v498 = 0;
      v498[1] = 0;
      *(v481 + v482[11]) = v496;
      v499 = (v481 + v482[12]);
      *v499 = 0;
      v499[1] = 0;
      v500 = (v481 + v482[13]);
      *v500 = v136;
      v500[1] = v137;
      v501 = *(v486 + 56);
      v692 = (*(v486 + 48) + **(v486 + 48));
      v502 = *(*(v486 + 48) + 4);
      v503 = swift_task_alloc();
      *(v0 + 1112) = v503;
      *v503 = v0;
      v503[1] = sub_1E64AE558;
      v29 = *(v0 + 592);
      goto LABEL_133;
    case 9u:
      v30 = *(v0 + 496);
      v31 = *(v0 + 464);
      v32 = *(v0 + 472);
      v33 = *(v0 + 432);
      v34 = *(v0 + 416);
      v35 = *(v0 + 400);
      v36 = **(v0 + 824);
      v37 = sub_1E65D9D78();
      (*(*(v37 - 8) + 56))(v33, 1, 1, v37);
      (*(v32 + 104))(v30, *MEMORY[0x1E69CBAA0], v31);
      v38 = sub_1E65D74E8();
      (*(*(v38 - 8) + 56))(v34, 1, 1, v38);
      v39 = sub_1E65DA208();
      (*(*(v39 - 8) + 56))(v35, 1, 1, v39);
      v687 = qword_1E6606238[v36];
      v693 = *&aScheduletraine[8 * v36];
      v40 = *(v0 + 584);
      v41 = *(v0 + 536);
      v42 = *(v0 + 496);
      v44 = *(v0 + 464);
      v43 = *(v0 + 472);
      v45 = *(v0 + 432);
      v679 = *(v0 + 416);
      v683 = *(v0 + 400);
      v46 = *(v0 + 192);
      v47 = v41[14];
      v48 = *MEMORY[0x1E69CBCD0];
      v49 = sub_1E65D8F28();
      (*(*(v49 - 8) + 104))(v40 + v47, v48, v49);
      v50 = v41[15];
      v51 = sub_1E65D9908();
      (*(*(v51 - 8) + 56))(v40 + v50, 1, 1, v51);
      v52 = MEMORY[0x1E69E7CC0];
      v53 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      sub_1E5FAB460(v45, v40, &qword_1ED073578, &qword_1E65F0E60);
      (*(v43 + 32))(v40 + v41[5], v42, v44);
      sub_1E5FAB460(v679, v40 + v41[6], &qword_1ED072340, &qword_1E65EA410);
      *(v40 + v41[7]) = v52;
      sub_1E5FAB460(v683, v40 + v41[8], &qword_1ED073570, &unk_1E65F4570);
      v54 = (v40 + v41[9]);
      *v54 = 0;
      v54[1] = 0;
      v55 = (v40 + v41[10]);
      *v55 = 0;
      v55[1] = 0;
      *(v40 + v41[11]) = v53;
      v56 = (v40 + v41[12]);
      *v56 = 0;
      v56[1] = 0;
      v57 = (v40 + v41[13]);
      *v57 = v693;
      v57[1] = v687;
      v58 = *(v46 + 56);
      v692 = (*(v46 + 48) + **(v46 + 48));
      v59 = *(*(v46 + 48) + 4);
      v60 = swift_task_alloc();
      *(v0 + 1128) = v60;
      *v60 = v0;
      v60[1] = sub_1E64AEA44;
      v29 = *(v0 + 584);
      goto LABEL_133;
    case 0xAu:
      v151 = *(v0 + 568);
      v152 = *(v0 + 536);
      v153 = *(v0 + 464);
      v154 = *(v0 + 472);
      v155 = *(v0 + 192);
      v156 = **(v0 + 824);
      v157 = sub_1E65D9D78();
      (*(*(v157 - 8) + 56))(v151, 1, 1, v157);
      (*(v154 + 104))(v151 + v152[5], *MEMORY[0x1E69CBA70], v153);
      v158 = v152[6];
      v159 = sub_1E65D74E8();
      (*(*(v159 - 8) + 56))(v151 + v158, 1, 1, v159);
      v160 = v152[8];
      v161 = sub_1E65DA208();
      (*(*(v161 - 8) + 56))(v151 + v160, 1, 1, v161);
      *(v0 + 160) = v156;
      v162 = sub_1E65E6BC8();
      v164 = v163;
      v165 = v152[14];
      v166 = *MEMORY[0x1E69CBCC8];
      v167 = sub_1E65D8F28();
      (*(*(v167 - 8) + 104))(v151 + v165, v166, v167);
      v168 = v152[15];
      v169 = sub_1E65D9908();
      (*(*(v169 - 8) + 56))(v151 + v168, 1, 1, v169);
      v170 = MEMORY[0x1E69E7CC0];
      v171 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v151 + v152[7]) = v170;
      v172 = (v151 + v152[9]);
      *v172 = 0;
      v172[1] = 0;
      v173 = (v151 + v152[10]);
      *v173 = 0;
      v173[1] = 0;
      *(v151 + v152[11]) = v171;
      v174 = (v151 + v152[12]);
      *v174 = 0;
      v174[1] = 0;
      v175 = (v151 + v152[13]);
      *v175 = v162;
      v175[1] = v164;
      v176 = *(v155 + 56);
      v692 = (*(v155 + 48) + **(v155 + 48));
      v177 = *(*(v155 + 48) + 4);
      v178 = swift_task_alloc();
      *(v0 + 1160) = v178;
      *v178 = v0;
      v178[1] = sub_1E64AF3AC;
      v29 = *(v0 + 568);
      goto LABEL_133;
    case 0xBu:
      v214 = *(v0 + 824);
      v215 = *(v0 + 704);
      v216 = *(v0 + 680);
      v217 = *(v0 + 672);
      v218 = *(v0 + 352);
      v220 = *(v0 + 240);
      v219 = *(v0 + 248);
      v221 = *(v0 + 232);
      v696 = *(v0 + 184);
      v222 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A328, &qword_1E66061B8) + 48);
      (*(v220 + 32))(v219, v214, v221);
      (*(v216 + 32))(v215, v214 + v222, v217);
      sub_1E65E2C88();
      sub_1E65E2A08();
      v223 = sub_1E65E29B8();
      v224 = sub_1E65E2C88();
      if (*(v223 + 16))
      {
        v226 = sub_1E6215038(v224, v225);
        v228 = v227;

        if (v228)
        {
          (*(*(v0 + 336) + 16))(*(v0 + 304), *(v223 + 56) + *(*(v0 + 336) + 72) * v226, *(v0 + 328));
          v229 = 0;
          goto LABEL_102;
        }
      }

      else
      {
      }

      v229 = 1;
LABEL_102:
      v427 = *(v0 + 328);
      v428 = *(v0 + 336);
      v430 = *(v0 + 296);
      v429 = *(v0 + 304);
      (*(v428 + 56))(v429, v229, 1, v427);
      sub_1E5FAB460(v429, v430, &qword_1ED07A340, &qword_1E66061D8);
      if ((*(v428 + 48))(v430, 1, v427) == 1)
      {
        v431 = *(v0 + 296);
        (*(*(v0 + 336) + 16))(*(v0 + 344), *(v0 + 352), *(v0 + 328));

        sub_1E5DFE50C(v431, &qword_1ED07A340, &qword_1E66061D8);
      }

      else
      {
        v433 = *(v0 + 336);
        v432 = *(v0 + 344);
        v434 = *(v0 + 328);
        v435 = *(v0 + 296);

        (*(v433 + 32))(v432, v435, v434);
      }

      v436 = *(v0 + 560);
      v437 = *(v0 + 536);
      v438 = *(v0 + 488);
      v439 = *(v0 + 464);
      v440 = *(v0 + 472);
      v441 = *(v0 + 344);
      v442 = *(v0 + 248);
      v702 = *(v0 + 192);
      v443 = sub_1E65E29F8();
      v444 = sub_1E65E2BD8();
      v446 = sub_1E637CA94(v444, v445, v443);

      v447 = MEMORY[0x1E69CBA70];
      if ((v446 & 1) == 0)
      {
        v447 = MEMORY[0x1E69CBA68];
      }

      (*(v440 + 104))(v438, *v447, v439);
      v448 = sub_1E65D9D78();
      (*(*(v448 - 8) + 56))(v436, 1, 1, v448);
      (*(v440 + 16))(v436 + v437[5], v438, v439);
      v449 = v437[6];
      v450 = sub_1E65D74E8();
      (*(*(v450 - 8) + 56))(v436 + v449, 1, 1, v450);
      v451 = v437[8];
      v452 = sub_1E65DA208();
      (*(*(v452 - 8) + 56))(v436 + v451, 1, 1, v452);
      v453 = sub_1E65E2BD8();
      v455 = v454;
      v456 = v437[14];
      v457 = *MEMORY[0x1E69CBCC8];
      v458 = sub_1E65D8F28();
      (*(*(v458 - 8) + 104))(v436 + v456, v457, v458);
      v459 = v437[15];
      v460 = sub_1E65D9908();
      (*(*(v460 - 8) + 56))(v436 + v459, 1, 1, v460);
      v461 = MEMORY[0x1E69E7CC0];
      v462 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v436 + v437[7]) = v461;
      v463 = (v436 + v437[9]);
      *v463 = 0;
      v463[1] = 0;
      v464 = (v436 + v437[10]);
      *v464 = 0;
      v464[1] = 0;
      *(v436 + v437[11]) = v462;
      v465 = (v436 + v437[12]);
      *v465 = 0;
      v465[1] = 0;
      v466 = (v436 + v437[13]);
      *v466 = v453;
      v466[1] = v455;
      v467 = *(v702 + 48);
      v692 = (v467 + *v467);
      v468 = v467[1];
      v469 = swift_task_alloc();
      *(v0 + 1176) = v469;
      *v469 = v0;
      v469[1] = sub_1E64AF860;
      v29 = *(v0 + 560);
      goto LABEL_133;
    case 0xDu:
    case 0x10u:
      v2 = *(v0 + 824);
      v3 = *(v2 + 8);

      v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A330, &qword_1E66061C0) + 48);
      v5 = sub_1E65E2718();
      (*(*(v5 - 8) + 8))(v2 + v4, v5);
      goto LABEL_113;
    case 0xEu:
      v179 = *(v0 + 824);
      v180 = *(v179 + 8);
      v181 = *(v179 + 16);
      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A338, &qword_1E66061C8);
      v183 = v182[20];
      *(v0 + 1264) = v183;
      v184 = v182[24];
      *(v0 + 1268) = v184;
      v185 = v182[28];
      *(v0 + 1272) = v185;
      v186 = v182[32];
      *(v0 + 1276) = v186;
      v694 = v181;
      if (v181)
      {
        v187 = *(v0 + 184);
        result = sub_1E65E2978();
        v188 = result;
        v189 = *(result + 16);
        if (v189)
        {
          v190 = 0;
          v191 = *(v0 + 680);
          v192 = (v191 + 8);
          while (1)
          {
            if (v190 >= *(v188 + 16))
            {
              goto LABEL_137;
            }

            (*(v191 + 16))(*(v0 + 688), v188 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v190, *(v0 + 672));
            if (sub_1E65E2C88() == v180 && v694 == v193)
            {
              break;
            }

            v195 = sub_1E65E6C18();

            if (v195)
            {
              goto LABEL_128;
            }

            ++v190;
            result = (*v192)(*(v0 + 688), *(v0 + 672));
            if (v189 == v190)
            {
              goto LABEL_50;
            }
          }

LABEL_128:

          v573 = *(v0 + 696);
          v574 = *(v0 + 672);
          (*(*(v0 + 680) + 32))(v573, *(v0 + 688), v574);
          v196 = sub_1E65E2CA8();
          v576 = v575;
          (*v192)(v573, v574);

          v197 = v576;
        }

        else
        {
LABEL_50:

          v196 = v180;
          v197 = v694;
        }

        v577 = *(v0 + 552);
        v578 = *(v0 + 536);
        v580 = *(v0 + 464);
        v579 = *(v0 + 472);
        v581 = *(v0 + 192);
        v582 = sub_1E65D9D78();
        (*(*(v582 - 8) + 56))(v577, 1, 1, v582);
        (*(v579 + 104))(v577 + v578[5], *MEMORY[0x1E69CBA70], v580);
        v583 = v578[6];
        v584 = sub_1E65D74E8();
        (*(*(v584 - 8) + 56))(v577 + v583, 1, 1, v584);
        v585 = v578[8];
        v586 = sub_1E65DA208();
        (*(*(v586 - 8) + 56))(v577 + v585, 1, 1, v586);
        v587 = v578[14];
        v588 = *MEMORY[0x1E69CBCC8];
        v589 = sub_1E65D8F28();
        (*(*(v589 - 8) + 104))(v577 + v587, v588, v589);
        v590 = v578[15];
        v591 = sub_1E65D9908();
        (*(*(v591 - 8) + 56))(v577 + v590, 1, 1, v591);
        v592 = MEMORY[0x1E69E7CC0];
        v593 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
        *(v577 + v578[7]) = v592;
        v594 = (v577 + v578[9]);
        *v594 = 0;
        v594[1] = 0;
        v595 = (v577 + v578[10]);
        *v595 = 0;
        v595[1] = 0;
        *(v577 + v578[11]) = v593;
        v596 = (v577 + v578[12]);
        *v596 = 0;
        v596[1] = 0;
        v597 = (v577 + v578[13]);
        *v597 = v196;
        v597[1] = v197;
        v598 = *(v581 + 56);
        v692 = (*(v581 + 48) + **(v581 + 48));
        v599 = *(*(v581 + 48) + 4);
        v600 = swift_task_alloc();
        *(v0 + 1192) = v600;
        *v600 = v0;
        v600[1] = sub_1E64AFDB4;
        v29 = *(v0 + 552);
        goto LABEL_133;
      }

      sub_1E5DFE50C(v179 + v186, &qword_1ED07A358, &qword_1E66061F0);
      sub_1E5DFE50C(v179 + v185, &qword_1ED07A360, &qword_1E66061F8);
      sub_1E5DFE50C(v179 + v184, &qword_1ED07A368, &qword_1E6606200);
      sub_1E5DFE50C(v179 + v183, &qword_1ED07A370, &qword_1E6606208);
LABEL_113:
      v505 = *(v0 + 824);
      v506 = *(v0 + 808);
      v507 = *(v0 + 800);
      v508 = *(v0 + 792);
      v509 = *(v0 + 784);
      v510 = *(v0 + 776);
      v511 = *(v0 + 768);
      v512 = *(v0 + 744);
      v513 = *(v0 + 736);
      v514 = *(v0 + 728);
      v629 = *(v0 + 720);
      v630 = *(v0 + 712);
      v631 = *(v0 + 704);
      v632 = *(v0 + 696);
      v633 = *(v0 + 688);
      v634 = *(v0 + 664);
      v635 = *(v0 + 656);
      v636 = *(v0 + 648);
      v637 = *(v0 + 640);
      v638 = *(v0 + 632);
      v639 = *(v0 + 624);
      v640 = *(v0 + 616);
      v641 = *(v0 + 608);
      v642 = *(v0 + 600);
      v643 = *(v0 + 592);
      v644 = *(v0 + 584);
      v645 = *(v0 + 576);
      v646 = *(v0 + 568);
      v647 = *(v0 + 560);
      v648 = *(v0 + 552);
      v649 = *(v0 + 544);
      v650 = *(v0 + 528);
      v651 = *(v0 + 520);
      v652 = *(v0 + 512);
      v653 = *(v0 + 504);
      v654 = *(v0 + 496);
      v655 = *(v0 + 488);
      v656 = *(v0 + 480);
      v657 = *(v0 + 456);
      v658 = *(v0 + 448);
      v659 = *(v0 + 440);
      v660 = *(v0 + 432);
      v661 = *(v0 + 424);
      v662 = *(v0 + 416);
      v663 = *(v0 + 408);
      v664 = *(v0 + 400);
      v665 = *(v0 + 392);
      v666 = *(v0 + 368);
      v667 = *(v0 + 360);
      v668 = *(v0 + 352);
      v669 = *(v0 + 344);
      v670 = *(v0 + 320);
      v671 = *(v0 + 312);
      v672 = *(v0 + 304);
      v675 = *(v0 + 296);
      v677 = *(v0 + 288);
      v681 = *(v0 + 280);
      v685 = *(v0 + 256);
      v690 = *(v0 + 248);
      v703 = *(v0 + 224);

      v515 = *(v0 + 8);

      return v515();
    case 0xFu:
      v235 = *(v0 + 192);
      v236 = *(v235 + 24);
      v697 = (*(v235 + 16) + **(v235 + 16));
      v237 = *(*(v235 + 16) + 4);
      v233 = swift_task_alloc();
      *(v0 + 1208) = v233;
      *v233 = v0;
      v234 = sub_1E64B02DC;
      goto LABEL_59;
    case 0x14u:
      v239 = *(v0 + 216);
      v238 = *(v0 + 224);
      v240 = *(v0 + 208);
      v241 = **(v0 + 824);
      sub_1E65D7858();
      v242 = sub_1E65D7898();
      (*(v239 + 8))(v238, v240);
      result = sub_1E65E2C08();
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_139;
      }

      if (result >= *(v242 + 16))
      {
        goto LABEL_140;
      }

      v243 = *(v0 + 544);
      v244 = *(v0 + 536);
      v246 = *(v0 + 472);
      v245 = *(v0 + 480);
      v247 = *(v0 + 464);
      v248 = *(v0 + 184);
      v249 = v242 + 16 * result;
      v250 = *(v249 + 40);
      v688 = *(v249 + 32);
      v698 = *(v0 + 192);

      v251 = sub_1E65E29A8();
      v252 = sub_1E637D138(v241, v251);

      v253 = MEMORY[0x1E69CBA70];
      if (!v252)
      {
        v253 = MEMORY[0x1E69CBA68];
      }

      (*(v246 + 104))(v245, *v253, v247);
      v254 = sub_1E65D9D78();
      (*(*(v254 - 8) + 56))(v243, 1, 1, v254);
      (*(v246 + 16))(v243 + v244[5], v245, v247);
      v255 = v244[6];
      v256 = sub_1E65D74E8();
      (*(*(v256 - 8) + 56))(v243 + v255, 1, 1, v256);
      v257 = v244[8];
      v258 = sub_1E65DA208();
      (*(*(v258 - 8) + 56))(v243 + v257, 1, 1, v258);
      v259 = v244[14];
      v260 = *MEMORY[0x1E69CBCC8];
      v261 = sub_1E65D8F28();
      (*(*(v261 - 8) + 104))(v243 + v259, v260, v261);
      v262 = v244[15];
      v263 = sub_1E65D9908();
      (*(*(v263 - 8) + 56))(v243 + v262, 1, 1, v263);
      v264 = MEMORY[0x1E69E7CC0];
      v265 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v243 + v244[7]) = v264;
      v266 = (v243 + v244[9]);
      *v266 = 0;
      v266[1] = 0;
      v267 = (v243 + v244[10]);
      *v267 = 0;
      v267[1] = 0;
      *(v243 + v244[11]) = v265;
      v268 = (v243 + v244[12]);
      *v268 = 0;
      v268[1] = 0;
      v269 = (v243 + v244[13]);
      *v269 = v688;
      v269[1] = v250;
      v270 = *(v698 + 48);
      v692 = (v270 + *v270);
      v271 = v270[1];
      v272 = swift_task_alloc();
      *(v0 + 1240) = v272;
      *v272 = v0;
      v272[1] = sub_1E64B0888;
      v29 = *(v0 + 544);
      goto LABEL_133;
    case 0x15u:
      v109 = *(v0 + 808);
      v110 = *(v0 + 776);
      v111 = *(v0 + 760);
      v112 = *(v0 + 752);
      v113 = *(v0 + 264);
      v114 = *(v0 + 272);
      v115 = *(v0 + 184);
      sub_1E65E2998();
      sub_1E65E2E48();
      (*(v111 + 8))(v110, v112);
      v116 = (*(v114 + 48))(v109, 1, v113);
      v117 = *(v0 + 808);
      if (v116 == 1)
      {
        v118 = 0xD000000000000012;
        sub_1E5DFE50C(*(v0 + 808), &qword_1ED07A350, &qword_1E66061E8);
        v119 = 0x80000001E66181D0;
        goto LABEL_132;
      }

      v364 = *(v0 + 264);
      v363 = *(v0 + 272);
      v365 = *(v0 + 184);
      v118 = sub_1E65E27A8();
      v700 = v366;
      (*(v363 + 8))(v117, v364);
      result = sub_1E65E2978();
      v367 = result;
      v368 = *(result + 16);
      if (!v368)
      {
        goto LABEL_87;
      }

      v369 = 0;
      v370 = *(v0 + 680);
      v371 = (v370 + 8);
      while (2)
      {
        if (v369 >= *(v367 + 16))
        {
          goto LABEL_138;
        }

        (*(v370 + 16))(*(v0 + 736), v367 + ((*(v370 + 80) + 32) & ~*(v370 + 80)) + *(v370 + 72) * v369, *(v0 + 672));
        if (sub_1E65E2C88() == v118 && v372 == v700)
        {
        }

        else
        {
          v374 = sub_1E65E6C18();

          if ((v374 & 1) == 0)
          {
            ++v369;
            result = (*v371)(*(v0 + 736), *(v0 + 672));
            if (v368 == v369)
            {
LABEL_87:

              v119 = v700;
              goto LABEL_132;
            }

            continue;
          }
        }

        break;
      }

      v601 = *(v0 + 744);
      v602 = *(v0 + 672);
      (*(*(v0 + 680) + 32))(v601, *(v0 + 736), v602);
      v118 = sub_1E65E2CA8();
      v604 = v603;
      (*v371)(v601, v602);

      v119 = v604;
LABEL_132:
      v605 = *(v0 + 664);
      v606 = *(v0 + 536);
      v608 = *(v0 + 464);
      v607 = *(v0 + 472);
      v609 = *(v0 + 192);
      v610 = sub_1E65D9D78();
      (*(*(v610 - 8) + 56))(v605, 1, 1, v610);
      (*(v607 + 104))(v605 + v606[5], *MEMORY[0x1E69CBA70], v608);
      v611 = v606[6];
      v612 = sub_1E65D74E8();
      (*(*(v612 - 8) + 56))(v605 + v611, 1, 1, v612);
      v613 = v606[8];
      v614 = sub_1E65DA208();
      (*(*(v614 - 8) + 56))(v605 + v613, 1, 1, v614);
      v615 = v606[14];
      v616 = *MEMORY[0x1E69CBCC8];
      v617 = sub_1E65D8F28();
      (*(*(v617 - 8) + 104))(v605 + v615, v616, v617);
      v618 = v606[15];
      v619 = sub_1E65D9908();
      (*(*(v619 - 8) + 56))(v605 + v618, 1, 1, v619);
      v620 = MEMORY[0x1E69E7CC0];
      v621 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v605 + v606[7]) = v620;
      v622 = (v605 + v606[9]);
      *v622 = 0;
      v622[1] = 0;
      v623 = (v605 + v606[10]);
      *v623 = 0;
      v623[1] = 0;
      *(v605 + v606[11]) = v621;
      v624 = (v605 + v606[12]);
      *v624 = 0;
      v624[1] = 0;
      v625 = (v605 + v606[13]);
      *v625 = v118;
      v625[1] = v119;
      v626 = *(v609 + 56);
      v692 = (*(v609 + 48) + **(v609 + 48));
      v627 = *(*(v609 + 48) + 4);
      v628 = swift_task_alloc();
      *(v0 + 832) = v628;
      *v628 = v0;
      v628[1] = sub_1E64ABAC8;
      v29 = *(v0 + 664);
      goto LABEL_133;
    case 0x16u:
      v84 = *(v0 + 656);
      v85 = *(v0 + 536);
      v86 = *(v0 + 464);
      v87 = *(v0 + 472);
      v88 = *(v0 + 192);
      v89 = sub_1E65D9D78();
      (*(*(v89 - 8) + 56))(v84, 1, 1, v89);
      (*(v87 + 104))(v84 + v85[5], *MEMORY[0x1E69CBA90], v86);
      v90 = v85[6];
      v91 = sub_1E65D74E8();
      (*(*(v91 - 8) + 56))(v84 + v90, 1, 1, v91);
      v92 = v85[8];
      v93 = sub_1E65DA208();
      (*(*(v93 - 8) + 56))(v84 + v92, 1, 1, v93);
      v94 = v85[14];
      v95 = *MEMORY[0x1E69CBCC8];
      v96 = sub_1E65D8F28();
      (*(*(v96 - 8) + 104))(v84 + v94, v95, v96);
      v97 = v85[15];
      v98 = *MEMORY[0x1E69CC458];
      v99 = sub_1E65D9908();
      v100 = *(v99 - 8);
      (*(v100 + 104))(v84 + v97, v98, v99);
      (*(v100 + 56))(v84 + v97, 0, 1, v99);
      v101 = MEMORY[0x1E69E7CC0];
      v102 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v84 + v85[7]) = v101;
      v103 = (v84 + v85[9]);
      *v103 = 0;
      v103[1] = 0;
      v104 = (v84 + v85[10]);
      *v104 = 0;
      v104[1] = 0;
      *(v84 + v85[11]) = v102;
      v105 = (v84 + v85[12]);
      *v105 = 0;
      v105[1] = 0;
      *(v84 + v85[13]) = xmmword_1E65F4AB0;
      v106 = *(v88 + 56);
      v692 = (*(v88 + 48) + **(v88 + 48));
      v107 = *(*(v88 + 48) + 4);
      v108 = swift_task_alloc();
      *(v0 + 848) = v108;
      *v108 = v0;
      v108[1] = sub_1E64ABF7C;
      v29 = *(v0 + 656);
      goto LABEL_133;
    case 0x17u:
      v321 = *(v0 + 800);
      v322 = *(v0 + 768);
      v323 = *(v0 + 760);
      v324 = *(v0 + 752);
      v325 = *(v0 + 648);
      v326 = *(v0 + 536);
      v327 = *(v0 + 472);
      v684 = *(v0 + 464);
      v689 = *(v0 + 528);
      v328 = *(v0 + 272);
      v680 = *(v0 + 264);
      v329 = *(v0 + 184);
      v699 = *(v0 + 192);
      sub_1E65E2998();
      sub_1E65E2E48();
      (*(v323 + 8))(v322, v324);
      v330 = (*(v328 + 48))(v321, 1, v680);
      *(v0 + 1256) = v330;
      sub_1E5DFE50C(v321, &qword_1ED07A350, &qword_1E66061E8);
      if (v330 == 1)
      {
        v331 = 6579265;
      }

      else
      {
        v331 = 0x657461647055;
      }

      if (v330 == 1)
      {
        v332 = 0xE300000000000000;
      }

      else
      {
        v332 = 0xE600000000000000;
      }

      v333 = MEMORY[0x1E69CBA00];
      if (v330 != 1)
      {
        v333 = MEMORY[0x1E69CBA80];
      }

      (*(v327 + 104))(v689, *v333, v684);
      v334 = sub_1E65D9D78();
      *(v0 + 864) = v334;
      v335 = *(v334 - 8);
      v336 = *(v335 + 56);
      *(v0 + 872) = v336;
      *(v0 + 880) = (v335 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v336(v325, 1, 1, v334);
      (*(v327 + 16))(v325 + v326[5], v689, v684);
      v337 = v326[6];
      v338 = sub_1E65D74E8();
      *(v0 + 888) = v338;
      v339 = *(v338 - 8);
      v340 = *(v339 + 56);
      *(v0 + 896) = v340;
      *(v0 + 904) = (v339 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v340(v325 + v337, 1, 1, v338);
      v341 = v326[8];
      v342 = sub_1E65DA208();
      *(v0 + 912) = v342;
      v343 = *(v342 - 8);
      v344 = *(v343 + 56);
      *(v0 + 920) = v344;
      *(v0 + 928) = (v343 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v344(v325 + v341, 1, 1, v342);
      v345 = v326[14];
      v346 = *MEMORY[0x1E69CBCC8];
      *(v0 + 1260) = v346;
      v347 = sub_1E65D8F28();
      *(v0 + 936) = v347;
      v348 = *(v347 - 8);
      v349 = *(v348 + 104);
      *(v0 + 944) = v349;
      *(v0 + 952) = (v348 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v349(v325 + v345, v346, v347);
      v350 = v326[15];
      v351 = sub_1E65D9908();
      *(v0 + 960) = v351;
      v352 = *(v351 - 8);
      v353 = *(v352 + 56);
      *(v0 + 968) = v353;
      *(v0 + 976) = (v352 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v353(v325 + v350, 1, 1, v351);
      v354 = MEMORY[0x1E69E7CC0];
      v355 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v325 + v326[7]) = v354;
      v356 = (v325 + v326[9]);
      *v356 = 0;
      v356[1] = 0;
      v357 = (v325 + v326[10]);
      *v357 = 0;
      v357[1] = 0;
      *(v325 + v326[11]) = v355;
      v358 = (v325 + v326[12]);
      *v358 = 0;
      v358[1] = 0;
      v359 = (v325 + v326[13]);
      *v359 = v331;
      v359[1] = v332;
      v360 = *(v699 + 48);
      *(v0 + 984) = v360;
      *(v0 + 992) = *(v699 + 56);
      v692 = (v360 + *v360);
      v361 = v360[1];
      v362 = swift_task_alloc();
      *(v0 + 1000) = v362;
      *v362 = v0;
      v362[1] = sub_1E64AC430;
      v29 = *(v0 + 648);
      goto LABEL_133;
    case 0x19u:
      v6 = *(v0 + 632);
      v7 = *(v0 + 536);
      v8 = *(v0 + 464);
      v9 = *(v0 + 472);
      v10 = *(v0 + 192);
      v11 = sub_1E65D9D78();
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
      (*(v9 + 104))(v6 + v7[5], *MEMORY[0x1E69CBA58], v8);
      v12 = v7[6];
      v13 = sub_1E65D74E8();
      (*(*(v13 - 8) + 56))(v6 + v12, 1, 1, v13);
      v14 = v7[8];
      v15 = sub_1E65DA208();
      (*(*(v15 - 8) + 56))(v6 + v14, 1, 1, v15);
      v16 = v7[14];
      v17 = *MEMORY[0x1E69CBCC8];
      v18 = sub_1E65D8F28();
      (*(*(v18 - 8) + 104))(v6 + v16, v17, v18);
      v19 = v7[15];
      v20 = sub_1E65D9908();
      (*(*(v20 - 8) + 56))(v6 + v19, 1, 1, v20);
      v21 = MEMORY[0x1E69E7CC0];
      v22 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v6 + v7[7]) = v21;
      v23 = (v6 + v7[9]);
      *v23 = 0;
      v23[1] = 0;
      v24 = (v6 + v7[10]);
      *v24 = 0;
      v24[1] = 0;
      *(v6 + v7[11]) = v22;
      v25 = (v6 + v7[12]);
      *v25 = 0;
      v25[1] = 0;
      *(v6 + v7[13]) = xmmword_1E6606180;
      v26 = *(v10 + 56);
      v692 = (*(v10 + 48) + **(v10 + 48));
      v27 = *(*(v10 + 48) + 4);
      v28 = swift_task_alloc();
      *(v0 + 1032) = v28;
      *v28 = v0;
      v28[1] = sub_1E64ACD10;
      v29 = *(v0 + 632);
      goto LABEL_133;
    case 0x1Au:
      v273 = *(v0 + 616);
      v274 = *(v0 + 536);
      v275 = *(v0 + 464);
      v276 = *(v0 + 472);
      v277 = *(v0 + 192);
      v278 = sub_1E65D9D78();
      (*(*(v278 - 8) + 56))(v273, 1, 1, v278);
      (*(v276 + 104))(v273 + v274[5], *MEMORY[0x1E69CBAA0], v275);
      v279 = v274[6];
      v280 = sub_1E65D74E8();
      (*(*(v280 - 8) + 56))(v273 + v279, 1, 1, v280);
      v281 = v274[8];
      v282 = sub_1E65DA208();
      (*(*(v282 - 8) + 56))(v273 + v281, 1, 1, v282);
      v283 = v274[14];
      v284 = *MEMORY[0x1E69CBCC8];
      v285 = sub_1E65D8F28();
      (*(*(v285 - 8) + 104))(v273 + v283, v284, v285);
      v286 = v274[15];
      v287 = *MEMORY[0x1E69CC458];
      v288 = sub_1E65D9908();
      v289 = *(v288 - 8);
      (*(v289 + 104))(v273 + v286, v287, v288);
      (*(v289 + 56))(v273 + v286, 0, 1, v288);
      v290 = MEMORY[0x1E69E7CC0];
      v291 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v273 + v274[7]) = v290;
      v292 = (v273 + v274[9]);
      *v292 = 0;
      v292[1] = 0;
      v293 = (v273 + v274[10]);
      *v293 = 0;
      v293[1] = 0;
      *(v273 + v274[11]) = v291;
      v294 = (v273 + v274[12]);
      *v294 = 0;
      v294[1] = 0;
      *(v273 + v274[13]) = xmmword_1E6606170;
      v295 = *(v277 + 56);
      v692 = (*(v277 + 48) + **(v277 + 48));
      v296 = *(*(v277 + 48) + 4);
      v297 = swift_task_alloc();
      *(v0 + 1064) = v297;
      *v297 = v0;
      v297[1] = sub_1E64AD678;
      v29 = *(v0 + 616);
      goto LABEL_133;
    case 0x1Cu:
      v298 = *(v0 + 576);
      v299 = *(v0 + 536);
      v300 = *(v0 + 464);
      v301 = *(v0 + 472);
      v302 = *(v0 + 192);
      v303 = sub_1E65D9D78();
      (*(*(v303 - 8) + 56))(v298, 1, 1, v303);
      (*(v301 + 104))(v298 + v299[5], *MEMORY[0x1E69CBA70], v300);
      v304 = v299[6];
      v305 = sub_1E65D74E8();
      (*(*(v305 - 8) + 56))(v298 + v304, 1, 1, v305);
      v306 = v299[8];
      v307 = sub_1E65DA208();
      (*(*(v307 - 8) + 56))(v298 + v306, 1, 1, v307);
      v308 = v299[14];
      v309 = *MEMORY[0x1E69CBCC8];
      v310 = sub_1E65D8F28();
      (*(*(v310 - 8) + 104))(v298 + v308, v309, v310);
      v311 = v299[15];
      v312 = sub_1E65D9908();
      (*(*(v312 - 8) + 56))(v298 + v311, 1, 1, v312);
      v313 = MEMORY[0x1E69E7CC0];
      v314 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v298 + v299[7]) = v313;
      v315 = (v298 + v299[9]);
      *v315 = 0;
      v315[1] = 0;
      v316 = (v298 + v299[10]);
      *v316 = 0;
      v316[1] = 0;
      *(v298 + v299[11]) = v314;
      v317 = (v298 + v299[12]);
      *v317 = 0;
      v317[1] = 0;
      *(v298 + v299[13]) = xmmword_1E6606160;
      v318 = *(v302 + 56);
      v692 = (*(v302 + 48) + **(v302 + 48));
      v319 = *(*(v302 + 48) + 4);
      v320 = swift_task_alloc();
      *(v0 + 1144) = v320;
      *v320 = v0;
      v320[1] = sub_1E64AEEF8;
      v29 = *(v0 + 576);
      goto LABEL_133;
    case 0x1Eu:
      v230 = *(v0 + 192);
      v231 = *(v230 + 24);
      v697 = (*(v230 + 16) + **(v230 + 16));
      v232 = *(*(v230 + 16) + 4);
      v233 = swift_task_alloc();
      *(v0 + 1224) = v233;
      *v233 = v0;
      v234 = sub_1E64B0774;
LABEL_59:
      v233[1] = v234;

      return v697();
    default:
      goto LABEL_113;
  }
}