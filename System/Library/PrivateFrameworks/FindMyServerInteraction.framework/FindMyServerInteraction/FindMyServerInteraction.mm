uint64_t sub_24AFC36F0()
{
  v1 = v0;
  v2 = type metadata accessor for Request();
  v3 = *(v2 + 20);
  sub_24AFCEA38();
  sub_24AFC4564();
  v43 = sub_24AFCED38();
  result = sub_24AFCE9E8();
  if (result)
  {
    v39 = v2;
    v5 = 0;
    v6 = result + 64;
    v7 = 1 << *(result + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(result + 64);
    v10 = (v7 + 63) >> 6;
    v41 = result;
    while (v9)
    {
LABEL_13:
      v13 = (v5 << 10) | (16 * __clz(__rbit64(v9)));
      v14 = (*(result + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(result + 56) + v13);
      v18 = v17[1];
      v42 = *v17;

      MEMORY[0x24C237380](v15, v16);
      MEMORY[0x24C237380](8250, 0xE200000000000000);
      if (qword_2810669F0 != -1)
      {
        swift_once();
      }

      v19 = off_2810669F8;
      v20 = sub_24AFCEBB8();
      v22 = v21;

      if (v19[2] && (v23 = v19[5], sub_24AFCEDA8(), sub_24AFCEBD8(), v24 = sub_24AFCEDC8(), v25 = -1 << *(v19 + 32), v26 = v24 & ~v25, ((*(v19 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v26) & 1) != 0))
      {
        v40 = v18;
        v27 = ~v25;
        while (1)
        {
          v28 = (v19[6] + 16 * v26);
          v29 = *v28 == v20 && v28[1] == v22;
          if (v29 || (sub_24AFCED48() & 1) != 0)
          {
            break;
          }

          v26 = (v26 + 1) & v27;
          if (((*(v19 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v26) & 1) == 0)
          {
            v18 = v40;
            goto LABEL_6;
          }
        }

        v18 = 0xEA00000000003E44;
        v11 = 0x455443414445523CLL;
      }

      else
      {
LABEL_6:
        v11 = v42;
      }

      v9 &= v9 - 1;

      MEMORY[0x24C237380](v11, v18);

      MEMORY[0x24C237380](10, 0xE100000000000000);

      result = v41;
    }

    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        v2 = v39;
        v1 = v0;
        goto LABEL_27;
      }

      v9 = *(v6 + 8 * v12);
      ++v5;
      if (v9)
      {
        v5 = v12;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_27:
    v30 = (v1 + *(v2 + 28));
    v31 = v30[3];
    v32 = v30[4];
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v33 = (*(v32 + 16))(v31, v32);
    if (v34 >> 60 != 15)
    {
      v35 = v33;
      v36 = v34;
      MEMORY[0x24C237380](2570, 0xE200000000000000);
      sub_24AFC45BC();
      v37 = sub_24AFCEA48();
      if (!v38)
      {
        v37 = sub_24AFCEA58();
      }

      MEMORY[0x24C237380](v37);
      sub_24AFC466C(v35, v36);
    }

    return v43;
  }

  return result;
}

uint64_t sub_24AFC3A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AFC3AE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AFC3B48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v87 = a5;
  v101 = a4;
  v93 = a3;
  v94 = a2;
  v86 = sub_24AFCEA38();
  v85 = *(v86 - 8);
  v6 = *(v85 + 64);
  (MEMORY[0x28223BE20])();
  v89 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC6FF0, &qword_24AFCFC80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v10 = &v84 - v9;
  v92 = sub_24AFCEA88();
  v11 = *(v92 - 8);
  v12 = *(v11 + 64);
  (MEMORY[0x28223BE20])();
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24AFCEA98();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = (MEMORY[0x28223BE20])();
  v88 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v84 - v20;
  v91 = type metadata accessor for Request();
  v22 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v90 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[3];
  v24 = a1[4];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  (*(v24 + 8))(v25, v24);
  sub_24AFCEA68();
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_24AFC3AE8(v10, &qword_27EFC6FF0, &qword_24AFCFC80);
    sub_24AFC5FA4();
    swift_allocError();
    *v26 = 1;
    *(v26 + 8) = 2;
    swift_willThrow();

    sub_24AFC3AE8(v93, &qword_27EFC7000, &qword_24AFCF710);
    (*(v11 + 8))(v14, v92);
    __swift_destroy_boxed_opaque_existential_1(v94);
    return __swift_destroy_boxed_opaque_existential_1(v95);
  }

  (*(v11 + 8))(v14, v92);
  v28 = *(v16 + 32);
  v28(v21, v10, v15);
  v29 = v90;
  v28(v90, v21, v15);
  v30 = v91;
  v31 = v95;
  sub_24AFC47A0(v95, v29 + *(v91 + 24));
  v32 = v94;
  sub_24AFC47A0(v94, v29 + v30[7]);
  v33 = v93;
  sub_24AFC5FF8(v93, v29 + v30[8]);
  (*(v16 + 16))(v88, v29, v15);
  v34 = v89;
  sub_24AFCEA08();
  v35 = v32[3];
  v36 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v35);
  (*(*(v36 + 8) + 16))(v98, v35);
  v37 = qword_24AFCFCA0[SLOBYTE(v98[0])];
  v38 = qword_24AFCFCC0[SLOBYTE(v98[0])];
  sub_24AFCE9C8();
  v39 = v32[3];
  v40 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v39);
  (*(*(v40 + 8) + 24))(v39);
  sub_24AFCE9F8();
  v41 = v32[3];
  v42 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v41);
  (*(v42 + 16))(v41, v42);
  sub_24AFCEA28();
  sub_24AFC5FF8(v33, &v96);
  if (v97)
  {
    sub_24AFC60CC(&v96, v98);
    v43 = v99;
    v44 = v100;
    __swift_project_boxed_opaque_existential_1(v98, v99);
    result = (*(v44 + 24))(v43, v44);
    v45 = result;
    v46 = 0;
    v47 = result + 64;
    v48 = 1 << *(result + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *(result + 64);
    v51 = (v48 + 63) >> 6;
    if (v50)
    {
      while (1)
      {
        v52 = v46;
LABEL_12:
        v53 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v54 = (v52 << 10) | (16 * v53);
        v55 = (*(v45 + 48) + v54);
        v56 = *v55;
        v57 = v55[1];
        v58 = (*(v45 + 56) + v54);
        v59 = *v58;
        v60 = v58[1];

        sub_24AFCEA18();

        if (!v50)
        {
          goto LABEL_8;
        }
      }
    }

    while (1)
    {
LABEL_8:
      v52 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v52 >= v51)
      {
        break;
      }

      v50 = *(v47 + 8 * v52);
      ++v46;
      if (v50)
      {
        v46 = v52;
        goto LABEL_12;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v98);
    v32 = v94;
    v61 = v95;
    v33 = v93;
    v29 = v90;
    v30 = v91;
    v62 = v101;
    if (v101)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  v61 = v31;
  sub_24AFC3AE8(&v96, &qword_27EFC7000, &qword_24AFCF710);
  v62 = v101;
  if (!v101)
  {
LABEL_28:
    v82 = v62;
    v83 = sub_24AFC6BDC(MEMORY[0x277D84F90]);

    sub_24AFC3AE8(v33, &qword_27EFC7000, &qword_24AFCF710);
    *(v29 + v30[9]) = v83;
LABEL_30:
    (*(v85 + 32))(v29 + v30[5], v34, v86);
    sub_24AFC4438(v29, v87);
    __swift_destroy_boxed_opaque_existential_1(v32);
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

LABEL_17:
  v63 = v101;
  v64 = sub_24AFCE9D8();
  v65 = [v63 appleIDHeadersForRequest_];

  v62 = v101;
  if (!v65)
  {
    goto LABEL_28;
  }

  v101 = v63;
  v66 = v34;
  v67 = sub_24AFCEB38();

  *(v29 + v30[9]) = v67;
  v68 = 1 << *(v67 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & *(v67 + 64);
  v71 = (v68 + 63) >> 6;

  for (i = 0; v70; result = )
  {
    v73 = i;
LABEL_26:
    v74 = __clz(__rbit64(v70));
    v70 &= v70 - 1;
    v75 = (v73 << 10) | (16 * v74);
    v76 = (*(v67 + 48) + v75);
    v77 = *v76;
    v78 = v76[1];
    v79 = (*(v67 + 56) + v75);
    v80 = *v79;
    v81 = v79[1];

    sub_24AFCEA18();
  }

  while (1)
  {
    v73 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v73 >= v71)
    {

      sub_24AFC3AE8(v93, &qword_27EFC7000, &qword_24AFCF710);
      v32 = v94;
      v61 = v95;
      v34 = v66;
      v29 = v90;
      v30 = v91;
      goto LABEL_30;
    }

    v70 = *(v67 + 64 + 8 * v73);
    ++i;
    if (v70)
    {
      i = v73;
      goto LABEL_26;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24AFC4438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Request();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Request()
{
  result = qword_2810669E0;
  if (!qword_2810669E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24AFC4564()
{
  result = qword_281066B98;
  if (!qword_281066B98)
  {
    sub_24AFCEA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066B98);
  }

  return result;
}

unint64_t sub_24AFC45BC()
{
  result = qword_281066B88;
  if (!qword_281066B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066B88);
  }

  return result;
}

uint64_t sub_24AFC4610(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24AFC466C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AFC4680(a1, a2);
  }

  return a1;
}

uint64_t sub_24AFC4680(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24AFC46D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AFC4864(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24AFC4610(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_24AFC47A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24AFC4804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24AFC4864(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24AFCB988(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24AFCECE8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_24AFC4984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AFCEA88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AFC4A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AFCEA88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24AFC4C9C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AFC4CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AFCEA98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24AFCEA38();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24AFC4E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24AFCEA98();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_24AFCEA38();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24AFC4F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AFCEA98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24AFC4FCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AFCEA98();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AFC5084()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFC50C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AFCEA98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24AFCEA38();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24AFC51D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24AFCEA98();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_24AFCEA38();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24AFC52DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v87 = a5;
  v90 = a4;
  v94 = a3;
  v95 = a2;
  v86 = sub_24AFCEA38();
  v85 = *(v86 - 8);
  v6 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v89 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC6FF0, &qword_24AFCFC80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v84 - v10;
  v12 = sub_24AFCEA88();
  v92 = *(v12 - 1);
  v93 = v12;
  v13 = *(v92 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24AFCEA98();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v88 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v84 - v21;
  v91 = type metadata accessor for FileUploadRequest();
  v23 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[3];
  v26 = a1[4];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v28 = v27;
  v29 = v17;
  (*(v26 + 8))(v28, v26);
  sub_24AFCEA68();
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_24AFC3AE8(v11, &qword_27EFC6FF0, &qword_24AFCFC80);
    sub_24AFC5FA4();
    swift_allocError();
    *v30 = 1;
    *(v30 + 8) = 2;
    swift_willThrow();

    sub_24AFC3AE8(v94, &qword_27EFC7000, &qword_24AFCF710);
    (*(v92 + 8))(v15, v93);
    __swift_destroy_boxed_opaque_existential_1(v95);
    return __swift_destroy_boxed_opaque_existential_1(v101);
  }

  (*(v92 + 8))(v15, v93);
  v32 = *(v17 + 32);
  v32(v22, v11, v16);
  v32(v25, v22, v16);
  v33 = v91;
  v34 = v101;
  sub_24AFC47A0(v101, &v25[*(v91 + 24)]);
  v35 = v95;
  sub_24AFC47A0(v95, &v25[v33[7]]);
  v36 = v94;
  sub_24AFC5FF8(v94, &v25[v33[8]]);
  (*(v29 + 16))(v88, v25, v16);
  v37 = v89;
  sub_24AFCEA08();
  v38 = v35[3];
  v39 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v38);
  (*(*(v39 + 8) + 16))(v98, v38);
  v40 = qword_24AFCF7A8[SLOBYTE(v98[0])];
  v41 = qword_24AFCF7C8[SLOBYTE(v98[0])];
  sub_24AFCE9C8();
  v42 = v35[3];
  v43 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v42);
  (*(*(v43 + 8) + 24))(v42);
  sub_24AFCE9F8();
  sub_24AFC5FF8(v36, &v96);
  v84 = v25;
  if (v97)
  {
    sub_24AFC60CC(&v96, v98);
    v44 = v99;
    v45 = v100;
    __swift_project_boxed_opaque_existential_1(v98, v99);
    result = (*(v45 + 24))(v44, v45);
    v46 = result;
    v47 = 0;
    v48 = result + 64;
    v49 = 1 << *(result + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & *(result + 64);
    v52 = (v49 + 63) >> 6;
    if (v51)
    {
      while (1)
      {
        v53 = v47;
LABEL_12:
        v54 = __clz(__rbit64(v51));
        v51 &= v51 - 1;
        v55 = (v53 << 10) | (16 * v54);
        v56 = (*(v46 + 48) + v55);
        v57 = *v56;
        v58 = v56[1];
        v59 = (*(v46 + 56) + v55);
        v60 = *v59;
        v61 = v59[1];

        sub_24AFCEA18();

        if (!v51)
        {
          goto LABEL_8;
        }
      }
    }

    while (1)
    {
LABEL_8:
      v53 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v53 >= v52)
      {
        break;
      }

      v51 = *(v48 + 8 * v53);
      ++v47;
      if (v51)
      {
        v47 = v53;
        goto LABEL_12;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v98);
    v36 = v94;
    v35 = v95;
    v33 = v91;
    v25 = v84;
    v62 = v101;
    v63 = v90;
    if (v90)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  v62 = v34;
  sub_24AFC3AE8(&v96, &qword_27EFC7000, &qword_24AFCF710);
  v63 = v90;
  if (!v90)
  {
LABEL_28:
    v83 = sub_24AFC6BDC(MEMORY[0x277D84F90]);

    sub_24AFC3AE8(v36, &qword_27EFC7000, &qword_24AFCF710);
    *&v25[v33[9]] = v83;
LABEL_30:
    (*(v85 + 32))(&v25[v33[5]], v37, v86);
    sub_24AFC6068(v25, v87);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return __swift_destroy_boxed_opaque_existential_1(v62);
  }

LABEL_17:
  v64 = v63;
  v65 = sub_24AFCE9D8();
  v66 = [v64 appleIDHeadersForRequest_];

  v93 = v64;
  v62 = v101;
  if (!v66)
  {
    goto LABEL_28;
  }

  v67 = v37;
  v68 = sub_24AFCEB38();

  *&v25[v33[9]] = v68;
  v69 = 1 << *(v68 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(v68 + 64);
  v72 = (v69 + 63) >> 6;

  for (i = 0; v71; result = )
  {
    v74 = i;
LABEL_26:
    v75 = __clz(__rbit64(v71));
    v71 &= v71 - 1;
    v76 = (v74 << 10) | (16 * v75);
    v77 = (*(v68 + 48) + v76);
    v78 = *v77;
    v79 = v77[1];
    v80 = (*(v68 + 56) + v76);
    v81 = *v80;
    v82 = v80[1];

    sub_24AFCEA18();
  }

  while (1)
  {
    v74 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v74 >= v72)
    {

      sub_24AFC3AE8(v94, &qword_27EFC7000, &qword_24AFCF710);
      v62 = v101;
      v35 = v95;
      v37 = v67;
      v33 = v91;
      v25 = v84;
      goto LABEL_30;
    }

    v71 = *(v68 + 64 + 8 * v74);
    ++i;
    if (v71)
    {
      i = v74;
      goto LABEL_26;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24AFC5B54()
{
  v1 = v0;
  v2 = sub_24AFCEA98();
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FileUploadRequest();
  v6 = *(v5 + 20);
  sub_24AFCEA38();
  sub_24AFC5F14(&qword_281066B98, MEMORY[0x277CC8678]);
  v38 = sub_24AFCED38();
  v39 = v7;
  result = sub_24AFCE9E8();
  if (result)
  {
    v9 = result;
    v31 = v5;
    v32 = v0;
    v33 = v2;
    v10 = 0;
    v11 = result + 64;
    v12 = 1 << *(result + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(result + 64);
    for (i = (v12 + 63) >> 6; v14; result = )
    {
      v16 = v10;
LABEL_10:
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(v9 + 48) + v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(v9 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      v36 = 10;
      v37 = 0xE100000000000000;

      MEMORY[0x24C237380](v20, v21);

      MEMORY[0x24C237380](8250, 0xE200000000000000);
      MEMORY[0x24C237380](v23, v24);

      MEMORY[0x24C237380](v36, v37);
    }

    while (1)
    {
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v16 >= i)
      {

        v1 = v32;
        v2 = v33;
        v5 = v31;
        goto LABEL_13;
      }

      v14 = *(v11 + 8 * v16);
      ++v10;
      if (v14)
      {
        v10 = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_24AFCECD8();

    v36 = 0x65746E6F435B0A0ALL;
    v37 = 0xEF20666F2073746ELL;
    v25 = (v1 + *(v5 + 28));
    v26 = v25[3];
    v27 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v28 = v34;
    (*(v27 + 16))(v26, v27);
    sub_24AFC5F14(&qword_281066B90, MEMORY[0x277CC9260]);
    v29 = sub_24AFCED38();
    MEMORY[0x24C237380](v29);

    (*(v35 + 8))(v28, v2);
    MEMORY[0x24C237380](93, 0xE100000000000000);
    MEMORY[0x24C237380](v36, v37);

    return v38;
  }

  return result;
}

uint64_t type metadata accessor for FileUploadRequest()
{
  result = qword_27EFC7010;
  if (!qword_27EFC7010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AFC5F14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24AFC5FA4()
{
  result = qword_27EFC6FF8;
  if (!qword_27EFC6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC6FF8);
  }

  return result;
}

uint64_t sub_24AFC5FF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7000, &qword_24AFCF710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFC6068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileUploadRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFC60CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void type metadata accessor for AuthChallengeDisposition()
{
  if (!qword_27EFC7008)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EFC7008);
    }
  }
}

void sub_24AFC615C()
{
  sub_24AFCEA98();
  if (v0 <= 0x3F)
  {
    sub_24AFCEA38();
    if (v1 <= 0x3F)
    {
      sub_24AFC6260(319, qword_281066948);
      if (v2 <= 0x3F)
      {
        sub_24AFC6260(319, &qword_27EFC7020);
        if (v3 <= 0x3F)
        {
          sub_24AFC62BC();
          if (v4 <= 0x3F)
          {
            sub_24AFC6368();
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

uint64_t sub_24AFC6260(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_24AFC62BC()
{
  if (!qword_281066A18[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC7028, &unk_24AFCFC90);
    v0 = sub_24AFCEC78();
    if (!v1)
    {
      atomic_store(v0, qword_281066A18);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_24AFC6368()
{
  if (!qword_2810668A0)
  {
    v0 = sub_24AFCEB48();
    if (!v1)
    {
      atomic_store(v0, &qword_2810668A0);
    }
  }
}

void static Standard.clientInfoValue.getter()
{
  v0 = [objc_opt_self() currentDevice];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 serverFriendlyDescription];

    if (v2)
    {
      sub_24AFCEB78();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t static Standard.clientTime.getter()
{
  v0 = sub_24AFCEAD8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AFCEAC8();
  v5 = sub_24AFCEAB8();
  (*(v1 + 8))(v4, v0);
  v7[1] = v5;
  return sub_24AFCED38();
}

uint64_t _s23FindMyServerInteraction20ContentRepresentablePAAE11descriptionSSvg_0(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 24))();
  v3 = result;
  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v4;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (v10 << 10) | (16 * v11);
    v13 = (*(v3 + 48) + v12);
    v14 = (*(v3 + 56) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = *v13;
    v18 = v13[1];

    MEMORY[0x24C237380](8250, 0xE200000000000000);
    MEMORY[0x24C237380](v15, v16);

    MEMORY[0x24C237380](10, 0xE100000000000000);
    MEMORY[0x24C237380](v17, v18);
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return 0;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t RequestContentRepresentable.description.getter(uint64_t a1, uint64_t a2)
{
  MyServerInteraction20ContentRepresentablePAAE11descriptionSSvg_0 = _s23FindMyServerInteraction20ContentRepresentablePAAE11descriptionSSvg_0(a1, *(a2 + 8));
  v4 = (*(a2 + 16))(a1, a2);
  if (v5 >> 60 != 15)
  {
    v6 = v4;
    v7 = v5;
    sub_24AFC45BC();
    v8 = sub_24AFCEA48();
    if (!v9)
    {
      v8 = sub_24AFCEA58();
    }

    MEMORY[0x24C237380](v8);

    MEMORY[0x24C237380](10, 0xE100000000000000);
    sub_24AFC466C(v6, v7);
  }

  return MyServerInteraction20ContentRepresentablePAAE11descriptionSSvg_0;
}

uint64_t FileUploadContentRepresentable.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AFCEA98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MyServerInteraction20ContentRepresentablePAAE11descriptionSSvg_0 = _s23FindMyServerInteraction20ContentRepresentablePAAE11descriptionSSvg_0(a1, *(a2 + 8));
  v15 = v9;
  v12 = 0x4C5255656C69660ALL;
  v13 = 0xEA0000000000203ALL;
  (*(a2 + 16))(a1, a2);
  sub_24AFC6CF0();
  v10 = sub_24AFCED38();
  MEMORY[0x24C237380](v10);

  (*(v5 + 8))(v8, v4);
  MEMORY[0x24C237380](v12, v13);

  return MyServerInteraction20ContentRepresentablePAAE11descriptionSSvg_0;
}

uint64_t RequestMethod.hashValue.getter()
{
  v1 = *v0;
  sub_24AFCEDA8();
  MEMORY[0x24C237550](v1);
  return sub_24AFCEDC8();
}

uint64_t sub_24AFC69F4()
{
  v1 = *v0;
  sub_24AFCEDA8();
  MEMORY[0x24C237550](v1);
  return sub_24AFCEDC8();
}

uint64_t sub_24AFC6A68()
{
  v1 = *v0;
  sub_24AFCEDA8();
  MEMORY[0x24C237550](v1);
  return sub_24AFCEDC8();
}

unint64_t sub_24AFC6AAC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24AFCEDA8();
  sub_24AFCEBD8();
  v6 = sub_24AFCEDC8();

  return sub_24AFC6B24(a1, a2, v6);
}

unint64_t sub_24AFC6B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24AFCED48())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24AFC6BDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7038, &qword_24AFCF8E8);
    v3 = sub_24AFCED08();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24AFC6AAC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24AFC6CF0()
{
  result = qword_281066B90;
  if (!qword_281066B90)
  {
    sub_24AFCEA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066B90);
  }

  return result;
}

unint64_t sub_24AFC6D4C()
{
  result = qword_27EFC7030;
  if (!qword_27EFC7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7030);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Standard(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Standard(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestMethod(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Response.requestURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AFCEA98();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id Response.response.getter()
{
  v1 = *(v0 + *(type metadata accessor for Response() + 20));

  return v1;
}

uint64_t type metadata accessor for Response()
{
  result = qword_281066938;
  if (!qword_281066938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Response.body.getter()
{
  v1 = v0 + *(type metadata accessor for Response() + 24);
  v2 = *v1;
  sub_24AFC7178(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_24AFC7178(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t Response.transaction.getter()
{
  v1 = *(v0 + *(type metadata accessor for Response() + 28));
}

void Response.description.getter()
{
  v1 = sub_24AFCEBA8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v33[1] = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AFCEA98();
  sub_24AFC6CF0();
  *&v45 = sub_24AFCED38();
  *(&v45 + 1) = v4;
  MEMORY[0x24C237380](0x3A73757461747320, 0xE900000000000020);
  v34 = type metadata accessor for Response();
  v5 = *(v34 + 20);
  v35 = v0;
  v6 = *(v0 + v5);
  *&v40 = [v6 statusCode];
  v7 = sub_24AFCED38();
  MEMORY[0x24C237380](v7);

  v49 = v45;
  v36 = v6;
  v8 = [v6 allHeaderFields];
  v9 = sub_24AFCEB38();

  v10 = 0;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  if (v13)
  {
    while (1)
    {
      v15 = v10;
LABEL_12:
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v19 = v18 | (v15 << 6);
      sub_24AFC7768(*(v9 + 48) + 40 * v19, v38);
      sub_24AFC4610(*(v9 + 56) + 32 * v19, v37);
      v40 = v38[0];
      v41 = v38[1];
      *&v42 = v39;
      sub_24AFC77C4(v37, (&v42 + 8));
      v17 = v15;
LABEL_13:
      v47[0] = v42;
      v47[1] = v43;
      v48 = v44;
      v45 = v40;
      v46 = v41;
      if (!*(&v41 + 1))
      {
        break;
      }

      v40 = v45;
      v41 = v46;
      *&v42 = *&v47[0];
      sub_24AFC77C4((v47 + 8), v38);
      *&v37[0] = 0;
      *(&v37[0] + 1) = 0xE000000000000000;
      MEMORY[0x24C237380](10, 0xE100000000000000);
      v20 = sub_24AFCEC98();
      MEMORY[0x24C237380](v20);

      MEMORY[0x24C237380](8250, 0xE200000000000000);
      sub_24AFCECF8();
      MEMORY[0x24C237380](*&v37[0], *(&v37[0] + 1));

      __swift_destroy_boxed_opaque_existential_1(v38);
      sub_24AFC7828(&v40);
      v10 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v21 = sub_24AFCEB68();
    v22 = [v36 valueForHTTPHeaderField_];

    if (v22)
    {
      sub_24AFCEB78();

      v23 = sub_24AFCEBB8();
      v25 = v24;

      *&v45 = v23;
      *(&v45 + 1) = v25;
      *&v40 = 1852797802;
      *(&v40 + 1) = 0xE400000000000000;
      sub_24AFC77D4();
      LOBYTE(v23) = sub_24AFCEC88();

      if (v23)
      {
        v26 = (v35 + *(v34 + 24));
        v27 = *v26;
        v28 = v26[1];
        sub_24AFCEB98();
        v29 = sub_24AFCEB88();
        if (v30)
        {
          v31 = v30;
        }

        else
        {
          v29 = 0x4241535241504E55;
          v31 = 0xEA0000000000454CLL;
        }

        *&v45 = 2570;
        *(&v45 + 1) = 0xE200000000000000;
        v32 = v31;
      }

      else
      {
        *&v45 = 2570;
        *(&v45 + 1) = 0xE200000000000000;
        v40 = *(v35 + *(v34 + 24));
        sub_24AFC45BC();
        v29 = sub_24AFCEA58();
      }

      MEMORY[0x24C237380](v29, v32);

      MEMORY[0x24C237380](v45, *(&v45 + 1));
    }
  }

  else
  {
LABEL_5:
    if (v14 <= v10 + 1)
    {
      v16 = v10 + 1;
    }

    else
    {
      v16 = v14;
    }

    v17 = v16 - 1;
    while (1)
    {
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v15 >= v14)
      {
        v13 = 0;
        v44 = 0;
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        v40 = 0u;
        goto LABEL_13;
      }

      v13 = *(v9 + 64 + 8 * v15);
      ++v10;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

_OWORD *sub_24AFC77C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_24AFC77D4()
{
  result = qword_2810668A8[0];
  if (!qword_2810668A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810668A8);
  }

  return result;
}

id Response.statusCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for Response() + 20));

  return [v1 statusCode];
}

id Response.header.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Response() + 20));
  *a1 = v3;

  return v3;
}

uint64_t ResponseHeaders.subscript.getter()
{
  v1 = *v0;
  v2 = sub_24AFCEB68();
  v3 = [v1 valueForHTTPHeaderField_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24AFCEB78();

  return v4;
}

unint64_t sub_24AFC79A8()
{
  result = sub_24AFCEA98();
  if (v1 <= 0x3F)
  {
    result = sub_24AFC7A4C();
    if (v2 <= 0x3F)
    {
      result = sub_24AFCE9B8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_24AFC7A4C()
{
  result = qword_281066898;
  if (!qword_281066898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281066898);
  }

  return result;
}

uint64_t sub_24AFC7AA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AFC7AEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ServerInteractionController.__allocating_init(sessionConfiguration:bundleIdentifier:)(void *a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_24AFCBD58(a1, a2, a3);

  return v6;
}

uint64_t ServerInteractionController.init(sessionConfiguration:bundleIdentifier:)(void *a1, uint64_t a2, void *a3)
{
  v4 = sub_24AFCBD58(a1, a2, a3);

  return v4;
}

uint64_t ServerInteractionController.__allocating_init(bundleIdentifier:)(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() ephemeralSessionConfiguration];
  [v4 setURLCache_];
  [v4 setRequestCachePolicy_];
  [v4 setHTTPCookieStorage_];
  [v4 setHTTPCookieAcceptPolicy_];
  [v4 setURLCredentialStorage_];
  type metadata accessor for ServerInteractionController();
  swift_allocObject();
  v5 = sub_24AFCBD58(v4, a1, a2);

  return v5;
}

uint64_t sub_24AFC7CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_24AFC7CE4, v5, 0);
}

uint64_t sub_24AFC7CE4()
{
  v1 = *(v0 + 56);
  sub_24AFCE9B8();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = *(MEMORY[0x277D08900] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = type metadata accessor for Response();
  *v5 = v0;
  v5[1] = sub_24AFC7DE8;
  v7 = *(v0 + 16);

  return MEMORY[0x28215EAD8](v7, "ServerInteraction.send", 22, 2, &unk_24AFCF9B0, v2, v6);
}

uint64_t sub_24AFC7DE8()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x2822009F8](sub_24AFC7F24, v4, 0);
  }

  else
  {
    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_24AFC7F24()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_24AFC7F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = *MEMORY[0x277D85DE8];
  v7[49] = a6;
  v7[50] = a7;
  v7[47] = a4;
  v7[48] = a5;
  v7[45] = a2;
  v7[46] = a3;
  v7[44] = a1;
  v8 = type metadata accessor for Response();
  v7[51] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[52] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC70F8, &qword_24AFCFBE8) - 8) + 64) + 15;
  v7[53] = swift_task_alloc();
  v11 = type metadata accessor for MockEndpoint();
  v7[54] = v11;
  v12 = *(v11 - 8);
  v7[55] = v12;
  v13 = *(v12 + 64) + 15;
  v7[56] = swift_task_alloc();
  v14 = type metadata accessor for Request();
  v7[57] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v16 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24AFC8124, 0, 0);
}

uint64_t sub_24AFC8124()
{
  v52 = v0;
  v51[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 392);
  v48 = *(v0 + 400);
  v49 = *(v0 + 472);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 368);
  sub_24AFCD0C8(v4, v0 + 16, &qword_27EFC7000, &qword_24AFCF710);
  sub_24AFCD0C8(v2, v0 + 56, &qword_27EFC7040, &qword_24AFCF9E0);
  v5 = type metadata accessor for SessionDelegate();
  v6 = objc_allocWithZone(v5);
  sub_24AFCD0C8(v0 + 16, v6 + OBJC_IVAR____TtC23FindMyServerInteractionP33_C6B3C350C31B0B220EF4B9CE0C9359C115SessionDelegate_credential, &qword_27EFC7000, &qword_24AFCF710);
  sub_24AFCD0C8(v0 + 56, v6 + OBJC_IVAR____TtC23FindMyServerInteractionP33_C6B3C350C31B0B220EF4B9CE0C9359C115SessionDelegate_pinningCredential, &qword_27EFC7040, &qword_24AFCF9E0);
  *(v0 + 336) = v6;
  *(v0 + 344) = v5;
  v7 = objc_msgSendSuper2((v0 + 336), sel_init);
  *(v0 + 480) = v7;
  sub_24AFC3AE8(v0 + 56, &qword_27EFC7040, &qword_24AFCF9E0);
  sub_24AFC3AE8(v0 + 16, &qword_27EFC7000, &qword_24AFCF710);
  sub_24AFC47A0(v3, v0 + 96);
  sub_24AFC47A0(v1, v0 + 136);
  sub_24AFCD0C8(v4, v0 + 176, &qword_27EFC7000, &qword_24AFCF710);
  v8 = *(v48 + 120);
  *(v0 + 488) = v8;
  v9 = v8;
  sub_24AFC3B48((v0 + 96), (v0 + 136), v0 + 176, v8, v49);
  if (qword_281066A00 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 464);
  v10 = *(v0 + 472);
  v12 = sub_24AFCEB28();
  *(v0 + 496) = v12;
  *(v0 + 504) = __swift_project_value_buffer(v12, qword_281066BA0);
  sub_24AFC3A80(v10, v11, type metadata accessor for Request);
  v13 = sub_24AFCEB08();
  v14 = sub_24AFCEC68();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 464);
  if (v15)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v51[0] = v18;
    *v17 = 136315138;
    v19 = sub_24AFC36F0();
    v21 = v20;
    sub_24AFC4804(v16, type metadata accessor for Request);
    v22 = sub_24AFC46D4(v19, v21, v51);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_24AFC2000, v13, v14, "REQUEST: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x24C237990](v18, -1, -1);
    MEMORY[0x24C237990](v17, -1, -1);
  }

  else
  {

    sub_24AFC4804(v16, type metadata accessor for Request);
  }

  v23 = *(v0 + 432);
  v24 = *(v0 + 440);
  v25 = *(v0 + 424);
  sub_24AFC47A0(*(v0 + 384), v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC7100, &qword_24AFCFBF0);
  v26 = swift_dynamicCast();
  v27 = *(v24 + 56);
  if (v26)
  {
    v28 = *(v0 + 448);
    v30 = *(v0 + 424);
    v29 = *(v0 + 432);
    v27(v30, 0, 1, v29);
    sub_24AFCD198(v30, v28);
    v31 = (v28 + *(v29 + 20));
    v32 = v31[1];
    v50 = (*v31 + **v31);
    v33 = (*v31)[1];
    v34 = swift_task_alloc();
    *(v0 + 528) = v34;
    *v34 = v0;
    v34[1] = sub_24AFC8890;
    v35 = *(v0 + 392);
    v36 = *MEMORY[0x277D85DE8];

    return v50(v35);
  }

  else
  {
    v38 = *(v0 + 472);
    v39 = *(v0 + 456);
    v40 = *(v0 + 424);
    v41 = *(v0 + 400);
    v27(v40, 1, 1, *(v0 + 432));
    sub_24AFC3AE8(v40, &qword_27EFC70F8, &qword_24AFCFBE8);
    v42 = *(v41 + 112);
    v43 = *(v39 + 20);
    v44 = *(MEMORY[0x277CC9D18] + 4);
    v45 = v7;
    v46 = swift_task_alloc();
    *(v0 + 512) = v46;
    *v46 = v0;
    v46[1] = sub_24AFC8724;
    v47 = *MEMORY[0x277D85DE8];

    return MEMORY[0x28211ECF8](v38 + v43, v7);
  }
}

uint64_t sub_24AFC8724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *v4;
  v6 = *v4;
  v6[32] = v4;
  v6[33] = a1;
  v6[34] = a2;
  v6[35] = a3;
  v6[36] = v3;
  v7 = v5[64];
  v8 = *v4;
  v6[65] = v3;

  if (v3)
  {
    v9 = sub_24AFC955C;
  }

  else
  {
    v9 = sub_24AFC8F24;
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_24AFC8890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *v4;
  v6 = *v4;
  v6[37] = v4;
  v6[38] = a1;
  v6[39] = a2;
  v6[40] = a3;
  v6[41] = v3;
  v7 = v5[66];
  v12 = *v4;
  v6[67] = v3;

  if (v3)
  {
    v8 = sub_24AFC9450;
  }

  else
  {
    v8 = sub_24AFC89DC;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_24AFC89DC()
{
  v63 = v0;
  v62[1] = *MEMORY[0x277D85DE8];
  sub_24AFC4804(*(v0 + 448), type metadata accessor for MockEndpoint);
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 320);
  *(v0 + 544) = 1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 488);
    v61 = v3;
    if (v6)
    {
      v7 = *(v0 + 472);
      v8 = *(*(v0 + 456) + 20);
      v9 = v6;
      sub_24AFC7178(v2, v1);
      v10 = v3;
      v11 = sub_24AFCE9D8();
      [v9 handleResponse:v5 forRequest:v11 shouldRetry:v0 + 544];

      if (*(v0 + 544))
      {
        if (qword_281066A08 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 496), qword_281066BB8);
        v12 = sub_24AFCEB08();
        v13 = sub_24AFCEC68();
        v14 = os_log_type_enabled(v12, v13);
        v15 = *(v0 + 488);
        if (v14)
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_24AFC2000, v12, v13, "AKAppleIDSession told us to retry", v16, 2u);
          MEMORY[0x24C237990](v16, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      *(v0 + 544) = 0;
      sub_24AFC7178(v2, v1);
      v28 = v3;
    }

    v29 = v2;
    v30 = *(v0 + 504);
    v31 = *(v0 + 472);
    v32 = *(v0 + 408);
    v33 = *(v0 + 416);
    v35 = *(v0 + 352);
    v34 = *(v0 + 360);
    v36 = sub_24AFCEA98();
    (*(*(v36 - 8) + 16))(v35, v31, v36);
    *(v35 + v32[5]) = v5;
    v37 = (v35 + v32[6]);
    *v37 = v29;
    v37[1] = v1;
    *(v35 + v32[7]) = v34;
    sub_24AFC3A80(v35, v33, type metadata accessor for Response);

    v38 = sub_24AFCEB08();
    v39 = sub_24AFCEC68();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 472);
    v42 = *(v0 + 480);
    v43 = *(v0 + 416);
    if (v40)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v62[0] = v45;
      *v44 = 136315138;
      Response.description.getter();
      v59 = v42;
      v60 = v41;
      v47 = v46;
      v49 = v48;
      sub_24AFC4804(v43, type metadata accessor for Response);
      v50 = sub_24AFC46D4(v47, v49, v62);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_24AFC2000, v38, v39, "RESPONSE: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x24C237990](v45, -1, -1);
      MEMORY[0x24C237990](v44, -1, -1);

      sub_24AFC4680(v29, v1);
      v51 = v60;
    }

    else
    {

      sub_24AFC4680(v29, v1);
      sub_24AFC4804(v43, type metadata accessor for Response);
      v51 = v41;
    }

    sub_24AFC4804(v51, type metadata accessor for Request);
    v53 = *(v0 + 464);
    v52 = *(v0 + 472);
    v54 = *(v0 + 448);
    v56 = *(v0 + 416);
    v55 = *(v0 + 424);

    v26 = *(v0 + 8);
    v57 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v17 = v1;
    v19 = *(v0 + 472);
    v18 = *(v0 + 480);
    sub_24AFC5FA4();
    swift_allocError();
    *v20 = v3;
    *(v20 + 8) = 1;
    swift_willThrow();
    sub_24AFC4680(v2, v17);

    sub_24AFC4804(v19, type metadata accessor for Request);
    v22 = *(v0 + 464);
    v21 = *(v0 + 472);
    v23 = *(v0 + 448);
    v25 = *(v0 + 416);
    v24 = *(v0 + 424);

    v26 = *(v0 + 8);
    v27 = *MEMORY[0x277D85DE8];
  }

  return v26();
}

uint64_t sub_24AFC8F24()
{
  v63 = v0;
  v62[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 280);
  *(v0 + 544) = 1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 488);
    v61 = v3;
    if (v6)
    {
      v7 = *(v0 + 472);
      v8 = *(*(v0 + 456) + 20);
      v9 = v6;
      sub_24AFC7178(v2, v1);
      v10 = v3;
      v11 = sub_24AFCE9D8();
      [v9 handleResponse:v5 forRequest:v11 shouldRetry:v0 + 544];

      if (*(v0 + 544))
      {
        if (qword_281066A08 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 496), qword_281066BB8);
        v12 = sub_24AFCEB08();
        v13 = sub_24AFCEC68();
        v14 = os_log_type_enabled(v12, v13);
        v15 = *(v0 + 488);
        if (v14)
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_24AFC2000, v12, v13, "AKAppleIDSession told us to retry", v16, 2u);
          MEMORY[0x24C237990](v16, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      *(v0 + 544) = 0;
      sub_24AFC7178(v2, v1);
      v28 = v3;
    }

    v29 = v2;
    v30 = *(v0 + 504);
    v31 = *(v0 + 472);
    v32 = *(v0 + 408);
    v33 = *(v0 + 416);
    v35 = *(v0 + 352);
    v34 = *(v0 + 360);
    v36 = sub_24AFCEA98();
    (*(*(v36 - 8) + 16))(v35, v31, v36);
    *(v35 + v32[5]) = v5;
    v37 = (v35 + v32[6]);
    *v37 = v29;
    v37[1] = v1;
    *(v35 + v32[7]) = v34;
    sub_24AFC3A80(v35, v33, type metadata accessor for Response);

    v38 = sub_24AFCEB08();
    v39 = sub_24AFCEC68();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 472);
    v42 = *(v0 + 480);
    v43 = *(v0 + 416);
    if (v40)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v62[0] = v45;
      *v44 = 136315138;
      Response.description.getter();
      v59 = v42;
      v60 = v41;
      v47 = v46;
      v49 = v48;
      sub_24AFC4804(v43, type metadata accessor for Response);
      v50 = sub_24AFC46D4(v47, v49, v62);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_24AFC2000, v38, v39, "RESPONSE: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x24C237990](v45, -1, -1);
      MEMORY[0x24C237990](v44, -1, -1);

      sub_24AFC4680(v29, v1);
      v51 = v60;
    }

    else
    {

      sub_24AFC4680(v29, v1);
      sub_24AFC4804(v43, type metadata accessor for Response);
      v51 = v41;
    }

    sub_24AFC4804(v51, type metadata accessor for Request);
    v53 = *(v0 + 464);
    v52 = *(v0 + 472);
    v54 = *(v0 + 448);
    v56 = *(v0 + 416);
    v55 = *(v0 + 424);

    v26 = *(v0 + 8);
    v57 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v17 = v1;
    v19 = *(v0 + 472);
    v18 = *(v0 + 480);
    sub_24AFC5FA4();
    swift_allocError();
    *v20 = v3;
    *(v20 + 8) = 1;
    swift_willThrow();
    sub_24AFC4680(v2, v17);

    sub_24AFC4804(v19, type metadata accessor for Request);
    v22 = *(v0 + 464);
    v21 = *(v0 + 472);
    v23 = *(v0 + 448);
    v25 = *(v0 + 416);
    v24 = *(v0 + 424);

    v26 = *(v0 + 8);
    v27 = *MEMORY[0x277D85DE8];
  }

  return v26();
}

uint64_t sub_24AFC9450()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);

  sub_24AFC4804(v1, type metadata accessor for Request);
  sub_24AFC4804(v2, type metadata accessor for MockEndpoint);
  v3 = *(v0 + 536);
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);
  v6 = *(v0 + 448);
  v8 = *(v0 + 416);
  v7 = *(v0 + 424);

  v9 = *(v0 + 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

uint64_t sub_24AFC955C()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 472);

  sub_24AFC4804(v1, type metadata accessor for Request);
  v2 = *(v0 + 520);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 448);
  v7 = *(v0 + 416);
  v6 = *(v0 + 424);

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_24AFC9648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_24AFC9670, v5, 0);
}

uint64_t sub_24AFC9670()
{
  v1 = *(v0 + 56);
  sub_24AFCE9B8();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = *(MEMORY[0x277D08900] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = type metadata accessor for Response();
  *v5 = v0;
  v5[1] = sub_24AFC9774;
  v7 = *(v0 + 16);

  return MEMORY[0x28215EAD8](v7, "ServerInteraction.upload", 24, 2, &unk_24AFCF9C8, v2, v6);
}

uint64_t sub_24AFC9774()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x2822009F8](sub_24AFCD204, v4, 0);
  }

  else
  {
    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_24AFC98B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = *MEMORY[0x277D85DE8];
  v7[34] = a6;
  v7[35] = a7;
  v7[32] = a4;
  v7[33] = a5;
  v7[30] = a2;
  v7[31] = a3;
  v7[29] = a1;
  v8 = type metadata accessor for Response();
  v7[36] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[37] = swift_task_alloc();
  v10 = sub_24AFCEA98();
  v7[38] = v10;
  v11 = *(v10 - 8);
  v7[39] = v11;
  v12 = *(v11 + 64) + 15;
  v7[40] = swift_task_alloc();
  v13 = type metadata accessor for FileUploadRequest();
  v7[41] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v15 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24AFC9A14, 0, 0);
}

uint64_t sub_24AFC9A14()
{
  v40 = v0;
  v1 = v0;
  v39[1] = *MEMORY[0x277D85DE8];
  v37 = *(v0 + 280);
  v38 = *(v0 + 344);
  v2 = *(v0 + 256);
  v35 = *(v0 + 264);
  v36 = *(v0 + 272);
  v3 = *(v0 + 248);
  sub_24AFCD0C8(v3, v0 + 16, &qword_27EFC7000, &qword_24AFCF710);
  sub_24AFCD0C8(v2, v0 + 56, &qword_27EFC7040, &qword_24AFCF9E0);
  v4 = type metadata accessor for SessionDelegate();
  v5 = objc_allocWithZone(v4);
  sub_24AFCD0C8(v0 + 16, v5 + OBJC_IVAR____TtC23FindMyServerInteractionP33_C6B3C350C31B0B220EF4B9CE0C9359C115SessionDelegate_credential, &qword_27EFC7000, &qword_24AFCF710);
  sub_24AFCD0C8(v0 + 56, v5 + OBJC_IVAR____TtC23FindMyServerInteractionP33_C6B3C350C31B0B220EF4B9CE0C9359C115SessionDelegate_pinningCredential, &qword_27EFC7040, &qword_24AFCF9E0);
  *(v0 + 216) = v5;
  *(v0 + 224) = v4;
  v6 = objc_msgSendSuper2((v0 + 216), sel_init);
  *(v0 + 352) = v6;
  sub_24AFC3AE8(v0 + 56, &qword_27EFC7040, &qword_24AFCF9E0);
  sub_24AFC3AE8(v0 + 16, &qword_27EFC7000, &qword_24AFCF710);
  sub_24AFC47A0(v35, v0 + 96);
  sub_24AFC47A0(v36, v0 + 136);
  sub_24AFCD0C8(v3, v0 + 176, &qword_27EFC7000, &qword_24AFCF710);
  v7 = *(v37 + 120);
  *(v0 + 360) = v7;
  v8 = v7;
  sub_24AFC52DC((v1 + 96), (v1 + 136), v1 + 176, v7, v38);
  if (qword_281066A00 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 336);
  v9 = *(v1 + 344);
  v11 = sub_24AFCEB28();
  *(v1 + 368) = v11;
  *(v1 + 376) = __swift_project_value_buffer(v11, qword_281066BA0);
  sub_24AFC3A80(v9, v10, type metadata accessor for FileUploadRequest);
  v12 = sub_24AFCEB08();
  v13 = sub_24AFCEC68();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v1 + 336);
  if (v14)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v39[0] = v17;
    *v16 = 136315138;
    v18 = sub_24AFC5B54();
    v20 = v19;
    sub_24AFC4804(v15, type metadata accessor for FileUploadRequest);
    v21 = sub_24AFC46D4(v18, v20, v39);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_24AFC2000, v12, v13, "REQUEST: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x24C237990](v17, -1, -1);
    MEMORY[0x24C237990](v16, -1, -1);
  }

  else
  {

    sub_24AFC4804(v15, type metadata accessor for FileUploadRequest);
  }

  v22 = *(v1 + 344);
  v23 = *(v1 + 320);
  v24 = *(v1 + 272);
  v25 = *(*(v1 + 280) + 112);
  v26 = *(*(v1 + 328) + 20);
  *(v1 + 424) = v26;
  v27 = v24[3];
  v28 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v27);
  (*(v28 + 16))(v27, v28);
  v29 = *(MEMORY[0x277CC9D40] + 4);
  v30 = v6;
  v31 = swift_task_alloc();
  *(v1 + 384) = v31;
  *v31 = v1;
  v31[1] = sub_24AFC9ECC;
  v32 = *(v1 + 320);
  v33 = *MEMORY[0x277D85DE8];

  return MEMORY[0x28211ED20](v22 + v26, v32, v6);
}

uint64_t sub_24AFC9ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 384);
  v8 = *v4;
  v6[49] = a1;
  v6[50] = a2;
  v6[51] = a3;
  v6[52] = v3;

  v9 = v5[44];
  (*(v5[39] + 8))(v5[40], v5[38]);

  if (v3)
  {
    v10 = sub_24AFCA518;
  }

  else
  {
    v10 = sub_24AFCA08C;
  }

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_24AFCA08C()
{
  v56 = v0;
  v55[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 408);
  *(v0 + 428) = 1;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 360);
    if (v4)
    {
      v5 = *(v0 + 408);
      v6 = *(v0 + 424);
      v7 = *(v0 + 344);
      v8 = v4;
      v9 = v5;
      v10 = sub_24AFCE9D8();
      [v8 handleResponse:v3 forRequest:v10 shouldRetry:v0 + 428];

      if (*(v0 + 428))
      {
        if (qword_281066A08 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 368), qword_281066BB8);
        v11 = sub_24AFCEB08();
        v12 = sub_24AFCEC68();
        v13 = os_log_type_enabled(v11, v12);
        v14 = *(v0 + 360);
        if (v13)
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_24AFC2000, v11, v12, "AKAppleIDSession told us to retry", v15, 2u);
          MEMORY[0x24C237990](v15, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      *(v0 + 428) = 0;
    }

    v29 = *(v0 + 392);
    v28 = *(v0 + 400);
    v30 = *(v0 + 376);
    v32 = *(v0 + 288);
    v31 = *(v0 + 296);
    v34 = *(v0 + 232);
    v33 = *(v0 + 240);
    (*(*(v0 + 312) + 16))(v34, *(v0 + 344), *(v0 + 304));
    *(v34 + v32[5]) = v3;
    v35 = (v34 + v32[6]);
    *v35 = v29;
    v35[1] = v28;
    *(v34 + v32[7]) = v33;
    sub_24AFC3A80(v34, v31, type metadata accessor for Response);

    v36 = sub_24AFCEB08();
    v37 = sub_24AFCEC68();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 344);
    v40 = *(v0 + 352);
    v41 = *(v0 + 296);
    if (v38)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v55[0] = v43;
      *v42 = 136315138;
      Response.description.getter();
      v45 = v44;
      v47 = v46;
      sub_24AFC4804(v41, type metadata accessor for Response);
      v48 = sub_24AFC46D4(v45, v47, v55);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_24AFC2000, v36, v37, "RESPONSE: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x24C237990](v43, -1, -1);
      MEMORY[0x24C237990](v42, -1, -1);
    }

    else
    {

      sub_24AFC4804(v41, type metadata accessor for Response);
    }

    sub_24AFC4804(v39, type metadata accessor for FileUploadRequest);
    v50 = *(v0 + 336);
    v49 = *(v0 + 344);
    v51 = *(v0 + 320);
    v52 = *(v0 + 296);

    v26 = *(v0 + 8);
    v53 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v16 = *(v0 + 400);
    v17 = *(v0 + 408);
    v18 = *(v0 + 392);
    v19 = *(v0 + 344);
    v20 = *(v0 + 352);
    sub_24AFC5FA4();
    swift_allocError();
    *v21 = v17;
    *(v21 + 8) = 1;
    swift_willThrow();
    sub_24AFC4680(v18, v16);

    sub_24AFC4804(v19, type metadata accessor for FileUploadRequest);
    v23 = *(v0 + 336);
    v22 = *(v0 + 344);
    v24 = *(v0 + 320);
    v25 = *(v0 + 296);

    v26 = *(v0 + 8);
    v27 = *MEMORY[0x277D85DE8];
  }

  return v26();
}

uint64_t sub_24AFCA518()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 344);

  sub_24AFC4804(v1, type metadata accessor for FileUploadRequest);
  v2 = *(v0 + 416);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 320);
  v6 = *(v0 + 296);

  v7 = *(v0 + 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t ServerInteractionController.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t ServerInteractionController.send(endpoint:content:credential:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_24AFCA6AC, v4, 0);
}

uint64_t sub_24AFCA6AC()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  sub_24AFCE9B8();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = *(v0 + 64);
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 16;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = *(MEMORY[0x277D08900] + 4);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = type metadata accessor for Response();
  *v6 = v0;
  v6[1] = sub_24AFCA7CC;
  v8 = *(v0 + 56);

  return MEMORY[0x28215EAD8](v8, "ServerInteraction.send", 22, 2, &unk_24AFCF9D8, v3, v7);
}

uint64_t sub_24AFCA7CC()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[11];

    return MEMORY[0x2822009F8](sub_24AFCA920, v4, 0);
  }

  else
  {
    v5 = v3[12];

    sub_24AFC3AE8((v3 + 2), &qword_27EFC7040, &qword_24AFCF9E0);
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_24AFCA920()
{
  v1 = v0[12];

  sub_24AFC3AE8((v0 + 2), &qword_27EFC7040, &qword_24AFCF9E0);
  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t ServerInteractionController.upload(endpoint:content:credential:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_24AFCA9C4, v4, 0);
}

uint64_t sub_24AFCA9C4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  sub_24AFCE9B8();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = *(v0 + 64);
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 16;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = *(MEMORY[0x277D08900] + 4);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = type metadata accessor for Response();
  *v6 = v0;
  v6[1] = sub_24AFCAAE4;
  v8 = *(v0 + 56);

  return MEMORY[0x28215EAD8](v8, "ServerInteraction.upload", 24, 2, &unk_24AFCF9F0, v3, v7);
}

uint64_t sub_24AFCAAE4()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[11];

    return MEMORY[0x2822009F8](sub_24AFCD1FC, v4, 0);
  }

  else
  {
    v5 = v3[12];

    sub_24AFC3AE8((v3 + 2), &qword_27EFC7040, &qword_24AFCF9E0);
    v6 = v3[1];

    return v6();
  }
}

uint64_t ServerInteractionController.description.getter()
{
  v0 = type metadata accessor for ServerInteractionController();
  v1 = sub_24AFCC0BC();
  v2 = sub_24AFCED18();
  MEMORY[0x24C237380](v2);

  MEMORY[0x24C237380](8250, 0xE200000000000000);
  v3 = MEMORY[0x24C2374C0](v0, v1);
  MEMORY[0x24C237380](v3);

  MEMORY[0x24C237380](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AFCACFC(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  v4 = type metadata accessor for ServerInteractionController();
  v5 = sub_24AFCED18();
  MEMORY[0x24C237380](v5);

  MEMORY[0x24C237380](8250, 0xE200000000000000);
  v6 = MEMORY[0x24C2374C0](v4, a2);
  MEMORY[0x24C237380](v6);

  MEMORY[0x24C237380](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AFCADB8(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_24AFCAE88;

  return sub_24AFCC854(v9);
}

uint64_t sub_24AFCAE88(uint64_t a1, void *a2)
{
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v12 = *v2;

  (v6)[2](v6, a1, a2);
  _Block_release(v6);

  v10 = *(v12 + 8);

  return v10();
}

id sub_24AFCB044()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24AFCB0DC()
{
  v0 = sub_24AFCEB28();
  __swift_allocate_value_buffer(v0, qword_281066BB8);
  __swift_project_value_buffer(v0, qword_281066BB8);
  return sub_24AFCEB18();
}

uint64_t sub_24AFCB158()
{
  v0 = sub_24AFCEB28();
  __swift_allocate_value_buffer(v0, qword_281066BA0);
  __swift_project_value_buffer(v0, qword_281066BA0);
  return sub_24AFCEB18();
}

uint64_t sub_24AFCB1D8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24AFCD200;

  return v7();
}

uint64_t sub_24AFCB2C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_24AFCB3A8;

  return v8();
}

uint64_t sub_24AFCB3A8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AFCB49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC70D0, &qword_24AFCFB78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_24AFCD0C8(a3, v24 - v10, &unk_27EFC70D0, &qword_24AFCFB78);
  v12 = sub_24AFCEC28();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24AFC3AE8(v11, &unk_27EFC70D0, &qword_24AFCFB78);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_24AFCEC18();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_24AFCEC08();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_24AFCEBC8() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_24AFC3AE8(a3, &unk_27EFC70D0, &qword_24AFCFB78);

    return v22;
  }

LABEL_8:
  sub_24AFC3AE8(a3, &unk_27EFC70D0, &qword_24AFCFB78);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24AFCB798(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFCB890;

  return v7(a1);
}

uint64_t sub_24AFCB890()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AFCB988(uint64_t a1, unint64_t a2)
{
  v4 = sub_24AFCB9D4(a1, a2);
  sub_24AFCBB04(&unk_285E428F8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24AFCB9D4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24AFCBBF0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24AFCECE8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24AFCEBF8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AFCBBF0(v10, 0);
        result = sub_24AFCECC8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24AFCBB04(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_24AFCBC64(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24AFCBBF0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC70F0, &qword_24AFCFBE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AFCBC64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC70F0, &qword_24AFCFBE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_24AFCBD58(uint64_t a1, uint64_t a2, id a3)
{
  swift_defaultActor_initialize();
  if (a3)
  {
    v6 = objc_allocWithZone(MEMORY[0x277CF0188]);
    v7 = sub_24AFCEB68();

    a3 = [v6 initWithIdentifier_];
  }

  *(v3 + 120) = a3;
  *(v3 + 112) = [objc_opt_self() sessionWithConfiguration_];
  return v3;
}

uint64_t sub_24AFCBE34(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24AFCD200;

  return sub_24AFC7F88(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_24AFCBF0C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24AFCD200;

  return sub_24AFC98B0(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_24AFCBFE4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24AFCB3A8;

  return sub_24AFC7F88(a1, a2, v6, v7, v8, v9, v10);
}

unint64_t sub_24AFCC0BC()
{
  result = qword_27EFC7048;
  if (!qword_27EFC7048)
  {
    type metadata accessor for ServerInteractionController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7048);
  }

  return result;
}

uint64_t dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 112);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_24AFCD200;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ServerInteractionController.upload(endpoint:content:credential:pinningCredential:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 120);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_24AFCD200;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t get_enum_tag_for_layout_string_23FindMyServerInteraction0cD10ControllerC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24AFCC438(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24AFCC480(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_24AFCC4C4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_24AFCC510()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFCB3A8;

  return sub_24AFCADB8(v2, v3, v5, v4);
}

uint64_t sub_24AFCC5D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFCD200;

  return sub_24AFCB1D8(v2, v3, v5);
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AFCC6D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFCD200;

  return sub_24AFCB2C0(a1, v4, v5, v7);
}

uint64_t sub_24AFCC79C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AFCD200;

  return sub_24AFCB798(a1, v5);
}

uint64_t sub_24AFCC854(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x2822009F8](sub_24AFCC874, 0, 0);
}

uint64_t sub_24AFCC874()
{
  if (qword_281066A08 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = sub_24AFCEB28();
  *(v0 + 192) = __swift_project_value_buffer(v2, qword_281066BB8);
  v3 = v1;
  v4 = sub_24AFCEB08();
  v5 = sub_24AFCEC68();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_24AFC2000, v4, v5, "received challenge: %@", v7, 0xCu);
    sub_24AFC3AE8(v8, &unk_27EFC70E0, &qword_24AFCFBD8);
    MEMORY[0x24C237990](v8, -1, -1);
    MEMORY[0x24C237990](v7, -1, -1);
  }

  v10 = *(v0 + 176);

  v11 = [v10 protectionSpace];
  *(v0 + 200) = v11;
  v12 = [v11 authenticationMethod];
  v13 = sub_24AFCEB78();
  v15 = v14;

  v16 = *MEMORY[0x277CCA720];
  if (v13 == sub_24AFCEB78() && v15 == v17)
  {
  }

  else
  {
    v18 = sub_24AFCED48();

    if ((v18 & 1) == 0)
    {
      sub_24AFCD0C8(*(v0 + 184) + OBJC_IVAR____TtC23FindMyServerInteractionP33_C6B3C350C31B0B220EF4B9CE0C9359C115SessionDelegate_credential, v0 + 16, &qword_27EFC7000, &qword_24AFCF710);
      v19 = *(v0 + 40);
      if (v19)
      {
        v32 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        v19 = RequestCredential.urlCredential.getter(v19, v32);

        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        goto LABEL_22;
      }

      v34 = v0 + 16;
LABEL_21:
      sub_24AFC3AE8(v34, &qword_27EFC7000, &qword_24AFCF710);
      goto LABEL_22;
    }
  }

  sub_24AFCD0C8(*(v0 + 184) + OBJC_IVAR____TtC23FindMyServerInteractionP33_C6B3C350C31B0B220EF4B9CE0C9359C115SessionDelegate_pinningCredential, v0 + 96, &qword_27EFC7040, &qword_24AFCF9E0);
  if (!*(v0 + 120))
  {
    v30 = *(v0 + 184);
    sub_24AFC3AE8(v0 + 96, &qword_27EFC7040, &qword_24AFCF9E0);
    sub_24AFCD0C8(v30 + OBJC_IVAR____TtC23FindMyServerInteractionP33_C6B3C350C31B0B220EF4B9CE0C9359C115SessionDelegate_credential, v0 + 136, &qword_27EFC7000, &qword_24AFCF710);
    v19 = *(v0 + 160);
    if (v19)
    {
      v31 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
      v19 = RequestCredential.urlCredential.getter(v19, v31);

      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
LABEL_22:
      v33 = 0;
      goto LABEL_23;
    }

    v34 = v0 + 136;
    goto LABEL_21;
  }

  sub_24AFC60CC((v0 + 96), v0 + 56);
  v19 = [v11 serverTrust];
  *(v0 + 208) = v19;
  if (v19)
  {
    v20 = *(v0 + 80);
    v21 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v20);
    v22 = [v11 host];
    v23 = sub_24AFCEB78();
    v25 = v24;

    *(v0 + 216) = v25;
    v26 = *(v21 + 8);
    v36 = (v26 + *v26);
    v27 = v26[1];
    v28 = swift_task_alloc();
    *(v0 + 224) = v28;
    *v28 = v0;
    v28[1] = sub_24AFCCD8C;

    return v36(v23, v25, v19, v20, v21);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v33 = 2;
LABEL_23:
  v35 = *(v0 + 8);

  return v35(v33, v19);
}

uint64_t sub_24AFCCD8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = sub_24AFCCF34;
  }

  else
  {
    v8 = *(v4 + 216);

    *(v4 + 240) = a1;
    v7 = sub_24AFCCEBC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24AFCCEBC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v3 = *(v0 + 8);

  return v3(0, v1);
}

uint64_t sub_24AFCCF34()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];

  v4 = v1;
  v5 = sub_24AFCEB08();
  v6 = sub_24AFCEC68();
  MEMORY[0x24C237850](v1);
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[29];
  v9 = v0[25];
  v10 = v0[26];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_24AFC2000, v5, v6, "Trust evaluation returned error: %@", v11, 0xCu);
    sub_24AFC3AE8(v12, &unk_27EFC70E0, &qword_24AFCFBD8);
    MEMORY[0x24C237990](v12, -1, -1);
    MEMORY[0x24C237990](v11, -1, -1);

    MEMORY[0x24C237850](v8);
  }

  else
  {

    MEMORY[0x24C237850](v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v15 = v0[1];

  return v15(2, 0);
}

uint64_t sub_24AFCD0C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_24AFCD198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MockEndpoint();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MockEndpoint.urlComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AFCEA88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MockEndpoint.init(mockResponseBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC71D0, &qword_24AFCFC10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  sub_24AFCEA78();
  v10 = sub_24AFCEA88();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(a3, v9, v10);
    result = type metadata accessor for MockEndpoint();
    v13 = (a3 + *(result + 20));
    *v13 = a1;
    v13[1] = a2;
  }

  return result;
}

uint64_t type metadata accessor for MockEndpoint()
{
  result = qword_281066AA0;
  if (!qword_281066AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AFCD408@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AFCEA88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_24AFCD470()
{
  result = sub_24AFCEA88();
  if (v1 <= 0x3F)
  {
    result = sub_24AFCD4F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24AFCD4F4()
{
  result = qword_281066890;
  if (!qword_281066890)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_281066890);
  }

  return result;
}

uint64_t sub_24AFCD544()
{
  v0 = sub_24AFCDE58(&unk_285E42898);
  result = swift_arrayDestroy();
  off_2810669F8 = v0;
  return result;
}

uint64_t sub_24AFCD594(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24AFCEDA8();
  sub_24AFCEBD8();
  v9 = sub_24AFCEDC8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_24AFCED48() & 1) != 0)
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

    sub_24AFCD944(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24AFCD6E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC71D8, &qword_24AFCFC78);
  result = sub_24AFCECB8();
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
      sub_24AFCEDA8();
      sub_24AFCEBD8();
      result = sub_24AFCEDC8();
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

uint64_t sub_24AFCD944(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_24AFCD6E4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AFCDAC4();
      goto LABEL_16;
    }

    sub_24AFCDC20(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_24AFCEDA8();
  sub_24AFCEBD8();
  result = sub_24AFCEDC8();
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

      result = sub_24AFCED48();
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
  result = sub_24AFCED58();
  __break(1u);
  return result;
}

void *sub_24AFCDAC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC71D8, &qword_24AFCFC78);
  v2 = *v0;
  v3 = sub_24AFCECA8();
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

uint64_t sub_24AFCDC20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC71D8, &qword_24AFCFC78);
  result = sub_24AFCECB8();
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
      sub_24AFCEDA8();

      sub_24AFCEBD8();
      result = sub_24AFCEDC8();
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

uint64_t sub_24AFCDE58(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C2373D0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24AFCD594(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_24AFCDF18()
{
  sub_24AFCEA98();
  if (v0 <= 0x3F)
  {
    sub_24AFCEA38();
    if (v1 <= 0x3F)
    {
      sub_24AFC6260(319, qword_281066948);
      if (v2 <= 0x3F)
      {
        sub_24AFC6260(319, &qword_281066A10);
        if (v3 <= 0x3F)
        {
          sub_24AFC62BC();
          if (v4 <= 0x3F)
          {
            sub_24AFC6368();
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

id RequestCredential.urlCredential.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  (*(a2 + 16))(a1, a2);
  v4 = objc_allocWithZone(MEMORY[0x277CCACF0]);
  v5 = sub_24AFCEB68();

  v6 = sub_24AFCEB68();

  v7 = [v4 initWithUser:v5 password:v6 persistence:0];

  return v7;
}

unint64_t sub_24AFCE114()
{
  _s12FindMyCommon18SearchpartyAccountV0aB17ServerInteractionE8usernameSSvg_0();
  MEMORY[0x24C237380](58, 0xE100000000000000);
  MyCommon18SearchpartyAccountV0aB17ServerInteractionE8passwordSSvg_0 = _s12FindMyCommon18SearchpartyAccountV0aB17ServerInteractionE8passwordSSvg_0();
  MEMORY[0x24C237380](MyCommon18SearchpartyAccountV0aB17ServerInteractionE8passwordSSvg_0);

  v1 = sub_24AFCEB58();
  v3 = v2;

  v4 = sub_24AFCEAA8();
  v6 = v5;
  sub_24AFC4680(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC71E0, &qword_24AFCFD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AFCFD00;
  strcpy((inited + 32), "Authorization");
  *(inited + 46) = -4864;
  MEMORY[0x24C237380](v4, v6);

  *(inited + 48) = 0x206369736142;
  *(inited + 56) = 0xE600000000000000;
  v8 = sub_24AFC6BDC(inited);
  swift_setDeallocating();
  sub_24AFCE624(inited + 32);
  return v8;
}

unint64_t sub_24AFCE26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x24C237380](58, 0xE100000000000000);
  MEMORY[0x24C237380](a3, a4);
  v6 = sub_24AFCEB58();
  v8 = v7;

  v9 = sub_24AFCEAA8();
  v11 = v10;
  sub_24AFC4680(v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC71E0, &qword_24AFCFD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AFCFD00;
  strcpy((inited + 32), "Authorization");
  *(inited + 46) = -4864;
  MEMORY[0x24C237380](v9, v11);

  *(inited + 48) = 0x206369736142;
  *(inited + 56) = 0xE600000000000000;
  v13 = sub_24AFC6BDC(inited);
  swift_setDeallocating();
  sub_24AFCE624(inited + 32);
  return v13;
}

unint64_t RequestCredential.authHeaders.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  MEMORY[0x24C237380](58, 0xE100000000000000);
  v4 = (*(a2 + 16))(a1, a2);
  MEMORY[0x24C237380](v4);

  v5 = sub_24AFCEB58();
  v7 = v6;

  v8 = sub_24AFCEAA8();
  v10 = v9;
  sub_24AFC4680(v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC71E0, &qword_24AFCFD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AFCFD00;
  strcpy((inited + 32), "Authorization");
  *(inited + 46) = -4864;
  MEMORY[0x24C237380](v8, v10);

  *(inited + 48) = 0x206369736142;
  *(inited + 56) = 0xE600000000000000;
  v12 = sub_24AFC6BDC(inited);
  swift_setDeallocating();
  sub_24AFCE624(inited + 32);
  return v12;
}

uint64_t BasicCredential.username.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BasicCredential.password.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

FindMyServerInteraction::BasicCredential __swiftcall BasicCredential.init(username:password:)(Swift::String username, Swift::String password)
{
  *v2 = username;
  v2[1] = password;
  result.password = password;
  result.username = username;
  return result;
}

uint64_t sub_24AFCE5B8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_24AFCE5E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_24AFCE624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC71E8, &qword_24AFCFD18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AFCE6D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24AFCE71C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of PinningCredential.urlCredential(host:serverTrust:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_24AFCE8AC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_24AFCE8AC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}