void sub_1C5AE87AC()
{
  sub_1C5AE8BA4(319, &qword_1EC197590, &type metadata for CapsuleProgressStyle.Thumb, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C5BC7B04();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5AE8890(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5AE88D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C5AE8960()
{
  sub_1C5AE8BA4(319, &qword_1EDA45FA0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1C5AE8BA4(319, &qword_1EDA46AC0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C5AE8DF0(319, &qword_1EC192F90, &qword_1EC192D80, &unk_1C5BD6F68, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C5AE8BA4(319, &qword_1EDA45FF8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1C5AE8DF0(319, &qword_1EC1975A0, &qword_1EC197528, &unk_1C5BE77B0, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1C5AE8BA4(319, &qword_1EC1975A8, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1C5AE8D9C(319, &qword_1EDA46758, MEMORY[0x1E697E7E0]);
              if (v6 <= 0x3F)
              {
                sub_1C5AE8BA4(319, &qword_1EC193518, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
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
}

void sub_1C5AE8BA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C5AE8C1C()
{
  sub_1C5AE8D9C(319, &qword_1EC1975C8, type metadata accessor for CapsuleProgressStyle);
  if (v0 <= 0x3F)
  {
    sub_1C5AE8BA4(319, &qword_1EDA46720, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1C5AE8D9C(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
      if (v2 <= 0x3F)
      {
        sub_1C5AE8BA4(319, &qword_1EC193518, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1C5AE8DF0(319, &qword_1EDA45FF0, &qword_1EC195790, &unk_1C5BE0E40, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C5AE8D9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C5AE8DF0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1C5AE8E58()
{
  result = qword_1EC1975D0;
  if (!qword_1EC1975D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1975D0);
  }

  return result;
}

uint64_t sub_1C5AE8EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1C5AE8F1C()
{
  result = qword_1EC197610;
  if (!qword_1EC197610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1975D8);
    sub_1C5AE8FD4();
    sub_1C5924F54(&qword_1EC194198, &unk_1EC1959C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197610);
  }

  return result;
}

unint64_t sub_1C5AE8FD4()
{
  result = qword_1EDA464D0;
  if (!qword_1EDA464D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197608);
    sub_1C5AE908C();
    sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464D0);
  }

  return result;
}

unint64_t sub_1C5AE908C()
{
  result = qword_1EDA465F8;
  if (!qword_1EDA465F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197600);
    sub_1C5924F54(&qword_1EDA46268, &qword_1EC1975F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465F8);
  }

  return result;
}

uint64_t sub_1C5AE9144()
{
  v1 = type metadata accessor for DraggableViewModifier(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v3 + 64);
  v5 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v6 = *(v5 + 48);
  if (v6)
  {
    return v6(*(v5 + v4));
  }

  return result;
}

uint64_t objectdestroy_72Tm()
{
  v1 = type metadata accessor for DraggableViewModifier(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 48))
  {
  }

  v3 = v2 + v1[9];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197530);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = *(v4 + 48);
    v6 = sub_1C5BC7AC4();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598);

  v7 = v2 + v1[10];
  sub_1C5AE8EE4(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
  v8 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C5BC89D4();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  sub_1C5942458(*(v2 + v1[12]), *(v2 + v1[12] + 8));

  return swift_deallocObject();
}

void sub_1C5AE93F8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DraggableViewModifier(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1C5AE4C28(a1, a2, v6);
}

unint64_t sub_1C5AE9478()
{
  result = qword_1EDA46AB8;
  if (!qword_1EDA46AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195790);
    sub_1C59AEC40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46AB8);
  }

  return result;
}

void sub_1C5AE94FC(double a1, double a2)
{
  type metadata accessor for DraggableViewModifier(0);

  sub_1C5AE641C(a1, a2);
}

uint64_t sub_1C5AE95D4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DraggableViewModifier(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1C5AE9678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5AE970C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_1C5AE9794()
{
  result = qword_1EC197680;
  if (!qword_1EC197680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197678);
    sub_1C5AE9820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197680);
  }

  return result;
}

unint64_t sub_1C5AE9820()
{
  result = qword_1EC197688;
  if (!qword_1EC197688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197690);
    sub_1C59CD938();
    sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197688);
  }

  return result;
}

uint64_t sub_1C5AE98D8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1C5AE98E4()
{
  result = qword_1EC1976A8;
  if (!qword_1EC1976A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197650);
    sub_1C5AE9970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976A8);
  }

  return result;
}

unint64_t sub_1C5AE9970()
{
  result = qword_1EC1976B0;
  if (!qword_1EC1976B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197640);
    sub_1C5AE99FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976B0);
  }

  return result;
}

unint64_t sub_1C5AE99FC()
{
  result = qword_1EC1976B8;
  if (!qword_1EC1976B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197638);
    sub_1C5AE9A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976B8);
  }

  return result;
}

unint64_t sub_1C5AE9A88()
{
  result = qword_1EC1976C0;
  if (!qword_1EC1976C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197630);
    sub_1C5AE9B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976C0);
  }

  return result;
}

unint64_t sub_1C5AE9B14()
{
  result = qword_1EC1976C8;
  if (!qword_1EC1976C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197628);
    sub_1C5AE9BCC();
    sub_1C5924F54(&qword_1EC194198, &unk_1EC1959C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976C8);
  }

  return result;
}

unint64_t sub_1C5AE9BCC()
{
  result = qword_1EC1976D0;
  if (!qword_1EC1976D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197620);
    sub_1C5AE9C84();
    sub_1C5924F54(&qword_1EC197730, &qword_1EC197648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976D0);
  }

  return result;
}

unint64_t sub_1C5AE9C84()
{
  result = qword_1EC1976D8;
  if (!qword_1EC1976D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197618);
    sub_1C5AE9D3C();
    sub_1C5924F54(&qword_1EC192528, &qword_1EC1924E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976D8);
  }

  return result;
}

unint64_t sub_1C5AE9D3C()
{
  result = qword_1EC1976E0;
  if (!qword_1EC1976E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1976E8);
    sub_1C5AE9DF4();
    sub_1C5924F54(&qword_1EC197720, &qword_1EC197728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976E0);
  }

  return result;
}

unint64_t sub_1C5AE9DF4()
{
  result = qword_1EC1976F0;
  if (!qword_1EC1976F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1976F8);
    sub_1C5924F54(&qword_1EC197700, &qword_1EC197708);
    sub_1C5924F54(&qword_1EC197710, &qword_1EC197718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976F0);
  }

  return result;
}

uint64_t ScopeBarItemRepresentable.buttonAutomationID.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  v2 = sub_1C5BCAEB4();
  v4 = v3;

  v8[0] = 32;
  v8[1] = 0xE100000000000000;
  v7[2] = v8;
  v8[0] = sub_1C5AF0AC8(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C5AF6480, v7, v2, v4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197738);
  sub_1C5AF7558(&qword_1EDA45EA8, &qword_1EC197738);
  sub_1C5AF64D8();
  v5 = sub_1C5BCB024();

  return v5;
}

void *ScopeBar.__allocating_init(scopes:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) init];
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x80);
  swift_beginAccess();
  *(v3 + v4) = a1;
  v5 = v3;

  sub_1C5AEE1D0();

  return v5;
}

id ScopeBar.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1C5AEA104(uint64_t a1, double a2, double a3)
{
  v7 = [v3 isHidden];
  v8 = type metadata accessor for ScopeBar();
  if (v7)
  {
    v11.receiver = v3;
    v11.super_class = v8;
    return objc_msgSendSuper2(&v11, sel_hitTest_withEvent_, a1, a2, a3);
  }

  else
  {
    v12.receiver = v3;
    v12.super_class = v8;
    result = objc_msgSendSuper2(&v12, sel_hitTest_withEvent_, a1, a2, a3);
    if (result)
    {
      v10 = result;
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {

        return 0;
      }
    }
  }

  return result;
}

id sub_1C5AEA224(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v11 = sub_1C5AEA104(a5, a2, a3);

  return v11;
}

void sub_1C5AEA2D4(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x60));
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

void sub_1C5AEA33C(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x68));
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

void sub_1C5AEA370(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  sub_1C5AEA3E8(a2, a3, a4, a5);
}

void sub_1C5AEA3E8(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for ScopeBar();
  v19.receiver = v4;
  v19.super_class = v9;
  objc_msgSendSuper2(&v19, sel_contentInset);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = v4;
  v18.super_class = v9;
  objc_msgSendSuper2(&v18, sel_setContentInset_, a1, a2, a3, a4);
  sub_1C5AEA4DC(v11, v13, v15, v17);
}

void sub_1C5AEA4DC(double a1, double a2, double a3, double a4)
{
  [v4 contentInset];
  if (v12 != a1 || v9 != a2 || v10 != a3 || v11 != a4)
  {
    sub_1C5AEF524(0);

    sub_1C5925198();
  }
}

double sub_1C5AEA55C(void *a1)
{
  v1 = a1;
  sub_1C5AEA5A0();
  v3 = v2;

  return v3;
}

void sub_1C5AEA5A0()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0));
  if (v2 >> 62)
  {
    v3 = sub_1C5BCB984();
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  if (v3 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v18 = v0;
  v19 = v2 & 0xC000000000000001;

  v4 = 0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = v2;
  do
  {
    if (v19)
    {
      v8 = MEMORY[0x1C694FD20](v4, v2);
    }

    else
    {
      v8 = *(v2 + 8 * v4 + 32);
    }

    v9 = v8;
    ++v4;
    [v8 intrinsicContentSize];
    v11 = v10;
    v13 = v12;
    sub_1C59253A4(v20);
    v14 = type metadata accessor for ScopeBar.Specs();
    v15 = *(*(v14 - 8) + 8);
    v15(v20, v14);
    v5 = v5 + v11 - (v21 + v22);
    sub_1C59253A4(v23);
    v15(v23, v14);

    if (v6 > v13)
    {
      v16 = v6;
    }

    else
    {
      v16 = v13;
    }

    if (v16 > v24)
    {
      v6 = v16;
    }

    else
    {
      v6 = v24;
    }

    v2 = v7;
  }

  while (v3 != v4);

  v0 = v18;
  v1 = MEMORY[0x1E69E7D40];
LABEL_17:
  v17 = *(v0 + *((*v1 & *v0) + 0xB0));
  if (!(v17 >> 62))
  {
    if (!__OFSUB__(*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
    {
      return;
    }

    goto LABEL_22;
  }

  if (__OFSUB__(sub_1C5BCB984(), 1))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }
}

double sub_1C5AEA908(void *a1)
{
  v1 = a1;
  sub_1C5AEA830();
  v3 = v2;

  return v3;
}

void sub_1C5AEA95C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ScopeBar();
  objc_msgSendSuper2(&v6, sel_tintColorDidChange);
  v1 = sub_1C5AECC64();
  sub_1C59253A4(v7);
  v2 = v8;
  v3 = type metadata accessor for ScopeBar.Specs();
  v4 = *(*(v3 - 8) + 8);
  v5 = v2;
  v4(v7, v3);
  [v1 setBackgroundColor_];
}

void sub_1C5AEAA70(void *a1)
{
  v1 = a1;
  sub_1C5AEA95C();
}

id sub_1C5AEAAB8()
{
  v1 = MEMORY[0x1E69E7D40];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ScopeBar();
  objc_msgSendSuper2(&v10, sel_layoutMarginsDidChange);
  v2 = (v0 + *((*v1 & *v0) + 0x70));
  swift_beginAccess();
  if (v2[4])
  {
    [v0 layoutMargins];
    v4 = v3;
    [v0 layoutMargins];
    v6 = v4;
    v7 = 0.0;
    v8 = 0.0;
  }

  else
  {
    v8 = v2[2];
    v5 = v2[3];
    v7 = *v2;
    v6 = v2[1];
  }

  return [v0 setContentInset_];
}

void sub_1C5AEABBC(void *a1)
{
  v1 = a1;
  sub_1C5AEAAB8();
}

uint64_t sub_1C5AEAC04(uint64_t a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  v4.receiver = v1;
  v4.super_class = type metadata accessor for ScopeBar();
  return objc_msgSendSuper2(&v4, sel_touchesShouldCancelInContentView_, a1);
}

uint64_t sub_1C5AEACB0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_1C5AEAC04(v4);

  return a1 & 1;
}

uint64_t ScopeBar.ContentLayoutMode.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5AEAD98()
{
  sub_1C5BCBF54();
  ScopeBar.ContentLayoutMode.hash(into:)();
  return sub_1C5BCBF94();
}

BOOL static ScopeBar.ContentInsetMode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1;
}

uint64_t ScopeBar.ContentInsetMode.hash(into:)()
{
  if (*(v0 + 32))
  {
    return MEMORY[0x1C69501A0](0);
  }

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = *v0;
  v4 = *(v0 + 8);
  MEMORY[0x1C69501A0](1);

  return UIEdgeInsets.hash(into:)(v5, v4, v3, v2);
}

uint64_t ScopeBar.ContentInsetMode.hashValue.getter()
{
  sub_1C5BCBF54();
  ScopeBar.ContentInsetMode.hash(into:)();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5AEAF10()
{
  sub_1C5BCBF54();
  ScopeBar.ContentInsetMode.hash(into:)();
  return sub_1C5BCBF94();
}

id sub_1C5AEAF50()
{
  v1 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70));
  swift_beginAccess();
  if (v1[4])
  {
    [v0 layoutMargins];
    v3 = v2;
    [v0 layoutMargins];
    v5 = v3;
    v6 = 0.0;
    v7 = 0.0;
  }

  else
  {
    v7 = v1[2];
    v4 = v1[3];
    v6 = *v1;
    v5 = v1[1];
  }

  return [v0 setContentInset_];
}

__n128 sub_1C5AEB008@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  swift_beginAccess();
  v4 = v3[32];
  result = *v3;
  v6 = *(v3 + 1);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

id sub_1C5AEB07C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  swift_beginAccess();
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  v4[32] = v3;
  return sub_1C5AEAF50();
}

id (*sub_1C5AEB0FC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C5AEB17C;
}

id sub_1C5AEB17C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C5AEAF50();
  }

  return result;
}

uint64_t sub_1C5AEB1B0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void (*sub_1C5AEB220(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_1C5AEB2D0;
}

void sub_1C5AEB2D0(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  sub_1C5926248(v3);

  free(v2);
}

uint64_t sub_1C5AEB330()
{
  sub_1C5AF6554();
}

void (*sub_1C5AEB358(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_1C5AEB410;
}

void sub_1C5AEB410(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1C5925C58(v4);
  }

  else
  {
    sub_1C5925C58(v3);
  }

  free(v2);
}

uint64_t sub_1C5AEB474@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v11 = *(a1 + a2 - 16);
  v4 = sub_1C5AF6E78();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v8 = swift_allocObject();
    v4 = v6;
    *(v8 + 16) = v11;
    *(v8 + 32) = v6;
    *(v8 + 40) = v7;
    v9 = sub_1C5AF74B0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a3 = v9;
  a3[1] = v8;

  return sub_1C5974668(v4);
}

uint64_t sub_1C5AEB524(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = swift_allocObject();
    *(v7 + 16) = *(v6 - 16);
    *(v7 + 32) = v4;
    *(v7 + 40) = v5;
    v8 = sub_1C5AF7478;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_1C5974668(v4);
  return sub_1C59279D0(v8, v7);
}

uint64_t sub_1C5AEB5C0()
{
  v0 = sub_1C5AF6E78();
  sub_1C5974668(v0);
  return v0;
}

uint64_t sub_1C5AEB670@<X0>(void *a1@<X8>)
{
  v2 = sub_1C5AF6EDC();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    v2 = v4;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C5AF7448;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a1 = v7;
  a1[1] = v6;

  return sub_1C5974668(v2);
}

uint64_t sub_1C5AEB704(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C5AF740C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1C5974668(v1);
  return sub_1C5AEB7C8(v4, v3);
}

uint64_t sub_1C5AEB794()
{
  v0 = sub_1C5AF6EDC();
  sub_1C5974668(v0);
  return v0;
}

uint64_t sub_1C5AEB7C8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x90));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1C59261FC(v6);
}

uint64_t sub_1C5AEB8C0(uint64_t a1)
{
  v2 = sub_1C5BCB804();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_1C5AEB990(v5);
}

uint64_t sub_1C5AEB990(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  swift_beginAccess();
  v4 = sub_1C5BCB804();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C5AEBA58(unint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E7D40] & *a2;
  v5 = *(v4 + 0x50);
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](a1);
  v10 = &v51[-1] - v9;
  v14 = *(v13 + *((v12 & v11) + 0xB0));
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = v8;

    v16 = MEMORY[0x1C694FD20](a1, v14);

    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v8;
  v16 = *(v14 + 8 * a1 + 32);
LABEL_5:
  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  swift_beginAccess();

  sub_1C5BCB174();

  v25 = sub_1C5AF66C4(v10, v5, *(v4 + 88));
  (*(v6 + 8))(v10, v5);
  sub_1C59253A4(v52);
  v26 = v52[6];
  v27 = type metadata accessor for ScopeBar.Specs();
  v28 = *(*(v27 - 8) + 8);
  v29 = v26;
  v28(v52, v27);
  [v25 setTitleColor:v29 forState:2];

  sub_1C59253A4(v53);
  v28(v53, v27);
  if ((v54 & 1) == 0)
  {
    v30 = *&v53[1];
    v31 = [v25 titleLabel];
    if (v31)
    {
      v32 = v31;
      sub_1C59253A4(v55);
      v33 = v55[0];
      v28(v55, v27);
      v34 = sub_1C5A12D48(v30);

      [v32 setFont_];
    }
  }

  [v25 setEnabled_];
  v35 = v25;
  [v35 setAccessibilityIdentifier_];
  v36 = sub_1C5AECC64();
  [a2 convertRect:v36 toCoordinateSpace:{v18, v20, v22, v24}];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  [v35 setFrame_];
  [*(a2 + *((*MEMORY[0x1E69E7D40] & *a2) + 0xC0)) addSubview_];
  if ((v15 & 1) == 0)
  {
    return v35;
  }

  v45 = objc_opt_self();
  v46 = swift_allocObject();
  *(v46 + 16) = v35;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1C5AF74DC;
  *(v47 + 24) = v46;
  v51[4] = sub_1C59A57A4;
  v51[5] = v47;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 1107296256;
  v51[2] = sub_1C59D32C0;
  v51[3] = &block_descriptor_58_0;
  v48 = _Block_copy(v51);
  v49 = v35;

  [v45 performWithoutAnimation_];
  _Block_release(v48);
  LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

  if ((v45 & 1) == 0)
  {
    return v35;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_1C5AEBFC8(void *a1, uint64_t a2, unint64_t a3, char a4, char a5)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v9 = sub_1C5BCB804();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = swift_projectBox();
  v14 = sub_1C5AECC64();
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  if ((*(*(v8 - 8) + 48))(v12, 1, v8) == 1)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  (*(v10 + 8))(v12, v9);
  [v14 setAlpha_];

  sub_1C5AEDC0C();
  sub_1C5AEF7CC(a3, a4 & 1, a5);
}

void sub_1C5AEC194(void *a1, uint64_t a2, unint64_t a3, char a4, char a5, uint64_t a6)
{
  sub_1C5AEBFC8(a1, a2, a3, a4 & 1, a5);
  v8 = 1 << *(a6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a6 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (!v10)
  {
    while (1)
    {
LABEL_4:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v13 >= v11)
      {
        break;
      }

      v10 = *(a6 + 64 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_8;
      }
    }

    return;
  }

  while (1)
  {
LABEL_8:
    v14 = (v12 << 9) | (8 * __clz(__rbit64(v10)));
    v15 = *(*(a6 + 48) + v14);
    v16 = *(*(a6 + 56) + v14);
    v17 = *(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0xB0));
    if ((v17 & 0xC000000000000001) != 0)
    {
      v38 = v16;

      v20 = MEMORY[0x1C694FD20](v15, v17);

      goto LABEL_12;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v15 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v18 = *(v17 + 8 * v15 + 32);
    v19 = v16;
    v20 = v18;
LABEL_12:
    v10 &= v10 - 1;
    [v20 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = sub_1C5AECC64();
    [a1 convertRect:v29 toCoordinateSpace:{v22, v24, v26, v28}];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    [v16 setFrame_];
    if (!v10)
    {
      goto LABEL_4;
    }
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1C5AEC3B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a4;
  v6 = *MEMORY[0x1E69E7D40];
  v47 = *MEMORY[0x1E69E7D40] & *a4;
  v54 = a4;
  v57 = *(*((v6 & v5) + 0x50) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v46 - v7;
  v52 = v8;
  v9 = sub_1C5BCB804();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v46 - v11;
  v13 = *(v9 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v51 = &v46 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v58 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v46 - v20;
  v53 = swift_projectBox();
  v21 = 1 << *(a2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a2 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  if (v23)
  {
    while (1)
    {
      v26 = v25;
LABEL_9:
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      [*(*(a2 + 56) + ((v26 << 9) | (8 * v27))) removeFromSuperview];
      if (!v23)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      return;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(a2 + 64 + 8 * v26);
    ++v25;
    if (v23)
    {
      v25 = v26;
      goto LABEL_9;
    }
  }

  swift_beginAccess();
  v28 = *(v13 + 16);
  v29 = v55;
  v28();
  v30 = v58;
  sub_1C5926100(v58);
  v31 = *(TupleTypeMetadata2 + 48);
  (v28)(v12, v29, v9);
  (v28)(&v12[v31], v30, v9);
  v32 = v12;
  v33 = *(v57 + 48);
  v34 = v52;
  v35 = (v33)(v32, 1, v52);
  v48 = v28;
  if (v35 == 1)
  {
    v36 = *(v13 + 8);
    v36(v58, v9);
    v36(v29, v9);
    if ((v33)(&v32[v31], 1, v34) == 1)
    {
      v50 = v33;
      v36(v32, v9);
      goto LABEL_19;
    }

LABEL_16:
    v50[1](v32, TupleTypeMetadata2);
    return;
  }

  (v28)(v51, v32, v9);
  if ((v33)(&v32[v31], 1, v34) == 1)
  {
    v37 = *(v13 + 8);
    v37(v58, v9);
    v37(v55, v9);
    (*(v57 + 8))(v51, v34);
    goto LABEL_16;
  }

  v50 = v33;
  TupleTypeMetadata2 = v13;
  v38 = v57;
  v39 = v46;
  (*(v57 + 32))(v46, &v32[v31], v34);
  v40 = v51;
  LODWORD(v47) = sub_1C5BCADB4();
  v41 = *(v38 + 8);
  v41(v39, v34);
  v36 = *(TupleTypeMetadata2 + 8);
  TupleTypeMetadata2 += 8;
  v36(v58, v9);
  v36(v55, v9);
  v41(v40, v34);
  v36(v32, v9);
  if (v47)
  {
    v34 = v52;
LABEL_19:
    v42 = sub_1C5AECC64();
    v43 = v53;
    swift_beginAccess();
    v44 = v49;
    (v48)(v49, v43, v9);
    v45 = (v50)(v44, 1, v34) == 1;
    v36(v44, v9);
    [v42 setHidden_];
  }
}

uint64_t sub_1C5AECA14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_1C5AECA68(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_1C5BCAE74();
  v8 = v7;
  if (v6 == sub_1C5BCAE74() && v8 == v9)
  {

LABEL_8:
    v12 = [v1 traitCollection];
    v13 = [v12 legibilityWeight];

    result = [a1 legibilityWeight];
    if (v13 == result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v11 = sub_1C5BCBDE4();

  if (v11)
  {
    goto LABEL_8;
  }

LABEL_9:

  return sub_1C5AECE9C();
}

id sub_1C5AECC64()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_1C5AECCE4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1C5AECCE4(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  sub_1C59253A4(v8);
  v3 = v9;
  v4 = type metadata accessor for ScopeBar.Specs();
  v5 = *(*(v4 - 8) + 8);
  v6 = v3;
  v5(v8, v4);
  [v2 setBackgroundColor_];

  [v2 setHidden_];
  [v2 setClipsToBounds_];
  [v2 setUserInteractionEnabled_];
  [a1 addSubview_];
  return v2;
}

uint64_t sub_1C5AECE9C()
{
  v1 = sub_1C5BCAC14();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BCAC44();
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E7D40];
  if ((*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xC8)) & 1) == 0)
  {
    v11 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0));
    if (v11 >> 62)
    {
      v16 = result;
      v17 = sub_1C5BCB984();
      result = v16;
      if (!v17)
      {
        return result;
      }
    }

    else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return result;
    }

    *(v0 + *((*v10 & *v0) + 0xC8)) = 1;
    v19 = result;
    sub_1C592535C(0, &qword_1EDA4E620);
    v18 = sub_1C5BCB5A4();
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    aBlock[4] = sub_1C5AF74EC;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C596D09C;
    aBlock[3] = &block_descriptor_64;
    v13 = _Block_copy(aBlock);
    v14 = v0;

    sub_1C5BCAC34();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C5AF7510(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0);
    sub_1C5AF7558(&qword_1EDA4E690, &unk_1EC1961C0);
    sub_1C5BCB8F4();
    v15 = v18;
    MEMORY[0x1C694F7F0](0, v9, v4, v13);
    _Block_release(v13);

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v9, v19);
  }

  return result;
}

void sub_1C5AED234()
{
  v1 = MEMORY[0x1E69E7D40];
  if (*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xC8)) != 1)
  {
    return;
  }

  v26 = [v0 effectiveUserInterfaceLayoutDirection];
  [v0 bounds];
  Width = CGRectGetWidth(v30);
  [v0 adjustedContentInset];
  v4 = v3;
  Height = v5;
  v28[0] = 0.0;
  v28[1] = 0.0;
  v7 = *(v0 + *((*v1 & *v0) + 0xB0));
  if (v7 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C5BCB984())
  {

    if (i)
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1C694FD20](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_51;
        }

        v29 = v10;
        sub_1C5AED67C(&v29, v0, v28);

        ++v9;
        if (v12 == i)
        {
          v13 = v28[0];
          goto LABEL_14;
        }
      }
    }

    v13 = 0.0;
LABEL_14:
    v4 = Width - (v4 + Height);

    Width = v13 - *(v0 + *((*v1 & *v0) + 0xA0));
    v14 = *((*v1 & *v0) + 0x78);
    swift_beginAccess();
    if (*(v0 + v14) != 1 || Width >= v4)
    {
      goto LABEL_31;
    }

    v7 = *(v0 + *((*v1 & *v0) + 0xB0));
    v16 = v7 >> 62 ? sub_1C5BCB984() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v16)
    {
      break;
    }

    v17 = 0;
    Height = (v4 - Width) * 0.5;
    v1 = (v7 & 0xC000000000000001);
    while (1)
    {
      if (v1)
      {
        v18 = MEMORY[0x1C694FD20](v17, v7);
      }

      else
      {
        if (v17 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v18 = *(v7 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [v18 frame];
      [v19 setFrame_];

      ++v17;
      if (v20 == v16)
      {
        goto LABEL_30;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

LABEL_30:

  v1 = MEMORY[0x1E69E7D40];
LABEL_31:
  if (v26 != 1)
  {
    goto LABEL_46;
  }

  if (v4 <= Width)
  {
    v4 = Width;
  }

  [v0 bounds];
  Height = CGRectGetHeight(v31);
  v22 = *(v0 + *((*v1 & *v0) + 0xB0));
  if (v22 >> 62)
  {
    v7 = sub_1C5BCB984();
  }

  else
  {
    v7 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    while (!__OFSUB__(v7--, 1))
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1C694FD20](v7, v22);
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        if (v7 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v24 = *(v22 + 32 + 8 * v7);
      }

      v25 = v24;
      v27 = v24;
      sub_1C5AEDAEC(&v27, v0, 0.0, 0.0, v4, Height);

      if (!v7)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_45:

LABEL_46:
  sub_1C5AEDC0C();
  [v0 setContentSize_];
  *(v0 + *((*v1 & *v0) + 0xC8)) = 0;
}

double sub_1C5AED67C(id *a1, void *a2, double *a3)
{
  v4 = *a1;
  [*a1 frame];
  v6 = v5;
  v8 = v7;
  sub_1C59253A4(v53);
  v9 = type metadata accessor for ScopeBar.Specs();
  v10 = *(*(v9 - 8) + 8);
  v10(v53, v9);
  if (v55)
  {
    [v4 intrinsicContentSize];
    recta = v11;
    v47 = v12;
    sub_1C59253A4(v60);
    v10(v60, v9);
    *&v13.f64[0] = v47;
    v13.f64[1] = recta;
    rect = vsubq_f64(vsubq_f64(v13, v61), v62);
  }

  else
  {
    v14 = v54;
    v15 = [v4 titleLabel];
    v16 = 0x1FAAB1000;
    v48 = v4;
    if (v15)
    {
      v17 = v15;
      sub_1C59253A4(v56);
      v18 = v10;
      v19 = v56[0];
      v18(v56, v9);
      v20 = sub_1C5A12D48(v14);

      v10 = v18;
      v16 = &off_1E822B000;
      [v17 setFont_];

      v4 = v48;
    }

    [v4 intrinsicContentSize];
    rectb = v21;
    v47 = v22;
    sub_1C59253A4(v57);
    v10(v57, v9);
    *&v23.f64[0] = v47;
    v23.f64[1] = rectb;
    rect = vsubq_f64(vsubq_f64(v23, v58), v59);
    v24 = [v4 titleLabel];
    v25 = v10;
    if (v24)
    {
      v26 = v24;
      sub_1C59253A4(v60);
      v27 = v16;
      v28 = v60[0];
      v25(v60, v9);
      [v26 v27 + 1144];
    }

    v4 = v48;
    v10 = v25;
  }

  sub_1C59253A4(v63);
  v10(v63, v9);
  v29 = v64;
  v65.size.height = rect.f64[0];
  v65.origin.x = v6;
  v65.origin.y = v8;
  v65.size.width = rect.f64[1];
  Height = CGRectGetHeight(v65);
  if (v29 > Height)
  {
    Height = v29;
  }

  rect.f64[0] = Height;
  v31 = *a3;
  [a2 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = [a2 traitCollection];
  [v40 displayScale];
  v42 = v41;

  v66.origin.x = v33;
  v66.origin.y = v35;
  v66.size.width = v37;
  v66.size.height = v39;
  MinY = CGRectGetMinY(v66);
  v67.origin.x = v33;
  v67.origin.y = v35;
  v67.size.width = v37;
  v67.size.height = v39;
  v44 = CGRectGetHeight(v67);
  v68.origin.y = 0.0;
  v68.origin.x = v31;
  v68.size.width = rect.f64[1];
  v68.size.height = rect.f64[0];
  v45 = CGRectGetHeight(v68);
  [v4 setFrame_];
  [v4 layoutIfNeeded];
  v69.origin.y = 0.0;
  v69.origin.x = v31;
  v69.size.width = rect.f64[1];
  v69.size.height = rect.f64[0];
  result = *a3 + CGRectGetWidth(v69) + *(a2 + *((*MEMORY[0x1E69E7D40] & *a2) + 0xA0));
  *a3 = result;
  return result;
}

id sub_1C5AEDAEC(id *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = *a1;
  [*a1 frame];
  v13 = v12;
  MinY = v14;
  v17 = v16;
  v19 = v18;
  if ([a2 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v24.origin.x = a3;
    v24.origin.y = a4;
    v24.size.width = a5;
    v24.size.height = a6;
    MaxX = CGRectGetMaxX(v24);
    v25.origin.x = v13;
    v25.origin.y = MinY;
    v25.size.width = v17;
    v25.size.height = v19;
    v21 = MaxX - CGRectGetMinX(v25);
    v26.origin.x = v13;
    v26.origin.y = MinY;
    v26.size.width = v17;
    v26.size.height = v19;
    v22 = v21 - CGRectGetWidth(v26);
    v27.origin.x = v13;
    v27.origin.y = MinY;
    v27.size.width = v17;
    v27.size.height = v19;
    MinY = CGRectGetMinY(v27);
    v13 = v22;
  }

  return [v11 setFrame_];
}

uint64_t sub_1C5AEDC0C()
{
  v5 = v0;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v8 = sub_1C5BCB804();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v40 - v14;
  sub_1C5926100(v12);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    return (*(v9 + 8))(v12, v8);
  }

  (*(v13 + 32))(v15, v12, v7);
  v17 = *((*v6 & *v0) + 0x80);
  swift_beginAccess();
  v42[0] = *(v5 + v17);
  sub_1C5BCB144();
  swift_getWitnessTable();
  result = sub_1C5BCB464();
  if (v45)
  {
    return (*(v13 + 8))(v15, v7);
  }

  v18 = v44;
  v19 = *(v5 + *((*v6 & *v5) + 0xB0));
  if ((v19 & 0xC000000000000001) != 0)
  {

    v20 = MEMORY[0x1C694FD20](v18, v19);

LABEL_8:
    [v20 frame];
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;

    v25 = sub_1C5AECC64();
    [v25 setFrame_];

    v12 = *((*v6 & *v5) + 0xC0);
    v26 = qword_1EDA4E080;
    v19 = *&v12[v5];
    if (v26 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if ((v44 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_9:
    v44 = qword_1EDA4E088;
    v45 = byte_1EDA4E090;
    v46 = qword_1EDA4E098;
    UIView.corner.setter(&v44);

    sub_1C59253A4(v42);
    v27 = type metadata accessor for ScopeBar.Specs();
    v28 = *(*(v27 - 8) + 8);
    v28(v42, v27);
    if ((v43 & 1) == 0)
    {
      v29 = v42[1];
      v30 = *(v5 + *((*v6 & *v5) + 0xB8));
      if (v30)
      {
        v31 = [v30 titleLabel];
        if (v31)
        {
          v41 = v31;
          sub_1C59253A4(&v44);
          v32 = v44;
          v28(&v44, v27);
          v33 = sub_1C5A12D48(v29);

          v34 = v41;
          [v41 setFont_];
        }
      }
    }

    v35 = *v6 & *v5;
    v36 = *(v5 + *(v35 + 0xB8));
    if (v36)
    {
      v37 = *&v12[v5];
      v38 = v36;
      [v5 convertRect:v37 toCoordinateSpace:{v1, v2, v3, v4}];
      [v38 setFrame_];

      v35 = *v6 & *v5;
    }

    v39 = *(v5 + *(v35 + 184));
    if (v39)
    {
      [v39 layoutIfNeeded];
    }

    [v5 bringSubviewToFront_];
    return (*(v13 + 8))(v15, v7);
  }

  if (v44 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v19 + 8 * v44 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5AEE1D0()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v98 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = *((v2 & v1) + 0x50);
  v4 = sub_1C5BCB804();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v106 = TupleTypeMetadata2;
  v107 = v6;
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v91 = &v82 - v8;
  v108 = v4;
  v104 = *(v4 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v105 = &v82 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v82 - v15;
  v103 = *(v3 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v82 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v97 = &v82 - v19;
  v20 = swift_getTupleTypeMetadata2();
  v96 = sub_1C5BCB804();
  v101 = *(v96 - 8);
  v21 = MEMORY[0x1EEE9AC00](v96);
  v95 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v82 - v23;
  v25 = *(v0 + *((v2 & v1) + 0xB0));
  v26 = MEMORY[0x1E69E7CC0];
  v112 = MEMORY[0x1E69E7CC0];
  v110 = 0;
  v111 = 1;
  v27 = v2 & v1;
  v28 = v20;
  v29 = *(v27 + 128);
  swift_beginAccess();
  v102 = v0;
  aBlock[0] = *(v0 + v29);
  v30 = sub_1C5BCB144();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C694F230](&v113, v30, WitnessTable);
  aBlock[6] = v113;
  sub_1C5BCBC24();
  sub_1C5BCBBF4();
  v32 = v24;
  v33 = v97;
  v94 = sub_1C5BCBC14();
  v93 = (v101 + 32);
  v92 = v28 - 8;
  v100 = (v103 + 4);
  v90 = (v103 + 2);
  v89 = (v103 + 7);
  v88 = (v104 + 16);
  v87 = (v103 + 6);
  ++v103;
  v99 = (v104 + 8);
  v83 = (v107 + 8);
  v104 = v16;
  v84 = v11;
  v86 = v28;
  for (i = v32; ; v32 = i)
  {
    v34 = v95;
    sub_1C5BCBC04();
    (*v93)(v32, v34, v96);
    if ((*(*(v28 - 8) + 48))(v32, 1, v28) == 1)
    {
      break;
    }

    v107 = v25;
    v101 = *v32;
    v35 = *(v28 + 48);
    v36 = *v100;
    (*v100)(v33, v32 + v35, v3);
    (*v90)(v16, v33, v3);
    (*v89)(v16, 0, 1, v3);
    v37 = v105;
    sub_1C5926100(v105);
    v38 = *(v106 + 48);
    v39 = *v88;
    v26 = v91;
    v40 = v108;
    (*v88)(v91, v16, v108);
    v39(&v26[v38], v37, v40);
    v41 = *v87;
    if ((*v87)(v26, 1, v3) == 1)
    {
      v42 = *v99;
      v43 = v37;
      v44 = v108;
      (*v99)(v43, v108);
      v42(v16, v44);
      if (v41(&v26[v38], 1, v3) != 1)
      {
        goto LABEL_8;
      }

      v42(v26, v108);
      v25 = v107;
LABEL_10:
      v110 = v101;
      v111 = 0;
      goto LABEL_11;
    }

    v45 = v84;
    v39(v84, v26, v108);
    if (v41(&v26[v38], 1, v3) == 1)
    {
      v46 = *v99;
      v47 = v108;
      (*v99)(v105, v108);
      v46(v104, v47);
      (*v103)(v45, v3);
LABEL_8:
      (*v83)(v26, v106);
      v25 = v107;
      goto LABEL_11;
    }

    v48 = v82;
    v36(v82, &v26[v38], v3);
    v49 = sub_1C5BCADB4();
    v50 = *v103;
    (*v103)(v48, v3);
    v51 = *v99;
    v52 = v108;
    (*v99)(v105, v108);
    v51(v104, v52);
    v50(v45, v3);
    v51(v26, v52);
    v25 = v107;
    if (v49)
    {
      goto LABEL_10;
    }

LABEL_11:
    v53 = v25 >> 62;
    if (v25 >> 62)
    {
      if (!sub_1C5BCB984())
      {
LABEL_20:
        v57 = *(v98 + 88);
        v33 = v97;
        v58 = sub_1C5AF66C4(v97, v3, v57);
        sub_1C592535C(0, &qword_1EDA4E040);
        v59 = swift_allocObject();
        v60 = v102;
        swift_unknownObjectWeakInit();
        v61 = swift_allocObject();
        v61[2] = v3;
        v61[3] = v57;
        v61[4] = v59;
        v26 = v58;
        v62 = sub_1C5BCB774();
        [v26 addAction:v62 forControlEvents:64];

        [v60 addSubview_];
        v16 = v104;
        v28 = v86;
        goto LABEL_42;
      }
    }

    else if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v54 = v25 & 0xC000000000000001;
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1C694FD20](0, v25);
      v16 = v104;
      v55 = v25 & 0xFFFFFFFFFFFFFF8;
      if (!v53)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = v104;
      if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v26 = *(v25 + 32);
      v55 = v25 & 0xFFFFFFFFFFFFFF8;
      if (!v53)
      {
LABEL_16:
        if (!*(v55 + 16))
        {
          goto LABEL_56;
        }

        if (!v54)
        {
          v56 = v26;
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

    if (!sub_1C5BCB984())
    {
      goto LABEL_55;
    }

    if (!sub_1C5BCB984())
    {
      goto LABEL_57;
    }

    if (!v54)
    {
      v65 = v26;
      goto LABEL_30;
    }

LABEL_25:
    v63 = v26;
    MEMORY[0x1C694FD20](0, v25);
    swift_unknownObjectRelease();
    v55 = v25 & 0xFFFFFFFFFFFFFF8;
    if (!v53)
    {
      if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

LABEL_27:
      v64 = *(v55 + 16);
      if (!v64)
      {
        goto LABEL_58;
      }

      goto LABEL_33;
    }

LABEL_30:
    if (!sub_1C5BCB984())
    {
      goto LABEL_60;
    }

    if (sub_1C5BCB984() < 1)
    {
      goto LABEL_59;
    }

    v64 = sub_1C5BCB984();
LABEL_33:
    v66 = v64 - 1;
    if (__OFSUB__(v64, 1))
    {
      goto LABEL_54;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v113 = v25;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      v28 = v86;
      if (v53)
      {
LABEL_39:
        sub_1C5BCB984();
      }

LABEL_40:
      v25 = sub_1C5BCBAF4();
      v113 = v25;
      goto LABEL_41;
    }

    v28 = v86;
    if (v53)
    {
      goto LABEL_39;
    }

    if (v66 > *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_40;
    }

LABEL_41:
    sub_1C5AF65B4(0, 1, 0);
    v57 = *(v98 + 88);
    v33 = v97;
LABEL_42:
    (*(v57 + 16))(v3, v57);
    v68 = sub_1C5BCAE44();

    [v26 setTitle:v68 forState:0];

    MEMORY[0x1C694F270]();
    if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C5BCB094();
    }

    sub_1C5BCB0E4();

    (*v103)(v33, v3);
    v26 = v112;
  }

  if (!(v25 >> 62))
  {
    v70 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v70)
    {
      goto LABEL_62;
    }

    goto LABEL_47;
  }

LABEL_61:
  result = sub_1C5BCB984();
  v70 = result;
  if (!result)
  {
    goto LABEL_62;
  }

LABEL_47:
  if (v70 < 1)
  {
    goto LABEL_64;
  }

  for (j = 0; j != v70; ++j)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v72 = MEMORY[0x1C694FD20](j, v25);
    }

    else
    {
      v72 = *(v25 + 8 * j + 32);
    }

    v73 = v72;
    [v72 removeFromSuperview];
  }

LABEL_62:

  v74 = v102;
  v75 = *((*MEMORY[0x1E69E7D40] & *v102) + 0xB0);
  v76 = *(v102 + v75);
  *(v102 + v75) = v26;
  v77 = objc_opt_self();
  v78 = swift_allocObject();
  v78[2] = v74;
  v78[3] = v76;
  v78[4] = &v110;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_1C5AF75AC;
  *(v79 + 24) = v78;
  aBlock[4] = sub_1C5AF76A8;
  aBlock[5] = v79;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C59D32C0;
  aBlock[3] = &block_descriptor_74;
  v80 = _Block_copy(aBlock);
  v81 = v74;

  [v77 performWithoutAnimation_];
  _Block_release(v80);
  LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();

  if ((v77 & 1) == 0)
  {
    return result;
  }

  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

void sub_1C5AEF034(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if ([a1 sender])
    {
      sub_1C5BCB8D4();
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v21[0] = v19;
    v21[1] = v20;
    if (*(&v20 + 1))
    {
      sub_1C592535C(0, &qword_1EDA45D58);
      if (swift_dynamicCast())
      {
        v10 = v18[1];
        v11 = MEMORY[0x1E69E7D40];
        v12 = *(v9 + *((*MEMORY[0x1E69E7D40] & *v9) + 0xB0));

        v13 = sub_1C5AFB3D0(v10, v12);
        v15 = v14;

        if ((v15 & 1) == 0 && !UIAccessibilityIsVoiceOverRunning())
        {
          v16 = (v9 + *((*v11 & *v9) + 0x88));
          swift_beginAccess();
          v17 = *v16;
          if (*v16)
          {
            swift_beginAccess();
            sub_1C5974668(v17);

            sub_1C5BCB174();

            v17(v13, v7);
            sub_1C59261FC(v17);
            (*(v5 + 8))(v7, a3);
          }

          sub_1C5926520(v13, 0, 1);
        }
      }

      else
      {
      }
    }

    else
    {

      sub_1C592BE5C(v21);
    }
  }
}

void sub_1C5AEF304(void *a1, unint64_t a2, uint64_t a3)
{
  sub_1C5AECE9C();
  sub_1C5AED234();
  v6 = MEMORY[0x1E69E7D40];
  v7 = (a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x90));
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {
    if (a2 >> 62)
    {
      sub_1C5974668(v8);
      sub_1C592535C(0, &qword_1EDA4E078);

      v11 = sub_1C5BCBBD4();

      a2 = v11;
    }

    else
    {
      sub_1C5974668(*v7);

      sub_1C5BCBE04();
      sub_1C592535C(0, &qword_1EDA4E078);
    }

    v9 = *(a1 + *((*v6 & *a1) + 0xB0));
    if (v9 >> 62)
    {
      sub_1C592535C(0, &qword_1EDA4E078);

      v10 = sub_1C5BCBBD4();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_1C5BCBE04();
      sub_1C592535C(0, &qword_1EDA4E078);
      v10 = v9;
    }

    v8(a2, v10);
    sub_1C59261FC(v8);
  }

  sub_1C5AEF7CC(*a3, *(a3 + 8), 1);
}

uint64_t sub_1C5AEF524(int a1)
{
  v2 = v1;
  v16 = a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = sub_1C5BCB804();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v15[-v11];
  sub_1C5926100(v9);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    return (*(v6 + 8))(v9, v5);
  }

  (*(v10 + 32))(v12, v9, v4);
  v14 = *((*v3 & *v1) + 0x80);
  swift_beginAccess();
  v17 = *(v2 + v14);
  sub_1C5BCB144();
  swift_getWitnessTable();
  sub_1C5BCB464();
  if (v19 != 1)
  {
    sub_1C5AEF7CC(v18, 0, v16 & 1);
  }

  return (*(v10 + 8))(v12, v4);
}

void sub_1C5AEF7CC(unint64_t a1, char a2, char a3)
{
  if (a2)
  {
    return;
  }

  v5 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xB0));
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x1C694FD20](a1, v5);

    goto LABEL_6;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v6 = *(v5 + 8 * a1 + 32);
LABEL_6:
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v3 contentInset];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v3 visibleBounds];
  v47 = v20;
  v48 = v18;
  v25 = UIEdgeInsetsInsetRect(v21, v22, v23, v24, v16, v18);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  rect = v8;
  v51.origin.x = v8;
  v32 = v10;
  v51.origin.y = v10;
  v33 = v12;
  v51.size.width = v12;
  v34 = v14;
  v51.size.height = v14;
  MinX = CGRectGetMinX(v51);
  v52.origin.x = v25;
  v52.origin.y = v27;
  v52.size.width = v29;
  v52.size.height = v31;
  if (MinX >= CGRectGetMinX(v52))
  {
    v54.origin.x = rect;
    v38 = v32;
    v54.origin.y = v32;
    v54.size.width = v33;
    v54.size.height = v34;
    MaxX = CGRectGetMaxX(v54);
    v55.origin.x = v25;
    v55.origin.y = v27;
    v55.size.width = v29;
    v55.size.height = v31;
    if (CGRectGetMaxX(v55) >= MaxX)
    {
      return;
    }

    v56.origin.x = rect;
    v56.origin.y = v38;
    v56.size.width = v33;
    v56.size.height = v34;
    v40 = CGRectGetMaxX(v56);
    v57.origin.x = v25;
    v57.origin.y = v27;
    v57.size.width = v29;
    v57.size.height = v31;
    v36 = v40 - CGRectGetWidth(v57);
    v37 = v47;
  }

  else
  {
    v53.origin.x = rect;
    v53.origin.y = v32;
    v53.size.width = v33;
    v53.size.height = v34;
    v36 = CGRectGetMinX(v53);
    v37 = v48;
  }

  v41 = v36 - v37;
  v58.origin.x = v25;
  v58.origin.y = v27;
  v58.size.width = v29;
  v58.size.height = v31;
  MinY = CGRectGetMinY(v58);
  [v3 contentOffset];
  if (v41 != v44 || MinY != v43)
  {

    [v3 setContentOffset:a3 & 1 animated:{v41, MinY}];
  }
}

void sub_1C5AEFA90(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1C5AEFAE4(a3);
}

id sub_1C5AEFAE4(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ScopeBar();
  return objc_msgSendSuper2(&v4, sel_setIsAccessibilityElement_, a1 & 1);
}

void sub_1C5AEFB74(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1C5AEFBC8(a3);
}

id sub_1C5AEFBC8(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ScopeBar();
  return objc_msgSendSuper2(&v4, sel_setAccessibilityTraits_, a1);
}

uint64_t sub_1C5AEFC60()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ScopeBar();
  v1 = objc_msgSendSuper2(&v5, sel_accessibilityLabel);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C5BCAE74();

  return v3;
}

void sub_1C5AEFD2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C5BCAE44();
  }

  else
  {
    v3 = 0;
  }

  v4.receiver = v2;
  v4.super_class = type metadata accessor for ScopeBar();
  objc_msgSendSuper2(&v4, sel_setAccessibilityLabel_, v3);

  sub_1C5AEFDDC();
}

void sub_1C5AEFDDC()
{
  v1 = [v0 accessibilityLabel];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScopeBar();
  objc_msgSendSuper2(&v2, sel_setAccessibilityValue_, v1);
}

id sub_1C5AEFE98(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1C5BCAE44();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1C5AEFF18()
{
  v1 = MEMORY[0x1E69E7D40];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ScopeBar();
  v2 = objc_msgSendSuper2(&v10, sel_accessibilityValue);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C5BCAE74();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + *((*v1 & *v0) + 0xB8));
  if (v5)
  {
    v6 = v5;

    v7 = [v6 accessibilityLabel];
    if (v7)
    {
      v8 = v7;
      v4 = sub_1C5BCAE74();
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

void sub_1C5AF0064(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1C5BCAE74();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

void sub_1C5AF00EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C5BCAE44();
  }

  else
  {
    v3 = 0;
  }

  v4.receiver = v2;
  v4.super_class = type metadata accessor for ScopeBar();
  objc_msgSendSuper2(&v4, sel_setAccessibilityValue_, v3);
}

void sub_1C5AF01A0(void *a1)
{
  v1 = a1;
  sub_1C5AF0198();
}

void sub_1C5AF01F0(void *a1)
{
  v1 = a1;
  sub_1C5AF01E8();
}

uint64_t sub_1C5AF0238(int a1)
{
  v2 = v1;
  v25 = a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = sub_1C5BCB804();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v24 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  sub_1C5926100(v8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v9 + 32))(v14, v8, v4);
  v16 = *((*v3 & *v1) + 0x80);
  swift_beginAccess();
  v26 = *(v2 + v16);
  sub_1C5BCB144();
  swift_getWitnessTable();
  sub_1C5BCB464();
  if (v28 == 1)
  {
    return (*(v9 + 8))(v14, v4);
  }

  v17 = v27;
  if (v25)
  {
    swift_beginAccess();

    v18 = sub_1C5BCB0F4();

    if (__OFSUB__(v18, 1))
    {
      __break(1u);
      return result;
    }

    if (v17 < v18 - 1)
    {
      v19 = 1;
      goto LABEL_12;
    }
  }

  else if (v27 > 0)
  {
    v19 = -1;
LABEL_12:
    sub_1C5926520(v17 + v19, 0, 1);
    v20 = (v2 + *((*v3 & *v2) + 0x88));
    swift_beginAccess();
    v21 = *v20;
    if (*v20)
    {
      swift_beginAccess();
      sub_1C5974668(v21);

      v22 = v24;
      sub_1C5BCB174();

      v21(v17 + v19, v22);
      sub_1C59261FC(v21);
      v23 = *(v9 + 8);
      v23(v22, v4);
      return (v23)(v14, v4);
    }
  }

  return (*(v9 + 8))(v14, v4);
}

id ScopeBar.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ScopeBar.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScopeBar();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C5AF07D4(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  sub_1C59261FC(*&a1[*((*v2 & *a1) + 0x88)]);
  sub_1C59261FC(*&a1[*((*v2 & *a1) + 0x90)]);
  v3 = *((*v2 & *a1) + 0x98);
  v4 = sub_1C5BCB804();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  v5 = *&a1[*((*v2 & *a1) + 0xC0)];
}

uint64_t sub_1C5AF0984()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v4[4] = sub_1C5AF0A4C;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1C5B84840;
  v4[3] = &block_descriptor_83;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  qword_1EDA4E060 = v2;
  return result;
}

id sub_1C5AF0A4C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  v4 = &selRef_blackColor;
  if (v1 != 1)
  {
    v4 = &selRef_labelColor;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  v5 = [v2 *v3];

  return v5;
}

unint64_t sub_1C5AF0AC8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1C5BCAFD4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1C5B760B8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1C5B760B8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1C5BCAFB4();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1C5BCAF14();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1C5BCAF14();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1C5BCAFD4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1C5B760B8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1C5BCAFD4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1C5B760B8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1C5B760B8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1C5BCAF14();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5AF0E88(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for FittedText();
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197768);
  v38 = a2;
  result = sub_1C5BCBC64();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    v39 = v8;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 48);
      v24 = *(v37 + 72);
      v25 = v23 + v24 * v22;
      if (v38)
      {
        sub_1C5AF762C(v25, v7, type metadata accessor for FittedText);
      }

      else
      {
        sub_1C5AF75C4(v25, v7, type metadata accessor for FittedText);
      }

      v26 = *(*(v39 + 56) + 8 * v22);
      sub_1C5BCBF54();
      sub_1C5BC7B04();
      sub_1C5AF7510(&qword_1EC196A58, MEMORY[0x1E69695A8]);
      sub_1C5BCAD44();
      result = sub_1C5BCBF94();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1C5AF762C(v7, *(v10 + 48) + v24 * v18, type metadata accessor for FittedText);
      *(*(v10 + 56) + 8 * v18) = v26;
      ++*(v10 + 16);
      v8 = v39;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1C5AF1250(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917F0);
  result = sub_1C5BCBC64();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1C5BCBF44();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1C5AF14AC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1C5BC7B04();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1918B0);
  v39 = a2;
  result = sub_1C5BCBC64();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1C5AF7510(&qword_1EC196A58, MEMORY[0x1E69695A8]);
      result = sub_1C5BCAD34();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1C5AF1888(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917D0);
  v30 = a2;
  result = sub_1C5BCBC64();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1C5BCBF54();
      MEMORY[0x1C69501A0](v20);
      result = sub_1C5BCBF94();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C5AF1B18(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = _s17DownloadContainerVMa();
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197750);
  v37 = a2;
  result = sub_1C5BCBC64();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_1C5AF762C(v25, v7, _s17DownloadContainerVMa);
      }

      else
      {
        sub_1C5AF75C4(v25, v7, _s17DownloadContainerVMa);
      }

      result = sub_1C5BCBF44();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_1C5AF762C(v7, *(v10 + 56) + v24 * v18, _s17DownloadContainerVMa);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1C5AF1E60(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197748);
  v43 = a2;
  result = sub_1C5BCBC64();
  v10 = result;
  if (*(v8 + 16))
  {
    v39 = v2;
    v40 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    v18 = v42;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v21 = (v15 - 1) & v15;
LABEL_15:
      v24 = v20 | (v11 << 6);
      v25 = *(v8 + 48);
      v45 = *(v41 + 72);
      v46 = v21;
      v26 = v25 + v45 * v24;
      if (v43)
      {
        sub_1C5AF762C(v26, v7, type metadata accessor for MotionAssetDownload.AssetKey);
        v44 = *(*(v8 + 56) + 8 * v24);
      }

      else
      {
        sub_1C5AF75C4(v26, v7, type metadata accessor for MotionAssetDownload.AssetKey);
        v44 = *(*(v8 + 56) + 8 * v24);
      }

      sub_1C5BCBF54();
      sub_1C5BC7A24();
      sub_1C5AF7510(&qword_1EC192578, MEMORY[0x1E6968FB0]);
      sub_1C5BCAD44();
      sub_1C5BCAD44();
      v27 = &v7[*(v18 + 24)];
      v28 = *v27;
      v29 = v27[1];
      if (*v27 == 0.0)
      {
        v28 = 0.0;
      }

      MEMORY[0x1C69501C0](*&v28);
      if (v29 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v29;
      }

      MEMORY[0x1C69501C0](*&v30);
      result = sub_1C5BCBF94();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v8 = v40;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v8 = v40;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1C5AF762C(v7, *(v10 + 48) + v45 * v19, type metadata accessor for MotionAssetDownload.AssetKey);
      *(*(v10 + 56) + 8 * v19) = v44;
      ++*(v10 + 16);
      v15 = v46;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_39;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_39:
  *v3 = v10;
  return result;
}

uint64_t sub_1C5AF2290(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917C8);
  v34 = a2;
  result = sub_1C5BCBC64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1C5BCBF54();
      sub_1C5BCAF04();
      result = sub_1C5BCBF94();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C5AF2544(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197770);
  v35 = a2;
  result = sub_1C5BCBC64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1C593F33C(v22, v36);
      }

      else
      {
        sub_1C592B32C(v22, v36);
        v23 = v21;
      }

      sub_1C5BCAE74();
      sub_1C5BCBF54();
      sub_1C5BCAF04();
      v24 = sub_1C5BCBF94();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_1C593F33C(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1C5AF2828(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_1C5BCBC64();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1C5BCBF54();
      sub_1C5BCAF04();
      result = sub_1C5BCBF94();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1C5AF2AC8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1C5BC7A24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191810);
  v39 = a2;
  result = sub_1C5BCBC64();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1C5AF7510(&qword_1EC192578, MEMORY[0x1E6968FB0]);
      result = sub_1C5BCAD34();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1C5AF2EA4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197740);
  v40 = a2;
  result = sub_1C5BCBC64();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1C5AF762C(v28, v41, type metadata accessor for MotionAssetDownload.AssetKey);
      }

      else
      {
        sub_1C5AF75C4(v28, v41, type metadata accessor for MotionAssetDownload.AssetKey);
      }

      sub_1C5BCBF54();
      sub_1C5BCAF04();
      result = sub_1C5BCBF94();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1C5AF762C(v41, *(v9 + 56) + v27 * v17, type metadata accessor for MotionAssetDownload.AssetKey);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1C5AF321C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197760);
  v36 = a2;
  result = sub_1C5BCBC64();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 32 * v21;
      v38 = *v25;
      v26 = *(v25 + 24);
      v37 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
      }

      sub_1C5BCBF54();
      sub_1C5BCAF04();
      result = sub_1C5BCBF94();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v38;
      *(v17 + 16) = v37;
      *(v17 + 24) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C5AF34E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191838);
  result = sub_1C5BCBC64();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_1C5BCBF44();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1C5AF374C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191818);
  v34 = a2;
  result = sub_1C5BCBC64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1C5BCBF54();
      sub_1C5BCAF04();
      result = sub_1C5BCBF94();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1C5AF39EC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C5BCB914() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1C5BCBF44();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(_s17DownloadContainerVMa() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C5AF3B98(int64_t a1, uint64_t a2)
{
  v33 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  v4 = *(v33 - 8);
  result = MEMORY[0x1EEE9AC00](v33);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_1C5BCB914() + 1) & ~v9;
    v13 = *(v4 + 72);
    v31 = a2;
    v32 = a2 + 64;
    v30 = v13;
    do
    {
      v14 = v13 * v10;
      sub_1C5AF75C4(*(a2 + 48) + v13 * v10, v7, type metadata accessor for MotionAssetDownload.AssetKey);
      sub_1C5BCBF54();
      sub_1C5BC7A24();
      sub_1C5AF7510(&qword_1EC192578, MEMORY[0x1E6968FB0]);
      sub_1C5BCAD44();
      v15 = v33;
      sub_1C5BCAD44();
      v16 = &v7[*(v15 + 24)];
      v17 = *v16;
      v18 = v16[1];
      if (*v16 == 0.0)
      {
        v17 = 0.0;
      }

      MEMORY[0x1C69501C0](*&v17);
      if (v18 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v18;
      }

      MEMORY[0x1C69501C0](*&v19);
      v20 = sub_1C5BCBF94();
      result = sub_1C5AF73B0(v7);
      v21 = v20 & v11;
      if (a1 >= v12)
      {
        if (v21 < v12)
        {
          a2 = v31;
          v8 = v32;
          v13 = v30;
          goto LABEL_4;
        }

        v13 = v30;
        a2 = v31;
        if (a1 >= v21)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v13 = v30;
        a2 = v31;
        if (v21 >= v12 || a1 >= v21)
        {
LABEL_16:
          v22 = *(a2 + 48);
          result = v22 + v13 * a1;
          if (v13 * a1 < v14 || result >= v22 + v14 + v13)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v32;
          }

          else
          {
            v8 = v32;
            if (v13 * a1 != v14)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = *(a2 + 56);
          v24 = (v23 + 8 * a1);
          v25 = (v23 + 8 * v10);
          if (a1 != v10 || v24 >= v25 + 1)
          {
            *v24 = *v25;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      v8 = v32;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C5AF3EDC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C5BCB914() + 1) & ~v5;
    do
    {
      sub_1C5BCBF54();

      sub_1C5BCAF04();
      v9 = sub_1C5BCBF94();

      v10 = v9 & v7;
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
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
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

void sub_1C5AF408C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C5BCB914() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1C5BCAE74();
      sub_1C5BCBF54();
      v11 = v10;
      sub_1C5BCAF04();
      v12 = sub_1C5BCBF94();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_1C5AF4254(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C5BCB914() + 1) & ~v5;
    while (1)
    {
      sub_1C5BCBF54();

      sub_1C5BCAF04();
      v9 = sub_1C5BCBF94();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for MotionAssetDownload.AssetKey(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C5AF4440(int64_t a1, uint64_t a2)
{
  v40 = sub_1C5BC7A24();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1C5BCB914();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1C5AF7510(&qword_1EC192578, MEMORY[0x1E6968FB0]);
      v23 = sub_1C5BCAD34();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_1C5AF4760(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C5BCB914() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1C5BCBF44();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1C5AF48D0()
{
  v1 = v0;
  v2 = type metadata accessor for FittedText();
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197768);
  v5 = *v0;
  v6 = sub_1C5BCBC54();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1C5AF75C4(*(v5 + 48) + v21, v4, type metadata accessor for FittedText);
        v22 = *(*(v5 + 56) + 8 * v20);
        result = sub_1C5AF762C(v4, *(v7 + 48) + v21, type metadata accessor for FittedText);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void *sub_1C5AF4B04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917F0);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1C5AF4C78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917D0);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C5AF4DD4()
{
  v1 = v0;
  v2 = _s17DownloadContainerVMa();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197750);
  v4 = *v0;
  v5 = sub_1C5BCBC54();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_1C5AF75C4(*(v4 + 56) + v23, v26, _s17DownloadContainerVMa);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        result = sub_1C5AF762C(v22, *(v24 + 56) + v23, _s17DownloadContainerVMa);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

void *sub_1C5AF500C()
{
  v1 = v0;
  v2 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197748);
  v4 = *v0;
  v5 = sub_1C5BCBC54();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v27;
        v21 = *(v28 + 72) * v19;
        sub_1C5AF75C4(*(v4 + 48) + v21, v27, type metadata accessor for MotionAssetDownload.AssetKey);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v29;
        sub_1C5AF762C(v20, *(v29 + 48) + v21, type metadata accessor for MotionAssetDownload.AssetKey);
        *(*(v23 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1C5AF5258()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917C8);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1C5AF53D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197770);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        sub_1C592B32C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1C593F33C(v19, (*(v4 + 56) + 32 * v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C5AF5568(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1C5BCBC54();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1C5AF56F0(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *v2;
  v7 = sub_1C5BCBC54();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    v29 = v4;
    v30 = (v6 + 64);
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, v30, 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = v36;
        v23 = *(v36 + 72) * v21;
        v25 = v33;
        v24 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v23, v34);
        v26 = *(*(v6 + 56) + 8 * v21);
        v27 = v35;
        (*(v22 + 32))(*(v35 + 48) + v23, v25, v24);
        *(*(v27 + 56) + 8 * v21) = v26;

        v16 = v37;
      }

      while (v37);
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

        v4 = v29;
        v8 = v35;
        goto LABEL_21;
      }

      v20 = *(v30 + v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v37 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

void *sub_1C5AF596C()
{
  v1 = v0;
  v2 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197740);
  v4 = *v0;
  v5 = sub_1C5BCBC54();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_1C5AF75C4(v21 + v27, v32, type metadata accessor for MotionAssetDownload.AssetKey);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_1C5AF762C(v26, *(v28 + 56) + v27, type metadata accessor for MotionAssetDownload.AssetKey);

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1C5AF5BCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197760);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = *(v22 + 24);
        v25 = (*(v4 + 48) + v18);
        v26 = *v22;
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v26;
        *(v27 + 16) = v23;
        *(v27 + 24) = v24;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1C5AF5D50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191838);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C5AF5EAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191818);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C5AF6014()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191830);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        *(*(v4 + 56) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 56) + 16 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C5AF616C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191828);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C5AF62DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191868);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1C5AF6428(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C5BCBDE4() & 1;
  }
}

uint64_t sub_1C5AF6480(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C5BCBDE4() & 1;
  }
}

unint64_t sub_1C5AF64D8()
{
  result = qword_1EDA45F28;
  if (!qword_1EDA45F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45F28);
  }

  return result;
}

uint64_t sub_1C5AF6554()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5AF65B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1C592535C(0, &qword_1EDA45D58);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1C5BCB984();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1C5BCB984();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_1C5AF66C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197758);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38[0] = v38 - v6;
  v39 = sub_1C5BC7DD4();
  MEMORY[0x1EEE9AC00](v39);
  v38[2] = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() buttonWithType_];
  v9 = [v8 titleLabel];
  if (v9)
  {
    v10 = v9;
    sub_1C59253A4(v42);
    v11 = v42[0];
    v12 = type metadata accessor for ScopeBar.Specs();
    v13 = *(*(v12 - 8) + 8);
    v14 = v11;
    v13(v42, v12);
    [v10 setFont_];
  }

  v15 = [v8 titleLabel];
  if (v15)
  {
    v16 = v15;
    [v15 setAdjustsFontForContentSizeCategory_];
  }

  v17 = *MEMORY[0x1E69DDC50];
  v18 = v8;
  [v18 setMaximumContentSizeCategory_];
  (*(a3 + 16))(a2, a3);
  v19 = sub_1C5BCAE44();

  [v18 setTitle:v19 forState:0];

  sub_1C59253A4(v43);
  v20 = v43[7];
  v21 = type metadata accessor for ScopeBar.Specs();
  v22 = *(*(v21 - 8) + 8);
  v23 = v20;
  v22(v43, v21);
  [v18 setTitleColor:v23 forState:0];

  sub_1C59253A4(v44);
  v24 = v45;
  v22(v44, v21);
  [v18 setTitleColor:v24 forState:4];

  v40 = 0x72614265706F6373;
  v41 = 0xE90000000000002ELL;
  v25 = (*(a3 + 24))(a2, a3);
  MEMORY[0x1C694F170](v25);

  v26 = v40;
  v27 = v41;
  v28 = [objc_opt_self() mainBundle];
  v29 = sub_1C5949F2C();
  v31 = v30;

  v40 = v29;
  v41 = v31;
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](v26, v27);
  v32 = sub_1C5BCAE44();

  [v18 setAccessibilityIdentifier_];

  sub_1C592535C(0, &qword_1EDA4E148);
  sub_1C5BC7D74();
  v33 = v38[0];
  sub_1C5BC7E94();
  v34 = sub_1C5BC7EA4();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  v35 = sub_1C5BCB4A4();
  [v18 setHoverStyle_];

  v36 = v18;
  [v36 setContentHorizontalAlignment_];
  [v36 setContentVerticalAlignment_];

  return v36;
}

void _s11MediaCoreUI8ScopeBarC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40];
  v4 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  *v4 = 0u;
  v4[1] = 0u;
  v5 = (v0 + *((*v2 & *v0) + 0x68));
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  *v5 = *MEMORY[0x1E69DDCE0];
  v5[1] = v6;
  v7 = v0 + *((*v2 & *v0) + 0x70);
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  *(v0 + *((*v2 & *v0) + 0x78)) = 0;
  v8 = *((*v2 & *v0) + 0x80);
  v9 = *((v3 & v1) + 0x50);
  *(v0 + v8) = sub_1C5BCB0B4();
  v10 = (v0 + *((*v2 & *v0) + 0x88));
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + *((*v2 & *v0) + 0x90));
  *v11 = 0;
  v11[1] = 0;
  (*(*(v9 - 8) + 56))(v0 + *((*v2 & *v0) + 0x98), 1, 1, v9);
  *(v0 + *((*v2 & *v0) + 0xA0)) = 0;
  v12 = *((*v2 & *v0) + 0xA8);
  *(v0 + v12) = sub_1C5924C60();
  *(v0 + *((*v2 & *v0) + 0xB0)) = MEMORY[0x1E69E7CC0];
  *(v0 + *((*v2 & *v0) + 0xB8)) = 0;
  *(v0 + *((*v2 & *v0) + 0xC0)) = 0;
  *(v0 + *((*v2 & *v0) + 0xC8)) = 0;
  sub_1C5BCBBC4();
  __break(1u);
}

uint64_t sub_1C5AF6E78()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1C5AF6EDC()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  swift_beginAccess();
  return *v1;
}

uint64_t getEnumTagSinglePayload for MotionCacheEntryLookupError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MotionCacheEntryLookupError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_1C5AF7370(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5AF738C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_1C5AF73B0(uint64_t a1)
{
  v2 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5AF740C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_1C5AF7478(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1C5AF7510(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5AF7558(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5AF75C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5AF762C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C5AF76C8(_BYTE *a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 8) == 1)
  {
    *a1 = v7;
  }

  else
  {

    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v7, 0);
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t NowPlayingQueueChapterList.init(_:isExpanded:title:chapterBuilder:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  v11 = type metadata accessor for NowPlayingQueueChapterList();
  result = a3();
  v13 = (a6 + *(v11 + 80));
  *v13 = a4;
  v13[1] = a5;
  return result;
}

uint64_t NowPlayingQueueChapterList.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v113 = sub_1C5BC92E4();
  v98 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v97 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1C5BC8B74();
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1C5BC8C04();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838);
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v75 - v7;
  v106 = a1[3];
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196700);
  sub_1C5BC8AB4();
  v8 = sub_1C5BC8AB4();
  v105 = a1[6];
  v125 = v105;
  v126 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1C5924F54(&qword_1EC196710, &qword_1EC196700);
  v123 = WitnessTable;
  v124 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_1C5AF87B0();
  v121 = v11;
  v122 = v12;
  v13 = swift_getWitnessTable();
  v116 = v8;
  v117 = MEMORY[0x1E69E6370];
  v118 = v13;
  v119 = MEMORY[0x1E69E6380];
  sub_1C5BCA724();
  v14 = a1[2];
  swift_getTupleTypeMetadata2();
  v15 = sub_1C5BCB144();
  v102 = a1[4];
  sub_1C5BC8AB4();
  v16 = sub_1C5BC8AB4();
  v17 = swift_getWitnessTable();
  v107 = a1;
  v18 = a1[5];
  v116 = v15;
  v117 = v14;
  v103 = v14;
  v118 = v16;
  v119 = v17;
  v101 = v18;
  v120 = v18;
  sub_1C5BCA8C4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  v19 = sub_1C5BCAB74();
  v20 = sub_1C5BCA934();
  v87 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v104 = &v75 - v21;
  v100 = v19;
  v22 = swift_getWitnessTable();
  v115[5] = MEMORY[0x1E6981E60];
  v115[6] = v22;
  v99 = v22;
  v115[7] = MEMORY[0x1E6981E60];
  v23 = swift_getWitnessTable();
  v24 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
  v116 = v20;
  v117 = v6;
  v118 = v23;
  v119 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v89 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v86 = &v75 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197780);
  v90 = OpaqueTypeMetadata2;
  v27 = sub_1C5BC8AB4();
  v88 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v85 = &v75 - v28;
  v116 = v20;
  v117 = v6;
  v91 = v6;
  v81 = v23;
  v118 = v23;
  v119 = v24;
  v82 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_1C5924F54(&qword_1EC197788, &qword_1EC197780);
  v115[3] = OpaqueTypeConformance2;
  v115[4] = v30;
  v31 = swift_getWitnessTable();
  v32 = sub_1C5AFA134(&qword_1EDA462E0, MEMORY[0x1E697C658]);
  v33 = v113;
  v116 = v27;
  v117 = v113;
  v118 = v31;
  v119 = v32;
  v34 = swift_getOpaqueTypeMetadata2();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v83 = &v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v84 = &v75 - v38;
  v111 = sub_1C5BC92D4();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v75 - v39;
  v119 = &type metadata for Features;
  v120 = sub_1C5A2E158();
  v40 = swift_allocObject();
  v116 = v40;
  *(v40 + 16) = "MediaCoreUI";
  *(v40 + 24) = 11;
  *(v40 + 32) = 2;
  *(v40 + 40) = "HoveringChapterPicker";
  *(v40 + 48) = 21;
  *(v40 + 56) = 2;
  LOBYTE(a1) = sub_1C5BC7C14();
  v41 = __swift_destroy_boxed_opaque_existential_0(&v116);
  if (a1)
  {
    v115[0] = sub_1C5BCA484();
    v116 = v27;
    v117 = v33;
    v118 = v31;
    v119 = v32;
    swift_getOpaqueTypeConformance2();
    sub_1C5941738(v115, v34, MEMORY[0x1E69815C0]);

    v42 = v31;
    v43 = v27;
LABEL_5:
    v71 = MEMORY[0x1E6981580];
    v116 = v43;
    v117 = v33;
    v118 = v42;
    v119 = v32;
    v115[1] = swift_getOpaqueTypeConformance2();
    v115[2] = v71;
    v72 = v111;
    v73 = swift_getWitnessTable();
    v74 = v114;
    sub_1C593EDC0(v114, v72, v73);
    return (*(v110 + 8))(v74, v72);
  }

  v76 = v34;
  v77 = v35;
  v78 = v27;
  v79 = v32;
  v80 = v31;
  MEMORY[0x1EEE9AC00](v41);
  *&v44 = v103;
  *(&v44 + 1) = v106;
  *&v45 = v102;
  *(&v45 + 1) = v101;
  *(&v75 - 4) = v44;
  *(&v75 - 3) = v45;
  v46 = v107[7];
  *(&v75 - 4) = v105;
  *(&v75 - 3) = v46;
  *(&v75 - 2) = v108;
  v47 = v104;
  sub_1C5BCA924();
  v48 = *MEMORY[0x1E697E728];
  v49 = sub_1C5BC89B4();
  v50 = v109;
  (*(*(v49 - 8) + 104))(v109, v48, v49);
  sub_1C5AFA134(&qword_1EDA46688, MEMORY[0x1E697E730]);
  result = sub_1C5BCADB4();
  if (result)
  {
    v52 = v86;
    sub_1C5BC9F54();
    sub_1C5924EF4(v50, &qword_1EC192838);
    (*(v87 + 8))(v47, v20);
    v53 = v92;
    sub_1C5BC8BF4();
    v54 = *(sub_1C5BC8B84() + 20);
    v55 = *MEMORY[0x1E697F468];
    v56 = sub_1C5BC9044();
    v57 = v95;
    (*(*(v56 - 8) + 104))(&v95[v54], v55, v56);
    __asm { FMOV            V0.2D, #4.0 }

    *v57 = _Q0;
    *(v57 + *(v96 + 20)) = 0xC000000000000000;
    sub_1C5AFA134(qword_1EC197790, MEMORY[0x1E697EAB8]);
    v63 = v85;
    v64 = v90;
    sub_1C5BC9E94();
    sub_1C5AF9748(v57);
    (*(v93 + 8))(v53, v94);
    (*(v89 + 8))(v52, v64);
    v65 = v97;
    sub_1C5BC8C54();
    v66 = v83;
    v43 = v78;
    v33 = v113;
    v42 = v80;
    v32 = v79;
    sub_1C5BC9E04();
    (*(v98 + 8))(v65, v33);
    (*(v88 + 8))(v63, v43);
    v116 = v43;
    v117 = v33;
    v118 = v42;
    v119 = v32;
    v67 = swift_getOpaqueTypeConformance2();
    v68 = v84;
    v69 = v76;
    sub_1C593EDC0(v66, v76, v67);
    v70 = *(v77 + 8);
    v70(v66, v69);
    sub_1C593EDC0(v68, v69, v67);
    sub_1C5950E54(v66, v69);
    v70(v66, v69);
    v70(v68, v69);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C5AF87B0()
{
  result = qword_1EC197778;
  if (!qword_1EC197778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197778);
  }

  return result;
}

uint64_t sub_1C5AF8804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v131 = a1;
  v132 = a3;
  v127 = a8;
  *&v162 = a2;
  *(&v162 + 1) = a3;
  v163 = a4;
  v164 = a5;
  v165 = a6;
  v166 = a7;
  v133 = a6;
  v138 = a7;
  v128 = type metadata accessor for NowPlayingQueueChapterList();
  v103 = *(v128 - 8);
  v101[2] = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v102 = v101 - v12;
  v101[1] = swift_getTupleTypeMetadata2();
  v13 = sub_1C5BCB144();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196700);
  v122 = a4;
  v136 = sub_1C5BC8AB4();
  v14 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v107 = v13;
  v108 = a5;
  *&v162 = v13;
  *(&v162 + 1) = a2;
  v121 = a2;
  v137 = v14;
  v163 = v14;
  v164 = WitnessTable;
  v104 = WitnessTable;
  v165 = a5;
  v16 = sub_1C5BCA8C4();
  v123 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v106 = v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v105 = v101 - v19;
  v135 = v20;
  v126 = sub_1C5BCB804();
  v124 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v134 = v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v125 = v101 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197820);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v101 - v25;
  v27 = sub_1C5BC8AB4();
  v111 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v101 - v28;
  v30 = sub_1C5BC8AB4();
  v120 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v115 = v101 - v31;
  v113 = v30;
  v32 = sub_1C5BC8AB4();
  v118 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v117 = v101 - v33;
  v172 = a6;
  v173 = MEMORY[0x1E697E5D8];
  v34 = swift_getWitnessTable();
  v35 = sub_1C5924F54(&qword_1EC196710, &qword_1EC196700);
  v170 = v34;
  v171 = v35;
  v130 = v35;
  v36 = swift_getWitnessTable();
  v112 = v36;
  v37 = sub_1C5AF87B0();
  v168 = v36;
  v169 = v37;
  v116 = v32;
  v114 = swift_getWitnessTable();
  *&v162 = v32;
  *(&v162 + 1) = MEMORY[0x1E69E6370];
  v163 = v114;
  v164 = MEMORY[0x1E69E6380];
  v38 = sub_1C5BCA724();
  v129 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v119 = v101 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v110 = v101 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v139 = v101 - v43;
  sub_1C5BC98E4();
  v44 = v131;
  sub_1C5AF76C8(&v162);
  sub_1C5BCA2F4();
  sub_1C5AF76C8(&v162);
  v109 = *(v44 + 24);
  v45 = 3;
  if (!v109)
  {
    v45 = -1;
  }

  v46 = 12;
  if (v109)
  {
    v46 = 0;
  }

  if (v162 == 2)
  {
    v47 = v45;
  }

  else
  {
    v47 = v46;
  }

  *v26 = v47;
  v26[8] = 0;
  *(v26 + 2) = swift_getKeyPath();
  v26[24] = 0;
  v48 = type metadata accessor for NowPlayingQueueBackground(0);
  v49 = *(v48 + 28);
  *&v26[v49] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  (*(*(v48 - 8) + 56))(v26, 0, 1, v48);
  sub_1C5AFA134(&qword_1EC197828, type metadata accessor for NowPlayingQueueBackground);
  v50 = v115;
  sub_1C5BCA004();
  sub_1C5924EF4(v26, &qword_1EC197820);
  (*(v111 + 8))(v29, v27);
  LOBYTE(v149) = 0;
  sub_1C5BCA684();
  LOBYTE(v48) = v162;
  v51 = *(&v162 + 1);
  KeyPath = swift_getKeyPath();
  LOBYTE(v162) = v48;
  *(&v162 + 1) = v51;
  v163 = KeyPath;
  v165 = 0;
  v166 = 0;
  v164 = 0;
  v167 = 0;
  v53 = v117;
  v54 = v113;
  MEMORY[0x1C694E550](&v162, v113, &type metadata for PlayingItemBackgroundAppearanceModifier, v112);
  v55 = v163;
  v56 = v164;
  v57 = v165;
  v58 = v166;
  v59 = v167;

  sub_1C596AC4C(v55, v56, v57, v58, v59);
  (*(v120 + 8))(v50, v54);
  LODWORD(v57) = v109;
  LOBYTE(v162) = v109;
  v60 = v110;
  v61 = v116;
  sub_1C5BCA1C4();
  (*(v118 + 8))(v53, v61);
  v116 = swift_getWitnessTable();
  sub_1C593EDC0(v60, v38, v116);
  v62 = *(v129 + 8);
  v120 = v38;
  v117 = v62;
  v118 = v129 + 8;
  (v62)(v60, v38);
  if (v57 == 1)
  {
    v148 = *(v131 + 16);
    v63 = v148;
    v64 = v121;
    v65 = sub_1C5BCB144();
    swift_getWitnessTable();
    sub_1C5BCB3C4();
    v145 = v162;
    v147 = v63;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197830);
    v67 = sub_1C5AFA17C();
    v68 = swift_getWitnessTable();
    sub_1C5BCBE64();
    v145 = v149;
    v146 = v150;
    *&v162 = v66;
    *(&v162 + 1) = v65;
    v163 = v67;
    v164 = v68;
    sub_1C5BCBAB4();
    swift_getWitnessTable();
    *&v162 = sub_1C5BCB164();
    MEMORY[0x1EEE9AC00](v162);
    v69 = v132;
    v101[-6] = v64;
    v101[-5] = v69;
    v70 = v122;
    v71 = v108;
    v101[-4] = v122;
    v101[-3] = v71;
    v72 = v138;
    v99 = v133;
    v100 = v138;
    v115 = swift_getKeyPath();
    v74 = v102;
    v73 = v103;
    v75 = v128;
    (*(v103 + 16))(v102, v131, v128);
    v76 = (*(v73 + 80) + 64) & ~*(v73 + 80);
    v77 = swift_allocObject();
    *(v77 + 2) = v64;
    v78 = v132;
    *(v77 + 3) = v132;
    *(v77 + 4) = v70;
    v79 = v133;
    *(v77 + 5) = v71;
    *(v77 + 6) = v79;
    *(v77 + 7) = v72;
    (*(v73 + 32))(&v77[v76], v74, v75);
    v80 = swift_allocObject();
    v81 = v122;
    v80[2] = v121;
    v80[3] = v78;
    v80[4] = v81;
    v80[5] = v71;
    v80[6] = v79;
    v80[7] = v72;
    v80[8] = sub_1C5AFA25C;
    v80[9] = v77;
    v143 = v72;
    v144 = v130;
    v141 = swift_getWitnessTable();
    v142 = MEMORY[0x1E697E5D8];
    v82 = swift_getWitnessTable();
    v99 = v82;
    v83 = v106;
    sub_1C5BCA8A4();
    v140 = v82;
    v84 = v135;
    v85 = swift_getWitnessTable();
    v86 = v105;
    sub_1C593EDC0(v83, v84, v85);
    v87 = v123;
    v88 = *(v123 + 8);
    v88(v83, v84);
    sub_1C593EDC0(v86, v84, v85);
    v88(v86, v84);
    v89 = v134;
    (*(v87 + 32))(v134, v83, v84);
    (*(v87 + 56))(v89, 0, 1, v84);
  }

  else
  {
    (*(v123 + 56))(v134, 1, 1, v135);
    v160 = v138;
    v161 = v130;
    v158 = swift_getWitnessTable();
    v159 = MEMORY[0x1E697E5D8];
    v157 = swift_getWitnessTable();
    swift_getWitnessTable();
  }

  v90 = v125;
  v91 = v134;
  sub_1C5941600(v134, v125);
  v92 = v124;
  v93 = *(v124 + 8);
  v94 = v126;
  v93(v91, v126);
  v96 = v119;
  v95 = v120;
  (*(v129 + 16))(v119, v139, v120);
  *&v162 = v96;
  (*(v92 + 16))(v91, v90, v94);
  *(&v162 + 1) = v91;
  *&v149 = v95;
  *(&v149 + 1) = v94;
  *&v145 = v116;
  v155 = v138;
  v156 = v130;
  v153 = swift_getWitnessTable();
  v154 = MEMORY[0x1E697E5D8];
  v152 = swift_getWitnessTable();
  v151 = swift_getWitnessTable();
  *(&v145 + 1) = swift_getWitnessTable();
  sub_1C594226C(&v162, 2uLL, &v149);
  v93(v90, v94);
  v97 = v117;
  (v117)(v139, v95);
  v93(v91, v94);
  return v97(v96, v95);
}

uint64_t sub_1C5AF9748(uint64_t a1)
{
  v2 = sub_1C5BC8B74();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5AF97F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v41 = a7;
  v42 = a8;
  v40 = a5;
  v44 = a2;
  v45 = a1;
  v46 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197820);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v40 - v14;
  v47 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196700);
  v19 = sub_1C5BC8AB4();
  v49 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v43 = &v40 - v20;
  v21 = sub_1C5BC8AB4();
  v50 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v48 = &v40 - v25;
  result = sub_1C5BCB0F4();
  v27 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v55 = a4;
    v56 = v40;
    v57 = a6;
    v58 = v41;
    v59 = v42;
    v60 = a10;
    v28 = *(a3 + *(type metadata accessor for NowPlayingQueueChapterList() + 80));
    v42 = v23;
    v29 = v45;
    v28(v45, v44);
    v30 = 12;
    if (v27 != v29)
    {
      v30 = 0;
    }

    *v15 = v30;
    v15[8] = 0;
    *(v15 + 2) = swift_getKeyPath();
    v15[24] = 0;
    v31 = type metadata accessor for NowPlayingQueueBackground(0);
    v32 = *(v31 + 28);
    *&v15[v32] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
    swift_storeEnumTagMultiPayload();
    (*(*(v31 - 8) + 56))(v15, 0, 1, v31);
    sub_1C5AFA134(&qword_1EC197828, type metadata accessor for NowPlayingQueueBackground);
    v33 = v43;
    sub_1C5BCA004();
    sub_1C5924EF4(v15, &qword_1EC197820);
    (*(v47 + 8))(v18, a6);
    sub_1C5BC98B4();
    v34 = sub_1C5924F54(&qword_1EC196710, &qword_1EC196700);
    v53 = a10;
    v54 = v34;
    WitnessTable = swift_getWitnessTable();
    v36 = v42;
    sub_1C5BCA2F4();
    (*(v49 + 8))(v33, v19);
    v51 = WitnessTable;
    v52 = MEMORY[0x1E697E5D8];
    v37 = swift_getWitnessTable();
    v38 = v48;
    sub_1C593EDC0(v36, v21, v37);
    v39 = *(v50 + 8);
    v39(v36, v21);
    sub_1C593EDC0(v38, v21, v37);
    return (v39)(v38, v21);
  }

  return result;
}

void sub_1C5AF9D04()
{
  sub_1C5AFA0E4();
  if (v0 <= 0x3F)
  {
    sub_1C5BCB144();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1C5927B74();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C5AF9DC8(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 24) - 8) + 64) + ((v6 + 25) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = a1 & 0xFFFFFFFFFFFFFFF8;
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 25) & ~v6);
    }

    v18 = *(v17 + 16);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t sub_1C5AF9F14(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 25) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 25) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = result & 0xFFFFFFFFFFFFFFF8;
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 25) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *(v18 + 16) = v19;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 25) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 25) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1C5AFA0E4()
{
  if (!qword_1EC197818)
  {
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC197818);
    }
  }
}

uint64_t sub_1C5AFA134(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C5AFA17C()
{
  result = qword_1EC197838;
  if (!qword_1EC197838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197830);
    sub_1C5AFA208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197838);
  }

  return result;
}

unint64_t sub_1C5AFA208()
{
  result = qword_1EC197840[0];
  if (!qword_1EC197840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC197840);
  }

  return result;
}

uint64_t sub_1C5AFA25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = v3[7];
  v13 = *(type metadata accessor for NowPlayingQueueChapterList() - 8);
  return sub_1C5AF97F0(a1, a2, v3 + ((*(v13 + 80) + 64) & ~*(v13 + 80)), v7, v8, v9, v10, v11, a3, v12);
}

uint64_t sub_1C5AFA32C(char *a1)
{
  v3 = *(v1 + 64);
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_1C5AFA39C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5AFA434@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = result;
  *(a5 + 16) = a2 & 1;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t sub_1C5AFA448(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  if (*(v1 + 16) == 1)
  {
    v10 = sub_1C5BCAB64();
  }

  else
  {
    v10 = *(v1 + 8);
  }

  (*(v1 + 24))(v10);
  v11 = *(a1 + 24);
  sub_1C593EDC0(v6, v3, v11);
  v12 = *(v4 + 8);
  v12(v6, v3);
  sub_1C593EDC0(v9, v3, v11);
  return (v12)(v9, v3);
}

uint64_t getEnumTagSinglePayload for MotionPlayerError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MotionPlayerError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1C5AFA5F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5AFA60C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

void View.waveformColorPalette(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v15 = *a1;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v8 = v15;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  MEMORY[0x1C694E550](&v15, a2, &type metadata for WaveformColorPaletteModifier, a3);
  v12 = v15;
  v13 = v16;
  v14 = v17;
}

uint64_t WaveformColorPalette.init(playingColor:pausedColor:bufferingColorMin:bufferingColorMax:)@<X0>(uint64_t *a1@<X8>)
{
  sub_1C592535C(0, &qword_1EDA45D98);

  v2 = sub_1C5BCB704();

  v3 = sub_1C5BCB704();

  v4 = sub_1C5BCB704();
  v5 = sub_1C5BCB704();

  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

void sub_1C5AFA7A8()
{
  v0 = objc_opt_self();
  v1 = [v0 tintColor];
  v2 = [v0 labelColor];
  v3 = [v2 colorWithAlphaComponent_];

  v4 = [v0 labelColor];
  v5 = [v4 colorWithAlphaComponent_];

  v6 = [v0 labelColor];
  v7 = [v6 colorWithAlphaComponent_];

  qword_1EDA48EA8 = v1;
  unk_1EDA48EB0 = v3;
  qword_1EDA48EB8 = v5;
  unk_1EDA48EC0 = v7;
}

id static WaveformColorPalette.accent.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDA48EA0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = qword_1EDA48EA8;
  v2 = unk_1EDA48EB0;
  v4 = qword_1EDA48EB8;
  v3 = unk_1EDA48EC0;
  v10 = unk_1EDA48EC0;
  *a1 = qword_1EDA48EA8;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

void sub_1C5AFA964()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 whiteColor];
  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = [v0 whiteColor];
  v6 = [v5 colorWithAlphaComponent_];

  qword_1EDA48ED0 = v1;
  *algn_1EDA48ED8 = v2;
  qword_1EDA48EE0 = v4;
  unk_1EDA48EE8 = v6;
}

id static WaveformColorPalette.white.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDA48EC8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = qword_1EDA48ED0;
  v2 = *algn_1EDA48ED8;
  v4 = qword_1EDA48EE0;
  v3 = unk_1EDA48EE8;
  v10 = unk_1EDA48EE8;
  *a1 = qword_1EDA48ED0;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_1C5AFAAF8()
{
  if (qword_1EDA48EA0 != -1)
  {
    swift_once();
  }

  v0 = unk_1EDA48EB0;
  v1 = qword_1EDA48EB8;
  v6 = unk_1EDA48EC0;
  qword_1EDA48308 = qword_1EDA48EA8;
  unk_1EDA48310 = unk_1EDA48EB0;
  qword_1EDA48318 = qword_1EDA48EB8;
  unk_1EDA48320 = unk_1EDA48EC0;
  v2 = qword_1EDA48EA8;
  v3 = v0;
  v4 = v1;

  return v6;
}

id sub_1C5AFAB90@<X0>(void *a1@<X8>)
{
  if (qword_1EDA48300 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = qword_1EDA48308;
  v2 = unk_1EDA48310;
  v4 = qword_1EDA48318;
  v3 = unk_1EDA48320;
  v10 = unk_1EDA48320;
  *a1 = qword_1EDA48308;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

uint64_t sub_1C5AFAC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5AFAFF4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5AFAC8C()
{
  sub_1C5AFAEAC();

  return sub_1C5BC8F44();
}

id sub_1C5AFACD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v15 = *(v2 + 24);
  KeyPath = swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1978C8);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1978D0) + 36));
  *v10 = KeyPath;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v15;
  v11 = v5;
  v12 = v6;
  v13 = v7;

  return v15;
}

uint64_t _s11MediaCoreUI20WaveformColorPaletteV2eeoiySbAC_ACtFZ_0()
{
  sub_1C592535C(0, &qword_1EDA45D70);
  if (sub_1C5BCB744() & 1) != 0 && (sub_1C5BCB744() & 1) != 0 && (sub_1C5BCB744())
  {
    return sub_1C5BCB744() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C5AFAEAC()
{
  result = qword_1EDA482F0;
  if (!qword_1EDA482F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA482F0);
  }

  return result;
}

unint64_t sub_1C5AFAF10()
{
  result = qword_1EDA46618;
  if (!qword_1EDA46618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1978D0);
    sub_1C5924F54(&qword_1EDA46288, &qword_1EC1978C8);
    sub_1C5924F54(&qword_1EDA46110, &qword_1EC1978D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46618);
  }

  return result;
}

unint64_t sub_1C5AFAFF4()
{
  result = qword_1EDA48E90;
  if (!qword_1EDA48E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA48E90);
  }

  return result;
}

void sub_1C5AFB11C(void *a1)
{
  v2 = OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMotionReplicatorLayer_originalContent;
  v6 = *&v1[OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMotionReplicatorLayer_originalContent];
  *&v1[OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMotionReplicatorLayer_originalContent] = a1;
  v3 = a1;
  [v6 removeFromSuperlayer];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSublayer_];
  }
}

void sub_1C5AFB1B4()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for NowPlayingArtworkMotionReplicatorLayer();
  objc_msgSendSuper2(&v7, sel_layoutSublayers);
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  v2 = *&v0[OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMotionReplicatorLayer_originalContent];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
    [v0 bounds];
    Height = CGRectGetHeight(v8);
    CATransform3DMakeTranslation(&v6, 0.0, Height * 3.0, 0.0);
    CATransform3DScale(&v5, &v6, 1.0, -2.0, 1.0);
    [v0 setInstanceTransform_];
    [v1 commit];
  }
}

id sub_1C5AFB368()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingArtworkMotionReplicatorLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C5AFB3E4(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = sub_1C5BCB984();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C694FD20](v7, a2);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    sub_1C592535C(0, a3);
    v10 = sub_1C5BCB744();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1C5AFB4EC()
{

  return swift_deallocClassInstance();
}

double sub_1C5AFB544()
{
  type metadata accessor for AnimatedViewState();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  return result;
}

uint64_t sub_1C5AFB57C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197910);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - v4;
  v6 = *v1;
  v7 = *(v2 + 8);
  v21 = *(v2 + 24);
  sub_1C596693C(&v21, v20);
  type metadata accessor for AnimatedViewState();
  sub_1C5954190(&qword_1EC197918, type metadata accessor for AnimatedViewState);
  sub_1C5BC83A4();
  v8 = type metadata accessor for _CAPackageView();
  v9 = v8[6];
  *&v5[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40);
  swift_storeEnumTagMultiPayload();
  v10 = &v5[v8[7]];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = v8[8];
  *&v5[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88);
  swift_storeEnumTagMultiPayload();
  *v5 = v21;
  type metadata accessor for ViewState();
  sub_1C5954190(&qword_1EDA46C30, type metadata accessor for ViewState);

  *(v5 + 2) = sub_1C5BC88C4();
  *(v5 + 3) = v12;
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  sub_1C5966BDC(v6, v7);

  v13 = swift_allocObject();
  v14 = *(v2 + 16);
  v13[1] = *v2;
  v13[2] = v14;
  v13[3] = *(v2 + 32);
  *(v13 + 57) = *(v2 + 41);
  v15 = &v5[*(v3 + 36)];
  *v15 = sub_1C5AFCB3C;
  v15[1] = v13;
  v15[2] = 0;
  v15[3] = 0;
  v20[63] = *(v2 + 16);
  v16 = swift_allocObject();
  v17 = *(v2 + 16);
  v16[1] = *v2;
  v16[2] = v17;
  v16[3] = *(v2 + 32);
  *(v16 + 57) = *(v2 + 41);
  sub_1C5AFCA48(v2, v20);
  sub_1C5AFCA48(v2, v20);
  sub_1C5AFCA80();
  sub_1C5BCA344();

  return sub_1C5924EF4(v5, &qword_1EC197910);
}

void sub_1C5AFB8E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for AnimatedViewState();
  sub_1C5954190(&qword_1EC197918, type metadata accessor for AnimatedViewState);
  v2 = sub_1C5BC83A4();
  v3 = v2;
  if (v1)
  {
    sub_1C5AFBD54();
  }

  else
  {
    v4 = *(v2 + 72);
    v5 = *(v3 + 72);
    *(v3 + 72) = 0;
    [v4 invalidate];
  }
}

void sub_1C5AFBA28()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + 56);
  v29 = *(v0 + 64);
  if (!v2)
  {
    v9 = v1;
LABEL_9:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v3 = v1;
  v4 = [v2 rootLayer];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 states];

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = sub_1C5BCB054();

  v8 = sub_1C59673D0(v7);

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  v10 = sub_1C5AFB3E4(v29, v8, &qword_1EDA45DA8);
  v12 = v11;

  v13 = v29;
  if ((v12 & 1) == 0)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = *(v0 + 56);
      if (v15 && (v16 = [v15 rootLayer]) != 0 && (v10 = v16, v17 = objc_msgSend(v16, sel_states), v10, v17) && (v10 = sub_1C5BCB054(), v17, v18 = sub_1C59673D0(v10), , v18))
      {
        v13 = v18;
      }

      else
      {

        v13 = MEMORY[0x1E69E7CC0];
      }

      if (!(v13 >> 62))
      {
        v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v19)
        {
          goto LABEL_20;
        }

        goto LABEL_37;
      }
    }

    v10 = v13;
    v19 = sub_1C5BCB984();

    if (v19)
    {
LABEL_20:
      if (v14 == 0x8000000000000000 && v19 == -1)
      {
        goto LABEL_41;
      }

      v19 = v14 % v19;
      v20 = *(v0 + 56);
      if (!v20 || (v21 = [v20 rootLayer]) == 0 || (v22 = v21, v23 = objc_msgSend(v21, sel_states), v22, !v23) || (v24 = sub_1C5BCB054(), v23, v10 = sub_1C59673D0(v24), , !v10))
      {

        v10 = MEMORY[0x1E69E7CC0];
      }

      if ((v10 & 0xC000000000000001) == 0)
      {
        if (v19 < 0)
        {
          __break(1u);
        }

        else if (v19 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v25 = *(v10 + 8 * v19 + 32);
LABEL_31:
          v26 = v25;

          v27 = *(v0 + 64);
          *(v0 + 64) = v26;
          v28 = v26;
          sub_1C59674DC(v27);

          v13 = v27;
          goto LABEL_32;
        }

        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

LABEL_38:
      v25 = MEMORY[0x1C694FD20](v19, v10);
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_32:
}

void sub_1C5AFBD54()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_1C5AFC838;
  v7[5] = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C5A07474;
  v7[3] = &block_descriptor_18;
  v3 = _Block_copy(v7);

  v4 = [v1 scheduledTimerWithTimeInterval:1 repeats:v3 block:0.5];
  _Block_release(v3);
  v5 = *(v0 + 72);
  *(v0 + 72) = v4;
  v6 = v4;
  [v5 invalidate];
}

uint64_t sub_1C5AFBE78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C5AFBA28();
  }

  return result;
}

uint64_t sub_1C5AFBED8()
{

  return swift_deallocClassInstance();
}

void sub_1C5AFBF5C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = type metadata accessor for _CAPackageView();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3[3];
  v10 = *(v9 + 40);
  if (!v10)
  {
LABEL_8:
    v25 = a3[1];
    if (!v25)
    {
      return;
    }

    goto LABEL_9;
  }

  v12 = *a1;
  v11 = a1[1];
  v14 = *a2;
  v13 = a2[1];
  v41 = *(v9 + 32);
  v15 = qword_1EDA46990;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_1C5BC7D64();
  __swift_project_value_buffer(v16, qword_1EDA5DA60);
  sub_1C5967CB0(a3, v8);

  v17 = sub_1C5BC7D44();
  v18 = sub_1C5BCB4F4();

  if (!os_log_type_enabled(v17, v18))
  {

    sub_1C5972028(v8);
    goto LABEL_8;
  }

  v38 = v18;
  v39 = v12;
  v19 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  v42 = v37;
  *v19 = 136446978;
  v20 = sub_1C592ADA8(v41, v10, &v42);

  *(v19 + 4) = v20;
  *(v19 + 12) = 2082;
  v21 = *(v8 + 3);
  v22 = *(v21 + 24);
  v40 = v14;
  v36 = v17;
  if (v22)
  {
    v23 = *(v21 + 16);
    v24 = v22;
  }

  else
  {
    v24 = 0xE300000000000000;
    v23 = 7104878;
  }

  sub_1C5972028(v8);
  v26 = sub_1C592ADA8(v23, v24, &v42);

  *(v19 + 14) = v26;
  *(v19 + 22) = 2082;
  if (v11)
  {
    v27 = v39;
  }

  else
  {
    v27 = 7104878;
  }

  if (v11)
  {
    v28 = v11;
  }

  else
  {
    v28 = 0xE300000000000000;
  }

  v29 = sub_1C592ADA8(v27, v28, &v42);

  *(v19 + 24) = v29;
  *(v19 + 32) = 2082;
  if (v13)
  {
    v30 = v40;
  }

  else
  {
    v30 = 7104878;
  }

  if (v13)
  {
    v31 = v13;
  }

  else
  {
    v31 = 0xE300000000000000;
  }

  v32 = sub_1C592ADA8(v30, v31, &v42);

  *(v19 + 34) = v32;
  v33 = v36;
  _os_log_impl(&dword_1C5922000, v36, v38, "%{public}s: %{public}s CAPackageView selected state changed from %{public}s to %{public}s", v19, 0x2Au);
  v34 = v37;
  swift_arrayDestroy();
  MEMORY[0x1C69510F0](v34, -1, -1);
  MEMORY[0x1C69510F0](v19, -1, -1);

  v25 = a3[1];
  if (v25)
  {
LABEL_9:
    sub_1C5972084(*a3, v25);
  }
}