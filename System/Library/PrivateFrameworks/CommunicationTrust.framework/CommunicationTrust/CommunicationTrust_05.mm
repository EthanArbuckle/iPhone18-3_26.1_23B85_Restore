uint64_t sub_1B98DCE94(unsigned int a1, void *a2)
{
  v62 = a1;
  v54 = a2;
  v3 = v2;
  v61 = v3;
  v55 = sub_1B98DE9F4;
  v56 = sub_1B98DEA0C;
  v57 = sub_1B98DE9FC;
  v58 = sub_1B98DEA04;
  v59 = sub_1B98DEA18;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v60 = 0;
  v70 = 0;
  v71 = 0;
  v63 = sub_1B98F5138();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v67 = v26 - v66;
  v79 = MEMORY[0x1EEE9AC00](v62, v5) & 1;
  v78 = a2;
  v77 = v6;
  v68 = sub_1B98E93E4();
  v69 = v7;
  if ((v7 & 0xF000000000000000) == 0xF000000000000000)
  {
    v10 = v67;
    v11 = sub_1B98F1F44();
    (*(v64 + 16))(v10, v11, v63);
    MEMORY[0x1E69E5928](v54, v12, v13);
    v36 = 7;
    v37 = swift_allocObject();
    *(v37 + 16) = v54;
    v45 = sub_1B98F5118();
    v46 = sub_1B98F5BC8();
    v34 = 17;
    v39 = swift_allocObject();
    *(v39 + 16) = 32;
    v40 = swift_allocObject();
    *(v40 + 16) = 8;
    v35 = 32;
    v14 = swift_allocObject();
    v15 = v37;
    v38 = v14;
    *(v14 + 16) = v55;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v38;
    v42 = v16;
    *(v16 + 16) = v56;
    *(v16 + 24) = v17;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v41 = sub_1B98F5F98();
    v43 = v18;

    v19 = v39;
    v20 = v43;
    *v43 = v57;
    v20[1] = v19;

    v21 = v40;
    v22 = v43;
    v43[2] = v58;
    v22[3] = v21;

    v23 = v42;
    v24 = v43;
    v43[4] = v59;
    v24[5] = v23;
    sub_1B9851B38();

    if (os_log_type_enabled(v45, v46))
    {
      v25 = v60;
      v27 = sub_1B98F5C28();
      v26[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v28 = sub_1B985263C(0);
      v29 = sub_1B985263C(1);
      v30 = &v76;
      v76 = v27;
      v31 = &v75;
      v75 = v28;
      v32 = &v74;
      v74 = v29;
      sub_1B9852690(2, &v76);
      sub_1B9852690(1, v30);
      v72 = v57;
      v73 = v39;
      sub_1B98526A4(&v72, v30, v31, v32);
      v33 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v72 = v58;
        v73 = v40;
        sub_1B98526A4(&v72, &v76, &v75, &v74);
        v26[0] = 0;
        v72 = v59;
        v73 = v42;
        sub_1B98526A4(&v72, &v76, &v75, &v74);
        _os_log_impl(&dword_1B982F000, v45, v46, "Failed to unarchive data for contact with identifier: %s", v27, 0xCu);
        sub_1B985281C(v28);
        sub_1B985281C(v29);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v45);
    return (*(v64 + 8))(v67, v63);
  }

  else
  {
    v52 = v68;
    v53 = v69;
    v51 = v69;
    v50 = v68;
    v70 = v68;
    v71 = v69;
    v49 = [v54 identifier];
    v47 = sub_1B98F5658();
    v48 = v8;
    sub_1B98DBEEC(v62 & 1, v47, v8, v50, v51);

    MEMORY[0x1E69E5920](v49);
    return sub_1B98371D0(v50, v51);
  }
}

uint64_t sub_1B98DD630(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_1B98F5658();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1B98DD68C()
{
  v6 = v0;
  v3 = *(v0 + 32);

  v4 = sub_1B98F3B54();

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5ED8, &qword_1B98FCB00);
  sub_1B9836338();
  sub_1B98DEA50();
  v2 = sub_1B98F5788();
  sub_1B98DEAD8(&v5);
  return v2;
}

uint64_t sub_1B98DD798(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  sub_1B98D1598(a3, a4);
  sub_1B98371D0(a3, a4);
  if ((a5 & 1) != 0 && (sub_1B9836338(), (v7 = sub_1B98E8C10(a3, a4)) != 0))
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B98DD878@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32) & 1);
  *a3 = result;
  return result;
}

uint64_t sub_1B98DD8DC()
{
  v0 = sub_1B98D4A78();
  LOWORD(v2) = v0;
  BYTE2(v2) = BYTE2(v0);
  return v2;
}

void sub_1B98DD91C(int a1)
{
  LOWORD(v1) = a1;
  BYTE2(v1) = BYTE2(a1);
  sub_1B98D4B7C(v1);
}

void (*sub_1B98DD95C(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1B98D4CE0(v2);
  return sub_1B98DD9CC;
}

void sub_1B98DD9CC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t sub_1B98DDB60(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5600, &qword_1B98FB540);
  (*(*(v1 - 8) + 8))(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E90, &unk_1B98FCAA8);
  (*(*(v2 - 8) + 8))(a1 + 4);
  return a1;
}

uint64_t sub_1B98DDC10(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = sub_1B98F5078();
    (*(*(v2 - 8) + 8))(a1);
    v8 = type metadata accessor for BlockedHandle();
    v3 = *(a1 + v8[5] + 8);

    v4 = *(a1 + v8[6]);

    v5 = *(a1 + v8[7]);

    v6 = *(a1 + v8[8] + 8);
  }

  return a1;
}

uint64_t sub_1B98DDD24()
{
  v1 = *(sub_1B98F5078() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B98D6C24(v2);
}

uint64_t sub_1B98DDDB0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for BlockedHandle();
  *(a2 + v3[5]) = *(a1 + v3[5]);
  *(a2 + v3[6]) = *(a1 + v3[6]);
  *(a2 + v3[7]) = *(a1 + v3[7]);
  *(a2 + v3[8]) = *(a1 + v3[8]);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  result = a2;
  *(a2 + *(v4 + 48)) = *(a1 + *(v4 + 48));
  return result;
}

uint64_t sub_1B98DDEA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 16))(a2, a1);
  v13 = type metadata accessor for BlockedHandle();
  v3 = (a1 + v13[5]);
  v7 = (a2 + v13[5]);
  *v7 = *v3;
  v8 = v3[1];
  sub_1B98F54D8();
  v7[1] = v8;
  v9 = v13[6];
  v10 = *(a1 + v9);
  sub_1B98F54D8();
  *(a2 + v9) = v10;
  v11 = v13[7];
  v12 = *(a1 + v11);
  sub_1B98F54D8();
  *(a2 + v11) = v12;
  v4 = v13[8];
  v14 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v15 = *(a1 + v4 + 8);
  sub_1B98F54D8();
  *(v14 + 8) = v15;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  result = a2;
  *(a2 + *(v5 + 48)) = *(a1 + *(v5 + 48));
  return result;
}

uint64_t sub_1B98DE038()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B98D6D54(v2);
}

uint64_t sub_1B98DE0DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B9880ABC();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1B9880568(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B98DE178(uint64_t a1)
{
  v1 = sub_1B98F5078();
  (*(*(v1 - 8) + 8))(a1);
  v7 = type metadata accessor for BlockedHandle();
  v2 = *(a1 + v7[5] + 8);

  v3 = *(a1 + v7[6]);

  v4 = *(a1 + v7[7]);

  v5 = *(a1 + v7[8] + 8);

  return a1;
}

uint64_t *sub_1B98DE23C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_1B98DE27C();
  return a1;
}

uint64_t sub_1B98DE2CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B98D8578(v2);
}

uint64_t sub_1B98DE370(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B9880ABC();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1B9880568(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B98DE418()
{
  v1 = *(type metadata accessor for BlockedHandle() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B98D977C(v2);
}

uint64_t sub_1B98DE4D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B9880ABC();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1B9880568(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B98DE57C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5458, &qword_1B98FB070);
  v1 = sub_1B98D0B58();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B98DE634()
{
  v2 = qword_1EBBD5EC8;
  if (!qword_1EBBD5EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5458, &qword_1B98FB070);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5EC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98DE6E8()
{
  v2 = qword_1EBBD5ED0;
  if (!qword_1EBBD5ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5EC0, &unk_1B98FCAF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5ED0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98DE770(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B98DE814(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B9880ABC();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1B9880568(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B98DE8BC()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B98DCE60();
  return result;
}

uint64_t sub_1B98DE924(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B9880ABC();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1B9880568(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1B98DEA50()
{
  v2 = qword_1EBBD5EE0;
  if (!qword_1EBBD5EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5ED8, &qword_1B98FCB00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5EE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98DEAD8(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t __swift_memcpy3_1(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 2) = *(a2 + 2);
  return result;
}

uint64_t sub_1B98DEB18(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v8 = ((a2 + 16776961) >> 24) + 1;
    v9 = 1;
    if (v8 >= 0x100)
    {
      if (v8 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v9 = v2;
    }

    if (v9 == 1)
    {
      v7 = a1[3];
    }

    else
    {
      v7 = v9 == 2 ? *(a1 + 3) : *(a1 + 3);
    }

    if (v7)
    {
      v6 = ((*a1 | (a1[2] << 16)) & 0xFFFFFF | ((v7 - 1) << 24)) + 254;
    }

    else
    {
LABEL_15:
      v4 = a1[1];
      v5 = -1;
      if ((v4 & 0xFFFFFFFE) != 0)
      {
        v5 = v4 & 1 | ((v4 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v6 = v5;
    }
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_1B98DECC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 16776961) >> 24) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 24) + 1;
    *result = a2 - 255;
    *(result + 2) = ((a2 - 255) & 0xFFFFFF) >> 16;
    if (v7)
    {
      if (v7 == 1)
      {
        *(result + 3) = v4;
      }

      else if (v7 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        *(result + 3) = 0;
      }

      else if (v7 == 2)
      {
        *(result + 3) = 0;
      }

      else
      {
        *(result + 3) = 0;
      }
    }

    if (a2)
    {
      *(result + 1) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t sub_1B98DEEF8(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v9 = ((a2 + 2) >> 8) + 1;
    v10 = 1;
    if (v9 >= 0x100)
    {
      if (v9 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v10 = v2;
    }

    if (v10 == 1)
    {
      v8 = a1[1];
    }

    else
    {
      v8 = v10 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v8)
    {
      v7 = (*a1 | ((v8 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v5 = *a1;
      v6 = -1;
      if ((v5 & 0xFFFFFFFE) != 0)
      {
        v6 = v5 & 1 | ((v5 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v3 = v6 - 1;
      if (v6 - 1 < 0)
      {
        v3 = -1;
      }

      v7 = v3;
    }
  }

  else
  {
    v7 = -1;
  }

  return (v7 + 1);
}

_BYTE *sub_1B98DF09C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 & 1 | (2 * ((a2 >> 1) + 1));
    }
  }

  return result;
}

uint64_t sub_1B98DF360(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B98DF4C8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B98DF70C(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1B98DF85C(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B98DFA48(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B98DFBB0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B98DFDD4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  LOWORD(v4) = v2 & 0x1FF;
  BYTE2(v4) = BYTE2(v2) & 1;
  return v4;
}

uint64_t sub_1B98DFE38(int a1, uint64_t a2, uint64_t a3)
{
  LOWORD(v4) = a1;
  BYTE2(v4) = BYTE2(a1);
  return (*(a3 + 16))(v4);
}

unint64_t sub_1B98E003C()
{
  v2 = qword_1EBBD5EF0;
  if (!qword_1EBBD5EF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5EF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E00D0()
{
  v2 = qword_1EBBD5EF8;
  if (!qword_1EBBD5EF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5EF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E0164()
{
  v2 = qword_1EBBD5F00;
  if (!qword_1EBBD5F00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E01F8()
{
  v2 = qword_1EBBD5F08;
  if (!qword_1EBBD5F08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E028C()
{
  v2 = qword_1EBBD5F10;
  if (!qword_1EBBD5F10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E0320()
{
  v2 = qword_1EBBD5F18;
  if (!qword_1EBBD5F18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E03B4()
{
  v2 = qword_1EBBD5F20;
  if (!qword_1EBBD5F20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E0448()
{
  v2 = qword_1EBBD5F28;
  if (!qword_1EBBD5F28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E04DC()
{
  v2 = qword_1EBBD5F30;
  if (!qword_1EBBD5F30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E0570()
{
  v2 = qword_1EBBD5F38;
  if (!qword_1EBBD5F38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E0604()
{
  v2 = qword_1EBBD5F40;
  if (!qword_1EBBD5F40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E0698()
{
  v2 = qword_1EBBD5F48;
  if (!qword_1EBBD5F48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E072C()
{
  v2 = qword_1EBBD5F50;
  if (!qword_1EBBD5F50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E07A8()
{
  v2 = qword_1EBBD5F60;
  if (!qword_1EBBD5F60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E0824()
{
  v2 = qword_1EBBD5F70;
  if (!qword_1EBBD5F70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E08A0()
{
  v2 = qword_1EBBD5F98;
  if (!qword_1EBBD5F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5F90, &qword_1B98FD330);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E0928()
{
  v2 = qword_1EBBD5FA8;
  if (!qword_1EBBD5FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5FA0, &qword_1B98FD338);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5FA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98E09B0(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t sub_1B98E09DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 16))(a2, a1);
  v13 = type metadata accessor for BlockedHandle();
  v3 = (a1 + v13[5]);
  v7 = (a2 + v13[5]);
  *v7 = *v3;
  v8 = v3[1];
  sub_1B98F54D8();
  v7[1] = v8;
  v9 = v13[6];
  v10 = *(a1 + v9);
  sub_1B98F54D8();
  *(a2 + v9) = v10;
  v11 = v13[7];
  v12 = *(a1 + v11);
  sub_1B98F54D8();
  *(a2 + v11) = v12;
  v4 = v13[8];
  v14 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v15 = *(a1 + v4 + 8);
  sub_1B98F54D8();
  *(v14 + 8) = v15;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DF8, &qword_1B98FC9A0);
  result = a2;
  *(a2 + *(v5 + 48)) = *(a1 + *(v5 + 48));
  return result;
}

uint64_t sub_1B98E0B64(uint64_t a1)
{
  v3 = sub_1B98F5078();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1B98E0C0C()
{
  v2 = qword_1EDBDB240;
  if (!qword_1EDBDB240)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EDBDB240);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B98E0D90()
{
  v2 = qword_1EBBD5FD8;
  if (!qword_1EBBD5FD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5FD8);
    return WitnessTable;
  }

  return v2;
}

id sub_1B98E0ED0()
{
  type metadata accessor for CommunicationTrustManager();
  result = sub_1B98E0F2C();
  qword_1EDBDB010 = result;
  return result;
}

uint64_t *sub_1B98E0F54()
{
  if (qword_1EDBDB008 != -1)
  {
    swift_once();
  }

  return &qword_1EDBDB010;
}

uint64_t static CommunicationTrustManager.shared.getter()
{
  v0 = sub_1B98E0F54();
  v4 = *v0;
  MEMORY[0x1E69E5928](*v0, v1, v2);
  return v4;
}

id sub_1B98E1068(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v10 = a1;
  v11 = v1;
  sub_1B98CB8A8(a1, v9);
  sub_1B98CB914(v9, &v1[OBJC_IVAR____TtC18CommunicationTrust25CommunicationTrustManager_server]);
  v8.receiver = v11;
  v8.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x1E69E5928](v7, v2, v3);
  v11 = v7;
  __swift_destroy_boxed_opaque_existential_1(a1);
  MEMORY[0x1E69E5920](v11);
  return v7;
}

id sub_1B98E1130()
{
  ObjectType = swift_getObjectType();
  v8 = v0;
  v7[3] = type metadata accessor for CommunicationTrustClient();
  v7[4] = &off_1F37935B0;
  v7[0] = sub_1B984999C();
  sub_1B98CB914(v7, &v0[OBJC_IVAR____TtC18CommunicationTrust25CommunicationTrustManager_server]);
  v6.receiver = v8;
  v6.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v6, sel_init);
  MEMORY[0x1E69E5928](v5, v1, v2);
  v8 = v5;
  MEMORY[0x1E69E5920](v5);
  return v5;
}

uint64_t CommunicationTrustManager.trustScore(for:options:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 48) = v3;
  *(v3 + 56) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 64) = 0;
  *(v3 + 56) = a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  *(v3 + 16) = *a2;
  *(v3 + 24) = v5 & 1;
  *(v3 + 64) = v2;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5 & 1;
  *(v3 + 25) = 2;
  v6 = swift_task_alloc();
  *(v8 + 72) = v6;
  *v6 = *(v8 + 48);
  v6[1] = sub_1B98E1360;

  return CommunicationTrustManager.trustScore(for:countryCode:options:service:)(a1, 0, 0, (v3 + 32), (v3 + 25));
}

uint64_t sub_1B98E1360(uint64_t a1)
{
  v8 = *v2;
  v3 = *(*v2 + 72);
  *(v8 + 48) = *v2;
  v9 = (v8 + 48);
  *(v8 + 80) = v1;

  if (v1)
  {
    v6 = *v9;

    return MEMORY[0x1EEE6DFA0](sub_1B98E1514, 0);
  }

  else
  {
    v4 = *(*v9 + 8);

    return v4(a1);
  }
}

uint64_t sub_1B98E1514()
{
  v1 = v0;
  *(v0 + 48) = v0;
  v2 = *(*(v0 + 48) + 8);
  v3 = *(v0 + 48);
  v4 = *(v1 + 80);
  return v2();
}

uint64_t CommunicationTrustManager.trustScore(for:countryCode:options:service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5)
{
  *(v6 + 168) = v5;
  *(v6 + 160) = a3;
  *(v6 + 152) = a2;
  *(v6 + 144) = a1;
  *(v6 + 104) = v6;
  *(v6 + 112) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 216) = 0;
  *(v6 + 120) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  *(v6 + 112) = a1;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  v7 = *a4;
  *(v6 + 176) = *a4;
  v8 = *(a4 + 8);
  *(v6 + 82) = v8 & 1;
  *(v6 + 72) = v7;
  *(v6 + 80) = v8 & 1;
  v9 = *a5;
  *(v6 + 83) = *a5;
  *(v6 + 216) = v9;
  *(v6 + 120) = v5;
  v10 = *(v6 + 104);
  return MEMORY[0x1EEE6DFA0](sub_1B98E1634, 0);
}

uint64_t sub_1B98E1634()
{
  v22 = v0;
  v1 = *(v0 + 82);
  v2 = *(v0 + 176);
  v3 = *(v0 + 168);
  v4 = *(v0 + 160);
  v5 = *(v0 + 152);
  v6 = *(v0 + 144);
  *(v0 + 104) = v0;
  v20 = v2;
  v21 = v1 & 1;
  v19 = sub_1B98E1EBC(v6, v5, v4, &v20);
  *(v0 + 184) = v19;
  *(v0 + 84) = v7;
  *(v0 + 88) = v19;
  *(v0 + 96) = v7 & 1;
  if (v7)
  {
    v14 = *(v18 + 83);
    v13 = *(v18 + 168);
    sub_1B98F54D8();
    *(v18 + 136) = v19;
    sub_1B98CB8A8(v13 + OBJC_IVAR____TtC18CommunicationTrust25CommunicationTrustManager_server, v18 + 16);
    v15 = *(v18 + 40);
    v16 = *(v18 + 48);
    __swift_project_boxed_opaque_existential_1((v18 + 16), v15);
    *(v18 + 81) = v14;
    v17 = (*(v16 + 48) + **(v16 + 48));
    v8 = *(*(v16 + 48) + 4);
    v9 = swift_task_alloc();
    *(v18 + 192) = v9;
    *v9 = *(v18 + 104);
    v9[1] = sub_1B98E1938;

    return v17(v19, v18 + 81, v15, v16);
  }

  else
  {
    *(v18 + 128) = v19;
    sub_1B98E2B7C(v19, v7 & 1);
    v11 = *(*(v18 + 104) + 8);
    v12 = *(v18 + 104);

    return v11(v19);
  }
}

uint64_t sub_1B98E1938(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 192);
  v9[13] = *v2;
  v10 = v9 + 13;
  v9[25] = a1;
  v9[26] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_1B98E1BA0;
  }

  else
  {
    v5 = *v10;
    v6 = sub_1B98E1AAC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0);
}

uint64_t sub_1B98E1AAC()
{
  v6 = *(v0 + 84);
  v5 = *(v0 + 184);
  *(v0 + 104) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_1B98E2B7C(v5, v6 & 1);
  v1 = *(v0 + 200);
  v2 = *(*(v0 + 104) + 8);
  v3 = *(v0 + 104);

  return v2(v1);
}

uint64_t sub_1B98E1BA0()
{
  v6 = *(v0 + 84);
  v5 = *(v0 + 184);
  *(v0 + 104) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_1B98E2B7C(v5, v6 & 1);
  v1 = *(*(v7 + 104) + 8);
  v2 = *(v7 + 104);
  v3 = *(v7 + 208);

  return v1();
}

uint64_t CommunicationTrustManager.trustScoreSync(for:countryCode:options:service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5)
{
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  v34 = a1;
  v32 = a2;
  v33 = a3;
  v5 = *(a4 + 8);
  v30 = *a4;
  v31 = v5 & 1;
  v15 = *a5;
  v29 = *a5;
  v26 = v30;
  v27 = v5 & 1;
  v16 = sub_1B98E1EBC(a1, a2, a3, &v26);
  v17 = v6;
  v24 = v16;
  v25 = v6 & 1;
  if ((v6 & 1) == 0)
  {
    sub_1B98E2B7C(v16, v6 & 1);
    return v16;
  }

  sub_1B98F54D8();
  v22 = v16;
  sub_1B98CB8A8(v13 + OBJC_IVAR____TtC18CommunicationTrust25CommunicationTrustManager_server, v19);
  v10 = v20;
  v11 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v18 = v15;
  v12 = (*(v11 + 40))(v16, &v18, v10);
  if (!v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v19);

    sub_1B98E2B7C(v16, v17 & 1);
    return v12;
  }

  __swift_destroy_boxed_opaque_existential_1(v19);

  sub_1B98E2B7C(v16, v17 & 1);
  return v8;
}

uint64_t sub_1B98E1EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v119 = a1;
  v122 = a2;
  v120 = a3;
  v121 = a4;
  v100 = sub_1B98E2EC0;
  v101 = sub_1B98E588C;
  v102 = sub_1B98E5840;
  v103 = sub_1B98E5848;
  v104 = sub_1B98E5898;
  v105 = "Fatal error";
  v106 = "Unexpectedly found nil while unwrapping an Optional value";
  v107 = "CommunicationTrust/CommunicationTrustManager.swift";
  v162 = 0;
  v161 = 0;
  v159 = 0;
  v160 = 0;
  v157 = 0;
  v158 = 0;
  v156 = 0;
  v153 = 0;
  v149 = 0;
  v145 = 0;
  v144 = 0;
  v139 = 0;
  v108 = 0;
  v123 = 0;
  v109 = sub_1B98F5078();
  v110 = *(v109 - 8);
  v111 = v109 - 8;
  v112 = (*(v110 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v5);
  v113 = v40 - v112;
  v114 = type metadata accessor for BlockedHandle();
  v115 = (*(*(v114 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v123, v6);
  v116 = v40 - v115;
  v117 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7, v40 - v115);
  v118 = v40 - v117;
  v162 = v40 - v117;
  v124 = sub_1B98F5138();
  v125 = *(v124 - 8);
  v126 = v124 - 8;
  v127 = (*(v125 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v123, v122);
  v128 = v40 - v127;
  v161 = v9;
  v159 = v10;
  v160 = v11;
  v129 = *v12;
  v130 = *(v12 + 8);
  v157 = v129;
  v158 = v130 & 1;
  v156 = v4;
  sub_1B98E2BB0();
  v13 = sub_1B98ED20C();
  v131 = *v13;
  v132 = v13[1];
  sub_1B98F54D8();
  v154 = sub_1B98E2C14(v131, v132);
  if (v154)
  {
    v155 = v154;
  }

  else
  {
    v155 = [objc_opt_self() standardUserDefaults];
    if (v154)
    {
      sub_1B98E2C5C(&v154);
    }
  }

  v97 = v155;
  v153 = v155;
  v14 = sub_1B98ED26C();
  v95 = *v14;
  v96 = v14[1];
  sub_1B98F54D8();
  v98 = sub_1B98F5648();

  v99 = [v97 valueForKey_];
  MEMORY[0x1E69E5920](v98);
  if (v99)
  {
    v94 = v99;
    v93 = v99;
    v92 = v133;
    sub_1B98F5C68();
    sub_1B98334F8(v92, &v150);
    swift_unknownObjectRelease();
  }

  else
  {
    v150 = 0uLL;
    v151 = 0uLL;
  }

  v152[0] = v150;
  v152[1] = v151;
  if (*(&v151 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6028, &qword_1B98FD390);
    if (swift_dynamicCast())
    {
      v91 = v133[4];
    }

    else
    {
      v91 = 0;
    }

    v90 = v91;
  }

  else
  {
    sub_1B985DAC0(v152);
    v90 = 0;
  }

  v89 = v90;
  if (!v90)
  {
    goto LABEL_32;
  }

  v88 = v89;
  v80 = v89;
  v145 = v89;
  sub_1B98F5058();
  v76 = v15;
  v82 = sub_1B98F5648();
  v144 = v82;

  v77 = 0;
  v78 = sub_1B98E2C90();
  v79 = sub_1B988F0DC();
  v81 = sub_1B98E2CF4();
  v16 = sub_1B98F54D8();
  v86 = &v143;
  v143 = v16;
  v85 = &v142;
  v142 = v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6008, &qword_1B98FD388);
  v84 = sub_1B98E2D74();
  sub_1B98E2DFC();
  v87 = sub_1B98F5818();
  sub_1B98E2E7C(v86);
  if ((v87 & 1) == 0)
  {
    goto LABEL_30;
  }

  MEMORY[0x1E69E5928](v82, v17, v18);
  v140 = v82;
  sub_1B98F55B8();
  MEMORY[0x1E69E5920](v140);
  v75 = v141;
  if (v141)
  {
    v74 = v75;
  }

  else
  {
    sub_1B98F5E08();
    __break(1u);
  }

  v71 = v74;
  v72 = [v74 integerValue];
  MEMORY[0x1E69E5920](v71);
  v73 = CommunicationTrustScore.init(rawValue:)(v72);
  if (v19)
  {
LABEL_30:
    MEMORY[0x1E69E5920](v82);

LABEL_32:
    (*(v110 + 16))(v113, v119, v109);
    v40[0] = sub_1B98C5608();
    v34 = sub_1B98C5654();
    v40[1] = 0;
    BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v113, 0, 0, v40[0], v34, v118);
    sub_1B98F54D8();
    v35 = v120;
    v36 = (v118 + *(v114 + 32));
    v37 = v36[1];
    *v36 = v122;
    v36[1] = v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5FF0, &qword_1B98FD380);
    v40[3] = sub_1B98F5F98();
    v40[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    sub_1B9853574();
    v38 = sub_1B98F54A8();
    v41 = &v149;
    v149 = v38;
    sub_1B9833334(v118, v116);
    v40[4] = &v146;
    v146 = v129;
    v147 = v130;
    v148 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
    sub_1B98F55C8();
    v42 = v149;
    sub_1B98F54D8();
    sub_1B9868DA4(v41);
    sub_1B983A3AC(v118);
    MEMORY[0x1E69E5920](v97);
    v43 = v42;
    v44 = 1;
    return v43;
  }

  v70 = v73;
  v20 = v128;
  v56 = v73;
  v139 = v73;
  v21 = sub_1B98F1B1C();
  (*(v125 + 16))(v20, v21, v124);
  v59 = 7;
  v60 = swift_allocObject();
  *(v60 + 16) = v56;
  v68 = sub_1B98F5118();
  v69 = sub_1B98F5BD8();
  v57 = 17;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  v58 = 32;
  v22 = swift_allocObject();
  v23 = v60;
  v61 = v22;
  *(v22 + 16) = v100;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v61;
  v65 = v24;
  *(v24 + 16) = v101;
  *(v24 + 24) = v25;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v64 = sub_1B98F5F98();
  v66 = v26;

  v27 = v62;
  v28 = v66;
  *v66 = v102;
  v28[1] = v27;

  v29 = v63;
  v30 = v66;
  v66[2] = v103;
  v30[3] = v29;

  v31 = v65;
  v32 = v66;
  v66[4] = v104;
  v32[5] = v31;
  sub_1B9851B38();

  if (os_log_type_enabled(v68, v69))
  {
    v33 = v108;
    v49 = sub_1B98F5C28();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v48 = 0;
    v50 = sub_1B985263C(0);
    v51 = sub_1B985263C(v48);
    v52 = &v138;
    v138 = v49;
    v53 = &v137;
    v137 = v50;
    v54 = &v136;
    v136 = v51;
    sub_1B9852690(0, &v138);
    sub_1B9852690(1, v52);
    v134 = v102;
    v135 = v62;
    sub_1B98526A4(&v134, v52, v53, v54);
    v55 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v134 = v103;
      v135 = v63;
      sub_1B98526A4(&v134, &v138, &v137, &v136);
      v46 = 0;
      v134 = v104;
      v135 = v65;
      sub_1B98526A4(&v134, &v138, &v137, &v136);
      _os_log_impl(&dword_1B982F000, v68, v69, "Handle has override value, returning %ld", v49, 0xCu);
      v45 = 0;
      sub_1B985281C(v50);
      sub_1B985281C(v51);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v68);
  (*(v125 + 8))(v128, v124);
  MEMORY[0x1E69E5920](v82);

  MEMORY[0x1E69E5920](v97);
  v43 = v56;
  v44 = 0;
  return v43;
}

uint64_t sub_1B98E2B7C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1B98E2BB0()
{
  v2 = qword_1EBBD5FE8;
  if (!qword_1EBBD5FE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5FE8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B98E2C90()
{
  v2 = qword_1EBBD5FF8;
  if (!qword_1EBBD5FF8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5FF8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B98E2CF4()
{
  v2 = qword_1EBBD6000;
  if (!qword_1EBBD6000)
  {
    sub_1B98E2C90();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6000);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E2D74()
{
  v2 = qword_1EBBD6010;
  if (!qword_1EBBD6010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD6008, &qword_1B98FD388);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E2DFC()
{
  v2 = qword_1EBBD6018;
  if (!qword_1EBBD6018)
  {
    sub_1B98E2C90();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6018);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98E2E7C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t CommunicationTrustManager.trustScores(for:options:service:)(uint64_t a1, uint64_t *a2, char *a3)
{
  *(v4 + 528) = v3;
  *(v4 + 520) = a1;
  *(v4 + 344) = v4;
  *(v4 + 352) = 0;
  *(v4 + 280) = 0;
  *(v4 + 288) = 0;
  *(v4 + 720) = 0;
  *(v4 + 360) = 0;
  *(v4 + 368) = 0;
  *(v4 + 376) = 0;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0;
  *(v4 + 392) = 0;
  *(v4 + 408) = 0;
  *(v4 + 248) = 0;
  *(v4 + 256) = 0;
  *(v4 + 424) = 0;
  memset((v4 + 96), 0, 0x28uLL);
  *(v4 + 432) = 0;
  *(v4 + 448) = 0;
  *(v4 + 456) = 0;
  *(v4 + 464) = 0;
  *(v4 + 504) = 0;
  v5 = type metadata accessor for BlockedHandle();
  *(v4 + 536) = v5;
  v15 = *(v5 - 8);
  *(v4 + 544) = v15;
  v16 = *(v15 + 64);
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64);
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  v6 = sub_1B98F5138();
  *(v4 + 584) = v6;
  v18 = *(v6 - 8);
  *(v4 + 592) = v18;
  v7 = *(v18 + 64) + 15;
  *(v4 + 600) = swift_task_alloc();
  v8 = sub_1B98F5078();
  *(v4 + 608) = v8;
  v19 = *(v8 - 8);
  *(v4 + 616) = v19;
  v20 = *(v19 + 64);
  *(v4 + 624) = swift_task_alloc();
  *(v4 + 632) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EB0, &qword_1B98FCAD0) - 8) + 64) + 15;
  *(v4 + 640) = swift_task_alloc();
  *(v4 + 352) = a1;
  v10 = *a2;
  *(v4 + 648) = *a2;
  v11 = *(a2 + 8);
  *(v4 + 275) = v11 & 1;
  *(v4 + 280) = v10;
  *(v4 + 288) = v11 & 1;
  v12 = *a3;
  *(v4 + 276) = *a3;
  *(v4 + 720) = v12;
  *(v4 + 360) = v3;
  v13 = *(v4 + 344);

  return MEMORY[0x1EEE6DFA0](sub_1B98E3230, 0);
}

uint64_t sub_1B98E3230()
{
  v87 = v0;
  v76 = v0[76];
  v77 = v0[65];
  v0[43] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6030, &qword_1B98FD3A0);
  sub_1B98F5F98();
  sub_1B98C982C();
  v0[46] = sub_1B98F54A8();
  sub_1B98F54D8();
  v0[47] = v77;
  sub_1B98F54D8();
  v0[48] = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6038, &qword_1B98FD3A8);
  v79 = sub_1B98E5984();
  sub_1B98F5B88();
  v80 = 0;
  while (1)
  {
    v73 = *(v75 + 640);
    v74 = *(v75 + 608);
    v72 = *(v75 + 616);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6048, &unk_1B98FD3B0);
    sub_1B98F5DE8();
    if ((*(v72 + 48))(v73, 1, v74) == 1)
    {
      break;
    }

    (*(*(v75 + 616) + 32))(*(v75 + 632), *(v75 + 640), *(v75 + 608));
    sub_1B98E2BB0();
    v1 = sub_1B98ED20C();
    v69 = *v1;
    v70 = v1[1];
    sub_1B98F54D8();
    *(v75 + 440) = sub_1B98E2C14(v69, v70);
    if (*(v75 + 440))
    {
      v81 = *(v75 + 440);
    }

    else
    {
      v81 = [objc_opt_self() standardUserDefaults];
      if (*(v75 + 440))
      {
        sub_1B98E2C5C((v75 + 440));
      }
    }

    *(v75 + 448) = v81;
    v2 = sub_1B98ED26C();
    v65 = *v2;
    v66 = v2[1];
    sub_1B98F54D8();
    v67 = sub_1B98F5648();

    v68 = [v81 valueForKey_];
    MEMORY[0x1E69E5920](v67);
    if (v68)
    {
      sub_1B98F5C68();
      sub_1B98334F8(v75 + 200, v75 + 168);
      swift_unknownObjectRelease();
    }

    else
    {
      *(v75 + 168) = 0;
      *(v75 + 176) = 0;
      *(v75 + 184) = 0;
      *(v75 + 192) = 0;
    }

    *(v75 + 136) = *(v75 + 168);
    *(v75 + 152) = *(v75 + 184);
    if (*(v75 + 160))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6028, &qword_1B98FD390);
      if (swift_dynamicCast())
      {
        v64 = *(v75 + 512);
      }

      else
      {
        v64 = 0;
      }

      v63 = v64;
    }

    else
    {
      sub_1B985DAC0((v75 + 136));
      v63 = 0;
    }

    if (v63)
    {
      v3 = *(v75 + 632);
      *(v75 + 456) = v63;
      sub_1B98F5058();
      v61 = sub_1B98F5648();
      *(v75 + 464) = v61;

      sub_1B98E2C90();
      sub_1B988F0DC();
      sub_1B98E2CF4();
      *(v75 + 472) = sub_1B98F54D8();
      *(v75 + 480) = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6008, &qword_1B98FD388);
      sub_1B98E2D74();
      sub_1B98E2DFC();
      v62 = sub_1B98F5818();
      sub_1B98E2E7C((v75 + 472));
      if (v62)
      {
        MEMORY[0x1E69E5928](v61, v4, v5);
        *(v75 + 496) = v61;
        sub_1B98F55B8();
        MEMORY[0x1E69E5920](*(v75 + 496));
        v58 = *(v75 + 488);
        if (!v58)
        {
          return sub_1B98F5E08();
        }

        v56 = [v58 integerValue];
        MEMORY[0x1E69E5920](v58);
        v57 = CommunicationTrustScore.init(rawValue:)(v56);
        if (v6)
        {
          v54 = v80;
          v55 = v71;
        }

        else
        {
          v8 = *(v75 + 600);
          v45 = *(v75 + 584);
          v44 = *(v75 + 592);
          *(v75 + 504) = v57;
          v9 = sub_1B98F1B1C();
          (*(v44 + 16))(v8, v9, v45);
          v46 = swift_allocObject();
          *(v46 + 16) = v57;
          oslog = sub_1B98F5118();
          v53 = sub_1B98F5BD8();
          v48 = swift_allocObject();
          *(v48 + 16) = 0;
          v49 = swift_allocObject();
          *(v49 + 16) = 8;
          v47 = swift_allocObject();
          *(v47 + 16) = sub_1B98E5B14;
          *(v47 + 24) = v46;
          v50 = swift_allocObject();
          *(v50 + 16) = sub_1B98E5B2C;
          *(v50 + 24) = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
          sub_1B98F5F98();
          v51 = v10;

          *v51 = sub_1B98E5B1C;
          v51[1] = v48;

          v51[2] = sub_1B98E5B24;
          v51[3] = v49;

          v51[4] = sub_1B98E5B38;
          v51[5] = v50;
          sub_1B9851B38();

          if (os_log_type_enabled(oslog, v53))
          {
            buf = sub_1B98F5C28();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
            v42 = sub_1B985263C(0);
            v43 = sub_1B985263C(0);
            v82 = buf;
            v83 = v42;
            v84 = v43;
            sub_1B9852690(0, &v82);
            sub_1B9852690(1, &v82);
            v85 = sub_1B98E5B1C;
            v86 = v48;
            sub_1B98526A4(&v85, &v82, &v83, &v84);
            v85 = sub_1B98E5B24;
            v86 = v49;
            sub_1B98526A4(&v85, &v82, &v83, &v84);
            v85 = sub_1B98E5B38;
            v86 = v50;
            sub_1B98526A4(&v85, &v82, &v83, &v84);
            _os_log_impl(&dword_1B982F000, oslog, v53, "Handle has override value, returning %ld", buf, 0xCu);
            sub_1B985281C(v42);
            sub_1B985281C(v43);
            sub_1B98F5C08();
          }

          v39 = *(v75 + 632);
          v38 = *(v75 + 624);
          v37 = *(v75 + 608);
          v34 = *(v75 + 600);
          v35 = *(v75 + 584);
          v36 = *(v75 + 616);
          v33 = *(v75 + 592);
          MEMORY[0x1E69E5920](oslog);
          (*(v33 + 8))(v34, v35);
          (*(v36 + 16))(v38, v39, v37);
          *(v75 + 328) = v57;
          *(v75 + 336) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6058, &qword_1B98FD3D0);
          sub_1B98F55C8();
          *(swift_task_alloc() + 16) = v39;
          sub_1B98E5BD8();
          sub_1B98E5C60();
          sub_1B98F5BA8();

          v54 = 0;
          v55 = 0;
        }
      }

      else
      {
        v54 = v80;
        v55 = v71;
      }

      MEMORY[0x1E69E5920](v61);

      v59 = v54;
      v60 = v55;
    }

    else
    {
      v59 = v80;
      v60 = v71;
    }

    v31 = *(v75 + 632);
    v32 = *(v75 + 608);
    v30 = *(v75 + 616);
    MEMORY[0x1E69E5920](v81);
    (*(v30 + 8))(v31, v32);
    v80 = v59;
    v71 = v60;
  }

  v28 = *(v75 + 536);
  sub_1B98E5A0C((v75 + 232));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5FF0, &qword_1B98FD380);
  sub_1B98F5F98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  *(v75 + 656) = sub_1B9853574();
  *(v75 + 392) = sub_1B98F54A8();
  v27 = *(v75 + 376);
  sub_1B98F54D8();
  *(v75 + 400) = v27;
  v29 = sub_1B985D064(sub_1B98E4F8C, 0, v78, v28, MEMORY[0x1E69E73E0], v79, MEMORY[0x1E69E7410], v40);
  *(v75 + 664) = v29;
  sub_1B98E5A38((v75 + 400));
  *(v75 + 408) = v29;
  sub_1B98F54D8();
  *(v75 + 416) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
  sub_1B988AF2C();
  sub_1B98F5B88();
  while (1)
  {
    v25 = *(v75 + 576);
    v26 = *(v75 + 536);
    v24 = *(v75 + 544);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5808, &qword_1B98FD3C0);
    sub_1B98F5DE8();
    v11 = *(v24 + 48);
    *(v75 + 672) = v11;
    *(v75 + 680) = (v24 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v11(v25, 1, v26) == 1)
    {
      break;
    }

    v21 = *(v75 + 275);
    v20 = *(v75 + 648);
    v23 = *(v75 + 560);
    v22 = *(v75 + 552);
    sub_1B9832680(*(v75 + 576), v23);
    sub_1B9833334(v23, v22);
    *(v75 + 264) = v20;
    *(v75 + 272) = v21;
    *(v75 + 273) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
    sub_1B98F55C8();
    sub_1B983A3AC(v23);
  }

  v15 = *(v75 + 276);
  v14 = *(v75 + 528);
  sub_1B988AFB4((v75 + 248));
  sub_1B98CB8A8(v14 + OBJC_IVAR____TtC18CommunicationTrust25CommunicationTrustManager_server, v75 + 56);
  v16 = *(v75 + 80);
  v17 = *(v75 + 88);
  __swift_project_boxed_opaque_existential_1((v75 + 56), v16);
  v19 = *(v75 + 392);
  *(v75 + 688) = v19;
  sub_1B98F54D8();
  *(v75 + 274) = v15;
  v18 = (*(v17 + 56) + **(v17 + 56));
  v12 = *(*(v17 + 56) + 4);
  v13 = swift_task_alloc();
  *(v75 + 696) = v13;
  *v13 = *(v75 + 344);
  v13[1] = sub_1B98E4830;

  return v18(v19, v75 + 274, v16, v17);
}

uint64_t sub_1B98E4830(uint64_t a1)
{
  v12 = *v2;
  v10 = *v2 + 16;
  v11 = v12 + 43;
  v4 = *(*v2 + 696);
  v12[43] = *v2;
  v12[88] = a1;
  v12[89] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_1B98E4DD4;
  }

  else
  {
    v5 = *(v10 + 672);

    v6 = *v11;
    v7 = sub_1B98E49BC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0);
}

uint64_t sub_1B98E49BC()
{
  v1 = v0[88];
  v33 = v0[82];
  v32 = v0[67];
  v0[43] = v0;
  v0[53] = v1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = sub_1B98F54D8();
  MEMORY[0x1BFADD440](v2, v32, &type metadata for CommunicationTrustScore, v33);
  memcpy(v0 + 12, v0 + 2, 0x28uLL);
  while (1)
  {
    v29 = *(v31 + 680);
    v30 = *(v31 + 672);
    v27 = *(v31 + 568);
    v28 = *(v31 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6050, &qword_1B98FD3C8);
    sub_1B98F54C8();
    if (v30(v27, 1, v28) == 1)
    {
      break;
    }

    *(v31 + 432) = *(v31 + 560);
    v21 = *(v31 + 704);
    v23 = *(v31 + 656);
    v24 = *(v31 + 624);
    v20 = *(v31 + 608);
    v26 = *(v31 + 560);
    v25 = *(v31 + 552);
    v22 = *(v31 + 536);
    v19 = *(v31 + 616);
    v3 = sub_1B9832680(*(v31 + 568), v26);
    (*(v19 + 16))(v24, v26, v20, v3);
    sub_1B9833334(v26, v25);
    sub_1B98F55B8();
    v4 = *(v31 + 304);
    *(v31 + 312) = *(v31 + 296);
    *(v31 + 320) = v4 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6058, &qword_1B98FD3D0);
    sub_1B98F55C8();
    sub_1B983A3AC(v25);
    sub_1B983A3AC(v26);
  }

  v8 = *(v31 + 704);
  v9 = *(v31 + 664);
  v10 = *(v31 + 640);
  v11 = *(v31 + 632);
  v12 = *(v31 + 624);
  v13 = *(v31 + 600);
  v14 = *(v31 + 576);
  v15 = *(v31 + 568);
  v16 = *(v31 + 560);
  v17 = *(v31 + 552);
  sub_1B98E5A90((v31 + 96));
  v18 = *(v31 + 368);
  sub_1B98F54D8();

  sub_1B9868DA4((v31 + 392));
  sub_1B98E5A38((v31 + 376));
  sub_1B98E5A64((v31 + 368));

  v5 = *(*(v31 + 344) + 8);
  v6 = *(v31 + 344);

  return v5(v18);
}

uint64_t sub_1B98E4DD4()
{
  v1 = v0[86];
  v6 = v0[83];
  v7 = v0[80];
  v8 = v0[79];
  v9 = v0[78];
  v10 = v0[75];
  v11 = v0[72];
  v12 = v0[71];
  v13 = v0[70];
  v14 = v0[69];
  v0[43] = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  sub_1B9868DA4(v0 + 49);
  sub_1B98E5A38(v0 + 47);
  sub_1B98E5A64(v0 + 46);

  v2 = *(*(v15 + 344) + 8);
  v3 = *(v15 + 344);
  v4 = *(v15 + 712);

  return v2();
}

uint64_t sub_1B98E4F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v7 = a1;
  v14 = 0;
  v11 = 0;
  v2 = sub_1B98F5078();
  v9 = *(v2 - 8);
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v7);
  v13 = &v6 - v8;
  v14 = v3;
  (*(v9 + 16))();
  v12 = sub_1B98C5608();
  v4 = sub_1B98C5654();
  return BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v13, v11, v11, v12, v4, v10);
}

uint64_t CommunicationTrustManager.updateServerTrust(for:serverTrust:service:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 120) = v4;
  *(v5 + 112) = a4;
  *(v5 + 104) = a3;
  *(v5 + 177) = a2 & 1;
  *(v5 + 96) = a1;
  *(v5 + 72) = v5;
  *(v5 + 80) = 0;
  *(v5 + 176) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 88) = 0;
  v6 = sub_1B98F5078();
  *(v5 + 128) = v6;
  v11 = *(v6 - 8);
  *(v5 + 136) = v11;
  v7 = *(v11 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v8 = *(*(type metadata accessor for BlockedHandle() - 8) + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 80) = a1;
  *(v5 + 176) = a2 & 1;
  *(v5 + 56) = a3;
  *(v5 + 64) = a4;
  *(v5 + 88) = v4;
  v9 = *(v5 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1B98E5230, 0);
}

uint64_t sub_1B98E5230()
{
  v12 = v0[19];
  v14 = v0[18];
  v1 = v0[17];
  v2 = v0[16];
  v15 = v0[15];
  v3 = v0[12];
  v0[9] = v0;
  (*(v1 + 16))();
  v13 = sub_1B98C5608();
  v4 = sub_1B98C5654();
  BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v14, 0, 0, v13, v4, v12);
  sub_1B98CB8A8(v15 + OBJC_IVAR____TtC18CommunicationTrust25CommunicationTrustManager_server, (v0 + 2));
  v17 = v0[5];
  v18 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v17);
  v19 = (*(v18 + 64) + **(v18 + 64));
  v5 = *(*(v18 + 64) + 4);
  v6 = swift_task_alloc();
  *(v16 + 160) = v6;
  *v6 = *(v16 + 72);
  v6[1] = sub_1B98E5418;
  v7 = *(v16 + 152);
  v8 = *(v16 + 112);
  v9 = *(v16 + 104);
  v10 = *(v16 + 177) & 1;

  return v19(v7, v10, v9, v8, v17, v18);
}

uint64_t sub_1B98E5418()
{
  v7 = *v1;
  v2 = *(*v1 + 160);
  *(v7 + 72) = *v1;
  v8 = (v7 + 72);
  *(v7 + 168) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_1B98E5644;
  }

  else
  {
    v3 = *v8;
    v4 = sub_1B98E5580;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0);
}

uint64_t sub_1B98E5580()
{
  v4 = v0[19];
  v5 = v0[18];
  v0[9] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_1B983A3AC(v4);

  v1 = *(v0[9] + 8);
  v2 = v0[9];

  return v1();
}

uint64_t sub_1B98E5644()
{
  v5 = v0[19];
  v6 = v0[18];
  v0[9] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_1B983A3AC(v5);

  v1 = *(*(v7 + 72) + 8);
  v2 = *(v7 + 72);
  v3 = *(v7 + 168);

  return v1();
}

id CommunicationTrustManager.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B98E5790(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = sub_1B98F5648();

    v2 = [v7 initWithSuiteName_];
  }

  else
  {
    v2 = [v7 initWithSuiteName_];
  }

  v5 = v2;
  MEMORY[0x1E69E5920](v4);
  return v5;
}

uint64_t sub_1B98E5850@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B98E5898(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B98E590C();
  v5 = MEMORY[0x1E69E6530];

  return sub_1B9880568(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1B98E590C()
{
  v2 = qword_1EBBD6020;
  if (!qword_1EBBD6020)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E5984()
{
  v2 = qword_1EBBD6040;
  if (!qword_1EBBD6040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD6038, &qword_1B98FD3A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6040);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98E5A0C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *sub_1B98E5A38(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *sub_1B98E5A64(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *sub_1B98E5A90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_1B98E5AD0();
  return a1;
}

uint64_t sub_1B98E5B38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B98E590C();
  v5 = MEMORY[0x1E69E6530];

  return sub_1B9880568(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1B98E5BD8()
{
  v2 = qword_1EBBD6060;
  if (!qword_1EBBD6060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD6038, &qword_1B98FD3A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6060);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E5C60()
{
  v2 = qword_1EBBD6068;
  if (!qword_1EBBD6068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD6038, &qword_1B98FD3A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6068);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98E5CE8(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1B98E5E38(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B98E605C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 9))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = 255 - *(a1 + 8);
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B98E6180(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0xFE)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 255;
    if (a3 >= 0xFF)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1B98E6374()
{
  v2 = qword_1EBBD6070;
  if (!qword_1EBBD6070)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6070);
    return WitnessTable;
  }

  return v2;
}

uint64_t CommunicationTrustScore.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 7:
      return 7;
    case 8:
      return 8;
    case 9:
      return 9;
  }

  return 0;
}

BOOL static CommunicationTrustScore.< infix(_:_:)()
{
  CommunicationTrustScore.rawValue.getter();
  v3 = v0;
  CommunicationTrustScore.rawValue.getter();
  return v3 < v1;
}

uint64_t CommunicationTrustScore.description.getter(unint64_t a1)
{
  if (a1 < 0xA)
  {
    return sub_1B98F55E8();
  }

  sub_1B98F5FC8();
  __break(1u);
  return v2;
}

uint64_t static CommunicationTrustScore.allCases.getter()
{
  result = sub_1B98F5F98();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  v1[5] = 5;
  v1[6] = 6;
  v1[7] = 7;
  v1[8] = 8;
  v1[9] = 9;
  sub_1B9851B38();
  return result;
}

uint64_t sub_1B98E6974@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = CommunicationTrustScore.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void sub_1B98E69B0(void *a1@<X8>)
{
  v2 = *v1;
  CommunicationTrustScore.rawValue.getter();
  *a1 = v3;
}

unint64_t sub_1B98E6AE0()
{
  v2 = qword_1EBBD6078;
  if (!qword_1EBBD6078)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6078);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_1B98E6C44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static CommunicationTrustScore.< infix(_:_:)();
}

uint64_t sub_1B98E6D54()
{
  sub_1B98E6EDC();
  sub_1B98E6F58();
  return sub_1B98F5098();
}

unint64_t sub_1B98E6DF8()
{
  v2 = qword_1EBBD6080;
  if (!qword_1EBBD6080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD6088, &qword_1B98FD708);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6080);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98E6E80@<X0>(uint64_t *a1@<X8>)
{
  result = static CommunicationTrustScore.allCases.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1B98E6EDC()
{
  v2 = qword_1EBBD6090;
  if (!qword_1EBBD6090)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6090);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E6F58()
{
  v2 = qword_1EBBD6098;
  if (!qword_1EBBD6098)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6098);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B98E6FD4()
{
  if (qword_1EBBD4E80 != -1)
  {
    swift_once();
  }

  return &unk_1EBBD60B0;
}

void *sub_1B98E7034()
{
  if (qword_1EBBD4E78 != -1)
  {
    swift_once();
  }

  return &unk_1EBBD60A8;
}

void *sub_1B98E7094()
{
  if (qword_1EBBD4E88 != -1)
  {
    swift_once();
  }

  return &unk_1EBBD60B8;
}

void *sub_1B98E70F4()
{
  if (qword_1EBBD4E70 != -1)
  {
    swift_once();
  }

  return &unk_1EBBD60A0;
}

void *static CommunicationTrustScoreOptions.junkSignal.getter@<X0>(void *a1@<X8>)
{
  result = sub_1B98E70F4();
  *a1 = *result;
  return result;
}

void *static CommunicationTrustScoreOptions.ignoreContacts.getter@<X0>(void *a1@<X8>)
{
  result = sub_1B98E7034();
  *a1 = *result;
  return result;
}

void *static CommunicationTrustScoreOptions.ignoreCallDirectory.getter@<X0>(void *a1@<X8>)
{
  result = sub_1B98E6FD4();
  *a1 = *result;
  return result;
}

void *static CommunicationTrustScoreOptions.ignoreServerTrust.getter@<X0>(void *a1@<X8>)
{
  result = sub_1B98E7094();
  *a1 = *result;
  return result;
}

unint64_t sub_1B98E7398()
{
  v2 = qword_1EBBD60C0;
  if (!qword_1EBBD60C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD60C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98E7484()
{
  sub_1B9873520();
  sub_1B98E590C();
  return sub_1B98F6158();
}

uint64_t sub_1B98E7688()
{
  sub_1B9873520();
  sub_1B98E590C();
  return sub_1B98F6148();
}

uint64_t sub_1B98E76CC()
{
  sub_1B9873520();
  sub_1B98E590C();
  return sub_1B98F6128();
}

uint64_t sub_1B98E7710()
{
  sub_1B9873520();
  sub_1B98E590C();
  return sub_1B98F6138();
}

CommunicationTrust::CommunicationTrustScoreOptions sub_1B98E7830@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = CommunicationTrustScoreOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B98E7878@<X0>(uint64_t *a1@<X8>)
{
  result = CommunicationTrustScoreOptions.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1B98E7930()
{
  v2 = qword_1EBBD60C8;
  if (!qword_1EBBD60C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD60C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E79F4()
{
  v2 = qword_1EBBD60D0;
  if (!qword_1EBBD60D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD60D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E7A88()
{
  v2 = qword_1EBBD60D8;
  if (!qword_1EBBD60D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD60D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for CommunicationTrustScoreOptions(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CommunicationTrustScoreOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 8) = 1;
    }
  }

  else if (a3)
  {
    *(result + 8) = 0;
  }

  return result;
}

CommunicationTrust::Service_optional __swiftcall Service.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (!rawValue)
  {
    v3 = 0;
LABEL_6:
    *v1 = v3;
    return rawValue;
  }

  if (rawValue == 1)
  {
    v3 = 1;
    goto LABEL_6;
  }

  *v1 = 2;
  return rawValue;
}

uint64_t static Service.allCases.getter()
{
  result = sub_1B98F5F98();
  *v1 = 0;
  v1[1] = 1;
  sub_1B9851B38();
  return result;
}

unint64_t sub_1B98E7FA8()
{
  v2 = qword_1EBBD60E0;
  if (!qword_1EBBD60E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD60E0);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_1B98E8040@<W0>(_DWORD *a1@<X8>)
{
  result = Service.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B98E82D4()
{
  sub_1B98E8320();
  sub_1B98E7FA8();
  return sub_1B98F5098();
}

unint64_t sub_1B98E8320()
{
  v2 = qword_1EBBD60E8;
  if (!qword_1EBBD60E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD60E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98E83DC@<X0>(uint64_t *a1@<X8>)
{
  result = static Service.allCases.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1B98E8420()
{
  v2 = qword_1EBBD60F0;
  if (!qword_1EBBD60F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD60F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E84B4()
{
  v2 = qword_1EBBD60F8;
  if (!qword_1EBBD60F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBBD6100, &qword_1B98FDB58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD60F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for Service(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Service(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B98E8940(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v4 = *a1 + 252;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFC)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B98E8A38(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    *(result + 16) = 0;
    if (a3 >= 0xFD)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B98E8C10(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v6[27] = sub_1B98E9CE4;
  v6[28] = sub_1B98E9CFC;
  v6[29] = sub_1B98E9D08;
  v6[30] = sub_1B98E9CEC;
  v6[31] = sub_1B98E9CF4;
  v6[32] = sub_1B98E9D14;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v15 = 0;
  v12 = 0;
  v7 = sub_1B98F5138();
  v8 = *(v7 - 8);
  v9 = v7 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v13);
  v11 = v6 - v10;
  v17 = v3;
  v18 = v4;
  v16 = v2;
  sub_1B98E9380();
  sub_1B9836338();
  return sub_1B98F5BE8();
}

unint64_t sub_1B98E9380()
{
  v2 = qword_1EDBDAC08;
  if (!qword_1EDBDAC08)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EDBDAC08);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B98E93E4()
{
  v59 = sub_1B98E9D20;
  v60 = sub_1B98E9D38;
  v61 = sub_1B98E9D44;
  v62 = sub_1B98E9D28;
  v63 = sub_1B98E9D30;
  v64 = sub_1B98E9D50;
  v83 = *MEMORY[0x1E69E9840];
  v79 = 0;
  v77 = 0;
  v65 = sub_1B98F5138();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65, v1);
  v69 = v26 - v68;
  v79 = v0;
  v82 = 0;
  v70 = objc_opt_self();
  MEMORY[0x1E69E5928](v72, v70, v2);
  v78 = v82;
  v73 = [v70 archivedDataWithRootObject:v72 requiringSecureCoding:1 error:&v78];
  v71 = v78;
  MEMORY[0x1E69E5928](v78, v3, v4);
  v5 = v82;
  v82 = v71;
  MEMORY[0x1E69E5920](v5);
  swift_unknownObjectRelease();
  if (v73)
  {
    v58 = v73;
    v53 = v73;
    v54 = sub_1B98F4F98();
    v55 = v6;
    MEMORY[0x1E69E5920](v53);
    v56 = v54;
    v57 = v55;
  }

  else
  {
    v34 = v82;
    v36 = sub_1B98F4F38();
    MEMORY[0x1E69E5920](v34);
    swift_willThrow();
    v8 = v69;
    v35 = 0;
    v9 = v36;
    v77 = v36;
    v10 = sub_1B98F1B1C();
    (*(v66 + 16))(v8, v10, v65);
    v11 = v36;
    v40 = 7;
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    sub_1B98745B0();

    v49 = sub_1B98F5118();
    v50 = sub_1B98F5BC8();
    v37 = 17;
    v43 = swift_allocObject();
    *(v43 + 16) = 66;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v39 = 32;
    v12 = swift_allocObject();
    v13 = v38;
    v41 = v12;
    *(v12 + 16) = v59;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v41;
    v42 = v14;
    *(v14 + 16) = v60;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v42;
    v46 = v16;
    *(v16 + 16) = v61;
    *(v16 + 24) = v17;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v45 = sub_1B98F5F98();
    v47 = v18;

    v19 = v43;
    v20 = v47;
    *v47 = v62;
    v20[1] = v19;

    v21 = v44;
    v22 = v47;
    v47[2] = v63;
    v22[3] = v21;

    v23 = v46;
    v24 = v47;
    v47[4] = v64;
    v24[5] = v23;
    sub_1B9851B38();

    if (os_log_type_enabled(v49, v50))
    {
      v25 = v35;
      v27 = sub_1B98F5C28();
      v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v28 = sub_1B985263C(1);
      v29 = sub_1B985263C(0);
      v30 = &v76;
      v76 = v27;
      v31 = &v81;
      v81 = v28;
      v32 = &v80;
      v80 = v29;
      sub_1B9852690(2, &v76);
      sub_1B9852690(1, v30);
      v74 = v62;
      v75 = v43;
      sub_1B98526A4(&v74, v30, v31, v32);
      v33 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v74 = v63;
        v75 = v44;
        sub_1B98526A4(&v74, &v76, &v81, &v80);
        v26[0] = 0;
        v74 = v64;
        v75 = v46;
        sub_1B98526A4(&v74, &v76, &v81, &v80);
        _os_log_impl(&dword_1B982F000, v49, v50, "Failed to archive CNContact: %{public}@", v27, 0xCu);
        sub_1B985281C(v28);
        sub_1B985281C(v29);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v49);
    (*(v66 + 8))(v69, v65);

    v56 = 0;
    v57 = 0xF000000000000000;
  }

  v51 = v57;
  v52 = v56;
  *MEMORY[0x1E69E9840];
  return v56;
}

uint64_t sub_1B98E9D6C()
{
  v2 = *(v0 + 8);
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B98E9D98(uint64_t a1)
{
  sub_1B98F54D8();
  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
}

uint64_t sub_1B98E9E30(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v6 = a2;
  v10 = *(a2 + 16);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v4 - v5;
  (*(v8 + 16))();
  (*(v8 + 40))(v2 + *(v6 + 40), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t sub_1B98E9FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v11 = type metadata accessor for AsyncStreamManager.State();
  (*(*(a5 - 8) + 32))(&a6[*(v11 + 40)], a3);
  result = v11;
  a6[*(v11 + 44)] = a4;
  return result;
}

uint64_t sub_1B98EA074()
{
  v3 = *(*v0 + 80);
  v2 = v0[2];

  return v2;
}

uint64_t AsyncStreamManager.value.getter()
{
  v10 = 0;
  v3 = *v0;
  v10 = v0;
  v9 = *(v3 + 80);
  v5 = v9;
  v4 = v0[2];

  v7 = v9;
  v8 = *(v3 + 88);
  v1 = type metadata accessor for AsyncStreamManager.State();
  sub_1B9875AE4(sub_1B98EA4B0, v6, v4, v1, v5);
}

uint64_t sub_1B98EA1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a4;
  v11 = *(a2 + a3 - 16);
  v14 = v11;
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v5 - v5;
  v6 = *MEMORY[0x1EEE9AC00](a1, a2);

  v13 = v6;
  v12 = v6;
  AsyncStreamManager.value.getter();
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t sub_1B98EA2B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5[1] = a1;
  v8 = a2;
  v13 = *(a3 + a4 - 16);
  v7 = *(v13 - 8);
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = v5 - v6;
  (*(v7 + 16))();
  v10 = *v8;

  v12 = v10;
  v11 = v10;
  AsyncStreamManager.value.setter(v9);
}

uint64_t AsyncStreamManager.value.setter(uint64_t a1)
{
  v4 = *(*v1 + 80);
  sub_1B98EA514(a1);
  return (*(*(v4 - 8) + 8))(a1);
}

uint64_t sub_1B98EA514(uint64_t a1)
{
  v32 = a1;
  v39 = sub_1B98EC860;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v47 = 0;
  v46 = 0;
  v1 = memset(__b, 0, sizeof(__b));
  v30 = *v27;
  v31 = v27;
  v33 = *(v30 + 80);
  v52 = v33;
  v14 = *(v33 - 8);
  v15 = v33 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v33);
  v17 = &v7 - v16;
  v35 = 0;
  v18 = sub_1B98F59A8();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35, v33);
  v22 = &v7 - v21;
  v34 = sub_1B98F59F8();
  v23 = *(v34 - 8);
  v24 = v34 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35, v34);
  v26 = &v7 - v25;
  v51 = &v7 - v25;
  v28 = (*(*(sub_1B98F5C38() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v32, v2);
  v29 = &v7 - v28;
  v50 = v3;
  v49 = v4;
  v36 = *(v4 + 16);

  v38 = &v41;
  v42 = v33;
  v43 = *(v30 + 88);
  v44 = v32;
  v37 = type metadata accessor for AsyncStreamManager.State();
  sub_1B98F5518();
  v5 = sub_1B98F5C38();
  sub_1B9875AE4(v39, v38, v36, v37, v5);
  v40 = 0;

  v13 = v48;
  v47 = v48;
  sub_1B98F54D8();
  if (!v13)
  {
  }

  v12 = v13;
  v9 = v13;
  v46 = v13;
  sub_1B98F54D8();
  v10 = &v53;
  MEMORY[0x1BFADD470](v9, MEMORY[0x1E69E6530], v34, MEMORY[0x1E69E6540]);
  memcpy(__b, v10, sizeof(__b));
  for (i = v40; ; i = v8)
  {
    v8 = i;
    sub_1B98F5508();
    sub_1B98F54F8();
    if ((*(v23 + 48))(v29, 1, v34) == 1)
    {
      break;
    }

    (*(v23 + 32))(v26, v29, v34);
    (*(v14 + 16))(v17, v32, v33);
    sub_1B98F59D8();
    (*(v19 + 8))(v22, v18);
    (*(v23 + 8))(v26, v34);
  }

  sub_1B98EC89C(__b);
}

void (*AsyncStreamManager.value.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = *(*v1 + 80);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  AsyncStreamManager.value.getter();
  return sub_1B98EAC64;
}

void sub_1B98EAC64(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    AsyncStreamManager.value.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    AsyncStreamManager.value.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t AsyncStreamManager.init(initialValue:excludeInitialValue:)(uint64_t a1, int a2)
{
  v24 = a1;
  v16 = a2;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v13 = *v2;
  v23 = *(v13 + 80);
  v29 = v23;
  v21 = *(v23 - 8);
  v22 = v23 - 8;
  v12 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, v23);
  v15 = &v12 - v12;
  v17 = *(v13 + 88);
  v20 = type metadata accessor for AsyncStreamManager.State();
  v14 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v15, v24);
  v19 = &v12 - v14;
  v28 = v4;
  v27 = v16 & 1;
  v26 = v2;
  (*(v21 + 16))(v3);
  v18 = sub_1B98E9F6C();
  v5 = sub_1B98E9F80();
  sub_1B98E9FC8(v18, v5, v15, v16 & 1, v23, v19);
  v6 = sub_1B98EAFC0(v19, v20);
  v7 = v21;
  v8 = v23;
  v9 = v6;
  v10 = v24;
  v2[2] = v9;
  (*(v7 + 8))(v10, v8);
  return v25;
}

uint64_t sub_1B98EAFC0(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v10 = a2;
  v5 = *(a2 - 8);
  v6 = a2 - 8;
  v3 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, a1);
  v4 = &v3 - v3;
  (*(v5 + 16))();
  v9 = sub_1B9874638(v4, v7);
  (*(v5 + 8))(v8, v7);
  return v9;
}

uint64_t AsyncStreamManager.deinit()
{
  v3 = *(*v0 + 80);
  AsyncStreamManager.finish()();
  sub_1B98EC920((v2 + 16));
  return v2;
}

Swift::Void __swiftcall AsyncStreamManager.finish()()
{
  v27 = sub_1B98ECA2C;
  v36 = 0;
  v35 = 0;
  v33 = 0;
  memset(__b, 0, sizeof(__b));
  v19 = *v16;
  v20 = v16;
  v21 = *(v19 + 80);
  v37 = v21;
  v23 = 0;
  v22 = sub_1B98F59F8();
  v12 = *(v22 - 8);
  v13 = v22 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v22);
  v15 = &v5 - v14;
  v36 = &v5 - v14;
  v0 = sub_1B98F5C38();
  v17 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v18 = &v5 - v17;
  v35 = v2;
  v24 = *(v2 + 16);

  v26 = &v29;
  v30 = v21;
  v31 = *(v19 + 88);
  v25 = type metadata accessor for AsyncStreamManager.State();
  v3 = sub_1B98F5598();
  sub_1B9875AE4(v27, v26, v24, v25, v3);
  v28 = 0;

  v7 = v34;
  v33 = v34;
  v8 = MEMORY[0x1E69E6530];
  v9 = MEMORY[0x1E69E6540];
  v4 = sub_1B98F5538();
  v10 = &v38;
  MEMORY[0x1BFADD470](v4, v8, v22, v9);
  memcpy(__b, v10, sizeof(__b));
  for (i = v28; ; i = v6)
  {
    v6 = i;
    sub_1B98F5508();
    sub_1B98F54F8();
    if ((*(v12 + 48))(v18, 1, v22) == 1)
    {
      break;
    }

    (*(v12 + 32))(v15, v18, v22);
    sub_1B98F59E8();
    (*(v12 + 8))(v15, v22);
  }

  sub_1B98EC89C(__b);
}

uint64_t AsyncStreamManager.__deallocating_deinit()
{
  v2 = *(*v0 + 80);
  AsyncStreamManager.deinit();
  return swift_deallocClassInstance();
}

uint64_t AsyncStreamManager.sequence.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v67 = v1;
  v40 = 0;
  v78 = sub_1B98ECA64;
  v28 = sub_1B98ECBB0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v69 = *v1;
  v70 = v1;
  v72 = *(v69 + 80);
  v89 = v72;
  v68 = 0;
  v29 = sub_1B98F59A8();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29, v72);
  v33 = v24 - v32;
  v34 = *(v2 - 8);
  v35 = v2 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24 - v32, v2);
  v37 = v24 - v36;
  v38 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24 - v36, v4);
  v39 = v24 - v38;
  v88 = v24 - v38;
  v42 = sub_1B98F5C38();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = (*(*(TupleTypeMetadata2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v68, v72);
  v74 = (v24 - v41);
  v43 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v44 = v24 - v43;
  v45 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7, v9);
  v46 = v24 - v45;
  v87 = v24 - v45;
  v57 = sub_1B98F59C8();
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v47 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68, v72);
  v56 = v24 - v47;
  v66 = sub_1B98F59F8();
  v63 = *(v66 - 8);
  v64 = v66 - 8;
  v48 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v68, v72);
  v65 = v24 - v48;
  v49 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v12);
  v71 = v24 - v49;
  v86 = v24 - v49;
  v62 = sub_1B98F5A08();
  v58 = *(v62 - 8);
  v59 = v62 - 8;
  v51 = *(v58 + 64);
  v50 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v72, v13);
  v61 = v24 - v50;
  v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, v24 - v50);
  v60 = v24 - v52;
  v85 = v24 - v52;
  v84 = v15;
  sub_1B98EBFB8();
  v53 = v16;
  sub_1B98EBFCC(v56);
  sub_1B98F5998();
  (*(v54 + 8))(v56, v57);
  (*(v58 + 32))(v60, v61, v62);
  (*(v63 + 32))(v71, v65, v66);
  v75 = v67[2];

  v77 = &v79;
  v80 = v72;
  v73 = *(v69 + 88);
  v81 = v73;
  v82 = v71;
  v17 = type metadata accessor for AsyncStreamManager.State();
  sub_1B9875AE4(v78, v77, v75, v17, TupleTypeMetadata2);

  v25 = *v74;
  v18 = v74 + *(TupleTypeMetadata2 + 48);
  v83 = v25;
  sub_1B98ECAA0(v18, v46, v72, v42);
  v24[3] = 7;
  v26 = swift_allocObject();
  v24[1] = v26 + 16;

  v24[2] = v67;
  swift_weakInit();

  v19 = swift_allocObject();
  v20 = v73;
  v21 = v25;
  v22 = v26;
  v19[2] = v72;
  v19[3] = v20;
  v19[4] = v22;
  v19[5] = v21;
  sub_1B98F59B8();

  sub_1B98ECBD0(v46, v44, v72, v42);
  if ((*(v34 + 48))(v44, 1, v72) == 1)
  {
    sub_1B98ECCE0(v44, v72);
  }

  else
  {
    (*(v34 + 32))(v39, v44, v72);
    (*(v34 + 16))(v37, v39, v72);
    sub_1B98F59D8();
    (*(v30 + 8))(v33, v29);
    (*(v34 + 8))(v39, v72);
  }

  (*(v58 + 16))(v27, v60, v62);
  sub_1B98ECCE0(v46, v72);
  (*(v63 + 8))(v71, v66);
  return (*(v58 + 8))(v60, v62);
}

uint64_t sub_1B98EBFCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E8650];
  v1 = sub_1B98F59C8();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

void *sub_1B98EC044@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v22 = a5;
  v27 = a1;
  v26 = a2;
  v23 = a3;
  v24 = a4;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v36 = a3;
  v25 = sub_1B98F59F8();
  v28 = (*(*(sub_1B98F5C38() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x1EEE9AC00](v27, v26);
  v29 = &v12 - v28;
  v35 = result;
  v34 = v6;
  v30 = *result;
  v33 = v30;
  v31 = v30 + 1;
  if (__OFADD__(v30, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = v29;
    v9 = v25;
    v10 = v26;
    *v27 = v31;
    v15 = *(v9 - 8);
    v16 = v9 - 8;
    (*(v15 + 16))(v8, v10);
    (*(v15 + 56))(v29, 0, 1, v25);
    v17 = &v32;
    v32 = v30;
    v19 = 0;
    v18 = MEMORY[0x1E69E6530];
    sub_1B98F5598();
    sub_1B98F55C8();
    sub_1B98F5C38();
    v20 = v22 + *(swift_getTupleTypeMetadata2() + 48);
    *v22 = v30;
    v21 = type metadata accessor for AsyncStreamManager.State();
    if (*(v27 + *(v21 + 44)))
    {
      return (*(*(v23 - 8) + 56))(v20, 1);
    }

    else
    {
      v11 = v27 + *(v21 + 40);
      v13 = *(v23 - 8);
      v14 = v23 - 8;
      (*(v13 + 16))(v20, v11);
      return (*(v13 + 56))(v20, 0, 1, v23);
    }
  }

  return result;
}

uint64_t sub_1B98EC340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = 0;
  v24[7] = a4;
  v24[6] = a1;
  v23 = a2 + 16;
  v24[5] = a2 + 16;
  v24[4] = a3;
  swift_beginAccess();
  v24[0] = swift_weakLoadStrong();
  if (v24[0])
  {
    v5 = v22;
    v13 = v24[0];

    sub_1B98ED050(v24);
    swift_endAccess();
    v15 = *(v13 + 16);
    v12[1] = v15;

    v14 = v12;
    MEMORY[0x1EEE9AC00](v12, v20);
    v16 = v11;
    v11[2] = v6;
    v11[3] = v7;
    v11[4] = v8;
    v9 = type metadata accessor for AsyncStreamManager.State();
    sub_1B9875AE4(sub_1B98ED07C, v16, v15, v9, MEMORY[0x1E69E7CA8] + 8);
    v17 = v5;

    return v17;
  }

  else
  {
    sub_1B98ED050(v24);
    swift_endAccess();
    return v22;
  }
}

uint64_t sub_1B98EC4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v7 = a2;
  v17 = 0;
  v16 = 0;
  v18 = a3;
  v13 = sub_1B98F59F8();
  v8 = 0;
  v14 = sub_1B98F5C38();
  v9 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v7);
  v12 = &v6 - v9;
  v17 = v3;
  v16 = v4;
  v11 = &v15;
  v15 = v4;
  sub_1B98F5598();
  sub_1B98F5488();
  return sub_1B98ED0B8(v12, v13);
}

uint64_t sub_1B98EC604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = a5;
  v13 = a1;
  v17 = a2;
  v21 = a3;
  v18 = a4;
  v25 = 0;
  v24 = 0;
  v26 = a3;
  v19 = *(a3 - 8);
  v20 = a3 - 8;
  v12 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = v9 - v12;
  v25 = MEMORY[0x1EEE9AC00](a1, a3);
  v24 = v5;
  v14 = type metadata accessor for AsyncStreamManager.State();
  v6 = *(v14 + 40);
  v15 = *(v19 + 16);
  v16 = v19 + 16;
  v15(v22, v13 + v6, v21);
  v23 = sub_1B98F5638();
  (*(v19 + 8))(v22, v21);
  result = v23;
  if (v23)
  {
    v10 = *(v13 + *(v14 + 44));
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v15(v22, v17, v21);
    (*(v19 + 40))(v13 + *(v14 + 40), v22, v21);
    v8 = v13;
    *(v13 + *(v14 + 44)) = 0;
    v9[1] = *(v8 + 8);
    sub_1B98F59F8();
    result = sub_1B98F5538();
    *v11 = result;
  }

  else
  {
    *v11 = 0;
  }

  return result;
}

uint64_t *sub_1B98EC89C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_1B98EC8DC();
  return a1;
}

uint64_t *sub_1B98EC920(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B98EC94C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_1B98F54D8();
  sub_1B98F59F8();
  sub_1B98ED154();
  sub_1B98F5598();
  sub_1B98F5588();
  sub_1B98F54D8();
  *a2 = v3;
}

uint64_t sub_1B98ECA2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v3 = *(v2 + 24);
  return sub_1B98EC94C(a1, a2);
}

void *sub_1B98ECAA0(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

void *sub_1B98ECBD0(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_1B98ECCE0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t sub_1B98ECDAC()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_1B98ECEDC(uint64_t a1)
{
  v4 = *(a1 + 16);
  sub_1B98F59F8();
  v5 = sub_1B98F5598();
  if (v1 <= 0x3F)
  {
    v5 = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v5;
}

uint64_t *sub_1B98ED050(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B98ED0B8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t *sub_1B98ED1AC()
{
  if (qword_1EBBD4ED0 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA9C8;
}

uint64_t *sub_1B98ED20C()
{
  if (qword_1EBBD4ED8 != -1)
  {
    swift_once();
  }

  return &qword_1EBBD6208;
}

uint64_t *sub_1B98ED26C()
{
  if (qword_1EBBD4EE8 != -1)
  {
    swift_once();
  }

  return &qword_1EBBD6218;
}

uint64_t sub_1B98ED2CC()
{
  result = sub_1B98F55E8();
  qword_1EBBDA948 = result;
  qword_1EBBDA950 = v1;
  return result;
}

uint64_t *sub_1B98ED310()
{
  if (qword_1EBBD4E90 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA948;
}

uint64_t sub_1B98ED370()
{
  v0 = sub_1B98ED310();
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B98ED3AC()
{
  result = sub_1B98F55E8();
  qword_1EBBDA958 = result;
  qword_1EBBDA960 = v1;
  return result;
}

uint64_t *sub_1B98ED3F0()
{
  if (qword_1EBBD4E98 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA958;
}

uint64_t sub_1B98ED450()
{
  v0 = sub_1B98ED3F0();
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B98ED48C()
{
  result = sub_1B98F55E8();
  qword_1EBBDA968 = result;
  qword_1EBBDA970 = v1;
  return result;
}

uint64_t *sub_1B98ED4D0()
{
  if (qword_1EBBD4EA0 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA968;
}

uint64_t sub_1B98ED530()
{
  v0 = sub_1B98ED4D0();
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B98ED56C()
{
  result = sub_1B98F55E8();
  qword_1EBBDA978 = result;
  qword_1EBBDA980 = v1;
  return result;
}

uint64_t *sub_1B98ED5B0()
{
  if (qword_1EBBD4EA8 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA978;
}

uint64_t sub_1B98ED610()
{
  v0 = sub_1B98ED5B0();
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B98ED64C()
{
  result = sub_1B98F55E8();
  qword_1EBBDA988 = result;
  qword_1EBBDA990 = v1;
  return result;
}

uint64_t *sub_1B98ED690()
{
  if (qword_1EBBD4EB0 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA988;
}

uint64_t sub_1B98ED6F0()
{
  v0 = sub_1B98ED690();
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B98ED72C()
{
  result = sub_1B98F55E8();
  qword_1EBBDA998 = result;
  qword_1EBBDA9A0 = v1;
  return result;
}

uint64_t *sub_1B98ED770()
{
  if (qword_1EBBD4EB8 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA998;
}

uint64_t sub_1B98ED7D0()
{
  v0 = sub_1B98ED770();
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B98ED80C()
{
  result = sub_1B98F55E8();
  qword_1EBBDA9A8 = result;
  qword_1EBBDA9B0 = v1;
  return result;
}

uint64_t *sub_1B98ED850()
{
  if (qword_1EBBD4EC0 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA9A8;
}

uint64_t sub_1B98ED8B0()
{
  v0 = sub_1B98ED850();
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B98ED8EC()
{
  result = sub_1B98F55E8();
  qword_1EBBDA9B8 = result;
  qword_1EBBDA9C0 = v1;
  return result;
}

uint64_t *sub_1B98ED930()
{
  if (qword_1EBBD4EC8 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA9B8;
}

uint64_t sub_1B98ED990()
{
  v0 = sub_1B98ED930();
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B98ED9CC()
{
  result = sub_1B98F55E8();
  qword_1EBBDA9C8 = result;
  qword_1EBBDA9D0 = v1;
  return result;
}

uint64_t sub_1B98EDA10()
{
  v0 = sub_1B98ED1AC();
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B98EDA4C()
{
  result = sub_1B98F55E8();
  qword_1EBBD6208 = result;
  qword_1EBBD6210 = v1;
  return result;
}

uint64_t static Constants.bundleIdentifier.getter()
{
  v0 = sub_1B98ED20C();
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B98EDACC()
{
  result = sub_1B98F55E8();
  qword_1EBBDA9D8 = result;
  qword_1EBBDA9E0 = v1;
  return result;
}

uint64_t *sub_1B98EDB10()
{
  if (qword_1EBBD4EE0 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA9D8;
}

uint64_t sub_1B98EDB70()
{
  v0 = sub_1B98EDB10();
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B98EDBAC()
{
  result = sub_1B98F55E8();
  qword_1EBBD6218 = result;
  qword_1EBBD6220 = v1;
  return result;
}

uint64_t static Constants.trustScoreOverrideKey.getter()
{
  v0 = sub_1B98ED26C();
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t getEnumTagSinglePayload for Constants(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for Constants(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B98EDFB8(uint64_t a1, uint64_t a2)
{
  v38 = 0;
  v39 = a1;
  v40 = a2;
  v31 = container_query_create();
  if (v31)
  {
    v38 = v31;
    sub_1B98F54D8();
    if (a2)
    {
      sub_1B98F54D8();
      v29 = sub_1B98F5698();

      xpc_string_create((v29 + 32));
      swift_unknownObjectRelease();

      container_query_set_group_identifiers();
      swift_unknownObjectRelease();
    }

    v36 = 0;
    v37 = 0;
    v28 = [objc_opt_self() currentPersona];
    if (v28)
    {
      v2 = [v28 isDataSeparatedPersona];
      if ((v2 & 1) != 0 && ((v27 = [v28 userPersonaUniqueString]) == 0 ? (v25 = 0, v26 = 0) : (v23 = sub_1B98F5658(), v24 = v3, MEMORY[0x1E69E5920](v27), v25 = v23, v26 = v24), v26))
      {
        v4 = sub_1B98F5708();
        if ((v4 & 1) == 0)
        {
          sub_1B98F54D8();
          v36 = v25;
          v37 = v26;
        }

        MEMORY[0x1E69E5920](v28);
      }

      else
      {
        MEMORY[0x1E69E5920](v28);
      }
    }

    sub_1B98F54D8();
    v32 = v36;
    v33 = v37;
    if (v37)
    {
      v34 = v32;
      v35 = v33;
    }

    else
    {
      v5 = *MEMORY[0x1E69E9980];
      v34 = sub_1B98F56F8();
      v35 = v6;
    }

    sub_1B98F54D8();
    sub_1B98F5698();

    container_query_set_persona_unique_string();
    swift_unknownObjectRelease();

    container_query_set_class();
    type metadata accessor for container_query_flags_t();
    sub_1B98F5F98();
    *v7 = 1;
    v7[1] = 0x800000000;
    v7[2] = 0x100000000;
    sub_1B9851B38();
    sub_1B98555FC();
    sub_1B98F5C88();
    container_query_operation_set_flags();
    single_result = container_query_get_single_result();
    if (single_result)
    {
      path = container_get_path();
      if (path)
      {
        if (strlen(path) > 0)
        {
          sub_1B98EE870(single_result);
          v20 = sub_1B98F56F8();

          sub_1B985EE4C(&v36);
          sub_1B98EE74C();
          return v20;
        }

        sub_1B98EE6D0();
        swift_allocError();
        *v9 = 0;
        *(v9 + 8) = 0;
        *(v9 + 16) = 2;
        swift_willThrow();

        sub_1B985EE4C(&v36);
        sub_1B98EE74C();
      }

      else
      {
        v18 = sub_1B98EE774();
        v19 = v10;
        sub_1B98F54D8();
        sub_1B98EE6D0();
        swift_allocError();
        *v11 = v18;
        *(v11 + 8) = v19;
        *(v11 + 16) = 0;
        swift_willThrow();

        sub_1B985EE4C(&v36);
        sub_1B98EE74C();
      }
    }

    else
    {
      v16 = sub_1B98EE774();
      v17 = v12;
      sub_1B98F54D8();
      sub_1B98EE6D0();
      swift_allocError();
      *v13 = v16;
      *(v13 + 8) = v17;
      *(v13 + 16) = 1;
      swift_willThrow();

      sub_1B985EE4C(&v36);
      sub_1B98EE74C();
    }
  }

  else
  {
    sub_1B98EE6D0();
    swift_allocError();
    *v14 = 1;
    *(v14 + 8) = 0;
    *(v14 + 16) = 2;
    swift_willThrow();
  }

  return v15;
}

unint64_t sub_1B98EE6D0()
{
  v2 = qword_1EBBD6228;
  if (!qword_1EBBD6228)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6228);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98EE774()
{
  if (!container_query_get_last_error())
  {
    return sub_1B98F55E8();
  }

  v0 = container_error_copy_unlocalized_description();
  if (!v0)
  {
    return sub_1B98F55E8();
  }

  strlen(v0);
  v2 = sub_1B98F56F8();
  sub_1B98EF0CC();
  return v2;
}

uint64_t sub_1B98EE870(uint64_t a1)
{
  v61 = a1;
  v80 = 0;
  v60 = 0;
  v75 = 0;
  v74 = 0;
  v62 = sub_1B98F5138();
  v63 = *(v62 - 8);
  v64 = v63;
  v65 = *(v63 + 64);
  v1 = MEMORY[0x1EEE9AC00](v61, v62);
  v67 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  v66 = &v14 - v67;
  v2 = MEMORY[0x1EEE9AC00](v1, &v14 - v67);
  v68 = &v14 - v67;
  v80 = v2;
  v69 = container_copy_sandbox_token();
  if (v69)
  {
    v59 = v69;
    v58 = v69;
    v75 = v69;
    v74 = sandbox_extension_consume();
    if (v74 == -1)
    {
      v3 = v68;
      v4 = sub_1B98F1FB0();
      (*(v64 + 16))(v3, v4, v62);
      v55 = sub_1B98F5118();
      v52 = v55;
      v54 = sub_1B98F5BB8();
      v53 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
      v56 = sub_1B98F5F98();
      if (os_log_type_enabled(v55, v54))
      {
        v5 = v60;
        v43 = sub_1B98F5C28();
        v39 = v43;
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
        v41 = 0;
        v44 = sub_1B985263C(0);
        v42 = v44;
        v45 = sub_1B985263C(v41);
        v73 = v43;
        v72 = v44;
        v71 = v45;
        v46 = 0;
        v47 = &v73;
        sub_1B9852690(0, &v73);
        sub_1B9852690(v46, v47);
        v70 = v56;
        v48 = &v14;
        MEMORY[0x1EEE9AC00](&v14, v6);
        v49 = &v14 - 6;
        *(&v14 - 4) = v7;
        *(&v14 - 3) = &v72;
        *(&v14 - 2) = &v71;
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
        sub_1B9852720();
        sub_1B98F57D8();
        v51 = v5;
        if (v5)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1B982F000, v52, v53, "token/process not valid for extension", v39, 2u);
          v37 = 0;
          sub_1B985281C(v42);
          sub_1B985281C(v45);
          sub_1B98F5C08();

          v38 = v51;
        }
      }

      else
      {

        v38 = v60;
      }

      v36 = v38;

      (*(v64 + 8))(v68, v62);
      sub_1B98EF07C(v58);
      return v36;
    }

    else
    {
      sub_1B98EF07C(v58);
      return v60;
    }
  }

  else
  {
    v8 = v66;
    v9 = sub_1B98F1FB0();
    (*(v64 + 16))(v8, v9, v62);
    v34 = sub_1B98F5118();
    v31 = v34;
    v33 = sub_1B98F5BB8();
    v32 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v35 = sub_1B98F5F98();
    if (os_log_type_enabled(v34, v33))
    {
      v10 = v60;
      v22 = sub_1B98F5C28();
      v18 = v22;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v20 = 0;
      v23 = sub_1B985263C(0);
      v21 = v23;
      v24 = sub_1B985263C(v20);
      v79 = v22;
      v78 = v23;
      v77 = v24;
      v25 = 0;
      v26 = &v79;
      sub_1B9852690(0, &v79);
      sub_1B9852690(v25, v26);
      v76 = v35;
      v27 = &v14;
      MEMORY[0x1EEE9AC00](&v14, v11);
      v28 = &v14 - 6;
      *(&v14 - 4) = v12;
      *(&v14 - 3) = &v78;
      *(&v14 - 2) = &v77;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
      sub_1B9852720();
      sub_1B98F57D8();
      v30 = v10;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B982F000, v31, v32, "token not sent by container", v18, 2u);
        v16 = 0;
        sub_1B985281C(v21);
        sub_1B985281C(v24);
        sub_1B98F5C08();

        v17 = v30;
      }
    }

    else
    {

      v17 = v60;
    }

    v15 = v17;

    (*(v64 + 8))(v66, v62);
    return v15;
  }
}

uint64_t sub_1B98EF07C(const char *a1)
{
  strlen(a1);
  sub_1B98F5C18();
  return sub_1B98F5C08();
}

uint64_t get_enum_tag_for_layout_string_18CommunicationTrust20DaemonContainerErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3u) < 2)
  {
    return *(a1 + 16) & 3;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_1B98EF1A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v4 = *a1 + 253;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFD)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B98EF298(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    *(result + 16) = 0;
    if (a3 >= 0xFE)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B98EF454(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = a2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 2;
  }

  return result;
}

uint64_t sub_1B98EF4D0()
{
  if (qword_1EBBD4F00 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F4F88();
  return __swift_project_value_buffer(v0, qword_1EBBDAA18);
}

void sub_1B98EF53C(uint64_t a1)
{
  v94 = a1;
  v101 = 0;
  v73 = sub_1B98F1780;
  v74 = sub_1B98F1858;
  v75 = sub_1B98F194C;
  v76 = sub_1B98F1934;
  v77 = sub_1B98F1974;
  v78 = sub_1B98F1980;
  v79 = sub_1B98F193C;
  v80 = sub_1B98F1944;
  v81 = sub_1B98F1958;
  v82 = sub_1B98F1964;
  v83 = sub_1B98F196C;
  v84 = sub_1B98F198C;
  v115 = *MEMORY[0x1E69E9840];
  v111 = 0;
  v109 = 0;
  v85 = 0;
  v86 = sub_1B98F5138();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v1);
  v90 = v38 - v89;
  v99 = sub_1B98F4F88();
  v97 = *(v99 - 8);
  v98 = v99 - 8;
  v91 = v97;
  v92 = *(v97 + 64);
  v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v94, v2);
  v4 = v38 - v93;
  v100 = v38 - v93;
  v111 = v3;
  v114 = 0;
  v104 = [objc_opt_self() defaultManager];
  v95 = *(v97 + 16);
  v96 = v97 + 16;
  v95(v4, v94, v99);
  v103 = sub_1B98F4F68();
  (*(v97 + 8))(v100, v99);
  v110 = v114;
  v105 = [v104 createDirectoryAtURL:v103 withIntermediateDirectories:1 attributes:v101 error:&v110];
  v102 = v110;
  MEMORY[0x1E69E5928](v110, v5, v6);
  v7 = v114;
  v114 = v102;
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v103);
  MEMORY[0x1E69E5920](v104);
  if ((v105 & 1) == 0)
  {
    v48 = v114;
    v52 = sub_1B98F4F38();
    MEMORY[0x1E69E5920](v48);
    swift_willThrow();
    v8 = v90;
    v49 = 0;
    v9 = v52;
    v109 = v52;
    v10 = sub_1B98F1ED8();
    (*(v87 + 16))(v8, v10, v86);
    v95(v100, v94, v99);
    v50 = (*(v91 + 80) + 16) & ~*(v91 + 80);
    v59 = 7;
    v51 = swift_allocObject();
    (*(v97 + 32))(v51 + v50, v100, v99);

    v58 = 32;
    v11 = swift_allocObject();
    v12 = v51;
    v53 = v11;
    *(v11 + 16) = v73;
    *(v11 + 24) = v12;

    v13 = v52;
    v57 = swift_allocObject();
    *(v57 + 16) = v52;
    sub_1B98745B0();

    v71 = sub_1B98F5118();
    v72 = sub_1B98F5BB8();
    v55 = 17;
    v62 = swift_allocObject();
    *(v62 + 16) = 34;
    v63 = swift_allocObject();
    v56 = 8;
    *(v63 + 16) = 8;
    v14 = swift_allocObject();
    v15 = v53;
    v54 = v14;
    *(v14 + 16) = v74;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v54;
    v64 = v16;
    *(v16 + 16) = v75;
    *(v16 + 24) = v17;
    v65 = swift_allocObject();
    *(v65 + 16) = 66;
    v66 = swift_allocObject();
    *(v66 + 16) = v56;
    v18 = swift_allocObject();
    v19 = v57;
    v60 = v18;
    *(v18 + 16) = v76;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v60;
    v61 = v20;
    *(v20 + 16) = v77;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v61;
    v68 = v22;
    *(v22 + 16) = v78;
    *(v22 + 24) = v23;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v67 = sub_1B98F5F98();
    v69 = v24;

    v25 = v62;
    v26 = v69;
    *v69 = v79;
    v26[1] = v25;

    v27 = v63;
    v28 = v69;
    v69[2] = v80;
    v28[3] = v27;

    v29 = v64;
    v30 = v69;
    v69[4] = v81;
    v30[5] = v29;

    v31 = v65;
    v32 = v69;
    v69[6] = v82;
    v32[7] = v31;

    v33 = v66;
    v34 = v69;
    v69[8] = v83;
    v34[9] = v33;

    v35 = v68;
    v36 = v69;
    v69[10] = v84;
    v36[11] = v35;
    sub_1B9851B38();

    if (os_log_type_enabled(v71, v72))
    {
      v37 = v49;
      v40 = sub_1B98F5C28();
      v38[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v39 = 1;
      v41 = sub_1B985263C(1);
      v42 = sub_1B985263C(v39);
      v44 = &v108;
      v108 = v40;
      v45 = &v113;
      v113 = v41;
      v46 = &v112;
      v112 = v42;
      v43 = 2;
      sub_1B9852690(2, &v108);
      sub_1B9852690(v43, v44);
      v106 = v79;
      v107 = v62;
      sub_1B98526A4(&v106, v44, v45, v46);
      v47 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v106 = v80;
        v107 = v63;
        sub_1B98526A4(&v106, &v108, &v113, &v112);
        v38[4] = 0;
        v106 = v81;
        v107 = v64;
        sub_1B98526A4(&v106, &v108, &v113, &v112);
        v38[3] = 0;
        v106 = v82;
        v107 = v65;
        sub_1B98526A4(&v106, &v108, &v113, &v112);
        v38[2] = 0;
        v106 = v83;
        v107 = v66;
        sub_1B98526A4(&v106, &v108, &v113, &v112);
        v38[1] = 0;
        v106 = v84;
        v107 = v68;
        sub_1B98526A4(&v106, &v108, &v113, &v112);
        _os_log_impl(&dword_1B982F000, v71, v72, "MessageStore: Failed to create directories to URL: %{public}s: %{public}@", v40, 0x16u);
        v38[0] = 1;
        sub_1B985281C(v41);
        sub_1B985281C(v42);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v71);
    (*(v87 + 8))(v90, v86);
  }

  *MEMORY[0x1E69E9840];
}

uint64_t sub_1B98F03F0()
{
  v2 = sub_1B98F4F88();
  __swift_allocate_value_buffer(v2, qword_1EBBDA9E8);
  v0 = __swift_project_value_buffer(v2, qword_1EBBDA9E8);
  return sub_1B98F043C(v0);
}

uint64_t sub_1B98F043C@<X0>(char *a1@<X8>)
{
  v51 = a1;
  v52 = sub_1B98F1A24;
  v53 = sub_1B98F1A98;
  v54 = sub_1B98F1B04;
  v55 = sub_1B98F1AF4;
  v56 = sub_1B98F1AFC;
  v57 = sub_1B98F1B10;
  v58 = "Fatal error";
  v59 = "CommunicationTrust/FileUtilities.swift";
  v84 = 0;
  v83[7] = 0;
  v65 = 0;
  v60 = sub_1B98F5138();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v1);
  v64 = v24 - v63;
  v66 = sub_1B98F4F88();
  v68 = *(v66 - 8);
  v67 = v66 - 8;
  v69 = v68;
  v70 = *(v68 + 64);
  v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66, v65);
  v72 = v24 - v71;
  v73 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24 - v71, v3);
  v74 = v24 - v73;
  v84 = v24 - v73;
  v5 = sub_1B98EDFB8(v4, v4);
  v75 = 0;
  v76 = v5;
  v77 = v6;
  v78 = 0;
  v7 = v64;
  v32 = v6;
  sub_1B98F4F58();

  v8 = sub_1B98F1ED8();
  (*(v61 + 16))(v7, v8, v60);
  v35 = v69;
  v33 = *(v68 + 16);
  v34 = v68 + 16;
  v33(v72, v74, v66);
  v36 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v40 = 7;
  v37 = swift_allocObject();
  (*(v68 + 32))(v37 + v36, v72, v66);

  v39 = 32;
  v9 = swift_allocObject();
  v10 = v37;
  v41 = v9;
  *(v9 + 16) = v52;
  *(v9 + 24) = v10;

  v49 = sub_1B98F5118();
  v50 = sub_1B98F5BD8();
  v38 = 17;
  v43 = swift_allocObject();
  *(v43 + 16) = 34;
  v44 = swift_allocObject();
  *(v44 + 16) = 8;
  v11 = swift_allocObject();
  v12 = v41;
  v42 = v11;
  *(v11 + 16) = v53;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v42;
  v46 = v13;
  *(v13 + 16) = v54;
  *(v13 + 24) = v14;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v45 = sub_1B98F5F98();
  v47 = v15;

  v16 = v43;
  v17 = v47;
  *v47 = v55;
  v17[1] = v16;

  v18 = v44;
  v19 = v47;
  v47[2] = v56;
  v19[3] = v18;

  v20 = v46;
  v21 = v47;
  v47[4] = v57;
  v21[5] = v20;
  sub_1B9851B38();

  if (os_log_type_enabled(v49, v50))
  {
    v22 = v75;
    v25 = sub_1B98F5C28();
    v24[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v26 = sub_1B985263C(0);
    v27 = sub_1B985263C(1);
    v28 = v83;
    v83[0] = v25;
    v29 = &v82;
    v82 = v26;
    v30 = &v81;
    v81 = v27;
    sub_1B9852690(2, v83);
    sub_1B9852690(1, v28);
    v79 = v55;
    v80 = v43;
    sub_1B98526A4(&v79, v28, v29, v30);
    v31 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v79 = v56;
      v80 = v44;
      sub_1B98526A4(&v79, v83, &v82, &v81);
      v24[8] = 0;
      v79 = v57;
      v80 = v46;
      sub_1B98526A4(&v79, v83, &v82, &v81);
      _os_log_impl(&dword_1B982F000, v49, v50, "DaemonContainerURL: %{public}s", v25, 0xCu);
      sub_1B985281C(v26);
      sub_1B985281C(v27);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v49);
  (*(v61 + 8))(v64, v60);
  sub_1B98EF53C(v74);
  v33(v51, v74, v66);
  return (*(v68 + 8))(v74, v66);
}

uint64_t sub_1B98F0F8C()
{
  if (qword_1EBBD4EF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F4F88();
  return __swift_project_value_buffer(v0, qword_1EBBDA9E8);
}

uint64_t sub_1B98F0FF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F0F8C();
  v1 = sub_1B98F4F88();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F105C()
{
  v7 = 0;
  v19 = sub_1B98F4F48();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v8 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v0);
  v18 = &v7 - v8;
  v23 = sub_1B98F4F88();
  v21 = *(v23 - 8);
  v22 = v23 - 8;
  v9 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v23, v1);
  v3 = &v7 - v9;
  v24 = &v7 - v9;
  v10 = qword_1EBBDAA00;
  __swift_allocate_value_buffer(v2, qword_1EBBDAA00);
  v13 = __swift_project_value_buffer(v23, v10);
  v4 = sub_1B98F0F8C();
  (*(v21 + 16))(v3, v4, v23);
  v5 = sub_1B98ED5B0();
  v11 = *v5;
  v12 = v5[1];
  sub_1B98F54D8();
  v20 = v25;
  v25[0] = v11;
  v25[1] = v12;
  v15 = sub_1B98F1998();
  v14 = MEMORY[0x1E69E6158];
  sub_1B98F1270(v18);
  sub_1B98F4F78();
  (*(v16 + 8))(v18, v19);
  sub_1B9868BFC(v20);
  return (*(v21 + 8))(v24, v23);
}

uint64_t sub_1B98F1270@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E6968F70];
  v1 = sub_1B98F4F48();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_1B98F12E0()
{
  if (qword_1EBBD4EF8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F4F88();
  return __swift_project_value_buffer(v0, qword_1EBBDAA00);
}

uint64_t sub_1B98F134C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F12E0();
  v1 = sub_1B98F4F88();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F13B0()
{
  v32 = 0;
  v45 = sub_1B98F4F48();
  v42 = *(v45 - 8);
  v43 = v45 - 8;
  v18 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v0);
  v44 = &v17 - v18;
  v49 = sub_1B98F4F88();
  v47 = *(v49 - 8);
  v48 = v49 - 8;
  v19 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v49, v1);
  v50 = &v17 - v19;
  v20 = qword_1EBBDAA18;
  __swift_allocate_value_buffer(v2, qword_1EBBDAA18);
  v39 = __swift_project_value_buffer(v49, v20);
  v3 = sub_1B98F12E0();
  (*(v47 + 16))(v50, v3, v49);
  v25 = 1;
  v4 = sub_1B98F5F88();
  v36 = &v54;
  v54 = v4;
  v55 = v5;
  v34 = "";
  v33 = 1;
  v6 = sub_1B98F55E8();
  v21 = v7;
  MEMORY[0x1BFADDF00](v6);

  v8 = sub_1B98ED690();
  v22 = *v8;
  v23 = v8[1];
  sub_1B98F54D8();
  v24 = v53;
  v53[0] = v22;
  v53[1] = v23;
  v40 = MEMORY[0x1E69E6158];
  v29 = MEMORY[0x1E69E61C8];
  v30 = MEMORY[0x1E69E61C0];
  sub_1B98F5F68();
  sub_1B9868BFC(v24);
  v9 = sub_1B98F55E8();
  v26 = v10;
  MEMORY[0x1BFADDF00](v9);

  v11 = sub_1B98ED770();
  v27 = *v11;
  v28 = v11[1];
  sub_1B98F54D8();
  v31 = v52;
  v52[0] = v27;
  v52[1] = v28;
  sub_1B98F5F68();
  sub_1B9868BFC(v31);
  v12 = sub_1B98F55E8();
  v35 = v13;
  MEMORY[0x1BFADDF00](v12);

  v38 = v54;
  v37 = v55;
  sub_1B98F54D8();
  sub_1B9856788(v36);
  v14 = sub_1B98F56A8();
  v46 = v51;
  v51[0] = v14;
  v51[1] = v15;
  v41 = sub_1B98F1998();
  sub_1B98F1270(v44);
  sub_1B98F4F78();
  (*(v42 + 8))(v44, v45);
  sub_1B9868BFC(v46);
  return (*(v47 + 8))(v50, v49);
}

uint64_t sub_1B98F1780@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B98F4F88();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B98F0368(v3, a1);
}

uint64_t sub_1B98F17F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98EF4D0();
  v1 = sub_1B98F4F88();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F1858()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1B98F4F88();
  v1 = sub_1B98F18B4();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B98F18B4()
{
  v2 = qword_1EBBD6230;
  if (!qword_1EBBD6230)
  {
    sub_1B98F4F88();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98F1998()
{
  v2 = qword_1EBBD6238;
  if (!qword_1EBBD6238)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6238);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98F1A24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B98F4F88();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B98F0F2C(v3, a1);
}

uint64_t sub_1B98F1A98()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1B98F4F88();
  v1 = sub_1B98F18B4();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98F1B1C()
{
  if (qword_1EDBDB328 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F5138();
  return __swift_project_value_buffer(v0, qword_1EDBDD4A0);
}

uint64_t sub_1B98F1B88(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v28 = a2;
  v31 = 0;
  v30 = 0;
  v32 = a2;
  v20 = sub_1B98F5C38();
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v19, v2);
  v29 = &v15 - v21;
  v26 = *(v4 - 8);
  v27 = v4 - 8;
  v22 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3, &v15 - v21);
  v23 = &v15 - v22;
  v24 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v25 = &v15 - v24;
  v31 = &v15 - v24;
  v30 = v8;
  sub_1B98F243C(v8, v9, v10, v11);
  if ((*(v26 + 48))(v29, 1, v28) == 1)
  {
    sub_1B98F254C(v29, v28);
    v17 = sub_1B98F55E8();
    v18 = v13;
  }

  else
  {
    (*(v26 + 32))(v25, v29, v28);
    (*(v26 + 16))(v23, v25, v28);
    v15 = sub_1B98F5688();
    v16 = v12;
    (*(v26 + 8))(v25, v28);
    v17 = v15;
    v18 = v16;
  }

  return v17;
}

uint64_t sub_1B98F1E00()
{
  if (qword_1EDBDAC50 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F5138();
  return __swift_project_value_buffer(v0, qword_1EDBDD470);
}

uint64_t sub_1B98F1E6C()
{
  if (qword_1EDBDAC60 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F5138();
  return __swift_project_value_buffer(v0, qword_1EDBDD488);
}

uint64_t sub_1B98F1ED8()
{
  if (qword_1EBBD4F18 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F5138();
  return __swift_project_value_buffer(v0, qword_1EBBDAA48);
}

uint64_t sub_1B98F1F44()
{
  if (qword_1EDBDB338 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F5138();
  return __swift_project_value_buffer(v0, qword_1EDBDD4B8);
}

uint64_t sub_1B98F1FB0()
{
  if (qword_1EBBD4F10 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F5138();
  return __swift_project_value_buffer(v0, qword_1EBBDAA30);
}

uint64_t sub_1B98F201C()
{
  v1 = sub_1B98F5138();
  __swift_allocate_value_buffer(v1, qword_1EDBDD4B8);
  __swift_project_value_buffer(v1, qword_1EDBDD4B8);
  sub_1B98F55E8();
  sub_1B98F55E8();
  return sub_1B98F5128();
}

uint64_t sub_1B98F20C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F1F44();
  v1 = sub_1B98F5138();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F2124()
{
  v1 = sub_1B98F5138();
  __swift_allocate_value_buffer(v1, qword_1EBBDAA30);
  __swift_project_value_buffer(v1, qword_1EBBDAA30);
  sub_1B98F55E8();
  sub_1B98F55E8();
  return sub_1B98F5128();
}

uint64_t sub_1B98F21C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F1FB0();
  v1 = sub_1B98F5138();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F222C()
{
  v1 = sub_1B98F5138();
  __swift_allocate_value_buffer(v1, qword_1EBBDAA48);
  __swift_project_value_buffer(v1, qword_1EBBDAA48);
  sub_1B98F55E8();
  sub_1B98F55E8();
  return sub_1B98F5128();
}

uint64_t sub_1B98F22D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F1ED8();
  v1 = sub_1B98F5138();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F2334()
{
  v1 = sub_1B98F5138();
  __swift_allocate_value_buffer(v1, qword_1EDBDD470);
  __swift_project_value_buffer(v1, qword_1EDBDD470);
  sub_1B98F55E8();
  sub_1B98F55E8();
  return sub_1B98F5128();
}

uint64_t sub_1B98F23D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F1E00();
  v1 = sub_1B98F5138();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void *sub_1B98F243C(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_1B98F254C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t sub_1B98F25F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F1B1C();
  v1 = sub_1B98F5138();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F2654()
{
  v1 = sub_1B98F5138();
  __swift_allocate_value_buffer(v1, qword_1EDBDD488);
  __swift_project_value_buffer(v1, qword_1EDBDD488);
  sub_1B98F55E8();
  sub_1B98F55E8();
  return sub_1B98F5128();
}

uint64_t sub_1B98F26F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F1E6C();
  v1 = sub_1B98F5138();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F275C()
{
  v3[1] = 0;
  v9 = sub_1B98F5138();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v0);
  v11 = v3 - v4;
  v6 = sub_1B98F5108();
  v5 = qword_1EBBDAA60;
  __swift_allocate_value_buffer(v6, qword_1EBBDAA60);
  v10 = __swift_project_value_buffer(v6, v5);
  v1 = sub_1B98F1ED8();
  (*(v7 + 16))(v11, v1, v9);
  return sub_1B98F50F8();
}

uint64_t sub_1B98F2850()
{
  if (qword_1EBBD4F28 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F5108();
  return __swift_project_value_buffer(v0, qword_1EBBDAA60);
}

uint64_t sub_1B98F28BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F2850();
  v1 = sub_1B98F5108();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F2920(uint64_t a1, uint64_t *a2)
{
  v19 = 0;
  v20 = 0;
  v18[3] = a1;
  v18[2] = a2;
  v18[1] = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6240, qword_1B98FDF00);
  v2 = sub_1B98F2DE8();
  v18[0] = sub_1B985D064(sub_1B98F2C3C, 0, v15, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v16);
  sub_1B98F55E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
  sub_1B98F2E70();
  v10 = sub_1B98F55F8();
  v11 = v3;

  sub_1B9879B08(v18);
  v17[2] = v10;
  v17[3] = v11;
  v17[0] = sub_1B98F5F88();
  v17[1] = v4;
  v5 = sub_1B98F55E8();
  MEMORY[0x1BFADDF00](v5);

  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  swift_getDynamicType();
  sub_1B98F2EF8();
  v6 = sub_1B98F55E8();
  MEMORY[0x1BFADDF00](v6);

  sub_1B98F5F68();
  v7 = sub_1B98F55E8();
  MEMORY[0x1BFADDF00](v7);

  sub_1B98F54D8();
  sub_1B9856788(v17);
  sub_1B98F56A8();
  v13 = sub_1B98F5778();
  v12 = v8;
  sub_1B98F54D8();
  v19 = v13;
  v20 = v12;

  __swift_destroy_boxed_opaque_existential_0(a2);

  sub_1B9868BFC(&v19);
  return v13;
}

uint64_t sub_1B98F2C3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v13[2] = a1;
  v13[0] = sub_1B98F5F88();
  v13[1] = v2;
  v3 = sub_1B98F55E8();
  MEMORY[0x1BFADDF00](v3);

  v4 = a1[1];
  v12[2] = *a1;
  v12[3] = v4;
  sub_1B98F5F68();
  v5 = sub_1B98F55E8();
  MEMORY[0x1BFADDF00](v5);

  v12[0] = sub_1B98F1B88((a1 + 2), MEMORY[0x1E69E7CA0] + 8);
  v12[1] = v6;
  sub_1B98F5F68();
  sub_1B9868BFC(v12);
  v7 = sub_1B98F55E8();
  MEMORY[0x1BFADDF00](v7);

  sub_1B98F54D8();
  sub_1B9856788(v13);
  result = sub_1B98F56A8();
  *a2 = result;
  a2[1] = v9;
  return result;
}

unint64_t sub_1B98F2DE8()
{
  v2 = qword_1EBBD6248;
  if (!qword_1EBBD6248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD6240, qword_1B98FDF00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6248);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98F2E70()
{
  v2 = qword_1EBBD6250;
  if (!qword_1EBBD6250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5268, &qword_1B98FAC20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6250);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98F2EF8()
{
  v0 = sub_1B98F6168();
  MEMORY[0x1BFADD670](v0);
}

uint64_t sub_1B98F2F58()
{
  v7 = CPPhoneNumberCopyHomeCountryCode();
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    sub_1B98F5E08();
    __break(1u);
  }

  MEMORY[0x1E69E5928](v6, v0, v1);
  MEMORY[0x1E69E5928](v6, v2, v3);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v6);
  v5 = sub_1B98F5658();
  MEMORY[0x1E69E5920](v6);
  return v5;
}

uint64_t sub_1B98F3070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v45 = a1;
  v46 = a2;
  v43 = a3;
  v44 = a4;
  v41 = 0;
  v42 = 0;
  v32 = *MEMORY[0x1E695E480];
  (MEMORY[0x1E69E5928])();
  v40 = v32;
  sub_1B98F54D8();
  v33 = sub_1B98F5648();
  sub_1B98F54D8();
  if (a4)
  {
    v30 = sub_1B98F5648();

    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (v31)
  {
    v29 = v31;
  }

  else
  {
    v29 = 0;
  }

  v28 = _PNCopyStrippedNumberWithoutPauses();
  MEMORY[0x1E69E5920](v29);
  MEMORY[0x1E69E5920](v33);

  if (v28)
  {
    v27 = v28;
  }

  else
  {
    sub_1B98F5E08();
    __break(1u);
  }

  MEMORY[0x1E69E5928](v27, v4, v5);
  MEMORY[0x1E69E5928](v27, v6, v7);
  MEMORY[0x1E69E5920](v27);
  MEMORY[0x1E69E5920](v27);
  v25 = sub_1B98F5658();
  v26 = v8;
  v38 = v25;
  v39 = v8;
  MEMORY[0x1E69E5920](v27);
  sub_1B98F54D8();
  v36 = v25;
  v37 = v26;
  if (sub_1B98F56D8() > 0)
  {
    sub_1B98F54D8();
    v24 = sub_1B98F5648();
    sub_1B98F54D8();
    if (a4)
    {
      v22 = sub_1B98F5648();

      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      v21 = v23;
    }

    else
    {
      v21 = 0;
    }

    v20 = CFPhoneNumberCreate();
    MEMORY[0x1E69E5920](v21);
    MEMORY[0x1E69E5920](v24);

    if (v20)
    {
      MEMORY[0x1E69E5928](v20, v9, v10);
      String = CFPhoneNumberCreateString();
      MEMORY[0x1E69E5920](v20);
      if (String)
      {
        v15 = sub_1B98F5658();
        v16 = v11;
        MEMORY[0x1E69E5920](String);
        v17 = v15;
        v18 = v16;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      v41 = v17;
      v42 = v18;

      MEMORY[0x1E69E5920](v20);
    }

    sub_1B98F54D8();
    v35[0] = v41;
    v35[1] = v42;
    v14 = v42 == 0;
    sub_1B985EE4C(v35);
    if (v14)
    {
      sub_1B98F54D8();
      v41 = v25;
      v42 = v26;
    }
  }

  v13 = v41;
  sub_1B98F54D8();

  MEMORY[0x1E69E5920](v32);
  sub_1B985EE4C(&v41);
  return v13;
}

uint64_t sub_1B98F3648()
{
  v11 = 0;
  v3 = *v0;
  v11 = v0;
  v10 = v3[10];
  v9 = v3[11];
  v4 = v0[2];

  v6 = v10;
  v7 = v9;
  v8 = v3[12];
  v1 = sub_1B98F5598();
  sub_1B9875AE4(sub_1B98F4838, v5, v4, v1, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1B98F376C(uint64_t a1)
{
  v16 = 0;
  v14 = 0;
  v5 = *v1;
  v16 = a1;
  v15 = v5[10];
  v14 = v1;
  v13 = v5[11];
  v6 = v1[2];

  v9 = v15;
  v10 = v13;
  v11 = v5[12];
  v12 = a1;
  v7 = sub_1B98F5598();
  v2 = sub_1B98F5C38();
  sub_1B9875AE4(sub_1B98F4878, v8, v6, v7, v2);
}

uint64_t sub_1B98F38B8(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v17 = 0;
  v15 = 0;
  v6 = *v2;
  v19 = a1;
  v18 = v6[11];
  v17 = a2;
  v16 = v6[10];
  v15 = v2;
  v8 = v2[2];

  v10 = v16;
  v11 = v18;
  v12 = v6[12];
  v13 = a2;
  v14 = a1;
  v3 = sub_1B98F5598();
  sub_1B9875AE4(sub_1B98F48BC, v9, v8, v3, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1B98F3A04(uint64_t a1)
{
  v15 = 0;
  v12 = 0;
  v5 = *v1;
  v15 = a1;
  v14 = v5[10];
  v13 = v5[11];
  v12 = v1;
  v6 = v1[2];

  sub_1B98F54D8();
  v8 = v14;
  v9 = v13;
  v10 = v5[12];
  v11 = a1;
  v2 = sub_1B98F5598();
  sub_1B9875AE4(sub_1B98F4904, v7, v6, v2, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1B98F3B54()
{
  v12 = 0;
  v3 = *v0;
  v12 = v0;
  v11 = v3[10];
  v10 = v3[11];
  v4 = v0[2];

  v6 = v11;
  v7 = v10;
  v8 = v3[12];
  v1 = sub_1B98F5598();
  sub_1B9875AE4(sub_1B98F4948, v5, v4, v1, v1);

  return v9;
}

uint64_t sub_1B98F3C74()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1B98F3CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a2;
  v17 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v30 = a4;
  v29 = a5;
  v20 = 0;
  v7 = sub_1B98F5C38();
  v14 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7, v13);
  v25 = &v12 - v14;
  v16 = *(v8 - 8);
  v15 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v12 - v14, v9);
  v24 = &v12 - v15;
  v28 = a1;
  v27 = v10;
  v26 = v17;
  (*(v16 + 16))();
  v18 = *(v22 - 8);
  v19 = v22 - 8;
  (*(v18 + 16))(v25, v17);
  (*(v18 + 56))(v25, 0, 1, v22);
  sub_1B98F5598();
  return sub_1B98F55C8();
}

uint64_t *sub_1B98F3E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a1;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v45 = __b;
  v47 = 40;
  memset(__b, 0, sizeof(__b));
  v57 = v42;
  v56 = v43;
  v32 = 0;
  v5 = sub_1B98F5C38();
  v20 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5, v42);
  v21 = &v18 - v20;
  v22 = *(v6 - 8);
  v23 = v6 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](&v18 - v20, v7);
  v25 = &v18 - v24;
  v54 = &v18 - v24;
  v26 = *(v9 - 8);
  v27 = v9 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8, v9);
  v29 = &v18 - v28;
  v30 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v18 - v28, v11);
  v31 = &v18 - v30;
  v53 = &v18 - v30;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = sub_1B98F5C38();
  v37 = *(*(v35 - 8) + 64);
  v36 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v41, v12);
  v38 = &v18 - v36;
  v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v13, &v18 - v36);
  v40 = &v18 - v39;
  v52 = v15;
  v51 = v14;
  sub_1B98F54D8();
  v46 = &v55;
  sub_1B98F5498();
  v16 = v48;
  memcpy(v45, v46, v47);
  for (i = v16; ; i = v19)
  {
    v19 = i;
    sub_1B98F5568();
    sub_1B98F5558();
    sub_1B98F4BF0(v38, v40, v42, v43, TupleTypeMetadata2, v35);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v40, 1) == 1)
    {
      break;
    }

    v18 = &v40[*(TupleTypeMetadata2 + 48)];
    (*(v26 + 32))(v31);
    (*(v22 + 32))(v25, v18, v43);
    (*(v26 + 16))(v29, v31, v42);
    (*(v22 + 16))(v21, v25, v43);
    (*(v22 + 56))(v21, 0, 1, v43);
    sub_1B98F5598();
    sub_1B98F55C8();
    (*(v22 + 8))(v25, v43);
    (*(v26 + 8))(v31, v42);
  }

  return sub_1B98F4D58(__b);
}

uint64_t sub_1B98F446C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v10 = a1;
  v17 = a3;
  v12 = a4;
  v13 = a5;
  v19 = 0;
  v18 = 0;
  v21 = a3;
  v20 = a4;
  v14 = *(a3 - 8);
  v15 = a3 - 8;
  v9 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v9 - v9;
  v19 = v10;
  v18 = v6;
  (*(v14 + 16))();
  v7 = *v10;
  sub_1B98F55B8();
  return (*(v14 + 8))(v16, v17);
}

uint64_t sub_1B98F45D8(uint64_t a1)
{
  v16 = 0;
  v14 = 0;
  v5 = *v1;
  v16 = a1;
  v15 = v5[10];
  v14 = v1;
  v13 = v5[11];
  v6 = v1[2];

  v9 = v15;
  v10 = v13;
  v11 = v5[12];
  v12 = a1;
  v7 = sub_1B98F5598();
  v2 = sub_1B98F5C38();
  sub_1B9875AE4(sub_1B98F4988, v8, v6, v7, v2);
}

uint64_t sub_1B98F47A8()
{
  sub_1B98ED154();
  sub_1B98F5598();
  return sub_1B98F5588();
}

uint64_t sub_1B98F4838()
{
  v4 = v0[2];
  v3 = v0[3];
  v1 = v0[4];
  return sub_1B98F47A8();
}

void *sub_1B98F4948@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v3 = v2[4];
  return sub_1B98F4590(a1, a2);
}

uint64_t sub_1B98F4988()
{
  v5 = v0[2];
  v4 = v0[3];
  v1 = v0[4];
  v2 = v0[5];
  return sub_1B98F4724();
}

uint64_t sub_1B98F49CC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  return swift_allocateGenericClassMetadata();
}

uint64_t sub_1B98F49FC()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_1B98F4A78()
{
  v4 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  sub_1B98F4B8C(v0 + 2);
  return v2;
}

uint64_t sub_1B98F4AE8()
{
  v3 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  sub_1B98F4A78();
  return swift_deallocClassInstance();
}

uint64_t *sub_1B98F4B8C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

void *sub_1B98F4BB8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  sub_1B98F54D8();
  result = a2;
  *a2 = v4;
  return result;
}

char *sub_1B98F4BF0(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a5 - 8);
  if ((*(v13 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a6 - 8) + 64));
  }

  else
  {
    (*(*(a3 - 8) + 32))(a2, a1);
    (*(*(a4 - 8) + 32))(&a2[*(a5 + 48)], &a1[*(a5 + 48)]);
    (*(v13 + 56))(a2, 0, 1, a5);
  }

  return a2;
}

uint64_t *sub_1B98F4D58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_1B98F4D98();
  return a1;
}

void *sub_1B98F4DDC()
{
  v7 = 0;
  v4 = *v0;
  v7 = v0;
  v6[2] = v4[10];
  v6[1] = v4[11];
  swift_getTupleTypeMetadata2();
  sub_1B98F5F98();
  v5 = v4[12];
  v6[0] = sub_1B98F54A8();
  v1 = sub_1B98F5598();
  v2 = sub_1B9874638(v6, v1);
  result = v0;
  v0[2] = v2;
  return result;
}