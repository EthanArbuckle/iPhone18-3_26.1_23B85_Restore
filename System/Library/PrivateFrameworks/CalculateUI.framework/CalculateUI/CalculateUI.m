uint64_t type metadata accessor for CalculateExpressionView()
{
  result = qword_1EDE75088;
  if (!qword_1EDE75088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1DC0B94()
{
  sub_1C1E5444C();
  if (v0 <= 0x3F)
  {
    sub_1C1DC0D28(319, &qword_1EDE737A8, 0x1E69DC888);
    if (v1 <= 0x3F)
    {
      sub_1C1DC0D70(319, &qword_1EDE73B10, MEMORY[0x1E6980FB8], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C1DC0DD4();
        if (v3 <= 0x3F)
        {
          sub_1C1DC0D70(319, &qword_1EDE73AF8, type metadata accessor for PlatformKeyboardHandler, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1C1DC0E5C(319, &qword_1EDE73B00, &type metadata for CalculateExpressionView.FadeState, MEMORY[0x1E6981790]);
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

uint64_t sub_1C1DC0D28(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_1C1DC0D70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C1DC0DD4()
{
  if (!qword_1EDE750B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C1B8, "2E");
    v0 = sub_1C1E549CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE750B8);
    }
  }
}

void sub_1C1DC0E5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1C1DC0F28()
{
  result = qword_1EDE73B60;
  if (!qword_1EDE73B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C1C0, &qword_1C1E55D80);
    sub_1C1DC0FB4();
    sub_1C1DC116C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B60);
  }

  return result;
}

unint64_t sub_1C1DC0FB4()
{
  result = qword_1EDE73B88;
  if (!qword_1EDE73B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C188, &qword_1C1E55C60);
    sub_1C1DC106C();
    sub_1C1DC1124(&qword_1EDE73B30, &qword_1EBF1C1A8, &qword_1C1E55C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B88);
  }

  return result;
}

unint64_t sub_1C1DC106C()
{
  result = qword_1EDE73BB0;
  if (!qword_1EDE73BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C180, &qword_1C1E55C58);
    sub_1C1DC1124(&qword_1EDE73B18, &qword_1EBF1C1A0, &qword_1C1E55C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73BB0);
  }

  return result;
}

uint64_t sub_1C1DC1124(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1C1DC116C()
{
  result = qword_1EDE73BB8;
  if (!qword_1EDE73BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C198, &qword_1C1E55C70);
    sub_1C1DC1124(&qword_1EDE73BC8, &qword_1EBF1C1B0, &qword_1C1E55C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73BB8);
  }

  return result;
}

uint64_t CalculateExpressionView.init(expression:isEditable:height:minFontSizeRatio:textAlignment:textColor:truncationMode:operationCallback:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, double a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v33 = a6;
  v31 = a4;
  v32 = a5;
  v30 = a3;
  v34 = a11;
  v35 = a8;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C190, &qword_1C1E55C68) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v18 = &v30 - v17;
  v19 = a10 / 1.35;
  sub_1C1DC1424(a7, &v30 - v17, &qword_1EBF1C190, &qword_1C1E55C68);
  v20 = type metadata accessor for CalculateExpressionView();
  v21 = (a9 + v20[12]);
  type metadata accessor for PlatformKeyboardHandler();
  swift_allocObject();
  v36 = sub_1C1DC148C();
  sub_1C1E536DC();
  v22 = v38;
  *v21 = v37;
  v21[1] = v22;
  v23 = a9 + v20[13];
  LOBYTE(v36) = 0;
  sub_1C1E536DC();
  v24 = v38;
  *v23 = v37;
  *(v23 + 8) = v24;
  *a9 = a1;
  *(a9 + 8) = a2;
  v25 = v30;
  if (v31)
  {
    v25 = 0.766666667;
  }

  *(a9 + 16) = v19;
  *(a9 + 24) = v25;
  *(a9 + 40) = v32;
  sub_1C1DC0D28(0, &qword_1EDE737A8, 0x1E69DC888);
  v26 = sub_1C1E5499C();
  sub_1C1DC1870(a7, &qword_1EBF1C190, &qword_1C1E55C68);
  *(a9 + 32) = v26;
  result = sub_1C1DC18D0(v18, a9 + v20[10], &qword_1EBF1C190, &qword_1C1E55C68);
  v28 = (a9 + v20[11]);
  v29 = v34;
  *v28 = v35;
  v28[1] = v29;
  return result;
}

uint64_t sub_1C1DC1424(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_1C1DC148C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D8, &qword_1C1E5AB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E58C40;
  sub_1C1E5432C();
  *(inited + 32) = sub_1C1E5428C();
  *(inited + 40) = sub_1C1E5422C();
  *(inited + 48) = sub_1C1E5405C();
  *(inited + 56) = sub_1C1E5408C();
  v3 = sub_1C1DC1588(inited);
  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
  v1[2] = v3;
  v5 = *MEMORY[0x1E69DDF30];
  v1[3] = sub_1C1E545FC();
  v1[4] = v6;
  v7 = *MEMORY[0x1E69DDE90];
  v1[5] = sub_1C1E545FC();
  v1[6] = v8;
  v9 = *MEMORY[0x1E69DDEA0];
  v1[7] = sub_1C1E545FC();
  v1[8] = v10;
  return v1;
}

unint64_t sub_1C1DC1588(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1C1E54ACC();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE28, &qword_1C1E5AE18);
      result = sub_1C1E54B2C();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1C1E54ACC();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x1C6910730](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_1C1E5432C();
    sub_1C1DC181C(&qword_1EDE738B0, MEMORY[0x1E6992120]);
    result = sub_1C1E5453C();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1C1DC181C(&qword_1EDE738A8, MEMORY[0x1E6992120]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_1C1E545AC();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1C1DC181C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1DC1870(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C1DC18D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t storeEnumTagSinglePayload for CalculateExpressionView.FadeState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CalculateExpressionView.FadeState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t CalculateExpressionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = type metadata accessor for CalculateExpressionView();
  v4 = v3 - 8;
  v61 = *(v3 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v62 = v6;
  v63 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C178, &qword_1C1E55C50);
  v7 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v9 = v58 - v8;
  v10 = sub_1C1E51E6C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58[1] = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C180, &qword_1C1E55C58);
  v13 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v15 = v58 - v14;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C188, &qword_1C1E55C60);
  v16 = *(*(v66 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v66);
  v60 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v64 = v58 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C190, &qword_1C1E55C68);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v58 - v22;
  v24 = sub_1C1E530EC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = ceil(*(v1 + 16) * 1.35);
  v30 = *v1;
  sub_1C1E53CEC();

  sub_1C1DC1424(v2 + *(v4 + 48), v23, &qword_1EBF1C190, &qword_1C1E55C68);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1C1DC1870(v23, &qword_1EBF1C190, &qword_1C1E55C68);
    v31 = v2;
    v32 = v63;
    sub_1C1DC7390(v31, v63);
    v33 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v34 = (v62 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    sub_1C1DC73F4(v32, v35 + v33);
    *(v35 + v34) = v29;
    sub_1C1E538CC();
    sub_1C1E5281C();
    v36 = v70;
    v37 = v71;
    v38 = v72;
    v39 = v73;
    v69 = v71;
    v68 = v73;
    *v9 = sub_1C1DC2710;
    *(v9 + 1) = v35;
    *(v9 + 2) = v36;
    v9[24] = v37;
    *(v9 + 4) = v38;
    v9[40] = v39;
    *(v9 + 3) = v74;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C198, &qword_1C1E55C70);
    sub_1C1DC0FB4();
    sub_1C1DC116C();
    return sub_1C1E52CEC();
  }

  else
  {
    v41 = *(v25 + 32);
    v58[0] = v28;
    v41(v28, v23, v24);
    v42 = v2;
    v63 = sub_1C1DCA4C8(INFINITY, v29);
    sub_1C1E51E7C();
    v43 = sub_1C1E5315C();
    v61 = v44;
    v62 = v45;
    v47 = v46;
    KeyPath = swift_getKeyPath();
    v49 = &v15[*(v59 + 36)];
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C1A0, &qword_1C1E55C78);
    (*(v25 + 16))(v49 + *(v50 + 28), v28, v24);
    *v49 = KeyPath;
    v51 = v61;
    *v15 = v43;
    *(v15 + 1) = v51;
    v15[16] = v47 & 1;
    *(v15 + 3) = v62;
    v52 = *(v42 + 40);
    if (sub_1C1E5290C())
    {
      v53 = 2;
    }

    else
    {
      v53 = 0;
    }

    v54 = swift_getKeyPath();
    v55 = v60;
    sub_1C1DC18D0(v15, v60, &qword_1EBF1C180, &qword_1C1E55C58);
    v56 = v55 + *(v66 + 36);
    *v56 = v54;
    *(v56 + 8) = v53;
    v57 = v64;
    sub_1C1DC18D0(v55, v64, &qword_1EBF1C188, &qword_1C1E55C60);
    sub_1C1DC1424(v57, v9, &qword_1EBF1C188, &qword_1C1E55C60);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C198, &qword_1C1E55C70);
    sub_1C1DC0FB4();
    sub_1C1DC116C();
    sub_1C1E52CEC();

    sub_1C1DC1870(v57, &qword_1EBF1C188, &qword_1C1E55C60);
    return (*(v25 + 8))(v58[0], v24);
  }
}

uint64_t sub_1C1DC20FC()
{
  v1 = type metadata accessor for CalculateExpressionView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[10];
  v8 = sub_1C1E530EC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = (v5 + v1[11]);
  if (*v10)
  {
    v11 = v10[1];
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v5 + v1[12]);
  v14 = *v13;

  v15 = v13[1];

  v16 = *(v5 + v1[13] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v2 | 7);
}

uint64_t sub_1C1DC2288(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1C1DC22B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = sub_1C1E5285C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = type metadata accessor for CalculateExpressionView();
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1E5283C();
  v15 = sub_1C1DCA4C8(v14, a4);
  v17 = v16;
  v19 = v18;
  v20 = sub_1C1E538DC();
  v29 = v21;
  v30 = v20;
  sub_1C1DC7390(a2, v13);
  (*(v9 + 16))(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v22 = (*(v28 + 80) + 40) & ~*(v28 + 80);
  v23 = (v12 + *(v9 + 80) + v22) & ~*(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = v15;
  *(v24 + 3) = v17;
  *(v24 + 4) = v19;
  sub_1C1DC73F4(v13, &v24[v22]);
  result = (*(v9 + 32))(&v24[v23], &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *&v24[(v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8] = a4;
  v26 = v29;
  *a3 = v30;
  a3[1] = v26;
  a3[2] = sub_1C1DCE198;
  a3[3] = v24;
  return result;
}

uint64_t sub_1C1DC24EC()
{
  v1 = type metadata accessor for CalculateExpressionView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v20 = *(*(v1 - 1) + 64);
  v21 = sub_1C1E5285C();
  v4 = *(v21 - 8);
  v5 = *(v4 + 80);
  v19 = *(v4 + 64);

  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = v1[10];
  v9 = sub_1C1E530EC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = (v6 + v1[11]);
  if (*v11)
  {
    v12 = v11[1];
  }

  v13 = (v3 + v20 + v5) & ~v5;
  v14 = (v6 + v1[12]);
  v15 = *v14;

  v16 = v14[1];

  v17 = *(v6 + v1[13] + 8);

  (*(v4 + 8))(v0 + v13, v21);

  return MEMORY[0x1EEE6BDD0](v0, ((v19 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v5 | 7);
}

uint64_t sub_1C1DC2710@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for CalculateExpressionView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C1DC22B4(a1, v2 + v6, a2, v7);
}

void sub_1C1DC27DC()
{
  sub_1C1DC7490(319, &qword_1EDE750B0, MEMORY[0x1E6968848]);
  if (v0 <= 0x3F)
  {
    sub_1C1DC7490(319, qword_1EDE73A88, _s11LabelSymbolVMa);
    if (v1 <= 0x3F)
    {
      sub_1C1DC7490(319, qword_1EDE739E0, _s13LabelFractionVMa);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C1DC28EC()
{
  sub_1C1E5296C();
  if (v0 <= 0x3F)
  {
    sub_1C1E5207C();
    if (v1 <= 0x3F)
    {
      sub_1C1E51618();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C1DC29C0()
{
  result = sub_1C1E51E6C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t CalculateExpression.label(for:fontSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v149 = a1;
  v147 = a2;
  v5 = sub_1C1E5296C();
  v138 = *(v5 - 8);
  v139 = v5;
  v6 = *(v138 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v123 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v134 = &v122 - v9;
  v10 = _s11LabelSymbolVMa(0);
  v145 = *(v10 - 8);
  v146 = v10;
  v11 = *(v145 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v124 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v130 = &v122 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v135 = (&v122 - v16);
  v128 = sub_1C1E51E4C();
  v17 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C1E51E6C();
  v141 = *(v19 - 8);
  v142 = v19;
  v20 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v131 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1C1E51FEC();
  v137 = *(v132 - 8);
  v22 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v126 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDD0, &qword_1C1E5AB78);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v122 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDD8, &qword_1C1E5AB80);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v129 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v122 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v122 - v35;
  v37 = sub_1C1E5205C();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v122 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1C1E5207C();
  v133 = *(v136 - 8);
  v42 = *(v133 + 64);
  v43 = MEMORY[0x1EEE9AC00](v136);
  v125 = &v122 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v140 = &v122 - v45;
  v46 = _s13LabelFractionVMa(0);
  v143 = *(v46 - 8);
  v144 = v46;
  v47 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v122 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v3;
  if (sub_1C1E53B2C())
  {
    sub_1C1E5432C();
    sub_1C1E53DCC();
    v50 = sub_1C1E53FAC();

    if (v50)
    {
      memset(v152, 0, sizeof(v152));
      v153 = 1;
      sub_1C1DC50CC(49, 0xE100000000000000, 0.0, 1, v152, 1, 1, 0, v49, a3 / 1.3, 1u, 1u);
      v51 = v144;
      sub_1C1DC50CC(120, 0xE100000000000000, 0.0, 1, v152, 1, 1, 0, &v49[*(v144 + 20)], a3 / 1.3, 1u, 1u);
      *&v49[*(v51 + 24)] = a3;
      v52 = v147;
      (*(v141 + 56))(v147, 1, 1, v142);
      v53 = type metadata accessor for CalculateExpression.Label(0);
      (*(v145 + 56))(v52 + *(v53 + 20), 1, 1, v146);
      v54 = *(v53 + 24);
      sub_1C1DCA204(v49, v52 + v54, _s13LabelFractionVMa);
      return (*(v143 + 56))(v52 + v54, 0, 1, v51);
    }
  }

  sub_1C1E5432C();
  sub_1C1E5427C();
  v56 = sub_1C1E53FAC();

  if (v56)
  {
    sub_1C1E53BBC();
    sub_1C1E5206C();
    sub_1C1E5204C();
    (*(v38 + 8))(v41, v37);
    sub_1C1E51FDC();
    v57 = v137;
    v58 = v132;
    (*(v137 + 56))(v34, 0, 1, v132);
    v59 = *(v24 + 48);
    v60 = v58;
    sub_1C1DC1424(v36, v27, &qword_1EBF1DDD8, &qword_1C1E5AB80);
    sub_1C1DC1424(v34, &v27[v59], &qword_1EBF1DDD8, &qword_1C1E5AB80);
    v61 = *(v57 + 48);
    if (v61(v27, 1, v58) == 1)
    {
      sub_1C1DC1870(v34, &qword_1EBF1DDD8, &qword_1C1E5AB80);
      sub_1C1DC1870(v36, &qword_1EBF1DDD8, &qword_1C1E5AB80);
      v62 = v61(&v27[v59], 1, v58);
      v63 = v141;
      v64 = v136;
      if (v62 == 1)
      {
        sub_1C1DC1870(v27, &qword_1EBF1DDD8, &qword_1C1E5AB80);
        v65 = v142;
        v66 = v133;
        goto LABEL_22;
      }
    }

    else
    {
      v77 = v129;
      sub_1C1DC1424(v27, v129, &qword_1EBF1DDD8, &qword_1C1E5AB80);
      v78 = v61(&v27[v59], 1, v60);
      v79 = v60;
      v64 = v136;
      if (v78 != 1)
      {
        v105 = v137;
        v106 = &v27[v59];
        v107 = v126;
        (*(v137 + 32))(v126, v106, v79);
        sub_1C1DC181C(&qword_1EDE75098, MEMORY[0x1E6969610]);
        LODWORD(v149) = sub_1C1E545AC();
        v108 = *(v105 + 8);
        v108(v107, v79);
        sub_1C1DC1870(v34, &qword_1EBF1DDD8, &qword_1C1E5AB80);
        sub_1C1DC1870(v36, &qword_1EBF1DDD8, &qword_1C1E5AB80);
        v108(v77, v79);
        v64 = v136;
        sub_1C1DC1870(v27, &qword_1EBF1DDD8, &qword_1C1E5AB80);
        v63 = v141;
        v65 = v142;
        v66 = v133;
        if (v149)
        {
LABEL_22:
          v109 = sub_1C1E5427C();
          v110 = v131;
          CalculateExpression.caption(for:fontSize:)(v109, v131, 13.0);

          sub_1C1E51E3C();
          (*(v63 + 8))(v110, v65);
          sub_1C1DC181C(&qword_1EBF1DDE0, MEMORY[0x1E6968678]);
          *&v152[0] = sub_1C1E5477C();
          *(&v152[0] + 1) = v111;
          v150 = 37;
          v151 = 0xE100000000000000;
          sub_1C1DC733C();
          v112 = sub_1C1E54A3C();

          if (v112)
          {
            v113 = v125;
            sub_1C1E51FAC();
            v114 = v140;
            (*(v66 + 8))(v140, v64);
            (*(v66 + 32))(v114, v113, v64);
          }
        }

LABEL_24:
        v115 = sub_1C1E53B2C();
        v117 = v138;
        v116 = v139;
        v118 = MEMORY[0x1E697E7D8];
        if ((v115 & 1) == 0)
        {
          v118 = MEMORY[0x1E697E7D0];
        }

        v119 = v134;
        (*(v138 + 104))(v134, *v118, v139);
        v120 = v135;
        *v135 = 1.81844024e-306;
        v120[1] = -1.39234638e188;
        v120[2] = a3;
        v94 = v146;
        (*(v117 + 32))(v120 + v146[6], v119, v116);
        (*(v66 + 32))(v120 + v94[7], v140, v64);
        v121 = v120 + v94[8];
        *v121 = 0u;
        *(v121 + 1) = 0u;
        v121[32] = 1;
        v73 = v147;
        (*(v63 + 56))(v147, 1, 1, v65);
        v98 = type metadata accessor for CalculateExpression.Label(0);
        v99 = *(v98 + 20);
        v100 = v73 + v99;
        v101 = v120;
LABEL_27:
        sub_1C1DCA204(v101, v100, _s11LabelSymbolVMa);
        (*(v145 + 56))(v73 + v99, 0, 1, v94);
        v76 = *(v98 + 24);
        return (*(v143 + 56))(v73 + v76, 1, 1, v144);
      }

      sub_1C1DC1870(v34, &qword_1EBF1DDD8, &qword_1C1E5AB80);
      sub_1C1DC1870(v36, &qword_1EBF1DDD8, &qword_1C1E5AB80);
      (*(v137 + 8))(v77, v79);
      v63 = v141;
    }

    sub_1C1DC1870(v27, &qword_1EBF1DDD0, &qword_1C1E5AB78);
    v65 = v142;
    v66 = v133;
    goto LABEL_24;
  }

  sub_1C1E540DC();
  v67 = v149;
  v68 = sub_1C1E53FAC();

  if ((v68 & 1) == 0)
  {
    v80 = v67;
    v82 = v141;
    v81 = v142;
    if (qword_1EDE73978 != -1)
    {
      swift_once();
    }

    v83 = off_1EDE73980;
    if (!*(off_1EDE73980 + 2) || (v84 = sub_1C1DC4CBC(v67), (v85 & 1) == 0))
    {
      v102 = v131;
      CalculateExpression.caption(for:fontSize:)(v80, v131, a3);
      v103 = v147;
      (*(v82 + 32))(v147, v102, v81);
      (*(v82 + 56))(v103, 0, 1, v81);
      v104 = type metadata accessor for CalculateExpression.Label(0);
      (*(v145 + 56))(v103 + *(v104 + 20), 1, 1, v146);
      return (*(v143 + 56))(v103 + *(v104 + 24), 1, 1, v144);
    }

    v86 = (v83[7] + 16 * v84);
    v88 = *v86;
    v87 = v86[1];

    v89 = sub_1C1E53B2C();
    v91 = v138;
    v90 = v139;
    v92 = MEMORY[0x1E697E7D8];
    if ((v89 & 1) == 0)
    {
      v92 = MEMORY[0x1E697E7D0];
    }

    v93 = v123;
    (*(v138 + 104))(v123, *v92, v139);
    v94 = v146;
    v95 = v124;
    v96 = &v124[v146[7]];
    sub_1C1E53BBC();
    *v95 = v88;
    *(v95 + 1) = v87;
    *(v95 + 2) = a3;
    (*(v91 + 32))(&v95[v94[6]], v93, v90);
    v97 = &v95[v94[8]];
    *v97 = 0u;
    *(v97 + 1) = 0u;
    v97[32] = 1;
    v73 = v147;
    (*(v82 + 56))(v147, 1, 1, v81);
    v98 = type metadata accessor for CalculateExpression.Label(0);
    v99 = *(v98 + 20);
    v100 = v73 + v99;
    v101 = v95;
    goto LABEL_27;
  }

  v69 = v146;
  v70 = v130;
  (*(v138 + 104))(&v130[v146[6]], *MEMORY[0x1E697E7D0], v139);
  v71 = v70 + v69[7];
  sub_1C1E53BBC();
  *v70 = 0x6C2E6574656C6564;
  *(v70 + 8) = 0xEB00000000746665;
  *(v70 + 16) = a3 * 0.95;
  v72 = v70 + v69[8];
  *v72 = 0;
  *(v72 + 8) = 0;
  *(v72 + 16) = 0;
  *(v72 + 24) = a3 * 0.05;
  *(v72 + 32) = 0;
  v73 = v147;
  (*(v141 + 56))(v147, 1, 1, v142);
  v74 = type metadata accessor for CalculateExpression.Label(0);
  v75 = *(v74 + 20);
  sub_1C1DCA204(v70, v73 + v75, _s11LabelSymbolVMa);
  (*(v145 + 56))(v73 + v75, 0, 1, v69);
  v76 = *(v74 + 24);
  return (*(v143 + 56))(v73 + v76, 1, 1, v144);
}

uint64_t CalculateExpression.caption(for:fontSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v68 = a1;
  v66 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDC0, &qword_1C1E5AB60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1E5AAE0;
  sub_1C1E5432C();
  *(v4 + 32) = sub_1C1E540EC();
  v67 = v4 + 32;
  *(v4 + 40) = 48;
  *(v4 + 48) = 0xE100000000000000;
  *(v4 + 56) = sub_1C1E540FC();
  *(v4 + 64) = 49;
  *(v4 + 72) = 0xE100000000000000;
  *(v4 + 80) = sub_1C1E5410C();
  *(v4 + 88) = 50;
  *(v4 + 96) = 0xE100000000000000;
  *(v4 + 104) = sub_1C1E5411C();
  *(v4 + 112) = 51;
  *(v4 + 120) = 0xE100000000000000;
  *(v4 + 128) = sub_1C1E5412C();
  *(v4 + 136) = 52;
  *(v4 + 144) = 0xE100000000000000;
  *(v4 + 152) = sub_1C1E5413C();
  *(v4 + 160) = 53;
  *(v4 + 168) = 0xE100000000000000;
  *(v4 + 176) = sub_1C1E5414C();
  *(v4 + 184) = 54;
  *(v4 + 192) = 0xE100000000000000;
  *(v4 + 200) = sub_1C1E5415C();
  *(v4 + 208) = 55;
  *(v4 + 216) = 0xE100000000000000;
  *(v4 + 224) = sub_1C1E5416C();
  *(v4 + 232) = 56;
  *(v4 + 240) = 0xE100000000000000;
  *(v4 + 248) = sub_1C1E5417C();
  *(v4 + 256) = 57;
  *(v4 + 264) = 0xE100000000000000;
  *(v4 + 272) = sub_1C1E5424C();
  *(v4 + 280) = 46;
  *(v4 + 288) = 0xE100000000000000;
  *(v4 + 296) = sub_1C1E53F9C();
  *(v4 + 304) = 17733;
  *(v4 + 312) = 0xE200000000000000;
  *(v4 + 320) = sub_1C1E53FDC();
  *(v4 + 328) = 43;
  *(v4 + 336) = 0xE100000000000000;
  *(v4 + 344) = sub_1C1E542EC();
  *(v4 + 352) = 9603298;
  *(v4 + 360) = 0xA300000000000000;
  *(v4 + 368) = sub_1C1E542DC();
  *(v4 + 376) = 38851;
  *(v4 + 384) = 0xA200000000000000;
  *(v4 + 392) = sub_1C1E541EC();
  *(v4 + 400) = 47043;
  *(v4 + 408) = 0xA200000000000000;
  *(v4 + 416) = sub_1C1E5427C();
  *(v4 + 424) = 37;
  *(v4 + 432) = 0xE100000000000000;
  *(v4 + 440) = sub_1C1E5430C();
  *(v4 + 448) = 8568;
  *(v4 + 456) = 0xE200000000000000;
  *(v4 + 464) = sub_1C1E53E9C();
  *(v4 + 472) = 40;
  *(v4 + 480) = 0xE100000000000000;
  *(v4 + 488) = sub_1C1E53EAC();
  *(v4 + 496) = 41;
  *(v4 + 504) = 0xE100000000000000;
  *(v4 + 512) = sub_1C1E53FCC();
  *(v4 + 520) = 32975;
  *(v4 + 528) = 0xA200000000000000;
  *(v4 + 536) = sub_1C1E53DFC();
  *(v4 + 544) = 2459016688;
  *(v4 + 552) = 0xA400000000000000;
  *(v4 + 560) = sub_1C1E5421C();
  *(v4 + 568) = 1684955474;
  *(v4 + 576) = 0xE400000000000000;
  *(v4 + 584) = sub_1C1E5423C();
  *(v4 + 592) = 3300984;
  *(v4 + 600) = 0xE300000000000000;
  *(v4 + 608) = sub_1C1E5404C();
  *(v4 + 616) = 3366520;
  *(v4 + 624) = 0xE300000000000000;
  *(v4 + 632) = sub_1C1E540BC();
  *(v4 + 640) = 7954040;
  *(v4 + 648) = 0xE300000000000000;
  *(v4 + 656) = sub_1C1E53DEC();
  *(v4 + 664) = 0x789A88E2325ELL;
  *(v4 + 672) = 0xA600000000000000;
  *(v4 + 680) = sub_1C1E542CC();
  *(v4 + 688) = 0x789A88E2335ELL;
  *(v4 + 696) = 0xA600000000000000;
  *(v4 + 704) = sub_1C1E5406C();
  *(v4 + 712) = 0x789A88E2795ELL;
  *(v4 + 720) = 0xA600000000000000;
  *(v4 + 728) = sub_1C1E53DCC();
  *(v4 + 736) = 0x785F8481E2315ELL;
  *(v4 + 744) = 0xA700000000000000;
  *(v4 + 752) = sub_1C1E5420C();
  *(v4 + 760) = 0x82E28481E2BA81E2;
  *(v4 + 768) = 0xA90000000000008BLL;
  *(v4 + 776) = sub_1C1E5407C();
  *(v4 + 784) = 7235955;
  *(v4 + 792) = 0xE300000000000000;
  *(v4 + 800) = sub_1C1E540CC();
  *(v4 + 808) = 7565155;
  *(v4 + 816) = 0xE300000000000000;
  *(v4 + 824) = sub_1C1E5429C();
  *(v4 + 832) = 7233908;
  *(v4 + 840) = 0xE300000000000000;
  *(v4 + 848) = sub_1C1E53E0C();
  *(v4 + 856) = 0x312D5E6E6973;
  *(v4 + 864) = 0xE600000000000000;
  *(v4 + 872) = sub_1C1E53E3C();
  *(v4 + 880) = 0x312D5E736F63;
  *(v4 + 888) = 0xE600000000000000;
  *(v4 + 896) = sub_1C1E53E5C();
  *(v4 + 904) = 0x312D5E6E6174;
  *(v4 + 912) = 0xE600000000000000;
  *(v4 + 920) = sub_1C1E53E4C();
  *(v4 + 928) = 1752066419;
  *(v4 + 936) = 0xE400000000000000;
  *(v4 + 944) = sub_1C1E53ECC();
  *(v4 + 952) = 1752395619;
  *(v4 + 960) = 0xE400000000000000;
  *(v4 + 968) = sub_1C1E53F1C();
  *(v4 + 976) = 1752064372;
  *(v4 + 984) = 0xE400000000000000;
  *(v4 + 992) = sub_1C1E53F6C();
  *(v4 + 1000) = 0x312D5E686E6973;
  *(v4 + 1008) = 0xE700000000000000;
  *(v4 + 1016) = sub_1C1E53F7C();
  *(v4 + 1024) = 0x312D5E68736F63;
  *(v4 + 1032) = 0xE700000000000000;
  *(v4 + 1040) = sub_1C1E53F8C();
  *(v4 + 1048) = 0x312D5E686E6174;
  *(v4 + 1056) = 0xE700000000000000;
  *(v4 + 1064) = sub_1C1E53E8C();
  *(v4 + 1072) = 0x30315F676F6CLL;
  *(v4 + 1080) = 0xE600000000000000;
  *(v4 + 1088) = sub_1C1E53E6C();
  *(v4 + 1096) = 0x325F676F6CLL;
  *(v4 + 1104) = 0xE500000000000000;
  *(v4 + 1112) = sub_1C1E53F3C();
  *(v4 + 1120) = 0x795F676F6CLL;
  *(v4 + 1128) = 0xE500000000000000;
  *(v4 + 1136) = sub_1C1E53EEC();
  *(v4 + 1144) = 28268;
  *(v4 + 1152) = 0xE200000000000000;
  *(v4 + 1160) = sub_1C1E53F0C();
  *(v4 + 1168) = 2019438641;
  *(v4 + 1176) = 0xE400000000000000;
  *(v4 + 1184) = sub_1C1E53EBC();
  *(v4 + 1192) = 7888434;
  *(v4 + 1200) = 0xE300000000000000;
  *(v4 + 1208) = sub_1C1E53F5C();
  *(v4 + 1216) = 7888505;
  *(v4 + 1224) = 0xE300000000000000;
  *(v4 + 1232) = sub_1C1E53F4C();
  *(v4 + 1240) = 0x785E92919DF0;
  *(v4 + 1248) = 0xA600000000000000;
  *(v4 + 1256) = sub_1C1E5418C();
  *(v4 + 1264) = 65;
  *(v4 + 1272) = 0xE100000000000000;
  *(v4 + 1280) = sub_1C1E5419C();
  *(v4 + 1288) = 66;
  *(v4 + 1296) = 0xE100000000000000;
  *(v4 + 1304) = sub_1C1E541AC();
  *(v4 + 1312) = 67;
  *(v4 + 1320) = 0xE100000000000000;
  *(v4 + 1328) = sub_1C1E541BC();
  *(v4 + 1336) = 68;
  *(v4 + 1344) = 0xE100000000000000;
  *(v4 + 1352) = sub_1C1E541CC();
  *(v4 + 1360) = 69;
  *(v4 + 1368) = 0xE100000000000000;
  *(v4 + 1376) = sub_1C1E541DC();
  *(v4 + 1384) = 70;
  *(v4 + 1392) = 0xE100000000000000;
  *(v4 + 1400) = sub_1C1E5425C();
  *(v4 + 1408) = 12336;
  *(v4 + 1416) = 0xE200000000000000;
  *(v4 + 1424) = sub_1C1E5426C();
  *(v4 + 1432) = 17990;
  *(v4 + 1440) = 0xE200000000000000;
  *(v4 + 1448) = sub_1C1E53FEC();
  *(v4 + 1456) = 4476481;
  *(v4 + 1464) = 0xE300000000000000;
  *(v4 + 1472) = sub_1C1E53FBC();
  *(v4 + 1480) = 21071;
  *(v4 + 1488) = 0xE200000000000000;
  *(v4 + 1496) = sub_1C1E5401C();
  *(v4 + 1504) = 5394254;
  *(v4 + 1512) = 0xE300000000000000;
  *(v4 + 1520) = sub_1C1E5403C();
  *(v4 + 1528) = 5394264;
  *(v4 + 1536) = 0xE300000000000000;
  *(v4 + 1544) = sub_1C1E53FFC();
  *(v4 + 1552) = 6582125;
  *(v4 + 1560) = 0xE300000000000000;
  *(v4 + 1568) = sub_1C1E5431C();
  *(v4 + 1576) = 15420;
  *(v4 + 1584) = 0xE200000000000000;
  *(v4 + 1592) = sub_1C1E53DDC();
  *(v4 + 1600) = 15934;
  *(v4 + 1608) = 0xE200000000000000;
  *(v4 + 1616) = sub_1C1E53E7C();
  *(v4 + 1624) = 1497119832;
  *(v4 + 1632) = 0xE400000000000000;
  *(v4 + 1640) = sub_1C1E53EFC();
  *(v4 + 1648) = 1497251416;
  *(v4 + 1656) = 0xE400000000000000;
  *(v4 + 1664) = sub_1C1E53DBC();
  *(v4 + 1672) = 5009234;
  *(v4 + 1680) = 0xE300000000000000;
  *(v4 + 1688) = sub_1C1E53E2C();
  *(v4 + 1696) = 5402450;
  *(v4 + 1704) = 0xE300000000000000;
  *(v4 + 1712) = sub_1C1E53EDC();
  *(v4 + 1720) = 0x59204C6F522058;
  *(v4 + 1728) = 0xE700000000000000;
  *(v4 + 1736) = sub_1C1E53F2C();
  *(v4 + 1744) = 0x5920526F522058;
  *(v4 + 1752) = 0xE700000000000000;
  *(v4 + 1760) = sub_1C1E542BC();
  *(v4 + 1768) = 0x385F70696C66;
  *(v4 + 1776) = 0xE600000000000000;
  *(v4 + 1784) = sub_1C1E542FC();
  *(v4 + 1792) = 0x36315F70696C66;
  *(v4 + 1800) = 0xE700000000000000;
  *(v4 + 1808) = sub_1C1E5402C();
  *(v4 + 1816) = 5525326;
  *(v4 + 1824) = 0xE300000000000000;
  *(v4 + 1832) = sub_1C1E5400C();
  *(v4 + 1840) = 4670798;
  *(v4 + 1848) = 0xE300000000000000;
  *(v4 + 1856) = sub_1C1E5405C();
  *(v4 + 1864) = 1886351972;
  *(v4 + 1872) = 0xE400000000000000;
  *(v4 + 1880) = sub_1C1E5408C();
  *(v4 + 1888) = 0x799486E278;
  *(v4 + 1896) = 0xA500000000000000;
  *(v4 + 1904) = sub_1C1E5422C();
  *(v4 + 1912) = 2475090514;
  *(v4 + 1920) = 0xA400000000000000;
  *(v4 + 1928) = sub_1C1E5428C();
  *(v4 + 1936) = 2441536082;
  *(v4 + 1944) = 0xA400000000000000;
  *(v4 + 1952) = sub_1C1E540AC();
  *(v4 + 1960) = 0x7265746E65;
  *(v4 + 1968) = 0xE500000000000000;
  *(v4 + 1976) = sub_1C1E53E1C();
  *(v4 + 1984) = 0x799A88E2785ELL;
  *(v4 + 1992) = 0xA600000000000000;
  *(v4 + 2000) = sub_1C1E540DC();
  *(v4 + 2008) = 11242722;
  *(v4 + 2016) = 0xA300000000000000;
  *(v4 + 2024) = sub_1C1E5409C();
  *(v4 + 2032) = 67;
  *(v4 + 2040) = 0xE100000000000000;
  *(v4 + 2048) = sub_1C1E542AC();
  *(v4 + 2056) = 17217;
  *(v4 + 2064) = 0xE200000000000000;
  *(v4 + 2072) = sub_1C1E541FC();
  *(v4 + 2080) = 61;
  *(v4 + 2088) = 0xE100000000000000;
  v5 = sub_1C1DC4BBC(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDC8, &qword_1C1E5AB68);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D8, &qword_1C1E5AB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E5AAF0;
  *(inited + 32) = sub_1C1E5418C();
  *(inited + 40) = sub_1C1E5419C();
  *(inited + 48) = sub_1C1E541AC();
  *(inited + 56) = sub_1C1E541BC();
  *(inited + 64) = sub_1C1E541CC();
  *(inited + 72) = sub_1C1E541DC();
  *(inited + 80) = sub_1C1E5425C();
  *(inited + 88) = sub_1C1E5426C();
  *(inited + 96) = sub_1C1E53FEC();
  *(inited + 104) = sub_1C1E53FBC();
  *(inited + 112) = sub_1C1E5401C();
  *(inited + 120) = sub_1C1E5403C();
  *(inited + 128) = sub_1C1E53FFC();
  *(inited + 136) = sub_1C1E5431C();
  *(inited + 144) = sub_1C1E53DDC();
  *(inited + 152) = sub_1C1E53E7C();
  *(inited + 160) = sub_1C1E53EFC();
  *(inited + 168) = sub_1C1E53DBC();
  *(inited + 176) = sub_1C1E53E2C();
  *(inited + 184) = sub_1C1E53EDC();
  *(inited + 192) = sub_1C1E53F2C();
  *(inited + 200) = sub_1C1E542BC();
  *(inited + 208) = sub_1C1E542FC();
  *(inited + 216) = sub_1C1E5402C();
  *(inited + 224) = sub_1C1E5400C();
  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = sub_1C1DC1588(inited);
    swift_setDeallocating();
    v8 = *(inited + 16);
  }

  else
  {
    swift_setDeallocating();
    v7 = MEMORY[0x1E69E7CD0];
  }

  swift_arrayDestroy();
  v9 = sub_1C1E53D2C();
  if (v9 != 1)
  {
    if (qword_1EDE738C0 != -1)
    {
      swift_once();
    }

    if (sub_1C1DC4F3C(v68, qword_1EDE738C8))
    {
      if (*(v5 + 16))
      {
        v10 = sub_1C1DC4CBC(v68);
        v12 = v11;

        if (v12)
        {
          v13 = (*(v5 + 56) + 16 * v10);
          v14 = *v13;
          v15 = v13[1];

          v16 = sub_1C1E53B8C();
          v18 = v17;

          v69 = 0u;
          v70 = 0u;
          v71 = 1;
          LOWORD(v65) = 257;
          v19 = v66;
          v20 = v16;
          v21 = v18;
          v22 = a3;
          v23 = 0.0;
          v24 = 1;
          v25 = 1;
          v26 = 1;
          v27 = 0.0;
          goto LABEL_43;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_61:
      swift_once();
      goto LABEL_45;
    }

    sub_1C1E5424C();
    v28 = sub_1C1E53FAC();

    if (v28)
    {

      v29 = sub_1C1E53C8C();
      v30 = [v29 decimalSeparator];

      if (v30)
      {
        v31 = sub_1C1E545FC();
        v33 = v32;

        v34 = 43993;
        if (v31 == 43993)
        {
          v35 = 0xA200000000000000;
          if (v33 == 0xA200000000000000)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        v33 = 0xE100000000000000;
        v31 = 46;
      }

      if ((sub_1C1E54D2C() & 1) == 0)
      {
        v27 = 0.0;
        v61 = 1;
        goto LABEL_51;
      }

      v35 = v33;
      v34 = v31;
LABEL_49:
      v61 = 0;
      v27 = a3 / 2.1;
      v33 = v35;
      v31 = v34;
LABEL_51:
      v69 = 0u;
      v70 = 0u;
      v71 = 1;
      BYTE1(v65) = 1;
      LOBYTE(v65) = v61;
      v19 = v66;
      v20 = v31;
      v21 = v33;
      v22 = a3;
      v23 = 0.0;
      v24 = 1;
      v25 = 1;
      v26 = 1;
      goto LABEL_43;
    }
  }

  v36 = sub_1C1DC4F3C(v68, v7);

  if (v36 & 1) != 0 || sub_1C1E53D2C() == 1 && ((sub_1C1E5409C(), v44 = sub_1C1E53FAC(), , (v44) || (sub_1C1E542AC(), v45 = sub_1C1E53FAC(), , (v45)))
  {
    v37 = 0;
    goto LABEL_18;
  }

  if (sub_1C1E53BFC())
  {
    v37 = 1;
    goto LABEL_18;
  }

  if (qword_1EBF1C170 != -1)
  {
    goto LABEL_61;
  }

LABEL_45:
  v60 = qword_1EBF1DD78;

  v37 = sub_1C1DC4F3C(v68, v60);

LABEL_18:
  if (qword_1EDE73978 != -1)
  {
    swift_once();
  }

  if (*(off_1EDE73980 + 2))
  {
    sub_1C1DC4CBC(v68);
    if (v38)
    {
      v39 = 0;
      v40 = a3 / 7.0;
      v41 = *MEMORY[0x1E69DB968];
      v42 = 1.5;
      goto LABEL_38;
    }
  }

  sub_1C1E540DC();
  v43 = sub_1C1E53FAC();

  if (v43)
  {
    v40 = 0.0;
    v41 = *MEMORY[0x1E69DB968];
LABEL_37:
    v39 = 1;
    v42 = 1.22;
    goto LABEL_38;
  }

  v41 = *MEMORY[0x1E69DB978];
  if ((sub_1C1E53DAC() & v37 & 1) == 0)
  {
    goto LABEL_34;
  }

  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_1C1E58C40;
  *(v46 + 32) = sub_1C1E5421C();
  *(v46 + 40) = sub_1C1E542AC();
  *(v46 + 48) = sub_1C1E5409C();
  v47 = sub_1C1E540AC();
  v67 = *&v41;
  *(v46 + 56) = v47;
  *&v69 = v68;
  MEMORY[0x1EEE9AC00](v47);
  v65 = &v69;
  v48 = sub_1C1DC7594(sub_1C1DC7574, &v64, v46);
  swift_setDeallocating();
  v49 = *(v46 + 16);
  swift_arrayDestroy();
  v41 = *&v67;
  if (v48)
  {
    sub_1C1E5409C();
    v50 = sub_1C1E53FAC();

    if (v50)
    {
      v39 = 0;
      v51 = 6.0;
    }

    else
    {
      sub_1C1E542AC();
      v62 = sub_1C1E53FAC();

      if ((v62 & 1) == 0)
      {
        sub_1C1E540AC();
        v63 = sub_1C1E53FAC();

        v42 = 0.8;
        if (v63)
        {
          v39 = 0;
          v40 = a3 / 10.0;
        }

        else
        {
          v40 = 0.0;
          v39 = 1;
        }

        goto LABEL_38;
      }

      v39 = 0;
      v51 = 10.0;
    }

    v40 = a3 / v51;
    v42 = 0.8;
  }

  else
  {
LABEL_34:
    sub_1C1E5431C();
    v52 = sub_1C1E53FAC();

    if (v52 & 1) != 0 || (sub_1C1E53DDC(), v53 = sub_1C1E53FAC(), , (v53))
    {
      v40 = 0.0;
      goto LABEL_37;
    }

    v40 = 0.0;
    v42 = 1.0;
    v39 = 1;
  }

LABEL_38:
  if (*(v5 + 16) && (v54 = sub_1C1DC4CBC(v68), (v55 & 1) != 0))
  {
    v56 = (*(v5 + 56) + 16 * v54);
    v57 = *v56;
    v58 = v56[1];
  }

  else
  {
    v57 = 0;
    v58 = 0xE000000000000000;
  }

  v22 = v42 * a3;
  v69 = 0u;
  v70 = 0u;
  v71 = 1;
  BYTE1(v65) = 1;
  LOBYTE(v65) = v39;
  v26 = v37 & 1;
  v19 = v66;
  v20 = v57;
  v21 = v58;
  v23 = v41;
  v24 = 0;
  v25 = v9 != 1;
  v27 = v40;
LABEL_43:
  sub_1C1DC50CC(v20, v21, v23, v24, &v69, v25, v26, *&v27, v19, v22, v65, BYTE1(v65));
}

unint64_t sub_1C1DC4BBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFD0, &qword_1C1E57E00);
    v3 = sub_1C1E54C3C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C1DC4CBC(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1DC4CBC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1C1E5432C();
  sub_1C1DC4DF8(&qword_1EDE738B0, MEMORY[0x1E6992120]);
  v4 = sub_1C1E5453C();
  return sub_1C1DC4E40(a1, v4);
}

uint64_t sub_1C1DC4D68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1DC4DB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1DC4DF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C1DC4E40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1C1E5432C();
    sub_1C1DC4DF8(&qword_1EDE738A8, MEMORY[0x1E6992120]);
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (sub_1C1E545AC())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1C1DC4F3C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1C1E54AEC();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (sub_1C1E5432C(), v5 = *(a2 + 40), sub_1C1DC181C(&qword_1EDE738B0, MEMORY[0x1E6992120]), v6 = sub_1C1E5453C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
    {
      v9 = ~v7;
      sub_1C1DC181C(&qword_1EDE738A8, MEMORY[0x1E6992120]);
      do
      {
        v11 = *(*(a2 + 48) + 8 * v8);
        v10 = sub_1C1E545AC();
        if (v10)
        {
          break;
        }

        v8 = (v8 + 1) & v9;
      }

      while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    else
    {
      v10 = 0;
    }

    return v10 & 1;
  }
}

void sub_1C1DC50CC(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, char a7@<W6>, unint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, unsigned __int8 a11, unsigned __int8 a12)
{
  v13 = v12;
  v290 = a8;
  LODWORD(v299) = a6;
  v297 = a1;
  v294 = a9;
  v20 = *(a5 + 8);
  v21 = *(a5 + 24);
  *&v287 = *v13;
  v22 = *(*(sub_1C1E51E6C() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v286 = &v276[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v301 = sub_1C1E5207C();
  v24 = *(v301 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00]();
  v300 = &v276[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = swift_allocObject();
  v304 = v27;
  *(v27 + 16) = a7;
  *&v303 = v27 + 16;
  v28 = *a5;
  v29 = *(a5 + 16);
  LODWORD(v288) = *(a5 + 32);
  if (v288)
  {
    v296 = 0;
    v30 = 0xE000000000000000;
  }

  else
  {
    v308 = sub_1C1E5488C();
    v309 = v31;
    MEMORY[0x1C69102A0](58, 0xE100000000000000);
    v32 = sub_1C1E5488C();
    MEMORY[0x1C69102A0](v32);

    MEMORY[0x1C69102A0](58, 0xE100000000000000);
    v33 = sub_1C1E5488C();
    MEMORY[0x1C69102A0](v33);

    MEMORY[0x1C69102A0](58, 0xE100000000000000);
    v34 = sub_1C1E5488C();
    MEMORY[0x1C69102A0](v34);

    MEMORY[0x1C69102A0](58, 0xE100000000000000);
    v30 = v309;
    v296 = v308;
  }

  LODWORD(v298) = a12;
  LODWORD(v289) = a4;
  v293 = a3;
  if (a4)
  {
    v295 = 0;
    v35 = 0xE000000000000000;
  }

  else
  {
    v295 = sub_1C1E5488C();
    v35 = v36;
  }

  v308 = 0;
  v309 = 0xE000000000000000;
  sub_1C1E54B4C();
  v37 = v300;
  v302 = v13;
  sub_1C1E53BBC();
  v38 = sub_1C1E51FBC();
  v40 = v39;
  v41 = *(v24 + 8);
  v292 = v24 + 8;
  *&v291 = v41;
  v41(v37, v301);

  v308 = v38;
  v309 = v40;
  MEMORY[0x1C69102A0](58, 0xE100000000000000);
  v42 = v297;
  v43 = a2;
  MEMORY[0x1C69102A0](v297, a2);
  MEMORY[0x1C69102A0](58, 0xE100000000000000);
  v44 = sub_1C1E5488C();
  MEMORY[0x1C69102A0](v44);

  MEMORY[0x1C69102A0](58, 0xE100000000000000);
  MEMORY[0x1C69102A0](v295, v35);

  MEMORY[0x1C69102A0](58, 0xE100000000000000);
  MEMORY[0x1C69102A0](v296, v30);

  if (v299)
  {
    v45 = 49;
  }

  else
  {
    v45 = 48;
  }

  MEMORY[0x1C69102A0](v45, 0xE100000000000000);
  if (*v303)
  {
    v46 = 49;
  }

  else
  {
    v46 = 48;
  }

  MEMORY[0x1C69102A0](v46, 0xE100000000000000);
  if (v298)
  {
    v47 = 49;
  }

  else
  {
    v47 = 48;
  }

  MEMORY[0x1C69102A0](v47, 0xE100000000000000);
  v48 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v49 = sub_1C1E545BC();

  v50 = [v48 initWithString_];

  if (qword_1EDE738D0 != -1)
  {
    swift_once();
  }

  v51 = qword_1EDE738D8[0];
  if ([qword_1EDE738D8[0] objectForKey_])
  {
    sub_1C1E51E7C();
LABEL_90:

    return;
  }

  v52 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v53 = v302;
  if (v298)
  {
    sub_1C1E53B2C();
    sub_1C1DC0D28(0, &unk_1EDE737F0, 0x1E696AAB0);
    sub_1C1E51E5C();
    v54 = sub_1C1E5496C();
    [v52 appendAttributedString_];
  }

  v286 = v52;
  LODWORD(v285) = a11;
  v55 = swift_allocObject();
  v296 = v55;
  v56 = v304;
  v55[2] = v304;
  v55[3] = v53;
  v55[4] = v287;
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = v53;
  v295 = v57;
  swift_retain_n();
  swift_retain_n();
  v58 = sub_1C1E50E30(v42, v43, v56);
  v60 = v59;
  swift_beginAccess();
  v61 = *(v56 + 16);
  v62 = v293;
  v282 = v51;
  v283 = v50;
  if (v61 != 1)
  {
    v70 = v53;
    v63 = v289;
LABEL_33:
    *&v287 = v60;
    v298 = v58;
    goto LABEL_34;
  }

  v196 = v42 == 28268;
  v63 = v289;
  if ((!v196 || v43 != 0xE200000000000000) && (sub_1C1E54D2C() & 1) == 0)
  {
    v70 = v53;
    goto LABEL_33;
  }

  v64 = v300;
  v65 = v62;
  sub_1C1E53BBC();
  v66 = sub_1C1E5446C();
  v68 = v67;
  (v291)(v64, v301);
  v69 = sub_1C1E5469C();
  if (v69 > 0)
  {
    v58 = v66;
  }

  v62 = v65;
  v298 = v58;
  if (v69 > 0)
  {
    v60 = v68;
  }

  *&v287 = v60;

  *v303 = 0;
  v70 = v53;
LABEL_34:
  v71 = *MEMORY[0x1E69DB978];
  LODWORD(v289) = v63 & 1;
  if (v63)
  {
    v72 = v71;
  }

  else
  {
    v72 = v62;
  }

  v73 = objc_opt_self();
  v74 = [v73 systemFontOfSize:a10 weight:v72];
  if (v288)
  {
    v75 = v71;
  }

  else
  {
    v75 = v21;
  }

  v76 = 0.65;
  if ((v288 & 1) == 0)
  {
    v76 = v29;
  }

  v77 = v76 * a10;
  if (v288)
  {
    v78 = -0.08;
  }

  else
  {
    v78 = v20;
  }

  if (v288)
  {
    v79 = 0.38;
  }

  else
  {
    v79 = v28;
  }

  v281 = v73;
  v80 = [v73 systemFontOfSize:v77 weight:v75];
  v81 = v79 * a10;
  v82 = v78 * a10;
  if (v285)
  {
    v83 = 0.0;
  }

  else
  {
    v83 = *&v290;
  }

  v84 = swift_allocObject();
  *(v84 + 16) = v74;
  v284 = v74;
  *(v84 + 24) = v83;
  v85 = v286;
  *(v84 + 32) = v286;
  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  v297 = v86;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_1C1DCA1F4;
  *(v87 + 24) = v84;
  v88 = v80;
  v288 = v80;
  *(v87 + 32) = v80;
  *(v87 + 40) = v81;
  *(v87 + 48) = v83;
  v89 = swift_allocObject();
  *(v89 + 16) = sub_1C1DCA1F4;
  *(v89 + 24) = v84;
  *(v89 + 32) = v88;
  *(v89 + 40) = v82;
  *(v89 + 48) = v83;
  v90 = swift_allocObject();
  v91 = v295;
  v92 = v296;
  *(v90 + 16) = sub_1C1DC9E04;
  *(v90 + 24) = v92;
  *(v90 + 32) = sub_1C1DC9E0C;
  *(v90 + 40) = v91;
  *(v90 + 48) = v299 & 1;
  v93 = v304;
  *(v90 + 56) = v70;
  *(v90 + 64) = v93;
  *(v90 + 72) = a10;
  *(v90 + 80) = sub_1C1E51748;
  *(v90 + 88) = v87;
  *(v90 + 96) = sub_1C1E51798;
  *(v90 + 104) = v89;
  *(v90 + 112) = v85;
  *(v90 + 120) = sub_1C1E51740;
  *(v90 + 128) = v86;
  *(v90 + 136) = v74;
  *(v90 + 144) = sub_1C1DCA1F4;
  *(v90 + 152) = v84;
  *(v90 + 160) = v293;
  *(v90 + 168) = v289;
  v94 = swift_allocObject();
  v94[2] = 15;
  v290 = v94 + 2;
  v95 = v287;
  v305 = v298;
  v306 = v287;
  v96 = BYTE7(v287) & 0xF;
  if ((v287 & 0x2000000000000000) == 0)
  {
    v96 = v298;
  }

  v97 = v298;
  v98 = 11;
  if (((v287 >> 60) & ((v298 & 0x800000000000000) == 0)) == 0)
  {
    v98 = 7;
  }

  v307[0] = 15;
  v307[1] = v98 | (v96 << 16);
  v99 = swift_allocObject();
  v99[2] = v97;
  v99[3] = v95;
  v99[4] = v94;
  v99[5] = sub_1C1DC9D98;
  v99[6] = v90;
  v289 = v84;
  swift_retain_n();
  v100 = v85;
  v101 = v284;
  v102 = v288;
  swift_bridgeObjectRetain_n();

  v103 = v100;
  v293 = COERCE_DOUBLE(v102);
  v299 = v101;

  v286 = v89;

  v288 = v87;

  v284 = v94;

  v285 = v90;

  v104 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF1DE30, &unk_1C1E5AE20);
  sub_1C1DC733C();
  sub_1C1DC1124(&unk_1EDE737F8, &unk_1EBF1DE30, &unk_1C1E5AE20);
  sub_1C1E54A0C();

  v105 = v290;
  swift_beginAccess();
  v106 = sub_1C1DC7804(*v105, v298, v95);
  v108 = v107;
  v110 = v109;
  v112 = v111;

  v113 = MEMORY[0x1C6910230](v106, v108, v110, v112);
  v115 = v114;

  v117 = sub_1C1E50E30(v113, v115, v304);
  v118 = v116;
  if (v117 == v113 && v116 == v115 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (*v303 != 1)
    {
      goto LABEL_65;
    }

    v119 = v300;
    sub_1C1E53BBC();
    v117 = sub_1C1E5446C();
    v121 = v120;
    (v291)(v119, v301);
    v122 = sub_1C1E5469C();
    if (v122 <= 0)
    {
      v118 = v115;
    }

    else
    {
      v118 = v121;
    }

    if (v122 <= 0)
    {
      v117 = v113;
    }
  }

  v113 = v117;
  v115 = v118;
LABEL_65:
  v124 = sub_1C1E50E30(0, 0xE000000000000000, v304);
  v125 = v123;
  if (!v124 && v123 == 0xE000000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (*v303 == 1)
    {
      v126 = v300;
      sub_1C1E53BBC();
      v124 = sub_1C1E5446C();
      v125 = v127;
      (v291)(v126, v301);
      v128 = sub_1C1E5469C();

      if (v128 > 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
    }

    v124 = 0;
    v125 = 0xE000000000000000;
  }

  else
  {
  }

LABEL_74:
  v300 = v104;
  v301 = v125;
  v298 = v124;
  if (v113 == 94 && v115 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    v129 = 0.0;
    if ((sub_1C1E53DAC() & 1) != 0 && *v303 == 1)
    {
      if (v124 == 46552 && v125 == 0xA200000000000000 || ((v195 = sub_1C1E54D2C(), v124 == 46040) ? (v196 = v125 == 0xA200000000000000) : (v196 = 0), !v196 ? (v197 = 0) : (v197 = 1), (v195 & 1) != 0 || (v197 & 1) != 0 || (sub_1C1E54D2C() & 1) != 0))
      {
        v129 = a10 / 6.0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
    v130 = swift_allocObject();
    v303 = xmmword_1C1E55C40;
    *(v130 + 16) = xmmword_1C1E55C40;
    v131 = *MEMORY[0x1E69DB648];
    *(v130 + 32) = *MEMORY[0x1E69DB648];
    v132 = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
    v133 = v293;
    *(v130 + 40) = v293;
    v134 = *MEMORY[0x1E69DB610];
    *(v130 + 64) = v132;
    *(v130 + 72) = v134;
    v135 = MEMORY[0x1E69E7DE0];
    *(v130 + 104) = MEMORY[0x1E69E7DE0];
    *(v130 + 80) = v83 + v81 + v129;
    v136 = v131;
    v137 = v134;
    v138 = *&v133;
    v139 = v136;
    v140 = v137;
    v141 = sub_1C1DC7850(v130);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFF0, &qword_1C1E5AE30);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v142 = swift_allocObject();
    *(v142 + 32) = v139;
    *(v142 + 16) = v303;
    v143 = v299;
    *(v142 + 40) = v299;
    *(v142 + 64) = v132;
    *(v142 + 72) = v140;
    *(v142 + 104) = v135;
    *(v142 + 80) = v83;
    v144 = v143;
    v145 = sub_1C1DC7850(v142);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v307[0] = v145;
    sub_1C1DC7B4C(v141, sub_1C1DFF048, 0, isUniquelyReferenced_nonNull_native, v307);

    v147 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v148 = sub_1C1E545BC();
    type metadata accessor for Key(0);
    sub_1C1DC181C(&qword_1EDE737E0, type metadata accessor for Key);
LABEL_83:
    v149 = sub_1C1E5450C();

    v150 = [v147 initWithString:v148 attributes:v149];
    v151 = v282;
    v50 = v283;
    v152 = &property descriptor for CalculateGraph.xAxisBounds;
    v153 = v299;
LABEL_89:

    v193 = v300;
    [v300 v152[49]];

    [v151 setObject:v193 forKey:v50];
    v194 = v193;
    sub_1C1E51E7C();

    goto LABEL_90;
  }

  if (v113 == 11614 && v115 == 0xE200000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
    v154 = swift_allocObject();
    v303 = xmmword_1C1E55C40;
    *(v154 + 16) = xmmword_1C1E55C40;
    v155 = *MEMORY[0x1E69DB648];
    *(v154 + 32) = *MEMORY[0x1E69DB648];
    v156 = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
    v157 = v293;
    *(v154 + 40) = v293;
    v158 = *MEMORY[0x1E69DB610];
    *(v154 + 64) = v156;
    *(v154 + 72) = v158;
    v159 = v83 + v81 + 0.0;
    v160 = MEMORY[0x1E69E7DE0];
    *(v154 + 104) = MEMORY[0x1E69E7DE0];
    *(v154 + 80) = v159;
    v161 = v155;
    v162 = v158;
    v163 = v161;
    v164 = v162;
    v302 = *&v157;
    v165 = v163;
    v166 = v164;
    v167 = sub_1C1DC7850(v154);
    swift_setDeallocating();
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFF0, &qword_1C1E5AE30);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v169 = swift_allocObject();
    *(v169 + 32) = v165;
    *(v169 + 16) = v303;
    v170 = v299;
    *(v169 + 40) = v299;
    *(v169 + 64) = v156;
    *(v169 + 72) = v166;
    *(v169 + 104) = v160;
    *(v169 + 80) = v83;
    v292 = v170;
    *&v291 = v165;
    *&v290 = COERCE_DOUBLE(v166);
    v171 = sub_1C1DC7850(v169);
    swift_setDeallocating();
    *&v287 = v168;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v172 = swift_isUniquelyReferenced_nonNull_native();
    v307[0] = v171;
    sub_1C1DC7B4C(v167, sub_1C1DFF048, 0, v172, v307);

    v173 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v174 = sub_1C1E545BC();
    type metadata accessor for Key(0);
    v176 = v175;
    v280 = sub_1C1DC181C(&qword_1EDE737E0, type metadata accessor for Key);
    v281 = v176;
    v177 = sub_1C1E5450C();

    v178 = [v173 initWithString:v174 attributes:v177];

    [v300 appendAttributedString_];
    v179 = swift_allocObject();
    v180 = v291;
    *(v179 + 32) = v291;
    *(v179 + 16) = v303;
    v181 = v302;
    *(v179 + 40) = v302;
    *(v179 + 64) = v156;
    v182 = v156;
    v183 = v290;
    *(v179 + 72) = *&v290;
    v184 = MEMORY[0x1E69E7DE0];
    *(v179 + 104) = MEMORY[0x1E69E7DE0];
    *(v179 + 80) = v159;
    v185 = v181;
    v186 = sub_1C1DC7850(v179);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v187 = swift_allocObject();
    *(v187 + 32) = v180;
    *(v187 + 16) = v303;
    v188 = v292;
    *(v187 + 40) = v292;
    *(v187 + 64) = v182;
    *(v187 + 72) = v183;
    *(v187 + 104) = v184;
    *(v187 + 80) = v83;
    v189 = v188;
    v190 = sub_1C1DC7850(v187);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v191 = swift_isUniquelyReferenced_nonNull_native();
    v307[0] = v190;
    sub_1C1DC7B4C(v186, sub_1C1DFF048, 0, v191, v307);

    v192 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v148 = sub_1C1E545BC();
LABEL_88:
    v149 = sub_1C1E5450C();

    v150 = [v192 initWithString:v148 attributes:v149];
    v151 = v282;
    v50 = v283;
    v153 = v299;
    v152 = &property descriptor for CalculateGraph.xAxisBounds;
    goto LABEL_89;
  }

  if (v113 == 95 && v115 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
    inited = swift_initStackObject();
    v303 = xmmword_1C1E55C40;
    *(inited + 16) = xmmword_1C1E55C40;
    v199 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v200 = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
    v201 = v293;
    *(inited + 40) = v293;
    v202 = *MEMORY[0x1E69DB610];
    *(inited + 64) = v200;
    *(inited + 72) = v202;
    v203 = MEMORY[0x1E69E7DE0];
    *(inited + 104) = MEMORY[0x1E69E7DE0];
    *(inited + 80) = v83 + v82;
    v204 = v199;
    v205 = v202;
    v206 = *&v201;
    v207 = v204;
    v208 = v205;
    v209 = sub_1C1DC7850(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFF0, &qword_1C1E5AE30);
    swift_arrayDestroy();
    v210 = swift_allocObject();
    *(v210 + 32) = v207;
    *(v210 + 16) = v303;
    v211 = v299;
    *(v210 + 40) = v299;
    *(v210 + 64) = v200;
    *(v210 + 72) = v208;
    *(v210 + 104) = v203;
    *(v210 + 80) = v83;
    v212 = v211;
    v213 = sub_1C1DC7850(v210);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v214 = swift_isUniquelyReferenced_nonNull_native();
    v307[0] = v213;
    sub_1C1DC7B4C(v209, sub_1C1DFF048, 0, v214, v307);

    v192 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v148 = sub_1C1E545BC();
    type metadata accessor for Key(0);
    sub_1C1DC181C(&qword_1EDE737E0, type metadata accessor for Key);
    goto LABEL_88;
  }

  if (v113 == 10127586 && v115 == 0xA300000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {
    v215 = [v104 string];
    v216 = sub_1C1E545FC();
    v218 = v217;

    v219 = HIBYTE(v218) & 0xF;
    if ((v218 & 0x2000000000000000) == 0)
    {
      v219 = v216 & 0xFFFFFFFFFFFFLL;
    }

    if (v219)
    {
      if (sub_1C1E53B2C())
      {
        v292 = 0;
      }

      else
      {
        v223 = sub_1C1E5210C();
        v224 = v300;
        v225 = [v300 length];
        if (__OFSUB__(v225, 1))
        {
          goto LABEL_139;
        }

        v226 = *MEMORY[0x1E69DB660];
        v292 = 1;
        [v224 addAttribute:v226 value:v223 range:{v225 - 1, 1}];
      }
    }

    else
    {
      v292 = 1;
    }

    sub_1C1DC7850(MEMORY[0x1E69E7CC0]);

    v222 = v299;
    v227 = [v299 fontDescriptor];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE40, &qword_1C1E5AE38);
    v228 = swift_initStackObject();
    v291 = xmmword_1C1E57DD0;
    *(v228 + 16) = xmmword_1C1E57DD0;
    v229 = *MEMORY[0x1E69DB8B0];
    *(v228 + 32) = *MEMORY[0x1E69DB8B0];
    *(v228 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A8, &qword_1C1E5A8C0);
    *(v228 + 40) = &unk_1F4186E88;
    v230 = v229;
    sub_1C1DF7514(v228);
    swift_setDeallocating();
    sub_1C1DC1870(v228 + 32, &qword_1EBF1CFE0, &qword_1C1E57E10);
    type metadata accessor for AttributeName(0);
    sub_1C1DC181C(&qword_1EBF1C338, type metadata accessor for AttributeName);
    v231 = sub_1C1E5450C();

    v232 = [v227 fontDescriptorByAddingAttributes_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
    v233 = swift_initStackObject();
    *(v233 + 16) = v291;
    v234 = *MEMORY[0x1E69DB648];
    *(v233 + 32) = *MEMORY[0x1E69DB648];
    v221 = v234;
    v235 = [v281 fontWithDescriptor:v232 size:a10];
    *(v233 + 64) = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
    *(v233 + 40) = v235;
    v220 = sub_1C1DC7850(v233);
    swift_setDeallocating();
    sub_1C1DC1870(v233 + 32, &qword_1EBF1CFF0, &qword_1C1E5AE30);

    v277 = 1;
  }

  else
  {
    v220 = sub_1C1DC7850(MEMORY[0x1E69E7CC0]);
    v277 = 0;
    v221 = *MEMORY[0x1E69DB648];
    v292 = 1;
    v222 = v299;
  }

  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
  v236 = swift_initStackObject();
  v287 = xmmword_1C1E55C40;
  *(v236 + 16) = xmmword_1C1E55C40;
  *(v236 + 32) = v221;
  v237 = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
  *(v236 + 40) = v222;
  v238 = *MEMORY[0x1E69DB610];
  *(v236 + 64) = v237;
  *(v236 + 72) = v238;
  *(v236 + 104) = MEMORY[0x1E69E7DE0];
  *(v236 + 80) = v83;
  v278 = v222;
  v239 = v221;
  v279 = v238;
  v240 = sub_1C1DC7850(v236);
  swift_setDeallocating();
  *&v290 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFF0, &qword_1C1E5AE30));
  swift_arrayDestroy();
  v241 = swift_isUniquelyReferenced_nonNull_native();
  v307[0] = v240;
  sub_1C1DC7B4C(v220, sub_1C1DFF048, 0, v241, v307);

  v242 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v243 = sub_1C1E545BC();

  type metadata accessor for Key(0);
  v245 = v244;
  sub_1C1DC181C(&qword_1EDE737E0, type metadata accessor for Key);
  *&v291 = v245;
  v246 = sub_1C1E5450C();

  v247 = [v242 initWithString:v243 attributes:v246];

  v248 = v300;
  [v300 appendAttributedString_];

  v249 = v301;
  if (v292)
  {
LABEL_122:
    if (sub_1C1E53DAC() & 1) != 0 && (v277 & *v303) == 1 && (v298 == 46552 && v249 == 0xA200000000000000 || ((v263 = v298, v264 = sub_1C1E54D2C(), v263 == 46040) ? (v265 = v249 == 0xA200000000000000) : (v265 = 0), !v265 ? (v266 = 0) : (v266 = 1), (v264 & 1) != 0 || (v266 & 1) != 0 || (sub_1C1E54D2C())))
    {
      v252 = swift_initStackObject();
      *(v252 + 16) = xmmword_1C1E57DD0;
      *(v252 + 32) = v239;
      v253 = v239;
      v254 = [v281 systemFontOfSize:a10 * 0.8 weight:v72];
      *(v252 + 64) = v237;
      *(v252 + 40) = v254;
      v255 = sub_1C1DC7850(v252);
      swift_setDeallocating();
      sub_1C1DC1870(v252 + 32, &qword_1EBF1CFF0, &qword_1C1E5AE30);
      v256 = swift_initStackObject();
      *(v256 + 32) = v253;
      *(v256 + 16) = v287;
      v257 = v278;
      *(v256 + 40) = v278;
      *(v256 + 64) = v237;
      v258 = v279;
      *(v256 + 72) = v279;
      *(v256 + 104) = MEMORY[0x1E69E7DE0];
      *(v256 + 80) = v83;
      v259 = v257;
      v260 = v258;
      v261 = sub_1C1DC7850(v256);
      swift_setDeallocating();
      swift_arrayDestroy();
      v262 = swift_isUniquelyReferenced_nonNull_native();
      v307[0] = v261;
      sub_1C1DC7B4C(v255, sub_1C1DFF048, 0, v262, v307);

      v147 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    }

    else
    {
      v267 = sub_1C1DC7850(MEMORY[0x1E69E7CC0]);
      v268 = swift_initStackObject();
      *(v268 + 32) = v239;
      *(v268 + 16) = v287;
      v269 = v278;
      *(v268 + 40) = v278;
      *(v268 + 64) = v237;
      v270 = v279;
      *(v268 + 72) = v279;
      *(v268 + 104) = MEMORY[0x1E69E7DE0];
      *(v268 + 80) = v83;
      v271 = v269;
      v272 = v239;
      v273 = v270;
      v274 = sub_1C1DC7850(v268);
      swift_setDeallocating();
      swift_arrayDestroy();
      v275 = swift_isUniquelyReferenced_nonNull_native();
      v307[0] = v274;
      sub_1C1DC7B4C(v267, sub_1C1DFF048, 0, v275, v307);

      v147 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    }

    v148 = sub_1C1E545BC();
    goto LABEL_83;
  }

  v250 = sub_1C1E5210C();
  v251 = [v248 length];
  if (!__OFSUB__(v251, 1))
  {
    [v248 addAttribute:*MEMORY[0x1E69DB660] value:v250 range:{v251 - 1, 1}];

    goto LABEL_122;
  }

  __break(1u);
LABEL_139:
  __break(1u);

  __break(1u);

  __break(1u);

  __break(1u);
}

uint64_t sub_1C1DC716C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1DC71AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1DC71E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 128);

  v8 = *(v0 + 152);

  return MEMORY[0x1EEE6BDD0](v0, 169, 7);
}

uint64_t sub_1C1DC7278()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1C1DC72E4()
{
  type metadata accessor for CalculateGraph(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDE75DC0 = result;
  return result;
}

unint64_t sub_1C1DC733C()
{
  result = qword_1EDE73808[0];
  if (!qword_1EDE73808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE73808);
  }

  return result;
}

uint64_t sub_1C1DC7390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculateExpressionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DC73F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculateExpressionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DC7458(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1DC7490(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1E549CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C1DC74E4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  sub_1C1E5432C();
  sub_1C1DC181C(&qword_1EDE738A8, MEMORY[0x1E6992120]);
  return sub_1C1E545AC() & 1;
}

uint64_t sub_1C1DC7594(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1C6910730](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1C1E54ACC();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1C1DC76E0()
{
  result = sub_1C1E51F9C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1C1E520FC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t _s14descr1F4186469V7DotViewVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

unint64_t sub_1C1DC7804(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1C1E5479C();
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1DC7850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFE8, &qword_1C1E5AE40);
    v3 = sub_1C1E54C3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1DC1424(v4, &v11, &qword_1EBF1CFF0, &qword_1C1E5AE30);
      v5 = v11;
      result = sub_1C1DC79A0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C1DC7B3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1DC79A8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1C1E545FC();
  sub_1C1E54D7C();
  sub_1C1E5468C();
  v4 = sub_1C1E54DAC();

  return sub_1C1DC7A38(a1, v4);
}

unint64_t sub_1C1DC7A38(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1C1E545FC();
      v9 = v8;
      if (v7 == sub_1C1E545FC() && v9 == v10)
      {
        break;
      }

      v12 = sub_1C1E54D2C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

_OWORD *sub_1C1DC7B3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1C1DC7B4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v6) = a4;
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v46 = a1;
  v47 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v48 = v8;
  v49 = 0;
  v50 = v11 & v9;
  v51 = a2;
  v52 = a3;

  sub_1C1DC7EB0(&qword_1EBF1DE48, &qword_1C1E5AE48, &v44);
  v12 = v44;
  if (!v44)
  {
    goto LABEL_25;
  }

  sub_1C1DC7B3C(v45, v43);
  v13 = *a5;
  result = sub_1C1DC79A0(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  LOBYTE(v20) = v15;
  if (v13[3] < v19)
  {
    sub_1C1E4FBB0(v19, v6 & 1, &qword_1EBF1CFE8, &qword_1C1E5AE40);
    v21 = *a5;
    result = sub_1C1DC79A0(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for Key(0);
    result = sub_1C1E54D4C();
    __break(1u);
  }

  if ((v6 & 1) == 0)
  {
    v26 = result;
    sub_1C1E50708(&qword_1EBF1CFE8, &qword_1C1E5AE40);
    result = v26;
    v23 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v20)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_1C1DC7B3C(v43, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + 8 * result) = v12;
  result = sub_1C1DC7B3C(v43, (v23[7] + 32 * result));
  v27 = v23[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v23[2] = v28;
LABEL_15:
    sub_1C1DC7EB0(&qword_1EBF1DE48, &qword_1C1E5AE48, &v44);
    v29 = v44;
    if (v44)
    {
      v6 = &qword_1C1E5AE40;
      v12 = 1;
      v20 = &qword_1EBF1DE48;
      do
      {
        sub_1C1DC7B3C(v45, v43);
        v32 = *a5;
        result = sub_1C1DC79A0(v29);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_26;
        }

        v37 = v33;
        if (v32[3] < v36)
        {
          sub_1C1E4FBB0(v36, 1, &qword_1EBF1CFE8, &qword_1C1E5AE40);
          v38 = *a5;
          result = sub_1C1DC79A0(v29);
          if ((v37 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (v37)
        {
          v30 = result;

          v31 = (v40[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          sub_1C1DC7B3C(v43, v31);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          *(v40[6] + 8 * result) = v29;
          result = sub_1C1DC7B3C(v43, (v40[7] + 32 * result));
          v41 = v40[2];
          v18 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v40[2] = v42;
        }

        sub_1C1DC7EB0(&qword_1EBF1DE48, &qword_1C1E5AE48, &v44);
        v29 = v44;
      }

      while (v44);
    }

LABEL_25:
    sub_1C1DC7EA8();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t *sub_1C1DC7EB0@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  if (v11)
  {
    v12 = v3[3];
LABEL_10:
    v16 = (v11 - 1) & v11;
    v17 = __clz(__rbit64(v11)) | (v12 << 6);
    v18 = *(*(v7 + 48) + 8 * v17);
    sub_1C1DFF8A8(*(v7 + 56) + 32 * v17, &v22);
    *&v25[0] = v18;
    sub_1C1DC7B3C(&v22, (v25 + 8));
    result = v18;
    v19 = *&v25[0];
    v15 = v12;
LABEL_11:
    *v3 = v7;
    v3[1] = v8;
    v3[2] = v10;
    v3[3] = v15;
    v3[4] = v16;
    if (v19)
    {
      v21 = v3[5];
      v20 = v3[6];
      v22 = v19;
      v23 = *(v25 + 8);
      v24 = *(&v25[1] + 8);
      v21(&v22);
      return sub_1C1DC1870(&v22, v5, a2);
    }

    else
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    v13 = (v10 + 64) >> 6;
    if (v13 <= v9 + 1)
    {
      v14 = v9 + 1;
    }

    else
    {
      v14 = (v10 + 64) >> 6;
    }

    v15 = v14 - 1;
    while (1)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        v19 = 0;
        v16 = 0;
        memset(v25, 0, 40);
        goto LABEL_11;
      }

      v11 = *(v8 + 8 * v12);
      ++v9;
      if (v11)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C1DC8008(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1DC80AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C1E5296C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1C1E5207C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C1DC81E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1E51E6C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C1DC8268(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD88, &qword_1C1E5AB28);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD90, &qword_1C1E5AB30);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDB0, &qword_1C1E5AB50);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C1DC83EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD88, &qword_1C1E5AB28);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD90, &qword_1C1E5AB30);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDB0, &qword_1C1E5AB50);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1C1DC8564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C1E5296C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1C1E5207C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C1DC869C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1E51E6C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

unint64_t sub_1C1DC872C()
{
  result = qword_1EDE73B50;
  if (!qword_1EDE73B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DDF0, &qword_1C1E5AC88);
    sub_1C1DC87B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B50);
  }

  return result;
}

unint64_t sub_1C1DC87B0()
{
  result = qword_1EDE73B58;
  if (!qword_1EDE73B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DDB8, &qword_1C1E5AB58);
    sub_1C1DC883C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B58);
  }

  return result;
}

unint64_t sub_1C1DC883C()
{
  result = qword_1EDE73B68;
  if (!qword_1EDE73B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DDA8, &qword_1C1E5AB48);
    sub_1C1DC181C(qword_1EDE73A28, _s13LabelFractionVMa);
    sub_1C1DC181C(&qword_1EDE73AD8, _s11LabelSymbolVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B68);
  }

  return result;
}

uint64_t CalculateExpression.Label.body.getter@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD88, &qword_1C1E5AB28);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v55 = &v51 - v4;
  v5 = sub_1C1E51E6C();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD90, &qword_1C1E5AB30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v59 = &v51 - v12;
  v63 = _s11LabelSymbolVMa(0);
  v58 = *(v63 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v54 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD98, &qword_1C1E5AB38);
  v15 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v51 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDA0, &qword_1C1E5AB40);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v51 - v19;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDA8, &qword_1C1E5AB48);
  v21 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v23 = &v51 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDB0, &qword_1C1E5AB50);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v51 - v26;
  v28 = _s13LabelFractionVMa(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for CalculateExpression.Label(0);
  sub_1C1DC1424(v1 + *(v33 + 24), v27, &qword_1EBF1DDB0, &qword_1C1E5AB50);
  if ((*(v29 + 48))(v27, 1, v28) != 1)
  {
    sub_1C1DCA204(v27, v32, _s13LabelFractionVMa);
    sub_1C1DCA26C(v32, v20, _s13LabelFractionVMa);
    swift_storeEnumTagMultiPayload();
    sub_1C1DC181C(qword_1EDE73A28, _s13LabelFractionVMa);
    sub_1C1DC181C(&qword_1EDE73AD8, _s11LabelSymbolVMa);
    sub_1C1E52CEC();
    sub_1C1DC1424(v23, v60, &qword_1EBF1DDA8, &qword_1C1E5AB48);
    swift_storeEnumTagMultiPayload();
    sub_1C1DC883C();
    v41 = v64;
    sub_1C1E52CEC();
    sub_1C1DC1870(v23, &qword_1EBF1DDA8, &qword_1C1E5AB48);
    v42 = _s13LabelFractionVMa;
    v43 = v32;
LABEL_7:
    sub_1C1DCA2D4(v43, v42);
LABEL_8:
    v40 = 0;
    goto LABEL_9;
  }

  sub_1C1DC1870(v27, &qword_1EBF1DDB0, &qword_1C1E5AB50);
  v34 = v59;
  sub_1C1DC1424(v1 + *(v33 + 20), v59, &qword_1EBF1DD90, &qword_1C1E5AB30);
  if ((*(v58 + 48))(v34, 1, v63) != 1)
  {
    v44 = v54;
    sub_1C1DCA204(v34, v54, _s11LabelSymbolVMa);
    sub_1C1DCA26C(v44, v20, _s11LabelSymbolVMa);
    swift_storeEnumTagMultiPayload();
    sub_1C1DC181C(qword_1EDE73A28, _s13LabelFractionVMa);
    sub_1C1DC181C(&qword_1EDE73AD8, _s11LabelSymbolVMa);
    sub_1C1E52CEC();
    sub_1C1DC1424(v23, v60, &qword_1EBF1DDA8, &qword_1C1E5AB48);
    swift_storeEnumTagMultiPayload();
    sub_1C1DC883C();
    v41 = v64;
    sub_1C1E52CEC();
    sub_1C1DC1870(v23, &qword_1EBF1DDA8, &qword_1C1E5AB48);
    v42 = _s11LabelSymbolVMa;
    v43 = v44;
    goto LABEL_7;
  }

  sub_1C1DC1870(v34, &qword_1EBF1DD90, &qword_1C1E5AB30);
  v35 = v55;
  sub_1C1DC1424(v1, v55, &qword_1EBF1DD88, &qword_1C1E5AB28);
  v37 = v56;
  v36 = v57;
  v38 = (*(v56 + 48))(v35, 1, v57);
  v39 = v60;
  if (v38 != 1)
  {
    v47 = v53;
    (*(v37 + 32))(v53, v35, v36);
    (*(v37 + 16))(v52, v47, v36);
    *v39 = sub_1C1E5315C();
    *(v39 + 8) = v48;
    *(v39 + 16) = v49 & 1;
    *(v39 + 24) = v50;
    swift_storeEnumTagMultiPayload();
    sub_1C1DC883C();
    v41 = v64;
    sub_1C1E52CEC();
    (*(v37 + 8))(v47, v36);
    goto LABEL_8;
  }

  sub_1C1DC1870(v35, &qword_1EBF1DD88, &qword_1C1E5AB28);
  v40 = 1;
  v41 = v64;
LABEL_9:
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDB8, &qword_1C1E5AB58);
  return (*(*(v45 - 8) + 56))(v41, v40, 1, v45);
}

unint64_t sub_1C1DC9240(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = *(a10 + 16);
  if (a3 >> 14 < result >> 14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = sub_1C1E5479C();
  v15 = MEMORY[0x1C6910230](v14);
  v17 = v16;

  swift_beginAccess();
  *(a10 + 16) = a4;
  sub_1C1E5479C();
  sub_1C1DC93FC();
  sub_1C1DC733C();
  v18 = sub_1C1E549EC();

  if (!v18[2])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = v18[4];
  v20 = v18[5];

  a11(v15, v17, v19, v20);

  v21 = v18[2];
  v22 = v21 - 1;
  if (v21 == 1)
  {
  }

  if (v21)
  {
    v23 = v18 + 7;
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;

      a11(95, 0xE100000000000000, v24, v25);

      v23 += 2;
      --v22;
    }

    while (v22);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1C1DC93FC()
{
  result = qword_1EDE73800;
  if (!qword_1EDE73800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73800);
  }

  return result;
}

uint64_t sub_1C1DC9450(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void), double a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t), uint64_t a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, uint64_t a18, uint64_t a19, void (*a20)(uint64_t, uint64_t, double), uint64_t a21, void (*a22)(uint64_t, uint64_t), uint64_t a23, void *a24, void (*a25)(double), uint64_t a26, void *a27, void (*a28)(uint64_t, uint64_t, unint64_t), uint64_t a29, double a30, char a31)
{
  v31 = a5();
  v33 = v32;
  v83 = v31;
  if (v31 == a1 && v32 == a2 || (sub_1C1E54D2C() & 1) != 0)
  {

    v83 = a8(a1, a2);
    v35 = v34;
  }

  else
  {
    v35 = v33;
  }

  v36 = (a5)(a3, a4);
  v38 = v37;
  if (a17)
  {
    sub_1C1DC9F68(a3, a4);
    if (v39)
    {
      v40 = sub_1C1E5457C();

      if (v40)
      {

        v41 = sub_1C1E53B8C();
LABEL_14:
        v36 = v41;
        v38 = v42;
        goto LABEL_15;
      }
    }
  }

  if (v36 == a3 && v38 == a4 || (sub_1C1E54D2C() & 1) != 0)
  {

    v41 = a8(a3, a4);
    goto LABEL_14;
  }

LABEL_15:
  v43 = v83;
  v44 = v35;
  if (v83 == 94 && v35 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    v45 = 0.0;
    if (sub_1C1E53DAC())
    {
      swift_beginAccess();
      if (*(a19 + 16) == 1)
      {
        if (v36 == 46552 && v38 == 0xA200000000000000 || ((v47 = sub_1C1E54D2C(), v36 == 46040) ? (v48 = v38 == 0xA200000000000000) : (v48 = 0), !v48 ? (v49 = 0) : (v49 = 1), (v47 & 1) != 0 || (v49 & 1) != 0 || (sub_1C1E54D2C() & 1) != 0))
        {
          v45 = a6 / 6.0;
        }
      }
    }

    a20(v36, v38, v45);
  }

  if (v83 == 11614 && v35 == 0xE200000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    a20(45, 0xE100000000000000, 0.0);
    a20(v36, v38, 0.0);
    goto LABEL_28;
  }

  if (v83 == 95 && v35 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    a22(v36, v38);
LABEL_28:
  }

  if (v83 == 10127586 && v35 == 0xA300000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {
    v50 = [a24 string];
    v51 = sub_1C1E545FC();
    v53 = v52;

    v54 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v54 = v51 & 0xFFFFFFFFFFFFLL;
    }

    v55 = 0.0;
    if (v54)
    {
      if (sub_1C1E53B2C())
      {
        v56 = 0;
        v55 = a6 * -0.28;
LABEL_56:
        sub_1C1DC7850(MEMORY[0x1E69E7CC0]);

        v59 = [a27 fontDescriptor];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE40, &qword_1C1E5AE38);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C1E57DD0;
        v61 = *MEMORY[0x1E69DB8B0];
        *(inited + 32) = *MEMORY[0x1E69DB8B0];
        *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A8, &qword_1C1E5A8C0);
        *(inited + 40) = &unk_1F4187120;
        v62 = v61;
        sub_1C1DF7514(inited);
        swift_setDeallocating();
        sub_1C1DC1870(inited + 32, &qword_1EBF1CFE0, &qword_1C1E57E10);
        type metadata accessor for AttributeName(0);
        sub_1C1DC181C(&qword_1EBF1C338, type metadata accessor for AttributeName);
        v63 = sub_1C1E5450C();

        v64 = [v59 fontDescriptorByAddingAttributes_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
        v65 = swift_initStackObject();
        *(v65 + 16) = xmmword_1C1E57DD0;
        v66 = *MEMORY[0x1E69DB648];
        *(v65 + 32) = *MEMORY[0x1E69DB648];
        v67 = objc_opt_self();
        v68 = v66;
        v69 = [v67 fontWithDescriptor:v64 size:a6];
        *(v65 + 64) = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
        *(v65 + 40) = v69;
        v57 = sub_1C1DC7850(v65);
        swift_setDeallocating();
        sub_1C1DC1870(v65 + 32, &qword_1EBF1CFF0, &qword_1C1E5AE30);

        v58 = 1;
        v44 = v35;
        v43 = v83;
        goto LABEL_57;
      }

      a25(a6 * -0.28);
    }

    v56 = 1;
    goto LABEL_56;
  }

  v57 = sub_1C1DC7850(MEMORY[0x1E69E7CC0]);
  v58 = 0;
  v55 = 0.0;
  v56 = 1;
LABEL_57:
  a28(v43, v44, v57);

  if ((v56 & 1) == 0)
  {
    (a25)(v70, v55);
  }

  if (sub_1C1E53DAC() & 1) != 0 && (swift_beginAccess(), (v58 & *(a19 + 16)) == 1) && (v36 == 46552 && v38 == 0xA200000000000000 || ((v79 = sub_1C1E54D2C(), v36 == 46040) ? (v80 = v38 == 0xA200000000000000) : (v80 = 0), !v80 ? (v81 = 0) : (v81 = 1), (v79 & 1) != 0 || (v81 & 1) != 0 || (sub_1C1E54D2C())))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
    v71 = swift_initStackObject();
    *(v71 + 16) = xmmword_1C1E57DD0;
    v72 = *MEMORY[0x1E69DB648];
    *(v71 + 32) = *MEMORY[0x1E69DB648];
    v73 = *MEMORY[0x1E69DB978];
    if (a31)
    {
      v74 = *MEMORY[0x1E69DB978];
    }

    else
    {
      v74 = a30;
    }

    v75 = objc_opt_self();
    v76 = v72;
    v77 = [v75 systemFontOfSize:a6 * 0.8 weight:v74];
    *(v71 + 64) = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
    *(v71 + 40) = v77;
    v78 = sub_1C1DC7850(v71);
    swift_setDeallocating();
    sub_1C1DC1870(v71 + 32, &qword_1EBF1CFF0, &qword_1C1E5AE30);
    a28(v36, v38, v78);
  }

  else
  {
    v82 = sub_1C1DC7850(MEMORY[0x1E69E7CC0]);
    a28(v36, v38, v82);
  }
}

uint64_t sub_1C1DC9D98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v15 = *(v12 + 144);
  v14 = *(v12 + 128);
  return sub_1C1DC9450(a1, a2, a3, a4, *(v12 + 16), *(v12 + 72), *(v12 + 24), *(v12 + 32), *(v12 + 40), *(v12 + 56), *(v12 + 80), *(v12 + 96), *(v12 + 112), *&v14, *&v15, a12, *(v12 + 48), *(v12 + 56), *(v12 + 64), *(v12 + 80), *(v12 + 88), *(v12 + 96), *(v12 + 104), *(v12 + 112), *(v12 + 120), v14, *(&v14 + 1), v15, *(&v15 + 1), *(v12 + 160), *(v12 + 168));
}

uint64_t sub_1C1DC9E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C1E5207C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a3 + 16) != 1)
  {
    goto LABEL_5;
  }

  sub_1C1E53BBC();
  v10 = sub_1C1E5446C();
  (*(v6 + 8))(v9, v5);
  if (sub_1C1E5469C() <= 0)
  {

LABEL_5:

    return a1;
  }

  return v10;
}

uint64_t sub_1C1DC9F68(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1C1E5476C();
  }

  else
  {
    return 0;
  }
}

void sub_1C1DC9FB0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E55C40;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v12 = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
  *(inited + 40) = a5;
  v13 = *MEMORY[0x1E69DB610];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  *(inited + 104) = MEMORY[0x1E69E7DE0];
  *(inited + 80) = a1;
  v14 = v11;
  v15 = a5;
  v16 = v13;
  v17 = sub_1C1DC7850(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFF0, &qword_1C1E5AE30);
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v17;
  sub_1C1DC7B4C(a4, sub_1C1DFF048, 0, isUniquelyReferenced_nonNull_native, &v23);

  v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v20 = sub_1C1E545BC();
  type metadata accessor for Key(0);
  sub_1C1DC181C(&qword_1EDE737E0, type metadata accessor for Key);
  v21 = sub_1C1E5450C();

  v22 = [v19 initWithString:v20 attributes:v21];

  [a6 appendAttributedString_];
}

uint64_t sub_1C1DCA204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1DCA26C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1DCA2D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C1DCA354()
{
  result = qword_1EDE73B78;
  if (!qword_1EDE73B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DE10, &unk_1C1E5ADC0);
    sub_1C1DCA40C();
    sub_1C1DC1124(&qword_1EDE73B28, &qword_1EBF1C248, &unk_1C1E5A430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B78);
  }

  return result;
}

unint64_t sub_1C1DCA40C()
{
  result = qword_1EDE73B98;
  if (!qword_1EDE73B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C978, &qword_1C1E572C8);
    sub_1C1DC1124(&qword_1EDE73B20, &qword_1EBF1C980, &qword_1C1E572D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B98);
  }

  return result;
}

id sub_1C1DCA4C8(double a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C190, &qword_1C1E55C68);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v56 - v7;
  v9 = v2[2];
  v10 = v2[3];
  v11 = v9 * v10;
  v12 = *v2;
  v13 = sub_1C1E53C8C();
  result = [v13 usesSignificantDigits];
  v15 = result;
  if (!result)
  {
    if (sub_1C1E53D5C())
    {

      v16 = 0;
    }

    else
    {
      sub_1C1E53CEC();
      v18 = sub_1C1E53A5C();

      v19 = 11.0;
      if (v11 <= 11.0)
      {
        v19 = v9 * v10;
      }

      if (v18)
      {
        v11 = v19;
      }

      v16 = 0;
    }

    goto LABEL_21;
  }

  if (a1 == INFINITY)
  {
    v16 = 10000;
LABEL_12:
    if (sub_1C1E53D5C())
    {
    }

    else
    {
      sub_1C1E53CEC();
      v20 = sub_1C1E53A5C();

      if ((v20 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v11 = 0.0;
LABEL_21:
    sub_1C1E53CEC();
    v21 = *(v2 + 4);
    v22 = sub_1C1E5352C();
    v23 = CalculateExpression.RichExpression.richString(fontSize:maxHeight:textColor:significantDigits:)(v9, a2, v22, v16, v15 ^ 1u);

    [v23 size];
    if (v24 >= a1)
    {
      v25 = type metadata accessor for CalculateExpressionView();
      sub_1C1DC1424(v2 + *(v25 + 40), v8, &qword_1EBF1C190, &qword_1C1E55C68);
      v26 = sub_1C1E530EC();
      if ((*(*(v26 - 8) + 48))(v8, 1, v26) != 1)
      {

        sub_1C1DC1870(v8, &qword_1EBF1C190, &qword_1C1E55C68);
        return v23;
      }

      sub_1C1DC1870(v8, &qword_1EBF1C190, &qword_1C1E55C68);
      if (v10 < 1.0)
      {
        sub_1C1E53CEC();
        v64 = v21;
        v27 = sub_1C1E5352C();
        v28 = CalculateExpression.RichExpression.richString(fontSize:maxHeight:textColor:significantDigits:)(v11, a2, v27, v16, v15 ^ 1u);

        [v28 size];
        if (v29 >= a1 || v11 >= v9)
        {

          return v28;
        }

        else
        {
          v30 = 0;
          v31 = a2 * 0.95;
          v61 = *MEMORY[0x1E69DB688];
          v58 = *MEMORY[0x1E69DB648];
          v57 = *MEMORY[0x1E69DB650];
          v32 = &property descriptor for CalculateGraph.xAxisBounds;
          v33 = v11;
          v62 = v13;
          v34 = 0x1E696A000;
          v59 = v15;
          v60 = v12;
          v56 = v16;
          do
          {
            v35 = v9 > v11 ? v30 : 7;
            v36 = v9 > v11 ? v33 + (v9 - v33) * 0.5 : v11;
            sub_1C1E53CEC();
            v37 = v64;
            sub_1C1E5352C();
            v38 = [objc_allocWithZone(*(v34 + 3392)) v32[42]];
            v66 = v38;
            v39 = sub_1C1E53A2C();
            v65 = v35;
            if (v39)
            {
              v63 = v39;
              swift_getErrorValue();
              sub_1C1E54D5C();
              v40 = objc_allocWithZone(*(v34 + 3392));
              v41 = sub_1C1E545BC();

              v42 = [v40 initWithString_];

              v43 = [objc_opt_self() systemFontOfSize_];
              v44 = v28;
              v45 = [v42 length];
              [v42 addAttribute:v58 value:v43 range:{0, v45}];
              sub_1C1DC0D28(0, &qword_1EDE737A8, 0x1E69DC888);

              v46 = sub_1C1E5499C();
              v47 = v45;
              v28 = v44;
              v15 = v59;
              [v42 addAttribute:v57 value:v46 range:{0, v47}];

              [v38 appendAttributedString_];
            }

            else
            {
              if (sub_1C1E53A8C())
              {
                v48 = sub_1C1E53DAC();
              }

              else
              {
                v48 = 0;
              }

              sub_1C1DC0D28(0, &qword_1EDE737A8, 0x1E69DC888);

              v49 = sub_1C1E5499C();
              v50 = sub_1C1E53A8C();
              if (sub_1C1E53A8C())
              {
                v51 = sub_1C1E53B2C();
                v15 = v59;
              }

              else
              {
                v51 = 0;
              }

              sub_1C1DCAFC8(&v66, v49, v50, v56, v15 ^ 1, v51 & 1, v48 & 1, v36, 0.0);
            }

            v32 = &property descriptor for CalculateGraph.xAxisBounds;
            v52 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
            [v52 setMinimumLineHeight_];
            [v52 setMaximumLineHeight_];
            v23 = v66;
            v53 = v52;
            v54 = [v23 length];
            [v23 addAttribute:v61 value:v53 range:{0, v54}];

            [v23 size];
            if (v65 >= 7)
            {
              break;
            }

            if (v55 >= a1)
            {
              v9 = v36;
              v34 = 0x1E696A000uLL;
            }

            else
            {
              v34 = 0x1E696A000;
              if (a1 + -1.0 <= v55)
              {
                break;
              }

              v33 = v36;
            }

            v30 = v65 + 1;
            v28 = v23;
          }

          while (v33 < v9);
        }

        return v23;
      }
    }

    return v23;
  }

  v17 = floor(a1 / (v11 * 0.655172414));
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v17 < 9.22337204e18)
  {
    if (v17 >= 30)
    {
      v16 = 30;
    }

    else
    {
      v16 = v17;
    }

    goto LABEL_12;
  }

LABEL_55:
  __break(1u);
  return result;
}

id CalculateExpression.RichExpression.richString(fontSize:maxHeight:textColor:significantDigits:)(double a1, double a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = &property descriptor for CalculateGraph.xAxisBounds;
  v10 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v30 = v10;
  v11 = sub_1C1E53A2C();
  if (v11)
  {
    v29 = v11;
    swift_getErrorValue();
    sub_1C1E54D5C();
    v12 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v13 = sub_1C1E545BC();

    v14 = [v12 initWithString_];

    v15 = [objc_opt_self() systemFontOfSize_];
    v16 = [v14 length];
    [v14 addAttribute:*MEMORY[0x1E69DB648] value:v15 range:{0, v16}];
    v17 = *MEMORY[0x1E69DB650];
    sub_1C1DC0D28(0, &qword_1EDE737A8, 0x1E69DC888);

    v18 = sub_1C1E5499C();
    v9 = &property descriptor for CalculateGraph.xAxisBounds;
    [v14 addAttribute:v17 value:v18 range:{0, v16}];

    [v10 appendAttributedString_];
  }

  else
  {
    if (sub_1C1E53A8C())
    {
      v19 = sub_1C1E53DAC();
    }

    else
    {
      v19 = 0;
    }

    sub_1C1DC0D28(0, &qword_1EDE737A8, 0x1E69DC888);

    v20 = sub_1C1E5499C();
    v21 = sub_1C1E53A8C();
    if (sub_1C1E53A8C())
    {
      v22 = sub_1C1E53B2C();
      v9 = &property descriptor for CalculateGraph.xAxisBounds;
    }

    else
    {
      v22 = 0;
    }

    sub_1C1DCAFC8(&v30, v20, v21, a4, a5 & 1, v22 & 1, v19 & 1, a1, 0.0);
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) v9[42]];
  v24 = a2 * 0.95;
  [v23 setMinimumLineHeight_];
  [v23 setMaximumLineHeight_];
  v25 = *MEMORY[0x1E69DB688];
  v26 = v30;
  v27 = v23;
  [v26 addAttribute:v25 value:v27 range:{0, objc_msgSend(v26, sel_length)}];

  return v26;
}

uint64_t sub_1C1DCAFC8(id *a1, void *a2, char *a3, uint64_t a4, int a5, int a6, int a7, double a8, double a9)
{
  v341 = a7;
  v348 = a6;
  v343 = a5;
  v342 = a4;
  v354 = a3;
  v347 = a2;
  v358 = a1;
  v373 = *MEMORY[0x1E69E9840];
  v12 = *(*(sub_1C1E51E6C() - 8) + 64);
  (MEMORY[0x1EEE9AC00])();
  v329 = &v267 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D088, &qword_1C1E58150);
  v14 = *(*(v298 - 8) + 64);
  v15 = (MEMORY[0x1EEE9AC00])();
  v274 = &v267 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v289 = &v267 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v294 = &v267 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D090, &qword_1C1E58158);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v269 = &v267 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v272 = &v267 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v273 = &v267 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v267 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v267 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v290 = &v267 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v292 = &v267 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v291 = &v267 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v299 = &v267 - v40;
  v319 = sub_1C1E53CBC();
  v41 = *(v319 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x1EEE9AC00](v319);
  v318 = &v267 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v317 = &v267 - v45;
  v46 = sub_1C1E5443C();
  v47 = *(v46 - 8);
  v48 = *(v47 + 8);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = &v267 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = &v267 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v337 = &v267 - v55;
  v340 = sub_1C1E53A4C();
  v56 = *(v340 - 8);
  v57 = *(v56 + 64);
  v58 = MEMORY[0x1EEE9AC00](v340);
  v325 = &v267 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v282 = &v267 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v326 = &v267 - v62;
  v336 = v9;
  v63 = sub_1C1E53AAC();
  v64 = v63;
  if (v63 >> 62)
  {
    goto LABEL_179;
  }

  for (i = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C1E54ACC())
  {
    v66 = 0;
    v339 = *MEMORY[0x1E69920B8];
    v338 = (v56 + 88);
    v327 = *MEMORY[0x1E69920B0];
    v301 = a9 + a8 * -0.14;
    v300 = a8 * 0.45;
    v308 = a9 + a8 * -0.08;
    *&v305 = 0.7;
    v67 = (v47 + 8);
    v357 = (v47 + 104);
    v315 = (v41 + 104);
    v314 = (v41 + 8);
    v41 = 0;
    v307 = (v47 + 16);
    v271 = (v56 + 104);
    v56 = 0;
    v277 = (v47 + 56);
    v68 = *MEMORY[0x1E69DB980];
    v293 = (v47 + 48);
    v268 = (v47 + 32);
    v316 = *MEMORY[0x1E69DB968];
    v310 = a8 * 0.02;
    v288 = a8 * -0.25;
    v281 = xmmword_1C1E58C30;
    v280 = xmmword_1C1E58C40;
    v309 = 1.14;
    v295 = 1.06;
    v306 = xmmword_1C1E58C50;
    v312 = *MEMORY[0x1E69920C8];
    v304 = *MEMORY[0x1E69920C0];
    v331 = *MEMORY[0x1E6992180];
    v346 = *MEMORY[0x1E6992178];
    v313 = *MEMORY[0x1E6992100];
    v279 = *MEMORY[0x1E6992148];
    v303 = *MEMORY[0x1E6992188];
    v278 = *MEMORY[0x1E6992198];
    v287 = *MEMORY[0x1E6992170];
    v270 = *MEMORY[0x1E69921A0];
    v345 = *MEMORY[0x1E6992150];
    v328 = *MEMORY[0x1E6992158];
    v334 = *MEMORY[0x1E6992190];
    v324 = *MEMORY[0x1E69DB648];
    v323 = *MEMORY[0x1E69DB610];
    v330 = *MEMORY[0x1E69DB660];
    v322 = *MEMORY[0x1E69921B0];
    v311 = *MEMORY[0x1E6992138];
    v320 = *MEMORY[0x1E69DB650];
    v335 = v64 & 0xC000000000000001;
    v321 = v64 & 0xFFFFFFFFFFFFFF8;
    v47 = v354;
    v344 = v51;
    v332 = i;
    v359 = v67;
    v267 = v30;
    v275 = v33;
    v333 = v64;
    while (1)
    {
      v353 = v66;
      v355 = v56;
      if (v335)
      {
        v56 = MEMORY[0x1C6910730](v41, v64);
        v71 = (v41 + 1);
        if (__OFADD__(v41, 1))
        {
          break;
        }

        goto LABEL_13;
      }

      if (v41 >= *(v321 + 16))
      {
        goto LABEL_177;
      }

      v56 = *(v64 + 8 * v41 + 32);

      v71 = (v41 + 1);
      if (__OFADD__(v41, 1))
      {
        break;
      }

LABEL_13:
      v351 = v71;
      v352 = v41;
      if (sub_1C1E5437C())
      {
        v72 = v326;
        sub_1C1E53A6C();
        v73 = (*v338)(v72, v340);
        v74.n128_f64[0] = a9;
        v75.n128_f64[0] = a8;
        if (v73 != v339)
        {
          v74.n128_f64[0] = a8 * 0.35 + a9;
          v75.n128_f64[0] = a8 * 0.7;
          if (v73 != v327)
          {
            if (v73 == v312)
            {
              v74.n128_f64[0] = v308;
              v75.n128_f64[0] = a8 * 0.7;
              if (v47)
              {
                v76 = sub_1C1E53D2C();
                v74.n128_f64[0] = v301;
                v75.n128_f64[0] = v300;
                if (v76 != 1)
                {
                  v74.n128_f64[0] = v308;
                  v75.n128_f64[0] = a8 * 0.7;
                }
              }
            }

            else
            {
              v74.n128_f64[0] = a9;
              v75.n128_f64[0] = a8;
              if (v73 != v304)
              {
                goto LABEL_186;
              }
            }
          }
        }

        sub_1C1DCAFC8(v358, v347, v47, v342, v343 & 1, v348 & 1, v341 & 1, v75, v74);
      }

      v77 = v337;
      sub_1C1E543AC();
      v78 = sub_1C1E5441C();
      v30 = *v67;
      (*v67)(v77, v46);
      if (v78)
      {
        sub_1C1E543AC();
        v79 = v357;
        (*v357)(v51, v331, v46);
        v80 = sub_1C1E5442C();
        (v30)(v51, v46);
        (v30)(v54, v46);
        v81 = v80 ^ 1;
        if (((v80 ^ 1) & 1) == 0 && v47)
        {
          v81 = sub_1C1E53D2C() == 1;
        }
      }

      else
      {
        v81 = 0;
        v79 = v357;
      }

      LODWORD(v349) = v81;
      v368 = 0;
      sub_1C1E543AC();
      v360 = *v79;
      v360(v51, v346, v46);
      v82 = sub_1C1E5442C();
      (v30)(v51, v46);
      (v30)(v54, v46);
      v361 = v56;
      if ((v82 & 1) == 0)
      {
        if (!v47)
        {
LABEL_38:
          v350 = sub_1C1E5439C();
          v93 = v92;
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      if (!v47)
      {
        goto LABEL_38;
      }

      v83 = v317;
      sub_1C1E53B7C();
      v84 = v318;
      v85 = v319;
      (*v315)(v318, v313, v319);
      sub_1C1DCE150(&qword_1EDE738B8, MEMORY[0x1E6992110]);
      sub_1C1E547BC();
      sub_1C1E547BC();
      v86 = *v314;
      (*v314)(v84, v85);
      v86(v83, v85);
      if (*&v366 != v364)
      {

        v51 = v344;
LABEL_40:

        v350 = sub_1C1E5436C();
        v93 = v94;
LABEL_41:

        goto LABEL_42;
      }

      sub_1C1E5444C();
      sub_1C1E5439C();
      v87 = sub_1C1E53C3C();
      v89 = v88;
      v91 = v90;

      if (v91)
      {
        v51 = v344;
      }

      else
      {
        v51 = v344;
        if ((v343 & 1) == 0 && v87 > v342 && v89 >= 1)
        {
          if (__OFADD__(v89, 1))
          {
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
          }

          if (__OFSUB__(v87, v89 + 1))
          {
            goto LABEL_184;
          }
        }
      }

      v154 = COERCE_DOUBLE(sub_1C1E5434C());
      v93 = v155;
      sub_1C1E5439C();
      v156 = sub_1C1E53C7C();

      if (v156)
      {
        v366 = v154;
        v367 = v93;
        v364 = 10911970;
        v365 = 0xA300000000000000;
        v362 = 0;
        v363 = 0xE000000000000000;
        sub_1C1DC733C();
        v350 = sub_1C1E54A1C();
        v158 = v157;

        v93 = v158;
      }

      else
      {
        v350 = *&v154;
      }

      v47 = v354;
      if ((v341 & 1) == 0)
      {
        goto LABEL_41;
      }

      v159 = v350;
      sub_1C1E105C0(101, 0xE100000000000000, v350, v93);
      if (v160)
      {
        goto LABEL_41;
      }

      v161 = sub_1C1E546AC();
      v162 = sub_1C1DC7804(v161, v159, v93);
      *&v163 = COERCE_DOUBLE(MEMORY[0x1C6910230](v162));
      v165 = v164;

      v366 = *&v163;
      v367 = v165;

      v166 = sub_1C1E5474C();

      if (v166)
      {
        sub_1C1E546DC();
      }

      v167 = sub_1C1E5479C();
      v169 = v168;
      v171 = v170;
      v173 = v172;

      v285 = MEMORY[0x1C6910230](v167, v169, v171, v173);
      v296 = v174;

      v175 = v360;
      v360(v54, v279, v46);
      v176 = *v307;
      v177 = v344;
      (*v307)(v344, v54, v46);
      v178 = sub_1C1E543EC();
      v179 = *(v178 + 48);
      v180 = *(v178 + 52);
      swift_allocObject();
      v356 = sub_1C1E5438C();
      (v30)(v54, v46);
      v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D8, &qword_1C1E5AB70);
      v297 = swift_allocObject();
      *(v297 + 16) = v281;
      v182 = v366;
      v181 = v367;
      v175(v54, v303, v46);
      v183 = v181;
      v350 = v176;
      v176(v177, v54, v46);
      v184 = *(v178 + 48);
      v185 = *(v178 + 52);
      v302 = v178;
      v186 = v182;
      swift_allocObject();

      v187 = sub_1C1E5438C();
      (v30)(v54, v46);
      *(v297 + 32) = v187;
      v188 = sub_1C1E53ADC();
      v189 = *(v188 + 48);
      v190 = *(v188 + 52);
      swift_allocObject();
      swift_retain_n();
      sub_1C1E53A9C();
      sub_1C1E543CC();
      if (sub_1C1E543BC())
      {
        (*v271)(v282, v327, v340);
        sub_1C1E53A7C();
      }

      v191 = HIBYTE(v183) & 0xF;
      if ((v183 & 0x2000000000000000) == 0)
      {
        v191 = *&v182 & 0xFFFFFFFFFFFFLL;
      }

      v51 = v344;
      v283 = v183;
      v286 = v188;
      if (!v191 || *&v186 == 45 && v183 == 0xE100000000000000)
      {
        LODWORD(v297) = 1;
      }

      else
      {
        LODWORD(v297) = sub_1C1E54D2C();
      }

      v192 = swift_allocObject();
      *(v192 + 16) = v280;
      v193 = v360;
      v360(v54, v303, v46);
      v194 = v350;
      (v350)(v51, v54, v46);
      v195 = v302;
      v196 = v302[12];
      v197 = *(v302 + 26);
      swift_allocObject();

      v198 = sub_1C1E5438C();
      (v30)(v54, v46);
      *(v192 + 32) = v198;
      v193(v54, v278, v46);
      v199 = v192;
      v194(v51, v54, v46);
      v200 = v195[12];
      v201 = *(v195 + 26);
      swift_allocObject();
      v202 = sub_1C1E5438C();
      (v30)(v54, v46);
      *(v192 + 40) = v202;
      v203 = sub_1C1E53C8C();
      v204 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v205 = [v203 stringFromNumber_];

      if (v205)
      {
        sub_1C1E545FC();
      }

      v206 = v293;
      v360(v54, v303, v46);
      (v350)(v51, v54, v46);
      v207 = v302[12];
      v208 = *(v302 + 26);
      swift_allocObject();
      v209 = sub_1C1E5438C();
      (v30)(v54, v46);
      v210 = v356;
      *(v199 + 48) = v209;
      *(v199 + 56) = v210;
      v276 = v199;
      v364 = v199;
      if (v355)
      {

        v211 = v299;
        sub_1C1E543AC();
        v212 = v211;
        v213 = *v277;
        v214 = v277 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
        (*v277)(v212, 0, 1, v46);
      }

      else
      {
        v213 = *v277;
        v215 = v277 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
        v212 = v299;
        (*v277)(v299, 1, 1, v46);
        v214 = v215;
      }

      v216 = v292;
      v217 = v291;
      v360(v291, v287, v46);
      v285 = v213;
      v284 = v214;
      v213(v217, 0, 1, v46);
      v218 = *(v298 + 48);
      v219 = v212;
      v220 = v294;
      sub_1C1E106B0(v219, v294);
      sub_1C1E106B0(v217, v220 + v218);
      v221 = *v206;
      v222 = (*v206)(v220, 1, v46);
      v297 = v221;
      if (v222 == 1)
      {
        sub_1C1DC1870(v217, &qword_1EBF1D090, &qword_1C1E58158);
        sub_1C1DC1870(v299, &qword_1EBF1D090, &qword_1C1E58158);
        v223 = v221(v220 + v218, 1, v46);
        v224 = v220;
        if (v223 == 1)
        {
          goto LABEL_143;
        }

        goto LABEL_146;
      }

      sub_1C1E106B0(v220, v216);
      if (v221(v220 + v218, 1, v46) == 1)
      {
        sub_1C1DC1870(v217, &qword_1EBF1D090, &qword_1C1E58158);
        sub_1C1DC1870(v299, &qword_1EBF1D090, &qword_1C1E58158);
        (v30)(v216, v46);
LABEL_146:
        sub_1C1DC1870(v220, &qword_1EBF1D088, &qword_1C1E58150);
        goto LABEL_147;
      }

      (*v268)(v54, v220 + v218, v46);
      sub_1C1DCE150(&qword_1EBF1D0A0, MEMORY[0x1E69921B8]);
      v229 = sub_1C1E545AC();
      (v30)(v54, v46);
      sub_1C1DC1870(v217, &qword_1EBF1D090, &qword_1C1E58158);
      sub_1C1DC1870(v299, &qword_1EBF1D090, &qword_1C1E58158);
      (v30)(v216, v46);
      sub_1C1DC1870(v294, &qword_1EBF1D090, &qword_1C1E58158);
      if (v229)
      {
        goto LABEL_150;
      }

LABEL_147:
      if (v355)
      {
        v225 = v290;
        sub_1C1E543AC();
        v226 = v225;
        v227 = 0;
        v228 = v275;
      }

      else
      {
        v227 = 1;
        v228 = v275;
        v226 = v290;
      }

      v239 = v285;
      v285(v226, v227, 1, v46);
      v360(v228, v270, v46);
      v239(v228, 0, 1, v46);
      v240 = *(v298 + 48);
      v241 = v226;
      v242 = v226;
      v243 = v289;
      sub_1C1E106B0(v241, v289);
      sub_1C1E106B0(v228, v243 + v240);
      v244 = v297;
      if ((v297)(v243, 1, v46) == 1)
      {
        sub_1C1DC1870(v228, &qword_1EBF1D090, &qword_1C1E58158);
        sub_1C1DC1870(v242, &qword_1EBF1D090, &qword_1C1E58158);
        if ((v297)(v243 + v240, 1, v46) != 1)
        {
          goto LABEL_159;
        }

        sub_1C1DC1870(v243, &qword_1EBF1D090, &qword_1C1E58158);
      }

      else
      {
        v245 = v267;
        sub_1C1E106B0(v243, v267);
        if (v244(v243 + v240, 1, v46) == 1)
        {
          sub_1C1DC1870(v275, &qword_1EBF1D090, &qword_1C1E58158);
          sub_1C1DC1870(v290, &qword_1EBF1D090, &qword_1C1E58158);
          (v30)(v245, v46);
LABEL_159:
          sub_1C1DC1870(v243, &qword_1EBF1D088, &qword_1C1E58150);
          goto LABEL_170;
        }

        (*v268)(v54, v243 + v240, v46);
        sub_1C1DCE150(&qword_1EBF1D0A0, MEMORY[0x1E69921B8]);
        v246 = sub_1C1E545AC();
        (v30)(v54, v46);
        sub_1C1DC1870(v275, &qword_1EBF1D090, &qword_1C1E58158);
        sub_1C1DC1870(v290, &qword_1EBF1D090, &qword_1C1E58158);
        (v30)(v245, v46);
        sub_1C1DC1870(v289, &qword_1EBF1D090, &qword_1C1E58158);
        if ((v246 & 1) == 0)
        {
          goto LABEL_170;
        }
      }

      if (v353)
      {
        v247 = v273;
        sub_1C1E543AC();
        v248 = 0;
      }

      else
      {
        v248 = 1;
        v247 = v273;
      }

      v249 = v285;
      v285(v247, v248, 1, v46);
      v250 = v272;
      v360(v272, v287, v46);
      v249(v250, 0, 1, v46);
      v251 = *(v298 + 48);
      v252 = v274;
      sub_1C1E106B0(v247, v274);
      v285 = v251;
      sub_1C1E106B0(v250, v251 + v252);
      v253 = v297;
      if ((v297)(v252, 1, v46) == 1)
      {
        sub_1C1DC1870(v250, &qword_1EBF1D090, &qword_1C1E58158);
        sub_1C1DC1870(v247, &qword_1EBF1D090, &qword_1C1E58158);
        v254 = v253(v285 + v252, 1, v46);
        v224 = v252;
        if (v254 == 1)
        {
LABEL_143:
          sub_1C1DC1870(v224, &qword_1EBF1D090, &qword_1C1E58158);
LABEL_150:
          v230 = v360;
          v360(v54, v345, v46);
          v231 = v350;
          (v350)(v51, v54, v46);
          v232 = v302;
          v233 = v302[12];
          v234 = *(v302 + 26);
          swift_allocObject();
          v235 = sub_1C1E5438C();
          (v30)(v54, v46);
          sub_1C1DF5628(0, 0, v235);

          v230(v54, v328, v46);
          v231(v51, v54, v46);
          v236 = v232[12];
          v237 = *(v232 + 26);
          swift_allocObject();
          sub_1C1E5438C();
          v238 = (v30)(v54, v46);
          MEMORY[0x1C69103A0](v238);
          if (*((v364 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v364 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v264 = *((v364 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1C1E547FC();
          }

          sub_1C1E5480C();
          goto LABEL_170;
        }

        goto LABEL_169;
      }

      v255 = v269;
      sub_1C1E106B0(v252, v269);
      v256 = v285;
      if (v253(v285 + v252, 1, v46) == 1)
      {
        sub_1C1DC1870(v250, &qword_1EBF1D090, &qword_1C1E58158);
        sub_1C1DC1870(v273, &qword_1EBF1D090, &qword_1C1E58158);
        (v30)(v255, v46);
LABEL_169:
        sub_1C1DC1870(v274, &qword_1EBF1D088, &qword_1C1E58150);
        goto LABEL_170;
      }

      (*v268)(v54, v256 + v252, v46);
      sub_1C1DCE150(&qword_1EBF1D0A0, MEMORY[0x1E69921B8]);
      v262 = v250;
      v263 = sub_1C1E545AC();
      (v30)(v54, v46);
      sub_1C1DC1870(v262, &qword_1EBF1D090, &qword_1C1E58158);
      sub_1C1DC1870(v273, &qword_1EBF1D090, &qword_1C1E58158);
      (v30)(v255, v46);
      sub_1C1DC1870(v252, &qword_1EBF1D090, &qword_1C1E58158);
      if (v263)
      {
        goto LABEL_150;
      }

LABEL_170:
      v257 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
      v368 = v257;
      v258 = *(v286 + 48);
      v259 = *(v286 + 52);
      swift_allocObject();
      v47 = v354;

      sub_1C1E53A9C();
      if (!v257)
      {
        __break(1u);
LABEL_186:
        result = sub_1C1E54D1C();
        __break(1u);
        return result;
      }

      v260.n128_f64[0] = a8;
      v261.n128_f64[0] = a9;
      sub_1C1DCAFC8(&v368, v347, v47, v342, v343 & 1, v348 & 1, 1, v260, v261);

      v350 = 0;
      v93 = 0xE000000000000000;
LABEL_42:
      if ((sub_1C1E53ACC() & 1) == 0)
      {
        v100 = [objc_opt_self() systemFontOfSize:a8 weight:v68];
LABEL_52:
        v356 = v100;
        v99 = 0.0;
        goto LABEL_53;
      }

      sub_1C1E543AC();
      v360(v51, v345, v46);
      v95 = sub_1C1E5442C();
      (v30)(v51, v46);
      (v30)(v54, v46);
      if ((v95 & 1) == 0 && (sub_1C1E543AC(), v360(v51, v328, v46), v96 = sub_1C1E5442C(), (v30)(v51, v46), (v30)(v54, v46), (v96 & 1) == 0) || sub_1C1E5435C() < 1)
      {
        if ((sub_1C1E543DC() & 1) != 0 && sub_1C1E5435C() >= 1)
        {
          v101 = sub_1C1E5435C();
          v102 = pow(v295, v101);
          v100 = [objc_opt_self() systemFontOfSize:v102 * a8 weight:v316];
        }

        else
        {
          v100 = [objc_opt_self() systemFontOfSize_];
        }

        goto LABEL_52;
      }

      v97 = sub_1C1E5435C();
      v98 = pow(v309, v97);
      v356 = [objc_opt_self() systemFontOfSize:v98 * a8 weight:v316];
      v99 = v310 * v98;
LABEL_53:
      sub_1C1E543AC();
      v360(v51, v345, v46);
      v103 = sub_1C1E5442C();
      (v30)(v51, v46);
      (v30)(v54, v46);
      if (v103 & 1) != 0 || (sub_1C1E543AC(), v360(v51, v328, v46), v104 = sub_1C1E5442C(), (v30)(v51, v46), (v30)(v54, v46), (v104))
      {
        v99 = a8 * 0.06 + v99;
      }

      sub_1C1E543AC();
      v360(v51, v334, v46);
      v105 = sub_1C1E5442C();
      (v30)(v51, v46);
      (v30)(v54, v46);
      if (v105)
      {
        v106 = sub_1C1E543DC();
        v107 = v368;
        if (v368)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v106 = 1;
        v107 = v368;
        if (v368)
        {
LABEL_58:
          v41 = v107;

          goto LABEL_64;
        }
      }

      if (v106 & 1 | (v47 == 0))
      {
        v108 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v109 = sub_1C1E545BC();

        v110 = [v108 initWithString_];

        v111 = v110;
      }

      else
      {
        sub_1C1DC0D28(0, &qword_1EDE737F0, 0x1E696AAB0);
        v369 = v306;
        v370 = 0x3FE6666666666666;
        v371 = v68;
        v372 = 0;

        sub_1C1DC50CC(v350, v93, 0.0, 1, &v369, 0, 0, COERCE_UNSIGNED_INT64_(v99 + a9), v329, a8, 0, 0);

        v51 = v344;
        v112 = sub_1C1E5496C();
        v113 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

        v111 = v113;
      }

      v41 = v111;
LABEL_64:
      v350 = v107;
      v47 = [v41 length];

      v56 = v361;
      if (v107 == 0 && (v106 & 1) != 0)
      {
        [v41 addAttribute:v324 value:v356 range:{0, v47}];
        v114 = sub_1C1E5210C();
        [v41 addAttribute:v323 value:v114 range:{0, v47}];
      }

      v115 = sub_1C1E5437C();
      if (!v115)
      {
        goto LABEL_77;
      }

      v33 = v115;
      if ((sub_1C1E53ABC() & 1) != 0 || (sub_1C1E53A3C() & 1) != 0 || (sub_1C1E543DC() & 1) == 0)
      {
        goto LABEL_76;
      }

      v302 = *v358;
      v116 = [v302 string];
      v117 = sub_1C1E545FC();
      v119 = v118;

      v56 = v361;

      v120 = HIBYTE(v119) & 0xF;
      v121 = (v119 & 0x2000000000000000) == 0;
      v51 = v344;
      if (v121)
      {
        v120 = v117 & 0xFFFFFFFFFFFFLL;
      }

      if (!v120)
      {
LABEL_76:

LABEL_77:
        if (v349)
        {
          goto LABEL_189;
        }

        sub_1C1E543AC();
        v360(v51, v322, v46);
        v125 = sub_1C1E5442C();
        (v30)(v51, v46);
        (v30)(v54, v46);
        if (v125 & 1) != 0 || (sub_1C1E543AC(), v360(v51, v311, v46), v33 = sub_1C1E5442C(), (v30)(v51, v46), (v30)(v54, v46), (v33))
        {
LABEL_189:
          sub_1C1E543AC();
          v64 = v54;
          v126 = sub_1C1E5440C();
          (v30)(v54, v46);
          if (v126 & 1) == 0 || (sub_1C1E543AC(), v360(v51, v331, v46), v127 = sub_1C1E5442C(), (v30)(v51, v46), (v30)(v54, v46), (v127) && v354 && (v64 = v354, sub_1C1E53D2C() == 1))
          {
            v33 = sub_1C1E5210C();
            v128 = [v41 length];
            if (__OFSUB__(v128, 1))
            {
              goto LABEL_176;
            }

            [v41 addAttribute:v330 value:v33 range:{v128 - 1, 1}];
          }

          v33 = *v358;
          v129 = [*v358 string];
          v130 = sub_1C1E545FC();
          v132 = v131;

          v133 = HIBYTE(v132) & 0xF;
          v134 = v130 & 0xFFFFFFFFFFFFLL;
          v56 = v361;
          v121 = (v132 & 0x2000000000000000) == 0;
          v51 = v344;
          if (v121)
          {
            v133 = v134;
          }

          if (v133)
          {
            sub_1C1E543AC();
            v135 = sub_1C1E543FC();
            (v30)(v54, v46);
            if ((v135 & 1) == 0)
            {
              v64 = sub_1C1E5210C();
              v136 = [v33 length];
              if (__OFSUB__(v136, 1))
              {
                goto LABEL_178;
              }

              [v33 addAttribute:v330 value:v64 range:{v136 - 1, 1}];
            }
          }
        }

        if (v107)
        {
          goto LABEL_105;
        }

        goto LABEL_93;
      }

      v122 = sub_1C1E5210C();
      v123 = v122;
      if (v348)
      {
        v124 = [v41 length];
        if (__OFSUB__(v124, 1))
        {
          goto LABEL_183;
        }

        [v41 addAttribute:v330 value:v123 range:{v124 - 1, 1, v267}];
      }

      else
      {
        v349 = v122;
        v150 = v302;
        v151 = [v302 length];
        v152 = v151 - 1;
        if (__OFSUB__(v151, 1))
        {
          goto LABEL_182;
        }

        v153 = v150;
        v123 = v349;
        [v153 addAttribute:v330 value:v349 range:{v152, 1, v267}];
      }

      if (v107)
      {
        goto LABEL_105;
      }

LABEL_93:
      if (sub_1C1E5433C())
      {
        sub_1C1E543AC();
        v360(v51, v346, v46);
        v137 = sub_1C1E5442C();
        v67 = v359;
        (v30)(v51, v46);
        (v30)(v54, v46);
        if (v137)
        {
          v138 = *&v305;
        }

        else
        {
          v138 = 0.5;
        }

        v366 = 0.0;
        v139 = v347;
        [v347 getRed:0 green:0 blue:0 alpha:{&v366, v267}];
        v140 = [v139 colorWithAlphaComponent_];
        [v41 addAttribute:v320 value:v140 range:{0, v47}];
      }

      else
      {
        [v41 addAttribute:v320 value:v347 range:{0, v47}];
        v67 = v359;
      }

      v141 = *v358;
      v33 = sub_1C1DC0D28(0, &qword_1EDE737F0, 0x1E696AAB0);
      if (v348)
      {
        sub_1C1E51E5C();
        v142 = sub_1C1E5496C();
        [v141 appendAttributedString_];

        sub_1C1E543AC();
        v360(v51, v346, v46);
        LOBYTE(v142) = sub_1C1E5442C();
        (v30)(v51, v46);
        (v30)(v54, v46);
        if (v142)
        {
          sub_1C1E51E5C();
          v143 = sub_1C1E5496C();
          [v141 appendAttributedString_];
        }

        v144 = *v358;
        [*v358 appendAttributedString_];
        sub_1C1E543AC();
        v360(v51, v346, v46);
        v145 = sub_1C1E5442C();
        (v30)(v51, v46);
        (v30)(v54, v46);
        if (v145)
        {
          sub_1C1E51E5C();
          v33 = sub_1C1E5496C();
          [v144 appendAttributedString_];
        }

        goto LABEL_106;
      }

      sub_1C1E51E5C();
      v33 = sub_1C1E5496C();
      [v141 appendAttributedString_];

LABEL_105:
      [*v358 appendAttributedString_];
      v67 = v359;
LABEL_106:
      v146 = sub_1C1E543BC();
      if (v146)
      {
        v33 = v146;
        v147 = v325;
        sub_1C1E53A6C();
        v148 = (*v338)(v147, v340);
        v69.n128_f64[0] = a9;
        v70.n128_f64[0] = a8;
        v47 = v354;
        if (v148 != v339)
        {
          v69.n128_f64[0] = a8 * 0.35 + a9;
          v70.n128_f64[0] = a8 * 0.7;
          if (v148 != v327)
          {
            if (v148 == v312)
            {
              v69.n128_f64[0] = v308;
              v70.n128_f64[0] = a8 * 0.7;
              if (v354)
              {
                v149 = sub_1C1E53D2C();
                v69.n128_f64[0] = v301;
                v70.n128_f64[0] = v300;
                if (v149 != 1)
                {
                  v69.n128_f64[0] = v308;
                  v70.n128_f64[0] = a8 * 0.7;
                }
              }
            }

            else
            {
              v69.n128_f64[0] = a9;
              v70.n128_f64[0] = a8;
              if (v148 != v304)
              {
                goto LABEL_186;
              }
            }
          }
        }

        sub_1C1DCAFC8(v358, v347, v47, v342, v343 & 1, v348 & 1, v341 & 1, v70, v69);

        v41 = v356;
      }

      else
      {

        v47 = v354;
      }

      v41 = v352 + 1;
      v66 = v355;
      v64 = v333;
      if (v351 == v332)
      {
        goto LABEL_180;
      }
    }

    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    ;
  }

LABEL_180:

  v266 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C1DCE150(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1DCE198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CalculateExpressionView() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1C1E5285C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v2 + 2);
  v11 = v2[3];
  v12 = v2[4];
  v13 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C1DCE2B0(a1, v10, v2 + v6, v2 + v9, a2, v11, v12, v13);
}

uint64_t sub_1C1DCE2B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v131 = a1;
  v135 = a5;
  v14 = sub_1C1E529BC();
  v132 = *(v14 - 8);
  v133 = v14;
  v15 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v129 = v16;
  v130 = &v98[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for CalculateExpressionView();
  v126 = *(v17 - 8);
  v18 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v138 = v19;
  v139 = &v98[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v127 = sub_1C1E5285C();
  v125 = *(v127 - 8);
  v20 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v123 = v21;
  v124 = &v98[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1C1E52D2C();
  v121 = *(v22 - 8);
  v122 = v22;
  v23 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v120 = &v98[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_1C1E52E3C();
  v117 = *(v25 - 8);
  v118 = v25;
  v26 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v116 = &v98[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C200, &qword_1C1E560A0);
  v28 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v30 = &v98[-v29];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C208, &qword_1C1E560A8);
  v104 = *(v31 - 8);
  v105 = v31;
  v32 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v103 = &v98[-v33];
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C210, &qword_1C1E560B0);
  v34 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v107 = &v98[-v35];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C218, &qword_1C1E560B8);
  v113 = *(v36 - 8);
  v114 = v36;
  v37 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v111 = &v98[-v38];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C220, &qword_1C1E560C0);
  v109 = *(v39 - 8);
  v110 = v39;
  v40 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v108 = &v98[-v41];
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C228, &qword_1C1E560C8);
  v42 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v115 = &v98[-v43];
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C230, &qword_1C1E560D0);
  v44 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v119 = &v98[-v45];
  sub_1C1E52FCC();
  v134 = a2;
  v140 = a2;
  v141 = a6;
  v142 = a7;
  v46 = a3;
  v136 = a3;
  v143 = a3;
  v144 = a4;
  v128 = a4;
  v145 = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C238, &qword_1C1E560D8);
  sub_1C1DC1124(&qword_1EDE73AF0, &qword_1EBF1C238, &qword_1C1E560D8);
  sub_1C1E526BC();
  KeyPath = swift_getKeyPath();
  v48 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C240, &unk_1C1E56110) + 36)];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C248, &unk_1C1E5A430);
  v49 = *(v100 + 28);
  v99 = *MEMORY[0x1E697E7D0];
  v50 = v99;
  v51 = sub_1C1E5296C();
  v52 = *(*(v51 - 8) + 104);
  v52(v48 + v49, v50, v51);
  *v48 = KeyPath;
  v102 = sub_1C1E52C0C();
  v159 = 0;
  sub_1C1DCFEB0(v46, &v147);
  v168 = v155;
  v169 = v156;
  v170 = v157;
  v164 = v151;
  v165 = v152;
  v167 = v154;
  v166 = v153;
  v160 = v147;
  v161 = v148;
  v162 = v149;
  v163 = v150;
  v171[8] = v155;
  v171[9] = v156;
  v171[10] = v157;
  v171[4] = v151;
  v171[5] = v152;
  v171[7] = v154;
  v171[6] = v153;
  v171[0] = v147;
  v171[1] = v148;
  v171[3] = v150;
  v171[2] = v149;
  sub_1C1DC1424(&v160, v146, &qword_1EBF1C250, &qword_1C1E56120);
  sub_1C1DC1870(v171, &qword_1EBF1C250, &qword_1C1E56120);
  *&v158[119] = v167;
  *&v158[135] = v168;
  *&v158[151] = v169;
  *&v158[167] = v170;
  *&v158[55] = v163;
  *&v158[71] = v164;
  *&v158[87] = v165;
  *&v158[103] = v166;
  *&v158[7] = v160;
  *&v158[23] = v161;
  *&v158[39] = v162;
  LOBYTE(v49) = v159;
  v53 = swift_getKeyPath();
  v54 = &v30[*(v101 + 36)];
  v55 = &v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C258, &qword_1C1E56128) + 36)];
  v52(v55 + *(v100 + 28), v99, v51);
  *v55 = v53;
  v56 = *&v158[144];
  *(v54 + 145) = *&v158[128];
  *(v54 + 161) = v56;
  *(v54 + 177) = *&v158[160];
  v57 = *&v158[80];
  *(v54 + 81) = *&v158[64];
  *(v54 + 97) = v57;
  v58 = *&v158[112];
  *(v54 + 113) = *&v158[96];
  *(v54 + 129) = v58;
  v59 = *&v158[16];
  *(v54 + 17) = *v158;
  *(v54 + 33) = v59;
  v60 = *&v158[48];
  *(v54 + 49) = *&v158[32];
  *v54 = v102;
  *(v54 + 1) = 0;
  v54[16] = v49;
  *(v54 + 24) = *&v158[175];
  *(v54 + 65) = v60;
  v54[200] = 0;
  v61 = v136;
  v62 = *(v136 + 40);
  if (sub_1C1E5290C())
  {
    sub_1C1E539BC();
  }

  else
  {
    sub_1C1E539AC();
  }

  sub_1C1DD032C();
  v63 = v103;
  sub_1C1E533EC();
  sub_1C1DC1870(v30, &qword_1EBF1C200, &qword_1C1E560A0);
  sub_1C1E538AC();
  sub_1C1E5281C();
  v64 = v107;
  (*(v104 + 32))(v107, v63, v105);
  v65 = v112;
  v66 = (v64 + *(v112 + 36));
  v67 = v148;
  *v66 = v147;
  v66[1] = v67;
  v66[2] = v149;
  v68 = v116;
  sub_1C1E52E2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C270, &qword_1C1E56140);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1C1E55C40;
  LOBYTE(v63) = sub_1C1E52FEC();
  *(v69 + 32) = v63;
  v70 = sub_1C1E52FCC();
  *(v69 + 33) = v70;
  sub_1C1E52FDC();
  sub_1C1E52FDC();
  if (sub_1C1E52FDC() != v63)
  {
    sub_1C1E52FDC();
  }

  sub_1C1E52FDC();
  if (sub_1C1E52FDC() != v70)
  {
    sub_1C1E52FDC();
  }

  v71 = sub_1C1DD04C8();
  v72 = v111;
  sub_1C1E533AC();
  (*(v117 + 8))(v68, v118);
  sub_1C1DC1870(v64, &qword_1EBF1C210, &qword_1C1E560B0);
  v73 = v120;
  sub_1C1E52D1C();
  sub_1C1E52FCC();
  v146[0] = v65;
  v146[1] = v71;
  swift_getOpaqueTypeConformance2();
  v74 = v108;
  v75 = v114;
  sub_1C1E5343C();
  (*(v121 + 8))(v73, v122);
  (*(v113 + 8))(v72, v75);
  v76 = v115;
  (*(v109 + 32))(v115, v74, v110);
  v77 = &v76[*(v106 + 36)];
  *v77 = 0x69566C6C6F726373;
  v77[1] = 0xEA00000000007765;
  v78 = v124;
  v79 = v125;
  v80 = v127;
  (*(v125 + 16))(v124, v128, v127);
  sub_1C1DC7390(v61, v139);
  v81 = (*(v79 + 80) + 40) & ~*(v79 + 80);
  v82 = *(v126 + 80);
  v83 = (v123 + v82 + v81) & ~v82;
  v84 = swift_allocObject();
  v85 = v134;
  *(v84 + 16) = v134;
  *(v84 + 24) = a6;
  *(v84 + 32) = a7;
  (*(v79 + 32))(v84 + v81, v78, v80);
  v86 = v139;
  sub_1C1DC73F4(v139, v84 + v83);
  v87 = v76;
  v88 = v119;
  sub_1C1DCF240(v87, v119);
  v89 = &v88[*(v137 + 36)];
  *v89 = sub_1C1DD154C;
  v89[1] = v84;
  v146[0] = v85;
  v90 = v132;
  v91 = v130;
  v92 = v133;
  (*(v132 + 16))(v130, v131, v133);
  sub_1C1DC7390(v136, v86);
  v93 = (*(v90 + 80) + 16) & ~*(v90 + 80);
  v94 = (v129 + v82 + v93) & ~v82;
  v95 = swift_allocObject();
  (*(v90 + 32))(v95 + v93, v91, v92);
  sub_1C1DC73F4(v86, v95 + v94);
  sub_1C1DC0D28(0, &qword_1EDE737F0, 0x1E696AAB0);
  sub_1C1DD06C8();
  sub_1C1DD0780();
  v96 = v85;
  sub_1C1E534CC();

  return sub_1C1DC1870(v88, &qword_1EBF1C230, &qword_1C1E560D0);
}

uint64_t sub_1C1DCF040()
{
  v1 = sub_1C1E5285C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for CalculateExpressionView();
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  v11 = *(v0 + v8);

  v12 = v6[10];
  v13 = sub_1C1E530EC();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v8 + v12, 1, v13))
  {
    (*(v14 + 8))(v10 + v12, v13);
  }

  v15 = (v10 + v6[11]);
  if (*v15)
  {
    v16 = v15[1];
  }

  v17 = v3 | v7;
  v18 = (v10 + v6[12]);
  v19 = *v18;

  v20 = v18[1];

  v21 = *(v10 + v6[13] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v17 | 7);
}

uint64_t sub_1C1DCF240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C228, &qword_1C1E560C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DCF2B0()
{
  v1 = sub_1C1E529BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for CalculateExpressionView();
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  v11 = *(v0 + v8);

  v12 = v6[10];
  v13 = sub_1C1E530EC();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v8 + v12, 1, v13))
  {
    (*(v14 + 8))(v10 + v12, v13);
  }

  v15 = (v10 + v6[11]);
  if (*v15)
  {
    v16 = v15[1];
  }

  v17 = v3 | v7;
  v18 = (v10 + v6[12]);
  v19 = *v18;

  v20 = v18[1];

  v21 = *(v10 + v6[13] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v17 | 7);
}

uint64_t sub_1C1DCF4A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  return sub_1C1DCF4BC(*(v1 + 16), *(v1 + 40), a1, *(v1 + 32));
}

uint64_t sub_1C1DCF4BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D1>)
{
  *a3 = sub_1C1E538CC();
  a3[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C2A0, &qword_1C1E56170);
  return sub_1C1DCF54C(a1, a2, (a3 + *(v9 + 44)), a4);
}

uint64_t sub_1C1DCF54C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>, double a4@<D1>)
{
  v90 = a3;
  v7 = type metadata accessor for CalculateExpressionView();
  v86 = *(v7 - 8);
  v8 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v87 = v9;
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1E51E6C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C2A8, &qword_1C1E56178);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v78 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C2B0, &qword_1C1E56180);
  v17 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v93 = &v78 - v18;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C2B8, &qword_1C1E56188);
  v19 = *(*(v88 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v88);
  v92 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v89 = &v78 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v91 = &v78 - v24;
  sub_1C1E538DC();
  sub_1C1E529FC();
  sub_1C1E538DC();
  sub_1C1E5281C();
  v25 = a1;
  sub_1C1E51E7C();
  v26 = sub_1C1E5315C();
  v83 = v27;
  v84 = v26;
  v29 = v28;
  v82 = v30;
  KeyPath = swift_getKeyPath();
  v31 = *(a2 + 40);
  if (sub_1C1E5290C())
  {
    v32 = 2;
  }

  else
  {
    v32 = 0;
  }

  v80 = v32;
  v79 = swift_getKeyPath();
  v33 = v29 & 1;
  v130 = v29 & 1;
  v129 = 0;
  sub_1C1E5283C();
  if (sub_1C1E5290C())
  {
    sub_1C1E538FC();
  }

  else
  {
    sub_1C1E538EC();
  }

  sub_1C1E529FC();
  *&v131[55] = v145;
  *&v131[71] = v146;
  *&v131[87] = v147;
  *&v131[103] = v148;
  *&v131[7] = v142;
  *&v131[23] = v143;
  *&v131[39] = v144;
  sub_1C1E538DC();
  sub_1C1E5281C();
  v34 = *a2;
  v35 = &v16[*(v13 + 52)];
  sub_1C1E53C9C();
  v36 = *&v131[80];
  *(v16 + 129) = *&v131[64];
  *(v16 + 145) = v36;
  *(v16 + 161) = *&v131[96];
  v37 = *&v131[16];
  *(v16 + 65) = *v131;
  *(v16 + 81) = v37;
  v38 = *&v131[48];
  *(v16 + 97) = *&v131[32];
  *(v16 + 113) = v38;
  v39 = v127;
  *(v16 + 184) = v126;
  v40 = v83;
  *v16 = v84;
  *(v16 + 1) = v40;
  v16[16] = v33;
  v41 = KeyPath;
  *(v16 + 3) = v82;
  *(v16 + 4) = v41;
  *(v16 + 5) = 1;
  v16[48] = 0;
  *(v16 + 7) = v79;
  v16[64] = v80;
  *(v16 + 22) = *&v131[111];
  *(v16 + 200) = v39;
  *(v16 + 216) = v128;
  v42 = sub_1C1E52BFC();
  sub_1C1DC7390(a2, v10);
  v43 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v44 = swift_allocObject();
  sub_1C1DC73F4(v10, v44 + v43);
  v45 = v16;
  v46 = v93;
  sub_1C1DC18D0(v45, v93, &qword_1EBF1C2A8, &qword_1C1E56178);
  v47 = (v46 + *(v85 + 36));
  *v47 = v42;
  v47[1] = sub_1C1DD0994;
  v47[2] = v44;
  v48 = sub_1C1E538DC();
  v86 = v49;
  if (*(a2 + 8) == 1)
  {
    sub_1C1DC7390(a2, v10);
    v50 = swift_allocObject();
    sub_1C1DC73F4(v10, v50 + v43);
    sub_1C1DC7390(a2, v10);
    v51 = swift_allocObject();
    sub_1C1DC73F4(v10, v51 + v43);
    sub_1C1DC7390(a2, v10);
    v52 = swift_allocObject();
    sub_1C1DC73F4(v10, v52 + v43);
    v53 = swift_getKeyPath();
    v54 = a4 * 1.35;
    LOBYTE(v115[0]) = 0;
    v55 = sub_1C1DD8274;
    v56 = sub_1C1DD8078;
    v57 = sub_1C1DD8010;
  }

  else
  {
    v57 = 0;
    v50 = 0;
    v56 = 0;
    v51 = 0;
    v55 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0.0;
  }

  v87 = v52;
  *&v94 = v57;
  *(&v94 + 1) = v50;
  *&v95 = v56;
  *(&v95 + 1) = v51;
  *&v96 = v55;
  *(&v96 + 1) = v52;
  *&v97 = v53;
  *(&v97 + 1) = v54;
  LOBYTE(v98) = 0;
  v58 = v50;
  v59 = v48;
  v60 = v51;
  v61 = v86;
  *(&v98 + 1) = v48;
  v99 = v86;
  v62 = v89;
  v63 = v56;
  sub_1C1DC18D0(v93, v89, &qword_1EBF1C2B0, &qword_1C1E56180);
  v64 = v62 + *(v88 + 36);
  v65 = v97;
  *(v64 + 32) = v96;
  *(v64 + 48) = v65;
  *(v64 + 64) = v98;
  *(v64 + 80) = v99;
  v66 = v95;
  *v64 = v94;
  *(v64 + 16) = v66;
  v100[0] = v57;
  v100[1] = v58;
  v100[2] = v63;
  v100[3] = v60;
  v100[4] = v55;
  v100[5] = v87;
  v100[6] = v53;
  *&v100[7] = v54;
  v101 = 0;
  v102 = v59;
  v103 = v61;
  sub_1C1DC1424(&v94, v115, &qword_1EBF1C2C0, &qword_1C1E561C0);
  sub_1C1DC1870(v100, &qword_1EBF1C2C0, &qword_1C1E561C0);
  v67 = v91;
  sub_1C1DC18D0(v62, v91, &qword_1EBF1C2B8, &qword_1C1E56188);
  v68 = v92;
  sub_1C1DC1424(v67, v92, &qword_1EBF1C2B8, &qword_1C1E56188);
  *&v104 = sub_1C1DD0A74;
  *(&v104 + 1) = 0;
  v109 = v139;
  v110 = v140;
  v105 = v135;
  v106 = v136;
  v107 = v137;
  v108 = v138;
  v69 = v133;
  v70 = v134;
  v113 = v133;
  v114 = v134;
  v111 = v141;
  v112 = v132;
  v71 = v90;
  v90[8] = v132;
  v71[9] = v69;
  v71[10] = v70;
  v72 = v111;
  v71[6] = v110;
  v71[7] = v72;
  v73 = v107;
  v71[2] = v106;
  v71[3] = v73;
  v74 = v105;
  *v71 = v104;
  v71[1] = v74;
  v75 = v109;
  v71[4] = v108;
  v71[5] = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C2C8, &qword_1C1E561C8);
  sub_1C1DC1424(v68, v71 + *(v76 + 48), &qword_1EBF1C2B8, &qword_1C1E56188);
  sub_1C1DC1424(&v104, v115, &qword_1EBF1C2D0, &qword_1C1E561D0);
  sub_1C1DC1870(v67, &qword_1EBF1C2B8, &qword_1C1E56188);
  sub_1C1DC1870(v68, &qword_1EBF1C2B8, &qword_1C1E56188);
  v115[0] = sub_1C1DD0A74;
  v115[1] = 0;
  v120 = v139;
  v121 = v140;
  v116 = v135;
  v117 = v136;
  v118 = v137;
  v119 = v138;
  v124 = v133;
  v125 = v134;
  v122 = v141;
  v123 = v132;
  return sub_1C1DC1870(v115, &qword_1EBF1C2D0, &qword_1C1E561D0);
}

uint64_t sub_1C1DCFE68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C1DCFEB0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CalculateExpressionView() + 52));
  v4 = *v3;
  v5 = *(v3 + 1);
  LOBYTE(v52) = *v3;
  v53 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C288, &qword_1C1E56158);
  sub_1C1E536EC();
  if (LOBYTE(v51[0]) == 3 || (LOBYTE(v52) = v4, v53 = v5, sub_1C1E536EC(), LOBYTE(v51[0]) == 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C298, &qword_1C1E56168);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C1E55C40;
    sub_1C1E535DC();
    v7 = sub_1C1E5366C();

    *(v6 + 32) = v7;
    *(v6 + 40) = sub_1C1E535DC();
    MEMORY[0x1C690F440](v6);
    sub_1C1E539AC();
    sub_1C1E539BC();
    sub_1C1E5293C();
    sub_1C1E538DC();
    sub_1C1E5281C();
    v8 = v63;
    v31 = v66;
    v32 = v65;
    v29 = v68;
    v30 = v67;
    v28 = v69;
    v26 = v71;
    v27 = v70;
    v33 = v72;
    v34 = v64;
    v25 = v73;
  }

  else
  {
    v8 = 0;
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    v25 = 0;
    v26 = 0;
  }

  LOBYTE(v52) = v4;
  v53 = v5;
  sub_1C1E536EC();
  if (LOBYTE(v51[0]) == 3 || (LOBYTE(v52) = v4, v53 = v5, sub_1C1E536EC(), LOBYTE(v51[0]) == 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C298, &qword_1C1E56168);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C1E55C40;
    *(v9 + 32) = sub_1C1E535DC();
    sub_1C1E535DC();
    v10 = v8;
    v11 = sub_1C1E5366C();

    *(v9 + 40) = v11;
    v8 = v10;
    MEMORY[0x1C690F440](v9);
    sub_1C1E539AC();
    sub_1C1E539BC();
    sub_1C1E5293C();
    sub_1C1E538DC();
    sub_1C1E5281C();
    v13 = v74;
    v12 = v75;
    v15 = v76;
    v14 = v77;
    v17 = v78;
    v16 = v79;
    v19 = v80;
    v18 = v81;
    v20 = v82;
    v21 = v83;
    v22 = v84;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v16 = 0;
    v17 = 0;
    v14 = 0;
    v15 = 0;
    v12 = 0;
    v13 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  *&v39 = v8;
  *(&v39 + 1) = v34;
  *&v40 = v32;
  *(&v40 + 1) = v31;
  *&v41 = v30;
  *(&v41 + 1) = v29;
  *&v42 = v28;
  *(&v42 + 1) = v27;
  *&v43 = v26;
  *(&v43 + 1) = v33;
  v44 = v25;
  *&v45 = v13;
  *v38 = v25;
  v36 = v42;
  v37 = v43;
  v35 = v41;
  *(&v45 + 1) = v12;
  *&v46 = v15;
  *(&v46 + 1) = v14;
  *&v47 = v17;
  *(&v47 + 1) = v16;
  *&v48 = v19;
  *(&v48 + 1) = v18;
  *&v49 = v20;
  *(&v49 + 1) = v21;
  v50 = v22;
  *&v38[24] = v46;
  *&v38[8] = v45;
  *&v38[88] = v22;
  *&v38[72] = v49;
  *&v38[56] = v48;
  *&v38[40] = v47;
  v23 = v40;
  *a2 = v39;
  a2[1] = v23;
  a2[4] = v37;
  a2[5] = *v38;
  a2[2] = v35;
  a2[3] = v36;
  a2[9] = *&v38[64];
  a2[10] = *&v38[80];
  a2[7] = *&v38[32];
  a2[8] = *&v38[48];
  a2[6] = *&v38[16];
  v51[0] = v13;
  v51[1] = v12;
  v51[2] = v15;
  v51[3] = v14;
  v51[4] = v17;
  v51[5] = v16;
  v51[6] = v19;
  v51[7] = v18;
  v51[8] = v20;
  v51[9] = v21;
  v51[10] = v22;
  sub_1C1DC1424(&v39, &v52, &qword_1EBF1C290, &qword_1C1E56160);
  sub_1C1DC1424(&v45, &v52, &qword_1EBF1C290, &qword_1C1E56160);
  sub_1C1DC1870(v51, &qword_1EBF1C290, &qword_1C1E56160);
  v52 = v8;
  v53 = v34;
  v54 = v32;
  v55 = v31;
  v56 = v30;
  v57 = v29;
  v58 = v28;
  v59 = v27;
  v60 = v26;
  v61 = v33;
  v62 = v25;
  return sub_1C1DC1870(&v52, &qword_1EBF1C290, &qword_1C1E56160);
}

unint64_t sub_1C1DD032C()
{
  result = qword_1EDE73B90;
  if (!qword_1EDE73B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C200, &qword_1C1E560A0);
    sub_1C1DD03E4();
    sub_1C1DC1124(&qword_1EDE73BD0, &qword_1EBF1C268, &qword_1C1E56138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B90);
  }

  return result;
}

unint64_t sub_1C1DD03E4()
{
  result = qword_1EDE73BC0;
  if (!qword_1EDE73BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C240, &unk_1C1E56110);
    sub_1C1DC1124(&qword_1EDE73BD8, &qword_1EBF1C260, &qword_1C1E56130);
    sub_1C1DC1124(&qword_1EDE73B28, &qword_1EBF1C248, &unk_1C1E5A430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73BC0);
  }

  return result;
}

unint64_t sub_1C1DD04C8()
{
  result = qword_1EDE73BA8;
  if (!qword_1EDE73BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C210, &qword_1C1E560B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C200, &qword_1C1E560A0);
    sub_1C1DD032C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73BA8);
  }

  return result;
}

unint64_t sub_1C1DD0590()
{
  result = qword_1EDE73BA0;
  if (!qword_1EDE73BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C228, &qword_1C1E560C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C218, &qword_1C1E560B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C210, &qword_1C1E560B0);
    sub_1C1DD04C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C1DC1124(&qword_1EDE73B48, &qword_1EBF1C278, &qword_1C1E56148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73BA0);
  }

  return result;
}

unint64_t sub_1C1DD06C8()
{
  result = qword_1EDE73B80;
  if (!qword_1EDE73B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C230, &qword_1C1E560D0);
    sub_1C1DD0590();
    sub_1C1DC1124(&qword_1EDE73B40, &qword_1EBF1C280, &qword_1C1E56150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B80);
  }

  return result;
}

unint64_t sub_1C1DD0780()
{
  result = qword_1EDE737E8;
  if (!qword_1EDE737E8)
  {
    sub_1C1DC0D28(255, &qword_1EDE737F0, 0x1E696AAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE737E8);
  }

  return result;
}

uint64_t sub_1C1DD07EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1DD0850();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

unint64_t sub_1C1DD0850()
{
  result = qword_1EDE73DC0;
  if (!qword_1EDE73DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73DC0);
  }

  return result;
}

unint64_t sub_1C1DD08A8()
{
  result = qword_1EDE73DB8;
  if (!qword_1EDE73DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73DB8);
  }

  return result;
}

uint64_t sub_1C1DD08FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1DD0850();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

double sub_1C1DD0994(uint64_t a1)
{
  v3 = *(type metadata accessor for CalculateExpressionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C1DD0A04(a1, v4);
}

double sub_1C1DD0A04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = sub_1C1E52BEC();
  MEMORY[0x1C690E520](v4);
  if (v3 == 1)
  {
    return result + *(a2 + 16) * 0.3;
  }

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

double sub_1C1DD0A68@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1C1DD0A74@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C1E52D0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1E535FC();
  v17[0] = 0x69566C6C6F726373;
  v17[1] = 0xEA00000000007765;
  sub_1C1E52DAC();
  sub_1C1E5284C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  a1[4] = v15;
  return result;
}

uint64_t sub_1C1DD0BC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1DD0BE4@<X0>(uint64_t a1@<X8>)
{
  sub_1C1DD0C3C();
  result = sub_1C1E52B8C();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_1C1DD0C3C()
{
  result = qword_1EDE73DC8[0];
  if (!qword_1EDE73DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE73DC8);
  }

  return result;
}

uint64_t sub_1C1DD0CA0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1C1DD0C3C();
  return sub_1C1E52B9C();
}

char *sub_1C1DD0CF8()
{
  v1 = sub_1C1E52B7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformViewController();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = v0[1];
  v8 = &v6[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handleKeypress];
  v9 = *&v6[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handleKeypress];
  v10 = *&v6[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handleKeypress + 8];
  *v8 = *v0;
  *(v8 + 1) = v7;

  sub_1C1DD0EB8(v9);
  v11 = v0[3];
  v12 = &v6[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handlePasteboard];
  v13 = *&v6[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handlePasteboard];
  v14 = *&v6[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handlePasteboard + 8];
  *v12 = v0[2];
  *(v12 + 1) = v11;

  sub_1C1DD0EB8(v13);
  v16 = v0[4];
  v15 = v0[5];
  v17 = &v6[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_allowHighPrecision];
  v18 = *&v6[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_allowHighPrecision];
  v19 = *&v6[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_allowHighPrecision + 8];
  *v17 = v16;
  *(v17 + 1) = v15;

  sub_1C1DD0EB8(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D170, &qword_1C1E58468);
  sub_1C1E52F8C();
  sub_1C1DD0C3C();
  sub_1C1E52B8C();
  (*(v2 + 8))(v5, v1);
  if ((v22 & 1) == 0)
  {
    *&v6[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_textHeight] = v21;
  }

  return v6;
}

uint64_t sub_1C1DD0EB8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1C1DD0F2C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_editMenuInteraction] = 0;
  v5 = &v3[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handleKeypress];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v3[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handlePasteboard];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v3[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_allowHighPrecision];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_textHeight] = 0;
  if (a2)
  {
    v8 = sub_1C1E545BC();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for PlatformViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

uint64_t sub_1C1DD112C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1C1E545FC();
    v4 = v3;

    if (v2 == 0xD000000000000014 && 0x80000001C1E5BF90 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1C1E54D2C();
    }
  }

  return v1 & 1;
}

void sub_1C1DD11FC()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for PlatformViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  v4 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) initWithDelegate_];
  v5 = OBJC_IVAR____TtC11CalculateUI22PlatformViewController_editMenuInteraction;
  v6 = *&v0[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_editMenuInteraction];
  *&v0[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_editMenuInteraction] = v4;

  v7 = [v0 view];
  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!*&v0[v5])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 addInteraction_];

  v9 = [objc_allocWithZone(MEMORY[0x1E69DCC48]) initWithTarget:v0 action:sel_longPress_];
  [v9 setMinimumPressDuration_];
  [v9 setAllowableMovement_];
  [v9 setDelaysTouchesBegan_];
  v10 = [v0 view];
  if (v10)
  {
    v11 = v10;
    [v10 addGestureRecognizer_];

    return;
  }

LABEL_9:
  __break(1u);
}

double sub_1C1DD13F8(uint64_t a1)
{
  v2 = sub_1C1E52B7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D170, &qword_1C1E58468);
  sub_1C1E52F8C();
  sub_1C1DD0C3C();
  sub_1C1E52B8C();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    result = v8;
    *(a1 + OBJC_IVAR____TtC11CalculateUI22PlatformViewController_textHeight) = v8;
  }

  return result;
}

double *sub_1C1DD154C(double *a1)
{
  v3 = *(sub_1C1E5285C() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for CalculateExpressionView() - 8);
  v7 = *(v1 + 2);
  v8 = v1[3];
  v9 = *(v1 + 4);
  v10 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1C1DD1628(a1, v8, v7, v1 + v4, v10);
}

double *sub_1C1DD1628(double *result, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1C1E5283C();
  if (v8 < a2)
  {
    sub_1C1E5283C();
  }

  v9 = (a5 + *(type metadata accessor for CalculateExpressionView() + 52));
  v10 = *v9;
  v11 = *(v9 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C288, &qword_1C1E56158);
  return sub_1C1E536FC();
}

unint64_t sub_1C1DD17B4()
{
  result = qword_1EDE73BE8;
  if (!qword_1EDE73BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBF1D1B0, &qword_1C1E584E8);
    sub_1C1DD18C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73BE8);
  }

  return result;
}

uint64_t sub_1C1DD1838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C1DD17B4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1C1DD18C4()
{
  result = qword_1EDE73BF8[0];
  if (!qword_1EDE73BF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE73BF8);
  }

  return result;
}

uint64_t sub_1C1DD1918()
{
  v1 = *(sub_1C1E529BC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for CalculateExpressionView() - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  return sub_1C1DD19E4(v0 + v2, v5);
}

uint64_t sub_1C1DD19E4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C1E51F9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  sub_1C1E53C9C();
  v9 = *(a2 + 40);
  LODWORD(a2) = sub_1C1E5290C() & 1;
  if (a2 == (sub_1C1E53B2C() & 1))
  {
    sub_1C1E539AC();
  }

  else
  {
    sub_1C1E539BC();
  }

  sub_1C1DC8008(&qword_1EDE750A0, MEMORY[0x1E69695A8]);
  sub_1C1E529AC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1C1DD1B58()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_1C1DD1BD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1C1E545FC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1C1DD1C04(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_1C1DD1C98(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C1DD1D28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C190, &qword_1C1E55C68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_1C1DD1DE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C190, &qword_1C1E55C68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s14descr1F4186469V7DotViewVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1DD1EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C1DD1F70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1DD202C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1E52B2C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1DD20B4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1DD20F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD2198@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1E52ABC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1DD2214(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[14];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E8, &qword_1C1E573F8);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[23]];

  return v15(v16, a2, v14);
}

char *sub_1C1DD23A4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[14];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E8, &qword_1C1E573F8);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[23]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C1DD256C()
{
  v1 = type metadata accessor for CalculateScrubberView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v39 = *(*(v1 - 1) + 64);
  v40 = v0;
  v4 = v0 + v3;
  v5 = *(v0 + v3);

  v6 = v1[6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  v8 = *(*(v7 - 8) + 8);
  v8(v4 + v6, v7);
  v8(v4 + v1[7], v7);
  v8(v4 + v1[8], v7);
  v8(v4 + v1[9], v7);
  v8(v4 + v1[10], v7);
  v8(v4 + v1[11], v7);
  v8(v4 + v1[12], v7);
  sub_1C1DDEC6C(*(v4 + v1[13]), *(v4 + v1[13] + 8));
  v9 = v4 + v1[14];
  v10 = sub_1C1E52DFC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  v12 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0) + 40));

  v13 = *(v4 + v1[15] + 8);

  v14 = v4 + v1[16];
  v15 = *(v14 + 8);

  v16 = *(v14 + 16);

  v17 = v4 + v1[17];

  v18 = *(v17 + 8);

  v19 = *(v4 + v1[18] + 8);

  v20 = *(v4 + v1[19] + 8);

  v21 = *(v4 + v1[20] + 8);

  v22 = *(v4 + v1[21] + 8);

  v23 = v4 + v1[22];
  v24 = *(v23 + 8);

  v25 = *(v23 + 24);

  v26 = v4 + v1[23];
  v27 = sub_1C1E51F5C();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(v26, 1, v27))
  {
    (*(v28 + 8))(v26, v27);
  }

  v29 = *(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E8, &qword_1C1E573F8) + 28));

  v30 = *(v4 + v1[24] + 8);

  v31 = v4 + v1[25];
  v32 = *(v31 + 8);

  v33 = *(v31 + 24);

  v34 = *(v4 + v1[26] + 8);

  v35 = *(v4 + v1[27] + 8);

  v36 = *(v4 + v1[28] + 8);

  v8(v4 + v1[31], v7);
  v8(v4 + v1[32], v7);
  v8(v4 + v1[33], v7);
  v37 = *(v4 + v1[34] + 8);

  v8(v4 + v1[35], v7);
  v8(v4 + v1[36], v7);
  v8(v4 + v1[37], v7);

  return MEMORY[0x1EEE6BDD0](v40, ((((((((v39 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1C1DD2AC4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[7];

  if (v0[9])
  {
    v4 = v0[10];
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C1DD2B1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CCE8, &qword_1C1E577E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1DD2B84()
{
  v1 = sub_1C1E529BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 6);

  if (*(v0 + 8))
  {
    v8 = *(v0 + 9);
  }

  v9 = (v3 + 80) & ~v3;
  (*(v2 + 8))(&v0[v9], v1);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v4, v3 | 7);
}

uint64_t sub_1C1DD2C80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD2CB8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CE18, &qword_1C1E57948);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CE10, &qword_1C1E57940);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CE08, &qword_1C1E57938);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CE00, &qword_1C1E57930);
  sub_1C1DC1124(&qword_1EBF1CE40, &qword_1EBF1CE00, &qword_1C1E57930);
  sub_1C1DC733C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C1DD2E38(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1C1E2D404(&v4);
}

uint64_t sub_1C1DD2E98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1E52ACC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1DD2ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEA0, &unk_1C1E57B40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C1DD2F48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEA0, &unk_1C1E57B40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C1DD2FC4()
{
  v1 = *(type metadata accessor for CalculateGraphExpressionPopoverView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEA0, &unk_1C1E57B40);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C1DD30A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEF8, &qword_1C1E57BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DD3120()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CEC0, &qword_1C1E57BC8);
  sub_1C1DF59D8();
  return swift_getOpaqueTypeConformance2();
}

void sub_1C1DD31A0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1C1DFCE18(v2);
}

void sub_1C1DD3244(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1C1DF8F54(v2);
}

void *sub_1C1DD32DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CalculateScrubber.step.getter();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1C1DD3318()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD3370(uint64_t result)
{
  if (result)
  {
    v2 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      if ((v1[1] & 0x2000000000000000) == 0)
      {
        v4 = *v1;
      }

      result = sub_1C1E546BC();
      if ((v2 & 1) == 0)
      {
        v5 = result;
        result = 15;
        v2 = v5;

        return MEMORY[0x1EEE68E00](result, v2);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE68E00](result, v2);
  }

  return result;
}

uint64_t sub_1C1DD33F8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1DD3430()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD3498()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1DD3510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D1C0, &qword_1C1E584F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C1DD35CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D1C0, &qword_1C1E584F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1DD3684()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD36E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1DD373C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1C1E154DC(&v4);
}

uint64_t sub_1C1DD37A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1C1E52E1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D290, &qword_1C1E58800);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D298, &qword_1C1E58808);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
  swift_getOpaqueTypeMetadata2();
  sub_1C1E0F2FC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1C1E549CC();
  swift_getTupleTypeMetadata3();
  sub_1C1E5397C();
  swift_getWitnessTable();
  sub_1C1E5378C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2D0, &qword_1C1E58820);
  swift_getWitnessTable();
  sub_1C1DC1124(&qword_1EBF1D2D8, &qword_1EBF1D2D0, &qword_1C1E58820);
  swift_getOpaqueTypeMetadata2();
  sub_1C1E10390(qword_1EBF1D2E0, MEMORY[0x1E697C998]);
  sub_1C1E5280C();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1C1DD3A48()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C1DD3A80()
{
  v1 = sub_1C1E52BBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 48);

  if (*(v0 + 56))
  {
    v7 = *(v0 + 64);
  }

  v8 = (v3 + 200) & ~v3;
  sub_1C1DDEC6C(*(v0 + 72), *(v0 + 80));
  sub_1C1DDEC6C(*(v0 + 88), *(v0 + 96));
  v9 = *(v0 + 120);

  v10 = *(v0 + 144);

  v11 = *(v0 + 168);

  v12 = *(v0 + 192);

  (*(v2 + 8))(v0 + v8, v1);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v4, v3 | 7);
}

uint64_t sub_1C1DD3B94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD3BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D298, &qword_1C1E58808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DD3C54()
{
  v1 = type metadata accessor for Function();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 40);

  v6 = (v0 + v3);
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 56);

  v11 = *(v0 + v3 + 72);

  if (*(v0 + v3 + 80))
  {
    v12 = *(v6 + 11);
  }

  v13 = *(v6 + 12);

  v14 = *(v6 + 13);

  v15 = v1[12];
  v16 = sub_1C1E51F9C();
  (*(*(v16 - 8) + 8))(&v6[v15], v16);
  v17 = *&v6[v1[13]];

  v18 = v1[14];
  v19 = sub_1C1E51F5C();
  (*(*(v19 - 8) + 8))(&v6[v18], v19);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C1DD3E64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD3E9C@<X0>(uint64_t a1@<X0>, void (**a2)(double *@<X0>, double *@<X8>)@<X8>)
{
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1C1E13410;
  a2[1] = v5;
}

uint64_t sub_1C1DD3F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C1E51F9C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1C1E51F5C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C1DD4038(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C1E51F9C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1C1E51F5C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C1DD41B4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *a2;
  return sub_1C1E15710(v5);
}

uint64_t sub_1C1DD4308(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1C1E167D4(&v4);
}

uint64_t sub_1C1DD4344(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1E15A20(v4);
}

uint64_t sub_1C1DD4714@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1C1DD47A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1E2CBB0(v4);
}

uint64_t sub_1C1DD480C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1E2D1A4(v4);
}

uint64_t sub_1C1DD4AC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_1C1E36158();
}

uint64_t sub_1C1DD4AFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;

  return sub_1C1E2E5C8(&v4);
}

double sub_1C1DD4B38@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_1C1E2F104(&v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_1C1DD4B78@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1C1E2FD38(v7);
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1C1DD4C34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD4C6C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1DD4CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1E5226C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C1DD4D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1E5226C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C1DD4D90()
{
  v1 = *(type metadata accessor for TypesetCanvasView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1C1E5226C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C1DD4E60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1C1E3A2E0();
  v4 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C1DD4EBC@<X0>(void *a1@<X8>)
{
  result = sub_1C1E5283C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C1DD4EE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBF1DA18, &unk_1C1E5A508);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DA08, &qword_1C1E5A480);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 68);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C1DD5024(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBF1DA18, &unk_1C1E5A508);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DA08, &qword_1C1E5A480);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 68);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C1DD5160(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1C1E52E1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D878, &unk_1C1E5A320);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
  swift_getOpaqueTypeMetadata2();
  sub_1C1E0F2FC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D880, &qword_1C1E5A340);
  sub_1C1E5299C();
  sub_1C1E549CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D888, &qword_1C1E5A348);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D890, &qword_1C1E5A350);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D898, &qword_1C1E5A358);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8A0, &qword_1C1E5A360);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8A8, &qword_1C1E5A368);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8B0, &qword_1C1E5A370);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8B8, &qword_1C1E5A378);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8C0, &qword_1C1E5A380);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8C8, &qword_1C1E5A388);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8D0, &qword_1C1E5A390);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8D8, &qword_1C1E5A398);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8E0, &qword_1C1E5A3A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8E8, &qword_1C1E5A3A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8F0, &unk_1C1E5A3B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8F8, &qword_1C1E5A3C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D900, &qword_1C1E5A3C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D908, &unk_1C1E5A3D0);
  sub_1C1DC1124(&qword_1EBF1D910, &qword_1EBF1D900, &qword_1C1E5A3C8);
  sub_1C1DC1124(&qword_1EBF1D918, &qword_1EBF1D908, &unk_1C1E5A3D0);
  swift_getOpaqueTypeConformance2();
  sub_1C1E0FB50();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1C1E3C4FC();
  swift_getOpaqueTypeConformance2();
  sub_1C1E3C5E4();
  swift_getOpaqueTypeConformance2();
  sub_1C1E3C638();
  swift_getOpaqueTypeConformance2();
  sub_1C1E3C68C();
  swift_getOpaqueTypeConformance2();
  sub_1C1E3C6E0();
  swift_getOpaqueTypeConformance2();
  sub_1C1E3C734();
  swift_getOpaqueTypeConformance2();
  sub_1C1E4D288(&qword_1EBF1D9A0, &qword_1EBF1D890, &qword_1C1E5A350, sub_1C1E3CAA8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1C1DC1124(&qword_1EBF1D998, &qword_1EBF1D880, &qword_1C1E5A340);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1C1E3CC44();
  swift_getOpaqueTypeMetadata2();
  sub_1C1E52F2C();
  sub_1C1E5299C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D9F0, &qword_1C1E5A428);
  swift_getOpaqueTypeConformance2();
  sub_1C1E4D7A4(&qword_1EBF1C690, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  sub_1C1DC1124(&qword_1EBF1D9F8, &qword_1EBF1D9F0, &qword_1C1E5A428);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C248, &unk_1C1E5A430);
  sub_1C1E5299C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D298, &qword_1C1E58808);
  swift_getTupleTypeMetadata2();
  sub_1C1E5397C();
  swift_getWitnessTable();
  sub_1C1E5378C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CC60, &qword_1C1E5A440);
  sub_1C1E5299C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DA00, &qword_1C1E5A448);
  sub_1C1E5299C();
  sub_1C1E4D7A4(qword_1EBF1D2E0, MEMORY[0x1E697C998]);
  sub_1C1E5280C();
  swift_getWitnessTable();
  sub_1C1DC1124(&qword_1EBF1CC58, &qword_1EBF1CC60, &qword_1C1E5A440);
  swift_getWitnessTable();
  sub_1C1DC1124(&qword_1EBF1DA10, &qword_1EBF1DA00, &qword_1C1E5A448);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C1DD5BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C1E526EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C1DD5C58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1E526EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1DD5D4C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1C690E6D0]();
  *a1 = result;
  return result;
}

uint64_t sub_1C1DD5D78(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x1C690E6E0](v2);
}

uint64_t sub_1C1DD5DB0()
{
  v1 = type metadata accessor for Function();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 40);

  v6 = (v0 + v3);
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 56);

  v11 = *(v0 + v3 + 72);

  if (*(v0 + v3 + 80))
  {
    v12 = *(v6 + 11);
  }

  v13 = *(v6 + 12);

  v14 = *(v6 + 13);

  v15 = v1[12];
  v16 = sub_1C1E51F9C();
  (*(*(v16 - 8) + 8))(&v6[v15], v16);
  v17 = *&v6[v1[13]];

  v18 = v1[14];
  v19 = sub_1C1E51F5C();
  (*(*(v19 - 8) + 8))(&v6[v18], v19);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C1DD5F3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for GraphView();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v48 = *(*(v3 - 1) + 64);
  v6 = sub_1C1E522DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v49 = *(v7 + 64);
  v9 = v0 + v5;
  v10 = *(v0 + v5);

  if (*(v0 + v5 + 8))
  {
    v11 = *(v9 + 16);
  }

  v12 = v3[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C770, &qword_1C1E57A30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1C1E526EC();
    (*(*(v13 - 8) + 8))(v9 + v12, v13);
  }

  else
  {
    v14 = *(v9 + v12);
  }

  sub_1C1DDEC6C(*(v9 + v3[11]), *(v9 + v3[11] + 8));
  sub_1C1DDEC6C(*(v9 + v3[12]), *(v9 + v3[12] + 8));
  v15 = *(v9 + v3[13] + 16);

  v16 = *(v9 + v3[14] + 16);

  v17 = *(v9 + v3[15] + 8);

  v18 = (v9 + v3[16]);
  v19 = *v18;

  v20 = v18[1];

  v21 = (v9 + v3[17]);
  v22 = type metadata accessor for Function();
  if (!(*(*(v22 - 1) + 48))(v21, 1, v22))
  {
    v47 = v6;
    v23 = *(v21 + 1);

    v24 = *(v21 + 3);

    v25 = *(v21 + 5);

    v26 = *(v21 + 7);

    v27 = *(v21 + 9);

    if (*(v21 + 10))
    {
      v28 = *(v21 + 11);
    }

    v29 = *(v21 + 12);

    v30 = *(v21 + 13);

    v31 = v22[12];
    v32 = sub_1C1E51F9C();
    (*(*(v32 - 8) + 8))(&v21[v31], v32);
    v33 = *&v21[v22[13]];

    v34 = v22[14];
    v35 = sub_1C1E51F5C();
    (*(*(v35 - 8) + 8))(&v21[v34], v35);
    v6 = v47;
  }

  v36 = v4 | v8;
  v37 = (v5 + v48 + v8) & ~v8;
  v38 = *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DA08, &qword_1C1E5A480) + 28)];

  v39 = *(v9 + v3[18] + 24);

  v40 = *(v9 + v3[19] + 24);

  v41 = *(v9 + v3[20] + 32);

  v42 = *(v9 + v3[21] + 16);

  v43 = *(v9 + v3[22] + 16);

  v44 = *(v9 + v3[23] + 32);

  v45 = *(v9 + v3[24] + 32);

  (*(v7 + 8))(v0 + v37, v6);

  return MEMORY[0x1EEE6BDD0](v0, v37 + v49, v36 | 7);
}

uint64_t sub_1C1DD634C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for GraphView();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v48 = *(*(v3 - 1) + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D368, &qword_1C1E5AA30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v49 = *(v7 + 64);
  v9 = v0 + v5;
  v10 = *(v0 + v5);

  if (*(v0 + v5 + 8))
  {
    v11 = *(v9 + 16);
  }

  v12 = v3[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C770, &qword_1C1E57A30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1C1E526EC();
    (*(*(v13 - 8) + 8))(v9 + v12, v13);
  }

  else
  {
    v14 = *(v9 + v12);
  }

  sub_1C1DDEC6C(*(v9 + v3[11]), *(v9 + v3[11] + 8));
  sub_1C1DDEC6C(*(v9 + v3[12]), *(v9 + v3[12] + 8));
  v15 = *(v9 + v3[13] + 16);

  v16 = *(v9 + v3[14] + 16);

  v17 = *(v9 + v3[15] + 8);

  v18 = (v9 + v3[16]);
  v19 = *v18;

  v20 = v18[1];

  v21 = (v9 + v3[17]);
  v22 = type metadata accessor for Function();
  if (!(*(*(v22 - 1) + 48))(v21, 1, v22))
  {
    v47 = v6;
    v23 = *(v21 + 1);

    v24 = *(v21 + 3);

    v25 = *(v21 + 5);

    v26 = *(v21 + 7);

    v27 = *(v21 + 9);

    if (*(v21 + 10))
    {
      v28 = *(v21 + 11);
    }

    v29 = *(v21 + 12);

    v30 = *(v21 + 13);

    v31 = v22[12];
    v32 = sub_1C1E51F9C();
    (*(*(v32 - 8) + 8))(&v21[v31], v32);
    v33 = *&v21[v22[13]];

    v34 = v22[14];
    v35 = sub_1C1E51F5C();
    (*(*(v35 - 8) + 8))(&v21[v34], v35);
    v6 = v47;
  }

  v36 = v4 | v8;
  v37 = (v5 + v48 + v8) & ~v8;
  v38 = *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DA08, &qword_1C1E5A480) + 28)];

  v39 = *(v9 + v3[18] + 24);

  v40 = *(v9 + v3[19] + 24);

  v41 = *(v9 + v3[20] + 32);

  v42 = *(v9 + v3[21] + 16);

  v43 = *(v9 + v3[22] + 16);

  v44 = *(v9 + v3[23] + 32);

  v45 = *(v9 + v3[24] + 32);

  (*(v7 + 8))(v0 + v37, v6);

  return MEMORY[0x1EEE6BDD0](v0, v37 + v49, v36 | 7);
}

uint64_t sub_1C1DD6750()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD6788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC48, &qword_1C1E5A758);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DD6858@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1E52ADC();
  *a1 = result;
  return result;
}

uint64_t sub_1C1DD6884(uint64_t *a1)
{
  v1 = *a1;

  return sub_1C1E52AEC();
}

uint64_t sub_1C1DD6A34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C1DD6A48()
{
  v1 = *v0;
  sub_1C1E54D7C();
  MEMORY[0x1C6910960](v1);
  return sub_1C1E54DAC();
}

uint64_t sub_1C1DD6A90()
{
  v1 = *v0;
  sub_1C1E54D7C();
  MEMORY[0x1C6910960](v1);
  return sub_1C1E54DAC();
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

uint64_t sub_1C1DD6B64(void *a1)
{
  v3 = type metadata accessor for CalculateExpressionView();
  v4 = (v1 + *(v3 + 48));
  v5 = *v4;
  v6 = v4[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C2D8, &qword_1C1E56200);
  sub_1C1E536EC();
  v7 = *v1;
  v8 = [a1 key];
  v9 = &property descriptor for CalculateGraph.xAxisBounds;
  if (!v8)
  {

    goto LABEL_17;
  }

  v10 = v8;
  v28 = v3;
  v11 = [v8 characters];
  v12 = sub_1C1E545FC();
  v14 = v13;

  v15 = [v10 modifierFlags];
  v9 = &property descriptor for CalculateGraph.xAxisBounds;
  if ((v15 & 0x20000) != 0)
  {
    if ((v15 & 0x40000) != 0)
    {
      v16 = 3;
      if ((v15 & 0x100000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = 1;
      if ((v15 & 0x100000) == 0)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

  if ((v15 & 0x40000) == 0)
  {
    v16 = 0;
    if ((v15 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v16 |= 4u;
    goto LABEL_10;
  }

  v16 = 2;
  if ((v15 & 0x100000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v15 & 0x80000) != 0)
  {
    v16 |= 8u;
  }

  v17 = sub_1C1E1083C(v7, v12, v14, v16);

  if (!v17)
  {
LABEL_17:
    sub_1C1E536EC();

    v20 = [a1 key];
    if (!v20)
    {
      return v20 & 1;
    }

    v21 = v20;
    v22 = [v20 v9[51]];

    v23 = sub_1C1E545FC();
    v25 = v24;

    if (v23 == 114 && v25 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v23 == 82 && v25 == 0xE100000000000000)
    {
    }

    else
    {
      v27 = sub_1C1E54D2C();

      if ((v27 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    LOBYTE(v20) = sub_1C1DD7078();
    return v20 & 1;
  }

  if ((sub_1C1E53D8C() & 1) == 0)
  {

LABEL_26:
    LOBYTE(v20) = 0;
    return v20 & 1;
  }

  v18 = v1 + *(v28 + 44);
  if (*v18)
  {
    v19 = *(v18 + 1);
    (*v18)(v17);
  }

  LOBYTE(v20) = 1;
  return v20 & 1;
}

void sub_1C1DD6E18(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    v8 = *a3;
    CalculateExpression.copyToClipboard(overridePlaintext:)(0);
    return;
  }

  v6 = *a3;
  if (sub_1C1E53D2C() == 1)
  {
    v7 = sub_1C1E0030C(a1, a2, v6);
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = sub_1C1E00B14();
    if (!v7)
    {
      return;
    }
  }

  v9 = a3 + *(type metadata accessor for CalculateExpressionView() + 44);
  if (*v9)
  {
    v10 = *(v9 + 1);
    (*v9)(v7);
  }
}

uint64_t CalculateExpressionView.init(expression:isEditable:fontSize:minFontSizeRatio:textAlignment:textColor:truncationMode:operationCallback:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = type metadata accessor for CalculateExpressionView();
  v18 = (a8 + v17[12]);
  type metadata accessor for PlatformKeyboardHandler();
  swift_allocObject();
  sub_1C1DC148C();
  sub_1C1E536DC();
  *v18 = v26;
  v18[1] = v27;
  v19 = a8 + v17[13];
  sub_1C1E536DC();
  v20 = a3;
  if (a4)
  {
    v20 = 20.0;
  }

  v21 = a5;
  if (a6)
  {
    v21 = 0.766666667;
  }

  *v19 = v26;
  *(v19 + 8) = v27;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v20;
  *(a8 + 24) = v21;
  *(a8 + 40) = a7;
  sub_1C1DC0D28(0, &qword_1EDE737A8, 0x1E69DC888);
  *(a8 + 32) = sub_1C1E5499C();
  result = sub_1C1DC18D0(a9, a8 + v17[10], &qword_1EBF1C190, &qword_1C1E55C68);
  v23 = (a8 + v17[11]);
  *v23 = a10;
  v23[1] = a11;
  return result;
}

BOOL sub_1C1DD7078()
{
  v1 = sub_1C1E53CBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v22 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = *v0;
  v16 = sub_1C1E53D2C();
  if (v16 == 1)
  {
    sub_1C1E53CCC();
    if (sub_1C1E53D5C())
    {
      sub_1C1E53CCC();

      (*(v2 + 8))(v14, v1);
      (*(v2 + 32))(v14, v9, v1);
    }

    v23 = *(v2 + 16);
    v23(v6, v14, v1);
    v17 = (*(v2 + 88))(v6, v1);
    v18 = *MEMORY[0x1E6992100];
    if (v17 == *MEMORY[0x1E69920F8])
    {
      (*(v2 + 104))(v12, v18, v1);
    }

    else if (v17 == v18)
    {
      (*(v2 + 104))(v12, *MEMORY[0x1E6992108], v1);
    }

    else
    {
      v19 = *(v2 + 104);
      if (v17 == *MEMORY[0x1E6992108])
      {
        (v19)(v12, *MEMORY[0x1E69920F8], v1);
      }

      else
      {
        v19(v12);
        (*(v2 + 8))(v6, v1);
      }
    }

    if (sub_1C1E53D5C())
    {
      v23(v9, v12, v1);
      sub_1C1E53CDC();
    }

    else
    {
      v23(v9, v12, v1);
      sub_1C1E53CDC();
    }

    v20 = *(v2 + 8);
    v20(v12, v1);
    v20(v14, v1);
  }

  return v16 == 1;
}

uint64_t sub_1C1DD73C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 4)
  {
    MEMORY[0x1C690EC40](a5);
  }

  return sub_1C1E5331C();
}

uint64_t sub_1C1DD7490(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1C690DCF0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C1DD74E4(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1C690DD00](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_1C1DD7564(uint64_t a1, id *a2)
{
  result = sub_1C1E545DC();
  *a2 = 0;
  return result;
}

uint64_t sub_1C1DD75DC(uint64_t a1, id *a2)
{
  v3 = sub_1C1E545EC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C1DD765C@<X0>(uint64_t *a1@<X8>)
{
  sub_1C1E545FC();
  v2 = sub_1C1E545BC();

  *a1 = v2;
  return result;
}

uint64_t sub_1C1DD76A0()
{
  v1 = *v0;
  v2 = sub_1C1E545FC();
  v3 = MEMORY[0x1C6910330](v2);

  return v3;
}

uint64_t sub_1C1DD76DC()
{
  v1 = *v0;
  sub_1C1E545FC();
  sub_1C1E5468C();
}

uint64_t sub_1C1DD7730()
{
  v1 = *v0;
  sub_1C1E545FC();
  sub_1C1E54D7C();
  sub_1C1E5468C();
  v2 = sub_1C1E54DAC();

  return v2;
}

uint64_t sub_1C1DD77A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1C1E545FC();
  v6 = v5;
  if (v4 == sub_1C1E545FC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C1E54D2C();
  }

  return v9 & 1;
}

uint64_t sub_1C1DD782C()
{
  sub_1C1DC8008(&qword_1EBF1C1F0, type metadata accessor for CalculateKey);
  sub_1C1DC8008(&qword_1EBF1C1F8, type metadata accessor for CalculateKey);

  return sub_1C1E54C4C();
}

void *sub_1C1DD78E8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_1C1DD78F8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1C1DD7904()
{
  v2 = *v0;
  sub_1C1DC8008(&qword_1EBF1C348, type metadata accessor for Weight);
  sub_1C1DC8008(&qword_1EBF1C350, type metadata accessor for Weight);
  sub_1C1DD8590();
  return sub_1C1E54C4C();
}

uint64_t sub_1C1DD79CC()
{
  sub_1C1DC8008(&qword_1EDE737E0, type metadata accessor for Key);
  sub_1C1DC8008(&unk_1EBF1C360, type metadata accessor for Key);

  return sub_1C1E54C4C();
}

uint64_t sub_1C1DD7A88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C1E545BC();

  *a2 = v5;
  return result;
}

uint64_t sub_1C1DD7AD0()
{
  sub_1C1DC8008(&qword_1EBF1C338, type metadata accessor for AttributeName);
  sub_1C1DC8008(&qword_1EBF1C340, type metadata accessor for AttributeName);

  return sub_1C1E54C4C();
}

uint64_t sub_1C1DD7B94()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1C6910970](*&v1);
}

uint64_t sub_1C1DD7BD0(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x1EEE6B628](a1, *&v2);
}

uint64_t sub_1C1DD7C20(uint64_t a1)
{
  v2 = sub_1C1E530EC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1C1E52A7C();
}

uint64_t sub_1C1DD7CE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1E52A9C();
  *a1 = result;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C1DD7D70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1DD7DC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C1DD7E14(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C1DD7E2C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1C1DD7E80()
{
  result = qword_1EBF1C1D0;
  if (!qword_1EBF1C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C1D0);
  }

  return result;
}

uint64_t sub_1C1DD7FAC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C1E52B4C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C1DD7FE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1C1E52B5C();
}

uint64_t sub_1C1DD8010(void *a1)
{
  v3 = *(type metadata accessor for CalculateExpressionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_1C1DD6B64(a1) & 1;
}

void sub_1C1DD8078(uint64_t a1, unint64_t a2)
{
  v5 = *(type metadata accessor for CalculateExpressionView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1C1DD6E18(a1, a2, v6);
}

uint64_t objectdestroy_61Tm()
{
  v1 = type metadata accessor for CalculateExpressionView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[10];
  v8 = sub_1C1E530EC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = (v5 + v1[11]);
  if (*v10)
  {
    v11 = v10[1];
  }

  v12 = (v5 + v1[12]);
  v13 = *v12;

  v14 = v12[1];

  v15 = *(v5 + v1[13] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

BOOL sub_1C1DD8274()
{
  v1 = *(type metadata accessor for CalculateExpressionView() - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  return sub_1C1E53D2C() != 1;
}

unint64_t sub_1C1DD8590()
{
  result = qword_1EBF1C358;
  if (!qword_1EBF1C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C358);
  }

  return result;
}

id sub_1C1DD86C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MagnifyRepresentable.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C1DD8730(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1C1DD8778(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MagnifyState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MagnifyState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for MagnifyState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C1DD88A8(uint64_t a1)
{
  if (*(a1 + 24) <= 1u)
  {
    return *(a1 + 24);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C1DD88C0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1C1DD88EC(void *a1)
{
  v3 = sub_1C1E52CFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1E5350C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C3E8, &qword_1C1E567F0);
    sub_1C1E52FAC();
    sub_1C1E52D9C();
    sub_1C1E534FC();
    v14 = v13;
    v16 = v15;
    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v8);
    sub_1C1E52F9C();
    v17 = v31;
    v18 = (v31 + OBJC_IVAR____TtCV11CalculateUI20MagnifyRepresentable11Coordinator_initialLocation);
    *v18 = v14;
    v18[1] = v16;

    v19 = v1[1];
    v31 = *v1;
    v32[0] = v19;
    *(v32 + 9) = *(v1 + 25);
    v28 = v14;
    v29 = v16;
    v30 = 0;
  }

  else
  {
    if ([a1 state] == 2)
    {
      [a1 scale];
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C3E8, &qword_1C1E567F0);
      sub_1C1E52F9C();
      v26 = *&v27[OBJC_IVAR____TtCV11CalculateUI20MagnifyRepresentable11Coordinator_initialLocation];

      v22 = v1[1];
      v31 = *v1;
      v32[0] = v22;
      *(v32 + 9) = *(v1 + 25);
      v28 = v21;
      v29 = v26;
      v23 = 1;
    }

    else
    {
      v24 = v1[1];
      v31 = *v1;
      v32[0] = v24;
      *(v32 + 9) = *(v1 + 25);
      v28 = 0;
      v29 = 0uLL;
      v23 = 2;
    }

    v30 = v23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C3E0, &qword_1C1E567E8);
  return sub_1C1E537AC();
}

id sub_1C1DD8BD8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for MagnifyRepresentable.Coordinator()) init];
  *a1 = result;
  return result;
}

BOOL sub_1C1DD8C40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a4)
  {
    if (!a8)
    {
      return *&a2 == *&a6 && *&a1 == *&a5;
    }

    return 0;
  }

  if (a4 != 1)
  {
    return a8 == 2 && !(a6 | a5 | a7);
  }

  if (a8 != 1)
  {
    return 0;
  }

  v8 = *&a2 == *&a6;
  if (*&a3 != *&a7)
  {
    v8 = 0;
  }

  return *&a1 == *&a5 && v8;
}

uint64_t sub_1C1DD8CE4(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C1E545FC();
  v5 = v4;

  if (v3 == 0xD000000000000021 && 0x80000001C1E5AF70 == v5)
  {
  }

  else
  {
    v7 = sub_1C1E54D2C();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_1C1DD8D94()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCD80]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C3E8, &qword_1C1E567F0);
  sub_1C1E52F9C();
  [v0 setDelegate_];

  v1 = sub_1C1E545BC();
  [v0 setName_];

  return v0;
}

double sub_1C1DD8E80@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1C1E538DC();
  sub_1C1E5281C();
  result = v4 * v4 * -0.65 + 1.0;
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_1C1DD8F28()
{
  result = qword_1EBF1C450;
  if (!qword_1EBF1C450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C458, &qword_1C1E56870);
    sub_1C1DD8FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C450);
  }

  return result;
}

unint64_t sub_1C1DD8FB4()
{
  result = qword_1EBF1C460;
  if (!qword_1EBF1C460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C468, &qword_1C1E56878);
    sub_1C1DD9040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C460);
  }

  return result;
}

unint64_t sub_1C1DD9040()
{
  result = qword_1EBF1C470;
  if (!qword_1EBF1C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C470);
  }

  return result;
}

uint64_t sub_1C1DD9094(uint64_t a1, int a2)
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

uint64_t sub_1C1DD90DC(uint64_t result, int a2, int a3)
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

id sub_1C1DD914C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD060]) init];
  v1 = sub_1C1E545BC();
  [v0 setName_];

  return v0;
}

uint64_t sub_1C1DD91C8()
{
  v1 = sub_1C1E52CFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1E5350C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v14 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C478, &qword_1C1E56950);
  sub_1C1E52FAC();
  sub_1C1E52D9C();
  sub_1C1E534FC();
  v16 = v15;
  v18 = v17;
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  v20[2] = v11;
  v20[3] = v12;
  v20[4] = v13;
  v20[5] = v14;
  v20[0] = v16;
  v20[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C480, &qword_1C1E56958);
  return sub_1C1E537AC();
}

uint64_t sub_1C1DD93DC(double a1)
{
  v3 = sub_1C1DD954C();
  v4 = *(v1 + 160) + -1.0;
  sub_1C1DD95D0();
  v6 = v5;
  v11.n128_f64[0] = sub_1C1DD9614();
  v7 = *(v1 + 160);
  v11.n128_f64[0] = *(v1 + 168) + (-(v6 * v11.n128_f64[0]) - v3 * v4) * a1;
  *(v1 + 176) = 0;
  v8 = v7 + v11.n128_f64[0] * a1;
  *(v1 + 160) = v8;
  *(v1 + 168) = v11.n128_u64[0];
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11.n128_u64[0] = 1.0;
  if (v8 <= 1.0)
  {
    v11.n128_f64[0] = v8;
  }

  return v9(v11);
}