unint64_t sub_25A901BF0()
{
  result = qword_27FA04D90;
  if (!qword_27FA04D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D90);
  }

  return result;
}

uint64_t sub_25A901C44()
{
  v0 = sub_25A9988C8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25A901C90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  if (v2 != 1)
  {
    v5 = 7894115;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6563696C73;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x65756C6176;
  if (*a2 != 1)
  {
    v8 = 7894115;
    v3 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6563696C73;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A901D74()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A901E08()
{
  *v0;
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A901E88()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A901F18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A903168();
  *a2 = result;
  return result;
}

void sub_25A901F48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  if (v2 != 1)
  {
    v5 = 7894115;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6563696C73;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A901F98()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 7894115;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6563696C73;
  }
}

uint64_t sub_25A901FE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25A903168();
  *a1 = result;
  return result;
}

uint64_t sub_25A90200C(uint64_t a1)
{
  v2 = sub_25A902FFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A902048(uint64_t a1)
{
  v2 = sub_25A902FFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A9020D0(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04D98, "l1\a");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A902FFC();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Subscript();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 40) = sub_25A910D90(v9, 0);
    *(v1 + 48) = v12;
    *(v1 + 56) = sub_25A910D90(v9, 1);
    *(v1 + 64) = v13;
    v16 = 2;
    sub_25A872ED0();
    sub_25A998938();
    *(v1 + 72) = v15[0];
    sub_25A872F24(a1, v15);
    v3 = sub_25A8963D8(v15);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A902344@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = *(v1 + 40);
  v7 = *(v4 + 48);
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = *(v4 + 32);
  v11 = *(v7 + 48);
  swift_unknownObjectRetain();
  v11(Strong, v10, ObjectType, v7);
  swift_unknownObjectRelease();
  v12 = *(v4 + 56);
  v13 = *(v4 + 64);
  v14 = swift_getObjectType();
  v15 = swift_unknownObjectWeakLoadStrong();
  v16 = *(v4 + 32);
  v17 = *(v13 + 48);
  swift_unknownObjectRetain();
  v17(v15, v16, v14, v13);
  swift_unknownObjectRelease();
  v18 = *(v4 + 40);
  v19 = *(v4 + 48);
  v20 = swift_getObjectType();
  v21 = *(v19 + 64);
  swift_unknownObjectRetain();
  v21(&v87, v20, v19);
  if (v3)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  sub_25A91185C(&v84);
  sub_25A872CE0(&v87);
  if (*(&v85 + 1))
  {
    sub_25A872D74(&v84, v91);
    sub_25A92D814(v91, v90);
    if (*(v4 + 72))
    {
      if (*(v4 + 72) != 1)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v90);
        result = __swift_destroy_boxed_opaque_existential_0Tm(v91);
        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        return result;
      }

      v23 = *(v4 + 56);
      v24 = *(v4 + 64);
      v25 = swift_getObjectType();
      v26 = *(v24 + 64);
      swift_unknownObjectRetain();
      v26(v82, v25, v24);
      swift_unknownObjectRelease();
      sub_25A911910(&v84);
      sub_25A872CE0(v82);
      if (*(&v85 + 1))
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v91);
        sub_25A87817C(&v84, &v87);
        *(a1 + 24) = &type metadata for Store;
        v27 = swift_allocObject();
        *a1 = v27;
        sub_25A87817C(&v87, v27 + 16);
        result = sub_25A872D74(v90, (v27 + 56));
        *(a1 + 32) = 0;
        return result;
      }

      sub_25A878194(&v84, &qword_27FA04C88, &unk_25A9FA8A0);
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v47 = sub_25A997BD8();
      __swift_project_value_buffer(v47, qword_27FA0FCE8);
      swift_retain_n();
      v48 = sub_25A997BB8();
      v49 = sub_25A9983A8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&v87 = v51;
        *v50 = 136315394;
        v52 = *(v4 + 56);
        v53 = *(v4 + 64);
        swift_getObjectType();
        *&v84 = v52;
        v54 = *(v53 + 8);
        v55 = sub_25A998968();
        v57 = sub_25A98CC90(v55, v56, &v87);

        *(v50 + 4) = v57;
        *(v50 + 12) = 2048;
        v58 = *(v4 + 16);

        *(v50 + 14) = v58;

        _os_log_impl(&dword_25A232000, v48, v49, "Subscript> Value %s is not Storable. lino %ld", v50, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v51);
        MEMORY[0x25F852800](v51, -1, -1);
        MEMORY[0x25F852800](v50, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      v79 = 13;
      goto LABEL_38;
    }

    v40 = *(v4 + 56);
    v41 = *(v4 + 64);
    v42 = swift_getObjectType();
    v43 = *(v41 + 64);
    swift_unknownObjectRetain();
    v43(&v87, v42, v41);
    swift_unknownObjectRelease();
    sub_25A91185C(&v84);
    sub_25A872CE0(&v87);
    if (!*(&v85 + 1))
    {
      sub_25A878194(&v84, &qword_27FA04458, &unk_25A9F7FB0);
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v59 = sub_25A997BD8();
      __swift_project_value_buffer(v59, qword_27FA0FCE8);
      swift_retain_n();
      v60 = sub_25A997BB8();
      v61 = sub_25A9983A8();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v87 = v63;
        *v62 = 136315394;
        v64 = *(v4 + 56);
        v65 = *(v4 + 64);
        swift_getObjectType();
        *&v84 = v64;
        v66 = *(v65 + 8);
        v67 = sub_25A998968();
        v69 = sub_25A98CC90(v67, v68, &v87);

        *(v62 + 4) = v69;
        *(v62 + 12) = 2048;
        v70 = *(v4 + 16);

        *(v62 + 14) = v70;

        _os_log_impl(&dword_25A232000, v60, v61, "Subscript> Invalid value %s. lino %ld", v62, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
        MEMORY[0x25F852800](v63, -1, -1);
        MEMORY[0x25F852800](v62, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      v79 = 25;
LABEL_38:
      *v78 = v79;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(v90);
      return __swift_destroy_boxed_opaque_existential_0Tm(v91);
    }

    sub_25A872D74(&v84, v82);
    sub_25A87500C(v82, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04558, &qword_25A9F8700);
    if (swift_dynamicCast())
    {
      sub_25A87817C(&v84, &v87);
      v45 = v88;
      v46 = v89;
      __swift_project_boxed_opaque_existential_1(&v87, v88);
      (*(v46 + 8))(&v84, v90, v45, v46);
      sub_25A92DE50(&v84, a1);
      sub_25A878194(&v84, &qword_27FA04458, &unk_25A9F7FB0);
      __swift_destroy_boxed_opaque_existential_0Tm(v90);
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      __swift_destroy_boxed_opaque_existential_0Tm(v82);
      *(a1 + 32) = 0;
      return __swift_destroy_boxed_opaque_existential_0Tm(&v87);
    }

    else
    {
      v86 = 0;
      v84 = 0u;
      v85 = 0u;
      sub_25A878194(&v84, &qword_27FA04560, &unk_25A9F8708);
      sub_25A87500C(v90, &v87);
      if ((swift_dynamicCast() & 1) != 0 && (__swift_project_boxed_opaque_existential_1(v82, v83), v71 = sub_25A9989D8(), v72 = sub_25A997E18(), , v73 = [v71 valueForKey_], v72, swift_unknownObjectRelease(), v73))
      {
        sub_25A9984F8();
        swift_unknownObjectRelease();
        sub_25A92D814(&v87, a1);
        __swift_destroy_boxed_opaque_existential_0Tm(&v87);
        __swift_destroy_boxed_opaque_existential_0Tm(v90);
        __swift_destroy_boxed_opaque_existential_0Tm(v91);
        result = __swift_destroy_boxed_opaque_existential_0Tm(v82);
        *(a1 + 32) = 0;
      }

      else
      {
        if (qword_27FA043C0 != -1)
        {
          swift_once();
        }

        v74 = sub_25A997BD8();
        __swift_project_value_buffer(v74, qword_27FA0FCE8);

        v75 = sub_25A997BB8();
        v76 = sub_25A9983A8();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 134217984;
          *(v77 + 4) = *(v4 + 16);

          _os_log_impl(&dword_25A232000, v75, v76, "Subscript> Not supported Subscript. lino %ld", v77, 0xCu);
          MEMORY[0x25F852800](v77, -1, -1);
        }

        else
        {
        }

        sub_25A874F54();
        swift_allocError();
        *v80 = 26;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_0Tm(v90);
        __swift_destroy_boxed_opaque_existential_0Tm(v91);
        return __swift_destroy_boxed_opaque_existential_0Tm(v82);
      }
    }
  }

  else
  {
    sub_25A878194(&v84, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v28 = sub_25A997BD8();
    __swift_project_value_buffer(v28, qword_27FA0FCE8);
    swift_retain_n();
    v29 = sub_25A997BB8();
    v30 = sub_25A9983A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v87 = v32;
      *v31 = 136315394;
      v33 = *(v4 + 40);
      v34 = *(v4 + 48);
      swift_getObjectType();
      *&v84 = v33;
      v35 = *(v34 + 8);
      v36 = sub_25A998968();
      v38 = sub_25A98CC90(v36, v37, &v87);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2048;
      v39 = *(v4 + 16);

      *(v31 + 14) = v39;

      _os_log_impl(&dword_25A232000, v29, v30, "Subscript> Invalid slice %s. lino %ld", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x25F852800](v32, -1, -1);
      MEMORY[0x25F852800](v31, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    *v44 = 24;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25A902E88()
{
  v1 = v0;
  v2 = v0[7];
  v3 = v1[8];
  swift_getObjectType();
  v4 = *(v3 + 8);
  v10 = sub_25A998968();
  MEMORY[0x25F850290](91, 0xE100000000000000);
  v6 = v1[5];
  v5 = v1[6];
  swift_getObjectType();
  v7 = *(v5 + 8);
  v8 = sub_25A998968();
  MEMORY[0x25F850290](v8);

  MEMORY[0x25F850290](93, 0xE100000000000000);
  return v10;
}

uint64_t sub_25A902F30()
{
  sub_25A872F88(v0 + 24);
  v1 = *(v0 + 40);

  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25A902FBC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t sub_25A902FFC()
{
  result = qword_27FA04DA0;
  if (!qword_27FA04DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DA0);
  }

  return result;
}

unint64_t sub_25A903064()
{
  result = qword_27FA04DA8;
  if (!qword_27FA04DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DA8);
  }

  return result;
}

unint64_t sub_25A9030BC()
{
  result = qword_27FA04DB0;
  if (!qword_27FA04DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DB0);
  }

  return result;
}

unint64_t sub_25A903114()
{
  result = qword_27FA04DB8;
  if (!qword_27FA04DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DB8);
  }

  return result;
}

uint64_t sub_25A903168()
{
  v0 = sub_25A9988C8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25A9031B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_25A9031FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25A903250(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656D616E7361;
  if (v2 != 1)
  {
    v4 = 0x6C75646F6D5F7369;
    v3 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656D616E7361;
  if (*a2 != 1)
  {
    v8 = 0x6C75646F6D5F7369;
    v7 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A90334C()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A9033E8()
{
  *v0;
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A903470()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A903508@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A9036CC();
  *a2 = result;
  return result;
}

void sub_25A903538(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656D616E7361;
  if (v2 != 1)
  {
    v5 = 0x6C75646F6D5F7369;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A903590()
{
  v1 = 0x656D616E7361;
  if (*v0 != 1)
  {
    v1 = 0x6C75646F6D5F7369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_25A9035E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25A9036CC();
  *a1 = result;
  return result;
}

uint64_t sub_25A90360C(uint64_t a1)
{
  v2 = sub_25A90394C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A903648(uint64_t a1)
{
  v2 = sub_25A90394C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25A903684@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25A903718(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_25A9036CC()
{
  v0 = sub_25A9988C8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25A903718@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04DC0, &unk_25A9FB470);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A90394C();
  sub_25A998BF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v23 = 0;
  v11 = sub_25A9988F8();
  v13 = v12;
  v19 = v11;
  v22 = 2;
  v20 = sub_25A998908();
  v21 = 1;
  v14 = sub_25A9988F8();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v19;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16;
  *(a2 + 32) = v20 & 1;
  return result;
}

unint64_t sub_25A90394C()
{
  result = qword_27FA04DC8;
  if (!qword_27FA04DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DC8);
  }

  return result;
}

unint64_t sub_25A9039B4()
{
  result = qword_27FA04DD0;
  if (!qword_27FA04DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DD0);
  }

  return result;
}

unint64_t sub_25A903A0C()
{
  result = qword_27FA04DD8;
  if (!qword_27FA04DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DD8);
  }

  return result;
}

unint64_t sub_25A903A64()
{
  result = qword_27FA04DE0;
  if (!qword_27FA04DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DE0);
  }

  return result;
}

uint64_t sub_25A903AB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x646E617265706FLL;
  }

  else
  {
    v4 = 28783;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x646E617265706FLL;
  }

  else
  {
    v6 = 28783;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A9989E8();
  }

  return v9 & 1;
}

uint64_t sub_25A903B54()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A903BCC()
{
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A903C30()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A903CA4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25A903D04(uint64_t *a1@<X8>)
{
  v2 = 28783;
  if (*v1)
  {
    v2 = 0x646E617265706FLL;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A903D38()
{
  if (*v0)
  {
    result = 0x646E617265706FLL;
  }

  else
  {
    result = 28783;
  }

  *v0;
  return result;
}

uint64_t sub_25A903D68@<X0>(char *a1@<X8>)
{
  v2 = sub_25A9988C8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_25A903DCC(uint64_t a1)
{
  v2 = sub_25A904BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A903E08(uint64_t a1)
{
  v2 = sub_25A904BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A903E90(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04DF0, &unk_25A9FBDA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A904BB0();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Unary();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v15[0]) = 0;
    v1[7] = sub_25A9988F8();
    v1[8] = v12;
    v1[5] = sub_25A90E6A4(v9, 1);
    v1[6] = v13;
    sub_25A872F24(a1, v15);
    v3 = sub_25A8963D8(v15);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A90409C@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[5];
  v7 = v4[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = v4[4];
  v11 = *(v7 + 48);
  swift_unknownObjectRetain();
  v11(Strong, v10, ObjectType, v7);
  swift_unknownObjectRelease();
  v13 = v4[7];
  v12 = v4[8];

  v14 = sub_25A904B64();
  switch(v14)
  {
    case 4:
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v33 = sub_25A997BD8();
      __swift_project_value_buffer(v33, qword_27FA0FCE8);

      v34 = sub_25A997BB8();
      v35 = sub_25A9983A8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v79[0] = v37;
        *v36 = 136315394;
        v38 = v4[7];
        v39 = v4[8];

        v40 = sub_25A98CC90(v38, v39, v79);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2048;
        *(v36 + 14) = v4[2];

        _os_log_impl(&dword_25A232000, v34, v35, "Unary> Invalid unary operator %s. lino %ld", v36, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x25F852800](v37, -1, -1);
        MEMORY[0x25F852800](v36, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      v50 = 27;
      break;
    case 2:
      v26 = v4[5];
      v27 = v4[6];
      v28 = swift_getObjectType();
      v29 = *(v27 + 64);
      swift_unknownObjectRetain();
      v29(v75, v28, v27);
      result = swift_unknownObjectRelease();
      if (v3)
      {
        return result;
      }

      sub_25A911A04(&v76);
      sub_25A872CE0(v75);
      if (v77)
      {
        sub_25A87817C(&v76, v79);
        v30 = v80;
        v31 = v81;
        __swift_project_boxed_opaque_existential_1(v79, v80);
        v32 = (*(v31 + 8))(v30, v31);
        *(a1 + 24) = MEMORY[0x277D839B0];
        *a1 = (v32 & 1) == 0;
        *(a1 + 32) = 0;
        return __swift_destroy_boxed_opaque_existential_0Tm(v79);
      }

      sub_25A878194(&v76, &qword_27FA047E8, &unk_25A9FBF80);
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v51 = sub_25A997BD8();
      __swift_project_value_buffer(v51, qword_27FA0FCE8);
      swift_retain_n();
      v52 = sub_25A997BB8();
      v53 = sub_25A9983A8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v79[0] = v55;
        *v54 = 136315394;
        v56 = v4[5];
        v57 = v4[6];
        swift_getObjectType();
        *&v76 = v56;
        v58 = *(v57 + 8);
        v59 = sub_25A998968();
        v61 = sub_25A98CC90(v59, v60, v79);

        *(v54 + 4) = v61;
        *(v54 + 12) = 2048;
        v62 = v4[2];

        *(v54 + 14) = v62;

        _os_log_impl(&dword_25A232000, v52, v53, "Unary> Operand %s is not Truthiness. lino %ld", v54, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v55);
        MEMORY[0x25F852800](v55, -1, -1);
        MEMORY[0x25F852800](v54, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      v50 = 29;
      break;
    case 1:
      v15 = v4[5];
      v16 = v4[6];
      v17 = swift_getObjectType();
      v18 = *(v16 + 64);
      swift_unknownObjectRetain();
      v18(v75, v17, v16);
      result = swift_unknownObjectRelease();
      if (v3)
      {
        return result;
      }

      sub_25A911B6C(&v76);
      sub_25A872CE0(v75);
      if (v77)
      {
        sub_25A87817C(&v76, v79);
        v20 = v80;
        v21 = v81;
        __swift_project_boxed_opaque_existential_1(v79, v80);
        v22 = *(v21 + 8);
        v77 = v20;
        v78 = v21;
        __swift_allocate_boxed_opaque_existential_0(&v76);
        v22(v20, v21);
        v23 = v77;
        v24 = __swift_project_boxed_opaque_existential_1(&v76, v77);
        *(a1 + 24) = v23;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
        (*(*(v23 - 8) + 16))(boxed_opaque_existential_0, v24, v23);
        *(a1 + 32) = 0;
        __swift_destroy_boxed_opaque_existential_0Tm(&v76);
        return __swift_destroy_boxed_opaque_existential_0Tm(v79);
      }

      sub_25A878194(&v76, &qword_27FA04DE8, &qword_25A9FB5F0);
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v63 = sub_25A997BD8();
      __swift_project_value_buffer(v63, qword_27FA0FCE8);
      swift_retain_n();
      v64 = sub_25A997BB8();
      v65 = sub_25A9983A8();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v79[0] = v67;
        *v66 = 136315394;
        v68 = v4[5];
        v69 = v4[6];
        swift_getObjectType();
        *&v76 = v68;
        v70 = *(v69 + 8);
        v71 = sub_25A998968();
        v73 = sub_25A98CC90(v71, v72, v79);

        *(v66 + 4) = v73;
        *(v66 + 12) = 2048;
        v74 = v4[2];

        *(v66 + 14) = v74;

        _os_log_impl(&dword_25A232000, v64, v65, "Unary> Operand %s is not Negationable. lino %ld", v66, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v67);
        MEMORY[0x25F852800](v67, -1, -1);
        MEMORY[0x25F852800](v66, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      v50 = 28;
      break;
    default:
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v41 = sub_25A997BD8();
      __swift_project_value_buffer(v41, qword_27FA0FCE8);

      v42 = sub_25A997BB8();
      v43 = sub_25A9983A8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v79[0] = v45;
        *v44 = 136315394;
        v46 = v4[7];
        v47 = v4[8];

        v48 = sub_25A98CC90(v46, v47, v79);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2048;
        *(v44 + 14) = v4[2];

        _os_log_impl(&dword_25A232000, v42, v43, "Unary> Unary operator %s not supported yet. lino %ld", v44, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v45);
        MEMORY[0x25F852800](v45, -1, -1);
        MEMORY[0x25F852800](v44, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      v50 = 30;
      break;
  }

  *v49 = v50;
  return swift_willThrow();
}

uint64_t sub_25A904990()
{
  v1 = v0;
  v2 = v0[7];
  v3 = v1[8];

  result = sub_25A904B64();
  if (result <= 1u)
  {
    if (result)
    {
      v6 = 45;
    }

    else
    {
      v6 = 43;
    }

    v5 = 0xE100000000000000;
    goto LABEL_10;
  }

  if (result == 2)
  {
    v5 = 0xE300000000000000;
    v6 = 7630702;
    goto LABEL_10;
  }

  if (result == 3)
  {
    v5 = 0xE100000000000000;
    v6 = 126;
LABEL_10:
    MEMORY[0x25F850290](v6, v5);

    MEMORY[0x25F850290](32, 0xE100000000000000);
    v7 = v1[5];
    v8 = v1[6];
    swift_getObjectType();
    v9 = *(v8 + 8);
    swift_unknownObjectRetain();
    v10 = sub_25A997EB8();
    MEMORY[0x25F850290](v10);

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A904AA8()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);
}

uint64_t sub_25A904AD8()
{
  sub_25A872F88(v0 + 24);
  v1 = *(v0 + 40);

  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_25A904B64()
{
  v0 = sub_25A9988C8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25A904BB0()
{
  result = qword_27FA04DF8;
  if (!qword_27FA04DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DF8);
  }

  return result;
}

unint64_t sub_25A904C18()
{
  result = qword_27FA04E00;
  if (!qword_27FA04E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E00);
  }

  return result;
}

unint64_t sub_25A904C70()
{
  result = qword_27FA04E08;
  if (!qword_27FA04E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E08);
  }

  return result;
}

unint64_t sub_25A904CC8()
{
  result = qword_27FA04E10;
  if (!qword_27FA04E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E10);
  }

  return result;
}

uint64_t sub_25A904D1C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_25A904D7C@<X0>(char *a1@<X8>)
{
  v2 = sub_25A9988C8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_25A904DE0(uint64_t a1)
{
  v2 = sub_25A905578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A904E1C(uint64_t a1)
{
  v2 = sub_25A905578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A904EA4(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E18, "H-\a");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A905578();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for SetComp();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A910D40(v9, 0);
    v1[6] = v12;
    v1[7] = sub_25A94B2EC(v9, 1);
    sub_25A872F24(a1, v14);
    v3 = sub_25A8963D8(v14);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A9050A8@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v6 = sub_25A936284();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = v4[4];
  swift_beginAccess();
  v9 = v6[3];
  v6[3] = Strong;
  v6[4] = v8;
  swift_unknownObjectRelease();
  v10 = v4[5];
  v11 = v4[6];
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 48);
  swift_unknownObjectRetain();

  v13(v14, &off_286C11D08, ObjectType, v11);
  swift_unknownObjectRelease();
  v15 = v4[7];
  v16 = *(v15 + 16);
  if (v16)
  {
    v32 = v4;
    v33 = a1;

    v17 = (v15 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v20 = swift_getObjectType();
      v21 = *(v19 + 48);

      swift_unknownObjectRetain();
      v21(v6, &off_286C11D08, v20, v19);
      swift_unknownObjectRelease();
      v17 += 2;
      --v16;
    }

    while (v16);

    v4 = v32;
    v22 = v32[7];
    v23 = *(v22 + 16);
    v35 = MEMORY[0x277D84FA0];
    if (v23)
    {
      v34 = MEMORY[0x277D84F90];
      swift_retain_n();

      sub_25A998748();
      type metadata accessor for Comprehension();
      v24 = 32;
      do
      {
        v25 = *(v22 + v24);
        swift_dynamicCastClassUnconditional();
        swift_unknownObjectRetain();
        sub_25A998718();
        v26 = *(v34 + 16);
        sub_25A998758();
        sub_25A998768();
        sub_25A998728();
        v24 += 16;
        --v23;
      }

      while (v23);
      a1 = v33;
      v27 = v34;
      goto LABEL_11;
    }

    a1 = v33;
  }

  else
  {
    v35 = MEMORY[0x277D84FA0];
  }

  swift_retain_n();

  v27 = MEMORY[0x277D84F90];
LABEL_11:

  sub_25A935230(0, v27, v6, &off_286C11D08, &v35, v4);

  if (v3)
  {
  }

  else
  {

    v29 = v35;
    v30 = type metadata accessor for SharedMutableSet();
    v31 = swift_allocObject();
    *(v31 + 16) = MEMORY[0x277D84FA0];
    swift_beginAccess();
    *(v31 + 16) = v29;
    *(a1 + 24) = v30;

    *a1 = v31;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_25A905428(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 64);
  swift_unknownObjectRetain();
  v6(v9, ObjectType, v4);
  result = swift_unknownObjectRelease();
  if (!v2)
  {
    sub_25A9117A8(&v10);
    sub_25A872CE0(v9);
    if (*(&v11 + 1))
    {
      v13[0] = v10;
      v13[1] = v11;
      v14 = v12;
      sub_25A874FB0(v13, v9);
      sub_25A98D328(&v10, v9);
      sub_25A8795A0(&v10);
      return sub_25A8795A0(v13);
    }

    else
    {
      sub_25A8961B8(&v10);
      sub_25A874F54();
      swift_allocError();
      *v8 = 108;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_25A905578()
{
  result = qword_27FA04E20;
  if (!qword_27FA04E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E20);
  }

  return result;
}

unint64_t sub_25A9055E0()
{
  result = qword_27FA04E28;
  if (!qword_27FA04E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E28);
  }

  return result;
}

unint64_t sub_25A905638()
{
  result = qword_27FA04E30;
  if (!qword_27FA04E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E30);
  }

  return result;
}

unint64_t sub_25A905690()
{
  result = qword_27FA04E38;
  if (!qword_27FA04E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E38);
  }

  return result;
}

uint64_t sub_25A9056E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1936159329;
  if (v2 != 1)
  {
    v4 = 0x7364726F7779656BLL;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E6F6974636E7566;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1936159329;
  if (*a2 != 1)
  {
    v8 = 0x7364726F7779656BLL;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F6974636E7566;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A9057D8()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A905874()
{
  *v0;
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A9058FC()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A905994@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A9071E4();
  *a2 = result;
  return result;
}

void sub_25A9059C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE400000000000000;
  v5 = 1936159329;
  if (v2 != 1)
  {
    v5 = 0x7364726F7779656BLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F6974636E7566;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A905A1C()
{
  v1 = 1936159329;
  if (*v0 != 1)
  {
    v1 = 0x7364726F7779656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6974636E7566;
  }
}

uint64_t sub_25A905A70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25A9071E4();
  *a1 = result;
  return result;
}

uint64_t sub_25A905A98(uint64_t a1)
{
  v2 = sub_25A907078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A905AD4(uint64_t a1)
{
  v2 = sub_25A907078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A905B5C(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E58, &unk_25A9FBD90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A907078();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Call();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[7] = sub_25A90E604(v9, 0);
    v1[8] = v12;
    v1[5] = sub_25A94B174(v9, 1);
    v1[6] = sub_25A94B174(v9, 2);
    sub_25A872F24(a1, v14);
    v3 = sub_25A8963D8(v14);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A905DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = v1[7];
  v4 = v2[8];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = v2[4];
  v8 = *(v4 + 48);
  swift_unknownObjectRetain();
  v8(Strong, v7, ObjectType, v4);
  swift_unknownObjectRelease();
  v96 = v2;
  v9 = v2[5];
  v10 = *(v9 + 16);

  v94 = v10;
  if (v10)
  {
    v11 = 0;
    v12 = (v9 + 40);
    while (v11 < *(v9 + 16))
    {
      ++v11;
      v14 = *(v12 - 1);
      v13 = *v12;
      v15 = swift_getObjectType();
      v16 = swift_unknownObjectWeakLoadStrong();
      v17 = v96[4];
      v18 = *(v13 + 48);
      swift_unknownObjectRetain();
      v18(v16, v17, v15, v13);
      swift_unknownObjectRelease();
      v12 += 2;
      if (v94 == v11)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

LABEL_5:

  v19 = v96[6];
  v20 = *(v19 + 16);

  v95 = v20;
  if (v20)
  {
    v21 = 0;
    v22 = (v19 + 40);
    while (v21 < *(v19 + 16))
    {
      ++v21;
      v23 = *(v22 - 1);
      v24 = *v22;
      v25 = swift_getObjectType();
      v26 = swift_unknownObjectWeakLoadStrong();
      v27 = v96[4];
      v28 = *(v24 + 48);
      swift_unknownObjectRetain();
      v28(v26, v27, v25, v24);
      swift_unknownObjectRelease();
      v22 += 2;
      if (v95 == v21)
      {
        goto LABEL_9;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    v111 = 0;
    v109 = 0u;
    v110 = 0u;
    sub_25A878194(&v109, &qword_27FA04728, &unk_25A9FD740);

    sub_25A874F54();
    swift_allocError();
    *v89 = 23;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0Tm(&v103);
    return __swift_destroy_boxed_opaque_existential_0Tm(v112);
  }

LABEL_9:

  v29 = v96[7];
  v30 = v96[8];
  v31 = swift_getObjectType();
  v32 = *(v30 + 64);
  swift_unknownObjectRetain();
  v32(&v103, v31, v30);
  if (v92)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  sub_25A911B80(&v109);
  sub_25A872CE0(&v103);
  if (!*(&v110 + 1))
  {
    sub_25A878194(&v109, &qword_27FA04760, &unk_25A9F9BB0);
    if (qword_27FA043C0 == -1)
    {
LABEL_24:
      v47 = sub_25A997BD8();
      __swift_project_value_buffer(v47, qword_27FA0FCE8);
      swift_retain_n();
      v48 = sub_25A997BB8();
      v49 = sub_25A9983A8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v112[0] = v51;
        *v50 = 136315394;
        v53 = v96[7];
        v52 = v96[8];
        swift_getObjectType();
        *&v109 = v53;
        v54 = *(v52 + 8);
        v55 = sub_25A998968();
        v57 = sub_25A98CC90(v55, v56, v112);

        *(v50 + 4) = v57;
        *(v50 + 12) = 2048;
        v58 = v96[2];

        *(v50 + 14) = v58;

        _os_log_impl(&dword_25A232000, v48, v49, "Call> %s is not a Function. line %ld", v50, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v51);
        MEMORY[0x25F852800](v51, -1, -1);
        MEMORY[0x25F852800](v50, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      *v86 = 41;
      return swift_willThrow();
    }

LABEL_65:
    swift_once();
    goto LABEL_24;
  }

  sub_25A87817C(&v109, v112);
  v34 = v96;
  v35 = v96[5];
  v36 = *(v35 + 16);
  if (!v36)
  {
    v115 = MEMORY[0x277D84F90];
LABEL_35:
    v68 = v34[6];
    v69 = *(v68 + 16);

    if (!v69)
    {
      v72 = MEMORY[0x277D84F98];
LABEL_58:

      v87 = v113;
      v88 = v114;
      __swift_project_boxed_opaque_existential_1(v112, v113);
      (*(v88 + 16))(&v109, v115, v72, v87, v88);

      sub_25A92D814(&v109, a1);
      __swift_destroy_boxed_opaque_existential_0Tm(&v109);
      *(a1 + 32) = 0;
      return __swift_destroy_boxed_opaque_existential_0Tm(v112);
    }

    v70 = 0;
    v71 = v68 + 40;
    v72 = MEMORY[0x277D84F98];
LABEL_37:
    v90 = v72;
    v73 = (v71 + 16 * v70);
    while (1)
    {
      if (v70 >= *(v68 + 16))
      {
        goto LABEL_64;
      }

      v74 = *(v73 - 1);
      v75 = *v73;
      v76 = swift_getObjectType();
      v77 = *(v75 + 64);
      swift_unknownObjectRetain();
      v77(&v100, v76, v75);
      sub_25A872C84(&v100, &v97);
      if (v99)
      {
        sub_25A872CE0(&v97);
        v99 = v102;
        v97 = v100;
        v98 = v101;
        if (v102 != 1)
        {
          sub_25A872CE0(&v97);
          v103 = 0u;
          v104 = 0u;
          v105 = 0;
LABEL_39:
          swift_unknownObjectRelease();
          sub_25A878194(&v103, &qword_27FA04730, "\\N\a");
          goto LABEL_40;
        }

        v78 = v100;
        v79 = v101;
      }

      else
      {
        sub_25A872CE0(&v100);
        v78 = v97;
        v79 = v98;
      }

      v106 = v78;
      v107 = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04740, "bN\a");
      if ((swift_dynamicCast() & 1) == 0)
      {
        v105 = 0;
        v103 = 0u;
        v104 = 0u;
      }

      if (!*(&v104 + 1))
      {
        goto LABEL_39;
      }

      sub_25A87817C(&v103, &v109);
      v80 = *(&v110 + 1);
      v81 = v111;
      __swift_project_boxed_opaque_existential_1(&v109, *(&v110 + 1));
      v82 = (*(v81 + 8))(v80, v81);
      v83 = sub_25A906A10(v82);

      if (v83)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v103 = v90;
        sub_25A8F81B4(v83, sub_25A8F793C, 0, isUniquelyReferenced_nonNull_native, &v103);
        swift_unknownObjectRelease();

        v72 = v103;
        __swift_destroy_boxed_opaque_existential_0Tm(&v109);
        v71 = v68 + 40;
        if (v69 - 1 == v70++)
        {
          goto LABEL_58;
        }

        goto LABEL_37;
      }

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(&v109);
LABEL_40:
      ++v70;
      v73 += 2;
      if (v69 == v70)
      {
        v72 = v90;
        goto LABEL_58;
      }
    }
  }

  v108 = MEMORY[0x277D84F90];

  sub_25A937550(0, v36, 0);
  v37 = 0;
  v38 = v108;
  v39 = (v35 + 40);
  do
  {
    if (v37 >= *(v35 + 16))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v93 = v38;
    v40 = *(v39 - 1);
    v41 = *v39;
    v42 = swift_getObjectType();
    v43 = *(v41 + 64);
    swift_unknownObjectRetain();
    v43(&v109, v42, v41);
    sub_25A872C84(&v109, &v103);
    if (v105 && (sub_25A872CE0(&v103), sub_25A872C84(&v109, &v103), v105 != 1))
    {
      sub_25A872CE0(&v103);
      *(&v98 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      v44 = swift_allocObject();
      *&v97 = v44;
      *(v44 + 16) = 0u;
      *(v44 + 32) = 0u;
    }

    else
    {
      v106 = v103;
      v107 = v104;
      sub_25A92DE50(&v106, &v97);
      sub_25A878194(&v106, &qword_27FA04458, &unk_25A9F7FB0);
    }

    sub_25A872CE0(&v109);
    v38 = v93;
    sub_25A92D814(&v97, &v100);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(&v97);
    v108 = v93;
    v46 = *(v93 + 2);
    v45 = *(v93 + 3);
    if (v46 >= v45 >> 1)
    {
      sub_25A937550((v45 > 1), v46 + 1, 1);
      v38 = v108;
    }

    ++v37;
    *(v38 + 2) = v46 + 1;
    sub_25A872D74(&v100, &v38[32 * v46 + 32]);
    v39 += 2;
  }

  while (v36 != v37);

  v34 = v96;
  v59 = v96[5];
  v62 = *(v59 + 16);
  v60 = v59 + 16;
  v61 = v62;
  v115 = v38;
  if (!v62)
  {
    goto LABEL_35;
  }

  v63 = *(v60 + 16 * v61);
  type metadata accessor for Starred();
  if (!swift_dynamicCastClass() || !*(v38 + 2))
  {
    goto LABEL_34;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = sub_25A8F7A14(v38);
    v64 = *(v38 + 2);
    if (!v64)
    {
      goto LABEL_67;
    }

LABEL_32:
    *(v38 + 2) = v64 - 1;
    v115 = v38;
    sub_25A872D74(&v38[32 * v64], &v103);
    sub_25A87500C(&v103, &v100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (!swift_dynamicCast())
    {
      goto LABEL_62;
    }

    v65 = *(&v110 + 1);
    v66 = v111;
    __swift_project_boxed_opaque_existential_1(&v109, *(&v110 + 1));
    v67 = (*(v66 + 8))(v65, v66);
    __swift_destroy_boxed_opaque_existential_0Tm(&v109);
    sub_25A933208(v67);
    __swift_destroy_boxed_opaque_existential_0Tm(&v103);
LABEL_34:
    v34 = v96;
    goto LABEL_35;
  }

  v64 = *(v38 + 2);
  if (v64)
  {
    goto LABEL_32;
  }

LABEL_67:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_25A906A10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CC8, &unk_25A9FDC30);
    v2 = sub_25A998888();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_25A874FB0(*(a1 + 48) + 40 * v14, v29);
        sub_25A87500C(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_25A874FB0(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_25A87500C(v27 + 8, v22);
        sub_25A878194(v26, &qword_27FA04E50, &qword_25AA00630);
        v23 = v20;
        sub_25A872D74(v22, v24);
        v15 = v23;
        sub_25A872D74(v24, v25);
        sub_25A872D74(v25, &v23);
        result = sub_25A8F3600(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = sub_25A872D74(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_25A872D74(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_25A878194(v26, &qword_27FA04E50, &qword_25AA00630);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25A906CEC()
{
  v1 = v0;
  v2 = v0[7];
  v3 = v1[8];
  swift_getObjectType();
  v4 = *(v3 + 8);
  sub_25A9989B8();
  MEMORY[0x25F850290](40, 0xE100000000000000);
  v5 = v1[5];

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04450, "lT\a");
  v7 = MEMORY[0x25F850440](v5, v6);
  v9 = v8;

  MEMORY[0x25F850290](v7, v9);

  MEMORY[0x25F850290](8236, 0xE200000000000000);
  v10 = v1[6];

  v12 = MEMORY[0x25F850440](v11, v6);
  v14 = v13;

  MEMORY[0x25F850290](v12, v14);

  return 0;
}

uint64_t sub_25A906E0C()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[7];

  return swift_unknownObjectRelease();
}

uint64_t sub_25A906E44()
{
  sub_25A872F88((v0 + 3));
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[7];

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25A906ED8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25A906F18@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_25A87500C(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_25A872D74(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_25A878194(v22, &qword_27FA04E48, &qword_25A9FB8F0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_25A907078()
{
  result = qword_27FA04E60;
  if (!qword_27FA04E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E60);
  }

  return result;
}

unint64_t sub_25A9070E0()
{
  result = qword_27FA04E68;
  if (!qword_27FA04E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E68);
  }

  return result;
}

unint64_t sub_25A907138()
{
  result = qword_27FA04E70;
  if (!qword_27FA04E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E70);
  }

  return result;
}

unint64_t sub_25A907190()
{
  result = qword_27FA04E78;
  if (!qword_27FA04E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E78);
  }

  return result;
}

uint64_t sub_25A9071E4()
{
  v0 = sub_25A9988C8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25A907230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) == 0))
  {
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E88, &qword_25A9FBA48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    goto LABEL_11;
  }

  v6 = *(&v22 + 1);
  if (!*(&v22 + 1))
  {
LABEL_11:
    v13 = &unk_27FA04E80;
    v14 = &unk_25A9FDCC0;
    v15 = &v21;
    goto LABEL_12;
  }

  v7 = v23;
  __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
  v8 = (*(v7 + 8))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v21);
  if (*(a1 + 16) && (v9 = sub_25A8F3600(1835365481, 0xE400000000000000), (v10 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v9, &v17);
    if (swift_dynamicCast())
    {
      if (*(&v19 + 1))
      {
        v21 = v18;
        v22 = v19;
        v23 = v20;
        v11 = sub_25A9197D0(&v21, v8);

        *(a2 + 24) = MEMORY[0x277D839B0];
        *a2 = v11 & 1;
        return sub_25A8795A0(&v21);
      }
    }

    else
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
    }
  }

  else
  {

    v18 = 0u;
    v19 = 0u;
    v20 = 0;
  }

  v13 = &qword_27FA04610;
  v14 = &qword_25A9FDA50;
  v15 = &v18;
LABEL_12:
  sub_25A878194(v15, v13, v14);
  sub_25A874F54();
  swift_allocError();
  *v16 = 127;
  return swift_willThrow();
}

uint64_t sub_25A907470@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E88, &qword_25A9FBA48);
    if (swift_dynamicCast())
    {
      v6 = *(&v14 + 1);
      if (*(&v14 + 1))
      {
        v7 = v15;
        __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
        v8 = (*(v7 + 8))(v6, v7);
        __swift_destroy_boxed_opaque_existential_0Tm(&v13);
        v9 = *(v8 + 16);

        a2[3] = MEMORY[0x277D83B88];
        *a2 = v9;
        return result;
      }
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  sub_25A878194(&v13, &qword_27FA04E80, &qword_25A9FDCC0);
  sub_25A874F54();
  swift_allocError();
  *v11 = 127;
  return swift_willThrow();
}

uint64_t sub_25A9075E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) == 0))
  {
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    goto LABEL_10;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E88, &qword_25A9FBA48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_10;
  }

  v6 = *(&v19 + 1);
  if (!*(&v19 + 1))
  {
LABEL_10:
    sub_25A878194(&v18, &qword_27FA04E80, &qword_25A9FDCC0);
    sub_25A874F54();
    swift_allocError();
    *v16 = 127;
    return swift_willThrow();
  }

  v7 = v20;
  __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
  v8 = (*(v7 + 8))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v18);
  v9 = -1 << *(v8 + 32);
  v10 = ~v9;
  v11 = -v9;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v8 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E90, &qword_25A9FBA50);
  v14 = swift_allocObject();
  v14[2] = v8;
  v14[3] = v8 + 56;
  v14[4] = v10;
  v14[5] = 0;
  v14[6] = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E98, &qword_25A9FBA58);
  a2[3] = result;
  *a2 = v14;
  return result;
}

uint64_t sub_25A9077B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v4 = sub_25A8F3600(1718379891, 0xE400000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E88, &qword_25A9FBA48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_13;
  }

  v6 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v7 = v20;
    __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    v8 = (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0Tm(&v18);
    if (*(a1 + 16))
    {
      v9 = sub_25A8F3600(0x726568746FLL, 0xE500000000000000);
      if (v10)
      {
        sub_25A87500C(*(a1 + 56) + 32 * v9, v17);
        if (swift_dynamicCast())
        {
          v11 = *(&v19 + 1);
          if (*(&v19 + 1))
          {
            v12 = v20;
            __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
            v13 = (*(v12 + 8))(v11, v12);
            __swift_destroy_boxed_opaque_existential_0Tm(&v18);
            v14 = sub_25A907A00(v8, v13);

            *(a2 + 24) = MEMORY[0x277D839B0];
            *a2 = v14 & 1;
            return result;
          }
        }

        else
        {
          v20 = 0;
          v18 = 0u;
          v19 = 0u;
        }

        goto LABEL_13;
      }
    }

LABEL_12:
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
  }

LABEL_13:
  sub_25A878194(&v18, &qword_27FA04E80, &qword_25A9FDCC0);
  sub_25A874F54();
  swift_allocError();
  *v16 = 127;
  return swift_willThrow();
}

uint64_t sub_25A907A00(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v19 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      sub_25A874FB0(*(result + 48) + 40 * (v10 | (v3 << 6)), v23);
      v21[0] = v23[0];
      v21[1] = v23[1];
      v22 = v24;
      v13 = *(a2 + 40);
      v14 = sub_25A998558();
      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {
        sub_25A874FB0(*(a2 + 48) + 40 * v16, v20);
        v18 = MEMORY[0x25F850890](v20, v21);
        sub_25A8795A0(v20);
        if (v18)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_25A8795A0(v21);
      result = v19;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_25A8795A0(v21);
    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25A907BBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E88, &qword_25A9FBA48);
    if (swift_dynamicCast())
    {
      v6 = *(&v15 + 1);
      if (*(&v15 + 1))
      {
        v7 = v16;
        __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
        (*(v7 + 8))(v6, v7);
        __swift_destroy_boxed_opaque_existential_0Tm(&v14);
        v8 = sub_25A998228();
        v10 = v9;

        a2[3] = MEMORY[0x277D837D0];
        *a2 = v8;
        a2[1] = v10;
        return result;
      }
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
  }

  sub_25A878194(&v14, &qword_27FA04E80, &qword_25A9FDCC0);
  sub_25A874F54();
  swift_allocError();
  *v12 = -95;
  return swift_willThrow();
}

uint64_t sub_25A907E24(uint64_t a1, void (*a2)(void))
{
  sub_25A936F00(a1);
  a2();
}

uint64_t sub_25A907E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x277D84F90];
  v9 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  type metadata accessor for Function();
  v10 = swift_allocObject();
  *(v10 + 32) = v8;
  *(v10 + 40) = v8;
  *(v10 + 48) = v8;
  *(v10 + 56) = v8;
  *(v10 + 64) = v8;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = sub_25A92BDB4(v8);
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(v10 + 80);
  v14[2] = *(v10 + 64);
  v14[3] = v11;
  v15 = *(v10 + 96);
  v12 = *(v10 + 48);
  v14[0] = *(v10 + 32);
  v14[1] = v12;
  *(v10 + 32) = a3;
  *(v10 + 40) = v8;
  *(v10 + 48) = v8;
  *(v10 + 56) = v8;
  *(v10 + 64) = v8;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  sub_25A892B80(v14);
  swift_beginAccess();
  *(v10 + 104) = v9;

  *(v10 + 112) = a4;
  *(v10 + 120) = 0;
  return v10;
}

unint64_t sub_25A907F8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04798, &qword_25A9F8E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25A9F9510;
  strcpy((inited + 32), "__contains__");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = sub_25A907E7C(0x6961746E6F635F5FLL, 0xEC0000005F5F736ELL, &unk_286C0A968, sub_25A907D48);
  *(inited + 56) = 0x5F5F6E656C5F5FLL;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = sub_25A907E7C(0x5F5F6E656C5F5FLL, 0xE700000000000000, &unk_286C0A9A8, sub_25A907D74);
  *(inited + 80) = 0x5F5F726574695F5FLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_25A907E7C(0x5F5F726574695F5FLL, 0xE800000000000000, &unk_286C0A9D8, sub_25A907DA0);
  *(inited + 104) = 0x5F5F71655F5FLL;
  *(inited + 112) = 0xE600000000000000;
  *(inited + 120) = sub_25A907E7C(0x5F5F71655F5FLL, 0xE600000000000000, &unk_286C0AA08, sub_25A907DCC);
  *(inited + 128) = 0x5F5F7274735F5FLL;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = sub_25A907E7C(0x5F5F7274735F5FLL, 0xE700000000000000, &unk_286C0AA48, sub_25A907DF8);
  v1 = sub_25A98E67C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047A0, &qword_25A9F8E68);
  swift_arrayDestroy();
  return v1;
}

void sub_25A908174(char a1@<W1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v23 = a1 & 1;
  if (a2 == 1819047278 && a3 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else if (a2 == 7630441 && a3 == 0xE300000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04EA0, &qword_25A9FBA88);
    v8 = sub_25A998928();
    if (!v4)
    {
      *(a4 + 24) = MEMORY[0x277D83B88];
      *a4 = v8;
    }
  }

  else if (a2 == 1819242338 && a3 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04EA0, &qword_25A9FBA88);
    v9 = sub_25A998908();
    if (!v4)
    {
      *(a4 + 24) = MEMORY[0x277D839B0];
      *a4 = v9 & 1;
    }
  }

  else if (a2 == 7500915 && a3 == 0xE300000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04EA0, &qword_25A9FBA88);
    v10 = sub_25A9988F8();
    if (!v4)
    {
      *(a4 + 24) = MEMORY[0x277D837D0];
      *a4 = v10;
      *(a4 + 8) = v11;
    }
  }

  else if (a2 == 0x73697370696C6C65 && a3 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    *(a4 + 24) = &type metadata for Ellipsis;
  }

  else if (a2 == 0x656C62756F64 && a3 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04EA0, &qword_25A9FBA88);
    sub_25A998918();
    if (!v4)
    {
      *(a4 + 24) = MEMORY[0x277D839F8];
      *a4 = v12;
    }
  }

  else if (a2 == 0x7365747962 && a3 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04EA0, &qword_25A9FBA88);
    sub_25A9988F8();
    if (!v4)
    {
      v13 = sub_25A997B18();
      v15 = v14;

      if (v15 >> 60 == 15)
      {
        *a4 = 0u;
        *(a4 + 16) = 0u;
      }

      else
      {
        *(a4 + 24) = MEMORY[0x277CC9318];
        *a4 = v13;
        *(a4 + 8) = v15;
      }
    }
  }

  else
  {
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v16 = sub_25A997BD8();
    __swift_project_value_buffer(v16, qword_27FA0FCE8);

    v17 = sub_25A997BB8();
    v18 = sub_25A9983A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_25A98CC90(a2, a3, &v22);
      _os_log_impl(&dword_25A232000, v17, v18, "Constant type %s not supported yet", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x25F852800](v20, -1, -1);
      MEMORY[0x25F852800](v19, -1, -1);
    }

    sub_25A874F54();
    swift_allocError();
    *v21 = 42;
    swift_willThrow();
  }
}

uint64_t sub_25A90862C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x70795465756C6176;
  }

  else
  {
    v4 = 0x65756C6176;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*a2)
  {
    v6 = 0x70795465756C6176;
  }

  else
  {
    v6 = 0x65756C6176;
  }

  if (*a2)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A9989E8();
  }

  return v9 & 1;
}

uint64_t sub_25A9086D4()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A908758()
{
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A9087C8()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A908848@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25A9088A8(uint64_t *a1@<X8>)
{
  v2 = 0x65756C6176;
  if (*v1)
  {
    v2 = 0x70795465756C6176;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A9088E8()
{
  if (*v0)
  {
    result = 0x70795465756C6176;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_25A908924@<X0>(char *a1@<X8>)
{
  v2 = sub_25A9988C8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_25A908988(uint64_t a1)
{
  v2 = sub_25A908DAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A9089C4(uint64_t a1)
{
  v2 = sub_25A908DAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A908A4C(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04EA0, &qword_25A9FBA88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A908DAC();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Constant();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17[0]) = 1;
    v12 = sub_25A9988F8();
    sub_25A908174(0, v12, v13, v17);

    v15 = v17[1];
    *(v3 + 40) = v17[0];
    *(v3 + 56) = v15;
    sub_25A872F24(a1, v17);
    v11 = sub_25A8963D8(v17);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v11;
}

uint64_t sub_25A908C74@<X0>(uint64_t a1@<X8>)
{
  result = sub_25A8780B8(v1 + 40, a1);
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_25A908CAC()
{
  sub_25A8780B8(v0 + 40, &v3);
  if (v4)
  {
    sub_25A872D74(&v3, v5);
    sub_25A87500C(v5, &v3);
    v1 = sub_25A997EA8();
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  else
  {
    sub_25A872D84(&v3);
    return 7104878;
  }

  return v1;
}

uint64_t sub_25A908D48()
{
  sub_25A872F88(v0 + 24);
  sub_25A872D84(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_25A908DAC()
{
  result = qword_27FA04EA8;
  if (!qword_27FA04EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04EA8);
  }

  return result;
}

unint64_t sub_25A908E14()
{
  result = qword_27FA04EB0;
  if (!qword_27FA04EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04EB0);
  }

  return result;
}

unint64_t sub_25A908E6C()
{
  result = qword_27FA04EB8;
  if (!qword_27FA04EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04EB8);
  }

  return result;
}

unint64_t sub_25A908EC4()
{
  result = qword_27FA04EC0;
  if (!qword_27FA04EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04EC0);
  }

  return result;
}

uint64_t sub_25A908F18()
{
  sub_25A998B18();
  sub_25A997D58();
  return sub_25A998B38();
}

uint64_t sub_25A908F7C()
{
  sub_25A998B18();
  sub_25A997D58();
  return sub_25A998B38();
}

uint64_t sub_25A908FC8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_25A909048@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25A9988C8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_25A9090A0(uint64_t a1)
{
  v2 = sub_25A909654();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A9090DC(uint64_t a1)
{
  v2 = sub_25A909654();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A909164(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04EC8, &qword_25A9FBBF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-1] - v8;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A909654();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v11 = *(v1 + 40);
    swift_unknownObjectRelease();
    type metadata accessor for Return();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = sub_25A90E71C(v9);
    v13 = *(v1 + 40);
    *(v1 + 40) = v12;
    *(v1 + 48) = v14;
    swift_unknownObjectRelease();
    sub_25A872F24(a1, v17);
    v3 = sub_25A8963D8(v17);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

void sub_25A90932C(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  if (!v1[5])
  {
    goto LABEL_5;
  }

  v6 = v1[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = v1[4];
  v10 = *(v6 + 48);
  swift_unknownObjectRetain();
  v10(Strong, v9, ObjectType, v6);
  swift_unknownObjectRelease();
  if (!v1[5])
  {
LABEL_5:
    *a1 = 0u;
    *(a1 + 16) = 0u;
LABEL_6:
    *(a1 + 32) = 1;
    return;
  }

  v11 = v1[6];
  v12 = v1[5];
  v13 = swift_getObjectType();
  v14 = *(v11 + 64);
  swift_unknownObjectRetain();
  v14(v21, v13, v11);
  if (v3)
  {
    swift_unknownObjectRelease();
    return;
  }

  if (!v22 || v22 == 1)
  {
    swift_unknownObjectRelease();
    v15 = v21[1];
    *a1 = v21[0];
    *(a1 + 16) = v15;
    goto LABEL_6;
  }

  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v16 = sub_25A997BD8();
  __swift_project_value_buffer(v16, qword_27FA0FCE8);

  v17 = sub_25A997BB8();
  v18 = sub_25A9983A8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v4[2];

    _os_log_impl(&dword_25A232000, v17, v18, "Return> Invalid return value. line %ld", v19, 0xCu);
    MEMORY[0x25F852800](v19, -1, -1);
  }

  else
  {
  }

  sub_25A874F54();
  swift_allocError();
  *v20 = 39;
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_25A872CE0(v21);
}

uint64_t sub_25A9095A8()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 48);
    swift_getObjectType();
    v2 = *(v1 + 8);
    v3 = sub_25A998968();
    v5 = v4;
  }

  else
  {
    v5 = 0xE400000000000000;
    v3 = 2021161080;
  }

  MEMORY[0x25F850290](v3, v5);

  return 0x206E7275746572;
}

unint64_t sub_25A909654()
{
  result = qword_27FA04ED0;
  if (!qword_27FA04ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04ED0);
  }

  return result;
}

unint64_t sub_25A9096BC()
{
  result = qword_27FA04ED8;
  if (!qword_27FA04ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04ED8);
  }

  return result;
}

unint64_t sub_25A909714()
{
  result = qword_27FA04EE0;
  if (!qword_27FA04EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04EE0);
  }

  return result;
}

unint64_t sub_25A90976C()
{
  result = qword_27FA04EE8;
  if (!qword_27FA04EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04EE8);
  }

  return result;
}

uint64_t sub_25A909838(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048B8, &unk_25A9FBD80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v36 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_25A896DA0();
  sub_25A9988E8();
  if (!v4)
  {
    LOBYTE(v35) = 0;
    v13 = sub_25A9988F8();
    v16 = v13;
    v17 = v14;
    v18 = v13 == 0x656D6E6769737341 && v14 == 0xEA0000000000746ELL;
    if (v18 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Assignment();
      sub_25A911648(&qword_27FA05140, 255, type metadata accessor for Assignment);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05148;
      v20 = type metadata accessor for Assignment;
LABEL_10:
      v21 = v20;
      v22 = 255;
LABEL_11:
      sub_25A911648(v19, v22, v21);
      return v8;
    }

    v23 = v16 == 0x7069726373627553 && v17 == 0xE900000000000074;
    if (v23 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Subscript();
      sub_25A911648(&qword_27FA05130, 255, type metadata accessor for Subscript);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05138;
      v20 = type metadata accessor for Subscript;
      goto LABEL_10;
    }

    v24 = v16 == 0x6563696F6843 && v17 == 0xE600000000000000;
    if (v24 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Choice();
      sub_25A911648(&qword_27FA05120, 255, type metadata accessor for Choice);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05128;
      v20 = type metadata accessor for Choice;
      goto LABEL_10;
    }

    v25 = v16 == 0x746E6174736E6F43 && v17 == 0xE800000000000000;
    if (v25 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Constant();
      sub_25A911648(&qword_27FA05110, 255, type metadata accessor for Constant);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05118;
      v20 = type metadata accessor for Constant;
      goto LABEL_10;
    }

    if (v16 == 1751343429 && v17 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Each();
      sub_25A911648(&qword_27FA05100, 255, type metadata accessor for Each);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05108;
      v20 = type metadata accessor for Each;
      goto LABEL_10;
    }

    if (v16 == 0x426C61636978654CLL && v17 == 0xEC0000006B636F6CLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for LexicalBlock();
      sub_25A911648(&qword_27FA04A18, 255, type metadata accessor for LexicalBlock);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA050F8;
      v20 = type metadata accessor for LexicalBlock;
      goto LABEL_10;
    }

    if (v16 == 0x6E7275746552 && v17 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Return();
      sub_25A911648(&qword_27FA050E8, 255, type metadata accessor for Return);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA050F0;
      v20 = type metadata accessor for Return;
      goto LABEL_10;
    }

    if (v16 == 0x73697261706D6F43 && v17 == 0xEA00000000006E6FLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Comparison();
      sub_25A911648(&qword_27FA050D8, 255, type metadata accessor for Comparison);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA050E0;
      v20 = type metadata accessor for Comparison;
      goto LABEL_10;
    }

    if (v16 == 0x704F6E6942 && v17 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for BinOp();
      sub_25A911648(&qword_27FA050C8, 255, type metadata accessor for BinOp);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA050D0;
      v20 = type metadata accessor for BinOp;
      goto LABEL_10;
    }

    if (v16 == 1819042115 && v17 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Call();
      sub_25A911648(&qword_27FA050B8, 255, type metadata accessor for Call);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA050C0;
      v20 = type metadata accessor for Call;
      goto LABEL_10;
    }

    if (v16 == 1701667150 && v17 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Name();
      sub_25A911648(&qword_27FA050A8, 255, type metadata accessor for Name);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA050B0;
      v20 = type metadata accessor for Name;
      goto LABEL_10;
    }

    if (v16 == 0x7475626972747441 && v17 == 0xE900000000000065 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Attribute();
      sub_25A911648(&qword_27FA05098, 255, type metadata accessor for Attribute);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA050A0;
      v20 = type metadata accessor for Attribute;
      goto LABEL_10;
    }

    if (v16 == 0x64726F7779654BLL && v17 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Keyword();
      sub_25A911648(&qword_27FA05088, 255, type metadata accessor for Keyword);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05090;
      v20 = type metadata accessor for Keyword;
      goto LABEL_10;
    }

    if (v16 == 0x7375656870726F4DLL && v17 == 0xED00007961727241 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusArray();
      sub_25A911648(&qword_27FA05078, 255, type metadata accessor for MorpheusArray);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05080;
      v20 = type metadata accessor for MorpheusArray;
      goto LABEL_10;
    }

    if (v16 == 0x7375656870726F4DLL && v17 == 0xED0000656C707554 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusTuple();
      sub_25A911648(&qword_27FA05068, 255, type metadata accessor for MorpheusTuple);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &qword_27FA05070;
      v20 = type metadata accessor for MorpheusTuple;
      goto LABEL_10;
    }

    if (v16 == 0x7375656870726F4DLL && v17 == 0xEC00000074636944 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusDict();
      sub_25A911648(&qword_27FA05058, 255, type metadata accessor for MorpheusDict);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05060;
      v20 = type metadata accessor for MorpheusDict;
      goto LABEL_10;
    }

    if (v16 == 0x7375656870726F4DLL && v17 == 0xED00006563696C53 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusSlice();
      sub_25A911648(&qword_27FA05048, 255, type metadata accessor for MorpheusSlice);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05050;
      v20 = type metadata accessor for MorpheusSlice;
      goto LABEL_10;
    }

    if (v16 == 0x6E6F6974636E7546 && v17 == 0xEB00000000666544 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for FunctionDef();
      sub_25A911648(&qword_27FA05038, 255, type metadata accessor for FunctionDef);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05040;
      v20 = type metadata accessor for FunctionDef;
      goto LABEL_10;
    }

    if (v16 == 0x6665447373616C43 && v17 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ClassDef();
      sub_25A911648(&qword_27FA05028, 255, type metadata accessor for ClassDef);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05030;
      v20 = type metadata accessor for ClassDef;
      goto LABEL_10;
    }

    if (v16 == 0x7972616E55 && v17 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Unary();
      sub_25A911648(&qword_27FA05018, 255, type metadata accessor for Unary);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05020;
      v20 = type metadata accessor for Unary;
      goto LABEL_10;
    }

    if (v16 == 0x6573696152 && v17 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Raise();
      sub_25A911648(&qword_27FA05008, 255, type metadata accessor for Raise);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05010;
      v20 = type metadata accessor for Raise;
      goto LABEL_10;
    }

    if (v16 == 0x745364656E696F4ALL && v17 == 0xE900000000000072 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for JoinedStr();
      sub_25A911648(&qword_27FA04FF8, 255, type metadata accessor for JoinedStr);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05000;
      v20 = type metadata accessor for JoinedStr;
      goto LABEL_10;
    }

    if (v16 == 0x657474616D726F46 && v17 == 0xEE0065756C615664 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for FormattedValue();
      sub_25A911648(&qword_27FA04FE8, v26, type metadata accessor for FormattedValue);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04FF0;
      v21 = type metadata accessor for FormattedValue;
      goto LABEL_11;
    }

    if (v16 == 0x704F6C6F6F42 && v17 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for BoolOp();
      sub_25A911648(&qword_27FA04FD8, 255, type metadata accessor for BoolOp);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04FE0;
      v20 = type metadata accessor for BoolOp;
      goto LABEL_10;
    }

    if (v16 == 0x65756E69746E6F43 && v17 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Continue();
      sub_25A911648(&qword_27FA04FC8, 255, type metadata accessor for Continue);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04FD0;
      v20 = type metadata accessor for Continue;
      goto LABEL_10;
    }

    if (v16 == 0x6B61657242 && v17 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Break();
      sub_25A911648(&qword_27FA04FB8, 255, type metadata accessor for Break);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04FC0;
      v20 = type metadata accessor for Break;
      goto LABEL_10;
    }

    if (v16 == 0x65686572706D6F43 && v17 == 0xED00006E6F69736ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Comprehension();
      sub_25A911648(&qword_27FA04FA8, 255, type metadata accessor for Comprehension);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04FB0;
      v20 = type metadata accessor for Comprehension;
      goto LABEL_10;
    }

    if (v16 == 0x706D6F437473694CLL && v17 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ListComp();
      sub_25A911648(&qword_27FA04F98, 255, type metadata accessor for ListComp);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04FA0;
      v20 = type metadata accessor for ListComp;
      goto LABEL_10;
    }

    if (v16 == 0x706D6F43746553 && v17 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for SetComp();
      sub_25A911648(&qword_27FA04F88, 255, type metadata accessor for SetComp);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F90;
      v20 = type metadata accessor for SetComp;
      goto LABEL_10;
    }

    if (v16 == 0x706D6F4374636944 && v17 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for DictComp();
      sub_25A911648(&qword_27FA04F78, 255, type metadata accessor for DictComp);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F80;
      v20 = type metadata accessor for DictComp;
      goto LABEL_10;
    }

    if (v16 == 0x64657272617453 && v17 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Starred();
      sub_25A911648(&qword_27FA04F68, 255, type metadata accessor for Starred);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F70;
      v20 = type metadata accessor for Starred;
      goto LABEL_10;
    }

    if (v16 == 0x656C696857 && v17 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for While();
      sub_25A911648(&qword_27FA04F58, 255, type metadata accessor for While);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F60;
      v20 = type metadata accessor for While;
      goto LABEL_10;
    }

    if (v16 == 0x6769737341677541 && v17 == 0xE90000000000006ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for AugAssign();
      sub_25A911648(&qword_27FA04F48, 255, type metadata accessor for AugAssign);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F50;
      v20 = type metadata accessor for AugAssign;
      goto LABEL_10;
    }

    if (v16 == 0x74726F706D49 && v17 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Import();
      sub_25A911648(&qword_27FA04F38, 255, type metadata accessor for Import);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F40;
      v20 = type metadata accessor for Import;
      goto LABEL_10;
    }

    if (v16 == 0x724674726F706D49 && v17 == 0xEA00000000006D6FLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ImportFrom();
      sub_25A911648(&qword_27FA04F28, 255, type metadata accessor for ImportFrom);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F30;
      v20 = type metadata accessor for ImportFrom;
      goto LABEL_10;
    }

    if (v16 == 0x656C75646F4DLL && v17 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ModuleOp();
      sub_25A911648(&qword_27FA04BE8, 255, type metadata accessor for ModuleOp);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F20;
      v20 = type metadata accessor for ModuleOp;
      goto LABEL_10;
    }

    if (v16 == 1936941392 && v17 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Pass();
      sub_25A911648(&qword_27FA04F10, 255, type metadata accessor for Pass);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F18;
      v20 = type metadata accessor for Pass;
      goto LABEL_10;
    }

    if (v16 == 0x696F706B61657242 && v17 == 0xEA0000000000746ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Breakpoint();
      sub_25A911648(&qword_27FA04F00, 255, type metadata accessor for Breakpoint);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F08;
      v20 = type metadata accessor for Breakpoint;
      goto LABEL_10;
    }

    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v27 = sub_25A997BD8();
    __swift_project_value_buffer(v27, qword_27FA0FCE8);

    v28 = sub_25A997BB8();
    v29 = sub_25A9983A8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v30 = 136315138;
      v32 = sub_25A98CC90(v16, v17, &v35);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_25A232000, v28, v29, "Operation %s not supported yet", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x25F852800](v31, -1, -1);
      MEMORY[0x25F852800](v30, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    *v33 = 43;
    swift_willThrow();
    (*(v9 + 8))(v12, v8);
  }

  return v8;
}

uint64_t sub_25A90BEE4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048B8, &unk_25A9FBD80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v36 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_25A896DA0();
  sub_25A9988E8();
  if (!v4)
  {
    LOBYTE(v35) = 0;
    v13 = sub_25A9988F8();
    v16 = v13;
    v17 = v14;
    v18 = v13 == 0x656D6E6769737341 && v14 == 0xEA0000000000746ELL;
    if (v18 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Assignment();
      sub_25A911648(&qword_27FA05140, 255, type metadata accessor for Assignment);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05148;
      v20 = type metadata accessor for Assignment;
LABEL_10:
      v21 = v20;
      v22 = 255;
LABEL_11:
      sub_25A911648(v19, v22, v21);
      return v8;
    }

    v23 = v16 == 0x7069726373627553 && v17 == 0xE900000000000074;
    if (v23 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Subscript();
      sub_25A911648(&qword_27FA05130, 255, type metadata accessor for Subscript);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05138;
      v20 = type metadata accessor for Subscript;
      goto LABEL_10;
    }

    v24 = v16 == 0x6563696F6843 && v17 == 0xE600000000000000;
    if (v24 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Choice();
      sub_25A911648(&qword_27FA05120, 255, type metadata accessor for Choice);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05128;
      v20 = type metadata accessor for Choice;
      goto LABEL_10;
    }

    v25 = v16 == 0x746E6174736E6F43 && v17 == 0xE800000000000000;
    if (v25 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Constant();
      sub_25A911648(&qword_27FA05110, 255, type metadata accessor for Constant);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05118;
      v20 = type metadata accessor for Constant;
      goto LABEL_10;
    }

    if (v16 == 1751343429 && v17 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Each();
      sub_25A911648(&qword_27FA05100, 255, type metadata accessor for Each);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05108;
      v20 = type metadata accessor for Each;
      goto LABEL_10;
    }

    if (v16 == 0x426C61636978654CLL && v17 == 0xEC0000006B636F6CLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for LexicalBlock();
      sub_25A911648(&qword_27FA04A18, 255, type metadata accessor for LexicalBlock);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA050F8;
      v20 = type metadata accessor for LexicalBlock;
      goto LABEL_10;
    }

    if (v16 == 0x6E7275746552 && v17 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Return();
      sub_25A911648(&qword_27FA050E8, 255, type metadata accessor for Return);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA050F0;
      v20 = type metadata accessor for Return;
      goto LABEL_10;
    }

    if (v16 == 0x73697261706D6F43 && v17 == 0xEA00000000006E6FLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Comparison();
      sub_25A911648(&qword_27FA050D8, 255, type metadata accessor for Comparison);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA050E0;
      v20 = type metadata accessor for Comparison;
      goto LABEL_10;
    }

    if (v16 == 0x704F6E6942 && v17 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for BinOp();
      sub_25A911648(&qword_27FA050C8, 255, type metadata accessor for BinOp);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA050D0;
      v20 = type metadata accessor for BinOp;
      goto LABEL_10;
    }

    if (v16 == 1819042115 && v17 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Call();
      sub_25A911648(&qword_27FA050B8, 255, type metadata accessor for Call);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA050C0;
      v20 = type metadata accessor for Call;
      goto LABEL_10;
    }

    if (v16 == 1701667150 && v17 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Name();
      sub_25A911648(&qword_27FA050A8, 255, type metadata accessor for Name);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA050B0;
      v20 = type metadata accessor for Name;
      goto LABEL_10;
    }

    if (v16 == 0x7475626972747441 && v17 == 0xE900000000000065 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Attribute();
      sub_25A911648(&qword_27FA05098, 255, type metadata accessor for Attribute);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA050A0;
      v20 = type metadata accessor for Attribute;
      goto LABEL_10;
    }

    if (v16 == 0x64726F7779654BLL && v17 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Keyword();
      sub_25A911648(&qword_27FA05088, 255, type metadata accessor for Keyword);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05090;
      v20 = type metadata accessor for Keyword;
      goto LABEL_10;
    }

    if (v16 == 0x7375656870726F4DLL && v17 == 0xED00007961727241 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusArray();
      sub_25A911648(&qword_27FA05078, 255, type metadata accessor for MorpheusArray);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05080;
      v20 = type metadata accessor for MorpheusArray;
      goto LABEL_10;
    }

    if (v16 == 0x7375656870726F4DLL && v17 == 0xED0000656C707554 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusTuple();
      sub_25A911648(&qword_27FA05068, 255, type metadata accessor for MorpheusTuple);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &qword_27FA05070;
      v20 = type metadata accessor for MorpheusTuple;
      goto LABEL_10;
    }

    if (v16 == 0x7375656870726F4DLL && v17 == 0xEC00000074636944 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusDict();
      sub_25A911648(&qword_27FA05058, 255, type metadata accessor for MorpheusDict);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05060;
      v20 = type metadata accessor for MorpheusDict;
      goto LABEL_10;
    }

    if (v16 == 0x7375656870726F4DLL && v17 == 0xED00006563696C53 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusSlice();
      sub_25A911648(&qword_27FA05048, 255, type metadata accessor for MorpheusSlice);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05050;
      v20 = type metadata accessor for MorpheusSlice;
      goto LABEL_10;
    }

    if (v16 == 0x6E6F6974636E7546 && v17 == 0xEB00000000666544 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for FunctionDef();
      sub_25A911648(&qword_27FA05038, 255, type metadata accessor for FunctionDef);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05040;
      v20 = type metadata accessor for FunctionDef;
      goto LABEL_10;
    }

    if (v16 == 0x6665447373616C43 && v17 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ClassDef();
      sub_25A911648(&qword_27FA05028, 255, type metadata accessor for ClassDef);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05030;
      v20 = type metadata accessor for ClassDef;
      goto LABEL_10;
    }

    if (v16 == 0x7972616E55 && v17 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Unary();
      sub_25A911648(&qword_27FA05018, 255, type metadata accessor for Unary);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05020;
      v20 = type metadata accessor for Unary;
      goto LABEL_10;
    }

    if (v16 == 0x6573696152 && v17 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Raise();
      sub_25A911648(&qword_27FA05008, 255, type metadata accessor for Raise);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05010;
      v20 = type metadata accessor for Raise;
      goto LABEL_10;
    }

    if (v16 == 0x745364656E696F4ALL && v17 == 0xE900000000000072 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for JoinedStr();
      sub_25A911648(&qword_27FA04FF8, 255, type metadata accessor for JoinedStr);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA05000;
      v20 = type metadata accessor for JoinedStr;
      goto LABEL_10;
    }

    if (v16 == 0x657474616D726F46 && v17 == 0xEE0065756C615664 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for FormattedValue();
      sub_25A911648(&qword_27FA04FE8, v26, type metadata accessor for FormattedValue);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04FF0;
      v21 = type metadata accessor for FormattedValue;
      goto LABEL_11;
    }

    if (v16 == 0x704F6C6F6F42 && v17 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for BoolOp();
      sub_25A911648(&qword_27FA04FD8, 255, type metadata accessor for BoolOp);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04FE0;
      v20 = type metadata accessor for BoolOp;
      goto LABEL_10;
    }

    if (v16 == 0x65756E69746E6F43 && v17 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Continue();
      sub_25A911648(&qword_27FA04FC8, 255, type metadata accessor for Continue);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04FD0;
      v20 = type metadata accessor for Continue;
      goto LABEL_10;
    }

    if (v16 == 0x6B61657242 && v17 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Break();
      sub_25A911648(&qword_27FA04FB8, 255, type metadata accessor for Break);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04FC0;
      v20 = type metadata accessor for Break;
      goto LABEL_10;
    }

    if (v16 == 0x65686572706D6F43 && v17 == 0xED00006E6F69736ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Comprehension();
      sub_25A911648(&qword_27FA04FA8, 255, type metadata accessor for Comprehension);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04FB0;
      v20 = type metadata accessor for Comprehension;
      goto LABEL_10;
    }

    if (v16 == 0x706D6F437473694CLL && v17 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ListComp();
      sub_25A911648(&qword_27FA04F98, 255, type metadata accessor for ListComp);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04FA0;
      v20 = type metadata accessor for ListComp;
      goto LABEL_10;
    }

    if (v16 == 0x706D6F43746553 && v17 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for SetComp();
      sub_25A911648(&qword_27FA04F88, 255, type metadata accessor for SetComp);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F90;
      v20 = type metadata accessor for SetComp;
      goto LABEL_10;
    }

    if (v16 == 0x706D6F4374636944 && v17 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for DictComp();
      sub_25A911648(&qword_27FA04F78, 255, type metadata accessor for DictComp);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F80;
      v20 = type metadata accessor for DictComp;
      goto LABEL_10;
    }

    if (v16 == 0x64657272617453 && v17 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Starred();
      sub_25A911648(&qword_27FA04F68, 255, type metadata accessor for Starred);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F70;
      v20 = type metadata accessor for Starred;
      goto LABEL_10;
    }

    if (v16 == 0x656C696857 && v17 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for While();
      sub_25A911648(&qword_27FA04F58, 255, type metadata accessor for While);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F60;
      v20 = type metadata accessor for While;
      goto LABEL_10;
    }

    if (v16 == 0x6769737341677541 && v17 == 0xE90000000000006ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for AugAssign();
      sub_25A911648(&qword_27FA04F48, 255, type metadata accessor for AugAssign);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F50;
      v20 = type metadata accessor for AugAssign;
      goto LABEL_10;
    }

    if (v16 == 0x74726F706D49 && v17 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Import();
      sub_25A911648(&qword_27FA04F38, 255, type metadata accessor for Import);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F40;
      v20 = type metadata accessor for Import;
      goto LABEL_10;
    }

    if (v16 == 0x724674726F706D49 && v17 == 0xEA00000000006D6FLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ImportFrom();
      sub_25A911648(&qword_27FA04F28, 255, type metadata accessor for ImportFrom);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F30;
      v20 = type metadata accessor for ImportFrom;
      goto LABEL_10;
    }

    if (v16 == 0x656C75646F4DLL && v17 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ModuleOp();
      sub_25A911648(&qword_27FA04BE8, 255, type metadata accessor for ModuleOp);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F20;
      v20 = type metadata accessor for ModuleOp;
      goto LABEL_10;
    }

    if (v16 == 1936941392 && v17 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Pass();
      sub_25A911648(&qword_27FA04F10, 255, type metadata accessor for Pass);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F18;
      v20 = type metadata accessor for Pass;
      goto LABEL_10;
    }

    if (v16 == 0x696F706B61657242 && v17 == 0xEA0000000000746ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Breakpoint();
      sub_25A911648(&qword_27FA04F00, 255, type metadata accessor for Breakpoint);
      sub_25A998938();
      (*(v9 + 8))(v12, v8);
      v8 = v35;
      v19 = &unk_27FA04F08;
      v20 = type metadata accessor for Breakpoint;
      goto LABEL_10;
    }

    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v27 = sub_25A997BD8();
    __swift_project_value_buffer(v27, qword_27FA0FCE8);

    v28 = sub_25A997BB8();
    v29 = sub_25A9983A8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v30 = 136315138;
      v32 = sub_25A98CC90(v16, v17, &v35);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_25A232000, v28, v29, "Operation %s not supported yet", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x25F852800](v31, -1, -1);
      MEMORY[0x25F852800](v30, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    *v33 = 43;
    swift_willThrow();
    (*(v9 + 8))(v12, v8);
  }

  return v8;
}

uint64_t sub_25A90E744(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048B8, &unk_25A9FBD80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_25A896DA0();
  sub_25A9988E8();
  if (!v3)
  {
    LOBYTE(v34) = 0;
    v11 = sub_25A9988F8();
    v14 = v11;
    v15 = v12;
    v16 = v11 == 0x656D6E6769737341 && v12 == 0xEA0000000000746ELL;
    if (v16 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Assignment();
      sub_25A911648(&qword_27FA05140, 255, type metadata accessor for Assignment);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA05148;
      v18 = type metadata accessor for Assignment;
LABEL_10:
      v19 = v18;
      v20 = 255;
LABEL_11:
      sub_25A911648(v17, v20, v19);
      return v6;
    }

    v21 = v14 == 0x7069726373627553 && v15 == 0xE900000000000074;
    if (v21 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Subscript();
      sub_25A911648(&qword_27FA05130, 255, type metadata accessor for Subscript);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA05138;
      v18 = type metadata accessor for Subscript;
      goto LABEL_10;
    }

    v22 = v14 == 0x6563696F6843 && v15 == 0xE600000000000000;
    if (v22 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Choice();
      sub_25A911648(&qword_27FA05120, 255, type metadata accessor for Choice);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA05128;
      v18 = type metadata accessor for Choice;
      goto LABEL_10;
    }

    v23 = v14 == 0x746E6174736E6F43 && v15 == 0xE800000000000000;
    if (v23 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Constant();
      sub_25A911648(&qword_27FA05110, 255, type metadata accessor for Constant);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA05118;
      v18 = type metadata accessor for Constant;
      goto LABEL_10;
    }

    v24 = v14 == 1751343429 && v15 == 0xE400000000000000;
    if (v24 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Each();
      sub_25A911648(&qword_27FA05100, 255, type metadata accessor for Each);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA05108;
      v18 = type metadata accessor for Each;
      goto LABEL_10;
    }

    if (v14 == 0x426C61636978654CLL && v15 == 0xEC0000006B636F6CLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for LexicalBlock();
      sub_25A911648(&qword_27FA04A18, 255, type metadata accessor for LexicalBlock);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA050F8;
      v18 = type metadata accessor for LexicalBlock;
      goto LABEL_10;
    }

    if (v14 == 0x6E7275746552 && v15 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Return();
      sub_25A911648(&qword_27FA050E8, 255, type metadata accessor for Return);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA050F0;
      v18 = type metadata accessor for Return;
      goto LABEL_10;
    }

    if (v14 == 0x73697261706D6F43 && v15 == 0xEA00000000006E6FLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Comparison();
      sub_25A911648(&qword_27FA050D8, 255, type metadata accessor for Comparison);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA050E0;
      v18 = type metadata accessor for Comparison;
      goto LABEL_10;
    }

    if (v14 == 0x704F6E6942 && v15 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for BinOp();
      sub_25A911648(&qword_27FA050C8, 255, type metadata accessor for BinOp);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA050D0;
      v18 = type metadata accessor for BinOp;
      goto LABEL_10;
    }

    if (v14 == 1819042115 && v15 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Call();
      sub_25A911648(&qword_27FA050B8, 255, type metadata accessor for Call);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA050C0;
      v18 = type metadata accessor for Call;
      goto LABEL_10;
    }

    if (v14 == 1701667150 && v15 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Name();
      sub_25A911648(&qword_27FA050A8, 255, type metadata accessor for Name);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA050B0;
      v18 = type metadata accessor for Name;
      goto LABEL_10;
    }

    if (v14 == 0x7475626972747441 && v15 == 0xE900000000000065 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Attribute();
      sub_25A911648(&qword_27FA05098, 255, type metadata accessor for Attribute);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA050A0;
      v18 = type metadata accessor for Attribute;
      goto LABEL_10;
    }

    if (v14 == 0x64726F7779654BLL && v15 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Keyword();
      sub_25A911648(&qword_27FA05088, 255, type metadata accessor for Keyword);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA05090;
      v18 = type metadata accessor for Keyword;
      goto LABEL_10;
    }

    if (v14 == 0x7375656870726F4DLL && v15 == 0xED00007961727241 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusArray();
      sub_25A911648(&qword_27FA05078, 255, type metadata accessor for MorpheusArray);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA05080;
      v18 = type metadata accessor for MorpheusArray;
      goto LABEL_10;
    }

    if (v14 == 0x7375656870726F4DLL && v15 == 0xED0000656C707554 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusTuple();
      sub_25A911648(&qword_27FA05068, 255, type metadata accessor for MorpheusTuple);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &qword_27FA05070;
      v18 = type metadata accessor for MorpheusTuple;
      goto LABEL_10;
    }

    if (v14 == 0x7375656870726F4DLL && v15 == 0xEC00000074636944 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusDict();
      sub_25A911648(&qword_27FA05058, 255, type metadata accessor for MorpheusDict);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA05060;
      v18 = type metadata accessor for MorpheusDict;
      goto LABEL_10;
    }

    if (v14 == 0x7375656870726F4DLL && v15 == 0xED00006563696C53 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusSlice();
      sub_25A911648(&qword_27FA05048, 255, type metadata accessor for MorpheusSlice);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA05050;
      v18 = type metadata accessor for MorpheusSlice;
      goto LABEL_10;
    }

    if (v14 == 0x6E6F6974636E7546 && v15 == 0xEB00000000666544 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for FunctionDef();
      sub_25A911648(&qword_27FA05038, 255, type metadata accessor for FunctionDef);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA05040;
      v18 = type metadata accessor for FunctionDef;
      goto LABEL_10;
    }

    if (v14 == 0x6665447373616C43 && v15 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ClassDef();
      sub_25A911648(&qword_27FA05028, 255, type metadata accessor for ClassDef);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA05030;
      v18 = type metadata accessor for ClassDef;
      goto LABEL_10;
    }

    if (v14 == 0x7972616E55 && v15 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Unary();
      sub_25A911648(&qword_27FA05018, 255, type metadata accessor for Unary);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA05020;
      v18 = type metadata accessor for Unary;
      goto LABEL_10;
    }

    if (v14 == 0x6573696152 && v15 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Raise();
      sub_25A911648(&qword_27FA05008, 255, type metadata accessor for Raise);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA05010;
      v18 = type metadata accessor for Raise;
      goto LABEL_10;
    }

    if (v14 == 0x745364656E696F4ALL && v15 == 0xE900000000000072 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for JoinedStr();
      sub_25A911648(&qword_27FA04FF8, 255, type metadata accessor for JoinedStr);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA05000;
      v18 = type metadata accessor for JoinedStr;
      goto LABEL_10;
    }

    if (v14 == 0x657474616D726F46 && v15 == 0xEE0065756C615664 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for FormattedValue();
      sub_25A911648(&qword_27FA04FE8, v25, type metadata accessor for FormattedValue);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA04FF0;
      v19 = type metadata accessor for FormattedValue;
      goto LABEL_11;
    }

    if (v14 == 0x704F6C6F6F42 && v15 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for BoolOp();
      sub_25A911648(&qword_27FA04FD8, 255, type metadata accessor for BoolOp);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA04FE0;
      v18 = type metadata accessor for BoolOp;
      goto LABEL_10;
    }

    if (v14 == 0x65756E69746E6F43 && v15 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Continue();
      sub_25A911648(&qword_27FA04FC8, 255, type metadata accessor for Continue);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA04FD0;
      v18 = type metadata accessor for Continue;
      goto LABEL_10;
    }

    if (v14 == 0x6B61657242 && v15 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Break();
      sub_25A911648(&qword_27FA04FB8, 255, type metadata accessor for Break);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA04FC0;
      v18 = type metadata accessor for Break;
      goto LABEL_10;
    }

    if (v14 == 0x65686572706D6F43 && v15 == 0xED00006E6F69736ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Comprehension();
      sub_25A911648(&qword_27FA04FA8, 255, type metadata accessor for Comprehension);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA04FB0;
      v18 = type metadata accessor for Comprehension;
      goto LABEL_10;
    }

    if (v14 == 0x706D6F437473694CLL && v15 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ListComp();
      sub_25A911648(&qword_27FA04F98, 255, type metadata accessor for ListComp);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA04FA0;
      v18 = type metadata accessor for ListComp;
      goto LABEL_10;
    }

    if (v14 == 0x706D6F43746553 && v15 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for SetComp();
      sub_25A911648(&qword_27FA04F88, 255, type metadata accessor for SetComp);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA04F90;
      v18 = type metadata accessor for SetComp;
      goto LABEL_10;
    }

    if (v14 == 0x706D6F4374636944 && v15 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for DictComp();
      sub_25A911648(&qword_27FA04F78, 255, type metadata accessor for DictComp);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA04F80;
      v18 = type metadata accessor for DictComp;
      goto LABEL_10;
    }

    if (v14 == 0x64657272617453 && v15 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Starred();
      sub_25A911648(&qword_27FA04F68, 255, type metadata accessor for Starred);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA04F70;
      v18 = type metadata accessor for Starred;
      goto LABEL_10;
    }

    if (v14 == 0x656C696857 && v15 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for While();
      sub_25A911648(&qword_27FA04F58, 255, type metadata accessor for While);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA04F60;
      v18 = type metadata accessor for While;
      goto LABEL_10;
    }

    if (v14 == 0x6769737341677541 && v15 == 0xE90000000000006ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for AugAssign();
      sub_25A911648(&qword_27FA04F48, 255, type metadata accessor for AugAssign);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA04F50;
      v18 = type metadata accessor for AugAssign;
      goto LABEL_10;
    }

    if (v14 == 0x74726F706D49 && v15 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Import();
      sub_25A911648(&qword_27FA04F38, 255, type metadata accessor for Import);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA04F40;
      v18 = type metadata accessor for Import;
      goto LABEL_10;
    }

    if (v14 == 0x724674726F706D49 && v15 == 0xEA00000000006D6FLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ImportFrom();
      sub_25A911648(&qword_27FA04F28, 255, type metadata accessor for ImportFrom);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA04F30;
      v18 = type metadata accessor for ImportFrom;
      goto LABEL_10;
    }

    if (v14 == 0x656C75646F4DLL && v15 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ModuleOp();
      sub_25A911648(&qword_27FA04BE8, 255, type metadata accessor for ModuleOp);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA04F20;
      v18 = type metadata accessor for ModuleOp;
      goto LABEL_10;
    }

    if (v14 == 1936941392 && v15 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Pass();
      sub_25A911648(&qword_27FA04F10, 255, type metadata accessor for Pass);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA04F18;
      v18 = type metadata accessor for Pass;
      goto LABEL_10;
    }

    if (v14 == 0x696F706B61657242 && v15 == 0xEA0000000000746ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Breakpoint();
      sub_25A911648(&qword_27FA04F00, 255, type metadata accessor for Breakpoint);
      sub_25A998938();
      (*(v7 + 8))(v10, v6);
      v6 = v34;
      v17 = &unk_27FA04F08;
      v18 = type metadata accessor for Breakpoint;
      goto LABEL_10;
    }

    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v26 = sub_25A997BD8();
    __swift_project_value_buffer(v26, qword_27FA0FCE8);

    v27 = sub_25A997BB8();
    v28 = sub_25A9983A8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34 = v30;
      *v29 = 136315138;
      v31 = sub_25A98CC90(v14, v15, &v34);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_25A232000, v27, v28, "Operation %s not supported yet", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x25F852800](v30, -1, -1);
      MEMORY[0x25F852800](v29, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    *v32 = 43;
    swift_willThrow();
    (*(v7 + 8))(v10, v6);
  }

  return v6;
}

uint64_t sub_25A910DB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x69737265766E6F63;
  }

  else
  {
    v4 = 0x65756C6176;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xEA00000000006E6FLL;
  }

  if (*a2)
  {
    v6 = 0x69737265766E6F63;
  }

  else
  {
    v6 = 0x65756C6176;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006E6FLL;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A9989E8();
  }

  return v9 & 1;
}

uint64_t sub_25A910E60()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A910EE4()
{
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A910F54()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A910FD4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25A911034(uint64_t *a1@<X8>)
{
  v2 = 0x65756C6176;
  if (*v1)
  {
    v2 = 0x69737265766E6F63;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A911074()
{
  if (*v0)
  {
    result = 0x69737265766E6F63;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_25A9110B0@<X0>(char *a1@<X8>)
{
  v2 = sub_25A9988C8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_25A911114(uint64_t a1)
{
  v2 = sub_25A9115F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A911150(uint64_t a1)
{
  v2 = sub_25A9115F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A9111D8(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04EF0, "l(\a");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A9115F4();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for FormattedValue();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A909838(v9, 0, &qword_27FA04EF0, "l(\a");
    v1[6] = v12;
    LOBYTE(v14[0]) = 1;
    v1[7] = sub_25A998928();
    sub_25A872F24(a1, v14);
    v3 = sub_25A8963D8(v14);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A9113F8@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[5];
  v7 = v4[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = v4[4];
  v11 = *(v7 + 48);
  swift_unknownObjectRetain();
  v11(Strong, v10, ObjectType, v7);
  swift_unknownObjectRelease();
  v12 = v4[5];
  v13 = v4[6];
  v14 = swift_getObjectType();
  v15 = *(v13 + 64);
  swift_unknownObjectRetain();
  v15(v17, v14, v13);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    sub_25A896580(a1);
    result = sub_25A872CE0(v17);
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_25A91151C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  swift_getObjectType();
  v3 = *(v2 + 8);
  v4 = sub_25A998968();
  MEMORY[0x25F850290](v4);

  MEMORY[0x25F850290](125, 0xE100000000000000);
  return 123;
}

uint64_t sub_25A911590()
{
  sub_25A872F88(v0 + 24);
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_25A9115F4()
{
  result = qword_27FA04EF8;
  if (!qword_27FA04EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04EF8);
  }

  return result;
}

uint64_t sub_25A911648(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25A9116A4()
{
  result = qword_27FA05150;
  if (!qword_27FA05150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05150);
  }

  return result;
}

unint64_t sub_25A9116FC()
{
  result = qword_27FA05158;
  if (!qword_27FA05158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05158);
  }

  return result;
}

unint64_t sub_25A911754()
{
  result = qword_27FA05160;
  if (!qword_27FA05160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05160);
  }

  return result;
}

double sub_25A9117A8@<D0>(uint64_t a1@<X8>)
{
  sub_25A872C84(v1, &v4);
  if (v5)
  {
    sub_25A872CE0(&v4);
    sub_25A872C84(v1, &v4);
    if (v5 != 1)
    {
      sub_25A872CE0(&v4);
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_25A91185C@<D0>(_OWORD *a1@<X8>)
{
  sub_25A872C84(v1, &v4);
  if (v5)
  {
    sub_25A872CE0(&v4);
    sub_25A872C84(v1, &v4);
    if (v5 != 1)
    {
      sub_25A872CE0(&v4);
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

double sub_25A911924@<D0>(uint64_t a1@<X8>)
{
  sub_25A872C84(v1, &v4);
  if (v5)
  {
    sub_25A872CE0(&v4);
    sub_25A872C84(v1, &v4);
    if (v5 != 1)
    {
      sub_25A872CE0(&v4);
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    *(a1 + 64) = 0;
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_25A911A04@<D0>(uint64_t a1@<X8>)
{
  sub_25A872C84(v1, v6);
  if (v7 && (sub_25A872CE0(v6), sub_25A872C84(v1, v6), v7 != 1))
  {
    sub_25A872CE0(v6);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v8 = v6[0];
    v9 = v6[1];
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
    *(a1 + 32) = &protocol witness table for A?;
    v3 = swift_allocObject();
    *a1 = v3;
    result = *&v8;
    v5 = v9;
    *(v3 + 16) = v8;
    *(v3 + 32) = v5;
  }

  return result;
}

uint64_t sub_25A911AC4()
{
  sub_25A872C84(v0, &v2);
  if (v3 && (sub_25A872CE0(&v2), sub_25A872C84(v0, &v2), v3 != 1))
  {
    sub_25A872CE0(&v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  LOBYTE(v2) = 2;
  return v2;
}

double sub_25A911BA8@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_25A872C84(v3, &v8);
  if (v9)
  {
    sub_25A872CE0(&v8);
    sub_25A872C84(v3, &v8);
    if (v9 != 1)
    {
      sub_25A872CE0(&v8);
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25A911C78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7365756C6176;
  }

  else
  {
    v4 = 28783;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x7365756C6176;
  }

  else
  {
    v6 = 28783;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A9989E8();
  }

  return v9 & 1;
}

uint64_t sub_25A911D10()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A911D84()
{
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A911DE4()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A911E54@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25A911EB4(uint64_t *a1@<X8>)
{
  v2 = 28783;
  if (*v1)
  {
    v2 = 0x7365756C6176;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A911EE4()
{
  if (*v0)
  {
    result = 0x7365756C6176;
  }

  else
  {
    result = 28783;
  }

  *v0;
  return result;
}

uint64_t sub_25A911F10@<X0>(char *a1@<X8>)
{
  v2 = sub_25A9988C8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_25A911F74(uint64_t a1)
{
  v2 = sub_25A912B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A911FB0(uint64_t a1)
{
  v2 = sub_25A912B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A912038(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05168, &unk_25A9FBF90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A912B6C();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for BoolOp();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v14[0]) = 0;
    v1[6] = sub_25A9988F8();
    v1[7] = v12;
    v1[5] = sub_25A94B230(v9, 1);
    sub_25A872F24(a1, v14);
    v3 = sub_25A8963D8(v14);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A912244@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v4 = v1[5];
  if (v4[2] != 2)
  {
    if (qword_27FA043C0 == -1)
    {
LABEL_12:
      v34 = sub_25A997BD8();
      __swift_project_value_buffer(v34, qword_27FA0FCE8);

      v35 = sub_25A997BB8();
      v36 = sub_25A9983A8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134218240;
        *(v37 + 4) = *(v3[5] + 16);
        *(v37 + 12) = 2048;
        *(v37 + 14) = v3[2];

        _os_log_impl(&dword_25A232000, v35, v36, "BoolOp> Only 2 values are supported, but got %ld. line %ld", v37, 0x16u);
        MEMORY[0x25F852800](v37, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      v39 = 31;
      goto LABEL_16;
    }

LABEL_38:
    swift_once();
    goto LABEL_12;
  }

  v5 = v2;
  v66 = a1;
  v6 = v4[4];
  v7 = v4[5];

  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = v3[4];
  v11 = *(v7 + 48);
  swift_unknownObjectRetain();
  v11(Strong, v10, ObjectType, v7);
  swift_unknownObjectRelease();
  if (v4[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_38;
  }

  v12 = v4[6];
  v13 = v4[7];
  v14 = swift_getObjectType();
  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  v16 = v3[4];
  v17 = *(v13 + 48);
  swift_unknownObjectRetain();
  v17(v15, v16, v14, v13);

  swift_unknownObjectRelease();
  v18 = v3[5];
  if (v18[2])
  {
    v19 = v18[4];
    v20 = v18[5];
    v21 = swift_getObjectType();
    v22 = *(v20 + 64);
    swift_unknownObjectRetain();
    v22(v60, v21, v20);
    result = swift_unknownObjectRelease();
    if (v5)
    {
      return result;
    }

    sub_25A911A04(&v61);
    sub_25A872CE0(v60);
    if (v62)
    {
      sub_25A895470(&v61, v63);
      v24 = v3[6];
      v25 = v3[7];
      if (v24 == 29295 && v25 == 0xE200000000000000 || (v26 = v3[6], v27 = v3[7], (sub_25A9989E8() & 1) != 0))
      {
        v28 = v64;
        v29 = v65;
        __swift_project_boxed_opaque_existential_1(v63, v64);
        if ((*(v29 + 8))(v28, v29))
        {
LABEL_10:
          v30 = v64;
          v31 = __swift_project_boxed_opaque_existential_1(v63, v64);
          v32 = v66;
          *(v66 + 24) = v30;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
          (*(*(v30 - 8) + 16))(boxed_opaque_existential_0, v31, v30);
          *(v32 + 32) = 0;
          return __swift_destroy_boxed_opaque_existential_0Tm(v63);
        }

        v44 = v3[5];
        if (v44[2] >= 2uLL)
        {
LABEL_22:
          v46 = v44[6];
          v45 = v44[7];
          v47 = swift_getObjectType();
          v48 = *(v45 + 64);
          swift_unknownObjectRetain();
          v48(v47, v45);
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_0Tm(v63);
        }

        __break(1u);
      }

      else
      {
        if (v24 == 6581857 && v25 == 0xE300000000000000 || (sub_25A9989E8() & 1) != 0)
        {
          v49 = v64;
          v50 = v65;
          __swift_project_boxed_opaque_existential_1(v63, v64);
          if (((*(v50 + 8))(v49, v50) & 1) == 0)
          {
            goto LABEL_10;
          }

          v44 = v3[5];
          if (v44[2] >= 2uLL)
          {
            goto LABEL_22;
          }

          __break(1u);
        }

        if (qword_27FA043C0 == -1)
        {
LABEL_33:
          v51 = sub_25A997BD8();
          __swift_project_value_buffer(v51, qword_27FA0FCE8);

          v52 = sub_25A997BB8();
          v53 = sub_25A9983A8();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            *&v61 = v55;
            *v54 = 136315394;
            v56 = v3[6];
            v57 = v3[7];

            v58 = sub_25A98CC90(v56, v57, &v61);

            *(v54 + 4) = v58;
            *(v54 + 12) = 2048;
            *(v54 + 14) = v3[2];

            _os_log_impl(&dword_25A232000, v52, v53, "BoolOp> Op %s is not supported yet. line %ld", v54, 0x16u);
            __swift_destroy_boxed_opaque_existential_0Tm(v55);
            MEMORY[0x25F852800](v55, -1, -1);
            MEMORY[0x25F852800](v54, -1, -1);
          }

          else
          {
          }

          sub_25A874F54();
          swift_allocError();
          *v59 = 32;
          swift_willThrow();
          return __swift_destroy_boxed_opaque_existential_0Tm(v63);
        }
      }

      swift_once();
      goto LABEL_33;
    }

    sub_25A8F4B04(&v61);
    if (qword_27FA043C0 == -1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_19:
  v40 = sub_25A997BD8();
  __swift_project_value_buffer(v40, qword_27FA0FCE8);

  v41 = sub_25A997BB8();
  v42 = sub_25A9983A8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = v3[2];

    _os_log_impl(&dword_25A232000, v41, v42, "BoolOp> Left operand is not returning Truthiness. line %ld", v43, 0xCu);
    MEMORY[0x25F852800](v43, -1, -1);
  }

  else
  {
  }

  sub_25A874F54();
  swift_allocError();
  v39 = 29;
LABEL_16:
  *v38 = v39;
  return swift_willThrow();
}

uint64_t sub_25A912984()
{
  v1 = v0[5];
  if (v1[2])
  {
    v2 = v0;
    v3 = v1[4];
    v4 = v1[5];
    swift_getObjectType();
    v5 = *(v4 + 8);
    sub_25A9989B8();
    MEMORY[0x25F850290](32, 0xE100000000000000);
    v6 = v2[6];
    v7 = v2[7];

    MEMORY[0x25F850290](v6, v7);

    result = MEMORY[0x25F850290](32, 0xE100000000000000);
    v9 = v2[5];
    if (v9[2] >= 2uLL)
    {
      v10 = v9[6];
      v11 = v9[7];
      swift_getObjectType();
      v12 = *(v11 + 8);
      sub_25A9989B8();
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A912A70()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);
}

uint64_t sub_25A912AA0()
{
  sub_25A872F88(v0 + 24);
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_25A912B2C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25A912B6C()
{
  result = qword_27FA05170;
  if (!qword_27FA05170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05170);
  }

  return result;
}

unint64_t sub_25A912BD4()
{
  result = qword_27FA05188;
  if (!qword_27FA05188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05188);
  }

  return result;
}

unint64_t sub_25A912C2C()
{
  result = qword_27FA05190;
  if (!qword_27FA05190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05190);
  }

  return result;
}

unint64_t sub_25A912C84()
{
  result = qword_27FA05198;
  if (!qword_27FA05198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05198);
  }

  return result;
}

Morpheus::MorpheusError_optional __swiftcall MorpheusError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  switch(rawValue)
  {
    case 9201:
      goto LABEL_131;
    case 9202:
      v2 = 1;
      goto LABEL_131;
    case 9203:
      v2 = 2;
      goto LABEL_131;
    case 9204:
      v2 = 3;
      goto LABEL_131;
    case 9205:
      v2 = 4;
      goto LABEL_131;
    case 9206:
      v2 = 5;
      goto LABEL_131;
    case 9207:
      v2 = 6;
      goto LABEL_131;
    case 9208:
      v2 = 7;
      goto LABEL_131;
    case 9209:
      v2 = 8;
      goto LABEL_131;
    case 9210:
      v2 = 9;
      goto LABEL_131;
    case 9211:
      v2 = 10;
      goto LABEL_131;
    case 9212:
      v2 = 11;
      goto LABEL_131;
    case 9213:
      v2 = 12;
      goto LABEL_131;
    case 9214:
      v2 = 13;
      goto LABEL_131;
    case 9215:
      v2 = 14;
      goto LABEL_131;
    case 9216:
      v2 = 15;
      goto LABEL_131;
    case 9217:
      v2 = 16;
      goto LABEL_131;
    case 9218:
      v2 = 17;
      goto LABEL_131;
    case 9219:
      v2 = 18;
      goto LABEL_131;
    case 9220:
      v2 = 19;
      goto LABEL_131;
    case 9221:
      v2 = 20;
      goto LABEL_131;
    case 9222:
      v2 = 21;
      goto LABEL_131;
    case 9223:
      v2 = 22;
      goto LABEL_131;
    case 9224:
      v2 = 23;
      goto LABEL_131;
    case 9225:
      v2 = 24;
      goto LABEL_131;
    case 9226:
      v2 = 25;
      goto LABEL_131;
    case 9227:
      v2 = 26;
      goto LABEL_131;
    case 9228:
      v2 = 27;
      goto LABEL_131;
    case 9229:
      v2 = 28;
      goto LABEL_131;
    case 9230:
      v2 = 29;
      goto LABEL_131;
    case 9231:
      v2 = 30;
      goto LABEL_131;
    case 9232:
      v2 = 31;
      goto LABEL_131;
    case 9233:
      v2 = 32;
      goto LABEL_131;
    case 9234:
      v2 = 33;
      goto LABEL_131;
    case 9235:
      v2 = 34;
      goto LABEL_131;
    case 9236:
      v2 = 35;
      goto LABEL_131;
    case 9237:
      v2 = 36;
      goto LABEL_131;
    case 9238:
      v2 = 37;
      goto LABEL_131;
    case 9239:
      v2 = 38;
      goto LABEL_131;
    case 9240:
      v2 = 39;
      goto LABEL_131;
    case 9241:
      v2 = 40;
      goto LABEL_131;
    case 9242:
      v2 = 41;
      goto LABEL_131;
    case 9243:
      v2 = 42;
      goto LABEL_131;
    case 9244:
      v2 = 43;
      goto LABEL_131;
    case 9245:
      v2 = 44;
      goto LABEL_131;
    case 9246:
      v2 = 45;
      goto LABEL_131;
    case 9247:
      v2 = 46;
      goto LABEL_131;
    case 9248:
      v2 = 47;
      goto LABEL_131;
    case 9249:
      v2 = 48;
      goto LABEL_131;
    case 9250:
      v2 = 49;
      goto LABEL_131;
    case 9251:
      v2 = 50;
      goto LABEL_131;
    case 9252:
      v2 = 51;
      goto LABEL_131;
    case 9253:
      v2 = 52;
      goto LABEL_131;
    case 9254:
      v2 = 53;
      goto LABEL_131;
    case 9255:
      v2 = 54;
      goto LABEL_131;
    case 9256:
      v2 = 55;
      goto LABEL_131;
    case 9257:
      v2 = 56;
      goto LABEL_131;
    case 9258:
      v2 = 57;
      goto LABEL_131;
    case 9259:
      v2 = 58;
      goto LABEL_131;
    case 9260:
      v2 = 59;
      goto LABEL_131;
    case 9261:
      v2 = 60;
      goto LABEL_131;
    case 9262:
      v2 = 61;
      goto LABEL_131;
    case 9263:
      v2 = 62;
      goto LABEL_131;
    case 9264:
      v2 = 63;
      goto LABEL_131;
    case 9265:
      v2 = 64;
      goto LABEL_131;
    case 9267:
      v2 = 65;
      goto LABEL_131;
    case 9268:
      v2 = 66;
      goto LABEL_131;
    case 9269:
      v2 = 67;
      goto LABEL_131;
    case 9270:
      v2 = 68;
      goto LABEL_131;
    case 9271:
      v2 = 69;
      goto LABEL_131;
    case 9272:
      v2 = 70;
      goto LABEL_131;
    case 9273:
      v2 = 71;
      goto LABEL_131;
    case 9274:
      v2 = 72;
      goto LABEL_131;
    case 9275:
      v2 = 73;
      goto LABEL_131;
    case 9276:
      v2 = 74;
      goto LABEL_131;
    case 9277:
      v2 = 75;
      goto LABEL_131;
    case 9278:
      v2 = 76;
      goto LABEL_131;
    case 9279:
      v2 = 77;
      goto LABEL_131;
    case 9280:
      v2 = 78;
      goto LABEL_131;
    case 9281:
      v2 = 79;
      goto LABEL_131;
    case 9282:
      v2 = 80;
      goto LABEL_131;
    case 9283:
      v2 = 81;
      goto LABEL_131;
    case 9284:
      v2 = 82;
      goto LABEL_131;
    case 9285:
      v2 = 83;
      goto LABEL_131;
    case 9286:
      v2 = 84;
      goto LABEL_131;
    case 9287:
      v2 = 85;
      goto LABEL_131;
    case 9288:
      v2 = 86;
      goto LABEL_131;
    case 9289:
      v2 = 87;
      goto LABEL_131;
    case 9290:
      v2 = 88;
      goto LABEL_131;
    case 9291:
      v2 = 89;
      goto LABEL_131;
    case 9292:
      v2 = 90;
      goto LABEL_131;
    case 9293:
      v2 = 91;
      goto LABEL_131;
    case 9294:
      v2 = 92;
      goto LABEL_131;
    case 9295:
      v2 = 93;
      goto LABEL_131;
    case 9296:
      v2 = 94;
      goto LABEL_131;
    case 9297:
      v2 = 95;
      goto LABEL_131;
    case 9298:
      v2 = 96;
      goto LABEL_131;
    case 9299:
      v2 = 97;
      goto LABEL_131;
    case 9300:
      v2 = 98;
      goto LABEL_131;
    case 9301:
      v2 = 99;
      goto LABEL_131;
    case 9302:
      v2 = 100;
      goto LABEL_131;
    case 9303:
      v2 = 101;
      goto LABEL_131;
    case 9304:
      v2 = 102;
      goto LABEL_131;
    case 9305:
      v2 = 103;
      goto LABEL_131;
    case 9306:
      v2 = 104;
      goto LABEL_131;
    case 9307:
      v2 = 105;
      goto LABEL_131;
    case 9308:
      v2 = 106;
      goto LABEL_131;
    case 9309:
      v2 = 107;
      goto LABEL_131;
    case 9310:
      v2 = 108;
      goto LABEL_131;
    case 9311:
      v2 = 109;
      goto LABEL_131;
    case 9312:
      v2 = 110;
      goto LABEL_131;
    case 9313:
      v2 = 111;
      goto LABEL_131;
    case 9314:
      v2 = 112;
      goto LABEL_131;
    case 9315:
      v2 = 113;
      goto LABEL_131;
    case 9316:
      v2 = 114;
      goto LABEL_131;
    case 9317:
      v2 = 115;
      goto LABEL_131;
    case 9318:
      v2 = 116;
      goto LABEL_131;
    case 9319:
      v2 = 117;
      goto LABEL_131;
    case 9320:
      v2 = 118;
      goto LABEL_131;
    case 9321:
      v2 = 119;
      goto LABEL_131;
    case 9322:
      v2 = 120;
      goto LABEL_131;
    case 9323:
      v2 = 121;
      goto LABEL_131;
    case 9324:
      v2 = 122;
      goto LABEL_131;
    case 9325:
      v2 = 123;
      goto LABEL_131;
    case 9326:
      v2 = 124;
      goto LABEL_131;
    case 9327:
      v2 = 125;
      goto LABEL_131;
    case 9328:
      v2 = 126;
      goto LABEL_131;
    case 9329:
      v2 = 127;
LABEL_131:
      v3 = v2;
LABEL_132:
      *v1 = v3;
      break;
    default:
      v3 = -112;
      v2 = 0x80;
      switch(rawValue)
      {
        case 9330:
          goto LABEL_131;
        case 9331:
          v2 = -127;
          goto LABEL_131;
        case 9332:
          v2 = -126;
          goto LABEL_131;
        case 9333:
          v2 = -125;
          goto LABEL_131;
        case 9334:
          v2 = -124;
          goto LABEL_131;
        case 9335:
          v2 = -123;
          goto LABEL_131;
        case 9336:
          v2 = -122;
          goto LABEL_131;
        case 9337:
          v2 = -121;
          goto LABEL_131;
        case 9338:
          v2 = -120;
          goto LABEL_131;
        case 9339:
          v2 = -119;
          goto LABEL_131;
        case 9340:
          v2 = -118;
          goto LABEL_131;
        case 9341:
          v2 = -117;
          goto LABEL_131;
        case 9342:
          v2 = -116;
          goto LABEL_131;
        case 9343:
          v2 = -115;
          goto LABEL_131;
        case 9344:
          v2 = -114;
          goto LABEL_131;
        case 9345:
          v2 = -113;
          goto LABEL_131;
        case 9346:
          goto LABEL_132;
        case 9347:
          *v1 = -111;
          break;
        case 9348:
          *v1 = -110;
          break;
        case 9349:
          *v1 = -109;
          break;
        case 9350:
          *v1 = -108;
          break;
        case 9351:
          *v1 = -107;
          break;
        case 9352:
          *v1 = -106;
          break;
        case 9353:
          *v1 = -105;
          break;
        case 9354:
          *v1 = -104;
          break;
        case 9355:
          *v1 = -103;
          break;
        case 9356:
          *v1 = -102;
          break;
        case 9357:
          *v1 = -101;
          break;
        case 9358:
          *v1 = -100;
          break;
        case 9359:
          *v1 = -99;
          break;
        case 9360:
          *v1 = -98;
          break;
        case 9361:
          *v1 = -97;
          break;
        case 9362:
          *v1 = -96;
          break;
        case 9399:
          *v1 = -95;
          break;
        default:
          *v1 = -94;
          break;
      }

      break;
  }

  return rawValue;
}

unint64_t sub_25A9135F8()
{
  result = qword_27FA051A0;
  if (!qword_27FA051A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA051A0);
  }

  return result;
}

uint64_t sub_25A91364C()
{
  v1 = *v0;
  sub_25A998B18();
  MEMORY[0x25F850E50](qword_25A9FC4A8[v1 ^ 0x80]);
  return sub_25A998B38();
}

uint64_t sub_25A9136DC()
{
  v1 = *v0;
  sub_25A998B18();
  MEMORY[0x25F850E50](qword_25A9FC4A8[v1 ^ 0x80]);
  return sub_25A998B38();
}

uint64_t sub_25A913754(uint64_t a1, uint64_t a2)
{
  v4 = sub_25A913904();
  v5 = sub_25A913958();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for MorpheusError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x5F)
  {
    goto LABEL_17;
  }

  if (a2 + 161 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 161) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 161;
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

      return (*a1 | (v4 << 8)) - 161;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 161;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA2;
  v8 = v6 - 162;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MorpheusError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 161 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 161) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x5F)
  {
    v4 = 0;
  }

  if (a2 > 0x5E)
  {
    v5 = ((a2 - 95) >> 8) + 1;
    *result = a2 - 95;
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
    *result = a2 - 95;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25A913904()
{
  result = qword_27FA051A8;
  if (!qword_27FA051A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA051A8);
  }

  return result;
}

unint64_t sub_25A913958()
{
  result = qword_27FA051B0;
  if (!qword_27FA051B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA051B0);
  }

  return result;
}

uint64_t sub_25A9139B0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA042E8 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA046B8;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A915040(&qword_27FA04718, type metadata accessor for PyBuiltInClass);
  *a1 = v2;
}

double sub_25A913A64@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, _OWORD *a3@<X8>)
{
  v4 = *((*(a2 + 40))(a1, a2) + 32);

  sub_25A998578();
  swift_beginAccess();
  v5 = *(v4 + 16);
  if (*(v5 + 16))
  {
    v6 = *(v4 + 16);

    v7 = sub_25A8F35BC(v10);
    if (v8)
    {
      sub_25A87500C(*(v5 + 56) + 32 * v7, a3);

      sub_25A8795A0(v10);

      return result;
    }
  }

  else
  {
  }

  sub_25A8795A0(v10);
  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

uint64_t sub_25A913B8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 40))(a3, a4);
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  LOBYTE(a2) = LexicalContext.has(attribute:)(v6);

  return a2 & 1;
}

uint64_t sub_25A913BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 40))(a3, a4);
  sub_25A87500C(a1, v12);
  if (!swift_dynamicCast())
  {
  }

  v7 = *(v6 + 32);

  sub_25A998578();
  sub_25A87500C(a2, v11);
  sub_25A874FB0(v12, &v10);
  sub_25A8952F0(v11, v9, &qword_27FA04458, &unk_25A9F7FB0);
  swift_beginAccess();
  sub_25A8F2E14(v9, &v10);
  swift_endAccess();

  sub_25A878194(v11, &qword_27FA04458, &unk_25A9F7FB0);
  return sub_25A8795A0(v12);
}

uint64_t sub_25A913D58(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *((*(a5 + 40))(a4, a5) + 32);

  v14[0] = a1;
  v14[1] = a2;

  sub_25A998578();
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  v11 = (*(v10 + 40))(v9, v10);
  v15[3] = type metadata accessor for LexicalContext();
  v15[0] = v11;
  sub_25A874FB0(v16, v14);
  sub_25A8952F0(v15, v13, &qword_27FA04458, &unk_25A9F7FB0);
  swift_beginAccess();
  sub_25A8F2E14(v13, v14);
  swift_endAccess();

  sub_25A8795A0(v16);
  return sub_25A878194(v15, &qword_27FA04458, &unk_25A9F7FB0);
}

uint64_t sub_25A913EB4()
{
  v1 = *(v0 + 32);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + 32);

  v8 = 0;
  v41 = v1;
  while (v5)
  {
LABEL_12:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(v1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_25A87500C(*(v1 + 56) + 32 * v12, v55);
    v53[0] = v15;
    v53[1] = v14;
    sub_25A872D74(v55, &v54);
    v16 = *(*(v42 + 40) + 32);
    sub_25A8952F0(v53, v51, &qword_27FA04E48, &qword_25A9FB8F0);
    v47[0] = v51[0];
    v47[1] = v51[1];

    sub_25A998578();
    sub_25A8952F0(v53, v47, &qword_27FA04E48, &qword_25A9FB8F0);

    sub_25A872D74(&v48, v49);
    sub_25A874FB0(v50, v46);
    sub_25A8952F0(v49, &v44, &qword_27FA04458, &unk_25A9F7FB0);
    swift_beginAccess();
    if (v45)
    {
      sub_25A872D74(&v44, v43);
      v17 = *(v16 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = *(v16 + 16);
      v19 = v56;
      *(v16 + 16) = 0x8000000000000000;
      v21 = sub_25A8F35BC(v46);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_32;
      }

      v25 = v20;
      if (v19[3] >= v24)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v28 = v56;
          if ((v20 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_25A968DB8();
          v28 = v56;
          if ((v25 & 1) == 0)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        sub_25A9679D0(v24, isUniquelyReferenced_nonNull_native);
        v26 = sub_25A8F35BC(v46);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_34;
        }

        v21 = v26;
        v28 = v56;
        if ((v25 & 1) == 0)
        {
LABEL_24:
          v28[(v21 >> 6) + 8] |= 1 << v21;
          sub_25A874FB0(v46, v28[6] + 40 * v21);
          sub_25A872D74(v43, (v28[7] + 32 * v21));
          sub_25A8795A0(v46);
          v37 = v28[2];
          v38 = __OFADD__(v37, 1);
          v39 = v37 + 1;
          if (v38)
          {
            goto LABEL_33;
          }

          v28[2] = v39;
          goto LABEL_5;
        }
      }

      v9 = (v28[7] + 32 * v21);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      sub_25A872D74(v43, v9);
      sub_25A8795A0(v46);
LABEL_5:
      v10 = *(v16 + 16);
      *(v16 + 16) = v28;

      v1 = v41;
      goto LABEL_6;
    }

    sub_25A878194(&v44, &qword_27FA04458, &unk_25A9F7FB0);
    v29 = *(v16 + 16);
    v30 = sub_25A8F35BC(v46);
    if (v31)
    {
      v32 = v30;
      v33 = *(v16 + 16);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v16 + 16);
      v56 = v35;
      *(v16 + 16) = 0x8000000000000000;
      if (!v34)
      {
        sub_25A968DB8();
        v35 = v56;
      }

      sub_25A8795A0(*(v35 + 48) + 40 * v32);
      sub_25A872D74((*(v35 + 56) + 32 * v32), v43);
      sub_25A969C84(v32, v35);
      sub_25A8795A0(v46);
      v36 = *(v16 + 16);
      *(v16 + 16) = v35;
    }

    else
    {
      sub_25A8795A0(v46);
      memset(v43, 0, sizeof(v43));
    }

    sub_25A878194(v43, &qword_27FA04458, &unk_25A9F7FB0);
LABEL_6:
    v5 &= v5 - 1;
    swift_endAccess();

    sub_25A878194(v49, &qword_27FA04458, &unk_25A9F7FB0);
    sub_25A8795A0(v50);
    sub_25A878194(v53, &qword_27FA04E48, &qword_25A9FB8F0);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
    }

    v5 = *(v2 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_25A998AA8();
  __break(1u);
  return result;
}

uint64_t sub_25A91431C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_25A914408(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6B636F6C62;
  }

  else
  {
    v4 = 1701667182;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6B636F6C62;
  }

  else
  {
    v6 = 1701667182;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A9989E8();
  }

  return v9 & 1;
}

uint64_t sub_25A9144A4()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A91451C()
{
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A914580()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A9145F4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25A914654(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (*v1)
  {
    v2 = 0x6B636F6C62;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A914688()
{
  if (*v0)
  {
    result = 0x6B636F6C62;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_25A9146B8@<X0>(char *a1@<X8>)
{
  v2 = sub_25A9988C8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_25A91471C(uint64_t a1)
{
  v2 = sub_25A914FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A914758(uint64_t a1)
{
  v2 = sub_25A914FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A9147E0(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA051B8, &unk_25A9FCDD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A914FEC();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for ModuleOp();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v14[0]) = 0;
    v1[5] = sub_25A9988F8();
    v1[6] = v12;
    v15 = 1;
    type metadata accessor for LexicalBlock();
    sub_25A915040(&qword_27FA04A18, type metadata accessor for LexicalBlock);
    sub_25A998938();
    v1[7] = v14[0];
    sub_25A872F24(a1, v14);
    v3 = sub_25A8963D8(v14);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A914A50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(v3 + 56) + 48);
  v11[3] = MEMORY[0x277D837D0];
  v11[0] = a1;
  v11[1] = a2;
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  v7 = *(v6 + 40);

  v8 = v7(v5, v6);
  v10[3] = type metadata accessor for LexicalContext();
  v10[0] = v8;
  LexicalContext.store(key:obj:)(v11, v10);

  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

uint64_t sub_25A914B24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 32);
  swift_beginAccess();
  *(v3 + 32) = v4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v5 = *(v1 + 56);

  sub_25A87A380(0, a1);
}

uint64_t sub_25A914BE0()
{
  v2 = *(v0 + 56);
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v3 = *(v0 + 32);
  swift_beginAccess();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v4 = *(v0 + 56);

  sub_25A87A380(0, v6);
  if (!v1)
  {
    sub_25A872CE0(v6);
  }
}

uint64_t sub_25A914CA4()
{
  v1 = *(v0 + 56);

  v2 = sub_25A87A5A4();

  return v2;
}

uint64_t sub_25A914CF0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);
}

uint64_t sub_25A914D20()
{
  sub_25A872F88(v0 + 24);
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_25A914DBC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 32) = a2;
  return swift_unknownObjectWeakAssign();
}

unint64_t sub_25A914FEC()
{
  result = qword_27FA051C0;
  if (!qword_27FA051C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA051C0);
  }

  return result;
}

uint64_t sub_25A915040(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25A91509C()
{
  result = qword_27FA051C8;
  if (!qword_27FA051C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA051C8);
  }

  return result;
}

unint64_t sub_25A9150F4()
{
  result = qword_27FA051D0;
  if (!qword_27FA051D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA051D0);
  }

  return result;
}

unint64_t sub_25A91514C()
{
  result = qword_27FA051D8;
  if (!qword_27FA051D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA051D8);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25A9151F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25A91523C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t Int.mod(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_25A917A78(v33);
    if (a2 == a2)
    {
      mlx_array_new_int();
    }

    __break(1u);
    goto LABEL_32;
  }

  v31 = a3;
  sub_25A87817C(v33, v36);
  v6 = v37;
  v3 = v38;
  v7 = __swift_project_boxed_opaque_existential_1(v36, v37);
  v32 = v29;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_17;
  }

  *&v33[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v10 = sub_25A9984C8();
    if (v10 < 64)
    {
LABEL_16:
      sub_25A9984B8();
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v12 = sub_25A9984D8();
  v10 = sub_25A9984C8();
  if (v12)
  {
    if (v10 <= 64)
    {
      v30 = *(*(v3 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v29[1] = v29;
      v16 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v18 = v29 - v17;
      swift_getAssociatedConformanceWitness();
      v29[2] = v18;
      v19 = sub_25A998A78();
      v29[0] = v29;
      MEMORY[0x28223BE20](v19);
      sub_25A9989C8();
      v20 = *(*(v3 + 32) + 8);
      LOBYTE(v18) = sub_25A997D88();
      (*(v8 + 8))(v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v18)
      {
        goto LABEL_35;
      }

      goto LABEL_16;
    }

LABEL_11:
    v30 = v29;
    MEMORY[0x28223BE20](v10);
    sub_25A895280();
    sub_25A9984A8();
    v13 = *(*(v3 + 32) + 8);
    v14 = sub_25A997D88();
    (*(v8 + 8))(v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v14)
    {
      goto LABEL_35;
    }

    goto LABEL_17;
  }

  if (v10 < 64)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (sub_25A9984C8() > 64 || sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
  {
    *&v33[0] = 0x7FFFFFFFFFFFFFFFLL;
    v21 = sub_25A9984D8();
    v22 = sub_25A9984C8();
    if (v21)
    {
      if (v22 >= 65)
      {
        goto LABEL_26;
      }
    }

    else if (v22 >= 64)
    {
LABEL_26:
      MEMORY[0x28223BE20](v22);
      sub_25A895280();
      sub_25A9984A8();
      v23 = *(*(v3 + 32) + 8);
      v24 = sub_25A997D88();
      (*(v8 + 8))(v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if ((v24 & 1) == 0)
      {
        goto LABEL_27;
      }

      __break(1u);
LABEL_35:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_27:
  v25 = sub_25A9984B8();
  (*(v8 + 8))(v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  if (!v25)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a2 == 0x8000000000000000 && v25 == -1)
  {
LABEL_33:
    __break(1u);
    swift_once();
    sub_25A998C58();
    v11 = v36[0];
    v36[0] = mlx_array_new();
    swift_beginAccess();
    mlx_remainder(v36, a2, *(v3 + 16), *(v11 + 16));
  }

  v26 = v31;
  v31[3] = MEMORY[0x277D83B88];
  *v26 = a2 % v25;
  result = __swift_destroy_boxed_opaque_existential_0Tm(v36);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A915AD0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A915AD8);
  }

  _Unwind_Resume(a1);
}

uint64_t Int64.mod(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v41 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v35, v38);
    v6 = v39;
    v7 = v40;
    v8 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v33 = v31;
    v9 = *(v6 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    (*(v9 + 16))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
    {
      goto LABEL_19;
    }

    *&v35[0] = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v11 = sub_25A9984C8();
      if (v11 < 64)
      {
LABEL_18:
        sub_25A9984B8();
        goto LABEL_19;
      }
    }

    else
    {
      v15 = sub_25A9984D8();
      v11 = sub_25A9984C8();
      if ((v15 & 1) == 0)
      {
        if (v11 < 64)
        {
          goto LABEL_18;
        }

LABEL_19:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_29;
        }

        *&v35[0] = 0x7FFFFFFFFFFFFFFFLL;
        v24 = sub_25A9984D8();
        v25 = sub_25A9984C8();
        if (v24)
        {
          if (v25 >= 65)
          {
            goto LABEL_28;
          }
        }

        else if (v25 >= 64)
        {
LABEL_28:
          MEMORY[0x28223BE20](v25);
          sub_25A8DF900();
          sub_25A9984A8();
          v26 = *(v7[4] + 8);
          v27 = sub_25A997D88();
          (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
          if ((v27 & 1) == 0)
          {
            goto LABEL_29;
          }

          __break(1u);
LABEL_38:
          __break(1u);
        }

        sub_25A9984B8();
LABEL_29:
        v28 = sub_25A9984B8();
        (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v28)
        {
          if (a2 != 0x8000000000000000 || v28 != -1)
          {
            v29 = v34;
            v34[3] = MEMORY[0x277D84A28];
            *v29 = a2 % v28;
            result = __swift_destroy_boxed_opaque_existential_0Tm(v38);
            goto LABEL_33;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_36:
        swift_once();
LABEL_10:
        sub_25A998C58();
        v14 = v38[0];
        v38[0] = mlx_array_new();
        swift_beginAccess();
        mlx_remainder(v38, a2, v7[2], *(v14 + 16));
      }

      if (v11 <= 64)
      {
        v32 = *(v7[3] + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v31[1] = v31;
        v19 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v21 = v31 - v20;
        swift_getAssociatedConformanceWitness();
        v31[2] = v21;
        v22 = sub_25A998A78();
        v31[0] = v31;
        MEMORY[0x28223BE20](v22);
        sub_25A9989C8();
        v23 = *(v7[4] + 8);
        LOBYTE(v21) = sub_25A997D88();
        (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v21)
        {
          goto LABEL_38;
        }

        goto LABEL_18;
      }
    }

    v32 = v31;
    MEMORY[0x28223BE20](v11);
    sub_25A8DF900();
    sub_25A9984A8();
    v16 = *(v7[4] + 8);
    v17 = sub_25A997D88();
    (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v17)
    {
      goto LABEL_38;
    }

    goto LABEL_19;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_25A917A78(v35);
  v38[0] = a2;
  a2 = mlx_array_new_data(v38, (MEMORY[0x277D84F90] + 32), 0, 8);
  v12 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v7 = v12;
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

  result = mlx_array_free(a2);
LABEL_33:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A916360(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A916368);
  }

  _Unwind_Resume(a1);
}

uint64_t Int32.mod(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v38 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    sub_25A917A78(v32);
    mlx_array_new_int();
  }

  sub_25A87817C(v32, v35);
  v4 = v36;
  v5 = v37;
  v6 = __swift_project_boxed_opaque_existential_1(v35, v36);
  v30 = v28;
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 32)
  {
    goto LABEL_16;
  }

  LODWORD(v32[0]) = 0x80000000;
  if (sub_25A9984D8())
  {
    v9 = sub_25A9984C8();
    if (v9 < 32)
    {
LABEL_15:
      sub_25A9984B8();
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v11 = sub_25A9984D8();
  v9 = sub_25A9984C8();
  if (v11)
  {
    if (v9 <= 32)
    {
      v29 = *(*(v5 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v28[1] = v28;
      v15 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v17 = v28 - v16;
      swift_getAssociatedConformanceWitness();
      v28[2] = v17;
      v18 = sub_25A998A78();
      v28[0] = v28;
      MEMORY[0x28223BE20](v18);
      sub_25A9989C8();
      v19 = *(*(v5 + 32) + 8);
      LOBYTE(v17) = sub_25A997D88();
      (*(v7 + 8))(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v17)
      {
        goto LABEL_33;
      }

      goto LABEL_15;
    }

LABEL_10:
    v29 = v28;
    MEMORY[0x28223BE20](v9);
    sub_25A8DF954();
    sub_25A9984A8();
    v12 = *(*(v5 + 32) + 8);
    v13 = sub_25A997D88();
    (*(v7 + 8))(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    if (v13)
    {
      goto LABEL_33;
    }

    goto LABEL_16;
  }

  if (v9 < 32)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (sub_25A9984C8() > 32 || sub_25A9984C8() == 32 && (sub_25A9984D8() & 1) == 0)
  {
    LODWORD(v32[0]) = 0x7FFFFFFF;
    v20 = sub_25A9984D8();
    v21 = sub_25A9984C8();
    if (v20)
    {
      if (v21 >= 33)
      {
        goto LABEL_25;
      }
    }

    else if (v21 >= 32)
    {
LABEL_25:
      MEMORY[0x28223BE20](v21);
      sub_25A8DF954();
      sub_25A9984A8();
      v22 = *(*(v5 + 32) + 8);
      v23 = sub_25A997D88();
      (*(v7 + 8))(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if ((v23 & 1) == 0)
      {
        goto LABEL_26;
      }

      __break(1u);
LABEL_33:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_26:
  v24 = sub_25A9984B8();
  (*(v7 + 8))(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  if (!v24)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (a2 == 0x80000000 && v24 == -1)
  {
LABEL_31:
    __break(1u);
    swift_once();
    sub_25A998C58();
    v10 = v35[0];
    v35[0] = mlx_array_new();
    swift_beginAccess();
    mlx_remainder(v35, a2, *(v5 + 16), *(v10 + 16));
  }

  v25 = v31;
  *(v31 + 24) = MEMORY[0x277D849A8];
  *v25 = a2 % v24;
  result = __swift_destroy_boxed_opaque_existential_0Tm(v35);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A916BD8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A916BE0);
  }

  _Unwind_Resume(a1);
}

uint64_t UInt32.mod(_:)@<X0>(uint64_t a1@<X0>, mlx::core::array *a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v41 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v35, v38);
    v6 = v39;
    v7 = v40;
    v8 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v33 = v31;
    v9 = *(v6 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    (*(v9 + 16))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
    {
      goto LABEL_19;
    }

    *&v35[0] = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v11 = sub_25A9984C8();
      if (v11 < 64)
      {
LABEL_18:
        sub_25A9984B8();
        goto LABEL_19;
      }
    }

    else
    {
      v15 = sub_25A9984D8();
      v11 = sub_25A9984C8();
      if ((v15 & 1) == 0)
      {
        if (v11 < 64)
        {
          goto LABEL_18;
        }

LABEL_19:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_29;
        }

        *&v35[0] = 0x7FFFFFFFFFFFFFFFLL;
        v24 = sub_25A9984D8();
        v25 = sub_25A9984C8();
        if (v24)
        {
          if (v25 >= 65)
          {
            goto LABEL_28;
          }
        }

        else if (v25 >= 64)
        {
LABEL_28:
          MEMORY[0x28223BE20](v25);
          sub_25A8DF900();
          sub_25A9984A8();
          v26 = *(v7[4] + 8);
          v27 = sub_25A997D88();
          (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
          if ((v27 & 1) == 0)
          {
            goto LABEL_29;
          }

          __break(1u);
LABEL_35:
          __break(1u);
        }

        sub_25A9984B8();
LABEL_29:
        v28 = sub_25A9984B8();
        (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v28)
        {
          v29 = v34;
          v34[3] = MEMORY[0x277D84A28];
          *v29 = a2 % v28;
          result = __swift_destroy_boxed_opaque_existential_0Tm(v38);
          goto LABEL_31;
        }

        __break(1u);
LABEL_33:
        swift_once();
LABEL_10:
        sub_25A998C58();
        v14 = v38[0];
        v38[0] = mlx_array_new();
        swift_beginAccess();
        mlx_remainder(v38, a2, v7[2], *(v14 + 16));
      }

      if (v11 <= 64)
      {
        v32 = *(v7[3] + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v31[1] = v31;
        v19 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v21 = v31 - v20;
        swift_getAssociatedConformanceWitness();
        v31[2] = v21;
        v22 = sub_25A998A78();
        v31[0] = v31;
        MEMORY[0x28223BE20](v22);
        sub_25A9989C8();
        v23 = *(v7[4] + 8);
        LOBYTE(v21) = sub_25A997D88();
        (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v21)
        {
          goto LABEL_35;
        }

        goto LABEL_18;
      }
    }

    v32 = v31;
    MEMORY[0x28223BE20](v11);
    sub_25A8DF900();
    sub_25A9984A8();
    v16 = *(v7[4] + 8);
    v17 = sub_25A997D88();
    (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v17)
    {
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_25A917A78(v35);
  LODWORD(v38[0]) = a2;
  a2 = mlx_array_new_data(v38, (MEMORY[0x277D84F90] + 32), 0, 3);
  v12 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v7 = v12;
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

  result = mlx_array_free(a2);
LABEL_31:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A917454(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A91745CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t Float.mod(_:)(uint64_t a1, __n128 a2)
{
  v10[10] = *MEMORY[0x277D85DE8];
  v4 = mlx_array_new_float(a1, a2);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v4;
  v5 = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v7 = v5;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_remainder(v10, v4, v7[2], *(v8 + 16));
  }

  swift_setDeallocating();
  result = mlx_array_free(v4);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A91767C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A917684);
  }

  _Unwind_Resume(a1);
}

uint64_t Double.mod(_:)(uint64_t a1, __n128 a2)
{
  v10[10] = *MEMORY[0x277D85DE8];
  a2.n128_f32[0] = a2.n128_f64[0];
  v4 = mlx_array_new_float(a1, a2);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v4;
  v5 = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v7 = v5;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_remainder(v10, v4, v7[2], *(v8 + 16));
  }

  swift_setDeallocating();
  result = mlx_array_free(v4);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A917898(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A9178A0);
  }

  _Unwind_Resume(a1);
}

void *sub_25A9178D8(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  result = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v5 = result;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v9[0] = mlx_array_new();
    swift_beginAccess();
    v6 = v1[2];
    swift_beginAccess();
    mlx_remainder(v9, v6, v5[2], *(v8 + 16));
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A917A40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A917A48);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A917A78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C8, &qword_25A9F8E88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Dictionary.get(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v33 = a2;
  v34 = a5;
  v35 = a6;
  v9 = sub_25A9983F8();
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = sub_25A9983F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v30 - v17;
  v19 = *(a3 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25A87500C(a1, v36);
  v23 = swift_dynamicCast();
  v24 = *(v19 + 56);
  if (v23)
  {
    v25 = v35;
    v24(v18, 0, 1, a3);
    (*(v19 + 32))(v22, v18, a3);
    sub_25A997D08();
    v26 = *(a4 - 8);
    if ((*(v26 + 48))(v12, 1, a4) == 1)
    {
      (*(v19 + 8))(v22, a3);
      result = (*(v31 + 8))(v12, v32);
      *v25 = 0u;
      v25[1] = 0u;
    }

    else
    {
      *(v25 + 3) = a4;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
      (*(v26 + 32))(boxed_opaque_existential_0, v12, a4);
      return (*(v19 + 8))(v22, a3);
    }
  }

  else
  {
    v24(v18, 1, 1, a3);
    result = (*(v14 + 8))(v18, v13);
    v28 = v35;
    *v35 = 0u;
    v28[1] = 0u;
  }

  return result;
}

uint64_t Array.get(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_25A87500C(a1, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (swift_dynamicCast())
  {
    v64 = a3;
    sub_25A87817C(v65, &v68);
    v6 = v69;
    v7 = v70;
    v8 = __swift_project_boxed_opaque_existential_1(&v68, v69);
    v9 = v60;
    v10 = *(v6 - 8);
    v11 = *(v10 + 8);
    MEMORY[0x28223BE20](v8);
    v12 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 2))(v12);
    if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
    {
      *&v65[0] = 0x8000000000000000;
      if (sub_25A9984D8())
      {
        v13 = sub_25A9984C8();
        if (v13 < 64)
        {
          sub_25A9984B8();
          goto LABEL_56;
        }

        v62 = v60;
        v63 = v60;
        MEMORY[0x28223BE20](v13);
        sub_25A895280();
        sub_25A9984A8();
        v44 = *(*(v7 + 32) + 8);
        v43 = sub_25A997D88();
        (*(v10 + 1))(v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
LABEL_49:
        v9 = v62;
        if (v43)
        {
          goto LABEL_72;
        }

        goto LABEL_56;
      }

      v63 = v11;
      v39 = sub_25A9984D8();
      v40 = sub_25A9984C8();
      if (v39)
      {
        v62 = v60;
        if (v40 > 64)
        {
          v61 = v60;
          v41 = v63;
          MEMORY[0x28223BE20](v40);
          sub_25A895280();
          sub_25A9984A8();
          v42 = *(*(v7 + 32) + 8);
          v43 = sub_25A997D88();
          v11 = v41;
          (*(v10 + 1))(v60 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
          goto LABEL_49;
        }

        v60[0] = *(*(v7 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v61 = v60;
        v46 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();
        v47 = sub_25A998A78();
        v60[1] = v60;
        MEMORY[0x28223BE20](v47);
        v49 = v60 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25A9989C8();
        v50 = *(*(v7 + 32) + 8);
        v51 = sub_25A997D88();
        (*(v10 + 1))(v49, v6);
        if (v51)
        {
          goto LABEL_72;
        }

        sub_25A9984B8();
        v9 = v62;
      }

      else if (v40 < 64)
      {
        sub_25A9984B8();
      }

      v11 = v63;
    }

LABEL_56:
    if (sub_25A9984C8() <= 64)
    {
      goto LABEL_61;
    }

    while (1)
    {
      v63 = v10;
      v52 = v11;
      *&v65[0] = 0x7FFFFFFFFFFFFFFFLL;
      v53 = sub_25A9984D8();
      v54 = sub_25A9984C8();
      if (v53)
      {
        if (v54 < 65)
        {
          goto LABEL_65;
        }
      }

      else if (v54 < 64)
      {
LABEL_65:
        sub_25A9984B8();
        v10 = v63;
LABEL_66:
        v57 = sub_25A9984B8();
        (*(v10 + 1))(v12, v6);
        v58 = v64;
        if (v57 < 0)
        {
          v59 = v64;
          if (!__OFADD__(_sSa8MorpheusE3lenSiyF_0(), v57))
          {
            v58 = v59;
            goto LABEL_69;
          }

LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:

          __break(1u);
        }

        else
        {
LABEL_69:
          v58[3] = a2;
          __swift_allocate_boxed_opaque_existential_0(v58);
          sub_25A9981D8();
          return __swift_destroy_boxed_opaque_existential_0Tm(&v68);
        }

        return result;
      }

      v62 = v9;
      MEMORY[0x28223BE20](v54);
      v11 = v60 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25A895280();
      sub_25A9984A8();
      v55 = *(*(v7 + 32) + 8);
      v56 = sub_25A997D88();
      v10 = v63;
      (*(v63 + 1))(v11, v6);
      v9 = v62;
      if (v56)
      {
        __break(1u);
LABEL_61:
        if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_66;
    }
  }

  v66 = 0;
  memset(v65, 0, sizeof(v65));
  sub_25A917A78(v65);
  sub_25A87500C(a1, &v68);
  if (!swift_dynamicCast())
  {
LABEL_17:
    sub_25A874F54();
    v24 = swift_allocError();
    *v25 = 101;
    v71 = v24;
    return swift_willThrow();
  }

  v14 = _sSa8MorpheusE3lenSiyF_0();
  v17 = sub_25A8FF4EC(v14);
  v18 = v15;
  v19 = v16;
  v20 = 0;
  v21 = v17;
  while (1)
  {
    v22 = v15 >= v21;
    if (v16 > 0)
    {
      v22 = v21 >= v15;
    }

    if (v22)
    {
      break;
    }

    v23 = __OFADD__(v21, v16);
    v21 += v16;
    if (v23)
    {
      v21 = (v21 >> 63) ^ 0x8000000000000000;
    }

    v23 = __OFADD__(v20++, 1);
    if (v23)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  v64 = a3;
  *&v65[0] = MEMORY[0x277D84F90];
  sub_25A937550(0, v20, 0);
  v27 = *&v65[0];
  if (v20)
  {
    do
    {
      v28 = v18 >= v17;
      if (v19 > 0)
      {
        v28 = v17 >= v18;
      }

      if (v28)
      {
        __break(1u);
        goto LABEL_71;
      }

      if (__OFADD__(v17, v19))
      {
        v29 = ((v17 + v19) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v29 = v17 + v19;
      }

      v69 = a2;
      __swift_allocate_boxed_opaque_existential_0(&v68);
      sub_25A9981D8();
      if (v71)
      {
        goto LABEL_73;
      }

      *&v65[0] = v27;
      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_25A937550((v30 > 1), v31 + 1, 1);
        v27 = *&v65[0];
      }

      *(v27 + 16) = v31 + 1;
      sub_25A872D74(&v68, (v27 + 32 * v31 + 32));
      v17 = v29;
      --v20;
    }

    while (v20);
  }

  else
  {
    v29 = v17;
  }

  v32 = v18 >= v29;
  if (v19 > 0)
  {
    v32 = v29 >= v18;
  }

  if (!v32)
  {
    do
    {
      if (__OFADD__(v29, v19))
      {
        v35 = ((v29 + v19) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v35 = v29 + v19;
      }

      v69 = a2;
      __swift_allocate_boxed_opaque_existential_0(&v68);
      sub_25A9981D8();
      if (v71)
      {
        goto LABEL_73;
      }

      *&v65[0] = v27;
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_25A937550((v36 > 1), v37 + 1, 1);
        v27 = *&v65[0];
      }

      *(v27 + 16) = v37 + 1;
      sub_25A872D74(&v68, (v27 + 32 * v37 + 32));
      v38 = v18 >= v35;
      if (v19 > 0)
      {
        v38 = v35 >= v18;
      }

      v29 = v35;
    }

    while (!v38);
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
  result = swift_allocObject();
  *(result + 16) = v27;
  v34 = v64;
  v64[3] = v33;
  *v34 = result;
  return result;
}

uint64_t String.get(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_25A87500C(a1, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    sub_25A917A78(v47);
    sub_25A87500C(a1, v50);
    if (swift_dynamicCast())
    {
      v17 = _sSS8MorpheusE3lenSiyF_0();
      v18 = sub_25A8FF4EC(v17);
      v20 = v19;
      v22 = v21;

      v23 = sub_25A918FEC(v18, v20, v22);

      v50[0] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA051E0, &qword_25A9FCFF8);
      sub_25A91921C();
      result = sub_25A998038();
      a3[3] = MEMORY[0x277D837D0];
      *a3 = result;
      a3[1] = v24;
    }

    else
    {
      sub_25A874F54();
      swift_allocError();
      *v25 = -96;
      return swift_willThrow();
    }

    return result;
  }

  v46 = a2;
  v53 = v3;
  sub_25A87817C(v47, v50);
  v7 = v51;
  v8 = v52;
  v9 = __swift_project_boxed_opaque_existential_1(v50, v51);
  v10 = v43;
  v11 = *(v7 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_19;
  }

  *&v47[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v13 = sub_25A9984C8();
    if (v13 >= 64)
    {
      v44 = v43;
      MEMORY[0x28223BE20](v13);
      v45 = v43;
      sub_25A895280();
      sub_25A9984A8();
      v14 = *(*(v8 + 32) + 8);
      v15 = sub_25A997D88();
      v10 = v45;
      result = (*(v11 + 8))(v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      if (v15)
      {
        goto LABEL_33;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v45 = v43;
  v26 = sub_25A9984D8();
  v27 = sub_25A9984C8();
  if (v26)
  {
    if (v27 <= 64)
    {
      v44 = *(*(v8 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v43[2] = v43;
      v31 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v43[0] = v43 - v32;
      swift_getAssociatedConformanceWitness();
      v33 = sub_25A998A78();
      v43[1] = v43;
      MEMORY[0x28223BE20](v33);
      sub_25A9989C8();
      v34 = *(*(v8 + 32) + 8);
      v35 = sub_25A997D88();
      result = (*(v11 + 8))(v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      if (v35)
      {
        goto LABEL_33;
      }

      sub_25A9984B8();
      v10 = v45;
    }

    else
    {
      v44 = v43;
      MEMORY[0x28223BE20](v27);
      sub_25A895280();
      sub_25A9984A8();
      v28 = *(*(v8 + 32) + 8);
      v29 = sub_25A997D88();
      result = (*(v11 + 8))(v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      v10 = v45;
      if (v29)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_19;
  }

  v10 = v45;
  if (v27 < 64)
  {
LABEL_16:
    sub_25A9984B8();
  }

LABEL_19:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v45 = v10;
    *&v47[0] = 0x7FFFFFFFFFFFFFFFLL;
    v36 = sub_25A9984D8();
    v37 = sub_25A9984C8();
    if ((v36 & 1) == 0)
    {
      break;
    }

    if (v37 < 65)
    {
      goto LABEL_28;
    }

LABEL_22:
    v44 = v43;
    MEMORY[0x28223BE20](v37);
    sub_25A895280();
    sub_25A9984A8();
    v38 = *(*(v8 + 32) + 8);
    v39 = sub_25A997D88();
    (*(v11 + 8))(v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v10 = v45;
    if (v39)
    {
      __break(1u);
LABEL_24:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_29;
  }

  if (v37 >= 64)
  {
    goto LABEL_22;
  }

LABEL_28:
  sub_25A9984B8();
LABEL_29:
  v40 = sub_25A9984B8();
  (*(v11 + 8))(v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  if ((v40 & 0x8000000000000000) == 0 || (result = _sSS8MorpheusE3lenSiyF_0(), !__OFADD__(result, v40)))
  {
    sub_25A997F58();
    v41 = sub_25A998028();
    a3[3] = MEMORY[0x277D837D0];
    *a3 = v41;
    a3[1] = v42;
    return __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_25A918FEC(int64_t a1, int64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = a1;
  while (1)
  {
    v7 = v6 <= a2;
    if (a3 > 0)
    {
      v7 = v6 >= a2;
    }

    if (v7)
    {
      break;
    }

    v8 = __OFADD__(v6, a3);
    v6 += a3;
    if (v8)
    {
      v6 = (v6 >> 63) ^ 0x8000000000000000;
    }

    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      __break(1u);
      break;
    }
  }

  v9 = a1;
  v29 = MEMORY[0x277D84F90];
  result = sub_25A937880(0, v5, 0);
  if (v5)
  {
    v11 = v9;
    while (1)
    {
      v12 = v11 <= a2;
      if (a3 > 0)
      {
        v12 = v11 >= a2;
      }

      if (v12)
      {
        break;
      }

      if (__OFADD__(v11, a3))
      {
        v9 = ((v11 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v9 = v11 + a3;
      }

      sub_25A997F58();
      result = sub_25A998028();
      v15 = *(v29 + 16);
      v14 = *(v29 + 24);
      if (v15 >= v14 >> 1)
      {
        v26 = v13;
        v27 = result;
        sub_25A937880((v14 > 1), v15 + 1, 1);
        v13 = v26;
        result = v27;
      }

      *(v29 + 16) = v15 + 1;
      v16 = v29 + 16 * v15;
      *(v16 + 32) = result;
      *(v16 + 40) = v13;
      v11 = v9;
      if (!--v5)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    v17 = v9 <= a2;
    if (a3 > 0)
    {
      v17 = v9 >= a2;
    }

    if (!v17)
    {
      do
      {
        if (__OFADD__(v9, a3))
        {
          v18 = ((v9 + a3) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v18 = v9 + a3;
        }

        sub_25A997F58();
        v19 = sub_25A998028();
        v22 = *(v29 + 16);
        v21 = *(v29 + 24);
        if (v22 >= v21 >> 1)
        {
          v28 = v19;
          v25 = v20;
          sub_25A937880((v21 > 1), v22 + 1, 1);
          v20 = v25;
          v19 = v28;
        }

        *(v29 + 16) = v22 + 1;
        v23 = v29 + 16 * v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20;
        v24 = v18 <= a2;
        if (a3 > 0)
        {
          v24 = v18 >= a2;
        }

        v9 = v18;
      }

      while (!v24);
    }

    return v29;
  }

  return result;
}

unint64_t sub_25A91921C()
{
  result = qword_27FA051E8;
  if (!qword_27FA051E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA051E0, &qword_25A9FCFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA051E8);
  }

  return result;
}

uint64_t sub_25A9192A8()
{
  if (qword_27FA04398 != -1)
  {
LABEL_35:
    swift_once();
  }

  v0 = qword_27FA0FCB0;
  v1 = qword_27FA0FCB0 + 64;
  v2 = 1 << *(qword_27FA0FCB0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(qword_27FA0FCB0 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v39 = v0;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v9 >= v5)
        {
        }

        v4 = *(v1 + 8 * v9);
        ++v6;
        if (v4)
        {
          v6 = v9;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_13:
    v10 = __clz(__rbit64(v4)) | (v6 << 6);
    v11 = (*(v0 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_25A87500C(*(v0 + 56) + 32 * v10, v53);
    v51[0] = v13;
    v51[1] = v12;
    sub_25A872D74(v53, &v52);
    v14 = *(*(v40 + 16) + 32);
    sub_25A8952F0(v51, v49, &qword_27FA04E48, &qword_25A9FB8F0);
    v45[0] = v49[0];
    v45[1] = v49[1];

    sub_25A998578();
    sub_25A8952F0(v51, v45, &qword_27FA04E48, &qword_25A9FB8F0);

    sub_25A872D74(&v46, v47);
    sub_25A874FB0(v48, v44);
    sub_25A8952F0(v47, &v42, &qword_27FA04458, &unk_25A9F7FB0);
    swift_beginAccess();
    if (v43)
    {
      break;
    }

    sub_25A878194(&v42, &qword_27FA04458, &unk_25A9F7FB0);
    v27 = *(v14 + 16);
    v28 = sub_25A8F35BC(v44);
    if (v29)
    {
      v30 = v28;
      v31 = *(v14 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(v14 + 16);
      v54 = v33;
      *(v14 + 16) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25A968DB8();
        v33 = v54;
      }

      sub_25A8795A0(*(v33 + 48) + 40 * v30);
      sub_25A872D74((*(v33 + 56) + 32 * v30), v41);
      sub_25A969C84(v30, v33);
      sub_25A8795A0(v44);
      v34 = *(v14 + 16);
      *(v14 + 16) = v33;
    }

    else
    {
      sub_25A8795A0(v44);
      memset(v41, 0, sizeof(v41));
    }

    sub_25A878194(v41, &qword_27FA04458, &unk_25A9F7FB0);
LABEL_7:
    v4 &= v4 - 1;
    swift_endAccess();

    sub_25A878194(v47, &qword_27FA04458, &unk_25A9F7FB0);
    sub_25A8795A0(v48);
    sub_25A878194(v51, &qword_27FA04E48, &qword_25A9FB8F0);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

  sub_25A872D74(&v42, v41);
  v15 = *(v14 + 16);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *(v14 + 16);
  v17 = v54;
  *(v14 + 16) = 0x8000000000000000;
  v19 = sub_25A8F35BC(v44);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    goto LABEL_33;
  }

  v23 = v18;
  if (v17[3] >= v22)
  {
    if (v16)
    {
      v26 = v54;
      if ((v18 & 1) == 0)
      {
LABEL_25:
        v26[(v19 >> 6) + 8] |= 1 << v19;
        sub_25A874FB0(v44, v26[6] + 40 * v19);
        sub_25A872D74(v41, (v26[7] + 32 * v19));
        sub_25A8795A0(v44);
        v35 = v26[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_34;
        }

        v26[2] = v37;
        goto LABEL_6;
      }
    }

    else
    {
      sub_25A968DB8();
      v26 = v54;
      if ((v23 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_5:
    v7 = (v26[7] + 32 * v19);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    sub_25A872D74(v41, v7);
    sub_25A8795A0(v44);
LABEL_6:
    v8 = *(v14 + 16);
    *(v14 + 16) = v26;

    v0 = v39;
    goto LABEL_7;
  }

  sub_25A9679D0(v22, v16);
  v24 = sub_25A8F35BC(v44);
  if ((v23 & 1) == (v25 & 1))
  {
    v19 = v24;
    v26 = v54;
    if ((v23 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_5;
  }

  result = sub_25A998AA8();
  __break(1u);
  return result;
}