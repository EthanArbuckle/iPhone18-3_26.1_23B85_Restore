double Order.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84FA0];
  *a1 = MEMORY[0x277D84FA0];
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  v3 = MEMORY[0x277D84F90];
  *(a1 + 56) = sub_24ABEE868(MEMORY[0x277D84F90]);
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = v3;
  *(a1 + 104) = v2;
  return result;
}

unint64_t sub_24ABEE868(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AAB0, &unk_24AC118F0);
    v3 = sub_24AC0F6B8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24AC03818(v5, v6);
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

BOOL sub_24ABEE98C(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

uint64_t SourceValue.init(value:sourceTypes:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a2;
  (*(*(a3 - 8) + 32))(a7, a1);
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  result = type metadata accessor for SourceValue(0, v14);
  *(a7 + *(result + 52)) = v12;
  return result;
}

uint64_t sub_24ABEEA70(uint64_t a1, uint64_t a2)
{
  sub_24AC0F7C8();
  SourceValue.hash(into:)(v4, a2);
  return sub_24AC0F808();
}

uint64_t SourceValue.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 40);
  return sub_24AC0F3C8();
}

uint64_t sub_24ABEEAE8@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  v110 = a3;
  v5 = sub_24AC0F3A8();
  v111 = *(v5 - 8);
  v6 = *(v111 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v104 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v103 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v103 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v105 = &v103 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v103 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v103 - v20;
  v22 = a1[4];
  v23 = a1[5];
  v24 = a1[2];
  v116 = a1[3];
  v117 = v22;
  v25 = a1[6];
  v118 = v23;
  v119 = v25;
  v26 = a1[1];
  v113 = *a1;
  v114 = v26;
  v115 = v24;
  v27 = a2[1];
  v120 = *a2;
  v121 = v27;
  v28 = a2[2];
  v29 = a2[3];
  v30 = a2[6];
  v125 = a2[5];
  v126 = v30;
  v31 = a2[4];
  v123 = v29;
  v124 = v31;
  v122 = v28;
  sub_24AC0F388();
  sub_24ABF391C(&v113, v112);
  v32 = sub_24AC0F398();
  v33 = sub_24AC0F558();
  sub_24ABF3954(&v113);
  v34 = os_log_type_enabled(v32, v33);
  v106 = v11;
  v107 = v14;
  v108 = v19;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v112[0] = v109;
    *v35 = 136315650;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8C8, &qword_24AC10640);
    sub_24ABF42F4(&qword_27EF9AAC0, &qword_27EF9A8C8, &qword_24AC10640);
    v36 = sub_24AC0F538();
    v38 = sub_24ABF433C(v36, v37, v112);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2080;
    v39 = sub_24AC0F538();
    v41 = sub_24ABF433C(v39, v40, v112);

    *(v35 + 14) = v41;
    *(v35 + 22) = 2080;
    v42 = sub_24AC0F538();
    v44 = sub_24ABF433C(v42, v43, v112);

    *(v35 + 24) = v44;
    _os_log_impl(&dword_24ABED000, v32, v33, "order 1 - orderNumber:%s, senderDomain:%s, trackingNumbers:%s", v35, 0x20u);
    v45 = v109;
    swift_arrayDestroy();
    MEMORY[0x24C22C700](v45, -1, -1);
    v46 = v35;
    v19 = v108;
    MEMORY[0x24C22C700](v46, -1, -1);
  }

  v109 = *(v111 + 8);
  v109(v21, v5);
  sub_24AC0F388();
  sub_24ABF391C(&v120, v112);
  v47 = sub_24AC0F398();
  v48 = sub_24AC0F558();
  sub_24ABF3954(&v120);
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v103 = v5;
    v51 = v50;
    v112[0] = v50;
    *v49 = 136315650;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8C8, &qword_24AC10640);
    sub_24ABF42F4(&qword_27EF9AAC0, &qword_27EF9A8C8, &qword_24AC10640);
    v52 = sub_24AC0F538();
    v54 = sub_24ABF433C(v52, v53, v112);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2080;
    v55 = sub_24AC0F538();
    v57 = sub_24ABF433C(v55, v56, v112);

    *(v49 + 14) = v57;
    *(v49 + 22) = 2080;
    v58 = sub_24AC0F538();
    v60 = sub_24ABF433C(v58, v59, v112);

    *(v49 + 24) = v60;
    _os_log_impl(&dword_24ABED000, v47, v48, "order 2 - orderNumber:%s, senderDomain:%s, trackingNumbers:%s", v49, 0x20u);
    swift_arrayDestroy();
    v61 = v51;
    v5 = v103;
    MEMORY[0x24C22C700](v61, -1, -1);
    MEMORY[0x24C22C700](v49, -1, -1);

    v62 = v108;
  }

  else
  {

    v62 = v19;
  }

  v63 = v109;
  v109(v62, v5);
  v64 = sub_24AC0748C(v113);
  v65 = sub_24ABEF6F0(v64);

  v66 = sub_24AC0748C(v120);
  v67 = sub_24ABEF6F0(v66);

  v68 = sub_24AC07260(*(&v113 + 1));
  v69 = sub_24ABEF6F0(v68);

  v70 = sub_24AC07260(*(&v120 + 1));
  v71 = sub_24ABEF6F0(v70);

  v72 = *(v67 + 16);
  if (*(v65 + 16))
  {
    v73 = 1.0;
    if (v72)
    {
      goto LABEL_13;
    }
  }

  else if (!v72)
  {
    v74 = 1061997773;
    goto LABEL_12;
  }

  v74 = 1063675494;
LABEL_12:
  v73 = *&v74;
LABEL_13:
  if (sub_24ABEFA58(v67, v65))
  {
  }

  else
  {
    v75 = sub_24ABEFA58(v71, v69);

    if ((v75 & 1) == 0)
    {

      v98 = v105;
      sub_24AC0F388();
      v99 = sub_24AC0F398();
      v100 = sub_24AC0F558();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 134217984;
        *(v101 + 4) = v73;
        _os_log_impl(&dword_24ABED000, v99, v100, "basic match passed with confidence %f", v101, 0xCu);
        MEMORY[0x24C22C700](v101, -1, -1);
      }

      result = v63(v98, v5);
      v97 = v110;
      *v110 = 1;
      *(v97 + 3) = 0;
      *(v97 + 1) = 0;
      goto LABEL_31;
    }
  }

  v76 = sub_24AC0748C(v114);
  v77 = sub_24ABEF6F0(v76);

  v78 = sub_24AC0748C(v121);
  v79 = sub_24ABEF6F0(v78);

  v80 = sub_24ABEFA58(v79, v77);

  if ((v80 & 1) == 0)
  {

    v93 = v107;
    sub_24AC0F388();
    v94 = sub_24AC0F398();
    v95 = sub_24AC0F558();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 134217984;
      *(v96 + 4) = v73;
      _os_log_impl(&dword_24ABED000, v94, v95, "basic match passed with confidence %f", v96, 0xCu);
      MEMORY[0x24C22C700](v96, -1, -1);
    }

    result = v63(v93, v5);
    v97 = v110;
    *v110 = 1;
    *(v97 + 3) = 0;
    *(v97 + 1) = 1;
LABEL_31:
    *(v97 + 2) = 0;
    *(v97 + 8) = v73;
    v97[36] = 0;
    return result;
  }

  v81 = v106;
  sub_24AC0F378();
  v82 = sub_24AC0F398();
  v83 = sub_24AC0F558();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_24ABED000, v82, v83, "basic match failed", v84, 2u);
    MEMORY[0x24C22C700](v84, -1, -1);
  }

  v63(v81, v5);
  if ((sub_24ABEFA58(v67, v65) & 1) == 0)
  {

    goto LABEL_33;
  }

  v85 = *(v65 + 16);

  if (!v85)
  {
LABEL_33:

    goto LABEL_34;
  }

  v86 = *(v67 + 16);

  if (!v86)
  {
LABEL_34:
    v102 = v110;
    *v110 = 0;
    *(v102 + 1) = 0;
    *(v102 + 2) = 0;
    *(v102 + 3) = 1;
    *(v102 + 8) = 0;
    v102[36] = 1;
    return result;
  }

  v88 = v104;
  sub_24AC0F378();
  v89 = sub_24AC0F398();
  v90 = sub_24AC0F558();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_24ABED000, v89, v90, "skip full match because of orderNumber mismatch", v91, 2u);
    MEMORY[0x24C22C700](v91, -1, -1);
  }

  result = v63(v88, v5);
  v92 = v110;
  *v110 = 0;
  v92[2] = 0;
  v92[3] = 0;
  v92[1] = 3;
  *(v92 + 29) = 0;
  return result;
}

char *sub_24ABEF514(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AAB8, &unk_24AC11EE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24ABEF620(char *a1, int64_t a2, char a3)
{
  result = sub_24ABEF514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_24ABEF644@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_24ABEF690();
  result = sub_24AC0F5A8();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_24ABEF690()
{
  result = qword_27EF9ABB0;
  if (!qword_27EF9ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9ABB0);
  }

  return result;
}

uint64_t sub_24ABEF6E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24ABEF6F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C22BD60](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24ABEF788(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24ABEF788(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24AC0F7C8();
  sub_24AC0F3D8();
  v9 = sub_24AC0F808();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_24AC0F798() & 1) != 0)
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

    sub_24ABEF8D8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24ABEF8D8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_24AC0A814(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AC0B298();
      goto LABEL_16;
    }

    sub_24AC0B7A4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_24AC0F7C8();
  sub_24AC0F3D8();
  result = sub_24AC0F808();
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

      result = sub_24AC0F798();
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
  result = sub_24AC0F7A8();
  __break(1u);
  return result;
}

uint64_t sub_24ABEFA58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      sub_24AC0F7C8();

      sub_24AC0F3D8();
      v20 = sub_24AC0F808();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (sub_24AC0F798() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_17FinHealthInsights16OrderMatchReasonVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
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

FinHealthInsights::ShippingFulfillment __swiftcall ShippingFulfillment.init()()
{
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t ShippingFulfillment.trackingNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t _s17FinHealthInsights19ShippingFulfillmentV4hash4intoys6HasherVz_tF_0()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    sub_24AC0F7E8();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_24AC0F7E8();
  }

  v3 = *v0;
  sub_24AC0F7E8();
  sub_24AC0F3D8();
  if (!v2)
  {
    return sub_24AC0F7E8();
  }

LABEL_3:
  sub_24AC0F7E8();

  return sub_24AC0F3D8();
}

uint64_t CurrencyAmount.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A9F8, &qword_24AC106B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  if (v0[1])
  {
    v5 = *v0;
    v6 = v0[1];
  }

  v7 = sub_24AC0F368();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);

  sub_24AC0F578();
  v9 = v8;

  sub_24ABF7420(v4, &qword_27EF9A9F8, &qword_24AC106B0);
  if ((v9 & 0x100000000) != 0)
  {
    return sub_24AC0F7E8();
  }

  sub_24AC0F7E8();
  return sub_24AC0F568();
}

BOOL sub_24ABEFF5C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_24AC0F658();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_24ABF0078@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  v603 = a3;
  v591 = sub_24AC0F358();
  v599 = *(v591 - 8);
  v5 = v599[8];
  v6 = MEMORY[0x28223BE20](v591);
  v568 = &v559 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v567 = &v559 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v580 = &v559 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v572 = &v559 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v598 = &v559 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v588 = &v559 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v593 = &v559 - v19;
  MEMORY[0x28223BE20](v18);
  v594 = &v559 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AAC8, &qword_24AC11980);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v577 = &v559 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v596 = &v559 - v25;
  v600 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AAD0, &qword_24AC11988);
  v606 = *(v600 - 8);
  v26 = *(v606 + 64);
  v27 = MEMORY[0x28223BE20](v600);
  v574 = &v559 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v590 = &v559 - v30;
  MEMORY[0x28223BE20](v29);
  v604 = &v559 - v31;
  v32 = sub_24AC0F3A8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v571 = &v559 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v570 = &v559 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v575 = &v559 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v559 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v579 = &v559 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v569 = &v559 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v583 = &v559 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v582 = &v559 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v584 = &v559 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v589 = &v559 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v585 = &v559 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v573 = &v559 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v581 = &v559 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v597 = &v559 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  *&v605 = &v559 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v595 = &v559 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  *&v607 = &v559 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v72 = &v559 - v71;
  MEMORY[0x28223BE20](v70);
  v74 = &v559 - v73;
  v75 = a1[5];
  v637 = a1[4];
  v638 = v75;
  v639 = a1[6];
  v76 = a1[1];
  v633 = *a1;
  v634 = v76;
  v77 = a1[3];
  v635 = a1[2];
  v636 = v77;
  v78 = a2[1];
  v640 = *a2;
  v641 = v78;
  v79 = a2[2];
  v80 = a2[3];
  v81 = a2[6];
  v645 = a2[5];
  v646 = v81;
  v82 = a2[4];
  v643 = v80;
  v644 = v82;
  v642 = v79;
  sub_24AC0F388();
  v83 = sub_24AC0F398();
  v84 = sub_24AC0F558();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&dword_24ABED000, v83, v84, "=== OrderMatcher full match START ===", v85, 2u);
    MEMORY[0x24C22C700](v85, -1, -1);
  }

  v88 = *(v33 + 8);
  v86 = v33 + 8;
  v87 = v88;
  v88(v74, v32);
  sub_24AC0F388();
  sub_24ABF391C(&v633, &v626);
  sub_24ABF391C(&v640, &v626);
  v89 = sub_24AC0F398();
  v90 = sub_24AC0F558();
  sub_24ABF3954(&v633);
  sub_24ABF3954(&v640);
  v91 = os_log_type_enabled(v89, v90);
  v612 = v32;
  v613 = v88;
  v578 = v43;
  if (v91)
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v625[0] = v93;
    *v92 = 136315394;
    v630 = v637;
    v631 = v638;
    v632 = v639;
    v626 = v633;
    v627 = v634;
    v628 = v635;
    v629 = v636;
    sub_24ABF391C(&v633, v621);
    sub_24ABF3984();
    v94 = sub_24AC0F778();
    v96 = v95;
    v621[4] = v630;
    v621[5] = v631;
    v621[6] = v632;
    v621[0] = v626;
    v621[1] = v627;
    v621[2] = v628;
    v621[3] = v629;
    sub_24ABF3954(v621);
    v97 = sub_24ABF433C(v94, v96, v625);

    *(v92 + 4) = v97;
    *(v92 + 12) = 2080;
    v618 = v644;
    v619 = v645;
    v620 = v646;
    v614 = v640;
    v615 = v641;
    v616 = v642;
    v617 = v643;
    sub_24ABF391C(&v640, &v626);
    v87 = v613;
    v98 = sub_24AC0F778();
    v100 = v99;
    v630 = v618;
    v631 = v619;
    v632 = v620;
    v626 = v614;
    v627 = v615;
    v628 = v616;
    v629 = v617;
    sub_24ABF3954(&v626);
    v101 = sub_24ABF433C(v98, v100, v625);

    *(v92 + 14) = v101;
    _os_log_impl(&dword_24ABED000, v89, v90, "Order 1:%s, Order 2: %s", v92, 0x16u);
    swift_arrayDestroy();
    v102 = v93;
    v32 = v612;
    MEMORY[0x24C22C700](v102, -1, -1);
    MEMORY[0x24C22C700](v92, -1, -1);
  }

  (v87)(v72, v32);
  *&v621[0] = sub_24ABF45BC(MEMORY[0x277D84F90]);
  v103 = sub_24AC0748C(v633);
  v104 = sub_24ABEF6F0(v103);

  v105 = sub_24AC0748C(v640);
  v106 = sub_24ABEF6F0(v105);

  *&v608 = v106;
  *&v609 = v104;
  LODWORD(v601) = sub_24ABEFA58(v106, v104);
  v107 = v607;
  sub_24AC0F388();
  sub_24ABF391C(&v633, &v626);
  sub_24ABF391C(&v640, &v626);
  v108 = sub_24AC0F398();
  v109 = sub_24AC0F558();
  sub_24ABF3954(&v633);
  sub_24ABF3954(&v640);
  v110 = os_log_type_enabled(v108, v109);
  v610 = v86;
  v602 = 0;
  if (v110)
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *&v626 = v112;
    *v111 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8C8, &qword_24AC10640);
    sub_24ABF42F4(&qword_27EF9AAC0, &qword_27EF9A8C8, &qword_24AC10640);
    v113 = sub_24AC0F538();
    v115 = sub_24ABF433C(v113, v114, &v626);

    *(v111 + 4) = v115;
    *(v111 + 12) = 2080;
    v116 = sub_24AC0F538();
    v118 = sub_24ABF433C(v116, v117, &v626);

    *(v111 + 14) = v118;
    _os_log_impl(&dword_24ABED000, v108, v109, "full match orderNumber : order1:%s order2:%s", v111, 0x16u);
    swift_arrayDestroy();
    v119 = v112;
    v87 = v613;
    MEMORY[0x24C22C700](v119, -1, -1);
    v120 = v111;
    v32 = v612;
    MEMORY[0x24C22C700](v120, -1, -1);

    v121 = v607;
  }

  else
  {

    v121 = v107;
  }

  (v87)(v121, v32);
  v122 = v609;
  v123 = v608;
  if (*(v609 + 16) && ((*(v608 + 16) != 0) & v601) == 1)
  {

    sub_24AC0F388();
    v124 = sub_24AC0F398();
    v125 = sub_24AC0F558();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&dword_24ABED000, v124, v125, "full match exits early because orderNumbers don't match", v126, 2u);
      MEMORY[0x24C22C700](v126, -1, -1);
    }

    v127 = v595;
    v128 = v32;
    goto LABEL_13;
  }

  v129 = sub_24AC0C6E4(v123, v122);
  v130 = v129;
  v131 = v129 + 56;
  v132 = 1 << *(v129 + 32);
  v133 = -1;
  if (v132 < 64)
  {
    v133 = ~(-1 << v132);
  }

  v134 = v133 & *(v129 + 56);
  v135 = (v132 + 63) >> 6;

  v137 = 0;
  v138 = v611;
  v587 = v136;
  if (v134)
  {
    while (1)
    {
      v139 = v137;
LABEL_21:
      v140 = (*(v130 + 48) + ((v139 << 10) | (16 * __clz(__rbit64(v134)))));
      v141 = v140[1];
      *&v626 = *v140;
      *(&v626 + 1) = v141;

      v142 = sub_24AC07738(&v626, v138);

      if (!v142)
      {
        break;
      }

      v134 &= v134 - 1;
      v137 = v139;
      if (!v134)
      {
        goto LABEL_18;
      }
    }

    v566 = 1;
  }

  else
  {
    while (1)
    {
LABEL_18:
      v139 = v137 + 1;
      if (__OFADD__(v137, 1))
      {
        goto LABEL_263;
      }

      if (v139 >= v135)
      {
        break;
      }

      v134 = *(v131 + 8 * v139);
      ++v137;
      if (v134)
      {
        goto LABEL_21;
      }
    }

    v566 = 0;
  }

  v143 = v635 + 56;
  v144 = 1 << *(v635 + 32);
  v145 = -1;
  if (v144 < 64)
  {
    v145 = ~(-1 << v144);
  }

  v87 = v145 & *(v635 + 56);
  v146 = (v144 + 63) >> 6;

  v148 = 0;
  v149 = MEMORY[0x277D84F90];
  *&v607 = v147;
  if (!v87)
  {
    goto LABEL_30;
  }

  do
  {
LABEL_28:
    while (1)
    {
      v150 = __clz(__rbit64(v87));
      v87 &= v87 - 1;
      v151 = (*(v147 + 48) + 40 * (v150 | (v148 << 6)));
      v152 = v151[1];
      if (v152)
      {
        break;
      }

      if (!v87)
      {
        goto LABEL_30;
      }
    }

    v595 = *v151;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v149 = sub_24ABF41E8(0, *(v149 + 2) + 1, 1, v149);
    }

    v138 = *(v149 + 2);
    v154 = *(v149 + 3);
    if (v138 >= v154 >> 1)
    {
      v149 = sub_24ABF41E8((v154 > 1), v138 + 1, 1, v149);
    }

    *(v149 + 2) = v138 + 1;
    v155 = &v149[16 * v138];
    *(v155 + 4) = v595;
    *(v155 + 5) = v152;
    v147 = v607;
  }

  while (v87);
  while (1)
  {
LABEL_30:
    v153 = v148 + 1;
    if (__OFADD__(v148, 1))
    {
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
      goto LABEL_264;
    }

    if (v153 >= v146)
    {
      break;
    }

    v87 = *(v143 + 8 * v153);
    ++v148;
    if (v87)
    {
      v148 = v153;
      goto LABEL_28;
    }
  }

  v156 = sub_24ABEF6F0(v149);

  *&v614 = v156;
  v87 = *(&v639 + 1) + 56;
  v157 = 1 << *(*(&v639 + 1) + 32);
  v158 = -1;
  if (v157 < 64)
  {
    v158 = ~(-1 << v157);
  }

  v159 = v158 & *(*(&v639 + 1) + 56);
  v160 = (v157 + 63) >> 6;

  v162 = 0;
  v163 = MEMORY[0x277D84F90];
  v595 = v161;
  if (!v159)
  {
    goto LABEL_45;
  }

  do
  {
LABEL_43:
    while (1)
    {
      v164 = __clz(__rbit64(v159));
      v159 &= v159 - 1;
      v165 = *(v161 + 48) + 152 * (v164 | (v162 << 6));
      v166 = *(v165 + 88);
      if (v166)
      {
        break;
      }

      if (!v159)
      {
        goto LABEL_45;
      }
    }

    v168 = *(v165 + 80);
    v169 = *(v165 + 88);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v592 = v168;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v163 = sub_24ABF41E8(0, *(v163 + 2) + 1, 1, v163);
    }

    v138 = *(v163 + 2);
    v171 = *(v163 + 3);
    v161 = v595;
    if (v138 >= v171 >> 1)
    {
      v163 = sub_24ABF41E8((v171 > 1), v138 + 1, 1, v163);
      v161 = v595;
    }

    *(v163 + 2) = v138 + 1;
    v172 = &v163[16 * v138];
    *(v172 + 4) = v592;
    *(v172 + 5) = v166;
  }

  while (v159);
  while (1)
  {
LABEL_45:
    v167 = v162 + 1;
    if (__OFADD__(v162, 1))
    {
      goto LABEL_260;
    }

    if (v167 >= v160)
    {
      break;
    }

    v159 = *(v87 + 8 * v167);
    ++v162;
    if (v159)
    {
      v162 = v167;
      goto LABEL_43;
    }
  }

  sub_24ABF545C(v163);

  v173 = v642;
  v174 = v642 + 56;
  v175 = 1 << *(v642 + 32);
  v176 = -1;
  if (v175 < 64)
  {
    v176 = ~(-1 << v175);
  }

  v138 = v176 & *(v642 + 56);
  v177 = (v175 + 63) >> 6;

  v178 = 0;
  v179 = MEMORY[0x277D84F90];
  if (!v138)
  {
    goto LABEL_60;
  }

  do
  {
LABEL_58:
    while (1)
    {
      v180 = __clz(__rbit64(v138));
      v138 &= v138 - 1;
      v181 = (*(v173 + 48) + 40 * (v180 | (v178 << 6)));
      v182 = v181[1];
      if (v182)
      {
        break;
      }

      if (!v138)
      {
        goto LABEL_60;
      }
    }

    v592 = *v181;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v179 = sub_24ABF41E8(0, *(v179 + 2) + 1, 1, v179);
    }

    v185 = *(v179 + 2);
    v184 = *(v179 + 3);
    v186 = (v185 + 1);
    if (v185 >= v184 >> 1)
    {
      v586 = (v185 + 1);
      v188 = v179;
      v189 = v185;
      v190 = sub_24ABF41E8((v184 > 1), v185 + 1, 1, v188);
      v186 = v586;
      v185 = v189;
      v179 = v190;
    }

    *(v179 + 2) = v186;
    v187 = &v179[16 * v185];
    *(v187 + 4) = v592;
    *(v187 + 5) = v182;
  }

  while (v138);
  while (1)
  {
LABEL_60:
    v183 = v178 + 1;
    if (__OFADD__(v178, 1))
    {
      goto LABEL_261;
    }

    if (v183 >= v177)
    {
      break;
    }

    v138 = *(v174 + 8 * v183);
    ++v178;
    if (v138)
    {
      v178 = v183;
      goto LABEL_58;
    }
  }

  v191 = sub_24ABEF6F0(v179);

  v625[0] = v191;
  v192 = *(&v646 + 1) + 56;
  v193 = 1 << *(*(&v646 + 1) + 32);
  v194 = -1;
  if (v193 < 64)
  {
    v194 = ~(-1 << v193);
  }

  v138 = v194 & *(*(&v646 + 1) + 56);
  v195 = (v193 + 63) >> 6;

  v197 = 0;
  v198 = MEMORY[0x277D84F90];
  v592 = v196;
  if (!v138)
  {
    goto LABEL_75;
  }

  do
  {
LABEL_73:
    while (1)
    {
      v199 = __clz(__rbit64(v138));
      v138 &= v138 - 1;
      v200 = *(v196 + 48) + 152 * (v199 | (v197 << 6));
      v201 = *(v200 + 88);
      if (v201)
      {
        break;
      }

      if (!v138)
      {
        goto LABEL_75;
      }
    }

    v586 = *(v200 + 80);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v198 = sub_24ABF41E8(0, *(v198 + 2) + 1, 1, v198);
    }

    v204 = *(v198 + 2);
    v203 = *(v198 + 3);
    v205 = v204 + 1;
    v196 = v592;
    if (v204 >= v203 >> 1)
    {
      v576 = v204 + 1;
      v207 = v198;
      v208 = v204;
      v209 = sub_24ABF41E8((v203 > 1), v204 + 1, 1, v207);
      v205 = v576;
      v204 = v208;
      v198 = v209;
      v196 = v592;
    }

    *(v198 + 2) = v205;
    v206 = &v198[16 * v204];
    *(v206 + 4) = v586;
    *(v206 + 5) = v201;
  }

  while (v138);
  while (1)
  {
LABEL_75:
    v202 = v197 + 1;
    if (__OFADD__(v197, 1))
    {
      goto LABEL_262;
    }

    if (v202 >= v195)
    {
      break;
    }

    v138 = *(v192 + 8 * v202);
    ++v197;
    if (v138)
    {
      v197 = v202;
      goto LABEL_73;
    }
  }

  sub_24ABF545C(v198);

  v210 = v605;
  sub_24AC0F388();
  sub_24ABF391C(&v633, &v626);
  sub_24ABF391C(&v640, &v626);
  v211 = sub_24AC0F398();
  v212 = sub_24AC0F558();
  sub_24ABF3954(&v633);
  sub_24ABF3954(&v640);
  if (!os_log_type_enabled(v211, v212))
  {

    v235 = v210;
LABEL_104:
    v613(v235, v612);
    v250 = v625[0];
    v251 = v611;
    v252 = *(*v611 + 120);
    v586 = v614;
    v253 = v252();
    v630 = v637;
    v631 = v638;
    v632 = v639;
    v626 = v633;
    v627 = v634;
    v628 = v635;
    v629 = v636;
    v254 = *(*v251 + 104);
    v255 = *v251 + 104;
    v256 = v254(&v626);
    v630 = v644;
    v631 = v645;
    v632 = v646;
    v626 = v640;
    v627 = v641;
    v628 = v642;
    v629 = v643;
    v561 = v255;
    v562 = v254;
    v257 = v254(&v626);
    v258 = *(*v251 + 112);
    v259 = v596;
    v564 = *v251 + 112;
    v565 = v258;
    v258(v256, v257);

    v260 = *(v606 + 48);
    v261 = v600;
    v606 += 48;
    v563 = v260;
    v262 = v260(v259, 1, v600);
    v263 = v604;
    if (v262 == 1)
    {
      sub_24ABF7420(v259, &qword_27EF9AAC8, &qword_24AC11980);
      v264 = 1.79769313e308;
    }

    else
    {
      *&v607 = v192;
      v576 = v250;
      sub_24AC0D054(v259, v604);
      v265 = v590;
      sub_24AC0D894(v263, v590, &qword_27EF9AAD0, &qword_24AC11988);
      v266 = *(v261 + 48);
      v267 = v599;
      v268 = v599[4];
      v269 = v594;
      v270 = v591;
      v268(v594, v265, v591);
      v271 = v265 + v266;
      v272 = v269;
      v273 = v593;
      v268(v593, v271, v270);
      sub_24AC0F348();
      v264 = fabs(v274);
      sub_24AC0F388();
      v275 = v267[2];
      v276 = v588;
      v275(v588, v272, v270);
      v275(v598, v273, v270);
      v277 = sub_24AC0F398();
      v278 = sub_24AC0F558();
      if (os_log_type_enabled(v277, v278))
      {
        v279 = swift_slowAlloc();
        *&v605 = swift_slowAlloc();
        *&v626 = v605;
        *v279 = 136315394;
        sub_24ABF7608(&qword_27EF9AAD8);
        LODWORD(v596) = v278;
        v560 = v277;
        v280 = sub_24AC0F778();
        v282 = v281;
        v283 = v599[1];
        v283(v276, v270);
        v284 = sub_24ABF433C(v280, v282, &v626);

        *(v279 + 4) = v284;
        *(v279 + 12) = 2080;
        v285 = v598;
        v286 = sub_24AC0F778();
        v288 = v287;
        v283(v285, v270);
        v289 = sub_24ABF433C(v286, v288, &v626);

        *(v279 + 14) = v289;
        v290 = v560;
        _os_log_impl(&dword_24ABED000, v560, v596, "full match closest date pair: date1:%s date2:%s", v279, 0x16u);
        v291 = v605;
        swift_arrayDestroy();
        MEMORY[0x24C22C700](v291, -1, -1);
        MEMORY[0x24C22C700](v279, -1, -1);

        v613(v597, v612);
        v283(v593, v270);
        v283(v594, v270);
      }

      else
      {

        v292 = v599[1];
        v292(v598, v270);
        v292(v276, v270);
        v613(v597, v612);
        v292(v273, v270);
        v292(v272, v270);
      }

      sub_24ABF7420(v604, &qword_27EF9AAD0, &qword_24AC11988);
      v250 = v576;
      v192 = v607;
    }

    v630 = v637;
    v631 = v638;
    v632 = v639;
    v626 = v633;
    v627 = v634;
    v628 = v635;
    v629 = v636;
    v293 = *(*v611 + 136);
    if (v293(&v626) & 1) != 0 || (v630 = v644, v631 = v645, v632 = v646, v626 = v640, v627 = v641, v628 = v642, v629 = v643, (v293(&v626)))
    {
      if (v253 <= 0.3)
      {

        v309 = v585;
        sub_24AC0F388();
        v310 = sub_24AC0F398();
        v311 = sub_24AC0F558();
        if (os_log_type_enabled(v310, v311))
        {
          v312 = swift_slowAlloc();
          *v312 = 0;
          _os_log_impl(&dword_24ABED000, v310, v311, "full match exits early because merchant names don't match", v312, 2u);
          MEMORY[0x24C22C700](v312, -1, -1);
        }

        v613(v309, v612);
        goto LABEL_187;
      }

      v576 = v250;
      v294 = *&v621[0];
      v295 = swift_isUniquelyReferenced_nonNull_native();
      *&v626 = v294;
      LOBYTE(v624) = 0;
      sub_24ABF4770(LODWORD(v253), 2, v295);
      *&v621[0] = v626;
      v296 = *(&v635 + 1) + 56;
      v297 = 1 << *(*(&v635 + 1) + 32);
      v298 = -1;
      if (v297 < 64)
      {
        v298 = ~(-1 << v297);
      }

      v138 = v298 & *(*(&v635 + 1) + 56);
      v299 = (v297 + 63) >> 6;
      v604 = *(&v635 + 1);

      v300 = 0;
      v301 = MEMORY[0x277D84F90];
      if (v138)
      {
        goto LABEL_120;
      }

      while (1)
      {
        v302 = v300 + 1;
        if (__OFADD__(v300, 1))
        {
          goto LABEL_265;
        }

        if (v302 >= v299)
        {

          v313 = sub_24ABF7CEC(v301);

          v624 = v313;
          v314 = 1 << *(v595 + 32);
          v315 = -1;
          if (v314 < 64)
          {
            v315 = ~(-1 << v314);
          }

          v316 = v315 & *(v595 + 56);
          v317 = (v314 + 63) >> 6;

          v319 = 0;
          v320 = MEMORY[0x277D84F90];
          v138 = 152;
          if (!v316)
          {
            goto LABEL_134;
          }

          do
          {
LABEL_132:
            while (1)
            {
              v321 = __clz(__rbit64(v316));
              v316 &= v316 - 1;
              v322 = (*(v318 + 48) + 152 * (v321 | (v319 << 6)));
              v323 = v322[7];
              if (v323 != 1)
              {
                break;
              }

              if (!v316)
              {
                goto LABEL_134;
              }
            }

            *&v607 = v322[6];
            v325 = v322[9];
            *&v608 = v322[8];
            *&v609 = v325;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v320 = sub_24ABF7BE0(0, *(v320 + 2) + 1, 1, v320);
            }

            v327 = *(v320 + 2);
            v326 = *(v320 + 3);
            v328 = v327 + 1;
            v318 = v595;
            if (v327 >= v326 >> 1)
            {
              *&v605 = v327 + 1;
              v331 = sub_24ABF7BE0((v326 > 1), v327 + 1, 1, v320);
              v328 = v605;
              v320 = v331;
              v318 = v595;
            }

            *(v320 + 2) = v328;
            v329 = &v320[32 * v327];
            *(v329 + 4) = v607;
            *(v329 + 5) = v323;
            v330 = v609;
            *(v329 + 6) = v608;
            *(v329 + 7) = v330;
          }

          while (v316);
LABEL_134:
          while (1)
          {
            v324 = v319 + 1;
            if (__OFADD__(v319, 1))
            {
              goto LABEL_266;
            }

            if (v324 >= v317)
            {

              sub_24ABF81F0(v320);

              v87 = *(&v642 + 1);
              v332 = *(&v642 + 1) + 56;
              v333 = 1 << *(*(&v642 + 1) + 32);
              v334 = -1;
              if (v333 < 64)
              {
                v334 = ~(-1 << v333);
              }

              v138 = v334 & *(*(&v642 + 1) + 56);
              v335 = (v333 + 63) >> 6;

              v336 = 0;
              v337 = MEMORY[0x277D84F90];
              if (v138)
              {
                goto LABEL_151;
              }

              while (1)
              {
                v338 = v336 + 1;
                if (__OFADD__(v336, 1))
                {
                  goto LABEL_267;
                }

                if (v338 >= v335)
                {

                  v345 = sub_24ABF7CEC(v337);

                  v623 = v345;
                  v346 = 1 << *(v592 + 32);
                  v347 = -1;
                  if (v346 < 64)
                  {
                    v347 = ~(-1 << v346);
                  }

                  v348 = v347 & *(v592 + 56);
                  v349 = (v346 + 63) >> 6;

                  v351 = 0;
                  v352 = MEMORY[0x277D84F90];
                  v138 = 152;
                  if (!v348)
                  {
                    goto LABEL_162;
                  }

                  do
                  {
LABEL_160:
                    while (1)
                    {
                      v353 = __clz(__rbit64(v348));
                      v348 &= v348 - 1;
                      v354 = (*(v350 + 48) + 152 * (v353 | (v351 << 6)));
                      v355 = v354[7];
                      if (v355 != 1)
                      {
                        break;
                      }

                      if (!v348)
                      {
                        goto LABEL_162;
                      }
                    }

                    *&v607 = v354[6];
                    v357 = v354[9];
                    *&v608 = v354[8];
                    *&v609 = v357;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v352 = sub_24ABF7BE0(0, *(v352 + 2) + 1, 1, v352);
                    }

                    v359 = *(v352 + 2);
                    v358 = *(v352 + 3);
                    v360 = v359 + 1;
                    v350 = v592;
                    if (v359 >= v358 >> 1)
                    {
                      *&v605 = v359 + 1;
                      v363 = sub_24ABF7BE0((v358 > 1), v359 + 1, 1, v352);
                      v360 = v605;
                      v352 = v363;
                      v350 = v592;
                    }

                    *(v352 + 2) = v360;
                    v361 = &v352[32 * v359];
                    *(v361 + 4) = v607;
                    *(v361 + 5) = v355;
                    v362 = v609;
                    *(v361 + 6) = v608;
                    *(v361 + 7) = v362;
                  }

                  while (v348);
LABEL_162:
                  while (1)
                  {
                    v356 = v351 + 1;
                    if (__OFADD__(v351, 1))
                    {
                      goto LABEL_268;
                    }

                    if (v356 >= v349)
                    {

                      sub_24ABF81F0(v352);

                      v364 = v624;
                      v365 = v623;
                      v366 = sub_24ABF8288(v623, v624);
                      LOBYTE(v626) = 0;
                      LODWORD(v608) = v366;
                      v367 = 1065353216;
                      if (v366)
                      {
                        v367 = 0;
                      }

                      sub_24ABF46B4(v367, 1);
                      v368 = v589;
                      sub_24AC0F388();
                      sub_24ABF391C(&v633, &v626);
                      sub_24ABF391C(&v640, &v626);
                      v369 = sub_24AC0F398();
                      v370 = sub_24AC0F558();
                      sub_24ABF3954(&v633);
                      sub_24ABF3954(&v640);
                      v371 = os_log_type_enabled(v369, v370);
                      *&v609 = v364;
                      if (v371)
                      {
                        v372 = swift_slowAlloc();
                        *&v607 = swift_slowAlloc();
                        *&v626 = v607;
                        *v372 = 136315394;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A908, &qword_24AC10660);
                        sub_24ABF42F4(&qword_27EF9AAE8, &qword_27EF9A908, &qword_24AC10660);
                        v373 = sub_24AC0F538();
                        v375 = v365;
                        v376 = sub_24ABF433C(v373, v374, &v626);

                        *(v372 + 4) = v376;
                        *(v372 + 12) = 2080;
                        v377 = sub_24AC0F538();
                        v379 = sub_24ABF433C(v377, v378, &v626);

                        *(v372 + 14) = v379;
                        v365 = v375;
                        _os_log_impl(&dword_24ABED000, v369, v370, "full match amounts: order1:%s order2:%s", v372, 0x16u);
                        v380 = v607;
                        swift_arrayDestroy();
                        MEMORY[0x24C22C700](v380, -1, -1);
                        MEMORY[0x24C22C700](v372, -1, -1);

                        v381 = v589;
                      }

                      else
                      {

                        v381 = v368;
                      }

                      v392 = v612;
                      v391 = v613;
                      v613(v381, v612);
                      if (v608)
                      {

                        sub_24AC0F388();
                        v393 = sub_24AC0F398();
                        v394 = sub_24AC0F558();
                        if (os_log_type_enabled(v393, v394))
                        {
                          v395 = swift_slowAlloc();
                          *v395 = 0;
                          _os_log_impl(&dword_24ABED000, v393, v394, "full match exits early because amounts don't match", v395, 2u);
                          MEMORY[0x24C22C700](v395, -1, -1);
                        }

                        v391(v584, v392);
                        goto LABEL_187;
                      }

                      *&v608 = v365;
                      v630 = v637;
                      v631 = v638;
                      v632 = v639;
                      v626 = v633;
                      v627 = v634;
                      v628 = v635;
                      v629 = v636;
                      v398 = v562;
                      v399 = v562(&v626);
                      v630 = v644;
                      v631 = v645;
                      v632 = v646;
                      v626 = v640;
                      v627 = v641;
                      v628 = v642;
                      v629 = v643;
                      v400 = v398(&v626);
                      v401 = v582;
                      sub_24AC0F388();
                      sub_24ABF391C(&v640, &v626);
                      sub_24ABF391C(&v633, &v626);
                      v402 = sub_24AC0F398();
                      v403 = sub_24AC0F558();
                      sub_24ABF3954(&v633);
                      sub_24ABF3954(&v640);
                      if (os_log_type_enabled(v402, v403))
                      {
                        v404 = swift_slowAlloc();
                        *&v605 = swift_slowAlloc();
                        *&v626 = v605;
                        *v404 = 136316418;
                        LODWORD(v604) = v403;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8C8, &qword_24AC10640);
                        *&v607 = v400;
                        sub_24ABF42F4(&qword_27EF9AAC0, &qword_27EF9A8C8, &qword_24AC10640);
                        v405 = sub_24AC0F538();
                        v407 = sub_24ABF433C(v405, v406, &v626);

                        *(v404 + 4) = v407;
                        *(v404 + 12) = 2080;
                        v408 = v602;
                        sub_24AC07ADC(v639);
                        v601 = v402;
                        v409 = MEMORY[0x24C22BD30]();
                        v411 = v410;

                        v412 = sub_24ABF433C(v409, v411, &v626);

                        *(v404 + 14) = v412;
                        *(v404 + 22) = 2080;
                        sub_24AC07BE4(v595);
                        v413 = MEMORY[0x24C22BD30]();
                        v415 = v414;

                        v416 = sub_24ABF433C(v413, v415, &v626);

                        *(v404 + 24) = v416;
                        *(v404 + 32) = 2080;
                        v417 = sub_24AC0F538();
                        v419 = sub_24ABF433C(v417, v418, &v626);

                        *(v404 + 34) = v419;
                        *(v404 + 42) = 2080;
                        sub_24AC07ADC(v646);
                        v420 = MEMORY[0x24C22BD30]();
                        v422 = v421;

                        v423 = sub_24ABF433C(v420, v422, &v626);

                        *(v404 + 44) = v423;
                        *(v404 + 52) = 2080;
                        sub_24AC07BE4(v592);
                        v602 = v408;
                        v424 = MEMORY[0x24C22BD30]();
                        v426 = v425;

                        v427 = sub_24ABF433C(v424, v426, &v626);

                        *(v404 + 54) = v427;
                        v428 = v601;
                        _os_log_impl(&dword_24ABED000, v601, v604, "full match dateTime: order1(orderDates:%s dateSent:%s transactionDate:%s) order2(orderDates:%s dateSent:%s transactionDate:%s)", v404, 0x3Eu);
                        v429 = v605;
                        swift_arrayDestroy();
                        MEMORY[0x24C22C700](v429, -1, -1);
                        v430 = v404;
                        v392 = v612;
                        v400 = v607;
                        MEMORY[0x24C22C700](v430, -1, -1);

                        v431 = v582;
                      }

                      else
                      {

                        v431 = v401;
                      }

                      v613(v431, v392);
                      v439 = v583;
                      sub_24AC0F388();

                      v440 = sub_24AC0F398();
                      v441 = sub_24AC0F558();

                      if (os_log_type_enabled(v440, v441))
                      {
                        v442 = swift_slowAlloc();
                        *&v607 = swift_slowAlloc();
                        *&v626 = v607;
                        *v442 = 136315394;
                        sub_24ABF7608(&qword_27EF9AAE0);
                        LODWORD(v605) = v441;
                        v443 = sub_24AC0F538();
                        v445 = v400;
                        v446 = v399;
                        v447 = v392;
                        v448 = sub_24ABF433C(v443, v444, &v626);

                        *(v442 + 4) = v448;
                        v392 = v447;
                        v399 = v446;
                        v400 = v445;
                        *(v442 + 12) = 2080;
                        v449 = sub_24AC0F538();
                        v451 = sub_24ABF433C(v449, v450, &v626);

                        *(v442 + 14) = v451;
                        _os_log_impl(&dword_24ABED000, v440, v605, "full match converted dateTime: order1:%s order2:%s", v442, 0x16u);
                        v452 = v607;
                        swift_arrayDestroy();
                        MEMORY[0x24C22C700](v452, -1, -1);
                        MEMORY[0x24C22C700](v442, -1, -1);

                        v453 = v583;
                      }

                      else
                      {

                        v453 = v439;
                      }

                      v613(v453, v392);
                      v454 = v580;
                      v455 = v577;
                      v456 = v600;
                      v565(v399, v400);

                      if (v563(v455, 1, v456) == 1)
                      {
                        sub_24ABF7420(v455, &qword_27EF9AAC8, &qword_24AC11980);
                      }

                      else
                      {
                        v457 = v574;
                        sub_24AC0D054(v455, v574);
                        v458 = v590;
                        sub_24AC0D894(v457, v590, &qword_27EF9AAD0, &qword_24AC11988);
                        v459 = *(v456 + 48);
                        v460 = v599;
                        v461 = v599[4];
                        v462 = v572;
                        v463 = v591;
                        v461(v572, v458, v591);
                        v461(v454, v458 + v459, v463);
                        v464 = v462;
                        sub_24AC0F348();
                        v466 = fabs(v465);
                        if (v466 >= 345600.0)
                        {

                          v535 = v569;
                          sub_24AC0F388();
                          v536 = v460[2];
                          v537 = v567;
                          v536(v567, v464, v463);
                          v538 = v568;
                          v536(v568, v454, v463);
                          v539 = sub_24AC0F398();
                          v540 = sub_24AC0F558();
                          if (os_log_type_enabled(v539, v540))
                          {
                            v541 = swift_slowAlloc();
                            v611 = swift_slowAlloc();
                            *&v626 = v611;
                            *v541 = 134218498;
                            *(v541 + 4) = v466;
                            *(v541 + 12) = 2080;
                            sub_24ABF7608(&qword_27EF9AAD8);
                            LODWORD(v609) = v540;
                            v542 = sub_24AC0F778();
                            *&v608 = v539;
                            v543 = v538;
                            v545 = v544;
                            v546 = v460[1];
                            v546(v537, v463);
                            v547 = sub_24ABF433C(v542, v545, &v626);

                            *(v541 + 14) = v547;
                            *(v541 + 22) = 2080;
                            v548 = sub_24AC0F778();
                            v550 = v549;
                            v546(v543, v463);
                            v551 = sub_24ABF433C(v548, v550, &v626);

                            *(v541 + 24) = v551;
                            v552 = v608;
                            _os_log_impl(&dword_24ABED000, v608, v609, "full match exits early because of timeDifference=%f date1=%s date2=%s", v541, 0x20u);
                            v553 = v611;
                            swift_arrayDestroy();
                            MEMORY[0x24C22C700](v553, -1, -1);
                            MEMORY[0x24C22C700](v541, -1, -1);

                            v613(v569, v612);
                            v546(v580, v463);
                            v546(v572, v463);
                          }

                          else
                          {

                            v558 = v460[1];
                            v558(v538, v463);
                            v558(v537, v463);
                            v613(v535, v612);
                            v558(v454, v463);
                            v558(v464, v463);
                          }

                          sub_24ABF7420(v574, &qword_27EF9AAD0, &qword_24AC11988);
                          goto LABEL_187;
                        }

                        *&v467 = v466 / -345600.0 + 1.0;
                        v468 = v467;
                        v469 = *&v621[0];
                        v470 = swift_isUniquelyReferenced_nonNull_native();
                        *&v626 = v469;
                        v622 = 0;
                        sub_24ABF4770(v468, 0, v470);
                        v471 = v460[1];
                        v471(v454, v463);
                        v471(v462, v463);
                        sub_24ABF7420(v457, &qword_27EF9AAD0, &qword_24AC11988);
                        *&v621[0] = v626;
                        v392 = v612;
                      }

                      v472 = sub_24AC07D54(v595, sub_24AC0D954);
                      v473 = sub_24ABEF6F0(v472);

                      v474 = sub_24AC07D54(v592, sub_24AC0D878);

                      v475 = sub_24ABEF6F0(v474);

                      v476 = sub_24ABEFA58(v475, v473);
                      LOBYTE(v626) = 0;
                      v477 = 1065353216;
                      if (v476)
                      {
                        v477 = 0;
                      }

                      sub_24ABF46B4(v477, 3);
                      v478 = v579;
                      sub_24AC0F388();

                      v479 = sub_24AC0F398();
                      v480 = sub_24AC0F558();

                      if (os_log_type_enabled(v479, v480))
                      {
                        v481 = swift_slowAlloc();
                        v482 = swift_slowAlloc();
                        *&v626 = v482;
                        *v481 = 136315394;
                        v483 = sub_24AC0F538();
                        v485 = v484;

                        v486 = sub_24ABF433C(v483, v485, &v626);

                        *(v481 + 4) = v486;
                        *(v481 + 12) = 2080;
                        v487 = sub_24AC0F538();
                        v489 = v488;

                        v490 = sub_24ABF433C(v487, v489, &v626);

                        *(v481 + 14) = v490;
                        _os_log_impl(&dword_24ABED000, v479, v480, "full match last4digits: order1:%s order2:%s", v481, 0x16u);
                        swift_arrayDestroy();
                        MEMORY[0x24C22C700](v482, -1, -1);
                        MEMORY[0x24C22C700](v481, -1, -1);

                        v491 = v579;
                        v492 = v612;
                      }

                      else
                      {

                        v491 = v478;
                        v492 = v392;
                      }

                      v87 = v613;
                      v613(v491, v492);
                      v138 = v578;
                      if (qword_27EF9D3F0 != -1)
                      {
                        goto LABEL_269;
                      }

                      goto LABEL_212;
                    }

                    v348 = *(v192 + 8 * v356);
                    ++v351;
                    if (v348)
                    {
                      v351 = v356;
                      goto LABEL_160;
                    }
                  }
                }

                v138 = *(v332 + 8 * v338);
                ++v336;
                if (v138)
                {
                  v336 = v338;
                  do
                  {
LABEL_151:
                    v339 = (*(v87 + 48) + 40 * (__clz(__rbit64(v138)) | (v336 << 6)));
                    v340 = *v339;
                    v608 = v339[1];
                    v609 = v340;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v337 = sub_24ABF7BE0(0, *(v337 + 2) + 1, 1, v337);
                    }

                    v342 = *(v337 + 2);
                    v341 = *(v337 + 3);
                    if (v342 >= v341 >> 1)
                    {
                      v337 = sub_24ABF7BE0((v341 > 1), v342 + 1, 1, v337);
                    }

                    v138 &= v138 - 1;
                    *(v337 + 2) = v342 + 1;
                    v343 = &v337[32 * v342];
                    v344 = v608;
                    *(v343 + 2) = v609;
                    *(v343 + 3) = v344;
                  }

                  while (v138);
                }
              }
            }

            v316 = *(v87 + 8 * v324);
            ++v319;
            if (v316)
            {
              v319 = v324;
              goto LABEL_132;
            }
          }
        }

        v138 = *(v296 + 8 * v302);
        ++v300;
        if (v138)
        {
          v300 = v302;
          do
          {
LABEL_120:
            v303 = (*(v604 + 48) + 40 * (__clz(__rbit64(v138)) | (v300 << 6)));
            v304 = v303[1];
            v607 = *v303;
            v605 = v304;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v301 = sub_24ABF7BE0(0, *(v301 + 2) + 1, 1, v301);
            }

            v306 = *(v301 + 2);
            v305 = *(v301 + 3);
            if (v306 >= v305 >> 1)
            {
              v301 = sub_24ABF7BE0((v305 > 1), v306 + 1, 1, v301);
            }

            v138 &= v138 - 1;
            *(v301 + 2) = v306 + 1;
            v307 = &v301[32 * v306];
            v308 = v605;
            *(v307 + 2) = v607;
            *(v307 + 3) = v308;
          }

          while (v138);
        }
      }
    }

    v382 = v601;
    v383 = (v253 > 0.3) & ~v601;
    v384 = v383 | sub_24ABF6A04(v641, v634) ^ 1;
    if (((v382 | v566) & 1) == 0)
    {
      LOBYTE(v384) = v384 | (v264 <= 2592000.0);
    }

    v385 = v612;
    v386 = v613;
    v387 = v581;
    if ((v384 & 1) == 0)
    {

      sub_24AC0F388();
      v432 = sub_24AC0F398();
      v433 = sub_24AC0F558();
      if (os_log_type_enabled(v432, v433))
      {
        v434 = swift_slowAlloc();
        v435 = swift_slowAlloc();
        *&v626 = v435;
        *v434 = 136315650;
        if (v383)
        {
          v436 = 1936941424;
        }

        else
        {
          v436 = 1818845542;
        }

        v437 = sub_24ABF433C(v436, 0xE400000000000000, &v626);

        *(v434 + 4) = v437;
        *(v434 + 12) = 2080;
        *(v434 + 14) = sub_24ABF433C(1818845542, 0xE400000000000000, &v626);
        *(v434 + 22) = 2080;
        *(v434 + 24) = sub_24ABF433C(1818845542, 0xE400000000000000, &v626);
        _os_log_impl(&dword_24ABED000, v432, v433, "full match exits because fails to meet security constraints. order number and merchant match: %s tracking number match: %s order number match with length and time difference constraint: %s", v434, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C22C700](v435, -1, -1);
        MEMORY[0x24C22C700](v434, -1, -1);
      }

      v386(v387, v385);
      v438 = v603;
      *v603 = 0;
      *(v438 + 2) = 0;
      *(v438 + 3) = 0;
      *(v438 + 1) = 4;
      *(v438 + 8) = 0;
      v438[36] = 1;
    }

    if (*(v609 + 16))
    {
      v388 = *(v608 + 16);

      v389 = v573;
      if (v388)
      {

        v390 = 1.0;
LABEL_253:
        sub_24AC0F388();
        v554 = sub_24AC0F398();
        v555 = sub_24AC0F558();
        if (os_log_type_enabled(v554, v555))
        {
          v556 = swift_slowAlloc();
          *v556 = 134217984;
          *(v556 + 4) = v390;
          _os_log_impl(&dword_24ABED000, v554, v555, "=== OrderMatcher full match END : PASS === confidence %f", v556, 0xCu);
          MEMORY[0x24C22C700](v556, -1, -1);
        }

        v386(v389, v385);
        goto LABEL_256;
      }
    }

    else
    {

      v533 = *(v608 + 16);

      v389 = v573;
      if (!v533)
      {
        v534 = 1061997773;
LABEL_252:
        v390 = *&v534;
        goto LABEL_253;
      }
    }

    v534 = 1063675494;
    goto LABEL_252;
  }

  LODWORD(v576) = v212;
  v586 = v211;
  v213 = swift_slowAlloc();
  v565 = swift_slowAlloc();
  *&v626 = v565;
  *v213 = 136315906;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8E8, &qword_24AC10650);
  v215 = sub_24ABF42F4(&qword_27EF9AAF0, &qword_27EF9A8E8, &qword_24AC10650);
  *&v607 = v214;
  v564 = v215;
  v216 = sub_24AC0F538();
  v138 = sub_24ABF433C(v216, v217, &v626);

  *(v213 + 4) = v138;
  *(v213 + 12) = 2080;
  v218 = 1 << *(v595 + 32);
  if (v218 < 64)
  {
    v219 = ~(-1 << v218);
  }

  else
  {
    v219 = -1;
  }

  v220 = v219 & *(v595 + 56);
  v221 = (v218 + 63) >> 6;

  v223 = 0;
  v224 = MEMORY[0x277D84F90];
  if (!v220)
  {
    goto LABEL_92;
  }

  do
  {
LABEL_90:
    while (1)
    {
      v225 = __clz(__rbit64(v220));
      v220 &= v220 - 1;
      v226 = *(v222 + 48) + 152 * (v225 | (v223 << 6));
      v138 = *(v226 + 88);
      if (v138)
      {
        break;
      }

      if (!v220)
      {
        goto LABEL_92;
      }
    }

    v563 = *(v226 + 80);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v224 = sub_24ABF41E8(0, *(v224 + 2) + 1, 1, v224);
    }

    v229 = *(v224 + 2);
    v228 = *(v224 + 3);
    v230 = (v229 + 1);
    v222 = v595;
    if (v229 >= v228 >> 1)
    {
      v562 = (v229 + 1);
      v232 = v224;
      v233 = v229;
      v234 = sub_24ABF41E8((v228 > 1), v229 + 1, 1, v232);
      v230 = v562;
      v229 = v233;
      v224 = v234;
      v222 = v595;
    }

    *(v224 + 2) = v230;
    v231 = &v224[16 * v229];
    *(v231 + 4) = v563;
    *(v231 + 5) = v138;
  }

  while (v220);
LABEL_92:
  while (1)
  {
    v227 = v223 + 1;
    if (__OFADD__(v223, 1))
    {
      break;
    }

    if (v227 >= v221)
    {

      v236 = MEMORY[0x24C22BD30](v224, MEMORY[0x277D837D0]);
      v238 = v237;

      v239 = sub_24ABF433C(v236, v238, &v626);

      *(v213 + 14) = v239;
      *(v213 + 22) = 2080;
      v240 = sub_24AC0F538();
      v242 = sub_24ABF433C(v240, v241, &v626);

      *(v213 + 24) = v242;
      *(v213 + 32) = 2080;
      v243 = v602;
      sub_24AC07954(v592);
      v602 = v243;
      v244 = MEMORY[0x24C22BD30]();
      v246 = v245;

      v247 = sub_24ABF433C(v244, v246, &v626);

      *(v213 + 34) = v247;
      v248 = v586;
      _os_log_impl(&dword_24ABED000, v586, v576, "full match merchants: order1(merchants:%s transactionDescription:%s) order2(merchants:%s transactionDescription:%s)", v213, 0x2Au);
      v249 = v565;
      swift_arrayDestroy();
      MEMORY[0x24C22C700](v249, -1, -1);
      MEMORY[0x24C22C700](v213, -1, -1);

      v235 = v605;
      goto LABEL_104;
    }

    v220 = *(v87 + 8 * v227);
    ++v223;
    if (v220)
    {
      v223 = v227;
      goto LABEL_90;
    }
  }

LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
LABEL_268:
  __break(1u);
LABEL_269:
  swift_once();
LABEL_212:
  v494 = 0;
  v495 = qword_27EF9DC28;
  v611 = 0x800000024AC12860;
  v390 = 0.0;
  *&v493 = 136315650;
  v609 = v493;
  do
  {
    if (*(v495 + 16))
    {
      v496 = byte_285E22DC8[v494 + 32];
      v497 = sub_24ABF489C(byte_285E22DC8[v494 + 32]);
      if (v498)
      {
        v499 = *(v495 + 56) + 8 * v497;
        if ((*(v499 + 4) & 1) == 0)
        {
          v500 = *&v621[0];
          if (*(*&v621[0] + 16))
          {
            v501 = *v499;
            v502 = sub_24ABF489C(v496);
            if (v503)
            {
              v504 = *(v500 + 56) + 8 * v502;
              if ((*(v504 + 4) & 1) == 0)
              {
                v505 = *v504;
                v390 = v390 + (v501 * *v504);
                sub_24AC0F388();
                v506 = sub_24AC0F398();
                v507 = sub_24AC0F558();
                if (os_log_type_enabled(v506, v507))
                {
                  v508 = swift_slowAlloc();
                  v509 = swift_slowAlloc();
                  *&v626 = v509;
                  *v508 = v609;
                  v510 = 0xD000000000000013;
                  if (v496 != 2)
                  {
                    v510 = 0x72756F467473616CLL;
                  }

                  v511 = v611;
                  if (v496 != 2)
                  {
                    v511 = 0xEE00737469676944;
                  }

                  v512 = 0x656D695465746164;
                  if (v496)
                  {
                    v512 = 0x746E756F6D61;
                  }

                  v513 = 0xE800000000000000;
                  if (v496)
                  {
                    v513 = 0xE600000000000000;
                  }

                  if (v496 <= 1)
                  {
                    v514 = v512;
                  }

                  else
                  {
                    v514 = v510;
                  }

                  if (v496 <= 1)
                  {
                    v515 = v513;
                  }

                  else
                  {
                    v515 = v511;
                  }

                  v516 = sub_24ABF433C(v514, v515, &v626);

                  *(v508 + 4) = v516;
                  *(v508 + 12) = 2048;
                  *(v508 + 14) = v505;
                  *(v508 + 22) = 2048;
                  *(v508 + 24) = v501;
                  _os_log_impl(&dword_24ABED000, v506, v507, "%s \t score: %f weight: %f", v508, 0x20u);
                  __swift_destroy_boxed_opaque_existential_1(v509);
                  MEMORY[0x24C22C700](v509, -1, -1);
                  MEMORY[0x24C22C700](v508, -1, -1);

                  v138 = v578;
                  v87 = v613;
                  v613(v578, v612);
                }

                else
                {

                  (v87)(v138, v612);
                }
              }
            }
          }
        }
      }
    }

    ++v494;
  }

  while (v494 != 4);
  v517 = v575;
  sub_24AC0F388();
  v518 = sub_24AC0F398();
  v519 = sub_24AC0F558();
  if (os_log_type_enabled(v518, v519))
  {
    v520 = swift_slowAlloc();
    *v520 = 134218496;
    *(v520 + 4) = v390;
    *(v520 + 12) = 2048;
    *(v520 + 14) = 0xC010E4C780000000;
    *(v520 + 22) = 2048;
    *(v520 + 24) = 0x4001DF0AE0000000;
    _os_log_impl(&dword_24ABED000, v518, v519, "totalScore: %f intercept: %f threshold:%f", v520, 0x20u);
    MEMORY[0x24C22C700](v520, -1, -1);
  }

  v521 = v517;
  v522 = v612;
  (v87)(v521, v612);
  if ((v390 + -4.2234) <= 2.2339)
  {
    v528 = v571;
    sub_24AC0F388();
    v529 = sub_24AC0F398();
    v530 = sub_24AC0F558();
    if (os_log_type_enabled(v529, v530))
    {
      v531 = swift_slowAlloc();
      *v531 = 0;
      _os_log_impl(&dword_24ABED000, v529, v530, "=== OrderMatcher full match END : FAIL ===", v531, 2u);
      v532 = v531;
      v528 = v571;
      MEMORY[0x24C22C700](v532, -1, -1);
    }

    v127 = v528;
    v128 = v522;
LABEL_13:
    (v87)(v127, v128);
LABEL_187:
    v396 = v603;
    *v603 = 0;
    *(v396 + 1) = 0;
    *(v396 + 2) = 0;
    *(v396 + 3) = 1;
    *(v396 + 8) = 0;
    v396[36] = 1;
  }

  v523 = v570;
  sub_24AC0F388();
  v524 = sub_24AC0F398();
  v525 = sub_24AC0F558();
  if (os_log_type_enabled(v524, v525))
  {
    v526 = swift_slowAlloc();
    *v526 = 0;
    _os_log_impl(&dword_24ABED000, v524, v525, "=== OrderMatcher full match END : PASS ===", v526, 2u);
    v527 = v526;
    v523 = v570;
    MEMORY[0x24C22C700](v527, -1, -1);
  }

  (v87)(v523, v522);
LABEL_256:
  v557 = v603;
  *v603 = 1;
  *(v557 + 2) = 0;
  *(v557 + 3) = 0;
  *(v557 + 1) = 2;
  *(v557 + 8) = v390;
  v557[36] = 0;
}

unint64_t sub_24ABF3984()
{
  result = qword_27EF9AAF8;
  if (!qword_27EF9AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AAF8);
  }

  return result;
}

uint64_t Order.description.getter()
{
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v57 = v0[8];
  v58 = v0[9];
  v59 = v0[10];
  v62 = v0[11];
  v4 = v0[12];
  v5 = v0[13];
  v68 = MEMORY[0x277D84F90];
  v6 = *(v4 + 2);
  v7 = v4 - 40;
  v63 = v5;
LABEL_2:
  v8 = &v7[72 * v2];
  while (v6 != v2)
  {
    if (v2 >= *(v4 + 2))
    {
LABEL_60:
      __break(1u);
LABEL_61:
      v4 = sub_24ABF41E8(0, *(v4 + 2) + 1, 1, v4);
      goto LABEL_55;
    }

    ++v2;
    v9 = v8 + 72;
    v10 = v8[80];
    v8 += 72;
    if ((v10 & 1) == 0)
    {
      v60 = v7;
      v11 = *v9;
      v12 = *(v9 + 3);
      v13 = *(v9 + 5);
      v14 = *(v9 + 7);
      v15 = v9[64];
      *&v66[0] = 0;
      *(&v66[0] + 1) = 0xE000000000000000;

      sub_24AC0F668();
      MEMORY[0x24C22BC80](0x6164286C69616D45, 0xEF3A746E65536574);
      sub_24AC0F528();
      MEMORY[0x24C22BC80](0x546C69616D65202CLL, 0xEC0000003A657079);
      v16 = 0xD000000000000019;
      if (v15 == 5)
      {
        v16 = 0xD00000000000001ALL;
      }

      v17 = 0x800000024AC12710;
      if (v15 == 5)
      {
        v17 = 0x800000024AC12730;
      }

      v18 = 0x737349726564726FLL;
      if (v15 == 3)
      {
        v18 = 0xD000000000000011;
      }

      v19 = 0x800000024AC12750;
      if (v15 != 3)
      {
        v19 = 0xEA00000000006575;
      }

      if (v15 <= 4)
      {
        v16 = v18;
        v17 = v19;
      }

      v20 = 0x647055726564726FLL;
      if (v15 == 1)
      {
        v20 = 0xD000000000000011;
      }

      v21 = 0x800000024AC12770;
      if (v15 != 1)
      {
        v21 = 0xEB00000000657461;
      }

      if (!v15)
      {
        v20 = 0x6E776F6E6B6E75;
        v21 = 0xE700000000000000;
      }

      if (v15 <= 2)
      {
        v22 = v20;
      }

      else
      {
        v22 = v16;
      }

      if (v15 <= 2)
      {
        v23 = v21;
      }

      else
      {
        v23 = v17;
      }

      MEMORY[0x24C22BC80](v22, v23);

      MEMORY[0x24C22BC80](41, 0xE100000000000000);

      v24 = *(&v66[0] + 1);
      v1 = *&v66[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_24ABF41E8(0, *(v3 + 2) + 1, 1, v3);
      }

      v26 = *(v3 + 2);
      v25 = *(v3 + 3);
      if (v26 >= v25 >> 1)
      {
        v3 = sub_24ABF41E8((v25 > 1), v26 + 1, 1, v3);
      }

      *(v3 + 2) = v26 + 1;
      v27 = &v3[16 * v26];
      *(v27 + 4) = v1;
      *(v27 + 5) = v24;
      v5 = v63;
      v7 = v60;
      goto LABEL_2;
    }
  }

  sub_24ABF40F4(v3);
  v4 = (v5 + 56);
  v28 = 1 << *(v5 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v1 = v29 & *(v5 + 56);
  v30 = (v28 + 63) >> 6;

  v31 = 0;
  v2 = MEMORY[0x277D84F90];
LABEL_36:
  if (!v1)
  {
    goto LABEL_38;
  }

  do
  {
    v32 = v31;
LABEL_41:
    v33 = __clz(__rbit64(v1));
    v1 &= v1 - 1;
    v34 = *(v5 + 48) + 152 * (v33 | (v32 << 6));
    v35 = *(v34 + 16);
    v66[0] = *v34;
    v66[1] = v35;
    v36 = *(v34 + 80);
    v38 = *(v34 + 32);
    v37 = *(v34 + 48);
    v66[4] = *(v34 + 64);
    v66[5] = v36;
    v66[2] = v38;
    v66[3] = v37;
    v39 = *(v34 + 96);
    v40 = *(v34 + 112);
    v41 = *(v34 + 128);
    v67 = *(v34 + 144);
    v66[7] = v40;
    v66[8] = v41;
    v66[6] = v39;
    v42 = *(&v66[0] + 1);
    if (*(&v66[0] + 1))
    {
      v43 = *&v66[0];
      strcpy(v65, "Transaction(");
      BYTE5(v65[1]) = 0;
      HIWORD(v65[1]) = -5120;
      sub_24AC05008(v66, &v64);
      MEMORY[0x24C22BC80](v43, v42);
      MEMORY[0x24C22BC80](41, 0xE100000000000000);
      sub_24ABF7420(v66, &qword_27EF9A970, &qword_24AC10690);
      v44 = v65[1];
      v61 = v65[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_24ABF41E8(0, *(v2 + 16) + 1, 1, v2);
      }

      v46 = *(v2 + 16);
      v45 = *(v2 + 24);
      if (v46 >= v45 >> 1)
      {
        v2 = sub_24ABF41E8((v45 > 1), v46 + 1, 1, v2);
      }

      *(v2 + 16) = v46 + 1;
      v47 = v2 + 16 * v46;
      *(v47 + 32) = v61;
      *(v47 + 40) = v44;
      v31 = v32;
      v5 = v63;
      goto LABEL_36;
    }

    v31 = v32;
  }

  while (v1);
  while (1)
  {
LABEL_38:
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    if (v32 >= v30)
    {
      break;
    }

    v1 = *&v4[8 * v32];
    ++v31;
    if (v1)
    {
      goto LABEL_41;
    }
  }

  sub_24ABF40F4(v2);
  if (!v62)
  {
    v4 = v68;
    goto LABEL_58;
  }

  *&v66[0] = 0;
  *(&v66[0] + 1) = 0xE000000000000000;
  sub_24AC0F668();

  if (v58)
  {
    strcpy(v66, "ClassicOrder(");
    HIWORD(v66[0]) = -4864;
    MEMORY[0x24C22BC80](v59, v62);
    MEMORY[0x24C22BC80](8236, 0xE200000000000000);
    v48 = v57;
    v49 = v58;
  }

  else
  {
    strcpy(v66, "TrackedOrder(");
    HIWORD(v66[0]) = -4864;
    v48 = v59;
    v49 = v62;
  }

  MEMORY[0x24C22BC80](v48, v49);
  MEMORY[0x24C22BC80](41, 0xE100000000000000);
  v1 = *(&v66[0] + 1);
  v2 = *&v66[0];
  v4 = v68;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_55:
  v51 = *(v4 + 2);
  v50 = *(v4 + 3);
  if (v51 >= v50 >> 1)
  {
    v4 = sub_24ABF41E8((v50 > 1), v51 + 1, 1, v4);
  }

  *(v4 + 2) = v51 + 1;
  v52 = &v4[16 * v51];
  *(v52 + 4) = v2;
  *(v52 + 5) = v1;
  v68 = v4;
LABEL_58:
  strcpy(v66, "Order( ");
  *(&v66[0] + 1) = 0xE700000000000000;
  v64 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A888, &qword_24AC10628);
  sub_24ABF42F4(&qword_27EF9A890, &qword_27EF9A888, &qword_24AC10628);
  v53 = sub_24AC0F3E8();
  v55 = v54;

  MEMORY[0x24C22BC80](v53, v55);

  MEMORY[0x24C22BC80](10528, 0xE200000000000000);
  return *&v66[0];
}

uint64_t sub_24ABF40F4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24ABF41E8(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_24ABF41E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AAB8, &unk_24AC11EE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24ABF42F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24ABF433C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24ABF4408(v11, 0, 0, 1, a1, a2);
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
    sub_24ABF4514(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_24ABF4408(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24ABF56CC(a5, a6);
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
    result = sub_24AC0F678();
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

uint64_t sub_24ABF4514(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

unint64_t sub_24ABF45BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB98, &qword_24AC11E48);
    v3 = sub_24AC0F6B8();

    for (i = (a1 + 40); ; i += 12)
    {
      v5 = *(i - 8);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_24ABF489C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = v3[7] + 8 * result;
      *v10 = v6;
      *(v10 + 4) = v7;
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

unint64_t sub_24ABF46B4(unint64_t a1, char a2)
{
  v3 = v2;
  if ((a1 & 0x10000000000) != 0)
  {
    v9 = *v2;
    result = sub_24ABF489C(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_24AC0C41C();
        v14 = v16;
      }

      result = sub_24AC0C1E8(v11, v14);
      *v3 = v14;
    }
  }

  else
  {
    v5 = *v3;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    result = sub_24ABF4770(a1 | ((HIDWORD(a1) & 1) << 32), a2, v7);
    *v3 = v15;
  }

  return result;
}

unint64_t sub_24ABF4770(unint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_24ABF489C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_24AC0C41C();
      result = v17;
      goto LABEL_8;
    }

    sub_24ABF4B50(v14, a3 & 1);
    v18 = *v4;
    result = sub_24ABF489C(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_14:
      result = sub_24AC0F7B8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 8 * result;
    *v21 = a1;
    *(v21 + 4) = BYTE4(a1) & 1;
  }

  else
  {

    return sub_24ABF4E70(result, a2, a1 | ((HIDWORD(a1) & 1) << 32), v20);
  }

  return result;
}

unint64_t sub_24ABF489C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_24AC0F7C8();
  sub_24AC0F3D8();

  v4 = sub_24AC0F808();

  return sub_24ABF4994(a1, v4);
}

unint64_t sub_24ABF4994(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0xD000000000000013 : 0x72756F467473616CLL;
      v8 = v6 == 2 ? 0x800000024AC12860 : 0xEE00737469676944;
      v9 = *(*(v23 + 48) + v4) ? 0x746E756F6D61 : 0x656D695465746164;
      v10 = *(*(v23 + 48) + v4) ? 0xE600000000000000 : 0xE800000000000000;
      v11 = *(*(v23 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0xD000000000000013 : 0x72756F467473616CLL;
      v14 = v5 == 2 ? 0x800000024AC12860 : 0xEE00737469676944;
      v15 = v5 ? 0x746E756F6D61 : 0x656D695465746164;
      v16 = v5 ? 0xE600000000000000 : 0xE800000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_24AC0F798();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_24ABF4B50(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB98, &qword_24AC11E48);
  result = sub_24AC0F6A8();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = a2;
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v24 = v21 | (v9 << 6);
      v25 = *(v5 + 56) + 8 * v24;
      v26 = *(*(v5 + 48) + v24);
      v36 = *(v25 + 4);
      v27 = *v25;
      v28 = *(v8 + 40);
      sub_24AC0F7C8();
      sub_24AC0F3D8();

      result = sub_24AC0F808();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v16) >> 6;
        while (++v18 != v30 || (v29 & 1) == 0)
        {
          v31 = v18 == v30;
          if (v18 == v30)
          {
            v18 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v18);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v26;
      v20 = *(v8 + 56) + 8 * v19;
      *v20 = v27;
      *(v20 + 4) = v36;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_18;
      }
    }

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_24ABF4E70(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = a4[7] + 8 * result;
  *v4 = a3;
  *(v4 + 4) = BYTE4(a3) & 1;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

char *sub_24ABF4EC0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64) + 1;
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (*(v5 + 64) != -1)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t SourceValue.description.getter(uint64_t a1)
{
  BYTE8(v6) = 0;
  sub_24AC0F668();
  MEMORY[0x24C22BC80](0x203A65756C6156, 0xE700000000000000);
  v3 = *(a1 + 16);
  sub_24AC0F788();
  MEMORY[0x24C22BC80](0x656372756F53202CLL, 0xEF203A7365707954);
  *&v6 = *(v1 + *(a1 + 52));
  v4 = SourceTypes.description.getter();
  MEMORY[0x24C22BC80](v4);

  return *(&v6 + 1);
}

uint64_t SourceTypes.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((*v0 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_24ABF41E8(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_24ABF41E8((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6C69616D65;
  *(v5 + 5) = 0xE500000000000000;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24ABF41E8(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_24ABF41E8((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x746361736E617274;
    *(v8 + 5) = 0xEB000000006E6F69;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24ABF41E8(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_24ABF41E8((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    strcpy(v11 + 32, "classicOrder");
    v11[45] = 0;
    *(v11 + 23) = -5120;
  }

  if ((v1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24ABF41E8(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_24ABF41E8((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    strcpy(v14 + 32, "trackedOrder");
    v14[45] = 0;
    *(v14 + 23) = -5120;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A888, &qword_24AC10628);
  sub_24ABF42F4(&qword_27EF9A890, &qword_27EF9A888, &qword_24AC10628);
  v15 = sub_24AC0F3E8();

  return v15;
}

uint64_t sub_24ABF545C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_24ABEF788(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_24ABF54D4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24ABF5528(uint64_t a1, unint64_t a2)
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

  v6 = sub_24ABF5658(v5, 0);
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

  result = sub_24AC0F678();
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
        v10 = sub_24AC0F488();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24ABF5658(v10, 0);
        result = sub_24AC0F648();
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

void *sub_24ABF5658(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9ABB8, qword_24AC11EA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_24ABF56CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_24ABF5528(a1, a2);
  sub_24ABF5718(&unk_285E22DA0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24ABF5718(uint64_t result)
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

  result = sub_24AC0A3F0(result, v12, 1, v3);
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

uint64_t sub_24ABF5804(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = a2 + 56;

  v9 = 0;
  v10 = 0.0;
  v28 = v6;
  v29 = v2;
LABEL_6:
  if (v5)
  {
    v11 = v9;
LABEL_11:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
    v15 = *v13;
    v14 = v13[1];
    v16 = 1 << *(a2 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(a2 + 56);
    v19 = (v16 + 63) >> 6;

    v20 = 0;
    while (v18)
    {
      v21 = v20;
LABEL_20:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v23 = (*(a2 + 48) + ((v21 << 10) | (16 * v22)));
      v24 = *v23;
      v25 = v23[1];

      static MerchantMatcher.merchantSimilarity(merchant1:merchant2:)();
      v27 = v26;

      if (v10 <= v27)
      {
        v10 = v27;
      }
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        v9 = v11;
        v6 = v28;
        v2 = v29;
        goto LABEL_6;
      }

      v18 = *(v7 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v6)
      {
      }

      v5 = *(v2 + 8 * v11);
      ++v9;
      if (v5)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t static MerchantMatcher.fuzzyMatchScore(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v5 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = sub_24ABF5D18();
      result = sub_24ABF5D18();
      v7 = result;
      v34 = *(v6 + 16);
      if (v34)
      {
        v8 = 0;
        v31 = (result + 40);
        v32 = v6 + 32;
        v33 = *(result + 16);
        v9 = 0.0;
        v10 = 0.0;
        v30 = v6;
        while (v8 < *(v6 + 16))
        {
          if (v33)
          {
            v35 = v8;
            v11 = (v32 + 16 * v8);
            v13 = *v11;
            v12 = v11[1];
            v14 = *(v7 + 16);

            if (!v14)
            {
LABEL_38:
              __break(1u);
              break;
            }

            v15 = 0;
            v16 = 0.0;
            v17 = v31;
            while (1)
            {
              v19 = *(v17 - 1);
              v18 = *v17;
              v20 = v13 == v19 && v12 == v18;
              if (v20 || (v21 = *(v17 - 1), v22 = *v17, result = sub_24AC0F798(), (result & 1) != 0))
              {
                if (v16 <= 1.0)
                {
                  v16 = 1.0;
                }
              }

              else
              {
                sub_24ABEF690();

                if (sub_24AC0F5D8() & 1) != 0 || (sub_24AC0F5D8())
                {

                  if (v16 <= 0.3)
                  {
                    v16 = 0.3;
                  }
                }

                else
                {

                  v23 = sub_24ABF5F08(v13, v12);

                  v24 = sub_24ABF5F08(v19, v18);
                  v25 = sub_24AC0E750(v24, v23, sub_24ABF6298, sub_24ABF6298);

                  v26 = v25[2];

                  v27 = sub_24AC0F448();
                  v28 = sub_24AC0F448();

                  if (v28 <= v27)
                  {
                    v29 = v27;
                  }

                  else
                  {
                    v29 = v28;
                  }

                  if (v16 <= v26 / v29 * 0.5)
                  {
                    v16 = v26 / v29 * 0.5;
                  }
                }
              }

              if (v33 - 1 == v15)
              {
                break;
              }

              ++v15;
              v17 += 2;
              if (v15 >= *(v7 + 16))
              {
                goto LABEL_38;
              }
            }

            v6 = v30;
            v8 = v35;
          }

          else
          {
            v16 = 0.0;
          }

          ++v8;
          v9 = v9 + v16;
          v10 = v10 + 1.0;
          if (v8 == v34)
          {
          }
        }

        __break(1u);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_24ABF5D18()
{
  v0 = sub_24AC0F318();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = sub_24AC0F418();
  v18[1] = v5;
  sub_24AC0F308();
  sub_24ABEF690();
  v6 = sub_24AC0F598();
  (*(v1 + 8))(v4, v0);

  v8 = 0;
  v9 = *(v6 + 16);
  v10 = MEMORY[0x277D84F90];
LABEL_2:
  v11 = (v6 + 40 + 16 * v8);
  while (1)
  {
    if (v9 == v8)
    {

      return v10;
    }

    if (v8 >= *(v6 + 16))
    {
      break;
    }

    ++v8;
    v13 = *(v11 - 1);
    v12 = *v11;
    v11 += 2;
    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v18[0] = v10;
      if ((result & 1) == 0)
      {
        result = sub_24ABEF620(0, *(v10 + 16) + 1, 1);
        v10 = v18[0];
      }

      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_24ABEF620((v15 > 1), v16 + 1, 1);
        v10 = v18[0];
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v12;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24ABF5F08(uint64_t a1, unint64_t a2)
{
  v4 = sub_24AC0F448();
  v5 = MEMORY[0x24C22BD60](v4, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
  v14 = v5;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v13[2] = a1;
  v13[3] = a2;
  v13[4] = 0;
  v13[5] = v6;
  v7 = sub_24AC0F478();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      sub_24ABF5FC8(v13, v9, v10);

      v9 = sub_24AC0F478();
      v10 = v11;
    }

    while (v11);
    v5 = v14;
  }

  return v5;
}

uint64_t sub_24ABF5FC8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24AC0F7C8();
  sub_24AC0F3D8();
  v9 = sub_24AC0F808();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_24AC0F798() & 1) != 0)
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

    sub_24ABF6118(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24ABF6118(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_24AC0E4F0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AC0E9C4();
      goto LABEL_16;
    }

    sub_24AC0EB20(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_24AC0F7C8();
  sub_24AC0F3D8();
  result = sub_24AC0F808();
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

      result = sub_24AC0F798();
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
  result = sub_24AC0F7A8();
  __break(1u);
  return result;
}

uint64_t sub_24ABF6298(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v48 = result;
  v53 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v51 = 0;
    v28 = 0;
    v29 = a3 + 56;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_32:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
LABEL_39:
      v50 = v35 | (v28 << 6);
      v38 = (*(a3 + 48) + 16 * v50);
      v39 = *v38;
      v40 = v38[1];
      v41 = *(a4 + 40);
      sub_24AC0F7C8();
      sub_24AC0F3D8();
      result = sub_24AC0F808();
      a4 = v53;
      v42 = ~(-1 << *(v53 + 32));
      for (i = result & v42; ((*(v34 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v42)
      {
        v44 = (*(a4 + 48) + 16 * i);
        result = *v44;
        if (*v44 != v39 || v44[1] != v40)
        {
          result = sub_24AC0F798();
          a4 = v53;
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        *(v48 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        v27 = __OFADD__(v51++, 1);
        if (v27)
        {
          goto LABEL_52;
        }

        goto LABEL_32;
      }
    }

    v36 = v28;
    while (1)
    {
      v28 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v28 >= v33)
      {
        v4 = a3;
LABEL_48:

        return sub_24ABF662C(v48, a2, v51, v4);
      }

      v37 = *(v29 + 8 * v28);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v32 = (v37 - 1) & v37;
        goto LABEL_39;
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v49 = v8 & *(a4 + 56);
    v51 = 0;
    v46 = (v7 + 63) >> 6;
    v9 = a3 + 56;
LABEL_6:
    while (v49)
    {
      v10 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
      v11 = v10 | (v5 << 6);
      v12 = v53;
LABEL_13:
      v15 = (*(v12 + 48) + 16 * v11);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(v4 + 40);
      sub_24AC0F7C8();
      sub_24AC0F3D8();
      result = sub_24AC0F808();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v9 + 8 * (v20 >> 6))) != 0)
      {
        v23 = (*(v4 + 48) + 16 * v20);
        result = *v23;
        if (*v23 != v16 || v23[1] != v17)
        {
          v25 = ~v19;
          do
          {
            result = sub_24AC0F798();
            if (result)
            {
              break;
            }

            v20 = (v20 + 1) & v25;
            v21 = v20 >> 6;
            v22 = 1 << v20;
            if (((1 << v20) & *(v9 + 8 * (v20 >> 6))) == 0)
            {
              v4 = a3;
              goto LABEL_6;
            }

            v26 = (*(a3 + 48) + 16 * v20);
            result = *v26;
          }

          while (*v26 != v16 || v26[1] != v17);
        }

        v48[v21] |= v22;
        v4 = a3;
        v27 = __OFADD__(v51++, 1);
        if (v27)
        {
          goto LABEL_51;
        }
      }
    }

    v13 = v5;
    v12 = v53;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v46)
      {
        goto LABEL_48;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v49 = (v14 - 1) & v14;
        v11 = __clz(__rbit64(v14)) | (v5 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_24ABF662C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9ABC0, &qword_24AC11EF0);
  result = sub_24AC0F638();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v9 + 40);
    sub_24AC0F7C8();
    sub_24AC0F3D8();
    result = sub_24AC0F808();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v18;
    v28[1] = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24ABF6850(void *a1)
{
  v1 = a1[9];
  v2 = a1[11];
  v23 = a1[12];
  v3 = a1[13];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a1[13];

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = (*(v3 + 48) + 152 * (v12 | (v10 << 6)));
      v14 = v13[1];
      if (v14)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v21 = *v13;

    result = swift_isUniquelyReferenced_nonNull_native();
    v22 = v1;
    if ((result & 1) == 0)
    {
      result = sub_24ABF41E8(0, *(v11 + 16) + 1, 1, v11);
      v11 = result;
    }

    v17 = *(v11 + 16);
    v16 = *(v11 + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      result = sub_24ABF41E8((v16 > 1), v17 + 1, 1, v11);
      v18 = v17 + 1;
      v11 = result;
    }

    *(v11 + 16) = v18;
    v19 = v11 + 16 * v17;
    v1 = v22;
    *(v19 + 32) = v21;
    *(v19 + 40) = v14;
  }

  while (v6);
  while (1)
  {
LABEL_6:
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v7)
    {
      break;
    }

    v6 = *(v3 + 56 + 8 * v15);
    ++v10;
    if (v6)
    {
      v10 = v15;
      goto LABEL_4;
    }
  }

  v20 = *(v11 + 16);

  result = 0;
  if (v20 && !v2 && !v1)
  {
    return *(v23 + 16) == 0;
  }

  return result;
}

uint64_t sub_24ABF6A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v2 >= v3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = v4 + 56;
  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8C8, &qword_24AC10640);
  v10 = (v7 + 63) >> 6;
  v22 = v4;
  v23 = v5 + 56;

  for (i = 0; v9; result = )
  {
LABEL_17:
    v14 = *(v22 + 48) + 24 * (__clz(__rbit64(v9)) | (i << 6));
    v27 = *v14;
    v28 = *(v14 + 8);
    v29 = *(v14 + 16);
    if (*(v5 + 16))
    {
      v15 = *(v5 + 40);
      sub_24ABF42F4(&qword_27EF9AAC0, &qword_27EF9A8C8, &qword_24AC10640);

      v16 = sub_24AC0F3B8();
      v17 = -1 << *(v5 + 32);
      v18 = v16 & ~v17;
      if ((*(v23 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        sub_24ABF42F4(&qword_27EF9ABA0, &qword_27EF9A8C8, &qword_24AC10640);
        while (1)
        {
          v20 = *(v5 + 48) + 24 * v18;
          v24 = *v20;
          v25 = *(v20 + 8);
          v26 = *(v20 + 16);

          v21 = sub_24AC0F3F8();

          if (v21)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v23 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        return 0;
      }
    }

    else
    {
    }

LABEL_24:
    v9 &= v9 - 1;
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return 1;
    }

    v9 = *(v6 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24ABF6C98(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB00, &qword_24AC11990);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v78 - v4;
  v6 = sub_24AC0F358();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v78 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v79 = &v78 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v89 = &v78 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v92 = &v78 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v85 = &v78 - v18;
  MEMORY[0x28223BE20](v17);
  v81 = &v78 - v19;
  v20 = a1[3];
  v21 = a1[13];
  v90 = a1[12];
  v80 = v21;
  v22 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v23 = sub_24AC0F408();
  v87 = v22;
  [v22 setDateFormat_];

  v24 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v25 = sub_24AC0F408();
  v26 = v6;
  v86 = v24;
  v27 = v24;
  v28 = v5;
  [v27 setDateFormat_];

  v29 = v20 + 56;
  v30 = 1 << *(v20 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v20 + 56);
  v33 = (v30 + 63) >> 6;
  v84 = (v7 + 48);
  v91 = v7;
  v34 = (v7 + 32);
  v88 = v20;

  v35 = 0;
  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  v82 = v26;
  if (v32)
  {
LABEL_10:
    while (1)
    {
      v39 = *(v88 + 48) + 24 * (__clz(__rbit64(v32)) | (v35 << 6));
      v40 = *v39;
      v41 = *(v39 + 8);
      LOBYTE(v39) = *(v39 + 16);
      v93[0] = v40;
      v93[1] = v41;
      v94 = v39;

      sub_24AC08788(v93, v86, v87, v28);
      if (v36)
      {
        goto LABEL_48;
      }

      v32 &= v32 - 1;

      if ((*v84)(v28, 1, v26) == 1)
      {
        sub_24ABF7420(v28, &qword_27EF9AB00, &qword_24AC11990);
        if (!v32)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v83 = 0;
        v42 = v28;
        v43 = *v34;
        v44 = v81;
        v45 = v42;
        (*v34)(v81);
        (v43)(v85, v44, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_24AC0A008(0, v37[2] + 1, 1, v37);
        }

        v47 = v37[2];
        v46 = v37[3];
        if (v47 >= v46 >> 1)
        {
          v37 = sub_24AC0A008(v46 > 1, v47 + 1, 1, v37);
        }

        v37[2] = v47 + 1;
        v48 = v37 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v47;
        v26 = v82;
        (v43)(v48, v85, v82);
        v28 = v45;
        v36 = v83;
        if (!v32)
        {
          goto LABEL_6;
        }
      }
    }
  }

  while (1)
  {
LABEL_6:
    v38 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v38 >= v33)
    {
      break;
    }

    v32 = *(v29 + 8 * v38);
    ++v35;
    if (v32)
    {
      v35 = v38;
      goto LABEL_10;
    }
  }

  v49 = sub_24ABF7480(v37);

  v93[0] = v49;
  v50 = v90;
  v51 = *(v90 + 16);
  if (!v51)
  {
    v54 = MEMORY[0x277D84F90];
LABEL_29:
    sub_24ABF764C(v54);

    v60 = v80 + 56;
    v61 = 1 << *(v80 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & *(v80 + 56);
    v64 = (v61 + 63) >> 6;

    v66 = 0;
    v67 = MEMORY[0x277D84F90];
    if (!v63)
    {
      goto LABEL_34;
    }

    do
    {
LABEL_32:
      while (1)
      {
        v68 = __clz(__rbit64(v63));
        v63 &= v63 - 1;
        v69 = *(v65 + 48) + 152 * (v68 | (v66 << 6));
        if ((*(v69 + 104) & 1) == 0)
        {
          break;
        }

        if (!v63)
        {
          goto LABEL_34;
        }
      }

      v71 = *(v69 + 96);
      v72 = v78;
      sub_24AC0F328();
      v73 = *v34;
      (*v34)(v79, v72, v82);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v73;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_24AC0A008(0, v67[2] + 1, 1, v67);
      }

      v76 = v67[2];
      v75 = v67[3];
      if (v76 >= v75 >> 1)
      {
        v67 = sub_24AC0A008(v75 > 1, v76 + 1, 1, v67);
      }

      v67[2] = v76 + 1;
      (v92)(v67 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v76, v79, v82);
      v65 = v80;
    }

    while (v63);
LABEL_34:
    while (1)
    {
      v70 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        goto LABEL_46;
      }

      if (v70 >= v64)
      {

        sub_24ABF764C(v67);

        return v93[0];
      }

      v63 = *(v60 + 8 * v70);
      ++v66;
      if (v63)
      {
        v66 = v70;
        goto LABEL_32;
      }
    }
  }

  v52 = 0;
  v53 = (v90 + 40);
  v54 = MEMORY[0x277D84F90];
  while (v52 < *(v50 + 16))
  {
    if ((*v53 & 1) == 0)
    {
      v55 = *(v53 - 1);
      v56 = v89;
      sub_24AC0F328();
      v57 = *v34;
      (*v34)(v92, v56, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_24AC0A008(0, v54[2] + 1, 1, v54);
      }

      v59 = v54[2];
      v58 = v54[3];
      if (v59 >= v58 >> 1)
      {
        v54 = sub_24AC0A008(v58 > 1, v59 + 1, 1, v54);
      }

      v54[2] = v59 + 1;
      (v57)(v54 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v59, v92, v26);
      v50 = v90;
    }

    ++v52;
    v53 += 72;
    if (v51 == v52)
    {
      goto LABEL_29;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:

  __break(1u);
  return result;
}

uint64_t sub_24ABF7420(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24ABF7480(uint64_t a1)
{
  v2 = sub_24AC0F358();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_24ABF7608(&qword_27EF9AAE0);
  result = MEMORY[0x24C22BD60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_24AC0A55C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_24ABF7608(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24AC0F358();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24ABF764C(uint64_t a1)
{
  v2 = sub_24AC0F358();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_24AC0A55C(v10, v7);
      result = (*(v12 - 8))(v10, v2);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_24ABF7794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24AC0F358();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v57 = &v45 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  MEMORY[0x28223BE20](v13);
  v53 = &v45 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AAD0, &qword_24AC11988);
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v49 = v17;
  v50 = a3;
  v47 = v18 + 56;
  v48 = v19;
  (v19)(a3, 1, 1);
  v20 = a1 + 56;
  v21 = 1 << *(a1 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(a1 + 56);
  v24 = (v21 + 63) >> 6;
  v61 = v7 + 32;
  v62 = v7 + 16;
  v63 = a2;
  v25 = a2 + 56;
  v54 = v7;
  v55 = a1;
  v26 = (v7 + 8);

  v28 = 0;
  v29 = 1.79769313e308;
  v51 = v24;
  v52 = a1 + 56;
LABEL_6:
  if (v23)
  {
    v30 = v28;
LABEL_11:
    v31 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v32 = v54;
    v33 = *(v55 + 48);
    v58 = *(v54 + 72);
    v34 = v53;
    v60 = *(v54 + 16);
    v60(v53, v33 + v58 * (v31 | (v30 << 6)), v6);
    v59 = *(v32 + 32);
    (v59)(v15, v34, v6);
    v35 = 1 << *(v63 + 32);
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v37 = v36 & *(v63 + 56);
    v38 = (v35 + 63) >> 6;

    v39 = 0;
    while (1)
    {
      v40 = v39;
      if (!v37)
      {
        break;
      }

LABEL_19:
      v41 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v60(v57, *(v63 + 48) + (v41 | (v39 << 6)) * v58, v6);
      v42 = v56;
      v59();
      sub_24AC0F348();
      v44 = fabs(v43);
      if (v44 < v29)
      {
        sub_24ABF7420(v50, &qword_27EF9AAC8, &qword_24AC11980);
        v46 = *(v49 + 48);
        v60(v50, v15, v6);
        (v59)(&v50[v46], v42, v6);
        result = v48(v50, 0, 1, v49);
        v29 = v44;
      }

      else
      {
        result = (*v26)(v42, v6);
      }
    }

    while (1)
    {
      v39 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v39 >= v38)
      {

        result = (*v26)(v15, v6);
        v28 = v30;
        v24 = v51;
        v20 = v52;
        goto LABEL_6;
      }

      v37 = *(v25 + 8 * v39);
      ++v40;
      if (v37)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v24)
      {
      }

      v23 = *(v20 + 8 * v30);
      ++v28;
      if (v23)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

char *sub_24ABF7BE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB90, &qword_24AC11E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24ABF7CEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24ABF7DAC();
  result = MEMORY[0x24C22BD60](v2, &type metadata for CurrencyAmount, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_24ABF7E00(v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

unint64_t sub_24ABF7DAC()
{
  result = qword_27EF9AB80;
  if (!qword_27EF9AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AB80);
  }

  return result;
}

uint64_t sub_24ABF7E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v24 = a2;
  *(&v24 + 1) = a3;
  *&v25 = a4;
  *(&v25 + 1) = a5;
  v7 = *v5;
  v8 = *(*v5 + 40);
  sub_24ABF7DAC();
  v9 = sub_24AC0F3B8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    sub_24ABF8508();
    while (1)
    {
      v13 = *(v7 + 48) + 32 * v11;
      v20 = *v13;
      v22 = *(v13 + 8);
      v23 = *(v13 + 24);

      v14 = sub_24AC0F3F8();

      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v18 = *(v7 + 48) + 32 * v11;
    v19 = *(v18 + 24);
    *a1 = *v18;
    *(a1 + 8) = *(v18 + 8);
    *(a1 + 24) = v19;

    return 0;
  }

  else
  {
LABEL_5:
    v15 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v5;

    sub_24ABF8024(v24, *(&v24 + 1), v25, *(&v25 + 1), v11, isUniquelyReferenced_nonNull_native);
    *v5 = v21;
    *a1 = v24;
    *(a1 + 16) = v25;
    return 1;
  }
}

uint64_t sub_24ABF7FDC()
{
  v2 = *v0;
  v3 = v0[1];
  sub_24AC0F7C8();
  CurrencyAmount.hash(into:)();
  return sub_24AC0F808();
}

uint64_t sub_24ABF8024(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  *&v24 = result;
  *(&v24 + 1) = a2;
  *&v25 = a3;
  *(&v25 + 1) = a4;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a6 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a6)
  {
    sub_24AC0ADBC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AC0B62C();
      goto LABEL_12;
    }

    sub_24AC0BCE4(v8 + 1);
  }

  v10 = *v6;
  v11 = *(*v6 + 40);
  sub_24ABF7DAC();
  result = sub_24AC0F3B8();
  v12 = -1 << *(v10 + 32);
  a5 = result & ~v12;
  if ((*(v10 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v13 = ~v12;
    sub_24ABF8508();
    do
    {
      v14 = *(v10 + 48) + 32 * a5;
      v21 = *v14;
      v22 = *(v14 + 8);
      v23 = *(v14 + 24);

      v15 = sub_24AC0F3F8();

      if (v15)
      {
        goto LABEL_15;
      }

      a5 = (a5 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_12:
  v16 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v17 = (*(v16 + 48) + 32 * a5);
  *v17 = v24;
  v17[1] = v25;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24AC0F7A8();
  __break(1u);
  return result;
}

uint64_t sub_24ABF81F0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 56);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      v6 = *(v2 - 3);
      v5 = *(v2 - 2);

      sub_24ABF7E00(&v7, v6, v5, v4, v3);

      v2 += 4;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_24ABF8288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v22 = v4;
  v23 = v6 + 56;

  for (i = 0; v9; result = )
  {
LABEL_17:
    v14 = *(v22 + 48) + ((i << 11) | (32 * __clz(__rbit64(v9))));
    v27 = *v14;
    v28 = *(v14 + 8);
    v29 = *(v14 + 24);
    if (*(v6 + 16))
    {
      v15 = *(v6 + 40);
      sub_24ABF7DAC();

      v16 = sub_24AC0F3B8();
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      if ((*(v23 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        sub_24ABF8508();
        while (1)
        {
          v20 = *(v6 + 48) + 32 * v18;
          v24 = *v20;
          v25 = *(v20 + 8);
          v26 = *(v20 + 24);

          v21 = sub_24AC0F3F8();

          if (v21)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v23 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        return 0;
      }
    }

    else
    {
    }

LABEL_24:
    v9 &= v9 - 1;
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return 1;
    }

    v9 = *(v5 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24ABF8508()
{
  result = qword_27EF9AA88;
  if (!qword_27EF9AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA88);
  }

  return result;
}

uint64_t _s17FinHealthInsights14CurrencyAmountV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A9F8, &qword_24AC106B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  if (a1[1])
  {
    v8 = a2[1] == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_8;
  }

  v9 = *a2;
  v10 = *a1;
  v11 = sub_24AC0F368();
  v12 = *(*(v11 - 8) + 56);
  v12(v7, 1, 1, v11);
  sub_24AC0F578();
  v14 = v13;
  sub_24ABF7420(v7, &qword_27EF9A9F8, &qword_24AC106B0);
  if ((v14 & 0x100000000) != 0 || (v12(v7, 1, 1, v11), sub_24AC0F578(), v16 = v15, sub_24ABF7420(v7, &qword_27EF9A9F8, &qword_24AC106B0), (v16 & 0x100000000) != 0))
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    v17 = sub_24AC0F588();
  }

  return v17 & 1;
}

float sub_24ABF8708(uint64_t a1, uint64_t a2)
{
  v2 = sub_24ABEFA58(a2, a1);
  result = 1.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_24ABF9700(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x220]);
  objc_destroyWeak(&STACK[0x228]);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose(&STACK[0x3A0], 8);
  _Block_object_dispose(&STACK[0x3D0], 8);
  _Block_object_dispose(&STACK[0x400], 8);
  _Block_object_dispose(&STACK[0x430], 8);
  _Block_object_dispose(&STACK[0x460], 8);
  _Block_object_dispose(&STACK[0x490], 8);
  _Block_object_dispose(&STACK[0x4C0], 8);
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24ABFC84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24ABFD94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24ABFE08C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_24AC0F798() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954656372756F73 && a2 == 0xEB00000000736570)
  {

    return 1;
  }

  else
  {
    v6 = sub_24AC0F798();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_24ABFE190(char a1)
{
  sub_24AC0F7C8();
  MEMORY[0x24C22BFF0](a1 & 1);
  return sub_24AC0F808();
}

uint64_t sub_24ABFE1D8(char a1)
{
  if (a1)
  {
    return 0x7954656372756F73;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_24ABFE230()
{
  sub_24AC0F7C8();
  sub_24ABFE168(v2, *v0);
  return sub_24AC0F808();
}

uint64_t sub_24ABFE278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ABFE08C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ABFE2B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24ABFE30C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SourceValue.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v15 = *(a2 + 32);
  v16 = v4;
  v18[0] = v4;
  v18[1] = v15;
  type metadata accessor for SourceValue.CodingKeys(255, v18);
  swift_getWitnessTable();
  v5 = sub_24AC0F768();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v14[1];
  sub_24AC0F828();
  LOBYTE(v18[0]) = 0;
  v12 = v17;
  sub_24AC0F758();
  if (!v12)
  {
    LOBYTE(v18[0]) = *(v11 + *(a2 + 52));
    v19 = 1;
    sub_24AC03770();
    sub_24AC0F758();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SourceValue.hashValue.getter(uint64_t a1)
{
  sub_24AC0F7C8();
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  sub_24AC0F3C8();
  return sub_24AC0F808();
}

uint64_t SourceValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a6;
  v40 = *(a2 - 8);
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](a1);
  v44 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v13;
  v47 = v14;
  v48 = v15;
  v49 = v16;
  type metadata accessor for SourceValue.CodingKeys(255, &v46);
  swift_getWitnessTable();
  v43 = sub_24AC0F718();
  v39 = *(v43 - 8);
  v17 = *(v39 + 64);
  MEMORY[0x28223BE20](v43);
  v19 = &v36 - v18;
  v41 = a2;
  v42 = a3;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v20 = type metadata accessor for SourceValue(0, &v46);
  v37 = *(v20 - 8);
  v21 = *(v37 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v36 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = v45;
  sub_24AC0F818();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v23;
  v45 = v20;
  v27 = v39;
  v28 = v40;
  LOBYTE(v46) = 0;
  v29 = v43;
  v30 = v41;
  sub_24AC0F708();
  v31 = *(v28 + 32);
  v42 = v26;
  v31(v26, v44, v30);
  v50 = 1;
  sub_24AC037C4();
  sub_24AC0F708();
  (*(v27 + 8))(v19, v29);
  v32 = v45;
  v33 = v42;
  v42[*(v45 + 52)] = v46;
  v34 = v37;
  (*(v37 + 16))(v38, v33, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v34 + 8))(v33, v32);
}

uint64_t sub_24ABFEAAC()
{
  v1 = *v0;
  sub_24AC0F7C8();
  sub_24AC0F7E8();
  return sub_24AC0F808();
}

uint64_t sub_24ABFEB20()
{
  v1 = *v0;
  sub_24AC0F7C8();
  sub_24AC0F7E8();
  return sub_24AC0F808();
}

unsigned __int8 *sub_24ABFEB90@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_24ABFEBBC@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
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

uint64_t sub_24ABFED2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t Order.orderNumbers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Order.senderDomains.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Order.trackingNumbers.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Order.orderDates.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Order.merchants.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Order.totalCurrencyAmounts.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Order.defaultShippingFulfillments.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Order.shippingFulfillments.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t Order.orderTypeIdentifier.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t Order.orderTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t Order.orderIdentifier.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t Order.orderIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t Order.emails.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t Order.transactions.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

unint64_t sub_24ABFF210(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x656449726564726FLL;
    v7 = 0x736C69616D65;
    if (a1 != 10)
    {
      v7 = 0x746361736E617274;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD00000000000001BLL;
    v9 = 0xD000000000000014;
    if (a1 != 7)
    {
      v9 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D754E726564726FLL;
    v2 = 0x746144726564726FLL;
    v3 = 0x746E61686372656DLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6F447265646E6573;
    if (a1 != 1)
    {
      v4 = 0x676E696B63617274;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24ABFF3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AC06734(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ABFF410(uint64_t a1)
{
  v2 = sub_24AC042DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ABFF44C(uint64_t a1)
{
  v2 = sub_24AC042DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Order.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8A8, &qword_24AC10630);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v34 = v1[2];
  v35 = v8;
  v11 = v1[5];
  v32 = v1[4];
  v33 = v10;
  v12 = v1[7];
  v30 = v1[6];
  v31 = v11;
  v13 = v1[9];
  v28 = v1[8];
  v29 = v12;
  v14 = v1[11];
  v26 = v1[10];
  v27 = v13;
  v15 = v1[13];
  v24 = v1[12];
  v25 = v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AC042DC();

  sub_24AC0F828();
  v39 = v9;
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8B0, &qword_24AC10638);
  sub_24AC04330();
  v37 = v3;
  v17 = v7;
  v18 = v36;
  sub_24AC0F758();
  if (v18)
  {

    return (*(v4 + 8))(v7, v37);
  }

  else
  {
    v20 = v33;
    v21 = v34;
    v36 = v15;

    v39 = v35;
    v38 = 1;
    sub_24AC0F758();
    v39 = v21;
    v38 = 2;
    sub_24AC0F758();
    v39 = v20;
    v38 = 3;
    sub_24AC0F758();
    v39 = v32;
    v38 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8D0, &qword_24AC10648);
    sub_24AC043E0();
    sub_24AC0F758();
    v39 = v31;
    v38 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8F0, &qword_24AC10658);
    sub_24AC04490();
    sub_24AC0F758();
    v39 = v30;
    v38 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A910, &qword_24AC10668);
    sub_24AC04540();
    sub_24AC0F758();
    v39 = v29;
    v38 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A930, &qword_24AC10678);
    sub_24AC04A2C(&qword_27EF9A938, sub_24AC04540);
    sub_24AC0F758();
    LOBYTE(v39) = 8;
    sub_24AC0F728();
    LOBYTE(v39) = 9;
    sub_24AC0F728();
    v39 = v24;
    v38 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A940, &qword_24AC10680);
    sub_24AC045F0(&qword_27EF9A948, sub_24AC04668);
    sub_24AC0F758();
    v39 = v36;
    v38 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A958, &qword_24AC10688);
    sub_24AC046BC();
    v22 = v37;
    sub_24AC0F758();
    return (*(v4 + 8))(v17, v22);
  }
}

uint64_t Order.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A978, &qword_24AC10698);
  v5 = *(v51 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v51);
  v8 = &v44 - v7;
  v9 = sub_24ABEE868(MEMORY[0x277D84F90]);
  v10 = a1[3];
  v11 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_24AC042DC();
  v52 = v8;
  sub_24AC0F818();
  v58 = v9;
  if (v2)
  {
    v59 = v2;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v12 = 0;
    v13 = MEMORY[0x277D84FA0];
    v54 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84FA0];
    v15 = MEMORY[0x277D84FA0];
    v16 = MEMORY[0x277D84FA0];
    v17 = MEMORY[0x277D84FA0];
    v18 = MEMORY[0x277D84FA0];
    v19 = MEMORY[0x277D84FA0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8B0, &qword_24AC10638);
    LOBYTE(v60) = 0;
    sub_24AC0476C();
    sub_24AC0F708();
    v50 = v68;
    LOBYTE(v60) = 1;
    sub_24AC0F708();
    v22 = v68;
    LOBYTE(v60) = 2;
    sub_24AC0F708();
    v49 = v68;
    LOBYTE(v60) = 3;
    sub_24AC0F708();
    v23 = v5;
    v24 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8D0, &qword_24AC10648);
    LOBYTE(v60) = 4;
    sub_24AC0481C();
    sub_24AC0F708();
    v25 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8F0, &qword_24AC10658);
    LOBYTE(v60) = 5;
    sub_24AC048CC();
    sub_24AC0F708();
    v48 = v24;
    v46 = v22;
    v47 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A910, &qword_24AC10668);
    LOBYTE(v60) = 6;
    sub_24AC0497C();
    sub_24AC0F708();
    v13 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A930, &qword_24AC10678);
    LOBYTE(v60) = 7;
    sub_24AC04A2C(&qword_27EF9A9C0, sub_24AC0497C);
    sub_24AC0F708();
    v59 = 0;
    v45 = v25;

    v58 = v68;
    LOBYTE(v68) = 8;
    v26 = v52;
    v27 = v59;
    v44 = sub_24AC0F6D8();
    v57 = v28;
    v59 = v27;
    if (v27)
    {
      (*(v23 + 8))(v26, v51);
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v12 = 0;
      v54 = MEMORY[0x277D84F90];
    }

    else
    {
      LOBYTE(v68) = 9;
      v56 = sub_24AC0F6D8();
      v55 = v29;
      v59 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A940, &qword_24AC10680);
      LOBYTE(v60) = 10;
      sub_24AC045F0(&qword_27EF9A9C8, sub_24AC04AB0);
      v30 = v59;
      sub_24AC0F708();
      v59 = v30;
      if (v30)
      {
        (*(v23 + 8))(v52, v51);
        v54 = MEMORY[0x277D84F90];
      }

      else
      {
        v54 = v68;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A958, &qword_24AC10688);
        v67 = 11;
        sub_24AC04B04();
        v31 = v59;
        sub_24AC0F708();
        v59 = v31;
        if (!v31)
        {
          (*(v23 + 8))(v52, v51);
          v52 = v82;
          v32 = v50;
          *&v60 = v50;
          v33 = v46;
          *(&v60 + 1) = v46;
          v34 = v49;
          *&v61 = v49;
          *(&v61 + 1) = v48;
          v35 = v45;
          *&v62 = v45;
          v36 = v47;
          *(&v62 + 1) = v47;
          *&v63 = v13;
          v37 = v58;
          *(&v63 + 1) = v58;
          *&v64 = v44;
          *(&v64 + 1) = v57;
          v38 = v55;
          *&v65 = v56;
          *(&v65 + 1) = v55;
          *&v66 = v54;
          *(&v66 + 1) = v82;
          v39 = v61;
          *a2 = v60;
          a2[1] = v39;
          v40 = v62;
          v41 = v63;
          v42 = v66;
          a2[5] = v65;
          a2[6] = v42;
          v43 = v64;
          a2[3] = v41;
          a2[4] = v43;
          a2[2] = v40;
          sub_24ABF391C(&v60, &v68);
          __swift_destroy_boxed_opaque_existential_1(v53);
          v68 = v32;
          v69 = v33;
          v70 = v34;
          v71 = v48;
          v72 = v35;
          v73 = v36;
          v74 = v13;
          v75 = v37;
          v76 = v44;
          v77 = v57;
          v78 = v56;
          v79 = v38;
          v80 = v54;
          v81 = v52;
          return sub_24ABF3954(&v68);
        }

        (*(v23 + 8))(v52, v51);
      }

      v12 = v44;
    }

    v19 = v50;
    v18 = v46;
    v17 = v49;
    v16 = v48;
    v15 = v45;
    v14 = v47;
  }

  v20 = MEMORY[0x277D84FA0];
  __swift_destroy_boxed_opaque_existential_1(v53);
  v68 = v19;
  v69 = v18;
  v70 = v17;
  v71 = v16;
  v72 = v15;
  v73 = v14;
  v74 = v13;
  v75 = v58;
  v76 = v12;
  v77 = v57;
  v78 = v56;
  v79 = v55;
  v80 = v54;
  v81 = v20;
  return sub_24ABF3954(&v68);
}

uint64_t sub_24AC00638()
{
  if (*v0)
  {
    result = 0x614E6E69616D6F64;
  }

  else
  {
    result = 0x4E79616C70736964;
  }

  *v0;
  return result;
}

uint64_t sub_24AC00680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v6 || (sub_24AC0F798() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614E6E69616D6F64 && a2 == 0xEA0000000000656DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AC0F798();

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

uint64_t sub_24AC00768(uint64_t a1)
{
  v2 = sub_24AC04BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AC007A4(uint64_t a1)
{
  v2 = sub_24AC04BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CurrencyAmount.amount.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CurrencyAmount.currencyCode.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

FinHealthInsights::CurrencyAmount __swiftcall CurrencyAmount.init(amount:currencyCode:)(Swift::String_optional amount, Swift::String_optional currencyCode)
{
  *v2 = amount;
  v2[1] = currencyCode;
  result.currencyCode = currencyCode;
  result.amount = amount;
  return result;
}

uint64_t sub_24AC00954()
{
  if (*v0)
  {
    result = 0x79636E6572727563;
  }

  else
  {
    result = 0x746E756F6D61;
  }

  *v0;
  return result;
}

uint64_t sub_24AC00994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
  if (v6 || (sub_24AC0F798() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AC0F798();

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

uint64_t sub_24AC00A70(uint64_t a1)
{
  v2 = sub_24AC04C08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AC00AAC(uint64_t a1)
{
  v2 = sub_24AC04C08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CurrencyAmount.hashValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A9F8, &qword_24AC106B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  v6 = *v0;
  v5 = v0[1];
  sub_24AC0F7C8();
  v7 = sub_24AC0F368();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);

  sub_24AC0F578();
  v9 = v8;

  sub_24ABF7420(v4, &qword_27EF9A9F8, &qword_24AC106B0);
  sub_24AC0F7E8();
  if ((v9 & 0x100000000) == 0)
  {
    sub_24AC0F568();
  }

  return sub_24AC0F808();
}

uint64_t CurrencyAmount.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AA08, &qword_24AC106C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AC04C08();
  sub_24AC0F818();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_24AC0F6D8();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_24AC0F6D8();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24AC00EC0()
{
  v2 = *v0;
  v3 = v0[1];
  sub_24AC0F7C8();
  CurrencyAmount.hash(into:)();
  return sub_24AC0F808();
}

uint64_t ShippingFulfillment.carrierName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_24AC00FA0()
{
  v1 = *v0;
  sub_24AC0F7C8();
  MEMORY[0x24C22BFF0](v1);
  return sub_24AC0F808();
}

uint64_t sub_24AC00FE8()
{
  v1 = *v0;
  sub_24AC0F7C8();
  MEMORY[0x24C22BFF0](v1);
  return sub_24AC0F808();
}

uint64_t sub_24AC0102C()
{
  if (*v0)
  {
    result = 0x4E72656972726163;
  }

  else
  {
    result = 0x676E696B63617274;
  }

  *v0;
  return result;
}

uint64_t sub_24AC0107C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E696B63617274 && a2 == 0xEE007265626D754ELL;
  if (v6 || (sub_24AC0F798() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4E72656972726163 && a2 == 0xEB00000000656D61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AC0F798();

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

uint64_t sub_24AC01164(uint64_t a1)
{
  v2 = sub_24AC04C5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AC011A0(uint64_t a1)
{
  v2 = sub_24AC04C5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AC01220(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v17 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v10 = *v4;
  v11 = v4[1];
  v12 = v4[2];
  v16[1] = v4[3];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_24AC0F828();
  v21 = 0;
  v14 = v18;
  sub_24AC0F728();
  if (!v14)
  {
    v20 = 1;
    sub_24AC0F728();
  }

  return (*(v19 + 8))(v9, v6);
}

uint64_t sub_24AC013C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24AC0F7C8();
  if (!v2)
  {
    sub_24AC0F7E8();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24AC0F7E8();
    return sub_24AC0F808();
  }

  sub_24AC0F7E8();
  sub_24AC0F3D8();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24AC0F7E8();
  sub_24AC0F3D8();
  return sub_24AC0F808();
}

uint64_t sub_24AC014B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v25 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_24AC0F818();
  if (!v5)
  {
    v13 = v24;
    v14 = v25;
    v27 = 0;
    v15 = sub_24AC0F6D8();
    v17 = v16;
    v23 = v15;
    v26 = 1;
    v19 = sub_24AC0F6D8();
    v21 = v20;
    (*(v13 + 8))(v11, v8);
    *v14 = v23;
    v14[1] = v17;
    v14[2] = v19;
    v14[3] = v21;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24AC016F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24AC0F7C8();
  if (!v2)
  {
    sub_24AC0F7E8();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24AC0F7E8();
    return sub_24AC0F808();
  }

  sub_24AC0F7E8();
  sub_24AC0F3D8();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24AC0F7E8();
  sub_24AC0F3D8();
  return sub_24AC0F808();
}

uint64_t Email.dateSent.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t Email.dateSent.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t Email.fromEmailAddress.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Email.fromEmailAddress.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Email.fromDisplayName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Email.fromDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Email.senderDomain.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t Email.senderDomain.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void __swiftcall Email.init()(FinHealthInsights::Email *__return_ptr retstr)
{
  retstr->dateSent.value = 0.0;
  retstr->dateSent.is_nil = 1;
  retstr->fromEmailAddress = 0u;
  retstr->fromDisplayName = 0u;
  retstr->senderDomain = 0u;
  retstr->emailType = FinHealthInsights_Email_EmailType_unknown;
}

uint64_t Email.EmailType.description.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000011;
    if (v1 != 1)
    {
      v5 = 0x647055726564726FLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v2 = 0xD000000000000019;
    if (v1 == 5)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000011;
    if (v1 != 3)
    {
      v3 = 0x737349726564726FLL;
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

FinHealthInsights::Email::EmailType_optional __swiftcall Email.EmailType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24AC01BB8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000011;
    if (v1 != 1)
    {
      v5 = 0x647055726564726FLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v2 = 0xD000000000000019;
    if (v1 == 5)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000011;
    if (v1 != 3)
    {
      v3 = 0x737349726564726FLL;
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

unint64_t sub_24AC01CB0()
{
  v1 = *v0;
  v2 = 0x746E655365746164;
  v3 = 0x707369446D6F7266;
  v4 = 0x6F447265646E6573;
  if (v1 != 3)
  {
    v4 = 0x7079546C69616D65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_24AC01D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AC06B2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24AC01D9C(uint64_t a1)
{
  v2 = sub_24AC04CB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AC01DD8(uint64_t a1)
{
  v2 = sub_24AC04CB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Email.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AA20, &qword_24AC106D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v22 = v1[3];
  v23 = v10;
  v11 = v1[4];
  v20 = v1[5];
  v21 = v11;
  v12 = v1[6];
  v18 = v1[7];
  v19 = v12;
  HIDWORD(v17) = *(v1 + 64);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AC04CB0();
  sub_24AC0F828();
  v30 = 0;
  v14 = v24;
  sub_24AC0F738();
  if (!v14)
  {
    v15 = BYTE4(v17);
    v29 = 1;
    sub_24AC0F728();
    v28 = 2;
    sub_24AC0F728();
    v27 = 3;
    sub_24AC0F728();
    v26 = v15;
    v25 = 4;
    sub_24AC04D04();
    sub_24AC0F758();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t Email.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AA30, &qword_24AC106E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v54 = 1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AC04CB0();
  sub_24AC0F818();
  if (v2)
  {
    v55 = v2;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    LOBYTE(v44) = 0;
    v36 = sub_24AC0F6E8();
    v54 = v19 & 1;
    LOBYTE(v44) = 1;
    v20 = sub_24AC0F6D8();
    v34 = a2;
    *&v35 = v20;
    *(&v35 + 1) = v21;
    LOBYTE(v44) = 2;
    v14 = sub_24AC0F6D8();
    v13 = v22;
    LOBYTE(v44) = 3;
    v23 = sub_24AC0F6D8();
    v55 = 0;
    v12 = v23;
    v11 = v24;
    v42 = 4;
    sub_24AC04D88();
    v25 = v55;
    sub_24AC0F708();
    v55 = v25;
    if (!v25)
    {
      (*(v6 + 8))(v9, v5);
      v26 = v36;
      *&v37 = v36;
      v33 = v54;
      BYTE8(v37) = v54;
      v27 = v35;
      v38 = v35;
      *&v39 = v14;
      *(&v39 + 1) = v13;
      *&v40 = v12;
      *(&v40 + 1) = v11;
      v28 = v43;
      v41 = v43;
      v29 = v34;
      *(v34 + 64) = v43;
      v30 = v40;
      v29[2] = v39;
      v29[3] = v30;
      v31 = v38;
      *v29 = v37;
      v29[1] = v31;
      sub_24AC04DDC(&v37, &v44);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v44 = v26;
      v45 = v33;
      v47 = v27;
      v48 = v14;
      v49 = v13;
      v50 = v12;
      v51 = v11;
      v52 = v28;
      return sub_24AC04D58(&v44);
    }

    (*(v6 + 8))(v9, v5);
    v15 = *(&v35 + 1);
    v17 = v36;
    v16 = v35;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v44 = v17;
  v45 = v54;
  *v46 = *v53;
  *&v46[3] = *&v53[3];
  *&v47 = v16;
  *(&v47 + 1) = v15;
  v48 = v14;
  v49 = v13;
  v50 = v12;
  v51 = v11;
  v52 = 0;
  return sub_24AC04D58(&v44);
}

uint64_t Transaction.transactionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Transaction.transactionId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Transaction.amount.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Transaction.amount.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Transaction.currencyCode.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Transaction.currencyCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

double sub_24AC02610@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_24AC10610;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t Transaction.currencyAmount.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_24AC04E14(v2, v3);
}

__n128 Transaction.currencyAmount.setter(uint64_t a1)
{
  v3 = v1[8];
  v4 = v1[9];
  sub_24AC04E5C(v1[6], v1[7]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 3) = *a1;
  *(v1 + 4) = v6;
  return result;
}

uint64_t Transaction.transactionDescription.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t Transaction.transactionDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t Transaction.transactionDate.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t Transaction.transactionDate.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t Transaction.lastFourDigits.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t Transaction.lastFourDigits.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t Transaction.originURL.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t Transaction.originURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

double Transaction.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  return result;
}

uint64_t sub_24AC0288C()
{
  v1 = 0x746361736E617274;
  v2 = *v0;
  v3 = 0x72756F467473616CLL;
  if (v2 != 6)
  {
    v3 = 0x52556E696769726FLL;
  }

  v4 = 0xD000000000000016;
  if (v2 != 4)
  {
    v4 = 0x746361736E617274;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0x746E756F6D61;
  }

  if (*v0 > 1u)
  {
    v1 = 0x79636E6572727563;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24AC029B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AC06CF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24AC029E8(uint64_t a1)
{
  v2 = sub_24AC04EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AC02A24(uint64_t a1)
{
  v2 = sub_24AC04EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transaction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AA40, &qword_24AC106E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v27 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v34 = v1[3];
  v35 = v10;
  v11 = v1[4];
  v32 = v1[5];
  v33 = v11;
  v12 = v1[6];
  v30 = v1[7];
  v31 = v12;
  v13 = v1[8];
  v28 = v1[9];
  v29 = v13;
  v14 = v1[11];
  v27[6] = v1[10];
  v27[7] = v14;
  v15 = v1[12];
  v41 = *(v1 + 104);
  v16 = v1[14];
  v27[4] = v1[15];
  v27[5] = v15;
  v17 = v1[17];
  v27[1] = v1[16];
  v27[2] = v17;
  v27[3] = v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AC04EA4();
  v19 = v3;
  sub_24AC0F828();
  LOBYTE(v37) = 0;
  v20 = v7;
  v21 = v36;
  sub_24AC0F728();
  if (v21)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v23 = v28;
  v22 = v29;
  v25 = v30;
  v24 = v31;
  LOBYTE(v37) = 1;
  sub_24AC0F728();
  LOBYTE(v37) = 2;
  sub_24AC0F728();
  v37 = v24;
  v38 = v25;
  v39 = v22;
  v40 = v23;
  v42 = 3;
  sub_24AC04E14(v24, v25);
  sub_24AC04EF8();
  sub_24AC0F748();
  sub_24AC04E5C(v37, v38);
  LOBYTE(v37) = 4;
  sub_24AC0F728();
  LOBYTE(v37) = 5;
  sub_24AC0F738();
  LOBYTE(v37) = 6;
  sub_24AC0F728();
  LOBYTE(v37) = 7;
  sub_24AC0F728();
  return (*(v4 + 8))(v20, v19);
}

uint64_t Transaction.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A9F8, &qword_24AC106B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v23 = v22 - v3;
  v4 = v0[1];
  v5 = v0[2];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[5];
  v22[1] = v0[6];
  v9 = v0[7];
  v10 = v0[10];
  v11 = v0[11];
  v25 = v6;
  v26 = v10;
  v24 = v0[12];
  v30 = *(v0 + 104);
  v12 = v0[15];
  v27 = v0[14];
  v13 = v0[17];
  v28 = v0[16];
  v29 = v9;
  if (v4)
  {
    v14 = *v0;
    sub_24AC0F7E8();
    sub_24AC0F3D8();
    v15 = v13;
    if (v7)
    {
LABEL_3:
      sub_24AC0F7E8();
      sub_24AC0F3D8();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24AC0F7E8();
    v15 = v13;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  sub_24AC0F7E8();
LABEL_6:
  sub_24AC0F7E8();
  if (v8)
  {
    sub_24AC0F3D8();
  }

  if (v29 == 1)
  {
    goto LABEL_18;
  }

  sub_24AC0F7E8();
  v16 = sub_24AC0F368();
  v17 = v23;
  (*(*(v16 - 8) + 56))(v23, 1, 1, v16);

  sub_24AC0F578();
  v19 = v18;

  sub_24ABF7420(v17, &qword_27EF9A9F8, &qword_24AC106B0);
  if ((v19 & 0x100000000) != 0)
  {
LABEL_18:
    sub_24AC0F7E8();
    if (!v11)
    {
LABEL_11:
      sub_24AC0F7E8();
      if (!v30)
      {
        goto LABEL_12;
      }

LABEL_20:
      sub_24AC0F7E8();
      if (v12)
      {
        goto LABEL_16;
      }

LABEL_21:
      sub_24AC0F7E8();
      if (v15)
      {
        goto LABEL_17;
      }

      return sub_24AC0F7E8();
    }
  }

  else
  {
    sub_24AC0F7E8();
    sub_24AC0F568();
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  sub_24AC0F7E8();
  sub_24AC0F3D8();
  if (v30)
  {
    goto LABEL_20;
  }

LABEL_12:
  sub_24AC0F7E8();
  if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v20 = v24;
  }

  else
  {
    v20 = 0;
  }

  MEMORY[0x24C22C010](v20);
  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_16:
  sub_24AC0F7E8();
  sub_24AC0F3D8();
  if (v15)
  {
LABEL_17:
    sub_24AC0F7E8();
    return sub_24AC0F3D8();
  }

  return sub_24AC0F7E8();
}

uint64_t Transaction.hashValue.getter()
{
  sub_24AC0F7C8();
  Transaction.hash(into:)();
  return sub_24AC0F808();
}

uint64_t Transaction.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AA50, &qword_24AC106F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v92 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_24AC04EA4();
  sub_24AC0F818();
  if (v2)
  {
    v93 = v2;
    v58 = 0uLL;
    v62 = 0;
    v63 = 0;
    v59 = 0;
    v60 = 0;
    v64 = 0;
    v57 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 1;
  }

  else
  {
    LOBYTE(v74) = 0;
    v12 = sub_24AC0F6D8();
    v55 = v21;
    v56 = v12;
    LOBYTE(v74) = 1;
    *&v54 = sub_24AC0F6D8();
    *(&v54 + 1) = v22;
    LOBYTE(v74) = 2;
    v23 = sub_24AC0F6D8();
    v93 = 0;
    v14 = v23;
    v53 = v24;
    LOBYTE(v65[0]) = 3;
    sub_24AC04F7C();
    v25 = v93;
    sub_24AC0F6F8();
    v93 = v25;
    if (v25)
    {
      (*(v6 + 8))(v9, v5);
      v58 = 0uLL;
      v62 = 0;
      v63 = 0;
      v59 = 0;
      v60 = 0;
      v64 = 0;
      v57 = 0;
      v19 = 1;
      v17 = v55;
      v18 = v56;
      v15 = *(&v54 + 1);
      v16 = v54;
      v13 = v53;
    }

    else
    {
      v26 = v74;
      v51 = a2;
      v52 = v75;
      v27 = v76;
      sub_24AC04E5C(0, 1);
      LOBYTE(v74) = 4;
      v28 = v93;
      v29 = sub_24AC0F6D8();
      v64 = v27 >> 64;
      v60 = v27;
      v57 = v26;
      if (!v28)
      {
        v63 = v29;
        v59 = v30;
        LOBYTE(v74) = 5;
        v62 = sub_24AC0F6E8();
        v92 = v31 & 1;
        LOBYTE(v74) = 6;
        *&v58 = sub_24AC0F6D8();
        *(&v58 + 1) = v32;
        v73 = 7;
        v33 = sub_24AC0F6D8();
        v93 = 0;
        v34 = v33;
        v35 = v9;
        v37 = v36;
        (*(v6 + 8))(v35, v5);
        v38 = v55;
        *&v65[0] = v56;
        *(&v65[0] + 1) = v55;
        v65[1] = v54;
        *&v66 = v14;
        v50 = v14;
        v39 = v53;
        *(&v66 + 1) = v53;
        *&v67 = v26;
        v40 = v59;
        v41 = v60;
        *(&v67 + 1) = v52;
        *&v68 = v60;
        *(&v68 + 1) = v64;
        *&v69 = v63;
        *(&v69 + 1) = v59;
        *&v70 = v62;
        HIDWORD(v49) = v92;
        BYTE8(v70) = v92;
        v42 = v58;
        v71 = v58;
        *&v72 = v34;
        *(&v72 + 1) = v37;
        v43 = v54;
        v44 = v51;
        *v51 = v65[0];
        v44[1] = v43;
        v45 = v72;
        v46 = v69;
        v44[4] = v68;
        v44[5] = v46;
        v47 = v67;
        v44[2] = v66;
        v44[3] = v47;
        v48 = v70;
        v44[7] = v71;
        v44[8] = v45;
        v44[6] = v48;
        sub_24AC04FD0(v65, &v74);
        __swift_destroy_boxed_opaque_existential_1(v61);
        v74 = v56;
        v75 = v38;
        v76 = v54;
        v77 = v50;
        v78 = v39;
        v79 = v57;
        v80 = v52;
        v81 = v41;
        v82 = v64;
        v83 = v63;
        v84 = v40;
        v85 = v62;
        v86 = BYTE4(v49);
        v88 = v42;
        v89 = v34;
        v90 = v37;
        return sub_24AC04F4C(&v74);
      }

      v93 = v28;
      (*(v6 + 8))(v9, v5);
      v58 = 0uLL;
      v62 = 0;
      v63 = 0;
      v59 = 0;
      v17 = v55;
      v18 = v56;
      v15 = *(&v54 + 1);
      v16 = v54;
      v19 = v52;
      v13 = v53;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v61);
  v74 = v18;
  v75 = v17;
  *&v76 = v16;
  *(&v76 + 1) = v15;
  v77 = v14;
  v78 = v13;
  v79 = v57;
  v80 = v19;
  v81 = v60;
  v82 = v64;
  v83 = v63;
  v84 = v59;
  v85 = v62;
  v86 = v92;
  *v87 = *v91;
  *&v87[3] = *&v91[3];
  v88 = v58;
  v89 = 0;
  v90 = 0;
  return sub_24AC04F4C(&v74);
}

uint64_t sub_24AC03690()
{
  sub_24AC0F7C8();
  Transaction.hash(into:)();
  return sub_24AC0F808();
}

uint64_t sub_24AC036D4()
{
  sub_24AC0F7C8();
  Transaction.hash(into:)();
  return sub_24AC0F808();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24AC03770()
{
  result = qword_27EF9A898;
  if (!qword_27EF9A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A898);
  }

  return result;
}

unint64_t sub_24AC037C4()
{
  result = qword_27EF9A8A0;
  if (!qword_27EF9A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A8A0);
  }

  return result;
}

unint64_t sub_24AC03818(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24AC0F7C8();
  sub_24AC0F3D8();
  v6 = sub_24AC0F808();

  return sub_24AC03890(a1, a2, v6);
}

unint64_t sub_24AC03890(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24AC0F798())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

BOOL _s17FinHealthInsights11TransactionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A9F8, &qword_24AC106B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v101 - v6;
  v8 = *(a1 + 8);
  v119 = *(a1 + 16);
  v10 = *(a1 + 24);
  v9 = *(a1 + 32);
  v11 = *(a1 + 48);
  v121 = *(a1 + 40);
  v122 = v10;
  v13 = *(a1 + 56);
  v12 = *(a1 + 64);
  v15 = *(a1 + 72);
  v14 = *(a1 + 80);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  v20 = *(a1 + 120);
  v22 = *(a1 + 128);
  v21 = *(a1 + 136);
  v23 = *(a2 + 8);
  v118 = *(a2 + 16);
  v24 = *(a2 + 24);
  v117 = *(a2 + 32);
  v25 = *(a2 + 48);
  v120 = *(a2 + 40);
  v27 = *(a2 + 56);
  v26 = *(a2 + 64);
  v28 = *(a2 + 72);
  v29 = *(a2 + 80);
  v30 = *(a2 + 88);
  v31 = *(a2 + 96);
  v32 = *(a2 + 104);
  v34 = *(a2 + 112);
  v33 = *(a2 + 120);
  v35 = *(a2 + 128);
  v36 = *(a2 + 136);
  if (v8)
  {
    if (!v23)
    {
      return 0;
    }

    v115 = v7;
    v116 = v9;
    if (*a1 != *a2 || v8 != v23)
    {
      v112 = v14;
      v37 = v15;
      v38 = v12;
      v106 = v28;
      v102 = v36;
      v109 = v19;
      v110 = v21;
      v103 = v25;
      v104 = v20;
      v107 = v22;
      v108 = v34;
      v105 = v13;
      v39 = v11;
      v40 = v35;
      v111 = v33;
      v113 = v32;
      v114 = v18;
      v41 = v26;
      v42 = v27;
      v43 = v16;
      v44 = v30;
      v45 = sub_24AC0F798();
      v30 = v44;
      v16 = v43;
      v33 = v111;
      v14 = v112;
      v27 = v42;
      v26 = v41;
      v32 = v113;
      v18 = v114;
      v34 = v108;
      v19 = v109;
      v35 = v40;
      v11 = v39;
      v20 = v104;
      v13 = v105;
      v28 = v106;
      v22 = v107;
      v25 = v103;
      v21 = v110;
      v36 = v102;
      v12 = v38;
      v15 = v37;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v115 = v7;
    v116 = v9;
    if (v23)
    {
      return 0;
    }
  }

  if (v122)
  {
    if (!v24)
    {
      return 0;
    }

    if (v119 != v118 || v122 != v24)
    {
      v111 = v33;
      v112 = v14;
      v103 = v25;
      v104 = v20;
      v108 = v34;
      v109 = v19;
      v113 = v32;
      v114 = v18;
      v110 = v21;
      v46 = v15;
      v105 = v13;
      v106 = v28;
      v47 = v12;
      v48 = v11;
      v49 = v35;
      v50 = v26;
      v51 = v27;
      v52 = v16;
      v53 = v30;
      v107 = v22;
      v54 = sub_24AC0F798();
      v30 = v53;
      v16 = v52;
      v33 = v111;
      v14 = v112;
      v27 = v51;
      v26 = v50;
      v35 = v49;
      v20 = v104;
      v13 = v105;
      v11 = v48;
      v12 = v47;
      v28 = v106;
      v22 = v107;
      v15 = v46;
      v19 = v109;
      v21 = v110;
      v32 = v113;
      v18 = v114;
      v34 = v108;
      v25 = v103;
      if ((v54 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v121)
  {
    if (!v120)
    {
      return 0;
    }

    if (v116 != v117 || v121 != v120)
    {
      v111 = v33;
      v112 = v14;
      v108 = v34;
      v109 = v19;
      v113 = v32;
      v114 = v18;
      v122 = v15;
      v102 = v36;
      v55 = v12;
      v105 = v13;
      v106 = v28;
      v56 = v11;
      v57 = v35;
      v58 = v26;
      v59 = v27;
      v60 = v16;
      v110 = v21;
      v61 = v30;
      v107 = v22;
      v62 = sub_24AC0F798();
      v30 = v61;
      v21 = v110;
      v33 = v111;
      v16 = v60;
      v14 = v112;
      v27 = v59;
      v26 = v58;
      v35 = v57;
      v13 = v105;
      v11 = v56;
      v28 = v106;
      v22 = v107;
      v12 = v55;
      v36 = v102;
      v15 = v122;
      v32 = v113;
      v18 = v114;
      v34 = v108;
      v19 = v109;
      if ((v62 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v120)
  {
    return 0;
  }

  if (v13 == 1)
  {
    v63 = 1;
    v110 = v21;
    v111 = v33;
    v118 = v29;
    v119 = v16;
    v120 = v30;
    v121 = v35;
    v113 = v32;
    v114 = v18;
    v112 = v14;
    v108 = v34;
    v109 = v19;
    v102 = v36;
    v64 = v11;
    v65 = v27;
    sub_24AC04E14(v11, 1);
    if (v65 == 1)
    {
      sub_24AC04E14(v25, 1);
      sub_24AC04E5C(v64, 1);
      goto LABEL_25;
    }

    v71 = v25;
    v72 = v65;
    sub_24AC04E14(v25, v65);
    goto LABEL_34;
  }

  if (v27 == 1)
  {
    v70 = v13;
    v63 = v13;
    v71 = v25;
    v64 = v11;
    v72 = 1;
    sub_24AC04E14(v11, v70);
    sub_24AC04E14(v25, 1);
    sub_24AC04E14(v64, v63);

LABEL_34:
    sub_24AC04E5C(v64, v63);
    v73 = v71;
    v74 = v72;
LABEL_61:
    sub_24AC04E5C(v73, v74);
    return 0;
  }

  if (!v13)
  {
    v85 = 0;
    v91 = v11;
    v92 = v27;
    sub_24AC04E14(v11, 0);
    sub_24AC04E14(v25, v92);
    sub_24AC04E14(v91, 0);
    v93 = v25;
    v94 = v92;
LABEL_47:
    sub_24AC04E5C(v93, v94);
LABEL_60:

    v73 = v91;
    v74 = v85;
    goto LABEL_61;
  }

  v117 = v26;
  if (!v27)
  {
    v91 = v11;
    sub_24AC04E14(v11, v13);
    sub_24AC04E14(v25, 0);
    v85 = v13;
    sub_24AC04E14(v91, v13);
    v93 = v25;
    v94 = 0;
    goto LABEL_47;
  }

  v118 = v29;
  v119 = v16;
  v120 = v30;
  v121 = v35;
  v113 = v32;
  v114 = v18;
  v111 = v33;
  v112 = v14;
  v108 = v34;
  v109 = v19;
  v104 = v20;
  v102 = v36;
  v110 = v21;
  v107 = v22;
  v75 = v15;
  v76 = v13;
  v77 = v28;
  v78 = v12;
  v79 = v25;
  v80 = v11;
  v81 = v27;
  v82 = sub_24AC0F368();
  v83 = *(v82 - 8);
  v84 = v115;
  v103 = *(v83 + 56);
  v101 = v83 + 56;
  v103(v115, 1, 1, v82);
  sub_24AC04E14(v80, v76);
  sub_24AC04E14(v79, v81);
  v105 = v78;
  v122 = v75;
  sub_24AC04E14(v80, v76);
  v116 = v80;
  v85 = v76;
  sub_24AC0F578();
  v87 = v86;
  sub_24ABF7420(v84, &qword_27EF9A9F8, &qword_24AC106B0);
  if ((v87 & 0x100000000) != 0)
  {
    v98 = v79;
    v99 = v81;
LABEL_59:
    sub_24AC04E5C(v98, v99);
    v91 = v116;
    goto LABEL_60;
  }

  v106 = v77;
  v103(v84, 1, 1, v82);
  sub_24AC0F578();
  v89 = v88;
  sub_24ABF7420(v84, &qword_27EF9A9F8, &qword_24AC106B0);
  if ((v89 & 0x100000000) != 0)
  {
    v98 = v79;
    v99 = v81;
    goto LABEL_59;
  }

  v90 = sub_24AC0F588();
  sub_24AC04E5C(v79, v81);

  sub_24AC04E5C(v116, v76);
  v22 = v107;
  v20 = v104;
  if ((v90 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  if (v119)
  {
    v66 = v102;
    v67 = v121;
    if (!v120)
    {
      return 0;
    }

    if (v112 != v118 || v119 != v120)
    {
      v68 = v121;
      v69 = sub_24AC0F798();
      v67 = v68;
      if ((v69 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v66 = v102;
    v67 = v121;
    if (v120)
    {
      return 0;
    }
  }

  if (v114)
  {
    if (!v113)
    {
      return 0;
    }
  }

  else
  {
    v95 = v113;
    if (v17 != v31)
    {
      v95 = 1;
    }

    if (v95)
    {
      return 0;
    }
  }

  if (v20)
  {
    if (!v111)
    {
      return 0;
    }

    if (v109 != v108 || v20 != v111)
    {
      v96 = v67;
      v97 = sub_24AC0F798();
      v67 = v96;
      if ((v97 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v111)
  {
    return 0;
  }

  if (!v110)
  {
    return !v66;
  }

  return v66 && (v22 == v67 && v110 == v66 || (sub_24AC0F798() & 1) != 0);
}

uint64_t sub_24AC04230(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_24AC0F798() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_24AC0F798() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_24AC042DC()
{
  result = qword_27EF9AC00;
  if (!qword_27EF9AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AC00);
  }

  return result;
}

unint64_t sub_24AC04330()
{
  result = qword_27EF9A8B8;
  if (!qword_27EF9A8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A8B0, &qword_24AC10638);
    sub_24ABF42F4(&qword_27EF9A8C0, &qword_27EF9A8C8, &qword_24AC10640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A8B8);
  }

  return result;
}

unint64_t sub_24AC043E0()
{
  result = qword_27EF9A8D8;
  if (!qword_27EF9A8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A8D0, &qword_24AC10648);
    sub_24ABF42F4(&qword_27EF9A8E0, &qword_27EF9A8E8, &qword_24AC10650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A8D8);
  }

  return result;
}

unint64_t sub_24AC04490()
{
  result = qword_27EF9A8F8;
  if (!qword_27EF9A8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A8F0, &qword_24AC10658);
    sub_24ABF42F4(&qword_27EF9A900, &qword_27EF9A908, &qword_24AC10660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A8F8);
  }

  return result;
}

unint64_t sub_24AC04540()
{
  result = qword_27EF9A918;
  if (!qword_27EF9A918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A910, &qword_24AC10668);
    sub_24ABF42F4(&qword_27EF9A920, &qword_27EF9A928, &qword_24AC10670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A918);
  }

  return result;
}

uint64_t sub_24AC045F0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A940, &qword_24AC10680);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AC04668()
{
  result = qword_27EF9A950;
  if (!qword_27EF9A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A950);
  }

  return result;
}

unint64_t sub_24AC046BC()
{
  result = qword_27EF9A960;
  if (!qword_27EF9A960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A958, &qword_24AC10688);
    sub_24ABF42F4(&qword_27EF9A968, &qword_27EF9A970, &qword_24AC10690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A960);
  }

  return result;
}

unint64_t sub_24AC0476C()
{
  result = qword_27EF9A980;
  if (!qword_27EF9A980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A8B0, &qword_24AC10638);
    sub_24ABF42F4(&qword_27EF9A988, &qword_27EF9A8C8, &qword_24AC10640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A980);
  }

  return result;
}

unint64_t sub_24AC0481C()
{
  result = qword_27EF9A990;
  if (!qword_27EF9A990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A8D0, &qword_24AC10648);
    sub_24ABF42F4(&qword_27EF9A998, &qword_27EF9A8E8, &qword_24AC10650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A990);
  }

  return result;
}

unint64_t sub_24AC048CC()
{
  result = qword_27EF9A9A0;
  if (!qword_27EF9A9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A8F0, &qword_24AC10658);
    sub_24ABF42F4(&qword_27EF9A9A8, &qword_27EF9A908, &qword_24AC10660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A9A0);
  }

  return result;
}

unint64_t sub_24AC0497C()
{
  result = qword_27EF9A9B0;
  if (!qword_27EF9A9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A910, &qword_24AC10668);
    sub_24ABF42F4(&qword_27EF9A9B8, &qword_27EF9A928, &qword_24AC10670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A9B0);
  }

  return result;
}

uint64_t sub_24AC04A2C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A930, &qword_24AC10678);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AC04AB0()
{
  result = qword_27EF9A9D0;
  if (!qword_27EF9A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A9D0);
  }

  return result;
}

unint64_t sub_24AC04B04()
{
  result = qword_27EF9A9D8;
  if (!qword_27EF9A9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A958, &qword_24AC10688);
    sub_24ABF42F4(&qword_27EF9A9E0, &qword_27EF9A970, &qword_24AC10690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A9D8);
  }

  return result;
}

unint64_t sub_24AC04BB4()
{
  result = qword_27EF9AC08;
  if (!qword_27EF9AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AC08);
  }

  return result;
}

unint64_t sub_24AC04C08()
{
  result = qword_27EF9AC10;
  if (!qword_27EF9AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AC10);
  }

  return result;
}

unint64_t sub_24AC04C5C()
{
  result = qword_27EF9AC18;
  if (!qword_27EF9AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AC18);
  }

  return result;
}

unint64_t sub_24AC04CB0()
{
  result = qword_27EF9AC20;
  if (!qword_27EF9AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AC20);
  }

  return result;
}