uint64_t WaitOnHoldState.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (!*(v1 + 16))
  {
    MEMORY[0x1D38AEDD0](3);
    v5 = a1;
    v6 = v3;
    goto LABEL_5;
  }

  v4 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    MEMORY[0x1D38AEDD0](4);
    MEMORY[0x1D38AEDD0](v3);
    v5 = a1;
    v6 = v4;
LABEL_5:

    return sub_1D2E6139C(v5, v6);
  }

  if (v3 > 1)
  {
    if (v3 ^ 2 | v4)
    {
      v8 = 5;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = (v3 | v4) != 0;
  }

  return MEMORY[0x1D38AEDD0](v8);
}

uint64_t WaitOnHoldState.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D2EE5338();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1D38AEDD0](4);
      MEMORY[0x1D38AEDD0](v1);
      sub_1D2E6139C(v6, v2);
    }

    else
    {
      if (v1 > 1)
      {
        if (v1 ^ 2 | v2)
        {
          v4 = 5;
        }

        else
        {
          v4 = 2;
        }
      }

      else
      {
        v4 = (v1 | v2) != 0;
      }

      MEMORY[0x1D38AEDD0](v4);
    }
  }

  else
  {
    MEMORY[0x1D38AEDD0](3);
    sub_1D2E6139C(v6, v1);
  }

  return sub_1D2EE5378();
}

uint64_t WaitOnHoldState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738348, &qword_1D2EEDDA8);
  v65 = *(v71 - 8);
  v3 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v75 = &v58 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738350, &qword_1D2EEDDB0);
  v72 = *(v68 - 8);
  v5 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v77 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738358, &qword_1D2EEDDB8);
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738360, &qword_1D2EEDDC0);
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v58 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738368, &qword_1D2EEDDC8);
  v63 = *(v64 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v15 = &v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738370, &qword_1D2EEDDD0);
  v62 = *(v16 - 8);
  v17 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738378, &qword_1D2EEDDD8);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v58 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D2E61F7C();
  v27 = v78;
  sub_1D2EE53B8();
  if (!v27)
  {
    v28 = v19;
    v59 = v16;
    v60 = v15;
    v29 = v74;
    v30 = v75;
    v78 = v21;
    v31 = v76;
    v61 = v20;
    v32 = sub_1D2EE51C8();
    v33 = (2 * *(v32 + 16)) | 1;
    v81 = v32;
    v82 = v32 + 32;
    v83 = 0;
    v84 = v33;
    v34 = sub_1D2E52D9C();
    if (v34 == 6 || v83 != v84 >> 1)
    {
      v41 = sub_1D2EE5008();
      swift_allocError();
      v43 = v42;
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC737F80, &qword_1D2EECD20) + 48);
      *v43 = &type metadata for WaitOnHoldState;
      v45 = v61;
      sub_1D2EE5148();
      sub_1D2EE4FF8();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
      swift_willThrow();
      (*(v78 + 8))(v24, v45);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34 > 2u)
      {
        if (v34 == 3)
        {
          LOBYTE(v80) = 3;
          sub_1D2E620CC();
          v51 = v61;
          sub_1D2EE5138();
          v52 = v78;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738310, &qword_1D2EEDDA0);
          sub_1D2E62270(&qword_1EC738388, &qword_1EC738390);
          v53 = v70;
          sub_1D2EE51B8();
          (*(v69 + 8))(v29, v53);
          (*(v52 + 8))(v24, v51);
          swift_unknownObjectRelease();
          v38 = 0;
          v39 = 0;
          v40 = v80;
        }

        else
        {
          v47 = v24;
          v48 = v78;
          v49 = v61;
          if (v34 == 4)
          {
            LOBYTE(v80) = 4;
            sub_1D2E62024();
            sub_1D2EE5138();
            LOBYTE(v80) = 0;
            sub_1D2E6221C();
            v57 = v68;
            sub_1D2EE51B8();
            v40 = v86;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738310, &qword_1D2EEDDA0);
            v85 = 1;
            sub_1D2E62270(&qword_1EC738388, &qword_1EC738390);
            sub_1D2EE51B8();
            (*(v72 + 8))(v77, v57);
            (*(v48 + 8))(v47, v49);
            swift_unknownObjectRelease();
            v38 = v80;
            v39 = 1;
          }

          else
          {
            LOBYTE(v80) = 5;
            sub_1D2E61FD0();
            sub_1D2EE5138();
            (*(v65 + 8))(v30, v71);
            (*(v48 + 8))(v47, v49);
            swift_unknownObjectRelease();
            v38 = 0;
            v39 = 2;
            v40 = 3;
          }
        }
      }

      else if (v34)
      {
        if (v34 == 1)
        {
          LOBYTE(v80) = 1;
          sub_1D2E62174();
          v35 = v60;
          v36 = v61;
          sub_1D2EE5138();
          v37 = v78;
          (*(v63 + 8))(v35, v64);
          (*(v37 + 8))(v24, v36);
          swift_unknownObjectRelease();
          v38 = 0;
          v39 = 2;
          v40 = 1;
        }

        else
        {
          LOBYTE(v80) = 2;
          sub_1D2E62120();
          v54 = v73;
          v55 = v61;
          sub_1D2EE5138();
          v56 = v78;
          (*(v66 + 8))(v54, v67);
          (*(v56 + 8))(v24, v55);
          swift_unknownObjectRelease();
          v38 = 0;
          v40 = 2;
          v39 = 2;
        }
      }

      else
      {
        LOBYTE(v80) = 0;
        sub_1D2E621C8();
        v50 = v61;
        sub_1D2EE5138();
        (*(v62 + 8))(v28, v59);
        (*(v78 + 8))(v24, v50);
        swift_unknownObjectRelease();
        v40 = 0;
        v38 = 0;
        v39 = 2;
      }

      *v31 = v40;
      *(v31 + 8) = v38;
      *(v31 + 16) = v39;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t sub_1D2E611AC(uint64_t a1)
{
  v3 = *v1;
  if (!*(v1 + 16))
  {
    MEMORY[0x1D38AEDD0](3);
    v5 = a1;
    v6 = v3;
    goto LABEL_5;
  }

  v4 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    MEMORY[0x1D38AEDD0](4);
    MEMORY[0x1D38AEDD0](v3);
    v5 = a1;
    v6 = v4;
LABEL_5:

    return sub_1D2E6139C(v5, v6);
  }

  if (v3 > 1)
  {
    if (v3 ^ 2 | v4)
    {
      v8 = 5;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = (v3 | v4) != 0;
  }

  return MEMORY[0x1D38AEDD0](v8);
}

uint64_t sub_1D2E61288()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D2EE5338();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1D38AEDD0](4);
      MEMORY[0x1D38AEDD0](v1);
      sub_1D2E6139C(v6, v2);
    }

    else
    {
      if (v1 > 1)
      {
        if (v1 ^ 2 | v2)
        {
          v4 = 5;
        }

        else
        {
          v4 = 2;
        }
      }

      else
      {
        v4 = (v1 | v2) != 0;
      }

      MEMORY[0x1D38AEDD0](v4);
    }
  }

  else
  {
    MEMORY[0x1D38AEDD0](3);
    sub_1D2E6139C(v6, v1);
  }

  return sub_1D2EE5378();
}

uint64_t sub_1D2E6139C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HoldAssistEvent();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  result = MEMORY[0x1D38AEDD0](v8);
  if (v8)
  {
    v10 = *(v3 + 20);
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    v13 = &qword_1EC737F10;
    v19[0] = v12;
    do
    {
      sub_1D2E61EBC(v11, v7);
      if (v7[2] < 0)
      {
        v14 = v7[3];
        v19[1] = v7[1];
        v15 = v13;
        v16 = v10;
        v17 = *v7;
        MEMORY[0x1D38AEDD0](1);
        v10 = v16;
        v13 = v15;
        sub_1D2EE4AC8();
        sub_1D2EE5358();
        if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v18 = v14;
        }

        else
        {
          v18 = 0;
        }

        v12 = v19[0];
        MEMORY[0x1D38AEDF0](v18);
      }

      else
      {
        MEMORY[0x1D38AEDD0](0);
        MEMORY[0x1D38AEDD0](0);
      }

      sub_1D2EE3E48();
      sub_1D2E62404(v13, MEMORY[0x1E6969530]);
      sub_1D2EE49F8();
      result = sub_1D2E61F20(v7);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t _s16CallIntelligence15HoldAssistEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      sub_1D2E61E0C(*a1, v2, v4);
      sub_1D2E61E0C(v7, v6, v8);
      goto LABEL_4;
    }

    v13 = *(a2 + 8);
    goto LABEL_10;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v12 = *(a1 + 8);
LABEL_10:

    sub_1D2E61E0C(v3, v2, v4);
    sub_1D2E61E0C(v7, v6, v8);
    return 0;
  }

  v14 = *(a1 + 24);
  v15 = *(a2 + 24);
  v16 = *a1;
  if (v3 == v7 && v2 == v6)
  {
    sub_1D2E61DA8(v16, v2, v8);
    sub_1D2E61DA8(v3, v2, v4);
    sub_1D2E61E0C(v3, v2, v4);
    sub_1D2E61E0C(v3, v2, v8);
  }

  else
  {
    v18 = sub_1D2EE5288();
    sub_1D2E61DA8(v7, v6, v8);
    sub_1D2E61DA8(v3, v2, v4);
    sub_1D2E61E0C(v3, v2, v4);
    sub_1D2E61E0C(v7, v6, v8);
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (((v4 ^ v8) & 1) != 0 || v5 != v9)
  {
    return 0;
  }

LABEL_4:
  v10 = *(type metadata accessor for HoldAssistEvent() + 20);

  return sub_1D2EE3E28();
}

uint64_t _s16CallIntelligence15WaitOnHoldStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_1D2E637F8(*a2, *(a2 + 8), 0);
      sub_1D2E637F8(v3, v2, 0);
      v16 = sub_1D2E5F4A8(v3, v6);
      sub_1D2E63814(v3, v2, 0);
      v17 = v6;
      v18 = v5;
      v19 = 0;
      goto LABEL_31;
    }

    goto LABEL_7;
  }

  if (v4 != 1)
  {
    if (v3 > 1)
    {
      if (v3 ^ 2 | v2)
      {
        if (v7 != 2 || v6 != 3 || v5)
        {
          goto LABEL_7;
        }

        sub_1D2E63814(*a1, v2, 2u);
        v15 = 3;
      }

      else
      {
        if (v7 != 2 || v6 != 2 || v5)
        {
          goto LABEL_7;
        }

        sub_1D2E63814(*a1, v2, 2u);
        v15 = 2;
      }

LABEL_29:
      sub_1D2E63814(v15, 0, 2u);
      return 1;
    }

    if (v3 | v2)
    {
      if (v7 == 2 && v6 == 1 && !v5)
      {
        sub_1D2E63814(*a1, v2, 2u);
        v13 = 1;
        sub_1D2E63814(1, 0, 2u);
        return v13;
      }

      goto LABEL_7;
    }

    if (v7 == 2 && !(v5 | v6))
    {
      sub_1D2E63814(*a1, v2, 2u);
      v15 = 0;
      goto LABEL_29;
    }

LABEL_7:
    sub_1D2E637F8(*a2, *(a2 + 8), v7);
    sub_1D2E637F8(v3, v2, v4);
    sub_1D2E63814(v3, v2, v4);
    v10 = v6;
    v11 = v5;
    v12 = v7;
    goto LABEL_8;
  }

  if (v7 != 1)
  {
    goto LABEL_7;
  }

  v8 = *a2;
  v9 = *(a2 + 8);
  if (v6 != v3)
  {
    sub_1D2E637F8(v8, v9, 1u);
    sub_1D2E637F8(v3, v2, 1u);
    sub_1D2E63814(v3, v2, 1u);
    v10 = v6;
    v11 = v5;
    v12 = 1;
LABEL_8:
    sub_1D2E63814(v10, v11, v12);
    return 0;
  }

  sub_1D2E637F8(v8, v9, 1u);
  sub_1D2E637F8(v3, v2, 1u);
  LOBYTE(v16) = sub_1D2E5F4A8(v2, v5);
  sub_1D2E63814(v3, v2, 1u);
  v17 = v6;
  v18 = v5;
  v19 = 1;
LABEL_31:
  sub_1D2E63814(v17, v18, v19);
  return v16 & 1;
}

uint64_t _s16CallIntelligence19HoldAssistEventTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      sub_1D2E61E0C(*a1, v2, v5);
      sub_1D2E61E0C(v7, v6, v9);
      return 1;
    }

    goto LABEL_6;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = *(a1 + 8);

LABEL_6:
    sub_1D2E61DA8(v7, v6, v9);
    sub_1D2E61E0C(v3, v2, v5);
    sub_1D2E61E0C(v7, v6, v9);
    return 0;
  }

  v12 = *a1;
  if (v3 == v7 && v2 == v6)
  {
    sub_1D2E61DA8(v12, v2, v9);
    sub_1D2E61DA8(v3, v2, v5);
    sub_1D2E61E0C(v3, v2, v5);
    sub_1D2E61E0C(v3, v2, v9);
    if ((v5 ^ v9))
    {
      return 0;
    }

    return v4 == v8;
  }

  v14 = sub_1D2EE5288();
  sub_1D2E61DA8(v7, v6, v9);
  sub_1D2E61DA8(v3, v2, v5);
  sub_1D2E61E0C(v3, v2, v5);
  sub_1D2E61E0C(v7, v6, v9);
  result = 0;
  if ((v14 & 1) != 0 && ((v5 ^ v9) & 1) == 0)
  {
    return v4 == v8;
  }

  return result;
}

unint64_t sub_1D2E61BB0()
{
  result = qword_1EC738250;
  if (!qword_1EC738250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738250);
  }

  return result;
}

unint64_t sub_1D2E61C04()
{
  result = qword_1EC738258;
  if (!qword_1EC738258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738258);
  }

  return result;
}

unint64_t sub_1D2E61C58()
{
  result = qword_1EC738260;
  if (!qword_1EC738260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738260);
  }

  return result;
}

unint64_t sub_1D2E61CAC()
{
  result = qword_1EC738268;
  if (!qword_1EC738268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738268);
  }

  return result;
}

unint64_t sub_1D2E61D00()
{
  result = qword_1EC738288;
  if (!qword_1EC738288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738288);
  }

  return result;
}

unint64_t sub_1D2E61D54()
{
  result = qword_1EC738298;
  if (!qword_1EC738298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738298);
  }

  return result;
}

uint64_t sub_1D2E61DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }

  return result;
}

unint64_t sub_1D2E61DB8()
{
  result = qword_1EC7382A0;
  if (!qword_1EC7382A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7382A0);
  }

  return result;
}

uint64_t sub_1D2E61E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }

  return result;
}

uint64_t type metadata accessor for HoldAssistEvent()
{
  result = qword_1EC7383B8;
  if (!qword_1EC7383B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D2E61E68()
{
  result = qword_1EC7382B0;
  if (!qword_1EC7382B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7382B0);
  }

  return result;
}

uint64_t sub_1D2E61EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HoldAssistEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2E61F20(uint64_t a1)
{
  v2 = type metadata accessor for HoldAssistEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D2E61F7C()
{
  result = qword_1EC7382F0;
  if (!qword_1EC7382F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7382F0);
  }

  return result;
}

unint64_t sub_1D2E61FD0()
{
  result = qword_1EC7382F8;
  if (!qword_1EC7382F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7382F8);
  }

  return result;
}

unint64_t sub_1D2E62024()
{
  result = qword_1EC738300;
  if (!qword_1EC738300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738300);
  }

  return result;
}

unint64_t sub_1D2E62078()
{
  result = qword_1EC738308;
  if (!qword_1EC738308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738308);
  }

  return result;
}

unint64_t sub_1D2E620CC()
{
  result = qword_1EC738328;
  if (!qword_1EC738328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738328);
  }

  return result;
}

unint64_t sub_1D2E62120()
{
  result = qword_1EC738330;
  if (!qword_1EC738330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738330);
  }

  return result;
}

unint64_t sub_1D2E62174()
{
  result = qword_1EC738338;
  if (!qword_1EC738338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738338);
  }

  return result;
}

unint64_t sub_1D2E621C8()
{
  result = qword_1EC738340;
  if (!qword_1EC738340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738340);
  }

  return result;
}

unint64_t sub_1D2E6221C()
{
  result = qword_1EC738380;
  if (!qword_1EC738380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738380);
  }

  return result;
}

uint64_t sub_1D2E62270(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC738310, &qword_1D2EEDDA0);
    sub_1D2E62404(a2, type metadata accessor for HoldAssistEvent);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2E62310()
{
  result = qword_1EC738398;
  if (!qword_1EC738398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738398);
  }

  return result;
}

unint64_t sub_1D2E62368()
{
  result = qword_1EC7383A0;
  if (!qword_1EC7383A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7383A0);
  }

  return result;
}

uint64_t sub_1D2E62404(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2E62450()
{
  result = qword_1EC7383B0;
  if (!qword_1EC7383B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7383B0);
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

uint64_t sub_1D2E624CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1D2E6251C(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
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

uint64_t sub_1D2E625C0()
{
  result = sub_1D2EE3E48();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16CallIntelligence15WaitOnHoldStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D2E6266C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D2E626B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D2E626F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WaitOnHoldState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WaitOnHoldState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2E62934()
{
  result = qword_1EC7383C8;
  if (!qword_1EC7383C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7383C8);
  }

  return result;
}

unint64_t sub_1D2E6298C()
{
  result = qword_1EC7383D0;
  if (!qword_1EC7383D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7383D0);
  }

  return result;
}

unint64_t sub_1D2E629E4()
{
  result = qword_1EC7383D8;
  if (!qword_1EC7383D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7383D8);
  }

  return result;
}

unint64_t sub_1D2E62A3C()
{
  result = qword_1EC7383E0;
  if (!qword_1EC7383E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7383E0);
  }

  return result;
}

unint64_t sub_1D2E62A94()
{
  result = qword_1EC7383E8;
  if (!qword_1EC7383E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7383E8);
  }

  return result;
}

unint64_t sub_1D2E62AEC()
{
  result = qword_1EC7383F0;
  if (!qword_1EC7383F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7383F0);
  }

  return result;
}

unint64_t sub_1D2E62B44()
{
  result = qword_1EC7383F8;
  if (!qword_1EC7383F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7383F8);
  }

  return result;
}

unint64_t sub_1D2E62B9C()
{
  result = qword_1EC738400;
  if (!qword_1EC738400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738400);
  }

  return result;
}

unint64_t sub_1D2E62BF4()
{
  result = qword_1EC738408;
  if (!qword_1EC738408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738408);
  }

  return result;
}

unint64_t sub_1D2E62C4C()
{
  result = qword_1EC738410;
  if (!qword_1EC738410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738410);
  }

  return result;
}

unint64_t sub_1D2E62CA4()
{
  result = qword_1EC738418;
  if (!qword_1EC738418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738418);
  }

  return result;
}

unint64_t sub_1D2E62CFC()
{
  result = qword_1EC738420;
  if (!qword_1EC738420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738420);
  }

  return result;
}

unint64_t sub_1D2E62D54()
{
  result = qword_1EC738428;
  if (!qword_1EC738428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738428);
  }

  return result;
}

unint64_t sub_1D2E62DAC()
{
  result = qword_1EC738430;
  if (!qword_1EC738430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738430);
  }

  return result;
}

unint64_t sub_1D2E62E04()
{
  result = qword_1EC738438;
  if (!qword_1EC738438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738438);
  }

  return result;
}

unint64_t sub_1D2E62E5C()
{
  result = qword_1EC738440;
  if (!qword_1EC738440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738440);
  }

  return result;
}

unint64_t sub_1D2E62EB4()
{
  result = qword_1EC738448;
  if (!qword_1EC738448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738448);
  }

  return result;
}

unint64_t sub_1D2E62F0C()
{
  result = qword_1EC738450;
  if (!qword_1EC738450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738450);
  }

  return result;
}

unint64_t sub_1D2E62F64()
{
  result = qword_1EC738458;
  if (!qword_1EC738458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738458);
  }

  return result;
}

unint64_t sub_1D2E62FBC()
{
  result = qword_1EC738460;
  if (!qword_1EC738460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738460);
  }

  return result;
}

unint64_t sub_1D2E63014()
{
  result = qword_1EC738468;
  if (!qword_1EC738468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738468);
  }

  return result;
}

unint64_t sub_1D2E6306C()
{
  result = qword_1EC738470;
  if (!qword_1EC738470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738470);
  }

  return result;
}

unint64_t sub_1D2E630C4()
{
  result = qword_1EC738478;
  if (!qword_1EC738478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738478);
  }

  return result;
}

unint64_t sub_1D2E6311C()
{
  result = qword_1EC738480;
  if (!qword_1EC738480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738480);
  }

  return result;
}

unint64_t sub_1D2E63174()
{
  result = qword_1EC738488;
  if (!qword_1EC738488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738488);
  }

  return result;
}

unint64_t sub_1D2E631CC()
{
  result = qword_1EC738490;
  if (!qword_1EC738490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738490);
  }

  return result;
}

unint64_t sub_1D2E63224()
{
  result = qword_1EC738498;
  if (!qword_1EC738498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738498);
  }

  return result;
}

unint64_t sub_1D2E6327C()
{
  result = qword_1EC7384A0;
  if (!qword_1EC7384A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7384A0);
  }

  return result;
}

unint64_t sub_1D2E632D4()
{
  result = qword_1EC7384A8;
  if (!qword_1EC7384A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7384A8);
  }

  return result;
}

unint64_t sub_1D2E6332C()
{
  result = qword_1EC7384B0;
  if (!qword_1EC7384B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7384B0);
  }

  return result;
}

unint64_t sub_1D2E63384()
{
  result = qword_1EC7384B8;
  if (!qword_1EC7384B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7384B8);
  }

  return result;
}

unint64_t sub_1D2E633DC()
{
  result = qword_1EC7384C0;
  if (!qword_1EC7384C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7384C0);
  }

  return result;
}

unint64_t sub_1D2E63434()
{
  result = qword_1EC7384C8;
  if (!qword_1EC7384C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7384C8);
  }

  return result;
}

unint64_t sub_1D2E6348C()
{
  result = qword_1EC7384D0;
  if (!qword_1EC7384D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7384D0);
  }

  return result;
}

uint64_t sub_1D2E634E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D2EE5288() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_1D2EE5288() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2EE5288();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D2E635E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576697463616E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D2EE5288() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69746365746564 && a2 == 0xED0000646C6F4867 || (sub_1D2EE5288() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465746365746564 && a2 == 0xEC000000646C6F48 || (sub_1D2EE5288() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E696E6565726373 && a2 == 0xE900000000000067 || (sub_1D2EE5288() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D2EE6730 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D2EE5288();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D2E637F8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D2E63814(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t (*WaitOnHoldController.cancellationHandler.getter())(uint64_t a1)
{
  os_unfair_lock_lock((v0 + 64));
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 80);
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1D2E69198;
    *(v4 + 24) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1D2E69198;
    *(v5 + 24) = v3;
    *(v0 + 72) = sub_1D2E691A8;
    *(v0 + 80) = v5;

    os_unfair_lock_unlock((v0 + 64));
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1D2E63AF0;
    *(v6 + 24) = v4;
    return sub_1D2E63AB8;
  }

  else
  {
    os_unfair_lock_unlock((v0 + 64));
    return 0;
  }
}

uint64_t sub_1D2E6395C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = WaitOnHoldController.cancellationHandler.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1D2E691A8;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1D2E639CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D2E69198;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1D2E48CE8(v3);
  os_unfair_lock_lock((v7 + 64));
  v8 = *(v7 + 72);
  if (v8)
  {
    v9 = *(v7 + 80);
    sub_1D2E48CF8(v8);
  }

  if (v3)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = v5;
    v11 = sub_1D2E691A8;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *(v7 + 72) = v11;
  *(v7 + 80) = v10;

  os_unfair_lock_unlock((v7 + 64));
}

uint64_t sub_1D2E63AB8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1D2E63AF0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void WaitOnHoldController.cancellationHandler.setter(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 64));
  v5 = *(v2 + 72);
  if (v5)
  {
    v6 = *(v2 + 80);
    sub_1D2E48CF8(v5);
  }

  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v8 = sub_1D2E691A8;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *(v2 + 72) = v8;
  *(v2 + 80) = v7;

  os_unfair_lock_unlock((v2 + 64));
}

void (*WaitOnHoldController.cancellationHandler.modify(uint64_t (**a1)(uint64_t a1)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = WaitOnHoldController.cancellationHandler.getter();
  a1[1] = v3;
  return sub_1D2E63BF8;
}

void sub_1D2E63BF8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1D2E48CE8(*a1);
    os_unfair_lock_lock((v3 + 64));
    v5 = *(v3 + 72);
    if (v5)
    {
      v6 = *(v3 + 80);
      sub_1D2E48CF8(v5);
    }

    if (v4)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      *(v7 + 24) = v2;
      v8 = sub_1D2E691A8;
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    *(v3 + 72) = v8;
    *(v3 + 80) = v7;
    os_unfair_lock_unlock((v3 + 64));

    sub_1D2E48CF8(v4);
  }

  else
  {
    os_unfair_lock_lock((v3 + 64));
    v9 = *(v3 + 72);
    if (v9)
    {
      v10 = *(v3 + 80);
      sub_1D2E48CF8(v9);
    }

    if (v4)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = v4;
      *(v11 + 24) = v2;
      v12 = sub_1D2E691A8;
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    *(v3 + 72) = v12;
    *(v3 + 80) = v11;

    os_unfair_lock_unlock((v3 + 64));
  }
}

uint64_t WaitOnHoldController.hasAvailableAssets.getter()
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v0 = sub_1D2EE4618();
  __swift_project_value_buffer(v0, qword_1EDED2DB8);
  v1 = sub_1D2EE45F8();
  v2 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D2E46000, v1, v2, "WaitOnHoldController - Checking if assets are available", v3, 2u);
    MEMORY[0x1D38AF660](v3, -1, -1);
  }

  result = sub_1D2E69864();
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() contextualEmbeddingWithLanguage_];
    if (v6)
    {
      v7 = v6;
      v36 = sub_1D2E68D80();
      v37 = &off_1F4E93D38;
      *&v35 = v7;
      sub_1D2E4C014(&v35, v38);
      sub_1D2E6912C(v38, &v35);
      v8 = sub_1D2EE45F8();
      v9 = sub_1D2EE4DD8();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 67109120;
        v11 = [*__swift_project_boxed_opaque_existential_1(&v35 v36)];
        __swift_destroy_boxed_opaque_existential_1(&v35);
        *(v10 + 4) = v11;
        _os_log_impl(&dword_1D2E46000, v8, v9, "WaitOnHoldController - EmbeddingModel hasAvailableAssets %{BOOL}d", v10, 8u);
        MEMORY[0x1D38AF660](v10, -1, -1);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v35);
      }

      v15 = v39;
      v16 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      if ((*(v16 + 8))(v15, v16))
      {
        v17 = sub_1D2E69864();
        if (v17)
        {
          v18 = v17;
          v19 = objc_opt_self();
          v20 = [v19 systemClientId];
          if (!v20)
          {
            sub_1D2EE4A68();
            v20 = sub_1D2EE4A38();
          }

          v21 = [objc_allocWithZone(MEMORY[0x1E697B9B8]) initWithLanguage:v18 assetType:qword_1F4E91160];
          v22 = [v19 versionOfAssetWithConfig:v21 clientIdentifier:v20];
          if (v22)
          {
            v23 = v22;

            v21 = [objc_allocWithZone(MEMORY[0x1E697B9B8]) initWithLanguage:v18 assetType:qword_1F4E91168];
            v24 = [v19 versionOfAssetWithConfig:v21 clientIdentifier:v20];
            if (v24)
            {
              v25 = v24;

              v26 = sub_1D2EE45F8();
              v27 = sub_1D2EE4DD8();
              if (os_log_type_enabled(v26, v27))
              {
                v28 = swift_slowAlloc();
                *v28 = 0;
                _os_log_impl(&dword_1D2E46000, v26, v27, "WaitOnHoldController - hasAvailableAssets = true", v28, 2u);
                MEMORY[0x1D38AF660](v28, -1, -1);
              }

              __swift_destroy_boxed_opaque_existential_1(v38);
              return 1;
            }
          }

          v29 = sub_1D2EE45F8();
          v30 = sub_1D2EE4DD8();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&dword_1D2E46000, v29, v30, "WaitOnHoldController - ASR assets are not available", v31, 2u);
            MEMORY[0x1D38AF660](v31, -1, -1);
          }
        }

        else
        {
          v32 = sub_1D2EE45F8();
          v33 = sub_1D2EE4DB8();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            *v34 = 0;
            _os_log_impl(&dword_1D2E46000, v32, v33, "Error checking availability of ASR assets because language code is nil", v34, 2u);
            MEMORY[0x1D38AF660](v34, -1, -1);
          }
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v38);
    }

    else
    {
      v12 = sub_1D2EE45F8();
      v13 = sub_1D2EE4DB8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1D2E46000, v12, v13, "Could not load NLContextualEmbedding model", v14, 2u);
        MEMORY[0x1D38AF660](v14, -1, -1);
      }
    }

    return 0;
  }

  return result;
}

uint64_t WaitOnHoldController.__allocating_init()()
{
  v3[3] = &type metadata for DefaultContextualEmbeddingFactory;
  v3[4] = &off_1F4E93D80;
  v0 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v3, &type metadata for DefaultContextualEmbeddingFactory);
  v1 = sub_1D2E68C0C(v0);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1;
}

uint64_t (*sub_1D2E642D8(void *a1, uint64_t a2))(uint64_t a1)
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2EE4618();
  __swift_project_value_buffer(v4, qword_1EDED2DB8);
  v5 = a1;
  v6 = sub_1D2EE45F8();
  v7 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v30 = v26;
    *v8 = 136446210;
    swift_getErrorValue();
    v9 = v28;
    v10 = v29;
    v11 = sub_1D2EE4E58();
    v25 = &v25;
    v12 = *(v11 - 8);
    v27 = a2;
    v13 = v12;
    v14 = *(v12 + 64);
    MEMORY[0x1EEE9AC00](v11);
    v16 = &v25 - v15;
    v17 = *(v10 - 8);
    (*(v17 + 16))(&v25 - v15, v9, v10);
    (*(v17 + 56))(v16, 0, 1, v10);
    v18 = sub_1D2EE2754(v16, v10);
    v20 = v19;
    (*(v13 + 8))(v16, v11);
    v21 = sub_1D2E685B0(v18, v20, &v30);

    *(v8 + 4) = v21;
    _os_log_impl(&dword_1D2E46000, v6, v7, "XPC connection died with error %{public}s", v8, 0xCu);
    v22 = v26;
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1D38AF660](v22, -1, -1);
    MEMORY[0x1D38AF660](v8, -1, -1);
  }

  result = WaitOnHoldController.cancellationHandler.getter();
  if (result)
  {
    v24 = result;
    result(a1);
    return sub_1D2E48CF8(v24);
  }

  return result;
}

uint64_t sub_1D2E645C4()
{
  v16 = v0;
  if (qword_1EDECFEF8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  v0[7] = __swift_project_value_buffer(v1, qword_1EDED2D88);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    v6 = sub_1D2EE4AA8();
    v8 = sub_1D2E685B0(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Sending message %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v9 = *(v0[6] + 16);
  v10 = *(MEMORY[0x1E69937E8] + 4);
  v11 = swift_task_alloc();
  v0[8] = v11;
  v12 = sub_1D2E690D8();
  *v11 = v0;
  v11[1] = sub_1D2E588BC;

  return MEMORY[0x1EEDF2DF8](v12, v13, &type metadata for SmartHolding_XPCMessage_Ping, v12);
}

uint64_t sub_1D2E6479C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC738510, &unk_1D2EEEFE0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  started = type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection();
  v2[10] = started;
  v5 = *(started - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E648B8, 0, 0);
}

uint64_t sub_1D2E648B8()
{
  v30 = v0;
  if (qword_1EDECFEF8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[6];
  v3 = sub_1D2EE4618();
  v0[15] = __swift_project_value_buffer(v3, qword_1EDED2D88);
  sub_1D2E68FC0(v2, v1, type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection);
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DD8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v10 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    sub_1D2E68FC0(v7, v10, type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection);
    (*(v9 + 56))(v10, 0, 1, v8);
    sub_1D2E5D050(v10, v11, qword_1EC738510, &unk_1D2EEEFE0);
    if ((*(v9 + 48))(v11, 1, v8) == 1)
    {
      sub_1D2E5D0B8(v0[8], qword_1EC738510, &unk_1D2EEEFE0);
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v16 = v0[12];
      v17 = v0[13];
      v18 = v0[10];
      sub_1D2E69070(v0[8], v17, type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection);
      sub_1D2E68FC0(v17, v16, type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection);
      v15 = sub_1D2EE4AA8();
      v14 = v19;
      sub_1D2E68E1C(v17, type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection);
    }

    v20 = v0[14];
    sub_1D2E5D0B8(v0[9], qword_1EC738510, &unk_1D2EEEFE0);
    sub_1D2E68E1C(v20, type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection);
    v21 = sub_1D2E685B0(v15, v14, &v29);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Sending message %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38AF660](v13, -1, -1);
    MEMORY[0x1D38AF660](v12, -1, -1);
  }

  else
  {

    sub_1D2E68E1C(v7, type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection);
  }

  v22 = *(v0[7] + 16);
  v23 = *(MEMORY[0x1E69937E8] + 4);
  v24 = swift_task_alloc();
  v0[16] = v24;
  v25 = sub_1D2E69028(&qword_1EDECF890, type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection);
  *v24 = v0;
  v24[1] = sub_1D2E64C6C;
  v26 = v0[10];
  v27 = v0[6];

  return MEMORY[0x1EEDF2DF8](v25, v27, v26, v25);
}

uint64_t sub_1D2E64C6C()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2E6919C, 0, 0);
  }

  else
  {
    v5 = v3[13];
    v4 = v3[14];
    v6 = v3[12];
    v7 = v3[8];
    v8 = v3[9];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_1D2E64DE0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738500, &qword_1D2EEEFD0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E64EFC, 0, 0);
}

uint64_t sub_1D2E64EFC()
{
  v30 = v0;
  if (qword_1EDECFEF8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[6];
  v3 = sub_1D2EE4618();
  v0[15] = __swift_project_value_buffer(v3, qword_1EDED2D88);
  sub_1D2E68FC0(v2, v1, type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection);
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DD8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v10 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    sub_1D2E68FC0(v7, v10, type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection);
    (*(v9 + 56))(v10, 0, 1, v8);
    sub_1D2E5D050(v10, v11, &qword_1EC738500, &qword_1D2EEEFD0);
    if ((*(v9 + 48))(v11, 1, v8) == 1)
    {
      sub_1D2E5D0B8(v0[8], &qword_1EC738500, &qword_1D2EEEFD0);
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v16 = v0[12];
      v17 = v0[13];
      v18 = v0[10];
      sub_1D2E69070(v0[8], v17, type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection);
      sub_1D2E68FC0(v17, v16, type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection);
      v15 = sub_1D2EE4AA8();
      v14 = v19;
      sub_1D2E68E1C(v17, type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection);
    }

    v20 = v0[14];
    sub_1D2E5D0B8(v0[9], &qword_1EC738500, &qword_1D2EEEFD0);
    sub_1D2E68E1C(v20, type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection);
    v21 = sub_1D2E685B0(v15, v14, &v29);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Sending message %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38AF660](v13, -1, -1);
    MEMORY[0x1D38AF660](v12, -1, -1);
  }

  else
  {

    sub_1D2E68E1C(v7, type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection);
  }

  v22 = *(v0[7] + 16);
  v23 = *(MEMORY[0x1E69937E8] + 4);
  v24 = swift_task_alloc();
  v0[16] = v24;
  v25 = sub_1D2E69028(&unk_1EDECF898, type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection);
  *v24 = v0;
  v24[1] = sub_1D2E5B590;
  v26 = v0[10];
  v27 = v0[6];

  return MEMORY[0x1EEDF2DF8](v25, v27, v26, v25);
}

uint64_t sub_1D2E652B0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7384F8, &qword_1D2EEEFC8) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  started = type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding();
  v2[10] = started;
  v5 = *(started - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E653CC, 0, 0);
}

uint64_t sub_1D2E653CC()
{
  v30 = v0;
  if (qword_1EDECFEF8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[6];
  v3 = sub_1D2EE4618();
  v0[15] = __swift_project_value_buffer(v3, qword_1EDED2D88);
  sub_1D2E68FC0(v2, v1, type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding);
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DD8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v10 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    sub_1D2E68FC0(v7, v10, type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding);
    (*(v9 + 56))(v10, 0, 1, v8);
    sub_1D2E5D050(v10, v11, &qword_1EC7384F8, &qword_1D2EEEFC8);
    if ((*(v9 + 48))(v11, 1, v8) == 1)
    {
      sub_1D2E5D0B8(v0[8], &qword_1EC7384F8, &qword_1D2EEEFC8);
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v16 = v0[12];
      v17 = v0[13];
      v18 = v0[10];
      sub_1D2E69070(v0[8], v17, type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding);
      sub_1D2E68FC0(v17, v16, type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding);
      v15 = sub_1D2EE4AA8();
      v14 = v19;
      sub_1D2E68E1C(v17, type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding);
    }

    v20 = v0[14];
    sub_1D2E5D0B8(v0[9], &qword_1EC7384F8, &qword_1D2EEEFC8);
    sub_1D2E68E1C(v20, type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding);
    v21 = sub_1D2E685B0(v15, v14, &v29);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Sending message %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38AF660](v13, -1, -1);
    MEMORY[0x1D38AF660](v12, -1, -1);
  }

  else
  {

    sub_1D2E68E1C(v7, type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding);
  }

  v22 = *(v0[7] + 16);
  v23 = *(MEMORY[0x1E69937E8] + 4);
  v24 = swift_task_alloc();
  v0[16] = v24;
  v25 = sub_1D2E69028(&qword_1EDECFD78, type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding);
  *v24 = v0;
  v24[1] = sub_1D2E64C6C;
  v26 = v0[10];
  v27 = v0[6];

  return MEMORY[0x1EEDF2DF8](v25, v27, v26, v25);
}

uint64_t sub_1D2E65780(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7384F0, &qword_1D2EEEFC0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E6589C, 0, 0);
}

uint64_t sub_1D2E6589C()
{
  v30 = v0;
  if (qword_1EDECFEF8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[6];
  v3 = sub_1D2EE4618();
  v0[15] = __swift_project_value_buffer(v3, qword_1EDED2D88);
  sub_1D2E68FC0(v2, v1, type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding);
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DD8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v10 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    sub_1D2E68FC0(v7, v10, type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding);
    (*(v9 + 56))(v10, 0, 1, v8);
    sub_1D2E5D050(v10, v11, &qword_1EC7384F0, &qword_1D2EEEFC0);
    if ((*(v9 + 48))(v11, 1, v8) == 1)
    {
      sub_1D2E5D0B8(v0[8], &qword_1EC7384F0, &qword_1D2EEEFC0);
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v16 = v0[12];
      v17 = v0[13];
      v18 = v0[10];
      sub_1D2E69070(v0[8], v17, type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding);
      sub_1D2E68FC0(v17, v16, type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding);
      v15 = sub_1D2EE4AA8();
      v14 = v19;
      sub_1D2E68E1C(v17, type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding);
    }

    v20 = v0[14];
    sub_1D2E5D0B8(v0[9], &qword_1EC7384F0, &qword_1D2EEEFC0);
    sub_1D2E68E1C(v20, type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding);
    v21 = sub_1D2E685B0(v15, v14, &v29);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Sending message %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38AF660](v13, -1, -1);
    MEMORY[0x1D38AF660](v12, -1, -1);
  }

  else
  {

    sub_1D2E68E1C(v7, type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding);
  }

  v22 = *(v0[7] + 16);
  v23 = *(MEMORY[0x1E69937E8] + 4);
  v24 = swift_task_alloc();
  v0[16] = v24;
  v25 = sub_1D2E69028(&qword_1EDECFD80, type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding);
  *v24 = v0;
  v24[1] = sub_1D2E64C6C;
  v26 = v0[10];
  v27 = v0[6];

  return MEMORY[0x1EEDF2DF8](v25, v27, v26, v25);
}

uint64_t sub_1D2E65C50(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D2E65C70, 0, 0);
}

uint64_t sub_1D2E65C70()
{
  v17 = v0;
  if (qword_1EDECFEF8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  v0[8] = __swift_project_value_buffer(v1, qword_1EDED2D88);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    v6 = sub_1D2EE4AA8();
    v8 = sub_1D2E685B0(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Sending message %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v9 = *(v0[7] + 16);
  v10 = *(MEMORY[0x1E69937E8] + 4);
  v11 = swift_task_alloc();
  v0[9] = v11;
  v13 = sub_1D2E68F0C();
  *v11 = v0;
  v11[1] = sub_1D2E65E4C;
  v14 = v0[6];

  return MEMORY[0x1EEDF2DF8](v14, v12, &type metadata for SmartHolding_XPCMessage_GetCurrentState, v13);
}

uint64_t sub_1D2E65E4C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2E65F80, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1D2E65F80()
{
  v25 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v3 = v1;
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v7 = 136315138;
    swift_getErrorValue();
    v8 = v0[2];
    v9 = v0[3];
    v10 = sub_1D2EE4E58();
    v11 = *(v10 - 8);
    v12 = *(v11 + 64) + 15;
    v13 = swift_task_alloc();
    v14 = *(v9 - 8);
    (*(v14 + 16))(v13, v8, v9);
    (*(v14 + 56))(v13, 0, 1, v9);
    v15 = sub_1D2EE2754(v13, v9);
    v17 = v16;
    (*(v11 + 8))(v13, v10);

    v18 = sub_1D2E685B0(v15, v17, &v24);

    *(v7 + 4) = v18;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Failed to send message with error %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D38AF660](v23, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  v19 = v0[10];
  swift_willThrow();
  v20 = v0[1];
  v21 = v0[10];

  return v20();
}

uint64_t sub_1D2E66210()
{
  v16 = v0;
  if (qword_1EDECFEF8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  v0[7] = __swift_project_value_buffer(v1, qword_1EDED2D88);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    v6 = sub_1D2EE4AA8();
    v8 = sub_1D2E685B0(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Sending message %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v9 = *(v0[6] + 16);
  v10 = *(MEMORY[0x1E69937E8] + 4);
  v11 = swift_task_alloc();
  v0[8] = v11;
  v12 = sub_1D2E68EB8();
  *v11 = v0;
  v11[1] = sub_1D2E663E8;

  return MEMORY[0x1EEDF2DF8](v12, v13, &type metadata for SmartHolding_XPCMessage_Prewarm, v12);
}

uint64_t sub_1D2E663E8()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2E691AC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t WaitOnHoldController.ping()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D2E5BA34;

  return sub_1D2E645A4();
}

uint64_t WaitOnHoldController.startHoldDetection(callUUID:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1D2EE3EB8();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E66694, 0, 0);
}

uint64_t sub_1D2E66694()
{
  v27 = v0;
  if (qword_1EDECFEF8 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EDED2D88);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_1D2EE45F8();
  v8 = sub_1D2EE4DD8();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];
  if (v9)
  {
    v24 = v8;
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v13 = 136315394;
    *(v13 + 4) = sub_1D2E685B0(0xD00000000000001DLL, 0x80000001D2EE6750, &v26);
    *(v13 + 12) = 2082;
    sub_1D2E69028(&qword_1EC7384D8, MEMORY[0x1E69695A8]);
    v14 = v6;
    v15 = sub_1D2EE5258();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_1D2E685B0(v18, v17, &v26);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_1D2E46000, v7, v24, "%s callUUID=%{public}s)", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v25, -1, -1);
    MEMORY[0x1D38AF660](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v6(v0[4], v0[2], v0[5]);
  v20 = swift_task_alloc();
  v0[8] = v20;
  *v20 = v0;
  v20[1] = sub_1D2E66964;
  v22 = v0[3];
  v21 = v0[4];

  return sub_1D2E6479C(v21);
}

uint64_t sub_1D2E66964()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1D2E66B08;
  }

  else
  {
    v3 = sub_1D2E66A78;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2E66A78()
{
  v1 = v0[7];
  sub_1D2E68E1C(v0[4], type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D2E66B08()
{
  v1 = v0[7];
  sub_1D2E68E1C(v0[4], type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection);

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t WaitOnHoldController.stopHoldDetection(callUUID:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1D2EE3EB8();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E66C84, 0, 0);
}

uint64_t sub_1D2E66C84()
{
  v27 = v0;
  if (qword_1EDECFEF8 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EDED2D88);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_1D2EE45F8();
  v8 = sub_1D2EE4DD8();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];
  if (v9)
  {
    v24 = v8;
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v13 = 136315394;
    *(v13 + 4) = sub_1D2E685B0(0xD00000000000001CLL, 0x80000001D2EE6770, &v26);
    *(v13 + 12) = 2082;
    sub_1D2E69028(&qword_1EC7384D8, MEMORY[0x1E69695A8]);
    v14 = v6;
    v15 = sub_1D2EE5258();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_1D2E685B0(v18, v17, &v26);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_1D2E46000, v7, v24, "%s callUUID=%{public}s)", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v25, -1, -1);
    MEMORY[0x1D38AF660](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v6(v0[4], v0[2], v0[5]);
  v20 = swift_task_alloc();
  v0[8] = v20;
  *v20 = v0;
  v20[1] = sub_1D2E66F54;
  v22 = v0[3];
  v21 = v0[4];

  return sub_1D2E64DE0(v21);
}

uint64_t sub_1D2E66F54()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1D2E670F8;
  }

  else
  {
    v3 = sub_1D2E67068;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2E67068()
{
  v1 = v0[7];
  sub_1D2E68E1C(v0[4], type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D2E670F8()
{
  v1 = v0[7];
  sub_1D2E68E1C(v0[4], type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection);

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t WaitOnHoldController.startScreening(callUUID:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E67218, 0, 0);
}

uint64_t sub_1D2E67218()
{
  if (qword_1EDECFEF8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2D88);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Requesting to start screening", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = v0[4];
  v6 = v0[2];

  v7 = sub_1D2EE3EB8();
  (*(*(v7 - 8) + 16))(v5, v6, v7);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1D2E673AC;
  v10 = v0[3];
  v9 = v0[4];

  return sub_1D2E652B0(v9);
}

uint64_t sub_1D2E673AC()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1D2E67544;
  }

  else
  {
    v3 = sub_1D2E674C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2E674C0()
{
  sub_1D2E68E1C(*(v0 + 32), type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2E67544()
{
  sub_1D2E68E1C(v0[4], type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding);

  v1 = v0[1];
  v2 = v0[6];

  return v1();
}

uint64_t WaitOnHoldController.endScreening(callUUID:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E67658, 0, 0);
}

uint64_t sub_1D2E67658()
{
  if (qword_1EDECFEF8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2D88);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Requesting to end screening", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = v0[4];
  v6 = v0[2];

  v7 = sub_1D2EE3EB8();
  (*(*(v7 - 8) + 16))(v5, v6, v7);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1D2E677EC;
  v10 = v0[3];
  v9 = v0[4];

  return sub_1D2E65780(v9);
}

uint64_t sub_1D2E677EC()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1D2E67984;
  }

  else
  {
    v3 = sub_1D2E67900;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2E67900()
{
  sub_1D2E68E1C(*(v0 + 32), type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2E67984()
{
  sub_1D2E68E1C(v0[4], type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding);

  v1 = v0[1];
  v2 = v0[6];

  return v1();
}

uint64_t WaitOnHoldController.getCurrentState()(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D2E67A28, 0, 0);
}

uint64_t sub_1D2E67A28()
{
  if (qword_1EDECFEF8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  v0[10] = __swift_project_value_buffer(v1, qword_1EDED2D88);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Requesting current state from WaitOnHoldServer", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1D2E67B80;
  v6 = v0[9];

  return sub_1D2E65C50((v0 + 2));
}

uint64_t sub_1D2E67B80()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1D2E67E30;
  }

  else
  {
    v3 = sub_1D2E67C94;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2E67C94()
{
  v16 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1D2E637F8(v2, v3, v4);
  v5 = sub_1D2EE45F8();
  v6 = sub_1D2EE4DD8();
  sub_1D2E63814(v2, v3, v4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v0 + 40) = v2;
    *(v0 + 48) = v3;
    *(v0 + 56) = v4;
    sub_1D2E637F8(v2, v3, v4);
    v9 = sub_1D2EE4AA8();
    v11 = sub_1D2E685B0(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D2E46000, v5, v6, "Current state received: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38AF660](v8, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  v12 = *(v0 + 64);
  *v12 = v2;
  *(v12 + 8) = v3;
  *(v12 + 16) = v4;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D2E67E68()
{
  v10 = v0;
  if (qword_1EDECFEF8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  v0[7] = __swift_project_value_buffer(v1, qword_1EDED2D88);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1D2E685B0(0x286D726177657270, 0xE900000000000029, &v9);
    _os_log_impl(&dword_1D2E46000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1D2E68018;
  v7 = v0[6];

  return sub_1D2E661F0();
}

uint64_t sub_1D2E68018()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1D2E68200;
  }

  else
  {
    v3 = sub_1D2E6812C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2E6812C()
{
  v1 = *(v0 + 56);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Prewarming finished", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D2E68200()
{
  v25 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = v1;
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v7 = 136446210;
    swift_getErrorValue();
    v8 = v0[2];
    v9 = v0[3];
    v10 = sub_1D2EE4E58();
    v11 = *(v10 - 8);
    v12 = *(v11 + 64) + 15;
    v13 = swift_task_alloc();
    v14 = *(v9 - 8);
    (*(v14 + 16))(v13, v8, v9);
    (*(v14 + 56))(v13, 0, 1, v9);
    v15 = sub_1D2EE2754(v13, v9);
    v17 = v16;
    (*(v11 + 8))(v13, v10);

    v18 = sub_1D2E685B0(v15, v17, &v24);

    *(v7 + 4) = v18;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Prewarming failed with error: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D38AF660](v23, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  v19 = v0[9];
  swift_willThrow();
  v20 = v0[1];
  v21 = v0[9];

  return v20();
}

uint64_t WaitOnHoldController.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  sub_1D2E5D0B8(v0 + 72, &qword_1EC7384E0, &qword_1D2EEEF40);
  return v0;
}

uint64_t WaitOnHoldController.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  sub_1D2E5D0B8(v0 + 72, &qword_1EC7384E0, &qword_1D2EEEF40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2E68554(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1D2E685B0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1D2E685B0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D2E6867C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D2E68F60(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D2E6867C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D2E68788(a5, a6);
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
    result = sub_1D2EE5018();
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

uint64_t sub_1D2E68788(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D2E687D4(a1, a2);
  sub_1D2E68904(&unk_1F4E91118);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D2E687D4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D2E689F0(v5, 0);
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

  result = sub_1D2EE5018();
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
        v10 = sub_1D2EE4B08();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D2E689F0(v10, 0);
        result = sub_1D2EE4FA8();
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

uint64_t sub_1D2E68904(uint64_t result)
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

  result = sub_1D2E68A64(result, v12, 1, v3);
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

void *sub_1D2E689F0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738508, &qword_1D2EEEFD8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D2E68A64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738508, &qword_1D2EEEFD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **sub_1D2E68B58(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1D2E68B68(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1D2E68BDC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1D2E68C0C(uint64_t a1)
{
  v10[3] = &type metadata for DefaultContextualEmbeddingFactory;
  v10[4] = &off_1F4E93D80;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (qword_1EDECFEF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EDED2D88);
  v3 = sub_1D2EE45F8();
  v4 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2E46000, v3, v4, "Setting up WaitOnHold XPC client", v5, 2u);
    MEMORY[0x1D38AF660](v5, -1, -1);
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7381C0, &qword_1D2EEDC10);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(a1 + 16) = sub_1D2EE46B8();
  sub_1D2E6912C(v10, a1 + 24);

  sub_1D2EE4698();

  __swift_destroy_boxed_opaque_existential_1(v10);
  return a1;
}

unint64_t sub_1D2E68D80()
{
  result = qword_1EDECFD90;
  if (!qword_1EDECFD90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDECFD90);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1D2E68E1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2E68EB8()
{
  result = qword_1EDECFF40;
  if (!qword_1EDECFF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECFF40);
  }

  return result;
}

unint64_t sub_1D2E68F0C()
{
  result = qword_1EDECF8B0;
  if (!qword_1EDECF8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECF8B0);
  }

  return result;
}

uint64_t sub_1D2E68F60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D2E68FC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2E69028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2E69070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D2E690D8()
{
  result = qword_1EDECF8D0;
  if (!qword_1EDECF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECF8D0);
  }

  return result;
}

uint64_t sub_1D2E6912C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static AppleIntelligenceManager.isAvailable.getter()
{
  v28 = sub_1D2EE4218();
  v0 = *(v28 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x1EEE9AC00](v28);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v25 - v4;
  v5 = sub_1D2EE4258();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2EE4238();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D2EE4278();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69A12C0], v5);
  sub_1D2EE4228();
  sub_1D2EE4268();
  (*(v11 + 8))(v14, v10);
  v20 = v26;
  sub_1D2EE4248();
  (*(v16 + 8))(v19, v15);
  v22 = v27;
  v21 = v28;
  (*(v0 + 104))(v27, *MEMORY[0x1E69A1198], v28);
  LOBYTE(v5) = sub_1D2EE4208();
  v23 = *(v0 + 8);
  v23(v22, v21);
  v23(v20, v21);
  return v5 & 1;
}

uint64_t sub_1D2E69530()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D2E69578(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D2E695C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D2E69644()
{
  v0 = sub_1D2EE3F58();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738598, &unk_1D2EF2600);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  sub_1D2EE3EC8();
  v9 = sub_1D2EE4B68();

  if (v9)
  {
    return 0x736E61482D687ALL;
  }

  sub_1D2EE3F68();
  sub_1D2EE3F48();
  (*(v1 + 8))(v4, v0);
  v11 = sub_1D2EE3EF8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_1D2E5D0B8(v8, &qword_1EC738598, &unk_1D2EF2600);
    return 0;
  }

  else
  {
    v13 = sub_1D2EE3ED8();
    (*(v12 + 8))(v8, v11);
    return v13;
  }
}

uint64_t sub_1D2E69864()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA0, &qword_1D2EF5D80);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v77 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v86 = &v77 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v77 - v10;
  v12 = sub_1D2EE3F78();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v77 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v85 = &v77 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v83 = &v77 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v77 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v77 - v28;
  sub_1D2EE3F38();
  v87 = v29;
  v30 = sub_1D2E69644();
  if (v31)
  {
    v32 = v31;
    v81 = v11;
    v82 = v30;
    v84 = sub_1D2EE4A38();
    if (qword_1EDECFF00 != -1)
    {
      swift_once();
    }

    v33 = sub_1D2EE4618();
    __swift_project_value_buffer(v33, qword_1EDED2DA0);
    v34 = *(v13 + 16);
    v35 = v87;
    v34(v27, v87, v12);

    v36 = sub_1D2EE45F8();
    v37 = sub_1D2EE4DD8();

    if (os_log_type_enabled(v36, v37))
    {
      v78 = v37;
      v80 = v36;
      v38 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v88 = v77;
      v79 = v38;
      *v38 = 136315394;
      v39 = v81;
      v34(v81, v27, v12);
      (*(v13 + 56))(v39, 0, 1, v12);
      v40 = v86;
      sub_1D2E6A120(v39, v86);
      if ((*(v13 + 48))(v40, 1, v12) == 1)
      {
        v41 = 7104878;
        sub_1D2E5D0B8(v40, &qword_1EC738CA0, &qword_1D2EF5D80);
        sub_1D2E5D0B8(v39, &qword_1EC738CA0, &qword_1D2EF5D80);
        v42 = *(v13 + 8);
        v43 = v12;
        v42(v27, v12);
        v44 = 0xE300000000000000;
      }

      else
      {
        v61 = v83;
        v62 = v40;
        v43 = v12;
        (*(v13 + 32))(v83, v62, v12);
        v34(v85, v61, v12);
        v63 = sub_1D2EE4AA8();
        v44 = v64;
        v42 = *(v13 + 8);
        v65 = v61;
        v41 = v63;
        v42(v65, v43);
        sub_1D2E5D0B8(v39, &qword_1EC738CA0, &qword_1D2EF5D80);
        v42(v27, v43);
      }

      v66 = sub_1D2E685B0(v41, v44, &v88);

      v67 = v79;
      *(v79 + 1) = v66;
      *(v67 + 6) = 2080;
      v68 = sub_1D2E685B0(v82, v32, &v88);

      *(v67 + 14) = v68;
      v69 = v80;
      _os_log_impl(&dword_1D2E46000, v80, v78, "Current natural language identifiers: %s, %s", v67, 0x16u);
      v70 = v77;
      swift_arrayDestroy();
      MEMORY[0x1D38AF660](v70, -1, -1);
      MEMORY[0x1D38AF660](v67, -1, -1);

      v42(v87, v43);
      return v84;
    }

    else
    {

      v58 = *(v13 + 8);
      v58(v27, v12);
      v58(v35, v12);
      return v84;
    }
  }

  else
  {
    v84 = v17;
    if (qword_1EDECFF00 != -1)
    {
      swift_once();
    }

    v45 = sub_1D2EE4618();
    __swift_project_value_buffer(v45, qword_1EDED2DA0);
    v46 = v20;
    v47 = v20;
    v48 = v87;
    v49 = v12;
    v86 = *(v13 + 16);
    (v86)(v47, v87, v12);
    v50 = sub_1D2EE45F8();
    v51 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = v4;
      LODWORD(v83) = v51;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v88 = v54;
      *v53 = 136446210;
      v55 = v86;
      (v86)(v7, v46, v49);
      (*(v13 + 56))(v7, 0, 1, v49);
      sub_1D2E6A120(v7, v52);
      if ((*(v13 + 48))(v52, 1, v49) == 1)
      {
        v86 = 7104878;
        sub_1D2E5D0B8(v52, &qword_1EC738CA0, &qword_1D2EF5D80);
        sub_1D2E5D0B8(v7, &qword_1EC738CA0, &qword_1D2EF5D80);
        v56 = *(v13 + 8);
        v56(v46, v49);
        v57 = 0xE300000000000000;
      }

      else
      {
        v71 = *(v13 + 32);
        v82 = v54;
        v72 = v53;
        v73 = v84;
        v71(v84, v52, v49);
        v55(v85, v73, v49);
        v86 = sub_1D2EE4AA8();
        v57 = v74;
        v56 = *(v13 + 8);
        v75 = v73;
        v53 = v72;
        v54 = v82;
        v56(v75, v49);
        sub_1D2E5D0B8(v7, &qword_1EC738CA0, &qword_1D2EF5D80);
        v56(v46, v49);
      }

      v76 = sub_1D2E685B0(v86, v57, &v88);

      *(v53 + 4) = v76;
      _os_log_impl(&dword_1D2E46000, v50, v83, "Failed to get language code for locale %{public}s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1D38AF660](v54, -1, -1);
      MEMORY[0x1D38AF660](v53, -1, -1);

      v56(v87, v49);
    }

    else
    {

      v60 = *(v13 + 8);
      v60(v46, v49);
      v60(v48, v49);
    }

    return 0;
  }
}

uint64_t sub_1D2E6A120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA0, &qword_1D2EF5D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D2E6A190()
{
  type metadata accessor for PowerLogReporter();
  v0 = swift_allocObject();
  v1 = sub_1D2EE4A38();
  v2 = sub_1D2EE4A38();
  v3 = PPSCreateTelemetryIdentifier();

  *(v0 + 16) = v3;
  qword_1EC746628 = v0;
}

id sub_1D2E6A264()
{
  result = [objc_allocWithZone(MEMORY[0x1E699BEA8]) init];
  qword_1EC746630 = result;
  return result;
}

uint64_t sub_1D2E6A298(void *a1)
{
  v2 = sub_1D2EE4A38();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_1D2EE4EA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_1D2E6A3FC();
    if (swift_dynamicCast())
    {
      v4 = [v6 BOOLValue];

      return v4;
    }
  }

  else
  {
    sub_1D2E6A394(v9);
  }

  return 1;
}

uint64_t sub_1D2E6A394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7385A0, &qword_1D2EEF120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D2E6A3FC()
{
  result = qword_1EC7385A8;
  if (!qword_1EC7385A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7385A8);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1D2E6A5E4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2E6A634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D2E6A6A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for NewSmartAction();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7385B0, &qword_1D2EEF338);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  SmartAction = type metadata accessor for CreateSmartAction(0);
  v12 = *(*(SmartAction - 8) + 64);
  MEMORY[0x1EEE9AC00](SmartAction - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6B130();
  sub_1D2EE53B8();
  if (!v2)
  {
    v16 = v19;
    sub_1D2E6B034(&qword_1EC7385C0, type metadata accessor for NewSmartAction);
    v17 = v21;
    sub_1D2EE51B8();
    (*(v20 + 8))(v10, v7);
    sub_1D2E6B184(v17, v14, type metadata accessor for NewSmartAction);
    sub_1D2E6B184(v14, v16, type metadata accessor for CreateSmartAction);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D2E6A918@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for SmartAction();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7385D8, &qword_1D2EEF348);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CreatedSmartAction(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6B1EC();
  sub_1D2EE53B8();
  if (!v2)
  {
    v16 = v19;
    sub_1D2E6B034(&qword_1EC7385E8, type metadata accessor for SmartAction);
    v17 = v21;
    sub_1D2EE51B8();
    (*(v20 + 8))(v10, v7);
    sub_1D2E6B184(v17, v14, type metadata accessor for SmartAction);
    sub_1D2E6B184(v14, v16, type metadata accessor for CreatedSmartAction);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D2E6ABA0(uint64_t a1)
{
  v2 = sub_1D2E6B130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E6ABDC(uint64_t a1)
{
  v2 = sub_1D2E6B130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E6AC30(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7385C8, &qword_1D2EEF340);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6B130();
  sub_1D2EE53C8();
  type metadata accessor for NewSmartAction();
  sub_1D2E6B034(&qword_1EC7385D0, type metadata accessor for NewSmartAction);
  sub_1D2EE5248();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D2E6ADA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D2EE5288();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D2E6AE2C(uint64_t a1)
{
  v2 = sub_1D2E6B1EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E6AE68(uint64_t a1)
{
  v2 = sub_1D2E6B1EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E6AEBC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7385F0, &qword_1D2EEF350);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6B1EC();
  sub_1D2EE53C8();
  type metadata accessor for SmartAction();
  sub_1D2E6B034(&qword_1EC7385F8, type metadata accessor for SmartAction);
  sub_1D2EE5248();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D2E6B034(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2E6B130()
{
  result = qword_1EC7385B8;
  if (!qword_1EC7385B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7385B8);
  }

  return result;
}

uint64_t sub_1D2E6B184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D2E6B1EC()
{
  result = qword_1EC7385E0;
  if (!qword_1EC7385E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7385E0);
  }

  return result;
}

unint64_t sub_1D2E6B264()
{
  result = qword_1EC738600;
  if (!qword_1EC738600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738600);
  }

  return result;
}

unint64_t sub_1D2E6B2BC()
{
  result = qword_1EC738608;
  if (!qword_1EC738608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738608);
  }

  return result;
}

unint64_t sub_1D2E6B314()
{
  result = qword_1EC738610;
  if (!qword_1EC738610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738610);
  }

  return result;
}

unint64_t sub_1D2E6B36C()
{
  result = qword_1EC738618;
  if (!qword_1EC738618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738618);
  }

  return result;
}

unint64_t sub_1D2E6B3C4()
{
  result = qword_1EC738620;
  if (!qword_1EC738620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738620);
  }

  return result;
}

unint64_t sub_1D2E6B41C()
{
  result = qword_1EC738628;
  if (!qword_1EC738628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738628);
  }

  return result;
}

uint64_t sub_1D2E6B49C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738660, &qword_1D2EEF780);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6BC90();
  sub_1D2EE53C8();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738650, &qword_1D2EEF778);
  sub_1D2E6BCE4(&qword_1EC738668, &qword_1EC737CA0);
  sub_1D2EE5248();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D2E6B650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x636E657265666572 && a2 == 0xEC00000073644965)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D2EE5288();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D2E6B6DC(uint64_t a1)
{
  v2 = sub_1D2E6BC90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E6B718(uint64_t a1)
{
  v2 = sub_1D2E6BC90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D2E6B754@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D2E6BAD4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D2E6B79C(uint64_t a1)
{
  v2 = sub_1D2E6BA80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E6B7D8(uint64_t a1)
{
  v2 = sub_1D2E6BA80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E6B814(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738630, &qword_1D2EEF768);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6BA80();
  sub_1D2EE53C8();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D2E6B928()
{
  result = qword_1EDED00D8;
  if (!qword_1EDED00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDED00D8);
  }

  return result;
}

unint64_t sub_1D2E6B97C()
{
  result = qword_1EDED00E0;
  if (!qword_1EDED00E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDED00E0);
  }

  return result;
}

unint64_t sub_1D2E6B9D4()
{
  result = qword_1EDED01B0;
  if (!qword_1EDED01B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDED01B0);
  }

  return result;
}

unint64_t sub_1D2E6BA2C()
{
  result = qword_1EDED01B8[0];
  if (!qword_1EDED01B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDED01B8);
  }

  return result;
}

unint64_t sub_1D2E6BA80()
{
  result = qword_1EC738638;
  if (!qword_1EC738638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738638);
  }

  return result;
}

void *sub_1D2E6BAD4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738640, &qword_1D2EEF770);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6BC90();
  sub_1D2EE53B8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738650, &qword_1D2EEF778);
    sub_1D2E6BCE4(&qword_1EC738658, &qword_1EC737CC8);
    sub_1D2EE51B8();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_1D2E6BC90()
{
  result = qword_1EC738648;
  if (!qword_1EC738648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738648);
  }

  return result;
}

uint64_t sub_1D2E6BCE4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC738650, &qword_1D2EEF778);
    sub_1D2E5069C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2E6BD90()
{
  result = qword_1EC738670;
  if (!qword_1EC738670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738670);
  }

  return result;
}

unint64_t sub_1D2E6BDE8()
{
  result = qword_1EC738678;
  if (!qword_1EC738678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738678);
  }

  return result;
}

unint64_t sub_1D2E6BE40()
{
  result = qword_1EC738680;
  if (!qword_1EC738680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738680);
  }

  return result;
}

unint64_t sub_1D2E6BE98()
{
  result = qword_1EC738688;
  if (!qword_1EC738688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738688);
  }

  return result;
}

unint64_t sub_1D2E6BEF0()
{
  result = qword_1EC738690;
  if (!qword_1EC738690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738690);
  }

  return result;
}

uint64_t type metadata accessor for FetchSmartActions()
{
  result = qword_1EDED02B8;
  if (!qword_1EDED02B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2E6BFC0()
{
  result = type metadata accessor for SmartActionQuery();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D2E6C02C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for SmartActionQuery();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7386C8, &qword_1D2EEFA98);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  SmartActions = type metadata accessor for FetchSmartActions();
  v12 = *(*(SmartActions - 8) + 64);
  MEMORY[0x1EEE9AC00](SmartActions - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6CC18();
  sub_1D2EE53B8();
  if (!v2)
  {
    v16 = v19;
    sub_1D2E6CCD4(&qword_1EC7386D8, type metadata accessor for SmartActionQuery);
    v17 = v21;
    sub_1D2EE51B8();
    (*(v20 + 8))(v10, v7);
    sub_1D2E6CC6C(v17, v14, type metadata accessor for SmartActionQuery);
    sub_1D2E6CC6C(v14, v16, type metadata accessor for FetchSmartActions);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D2E6C2A0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7386B8, &qword_1D2EEFA90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6CB28();
  sub_1D2EE53C8();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7386A8, &qword_1D2EEFA88);
  sub_1D2E6CB7C(&qword_1EC7386C0, &qword_1EC7385F8);
  sub_1D2EE5248();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D2E6C448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D2EE5288();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D2E6C4CC(uint64_t a1)
{
  v2 = sub_1D2E6CC18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E6C508(uint64_t a1)
{
  v2 = sub_1D2E6CC18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E6C55C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7386E0, &qword_1D2EEFAA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6CC18();
  sub_1D2EE53C8();
  type metadata accessor for SmartActionQuery();
  sub_1D2E6CCD4(&qword_1EC7386E8, type metadata accessor for SmartActionQuery);
  sub_1D2EE5248();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D2E6C764()
{
  result = qword_1EDED00C8;
  if (!qword_1EDED00C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDED00C8);
  }

  return result;
}

unint64_t sub_1D2E6C7B8()
{
  result = qword_1EDED00D0;
  if (!qword_1EDED00D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDED00D0);
  }

  return result;
}

uint64_t sub_1D2E6C824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D2EE5288();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D2E6C8AC(uint64_t a1)
{
  v2 = sub_1D2E6CB28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E6C8E8(uint64_t a1)
{
  v2 = sub_1D2E6CB28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D2E6C924@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D2E6C96C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1D2E6C96C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738698, &qword_1D2EEFA80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6CB28();
  sub_1D2EE53B8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7386A8, &qword_1D2EEFA88);
    sub_1D2E6CB7C(&qword_1EC7386B0, &qword_1EC7385E8);
    sub_1D2EE51B8();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_1D2E6CB28()
{
  result = qword_1EC7386A0;
  if (!qword_1EC7386A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7386A0);
  }

  return result;
}

uint64_t sub_1D2E6CB7C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7386A8, &qword_1D2EEFA88);
    sub_1D2E6CCD4(a2, type metadata accessor for SmartAction);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2E6CC18()
{
  result = qword_1EC7386D0;
  if (!qword_1EC7386D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7386D0);
  }

  return result;
}

uint64_t sub_1D2E6CC6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2E6CCD4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2E6CD50()
{
  result = qword_1EC7386F0;
  if (!qword_1EC7386F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7386F0);
  }

  return result;
}

unint64_t sub_1D2E6CDA8()
{
  result = qword_1EC7386F8;
  if (!qword_1EC7386F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7386F8);
  }

  return result;
}

unint64_t sub_1D2E6CE00()
{
  result = qword_1EC738700;
  if (!qword_1EC738700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738700);
  }

  return result;
}

unint64_t sub_1D2E6CE58()
{
  result = qword_1EC738708;
  if (!qword_1EC738708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738708);
  }

  return result;
}

unint64_t sub_1D2E6CEB0()
{
  result = qword_1EC738710;
  if (!qword_1EC738710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738710);
  }

  return result;
}

unint64_t sub_1D2E6CF08()
{
  result = qword_1EC738718;
  if (!qword_1EC738718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738718);
  }

  return result;
}

uint64_t type metadata accessor for FetchSmartActionDataItems()
{
  result = qword_1EDECFFD0;
  if (!qword_1EDECFFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2E6CFD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for SmartActionQuery();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738760, &qword_1D2EEFED0);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  SmartActionDataItems = type metadata accessor for FetchSmartActionDataItems();
  v12 = *(*(SmartActionDataItems - 8) + 64);
  MEMORY[0x1EEE9AC00](SmartActionDataItems - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6DA8C();
  sub_1D2EE53B8();
  if (!v2)
  {
    v16 = v19;
    sub_1D2E6DB48(&qword_1EC7386D8, type metadata accessor for SmartActionQuery);
    v17 = v21;
    sub_1D2EE51B8();
    (*(v20 + 8))(v10, v7);
    sub_1D2E6DAE0(v17, v14, type metadata accessor for SmartActionQuery);
    sub_1D2E6DAE0(v14, v16, type metadata accessor for FetchSmartActionDataItems);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D2E6D24C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738748, &qword_1D2EEFEC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6D99C();
  sub_1D2EE53C8();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738730, &qword_1D2EEFEC0);
  sub_1D2E6D9F0(&qword_1EC738750, &qword_1EC738758);
  sub_1D2EE5248();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D2E6D3E0(uint64_t a1)
{
  v2 = sub_1D2E6DA8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E6D41C(uint64_t a1)
{
  v2 = sub_1D2E6DA8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E6D470(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738770, &qword_1D2EEFED8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6DA8C();
  sub_1D2EE53C8();
  type metadata accessor for SmartActionQuery();
  sub_1D2E6DB48(&qword_1EC7386E8, type metadata accessor for SmartActionQuery);
  sub_1D2EE5248();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D2E6D678()
{
  result = qword_1EDECFF68;
  if (!qword_1EDECFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECFF68);
  }

  return result;
}

unint64_t sub_1D2E6D6CC()
{
  result = qword_1EDECFF70[0];
  if (!qword_1EDECFF70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDECFF70);
  }

  return result;
}

uint64_t sub_1D2E6D720(uint64_t a1)
{
  v2 = sub_1D2E6D99C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E6D75C(uint64_t a1)
{
  v2 = sub_1D2E6D99C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D2E6D798@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D2E6D7E0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1D2E6D7E0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738720, &qword_1D2EEFEB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6D99C();
  sub_1D2EE53B8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738730, &qword_1D2EEFEC0);
    sub_1D2E6D9F0(&qword_1EC738738, &qword_1EC738740);
    sub_1D2EE51B8();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_1D2E6D99C()
{
  result = qword_1EC738728;
  if (!qword_1EC738728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738728);
  }

  return result;
}

uint64_t sub_1D2E6D9F0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC738730, &qword_1D2EEFEC0);
    sub_1D2E6DB48(a2, type metadata accessor for SmartActionDataItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2E6DA8C()
{
  result = qword_1EC738768;
  if (!qword_1EC738768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738768);
  }

  return result;
}

uint64_t sub_1D2E6DAE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2E6DB48(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2E6DBC4()
{
  result = qword_1EC738778;
  if (!qword_1EC738778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738778);
  }

  return result;
}

unint64_t sub_1D2E6DC1C()
{
  result = qword_1EC738780;
  if (!qword_1EC738780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738780);
  }

  return result;
}

unint64_t sub_1D2E6DC74()
{
  result = qword_1EC738788;
  if (!qword_1EC738788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738788);
  }

  return result;
}

unint64_t sub_1D2E6DCCC()
{
  result = qword_1EC738790;
  if (!qword_1EC738790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738790);
  }

  return result;
}

unint64_t sub_1D2E6DD24()
{
  result = qword_1EC738798;
  if (!qword_1EC738798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738798);
  }

  return result;
}

unint64_t sub_1D2E6DD7C()
{
  result = qword_1EC7387A0;
  if (!qword_1EC7387A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7387A0);
  }

  return result;
}

uint64_t type metadata accessor for ProcessSmartAction()
{
  result = qword_1EDED0190;
  if (!qword_1EDED0190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2E6DE4C()
{
  result = sub_1D2EE3EB8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D2E6DEC8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7387B8, &qword_1D2EF02A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6E6F0();
  sub_1D2EE53C8();
  v19[15] = 0;
  sub_1D2EE3EB8();
  sub_1D2E6E804(&qword_1EC737CA0, MEMORY[0x1E69695A8]);
  sub_1D2EE5248();
  if (!v2)
  {
    v11 = type metadata accessor for ProcessSmartAction();
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v19[14] = 1;
    sub_1D2EE5208();
    v15 = (v3 + *(v11 + 24));
    v16 = *v15;
    v17 = v15[1];
    v19[13] = 2;
    sub_1D2EE5208();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D2E6E0B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1D2EE3EB8();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7387A8, &qword_1D2EF02A0);
  v32 = *(v35 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v28 - v8;
  v10 = type metadata accessor for ProcessSmartAction();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6E6F0();
  sub_1D2EE53B8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v32;
  v15 = v33;
  v29 = v10;
  v30 = v13;
  v38 = 0;
  sub_1D2E6E804(&qword_1EC737CC8, MEMORY[0x1E69695A8]);
  v18 = v34;
  v17 = v35;
  sub_1D2EE51B8();
  (*(v15 + 32))(v30, v18, v4);
  v37 = 1;
  v19 = sub_1D2EE5178();
  v20 = &v30[*(v29 + 20)];
  *v20 = v19;
  v20[1] = v21;
  v36 = 2;
  v22 = sub_1D2EE5178();
  v24 = v23;
  (*(v16 + 8))(v9, v17);
  v25 = v30;
  v26 = &v30[*(v29 + 24)];
  *v26 = v22;
  v26[1] = v24;
  sub_1D2E6E744(v25, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D2E6E7A8(v25);
}

uint64_t sub_1D2E6E468()
{
  v1 = 0x6E656D6D6F636572;
  if (*v0 != 1)
  {
    v1 = 0x614E656C646E7562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69616D6563696F76;
  }
}

uint64_t sub_1D2E6E4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2E6E964(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2E6E508(uint64_t a1)
{
  v2 = sub_1D2E6E6F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E6E544(uint64_t a1)
{
  v2 = sub_1D2E6E6F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D2E6E644()
{
  result = qword_1EDED05C0;
  if (!qword_1EDED05C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDED05C0);
  }

  return result;
}

unint64_t sub_1D2E6E69C()
{
  result = qword_1EDED05C8;
  if (!qword_1EDED05C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDED05C8);
  }

  return result;
}

unint64_t sub_1D2E6E6F0()
{
  result = qword_1EC7387B0;
  if (!qword_1EC7387B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7387B0);
  }

  return result;
}

uint64_t sub_1D2E6E744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessSmartAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2E6E7A8(uint64_t a1)
{
  v2 = type metadata accessor for ProcessSmartAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2E6E804(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2E6E860()
{
  result = qword_1EC7387C0;
  if (!qword_1EC7387C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7387C0);
  }

  return result;
}

unint64_t sub_1D2E6E8B8()
{
  result = qword_1EC7387C8;
  if (!qword_1EC7387C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7387C8);
  }

  return result;
}

unint64_t sub_1D2E6E910()
{
  result = qword_1EC7387D0;
  if (!qword_1EC7387D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7387D0);
  }

  return result;
}

uint64_t sub_1D2E6E964(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69616D6563696F76 && a2 == 0xED0000444955556CLL;
  if (v4 || (sub_1D2EE5288() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6D6F636572 && a2 == 0xED00006E6F746164 || (sub_1D2EE5288() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E656C646E7562 && a2 == 0xEA0000000000656DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2EE5288();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D2E6EAA4(uint64_t a1, int a2)
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

uint64_t sub_1D2E6EAEC(uint64_t result, int a2, int a3)
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

uint64_t sub_1D2E6EB3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738818, &qword_1D2EF05F8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6F7DC();
  sub_1D2EE53C8();
  v16 = 0;
  sub_1D2EE5208();
  if (!v5)
  {
    v15 = 1;
    sub_1D2EE5208();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D2E6ECD0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7387F8, &qword_1D2EF05E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6F6BC();
  sub_1D2EE53C8();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7387E8, &qword_1D2EF05E0);
  sub_1D2E6F710(&qword_1EC738800, &qword_1EC7385D0);
  sub_1D2EE5248();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D2E6EE64()
{
  if (*v0)
  {
    result = 0x69616D6563696F76;
  }

  else
  {
    result = 0x697263736E617274;
  }

  *v0;
  return result;
}

uint64_t sub_1D2E6EEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x697263736E617274 && a2 == 0xEA00000000007470;
  if (v6 || (sub_1D2EE5288() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69616D6563696F76 && a2 == 0xED0000444955556CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2EE5288();

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

uint64_t sub_1D2E6EF9C(uint64_t a1)
{
  v2 = sub_1D2E6F7DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E6EFD8(uint64_t a1)
{
  v2 = sub_1D2E6F7DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E6F014@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D2E6F31C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1D2E6F07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D2EE5288();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D2E6F104(uint64_t a1)
{
  v2 = sub_1D2E6F6BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E6F140(uint64_t a1)
{
  v2 = sub_1D2E6F6BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D2E6F17C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D2E6F500(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D2E6F1C4()
{
  result = qword_1EDED00F8;
  if (!qword_1EDED00F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDED00F8);
  }

  return result;
}

unint64_t sub_1D2E6F218()
{
  result = qword_1EDED0100[0];
  if (!qword_1EDED0100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDED0100);
  }

  return result;
}

unint64_t sub_1D2E6F270()
{
  result = qword_1EDED00E8;
  if (!qword_1EDED00E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDED00E8);
  }

  return result;
}

unint64_t sub_1D2E6F2C8()
{
  result = qword_1EDED00F0;
  if (!qword_1EDED00F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDED00F0);
  }

  return result;
}

uint64_t sub_1D2E6F31C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738808, &qword_1D2EF05F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6F7DC();
  sub_1D2EE53B8();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1D2EE5178();
    v11 = 1;
    sub_1D2EE5178();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void *sub_1D2E6F500(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7387D8, &qword_1D2EF05D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E6F6BC();
  sub_1D2EE53B8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7387E8, &qword_1D2EF05E0);
    sub_1D2E6F710(&qword_1EC7387F0, &qword_1EC7385C0);
    sub_1D2EE51B8();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_1D2E6F6BC()
{
  result = qword_1EC7387E0;
  if (!qword_1EC7387E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7387E0);
  }

  return result;
}

uint64_t sub_1D2E6F710(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7387E8, &qword_1D2EF05E0);
    sub_1D2E6F798(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D2E6F798(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NewSmartAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2E6F7DC()
{
  result = qword_1EC738810;
  if (!qword_1EC738810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738810);
  }

  return result;
}

unint64_t sub_1D2E6F854()
{
  result = qword_1EC738820;
  if (!qword_1EC738820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738820);
  }

  return result;
}

unint64_t sub_1D2E6F8AC()
{
  result = qword_1EC738828;
  if (!qword_1EC738828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738828);
  }

  return result;
}

unint64_t sub_1D2E6F904()
{
  result = qword_1EC738830;
  if (!qword_1EC738830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738830);
  }

  return result;
}

unint64_t sub_1D2E6F95C()
{
  result = qword_1EC738838;
  if (!qword_1EC738838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738838);
  }

  return result;
}

unint64_t sub_1D2E6F9B4()
{
  result = qword_1EC738840;
  if (!qword_1EC738840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738840);
  }

  return result;
}

unint64_t sub_1D2E6FA0C()
{
  result = qword_1EC738848;
  if (!qword_1EC738848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738848);
  }

  return result;
}

uint64_t sub_1D2E6FA88(uint64_t a1)
{
  v2 = sub_1D2E6FECC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E6FAC4(uint64_t a1)
{
  v2 = sub_1D2E6FECC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E6FB44(uint64_t a1)
{
  v2 = sub_1D2E6FE78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E6FB80(uint64_t a1)
{
  v2 = sub_1D2E6FE78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E6FC00(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1D2EE53C8();
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1D2E6FD20()
{
  result = qword_1EDED03A0;
  if (!qword_1EDED03A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDED03A0);
  }

  return result;
}

unint64_t sub_1D2E6FD74()
{
  result = qword_1EDED03A8;
  if (!qword_1EDED03A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDED03A8);
  }

  return result;
}

unint64_t sub_1D2E6FDCC()
{
  result = qword_1EDED03B0;
  if (!qword_1EDED03B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDED03B0);
  }

  return result;
}

unint64_t sub_1D2E6FE24()
{
  result = qword_1EDED03B8[0];
  if (!qword_1EDED03B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDED03B8);
  }

  return result;
}

unint64_t sub_1D2E6FE78()
{
  result = qword_1EC738858;
  if (!qword_1EC738858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738858);
  }

  return result;
}

unint64_t sub_1D2E6FECC()
{
  result = qword_1EC738868;
  if (!qword_1EC738868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738868);
  }

  return result;
}

unint64_t sub_1D2E6FF44()
{
  result = qword_1EC738870;
  if (!qword_1EC738870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738870);
  }

  return result;
}

unint64_t sub_1D2E6FF9C()
{
  result = qword_1EC738878;
  if (!qword_1EC738878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738878);
  }

  return result;
}

unint64_t sub_1D2E6FFF4()
{
  result = qword_1EC738880;
  if (!qword_1EC738880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738880);
  }

  return result;
}

unint64_t sub_1D2E7004C()
{
  result = qword_1EC738888;
  if (!qword_1EC738888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738888);
  }

  return result;
}

uint64_t sub_1D2E700E0(void *a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7388A8, &qword_1D2EF0DB0);
  v3 = *(v13 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = a1[4];
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E637F8(v7, v8, v10);
  sub_1D2E70808();
  sub_1D2EE53C8();
  v14 = v7;
  v15 = v8;
  v16 = v10;
  sub_1D2E708B0();
  v11 = v13;
  sub_1D2EE5248();
  sub_1D2E63814(v14, v15, v16);
  return (*(v3 + 8))(v6, v11);
}

uint64_t sub_1D2E70258@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738890, &qword_1D2EF0DA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E70808();
  sub_1D2EE53B8();
  if (!v2)
  {
    sub_1D2E7085C();
    sub_1D2EE51B8();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D2E703D0(uint64_t a1)
{
  v2 = sub_1D2E70904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E7040C(uint64_t a1)
{
  v2 = sub_1D2E70904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E70448(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7388B8, &qword_1D2EF0DB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E70904();
  sub_1D2EE53C8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D2E7057C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x53746E6572727563 && a2 == 0xEC00000065746174)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D2EE5288();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D2E70608(uint64_t a1)
{
  v2 = sub_1D2E70808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E70644(uint64_t a1)
{
  v2 = sub_1D2E70808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D2E706B0()
{
  result = qword_1EDECFDA8;
  if (!qword_1EDECFDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECFDA8);
  }

  return result;
}

unint64_t sub_1D2E70704()
{
  result = qword_1EDECFDB0[0];
  if (!qword_1EDECFDB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDECFDB0);
  }

  return result;
}

unint64_t sub_1D2E7075C()
{
  result = qword_1EDECFF18;
  if (!qword_1EDECFF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECFF18);
  }

  return result;
}

unint64_t sub_1D2E707B4()
{
  result = qword_1EDECFF20;
  if (!qword_1EDECFF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECFF20);
  }

  return result;
}

unint64_t sub_1D2E70808()
{
  result = qword_1EC738898;
  if (!qword_1EC738898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738898);
  }

  return result;
}

unint64_t sub_1D2E7085C()
{
  result = qword_1EC7388A0;
  if (!qword_1EC7388A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7388A0);
  }

  return result;
}

unint64_t sub_1D2E708B0()
{
  result = qword_1EC7388B0;
  if (!qword_1EC7388B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7388B0);
  }

  return result;
}

unint64_t sub_1D2E70904()
{
  result = qword_1EC7388C0;
  if (!qword_1EC7388C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7388C0);
  }

  return result;
}

unint64_t sub_1D2E7097C()
{
  result = qword_1EC7388C8;
  if (!qword_1EC7388C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7388C8);
  }

  return result;
}

unint64_t sub_1D2E709D4()
{
  result = qword_1EC7388D0;
  if (!qword_1EC7388D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7388D0);
  }

  return result;
}

unint64_t sub_1D2E70A2C()
{
  result = qword_1EC7388D8;
  if (!qword_1EC7388D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7388D8);
  }

  return result;
}

unint64_t sub_1D2E70A84()
{
  result = qword_1EC7388E0;
  if (!qword_1EC7388E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7388E0);
  }

  return result;
}

unint64_t sub_1D2E70ADC()
{
  result = qword_1EC7388E8;
  if (!qword_1EC7388E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7388E8);
  }

  return result;
}

uint64_t sub_1D2E70B58(uint64_t a1)
{
  v2 = sub_1D2E70F9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E70B94(uint64_t a1)
{
  v2 = sub_1D2E70F9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E70C14(uint64_t a1)
{
  v2 = sub_1D2E70F48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E70C50(uint64_t a1)
{
  v2 = sub_1D2E70F48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E70CD0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1D2EE53C8();
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1D2E70DF0()
{
  result = qword_1EDECFF48;
  if (!qword_1EDECFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECFF48);
  }

  return result;
}

unint64_t sub_1D2E70E44()
{
  result = qword_1EDECFF50;
  if (!qword_1EDECFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECFF50);
  }

  return result;
}

unint64_t sub_1D2E70E9C()
{
  result = qword_1EDECFF58;
  if (!qword_1EDECFF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECFF58);
  }

  return result;
}

unint64_t sub_1D2E70EF4()
{
  result = qword_1EDECFF60;
  if (!qword_1EDECFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECFF60);
  }

  return result;
}

unint64_t sub_1D2E70F48()
{
  result = qword_1EC7388F8;
  if (!qword_1EC7388F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7388F8);
  }

  return result;
}

unint64_t sub_1D2E70F9C()
{
  result = qword_1EC738908;
  if (!qword_1EC738908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738908);
  }

  return result;
}

unint64_t sub_1D2E71014()
{
  result = qword_1EC738910;
  if (!qword_1EC738910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738910);
  }

  return result;
}

unint64_t sub_1D2E7106C()
{
  result = qword_1EC738918;
  if (!qword_1EC738918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738918);
  }

  return result;
}

unint64_t sub_1D2E710C4()
{
  result = qword_1EC738920;
  if (!qword_1EC738920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738920);
  }

  return result;
}

unint64_t sub_1D2E7111C()
{
  result = qword_1EC738928;
  if (!qword_1EC738928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738928);
  }

  return result;
}

uint64_t sub_1D2E71188(uint64_t a1)
{
  v2 = sub_1D2E713C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E711C4(uint64_t a1)
{
  v2 = sub_1D2E713C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E71200(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738930, &qword_1D2EF13A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E713C4();
  sub_1D2EE53C8();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D2E71318()
{
  result = qword_1EDECFF28;
  if (!qword_1EDECFF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECFF28);
  }

  return result;
}

unint64_t sub_1D2E71370()
{
  result = qword_1EDECFF30;
  if (!qword_1EDECFF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECFF30);
  }

  return result;
}

unint64_t sub_1D2E713C4()
{
  result = qword_1EDECF8C8;
  if (!qword_1EDECF8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECF8C8);
  }

  return result;
}

unint64_t sub_1D2E7142C()
{
  result = qword_1EDECF8B8;
  if (!qword_1EDECF8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECF8B8);
  }

  return result;
}

unint64_t sub_1D2E71484()
{
  result = qword_1EDECF8C0;
  if (!qword_1EDECF8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECF8C0);
  }

  return result;
}

uint64_t type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection()
{
  result = qword_1EDECFE10;
  if (!qword_1EDECFE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2E7154C()
{
  result = sub_1D2EE3EB8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D2E715B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1D2EE3EB8();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738938, &qword_1D2EF1568);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  started = type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection();
  v12 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E71B78();
  sub_1D2EE53B8();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_1D2E71C30(&qword_1EC737CC8, MEMORY[0x1E69695A8]);
    sub_1D2EE51B8();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1D2E71BCC(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D2E71858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444955556C6C6163 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D2EE5288();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D2E718E0(uint64_t a1)
{
  v2 = sub_1D2E71B78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E7191C(uint64_t a1)
{
  v2 = sub_1D2E71B78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E71970(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738948, &qword_1D2EF1570);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E71B78();
  sub_1D2EE53C8();
  sub_1D2EE3EB8();
  sub_1D2E71C30(&qword_1EC737CA0, MEMORY[0x1E69695A8]);
  sub_1D2EE5248();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D2E71B78()
{
  result = qword_1EC738940;
  if (!qword_1EC738940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738940);
  }

  return result;
}

uint64_t sub_1D2E71BCC(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection();
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_1D2E71C30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2E71C8C()
{
  result = qword_1EC738950;
  if (!qword_1EC738950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738950);
  }

  return result;
}

unint64_t sub_1D2E71CE4()
{
  result = qword_1EC738958;
  if (!qword_1EC738958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738958);
  }

  return result;
}

unint64_t sub_1D2E71D3C()
{
  result = qword_1EC738960;
  if (!qword_1EC738960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738960);
  }

  return result;
}

uint64_t type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding()
{
  result = qword_1EDED0628;
  if (!qword_1EDED0628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2E71E04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1D2EE3EB8();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738968, &qword_1D2EF1798);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  started = type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding();
  v12 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E72324();
  sub_1D2EE53B8();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_1D2E723DC(&qword_1EC737CC8, MEMORY[0x1E69695A8]);
    sub_1D2EE51B8();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1D2E72378(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D2E7208C(uint64_t a1)
{
  v2 = sub_1D2E72324();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E720C8(uint64_t a1)
{
  v2 = sub_1D2E72324();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E7211C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738978, &qword_1D2EF17A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E72324();
  sub_1D2EE53C8();
  sub_1D2EE3EB8();
  sub_1D2E723DC(&qword_1EC737CA0, MEMORY[0x1E69695A8]);
  sub_1D2EE5248();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D2E72324()
{
  result = qword_1EC738970;
  if (!qword_1EC738970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738970);
  }

  return result;
}

uint64_t sub_1D2E72378(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding();
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_1D2E723DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2E72438()
{
  result = qword_1EC738980;
  if (!qword_1EC738980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738980);
  }

  return result;
}

unint64_t sub_1D2E72490()
{
  result = qword_1EC738988;
  if (!qword_1EC738988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738988);
  }

  return result;
}

unint64_t sub_1D2E724E8()
{
  result = qword_1EC738990;
  if (!qword_1EC738990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738990);
  }

  return result;
}

uint64_t type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection()
{
  result = qword_1EDECFEB0;
  if (!qword_1EDECFEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2E725B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1D2EE3EB8();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738998, &qword_1D2EF19C8);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E72AD0();
  sub_1D2EE53B8();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_1D2E72B88(&qword_1EC737CC8, MEMORY[0x1E69695A8]);
    sub_1D2EE51B8();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1D2E72B24(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D2E72838(uint64_t a1)
{
  v2 = sub_1D2E72AD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E72874(uint64_t a1)
{
  v2 = sub_1D2E72AD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E728C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7389A8, &qword_1D2EF19D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E72AD0();
  sub_1D2EE53C8();
  sub_1D2EE3EB8();
  sub_1D2E72B88(&qword_1EC737CA0, MEMORY[0x1E69695A8]);
  sub_1D2EE5248();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D2E72AD0()
{
  result = qword_1EC7389A0;
  if (!qword_1EC7389A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7389A0);
  }

  return result;
}

uint64_t sub_1D2E72B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2E72B88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2E72BE4()
{
  result = qword_1EC7389B0;
  if (!qword_1EC7389B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7389B0);
  }

  return result;
}

unint64_t sub_1D2E72C3C()
{
  result = qword_1EC7389B8;
  if (!qword_1EC7389B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7389B8);
  }

  return result;
}

unint64_t sub_1D2E72C94()
{
  result = qword_1EC7389C0;
  if (!qword_1EC7389C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7389C0);
  }

  return result;
}

uint64_t type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding()
{
  result = qword_1EDED06C8;
  if (!qword_1EDED06C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2E72D5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1D2EE3EB8();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7389C8, &qword_1D2EF1BF8);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E7327C();
  sub_1D2EE53B8();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_1D2E73334(&qword_1EC737CC8, MEMORY[0x1E69695A8]);
    sub_1D2EE51B8();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1D2E732D0(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D2E72FE4(uint64_t a1)
{
  v2 = sub_1D2E7327C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E73020(uint64_t a1)
{
  v2 = sub_1D2E7327C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E73074(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7389D8, &qword_1D2EF1C00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E7327C();
  sub_1D2EE53C8();
  sub_1D2EE3EB8();
  sub_1D2E73334(&qword_1EC737CA0, MEMORY[0x1E69695A8]);
  sub_1D2EE5248();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D2E7327C()
{
  result = qword_1EC7389D0;
  if (!qword_1EC7389D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7389D0);
  }

  return result;
}

uint64_t sub_1D2E732D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2E73334(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2E73390()
{
  result = qword_1EC7389E0;
  if (!qword_1EC7389E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7389E0);
  }

  return result;
}

unint64_t sub_1D2E733E8()
{
  result = qword_1EC7389E8;
  if (!qword_1EC7389E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7389E8);
  }

  return result;
}

unint64_t sub_1D2E73440()
{
  result = qword_1EC7389F0;
  if (!qword_1EC7389F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7389F0);
  }

  return result;
}

uint64_t sub_1D2E73494(uint64_t a1)
{
  v2 = sub_1D2E73620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E734D0(uint64_t a1)
{
  v2 = sub_1D2E73620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E7350C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7389F8, &qword_1D2EF1D70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E73620();
  sub_1D2EE53C8();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D2E73620()
{
  result = qword_1EDECFCD8[0];
  if (!qword_1EDECFCD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDECFCD8);
  }

  return result;
}

unint64_t sub_1D2E73698()
{
  result = qword_1EDECFCC8;
  if (!qword_1EDECFCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECFCC8);
  }

  return result;
}

unint64_t sub_1D2E736F0()
{
  result = qword_1EDECFCD0;
  if (!qword_1EDECFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECFCD0);
  }

  return result;
}

uint64_t Daemon.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Daemon.init()();
  return v3;
}

uint64_t Daemon.init()()
{
  v1 = v0;
  v2 = type metadata accessor for PersistenceConfiguration();
  v49 = *(v2 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmartActionsServer();
  v51 = *(v6 - 1);
  v7 = *(v51 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v50 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - v10;
  *(v0 + 16) = 0;
  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v12 = sub_1D2EE4618();
  __swift_project_value_buffer(v12, qword_1EDED2DA0);
  v13 = sub_1D2EE45F8();
  v14 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D2E46000, v13, v14, "Initialising call intelligence daemon", v15, 2u);
    MEMORY[0x1D38AF660](v15, -1, -1);
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v17 = [v16 smartVoicemailActionsEnabled];

  if (v17)
  {
    if (qword_1EDECF980 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v2, qword_1EDED2D50);
    sub_1D2E7C0D0(v18, v5, type metadata accessor for PersistenceConfiguration);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738A00, &unk_1D2EF1E60);
    v19 = swift_allocObject();
    *(v19 + 24) = 0;
    *(v19 + 16) = 0;
    *&v11[*(type metadata accessor for ContainerProvider() + 20)] = v19;
    sub_1D2E7DD98(v5, v11, type metadata accessor for PersistenceConfiguration);
    (*(v49 + 56))(v11, 0, 1, v2);
    v20 = sub_1D2EE4548();
    v21 = sub_1D2EE4538();
    v22 = &v11[v6[5]];
    v22[3] = v20;
    v22[4] = &off_1F4E957C0;
    *v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738B70, &qword_1D2EF1E70);
    v23 = swift_allocObject();
    *(v23 + 24) = 0;
    *(v23 + 16) = 0;
    v24 = &v11[v6[6]];
    *(v24 + 3) = &type metadata for TransactionManager;
    *(v24 + 4) = &off_1F4E94BF8;
    *v24 = 0;
    *(v24 + 1) = v23;
    *&v11[v6[7]] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    v25 = OBJC_IVAR____TtC16CallIntelligence6Daemon_smartActionsServer;
    sub_1D2E7C0D0(v11, v1 + OBJC_IVAR____TtC16CallIntelligence6Daemon_smartActionsServer, type metadata accessor for SmartActionsServer);
    (*(v51 + 56))(v1 + v25, 0, 1, v6);
    v26 = v50;
    sub_1D2E7C0D0(v11, v50, type metadata accessor for SmartActionsServer);
    v27 = type metadata accessor for VoicemailClient(0);
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_1D2ED86E8(v26);
    sub_1D2E7DD38(v11, type metadata accessor for SmartActionsServer);
    *(v1 + OBJC_IVAR____TtC16CallIntelligence6Daemon_voicemailClient) = v30;
  }

  else
  {
    v31 = sub_1D2EE45F8();
    v32 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D2E46000, v31, v32, "Skipping initialization of voicemail client", v33, 2u);
      MEMORY[0x1D38AF660](v33, -1, -1);
    }

    *(v1 + OBJC_IVAR____TtC16CallIntelligence6Daemon_voicemailClient) = 0;
    (*(v51 + 56))(v1 + OBJC_IVAR____TtC16CallIntelligence6Daemon_smartActionsServer, 1, 1, v6);
  }

  if (qword_1EC737C48 != -1)
  {
    swift_once();
  }

  sub_1D2EE1F50(qword_1EC746630, v58);
  v34 = v1 + OBJC_IVAR____TtC16CallIntelligence6Daemon_callIntelligenceTrialManager;
  v35 = v58[0];
  v36 = v58[1];
  *v34 = v58[0];
  *(v34 + 16) = v36;
  v37 = v59;
  *(v34 + 32) = v59;
  v38 = v60;
  *(v34 + 48) = v60;
  v61[0] = v35;
  v61[1] = v36;
  v61[2] = v37;
  v62 = v38;
  v57[3] = &type metadata for DefaultContextualEmbeddingFactory;
  v57[4] = &off_1F4E93D80;
  type metadata accessor for AssetManager();
  v39 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v57, &type metadata for DefaultContextualEmbeddingFactory);
  v55 = &type metadata for DefaultContextualEmbeddingFactory;
  v56 = &off_1F4E93D80;
  sub_1D2E7BA9C(v61, v52);
  swift_defaultActor_initialize();
  *(v39 + 152) = &unk_1F4E912B0;
  *(v39 + 160) = 0;
  sub_1D2E4C014(&v54, v39 + 112);
  __swift_destroy_boxed_opaque_existential_1(v57);
  sub_1D2E73E60(v52);
  v40 = v53;
  v41 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
  v42 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = (&v48 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = sub_1D2E7BE80(v39, *v44, sub_1D2E96228, 0, v61);
  sub_1D2E7C07C(v61);
  __swift_destroy_boxed_opaque_existential_1(v52);
  *(v1 + 24) = v46;
  return v1;
}

uint64_t sub_1D2E73E60@<X0>(void *a1@<X8>)
{
  v2 = sub_1D2EE3F78();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1D2EE4A28();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = type metadata accessor for PersistenceConfiguration();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_opt_self() tu_defaults];
  if (qword_1EDECF980 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_1EDED2D50);
  sub_1D2E7C0D0(v10, v9, type metadata accessor for PersistenceConfiguration);
  v11 = [objc_allocWithZone(sub_1D2EE4098()) init];
  v12 = [objc_opt_self() sharedPreferences];
  v13 = type metadata accessor for DisclosureGenerator();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  sub_1D2EE4A18();
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  sub_1D2EE3F38();
  v16[2] = sub_1D2EE4A88();
  v16[3] = v19;
  v16[4] = 0xD000000000000019;
  v16[5] = 0x80000001D2EE69F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738B10, qword_1D2EF21E8);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v22;
  *(v16 + OBJC_IVAR____TtC16CallIntelligence19DisclosureGenerator_defaults) = v20;
  result = sub_1D2E7DD98(v9, v16 + OBJC_IVAR____TtC16CallIntelligence19DisclosureGenerator_persistenceConfiguration, type metadata accessor for PersistenceConfiguration);
  *(v16 + OBJC_IVAR____TtC16CallIntelligence19DisclosureGenerator_speechSynthesizer) = v11;
  *(v16 + OBJC_IVAR____TtC16CallIntelligence19DisclosureGenerator_assistantPreferences) = v12;
  a1[3] = v13;
  a1[4] = &off_1F4E93DB8;
  *a1 = v16;
  return result;
}

uint64_t sub_1D2E741B0()
{
  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  v0[7] = __swift_project_value_buffer(v1, qword_1EDED2DA0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Started call intelligence daemon", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1D2E74300;
  v6 = v0[6];

  return sub_1D2E746A4();
}

uint64_t sub_1D2E74300()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2E74434, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1D2E74434()
{
  v25 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = v1;
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v7 = 136315138;
    swift_getErrorValue();
    v8 = v0[2];
    v9 = v0[3];
    v10 = sub_1D2EE4E58();
    v11 = *(v10 - 8);
    v12 = *(v11 + 64) + 15;
    v13 = swift_task_alloc();
    v14 = *(v9 - 8);
    (*(v14 + 16))(v13, v8, v9);
    (*(v14 + 56))(v13, 0, 1, v9);
    v15 = sub_1D2EE2754(v13, v9);
    v17 = v16;
    (*(v11 + 8))(v13, v10);

    v18 = sub_1D2E685B0(v15, v17, &v24);

    *(v7 + 4) = v18;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Failed to start call intelligence daemon with error %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D38AF660](v23, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  v19 = v0[9];
  swift_willThrow();
  v20 = v0[1];
  v21 = v0[9];

  return v20();
}

uint64_t sub_1D2E746A4()
{
  v1[8] = v0;
  v2 = sub_1D2EE46D8();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738A10, &qword_1D2EF1E88) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E7479C, 0, 0);
}

uint64_t sub_1D2E7479C()
{
  sub_1D2E7C2C4();
  v1 = v0[8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738A20, &qword_1D2EF1EF8);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  v5 = sub_1D2EE4658();
  v6 = v0[8];
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  v8 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v9 = [v8 smartVoicemailActionsEnabled];

  if (v9)
  {
    v10 = v0[12];
    sub_1D2E5D050(v0[8] + OBJC_IVAR____TtC16CallIntelligence6Daemon_smartActionsServer, v10, &unk_1EC738A10, &qword_1D2EF1E88);
    v11 = type metadata accessor for SmartActionsServer();
    result = (*(*(v11 - 8) + 48))(v10, 1, v11);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v13 = swift_task_alloc();
      v0[13] = v13;
      *v13 = v0;
      v13[1] = sub_1D2E74B0C;
      v14 = v0[12];

      return sub_1D2ECD0B8();
    }
  }

  else
  {
    v16 = v0[10];
    v15 = v0[11];
    v18 = v0[8];
    v17 = v0[9];
    sub_1D2E7C52C();
    (*(v16 + 104))(v15, *MEMORY[0x1E69E7F98], v17);
    v19 = sub_1D2EE4E18();
    (*(v16 + 8))(v15, v17);
    v0[6] = sub_1D2E79020;
    v0[7] = 0;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D2E791B4;
    v0[5] = &block_descriptor;
    v20 = _Block_copy(v0 + 2);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", v19, v20);
    _Block_release(v20);

    v0[15] = *(v18 + 24);
    v21 = swift_task_alloc();
    v0[16] = v21;
    *v21 = v0;
    v21[1] = sub_1D2E7527C;

    return sub_1D2E97A64();
  }

  return result;
}

uint64_t sub_1D2E74B0C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1D2E75AE4;
  }

  else
  {
    sub_1D2E7DD38(*(v2 + 96), type metadata accessor for SmartActionsServer);
    v4 = sub_1D2E74C3C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D2E74C3C()
{
  v1 = v0[8];
  if (*(v1 + 16))
  {
    v2 = swift_allocObject();
    *(v2 + 16) = &unk_1D2EF1FF8;
    *(v2 + 24) = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = &unk_1D2EF2008;
    *(v3 + 24) = v2;
    sub_1D2E5D180();

    sub_1D2EE4678();

    v4 = *(v1 + 16);
    v1 = v0[8];
    if (v4)
    {
      type metadata accessor for CreateSmartAction(0);
      sub_1D2E7DA94(&unk_1EC738A30, type metadata accessor for CreateSmartAction);

      sub_1D2EE4678();

      v5 = *(v1 + 16);
      v1 = v0[8];
      if (v5)
      {
        type metadata accessor for FetchSmartActions();
        v6 = swift_allocObject();
        *(v6 + 16) = &unk_1D2EF2038;
        *(v6 + 24) = v1;
        sub_1D2E7DA94(&qword_1EC7381F0, type metadata accessor for FetchSmartActions);

        sub_1D2EE4678();

        v7 = *(v1 + 16);
        v1 = v0[8];
        if (v7)
        {
          type metadata accessor for FetchSmartActionDataItems();
          v8 = swift_allocObject();
          *(v8 + 16) = &unk_1D2EF2058;
          *(v8 + 24) = v1;
          sub_1D2E7DA94(&unk_1EC738A40, type metadata accessor for FetchSmartActionDataItems);

          sub_1D2EE4678();

          v9 = *(v1 + 16);
          v1 = v0[8];
          if (v9)
          {
            v10 = swift_allocObject();
            *(v10 + 16) = &unk_1D2EF2078;
            *(v10 + 24) = v1;
            sub_1D2E5CF4C();

            sub_1D2EE4678();

            v11 = *(v1 + 16);
            v1 = v0[8];
            if (v11)
            {
              v12 = swift_allocObject();
              *(v12 + 16) = &unk_1D2EF2098;
              *(v12 + 24) = v1;
              sub_1D2E5CEF8();

              sub_1D2EE4678();

              v13 = *(v1 + 16);
              v1 = v0[8];
              if (v13)
              {
                type metadata accessor for ProcessSmartAction();
                v14 = swift_allocObject();
                *(v14 + 16) = &unk_1D2EF20B8;
                *(v14 + 24) = v1;
                sub_1D2E7DA94(&qword_1EC7381D0, type metadata accessor for ProcessSmartAction);

                sub_1D2EE4678();

                v1 = v0[8];
              }
            }
          }
        }
      }
    }
  }

  v16 = v0[10];
  v15 = v0[11];
  v17 = v0[9];
  sub_1D2E7C52C();
  (*(v16 + 104))(v15, *MEMORY[0x1E69E7F98], v17);
  v18 = sub_1D2EE4E18();
  (*(v16 + 8))(v15, v17);
  v0[6] = sub_1D2E79020;
  v0[7] = 0;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D2E791B4;
  v0[5] = &block_descriptor;
  v19 = _Block_copy(v0 + 2);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v18, v19);
  _Block_release(v19);

  v0[15] = *(v1 + 24);
  v20 = swift_task_alloc();
  v0[16] = v20;
  *v20 = v0;
  v20[1] = sub_1D2E7527C;

  return sub_1D2E97A64();
}

uint64_t sub_1D2E7527C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[11];
    v5 = v2[12];

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v9 = v2[15];

    return MEMORY[0x1EEE6DFA0](sub_1D2E753D0, v9, 0);
  }
}

uint64_t sub_1D2E753D0()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 120) + 168), *(*(v0 + 120) + 192));
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_1D2E75470;

  return sub_1D2E88074();
}

uint64_t sub_1D2E75470()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D2E7556C, 0, 0);
}

uint64_t sub_1D2E7556C()
{
  v1 = v0[8];
  if (*(v1 + 16))
  {
    v2 = swift_allocObject();
    *(v2 + 16) = &unk_1D2EF1F08;
    *(v2 + 24) = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = &unk_1D2EF1F18;
    *(v3 + 24) = v2;
    sub_1D2E690D8();

    sub_1D2EE4678();

    if (*(v1 + 16))
    {
      v4 = v0[8];
      type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding();
      v5 = swift_allocObject();
      *(v5 + 16) = &unk_1D2EF1F38;
      *(v5 + 24) = v4;
      sub_1D2E7DA94(&qword_1EDECFD78, type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding);

      sub_1D2EE4678();

      if (*(v4 + 16))
      {
        v6 = v0[8];
        type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding();
        v7 = swift_allocObject();
        *(v7 + 16) = &unk_1D2EF1F58;
        *(v7 + 24) = v6;
        sub_1D2E7DA94(&qword_1EDECFD80, type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding);

        sub_1D2EE4678();

        if (*(v6 + 16))
        {
          v8 = v0[8];
          v9 = swift_allocObject();
          *(v9 + 16) = &unk_1D2EF1F78;
          *(v9 + 24) = v8;
          sub_1D2E68F0C();

          sub_1D2EE4678();

          if (*(v8 + 16))
          {
            v10 = v0[8];
            type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection();
            v11 = swift_allocObject();
            *(v11 + 16) = &unk_1D2EF1F98;
            *(v11 + 24) = v10;
            sub_1D2E7DA94(&qword_1EDECF890, type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection);

            sub_1D2EE4678();

            if (*(v10 + 16))
            {
              v12 = v0[8];
              type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection();
              v13 = swift_allocObject();
              *(v13 + 16) = &unk_1D2EF1FB8;
              *(v13 + 24) = v12;
              sub_1D2E7DA94(&unk_1EDECF898, type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection);

              sub_1D2EE4678();

              if (*(v12 + 16))
              {
                v14 = v0[8];
                v15 = swift_allocObject();
                *(v15 + 16) = &unk_1D2EF1FD8;
                *(v15 + 24) = v14;
                sub_1D2E68EB8();

                sub_1D2EE4678();

                if (*(v14 + 16))
                {
                  v16 = *(v14 + 16);

                  sub_1D2EE4688();
                }
              }
            }
          }
        }
      }
    }
  }

  v18 = v0[11];
  v17 = v0[12];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1D2E75AE4()
{
  sub_1D2E7DD38(v0[12], type metadata accessor for SmartActionsServer);
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2E75B6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E5BA34;

  return sub_1D2E75C04(a1);
}

uint64_t sub_1D2E75C04(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738A10, &qword_1D2EF1E88) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E75CA0, 0, 0);
}

uint64_t sub_1D2E75CA0()
{
  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DA0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Handling incoming SmartActionsPing message", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];

  sub_1D2E5D050(v6 + OBJC_IVAR____TtC16CallIntelligence6Daemon_smartActionsServer, v5, &unk_1EC738A10, &qword_1D2EF1E88);
  v7 = type metadata accessor for SmartActionsServer();
  result = (*(*(v7 - 8) + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[4];
    v10 = v0[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738AB0, &qword_1D2EF2158);
    sub_1D2EE4648();
    sub_1D2ED4704();
    sub_1D2E7DD38(v9, type metadata accessor for SmartActionsServer);

    v11 = v0[1];

    return v11();
  }

  return result;
}

uint64_t sub_1D2E75E70(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D2E75F64;

  return v7(a1);
}

uint64_t sub_1D2E75F64()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D2E7605C(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D2E7DE28;

  return v8(a2);
}

uint64_t sub_1D2E76150(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D2E7DE28;

  return sub_1D2E761FC(a1, a2);
}

uint64_t sub_1D2E761FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738A10, &qword_1D2EF1E88) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738AA0, &qword_1D2EF2140) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v6 = *(*(type metadata accessor for CreateSmartAction(0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = *(*(type metadata accessor for NewSmartAction() - 8) + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E76338, 0, 0);
}

uint64_t sub_1D2E76338()
{
  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DA0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Handling incoming CreateSmartAction message", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738AA8, &qword_1D2EF2148);
  sub_1D2EE4648();
  sub_1D2E7DD98(v6, v5, type metadata accessor for NewSmartAction);
  sub_1D2E5D050(v8 + OBJC_IVAR____TtC16CallIntelligence6Daemon_smartActionsServer, v7, &unk_1EC738A10, &qword_1D2EF1E88);
  v10 = type metadata accessor for SmartActionsServer();
  result = (*(*(v10 - 8) + 48))(v7, 1, v10);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v0[9];
  v13 = v0[5];
  sub_1D2ECD5F8(v0[7]);
  v14 = v0[6];
  v15 = v0[7];
  sub_1D2E7DD38(v0[5], type metadata accessor for SmartActionsServer);
  sub_1D2E5D050(v15, v14, &qword_1EC738AA0, &qword_1D2EF2140);
  v16 = type metadata accessor for SmartAction();
  result = (*(*(v16 - 8) + 48))(v14, 1, v16);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v17 = v0[8];
  v18 = v0[9];
  v19 = v0[6];
  v20 = v0[5];
  v21 = v0[2];
  sub_1D2E5D0B8(v0[7], &qword_1EC738AA0, &qword_1D2EF2140);
  sub_1D2E7DD38(v18, type metadata accessor for NewSmartAction);
  sub_1D2E7DD98(v19, v21, type metadata accessor for SmartAction);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D2E766B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE50;

  return sub_1D2E76750(a1);
}

uint64_t sub_1D2E76750(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738A10, &qword_1D2EF1E88) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(type metadata accessor for FetchSmartActions() - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for SmartActionQuery() - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E76844, 0, 0);
}

uint64_t sub_1D2E76844()
{
  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DA0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Handling incoming FetchSmartActions message", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A98, &qword_1D2EF2130);
  sub_1D2EE4648();
  sub_1D2E7DD98(v6, v5, type metadata accessor for SmartActionQuery);
  sub_1D2E5D050(v8 + OBJC_IVAR____TtC16CallIntelligence6Daemon_smartActionsServer, v7, &unk_1EC738A10, &qword_1D2EF1E88);
  v10 = type metadata accessor for SmartActionsServer();
  result = (*(*(v10 - 8) + 48))(v7, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[6];
    v13 = v0[4];
    v14 = sub_1D2ECD85C();
    v15 = v0[5];
    v16 = v0[6];
    v17 = v14;
    sub_1D2E7DD38(v0[4], type metadata accessor for SmartActionsServer);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    sub_1D2E7DD38(v16, type metadata accessor for SmartActionQuery);

    v19 = v0[1];

    return v19(v18);
  }

  return result;
}

uint64_t sub_1D2E76B34(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D2E76C2C;

  return v8(a2);
}

uint64_t sub_1D2E76C2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_1D2E76D3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE50;

  return sub_1D2E76DD4(a1);
}

uint64_t sub_1D2E76DD4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738A10, &qword_1D2EF1E88) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(type metadata accessor for FetchSmartActionDataItems() - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for SmartActionQuery() - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E76EC8, 0, 0);
}

uint64_t sub_1D2E76EC8()
{
  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DA0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Handling incoming FetchedSmartActionDataItems message", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A90, &qword_1D2EF2120);
  sub_1D2EE4648();
  sub_1D2E7DD98(v6, v5, type metadata accessor for SmartActionQuery);
  sub_1D2E5D050(v8 + OBJC_IVAR____TtC16CallIntelligence6Daemon_smartActionsServer, v7, &unk_1EC738A10, &qword_1D2EF1E88);
  v10 = type metadata accessor for SmartActionsServer();
  result = (*(*(v10 - 8) + 48))(v7, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = swift_task_alloc();
    v0[7] = v12;
    *v12 = v0;
    v12[1] = sub_1D2E770D8;
    v13 = v0[6];
    v14 = v0[4];

    return sub_1D2ECDA58(v13);
  }

  return result;
}

uint64_t sub_1D2E770D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v9 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v6 = sub_1D2E772BC;
  }

  else
  {
    v7 = *(v4 + 32);
    *(v4 + 72) = a1;
    sub_1D2E7DD38(v7, type metadata accessor for SmartActionsServer);
    v6 = sub_1D2E77218;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D2E77218()
{
  v1 = v0[5];
  v2 = v0[4];
  sub_1D2E7DD38(v0[6], type metadata accessor for SmartActionQuery);

  v3 = v0[1];
  v4 = v0[9];

  return v3(v4);
}

uint64_t sub_1D2E772BC()
{
  v1 = v0[5];
  v2 = v0[4];
  sub_1D2E7DD38(v0[6], type metadata accessor for SmartActionQuery);
  sub_1D2E7DD38(v2, type metadata accessor for SmartActionsServer);

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_1D2E77378(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D2E7DE34;

  return v8(a2);
}

uint64_t sub_1D2E77470(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE28;

  return sub_1D2E77508(a1);
}

uint64_t sub_1D2E77508(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738A10, &qword_1D2EF1E88) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E775A4, 0, 0);
}

uint64_t sub_1D2E775A4()
{
  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DA0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Handling incoming DeleteSmartActions message", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A88, &qword_1D2EF2110);
  sub_1D2EE4648();
  v8 = v0[2];
  sub_1D2E5D050(v6 + OBJC_IVAR____TtC16CallIntelligence6Daemon_smartActionsServer, v5, &unk_1EC738A10, &qword_1D2EF1E88);
  v9 = type metadata accessor for SmartActionsServer();
  result = (*(*(v9 - 8) + 48))(v5, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = v0[5];
    sub_1D2ED47EC();
    v12 = v0[5];

    sub_1D2E7DD38(v12, type metadata accessor for SmartActionsServer);

    v13 = v0[1];

    return v13();
  }

  return result;
}

uint64_t sub_1D2E777A0(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D2E7DE28;

  return v8(a2);
}

uint64_t sub_1D2E77894(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E5C88C;

  return sub_1D2E7792C(a1);
}

uint64_t sub_1D2E7792C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738A10, &qword_1D2EF1E88) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A78, &qword_1D2EF20F8) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A80, &qword_1D2EF2100);
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E77AD0, 0, 0);
}

uint64_t sub_1D2E77AD0()
{
  v54 = v0;
  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[10];
  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EDED2DA0);
  v6 = v2;
  v7 = *(v3 + 16);
  v7(v1, v4, v6);
  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DD8();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[21];
  v13 = v0[17];
  v12 = v0[18];
  if (v10)
  {
    v51 = v9;
    v15 = v0[15];
    v14 = v0[16];
    v16 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v16 = 136446210;
    v7(v14, v11, v13);
    (*(v12 + 56))(v14, 0, 1, v13);
    sub_1D2E5D050(v14, v15, &qword_1EC738A78, &qword_1D2EF20F8);
    v17 = (*(v12 + 48))(v15, 1, v13);
    v18 = v0[21];
    if (v17 == 1)
    {
      v20 = v0[17];
      v19 = v0[18];
      v21 = v0[16];
      sub_1D2E5D0B8(v0[15], &qword_1EC738A78, &qword_1D2EF20F8);
      sub_1D2E5D0B8(v21, &qword_1EC738A78, &qword_1D2EF20F8);
      (*(v19 + 8))(v18, v20);
      v22 = 0xE300000000000000;
      v23 = 7104878;
    }

    else
    {
      v24 = v0[19];
      v25 = v0[20];
      v27 = v0[17];
      v26 = v0[18];
      v50 = v0[16];
      (*(v26 + 32))(v25, v0[15], v27);
      v7(v24, v25, v27);
      v28 = sub_1D2EE4AA8();
      v22 = v29;
      v30 = *(v26 + 8);
      v30(v25, v27);
      sub_1D2E5D0B8(v50, &qword_1EC738A78, &qword_1D2EF20F8);
      v30(v18, v27);
      v23 = v28;
    }

    v31 = sub_1D2E685B0(v23, v22, &v53);

    *(v16 + 4) = v31;
    _os_log_impl(&dword_1D2E46000, v8, v51, "Handling incoming SmartActionsDonate %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x1D38AF660](v52, -1, -1);
    MEMORY[0x1D38AF660](v16, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v32 = v0[17];
  v33 = v0[14];
  v35 = v0[11];
  v34 = v0[12];
  v36 = v0[10];
  sub_1D2EE4648();
  v37 = v0[2];
  v38 = v0[3];
  v0[22] = v38;
  v39 = v0[5];

  sub_1D2EE4648();
  v40 = v0[7];

  v41 = v0[8];
  v42 = v0[9];
  sub_1D2EE3E58();

  sub_1D2E5D050(v35 + OBJC_IVAR____TtC16CallIntelligence6Daemon_smartActionsServer, v34, &unk_1EC738A10, &qword_1D2EF1E88);
  v43 = type metadata accessor for SmartActionsServer();
  result = (*(*(v43 - 8) + 48))(v34, 1, v43);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v45 = v0[13];
  sub_1D2E5D050(v0[14], v45, &qword_1EC738A70, &qword_1D2EF20F0);
  v46 = sub_1D2EE3EB8();
  v0[23] = v46;
  v47 = *(v46 - 8);
  v0[24] = v47;
  result = (*(v47 + 48))(v45, 1, v46);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v48 = swift_task_alloc();
  v0[25] = v48;
  *v48 = v0;
  v48[1] = sub_1D2E77FB0;
  v49 = v0[12];

  return sub_1D2ED0068(v37, v38);
}

uint64_t sub_1D2E77FB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  v4[26] = v1;

  v7 = v4[22];

  if (v1)
  {
    v8 = sub_1D2E78268;
  }

  else
  {
    v4[27] = a1;
    v8 = sub_1D2E780F4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D2E780F4()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[21];
  v13 = v0[20];
  v14 = v0[19];
  v15 = v0[16];
  v16 = v0[15];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[12];
  v9 = swift_task_alloc();
  *(v9 + 16) = v6;
  v10 = sub_1D2ED82B0(sub_1D2E7DADC, v9, v2);

  (*(v4 + 8))(v6, v3);
  sub_1D2E7DD38(v8, type metadata accessor for SmartActionsServer);
  sub_1D2E5D0B8(v7, &qword_1EC738A70, &qword_1D2EF20F0);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_1D2E78268()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = v0[16];
  v12 = v0[15];
  v7 = v0[13];
  v8 = v0[12];
  sub_1D2E5D0B8(v0[14], &qword_1EC738A70, &qword_1D2EF20F0);
  (*(v2 + 8))(v7, v1);
  sub_1D2E7DD38(v8, type metadata accessor for SmartActionsServer);

  v9 = v0[1];
  v10 = v0[26];

  return v9();
}

uint64_t sub_1D2E7838C(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D2E7DE34;

  return v8(a2);
}

uint64_t sub_1D2E78484(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE28;

  return sub_1D2E7851C(a1);
}

uint64_t sub_1D2E7851C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738A10, &qword_1D2EF1E88) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for ProcessSmartAction();
  v2[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_1D2EE3EB8();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A60, &qword_1D2EF20D8) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A68, &qword_1D2EF20E0);
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E78708, 0, 0);
}

uint64_t sub_1D2E78708()
{
  v56 = v0;
  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[2];
  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EDED2DA0);
  v6 = v2;
  v7 = *(v3 + 16);
  v7(v1, v4, v6);
  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DD8();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[16];
  v13 = v0[12];
  v12 = v0[13];
  if (v10)
  {
    v53 = v9;
    v15 = v0[10];
    v14 = v0[11];
    v16 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = v54;
    *v16 = 136446210;
    v7(v14, v11, v13);
    (*(v12 + 56))(v14, 0, 1, v13);
    sub_1D2E5D050(v14, v15, &qword_1EC738A60, &qword_1D2EF20D8);
    v17 = (*(v12 + 48))(v15, 1, v13);
    v18 = v0[16];
    if (v17 == 1)
    {
      v20 = v0[12];
      v19 = v0[13];
      v21 = v0[11];
      sub_1D2E5D0B8(v0[10], &qword_1EC738A60, &qword_1D2EF20D8);
      sub_1D2E5D0B8(v21, &qword_1EC738A60, &qword_1D2EF20D8);
      (*(v19 + 8))(v18, v20);
      v22 = 0xE300000000000000;
      v23 = 7104878;
    }

    else
    {
      v24 = v0[14];
      v25 = v0[15];
      v27 = v0[12];
      v26 = v0[13];
      v52 = v0[11];
      (*(v26 + 32))(v25, v0[10], v27);
      v7(v24, v25, v27);
      v28 = sub_1D2EE4AA8();
      v22 = v29;
      v30 = *(v26 + 8);
      v30(v25, v27);
      sub_1D2E5D0B8(v52, &qword_1EC738A60, &qword_1D2EF20D8);
      v30(v18, v27);
      v23 = v28;
    }

    v31 = sub_1D2E685B0(v23, v22, &v55);

    *(v16 + 4) = v31;
    _os_log_impl(&dword_1D2E46000, v8, v53, "Handling incoming ProcessSmartAction %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1D38AF660](v54, -1, -1);
    MEMORY[0x1D38AF660](v16, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v32 = v0[12];
  v34 = v0[8];
  v33 = v0[9];
  v36 = v0[6];
  v35 = v0[7];
  v37 = v0[4];
  v38 = v0[5];
  v39 = v0[2];
  v40 = v0[3];
  sub_1D2EE4648();
  (*(v34 + 16))(v33, v36, v35);
  sub_1D2E7DD38(v36, type metadata accessor for ProcessSmartAction);
  sub_1D2EE4648();
  v41 = (v36 + *(v38 + 20));
  v42 = *v41;
  v43 = v41[1];
  v0[17] = v43;

  sub_1D2E7DD38(v36, type metadata accessor for ProcessSmartAction);
  sub_1D2EE4648();
  v44 = (v36 + *(v38 + 24));
  v46 = *v44;
  v45 = v44[1];
  v0[18] = v45;

  sub_1D2E7DD38(v36, type metadata accessor for ProcessSmartAction);
  sub_1D2E5D050(v40 + OBJC_IVAR____TtC16CallIntelligence6Daemon_smartActionsServer, v37, &unk_1EC738A10, &qword_1D2EF1E88);
  v47 = type metadata accessor for SmartActionsServer();
  result = (*(*(v47 - 8) + 48))(v37, 1, v47);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v49 = swift_task_alloc();
    v0[19] = v49;
    *v49 = v0;
    v49[1] = sub_1D2E78BE0;
    v50 = v0[9];
    v51 = v0[4];

    return sub_1D2ECDD64(v50, v42, v43, v46, v45);
  }

  return result;
}

uint64_t sub_1D2E78BE0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v6 = sub_1D2E78E30;
  }

  else
  {
    sub_1D2E7DD38(*(v2 + 32), type metadata accessor for SmartActionsServer);
    v6 = sub_1D2E78D50;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D2E78D50()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[6];
  v7 = v0[4];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D2E78E30()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[6];
  v7 = v0[4];
  (*(v0[8] + 8))(v0[9], v0[7]);
  sub_1D2E7DD38(v7, type metadata accessor for SmartActionsServer);

  v8 = v0[1];
  v9 = v0[20];

  return v8();
}

uint64_t sub_1D2E78F2C(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D2E7DE28;

  return v8(a2);
}

void sub_1D2E79020(uint64_t a1)
{
  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EDED2DA0);
  swift_unknownObjectRetain();
  oslog = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    ObjectType = swift_getObjectType();
    v11 = a1;
    v7 = sub_1D2EE2754(&v11, ObjectType);
    v9 = sub_1D2E685B0(v7, v8, &v12);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1D2E46000, oslog, v3, "Received an xpc event %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1D2E791B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D2E79214(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE28;

  return sub_1D2E792AC(a1);
}

uint64_t sub_1D2E792AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D2E792CC, 0, 0);
}

uint64_t sub_1D2E792CC()
{
  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DA0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Handling incoming SmartHolding_XPCMessage_Ping message", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  v7 = *(v5 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738AF8, &unk_1D2EF21D0);
  sub_1D2EE4648();

  return MEMORY[0x1EEE6DFA0](sub_1D2E79408, v7, 0);
}

uint64_t sub_1D2E79408()
{
  sub_1D2E9BE4C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2E79464(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D2E7DE30;

  return v7(a1);
}

uint64_t sub_1D2E79558(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D2E7DE28;

  return v8(a2);
}

uint64_t sub_1D2E7964C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE28;

  return sub_1D2E796E4(a1);
}

uint64_t sub_1D2E796E4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for SmartHolding_XPCMessage_StartSmartHolding() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1D2EE3EB8();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E797D0, 0, 0);
}

uint64_t sub_1D2E797D0()
{
  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DA0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Handling incoming start request", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738AF0, &qword_1D2EF21C0);
  sub_1D2EE4648();
  (*(v6 + 32))(v5, v8, v7);
  v11 = *(v10 + 24);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_1D2E79978;
  v13 = v0[7];

  return sub_1D2E97C1C(v13);
}

uint64_t sub_1D2E79978()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1D2E7DE3C;
  }

  else
  {
    v3 = sub_1D2E7DE4C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2E79A8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E5BA34;

  return sub_1D2E79B24(a1);
}

uint64_t sub_1D2E79B24(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for SmartHolding_XPCMessage_StopSmartHolding() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1D2EE3EB8();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E79C10, 0, 0);
}

uint64_t sub_1D2E79C10()
{
  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DA0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Handling incoming end request", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738AE8, &qword_1D2EF21B0);
  sub_1D2EE4648();
  (*(v6 + 32))(v5, v8, v7);
  v11 = *(v10 + 24);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_1D2E79DB8;
  v13 = v0[7];

  return sub_1D2E98674(v13);
}

uint64_t sub_1D2E79DB8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1D2E79F54;
  }

  else
  {
    v3 = sub_1D2E79ECC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2E79ECC()
{
  v1 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D2E79F54()
{
  v1 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1D2E79FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D2E79FFC, 0, 0);
}

uint64_t sub_1D2E79FFC()
{
  v1 = *(*(v0 + 24) + 24);
  *(v0 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D2E7A020, v1, 0);
}

uint64_t sub_1D2E7A020()
{
  v1 = v0[4];
  sub_1D2E98CD0(v0[2]);
  v2 = v0[1];

  return v2();
}