uint64_t sub_2584F01F0(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_2584F0138(a1, &a1[a2]);
  }

  v3 = sub_25853288C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_25853284C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_2585328FC();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2584F02A0()
{
  v5 = *MEMORY[0x277D85DE8];
  MEMORY[0x259C81500](91, 0xE100000000000000);
  sub_258532CFC();
  sub_258533C8C();
  MEMORY[0x259C81500](37, 0xE100000000000000);
  MEMORY[0x259C81500](813132908, 0xE400000000000000);
  MEMORY[0x259C81500](14941, 0xE200000000000000);
  v0 = sub_258533DFC();
  MEMORY[0x259C81500](v0);

  sub_25853348C();

  v1 = StringToSockAddr();

  if (v1)
  {
    sub_2584F00E4();
    swift_allocError();
    *v2 = 6;
    result = swift_willThrow();
  }

  else
  {
    result = nw_endpoint_create_address_with_ethernet();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2584F0478()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2584F04B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_2584F0588(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  sub_2584EFA6C(a1);
}

uint64_t sub_2584F0608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for NetworkBackedMediaConnectionPrerequisitesProvider.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkBackedMediaConnectionPrerequisitesProvider.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2584F07A0(uint64_t a1)
{
  result = sub_2584F00E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584F07CC()
{
  result = qword_27F9313D8;
  if (!qword_27F9313D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9313D8);
  }

  return result;
}

uint64_t sub_2584F0874()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2584F08A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_25853285C();
    if (v10)
    {
      v11 = sub_25853287C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_25853286C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_25853285C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_25853287C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_25853286C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2584F0AD4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2584F0C64(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_258467E20(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2584F08A4(v14, a3, a4, &v13);
  v10 = v4;
  sub_258467E20(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_2584F0C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_25853285C();
  v11 = result;
  if (result)
  {
    result = sub_25853287C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_25853286C();
  sub_2584F08A4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2584F0D1C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2584A7B8C(a3, a4);
          return sub_2584F0AD4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2584F0E84(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DD8, &unk_25853CEC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for NetworkBackedNetworkInterface();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v34 - v15;
  v17 = sub_258532AAC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_258532CFC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22, a1, v17);
  if ((*(v18 + 88))(v22, v17) != *MEMORY[0x277CD8AE0])
  {
    (*(v18 + 8))(v22, v17);
LABEL_9:
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_258533C8C();
    return v38;
  }

  (*(v18 + 96))(v22, v17);
  (*(v24 + 32))(v28, v22, v23);
  if ((sub_258532CBC() & 1) == 0)
  {
    (*(v24 + 8))(v28, v23);
    goto LABEL_9;
  }

  sub_258532CEC();
  v29 = sub_258532D8C();
  if ((*(*(v29 - 8) + 48))(v16, 1, v29) != 1)
  {
    (*(v24 + 8))(v28, v23);
    sub_258465168(v16, &qword_27F930620, &unk_25853E7D0);
    goto LABEL_9;
  }

  sub_258465168(v16, &qword_27F930620, &unk_25853E7D0);
  sub_2584F1A9C(v37, v7);
  if ((*(v36 + 48))(v7, 1, v8) == 1)
  {
    (*(v24 + 8))(v28, v23);
    sub_258465168(v7, &qword_27F930DD8, &unk_25853CEC0);
    return 0;
  }

  else
  {
    v31 = v35;
    sub_258465104(v7, v35);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_258533C8C();
    MEMORY[0x259C81500](37, 0xE100000000000000);
    v32 = sub_258532D5C();
    MEMORY[0x259C81500](v32);

    v33 = v38;
    sub_2584D62A0(v31);
    (*(v24 + 8))(v28, v23);
    return v33;
  }
}

uint64_t sub_2584F1368(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DD8, &unk_25853CEC0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v63 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v67 = &v61 - v9;
  v10 = sub_258532CFC();
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258532C8C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_258532AAC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v66 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v61 - v28;
  v30 = *(v22 + 16);
  v70 = a1;
  v65 = v30;
  (v30)(&v61 - v28, a1, v21);
  v31 = (*(v22 + 88))(v29, v21);
  if (v31 == *MEMORY[0x277CD8AD8])
  {
    (*(v22 + 96))(v29, v21);
    (*(v16 + 32))(v20, v29, v15);
    v68 = sub_258532C7C();
    v69 = v32;
    (*(v16 + 8))(v20, v15);
  }

  else
  {
    if (v31 != *MEMORY[0x277CD8AE0])
    {
      sub_258465168(v71, &qword_27F930DD8, &unk_25853CEC0);
      v55 = *(v22 + 8);
      v55(v70, v21);
      v55(v29, v21);
      return 0;
    }

    (*(v22 + 96))(v29, v21);
    v33 = v64;
    (*(v64 + 32))(v14, v29, v10);
    v68 = sub_258532CDC();
    v69 = v34;
    (*(v33 + 8))(v14, v10);
  }

  v36 = v70;
  v35 = v71;
  sub_2584F0E84(v70, v71);
  if (v37)
  {
    sub_258465168(v35, &qword_27F930DD8, &unk_25853CEC0);
    (*(v22 + 8))(v36, v21);
    return v68;
  }

  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v39 = sub_258532A4C();
  __swift_project_value_buffer(v39, qword_27F93CFD8);
  v40 = v66;
  (v65)(v66, v36, v21);
  v41 = v67;
  sub_2584F1A9C(v35, v67);
  v42 = sub_258532A2C();
  v43 = sub_2585338EC();
  if (os_log_type_enabled(v42, v43))
  {
    LODWORD(v64) = v43;
    v65 = v42;
    v44 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v72 = v62;
    *v44 = 136315394;
    v45 = sub_258532A9C();
    v47 = v46;
    v48 = v41;
    v49 = v21;
    v66 = *(v22 + 8);
    (v66)(v40, v21);
    v50 = sub_2584713B0(v45, v47, &v72);

    *(v44 + 4) = v50;
    *(v44 + 12) = 2080;
    v51 = v63;
    sub_2584F1A9C(v48, v63);
    v52 = type metadata accessor for NetworkBackedNetworkInterface();
    if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
    {
      sub_258465168(v51, &qword_27F930DD8, &unk_25853CEC0);
      v53 = 0xE300000000000000;
      v54 = 7104878;
    }

    else
    {
      v54 = sub_258532D5C();
      v53 = v57;
      sub_2584D62A0(v51);
    }

    sub_258465168(v67, &qword_27F930DD8, &unk_25853CEC0);
    v58 = sub_2584713B0(v54, v53, &v72);

    *(v44 + 14) = v58;
    v59 = v65;
    _os_log_impl(&dword_25845E000, v65, v64, "Unable to create NetworkBackedNetworkAddress, host: %s, interface: %s", v44, 0x16u);
    v60 = v62;
    swift_arrayDestroy();
    MEMORY[0x259C82900](v60, -1, -1);
    MEMORY[0x259C82900](v44, -1, -1);
    sub_258467E20(v68, v69);

    sub_258465168(v35, &qword_27F930DD8, &unk_25853CEC0);
    (v66)(v36, v49);
  }

  else
  {
    sub_258467E20(v68, v69);

    sub_258465168(v35, &qword_27F930DD8, &unk_25853CEC0);
    v56 = *(v22 + 8);
    v56(v36, v21);
    sub_258465168(v41, &qword_27F930DD8, &unk_25853CEC0);
    v56(v40, v21);
  }

  return 0;
}

uint64_t sub_2584F1A9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DD8, &unk_25853CEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584F1B0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2584F1B54(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2584F1BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_258532D8C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2584F1C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_258532D8C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for NetworkBackedNetworkInterface()
{
  result = qword_27F9313E0;
  if (!qword_27F9313E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2584F1CF8()
{
  result = sub_258532D8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2584F1D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25853321C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2584F1E4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25853321C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for NetworkBackedNetworkPath()
{
  result = qword_27F9313F8;
  if (!qword_27F9313F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2584F1F54()
{
  result = sub_25853321C();
  if (v1 <= 0x3F)
  {
    result = sub_2584F2020(319, &qword_27F931408);
    if (v2 <= 0x3F)
    {
      result = sub_2584F2020(319, &unk_27F931410);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2584F2020(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2584F207C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v251 = sub_2585331FC();
  v250 = *(v251 - 8);
  v4 = *(v250 + 64);
  v6 = MEMORY[0x28223BE20](v251, v5);
  v249 = v227 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v248 = v227 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DD8, &unk_25853CEC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v258 = v227 - v13;
  v269 = sub_258532B0C();
  v271 = *(v269 - 8);
  v14 = *(v271 + 64);
  v16 = MEMORY[0x28223BE20](v269, v15);
  v253 = v227 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v260 = v227 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931440, &qword_2585380E0);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20 - 8, v22);
  v264 = v227 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v263 = v227 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v254 = v227 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v33 = v227 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DE0, &unk_25853BD80);
  v35 = *(*(v34 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v34 - 8, v36);
  v255 = v227 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v39);
  v41 = v227 - v40;
  v42 = sub_258532AAC();
  v265 = *(v42 - 8);
  v266 = v42;
  v43 = *(v265 + 64);
  v45 = MEMORY[0x28223BE20](v42, v44);
  v252 = v227 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v256 = v227 - v49;
  MEMORY[0x28223BE20](v48, v50);
  v259 = v227 - v51;
  v257 = type metadata accessor for NetworkBackedNetworkInterface();
  v261 = *(v257 - 8);
  v52 = *(v261 + 64);
  v54 = MEMORY[0x28223BE20](v257, v53);
  v262 = v227 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v54, v56);
  v59 = v227 - v58;
  MEMORY[0x28223BE20](v57, v60);
  v268 = v227 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931450, &qword_25853C1E0);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8, v64);
  v66 = v227 - v65;
  v67 = sub_25853321C();
  v68 = *(v67 - 8);
  v69 = *(v68 + 64);
  v71 = MEMORY[0x28223BE20](v67, v70);
  v272 = v227 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x28223BE20](v71, v73);
  v273 = (v227 - v75);
  v77 = MEMORY[0x28223BE20](v74, v76);
  v270 = v227 - v78;
  v80 = MEMORY[0x28223BE20](v77, v79);
  v267 = v227 - v81;
  MEMORY[0x28223BE20](v80, v82);
  v84 = v227 - v83;
  v85 = type metadata accessor for NetworkBackedNetworkPath();
  v274 = *(v85 - 8);
  v275 = v85;
  v86 = *(v274 + 64);
  MEMORY[0x28223BE20](v85, v87);
  v89 = v227 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2584F3E9C(a1, v66);
  if ((*(v68 + 48))(v66, 1, v67) == 1)
  {
    v90 = a2;
    sub_258465168(v66, &qword_27F931450, &qword_25853C1E0);
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v91 = sub_258532A4C();
    __swift_project_value_buffer(v91, qword_27F93CFD8);
    v92 = sub_258532A2C();
    v93 = sub_2585338EC();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_25845E000, v92, v93, "Unable to create NetworkBackedNetworkPath with nil path", v94, 2u);
      MEMORY[0x259C82900](v94, -1, -1);
    }

    sub_258465168(a1, &qword_27F931450, &qword_25853C1E0);
    return (*(v274 + 56))(v90, 1, 1, v275);
  }

  v246 = a1;
  v247 = a2;
  (*(v68 + 32))(v84, v66, v67);
  v95 = *(v68 + 16);
  v245 = v89;
  v244 = v95;
  v95();
  sub_2585331DC();
  v96 = nw_path_copy_connected_interface();
  swift_unknownObjectRelease();
  v97 = v96;
  v98 = v272;
  v99 = v68;
  if (!v97)
  {
LABEL_17:
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v109 = sub_258532A4C();
    __swift_project_value_buffer(v109, qword_27F93CFD8);
    v110 = v267;
    v111 = v244;
    (v244)(v267, v84, v67);
    v112 = v270;
    (v111)(v270, v84, v67);
    v113 = v273;
    (v111)(v273, v84, v67);
    (v111)(v98, v84, v67);
    v114 = sub_258532A2C();
    v115 = sub_2585338CC();
    if (!os_log_type_enabled(v114, v115))
    {

      sub_258465168(v246, &qword_27F931450, &qword_25853C1E0);
      v127 = *(v99 + 8);
      v127(v98, v67);
      v127(v113, v67);
      v127(v112, v67);
      v127(v110, v67);
      v127(v84, v67);
      v90 = v247;
      v127(v245, v67);
      return (*(v274 + 56))(v90, 1, 1, v275);
    }

    LODWORD(v265) = v115;
    v243 = v84;
    v266 = 7104878;
    v116 = swift_slowAlloc();
    v261 = swift_slowAlloc();
    v276 = v261;
    *v116 = 136315906;
    v117 = sub_2585331CC();
    v119 = v118;
    v120 = *(v99 + 8);
    v268 = v99 + 8;
    v120(v110, v67);
    v121 = sub_2584713B0(v117, v119, &v276);

    *(v116 + 4) = v121;
    *(v116 + 12) = 2080;
    sub_2585331DC();
    v122 = nw_path_copy_connected_interface();
    swift_unknownObjectRelease();
    if (v122)
    {
      v123 = v262;
      sub_258532DAC();
      v124 = sub_258532D5C();
      v126 = v125;
      sub_2584F3FB4(v123, type metadata accessor for NetworkBackedNetworkInterface);
    }

    else
    {
      v126 = 0xE300000000000000;
      v124 = 7104878;
    }

    v120(v270, v67);
    v128 = sub_2584713B0(v124, v126, &v276);

    *(v116 + 14) = v128;
    *(v116 + 22) = 2080;
    v129 = sub_2585331DC();
    v130 = v269;
    v131 = v263;
    if (v129)
    {
      if (nw_path_copy_effective_local_endpoint(v129))
      {
        sub_258532B1C();
        swift_unknownObjectRelease();
        if ((*(v271 + 48))(v131, 1, v130) != 1)
        {
          v132 = sub_258532A7C();
          v134 = v133;
          (*(v271 + 8))(v131, v130);
          goto LABEL_33;
        }

LABEL_32:
        sub_258465168(v131, &unk_27F931440, &qword_2585380E0);
        v134 = 0xE300000000000000;
        v132 = 7104878;
LABEL_33:
        v120(v273, v67);
        v147 = sub_2584713B0(v132, v134, &v276);

        *(v116 + 24) = v147;
        *(v116 + 32) = 2080;
        v148 = v272;
        v149 = sub_2585331DC();
        v90 = v247;
        if (v149)
        {
          if (nw_path_copy_effective_remote_endpoint(v149))
          {
            v150 = v264;
            sub_258532B1C();
            v151 = v150;
            swift_unknownObjectRelease();
            v152 = v271;
            if ((*(v271 + 48))(v151, 1, v130) != 1)
            {
              v153 = v151;
              v266 = sub_258532A7C();
              v155 = v154;
              v156 = v153;
              v148 = v272;
              (*(v152 + 8))(v156, v130);
LABEL_40:
              v120(v148, v67);
              v157 = sub_2584713B0(v266, v155, &v276);

              *(v116 + 34) = v157;
              _os_log_impl(&dword_25845E000, v114, v265, "Unable to create NetworkBackedNetworkPath with path: %s, localInterface: %s, localEndpoint: %s, remoteEndpoint: %s", v116, 0x2Au);
              v158 = v261;
              swift_arrayDestroy();
              MEMORY[0x259C82900](v158, -1, -1);
              MEMORY[0x259C82900](v116, -1, -1);

              sub_258465168(v246, &qword_27F931450, &qword_25853C1E0);
              v120(v243, v67);
              v120(v245, v67);
              return (*(v274 + 56))(v90, 1, 1, v275);
            }

LABEL_39:
            sub_258465168(v151, &unk_27F931440, &qword_2585380E0);
            v155 = 0xE300000000000000;
            goto LABEL_40;
          }

          swift_unknownObjectRelease();
        }

        v151 = v264;
        (*(v271 + 56))(v264, 1, 1, v130);
        goto LABEL_39;
      }

      swift_unknownObjectRelease();
    }

    (*(v271 + 56))(v131, 1, 1, v130);
    goto LABEL_32;
  }

  sub_258532DAC();
  v100 = v59;
  v101 = v268;
  sub_258465104(v100, v268);
  v102 = sub_2585331DC();
  if (!v102)
  {
    sub_2584F3FB4(v101, type metadata accessor for NetworkBackedNetworkInterface);
    v104 = v271;
LABEL_14:
    (*(v104 + 56))(v33, 1, 1, v269);
    goto LABEL_15;
  }

  v103 = nw_path_copy_effective_local_endpoint(v102);
  v104 = v271;
  if (!v103)
  {
    sub_2584F3FB4(v268, type metadata accessor for NetworkBackedNetworkInterface);
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v243 = v84;
  sub_258532B1C();
  swift_unknownObjectRelease();
  v105 = *(v104 + 48);
  v106 = v269;
  if (v105(v33, 1, v269) == 1)
  {
    sub_2584F3FB4(v268, type metadata accessor for NetworkBackedNetworkInterface);
    v84 = v243;
    v98 = v272;
LABEL_15:
    v108 = v265;
    v107 = v266;
    sub_258465168(v33, &unk_27F931440, &qword_2585380E0);
    (*(v108 + 56))(v41, 1, 1, v107);
LABEL_16:
    sub_258465168(v41, &qword_27F930DE0, &unk_25853BD80);
    goto LABEL_17;
  }

  v241 = v105;
  v242 = v104 + 48;
  v135 = *(v104 + 16);
  v136 = v260;
  v239 = v104 + 16;
  v238 = v135;
  v135(v260, v33, v106);
  v137 = *(v104 + 88);
  v237 = v104 + 88;
  v236 = v137;
  v138 = v137(v136, v106);
  v235 = *MEMORY[0x277CD8B08];
  if (v138 == v235)
  {
    (*(v104 + 96))(v136, v106);
    v240 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9313A0, &unk_25853D090) + 48);
    v140 = v265;
    v139 = v266;
    (*(v265 + 32))(v41, v136, v266);
    v141 = sub_258532AEC();
    v142 = &v136[v240];
    v143 = v140;
    (*(*(v141 - 8) + 8))(v142, v141);
    v260 = *(v140 + 56);
    (v260)(v41, 0, 1, v139);
    v145 = v104 + 8;
    v144 = *(v104 + 8);
    v146 = v145 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  else
  {
    v160 = v104 + 8;
    v144 = *(v104 + 8);
    v146 = v160 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v144(v136, v106);
    v143 = v265;
    v139 = v266;
    v260 = *(v265 + 56);
    (v260)(v41, 1, 1, v266);
  }

  v240 = v146;
  v144(v33, v106);
  v161 = *(v143 + 48);
  v162 = v161(v41, 1, v139);
  v98 = v272;
  if (v162 == 1)
  {
    sub_2584F3FB4(v268, type metadata accessor for NetworkBackedNetworkInterface);
    v84 = v243;
    goto LABEL_16;
  }

  v230 = v161;
  v231 = v143 + 48;
  v232 = v144;
  v163 = *(v143 + 32);
  v164 = v259;
  v229 = v143 + 32;
  v228 = v163;
  v163(v259, v41, v139);
  v165 = *(v143 + 16);
  v166 = v256;
  v227[1] = v143 + 16;
  v227[0] = v165;
  v165(v256, v164, v139);
  v167 = *(v261 + 56);
  v168 = v258;
  v261 += 56;
  v167(v258, 1, 1, v257);
  v169 = sub_2584F1368(v166, v168);
  if (!v172)
  {
    (*(v143 + 8))(v164, v139);
    v181 = v268;
LABEL_51:
    sub_2584F3FB4(v181, type metadata accessor for NetworkBackedNetworkInterface);
    v84 = v243;
    goto LABEL_17;
  }

  v173 = v171;
  v174 = v172;
  v233 = v169;
  v234 = v170;
  v175 = sub_2585331DC();
  if (!v175)
  {
    sub_2584D6360(v233, v234, v173, v174);
    v84 = v243;
    v177 = v259;
    v178 = v254;
LABEL_54:
    v180 = v266;
    (*(v265 + 8))(v177, v266);
    sub_2584F3FB4(v268, type metadata accessor for NetworkBackedNetworkInterface);
    (*(v271 + 56))(v178, 1, 1, v269);
    goto LABEL_55;
  }

  v176 = nw_path_copy_effective_remote_endpoint(v175);
  v177 = v259;
  v178 = v254;
  if (!v176)
  {
    sub_2584D6360(v233, v234, v173, v174);
    swift_unknownObjectRelease();
    v84 = v243;
    goto LABEL_54;
  }

  sub_258532B1C();
  swift_unknownObjectRelease();
  v179 = v269;
  if (v241(v178, 1, v269) == 1)
  {
    sub_2584D6360(v233, v234, v173, v174);
    v180 = v266;
    (*(v265 + 8))(v177, v266);
    sub_2584F3FB4(v268, type metadata accessor for NetworkBackedNetworkInterface);
    v84 = v243;
    v98 = v272;
LABEL_55:
    sub_258465168(v178, &unk_27F931440, &qword_2585380E0);
    v41 = v255;
    (v260)(v255, 1, 1, v180);
    goto LABEL_16;
  }

  v241 = v167;
  v242 = v173;
  v182 = v253;
  v238(v253, v178, v179);
  v183 = v236(v182, v179);
  v84 = v243;
  if (v183 == v235)
  {
    (*(v271 + 96))(v182, v179);
    v184 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9313A0, &unk_25853D090) + 48);
    v41 = v255;
    v228(v255, v182, v266);
    v185 = sub_258532AEC();
    (*(*(v185 - 8) + 8))(&v182[v184], v185);
    v186 = 0;
  }

  else
  {
    v232(v182, v179);
    v186 = 1;
    v41 = v255;
  }

  v188 = v265;
  v187 = v266;
  (v260)(v41, v186, 1, v266);
  v232(v178, v179);
  if (v230(v41, 1, v187) == 1)
  {
    sub_2584D6360(v233, v234, v242, v174);
    (*(v188 + 8))(v259, v266);
    sub_2584F3FB4(v268, type metadata accessor for NetworkBackedNetworkInterface);
    v98 = v272;
    goto LABEL_16;
  }

  v260 = v174;
  v189 = v252;
  v190 = v266;
  v228(v252, v41, v266);
  v191 = v256;
  (v227[0])(v256, v189, v190);
  v192 = v268;
  v193 = v258;
  sub_2584F3F4C(v268, v258, type metadata accessor for NetworkBackedNetworkInterface);
  v194 = v257;
  (v241)(v193, 0, 1, v257);
  v195 = sub_2584F1368(v191, v193);
  v98 = v272;
  if (!v198)
  {
    sub_2584D6360(v233, v234, v242, v260);
    v225 = v266;
    v226 = *(v265 + 8);
    v226(v189, v266);
    v226(v259, v225);
    v181 = v192;
    goto LABEL_51;
  }

  v199 = v198;
  v200 = *(v275 + 20);
  v201 = v275;
  v202 = v192;
  v203 = v245;
  v272 = v195;
  v204 = &v245[v200];
  v204[3] = v194;
  v204[4] = &off_2869900B8;
  v270 = v196;
  v271 = v197;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v204);
  v273 = type metadata accessor for NetworkBackedNetworkInterface;
  sub_2584F3F4C(v202, boxed_opaque_existential_1, type metadata accessor for NetworkBackedNetworkInterface);
  v206 = v201;
  v207 = (v203 + *(v201 + 24));
  v207[3] = &type metadata for NetworkBackedNetworkAddress;
  v207[4] = &off_2869900A0;
  v208 = swift_allocObject();
  *v207 = v208;
  v209 = v234;
  v208[2] = v233;
  v208[3] = v209;
  v210 = v260;
  v208[4] = v242;
  v208[5] = v210;
  v211 = (v203 + *(v206 + 28));
  v211[3] = &type metadata for NetworkBackedNetworkAddress;
  v211[4] = &off_2869900A0;
  v212 = swift_allocObject();
  *v211 = v212;
  v214 = v270;
  v213 = v271;
  v212[2] = v272;
  v212[3] = v214;
  v212[4] = v213;
  v212[5] = v199;
  v215 = v248;
  v216 = v243;
  sub_25853320C();
  v217 = v250;
  v218 = v249;
  v219 = v251;
  (*(v250 + 104))(v249, *MEMORY[0x277CD8F78], v251);
  LOBYTE(v206) = sub_2585331EC();
  sub_258465168(v246, &qword_27F931450, &qword_25853C1E0);
  v220 = *(v217 + 8);
  v220(v218, v219);
  v220(v215, v219);
  v221 = v266;
  v222 = *(v265 + 8);
  v222(v252, v266);
  v222(v259, v221);
  sub_2584F3FB4(v268, v273);
  (*(v99 + 8))(v216, v67);
  v223 = v275;
  *(v203 + *(v275 + 32)) = v206 & 1;
  v224 = v247;
  sub_2584F3F4C(v203, v247, type metadata accessor for NetworkBackedNetworkPath);
  (*(v274 + 56))(v224, 0, 1, v223);
  return sub_2584F3FB4(v203, type metadata accessor for NetworkBackedNetworkPath);
}

uint64_t sub_2584F3AF4()
{
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000010, 0x80000002585414B0);
  v0 = type metadata accessor for NetworkBackedNetworkPath();
  v1 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931420, &unk_258535450);
  sub_258533C8C();
  MEMORY[0x259C81500](0xD000000000000010, 0x80000002585414D0);
  v2 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DD0, &unk_25853BD70);
  sub_258533C8C();
  MEMORY[0x259C81500](0xD000000000000011, 0x80000002585414F0);
  v3 = v0[7];
  sub_258533C8C();
  MEMORY[0x259C81500](0x7461705F776E202CLL, 0xEB00000000203A68);
  sub_2585331DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931430, &qword_25853D088);
  sub_258533C8C();
  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_2584F3CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkBackedNetworkPath();
  __swift_project_boxed_opaque_existential_1((a1 + v4[5]), *(a1 + v4[5] + 24));
  v5 = sub_258532D5C();
  v7 = v6;
  __swift_project_boxed_opaque_existential_1((a2 + v4[5]), *(a2 + v4[5] + 24));
  if (v5 == sub_258532D5C() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_258533E2C();

    if ((v10 & 1) == 0)
    {
LABEL_11:
      v25 = 0;
      return v25 & 1;
    }
  }

  v11 = __swift_project_boxed_opaque_existential_1((a1 + v4[6]), *(a1 + v4[6] + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = __swift_project_boxed_opaque_existential_1((a2 + v4[6]), *(a2 + v4[6] + 24));
  v15 = *v14;
  v16 = v14[1];
  sub_2584A7B8C(v12, v13);
  sub_2584A7B8C(v15, v16);
  v17 = sub_2584F0D1C(v12, v13, v15, v16);
  sub_258467E20(v15, v16);
  sub_258467E20(v12, v13);
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

  v18 = __swift_project_boxed_opaque_existential_1((a1 + v4[7]), *(a1 + v4[7] + 24));
  v19 = *v18;
  v20 = v18[1];
  v21 = __swift_project_boxed_opaque_existential_1((a2 + v4[7]), *(a2 + v4[7] + 24));
  v22 = *v21;
  v23 = v21[1];
  sub_2584A7B8C(v19, v20);
  sub_2584A7B8C(v22, v23);
  v24 = sub_2584F0D1C(v19, v20, v22, v23);
  sub_258467E20(v22, v23);
  sub_258467E20(v19, v20);
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

  v25 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  return v25 & 1;
}

uint64_t sub_2584F3E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931450, &qword_25853C1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584F3F0C()
{
  sub_258467E20(v0[2], v0[3]);
  v1 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2584F3F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2584F3FB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2584F4014()
{
  v15 = MEMORY[0x277D84F90];
  sub_2584F9378(0, 6, 0);
  v0 = v15;
  v2 = *(v15 + 16);
  v1 = *(v15 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_2584F9378((v1 > 1), v2 + 1, 1);
    v0 = v15;
    v1 = *(v15 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  *(v0 + 8 * v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_2584F9378((v1 > 1), v2 + 2, 1);
    v0 = v15;
  }

  *(v0 + 16) = v5;
  *(v0 + 8 * v4 + 32) = 1;
  v6 = *(v0 + 24);
  v7 = v2 + 3;
  if ((v2 + 3) > (v6 >> 1))
  {
    sub_2584F9378((v6 > 1), v2 + 3, 1);
  }

  v8 = v15;
  *(v15 + 16) = v7;
  *(v15 + 8 * v5 + 32) = 2;
  v9 = *(v15 + 24);
  v10 = v2 + 4;
  if ((v2 + 4) > (v9 >> 1))
  {
    sub_2584F9378((v9 > 1), v2 + 4, 1);
    v8 = v15;
  }

  *(v8 + 16) = v10;
  *(v8 + 8 * v7 + 32) = 3;
  v11 = *(v8 + 24);
  v12 = v2 + 5;
  if ((v2 + 5) > (v11 >> 1))
  {
    sub_2584F9378((v11 > 1), v2 + 5, 1);
    v8 = v15;
  }

  *(v8 + 16) = v12;
  *(v8 + 8 * v10 + 32) = 4;
  v13 = *(v8 + 24);
  if ((v2 + 6) > (v13 >> 1))
  {
    sub_2584F9378((v13 > 1), v2 + 6, 1);
  }

  result = v15;
  *(v15 + 16) = v2 + 6;
  *(v15 + 8 * v12 + 32) = 5;
  return result;
}

uint64_t get_enum_tag_for_layout_string_18MediaContinuityKit9HistogramVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_2584F424C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 168);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2584F4294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_2584F434C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_2584F4394(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for TelemetryEvent.SessionActivatingInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TelemetryEvent.SessionActivatingInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2584F44C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2584F4508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18MediaContinuityKit14TelemetryEventO(uint64_t a1)
{
  if ((*(a1 + 49) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 49) & 0xF;
  }
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2584F45A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 50))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 49);
  if (v3 >= 9)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2584F45DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = -a2;
    }
  }

  return result;
}

uint64_t sub_2584F462C(uint64_t result, unsigned int a2)
{
  if (a2 > 7)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 8;
    LOBYTE(a2) = 8;
  }

  *(result + 49) = a2;
  return result;
}

uint64_t sub_2584F4668()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_2584F46BC(uint64_t a1)
{
  result = sub_2584F46E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584F46E4()
{
  result = qword_27F931458;
  if (!qword_27F931458)
  {
    type metadata accessor for NullTelemetryServer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931458);
  }

  return result;
}

uint64_t sub_2584F4738(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314A0, &qword_25853D608);
    v2 = sub_258533CDC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_258472C68(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_2584F6C74(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2584F6C74(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2584F6C74(v32, v33);
    v17 = *(v2 + 40);
    result = sub_258533B0C();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_2584F6C74(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2584F4A00(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v55 = *a1;
  v51 = a1[2];
  v52 = a1[1];
  v53 = a1[3];
  v54 = *(a1 + 32);
  v56 = *(a1 + 33);
  swift_defaultActor_initialize();
  *(v3 + 120) = 0;
  *(v3 + 128) = 0x6E6F6973736553;
  *(v3 + 136) = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FF70, &qword_25853D620);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25853D3F0;
  v6 = MEMORY[0x277D837D0];
  *(v5 + 32) = 0xD00000000000003BLL;
  *(v5 + 40) = 0x8000000258541D10;
  *(v5 + 56) = v6;
  *(v5 + 64) = 0xD00000000000002ELL;
  *(v5 + 72) = 0x8000000258541D50;
  *(v5 + 88) = v6;
  *(v5 + 96) = 0xD000000000000038;
  *(v5 + 104) = 0x8000000258541D80;
  *(v5 + 120) = v6;
  *(v5 + 128) = 0xD000000000000038;
  *(v5 + 136) = 0x8000000258541DC0;
  *(v5 + 184) = v6;
  *(v5 + 152) = v6;
  *(v5 + 160) = 0xD00000000000003ELL;
  *(v5 + 168) = 0x8000000258541E00;
  *(v3 + 144) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314B0, &qword_25853D628);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25853D400;
  v8 = *MEMORY[0x277D44028];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314B8, &qword_25853D630);
  sub_2584F6CD0();
  sub_258533B2C();
  *(inited + 96) = v6;
  *(inited + 72) = 0xD00000000000001CLL;
  *(inited + 80) = 0x800000025853FF50;
  v9 = *MEMORY[0x277D44030];
  sub_258533B2C();
  *(inited + 168) = MEMORY[0x277D849A8];
  *(inited + 144) = 51;
  v10 = *MEMORY[0x277D44040];
  sub_258533B2C();
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v12 = sub_2584F6DD0();
  *(inited + 240) = v12;
  *(inited + 216) = v11;
  v13 = *MEMORY[0x277D44080];
  sub_258533B2C();
  v14 = sub_25853294C();
  *(inited + 312) = v6;
  *(inited + 288) = v14;
  *(inited + 296) = v15;
  v16 = *MEMORY[0x277D44070];
  sub_258533B2C();
  v17 = sub_25853294C();
  *(inited + 384) = v6;
  *(inited + 360) = v17;
  *(inited + 368) = v18;
  v19 = *MEMORY[0x277D44010];
  sub_258533B2C();
  v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 456) = v12;
  *(inited + 432) = v20;
  v21 = *MEMORY[0x277D44050];
  sub_258533B2C();
  v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 528) = v12;
  *(inited + 504) = v22;
  sub_2584F8448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314D0, &qword_25853D638);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314D8, &qword_25853D640);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_25853D410;
  result = *MEMORY[0x277D44090];
  if (!*MEMORY[0x277D44090])
  {
    __break(1u);
    goto LABEL_31;
  }

  *(v23 + 32) = sub_25853342C();
  *(v23 + 40) = v25;
  if (v56)
  {
    if (!(v51 | v52 | v55 | v53) && !v54)
    {
      goto LABEL_5;
    }

    v50 = v51 | v52 | v53;
    if (v54 || v55 != 1 || v50)
    {
      if (!v54 && v55 == 2 && !v50)
      {
LABEL_5:
        v26 = 0x8000000258541E60;
        v27 = 0xD000000000000010;
        goto LABEL_7;
      }

      if (v54 || v55 != 3 || v50)
      {
        v26 = 0x8000000258541E40;
        v27 = 0xD000000000000011;
      }

      else
      {
        v26 = 0xEC0000006172656DLL;
        v27 = 0x614365746F6D6552;
      }
    }

    else
    {
      v26 = 0xE700000000000000;
      v27 = 0x79616C70726961;
    }
  }

  else
  {
    v26 = 0x8000000258541E80;
    v27 = 0xD000000000000012;
  }

LABEL_7:
  *(v23 + 72) = v6;
  *(v23 + 48) = v27;
  *(v23 + 56) = v26;
  result = *MEMORY[0x277D44098];
  if (!*MEMORY[0x277D44098])
  {
LABEL_31:
    __break(1u);
    return result;
  }

  *(v23 + 80) = sub_25853342C();
  *(v23 + 88) = v28;
  v29 = *(v3 + 136);
  *(v23 + 96) = *(v3 + 128);
  *(v23 + 104) = v29;
  *(v23 + 120) = v6;
  *(v23 + 128) = 1145654339;
  *(v23 + 136) = 0xE400000000000000;

  v30 = sub_25853294C();
  *(v23 + 168) = v6;
  *(v23 + 144) = v30;
  *(v23 + 152) = v31;
  v32 = sub_2584F8584(v23);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314E0, &qword_25853D648);
  swift_arrayDestroy();
  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v57 = a2;
  v33 = sub_258532A4C();
  __swift_project_value_buffer(v33, qword_27F93D038);
  v34 = sub_258532A2C();
  v35 = sub_2585338EC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_25845E000, v34, v35, "Creating reporting agent", v36, 2u);
    MEMORY[0x259C82900](v36, -1, -1);
  }

  sub_2584F4738(v32);

  v37 = *(v3 + 144);
  v38 = objc_allocWithZone(MEMORY[0x277D43FE0]);

  v39 = sub_25853336C();

  v40 = sub_25853336C();

  v41 = sub_2585335CC();

  v42 = [v38 initWithSessionInfo:v39 userInfo:v40 frameworksToCheck:v41];

  if (v42)
  {
    v43 = sub_2585329BC();
    (*(*(v43 - 8) + 8))(a2, v43);
    *(v3 + 112) = v42;
  }

  else
  {
    v44 = sub_258532A2C();
    v45 = sub_2585338CC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_25845E000, v44, v45, "Failed to create reporting agent", v46, 2u);
      MEMORY[0x259C82900](v46, -1, -1);
    }

    v47 = *(v3 + 136);

    v48 = *(v3 + 144);

    type metadata accessor for RTCBackedTelemetryServer();
    swift_defaultActor_destroy();
    v49 = sub_2585329BC();
    (*(*(v49 - 8) + 8))(v57, v49);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t sub_2584F5224()
{
  v40 = v0;
  v1 = v0[8];
  if (*(v1 + 120))
  {
    sub_2584F6C20();
    v2 = swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = v2;
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v5 = v0[8];
    v6 = sub_258532A4C();
    __swift_project_value_buffer(v6, qword_27F93D038);

    v7 = v2;
    v8 = sub_258532A2C();
    v9 = sub_2585338CC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[8];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v39[0] = v12;
      *v11 = 136315394;
      v0[2] = v10;
      type metadata accessor for RTCBackedTelemetryServer();
      sub_2584F6D88(&qword_27F931490, v13, type metadata accessor for RTCBackedTelemetryServer);
      v14 = sub_258533DFC();
      v16 = sub_2584713B0(v14, v15, v39);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      v0[2] = v2;
      v17 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      v18 = sub_25853347C();
      v20 = sub_2584713B0(v18, v19, v39);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_25845E000, v8, v9, "%s failed to activate with error:%s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v12, -1, -1);
      MEMORY[0x259C82900](v11, -1, -1);
    }

    *(v1 + 120) = 3;
    swift_willThrow();

    v21 = v0[1];
  }

  else
  {
    v22 = v0[8];
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
      v38 = v0[8];
    }

    v23 = sub_258532A4C();
    __swift_project_value_buffer(v23, qword_27F93D038);

    v24 = sub_258532A2C();
    v25 = sub_2585338EC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[8];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39[0] = v28;
      *v27 = 136315138;
      v0[2] = v26;
      type metadata accessor for RTCBackedTelemetryServer();
      sub_2584F6D88(&qword_27F931490, v29, type metadata accessor for RTCBackedTelemetryServer);
      v30 = sub_258533DFC();
      v32 = sub_2584713B0(v30, v31, v39);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_25845E000, v24, v25, "%s Starting reporting agent", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x259C82900](v28, -1, -1);
      MEMORY[0x259C82900](v27, -1, -1);
    }

    v33 = v0[8];
    v34 = *(v33 + 112);
    v0[6] = sub_2584F6CB0;
    v0[7] = v33;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2584F672C;
    v0[5] = &block_descriptor_18;
    v35 = _Block_copy(v0 + 2);
    v36 = v0[7];

    [v34 startConfigurationWithCompletionHandler_];
    _Block_release(v35);
    *(v1 + 120) = 1;
    v21 = v0[1];
  }

  return v21();
}

uint64_t sub_2584F571C()
{
  v18 = v0;
  v1 = v0[18];
  if (*(v1 + 120) == 1)
  {
    *(v1 + 120) = 2;
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v2 = v0[18];
    v3 = sub_258532A4C();
    v0[19] = __swift_project_value_buffer(v3, qword_27F93D038);

    v4 = sub_258532A2C();
    v5 = sub_2585338EC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[18];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      v0[10] = v6;
      type metadata accessor for RTCBackedTelemetryServer();
      sub_2584F6D88(&qword_27F931490, v9, type metadata accessor for RTCBackedTelemetryServer);
      v10 = sub_258533DFC();
      v12 = sub_2584713B0(v10, v11, &v17);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_25845E000, v4, v5, "%s Terminating reporting agent", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x259C82900](v8, -1, -1);
      MEMORY[0x259C82900](v7, -1, -1);
    }

    v13 = *(v0[18] + 112);
    v0[2] = v0;
    v0[3] = sub_2584F5A04;
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314A8, &unk_25853D610);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2584F5C8C;
    v0[13] = &block_descriptor_4;
    v0[14] = v14;
    [v13 terminateSessionWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2584F5A04()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2584F5AF8, v1, 0);
}

uint64_t sub_2584F5AF8()
{
  v15 = v0;
  v2 = v0[18];
  v1 = v0[19];

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[10] = v5;
    type metadata accessor for RTCBackedTelemetryServer();
    sub_2584F6D88(&qword_27F931490, v8, type metadata accessor for RTCBackedTelemetryServer);
    v9 = sub_258533DFC();
    v11 = sub_2584713B0(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Terminated reporting agent", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_2584F5C8C(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_2584F5CC0(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 624) = v1;
  *(v2 + 616) = a1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2584F5D54, v1, 0);
}

uint64_t sub_2584F5D54()
{
  v81 = v0;
  v80[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 624);
  v2 = *(v1 + 120);
  if (!*(v1 + 120))
  {
    sub_2584F6C20();
    swift_allocError();
    *v5 = 0;
    goto LABEL_8;
  }

  if (v2 == 2)
  {
    sub_2584F6C20();
    swift_allocError();
    v4 = 2;
    goto LABEL_6;
  }

  if (v2 == 3)
  {
    sub_2584F6C20();
    swift_allocError();
    v4 = 3;
LABEL_6:
    *v3 = v4;
LABEL_8:
    swift_willThrow();
LABEL_9:
    v6 = *(v0 + 8);
    v7 = *MEMORY[0x277D85DE8];
    goto LABEL_10;
  }

  if (qword_27F92F8F8 != -1)
  {
    swift_once();
    v79 = *(v0 + 624);
  }

  v9 = *(v0 + 616);
  v10 = sub_258532A4C();
  __swift_project_value_buffer(v10, qword_27F93D038);
  sub_258464C30(v9, v0 + 496);

  v11 = sub_258532A2C();
  v12 = sub_2585338EC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 624);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v80[0] = v15;
    *v14 = 136315394;
    *(v0 + 536) = v13;
    type metadata accessor for RTCBackedTelemetryServer();
    sub_2584F6D88(&qword_27F931490, v16, type metadata accessor for RTCBackedTelemetryServer);
    v17 = sub_258533DFC();
    v19 = sub_2584713B0(v17, v18, v80);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    sub_258464C30(v0 + 496, v0 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931478, &qword_25853D5F0);
    v20 = sub_25853347C();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
    v23 = sub_2584713B0(v20, v22, v80);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_25845E000, v11, v12, "%s Publishing report: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v15, -1, -1);
    MEMORY[0x259C82900](v14, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
  }

  sub_258464C30(*(v0 + 616), v0 + 536);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931478, &qword_25853D5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931480, &qword_25853D5F8);
  v24 = swift_dynamicCast();
  v25 = *(v0 + 624);
  if (v24)
  {
    sub_258464C18((v0 + 576), v0 + 496);
    sub_258464C30(v0 + 496, v0 + 536);

    v26 = sub_258532A2C();
    v27 = sub_2585338EC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 624);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v80[0] = v30;
      *v29 = 136315394;
      *(v0 + 576) = v28;
      type metadata accessor for RTCBackedTelemetryServer();
      sub_2584F6D88(&qword_27F931490, v31, type metadata accessor for RTCBackedTelemetryServer);
      v32 = sub_258533DFC();
      v34 = sub_2584713B0(v32, v33, v80);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2080;
      v35 = __swift_project_boxed_opaque_existential_1((v0 + 536), *(v0 + 560));
      v37 = v35[1];
      v36 = v35[2];
      *(v0 + 16) = *v35;
      *(v0 + 32) = v37;
      *(v0 + 48) = v36;
      v38 = v35[6];
      v40 = v35[3];
      v39 = v35[4];
      *(v0 + 96) = v35[5];
      *(v0 + 112) = v38;
      *(v0 + 64) = v40;
      *(v0 + 80) = v39;
      v41 = v35[10];
      v43 = v35[7];
      v42 = v35[8];
      *(v0 + 160) = v35[9];
      *(v0 + 176) = v41;
      *(v0 + 128) = v43;
      *(v0 + 144) = v42;
      v44 = v35[14];
      v46 = v35[11];
      v45 = v35[12];
      *(v0 + 224) = v35[13];
      *(v0 + 240) = v44;
      *(v0 + 192) = v46;
      *(v0 + 208) = v45;
      sub_2584F6EB8();
      v47 = sub_25853338C();
      v49 = v48;

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
      v50 = sub_2584713B0(v47, v49, v80);

      *(v29 + 14) = v50;
      _os_log_impl(&dword_25845E000, v26, v27, "%s Publishing report payload: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v30, -1, -1);
      MEMORY[0x259C82900](v29, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
    }

    v60 = *(*(v0 + 624) + 112);
    v61 = __swift_project_boxed_opaque_existential_1((v0 + 496), *(v0 + 520));
    v63 = v61[1];
    v62 = v61[2];
    *(v0 + 256) = *v61;
    *(v0 + 272) = v63;
    *(v0 + 288) = v62;
    v64 = v61[6];
    v66 = v61[3];
    v65 = v61[4];
    *(v0 + 336) = v61[5];
    *(v0 + 352) = v64;
    *(v0 + 304) = v66;
    *(v0 + 320) = v65;
    v67 = v61[10];
    v69 = v61[7];
    v68 = v61[8];
    *(v0 + 400) = v61[9];
    *(v0 + 416) = v67;
    *(v0 + 368) = v69;
    *(v0 + 384) = v68;
    v70 = v61[14];
    v72 = v61[11];
    v71 = v61[12];
    *(v0 + 464) = v61[13];
    *(v0 + 480) = v70;
    *(v0 + 432) = v72;
    *(v0 + 448) = v71;
    v73 = sub_2584F6EB8();
    sub_2584F4738(v73);

    v74 = sub_25853336C();

    *(v0 + 536) = 0;
    LODWORD(v60) = [v60 sendMessageWithCategory:1 type:0 payload:v74 error:v0 + 536];

    v75 = *(v0 + 536);
    if (!v60)
    {
      v78 = v75;
      sub_2585328BC();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
      goto LABEL_9;
    }

    v76 = v75;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
  }

  else
  {
    *(v0 + 608) = 0;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    sub_2584F6BB8(v0 + 576);

    v51 = sub_258532A2C();
    v52 = sub_2585338BC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = *(v0 + 624);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v80[0] = v55;
      *v54 = 136315138;
      *(v0 + 496) = v53;
      type metadata accessor for RTCBackedTelemetryServer();
      sub_2584F6D88(&qword_27F931490, v56, type metadata accessor for RTCBackedTelemetryServer);
      v57 = sub_258533DFC();
      v59 = sub_2584713B0(v57, v58, v80);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_25845E000, v51, v52, "%s ignoring report ", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x259C82900](v55, -1, -1);
      MEMORY[0x259C82900](v54, -1, -1);
    }
  }

  v6 = *(v0 + 8);
  v77 = *MEMORY[0x277D85DE8];
LABEL_10:

  return v6();
}

void sub_2584F6560(uint64_t a1)
{
  if (!a1)
  {
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v1 = sub_258532A4C();
    __swift_project_value_buffer(v1, qword_27F93D038);

    oslog = sub_258532A2C();
    v2 = sub_2585338CC();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v10 = v4;
      *v3 = 136315138;
      type metadata accessor for RTCBackedTelemetryServer();
      sub_2584F6D88(&qword_27F931490, v5, type metadata accessor for RTCBackedTelemetryServer);
      v6 = sub_258533DFC();
      v8 = sub_2584713B0(v6, v7, &v10);

      *(v3 + 4) = v8;
      _os_log_impl(&dword_25845E000, oslog, v2, "%s RTCReporting has no backends", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x259C82900](v4, -1, -1);
      MEMORY[0x259C82900](v3, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2584F672C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_2585335DC();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_2584F67AC()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 144);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_2584F6830()
{
  result = qword_27F931460;
  if (!qword_27F931460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931460);
  }

  return result;
}

uint64_t sub_2584F6888@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for RTCBackedTelemetryServer();
  result = sub_258533B9C();
  *a1 = result;
  return result;
}

uint64_t sub_2584F68C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584F5204();
}

uint64_t sub_2584F6954()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_2584F56FC();
}

uint64_t sub_2584F69E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258464F5C;

  return sub_2584F5CC0(a1);
}

uint64_t sub_2584F6A74()
{
  v1 = *v0;
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000019, 0x8000000258541CD0);
  type metadata accessor for RTCBackedTelemetryServer();
  sub_2584F6D88(&qword_27F931470, v2, type metadata accessor for RTCBackedTelemetryServer);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_2584F6B60(uint64_t a1, uint64_t a2)
{
  result = sub_2584F6D88(&qword_27F931468, a2, type metadata accessor for RTCBackedTelemetryServer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584F6BB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931488, &qword_25853D600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2584F6C20()
{
  result = qword_27F931498;
  if (!qword_27F931498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931498);
  }

  return result;
}

_OWORD *sub_2584F6C74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2584F6CD0()
{
  result = qword_27F9314C0;
  if (!qword_27F9314C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9314B8, &qword_25853D630);
    sub_2584F6D88(&qword_27F92FBF8, 255, type metadata accessor for CFString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9314C0);
  }

  return result;
}

uint64_t sub_2584F6D88(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_2584F6DD0()
{
  result = qword_27F9314C8;
  if (!qword_27F9314C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F9314C8);
  }

  return result;
}

unint64_t sub_2584F6E2C(uint64_t a1)
{
  result = sub_2584F6C20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584F6E58()
{
  result = qword_27F9314E8;
  if (!qword_27F9314E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9314E8);
  }

  return result;
}

unint64_t sub_2584F6EB8()
{
  v1 = v0;
  v2 = sub_2584F8584(MEMORY[0x277D84F90]);
  v72 = v2;
  v3 = MEMORY[0x277D84CC0];
  if (*(v0 + 76))
  {
    sub_2584F7A00(1314148932, 0xE400000000000000, &v68);
    sub_258465168(&v68, &qword_27F92FD80, &unk_25853F3F0);
  }

  else
  {
    v4 = v2;
    v5 = *(v1 + 18);
    v69 = MEMORY[0x277D84CC0];
    LODWORD(v68) = v5;
    sub_2584F6C74(&v68, v71);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v4;
    sub_25850D118(v71, 1314148932, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v72 = v70;
  }

  v7 = v1[3];
  v8 = MEMORY[0x277D837D0];
  if (v7)
  {
    v9 = v1[2];
    v69 = MEMORY[0x277D837D0];
    *&v68 = v9;
    *(&v68 + 1) = v7;
    sub_2584F6C74(&v68, v71);

    v10 = v72;
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v10;
    sub_25850D118(v71, 0x524556534F4D4552, 0xE800000000000000, v11);
    v72 = v70;
  }

  else
  {
    sub_2584F7A00(0x524556534F4D4552, 0xE800000000000000, &v68);
    sub_258465168(&v68, &qword_27F92FD80, &unk_25853F3F0);
  }

  v12 = v1[5];
  if (v12)
  {
    v13 = v1[4];
    v69 = v8;
    *&v68 = v13;
    *(&v68 + 1) = v12;
    sub_2584F6C74(&v68, v71);

    v14 = v72;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v14;
    sub_25850D118(v71, 0x4C444D4D4552, 0xE600000000000000, v15);
    v72 = v70;
    v16 = v1[1];
    if (v16)
    {
LABEL_9:
      v17 = *v1;
      v69 = v8;
      *&v68 = v17;
      *(&v68 + 1) = v16;
      sub_2584F6C74(&v68, v71);

      v18 = v72;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v18;
      sub_25850D118(v71, 1145654343, 0xE400000000000000, v19);
      v72 = v70;
      goto LABEL_12;
    }
  }

  else
  {
    sub_2584F7A00(0x4C444D4D4552, 0xE600000000000000, &v68);
    sub_258465168(&v68, &qword_27F92FD80, &unk_25853F3F0);
    v16 = v1[1];
    if (v16)
    {
      goto LABEL_9;
    }
  }

  sub_2584F7A00(1145654343, 0xE400000000000000, &v68);
  sub_258465168(&v68, &qword_27F92FD80, &unk_25853F3F0);
LABEL_12:
  v20 = v1[6] & 1;
  v69 = MEMORY[0x277D83B88];
  *&v68 = v20;
  sub_2584F6C74(&v68, v71);
  v21 = v72;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v70 = v21;
  sub_25850D118(v71, 0x5245565245535349, 0xE800000000000000, v22);
  v23 = v70;
  v24 = *(v1 + 24);
  v69 = v3;
  LODWORD(v68) = v24;
  sub_2584F6C74(&v68, v71);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v70 = v23;
  sub_25850D118(v71, 0x4E5352444E45, 0xE600000000000000, v25);
  v26 = v70;
  v72 = v70;
  if (*(v1 + 84))
  {
    sub_2584F7A00(0x454D4954544341, 0xE700000000000000, &v68);
    sub_258465168(&v68, &qword_27F92FD80, &unk_25853F3F0);
    if ((*(v1 + 92) & 1) == 0)
    {
LABEL_14:
      v27 = *(v1 + 22);
      v69 = v3;
      LODWORD(v68) = v27;
      sub_2584F6C74(&v68, v71);
      v28 = v72;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v28;
      sub_25850D118(v71, 0x464954525453, 0xE600000000000000, v29);
      v30 = v70;
      goto LABEL_17;
    }
  }

  else
  {
    v31 = *(v1 + 20);
    v69 = v3;
    LODWORD(v68) = v31;
    sub_2584F6C74(&v68, v71);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v26;
    sub_25850D118(v71, 0x454D4954544341, 0xE700000000000000, v32);
    v72 = v70;
    if ((*(v1 + 92) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_2584F7A00(0x464954525453, 0xE600000000000000, &v68);
  sub_258465168(&v68, &qword_27F92FD80, &unk_25853F3F0);
  v30 = v72;
LABEL_17:
  v33 = *(v1 + 25);
  v69 = v3;
  LODWORD(v68) = v33;
  sub_2584F6C74(&v68, v71);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v70 = v30;
  sub_25850D118(v71, 0x544E4347494DLL, 0xE600000000000000, v34);
  v35 = v70;
  v72 = v70;
  v36 = v1[13];
  v37 = v1[15];
  v38 = v1[20];
  if (!v36)
  {
    sub_2584F7A00(0x454D495447494D41, 0xE800000000000000, v71);
    sub_258465168(v71, &qword_27F92FD80, &unk_25853F3F0);
    goto LABEL_23;
  }

  v39 = v1[18];
  v40 = *(v1 + 152);
  v41 = sub_2584B7EE4(v1[14], v1[20]);
  v42 = MEMORY[0x277D84D38];
  if (v43)
  {
    sub_2584F7A00(0x454D495447494D41, 0xE800000000000000, v71);
    sub_258465168(v71, &qword_27F92FD80, &unk_25853F3F0);
    if ((v40 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_23:
    sub_2584F7A00(0x495447494D58414DLL, 0xEA0000000000454DLL, v71);
    sub_258465168(v71, &qword_27F92FD80, &unk_25853F3F0);
    if (!v36)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v69 = MEMORY[0x277D84D38];
  *&v68 = v41;
  sub_2584F6C74(&v68, v71);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v70 = v35;
  sub_25850D118(v71, 0x454D495447494D41, 0xE800000000000000, v44);
  v72 = v70;
  if (v40)
  {
    goto LABEL_23;
  }

LABEL_25:
  v69 = v42;
  *&v68 = v39;
  sub_2584F6C74(&v68, v71);
  v45 = v72;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v70 = v45;
  sub_25850D118(v71, 0x495447494D58414DLL, 0xEA0000000000454DLL, v46);
  v72 = v70;
LABEL_26:
  v47 = sub_2584B7F30(v37, v38);
  if (v48)
  {
    v69 = v8;
    *&v68 = v47;
    *(&v68 + 1) = v48;
    sub_2584F6C74(&v68, v71);
    v49 = v72;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v49;
    sub_25850D118(v71, 0x48454D495447494DLL, 0xEB00000000545349, v50);
    v72 = v70;
    goto LABEL_29;
  }

LABEL_28:
  sub_2584F7A00(0x48454D495447494DLL, 0xEB00000000545349, v71);
  sub_258465168(v71, &qword_27F92FD80, &unk_25853F3F0);
LABEL_29:
  v51 = sub_2584B7F30(v1[23], v1[28]);
  if (v52)
  {
    v69 = v8;
    *&v68 = v51;
    *(&v68 + 1) = v52;
    sub_2584F6C74(&v68, v71);
    v53 = v72;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v53;
    sub_25850D118(v71, 0x545349484E545244, 0xE800000000000000, v54);
    v72 = v70;
  }

  else
  {
    sub_2584F7A00(0x545349484E545244, 0xE800000000000000, &v68);
    sub_258465168(&v68, &qword_27F92FD80, &unk_25853F3F0);
  }

  v55 = v1[8];
  if (v55)
  {
    v56 = v1[7];
    v69 = v8;
    *&v68 = v56;
    *(&v68 + 1) = v55;
    sub_2584F6C74(&v68, v71);

    v57 = v72;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v57;
    sub_25850D118(v71, 0x4449505041, 0xE500000000000000, v58);
    v59 = v70;
    v72 = v70;
  }

  else
  {
    sub_2584F7A00(0x4449505041, 0xE500000000000000, &v68);
    sub_258465168(&v68, &qword_27F92FD80, &unk_25853F3F0);
    v59 = v72;
  }

  v60 = v1[29];
  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = v60 + 32;
    do
    {
      sub_2584F86B4(v62, &v68);
      v63 = sub_2584F89F0();
      MEMORY[0x28223BE20](v63, v64);
      v67[2] = &v68;
      v65 = swift_isUniquelyReferenced_nonNull_native();
      *&v71[0] = v59;
      sub_2584F7E3C(v63, sub_2584F7DF0, 0, v65, sub_2584F8710, v67);
      v59 = *&v71[0];
      sub_2584F872C(&v68);
      v62 += 120;
      --v61;
    }

    while (v61);
  }

  return v59;
}

uint64_t sub_2584F77A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v8 = sub_258532A4C();
  __swift_project_value_buffer(v8, qword_27F93D038);
  sub_2584F86B4(a3, v24);
  sub_258472C68(a2, v23);
  v9 = sub_258532A2C();
  v10 = sub_2585338DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315394;
    sub_2584F89F0();
    v13 = sub_25853338C();
    v15 = v14;

    sub_2584F872C(v24);
    v16 = sub_2584713B0(v13, v15, &v25);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_258472C68(v23, v22);
    v17 = sub_25853347C();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v20 = sub_2584713B0(v17, v19, &v25);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_25845E000, v9, v10, "Duplicate key found in streamEndReport=%s, value=%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v12, -1, -1);
    MEMORY[0x259C82900](v11, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    sub_2584F872C(v24);
  }

  return sub_258472C68(a1, a4);
}

double sub_2584F7A00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2584BC1D0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25850DEC4();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_2584F6C74((*(v12 + 56) + 32 * v9), a3);
    sub_2584F7AA4(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2584F7AA4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_258533A9C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_258533EEC();

      sub_2585334AC();
      v14 = sub_258533F2C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2584F7C54(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_258533A9C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      sub_258533EEC();
      sub_2585334AC();
      result = sub_258533F2C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2584F7DF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_258472C68((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

void sub_2584F7E3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_OWORD *__return_ptr, id *, uint64_t *), uint64_t a6)
{
  v8 = v6;
  v50 = a6;
  v10 = -1 << *(a1 + 32);
  v11 = ~v10;
  v12 = *(a1 + 64);
  v13 = -v10;
  v43 = a1;
  v44 = a1 + 64;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v45 = v11;
  v46 = 0;
  v47 = v14 & v12;
  v48 = a2;
  v49 = a3;

  sub_2584F81E4(&v41);
  v15 = *(&v41 + 1);
  if (!*(&v41 + 1))
  {
LABEL_5:
    sub_2584D127C();

    return;
  }

  while (1)
  {
    v16 = v41;
    v39 = v41;
    v40 = v15;
    sub_2584F6C74(&v42, v38);
    v17 = *v8;
    v19 = sub_2584BC1D0(v16, v15);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_258533E5C();
      __break(1u);
      goto LABEL_24;
    }

    v23 = v18;
    if (v17[3] < v22)
    {
      break;
    }

    if (a4)
    {
      if (v18)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_25850DEC4();
      if (v23)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    v29 = *v8;
    *(*v8 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v30 = (v29[6] + 16 * v19);
    *v30 = v16;
    v30[1] = v15;
    sub_2584F6C74(v38, (v29[7] + 32 * v19));
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_22;
    }

    v29[2] = v33;
LABEL_6:
    sub_2584F81E4(&v41);
    v15 = *(&v41 + 1);
    a4 = 1;
    if (!*(&v41 + 1))
    {
      goto LABEL_5;
    }
  }

  sub_25850C3EC(v22, a4 & 1);
  v24 = *v8;
  v25 = sub_2584BC1D0(v16, v15);
  if ((v23 & 1) != (v26 & 1))
  {
    goto LABEL_23;
  }

  v19 = v25;
  if ((v23 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v27 = *v8;
  sub_258472C68(*(*v8 + 56) + 32 * v19, v36);
  a5(v37, v36, v38);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);

    v28 = (v27[7] + 32 * v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    sub_2584F6C74(v37, v28);
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  v36[0] = v7;
  v34 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    sub_2584D127C();

    return;
  }

LABEL_24:
  *&v37[0] = 0;
  *(&v37[0] + 1) = 0xE000000000000000;
  sub_258533B8C();
  MEMORY[0x259C81500](0xD00000000000001BLL, 0x8000000258541EC0);
  sub_258533C8C();
  MEMORY[0x259C81500](39, 0xE100000000000000);
  sub_258533C9C();
  __break(1u);
}

uint64_t sub_2584F81E4@<X0>(_OWORD *a1@<X8>)
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
    sub_258472C68(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_2584F6C74(v22, &v24);

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
      return sub_258465168(v22, &qword_27F9314F0, &qword_25853D730);
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

unint64_t sub_2584F8344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931500, &unk_25853D740);
    v3 = sub_258533CDC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2584BC1D0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_2584F8448(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314A0, &qword_25853D608);
    v3 = sub_258533CDC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2584AC3B8(v4, v13, &qword_27F9314D0, &qword_25853D638);
      result = sub_2584BC248(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2584F6C74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_2584F8584(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314F8, &qword_25853D738);
    v3 = sub_258533CDC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2584AC3B8(v4, &v13, &qword_27F9314E0, &qword_25853D648);
      v5 = v13;
      v6 = v14;
      result = sub_2584BC1D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2584F6C74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_2584F8858(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = v4;
  v7 = *v4;
  v8 = a1();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  v11 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v6;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a4();
    v13 = v16;
  }

  v14 = *(*(v13 + 56) + 8 * v10);
  sub_2584F7C54(v10, v13);
  *v6 = v13;
  return v14;
}

uint64_t sub_2584F8944(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = v4;
  v7 = *v4;
  v8 = a1();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  v11 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v6;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a4();
    v13 = v16;
  }

  v14 = *(*(v13 + 56) + 8 * v10);
  sub_2584F7C54(v10, v13);
  *v6 = v13;
  return v14;
}

uint64_t sub_2584F89F0()
{
  v1 = v0;
  v67 = sub_2584F8584(MEMORY[0x277D84F90]);
  *&v65 = 5392708;
  *(&v65 + 1) = 0xE300000000000000;
  MEMORY[0x259C81500](95, 0xE100000000000000);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  LODWORD(v64[0]) = (*(v3 + 32))(v2, v3);
  v4 = MEMORY[0x277D84CC0];
  v5 = sub_258533DFC();
  MEMORY[0x259C81500](v5);

  if (*(v0 + 40))
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v66 = v4;
  LODWORD(v65) = v6;
  sub_2584F6C74(&v65, v64);
  v7 = v67;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25850D118(v64, 5392708, 0xE300000000000000, isUniquelyReferenced_nonNull_native);

  v67 = v7;
  *&v65 = 0x544E43544341;
  *(&v65 + 1) = 0xE600000000000000;
  MEMORY[0x259C81500](95, 0xE100000000000000);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v9);
  LODWORD(v64[0]) = (*(v10 + 32))(v9, v10);
  v11 = sub_258533DFC();
  MEMORY[0x259C81500](v11);

  v12 = v65;
  v13 = *(v1 + 104);
  v14 = MEMORY[0x277D84D38];
  v66 = MEMORY[0x277D84D38];
  *&v65 = v13;
  sub_2584F6C74(&v65, v64);
  v15 = v67;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_25850D118(v64, v12, *(&v12 + 1), v16);

  v67 = v15;
  strcpy(&v65, "STRMSDRTN");
  WORD5(v65) = 0;
  HIDWORD(v65) = -385875968;
  MEMORY[0x259C81500](95, 0xE100000000000000);
  v17 = *(v1 + 24);
  v18 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v17);
  LODWORD(v64[0]) = (*(v18 + 32))(v17, v18);
  v19 = sub_258533DFC();
  MEMORY[0x259C81500](v19);

  v21 = v65;
  v22 = *(v1 + 56);
  if (!v13)
  {
    sub_2584F7A00(v65, *(&v65 + 1), &v65);

    sub_258467FD8(&v65);
LABEL_13:
    strcpy(&v65, "AVGSTRMDRTN");
    HIDWORD(v65) = -352321536;
    MEMORY[0x259C81500](95, 0xE100000000000000);
    v30 = *(v1 + 24);
    v31 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1(v1, v30);
    LODWORD(v64[0]) = (*(v31 + 32))(v30, v31);
    v32 = sub_258533DFC();
    MEMORY[0x259C81500](v32);

    v33 = v65;
    v34 = *(v1 + 64);
    v35 = *(v1 + 88);
    v36 = *(v1 + 96);
    v37 = sub_2584B7EE4(v22, v13);
    if (v38)
    {
      sub_2584F7A00(v33, *(&v33 + 1), &v65);

      sub_258467FD8(&v65);
    }

    else
    {
      v66 = MEMORY[0x277D84D38];
      *&v65 = v37;
      sub_2584F6C74(&v65, v64);
      v39 = v67;
      v40 = swift_isUniquelyReferenced_nonNull_native();
      sub_25850D118(v64, v33, *(&v33 + 1), v40);

      v67 = v39;
    }

    strcpy(&v65, "MAXSTRMDRTN");
    HIDWORD(v65) = -352321536;
    MEMORY[0x259C81500](95, 0xE100000000000000);
    v41 = *(v1 + 24);
    v42 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1(v1, v41);
    LODWORD(v64[0]) = (*(v42 + 32))(v41, v42);
    v43 = sub_258533DFC();
    MEMORY[0x259C81500](v43);

    v44 = v65;
    if (v36)
    {
      sub_2584F7A00(v65, *(&v65 + 1), &v65);

      sub_258467FD8(&v65);
    }

    else
    {
      v66 = MEMORY[0x277D84D38];
      *&v65 = v35;
      sub_2584F6C74(&v65, v64);
      v45 = v67;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      sub_25850D118(v64, v44, *(&v44 + 1), v46);

      v67 = v45;
    }

    strcpy(&v65, "STRMDRNTHIST");
    BYTE13(v65) = 0;
    HIWORD(v65) = -5120;
    MEMORY[0x259C81500](95, 0xE100000000000000);
    v47 = *(v1 + 24);
    v48 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1(v1, v47);
    LODWORD(v64[0]) = (*(v48 + 32))(v47, v48);
    v49 = sub_258533DFC();
    MEMORY[0x259C81500](v49);

    v50 = v65;
    v51 = sub_2584B7F30(v34, v13);
    v53 = MEMORY[0x277D837D0];
    if (v52)
    {
      v66 = MEMORY[0x277D837D0];
      *&v65 = v51;
      *(&v65 + 1) = v52;
      sub_2584F6C74(&v65, v64);
      v54 = v67;
      v55 = swift_isUniquelyReferenced_nonNull_native();
      sub_25850D118(v64, v50, *(&v50 + 1), v55);

      v67 = v54;
    }

    else
    {
      sub_2584F7A00(v50, *(&v50 + 1), &v65);

      sub_258467FD8(&v65);
    }

    strcpy(&v65, "STRMENDRSN");
    BYTE11(v65) = 0;
    HIDWORD(v65) = -369098752;
    MEMORY[0x259C81500](95, 0xE100000000000000);
    v56 = *(v1 + 24);
    v57 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1(v1, v56);
    LODWORD(v64[0]) = (*(v57 + 32))(v56, v57);
    v58 = sub_258533DFC();
    MEMORY[0x259C81500](v58);

    v59 = v65;
    v60 = sub_2584F91A0();
    if (v61)
    {
      v66 = v53;
      *&v65 = v60;
      *(&v65 + 1) = v61;
      sub_2584F6C74(&v65, v64);
      v62 = v67;
      v63 = swift_isUniquelyReferenced_nonNull_native();
      sub_25850D118(v64, v59, *(&v59 + 1), v63);

      return v62;
    }

    else
    {
      sub_2584F7A00(v59, *(&v59 + 1), &v65);

      sub_258467FD8(&v65);
      return v67;
    }
  }

  v23 = *(v22 + 16);
  if (!v23)
  {
    v24 = 0;
LABEL_12:
    v66 = v14;
    *&v65 = v24;
    sub_2584F6C74(&v65, v64);
    v28 = v67;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_25850D118(v64, v21, *(&v21 + 1), v29);

    v67 = v28;
    goto LABEL_13;
  }

  v24 = 0;
  v25 = (v22 + 32);
  while (1)
  {
    v26 = *v25++;
    v27 = __CFADD__(v24, v26);
    v24 += v26;
    if (v27)
    {
      break;
    }

    if (!--v23)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2584F91A0()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v15 = MEMORY[0x277D84F90];
  sub_2584F9398(0, v2, 0);
  v3 = v15;
  v4 = (v1 + 32);
  do
  {
    v5 = *v4++;
    v6 = sub_258533DFC();
    v16 = v3;
    v9 = *(v3 + 16);
    v8 = *(v3 + 24);
    if (v9 >= v8 >> 1)
    {
      v11 = v6;
      v12 = v7;
      sub_2584F9398((v8 > 1), v9 + 1, 1);
      v7 = v12;
      v6 = v11;
      v3 = v16;
    }

    *(v3 + 16) = v9 + 1;
    v10 = v3 + 16 * v9;
    *(v10 + 32) = v6;
    *(v10 + 40) = v7;
    --v2;
  }

  while (v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930758, &qword_25853A7E0);
  sub_2584B78C8();
  v13 = sub_2585333CC();

  return v13;
}

void *sub_2584F92F8(void *a1, int64_t a2, char a3)
{
  result = sub_2584B60D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2584F9318(void *a1, int64_t a2, char a3)
{
  result = sub_2584B621C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2584F9338(size_t a1, int64_t a2, char a3)
{
  result = sub_2584B6240(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2584F9358(void *a1, int64_t a2, char a3)
{
  result = sub_2584B6418(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2584F9378(char *a1, int64_t a2, char a3)
{
  result = sub_2584B6570(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2584F9398(char *a1, int64_t a2, char a3)
{
  result = sub_2584B6674(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2584F93B8()
{
  if (*v0 >= 2u)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_2584F9430(uint64_t a1)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = v1;
  return MEMORY[0x2822009F8](sub_2584F9450, v1, 0);
}

uint64_t sub_2584F9450()
{
  v28 = v0;
  result = sub_2584FBFF4(*(v0 + 240), v0 + 16);
  v2 = *(v0 + 16);
  v3 = *(v0 + 65);
  if (v3 <= 4)
  {
    if (*(v0 + 65) <= 1u)
    {
      v12 = *(v0 + 248);
      if (*(v0 + 65))
      {
        v22 = *(v0 + 32);
        *(v0 + 72) = *(v0 + 16);
        *(v0 + 88) = v22;
        *(v0 + 104) = *(v0 + 48);
        *(v0 + 120) = *(v0 + 64);
        sub_2584F9EA4(v0 + 72);
        sub_2584FC050(v0 + 72);
      }

      else
      {
        sub_2584F9CDC(v2 & 1, *(v0 + 24));
      }
    }

    else if (v3 == 2)
    {
      v13 = *(v0 + 248);
      v14 = *(v0 + 16);
      swift_getErrorValue();
      v15 = *(v0 + 208);
      *(v13 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_endReason) = sub_25852F0FC(*(v0 + 216), *(v0 + 224));
      sub_25853293C();
      v17 = v16;
      sub_2584FA208(v16);
      sub_2584F9F9C(v17);
    }

    else
    {
      v4 = *(v0 + 248);
      if (v3 == 3)
      {
        sub_25853293C();
        v6 = v5;
        sub_2584FA208(v5);
        v7 = v4 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceStartTime;
        *v7 = v6;
        *(v7 + 8) = 0;
        *(v4 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_currentInterfaceType) = v2;
        v8 = v4 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationStartTime;
        *v8 = v6;
        *(v8 + 8) = 0;
      }

      else
      {
        v21 = *(v0 + 56);
        sub_258464C18((v0 + 16), v0 + 168);
        v27 = v21;
        sub_2584FB0C4((v0 + 168), &v27);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
      }
    }

LABEL_22:
    v26 = *(v0 + 8);

    return v26();
  }

  if (v3 - 5 >= 2)
  {
    if (v3 != 7)
    {
      v18 = *(v0 + 248);
      if (*(v0 + 64) || *(v0 + 40) | v2 | *(v0 + 48) | *(v0 + 56) | *(v0 + 32) | *(v0 + 24))
      {
        v23 = *(v18 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationCount);
        v24 = __CFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          __break(1u);
          return result;
        }

        *(v18 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationCount) = v25;
        sub_2584FA38C();
      }

      else
      {
        sub_25853293C();
        v20 = v19;
        sub_2584FA208(v19);
        sub_2584F9F9C(v20);
      }

      goto LABEL_22;
    }
  }

  sub_258464C18((v0 + 16), v0 + 128);
  v9 = swift_task_alloc();
  *(v0 + 256) = v9;
  *v9 = v0;
  v9[1] = sub_2584F9708;
  v10 = *(v0 + 240);
  v11 = *(v0 + 248);

  return sub_2584FB3CC(v10, v0 + 128);
}

uint64_t sub_2584F9708()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 128));

  return MEMORY[0x2822009F8](sub_258473E4C, v3, 0);
}

uint64_t sub_2584F9820()
{
  v1[38] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315D8, &unk_25853DA70);
  v1[39] = v2;
  v3 = *(v2 - 8);
  v1[40] = v3;
  v4 = *(v3 + 64) + 15;
  v1[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584F98EC, v0, 0);
}

uint64_t sub_2584F98EC()
{
  v1 = v0[38];
  v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_state);
  if (v2 == 2)
  {
    sub_2584FBD90();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v7 = v0[41];

    v8 = v0[1];
  }

  else
  {
    if (v2 == 1)
    {
      *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_state) = 2;
      v3 = swift_task_alloc();
      v0[42] = v3;
      *v3 = v0;
      v3[1] = sub_2584F9A40;
      v4 = v0[38];

      return sub_2584FA550((v0 + 2));
    }

    *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_state) = 2;
    v9 = v0[41];

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_2584F9A40()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 328);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 304);

    return MEMORY[0x2822009F8](sub_2584F9B8C, v8, 0);
  }
}

uint64_t sub_2584F9B8C()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  *(v0 + 280) = &type metadata for SessionEndReport;
  *(v0 + 288) = &off_286990138;
  v5 = swift_allocObject();
  *(v0 + 256) = v5;
  v6 = *(v0 + 224);
  v5[13] = *(v0 + 208);
  v5[14] = v6;
  v5[15] = *(v0 + 240);
  v7 = *(v0 + 160);
  v5[9] = *(v0 + 144);
  v5[10] = v7;
  v8 = *(v0 + 192);
  v5[11] = *(v0 + 176);
  v5[12] = v8;
  v9 = *(v0 + 96);
  v5[5] = *(v0 + 80);
  v5[6] = v9;
  v10 = *(v0 + 128);
  v5[7] = *(v0 + 112);
  v5[8] = v10;
  v11 = *(v0 + 32);
  v5[1] = *(v0 + 16);
  v5[2] = v11;
  v12 = *(v0 + 64);
  v5[3] = *(v0 + 48);
  v5[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E0, &unk_25853E240);
  sub_2585337EC();
  (*(v2 + 8))(v1, v3);
  *(v0 + 296) = 0;
  sub_2585337FC();
  v13 = *(v0 + 328);

  v14 = *(v0 + 8);

  return v14();
}

void sub_2584F9CDC(char a1, double a2)
{
  v3 = v2 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatingInfo;
  *v3 = a1 & 1;
  *(v3 + 8) = a2;
  if ((a1 & 1) == 0)
  {
    sub_2584B792C(byte_28698BC78, v19);
    v4 = (v2 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationTimeHistogram);
    swift_beginAccess();
    v5 = v4[1];
    v18[0] = *v4;
    v18[1] = v5;
    v6 = v4[3];
    v18[2] = v4[2];
    v18[3] = v6;
    v7 = v19[1];
    *v4 = v19[0];
    v4[1] = v7;
    v8 = v19[3];
    v4[2] = v19[2];
    v4[3] = v8;
    sub_2584FBF00(v18);
    if (!*v4)
    {
      if (qword_27F92F8F8 != -1)
      {
        swift_once();
      }

      v9 = sub_258532A4C();
      __swift_project_value_buffer(v9, qword_27F93D038);
      v10 = sub_258532A2C();
      v11 = sub_2585338CC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v17 = v13;
        *v12 = 136315138;
        v14 = MEMORY[0x259C81630](byte_28698BC78, MEMORY[0x277D84D38]);
        v16 = sub_2584713B0(v14, v15, &v17);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_25845E000, v10, v11, "Failed to create migrationTimeHistogram with buckets=%s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x259C82900](v13, -1, -1);
        MEMORY[0x259C82900](v12, -1, -1);
      }
    }
  }
}

void sub_2584F9EA4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo;
  v10 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo);
  v11 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 8);
  v12 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 16);
  v13 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 24);
  v14 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 32);
  v15 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 40);
  *v9 = *a1;
  *(v9 + 8) = v3;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  v16 = *(v9 + 48);
  *(v9 + 48) = v8;
  sub_2584FBEA4(a1, v22);
  sub_2584A5834(v10, v11);
  sub_25853293C();
  v18 = v17;
  v19 = v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activationCompleteTime;
  *v19 = v17;
  *(v19 + 8) = 0;
  sub_2584FA0C8(v17);
  v20 = *(a1 + 48);
  v21 = v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceStartTime;
  *v21 = v18;
  *(v21 + 8) = 0;
  *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_currentInterfaceType) = v20;
}

void sub_2584F9F9C(double a1)
{
  if ((*(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activationCompleteTime + 8) & 1) == 0)
  {
    v4 = a1 - *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activationCompleteTime);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -1.0)
    {
      if (v4 < 4294967300.0)
      {
        v5 = v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_sessionDurationSeconds;
        *v5 = v4;
        *(v5 + 4) = 0;
        return;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  oslog = sub_258532A2C();
  v2 = sub_2585338EC();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25845E000, oslog, v2, "activated start time is unavailable", v3, 2u);
    MEMORY[0x259C82900](v3, -1, -1);
  }
}

void sub_2584FA0C8(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatingInfo) != 2)
  {
    v4 = (a1 - *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatingInfo + 8)) * 1000.0;
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -1.0)
    {
      if (v4 < 4294967300.0)
      {
        v5 = v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activationTimeMilliSeconds;
        *v5 = v4;
        *(v5 + 4) = 0;
        return;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  oslog = sub_258532A2C();
  v2 = sub_2585338EC();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25845E000, oslog, v2, "no activating info", v3, 2u);
    MEMORY[0x259C82900](v3, -1, -1);
  }
}

void sub_2584FA208(double a1)
{
  if ((*(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceStartTime + 8) & 1) == 0)
  {
    v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_currentInterfaceType);
    if (v2 != 6)
    {
      v6 = a1 - *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceStartTime);
      if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v6 > -1.0)
      {
        if (v6 < 1.84467441e19)
        {
          if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram))
          {
            sub_2584B58A8(v2, v6);
            return;
          }

          goto LABEL_18;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93D038);
  oslog = sub_258532A2C();
  v4 = sub_2585338CC();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25845E000, oslog, v4, "Unable to compute duration on interface", v5, 2u);
    MEMORY[0x259C82900](v5, -1, -1);
  }
}

void sub_2584FA38C()
{
  v1 = v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationStartTime;
  if (*(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationStartTime + 8))
  {
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v2 = sub_258532A4C();
    __swift_project_value_buffer(v2, qword_27F93D038);
    oslog = sub_258532A2C();
    v3 = sub_2585338CC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_25845E000, oslog, v3, "No migration start time", v4, 2u);
      MEMORY[0x259C82900](v4, -1, -1);
    }

    return;
  }

  v5 = *v1;
  sub_25853293C();
  v7 = (v6 - v5) * 1000.0;
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v7 <= -1.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v7 >= 1.84467441e19)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v8 = sub_2584F93D0();
  if (*v9)
  {
    sub_2584B58A8(v7, 1);
  }

  (v8)(v11, 0);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_2584FA550(uint64_t a1)
{
  *(v2 + 312) = a1;
  *(v2 + 320) = v1;
  return MEMORY[0x2822009F8](sub_2584FA570, v1, 0);
}

uint64_t sub_2584FA570()
{
  v1 = *(v0[40] + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatingInfo);
  v0[41] = v1;
  if (v1 == 2)
  {
    sub_2584FBD90();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[42] = v5;
    *v5 = v0;
    v5[1] = sub_2584FA68C;
    v6 = v0[40];

    return sub_2584FAC80();
  }
}

uint64_t sub_2584FA68C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 296) = v1;
  *(v3 + 304) = a1;
  v4 = *(v2 + 336);
  v5 = *(v2 + 320);
  v7 = *v1;

  return MEMORY[0x2822009F8](sub_2584FA7A0, v5, 0);
}

uint64_t sub_2584FA7A0()
{
  v1 = *(v0 + 320);
  v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo;
  v4 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo);
  v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 8);
  v5 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 16);
  v6 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 24);
  v7 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 32);
  v8 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 40);
  v9 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 48);
  if (v3)
  {
    v10 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 40);

    v76 = v8;
    v77 = v7;
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  sub_2584FBDE4(v4, v3);
  sub_2584A5834(v4, v3);
  v11 = *v2;
  v12 = *(v2 + 8);
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  v15 = *(v2 + 32);
  v16 = *(v2 + 40);
  v17 = *(v2 + 48);
  if (v12)
  {
    v18 = *(v2 + 8);

    v74 = v11;
  }

  else
  {
    v74 = 0;
  }

  sub_2584FBDE4(v11, v12);
  sub_2584A5834(v11, v12);
  v19 = *v2;
  v20 = *(v2 + 8);
  v21 = *(v2 + 16);
  v22 = *(v2 + 24);
  v23 = *(v2 + 32);
  v24 = *(v2 + 40);
  v25 = *(v2 + 48);
  v75 = v12;
  if (v20)
  {

    v72 = v22;
    v73 = v21;
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  v26 = *(v0 + 320);
  sub_2584FBDE4(v19, v20);
  sub_2584A5834(v19, v20);
  v28 = *(v26 + 112);
  v27 = *(v26 + 120);
  v30 = *(v26 + 128);
  v29 = *(v26 + 136);
  if (*(v26 + 145) == 1)
  {
    if (*(v26 + 144) || v30 | v27 | v28 | v29)
    {
      *(v26 + 144);
    }
  }

  else if ((*(v26 + 144) & 1) == 0)
  {
    v31 = objc_allocWithZone(MEMORY[0x277CF0B98]);
    *(v0 + 344) = v28;
    *(v0 + 352) = v27;
    *(v0 + 360) = v30;
    *(v0 + 368) = v29;
    v32 = [v31 initWithAuditToken_];
    v33 = [v32 bundleID];

    if (v33)
    {
      v34 = sub_25853342C();
      v70 = v35;
      v71 = v34;

      goto LABEL_18;
    }
  }

  v70 = 0;
  v71 = 0;
LABEL_18:
  v36 = *(v0 + 320);
  v37 = *(v36 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_sessionDurationSeconds);
  v67 = *(v36 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_sessionDurationSeconds + 4);
  v38 = (v36 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activationTimeMilliSeconds);
  v68 = *v38;
  v69 = v37;
  v39 = *(v38 + 4);
  v40 = *v2;
  v41 = *(v2 + 8);
  v42 = *(v2 + 16);
  v43 = *(v2 + 24);
  v45 = *(v2 + 32);
  v44 = *(v2 + 40);
  v46 = *(v2 + 48);
  v47 = *v2;
  if (v41)
  {
    sub_2584FBDE4(v47, *(v2 + 8));
    sub_2584A5834(v40, v41);
  }

  else
  {
    sub_2584FBDE4(v47, 0);
    sub_2584A5834(v40, 0);
    v46 = 0;
  }

  v48 = *(v0 + 320);
  v49 = *(v48 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_endReason);
  v50 = *(v48 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationCount);
  v51 = (v48 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationTimeHistogram);
  result = swift_beginAccess();
  v53 = *v51;
  v54 = v51[1];
  v55 = v51[3];
  *(v0 + 112) = v51[2];
  *(v0 + 128) = v55;
  *(v0 + 80) = v53;
  *(v0 + 96) = v54;
  v56 = v48 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram;
  v57 = *(v48 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram);
  v58 = *(v48 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 16);
  v59 = *(v48 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 48);
  *(v0 + 48) = *(v48 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 32);
  *(v0 + 64) = v59;
  *(v0 + 16) = v57;
  *(v0 + 32) = v58;
  v60 = *(v0 + 16);
  if (v60)
  {
    v61 = dword_25853DB58[v49];
    v62 = v41 == 0;
    v63 = *(v0 + 304);
    v64 = *(v0 + 312);
    v65 = *(v0 + 328) & 1;
    v78 = v62;
    v79 = *v51;
    v80 = v51[1];
    v81 = v51[2];
    v82 = v51[3];
    v86 = *(v56 + 56);
    v84 = *(v56 + 24);
    v85 = *(v56 + 40);
    v83 = *(v56 + 8);
    sub_2584FBE34(v0 + 80, v0 + 144);
    sub_2584FBE34(v0 + 16, v0 + 208);
    *v64 = v77;
    *(v64 + 8) = v76;
    *(v64 + 16) = v74;
    *(v64 + 24) = v75;
    *(v64 + 32) = v73;
    *(v64 + 40) = v72;
    *(v64 + 48) = v65;
    *(v64 + 56) = v71;
    *(v64 + 64) = v70;
    *(v64 + 72) = v69;
    *(v64 + 76) = v67;
    *(v64 + 80) = v68;
    *(v64 + 84) = v39;
    *(v64 + 88) = v46;
    *(v64 + 92) = v78;
    *(v64 + 96) = v61;
    *(v64 + 100) = v50;
    *(v64 + 104) = v79;
    *(v64 + 120) = v80;
    *(v64 + 136) = v81;
    *(v64 + 152) = v82;
    *(v64 + 168) = v60;
    *(v64 + 176) = v83;
    *(v64 + 192) = v84;
    *(v64 + 208) = v85;
    *(v64 + 224) = v86;
    *(v64 + 232) = v63;
    v66 = *(v0 + 8);

    return v66();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2584FACA0()
{
  v1 = *(v0 + 280);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_streamEndReporters;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 288) = v3;
  v4 = *(v3 + 32);
  *(v0 + 328) = v4;
  v5 = -1;
  v6 = -1 << v4;
  if (-(-1 << v4) < 64)
  {
    v5 = ~(-1 << -(-1 << v4));
  }

  v7 = v5 & *(v3 + 64);
  *(v0 + 296) = MEMORY[0x277D84F90];

  if (v7)
  {
    v9 = 0;
LABEL_8:
    *(v0 + 304) = v7;
    *(v0 + 312) = v9;
    v11 = *(*(v8 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    *(v0 + 320) = v11;

    return MEMORY[0x2822009F8](sub_2584FAE04, v11, 0);
  }

  else
  {
    v10 = 0;
    while (((63 - v6) >> 6) - 1 != v10)
    {
      v9 = v10 + 1;
      v7 = *(v8 + 8 * v10++ + 72);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v12 = *(v0 + 8);
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_2584FAE04()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);
  sub_258464C30(v1 + 112, v0 + 16);
  v3 = *(v1 + 152);
  v4 = *(v1 + 232);
  v5 = *(v1 + 240);
  v6 = *(v1 + 248);
  v7 = *(v1 + 256);
  v8 = *(v1 + 272);
  *(v0 + 120) = *(v1 + 288);
  *(v0 + 104) = v8;
  *(v0 + 88) = v7;
  v9 = *(v1 + 216);
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;
  *(v0 + 128) = v9;

  return MEMORY[0x2822009F8](sub_2584FAEDC, v2, 0);
}

uint64_t sub_2584FAEDC()
{
  v1 = *(v0 + 296);
  sub_2584F86B4(v0 + 16, v0 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 296);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_17:
    v3 = sub_2584B5FB0(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_2584B5FB0((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 320);

  sub_2584F872C(v0 + 16);
  *(v3 + 2) = v5 + 1;
  v7 = &v3[120 * v5];
  v8 = *(v0 + 152);
  v9 = *(v0 + 184);
  v10 = *(v0 + 136);
  *(v7 + 4) = *(v0 + 168);
  *(v7 + 5) = v9;
  *(v7 + 2) = v10;
  *(v7 + 3) = v8;
  v11 = *(v0 + 216);
  v12 = *(v0 + 232);
  v13 = *(v0 + 200);
  *(v7 + 18) = *(v0 + 248);
  *(v7 + 7) = v11;
  *(v7 + 8) = v12;
  *(v7 + 6) = v13;
  v15 = *(v0 + 304);
  v14 = *(v0 + 312);
  *(v0 + 296) = v3;
  v16 = (v15 - 1) & v15;
  if (v16)
  {
    v17 = *(v0 + 288);
LABEL_10:
    *(v0 + 304) = v16;
    *(v0 + 312) = v14;
    v19 = *(*(v17 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v16)))));
    *(v0 + 320) = v19;

    return MEMORY[0x2822009F8](sub_2584FAE04, v19, 0);
  }

  else
  {
    while (1)
    {
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      v17 = *(v0 + 288);
      if (v18 >= (((1 << *(v0 + 328)) + 63) >> 6))
      {
        break;
      }

      v16 = *(v17 + 8 * v18 + 64);
      ++v14;
      if (v16)
      {
        v14 = v18;
        goto LABEL_10;
      }
    }

    v20 = *(v0 + 8);

    return v20(v3);
  }
}

void sub_2584FB0C4(void *a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = *(v6 + 24);
  sub_25853356C();
  v8 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_streamEndReporters;
  swift_beginAccess();
  if (!*(*(v3 + v8) + 16))
  {

    goto LABEL_8;
  }

  v9 = *(v3 + v8);

  sub_2584BC1D0(v26[0], v26[1]);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_8:
    sub_258464C30(a1, v26);
    v24[0] = v5;
    sub_258464C30(v3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_timeProvider, v25);
    type metadata accessor for StreamEndReporter();
    swift_allocObject();
    v16 = sub_2584FC184(v26, v24, v25);
    v17 = a1[4];
    v18 = v16;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v19 = *(v17 + 24);
    sub_25853356C();
    v20 = v25[0];
    v21 = v25[1];
    swift_beginAccess();

    v22 = *(v3 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v24 = *(v3 + v8);
    *(v3 + v8) = 0x8000000000000000;
    sub_25850D98C(v18, v20, v21, isUniquelyReferenced_nonNull_native);

    *(v3 + v8) = *v24;
    swift_endAccess();

    return;
  }

  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v12 = sub_258532A4C();
  __swift_project_value_buffer(v12, qword_27F93D038);
  v13 = sub_258532A2C();
  v14 = sub_2585338EC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_25845E000, v13, v14, "Stream is already registered for reporting", v15, 2u);
    MEMORY[0x259C82900](v15, -1, -1);
  }
}

uint64_t sub_2584FB3CC(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  return MEMORY[0x2822009F8](sub_2584FB3F0, v2, 0);
}

uint64_t sub_2584FB3F0()
{
  v28 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = *(v3 + 24);
  sub_25853356C();
  v6 = v0[10];
  v5 = v0[11];
  v7 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_streamEndReporters;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (*(v8 + 16) && (, v9 = sub_2584BC1D0(v6, v5), v11 = v10, , (v11 & 1) != 0))
  {
    v0[17] = *(*(v8 + 56) + 8 * v9);

    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = sub_2584FB6DC;
    v13 = v0[14];

    return sub_2584FC444(v13);
  }

  else
  {

    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v15 = v0[15];
    v16 = sub_258532A4C();
    __swift_project_value_buffer(v16, qword_27F93D038);
    sub_258464C30(v15, (v0 + 2));
    v17 = sub_258532A2C();
    v18 = sub_2585338CC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      v21 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      v22 = *(v21 + 24);
      sub_25853356C();
      v23 = v0[12];
      v24 = v0[13];
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      v25 = sub_2584713B0(v23, v24, &v27);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_25845E000, v17, v18, "Stream with identifier: %s is not registered for reporting", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x259C82900](v20, -1, -1);
      MEMORY[0x259C82900](v19, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    }

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_2584FB6DC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584FB7EC, v2, 0);
}

uint64_t sub_2584FB7EC()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2584FB84C()
{
  v1 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_reportStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E8, &qword_25853DA80);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_reportStreamContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E0, &unk_25853E240);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_logger;
  v6 = sub_258532A4C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_timeProvider));
  v7 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationTimeHistogram + 8);
  v8 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationTimeHistogram + 16);
  v9 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationTimeHistogram + 24);
  v10 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationTimeHistogram + 32);
  v11 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationTimeHistogram + 40);
  v12 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationTimeHistogram + 48);
  v13 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationTimeHistogram + 56);
  sub_2584FC0A4(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationTimeHistogram));
  v14 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 8);
  v15 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 16);
  v16 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 24);
  v17 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 32);
  v18 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 40);
  v19 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 48);
  v20 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 56);
  sub_2584FC0A4(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram));
  v21 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 16);
  v22 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 24);
  v23 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 32);
  v24 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 40);
  v25 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 48);
  sub_2584A5834(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 8));
  v26 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_streamEndReporters);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2584FB9CC()
{
  sub_2584FB84C();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for SessionEndReporter()
{
  result = qword_27F931598;
  if (!qword_27F931598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2584FBA4C()
{
  sub_2584FBC18(319, &qword_27F9315A8, MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2584FBC18(319, &qword_27F9315B0, MEMORY[0x277D858B0]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_258532A4C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2584FBC18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F931478, &qword_25853D5F0);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2584FBCB8()
{
  result = qword_27F9315B8;
  if (!qword_27F9315B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9315B8);
  }

  return result;
}

unint64_t sub_2584FBD10(uint64_t a1)
{
  result = sub_2584FBD38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584FBD38()
{
  result = qword_27F9315C0;
  if (!qword_27F9315C0)
  {
    type metadata accessor for SessionEndReporter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9315C0);
  }

  return result;
}

unint64_t sub_2584FBD90()
{
  result = qword_27F9315C8;
  if (!qword_27F9315C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9315C8);
  }

  return result;
}

uint64_t sub_2584FBDE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2584FBE34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315D0, &qword_25853E140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584FBF00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315D0, &qword_25853E140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2584FBF68()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[10];

  if (v0[15])
  {

    v5 = v0[16];

    v6 = v0[17];
  }

  v7 = v0[23];

  v8 = v0[24];

  v9 = v0[25];

  v10 = v0[31];

  return MEMORY[0x2821FE8E8](v0, 256, 7);
}

uint64_t sub_2584FC0A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2584FC100(uint64_t a1)
{
  result = sub_2584FBD90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584FC12C()
{
  result = qword_27F9315F0;
  if (!qword_27F9315F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9315F0);
  }

  return result;
}

uint64_t sub_2584FC184(uint64_t *a1, char *a2, uint64_t *a3)
{
  v4 = v3;
  v7 = *a2;
  swift_defaultActor_initialize();
  *(v4 + 200) = 0;
  *(v4 + 208) = 1;
  v8 = MEMORY[0x277D84F90];
  *(v4 + 216) = MEMORY[0x277D84F90];
  *(v4 + 224) = v8;
  sub_258464C30(a1, v4 + 112);
  *(v4 + 152) = v7;
  sub_258464C30(a3, v4 + 160);
  sub_2584B792C(byte_28698BCE8, &v23);
  if (v23)
  {
    *(v4 + 232) = v23;
    v9 = v25;
    *(v4 + 240) = v24;
    *(v4 + 256) = v9;
    *(v4 + 272) = v26;
    *(v4 + 288) = v27;
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v10 = sub_258532A4C();
    __swift_project_value_buffer(v10, qword_27F93D038);

    v11 = sub_258532A2C();
    v12 = sub_2585338AC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      v15 = *(v4 + 144);
      __swift_project_boxed_opaque_existential_1((v4 + 112), *(v4 + 136));
      v16 = *(v15 + 24);
      sub_25853356C();
      v17 = sub_2584713B0(v21, v22, &v28);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_25845E000, v11, v12, "streamID: %s initialized stream end reporter", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x259C82900](v14, -1, -1);
      MEMORY[0x259C82900](v13, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(a3);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_2584FCAF0();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v4 + 112));
    __swift_destroy_boxed_opaque_existential_1Tm((v4 + 160));
    v18 = *(v4 + 216);

    v19 = *(v4 + 224);

    type metadata accessor for StreamEndReporter();
    swift_defaultActor_destroy();
    __swift_destroy_boxed_opaque_existential_1Tm(a3);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t sub_2584FC444(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = v1;
  return MEMORY[0x2822009F8](sub_2584FC464, v1, 0);
}

uint64_t sub_2584FC464()
{
  v32 = v0;
  sub_2584FBFF4(*(v0 + 216), v0 + 16);
  v1 = *(v0 + 65);
  switch(v1)
  {
    case 7:
      v8 = *(v0 + 224);
      v9 = *(v0 + 56);
      swift_getErrorValue();
      v10 = *(v0 + 184);
      v11 = sub_25852F0FC(*(v0 + 192), *(v0 + 200));
      sub_2584FC8D0();
      v12 = *(v8 + 216);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 216) = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_2584B5EAC(0, *(v12 + 2) + 1, 1, v12);
        *(v8 + 216) = v12;
      }

      v15 = *(v12 + 2);
      v14 = *(v12 + 3);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v30 = sub_2584B5EAC((v14 > 1), v15 + 1, 1, v12);
        v16 = v15 + 1;
        v12 = v30;
      }

      v17 = dword_25853DD58[v11];
      *(v12 + 2) = v16;
      *&v12[4 * v15 + 32] = v17;
      *(v8 + 216) = v12;

      goto LABEL_15;
    case 6:
      v3 = *(v0 + 224);
      sub_2584FC8D0();
      v4 = *(v3 + 216);
      v5 = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 216) = v4;
      if ((v5 & 1) == 0)
      {
        v4 = sub_2584B5EAC(0, *(v4 + 2) + 1, 1, v4);
        *(v3 + 216) = v4;
      }

      v7 = *(v4 + 2);
      v6 = *(v4 + 3);
      if (v7 >= v6 >> 1)
      {
        v4 = sub_2584B5EAC((v6 > 1), v7 + 1, 1, v4);
      }

      *(v4 + 2) = v7 + 1;
      *&v4[4 * v7 + 32] = 0;
      *(v3 + 216) = v4;
      goto LABEL_15;
    case 5:
      v2 = *(v0 + 224);
      sub_2584FC7C0();
LABEL_15:
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      goto LABEL_22;
  }

  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 216);
  v19 = sub_258532A4C();
  __swift_project_value_buffer(v19, qword_27F93D038);
  sub_2584FBFF4(v18, v0 + 72);
  v20 = sub_258532A2C();
  v21 = sub_2585338CC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v23;
    *v22 = 136315138;
    sub_2584FBFF4(v0 + 72, v0 + 128);
    v24 = sub_25853347C();
    v26 = v25;
    sub_2584A57D8(v0 + 72);
    v27 = sub_2584713B0(v24, v26, &v31);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_25845E000, v20, v21, "Unexpected event=%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x259C82900](v23, -1, -1);
    MEMORY[0x259C82900](v22, -1, -1);
  }

  else
  {

    sub_2584A57D8(v0 + 72);
  }

  sub_2584A57D8(v0 + 16);
LABEL_22:
  v28 = *(v0 + 8);

  return v28();
}

void sub_2584FC7C0()
{
  if (*(v0 + 208) == 1)
  {
    sub_25853293C();
    *(v0 + 200) = v1;
    *(v0 + 208) = 0;
  }

  else
  {
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v2 = sub_258532A4C();
    __swift_project_value_buffer(v2, qword_27F93D038);
    oslog = sub_258532A2C();
    v3 = sub_2585338CC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_25845E000, oslog, v3, "Stream is already activated. Ignoring event.", v4, 2u);
      MEMORY[0x259C82900](v4, -1, -1);
    }
  }
}

void sub_2584FC8D0()
{
  if ((*(v0 + 208) & 1) == 0)
  {
    v4 = *(v0 + 200);
    sub_25853293C();
    v6 = v5 - v4;
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6 > -1.0)
    {
      if (v6 < 1.84467441e19)
      {
        sub_2584B58A8(v6, 1);
        *(v0 + 200) = 0;
        *(v0 + 208) = 1;
        return;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  __swift_project_value_buffer(v1, qword_27F93D038);
  oslog = sub_258532A2C();
  v2 = sub_2585338CC();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25845E000, oslog, v2, "activated start time is unavailable", v3, 2u);
    MEMORY[0x259C82900](v3, -1, -1);
  }
}

uint64_t sub_2584FCA50()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  v1 = v0[27];

  v2 = v0[28];

  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[31];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_2584FCAF0()
{
  result = qword_27F9315F8;
  if (!qword_27F9315F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9315F8);
  }

  return result;
}

unint64_t sub_2584FCB54(uint64_t a1)
{
  result = sub_2584FCAF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584FCB80()
{
  result = qword_27F931600;
  if (!qword_27F931600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931600);
  }

  return result;
}

uint64_t sub_2584FCBD4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_2584FCC14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9316A8, &qword_25853E1E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931658, &qword_25853E0F0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v37 = &v29 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931678, &unk_25853E130);
  v35 = *(v17 - 8);
  v36 = v17;
  v18 = *(v35 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v29 - v20;
  swift_defaultActor_initialize();
  v3[16] = 0;
  *(v3 + OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_state) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v30 = v13;
    v31 = a2;
    v32 = v12;
    v33 = v7;
    v34 = v6;
    v38 = MEMORY[0x277D84F90];
    sub_258533C1C();
    type metadata accessor for TelemetryProvider.ReporterContext();
    v23 = 32;
    do
    {
      v24 = swift_allocObject();
      *(v24 + 32) = 0;
      *(v24 + 16) = *(a1 + v23);
      swift_unknownObjectRetain();
      sub_258533BFC();
      v25 = *(v38 + 16);
      sub_258533C2C();
      sub_258533C3C();
      sub_258533C0C();
      v23 += 16;
      --v22;
    }

    while (v22);

    v26 = v38;
    v7 = v33;
    v6 = v34;
    a2 = v31;
    v12 = v32;
    v13 = v30;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  v3[14] = v26;
  v3[15] = a2;
  (*(v7 + 104))(v11, *MEMORY[0x277D858A0], v6);
  v27 = v37;
  sub_2585337BC();
  (*(v7 + 8))(v11, v6);
  (*(v35 + 32))(v3 + OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_eventStream, v21, v36);
  (*(v13 + 32))(v3 + OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_eventStreamContinuation, v27, v12);
  return v3;
}

uint64_t sub_2584FCF70(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2584FCF90, v1, 0);
}

uint64_t sub_2584FCF90()
{
  v25 = v0;
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_state;
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_state) > 2u)
  {
    v21 = v0[1];

    return v21();
  }

  else
  {
    v3 = v0[4];
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
      v22 = v0[4];
    }

    v4 = v0[3];
    v5 = sub_258532A4C();
    __swift_project_value_buffer(v5, qword_27F93D038);

    v6 = v4;
    v7 = sub_258532A2C();
    v8 = sub_2585338CC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[4];
      v23 = v0[3];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v10 = 136315394;
      v0[2] = v9;
      type metadata accessor for TelemetryProvider();
      sub_258502698(&qword_27F931688);
      v13 = sub_258533DFC();
      v15 = sub_2584713B0(v13, v14, &v24);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2112;
      v16 = v23;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v17;
      *v11 = v17;
      _os_log_impl(&dword_25845E000, v7, v8, "%s interrupted, error:%@", v10, 0x16u);
      sub_258465168(v11, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x259C82900](v12, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    *(v1 + v2) = 4;
    v18 = swift_task_alloc();
    v0[5] = v18;
    *v18 = v0;
    v18[1] = sub_258488CC4;
    v19 = v0[4];

    return sub_2585011DC();
  }
}

uint64_t sub_2584FD274(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931678, &unk_25853E130);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v21 - v12;
  v14 = sub_25853368C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v8, a1, v3);
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v4 + 32))(v17 + v16, v8, v3);
  *(v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v18 = sub_258476C88(0, 0, v13, &unk_25853E1A8, v17);
  v19 = *(v1 + 128);
  *(v1 + 128) = v18;
}

uint64_t sub_2584FD498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9316A0, &qword_25853E1B0);
  v5[27] = v6;
  v7 = *(v6 - 8);
  v5[28] = v7;
  v8 = *(v7 + 64) + 15;
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584FD564, 0, 0);
}

uint64_t sub_2584FD564()
{
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931678, &unk_25853E130);
  sub_2585336FC();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D858B8] + 4);
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_2584FD650;
  v6 = v0[29];
  v7 = v0[27];

  return MEMORY[0x2822005A8](v0 + 2, 0, 0, v7, v0 + 22);
}

uint64_t sub_2584FD650()
{
  v2 = *(*v1 + 240);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_2584FDAE0;
  }

  else
  {
    v3 = sub_2584FD760;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2584FD760()
{
  if (*(v0 + 65) == 255)
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
LABEL_9:
    v11 = *(v0 + 232);

    v12 = *(v0 + 8);

    return v12();
  }

  v1 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 88) = v1;
  *(v0 + 104) = *(v0 + 48);
  *(v0 + 120) = *(v0 + 64);
  if ((sub_25853376C() & 1) != 0 || (v2 = *(v0 + 208), Strong = swift_weakLoadStrong(), (*(v0 + 248) = Strong) == 0))
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    sub_2584A57D8(v0 + 72);
    goto LABEL_9;
  }

  v4 = Strong;
  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v0 + 72;
  v6 = *(MEMORY[0x277D858E8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 264) = v7;
  *v7 = v0;
  v7[1] = sub_2584FD90C;
  v8 = MEMORY[0x277D84F78] + 8;
  v9 = MEMORY[0x277D84F78] + 8;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v7, v8, v9, 0, 0, &unk_25853E1C0, v5, v10);
}

uint64_t sub_2584FD90C()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584FDA24, 0, 0);
}

uint64_t sub_2584FDA24()
{
  v1 = v0[31];

  sub_2584A57D8((v0 + 9));
  v2 = *(MEMORY[0x277D858B8] + 4);
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_2584FD650;
  v4 = v0[29];
  v5 = v0[27];

  return MEMORY[0x2822005A8](v0 + 2, 0, 0, v5, v0 + 22);
}

uint64_t sub_2584FDAE0()
{
  v22 = v0;
  v1 = v0[26];
  (*(v0[28] + 8))(v0[29], v0[27]);
  v2 = v0[22];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v5 = sub_258532A4C();
    __swift_project_value_buffer(v5, qword_27F93D038);

    v6 = v2;
    v7 = sub_258532A2C();
    v8 = sub_2585338CC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315394;
      v0[23] = v4;
      type metadata accessor for TelemetryProvider();
      sub_258502698(&qword_27F931688);
      v11 = sub_258533DFC();
      v13 = sub_2584713B0(v11, v12, &v21);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v0[24] = v2;
      v14 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      v15 = sub_25853347C();
      v17 = sub_2584713B0(v15, v16, &v21);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_25845E000, v7, v8, "%s failed to process event with error:%s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v10, -1, -1);
      MEMORY[0x259C82900](v9, -1, -1);

      goto LABEL_8;
    }
  }

LABEL_8:
  v18 = v0[29];

  v19 = v0[1];

  return v19();
}

uint64_t sub_2584FDD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[16] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584FDE40, a3, 0);
}

void sub_2584FDE68()
{
  v1 = *(v0 + 168);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v21 = *(v0 + 168);
    }

    v2 = sub_258533ACC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_20:
    v23 = *(v0 + 152);
    v22 = *(v0 + 160);

    v24 = *(v0 + 8);

    v24();
    return;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v27 = **(v0 + 128);
    v26 = v1 & 0xC000000000000001;
    v25 = *(v0 + 168) + 32;
    while (1)
    {
      if (v26)
      {
        v6 = MEMORY[0x259C81BF0](v3, *(v0 + 168));
      }

      else
      {
        v6 = *(v25 + 8 * v3);
      }

      v8 = *(v0 + 152);
      v7 = *(v0 + 160);
      v9 = *(v0 + 144);
      v10 = sub_25853368C();
      v11 = *(v10 - 8);
      (*(v11 + 56))(v7, 1, 1, v10);
      sub_2584FBFF4(v9, v0 + 16);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = (v12 + 16);
      *(v12 + 24) = 0;
      *(v12 + 32) = v6;
      v14 = *(v0 + 32);
      *(v12 + 40) = *(v0 + 16);
      *(v12 + 56) = v14;
      *(v12 + 72) = *(v0 + 48);
      *(v12 + 88) = *(v0 + 64);
      sub_25847B6EC(v7, v8);
      LODWORD(v8) = (*(v11 + 48))(v8, 1, v10);

      v15 = *(v0 + 152);
      if (v8 == 1)
      {
        sub_258465168(*(v0 + 152), &qword_27F92FB78, &qword_2585368F0);
        if (!*v13)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_25853367C();
        (*(v11 + 8))(v15, v10);
        if (!*v13)
        {
LABEL_14:
          v17 = 0;
          v19 = 0;
          goto LABEL_15;
        }
      }

      v16 = *(v12 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = sub_25853362C();
      v19 = v18;
      swift_unknownObjectRelease();
LABEL_15:
      v20 = swift_allocObject();
      *(v20 + 16) = &unk_25853E1D0;
      *(v20 + 24) = v12;

      if (v19 | v17)
      {
        v4 = v0 + 72;
        *(v0 + 72) = 0;
        *(v0 + 80) = 0;
        *(v0 + 88) = v17;
        *(v0 + 96) = v19;
      }

      else
      {
        v4 = 0;
      }

      ++v3;
      v5 = *(v0 + 160);
      *(v0 + 104) = 1;
      *(v0 + 112) = v4;
      *(v0 + 120) = v27;
      swift_task_create();

      sub_258465168(v5, &qword_27F92FB78, &qword_2585368F0);
      if (v2 == v3)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
}

uint64_t sub_2584FE1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2584FE1FC, 0, 0);
}

uint64_t sub_2584FE1FC()
{
  v1 = *(v0[2] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_25848CAB4;
  v3 = v0[3];

  return sub_2584F9430(v3);
}

uint64_t sub_2584FE298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931680, &qword_25853E160);
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v9 = *(v8 + 64) + 15;
  v6[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584FE368, 0, 0);
}

uint64_t sub_2584FE368()
{
  v1 = v0[28];
  v2 = v0[23];
  v3 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E8, &qword_25853DA80);
  sub_2585336FC();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D858B8] + 4);
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_2584FE454;
  v6 = v0[28];
  v7 = v0[26];

  return MEMORY[0x2822005A8](v0 + 2, 0, 0, v7, v0 + 20);
}

uint64_t sub_2584FE454()
{
  v2 = *(*v1 + 232);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_2584FE8D0;
  }

  else
  {
    v3 = sub_2584FE564;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2584FE564()
{
  if (*(v0 + 40))
  {
    sub_258464C18((v0 + 16), v0 + 56);
    if ((sub_25853376C() & 1) == 0)
    {
      v1 = *(v0 + 192);
      Strong = swift_weakLoadStrong();
      *(v0 + 240) = Strong;
      if (Strong)
      {
        v3 = Strong;
        v4 = swift_task_alloc();
        *(v0 + 248) = v4;
        *(v4 + 16) = v3;
        *(v4 + 24) = v0 + 56;
        v5 = *(MEMORY[0x277D858E8] + 4);
        v6 = swift_task_alloc();
        *(v0 + 256) = v6;
        *v6 = v0;
        v6[1] = sub_2584FE6FC;
        v7 = MEMORY[0x277D84F78] + 8;
        v8 = MEMORY[0x277D84F78] + 8;
        v9 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x282200600](v6, v7, v8, 0, 0, &unk_25853E178, v4, v9);
      }
    }

    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  }

  else
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  }

  v10 = *(v0 + 224);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2584FE6FC()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584FE814, 0, 0);
}

uint64_t sub_2584FE814()
{
  v1 = v0[30];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v2 = *(MEMORY[0x277D858B8] + 4);
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_2584FE454;
  v4 = v0[28];
  v5 = v0[26];

  return MEMORY[0x2822005A8](v0 + 2, 0, 0, v5, v0 + 20);
}

uint64_t sub_2584FE8D0()
{
  v27 = v0;
  v1 = *(v0 + 192);
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  v2 = *(v0 + 160);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 200);
    v6 = sub_258532A4C();
    __swift_project_value_buffer(v6, qword_27F93D038);

    v7 = v2;
    v8 = sub_258532A2C();
    v9 = sub_2585338CC();

    if (os_log_type_enabled(v8, v9))
    {
      v25 = *(v0 + 200);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v10 = 136315650;
      *(v0 + 168) = v4;
      type metadata accessor for TelemetryProvider();
      sub_258502698(&qword_27F931688);
      v12 = sub_258533DFC();
      v14 = sub_2584713B0(v12, v13, &v26);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      *(v0 + 144) = *(v25 + 16);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931690, &qword_25853E168);
      v15 = sub_25853347C();
      v17 = sub_2584713B0(v15, v16, &v26);

      *(v10 + 14) = v17;
      *(v10 + 22) = 2080;
      *(v0 + 176) = v2;
      v18 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      v19 = sub_25853347C();
      v21 = sub_2584713B0(v19, v20, &v26);

      *(v10 + 24) = v21;
      _os_log_impl(&dword_25845E000, v8, v9, "%s reporter:%s reportStream interrupted with error:%s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);

      goto LABEL_8;
    }
  }

LABEL_8:
  v22 = *(v0 + 224);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2584FEBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[14] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584FEC9C, 0, 0);
}

uint64_t sub_2584FEC9C()
{
  v1 = *(*(v0 + 120) + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v28 = **(v0 + 112);
    v3 = (v1 + 32);
    v4 = sub_25853368C();
    v5 = *(v4 - 8);
    v26 = *(v5 + 56);
    v25 = (v5 + 48);
    v24 = (v5 + 8);
    v27 = v4;
    do
    {
      v9 = *(v0 + 136);
      v8 = *(v0 + 144);
      v11 = *(v0 + 120);
      v10 = *(v0 + 128);
      v29 = *v3;
      v26(v8, 1, 1, v4);
      sub_258464C30(v10, v0 + 16);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = (v12 + 16);
      *(v12 + 24) = 0;
      *(v12 + 32) = v29;
      sub_258464C18((v0 + 16), v12 + 48);
      *(v12 + 88) = v11;
      sub_25847B6EC(v8, v9);
      LODWORD(v9) = (*v25)(v9, 1, v4);
      swift_unknownObjectRetain_n();

      v14 = *(v0 + 136);
      if (v9 == 1)
      {
        sub_258465168(*(v0 + 136), &qword_27F92FB78, &qword_2585368F0);
        if (*v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_25853367C();
        (*v24)(v14, v4);
        if (*v13)
        {
LABEL_9:
          v17 = *(v12 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = sub_25853362C();
          v16 = v18;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_10:
      v19 = swift_allocObject();
      *(v19 + 16) = &unk_25853E188;
      *(v19 + 24) = v12;

      if (v16 | v15)
      {
        v6 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v15;
        *(v0 + 80) = v16;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 144);
      *(v0 + 88) = 1;
      *(v0 + 96) = v6;
      *(v0 + 104) = v28;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_258465168(v7, &qword_27F92FB78, &qword_2585368F0);
      ++v3;
      --v2;
      v4 = v27;
    }

    while (v2);
  }

  v21 = *(v0 + 136);
  v20 = *(v0 + 144);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2584FEFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a5;
  v7[8] = a7;
  v7[6] = a4;
  ObjectType = swift_getObjectType();
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v7[9] = v13;
  *v13 = v7;
  v13[1] = sub_2584FF10C;

  return v15(a6, ObjectType, a5);
}

uint64_t sub_2584FF10C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2584FF240, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2584FF240()
{
  v27 = v0;
  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = sub_258532A4C();
  __swift_project_value_buffer(v4, qword_27F93D038);

  swift_unknownObjectRetain();
  v5 = v1;
  v6 = sub_258532A2C();
  v7 = sub_2585338CC();

  swift_unknownObjectRelease();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 80);
  if (v8)
  {
    v10 = *(v0 + 64);
    v25 = *(v0 + 48);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315650;
    *(v0 + 32) = v10;
    type metadata accessor for TelemetryProvider();
    sub_258502698(&qword_27F931688);
    v13 = sub_258533DFC();
    v15 = sub_2584713B0(v13, v14, &v26);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v0 + 16) = v25;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931698, &qword_25853E198);
    v16 = sub_25853347C();
    v18 = sub_2584713B0(v16, v17, &v26);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2080;
    *(v0 + 40) = v9;
    v19 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    v20 = sub_25853347C();
    v22 = sub_2584713B0(v20, v21, &v26);

    *(v11 + 24) = v22;
    _os_log_impl(&dword_25845E000, v6, v7, "%s failed to publish report to server:%s with error:%s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v12, -1, -1);
    MEMORY[0x259C82900](v11, -1, -1);
  }

  else
  {
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2584FF530()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_state);
  if (v2 == 3)
  {
    v3 = 1;
    goto LABEL_5;
  }

  if (v2 == 4)
  {
    v3 = 2;
LABEL_5:
    sub_2584A5784();
    swift_allocError();
    *v4 = v3;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }

  *(v1 + OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_state) = 3;
  if (v2)
  {
    v7 = v0[2];
    sub_258502698(&qword_27F931668);
    v8 = *(MEMORY[0x277D859B8] + 4);
    v9 = swift_task_alloc();
    v0[3] = v9;
    *v9 = v0;
    v9[1] = sub_2584FF730;
    v10 = v0[2];

    return MEMORY[0x282200740]();
  }

  else
  {
    v11 = swift_task_alloc();
    v0[5] = v11;
    *v11 = v0;
    v11[1] = sub_2584FF8EC;
    v12 = v0[2];

    return sub_2585011DC();
  }
}

uint64_t sub_2584FF730()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_2584FF9E4;
  }

  else
  {
    v6 = sub_2584FF85C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584FF85C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2584FF8EC;
  v2 = *(v0 + 16);

  return sub_2585011DC();
}

uint64_t sub_2584FF8EC()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2584FF9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584FFAA8, a3, 0);
}

void sub_2584FFAA8()
{
  v1 = *(v0[10] + 112);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v18 = *(v0[10] + 112);
    }

    v19 = *(v0[10] + 112);
    v20 = sub_258533ACC();
    v1 = v19;
    v2 = v20;
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_20:
    v21 = v0[10];
    v22 = sub_258502698(&qword_27F931668);
    v23 = swift_task_alloc();
    v0[13] = v23;
    *v23 = v0;
    v23[1] = sub_2584FFE48;
    v24 = v0[9];

    sub_25850037C(v21, v22);
    return;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v26 = *v0[9];
    v27 = v1;
    v25 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v25)
      {
        v6 = MEMORY[0x259C81BF0](v3);
      }

      else
      {
        v6 = *(v1 + 8 * v3 + 32);
      }

      v8 = v0[11];
      v7 = v0[12];
      v9 = sub_25853368C();
      v10 = *(v9 - 8);
      (*(v10 + 56))(v7, 1, 1, v9);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      v11[4] = v6;
      sub_25847B6EC(v7, v8);
      LODWORD(v8) = (*(v10 + 48))(v8, 1, v9);

      v13 = v0[11];
      if (v8 == 1)
      {
        sub_258465168(v0[11], &qword_27F92FB78, &qword_2585368F0);
        if (!*v12)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_25853367C();
        (*(v10 + 8))(v13, v9);
        if (!*v12)
        {
LABEL_14:
          v15 = 0;
          v17 = 0;
          goto LABEL_15;
        }
      }

      v14 = v11[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_25853362C();
      v17 = v16;
      swift_unknownObjectRelease();
LABEL_15:

      if (v17 | v15)
      {
        v4 = v0 + 2;
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v15;
        v0[5] = v17;
      }

      else
      {
        v4 = 0;
      }

      ++v3;
      v5 = v0[12];
      v0[6] = 1;
      v0[7] = v4;
      v0[8] = v26;
      swift_task_create();

      sub_258465168(v5, &qword_27F92FB78, &qword_2585368F0);
      v1 = v27;
      if (v2 == v3)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
}

uint64_t sub_2584FFE48()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2584FFF9C()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_258500030;

  return sub_2584F9820();
}

uint64_t sub_258500030()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_258500160, 0, 0);
  }
}

uint64_t sub_258500160()
{
  v1 = *(v0[2] + 32);
  v0[4] = v1;
  if (v1)
  {
    v2 = *(MEMORY[0x277D857D0] + 4);

    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_258500264;
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    v6 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 6, v1, v6, v4, v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_258500264()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_258485020, 0, 0);
}

uint64_t sub_25850037C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_25853362C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x2822009F8](sub_258500410, v4, v6);
}

uint64_t sub_258500410()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  if (sub_2585337AC())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = *(MEMORY[0x277D85818] + 4);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931670, &qword_25853E128);
    *v4 = v0;
    v4[1] = sub_258500548;
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);

    return MEMORY[0x2822004D0](v0 + 96, v8, v6, v5);
  }
}

uint64_t sub_258500548()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_258500794;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_258500664;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_258500664()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    if (sub_2585337AC())
    {
      if (v2)
      {
        swift_willThrow();
      }

      v4 = *(v0 + 8);

      return v4();
    }

    *(v0 + 72) = v2;
  }

  v6 = *(MEMORY[0x277D85818] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931670, &qword_25853E128);
  *v7 = v0;
  v7[1] = sub_258500548;
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return MEMORY[0x2822004D0](v0 + 96, v11, v9, v8);
}

uint64_t sub_258500794()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  v2 = v0[7];
  v3 = v0[8];
  if (sub_2585337AC())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[9] = v1;
    v6 = *(MEMORY[0x277D85818] + 4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931670, &qword_25853E128);
    *v7 = v0;
    v7[1] = sub_258500548;
    v9 = v0[3];
    v10 = v0[4];
    v11 = v0[2];

    return MEMORY[0x2822004D0](v0 + 12, v11, v9, v8);
  }
}

uint64_t sub_2585008D0()
{
  v1[22] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E8, &qword_25853DA80);
  v1[25] = v3;
  v4 = *(v3 - 8);
  v1[26] = v4;
  v1[27] = *(v4 + 64);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2585009F4, v0, 0);
}

uint64_t sub_2585009F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3[22] + 112);
  v3[30] = v4;
  if (v4 >> 62)
  {
    v5 = sub_258533ACC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_state;
  v3[31] = v5;
  v3[32] = v6;
  if (v5)
  {
    v7 = v3[30];
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x259C81BF0](0);
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v5, v7, a3);
      }

      v8 = *(v7 + 32);
    }

    v3[33] = v9;
    v3[34] = 1;
    v7 = *(v9 + 16);
    v3[35] = v7;
    v5 = sub_258500B34;
    a3 = 0;

    return MEMORY[0x2822009F8](v5, v7, a3);
  }

  v11 = v3[28];
  v10 = v3[29];
  v13 = v3[23];
  v12 = v3[24];

  v14 = v3[1];

  return v14();
}

uint64_t sub_258500B34()
{
  v1 = *(v0 + 280);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_state;
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_state))
  {
    sub_2584FBD90();
    v3 = swift_allocError();
    *v4 = 0;
LABEL_3:
    v5 = *(v0 + 176);
    *(v0 + 304) = v3;
    swift_willThrow();
    v6 = sub_25850114C;
    goto LABEL_6;
  }

  v7 = sub_2584F4014();
  sub_2584B792C(v7, (v0 + 16));
  v8 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram);
  v9 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 48);
  v11 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram);
  v10 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 16);
  *(v0 + 112) = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 32);
  *(v0 + 128) = v9;
  *(v0 + 80) = v11;
  *(v0 + 96) = v10;
  v12 = *(v0 + 32);
  v13 = *(v0 + 48);
  v14 = *(v0 + 64);
  *v8 = *(v0 + 16);
  v8[1] = v12;
  v8[2] = v13;
  v8[3] = v14;
  sub_258465168(v0 + 80, &qword_27F9315D0, &qword_25853E140);
  if (!*v8)
  {
    sub_2584FBD90();
    v3 = swift_allocError();
    *v21 = 3;
    goto LABEL_3;
  }

  v15 = *(v0 + 280);
  v16 = *(v0 + 232);
  v17 = *(v0 + 200);
  v18 = *(v0 + 208);
  v5 = *(v0 + 176);
  *(v1 + v2) = 1;
  v19 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_reportStream;
  v20 = *(v18 + 16);
  *(v0 + 288) = v20;
  *(v0 + 296) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v16, v15 + v19, v17);
  v6 = sub_258500CB0;
LABEL_6:

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258500CB0()
{
  v51 = v0[36];
  v52 = v0[37];
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v53 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v55 = v5;
  v6 = v0[22];
  v56 = v0[23];
  v57 = v0[33];
  v7 = sub_25853368C();
  v54 = *(v7 - 8);
  (*(v54 + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = v1;
  v10 = v4;
  v51(v2, v9, v4);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = (v53 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v3 + 32))(v13 + v11, v2, v10);
  *(v13 + v12) = v8;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v57;
  sub_25847B6EC(v55, v56);
  LODWORD(v3) = (*(v54 + 48))(v56, 1, v7);

  v14 = v0[23];
  if (v3 == 1)
  {
    sub_258465168(v0[23], &qword_27F92FB78, &qword_2585368F0);
  }

  else
  {
    sub_25853367C();
    (*(v54 + 8))(v14, v7);
  }

  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25853362C();
    v19 = v18;
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  sub_258465168(v0[24], &qword_27F92FB78, &qword_2585368F0);
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_25853E150;
  *(v20 + 24) = v13;
  if (v19 | v17)
  {
    v0[18] = 0;
    v0[19] = 0;
    v0[20] = v17;
    v0[21] = v19;
  }

  v22 = v0[32];
  v21 = v0[33];
  v23 = v0[29];
  v24 = v0[25];
  v25 = v0[26];
  v26 = v0[22];
  v27 = swift_task_create();
  (*(v25 + 8))(v23, v24);
  v28 = *(v21 + 32);
  *(v21 + 32) = v27;

  v29 = *(v26 + v22);
  if (v29 == 3)
  {
    v40 = 1;
LABEL_15:
    v41 = v0[33];
    sub_2584A5784();
    swift_allocError();
    *v42 = v40;
    swift_willThrow();

    v44 = v0[28];
    v43 = v0[29];
    v46 = v0[23];
    v45 = v0[24];

    v39 = v0[1];
    goto LABEL_16;
  }

  if (v29 != 1)
  {
    v40 = 2;
    goto LABEL_15;
  }

  v30 = v0[33];
  v31 = v0[34];
  v32 = v0[31];

  if (v31 != v32)
  {
    v48 = v0[34];
    v49 = v0[30];
    if ((v49 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x259C81BF0](v0[34]);
    }

    else
    {
      if (v48 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v50 = *(v49 + 8 * v48 + 32);
    }

    v0[33] = v33;
    v0[34] = v48 + 1;
    if (!__OFADD__(v48, 1))
    {
      v49 = *(v33 + 2);
      v0[35] = v49;
      v33 = sub_258500B34;
      v34 = 0;

      return MEMORY[0x2822009F8](v33, v49, v34);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    return MEMORY[0x2822009F8](v33, v49, v34);
  }

  v36 = v0[28];
  v35 = v0[29];
  v38 = v0[23];
  v37 = v0[24];

  v39 = v0[1];
LABEL_16:

  return v39();
}

uint64_t sub_25850114C()
{
  v1 = v0[33];

  v2 = v0[38];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[23];
  v5 = v0[24];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2585011FC()
{
  v0[4] = 0;
  v1 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931658, &qword_25853E0F0);
  sub_2585337FC();
  v2 = *(v1 + 128);
  v0[6] = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x277D857D0] + 4);

    v4 = swift_task_alloc();
    v0[7] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    *v4 = v0;
    v4[1] = sub_25850148C;
    v6 = MEMORY[0x277D84950];
    v7 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 2, v2, v7, v5, v6);
  }

  else
  {
    v8 = v0[5];
    *(v8 + 128) = 0;
    sub_258501A8C();
    v9 = *(v8 + 120);
    v0[8] = v9;
    v10 = v9[2];
    v0[9] = v10;
    if (v10)
    {
      v0[10] = 0;
      v0[11] = v9[4];
      v11 = v9[5];
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 24);
      swift_unknownObjectRetain();
      v18 = (v13 + *v13);
      v14 = v13[1];
      v15 = swift_task_alloc();
      v0[12] = v15;
      *v15 = v0;
      v15[1] = sub_2585017DC;

      return v18(ObjectType, v11);
    }

    else
    {
      v16 = v0[1];

      return v16();
    }
  }
}

uint64_t sub_25850148C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v6 = *v0;

  sub_258502238(*(v1 + 16), *(v1 + 24));

  return MEMORY[0x2822009F8](sub_2585015E4, v4, 0);
}

uint64_t sub_2585015E4()
{
  v1 = v0[5];
  if (*(v1 + 128))
  {
    v2 = *(v1 + 128);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v3 = *(v1 + 128);
    v1 = v0[5];
  }

  *(v1 + 128) = 0;

  sub_258501A8C();
  v4 = *(v1 + 120);
  v0[8] = v4;
  v5 = v4[2];
  v0[9] = v5;
  if (v5)
  {
    v0[10] = 0;
    v0[11] = v4[4];
    v6 = v4[5];
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 24);
    swift_unknownObjectRetain();
    v13 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_2585017DC;

    return v13(ObjectType, v6);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_2585017DC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2585018EC, v2, 0);
}

uint64_t sub_2585018EC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  swift_unknownObjectRelease();
  if (v2 + 1 == v3)
  {
    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[10] + 1;
    v0[10] = v6;
    v7 = v0[8] + 16 * v6;
    v0[11] = *(v7 + 32);
    v8 = *(v7 + 40);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 24);
    swift_unknownObjectRetain();
    v13 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_2585017DC;

    return v13(ObjectType, v8);
  }
}

void sub_258501A8C()
{
  v1 = *(v0 + 112);
  if (v1 >> 62)
  {
    v2 = sub_258533ACC();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    do
    {
      v4 = MEMORY[0x259C81BF0](v3, v1);
      if (*(v4 + 32))
      {
        v5 = v4;
        v6 = *(v4 + 32);

        sub_25853374C();

        v4 = v5;
        v7 = *(v5 + 32);
      }

      ++v3;
      *(v4 + 32) = 0;
      swift_unknownObjectRelease();
    }

    while (v2 != v3);
  }

  else
  {
    v8 = (v1 + 32);
    do
    {
      v10 = *v8;
      if (*(*v8 + 32))
      {

        sub_25853374C();

        v9 = *(v10 + 32);
      }

      else
      {
      }

      *(v10 + 32) = 0;

      ++v8;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_258501C08()
{
  v1 = *(v0 + 14);

  v2 = *(v0 + 15);

  v3 = *(v0 + 16);

  v4 = OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_eventStream;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931678, &unk_25853E130);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_eventStreamContinuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931658, &qword_25853E0F0);
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for TelemetryProvider()
{
  result = qword_27F931620;
  if (!qword_27F931620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258501D44()
{
  sub_258501E70(319, &qword_27F931630, MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_258501E70(319, &qword_27F931638, MEMORY[0x277D858B0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_258501E70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v7 = a3(a1, &type metadata for TelemetryEvent, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_258501F30(uint64_t a1)
{
  result = sub_2584A5784();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258501F5C()
{
  result = qword_27F931640;
  if (!qword_27F931640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931640);
  }

  return result;
}

unint64_t sub_258501FB0()
{
  result = qword_27F931648;
  if (!qword_27F931648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931648);
  }

  return result;
}

uint64_t sub_258502008@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for TelemetryProvider();
  result = sub_258533B9C();
  *a1 = result;
  return result;
}

uint64_t sub_25850204C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931650, &qword_25853E0E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12[-v7 - 8];
  v9 = *v1;
  sub_2584FBFF4(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931658, &qword_25853E0F0);
  sub_2585337EC();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_25850215C()
{
  v1 = *v0;
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000012, 0x8000000258542220);
  type metadata accessor for TelemetryProvider();
  sub_258502698(&qword_27F931660);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

void sub_258502238(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_258502244(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258464F5C;

  return sub_2584FF9FC(a1, a2, v2);
}

uint64_t sub_2585022F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_258502330(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258472CF8;

  return sub_2584FFF7C(a1, v4, v5, v6);
}

uint64_t sub_2585023E4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25850241C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E8, &qword_25853DA80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_258502518(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E8, &qword_25853DA80) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_258464F5C;

  return sub_2584FE298(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_258502660()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258502698(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TelemetryProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2585026DC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258472CF8;

  return sub_2584FEBF0(a1, a2, v7, v6);
}

uint64_t sub_258502790()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  v3 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2585027E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258472CF8;

  return sub_2584FEFCC(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_2585028B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931678, &unk_25853E130);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_258502998(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931678, &unk_25853E130) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258472CF8;

  return sub_2584FD498(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_258502AC4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258472CF8;

  return sub_2584FDD90(a1, a2, v7, v6);
}

uint64_t sub_258502B78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 89);
  if (v3 > 4)
  {
    if (v3 == 5 || v3 == 6)
    {
      goto LABEL_10;
    }

    if (v3 != 7)
    {
      goto LABEL_14;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
    v4 = *(v0 + 80);
LABEL_13:

    goto LABEL_14;
  }

  switch(v3)
  {
    case 1u:
      v5 = *(v0 + 48);

      v6 = *(v0 + 64);

      v7 = *(v0 + 80);

      break;
    case 2u:
      v4 = *(v0 + 40);
      goto LABEL_13;
    case 4u:
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
      break;
  }

LABEL_14:

  return MEMORY[0x2821FE8E8](v0, 90, 7);
}

uint64_t sub_258502C38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258472CF8;

  return sub_2584FE1DC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_258502D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_2585329BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v12 = *(a1 + 16);
  v40[0] = *a1;
  v40[1] = v12;
  v41 = *(a1 + 32);
  v13 = type metadata accessor for DateBackedTimeProvider();
  v14 = swift_allocObject();
  v39[3] = v13;
  v39[4] = &off_28698F1D0;
  v39[0] = v14;
  v15 = type metadata accessor for SessionEndReporter();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v39, v13);
  v20 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v19, v19);
  v22 = (v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0) + 40);
  (*(v23 + 16))(v22);
  v24 = sub_2585030A8(v40, *v22, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  (*(v7 + 16))(v11, a2, v6);
  type metadata accessor for RTCBackedTelemetryServer();
  swift_allocObject();
  v25 = sub_2584F4A00(v40, v11);
  if (v25)
  {
    v26 = v25;
    v27 = &unk_27F9316D0;
    v28 = type metadata accessor for RTCBackedTelemetryServer;
  }

  else
  {
    type metadata accessor for NullTelemetryServer();
    v26 = swift_allocObject();
    swift_defaultActor_initialize();
    v27 = &unk_27F9316B0;
    v28 = type metadata accessor for NullTelemetryServer;
  }

  v29 = sub_258503514(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9316B8, &qword_25853E228);
  inited = swift_initStackObject();
  v38 = xmmword_2585356C0;
  *(inited + 16) = xmmword_2585356C0;
  v31 = sub_258503514(&qword_27F9316C0, type metadata accessor for SessionEndReporter);
  *(inited + 32) = v24;
  *(inited + 40) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9316C8, &qword_25853E230);
  v32 = swift_allocObject();
  *(v32 + 16) = v38;
  *(v32 + 32) = v26;
  *(v32 + 40) = v29;
  v33 = type metadata accessor for TelemetryProvider();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();

  swift_unknownObjectRetain();
  v36 = sub_2584FCC14(inited, v32);
  a3[3] = v33;
  a3[4] = &off_286990978;

  result = swift_unknownObjectRelease();
  *a3 = v36;
  return result;
}

uint64_t sub_2585030A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9316D8, &qword_25853E238);
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v38, v8);
  v10 = &v36 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E0, &unk_25853E240);
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v37, v13);
  v15 = &v36 - v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E8, &qword_25853DA80);
  v16 = *(v36 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v36, v18);
  v20 = &v36 - v19;
  v39[3] = type metadata accessor for DateBackedTimeProvider();
  v39[4] = &off_28698F1D0;
  v39[0] = a2;
  swift_defaultActor_initialize();
  *(a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_state) = 0;
  v21 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_logger;
  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v22 = sub_258532A4C();
  v23 = __swift_project_value_buffer(v22, qword_27F93D038);
  (*(*(v22 - 8) + 16))(a3 + v21, v23, v22);
  v24 = a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activationCompleteTime;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activationTimeMilliSeconds;
  *v25 = 0;
  *(v25 + 4) = 1;
  *(a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationCount) = 0;
  v26 = a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationStartTime;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = (a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationTimeHistogram);
  *v27 = 0u;
  v27[1] = 0u;
  v27[2] = 0u;
  v27[3] = 0u;
  *(a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_currentInterfaceType) = 6;
  v28 = a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceStartTime;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = (a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram);
  *v29 = 0u;
  v29[1] = 0u;
  v29[2] = 0u;
  v29[3] = 0u;
  v30 = a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_sessionDurationSeconds;
  *v30 = 0;
  *(v30 + 4) = 1;
  v31 = a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0;
  *(a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatingInfo) = xmmword_25853E1F0;
  *(a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_endReason) = 0;
  v32 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_streamEndReporters;
  *(a3 + v32) = sub_2584F8344(MEMORY[0x277D84F90]);
  *(a3 + 144) = *(a1 + 32);
  v33 = *(a1 + 16);
  *(a3 + 112) = *a1;
  *(a3 + 128) = v33;
  sub_258464C30(v39, a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_timeProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931478, &qword_25853D5F0);
  v34 = v38;
  (*(v6 + 104))(v10, *MEMORY[0x277D858A0], v38);
  sub_2585337BC();
  (*(v6 + 8))(v10, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  (*(v16 + 32))(a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_reportStream, v20, v36);
  (*(v11 + 32))(a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_reportStreamContinuation, v15, v37);
  return a3;
}

uint64_t sub_258503514(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25850356C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2585035C8()
{
  if (*v0)
  {
    return 36;
  }

  else
  {
    return 23;
  }
}

uint64_t sub_2585035E0()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 64) = v0;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_258503670, 0, 0);
}

uint64_t sub_258503670()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_258503784;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822007B8]();
}

uint64_t sub_258503784()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 72);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2585038AC, 0, 0);
}

uint64_t sub_2585038AC()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[8];
  v2 = [objc_opt_self() sharedClockManager];
  *(v1 + 16) = v2;
  v0[5] = 0;
  v3 = [v2 addgPTPServicesWithError_];
  v4 = v0[5];
  if (v3)
  {
    v0[6] = *MEMORY[0x277D714F0];
    v5 = *(MEMORY[0x277D859E0] + 4);
    v6 = v4;
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_258503AB8;
    v8 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v9 = v4;
    sub_2585328BC();

    swift_willThrow();
    v10 = v0[8];

    v11 = *(v10 + 48);
    v12 = *(v10 + 56);
    sub_258504A24(*(v10 + 32), *(v10 + 40));
    type metadata accessor for TimeSyncBackedTimeSynchronizer();
    swift_deallocPartialClassInstance();
    v13 = v0[1];
    v14 = *MEMORY[0x277D85DE8];

    return v13();
  }
}

uint64_t sub_258503AB8()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 80);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_258503BE0, 0, 0);
}

uint64_t sub_258503BE0()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() sharedgPTPManager];
  v0[7] = 0;
  v0[11] = v1;
  v2 = [v1 addPTPInstance:v0 + 6 error:v0 + 7];
  v3 = v0[7];
  if (v2)
  {
    v4 = qword_27F92F8F0;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_258532A4C();
    v0[12] = __swift_project_value_buffer(v6, qword_27F93D020);
    v7 = sub_258532A2C();
    v8 = sub_2585338EC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25845E000, v7, v8, "Waiting for clock...", v9, 2u);
      MEMORY[0x259C82900](v9, -1, -1);
    }

    swift_beginAccess();
    v10 = *(MEMORY[0x277D857E8] + 4);
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_258503E78;
    v12 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200480](100000000);
  }

  else
  {
    v13 = v3;
    sub_2585328BC();

    swift_willThrow();
    v14 = v0[8];

    v15 = *(v14 + 48);
    v16 = *(v14 + 56);
    sub_258504A24(*(v14 + 32), *(v14 + 40));
    type metadata accessor for TimeSyncBackedTimeSynchronizer();
    swift_deallocPartialClassInstance();
    v17 = v0[1];
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }
}

uint64_t sub_258503E78()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2585043A4;
  }

  else
  {
    v3 = sub_258503FB8;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258503FB8()
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = v0 + 6;
  v2 = [*(v0[8] + 16) clockWithClockIdentifier_];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    v5 = v0[12];
    v6 = v3;
    v7 = v6;
    if (v4)
    {
      v8 = v6;
      v9 = sub_258532A2C();
      v10 = sub_2585338EC();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412546;
        *(v11 + 4) = v8;
        *v12 = v3;
        *(v11 + 12) = 2048;
        *(v11 + 14) = *v1;
        v13 = v8;
        _os_log_impl(&dword_25845E000, v9, v10, "Found gPTPClock (%@) with identifier %llu", v11, 0x16u);
        sub_258465168(v12, &qword_27F92FBC0, &qword_258537930);
        MEMORY[0x259C82900](v12, -1, -1);
        MEMORY[0x259C82900](v11, -1, -1);
      }

      else
      {
        v13 = v9;
        v9 = v8;
      }

      v19 = v0[14];
      *(v0[8] + 24) = v4;
      sub_25853377C();
      v20 = v0[11];
      if (v19)
      {
        v21 = v0[8];

        v22 = v0[1];
        v23 = *MEMORY[0x277D85DE8];

        return v22();
      }

      else
      {

        v25 = v0[1];
        v26 = v0[8];
        v27 = *MEMORY[0x277D85DE8];

        return v25(v26);
      }
    }

    v14 = sub_258532A2C();
    v15 = sub_2585338CC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      *(v16 + 4) = v7;
      *v17 = v3;
      *(v16 + 12) = 2048;
      *(v16 + 14) = *v1;
      v18 = v7;
      _os_log_impl(&dword_25845E000, v14, v15, "Found a clock (%@) with identifier %llu but it could not be cast to a TSgPTPClock", v16, 0x16u);
      sub_258465168(v17, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v17, -1, -1);
      MEMORY[0x259C82900](v16, -1, -1);
    }

    else
    {
      v18 = v14;
      v14 = v7;
    }
  }

  v28 = *(MEMORY[0x277D857E8] + 4);
  v29 = swift_task_alloc();
  v0[13] = v29;
  *v29 = v0;
  v29[1] = sub_258503E78;
  v30 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200480](100000000);
}

uint64_t sub_2585043A4()
{
  v8 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 112);
  v2 = *(v0 + 64);

  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  sub_258504A24(*(v2 + 32), *(v2 + 40));
  type metadata accessor for TimeSyncBackedTimeSynchronizer();
  swift_deallocPartialClassInstance();
  v5 = *(v0 + 8);
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_25850446C()
{
  v1 = v0;
  v41[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() sharedgPTPManager];
  v3 = [*(v1 + 24) clockIdentifier];
  v41[0] = 0;
  v4 = [v2 removePTPInstanceWithIdentifier:v3 error:v41];

  if (v4)
  {
    v5 = qword_27F92F8F0;
    v6 = v41[0];
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_258532A4C();
    __swift_project_value_buffer(v7, qword_27F93D020);
    swift_retain_n();
    v8 = sub_258532A2C();
    v9 = sub_2585338EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      v12 = *(v1 + 24);
      *(v10 + 4) = v12;
      *v11 = v12;
      *(v10 + 12) = 2048;
      v13 = [v12 clockIdentifier];

      *(v10 + 14) = v13;

      _os_log_impl(&dword_25845E000, v8, v9, "Removed gPTPClock (%@) with identifier %llu", v10, 0x16u);
      sub_258465168(v11, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v14 = v41[0];
    v15 = sub_2585328BC();

    swift_willThrow();
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v16 = sub_258532A4C();
    __swift_project_value_buffer(v16, qword_27F93D020);

    v17 = v15;
    v18 = sub_258532A2C();
    v19 = sub_2585338CC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 134218242;
      *(v20 + 4) = [*(v1 + 24) clockIdentifier];

      *(v20 + 12) = 2112;
      v22 = v15;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v23;
      *v21 = v23;
      _os_log_impl(&dword_25845E000, v18, v19, "Failed to remove PTP instance (%llu) from the TSgPTPManager. Reason: %@", v20, 0x16u);
      sub_258465168(v21, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v21, -1, -1);
      MEMORY[0x259C82900](v20, -1, -1);
    }

    else
    {
    }
  }

  v24 = [objc_opt_self() sharedClockManager];
  v41[0] = 0;
  v25 = [v24 removegPTPServicesWithError_];

  if (v25)
  {
    v26 = v41[0];
  }

  else
  {
    v27 = v41[0];
    v28 = sub_2585328BC();

    swift_willThrow();
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v29 = sub_258532A4C();
    __swift_project_value_buffer(v29, qword_27F93D020);
    v30 = v28;
    v31 = sub_258532A2C();
    v32 = sub_2585338CC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = v28;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_25845E000, v31, v32, "Failed to remove gPTPServices from TSClockManager. Reason: %@", v33, 0xCu);
      sub_258465168(v34, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v34, -1, -1);
      MEMORY[0x259C82900](v33, -1, -1);
    }

    else
    {
    }
  }

  v37 = *(v1 + 48);
  v38 = *(v1 + 56);
  sub_258504A24(*(v1 + 32), *(v1 + 40));
  v39 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2585049CC()
{
  sub_25850446C();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_258504A24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_258504A68(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 16) clockWithClockIdentifier_];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = type metadata accessor for TimeSyncBackedSynchronizedClock();
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      a1[3] = v7;
      a1[4] = &off_286990B40;
      *a1 = v8;
    }

    else
    {
      sub_258506978();
      swift_allocError();
      *v10 = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_258506978();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
  }
}

uint64_t sub_258504B8C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v5;
  v125 = a4;
  v122 = a3;
  v127 = a1;
  v128 = a2;
  v132[1] = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v118 - v10;
  v12 = sub_258532CFC();
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v12, v15);
  v121 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9307C0, &qword_25853A850);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v118 - v20;
  v22 = sub_258532C8C();
  v126 = *(v22 - 8);
  v23 = *(v126 + 64);
  v123 = MEMORY[0x28223BE20](v22, v24);
  v124 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v4;
  v26 = *(v4 + 40);
  if (v26)
  {
    v27 = v129;
    v120 = v13;
    v28 = v12;
    v29 = v5;
    v30 = *(v129 + 48);
    v31 = *(v129 + 56);
    v32 = *(v129 + 32);

    sub_25850594C(v32, v26, v30, v31);
    v6 = v29;

    if (v29)
    {
LABEL_49:
      v117 = *MEMORY[0x277D85DE8];
      return result;
    }

    v34 = v27[4];
    v35 = v27[5];
    v36 = v27[6];
    v37 = v27[7];
    *(v27 + 2) = 0u;
    *(v27 + 3) = 0u;
    sub_258504A24(v34, v35);
    v12 = v28;
    v13 = v120;
    v22 = v123;
  }

  sub_258532CAC();
  v38 = v126;
  v39 = (*(v126 + 48))(v21, 1, v22);
  v40 = v125;
  if (v39 == 1)
  {
    sub_258465168(v21, &qword_27F9307C0, &qword_25853A850);

    sub_258532D1C();
    if ((v13[6])(v11, 1, v12) == 1)
    {
      sub_258465168(v11, &unk_27F931350, qword_258538C60);
      if (qword_27F92F8F0 != -1)
      {
        swift_once();
      }

      v41 = sub_258532A4C();
      __swift_project_value_buffer(v41, qword_27F93D020);
      v42 = sub_258532A2C();
      v43 = sub_2585338CC();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_25845E000, v42, v43, "Invalid address passed to addDevice", v44, 2u);
        MEMORY[0x259C82900](v44, -1, -1);
      }

      sub_258506978();
      swift_allocError();
      *v45 = 0;
      result = swift_willThrow();
    }

    else
    {
      v119 = v6;
      v120 = v13;
      v55 = v13[4];
      v56 = v121;
      v126 = v12;
      v55(v121, v11, v12);
      if (qword_27F92F8F0 != -1)
      {
        swift_once();
      }

      v57 = v122;
      v58 = sub_258532A4C();
      __swift_project_value_buffer(v58, qword_27F93D020);

      v59 = v40;

      v60 = sub_258532A2C();
      v61 = sub_2585338EC();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v131[0] = v63;
        *v62 = 136381187;
        *(v62 + 4) = sub_2584713B0(v127, v128, v131);
        *(v62 + 12) = 2080;
        *(v62 + 14) = sub_2584713B0(v57, v59, v131);
        *(v62 + 22) = 2048;
        *(v62 + 24) = [*(v129 + 24) clockIdentity];

        _os_log_impl(&dword_25845E000, v60, v61, "Adding IPv6 device at %{private}s on %s to %llu", v62, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x259C82900](v63, -1, -1);
        v64 = v62;
        v56 = v121;
        MEMORY[0x259C82900](v64, -1, -1);
      }

      else
      {
      }

      v130 = 0;
      v78 = sub_258507E78();
      if (v78)
      {
        v79 = v78;
        v80 = *(v129 + 24);
        v81 = v59;
        v82 = sub_25853341C();
        v131[0] = 0;
        v83 = [v80 addUnicastUDPv6EtEPortOnInterfaceNamed:v82 withDestinationAddress:v79 allocatedPortNumber:&v130 error:v131];

        if (v83)
        {
          v84 = v131[0];
          MEMORY[0x259C82900](v79, -1, -1);
          v86 = v128;
          v85 = v129;
          v88 = *(v129 + 32);
          v87 = *(v129 + 40);
          v89 = *(v129 + 48);
          v90 = *(v129 + 56);
          *(v129 + 32) = v127;
          v85[5] = v86;
          v85[6] = v57;
          v85[7] = v81;

          sub_258504A24(v88, v87);

          v91 = sub_258532A2C();
          v92 = sub_2585338EC();

          if (os_log_type_enabled(v91, v92))
          {
            v93 = v81;
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v132[0] = v95;
            *v94 = 136381443;
            *(v94 + 4) = sub_2584713B0(v127, v128, v132);
            *(v94 + 12) = 512;
            swift_beginAccess();
            *(v94 + 14) = v130;
            *(v94 + 16) = 2080;
            *(v94 + 18) = sub_2584713B0(v57, v93, v132);
            *(v94 + 26) = 2048;
            *(v94 + 28) = [v80 clockIdentity];

            _os_log_impl(&dword_25845E000, v91, v92, "Added IPv6 device at [%{private}s]:%hu on %s to %llu", v94, 0x24u);
            swift_arrayDestroy();
            MEMORY[0x259C82900](v95, -1, -1);
            MEMORY[0x259C82900](v94, -1, -1);
          }

          else
          {
          }

          result = (v120[1])(v121, v126);
        }

        else
        {
          v116 = v131[0];
          sub_2585328BC();

          swift_willThrow();
          MEMORY[0x259C82900](v79, -1, -1);
          swift_willThrow();
          result = (v120[1])(v121, v126);
        }
      }

      else
      {
        sub_258506978();
        swift_allocError();
        *v115 = 0;
        swift_willThrow();
        result = (v120[1])(v56, v126);
      }
    }

    goto LABEL_49;
  }

  (*(v38 + 32))(v124, v21, v22);
  if (qword_27F92F8F0 != -1)
  {
    swift_once();
  }

  v46 = sub_258532A4C();
  v47 = __swift_project_value_buffer(v46, qword_27F93D020);

  v48 = v40;

  v121 = v47;
  v49 = sub_258532A2C();
  v50 = sub_2585338EC();

  v51 = os_log_type_enabled(v49, v50);
  v52 = v122;
  v119 = v6;
  if (v51)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v131[0] = v54;
    *v53 = 136381187;
    *(v53 + 4) = sub_2584713B0(v127, v128, v131);
    *(v53 + 12) = 2080;
    *(v53 + 14) = sub_2584713B0(v52, v48, v131);
    *(v53 + 22) = 2048;
    *(v53 + 24) = [*(v129 + 24) clockIdentity];

    _os_log_impl(&dword_25845E000, v49, v50, "Adding IPv4 device at %{private}s on %s to %llu", v53, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v54, -1, -1);
    MEMORY[0x259C82900](v53, -1, -1);
  }

  else
  {
  }

  v130 = 0;
  v65 = *(v129 + 24);
  v66 = sub_25853341C();
  v67 = sub_258532C7C();
  v68 = v67;
  v70 = v69;
  v71 = v69 >> 62;
  if ((v69 >> 62) > 1)
  {
    v72 = 0;
    if (v71 != 2)
    {
      goto LABEL_39;
    }

    v73 = *(v67 + 16);
    v74 = sub_25853285C();
    if (v74)
    {
      v75 = v74;
      v76 = sub_25853287C();
      if (__OFSUB__(v73, v76))
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
      }

      v77 = (v73 - v76 + v75);
      sub_25853286C();
      if (v77)
      {
LABEL_37:
        LODWORD(v67) = *v77;
LABEL_38:
        v72 = _OSSwapInt32(v67);
LABEL_39:
        v99 = v128;
        v100 = v52;
        sub_258467E20(v68, v70);
        v131[0] = 0;
        v101 = [v65 addUnicastUDPv4EtEPortOnInterfaceNamed:v66 withDestinationAddress:v72 allocatedPortNumber:&v130 error:v131];

        v102 = v131[0];
        if (v101)
        {
          v120 = v65;
          v103 = v129;
          v104 = *(v129 + 32);
          v105 = *(v129 + 40);
          v106 = *(v129 + 48);
          v107 = *(v129 + 56);
          *(v129 + 32) = v127;
          v103[5] = v99;
          v108 = v125;
          v103[6] = v100;
          v103[7] = v108;

          v109 = v102;
          sub_258504A24(v104, v105);

          v110 = sub_258532A2C();
          v111 = sub_2585338EC();

          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            v132[0] = v113;
            *v112 = 136381443;
            *(v112 + 4) = sub_2584713B0(v127, v99, v132);
            *(v112 + 12) = 512;
            swift_beginAccess();
            *(v112 + 14) = v130;
            *(v112 + 16) = 2080;
            *(v112 + 18) = sub_2584713B0(v100, v108, v132);
            *(v112 + 26) = 2048;
            *(v112 + 28) = [v120 clockIdentity];

            _os_log_impl(&dword_25845E000, v110, v111, "Added IPv4 device at %{private}s:%hu on %s to %llu", v112, 0x24u);
            swift_arrayDestroy();
            MEMORY[0x259C82900](v113, -1, -1);
            MEMORY[0x259C82900](v112, -1, -1);
          }

          else
          {
          }

          result = (*(v126 + 8))(v124, v123);
        }

        else
        {
          v114 = v131[0];
          sub_2585328BC();

          swift_willThrow();
          result = (*(v126 + 8))(v124, v123);
        }

        goto LABEL_49;
      }
    }

    else
    {
      sub_25853286C();
    }

    __break(1u);
    goto LABEL_55;
  }

  if (!v71)
  {
    goto LABEL_38;
  }

  if (v67 > v67 >> 32)
  {
    __break(1u);
    goto LABEL_51;
  }

  v96 = sub_25853285C();
  if (!v96)
  {
LABEL_55:
    result = sub_25853286C();
    __break(1u);
    goto LABEL_56;
  }

  v97 = v96;
  v98 = sub_25853287C();
  if (__OFSUB__(v68, v98))
  {
    goto LABEL_52;
  }

  v77 = (v68 - v98 + v97);
  result = sub_25853286C();
  if (v77)
  {
    goto LABEL_37;
  }

LABEL_56:
  __break(1u);
  return result;
}