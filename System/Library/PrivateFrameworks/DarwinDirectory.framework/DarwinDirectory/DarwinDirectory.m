uint64_t sub_2480CFF30(uint64_t a1)
{
  result = sub_2480CFFE0(&qword_27EE87340, type metadata accessor for LibSystemGroupRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2480CFF88(uint64_t a1)
{
  result = sub_2480CFFE0(&qword_27EE87348, type metadata accessor for LibSystemUserRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2480CFFE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2480D0028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 4);
  v4 = *(a1 + 8);
  *(a2 + 8) = sub_2480DCAAC();
  *(a2 + 16) = v5;
  v6 = *(a1 + 24);
  v27 = *(a1 + 22);
  v28 = *(a1 + 23);
  v7 = *(a1 + 21);
  v8 = *(a1 + 20);
  v9 = *(a1 + 19);
  v10 = *(a1 + 18);
  v11 = *(a1 + 17);
  v12 = *(a1 + 16);
  v13 = type metadata accessor for LibSystemUserRecord(0);
  v14 = v13[6];
  sub_2480DCA3C();
  v15 = *(a1 + 48);
  v16 = sub_2480DCAAC();
  v17 = (a2 + v13[7]);
  *v17 = v16;
  v17[1] = v18;
  v19 = *(a1 + 56);
  v20 = sub_2480DCAAC();
  v21 = (a2 + v13[8]);
  *v21 = v20;
  v21[1] = v22;
  v23 = *(a1 + 64);
  *(a2 + v13[9]) = *(a1 + 40);
  result = sub_2480DCAAC();
  v25 = (a2 + v13[10]);
  *v25 = result;
  v25[1] = v26;
  *(a2 + v13[11]) = *(a1 + 32);
  return result;
}

uint64_t sub_2480D013C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 4);
  v4 = *(a1 + 8);
  *(a2 + 8) = sub_2480DCAAC();
  *(a2 + 16) = v5;
  v6 = *(a1 + 24);
  v20 = *(a1 + 22);
  v21 = *(a1 + 23);
  v7 = *(a1 + 21);
  v8 = *(a1 + 20);
  v9 = *(a1 + 19);
  v10 = *(a1 + 18);
  v11 = *(a1 + 17);
  v12 = *(a1 + 16);
  v13 = type metadata accessor for LibSystemGroupRecord(0);
  v14 = v13[6];
  sub_2480DCA3C();
  v15 = 0;
  *(a2 + v13[8]) = *(a1 + 32);
  v23 = MEMORY[0x277D84FA0];
  while (1)
  {
    result = *(*(a1 + 40) + 8 * v15);
    if (!result)
    {
      break;
    }

    v17 = sub_2480DCAAC();
    sub_2480D3FE0(&v22, v17, v18);

    if (__OFADD__(v15++, 1))
    {
      __break(1u);
      break;
    }
  }

  *(a2 + v13[7]) = v23;
  return result;
}

id sub_2480D06AC()
{
  v1 = type metadata accessor for Group();
  v2 = *(*(v1 - 8) + 64);
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = type metadata accessor for User();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(v0 + v12, v20);
  swift_dynamicCast();
  sub_2480D8A20(&v11[*(v8 + 32)], v7, type metadata accessor for Group);
  sub_2480D8A88(v11, type metadata accessor for User);
  sub_2480D8A20(v7, v5, type metadata accessor for Group);
  v13 = objc_allocWithZone(DDGroup);
  v14 = &v13[OBJC_IVAR___DDGroup__group];
  v14[3] = v1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  sub_2480D8A20(v5, boxed_opaque_existential_0, type metadata accessor for Group);
  v19.receiver = v13;
  v19.super_class = DDGroup;
  v16 = objc_msgSendSuper2(&v19, sel_init);
  sub_2480D8A88(v5, type metadata accessor for Group);
  sub_2480D8A88(v7, type metadata accessor for Group);
  return v16;
}

uint64_t sub_2480D0918(void *a1)
{
  v3 = type metadata accessor for User();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  v7 = type metadata accessor for Group();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  v11 = OBJC_IVAR___DDGroup__group;
  swift_beginAccess();
  sub_2480D1F28(a1 + v11, v16);
  swift_dynamicCast();
  v12 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(v1 + v12, v16);
  swift_dynamicCast();
  sub_2480D89BC(v10, &v6[*(v3 + 32)]);
  v17 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  sub_2480D8AE8(v6, boxed_opaque_existential_0, type metadata accessor for User);

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v12));
  sub_2480D899C(v16, (v1 + v12));
  return swift_endAccess();
}

uint64_t sub_2480D11A0(uint64_t a1)
{
  v3 = type metadata accessor for User();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v7 = sub_2480D1680(a1);

  v8 = sub_2480D82C4(v7);

  v9 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(v1 + v9, v15);
  swift_dynamicCast();
  v10 = *(v3 + 44);
  v11 = *&v6[v10];
  *&v6[v10] = v8;

  v16 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  sub_2480D8AE8(v6, boxed_opaque_existential_0, type metadata accessor for User);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v9));
  sub_2480D899C(v15, (v1 + v9));
  return swift_endAccess();
}

uint64_t sub_2480D1304(uint64_t a1)
{
  v3 = type metadata accessor for Group();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v35 = &v31 - v7;
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v31 = v1;
    v42 = MEMORY[0x277D84F90];
    sub_2480DCC5C();
    v10 = -1 << *(a1 + 32);
    v40 = a1 + 56;
    result = sub_2480DCB3C();
    v11 = result;
    v12 = 0;
    v13 = *(a1 + 36);
    v32 = a1 + 64;
    v33 = v13;
    v34 = a1;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v40 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_21;
      }

      if (v13 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v39 = v12;
      v13 = v8;
      v16 = *(a1 + 48) + *(v37 + 72) * v11;
      v17 = v35;
      sub_2480D8A20(v16, v35, type metadata accessor for Group);
      v18 = v36;
      sub_2480D8A20(v17, v36, type metadata accessor for Group);
      v19 = objc_allocWithZone(DDGroup);
      v20 = &v19[OBJC_IVAR___DDGroup__group];
      v20[3] = v38;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
      sub_2480D8A20(v18, boxed_opaque_existential_0, type metadata accessor for Group);
      v41.receiver = v19;
      v41.super_class = DDGroup;
      objc_msgSendSuper2(&v41, sel_init);
      sub_2480D8A88(v18, type metadata accessor for Group);
      v22 = v17;
      a1 = v34;
      sub_2480D8A88(v22, type metadata accessor for Group);
      sub_2480DCC3C();
      v23 = *(v42 + 16);
      sub_2480DCC6C();
      sub_2480DCC7C();
      result = sub_2480DCC4C();
      v14 = 1 << *(a1 + 32);
      if (v11 >= v14)
      {
        goto LABEL_23;
      }

      v24 = *(v40 + 8 * v15);
      if ((v24 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v8 = v13;
      LODWORD(v13) = v33;
      if (v33 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v11 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v15 << 6;
        v27 = v15 + 1;
        v28 = (v32 + 8 * v15);
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_2480D89AC(v11, v33, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_2480D89AC(v11, v33, 0);
      }

LABEL_4:
      v12 = v39 + 1;
      v11 = v14;
      if (v39 + 1 == v8)
      {
        return v42;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2480D1680(uint64_t a1)
{
  v3 = type metadata accessor for Group();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_2480DCBAC();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v50 = MEMORY[0x277D84F90];
    sub_2480D7980(0, v7 & ~(v7 >> 63), 0);
    v45 = v50;
    if (v44)
    {
      result = sub_2480DCB5C();
    }

    else
    {
      v10 = -1 << *(a1 + 32);
      result = sub_2480DCB3C();
      v9 = *(a1 + 36);
    }

    v47 = result;
    v48 = v9;
    v49 = v44 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v12 = a1;
      }

      v39 = a1 + 56;
      v40 = v12;
      v37[1] = v1;
      v38 = a1 + 64;
      v41 = v7;
      while (v11 < v7)
      {
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_37;
        }

        v15 = v47;
        v16 = v48;
        v17 = v49;
        v18 = a1;
        sub_2480D7F70(v47, v48, v49, a1);
        v20 = v19;
        v21 = OBJC_IVAR___DDGroup__group;
        swift_beginAccess();
        sub_2480D1F28(v20 + v21, v46);
        swift_dynamicCast();

        v22 = v45;
        v50 = v45;
        v23 = v6;
        v25 = *(v45 + 16);
        v24 = *(v45 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_2480D7980(v24 > 1, v25 + 1, 1);
          v22 = v50;
        }

        *(v22 + 16) = v25 + 1;
        v26 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v45 = v22;
        result = sub_2480D8AE8(v23, v22 + v26 + *(v42 + 72) * v25, type metadata accessor for Group);
        v6 = v23;
        if (v44)
        {
          if (!v17)
          {
            goto LABEL_42;
          }

          a1 = v18;
          if (sub_2480DCB7C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87398, &qword_2480DD388);
          v13 = sub_2480DCAEC();
          sub_2480DCBEC();
          result = v13(v46, 0);
          if (v11 == v7)
          {
LABEL_34:
            sub_2480D89AC(v47, v48, v49);
            return v45;
          }
        }

        else
        {
          if (v17)
          {
            goto LABEL_43;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v18;
          v27 = 1 << *(v18 + 32);
          if (v15 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v15 >> 6;
          v29 = *(v39 + 8 * (v15 >> 6));
          if (((v29 >> v15) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v18 + 36) != v16)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v15 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_2480D89AC(v15, v16, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_2480D89AC(v15, v16, 0);
          }

LABEL_33:
          v36 = *(v18 + 36);
          v47 = v27;
          v48 = v36;
          v49 = 0;
          v7 = v41;
          if (v11 == v41)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t DDUser.isEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for User();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = sub_2480D1DF4(a1, v18);
  if (!v19)
  {
    sub_2480D1EAC(v18);
    goto LABEL_6;
  }

  type metadata accessor for DDUser(v10);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v14 = 0;
    return v14 & 1;
  }

  v11 = v17;
  if (v17 == v1)
  {

    v14 = 1;
  }

  else
  {
    v12 = OBJC_IVAR___DDUser__user;
    swift_beginAccess();
    sub_2480D1F28(v1 + v12, v18);
    swift_dynamicCast();
    v13 = OBJC_IVAR___DDUser__user;
    swift_beginAccess();
    sub_2480D1F28(v11 + v13, v18);
    swift_dynamicCast();
    v14 = _s15DarwinDirectory4UserV2eeoiySbAC_ACtFZ_0(v9, v7);

    sub_2480D8A88(v7, type metadata accessor for User);
    sub_2480D8A88(v9, type metadata accessor for User);
  }

  return v14 & 1;
}

uint64_t sub_2480D1DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87350, &qword_2480DD378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2480D1EAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87350, &qword_2480DD378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2480D1F28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t DDUser.hash.getter()
{
  v1 = type metadata accessor for User();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(v0 + v5, v8);
  swift_dynamicCast();
  sub_2480DCCCC();
  User.hash(into:)(v8);
  v6 = sub_2480DCD0C();
  sub_2480D8A88(v4, type metadata accessor for User);
  return v6;
}

id sub_2480D21E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = (*(*(a3(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v20 - v9 + 16;
  v11 = sub_2480DCA5C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v16 = *a4;
  swift_beginAccess();
  sub_2480D1F28(a1 + v16, v20);
  swift_dynamicCast();
  (*(v12 + 16))(v15, v10, v11);
  sub_2480D8A88(v10, a5);
  v17 = sub_2480DCA1C();
  (*(v12 + 8))(v15, v11);

  return v17;
}

uint64_t sub_2480D23D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = a3(0);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v16 - v10 + 16;
  v12 = *a4;
  swift_beginAccess();
  sub_2480D1F28(a1 + v12, v16);
  swift_dynamicCast();
  v13 = *&v11[*(v8 + 20)];
  sub_2480D8A88(v11, a5);
  return v13;
}

void sub_2480D24EC(char *a1, uint64_t a2, int a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t (*a6)(void))
{
  v10 = a4(0);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v17[-v12];
  v14 = *a5;
  swift_beginAccess();
  sub_2480D1F28(&a1[v14], &v18);
  v15 = a1;
  swift_dynamicCast();
  *&v13[*(v10 + 20)] = a3;
  v19 = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
  sub_2480D8AE8(v13, boxed_opaque_existential_0, a6);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(&a1[v14]);
  sub_2480D899C(&v18, &a1[v14]);
  swift_endAccess();
}

id sub_2480D265C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = a3(0);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v19 - v10 + 16;
  v12 = *a4;
  swift_beginAccess();
  sub_2480D1F28(a1 + v12, v19);
  swift_dynamicCast();
  v13 = &v11[*(v8 + 24)];
  v14 = *v13;
  v15 = *(v13 + 1);

  sub_2480D8A88(v11, a5);
  v16 = sub_2480DCA7C();

  return v16;
}

void sub_2480D27AC(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t (*a6)(void))
{
  v9 = a4(0);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v21[-v11];
  v13 = sub_2480DCA8C();
  v15 = v14;
  v16 = *a5;
  swift_beginAccess();
  sub_2480D1F28(&a1[v16], &v22);
  v17 = a1;
  swift_dynamicCast();
  v18 = &v12[*(v9 + 24)];
  v19 = v18[1];
  *v18 = v13;
  v18[1] = v15;

  v23 = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
  sub_2480D8AE8(v12, boxed_opaque_existential_0, a6);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(&a1[v16]);
  sub_2480D899C(&v22, &a1[v16]);
  swift_endAccess();
}

id sub_2480D2938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = a3(0);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v19 - v10 + 16;
  v12 = *a4;
  swift_beginAccess();
  sub_2480D1F28(a1 + v12, v19);
  swift_dynamicCast();
  v13 = &v11[*(v8 + 28)];
  v14 = *v13;
  v15 = *(v13 + 1);

  sub_2480D8A88(v11, a5);
  v16 = sub_2480DCA7C();

  return v16;
}

void sub_2480D2A88(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t (*a6)(void))
{
  v9 = a4(0);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v21[-v11];
  v13 = sub_2480DCA8C();
  v15 = v14;
  v16 = *a5;
  swift_beginAccess();
  sub_2480D1F28(&a1[v16], &v22);
  v17 = a1;
  swift_dynamicCast();
  v18 = &v12[*(v9 + 28)];
  v19 = v18[1];
  *v18 = v13;
  v18[1] = v15;

  v23 = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
  sub_2480D8AE8(v12, boxed_opaque_existential_0, a6);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(&a1[v16]);
  sub_2480D899C(&v22, &a1[v16]);
  swift_endAccess();
}

void sub_2480D3014(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  type metadata accessor for DDGroup(a1);
  sub_2480D8908(&qword_27EE87380, v6, type metadata accessor for DDGroup);
  v7 = sub_2480DCACC();
  v8 = a1;
  a4(v7);
}

uint64_t sub_2480D30CC(uint64_t a1)
{
  v3 = type metadata accessor for Group();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v7 = sub_2480D1680(a1);

  v8 = sub_2480D82C4(v7);

  v9 = OBJC_IVAR___DDGroup__group;
  swift_beginAccess();
  sub_2480D1F28(v1 + v9, v15);
  swift_dynamicCast();
  v10 = *(v3 + 36);
  v11 = *&v6[v10];
  *&v6[v10] = v8;

  v16 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  sub_2480D8AE8(v6, boxed_opaque_existential_0, type metadata accessor for Group);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v9));
  sub_2480D899C(v15, (v1 + v9));
  return swift_endAccess();
}

id _sSo6DDUserC15DarwinDirectoryEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t DDGroup.isEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Group();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = sub_2480D1DF4(a1, v18);
  if (!v19)
  {
    sub_2480D1EAC(v18);
    goto LABEL_6;
  }

  type metadata accessor for DDGroup(v10);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v14 = 0;
    return v14 & 1;
  }

  v11 = v17;
  if (v17 == v1)
  {

    v14 = 1;
  }

  else
  {
    v12 = OBJC_IVAR___DDGroup__group;
    swift_beginAccess();
    sub_2480D1F28(v1 + v12, v18);
    swift_dynamicCast();
    v13 = OBJC_IVAR___DDGroup__group;
    swift_beginAccess();
    sub_2480D1F28(v11 + v13, v18);
    swift_dynamicCast();
    v14 = _s15DarwinDirectory5GroupV2eeoiySbAC_ACtFZ_0(v9, v7);

    sub_2480D8A88(v7, type metadata accessor for Group);
    sub_2480D8A88(v9, type metadata accessor for Group);
  }

  return v14 & 1;
}

uint64_t sub_2480D359C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_2480DCB2C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_2480D1EAC(v10);
  return v8 & 1;
}

uint64_t DDGroup.hash.getter()
{
  v1 = type metadata accessor for Group();
  v2 = *(*(v1 - 1) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___DDGroup__group;
  swift_beginAccess();
  sub_2480D1F28(v0 + v5, v15);
  swift_dynamicCast();
  sub_2480DCCCC();
  sub_2480DCA5C();
  sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0]);
  sub_2480DCA6C();
  v6 = *&v4[v1[5]];
  sub_2480DCCFC();
  v7 = &v4[v1[6]];
  v8 = *v7;
  v9 = *(v7 + 1);
  sub_2480DCA9C();
  v10 = &v4[v1[7]];
  v11 = *v10;
  v12 = *(v10 + 1);
  sub_2480DCA9C();
  sub_2480D7B78(v15, *&v4[v1[8]]);
  sub_2480D7CD4(v15, *&v4[v1[9]]);
  v13 = sub_2480DCD0C();
  sub_2480D8A88(v4, type metadata accessor for Group);
  return v13;
}

uint64_t sub_2480D37FC(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v4 = type metadata accessor for LibSystemUserRecord(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v44 = &v42[-v10];
  v45 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2480DCCCC();
  v13 = *a2;
  sub_2480DCCFC();
  v14 = *(a2 + 16);
  v56 = *(a2 + 8);
  sub_2480DCA9C();
  v15 = v4[6];
  sub_2480DCA5C();
  sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0]);
  v54 = v15;
  sub_2480DCA6C();
  v16 = (a2 + v4[7]);
  v17 = *v16;
  v52 = v16[1];
  v53 = v17;
  sub_2480DCA9C();
  v18 = (a2 + v4[8]);
  v19 = *v18;
  v50 = v18[1];
  v51 = v19;
  sub_2480DCA9C();
  v49 = *(a2 + v4[9]);
  sub_2480DCCFC();
  v20 = (a2 + v4[10]);
  v21 = *v20;
  v47 = v20[1];
  v48 = v21;
  sub_2480DCA9C();
  v22 = v4[11];
  v55 = a2;
  v43 = *(a2 + v22);
  sub_2480DCCEC();
  v23 = sub_2480DCD0C();
  v24 = -1 << *(v11 + 32);
  v25 = v23 & ~v24;
  if ((*(v11 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
  {
    v26 = ~v24;
    v27 = *(v5 + 72);
    while (1)
    {
      sub_2480D8A20(*(v11 + 48) + v27 * v25, v9, type metadata accessor for LibSystemUserRecord);
      if (*v9 == v13)
      {
        v28 = *(v9 + 1) == v56 && *(v9 + 2) == v14;
        if (v28 || (sub_2480DCCAC() & 1) != 0)
        {
          v29 = &v9[v4[6]];
          if (sub_2480DCA2C())
          {
            v30 = &v9[v4[7]];
            v31 = *v30 == v53 && v30[1] == v52;
            if (v31 || (sub_2480DCCAC() & 1) != 0)
            {
              v32 = &v9[v4[8]];
              v33 = *v32 == v51 && v32[1] == v50;
              if (v33 || (sub_2480DCCAC()) && *&v9[v4[9]] == v49)
              {
                v34 = &v9[v4[10]];
                v35 = *v34 == v48 && v34[1] == v47;
                if (v35 || (sub_2480DCCAC()) && v43 == v9[v4[11]])
                {
                  break;
                }
              }
            }
          }
        }
      }

      sub_2480D8A88(v9, type metadata accessor for LibSystemUserRecord);
      v25 = (v25 + 1) & v26;
      if (((*(v11 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    sub_2480D8A88(v9, type metadata accessor for LibSystemUserRecord);
    sub_2480D8A88(v55, type metadata accessor for LibSystemUserRecord);
    sub_2480D8A20(*(v11 + 48) + v27 * v25, v46, type metadata accessor for LibSystemUserRecord);
    return 0;
  }

  else
  {
LABEL_29:
    v36 = v45;
    v37 = *v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v55;
    v40 = v44;
    sub_2480D8A20(v55, v44, type metadata accessor for LibSystemUserRecord);
    v57 = *v36;
    sub_2480D5828(v40, v25, isUniquelyReferenced_nonNull_native);
    *v36 = v57;
    sub_2480D8AE8(v39, v46, type metadata accessor for LibSystemUserRecord);
    return 1;
  }
}

uint64_t sub_2480D3C5C(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v4 = type metadata accessor for LibSystemGroupRecord(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = (&v31 - v10);
  v33 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2480DCCCC();
  v13 = *a2;
  sub_2480DCCFC();
  v14 = *(a2 + 16);
  v39 = *(a2 + 8);
  sub_2480DCA9C();
  v15 = v4[6];
  sub_2480DCA5C();
  sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0]);
  v37 = v15;
  sub_2480DCA6C();
  v36 = *(a2 + v4[7]);
  sub_2480D7B78(v40, v36);
  v16 = v4;
  v17 = v4[8];
  v38 = a2;
  v35 = *(a2 + v17);
  sub_2480DCCEC();
  v18 = sub_2480DCD0C();
  v19 = -1 << *(v11 + 32);
  v20 = v18 & ~v19;
  if ((*(v11 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v22 = *(v5 + 72);
    while (1)
    {
      sub_2480D8A20(*(v11 + 48) + v22 * v20, v9, type metadata accessor for LibSystemGroupRecord);
      if (*v9 == v13)
      {
        v23 = *(v9 + 1) == v39 && *(v9 + 2) == v14;
        if (v23 || (sub_2480DCCAC() & 1) != 0)
        {
          v24 = &v9[v16[6]];
          if ((sub_2480DCA2C() & 1) != 0 && (sub_2480D9188(*&v9[v16[7]], v36) & 1) != 0 && v35 == v9[v16[8]])
          {
            break;
          }
        }
      }

      sub_2480D8A88(v9, type metadata accessor for LibSystemGroupRecord);
      v20 = (v20 + 1) & v21;
      if (((*(v11 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_2480D8A88(v9, type metadata accessor for LibSystemGroupRecord);
    sub_2480D8A88(v38, type metadata accessor for LibSystemGroupRecord);
    sub_2480D8A20(*(v11 + 48) + v22 * v20, v34, type metadata accessor for LibSystemGroupRecord);
    return 0;
  }

  else
  {
LABEL_14:
    v26 = v33;
    v27 = *v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v38;
    v30 = v32;
    sub_2480D8A20(v38, v32, type metadata accessor for LibSystemGroupRecord);
    *&v40[0] = *v26;
    sub_2480D5C88(v30, v20, isUniquelyReferenced_nonNull_native);
    *v26 = *&v40[0];
    sub_2480D8AE8(v29, v34, type metadata accessor for LibSystemGroupRecord);
    return 1;
  }
}

uint64_t sub_2480D3FE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2480DCCCC();
  sub_2480DCA9C();
  v9 = sub_2480DCD0C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2480DCCAC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2480D601C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2480D4130(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2480DCBBC();

    if (v9)
    {

      type metadata accessor for DDGroup(v10);
      swift_dynamicCast();
      result = 0;
      *a1 = v26;
      return result;
    }

    result = sub_2480DCBAC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v22 = sub_2480D46FC(v7, result + 1);
    v23 = *(v22 + 16);
    if (*(v22 + 24) <= v23)
    {
      sub_2480D523C(v23 + 1);
    }

    v21 = v8;
    sub_2480D57A4(v21, v22);

    *v3 = v22;
    goto LABEL_16;
  }

  type metadata accessor for DDGroup(a1);
  v12 = *(v6 + 40);
  v13 = sub_2480DCB0C();
  v14 = -1 << *(v6 + 32);
  v15 = v13 & ~v14;
  if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_11:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    v21 = a2;
    sub_2480D619C(v21, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v27;
LABEL_16:
    *a1 = v21;
    return 1;
  }

  v16 = ~v14;
  while (1)
  {
    v17 = *(*(v6 + 48) + 8 * v15);
    v18 = sub_2480DCB1C();

    if (v18)
    {
      break;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v24 = *(*(v6 + 48) + 8 * v15);
  *a1 = v24;
  v25 = v24;
  return 0;
}

uint64_t sub_2480D4340(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v4 = type metadata accessor for Group();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = &v32 - v10;
  v33 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2480DCCCC();
  sub_2480DCA5C();
  sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0]);
  sub_2480DCA6C();
  v13 = *(a2 + v4[5]);
  sub_2480DCCFC();
  v14 = (a2 + v4[6]);
  v15 = *v14;
  v39 = v14[1];
  v40 = v15;
  sub_2480DCA9C();
  v16 = (a2 + v4[7]);
  v17 = *v16;
  v37 = v16[1];
  v38 = v17;
  sub_2480DCA9C();
  v36 = *(a2 + v4[8]);
  sub_2480D7B78(v41, v36);
  v35 = *(a2 + v4[9]);
  sub_2480D7CD4(v41, v35);
  v18 = sub_2480DCD0C();
  v19 = -1 << *(v11 + 32);
  v20 = v18 & ~v19;
  if ((*(v11 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v22 = *(v5 + 72);
    while (1)
    {
      sub_2480D8A20(*(v11 + 48) + v22 * v20, v9, type metadata accessor for Group);
      if ((sub_2480DCA2C() & 1) != 0 && *&v9[v4[5]] == v13)
      {
        v23 = &v9[v4[6]];
        v24 = *v23 == v40 && *(v23 + 1) == v39;
        if (v24 || (sub_2480DCCAC() & 1) != 0)
        {
          v25 = &v9[v4[7]];
          v26 = *v25 == v38 && *(v25 + 1) == v37;
          if (v26 || (sub_2480DCCAC()) && (sub_2480D9188(*&v9[v4[8]], v36) & 1) != 0 && (sub_2480D9340(*&v9[v4[9]], v35))
          {
            break;
          }
        }
      }

      sub_2480D8A88(v9, type metadata accessor for Group);
      v20 = (v20 + 1) & v21;
      if (((*(v11 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    sub_2480D8A88(v9, type metadata accessor for Group);
    sub_2480D8A88(a2, type metadata accessor for Group);
    sub_2480D8A20(*(v11 + 48) + v22 * v20, v34, type metadata accessor for Group);
    return 0;
  }

  else
  {
LABEL_19:
    v28 = v33;
    v29 = *v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v32;
    sub_2480D8A20(a2, v32, type metadata accessor for Group);
    *&v41[0] = *v28;
    sub_2480D62F8(v31, v20, isUniquelyReferenced_nonNull_native);
    *v28 = *&v41[0];
    sub_2480D8AE8(a2, v34, type metadata accessor for Group);
    return 1;
  }
}

uint64_t sub_2480D46FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873A8, &qword_2480DD398);
    v2 = sub_2480DCC1C();
    v17 = v2;
    sub_2480DCB6C();
    v3 = sub_2480DCBDC();
    if (v3)
    {
      type metadata accessor for DDGroup(v3);
      do
      {
        swift_dynamicCast();
        v11 = *(v2 + 16);
        if (*(v2 + 24) <= v11)
        {
          sub_2480D523C(v11 + 1);
        }

        v2 = v17;
        v4 = *(v17 + 40);
        result = sub_2480DCB0C();
        v6 = v17 + 56;
        v7 = -1 << *(v17 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v9 == v13;
            if (v9 == v13)
            {
              v9 = 0;
            }

            v12 |= v14;
            v15 = *(v6 + 8 * v9);
          }

          while (v15 == -1);
          v10 = __clz(__rbit64(~v15)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v17 + 48) + 8 * v10) = v16;
        ++*(v17 + 16);
      }

      while (sub_2480DCBDC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2480D48D8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LibSystemUserRecord(0);
  v45 = *(v4 - 1);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873C0, &qword_2480DD3B0);
  result = sub_2480DCC0C();
  v11 = result;
  if (*(v8 + 16))
  {
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v42 = v2;
    v43 = result + 56;
    for (i = v8; v16; ++*(v11 + 16))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v8 + 48);
      v46 = *(v45 + 72);
      sub_2480D8AE8(v21 + v46 * (v18 | (v12 << 6)), v7, type metadata accessor for LibSystemUserRecord);
      v22 = *(v11 + 40);
      sub_2480DCCCC();
      v23 = *v7;
      sub_2480DCCFC();
      v24 = *(v7 + 1);
      v25 = *(v7 + 2);
      sub_2480DCA9C();
      v26 = v4[6];
      sub_2480DCA5C();
      sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0]);
      sub_2480DCA6C();
      v27 = (v7 + v4[7]);
      v28 = *v27;
      v29 = v27[1];
      sub_2480DCA9C();
      v30 = (v7 + v4[8]);
      v31 = *v30;
      v32 = v30[1];
      sub_2480DCA9C();
      v33 = *(v7 + v4[9]);
      sub_2480DCCFC();
      v34 = (v7 + v4[10]);
      v35 = *v34;
      v36 = v34[1];
      sub_2480DCA9C();
      v37 = *(v7 + v4[11]);
      sub_2480DCCEC();
      sub_2480DCD0C();
      v38 = -1 << *(v11 + 32);
      v39 = v43;
      v40 = sub_2480DCB4C();
      *(v39 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      v8 = i;
      result = sub_2480D8AE8(v7, *(v11 + 48) + v40 * v46, type metadata accessor for LibSystemUserRecord);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      if (v12 >= v17)
      {
        break;
      }

      v20 = v13[v12];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v41 = 1 << *(v8 + 32);
    if (v41 >= 64)
    {
      bzero(v13, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v41;
    }

    v2 = v42;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_2480D4C3C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LibSystemGroupRecord(0);
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873B0, &qword_2480DD3A0);
  result = sub_2480DCC0C();
  v11 = result;
  if (*(v8 + 16))
  {
    v39 = v2;
    v40 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v43 = *(v41 + 72);
      sub_2480D8AE8(v23 + v43 * (v20 | (v12 << 6)), v7, type metadata accessor for LibSystemGroupRecord);
      v24 = *(v11 + 40);
      sub_2480DCCCC();
      v25 = *v7;
      sub_2480DCCFC();
      v26 = *(v7 + 1);
      v27 = *(v7 + 2);
      sub_2480DCA9C();
      v28 = v42;
      v29 = *(v42 + 24);
      sub_2480DCA5C();
      sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0]);
      sub_2480DCA6C();
      sub_2480D7B78(v44, *(v7 + *(v28 + 28)));
      v30 = *(v7 + *(v28 + 32));
      sub_2480DCCEC();
      result = sub_2480DCD0C();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_2480D8AE8(v7, *(v11 + 48) + v19 * v43, type metadata accessor for LibSystemGroupRecord);
      ++*(v11 + 16);
      v8 = v40;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v38 = 1 << *(v8 + 32);
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    v2 = v39;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_2480D4FDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873B8, &qword_2480DD3A8);
  result = sub_2480DCC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2480DCCCC();
      sub_2480DCA9C();
      result = sub_2480DCD0C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2480D523C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873A8, &qword_2480DD398);
  result = sub_2480DCC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_2480DCB0C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2480D5464(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Group();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87390, &qword_2480DD380);
  result = sub_2480DCC0C();
  v11 = result;
  if (*(v8 + 16))
  {
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v37 = v2;
    v38 = result + 56;
    for (i = v8; v16; ++*(v11 + 16))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v8 + 48);
      v22 = *(v40 + 72);
      sub_2480D8AE8(v21 + v22 * (v18 | (v12 << 6)), v7, type metadata accessor for Group);
      v23 = *(v11 + 40);
      sub_2480DCCCC();
      sub_2480DCA5C();
      sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0]);
      sub_2480DCA6C();
      v24 = v41;
      v25 = *&v7[v41[5]];
      sub_2480DCCFC();
      v26 = &v7[v24[6]];
      v27 = *v26;
      v28 = *(v26 + 1);
      sub_2480DCA9C();
      v29 = &v7[v24[7]];
      v30 = *v29;
      v31 = *(v29 + 1);
      sub_2480DCA9C();
      sub_2480D7B78(v42, *&v7[v24[8]]);
      sub_2480D7CD4(v42, *&v7[v24[9]]);
      sub_2480DCD0C();
      v32 = -1 << *(v11 + 32);
      v33 = v38;
      v34 = sub_2480DCB4C();
      *(v33 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      v35 = *(v11 + 48) + v34 * v22;
      v8 = i;
      result = sub_2480D8AE8(v7, v35, type metadata accessor for Group);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      if (v12 >= v17)
      {
        break;
      }

      v20 = v13[v12];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v36 = 1 << *(v8 + 32);
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    v2 = v37;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

unint64_t sub_2480D57A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2480DCB0C();
  v5 = -1 << *(a2 + 32);
  result = sub_2480DCB4C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2480D5828(_DWORD *a1, unint64_t a2, char a3)
{
  v53 = a1;
  v6 = type metadata accessor for LibSystemUserRecord(0);
  v49 = *(v6 - 1);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v48 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_36;
  }

  if (a3)
  {
    sub_2480D48D8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2480D66D4(type metadata accessor for LibSystemUserRecord, &qword_27EE873C0, &qword_2480DD3B0, type metadata accessor for LibSystemUserRecord);
      goto LABEL_36;
    }

    sub_2480D6B88(v10 + 1);
  }

  v12 = *v3;
  v13 = *(*v3 + 40);
  sub_2480DCCCC();
  v14 = v53;
  v15 = *v53;
  sub_2480DCCFC();
  v16 = *(v14 + 1);
  v17 = *(v14 + 2);
  sub_2480DCA9C();
  v18 = v6[6];
  sub_2480DCA5C();
  sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0]);
  v52 = v18;
  sub_2480DCA6C();
  v19 = (v14 + v6[7]);
  v20 = *v19;
  v50 = v19[1];
  v51 = v20;
  sub_2480DCA9C();
  v21 = (v14 + v6[8]);
  v22 = *v21;
  v46 = v21[1];
  v47 = v22;
  sub_2480DCA9C();
  v45 = *(v14 + v6[9]);
  sub_2480DCCFC();
  v23 = (v14 + v6[10]);
  v24 = *v23;
  v43 = v23[1];
  v44 = v24;
  sub_2480DCA9C();
  HIDWORD(v42) = *(v14 + v6[11]);
  sub_2480DCCEC();
  v25 = sub_2480DCD0C();
  v26 = -1 << *(v12 + 32);
  a2 = v25 & ~v26;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v27 = ~v26;
    v28 = *(v49 + 72);
    do
    {
      sub_2480D8A20(*(v12 + 48) + v28 * a2, v9, type metadata accessor for LibSystemUserRecord);
      if (*v9 == v15)
      {
        v29 = *(v9 + 1) == v16 && *(v9 + 2) == v17;
        if (v29 || (sub_2480DCCAC() & 1) != 0)
        {
          v30 = &v9[v6[6]];
          if (sub_2480DCA2C())
          {
            v31 = &v9[v6[7]];
            v32 = *v31 == v51 && *(v31 + 1) == v50;
            if (v32 || (sub_2480DCCAC() & 1) != 0)
            {
              v33 = &v9[v6[8]];
              v34 = *v33 == v47 && *(v33 + 1) == v46;
              if (v34 || (sub_2480DCCAC()) && *&v9[v6[9]] == v45)
              {
                v35 = &v9[v6[10]];
                v36 = *v35 == v44 && *(v35 + 1) == v43;
                if (v36 || (sub_2480DCCAC()) && HIDWORD(v42) == v9[v6[11]])
                {
                  goto LABEL_39;
                }
              }
            }
          }
        }
      }

      sub_2480D8A88(v9, type metadata accessor for LibSystemUserRecord);
      a2 = (a2 + 1) & v27;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_36:
  v37 = *v48;
  *(*v48 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2480D8AE8(v53, *(v37 + 48) + *(v49 + 72) * a2, type metadata accessor for LibSystemUserRecord);
  v39 = *(v37 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (!v40)
  {
    *(v37 + 16) = v41;
    return result;
  }

  __break(1u);
LABEL_39:
  sub_2480D8A88(v9, type metadata accessor for LibSystemUserRecord);
  result = sub_2480DCCBC();
  __break(1u);
  return result;
}

uint64_t sub_2480D5C88(_DWORD *a1, unint64_t a2, char a3)
{
  v36 = a1;
  v6 = type metadata accessor for LibSystemGroupRecord(0);
  v34 = *(v6 - 1);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v33 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    sub_2480D4C3C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2480D66D4(type metadata accessor for LibSystemGroupRecord, &qword_27EE873B0, &qword_2480DD3A0, type metadata accessor for LibSystemGroupRecord);
      goto LABEL_21;
    }

    sub_2480D6EB0(v10 + 1);
  }

  v12 = *v3;
  v13 = *(*v3 + 40);
  sub_2480DCCCC();
  v14 = v36;
  v15 = *v36;
  sub_2480DCCFC();
  v16 = *(v14 + 1);
  v17 = *(v14 + 2);
  sub_2480DCA9C();
  v18 = v6[6];
  sub_2480DCA5C();
  sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0]);
  v35 = v18;
  sub_2480DCA6C();
  v32 = *(v14 + v6[7]);
  sub_2480D7B78(v37, v32);
  v31 = *(v14 + v6[8]);
  sub_2480DCCEC();
  v19 = sub_2480DCD0C();
  v20 = -1 << *(v12 + 32);
  a2 = v19 & ~v20;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v21 = ~v20;
    v22 = *(v34 + 72);
    while (1)
    {
      sub_2480D8A20(*(v12 + 48) + v22 * a2, v9, type metadata accessor for LibSystemGroupRecord);
      if (*v9 == v15)
      {
        v23 = *(v9 + 1) == v16 && *(v9 + 2) == v17;
        if (v23 || (sub_2480DCCAC() & 1) != 0)
        {
          v24 = &v9[v6[6]];
          if ((sub_2480DCA2C() & 1) != 0 && (sub_2480D9188(*&v9[v6[7]], v32) & 1) != 0 && v31 == v9[v6[8]])
          {
            break;
          }
        }
      }

      sub_2480D8A88(v9, type metadata accessor for LibSystemGroupRecord);
      a2 = (a2 + 1) & v21;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    sub_2480D8A88(v9, type metadata accessor for LibSystemGroupRecord);
    sub_2480DCCBC();
    __break(1u);
  }

LABEL_21:
  v25 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2480D8AE8(v36, *(v25 + 48) + *(v34 + 72) * a2, type metadata accessor for LibSystemGroupRecord);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

uint64_t sub_2480D601C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2480D4FDC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2480D68DC();
      goto LABEL_16;
    }

    sub_2480D7224(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2480DCCCC();
  sub_2480DCA9C();
  result = sub_2480DCD0C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2480DCCAC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2480DCCBC();
  __break(1u);
  return result;
}

void sub_2480D619C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2480D523C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2480D6A38();
      goto LABEL_12;
    }

    sub_2480D745C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_2480DCB0C();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for DDGroup(v10);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_2480DCB1C();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2480DCCBC();
  __break(1u);
}

uint64_t sub_2480D62F8(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for Group();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v36 = v8;
  v37 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    sub_2480D5464(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_2480D66D4(type metadata accessor for Group, &qword_27EE87390, &qword_2480DD380, type metadata accessor for Group);
      goto LABEL_26;
    }

    sub_2480D7670(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_2480DCCCC();
  sub_2480DCA5C();
  sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0]);
  sub_2480DCA6C();
  v16 = *(a1 + v7[5]);
  sub_2480DCCFC();
  v17 = (a1 + v7[6]);
  v18 = v17[1];
  v40 = *v17;
  sub_2480DCA9C();
  v19 = (a1 + v7[7]);
  v20 = *v19;
  v38 = v19[1];
  v39 = v20;
  sub_2480DCA9C();
  v35 = *(a1 + v7[8]);
  sub_2480D7B78(v41, v35);
  v34 = *(a1 + v7[9]);
  sub_2480D7CD4(v41, v34);
  v21 = sub_2480DCD0C();
  v22 = -1 << *(v14 + 32);
  a2 = v21 & ~v22;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v23 = ~v22;
    v24 = *(v8 + 72);
    while (1)
    {
      sub_2480D8A20(*(v14 + 48) + v24 * a2, v11, type metadata accessor for Group);
      if ((sub_2480DCA2C() & 1) != 0 && *&v11[v7[5]] == v16)
      {
        v25 = &v11[v7[6]];
        v26 = *v25 == v40 && *(v25 + 1) == v18;
        if (v26 || (sub_2480DCCAC() & 1) != 0)
        {
          v27 = &v11[v7[7]];
          v28 = *v27 == v39 && *(v27 + 1) == v38;
          if (v28 || (sub_2480DCCAC()) && (sub_2480D9188(*&v11[v7[8]], v35) & 1) != 0 && (sub_2480D9340(*&v11[v7[9]], v34))
          {
            break;
          }
        }
      }

      sub_2480D8A88(v11, type metadata accessor for Group);
      a2 = (a2 + 1) & v23;
      if (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    sub_2480D8A88(v11, type metadata accessor for Group);
    sub_2480DCCBC();
    __break(1u);
  }

LABEL_26:
  v29 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2480D8AE8(a1, *(v29 + 48) + *(v36 + 72) * a2, type metadata accessor for Group);
  v31 = *(v29 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v33;
  }

  return result;
}

void *sub_2480D66D4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v30 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v14 = *v4;
  v15 = sub_2480DCBFC();
  v16 = v15;
  if (*(v14 + 16))
  {
    v31 = v8;
    result = (v15 + 56);
    v18 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v14 || result >= v14 + 56 + 8 * v18)
    {
      result = memmove(result, (v14 + 56), 8 * v18);
    }

    v20 = 0;
    *(v16 + 16) = *(v14 + 16);
    v21 = 1 << *(v14 + 32);
    v22 = *(v14 + 56);
    v23 = -1;
    if (v21 < 64)
    {
      v23 = ~(-1 << v21);
    }

    v24 = v23 & v22;
    v25 = (v21 + 63) >> 6;
    if ((v23 & v22) != 0)
    {
      do
      {
        v26 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_17:
        v29 = *(v10 + 72) * (v26 | (v20 << 6));
        sub_2480D8A20(*(v14 + 48) + v29, v13, a4);
        result = sub_2480D8AE8(v13, *(v16 + 48) + v29, a4);
      }

      while (v24);
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {

        v8 = v31;
        goto LABEL_21;
      }

      v28 = *(v14 + 56 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v16;
  }

  return result;
}

void *sub_2480D68DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873B8, &qword_2480DD3A8);
  v2 = *v0;
  v3 = sub_2480DCBFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_2480D6A38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873A8, &qword_2480DD398);
  v2 = *v0;
  v3 = sub_2480DCBFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2480D6B88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LibSystemUserRecord(0);
  v43 = *(v4 - 1);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873C0, &qword_2480DD3B0);
  result = sub_2480DCC0C();
  v11 = result;
  if (*(v8 + 16))
  {
    v41 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    for (i = result + 56; v15; ++*(v11 + 16))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v43 + 72);
      v21 = *(v8 + 48) + v20 * (v17 | (v12 << 6));
      v44 = type metadata accessor for LibSystemUserRecord;
      v45 = v20;
      sub_2480D8A20(v21, v7, type metadata accessor for LibSystemUserRecord);
      v22 = *(v11 + 40);
      sub_2480DCCCC();
      v23 = *v7;
      sub_2480DCCFC();
      v24 = *(v7 + 1);
      v25 = *(v7 + 2);
      sub_2480DCA9C();
      v26 = v4[6];
      sub_2480DCA5C();
      sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0]);
      sub_2480DCA6C();
      v27 = (v7 + v4[7]);
      v28 = *v27;
      v29 = v27[1];
      sub_2480DCA9C();
      v30 = (v7 + v4[8]);
      v31 = *v30;
      v32 = v30[1];
      sub_2480DCA9C();
      v33 = *(v7 + v4[9]);
      sub_2480DCCFC();
      v34 = (v7 + v4[10]);
      v35 = *v34;
      v36 = v34[1];
      sub_2480DCA9C();
      v37 = *(v7 + v4[11]);
      sub_2480DCCEC();
      sub_2480DCD0C();
      v38 = -1 << *(v11 + 32);
      v39 = i;
      v40 = sub_2480DCB4C();
      *(v39 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      result = sub_2480D8AE8(v7, *(v11 + 48) + v40 * v45, v44);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v41;
        goto LABEL_18;
      }

      v19 = *(v8 + 56 + 8 * v12);
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_2480D6EB0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LibSystemGroupRecord(0);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873B0, &qword_2480DD3A0);
  result = sub_2480DCC0C();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v42 = *(v40 + 72);
      sub_2480D8A20(v23 + v42 * (v20 | (v12 << 6)), v7, type metadata accessor for LibSystemGroupRecord);
      v24 = *(v11 + 40);
      sub_2480DCCCC();
      v25 = *v7;
      sub_2480DCCFC();
      v26 = *(v7 + 1);
      v27 = *(v7 + 2);
      sub_2480DCA9C();
      v28 = v41;
      v29 = *(v41 + 24);
      sub_2480DCA5C();
      sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0]);
      sub_2480DCA6C();
      sub_2480D7B78(v43, *(v7 + *(v28 + 28)));
      v30 = *(v7 + *(v28 + 32));
      sub_2480DCCEC();
      result = sub_2480DCD0C();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v8 = v39;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v8 = v39;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_2480D8AE8(v7, *(v11 + 48) + v19 * v42, type metadata accessor for LibSystemGroupRecord);
      ++*(v11 + 16);
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

        v2 = v38;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_2480D7224(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873B8, &qword_2480DD3A8);
  result = sub_2480DCC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2480DCCCC();

      sub_2480DCA9C();
      result = sub_2480DCD0C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2480D745C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873A8, &qword_2480DD398);
  result = sub_2480DCC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_2480DCB0C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2480D7670(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Group();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87390, &qword_2480DD380);
  result = sub_2480DCC0C();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v37 = result + 56;
    for (i = v8; v16; ++*(v11 + 16))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v8 + 48);
      v22 = *(v39 + 72);
      sub_2480D8A20(v21 + v22 * (v18 | (v12 << 6)), v7, type metadata accessor for Group);
      v23 = *(v11 + 40);
      sub_2480DCCCC();
      sub_2480DCA5C();
      sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0]);
      sub_2480DCA6C();
      v24 = v40;
      v25 = *&v7[v40[5]];
      sub_2480DCCFC();
      v26 = &v7[v24[6]];
      v27 = *v26;
      v28 = *(v26 + 1);
      sub_2480DCA9C();
      v29 = &v7[v24[7]];
      v30 = *v29;
      v31 = *(v29 + 1);
      sub_2480DCA9C();
      sub_2480D7B78(v41, *&v7[v24[8]]);
      sub_2480D7CD4(v41, *&v7[v24[9]]);
      sub_2480DCD0C();
      v32 = -1 << *(v11 + 32);
      v33 = v37;
      v34 = sub_2480DCB4C();
      *(v33 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      v35 = *(v11 + 48) + v34 * v22;
      v8 = i;
      result = sub_2480D8AE8(v7, v35, type metadata accessor for Group);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v36;
        goto LABEL_18;
      }

      v20 = *(v13 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v11;
  }

  return result;
}

size_t sub_2480D7980(size_t a1, int64_t a2, char a3)
{
  result = sub_2480D79A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2480D79A0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873A0, &qword_2480DD390);
  v10 = *(type metadata accessor for Group() - 8);
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
  v15 = *(type metadata accessor for Group() - 8);
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

uint64_t sub_2480D7B78(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_2480DCD0C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_2480DCCCC();

    sub_2480DCA9C();
    v15 = sub_2480DCD0C();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x24C1C64B0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480D7CD4(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Group();
  v29 = *(v4 - 1);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  *&v30[13] = a1[2];
  *&v30[15] = v8;
  v30[17] = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v28[0] = a1;
  *&v30[9] = v10;
  *&v30[11] = v9;
  v28[1] = sub_2480DCD0C();
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  for (i = 0; v13; v16 ^= v27)
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    sub_2480D8A20(*(a2 + 48) + *(v29 + 72) * (v19 | (v18 << 6)), v7, type metadata accessor for Group);
    sub_2480DCCCC();
    sub_2480DCA5C();
    sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0]);
    sub_2480DCA6C();
    v20 = *&v7[v4[5]];
    sub_2480DCCFC();
    v21 = &v7[v4[6]];
    v22 = *v21;
    v23 = *(v21 + 1);
    sub_2480DCA9C();
    v24 = &v7[v4[7]];
    v25 = *v24;
    v26 = *(v24 + 1);
    sub_2480DCA9C();
    sub_2480D7B78(v30, *&v7[v4[8]]);
    sub_2480D7CD4(v30, *&v7[v4[9]]);
    v27 = sub_2480DCD0C();
    result = sub_2480D8A88(v7, type metadata accessor for Group);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      return MEMORY[0x24C1C64B0](v16);
    }

    v13 = *(a2 + 56 + 8 * v18);
    ++i;
    if (v13)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_2480D7F70(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      v16 = MEMORY[0x24C1C63A0](a1, a2, v7);
      type metadata accessor for DDGroup(v16);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for DDGroup(a1);
    if (sub_2480DCB8C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2480DCB9C();
    swift_dynamicCast();
    v4 = v17;
    v8 = *(a4 + 40);
    v9 = sub_2480DCB0C();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_2480DCB1C();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

uint64_t sub_2480D8168(unint64_t a1)
{
  v1 = a1;
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = a1)
  {
    v4 = type metadata accessor for DDGroup(a1);
    v6 = sub_2480D8908(&qword_27EE87380, v5, type metadata accessor for DDGroup);
    result = MEMORY[0x24C1C62B0](i, v4, v6);
    v13 = result;
    if (j)
    {
      break;
    }

    v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1C6400](j, v1);
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(v1 + 8 * j + 32);
      }

      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_2480D4130(&v12, v10);

      if (v11 == v8)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    a1 = sub_2480DCBAC();
  }

  v9 = result;
  v8 = sub_2480DCBAC();
  result = v9;
  if (v8)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2480D82C4(uint64_t a1)
{
  v2 = type metadata accessor for Group();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_2480D8908(&qword_27EE87388, 255, type metadata accessor for Group);
  result = MEMORY[0x24C1C62B0](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_2480D8A20(v13, v7, type metadata accessor for Group);
      sub_2480D4340(v9, v7);
      sub_2480D8A88(v9, type metadata accessor for Group);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

id sub_2480D8458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for User();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___DDGroup__group;
  swift_beginAccess();
  sub_2480D1F28(a5 + v14, v28);
  v15 = v10[8];
  type metadata accessor for Group();
  swift_dynamicCast();
  v16 = &v13[v10[9]];
  *v16 = 0x706D652F7261762FLL;
  *(v16 + 1) = 0xEA00000000007974;
  v17 = &v13[v10[10]];
  strcpy(v17, "/usr/bin/false");
  v17[15] = -18;
  v18 = MEMORY[0x277D84FA0];
  *&v13[v10[11]] = MEMORY[0x277D84FA0];
  *&v13[v10[12]] = v18;
  sub_2480DCA4C();
  if (qword_27EE87310 != -1)
  {
    swift_once();
  }

  *&v13[v10[5]] = sub_2480DBEB4();
  v19 = &v13[v10[6]];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v13[v10[7]];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = objc_allocWithZone(DDUser);
  v22 = &v21[OBJC_IVAR___DDUser__user];
  v22[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  sub_2480D8A20(v13, boxed_opaque_existential_0, type metadata accessor for User);
  v27.receiver = v21;
  v27.super_class = DDUser;

  v24 = objc_msgSendSuper2(&v27, sel_init);
  sub_2480D8A88(v13, type metadata accessor for User);
  return v24;
}

uint64_t sub_2480D86BC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_2480D8704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Group();
  v9 = *(*(v8 - 1) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84FA0];
  *&v12[*(v10 + 32)] = MEMORY[0x277D84FA0];
  *&v12[*(v10 + 36)] = v13;
  sub_2480DCA4C();
  if (qword_27EE87310 != -1)
  {
    swift_once();
  }

  *&v12[v8[5]] = sub_2480DA948();
  v14 = &v12[v8[6]];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v12[v8[7]];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = objc_allocWithZone(DDGroup);
  v17 = &v16[OBJC_IVAR___DDGroup__group];
  v17[3] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  sub_2480D8A20(v12, boxed_opaque_existential_0, type metadata accessor for Group);
  v21.receiver = v16;
  v21.super_class = DDGroup;

  v19 = objc_msgSendSuper2(&v21, sel_init);
  sub_2480D8A88(v12, type metadata accessor for Group);
  return v19;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2480D8908(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

_OWORD *sub_2480D899C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2480D89AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2480D89BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Group();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2480D8A20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2480D8A88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2480D8AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2480D8BBC()
{
  v1 = v0;
  v2 = *v0;
  sub_2480DCCFC();
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  sub_2480DCA9C();
  v5 = type metadata accessor for LibSystemUserRecord(0);
  v6 = v5[6];
  sub_2480DCA5C();
  sub_2480D90E8(&qword_27EE87368, MEMORY[0x277CC95F0]);
  sub_2480DCA6C();
  v7 = (v1 + v5[7]);
  v8 = *v7;
  v9 = v7[1];
  sub_2480DCA9C();
  v10 = (v1 + v5[8]);
  v11 = *v10;
  v12 = v10[1];
  sub_2480DCA9C();
  v13 = *(v1 + v5[9]);
  sub_2480DCCFC();
  v14 = (v1 + v5[10]);
  v15 = *v14;
  v16 = v14[1];
  sub_2480DCA9C();
  v17 = *(v1 + v5[11]);
  return sub_2480DCCEC();
}

uint64_t sub_2480D8CC4()
{
  v1 = v0;
  sub_2480DCCCC();
  v2 = *v0;
  sub_2480DCCFC();
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  sub_2480DCA9C();
  v5 = type metadata accessor for LibSystemUserRecord(0);
  v6 = v5[6];
  sub_2480DCA5C();
  sub_2480D90E8(&qword_27EE87368, MEMORY[0x277CC95F0]);
  sub_2480DCA6C();
  v7 = (v1 + v5[7]);
  v8 = *v7;
  v9 = v7[1];
  sub_2480DCA9C();
  v10 = (v1 + v5[8]);
  v11 = *v10;
  v12 = v10[1];
  sub_2480DCA9C();
  v13 = *(v1 + v5[9]);
  sub_2480DCCFC();
  v14 = (v1 + v5[10]);
  v15 = *v14;
  v16 = v14[1];
  sub_2480DCA9C();
  v17 = *(v1 + v5[11]);
  sub_2480DCCEC();
  return sub_2480DCD0C();
}

uint64_t sub_2480D8DE8()
{
  sub_2480DCCCC();
  sub_2480D8BBC();
  return sub_2480DCD0C();
}

uint64_t sub_2480D8E28(int *a1)
{
  v3 = v1;
  sub_2480DCCCC();
  v4 = *v1;
  sub_2480DCCFC();
  v5 = *(v1 + 1);
  v6 = *(v1 + 2);
  sub_2480DCA9C();
  v7 = a1[6];
  sub_2480DCA5C();
  sub_2480D90E8(&qword_27EE87368, MEMORY[0x277CC95F0]);
  sub_2480DCA6C();
  sub_2480D7B78(v10, *(v3 + a1[7]));
  v8 = *(v3 + a1[8]);
  sub_2480DCCEC();
  return sub_2480DCD0C();
}

uint64_t sub_2480D8F00(__int128 *a1, int *a2)
{
  v4 = v2;
  v6 = *v2;
  sub_2480DCCFC();
  v7 = *(v2 + 1);
  v8 = *(v2 + 2);
  sub_2480DCA9C();
  v9 = a2[6];
  sub_2480DCA5C();
  sub_2480D90E8(&qword_27EE87368, MEMORY[0x277CC95F0]);
  sub_2480DCA6C();
  sub_2480D7B78(a1, *(v4 + a2[7]));
  v10 = *(v4 + a2[8]);
  return sub_2480DCCEC();
}

uint64_t sub_2480D8FC8(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_2480DCCCC();
  v5 = *v2;
  sub_2480DCCFC();
  v6 = *(v2 + 1);
  v7 = *(v2 + 2);
  sub_2480DCA9C();
  v8 = a2[6];
  sub_2480DCA5C();
  sub_2480D90E8(&qword_27EE87368, MEMORY[0x277CC95F0]);
  sub_2480DCA6C();
  sub_2480D7B78(v11, *(v4 + a2[7]));
  v9 = *(v4 + a2[8]);
  sub_2480DCCEC();
  return sub_2480DCD0C();
}

uint64_t sub_2480D90E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2480D9150(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2480D9188(uint64_t result, uint64_t a2)
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
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_2480DCCCC();

    sub_2480DCA9C();
    v17 = sub_2480DCD0C();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_2480DCCAC() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

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
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480D9340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Group();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v41 - v10;
  result = MEMORY[0x28223BE20](v9);
  v15 = &v41 - v14;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v16 = 0;
  v17 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(a1 + 56);
  v21 = (v18 + 63) >> 6;
  v22 = a2 + 56;
  if (v20)
  {
    while (1)
    {
      v42 = v21;
      v43 = v17;
      v23 = __clz(__rbit64(v20));
      v41 = (v20 - 1) & v20;
LABEL_13:
      v45 = v13;
      v46 = a1;
      v26 = *(v13 + 72);
      sub_2480D9938(*(a1 + 48) + v26 * (v23 | (v16 << 6)), v15);
      v44 = v15;
      sub_2480D999C(v15, v11);
      v27 = *(a2 + 40);
      sub_2480DCCCC();
      sub_2480DCA5C();
      sub_2480D90E8(&qword_27EE87368, MEMORY[0x277CC95F0]);
      sub_2480DCA6C();
      v28 = *&v11[v4[5]];
      sub_2480DCCFC();
      v29 = &v11[v4[6]];
      v30 = *v29;
      v51 = *(v29 + 1);
      v52 = v30;
      sub_2480DCA9C();
      v31 = &v11[v4[7]];
      v32 = *v31;
      v49 = *(v31 + 1);
      v50 = v32;
      sub_2480DCA9C();
      v48 = *&v11[v4[8]];
      sub_2480D7B78(v53, v48);
      v47 = *&v11[v4[9]];
      sub_2480D7CD4(v53, v47);
      v33 = sub_2480DCD0C();
      v34 = -1 << *(a2 + 32);
      v35 = v33 & ~v34;
      if (((*(v22 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
      {
        break;
      }

      v36 = ~v34;
      while (1)
      {
        sub_2480D9938(*(a2 + 48) + v35 * v26, v8);
        if ((sub_2480DCA2C() & 1) != 0 && *&v8[v4[5]] == v28)
        {
          v37 = &v8[v4[6]];
          v38 = *v37 == v52 && *(v37 + 1) == v51;
          if (v38 || (sub_2480DCCAC() & 1) != 0)
          {
            v39 = &v8[v4[7]];
            v40 = *v39 == v50 && *(v39 + 1) == v49;
            if (v40 || (sub_2480DCCAC()) && (sub_2480D9188(*&v8[v4[8]], v48) & 1) != 0 && (sub_2480D9340(*&v8[v4[9]], v47))
            {
              break;
            }
          }
        }

        sub_2480D9A00(v8);
        v35 = (v35 + 1) & v36;
        if (((*(v22 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      sub_2480D9A00(v8);
      result = sub_2480D9A00(v11);
      v13 = v45;
      a1 = v46;
      v17 = v43;
      v15 = v44;
      v20 = v41;
      v21 = v42;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

LABEL_33:
    sub_2480D9A00(v11);
    return 0;
  }

LABEL_8:
  v24 = v16;
  while (1)
  {
    v16 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      return 1;
    }

    v25 = *(v17 + 8 * v16);
    ++v24;
    if (v25)
    {
      v42 = v21;
      v43 = v17;
      v23 = __clz(__rbit64(v25));
      v41 = (v25 - 1) & v25;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480D9730(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_2480DCCAC() & 1) == 0)
  {
    goto LABEL_24;
  }

  v5 = type metadata accessor for LibSystemUserRecord(0);
  v6 = v5[6];
  if ((sub_2480DCA2C() & 1) == 0)
  {
    goto LABEL_24;
  }

  v7 = v5[7];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_2480DCCAC() & 1) == 0)
  {
    goto LABEL_24;
  }

  v12 = v5[8];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (v16 || (sub_2480DCCAC()) && *(a1 + v5[9]) == *(a2 + v5[9]) && ((v17 = v5[10], v18 = *(a1 + v17), v19 = *(a1 + v17 + 8), v20 = (a2 + v17), v18 == *v20) && v19 == v20[1] || (sub_2480DCCAC()))
  {
    v21 = *(a1 + v5[11]) ^ *(a2 + v5[11]) ^ 1;
  }

  else
  {
LABEL_24:
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_2480D9878(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (v4 || (sub_2480DCCAC()) && (v5 = type metadata accessor for LibSystemGroupRecord(0), v6 = v5[6], (sub_2480DCA2C()) && (sub_2480D9188(*(a1 + v5[7]), *(a2 + v5[7])))
  {
    v7 = *(a1 + v5[8]) ^ *(a2 + v5[8]) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_2480D9938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Group();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2480D999C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Group();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2480D9A00(uint64_t a1)
{
  v2 = type metadata accessor for Group();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2480D9A8C()
{
  result = sub_2480DCA5C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2480DCA5C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_2480DCA5C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2480D9CA4()
{
  sub_2480DCA5C();
  if (v0 <= 0x3F)
  {
    sub_2480D9D48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2480D9D48()
{
  if (!qword_27EE873F8)
  {
    v0 = sub_2480DCAFC();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE873F8);
    }
  }
}

uint64_t sub_2480D9DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t), void (*a6)(char *, char *), uint64_t (*a7)(void))
{
  v11 = a4(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v19 - v16;
  a5(a1);
  swift_beginAccess();
  a6(v17, v15);
  swift_endAccess();
  return sub_2480DB3BC(v17, a7);
}

uint64_t sub_2480D9F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t Group.init(name:fullName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Group();
  v11 = MEMORY[0x277D84FA0];
  *(a5 + v10[8]) = MEMORY[0x277D84FA0];
  *(a5 + v10[9]) = v11;
  sub_2480DCA4C();
  if (qword_27EE87310 != -1)
  {
    swift_once();
  }

  result = sub_2480DA948();
  *(a5 + v10[5]) = result;
  v13 = (a5 + v10[6]);
  *v13 = a1;
  v13[1] = a2;
  v14 = (a5 + v10[7]);
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t type metadata accessor for Group()
{
  result = qword_27EE87408;
  if (!qword_27EE87408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Group.hashValue.getter()
{
  sub_2480DCCCC();
  sub_2480DCA5C();
  sub_2480DB1F0(&qword_27EE87368, MEMORY[0x277CC95F0]);
  sub_2480DCA6C();
  v1 = type metadata accessor for Group();
  v2 = *(v0 + v1[5]);
  sub_2480DCCFC();
  v3 = (v0 + v1[6]);
  v4 = *v3;
  v5 = v3[1];
  sub_2480DCA9C();
  v6 = (v0 + v1[7]);
  v7 = *v6;
  v8 = v6[1];
  sub_2480DCA9C();
  sub_2480D7B78(v10, *(v0 + v1[8]));
  sub_2480D7CD4(v10, *(v0 + v1[9]));
  return sub_2480DCD0C();
}

uint64_t Group.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2480DCA5C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Group.gid.setter(int a1)
{
  result = type metadata accessor for Group();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Group.name.getter()
{
  v1 = (v0 + *(type metadata accessor for Group() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Group.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Group() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Group.fullName.getter()
{
  v1 = (v0 + *(type metadata accessor for Group() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Group.fullName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Group() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Group.aliases.getter()
{
  v1 = *(v0 + *(type metadata accessor for Group() + 32));
}

uint64_t Group.aliases.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Group() + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Group.nestedGroups.getter()
{
  v1 = *(v0 + *(type metadata accessor for Group() + 36));
}

uint64_t Group.nestedGroups.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Group() + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Group.hash(into:)(__int128 *a1)
{
  sub_2480DCA5C();
  sub_2480DB1F0(&qword_27EE87368, MEMORY[0x277CC95F0]);
  sub_2480DCA6C();
  v3 = type metadata accessor for Group();
  v4 = *(v1 + v3[5]);
  sub_2480DCCFC();
  v5 = (v1 + v3[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_2480DCA9C();
  v8 = (v1 + v3[7]);
  v9 = *v8;
  v10 = v8[1];
  sub_2480DCA9C();
  sub_2480D7B78(a1, *(v1 + v3[8]));
  v11 = *(v1 + v3[9]);

  return sub_2480D7CD4(a1, v11);
}

uint64_t sub_2480DA67C(int *a1)
{
  sub_2480DCCCC();
  sub_2480DCA5C();
  sub_2480DB1F0(&qword_27EE87368, MEMORY[0x277CC95F0]);
  sub_2480DCA6C();
  v3 = *(v1 + a1[5]);
  sub_2480DCCFC();
  v4 = (v1 + a1[6]);
  v5 = *v4;
  v6 = v4[1];
  sub_2480DCA9C();
  v7 = (v1 + a1[7]);
  v8 = *v7;
  v9 = v7[1];
  sub_2480DCA9C();
  sub_2480D7B78(v11, *(v1 + a1[8]));
  sub_2480D7CD4(v11, *(v1 + a1[9]));
  return sub_2480DCD0C();
}

uint64_t sub_2480DA76C(__int128 *a1, int *a2)
{
  sub_2480DCA5C();
  sub_2480DB1F0(&qword_27EE87368, MEMORY[0x277CC95F0]);
  sub_2480DCA6C();
  v5 = *(v2 + a2[5]);
  sub_2480DCCFC();
  v6 = (v2 + a2[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_2480DCA9C();
  v9 = (v2 + a2[7]);
  v10 = *v9;
  v11 = v9[1];
  sub_2480DCA9C();
  sub_2480D7B78(a1, *(v2 + a2[8]));
  v12 = *(v2 + a2[9]);

  return sub_2480D7CD4(a1, v12);
}

uint64_t sub_2480DA858(uint64_t a1, int *a2)
{
  sub_2480DCCCC();
  sub_2480DCA5C();
  sub_2480DB1F0(&qword_27EE87368, MEMORY[0x277CC95F0]);
  sub_2480DCA6C();
  v4 = *(v2 + a2[5]);
  sub_2480DCCFC();
  v5 = (v2 + a2[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_2480DCA9C();
  v8 = (v2 + a2[7]);
  v9 = *v8;
  v10 = v8[1];
  sub_2480DCA9C();
  sub_2480D7B78(v12, *(v2 + a2[8]));
  sub_2480D7CD4(v12, *(v2 + a2[9]));
  return sub_2480DCD0C();
}

uint64_t sub_2480DA948()
{
  v0 = type metadata accessor for LibSystemGroupRecord(0);
  v40 = *(v0 - 8);
  v1 = *(v40 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = (&v37 - v6);
  v8 = MEMORY[0x28223BE20](v5);
  v38 = &v37 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = (&v37 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87420, &qword_2480DD5B8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = (&v37 - v14);
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x277D84FA0];
  v16 = (v15 + 16);
  aBlock[4] = sub_2480DB270;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2480D9F00;
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);

  DarwinDirectoryRecordStoreApply();
  _Block_release(v17);
  swift_beginAccess();
  v18 = *v16;

  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v18 + 56);
  if (v21)
  {
    v37 = v0;
    v22 = 0;
    v23 = __clz(__rbit64(v21));
    v24 = (v21 - 1) & v21;
    v25 = (v19 + 63) >> 6;
LABEL_9:
    v28 = *(v40 + 72);
    v29 = v38;
    sub_2480DB2F4(*(v18 + 48) + v28 * v23, v38);
    sub_2480DB358(v29, v11);

    if (v24)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v31 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v31 >= v25)
      {

        v33 = v39;
        sub_2480DB358(v11, v39);
        v34 = 0;
        v0 = v37;
        goto LABEL_20;
      }

      v24 = *(v18 + 56 + 8 * v31);
      ++v22;
      if (v24)
      {
        while (1)
        {
          v32 = __clz(__rbit64(v24));
          v24 &= v24 - 1;
          sub_2480DB2F4(*(v18 + 48) + (v32 | (v31 << 6)) * v28, v4);
          sub_2480DB358(v4, v7);
          if (*v11 >= *v7)
          {
            result = sub_2480DB3BC(v7, type metadata accessor for LibSystemGroupRecord);
            v22 = v31;
            if (!v24)
            {
              goto LABEL_13;
            }
          }

          else
          {
            sub_2480DB3BC(v11, type metadata accessor for LibSystemGroupRecord);
            result = sub_2480DB358(v7, v11);
            v22 = v31;
            if (!v24)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v31 = v22;
        }
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v26 = 0;
  v25 = (v19 + 63) >> 6;
  while (v25 - 1 != v21)
  {
    v22 = v21 + 1;
    v27 = *(v18 + 64 + 8 * v21);
    v26 -= 64;
    ++v21;
    if (v27)
    {
      v37 = v0;
      v24 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) - v26;
      goto LABEL_9;
    }
  }

  v34 = 1;
  v33 = v39;
LABEL_20:
  v35 = v40;
  (*(v40 + 56))(v33, v34, 1, v0);

  result = (*(v35 + 48))(v33, 1, v0);
  if (result == 1)
  {
    goto LABEL_26;
  }

  v36 = *v33;
  sub_2480DB3BC(v33, type metadata accessor for LibSystemGroupRecord);
  result = (v36 + 1);
  if (v36 == -1)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t _s15DarwinDirectory5GroupV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2480DCA2C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Group();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_2480DCCAC() & 1) == 0)
  {
    return 0;
  }

  v11 = v5[7];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_2480DCCAC() & 1) == 0 || (sub_2480D9188(*(a1 + v5[8]), *(a2 + v5[8])) & 1) == 0)
  {
    return 0;
  }

  v16 = v5[9];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);

  return sub_2480D9340(v17, v18);
}

uint64_t sub_2480DAF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2480DCA5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2480DAFF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2480DCA5C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_2480DB0AC()
{
  sub_2480DCA5C();
  if (v0 <= 0x3F)
  {
    sub_2480D9D48();
    if (v1 <= 0x3F)
    {
      sub_2480DB15C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2480DB15C()
{
  if (!qword_27EE87418)
  {
    type metadata accessor for Group();
    sub_2480DB1F0(&qword_27EE87388, type metadata accessor for Group);
    v0 = sub_2480DCAFC();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE87418);
    }
  }
}

uint64_t sub_2480DB1F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2480DB238()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2480DB2F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibSystemGroupRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2480DB358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibSystemGroupRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2480DB3BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t User.init(name:fullName:primaryGroup:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for User();
  v13 = (a6 + v12[9]);
  *v13 = 0x706D652F7261762FLL;
  v13[1] = 0xEA00000000007974;
  v14 = (a6 + v12[10]);
  strcpy(v14, "/usr/bin/false");
  v14[15] = -18;
  v15 = MEMORY[0x277D84FA0];
  *(a6 + v12[11]) = MEMORY[0x277D84FA0];
  *(a6 + v12[12]) = v15;
  sub_2480DCA4C();
  if (qword_27EE87310 != -1)
  {
    swift_once();
  }

  *(a6 + v12[5]) = sub_2480DBEB4();
  v16 = (a6 + v12[6]);
  *v16 = a1;
  v16[1] = a2;
  v17 = (a6 + v12[7]);
  *v17 = a3;
  v17[1] = a4;
  return sub_2480DC958(a5, a6 + v12[8], type metadata accessor for Group);
}

uint64_t type metadata accessor for User()
{
  result = qword_27EE87430;
  if (!qword_27EE87430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t User.hashValue.getter()
{
  sub_2480DCCCC();
  User.hash(into:)(v1);
  return sub_2480DCD0C();
}

uint64_t User.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2480DCA5C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t User.uid.setter(int a1)
{
  result = type metadata accessor for User();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t User.name.getter()
{
  v1 = (v0 + *(type metadata accessor for User() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t User.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for User() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t User.fullName.getter()
{
  v1 = (v0 + *(type metadata accessor for User() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t User.fullName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for User() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t User.primaryGroup.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for User() + 32);

  return sub_2480D89BC(a1, v3);
}

uint64_t User.homeDirectory.getter()
{
  v1 = (v0 + *(type metadata accessor for User() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t User.homeDirectory.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for User() + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t User.shell.getter()
{
  v1 = (v0 + *(type metadata accessor for User() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t User.shell.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for User() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t User.memberships.getter()
{
  v1 = *(v0 + *(type metadata accessor for User() + 44));
}

uint64_t User.memberships.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for User() + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t User.aliases.getter()
{
  v1 = *(v0 + *(type metadata accessor for User() + 48));
}

uint64_t User.aliases.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for User() + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t User.hash(into:)(__int128 *a1)
{
  sub_2480DCA5C();
  sub_2480DC850(&qword_27EE87368, MEMORY[0x277CC95F0]);
  sub_2480DCA6C();
  v3 = type metadata accessor for User();
  v4 = *(v1 + v3[5]);
  sub_2480DCCFC();
  v5 = (v1 + v3[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_2480DCA9C();
  v8 = (v1 + v3[7]);
  v9 = *v8;
  v10 = v8[1];
  sub_2480DCA9C();
  v11 = v1 + v3[8];
  sub_2480DCA6C();
  v12 = type metadata accessor for Group();
  v13 = *(v11 + v12[5]);
  sub_2480DCCFC();
  v14 = (v11 + v12[6]);
  v15 = *v14;
  v16 = v14[1];
  sub_2480DCA9C();
  v17 = (v11 + v12[7]);
  v18 = *v17;
  v19 = v17[1];
  sub_2480DCA9C();
  sub_2480D7B78(a1, *(v11 + v12[8]));
  sub_2480D7CD4(a1, *(v11 + v12[9]));
  v20 = (v1 + v3[9]);
  v21 = *v20;
  v22 = v20[1];
  sub_2480DCA9C();
  v23 = (v1 + v3[10]);
  v24 = *v23;
  v25 = v23[1];
  sub_2480DCA9C();
  sub_2480D7CD4(a1, *(v1 + v3[11]));
  v26 = *(v1 + v3[12]);

  return sub_2480D7B78(a1, v26);
}

uint64_t sub_2480DBE30()
{
  sub_2480DCCCC();
  User.hash(into:)(v1);
  return sub_2480DCD0C();
}

uint64_t sub_2480DBE74()
{
  sub_2480DCCCC();
  User.hash(into:)(v1);
  return sub_2480DCD0C();
}

uint64_t sub_2480DBEB4()
{
  v0 = type metadata accessor for LibSystemUserRecord(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v38 - v6);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = (&v38 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE87440, &qword_2480DD680);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v41 = (&v38 - v15);
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x277D84FA0];
  v17 = (v16 + 16);
  aBlock[4] = sub_2480DC8D0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2480D9F00;
  aBlock[3] = &block_descriptor_0;
  v18 = _Block_copy(aBlock);

  DarwinDirectoryRecordStoreApply();
  _Block_release(v18);
  swift_beginAccess();
  v19 = *v17;

  v20 = 1 << *(v19 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v19 + 56);
  if (v22)
  {
    v39 = v0;
    v23 = 0;
    v24 = __clz(__rbit64(v22));
    v25 = (v22 - 1) & v22;
    v26 = (v20 + 63) >> 6;
LABEL_9:
    v29 = *(v19 + 48);
    v38 = v1;
    v30 = *(v1 + 72);
    sub_2480DC8F0(v29 + v30 * v24, v10, type metadata accessor for LibSystemUserRecord);
    sub_2480DC958(v10, v12, type metadata accessor for LibSystemUserRecord);

    v32 = v40;
    if (v25)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v33 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v33 >= v26)
      {

        v35 = v41;
        sub_2480DC958(v12, v41, type metadata accessor for LibSystemUserRecord);
        v36 = 0;
        v1 = v38;
        v0 = v39;
        goto LABEL_20;
      }

      v25 = *(v19 + 56 + 8 * v33);
      ++v23;
      if (v25)
      {
        while (1)
        {
          v34 = __clz(__rbit64(v25));
          v25 &= v25 - 1;
          sub_2480DC8F0(*(v19 + 48) + (v34 | (v33 << 6)) * v30, v32, type metadata accessor for LibSystemUserRecord);
          sub_2480DC958(v32, v7, type metadata accessor for LibSystemUserRecord);
          if (*v12 >= *v7)
          {
            result = sub_2480DC9C0(v7);
            v23 = v33;
            if (!v25)
            {
              goto LABEL_13;
            }
          }

          else
          {
            sub_2480DC9C0(v12);
            result = sub_2480DC958(v7, v12, type metadata accessor for LibSystemUserRecord);
            v23 = v33;
            if (!v25)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v33 = v23;
        }
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v27 = 0;
  v26 = (v20 + 63) >> 6;
  while (v26 - 1 != v22)
  {
    v23 = v22 + 1;
    v28 = *(v19 + 64 + 8 * v22);
    v27 -= 64;
    ++v22;
    if (v28)
    {
      v39 = v0;
      v25 = (v28 - 1) & v28;
      v24 = __clz(__rbit64(v28)) - v27;
      goto LABEL_9;
    }
  }

  v36 = 1;
  v35 = v41;
LABEL_20:
  (*(v1 + 56))(v35, v36, 1, v0);

  result = (*(v1 + 48))(v35, 1, v0);
  if (result == 1)
  {
    goto LABEL_26;
  }

  v37 = *v35;
  sub_2480DC9C0(v35);
  result = (v37 + 1);
  if (v37 == -1)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t _s15DarwinDirectory4UserV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2480DCA2C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for User();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_2480DCCAC() & 1) == 0)
  {
    return 0;
  }

  v11 = v5[7];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_2480DCCAC() & 1) == 0)
  {
    return 0;
  }

  if ((_s15DarwinDirectory5GroupV2eeoiySbAC_ACtFZ_0(a1 + v5[8], a2 + v5[8]) & 1) == 0)
  {
    return 0;
  }

  v16 = v5[9];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (sub_2480DCCAC() & 1) == 0)
  {
    return 0;
  }

  v21 = v5[10];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if ((v22 != *v24 || v23 != v24[1]) && (sub_2480DCCAC() & 1) == 0)
  {
    return 0;
  }

  if ((sub_2480D9340(*(a1 + v5[11]), *(a2 + v5[11])) & 1) == 0)
  {
    return 0;
  }

  v25 = v5[12];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);

  return sub_2480D9188(v26, v27);
}

uint64_t sub_2480DC51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2480DCA5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Group();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2480DC658(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2480DCA5C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Group();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_2480DC780()
{
  sub_2480DCA5C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Group();
    if (v1 <= 0x3F)
    {
      sub_2480DB15C();
      if (v2 <= 0x3F)
      {
        sub_2480D9D48();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2480DC850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2480DC898()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2480DC8F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2480DC958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2480DC9C0(uint64_t a1)
{
  v2 = type metadata accessor for LibSystemUserRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}