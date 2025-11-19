BOOL _s17CoreODIEssentials14HTTPStatusCodeO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    switch(v2)
    {
      case 1:
        if (v3 != 1)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 2:
        if (v3 != 2)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 3:
        if (v3 != 3)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 4:
        if (v3 != 4)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 5:
        if (v3 != 5)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 6:
        if (v3 != 6)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 7:
        if (v3 != 7)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 8:
        if (v3 != 8)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 9:
        if (v3 != 9)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 10:
        if (v3 != 10)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 11:
        if (v3 != 11)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 12:
        if (v3 != 12)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 13:
        if (v3 != 13)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 14:
        if (v3 != 14)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 15:
        if (v3 != 15)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 16:
        if (v3 <= 0xF)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      default:
        if (v3)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
    }
  }

  else
  {
    return (*(a2 + 8) & 1) == 0 && v2 == v3;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HTTPStatusCode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HTTPStatusCode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1DAF8CC7C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAF8CC98(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

Swift::tuple_CoreODIEssentials_ODIBindingsDict_OpaquePointer __swiftcall ODIBindingsState.bindingsAndMissing()()
{
  v2 = v1[1];
  *v0 = *v1;

  result._1._rawValue = v4;
  result._0.contents._rawValue = v3;
  return result;
}

uint64_t static ODIFieldsSource.isFresherOrSame(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 2;
  if (v2 != 1)
  {
    v4 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (v2 == v3)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t ODIFieldsSource.hashValue.getter()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v1);
  return sub_1DB09E3E4();
}

Swift::Bool __swiftcall ODIBindingsDict.isEquivalent(to:)(CoreODIEssentials::ODIBindingsDict to)
{
  v2 = *to.contents._rawValue;
  v3 = *v1;
  if (sub_1DAF8CE60(v3, *to.contents._rawValue))
  {
    v6[0] = v2;
    v6[1] = v3;
    return ODIBindingsDict.isSubset(of:)(v6);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAF8CE60(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_10:
    if (*(a2 + 16))
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (*(a1 + 48) + ((v9 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];

      sub_1DAF35210(v14, v13);
      LOBYTE(v14) = v15;

      if (v14)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return 1;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall ODIBindingsDict.isSubset(of:)(CoreODIEssentials::ODIBindingsDict of)
{
  v2 = v1;
  v3 = *of.contents._rawValue;
  v4 = *v2;
  v5 = (*v2 + 64);
  v6 = 1 << *(*v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *v5;
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_12:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = v15 | (v12 << 6);
      v17 = (*(v4 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_1DAF3523C(*(v4 + 56) + 40 * v16, v27);
      *&v28 = v19;
      *(&v28 + 1) = v18;
      sub_1DAF332B8(v27, &v29);

      v14 = v12;
LABEL_13:
      v32 = v28;
      v33[0] = v29;
      v33[1] = v30;
      v34 = v31;
      v20 = *(&v28 + 1);
      if (!*(&v28 + 1))
      {
        break;
      }

      v21 = v32;
      sub_1DAF332B8(v33, &v28);
      if (!*(v3 + 16))
      {

LABEL_21:
        __swift_destroy_boxed_opaque_existential_1Tm(&v28);
        break;
      }

      v22 = sub_1DAF35210(v21, v20);
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        goto LABEL_21;
      }

      sub_1DAF3523C(*(v3 + 56) + 40 * v22, v26);
      sub_1DAF332B8(v26, v27);
      v25 = _s17CoreODIEssentials12ODNAtorProxyC15isEqualBindings3lhs3rhsSbSH_s8Sendablep_SH_sAGptFZ_0(&v28, v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v28);
      if ((v25 & 1) == 0)
      {
        break;
      }

      v11 = v14;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    return v20 == 0;
  }

  else
  {
LABEL_5:
    if (v9 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = v9;
    }

    v14 = v13 - 1;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        v8 = 0;
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        goto LABEL_13;
      }

      v8 = v5[v12];
      ++v11;
      if (v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void *ODNAtorParameters.init(bindings:missingBindings:structuredDeviceData:deviceDataFields:computationContext:contextualErrorInfo:bindingsOrigin:deviceDataOrigin:)@<X0>(void *__src@<X2>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v11 = *a5;
  v12 = *a6;
  v13 = *a7;
  v14 = *a8;
  *a9 = *a2;
  *(a9 + 8) = a3;
  result = memcpy((a9 + 16), __src, 0x40AuLL);
  *(a9 + 1056) = a4;
  *(a9 + 1064) = v11;
  *(a9 + 1065) = v12;
  *(a9 + 1066) = v13;
  *(a9 + 1067) = v14;
  return result;
}

uint64_t sub_1DAF8D1F0(uint64_t a1, uint64_t a2)
{
  v47 = MEMORY[0x1EEE9AC00](a1, a2);
  v3 = *v2;
  memcpy(v60, v2 + 1, sizeof(v60));
  v45[3] = *(v2 + 1042);
  v46 = *(v2 + 1043);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v48 = v3;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC8];
  v49 = v8;
  v50 = v3 + 64;
  while (1)
  {
    if (!v7)
    {
      if (v8 <= v9 + 1)
      {
        v13 = v9 + 1;
      }

      else
      {
        v13 = v8;
      }

      v14 = v13 - 1;
      while (1)
      {
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v12 >= v8)
        {
          v7 = 0;
          memset(v55, 0, 56);
          goto LABEL_16;
        }

        v7 = *(v4 + 8 * v12);
        ++v9;
        if (v7)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      result = sub_1DB09E2E4();
      __break(1u);
      return result;
    }

    v12 = v9;
LABEL_15:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v48 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_1DAF3523C(*(v48 + 56) + 40 * v16, v54);
    *&v55[0] = v19;
    *(&v55[0] + 1) = v18;
    sub_1DAF332B8(v54, &v55[1]);

    v14 = v12;
LABEL_16:
    v56 = v55[0];
    v57 = v55[1];
    v58 = v55[2];
    v59 = *&v55[3];
    v20 = *(&v55[0] + 1);
    if (!*(&v55[0] + 1))
    {
      break;
    }

    v51 = v14;
    v21 = v56;
    v22 = *(&v58 + 1);
    v23 = __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
    v24 = *(*(v22 - 8) + 64);
    MEMORY[0x1EEE9AC00](v23, v23);
    (*(v26 + 16))(v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    __swift_destroy_boxed_opaque_existential_1Tm(&v57);
    sub_1DB09DDB4();
    v54[0] = v55[0];
    v54[1] = v55[1];
    *&v54[2] = *&v55[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53[0] = v10;
    v28 = sub_1DAF35210(v21, v20);
    v30 = v10[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_33;
    }

    v34 = v29;
    if (v10[3] < v33)
    {
      sub_1DAF378F4(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_1DAF35210(v21, v20);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_35;
      }

LABEL_22:
      if (v34)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v42 = v28;
    sub_1DAF3C5A4();
    v28 = v42;
    if (v34)
    {
LABEL_4:
      v11 = v28;

      v10 = v53[0];
      sub_1DAF96AF4(v54, *(v53[0] + 56) + 40 * v11);
      goto LABEL_5;
    }

LABEL_23:
    v10 = v53[0];
    *(v53[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
    v36 = (v10[6] + 16 * v28);
    *v36 = v21;
    v36[1] = v20;
    v37 = v10[7] + 40 * v28;
    v38 = *&v54[2];
    v39 = v54[1];
    *v37 = v54[0];
    *(v37 + 16) = v39;
    *(v37 + 32) = v38;
    v40 = v10[2];
    v32 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v32)
    {
      goto LABEL_34;
    }

    v10[2] = v41;
LABEL_5:
    v4 = v50;
    v9 = v51;
    v8 = v49;
  }

  v43 = v47;
  sub_1DB08463C(v47, v10);

  memcpy(v55, v60, 0x40AuLL);
  if (sub_1DAF40964(v55) == 1)
  {
    sub_1DB09E3C4();
  }

  else
  {
    memcpy(v52, v60, sizeof(v52));
    sub_1DB09E3C4();
    memcpy(v53, v60, 0x40AuLL);
    sub_1DAF96A98(v53, v54);
    ArmandDeviceData.hash(into:)(v43);
    memcpy(v54, v52, 0x40AuLL);
    sub_1DAF40988(v54);
  }

  sub_1DB09E3C4();
  return MEMORY[0x1E1280A80](v46);
}

uint64_t sub_1DAF8D690()
{
  v1 = *v0;
  memcpy(__dst, (v0 + 8), 0x40AuLL);
  v2 = *(v0 + 1042);
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_1DB09D6B4();
  v5 = [v3 BOOLForKey_];

  if (v5)
  {
    sub_1DB09DE44();
    v15 = 0;
    v16 = 0xE000000000000000;
    MEMORY[0x1E127FE90](0xD000000000000025, 0x80000001DB0C46A0);
    memcpy(__src, __dst, 0x40AuLL);
    sub_1DAF40A84(__dst, v14, &qword_1ECC0E318, &qword_1DB0A02A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E318, &qword_1DB0A02A0);
    v6 = sub_1DB09D744();
    MEMORY[0x1E127FE90](v6);

    MEMORY[0x1E127FE90](0xD000000000000024, 0x80000001DB0C46D0);
    __src[0] = v1;
    sub_1DB09DF94();
  }

  else
  {
    sub_1DB09DE44();
    v15 = 0;
    v16 = 0xE000000000000000;
    MEMORY[0x1E127FE90](0xD000000000000025, 0x80000001DB0C46A0);
    memcpy(__src, __dst, 0x40AuLL);
    if (sub_1DAF40964(__src) == 1)
    {
      v7 = 0xE300000000000000;
      v8 = 7104878;
    }

    else
    {
      memcpy(v14, __src, 0x40AuLL);
      v8 = ArmandDeviceData.description.getter();
      v7 = v9;
    }

    MEMORY[0x1E127FE90](v8, v7);

    MEMORY[0x1E127FE90](0xD000000000000024, 0x80000001DB0C46D0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    v10 = sub_1DB09D654();
    MEMORY[0x1E127FE90](v10);
  }

  MEMORY[0x1E127FE90](0xD00000000000002DLL, 0x80000001DB0C4700);
  if (v2)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v2)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v11, v12);

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  return v15;
}

uint64_t sub_1DAF8D9CC()
{
  sub_1DB09E3A4();
  sub_1DAF8D1F0(v2, v0);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAF8DA10()
{
  sub_1DB09E3A4();
  sub_1DAF8D1F0(v2, v0);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAF8DA54(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v107 = v6;
  v7 = type metadata accessor for ODNAssessmentResult();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v105 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v110 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
  v114 = *(v15 - 8);
  v115 = v15;
  v16 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v113 = (&v96 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E790, &qword_1DB0A5100);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v106 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v112 = &v96 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v120 = &v96 - v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v96 - v31;
  v33 = *v5;
  v104 = *(v5 + 8);
  LOBYTE(v5) = *(v5 + 16);
  sub_1DAF94918(v135);
  memcpy(&v136[1], v135, 0x40AuLL);
  v136[0] = v33;
  BYTE2(v136[130]) = 1;
  BYTE3(v136[130]) = v5;
  v137 = v8;
  v34 = *(v8 + 56);
  v109 = v32;
  v118 = v7;
  v98 = v34;
  v99 = v8 + 56;
  v34(v32, 1, 1, v7);
  v35 = v4[15];
  v36 = v4[16];
  v134[0] = 0;
  v134[1] = 0xE000000000000000;

  sub_1DB09DE44();

  v133[0] = 0xD00000000000002ALL;
  v133[1] = 0x80000001DB0C3F80;
  memcpy(v134, v136, 0x414uLL);
  v37 = sub_1DAF8D690();
  MEMORY[0x1E127FE90](v37);

  v38 = v133[0];
  v39 = v133[1];
  if (qword_1EE300A68 != -1)
  {
    swift_once();
  }

  v108 = v3;
  v40 = sub_1DB09D4B4();
  v41 = __swift_project_value_buffer(v40, qword_1EE309E50);

  sub_1DB0163B8(v41, v35, v36, v38, v39);

  swift_bridgeObjectRelease_n();
  swift_beginAccess();
  v119 = v4;
  v42 = v4[26];
  v43 = v42 + 64;
  v44 = 1 << *(v42 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v42 + 64);
  v122 = BYTE3(v136[130]);
  v47 = BYTE2(v136[130]);
  v48 = v136[0];

  sub_1DAF40898(v136, v134);
  memcpy(v132, &v136[1], sizeof(v132));
  v49 = 0;
  v50 = (v44 + 63) >> 6;
  v116 = v42;
  v117 = (v137 + 48);
  v111 = "No best assessment found";
  v97 = "table substitute";
  v100 = v48;
  v101 = 0x7FFFFFFFFFFFFFFFLL;
  v51 = v48;
  v52 = v110;
  while (2)
  {
    LODWORD(v102) = v47;
    LODWORD(v137) = v47 & 1;
    v53 = v122;
    v54 = v119;
    for (i = v51; ; v51 = i)
    {
      v131[0] = v51;
      memcpy(&v131[1], v132, 0x40AuLL);
      BYTE2(v131[130]) = v137;
      BYTE3(v131[130]) = v53;
      memcpy(v134, v131, 0x414uLL);
      if (!v46)
      {
        while (1)
        {
          v55 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          if (v55 >= v50)
          {
            sub_1DAF407D4(v131);
            sub_1DAF407D4(v136);

            v81 = v107;
            v82 = v109;
            v83 = v106;
            goto LABEL_36;
          }

          v46 = *(v43 + 8 * v55);
          ++v49;
          if (v46)
          {
            v49 = v55;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_41;
      }

LABEL_14:
      v56 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      memcpy(v133, (*(v42 + 48) + 1048 * (v56 | (v49 << 6))), 0x414uLL);
      v57 = v54[26];
      if (*(v57 + 16))
      {
        break;
      }

LABEL_8:
      v53 = v122;
    }

    sub_1DAF40898(v133, v128);

    v58 = sub_1DAF355A0(v133);
    if ((v59 & 1) == 0)
    {
      sub_1DAF407D4(v133);

      goto LABEL_8;
    }

    v60 = v113;
    sub_1DAF40A84(*(v57 + 56) + *(v114 + 72) * v58, v113, &qword_1ECC0E2F8, &qword_1DB0A0280);

    v61 = *v60;

    v62 = v120;
    sub_1DAF624E8(v60 + *(v115 + 48), v120, &qword_1ECC0E790, &qword_1DB0A5100);
    v63 = v62;
    v64 = v112;
    sub_1DAF40A84(v63, v112, &qword_1ECC0E790, &qword_1DB0A5100);
    v103 = *v117;
    if (v103(v64, 1, v118) == 1)
    {
      sub_1DAF407D4(v133);
      sub_1DAF40AEC(v64, &qword_1ECC0E790, &qword_1DB0A5100);
      memcpy(v127, v132, 0x40AuLL);
      v42 = v116;
LABEL_34:
      sub_1DAF40AEC(v120, &qword_1ECC0E790, &qword_1DB0A5100);
      memcpy(v132, v127, sizeof(v132));
      v47 = v102;
      v51 = i;
      continue;
    }

    break;
  }

  sub_1DAF94928(v64, v52, type metadata accessor for ODNAssessmentResult);
  v54 = v119;
  v65 = v52;
  v66 = v119[15];
  v67 = v119[16];
  sub_1DAF40898(v131, v128);
  LOBYTE(v66) = sub_1DAF93398(v133, v134);
  sub_1DAF407D4(v131);
  if ((v66 & 1) == 0)
  {
    sub_1DAF407D4(v133);
    v68 = v54[16];
    *v128 = v54[15];
    *&v128[8] = v68;
    v125 = 0;
    v126 = 0xE000000000000000;

    sub_1DB09DE44();
    if (*(v65 + 280))
    {
      v69 = *(v65 + 272);
      v70 = *(v65 + 280);
    }

    else
    {
      v70 = 0xE300000000000000;
      v69 = 7104878;
    }

    MEMORY[0x1E127FE90](v69, v70);

    MEMORY[0x1E127FE90](0xD000000000000020, v111 | 0x8000000000000000);
    LOBYTE(v123) = 13;
    CoreODILogger.debug(_:category:)(v125, v126, &v123);

    sub_1DAF94990(v65, type metadata accessor for ODNAssessmentResult);
    sub_1DAF40AEC(v120, &qword_1ECC0E790, &qword_1DB0A5100);
    v52 = v65;
    v42 = v116;
    goto LABEL_8;
  }

  if (*(v100 + 16) - *(v133[0] + 16) >= v101)
  {
    v52 = v110;
    sub_1DAF94990(v110, type metadata accessor for ODNAssessmentResult);
    sub_1DAF407D4(v133);
    memcpy(v128, v132, 0x40AuLL);
    v42 = v116;
    v74 = i;
  }

  else
  {
    v102 = *(v100 + 16) - *(v133[0] + 16);
    i = v133[0];
    sub_1DAF407D4(v131);
    v71 = v119[16];
    v125 = v119[15];
    v126 = v71;
    *v128 = 0;
    *&v128[8] = 0xE000000000000000;

    sub_1DB09DE44();

    v123 = 0x20746C75736552;
    v124 = 0xE700000000000000;
    v42 = v116;
    if (*(v110 + 280))
    {
      v72 = *(v110 + 272);
      v73 = *(v110 + 280);
    }

    else
    {
      v73 = 0xE300000000000000;
      v72 = 7104878;
    }

    MEMORY[0x1E127FE90](v72, v73);

    MEMORY[0x1E127FE90](0xD000000000000018, v97 | 0x8000000000000000);
    v75 = v109;
    if (v103(v109, 1, v118) || (v76 = *(v75 + 280)) == 0)
    {

      v76 = 0xE300000000000000;
      v77 = 7104878;
    }

    else
    {
      v78 = *(v75 + 272);
      v79 = *(v75 + 280);

      v77 = v78;
    }

    MEMORY[0x1E127FE90](v77, v76);

    v128[0] = 13;
    CoreODILogger.debug(_:category:)(v123, v124, v128);

    v80 = v109;
    sub_1DAF40AEC(v109, &qword_1ECC0E790, &qword_1DB0A5100);
    v52 = v110;
    sub_1DAF94928(v110, v80, type metadata accessor for ODNAssessmentResult);
    v98(v80, 0, 1, v118);
    v122 = BYTE3(v133[130]);
    LODWORD(v137) = BYTE2(v133[130]);
    memcpy(v128, &v133[1], 0x40AuLL);
    v101 = v102;
    v74 = i;
    LODWORD(v102) = BYTE2(v133[130]);
  }

  memcpy(v127, v128, 0x40AuLL);
  i = v74;
  *v128 = v74;
  memcpy(&v128[8], v127, 0x40AuLL);
  v129 = v137;
  v130 = v122;
  if (v101)
  {
    goto LABEL_34;
  }

LABEL_41:
  sub_1DAF407D4(v128);
  sub_1DAF407D4(v136);
  v91 = v119[16];
  v125 = v119[15];
  v126 = v91;
  v123 = 0;
  v124 = 0xE000000000000000;

  sub_1DB09DE44();

  v123 = 0xD000000000000026;
  v124 = 0x80000001DB0C3FB0;
  v82 = v109;
  if (v103(v109, 1, v118) || (v93 = *(v82 + 280)) == 0)
  {
    v92 = 7104878;

    v93 = 0xE300000000000000;
  }

  else
  {
    v92 = *(v82 + 272);
    v94 = *(v82 + 280);
  }

  v81 = v107;
  v83 = v106;
  MEMORY[0x1E127FE90](v92, v93);

  v95 = v123;
  LOBYTE(v123) = 13;
  CoreODILogger.debug(_:category:)(v95, v124, &v123);

  sub_1DAF40AEC(v120, &qword_1ECC0E790, &qword_1DB0A5100);
  v54 = v119;
LABEL_36:
  sub_1DAF40A84(v82, v83, &qword_1ECC0E790, &qword_1DB0A5100);
  if ((*v117)(v83, 1, v118) == 1)
  {
    sub_1DAF40AEC(v83, &qword_1ECC0E790, &qword_1DB0A5100);
    v84 = v54[16];
    *v128 = v54[15];
    *&v128[8] = v84;
    v127[0] = 13;

    CoreODILogger.debug(_:category:)(0xD000000000000018, 0x80000001DB0C3FE0, v127);

    v128[0] = -104;
    ODIAssessmentAdapter.adapt(withError:)(v128, v81);
  }

  else
  {
    v85 = v83;
    v86 = v105;
    sub_1DAF94928(v85, v105, type metadata accessor for ODNAssessmentResult);
    v87 = v54[16];
    *v128 = v54[15];
    *&v128[8] = v87;

    v88 = sub_1DAF63E04();
    v127[0] = 13;
    CoreODILogger.debug(_:category:)(v88, v89, v127);

    sub_1DAFB7FF4(v86, v104, v81);
    sub_1DAF94990(v86, type metadata accessor for ODNAssessmentResult);
  }

  return sub_1DAF40AEC(v82, &qword_1ECC0E790, &qword_1DB0A5100);
}

uint64_t ODNAtorProxy.__allocating_init(providerID:serverRepo:useDSID:sessionIdentifier:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  ODNAtorProxy.init(providerID:serverRepo:useDSID:sessionIdentifier:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void *ODNAtorProxy.init(providerID:serverRepo:useDSID:sessionIdentifier:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v54 = a5;
  v55 = a6;
  v58 = a1;
  v11 = type metadata accessor for ODISignpost();
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v60 = &v54 - v18;
  v19 = *a3;
  v56 = *a4;
  v57 = v19;
  swift_defaultActor_initialize();
  v7[26] = sub_1DAF3F070(MEMORY[0x1E69E7CC0]);
  if (qword_1EE301460 != -1)
  {
    swift_once();
  }

  v21 = qword_1EE309FC0;
  v20 = *algn_1EE309FC8;
  v22 = byte_1EE309FD0;
  v23 = qword_1EE309FD8;
  v24 = byte_1EE309FE0;
  *(v16 + 4) = "enableTelemetry=YES";
  *(v16 + 5) = 19;
  v16[48] = 2;
  *v16 = v21;
  *(v16 + 1) = v20;
  v16[16] = v22;
  *(v16 + 3) = v23;
  v59 = v11;
  v25 = *(v11 + 28);
  v26 = v23;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v24 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v27 = v58;
  v28 = v60;
  sub_1DAF94928(v16, v60, type metadata accessor for ODISignpost);
  v7[17] = v27;
  v7[18] = a2;
  v30 = v54;
  v29 = v55;
  v7[15] = v54;
  v7[16] = v29;
  swift_bridgeObjectRetain_n();

  if (sub_1DAF92FC8())
  {
    v63 = v27;
    v64 = a2;
    MEMORY[0x1E127FE90](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
    v31 = v63;
    v32 = v64;
    v33 = &off_1F56CFE08;
    v34 = &type metadata for AMPAssessmentPayloadAdapter;
  }

  else
  {
    v63 = v27;
    v64 = a2;
    MEMORY[0x1E127FE90](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
    v31 = v63;
    v32 = v64;
    v33 = &off_1F56CCDB0;
    v34 = &type metadata for Base64AssessmentPayloadAdapter;
  }

  v7[19] = v31;
  v7[20] = v32;
  v7[21] = 45;
  v7[22] = 0xE100000000000000;
  v7[24] = v34;
  v7[25] = v33;
  v35 = v7[16];
  v63 = v7[15];
  v64 = v35;
  LOBYTE(v61) = 8;

  CoreODILogger.debug(_:category:)(0xD00000000000001ALL, 0x80000001DB0C4050, &v61);

  v36 = v7[16];
  v63 = v7[15];
  v64 = v36;
  LOBYTE(v61) = 14;

  CoreODILogger.debug(_:category:)(0xD00000000000001ELL, 0x80000001DB0C4070, &v61);

  type metadata accessor for ODNAtorQueueManager();
  v37 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v37 + 112) = MEMORY[0x1E69E7CC0];
  *(v37 + 136) = 0;
  *(v37 + 144) = 0;
  *(v37 + 152) = v30;
  *(v37 + 160) = v29;
  v63 = v30;
  v64 = v29;
  v61 = 0;
  v62 = 0xE000000000000000;

  sub_1DB09DE44();

  v61 = 0xD00000000000002BLL;
  v62 = 0x80000001DB0C4090;
  MEMORY[0x1E127FE90](v27, a2);
  v38 = v61;
  LOBYTE(v61) = 8;
  CoreODILogger.debug(_:category:)(v38, v62, &v61);

  v63 = v27;
  v64 = a2;

  MEMORY[0x1E127FE90](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
  v39 = v63;
  v40 = v64;
  type metadata accessor for ODNAssessmentsFactory();
  v41 = swift_allocObject();
  v43 = *(v37 + 152);
  v42 = *(v37 + 160);

  v45 = sub_1DAF93990(v27, a2, v39, v40, v56, v41, v57, v43, v44);
  v46 = sub_1DAF96CC8(&qword_1EE301100, 255, type metadata accessor for ODNAssessmentsManager);
  *(v37 + 120) = v45;
  *(v37 + 128) = v46;
  v7[14] = v37;
  v47 = v7[16];
  v63 = v7[15];
  v64 = v47;
  LOBYTE(v61) = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000019, 0x80000001DB0C40C0, &v61);

  sub_1DB09DC04();
  v48 = *(v28 + 24);
  v49 = *v28;
  v50 = *(v28 + 8);
  v51 = *(v59 + 28);
  v52 = *(v28 + 16);
  sub_1DB09D464();
  sub_1DAF94990(v28, type metadata accessor for ODISignpost);
  return v7;
}

uint64_t sub_1DAF8EDB0(uint64_t a1)
{
  *(v2 + 464) = a1;
  *(v2 + 472) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF8EDD0, v1, 0);
}

uint64_t sub_1DAF8EDD0()
{
  if (qword_1EE304008 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 480) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF8EE9C;

  return sub_1DAFEFC24(v0 + 240);
}

uint64_t sub_1DAF8EE9C()
{
  v1 = *v0;
  v2 = *(*v0 + 480);
  v3 = *(*v0 + 472);
  v12 = *v0;

  v4 = v1[26];
  v1[11] = v1[25];
  v1[12] = v4;
  v5 = v1[28];
  v1[13] = v1[27];
  v1[14] = v5;
  v6 = v1[22];
  v1[7] = v1[21];
  v1[8] = v6;
  v7 = v1[24];
  v1[9] = v1[23];
  v1[10] = v7;
  v8 = v1[18];
  v1[3] = v1[17];
  v1[4] = v8;
  v9 = v1[20];
  v1[5] = v1[19];
  v1[6] = v9;
  v10 = v1[16];
  v1[1] = v1[15];
  v1[2] = v10;
  sub_1DAF791EC((v1 + 1));

  return MEMORY[0x1EEE6DFA0](sub_1DAF8EFEC, v3, 0);
}

uint64_t sub_1DAF8EFEC()
{
  v1 = *(*(v0 + 472) + 112);
  *(v0 + 488) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF8F010, v1, 0);
}

uint64_t sub_1DAF8F010()
{
  v1 = *(*(v0 + 488) + 120);
  *(v0 + 496) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF8F034, v1, 0);
}

uint64_t sub_1DAF8F034()
{
  v1 = *(v0[62] + 192);
  v2 = swift_task_alloc();
  v0[63] = v2;
  *v2 = v0;
  v2[1] = sub_1DAF8F0D0;
  v3 = v0[58];

  return sub_1DAFA41D8(v3);
}

uint64_t sub_1DAF8F0D0()
{
  v1 = *(*v0 + 504);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DAF8F1E4()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF8F208, v1, 0);
}

uint64_t sub_1DAF8F208()
{
  v1 = *(*(v0 + 24) + 120);
  *(v0 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF8F22C, v1, 0);
}

uint64_t sub_1DAF8F22C()
{
  v1 = *(v0 + 32);
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  v5 = *(v0 + 8);

  return v5(v3, v2);
}

uint64_t sub_1DAF8F2AC(uint64_t a1, uint64_t a2)
{
  *(v3 + 10432) = v2;
  *(v3 + 10424) = a1;
  v5 = type metadata accessor for ODNAssessmentResult();
  *(v3 + 10440) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 10448) = swift_task_alloc();
  *(v3 + 10456) = *a2;
  memcpy((v3 + 1056), (a2 + 16), 0x40AuLL);
  *(v3 + 10464) = *(a2 + 1056);
  *(v3 + 1051) = *(a2 + 1064);
  sub_1DAF40A84(v3 + 1056, v3 + 2096, &qword_1ECC0E318, &qword_1DB0A02A0);

  return MEMORY[0x1EEE6DFA0](sub_1DAF8F38C, v2, 0);
}

uint64_t sub_1DAF8F38C()
{
  v16 = v0;
  v1 = v0[132];
  memcpy(v0 + 1172, v0 + 133, 0x402uLL);
  memcpy(v0 + 3, v0 + 133, 0x402uLL);
  v0[2] = v1;
  if (sub_1DAF40964(v0 + 2) != 1)
  {
    v2 = v0[1308];

    v1 = v2;
  }

  v0[1309] = v1;
  v0[392] = v1;
  memcpy(v0 + 393, v0 + 1172, 0x402uLL);
  if (sub_1DAF40964(v0 + 392) == 1)
  {
    v10 = sub_1DAF484E4(32123, 0xE200000000000000);
    v9 = v3;
    v11 = 0;
    v12 = 0xF000000000000000;
  }

  else
  {
    memcpy(v0 + 523, v0 + 1172, 0x402uLL);
    memcpy(&__src[8], v0 + 1172, 0x402uLL);
    *__src = v1;
    v0[522] = v1;
    sub_1DAF96A98((v0 + 522), (v0 + 652));
    v7 = sub_1DB054C84();
    v9 = v8;
    memcpy(v0 + 1042, __src, 0x40AuLL);
    sub_1DAF40988((v0 + 1042));
    sub_1DAF40674(v7, v9);
    v10 = v7;
    v11 = v7;
    v12 = v9;
  }

  v0[1313] = v12;
  v0[1312] = v11;
  v0[1311] = v9;
  v0[1310] = v10;
  v4 = v0[1304];
  v5 = v4[16];
  *__src = v4[15];
  *&__src[8] = v5;
  v15[0] = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000053, 0x80000001DB0C41E0, v15);

  v6 = v4[14];
  v0[1314] = v6;
  sub_1DAF40674(v10, v9);

  return MEMORY[0x1EEE6DFA0](sub_1DAF8F5C4, v6, 0);
}

uint64_t sub_1DAF8F5C4()
{
  v23 = v0;
  v1 = *(v0 + 10512);
  v18 = *(v0 + 10480);
  v2 = *(v0 + 1051);
  v3 = *(v0 + 10456);
  v4 = *(v1 + 160);
  v21 = *(v1 + 152);
  v22 = v4;
  LOBYTE(v19) = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000027, 0x80000001DB0C4240, &v19);

  *(v0 + 1050) = v2 ^ 1;
  v5 = *(v1 + 160);
  v19 = *(v1 + 152);
  v20 = v5;
  v21 = 0;
  v22 = 0xE000000000000000;

  sub_1DB09DE44();

  v21 = 0xD00000000000002CLL;
  v22 = 0x80000001DB0C4270;
  *(v0 + 10408) = v2 ^ 1u;
  v6 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v6);

  v7 = v21;
  LOBYTE(v21) = 8;
  CoreODILogger.debug(_:category:)(v7, v22, &v21);

  v8 = *(v1 + 160);
  v19 = *(v1 + 152);
  v20 = v8;
  v21 = 0;
  v22 = 0xE000000000000000;

  sub_1DB09DE44();

  v21 = 0xD00000000000002FLL;
  v22 = 0x80000001DB0C42A0;
  *(v0 + 10416) = 0;
  v9 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v9);

  v10 = v21;
  LOBYTE(v21) = 8;
  CoreODILogger.debug(_:category:)(v10, v22, &v21);

  v11 = sub_1DAF96CC8(&qword_1EE3011E8, 255, type metadata accessor for ODNAtorQueueManager);
  v12 = swift_task_alloc();
  *(v0 + 10520) = v12;
  *(v12 + 16) = v0 + 1050;
  *(v12 + 24) = 0;
  *(v12 + 32) = v18;
  *(v12 + 48) = v3;
  *(v12 + 56) = v2;
  *(v12 + 64) = v1;
  v13 = *(MEMORY[0x1E69E88D0] + 4);
  v14 = swift_task_alloc();
  *(v0 + 10528) = v14;
  *v14 = v0;
  v14[1] = sub_1DAF8F8C8;
  v15 = *(v0 + 10448);
  v16 = *(v0 + 10440);

  return MEMORY[0x1EEE6DDE0](v15, v1, v11, 0xD00000000000004BLL, 0x80000001DB0C42D0, sub_1DAF96B50, v12, v16);
}

uint64_t sub_1DAF8F8C8()
{
  v1 = *(*v0 + 10528);
  v2 = *(*v0 + 10520);
  v3 = *(*v0 + 10512);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF8F9F4, v3, 0);
}

uint64_t sub_1DAF8F9F4()
{
  v1 = v0[1304];
  sub_1DAF40780(v0[1310], v0[1311]);

  return MEMORY[0x1EEE6DFA0](sub_1DAF8FA64, v1, 0);
}

uint64_t sub_1DAF8FA64()
{
  v19 = v0;
  v1 = v0[1306];
  v2 = v0[1304];
  v3 = *(v2 + 128);
  v17 = *(v2 + 120);
  v18 = v3;
  LOBYTE(v16[0]) = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000024, 0x80000001DB0C4320, v16);

  v4 = *(v1 + 296);
  v5 = v0[1313];
  v6 = v0[1312];
  v7 = v0[1311];
  v8 = v0[1310];
  if (v4)
  {
    v9 = v0[1304];
    v10 = *(v0[1306] + 288);
    v11 = *(v9 + 128);
    v16[0] = *(v9 + 120);
    v16[1] = v11;
    v17 = 0;
    v18 = 0xE000000000000000;

    sub_1DB09DE44();

    v17 = 0xD000000000000014;
    v18 = 0x80000001DB0C4350;
    MEMORY[0x1E127FE90](v10, v4);
    v12 = v17;
    LOBYTE(v17) = 8;
    CoreODILogger.debug(_:category:)(v12, v18, &v17);

    sub_1DAF40780(v8, v7);
    sub_1DAF4AC40(v6, v5);
  }

  else
  {
    sub_1DAF4AC40(v0[1312], v0[1313]);
    sub_1DAF40780(v8, v7);
  }

  v13 = v0[1309];
  sub_1DAF94928(v0[1306], v0[1303], type metadata accessor for ODNAssessmentResult);
  v0[912] = v13;
  memcpy(v0 + 913, v0 + 1172, 0x402uLL);
  sub_1DAF40AEC((v0 + 912), &qword_1ECC0E318, &qword_1DB0A02A0);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1DAF8FCB8(uint64_t a1, uint64_t a2)
{
  *(v3 + 2144) = v2;
  *(v3 + 2136) = a1;
  v5 = *(*(type metadata accessor for ODNAssessmentResult() - 8) + 64) + 15;
  *(v3 + 2152) = swift_task_alloc();
  *(v3 + 2160) = *a2;
  memcpy((v3 + 1088), (a2 + 16), 0x418uLL);
  v6 = *(a2 + 1064);
  *(v3 + 1084) = v6;
  *(v3 + 2192) = v6;
  *(v3 + 2184) = *(a2 + 1065);
  *(v3 + 2186) = *(a2 + 1067);

  return MEMORY[0x1EEE6DFA0](sub_1DAF8FD88, v2, 0);
}

uint64_t sub_1DAF8FD88()
{
  v18 = v0;
  v1 = *(v0 + 1084);
  v2 = *(v0 + 2144);
  v14 = *(v2 + 120);
  v15 = *(v2 + 128);
  v16 = 0;
  v17 = 0xE000000000000000;

  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v13 = *(v0 + 2160);
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000033, 0x80000001DB0C40E0);
  MEMORY[0x1E127FE90](v3, v4);

  MEMORY[0x1E127FE90](0xD000000000000010, 0x80000001DB0C4120);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  v5 = sub_1DB09D654();
  v7 = v6;

  MEMORY[0x1E127FE90](v5, v7);

  v8 = v16;
  LOBYTE(v16) = 8;
  CoreODILogger.debug(_:category:)(v8, v17, &v16);

  *(v0 + 16) = v13;
  memcpy((v0 + 32), (v0 + 1088), 0x418uLL);
  *(v0 + 1080) = *(v0 + 2192);
  *(v0 + 1081) = *(v0 + 2184);
  *(v0 + 1083) = *(v0 + 2186);
  v9 = swift_task_alloc();
  *(v0 + 2176) = v9;
  *v9 = v0;
  v9[1] = sub_1DAF8FFC0;
  v10 = *(v0 + 2152);
  v11 = *(v0 + 2144);

  return sub_1DAF901C8(v10, (v0 + 16));
}

uint64_t sub_1DAF8FFC0()
{
  v1 = *(*v0 + 2176);
  v2 = *(*v0 + 2144);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF900D0, v2, 0);
}

uint64_t sub_1DAF900D0()
{
  v12 = v0;
  v1 = v0[271];
  v2 = v0[269];
  v3 = v0[268];
  v4 = v0[267];
  v9 = *(v3 + 120);
  v10 = *(v3 + 128);

  v5 = sub_1DAF63E04();
  v11 = 14;
  CoreODILogger.debug(_:category:)(v5, v6, &v11);

  sub_1DAFB7FF4(v2, v1, v4);
  sub_1DAF94990(v2, type metadata accessor for ODNAssessmentResult);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DAF901C8(uint64_t a1, const void *a2)
{
  v3[805] = v2;
  v3[804] = a2;
  v3[803] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0) - 8) + 64) + 15;
  v3[806] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
  v3[807] = v6;
  v7 = *(v6 - 8);
  v3[808] = v7;
  v8 = *(v7 + 64) + 15;
  v3[809] = swift_task_alloc();
  v3[810] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F0, &qword_1DB0A0278) - 8) + 64) + 15;
  v3[811] = swift_task_alloc();
  v3[812] = swift_task_alloc();
  v3[813] = swift_task_alloc();
  memcpy(v3 + 2, a2, 0x42CuLL);

  return MEMORY[0x1EEE6DFA0](sub_1DAF9034C, v2, 0);
}

uint64_t sub_1DAF9034C()
{
  v73 = v0;
  v1 = v0[2];
  v2 = v0[805];
  v3 = v0[804];
  v0[801] = v1;
  memcpy(v0 + 532, (v3 + 16), 0x40AuLL);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1082);
  memcpy(v0 + 271, (v3 + 16), 0x40AuLL);
  v0[270] = v1;
  *(v0 + 3202) = v4;
  *(v0 + 3203) = v5;
  v6 = v2[16];
  v70 = v2[15];
  v71 = v6;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1DAF8BC6C((v0 + 801), (v0 + 802));
  sub_1DAF40A84((v0 + 532), (v0 + 662), &qword_1ECC0E318, &qword_1DB0A02A0);

  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000003ALL, 0x80000001DB0C4370);
  if (v4)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v4)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v7, v8);

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  v9 = __dst[0];
  LOBYTE(__dst[0]) = 8;
  CoreODILogger.debug(_:category:)(v9, __dst[1], __dst);

  v68 = v2[15];
  v69 = v2[16];
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;

  sub_1DB09DE44();

  v70 = 0xD000000000000019;
  v71 = 0x80000001DB0C43B0;
  memcpy(__dst, v0 + 270, 0x414uLL);
  v10 = sub_1DAF8D690();
  MEMORY[0x1E127FE90](v10);

  LOBYTE(__dst[0]) = 8;
  CoreODILogger.debug(_:category:)(0xD000000000000019, 0x80000001DB0C43B0, __dst);

  swift_beginAccess();
  v11 = v2[26];
  if (*(v11 + 16))
  {
    v12 = v2[26];

    v13 = sub_1DAF355A0(v0 + 270);
    if (v14)
    {
      sub_1DAF40A84(*(v11 + 56) + *(v0[808] + 72) * v13, v0[813], &qword_1ECC0E2F8, &qword_1DB0A0280);
      v15 = 0;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 1;
  }

  v16 = v0[813];
  v17 = v0[812];
  v18 = v0[808];
  v19 = v0[807];
  v20 = *(v18 + 56);
  v0[814] = v20;
  v20(v16, v15, 1, v19);
  sub_1DAF40A84(v16, v17, &qword_1ECC0E2F0, &qword_1DB0A0278);
  v21 = (*(v18 + 48))(v17, 1, v19);
  v22 = v0[812];
  if (v21 == 1)
  {
    v23 = &qword_1ECC0E2F0;
    v24 = &qword_1DB0A0278;
    goto LABEL_15;
  }

  v43 = v0[810];
  v44 = v0[809];
  v45 = v0[807];
  sub_1DAF624E8(v22, v43, &qword_1ECC0E2F8, &qword_1DB0A0280);
  v46 = v2[16];
  __dst[0] = v2[15];
  __dst[1] = v46;
  LOBYTE(v70) = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000036, 0x80000001DB0C43D0, &v70);

  v47 = *v43;
  v0[815] = *v43;
  v48 = *(v45 + 48);
  sub_1DAF40A84(v43 + v48, v44 + v48, &qword_1ECC0E790, &qword_1DB0A5100);
  v49 = type metadata accessor for ODNAssessmentResult();
  if ((*(*(v49 - 8) + 48))(v44 + v48, 1, v49) == 1)
  {
    if (v47)
    {

      sub_1DAF407D4((v0 + 270));
      v50 = v2[16];
      __dst[0] = v2[15];
      __dst[1] = v50;
      LOBYTE(v70) = 8;

      CoreODILogger.debug(_:category:)(0xD00000000000004BLL, 0x80000001DB0C4460, &v70);

      v51 = *(MEMORY[0x1E69E86C0] + 4);
      v52 = swift_task_alloc();
      v0[816] = v52;
      *v52 = v0;
      v52[1] = sub_1DAF90BE0;
      v40 = v0[803];
      v41 = v47;
      v42 = v49;
      goto LABEL_19;
    }

    v64 = v0[810];
    v65 = v2[16];
    __dst[0] = v2[15];
    __dst[1] = v65;
    LOBYTE(v70) = 8;

    CoreODILogger.fault(_:category:)(0xD000000000000044, 0x80000001DB0C4410, &v70);

    v23 = &qword_1ECC0E2F8;
    v24 = &qword_1DB0A0280;
    v22 = v64;
LABEL_15:
    sub_1DAF40AEC(v22, v23, v24);
    v25 = v0[811];
    v67 = v0[808];
    v26 = v0[807];
    v27 = v0[806];
    v28 = v0[805];
    v29 = sub_1DB09DA24();
    (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
    v31 = sub_1DAF96CC8(&qword_1EE301810, v30, type metadata accessor for ODNAtorProxy);
    v32 = swift_allocObject();
    v32[2] = v28;
    v32[3] = v31;
    v32[4] = v28;
    memcpy(v32 + 5, v0 + 2, 0x42CuLL);
    swift_retain_n();
    sub_1DAF96C2C((v0 + 2), (v0 + 136));
    v33 = sub_1DAF4F3EC(0, 0, v27, &unk_1DB0A6188, v32);
    v0[817] = v33;
    v34 = *(v26 + 48);
    *v25 = v33;
    v35 = type metadata accessor for ODNAssessmentResult();
    v0[818] = v35;
    v36 = *(v35 - 8);
    v37 = *(v36 + 56);
    v0[819] = v37;
    v0[820] = (v36 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v37(v25 + v34, 1, 1, v35);
    v0[821] = (v67 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v20(v25, 0, 1, v26);
    swift_beginAccess();
    sub_1DAF40898((v0 + 270), (v0 + 401));

    sub_1DAF34254(v25, v0 + 270);
    swift_endAccess();
    v38 = *(MEMORY[0x1E69E86C0] + 4);
    v39 = swift_task_alloc();
    v0[822] = v39;
    *v39 = v0;
    v39[1] = sub_1DAF90DDC;
    v40 = v0[803];
    v41 = v33;
    v42 = v35;
LABEL_19:

    return MEMORY[0x1EEE6DA40](v40, v41, v42);
  }

  v53 = v0[813];
  v54 = v0[810];
  v55 = v0[803];
  sub_1DAF407D4((v0 + 270));
  sub_1DAF94928(v44 + v48, v55, type metadata accessor for ODNAssessmentResult);
  v56 = v2[16];
  __dst[0] = v2[15];
  __dst[1] = v56;
  LOBYTE(v70) = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000033, 0x80000001DB0C44B0, &v70);

  sub_1DAF40AEC(v54, &qword_1ECC0E2F8, &qword_1DB0A0280);
  sub_1DAF40AEC(v53, &qword_1ECC0E2F0, &qword_1DB0A0278);
  v57 = v0[813];
  v58 = v0[812];
  v59 = v0[811];
  v60 = v0[810];
  v61 = v0[809];
  v62 = v0[806];

  v63 = v0[1];

  return v63();
}

uint64_t sub_1DAF90BE0()
{
  v1 = *(*v0 + 6528);
  v2 = *(*v0 + 6440);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF90CF0, v2, 0);
}

uint64_t sub_1DAF90CF0()
{
  v1 = v0[815];
  v2 = v0[813];
  v3 = v0[810];

  sub_1DAF40AEC(v3, &qword_1ECC0E2F8, &qword_1DB0A0280);
  sub_1DAF40AEC(v2, &qword_1ECC0E2F0, &qword_1DB0A0278);
  v4 = v0[813];
  v5 = v0[812];
  v6 = v0[811];
  v7 = v0[810];
  v8 = v0[809];
  v9 = v0[806];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DAF90DDC()
{
  v1 = *(*v0 + 6576);
  v2 = *(*v0 + 6440);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF90EEC, v2, 0);
}

uint64_t sub_1DAF90EEC()
{
  v1 = v0[821];
  v2 = v0[820];
  v3 = v0[819];
  v4 = v0[818];
  v5 = v0[814];
  v19 = v0[817];
  v20 = v0[813];
  v6 = v0[811];
  v7 = v0[807];
  v8 = v0[805];
  v9 = v0[803];
  v10 = *(v7 + 48);
  *v6 = 0;
  sub_1DAF96C64(v9, &v6[v10]);
  v3(&v6[v10], 0, 1, v4);
  v5(v6, 0, 1, v7);
  swift_beginAccess();
  sub_1DAF34254(v6, v0 + 270);
  swift_endAccess();

  sub_1DAF40AEC(v20, &qword_1ECC0E2F0, &qword_1DB0A0278);
  v11 = v0[813];
  v12 = v0[812];
  v13 = v0[811];
  v14 = v0[810];
  v15 = v0[809];
  v16 = v0[806];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1DAF91060(uint64_t a1, int a2, int a3, int a4, void *__src)
{
  memcpy((v5 + 16), __src, 0x42CuLL);
  v7 = swift_task_alloc();
  *(v5 + 1088) = v7;
  *v7 = v5;
  v7[1] = sub_1DAF91110;

  return sub_1DAF8F2AC(a1, v5 + 16);
}

uint64_t sub_1DAF91110()
{
  v1 = *(*v0 + 1088);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DAF91204(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 65) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAF91234, v5, 0);
}

uint64_t sub_1DAF91234()
{
  v1 = *(*(v0 + 48) + 112);
  *(v0 + 64) = *(v0 + 65);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1DAF912E4;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_1DAFC1AF8(v6, (v0 + 64), v5, v3, v4);
}

uint64_t sub_1DAF912E4()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *ODNAtorProxy.deinit()
{
  v1 = v0[14];

  v2 = v0[16];

  v3 = v0[18];

  sub_1DAF949F0((v0 + 19));
  v4 = v0[26];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ODNAtorProxy.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[16];

  v3 = v0[18];

  sub_1DAF949F0((v0 + 19));
  v4 = v0[26];

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t AssessmentOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v1);
  return sub_1DB09E3E4();
}

uint64_t AssessmentTiming.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1DB09DF34();
  v2 = type metadata accessor for AssessmentTiming();
  v3 = a1 + v2[5];
  sub_1DB09DF34();
  v4 = v2[6];
  v5 = sub_1DB09DF64();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a1 + v4, 1, 1, v5);
  v8(a1 + v2[7], 1, 1, v5);
  v8(a1 + v2[8], 1, 1, v5);
  v8(a1 + v2[9], 1, 1, v5);
  v8(a1 + v2[10], 1, 1, v5);
  v6 = a1 + v2[11];

  return (v8)(v6, 1, 1, v5);
}

BOOL AssessmentTiming.hasReceivedFeedback.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AssessmentTiming();
  sub_1DAF40A84(v0 + *(v6 + 36), v5, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v7 = sub_1DB09DF64();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1DAF40AEC(v5, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  return v8;
}

Swift::Void __swiftcall AssessmentTiming.profileFetched()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v8 - v4;
  sub_1DB09DF34();
  v6 = sub_1DB09DF64();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = type metadata accessor for AssessmentTiming();
  sub_1DAF94A90(v5, v0 + *(v7 + 40));
}

Swift::Void __swiftcall AssessmentTiming.attributesUpdated()()
{
  v1 = sub_1DB09DF64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB09DF34();
  v7 = type metadata accessor for AssessmentTiming();
  (*(v2 + 40))(v0 + v7[5], v6, v1);
  v8 = v7[7];
  sub_1DAF40AEC(v0 + v8, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v9 = *(v2 + 56);
  v9(v0 + v8, 1, 1, v1);
  v10 = v7[6];
  sub_1DAF40AEC(v0 + v10, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v9(v0 + v10, 1, 1, v1);
  v11 = v7[8];
  sub_1DAF40AEC(v0 + v11, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v9(v0 + v11, 1, 1, v1);
  v12 = v7[9];
  sub_1DAF40AEC(v0 + v12, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v9(v0 + v12, 1, 1, v1);
}

uint64_t AssessmentTiming.assessmentReady(at:)(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AssessmentTiming() + 28);

  return sub_1DAF94B00(a1, v3);
}

Swift::Void __swiftcall AssessmentTiming.assesmentRequested()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v11 - v4;
  sub_1DB09DF34();
  v6 = sub_1DB09DF64();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = type metadata accessor for AssessmentTiming();
  sub_1DAF94A90(v5, v0 + v8[6]);
  v9 = v8[8];
  sub_1DAF40AEC(v0 + v9, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v7((v0 + v9), 1, 1, v6);
  v10 = v8[9];
  sub_1DAF40AEC(v0 + v10, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v7((v0 + v10), 1, 1, v6);
}

Swift::Void __swiftcall AssessmentTiming.assessmentReturned()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v8 - v4;
  sub_1DB09DF34();
  v6 = sub_1DB09DF64();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = type metadata accessor for AssessmentTiming();
  sub_1DAF94A90(v5, v0 + *(v7 + 32));
}

Swift::Void __swiftcall AssessmentTiming.feedbackReceived()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v8 - v4;
  sub_1DB09DF34();
  v6 = sub_1DB09DF64();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = type metadata accessor for AssessmentTiming();
  sub_1DAF94A90(v5, v0 + v7[9]);
  sub_1DAF94B00(v0 + v7[7], v0 + v7[11]);
}

double AssessmentTiming.profileFetchDuration.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v17 - v4;
  v6 = sub_1DB09DF64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AssessmentTiming();
  sub_1DAF40A84(v0 + *(v12 + 40), v5, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1DAF40AEC(v5, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
    sub_1DB09DF54();
    v14 = sub_1DB09E444();
    v16 = v15;
    (*(v7 + 8))(v11, v6);
    return v16 / 1.0e18 + v14;
  }

  return result;
}

double AssessmentTiming.updateToAssessmentDuration.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v18 - v4;
  v6 = sub_1DB09DF64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AssessmentTiming();
  sub_1DAF40A84(v0 + *(v12 + 28), v5, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1DAF40AEC(v5, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
    v14 = v0 + *(v12 + 20);
    sub_1DB09DF54();
    v15 = sub_1DB09E444();
    v17 = v16;
    (*(v7 + 8))(v11, v6);
    return v17 / 1.0e18 + v15;
  }

  return result;
}

double AssessmentTiming.updateToFeedbackDuration.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v18 - v4;
  v6 = sub_1DB09DF64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AssessmentTiming();
  sub_1DAF40A84(v0 + *(v12 + 36), v5, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1DAF40AEC(v5, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
    v14 = v0 + *(v12 + 20);
    sub_1DB09DF54();
    v15 = sub_1DB09E444();
    v17 = v16;
    (*(v7 + 8))(v11, v6);
    return v17 / 1.0e18 + v15;
  }

  return result;
}

double AssessmentTiming.assessmentReadyBeforeFeedbackDuration.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v31 - v8;
  v10 = sub_1DB09DF64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v31 - v18;
  v20 = type metadata accessor for AssessmentTiming();
  sub_1DAF40A84(v0 + *(v20 + 28), v9, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v21 = *(v11 + 48);
  if (v21(v9, 1, v10) == 1)
  {
    v22 = v9;
LABEL_5:
    sub_1DAF40AEC(v22, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
    return result;
  }

  v32 = v16;
  v23 = v9;
  v24 = *(v11 + 32);
  v24(v19, v23, v10);
  sub_1DAF40A84(v0 + *(v20 + 36), v6, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if (v21(v6, 1, v10) == 1)
  {
    (*(v11 + 8))(v19, v10);
    v22 = v6;
    goto LABEL_5;
  }

  v26 = v32;
  v24(v32, v6, v10);
  sub_1DB09DF54();
  v27 = sub_1DB09E444();
  v29 = v28;
  v30 = *(v11 + 8);
  v30(v26, v10);
  v30(v19, v10);
  return v29 / 1.0e18 + v27;
}

double AssessmentTiming.requestToReturnDuration.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v31 - v8;
  v10 = sub_1DB09DF64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v31 - v18;
  v20 = type metadata accessor for AssessmentTiming();
  sub_1DAF40A84(v0 + *(v20 + 32), v9, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v21 = *(v11 + 48);
  if (v21(v9, 1, v10) == 1)
  {
    v22 = v9;
LABEL_5:
    sub_1DAF40AEC(v22, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
    return result;
  }

  v32 = v16;
  v23 = v9;
  v24 = *(v11 + 32);
  v24(v19, v23, v10);
  sub_1DAF40A84(v0 + *(v20 + 24), v6, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if (v21(v6, 1, v10) == 1)
  {
    (*(v11 + 8))(v19, v10);
    v22 = v6;
    goto LABEL_5;
  }

  v26 = v32;
  v24(v32, v6, v10);
  sub_1DB09DF54();
  v27 = sub_1DB09E444();
  v29 = v28;
  v30 = *(v11 + 8);
  v30(v26, v10);
  v30(v19, v10);
  return v29 / 1.0e18 + v27;
}

double AssessmentTiming.timeSinceLastUpdate.getter()
{
  v0 = sub_1DB09DF64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for AssessmentTiming() + 20);
  sub_1DB09DF34();
  sub_1DB09DF54();
  v7 = sub_1DB09E444();
  v9 = v8;
  (*(v1 + 8))(v5, v0);
  return v9 / 1.0e18 + v7;
}

uint64_t static AssessmentTiming.lastUpdateTimesEqual(lhs:rhs:)()
{
  v0 = *(type metadata accessor for AssessmentTiming() + 20);

  return sub_1DB09DF44();
}

BOOL AssessmentTiming.assessmentHasBeenRequested.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AssessmentTiming();
  sub_1DAF40A84(v0 + *(v6 + 24), v5, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v7 = sub_1DB09DF64();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1DAF40AEC(v5, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  return v8;
}

BOOL AssessmentTiming.assessmentHasBeenReturned.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AssessmentTiming();
  sub_1DAF40A84(v0 + *(v6 + 32), v5, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v7 = sub_1DB09DF64();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1DAF40AEC(v5, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  return v8;
}

uint64_t AssessmentTiming.feedbackHasBeenReceivedForAssessmentWithCurrentTime.getter()
{
  v1 = sub_1DB09DF64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7F0, &qword_1DB0A5B98);
  v6 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34, v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v32 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v31 - v16;
  v18 = type metadata accessor for AssessmentTiming();
  v19 = *(v18 + 28);
  v35 = v0;
  sub_1DAF40A84(v0 + v19, v17, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v33 = v2;
  v20 = *(v2 + 48);
  v36 = v1;
  LODWORD(v1) = v20(v17, 1, v1);
  sub_1DAF40AEC(v17, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if (v1 != 1)
  {
    v22 = *(v18 + 44);
    v23 = v35;
    v24 = *(v34 + 48);
    sub_1DAF40A84(v35 + v22, v9, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
    sub_1DAF40A84(v23 + v19, &v9[v24], &qword_1ECC0E6A8, &qword_1DB0A3CB0);
    v25 = v36;
    if (v20(v9, 1, v36) == 1)
    {
      if (v20(&v9[v24], 1, v25) == 1)
      {
        sub_1DAF40AEC(v9, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
        v21 = 1;
        return v21 & 1;
      }
    }

    else
    {
      v26 = v32;
      sub_1DAF40A84(v9, v32, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
      if (v20(&v9[v24], 1, v25) != 1)
      {
        v27 = v33;
        v28 = v31;
        (*(v33 + 32))(v31, &v9[v24], v25);
        sub_1DAF96CC8(&qword_1ECC0E7F8, 255, MEMORY[0x1E69E87E8]);
        v21 = sub_1DB09D6A4();
        v29 = *(v27 + 8);
        v29(v28, v25);
        v29(v26, v25);
        sub_1DAF40AEC(v9, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
        return v21 & 1;
      }

      (*(v33 + 8))(v26, v25);
    }

    sub_1DAF40AEC(v9, &qword_1ECC0E7F0, &qword_1DB0A5B98);
    v21 = 0;
    return v21 & 1;
  }

  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1DAF92FC8()
{

  v0 = sub_1DB09D7D4();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_1DB09D7D4();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_1DB09E254();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_1DB09D7D4();
      v3 = v5;
    }

    while (v5);
  }

  sub_1DB09D7D4();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void *sub_1DAF93124(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v36 = &type metadata for ASDPersistenceCommand;
  v37 = &protocol witness table for ASDPersistenceCommand;
  v8 = type metadata accessor for DIPAssessmentStaticWebService();
  v33 = v8;
  v34 = &off_1F56C4838;
  *&v32 = a3;
  swift_defaultActor_initialize();
  a4[27] = 45;
  a4[28] = 0xE100000000000000;
  a4[29] = 0;
  sub_1DAF3523C(&v32, v30);
  v9 = v31;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v10);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v29[3] = v8;
  v29[4] = &off_1F56C4838;
  v29[0] = v15;
  type metadata accessor for ServerTimeSeedProvider();
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v29, v8);
  v18 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v17);
  v20 = (&v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v27 = v8;
  v28 = &off_1F56C4838;
  *&v26 = v22;

  swift_defaultActor_initialize();
  v23 = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 176) = v23;
  *(v16 + 184) = 0;
  *(v16 + 192) = 0;
  *(v16 + 200) = 45;
  *(v16 + 208) = 0xE100000000000000;
  sub_1DAF332B8(&v26, v16 + 112);
  *(v16 + 152) = a1;
  *(v16 + 160) = a2;
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  a4[26] = v16;
  sub_1DAF332B8(&v32, (a4 + 14));
  sub_1DAF332B8(&v35, (a4 + 21));
  a4[19] = a1;
  a4[20] = a2;
  return a4;
}

BOOL sub_1DAF93398(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v9 = v2;
  v27[130] = v6;
  v27[131] = v4;
  if ((*(v3 + 1042) & 1) != 0 && (*(v2 + 1042) & 1) == 0)
  {
    LOBYTE(v32[0]) = 13;

    CoreODILogger.debug(_:category:)(0xD00000000000003BLL, 0x80000001DB0C4640, v32);
    goto LABEL_19;
  }

  v10 = *(v2 + 1043);
  v11 = *(v3 + 1043);
  if (v10 != v11)
  {
    if (!*(v2 + 1043))
    {
      return 1;
    }

    if (v10 == 1 && v11 == 2)
    {
      return 1;
    }
  }

  v30 = *v2;
  v29 = *v3;
  v32[0] = v30;
  v31[0] = v29;

  sub_1DAF8BC6C(&v30, v28);
  sub_1DAF8BC6C(&v29, v28);
  v13 = ODIBindingsDict.isSubset(of:)(v31);

  if (!v13)
  {
    v32[0] = 0;
    v32[1] = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000041, 0x80000001DB0C44F0);
    v31[0] = v30;
    sub_1DB09DF94();
    MEMORY[0x1E127FE90](0x736575716552202ELL, 0xED0000203A646574);
    v31[0] = v29;
    sub_1DB09DF94();
    v18 = v32[0];
    v19 = v32[1];
    if (qword_1EE300A68 != -1)
    {
      swift_once();
    }

    v20 = sub_1DB09D4B4();
    v21 = __swift_project_value_buffer(v20, qword_1EE309E50);

    sub_1DB0163B8(v21, v7, v5, v18, v19);

    swift_bridgeObjectRelease_n();
    goto LABEL_19;
  }

  memcpy(__dst, (v9 + 8), 0x40AuLL);
  memcpy(v27, (v9 + 8), 0x40AuLL);
  if (sub_1DAF40964(v27) != 1)
  {
    memcpy(v28, (v8 + 8), 0x40AuLL);
    memcpy(v31, (v8 + 8), 0x40AuLL);
    if (sub_1DAF40964(v31) != 1)
    {
      memcpy(v32, v31, 0x40AuLL);
      memcpy(v25, v27, 0x40AuLL);
      memcpy(v24, v31, 0x40AuLL);
      sub_1DAF40A84(v28, &v23, &qword_1ECC0E318, &qword_1DB0A02A0);
      sub_1DAF40A84(__dst, &v23, &qword_1ECC0E318, &qword_1DB0A02A0);
      if ((_s17CoreODIEssentials16ArmandDeviceDataV2eeoiySbAC_ACtFZ_0(v25, v24) & 1) == 0)
      {
        memcpy(v25, v27, 0x40AuLL);
        memcpy(v24, v32, 0x40AuLL);
        v17 = _s17CoreODIEssentials16ArmandDeviceDataV21isLessCompleteOrEqual3lhs2toSbAC_ACtFZ_0(v25, v24);
        v25[0] = 13;
        CoreODILogger.debug(_:category:)(0xD000000000000037, 0x80000001DB0C45B0, v25);
        sub_1DAF40AEC(v28, &qword_1ECC0E318, &qword_1DB0A02A0);
        sub_1DAF40AEC(__dst, &qword_1ECC0E318, &qword_1DB0A02A0);

        return v17;
      }

      v25[0] = 13;
      CoreODILogger.debug(_:category:)(0xD00000000000001ELL, 0x80000001DB0C45F0, v25);
      sub_1DAF40AEC(v28, &qword_1ECC0E318, &qword_1DB0A02A0);
      sub_1DAF40AEC(__dst, &qword_1ECC0E318, &qword_1DB0A02A0);
      goto LABEL_13;
    }

    memcpy(v25, v27, 0x40AuLL);
    memcpy(v32, __dst, 0x40AuLL);
    sub_1DAF96A98(v32, v24);
    if ((ArmandDeviceData.hasValidData.getter() & 1) == 0)
    {
      sub_1DAF40AEC(__dst, &qword_1ECC0E318, &qword_1DB0A02A0);
      v25[0] = 13;
      v14 = 0xD00000000000001FLL;
      v15 = 0x80000001DB0C4540;
      v16 = v25;
      goto LABEL_12;
    }

    v25[0] = 13;
    CoreODILogger.debug(_:category:)(0xD000000000000042, 0x80000001DB0C4560, v25);
    sub_1DAF40AEC(__dst, &qword_1ECC0E318, &qword_1DB0A02A0);
LABEL_19:

    return 0;
  }

  LOBYTE(v32[0]) = 13;
  v14 = 0xD000000000000026;
  v15 = 0x80000001DB0C4610;
  v16 = v32;
LABEL_12:
  CoreODILogger.debug(_:category:)(v14, v15, v16);
LABEL_13:

  return 1;
}

uint64_t sub_1DAF93990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v76 = a7;
  v82 = a5;
  v77 = a4;
  v78 = a3;
  v79 = a1;
  v80 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v81 = &v75 - v14;
  v15 = sub_1DB09D1D4();
  v75 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ODNAssessmentsFactory();
  v87[3] = v21;
  v87[4] = &off_1F56CC998;
  v87[0] = a6;
  type metadata accessor for ODNAssessmentsManager();
  v22 = swift_allocObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v87, v21);
  v24 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23, v23);
  v26 = (&v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;
  v86[3] = v21;
  v86[4] = &off_1F56CC998;
  v86[0] = v28;
  swift_defaultActor_initialize();
  sub_1DB09D1C4();
  v29 = sub_1DB09D174();
  v31 = v30;
  v32 = *(v16 + 8);
  v32(v20, v15);
  *(v22 + 112) = v29;
  *(v22 + 120) = v31;
  *(v22 + 256) = 0u;
  *(v22 + 272) = 0u;
  *(v22 + 288) = 0u;
  *(v22 + 304) = 0u;
  *(v22 + 320) = 0u;
  *(v22 + 336) = 0u;
  *(v22 + 352) = 0u;
  *(v22 + 368) = 0u;
  *(v22 + 384) = 0;
  *(v22 + 392) = MEMORY[0x1E69E7CC0];
  sub_1DAF3523C(v86, v22 + 128);
  v33 = a8;
  *(v22 + 168) = a8;
  *(v22 + 176) = a9;
  v34 = objc_allocWithZone(type metadata accessor for DIPAssessmentWebService());
  v35 = &v34[OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_ORD_ENDPOINT];
  *v35 = 0x726F5F646E65732FLL;
  *(v35 + 1) = 0xE900000000000064;
  v36 = &v34[OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT];
  *v36 = 0x746F5F646E65732FLL;
  *(v36 + 1) = 0xE900000000000064;
  swift_bridgeObjectRetain_n();

  *(v22 + 248) = sub_1DAFBF408(v29, v31, 257, v33, a9, v34, 60.0);

  sub_1DB09D1C4();
  v37 = sub_1DB09D174();
  v39 = v38;
  v32(v20, v75);
  v40 = type metadata accessor for DIPAssessmentStaticWebService();
  v41 = objc_allocWithZone(v40);
  v41[OBJC_IVAR____TtC17CoreODIEssentials29DIPAssessmentStaticWebService_serverRepo] = v76;
  v41[OBJC_IVAR____TtC17CoreODIEssentials29DIPAssessmentStaticWebService_mode] = 0;
  v42 = sub_1DAFBF408(v37, v39, 0x10000, v33, a9, v41, 10.0);
  *(v22 + 184) = v42;
  *(&v97[1] + 1) = v40;
  *&v97[2] = &off_1F56C4838;
  *&v97[0] = v42;
  type metadata accessor for ProfileManager();
  v43 = swift_allocObject();
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v97, v40);
  v45 = *(*(v40 - 1) + 64);
  MEMORY[0x1EEE9AC00](v44, v44);
  v47 = (&v75 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47);
  v49 = *v47;
  v50 = v42;
  v51 = v77;

  v52 = v78;
  v53 = sub_1DAF93124(v78, v51, v49, v43);
  __swift_destroy_boxed_opaque_existential_1Tm(v97);
  v54 = sub_1DAF96CC8(&qword_1EE3014F8, 255, type metadata accessor for ProfileManager);
  *(v22 + 192) = v53;
  *(v22 + 200) = v54;
  sub_1DAF96D10(&v88);
  v97[6] = v94;
  v97[7] = v95;
  v97[2] = v90;
  v97[3] = v91;
  v97[4] = v92;
  v97[5] = v93;
  v97[0] = v88;
  v97[1] = v89;
  v98[6] = v94;
  v98[7] = v95;
  v98[2] = v90;
  v98[3] = v91;
  v98[4] = v92;
  v98[5] = v93;
  *&v97[8] = v96;
  *&v98[8] = v96;
  v98[0] = v88;
  v98[1] = v89;

  v55 = MEMORY[0x1E69E7CC0];
  v56 = sub_1DAF3DFCC(MEMORY[0x1E69E7CC0]);
  v57 = sub_1DAF96D2C();
  v58 = v80;
  *(v22 + 400) = v79;
  *(v22 + 408) = v58;
  *(v22 + 416) = v52;
  *(v22 + 424) = v51;
  *(v22 + 432) = v52;
  *(v22 + 440) = v51;
  *(v22 + 472) = &type metadata for EmptyProfileIdentifiers;
  *(v22 + 480) = v57;
  v59 = v97[7];
  *(v22 + 584) = v97[6];
  *(v22 + 600) = v59;
  *(v22 + 616) = *&v97[8];
  v60 = v97[3];
  *(v22 + 520) = v97[2];
  *(v22 + 536) = v60;
  v61 = v97[5];
  *(v22 + 552) = v97[4];
  *(v22 + 568) = v61;
  v62 = v97[1];
  *(v22 + 488) = v97[0];
  *(v22 + 504) = v62;
  *(v22 + 704) = 0;
  *(v22 + 672) = 0u;
  *(v22 + 688) = 0u;
  *(v22 + 640) = 0u;
  *(v22 + 656) = 0u;
  *(v22 + 624) = 0u;
  *(v22 + 712) = 0xF000000000000000;
  v63 = v98[7];
  *(v22 + 816) = v98[6];
  *(v22 + 832) = v63;
  *(v22 + 848) = *&v98[8];
  v64 = v98[3];
  *(v22 + 752) = v98[2];
  *(v22 + 768) = v64;
  v65 = v98[5];
  *(v22 + 784) = v98[4];
  *(v22 + 800) = v65;
  v66 = v98[1];
  *(v22 + 720) = v98[0];
  *(v22 + 736) = v66;
  *(v22 + 936) = 0;
  *(v22 + 904) = 0u;
  *(v22 + 920) = 0u;
  *(v22 + 872) = 0u;
  *(v22 + 888) = 0u;
  *(v22 + 856) = 0u;
  *(v22 + 944) = 0xF000000000000000;
  *(v22 + 952) = 2;
  *(v22 + 960) = v56;
  *(v22 + 968) = 0;
  *(v22 + 976) = 0xF000000000000000;
  *(v22 + 984) = 0;
  v67 = *(v22 + 248);
  v84 = &type metadata for CoreODILogger;
  v85 = &protocol witness table for CoreODILogger;
  *&v83 = v33;
  *(&v83 + 1) = a9;
  v68 = type metadata accessor for ODNAssessmentsFeedbackManager();
  v69 = swift_allocObject();

  v70 = v67;
  swift_defaultActor_initialize();
  *(v69 + 112) = 0;
  *(v69 + 120) = 0u;
  *(v69 + 136) = 0u;
  sub_1DAF96D80(v97);
  memcpy((v69 + 152), v97, 0x170uLL);
  sub_1DAF96DB8(v98);
  memcpy((v69 + 520), v98, 0x111uLL);
  *(v69 + 800) = sub_1DAF3EB04(v55);
  *(v69 + 808) = MEMORY[0x1E69E7CD0];
  sub_1DAF332B8(&v83, v69 + 824);
  *(v69 + 816) = v70;
  v84 = v68;
  v85 = &off_1F56CE068;

  *&v83 = v69;
  sub_1DAF332B8(&v83, v22 + 208);
  v71 = sub_1DB09DA24();
  v72 = v81;
  (*(*(v71 - 8) + 56))(v81, 1, 1, v71);
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *(v73 + 24) = 0;
  *(v73 + 32) = v22;
  *(v73 + 40) = v82;

  sub_1DAF4F0EC(0, 0, v72, &unk_1DB0A6190, v73);

  __swift_destroy_boxed_opaque_existential_1Tm(v86);
  __swift_destroy_boxed_opaque_existential_1Tm(v87);
  return v22;
}

uint64_t _s17CoreODIEssentials12ODNAtorProxyC15isEqualBindings3lhs3rhsSbSH_s8Sendablep_SH_sAGptFZ_0(void *a1, void *a2)
{
  sub_1DAF3523C(a1, v43);
  sub_1DAF3523C(a2, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      if (*&v41 == *&v37 && v42 == v38)
      {
        v4 = 1;
      }

      else
      {
        v4 = sub_1DB09E254();
      }

      goto LABEL_24;
    }
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v5 = *&v41 == *&v37;
    goto LABEL_13;
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v5 = v41 == v37;
LABEL_13:
    v4 = v5;
    goto LABEL_24;
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v4 = LOBYTE(v41) ^ LOBYTE(v37) ^ 1;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    return v4 & 1;
  }

  sub_1DAF4062C(0, &qword_1ECC0E810, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    v6 = v40;
    if (swift_dynamicCast())
    {
      v7 = v39;
      v41 = 4.7668852e180;
      v42 = 0xEF726567676F4C64;
      v37 = 0.0;
      v38 = 0xE000000000000000;
      sub_1DB09DE44();
      MEMORY[0x1E127FE90](0xD000000000000026, 0x80000001DB0C4750);
      v8 = [v40 description];
      v9 = sub_1DB09D6C4();
      v11 = v10;

      MEMORY[0x1E127FE90](v9, v11);

      MEMORY[0x1E127FE90](40, 0xE100000000000000);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      swift_getDynamicType();
      v12 = sub_1DB09E474();
      MEMORY[0x1E127FE90](v12);

      MEMORY[0x1E127FE90](8233, 0xE200000000000000);
      v13 = [v39 description];
      v14 = sub_1DB09D6C4();
      v16 = v15;

      MEMORY[0x1E127FE90](v14, v16);

      MEMORY[0x1E127FE90](40, 0xE100000000000000);
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      swift_getDynamicType();
      v17 = sub_1DB09E474();
      MEMORY[0x1E127FE90](v17);

      MEMORY[0x1E127FE90](41, 0xE100000000000000);
      LOBYTE(v37) = 6;
      CoreODILogger.debug(_:category:)(0, 0xE000000000000000, &v37);

      sub_1DAF4062C(0, &qword_1ECC0E828, 0x1E69E58C0);
      v4 = sub_1DB09DC34();

      goto LABEL_24;
    }
  }

  sub_1DAF4062C(0, &qword_1ECC0E818, 0x1E695DFB0);
  if (swift_dynamicCast() && (*&v41, swift_dynamicCast()))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    v4 = 1;
  }

  else
  {
    sub_1DB09DE44();

    v41 = -2.31584178e77;
    v42 = 0x80000001DB0C4730;
    v19 = a1[3];
    v20 = __swift_project_boxed_opaque_existential_1(a1, v19);
    v21 = *(*(v19 - 8) + 64);
    MEMORY[0x1EEE9AC00](v20, v20);
    (*(v23 + 16))(&v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = sub_1DB09D744();
    MEMORY[0x1E127FE90](v24);

    MEMORY[0x1E127FE90](40, 0xE100000000000000);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v25 = sub_1DB09E474();
    MEMORY[0x1E127FE90](v25);

    MEMORY[0x1E127FE90](8233, 0xE200000000000000);
    v26 = a2[3];
    v27 = __swift_project_boxed_opaque_existential_1(a2, v26);
    v28 = *(*(v26 - 8) + 64);
    MEMORY[0x1EEE9AC00](v27, v27);
    (*(v30 + 16))(&v37 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = sub_1DB09D744();
    MEMORY[0x1E127FE90](v31);

    MEMORY[0x1E127FE90](40, 0xE100000000000000);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    swift_getDynamicType();
    v32 = sub_1DB09E474();
    MEMORY[0x1E127FE90](v32);

    MEMORY[0x1E127FE90](41, 0xE100000000000000);
    v34 = v41;
    v33 = v42;
    if (qword_1EE3019D0 != -1)
    {
      swift_once();
    }

    v35 = sub_1DB09D4B4();
    v36 = __swift_project_value_buffer(v35, qword_1EE30A0C8);

    sub_1DB0163B8(v36, 0x657261685369646FLL, 0xEF726567676F4C64, *&v34, v33);
    swift_bridgeObjectRelease_n();
    sub_1DAF40AEC(v43, &qword_1ECC0E820, &qword_1DB0A6198);
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1DAF94928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAF94990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for AssessmentTiming()
{
  result = qword_1EE3014D0;
  if (!qword_1EE3014D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAF94A90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF94B00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF94B70(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v5 = v2;
  v7 = v2 + 1;
  v6 = *v2;
  memcpy(v21, v2 + 1, 0x40AuLL);
  v8 = *(v5 + 1042);
  v10 = (v4 + 8);
  v9 = *v4;
  memcpy(v22, (v4 + 8), 0x40AuLL);
  if (v8 != *(v4 + 1042))
  {
    return 0;
  }

  memcpy(v19, v7, 0x40AuLL);
  memcpy(&v19[130], v10, 0x40AuLL);
  memcpy(v20, v7, 0x40AuLL);
  if (sub_1DAF40964(v20) != 1)
  {
    memcpy(v18, v7, 0x40AuLL);
    memcpy(__dst, v7, 0x40AuLL);
    memcpy(v17, v10, 0x40AuLL);
    if (sub_1DAF40964(v17) != 1)
    {
      memcpy(__src, v10, 0x40AuLL);
      sub_1DAF40A84(v21, v14, &qword_1ECC0E318, &qword_1DB0A02A0);
      sub_1DAF40A84(v22, v14, &qword_1ECC0E318, &qword_1DB0A02A0);
      sub_1DAF40A84(v18, v14, &qword_1ECC0E318, &qword_1DB0A02A0);
      v11 = _s17CoreODIEssentials16ArmandDeviceDataV2eeoiySbAC_ACtFZ_0(__dst, __src);
      memcpy(v13, __src, 0x40AuLL);
      sub_1DAF40988(v13);
      memcpy(v14, __dst, 0x40AuLL);
      sub_1DAF40988(v14);
      memcpy(__src, v7, 0x40AuLL);
      sub_1DAF40AEC(__src, &qword_1ECC0E318, &qword_1DB0A02A0);
      if ((v11 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    memcpy(__src, v7, 0x40AuLL);
    sub_1DAF40A84(v21, v14, &qword_1ECC0E318, &qword_1DB0A02A0);
    sub_1DAF40A84(v22, v14, &qword_1ECC0E318, &qword_1DB0A02A0);
    sub_1DAF40A84(v18, v14, &qword_1ECC0E318, &qword_1DB0A02A0);
    sub_1DAF40988(__src);
LABEL_8:
    memcpy(v17, v19, 0x81AuLL);
    sub_1DAF40AEC(v17, &qword_1ECC0E320, &qword_1DB0A02A8);
    return 0;
  }

  memcpy(v17, v10, 0x40AuLL);
  if (sub_1DAF40964(v17) != 1)
  {
    sub_1DAF40A84(v21, v18, &qword_1ECC0E318, &qword_1DB0A02A0);
    sub_1DAF40A84(v22, v18, &qword_1ECC0E318, &qword_1DB0A02A0);
    goto LABEL_8;
  }

  memcpy(v18, v7, 0x40AuLL);
  sub_1DAF40A84(v21, __dst, &qword_1ECC0E318, &qword_1DB0A02A0);
  sub_1DAF40A84(v22, __dst, &qword_1ECC0E318, &qword_1DB0A02A0);
  sub_1DAF40AEC(v18, &qword_1ECC0E318, &qword_1DB0A02A0);
LABEL_10:
  if (sub_1DAF8CE60(v6, v9))
  {
    v19[0] = v6;
    v17[0] = v9;
    if (ODIBindingsDict.isSubset(of:)(v17))
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s17CoreODIEssentials16AssessmentTimingV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB09DF64();
  v143 = *(v4 - 8);
  v5 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v14 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v137 = &v127 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v127 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v140 = &v127 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v142 = &v127 - v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v127 - v29;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7F0, &qword_1DB0A5B98);
  v31 = *(*(v144 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v144, v32);
  v35 = &v127 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v33, v36);
  v138 = &v127 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v139 = &v127 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v141 = &v127 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v48 = &v127 - v47;
  MEMORY[0x1EEE9AC00](v46, v49);
  v51 = &v127 - v50;
  if ((sub_1DB09DF44() & 1) == 0)
  {
    return 0;
  }

  v135 = v21;
  v52 = type metadata accessor for AssessmentTiming();
  v53 = *(v52 + 20);
  if ((sub_1DB09DF44() & 1) == 0)
  {
    return 0;
  }

  v130 = v35;
  v131 = a1;
  v133 = v8;
  v134 = v52;
  v54 = *(v52 + 24);
  v55 = *(v144 + 48);
  v136 = v4;
  sub_1DAF40A84(a1 + v54, v51, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v132 = a2;
  v56 = v143;
  v57 = v136;
  sub_1DAF40A84(a2 + v54, &v51[v55], &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v58 = v56 + 48;
  v59 = *(v56 + 48);
  if (v59(v51, 1, v57) == 1)
  {
    if (v59(&v51[v55], 1, v57) == 1)
    {
      v129 = v14;
      sub_1DAF40AEC(v51, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
      goto LABEL_10;
    }

LABEL_8:
    v60 = v51;
LABEL_28:
    sub_1DAF40AEC(v60, &qword_1ECC0E7F0, &qword_1DB0A5B98);
    return 0;
  }

  sub_1DAF40A84(v51, v30, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if (v59(&v51[v55], 1, v57) == 1)
  {
    (*(v56 + 8))(v30, v57);
    goto LABEL_8;
  }

  v129 = v14;
  v61 = v133;
  (*(v56 + 32))(v133, &v51[v55], v57);
  sub_1DAF96CC8(&qword_1ECC0E7F8, 255, MEMORY[0x1E69E87E8]);
  v62 = v56;
  v63 = sub_1DB09D6A4();
  v64 = *(v62 + 8);
  v64(v61, v57);
  v64(v30, v57);
  sub_1DAF40AEC(v51, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if ((v63 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v65 = v134;
  v66 = v134[7];
  v67 = *(v144 + 48);
  v68 = v131;
  sub_1DAF40A84(v131 + v66, v48, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v69 = v132;
  v70 = v136;
  sub_1DAF40A84(v132 + v66, &v48[v67], &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if (v59(v48, 1, v70) == 1)
  {
    if (v59(&v48[v67], 1, v70) == 1)
    {
      v128 = v59;
      sub_1DAF40AEC(v48, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
      goto LABEL_17;
    }

LABEL_15:
    v60 = v48;
    goto LABEL_28;
  }

  v71 = v142;
  sub_1DAF40A84(v48, v142, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v72 = v59(&v48[v67], 1, v70);
  v73 = v143;
  if (v72 == 1)
  {
    (*(v143 + 8))(v71, v70);
    goto LABEL_15;
  }

  v128 = v59;
  v74 = v133;
  (*(v143 + 32))(v133, &v48[v67], v70);
  sub_1DAF96CC8(&qword_1ECC0E7F8, 255, MEMORY[0x1E69E87E8]);
  v75 = v68;
  v76 = v69;
  v77 = v71;
  v78 = v73;
  v79 = sub_1DB09D6A4();
  v80 = *(v78 + 8);
  v81 = v74;
  v65 = v134;
  v80(v81, v70);
  v82 = v77;
  v69 = v76;
  v68 = v75;
  v80(v82, v70);
  sub_1DAF40AEC(v48, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if ((v79 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v83 = v65[8];
  v84 = *(v144 + 48);
  v85 = v141;
  sub_1DAF40A84(v68 + v83, v141, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v86 = v136;
  sub_1DAF40A84(v69 + v83, v85 + v84, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v87 = v128;
  if (v128(v85, 1, v86) == 1)
  {
    if (v87(v85 + v84, 1, v86) != 1)
    {
      goto LABEL_27;
    }

    sub_1DAF40AEC(v85, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  }

  else
  {
    v88 = v140;
    sub_1DAF40A84(v85, v140, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
    v89 = v87(v85 + v84, 1, v86);
    v90 = v143;
    if (v89 == 1)
    {
      goto LABEL_26;
    }

    v91 = v133;
    (*(v143 + 32))(v133, v85 + v84, v86);
    sub_1DAF96CC8(&qword_1ECC0E7F8, 255, MEMORY[0x1E69E87E8]);
    v92 = v90;
    v93 = sub_1DB09D6A4();
    v94 = *(v92 + 8);
    v95 = v91;
    v65 = v134;
    v94(v95, v86);
    v94(v88, v86);
    sub_1DAF40AEC(v85, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
    if ((v93 & 1) == 0)
    {
      return 0;
    }
  }

  v96 = v65[9];
  v97 = *(v144 + 48);
  v142 = v58;
  v85 = v139;
  sub_1DAF40A84(v68 + v96, v139, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  sub_1DAF40A84(v69 + v96, v85 + v97, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v98 = v128;
  if (v128(v85, 1, v86) == 1)
  {
    v99 = v98(v85 + v97, 1, v86);
    v90 = v143;
    if (v99 == 1)
    {
      sub_1DAF40AEC(v85, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
      goto LABEL_31;
    }

LABEL_27:
    v60 = v85;
    goto LABEL_28;
  }

  v88 = v135;
  sub_1DAF40A84(v85, v135, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v100 = v98(v85 + v97, 1, v86);
  v90 = v143;
  if (v100 == 1)
  {
LABEL_26:
    (*(v90 + 8))(v88, v86);
    goto LABEL_27;
  }

  v102 = v133;
  (*(v143 + 32))(v133, v85 + v97, v86);
  sub_1DAF96CC8(&qword_1ECC0E7F8, 255, MEMORY[0x1E69E87E8]);
  v103 = sub_1DB09D6A4();
  v104 = *(v90 + 8);
  v104(v102, v86);
  v104(v88, v86);
  sub_1DAF40AEC(v85, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if ((v103 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v105 = v134[10];
  v106 = *(v144 + 48);
  v48 = v138;
  sub_1DAF40A84(v68 + v105, v138, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  sub_1DAF40A84(v69 + v105, &v48[v106], &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v107 = v128;
  if (v128(v48, 1, v86) == 1)
  {
    if (v107(&v48[v106], 1, v86) == 1)
    {
      sub_1DAF40AEC(v48, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
      goto LABEL_37;
    }

    goto LABEL_15;
  }

  v108 = v137;
  sub_1DAF40A84(v48, v137, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v109 = v107(&v48[v106], 1, v86);
  v110 = v133;
  if (v109 == 1)
  {
    (*(v90 + 8))(v108, v86);
    goto LABEL_15;
  }

  (*(v90 + 32))(v133, &v48[v106], v86);
  sub_1DAF96CC8(&qword_1ECC0E7F8, 255, MEMORY[0x1E69E87E8]);
  v111 = v108;
  v112 = sub_1DB09D6A4();
  v113 = v110;
  v114 = *(v90 + 8);
  v114(v113, v86);
  v114(v111, v86);
  sub_1DAF40AEC(v48, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if ((v112 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  v115 = v134[11];
  v116 = *(v144 + 48);
  v117 = v130;
  sub_1DAF40A84(v68 + v115, v130, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v118 = v117;
  sub_1DAF40A84(v69 + v115, v117 + v116, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v119 = v128;
  if (v128(v117, 1, v86) != 1)
  {
    v120 = v117;
    v121 = v129;
    sub_1DAF40A84(v120, v129, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
    if (v119(v118 + v116, 1, v86) == 1)
    {
      (*(v90 + 8))(v121, v86);
      goto LABEL_42;
    }

    v122 = v118 + v116;
    v123 = v118;
    v124 = v133;
    (*(v90 + 32))(v133, v122, v86);
    sub_1DAF96CC8(&qword_1ECC0E7F8, 255, MEMORY[0x1E69E87E8]);
    v125 = sub_1DB09D6A4();
    v126 = *(v90 + 8);
    v126(v124, v86);
    v126(v121, v86);
    sub_1DAF40AEC(v123, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
    return (v125 & 1) != 0;
  }

  if (v119(v117 + v116, 1, v86) != 1)
  {
LABEL_42:
    v60 = v118;
    goto LABEL_28;
  }

  sub_1DAF40AEC(v117, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  return 1;
}

unint64_t sub_1DAF95DA4()
{
  result = qword_1EE3014E8;
  if (!qword_1EE3014E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3014E8);
  }

  return result;
}

unint64_t sub_1DAF95DFC()
{
  result = qword_1ECC0E800;
  if (!qword_1ECC0E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E800);
  }

  return result;
}

uint64_t sub_1DAF95E50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1DAF95E98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComputationContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials16ArmandDeviceDataVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DAF95FD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1068))
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

uint64_t sub_1DAF9601C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 1064) = 0;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1068) = 1;
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

    *(result + 1068) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of ODNAtorProxy.getAugmentedProfile()(uint64_t a1)
{
  v4 = *(*v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAF63DEC;

  return v8(a1);
}

uint64_t dispatch thunk of ODNAtorProxy.conversationID()()
{
  v2 = *(*v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DAF96444;

  return v6();
}

uint64_t sub_1DAF96444(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of ODNAtorProxy.getOutputPayload(getAssessmentsParameters:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DAF62CC4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ODNAtorProxy.sendODNResults(assessmentTiming:outcome:partialAssessmentStates:sessionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 208);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1DAF63DEC;

  return v16(a1, a2, a3, a4, a5);
}

void sub_1DAF967FC()
{
  sub_1DB09DF64();
  if (v0 <= 0x3F)
  {
    sub_1DAF70108();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DAF96894(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1044))
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

uint64_t sub_1DAF968DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1032) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 1040) = 0;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1044) = 1;
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

    *(result + 1044) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAF96A44()
{
  result = qword_1EE300EC8;
  if (!qword_1EE300EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300EC8);
  }

  return result;
}

uint64_t sub_1DAF96B6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF62CC4;

  return sub_1DAF91060(a1, v4, v5, v6, v1 + 5);
}

uint64_t sub_1DAF96C64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODNAssessmentResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF96CC8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

double sub_1DAF96D10(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1DAF96D2C()
{
  result = qword_1ECC0E808;
  if (!qword_1ECC0E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E808);
  }

  return result;
}

double sub_1DAF96D80(_OWORD *a1)
{
  result = 0.0;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_1DAF96DB8(uint64_t a1)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1DAF96DE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF63DEC;

  return sub_1DAF79600(a1, v4, v5, v6, v7);
}

uint64_t sub_1DAF96EB0()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E830, &unk_1DB0A62A0);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF96F7C, 0, 0);
}

uint64_t sub_1DAF96F7C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = [objc_allocWithZone(MEMORY[0x1E69A4888]) initWithQueue_];
  v1[23] = v7;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1DAF97178;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_1DAF4062C(0, &qword_1ECC0E838, 0x1E69A4838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DAF97514;
  v1[13] = &block_descriptor_6;
  [v7 generatePhoneAuthenticationSignatureOverData:0 withCompletion:?];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1DAF97178()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1DAF97498;
  }

  else
  {
    v3 = sub_1DAF97288;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

char *sub_1DAF97288()
{
  v1 = v0[18];
  v2 = [v1 authenticationCertificateSignatures];
  sub_1DAF4062C(0, &qword_1ECC0E840, 0x1E69A51C8);
  v3 = sub_1DB09D934();

  if (v3 >> 62)
  {
    v4 = sub_1DB09DD44();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    v18 = v0[23];

    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v23 = MEMORY[0x1E69E7CC0];
  result = sub_1DAF5F4FC(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    return result;
  }

  v21 = v1;
  v22 = v0;
  v6 = 0;
  v7 = v23;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E1280530](v6, v3);
    }

    else
    {
      v8 = *(v3 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = [v8 serverVerifiableEncoding];
    v11 = sub_1DB09D6C4();
    v13 = v12;

    v15 = *(v23 + 16);
    v14 = *(v23 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1DAF5F4FC((v14 > 1), v15 + 1, 1);
    }

    ++v6;
    *(v23 + 16) = v15 + 1;
    v16 = v23 + 16 * v15;
    *(v16 + 32) = v11;
    *(v16 + 40) = v13;
  }

  while (v4 != v6);
  v0 = v22;
  v17 = v22[23];

LABEL_14:
  v19 = v0[22];

  v20 = v0[1];

  return v20(v7);
}

uint64_t sub_1DAF97498()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[24];

  return v4();
}

void sub_1DAF97514(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E830, &unk_1DB0A62A0);
    sub_1DB09D9A4();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E830, &unk_1DB0A62A0);
    sub_1DB09D9B4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DAF975E8()
{
  v0 = sub_1DB09DBB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DB09DBA4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v9 = sub_1DB09D4F4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  sub_1DAF4062C(0, &qword_1EE3018E0, 0x1E69E9610);
  sub_1DB09D4E4();
  v15[1] = MEMORY[0x1E69E7CC0];
  sub_1DAF988FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EEB0, &unk_1DB0A4ED0);
  sub_1DAF98954();
  sub_1DB09DCF4();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E8090], v0);
  v12 = sub_1DB09DBE4();
  v13 = v15[0];
  *(v15[0] + 16) = v12;
  return v13;
}

uint64_t sub_1DAF97808()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF97898;

  return sub_1DAF96EB0();
}

uint64_t sub_1DAF97898(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1DAF979B8()
{
  v1 = v0[2];
  if (v1[19])
  {
    v9 = v0[1];

    return v9(v2);
  }

  else
  {
    v4 = v1[17];
    v5 = v1[18];
    __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
    v6 = *(v5 + 8);
    v10 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[3] = v8;
    *v8 = v0;
    v8[1] = sub_1DAF97B2C;

    return v10(v4, v5);
  }
}

uint64_t sub_1DAF97B2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  v7 = *(v3 + 16);
  if (v1)
  {
    v8 = sub_1DAF97E08;
  }

  else
  {
    v8 = sub_1DAF97C60;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DAF97C60()
{
  v1 = v0[4];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = *(v2 + 152);
    *(v2 + 152) = v1;

    v4 = v0[4];
    v5 = v0[1];

    return v5(v4);
  }

  else
  {

    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v7 = sub_1DB09D4B4();
    __swift_project_value_buffer(v7, qword_1EE30A128);
    v8 = sub_1DB09D494();
    v9 = sub_1DB09DB74();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DAF16000, v8, v9, "No PAC to process", v10, 2u);
      MEMORY[0x1E1281810](v10, -1, -1);
    }

    sub_1DAF98854();
    swift_allocError();
    *v11 = 4;
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1DAF97E08()
{
  v1 = *(v0 + 40);
  v2 = sub_1DB09CE64();
  v3 = sub_1DAF97FDC(v2);
  sub_1DAF98854();
  swift_allocError();
  *v4 = v3;
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DAF97EBC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  v1 = *(v0 + 152);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAF97F20()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF98B60;

  return sub_1DAF97998();
}

uint64_t sub_1DAF97FDC(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_1DB09D6C4();
  v5 = v4;

  v6 = *MEMORY[0x1E69A4778];
  if (v3 == sub_1DB09D6C4() && v5 == v7)
  {
  }

  else
  {
    v9 = sub_1DB09E254();

    if ((v9 & 1) == 0)
    {
      if (qword_1EE301DC0 != -1)
      {
        swift_once();
      }

      v10 = sub_1DB09D4B4();
      __swift_project_value_buffer(v10, qword_1EE30A128);
      v11 = a1;
      v12 = sub_1DB09D494();
      v13 = sub_1DB09DB74();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v70[0] = v15;
        *v14 = 136315394;
        v16 = [v11 domain];
        v17 = sub_1DB09D6C4();
        v19 = v18;

        v20 = sub_1DB015E84(v17, v19, v70);

        *(v14 + 4) = v20;
        *(v14 + 12) = 2048;
        v21 = [v11 code];

        *(v14 + 14) = v21;
        _os_log_impl(&dword_1DAF16000, v12, v13, "Unexpected PAC domain: %s, with error code: %ld", v14, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x1E1281810](v15, -1, -1);
        MEMORY[0x1E1281810](v14, -1, -1);
      }

      else
      {
      }

      return 1;
    }
  }

  v22 = [a1 userInfo];
  v23 = sub_1DB09D624();

  v24 = *MEMORY[0x1E696AA08];
  v25 = sub_1DB09D6C4();
  if (!*(v23 + 16))
  {

    goto LABEL_16;
  }

  v27 = sub_1DAF35210(v25, v26);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  sub_1DAF409DC(*(v23 + 56) + 32 * v27, v70);

  sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v30 = v69;
    goto LABEL_18;
  }

LABEL_17:
  v30 = 0;
LABEL_18:
  v31 = [a1 code];
  if (v30)
  {
    v32 = [v30 domain];
    v33 = sub_1DB09D6C4();
    v35 = v34;

    v36 = [v30 code];
    if (v31 <= -1101)
    {
LABEL_20:
      switch(v31)
      {
        case -4000:

          return 7;
        case -3000:

          return 8;
        case -2000:

          return 9;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v36 = 0;
    v33 = 0;
    v35 = 0;
    if (v31 <= -1101)
    {
      goto LABEL_20;
    }
  }

  switch(v31)
  {
    case -1100:

      return 11;
    case -1000:
      if (!v35)
      {
        v58 = *MEMORY[0x1E69A5038];
        sub_1DB09D6C4();

        return 2;
      }

      if (v33 == 0xD00000000000001FLL && 0x80000001DB0C4890 == v35)
      {
        if (!v30 || v36 != -1000)
        {
          if (!v30)
          {
LABEL_58:
            v63 = v36;
            v64 = *MEMORY[0x1E69A5038];
            if (sub_1DB09D6C4() == v33 && v35 == v65)
            {

              if (!v30)
              {
                return 2;
              }
            }

            else
            {
              v66 = sub_1DB09E254();

              if ((v66 & 1) == 0 || !v30)
              {
                return 2;
              }
            }

            if (v63 == 3)
            {
              return 3;
            }

            return 2;
          }

LABEL_56:
          if (v36 == -5000)
          {

            return 6;
          }

          goto LABEL_58;
        }
      }

      else
      {
        v59 = v36;
        if ((sub_1DB09E254() & 1) == 0 || !v30 || v59 != -1000)
        {
          v62 = sub_1DB09E254();
          v36 = v59;
          if ((v62 & (v30 != 0)) != 1)
          {
            goto LABEL_58;
          }

          goto LABEL_56;
        }
      }

      return 5;
    case -900:

      return 10;
  }

LABEL_33:

  if (qword_1EE301DC0 != -1)
  {
    swift_once();
  }

  v38 = sub_1DB09D4B4();
  __swift_project_value_buffer(v38, qword_1EE30A128);
  v39 = v30;
  v40 = a1;
  v41 = sub_1DB09D494();
  v42 = sub_1DB09DB74();

  if (os_log_type_enabled(v41, v42))
  {
    v68 = v42;
    v43 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v70[0] = v67;
    *v43 = 136315906;
    v44 = [v40 domain];
    v45 = sub_1DB09D6C4();
    v47 = v46;

    v48 = sub_1DB015E84(v45, v47, v70);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2048;
    v49 = [v40 code];

    *(v43 + 14) = v49;
    *(v43 + 22) = 2080;
    if (v30)
    {
      v50 = [v39 domain];
      v51 = sub_1DB09D6C4();
      v53 = v52;

      v54 = sub_1DB015E84(v51, v53, v70);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2080;
      [v39 code];
      sub_1DAF988A8();
      v55 = sub_1DB09DCD4();
      v57 = v56;
    }

    else
    {
      v57 = 0xE300000000000000;
      v60 = sub_1DB015E84(7104878, 0xE300000000000000, v70);

      v55 = 7104878;
      *(v43 + 24) = v60;
      *(v43 + 32) = 2080;
    }

    v61 = sub_1DB015E84(v55, v57, v70);

    *(v43 + 34) = v61;
    _os_log_impl(&dword_1DAF16000, v41, v68, "Unexpected PAC domain: %s, with error code: %ld, and underlying error domain: %s with underlying error code: %s", v43, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E1281810](v67, -1, -1);
    MEMORY[0x1E1281810](v43, -1, -1);

    return 0;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1DAF98854()
{
  result = qword_1ECC0E848;
  if (!qword_1ECC0E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E848);
  }

  return result;
}

unint64_t sub_1DAF988A8()
{
  result = qword_1EE301978;
  if (!qword_1EE301978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301978);
  }

  return result;
}

unint64_t sub_1DAF988FC()
{
  result = qword_1EE3018F0;
  if (!qword_1EE3018F0)
  {
    sub_1DB09DBA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3018F0);
  }

  return result;
}

unint64_t sub_1DAF98954()
{
  result = qword_1EE301918;
  if (!qword_1EE301918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0EEB0, &unk_1DB0A4ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301918);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODIServerRepo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ODIServerRepo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAF98B0C()
{
  result = qword_1ECC0E850;
  if (!qword_1ECC0E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E850);
  }

  return result;
}

uint64_t sub_1DAF98B64()
{
  v1 = 0x656D697464;
  v2 = 0x656D697473;
  if (*v0 != 2)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v2 = 1684955506;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DAF98BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAF9BA0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAF98BF0(uint64_t a1)
{
  v2 = sub_1DAF9C074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAF98C2C(uint64_t a1)
{
  v2 = sub_1DAF9C074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAF98C80()
{
  if (*v0 > 2u)
  {
    *v0;
  }

  *v0;
  sub_1DB09D794();
}

uint64_t sub_1DAF98DB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAF9BB6C();
  *a2 = result;
  return result;
}

void sub_1DAF98DE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEB0000000064695FLL;
    v9 = 0xD000000000000010;
    v10 = 0x80000001DB0C13C0;
    if (v2 != 1)
    {
      v9 = 0xD000000000000033;
      v10 = 0x80000001DB0C13E0;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0x776F6C666B726F77;
    }

    if (!v11)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001DB0C1460;
    v4 = 0xD000000000000017;
    if (v2 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x80000001DB0C1480;
    }

    v5 = 0x80000001DB0C1420;
    v6 = 0xD000000000000026;
    if (v2 != 3)
    {
      v6 = 0x5F64616F6C796170;
      v5 = 0xEE006572756E6574;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_1DAF98EEC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000010;
    if (v1 != 1)
    {
      v5 = 0xD000000000000033;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x776F6C666B726F77;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 == 5)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000026;
    if (v1 != 3)
    {
      v3 = 0x5F64616F6C796170;
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

uint64_t sub_1DAF98FE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAF9BB6C();
  *a1 = result;
  return result;
}

uint64_t sub_1DAF99010(uint64_t a1)
{
  v2 = sub_1DAF9C130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAF9904C(uint64_t a1)
{
  v2 = sub_1DAF9C130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAF99088(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E868, &qword_1DB0A6630);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF9C074();
  sub_1DB09E434();
  v12 = *v3;
  v13 = v3[1];
  v21[15] = 0;
  sub_1DB09E154();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  v14 = v3[2];
  v15 = v3[3];
  v21[14] = 1;
  sub_1DB09E154();
  v16 = v3[4];
  v17 = v3[5];
  v21[13] = 2;
  sub_1DB09E154();
  v19 = v3[6];
  v20 = v3[7];
  v21[12] = 3;
  sub_1DB09E154();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1DAF99248(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E898, &qword_1DB0A6648);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v18 - v7;
  v9 = v1[1];
  v22 = *v1;
  v35 = *(v1 + 16);
  v21 = v1[3];
  v20 = *(v1 + 32);
  v10 = v1[5];
  v18[2] = v1[6];
  v19 = v10;
  v11 = v1[8];
  v18[0] = v1[7];
  v18[1] = v11;
  v12 = *(v1 + 11);
  v13 = *(v1 + 15);
  v32 = *(v1 + 13);
  v33 = v13;
  v34 = *(v1 + 17);
  v30 = *(v1 + 9);
  v31 = v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF9C130();
  sub_1DB09E434();
  LOBYTE(v25) = 0;
  v15 = v23;
  sub_1DB09E154();
  if (!v15)
  {
    v16 = v19;
    LOBYTE(v25) = 1;
    sub_1DB09E164();
    LOBYTE(v25) = 2;
    sub_1DB09E134();
    *&v25 = v16;
    LOBYTE(v24[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E880, &qword_1DB0A6640);
    sub_1DAF9C240(&qword_1EE300F28);
    sub_1DB09E144();
    LOBYTE(v25) = 4;
    sub_1DB09E184();
    LOBYTE(v25) = 5;
    sub_1DB09E104();
    v27 = v32;
    v28 = v33;
    v29 = v34;
    v25 = v30;
    v26 = v31;
    v36 = 6;
    sub_1DAF40A84(&v30, v24, &qword_1ECC0E8A0, &qword_1DB0A6650);
    sub_1DAF9C290();
    sub_1DB09E144();
    v24[2] = v27;
    v24[3] = v28;
    v24[4] = v29;
    v24[0] = v25;
    v24[1] = v26;
    sub_1DAF40AEC(v24, &qword_1ECC0E8A0, &qword_1DB0A6650);
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1DAF9959C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E870, &qword_1DB0A6638);
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v39, v7);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF9C130();
  v70 = v9;
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11 = v5;
  LOBYTE(v45[0]) = 0;
  v12 = v39;
  v13 = sub_1DB09E084();
  v15 = v14;
  v38 = v13;
  LOBYTE(v45[0]) = 1;
  v37 = sub_1DB09E094();
  LOBYTE(v45[0]) = 2;
  v16 = a1;
  v17 = sub_1DB09E064();
  v69 = v18 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E880, &qword_1DB0A6640);
  LOBYTE(v40) = 3;
  sub_1DAF9C240(&qword_1ECC0E888);
  sub_1DB09E074();
  v36 = v45[0];
  LOBYTE(v45[0]) = 4;
  v34 = sub_1DB09E0B4();
  LOBYTE(v45[0]) = 5;
  v33 = sub_1DB09E044();
  v35 = v19;
  v58 = 6;
  sub_1DAF9C184();
  sub_1DB09E074();
  v37 &= 1u;
  (*(v11 + 8))(v70, v12);
  v66 = v61;
  v67 = v62;
  v68 = v63;
  v64 = v59;
  v65 = v60;
  *&v40 = v38;
  *(&v40 + 1) = v15;
  LOBYTE(v41) = v37;
  v32 = v17;
  *(&v41 + 1) = v17;
  LODWORD(v70) = v69;
  LOBYTE(v42) = v69;
  v20 = v35;
  v22 = v33;
  v21 = v34;
  *(&v42 + 1) = v36;
  *&v43 = v34;
  *(&v43 + 1) = v33;
  *v44 = v35;
  *&v44[8] = v59;
  *&v44[24] = v60;
  *&v44[72] = v63;
  *&v44[40] = v61;
  *&v44[56] = v62;
  v23 = v41;
  *a2 = v40;
  *(a2 + 16) = v23;
  v24 = v42;
  v25 = v43;
  v26 = *&v44[16];
  *(a2 + 64) = *v44;
  *(a2 + 80) = v26;
  *(a2 + 32) = v24;
  *(a2 + 48) = v25;
  v27 = *&v44[32];
  v28 = *&v44[48];
  v29 = *&v44[64];
  *(a2 + 144) = *&v44[80];
  *(a2 + 112) = v28;
  *(a2 + 128) = v29;
  *(a2 + 96) = v27;
  sub_1DAF9C1D8(&v40, v45);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  v54 = v65;
  v55 = v66;
  v56 = v67;
  v57 = v68;
  v45[0] = v38;
  v45[1] = v15;
  v46 = v37;
  v47 = v32;
  v48 = v70;
  v49 = v36;
  v50 = v21;
  v51 = v22;
  v52 = v20;
  v53 = v64;
  return sub_1DAF9C210(v45);
}

uint64_t sub_1DAF99A58(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E8E8, &qword_1DB0A6670);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = v1[1];
  v54 = *v1;
  v55 = v7;
  v8 = v1[3];
  v56 = v1[2];
  v57 = v8;
  v9 = *(v1 + 8);
  v29 = *(v1 + 9);
  v30 = v9;
  v10 = *(v1 + 10);
  v27 = *(v1 + 11);
  v28 = v10;
  v11 = v1[13];
  v64 = v1[12];
  v65 = v11;
  v66 = v1[14];
  v67 = *(v1 + 30);
  v12 = v1[9];
  v60 = v1[8];
  v61 = v12;
  v13 = v1[11];
  v62 = v1[10];
  v63 = v13;
  v14 = v1[7];
  v58 = v1[6];
  v59 = v14;
  v16 = *(v1 + 248);
  v15 = v1 + 248;
  v25 = *(v15 + 16);
  v26 = v16;
  v17 = *(v15 + 32);
  v18 = a1[3];
  v19 = a1[4];
  v20 = a1;
  v22 = &v25 - v21;
  __swift_project_boxed_opaque_existential_1(v20, v18);
  sub_1DAF40A84(&v54, &v38, &qword_1ECC0E8C8, &qword_1DB0A6660);
  sub_1DAF9C2E4();
  sub_1DB09E434();
  v50 = v54;
  v51 = v55;
  v52 = v56;
  v53 = v57;
  v49 = 0;
  sub_1DAF9C49C();
  v23 = v68;
  sub_1DB09E144();
  if (v23)
  {
    v38 = v50;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    sub_1DAF40AEC(&v38, &qword_1ECC0E8C8, &qword_1DB0A6660);
    return (*(v4 + 8))(v22, v3);
  }

  else
  {
    v48[0] = v50;
    v48[1] = v51;
    v48[2] = v52;
    v48[3] = v53;
    sub_1DAF40AEC(v48, &qword_1ECC0E8C8, &qword_1DB0A6660);
    LOBYTE(v38) = 1;
    sub_1DB09E104();
    LOBYTE(v38) = 2;
    sub_1DB09E104();
    v44 = v64;
    v45 = v65;
    v46 = v66;
    v47 = v67;
    v40 = v60;
    v41 = v61;
    v42 = v62;
    v43 = v63;
    v38 = v58;
    v39 = v59;
    v37 = 3;
    sub_1DAF40A84(&v58, v35, &qword_1ECC0E8D0, &qword_1DB0A6668);
    sub_1DAF9C4F0();
    sub_1DB09E144();
    v35[6] = v44;
    v35[7] = v45;
    v35[8] = v46;
    v36 = v47;
    v35[2] = v40;
    v35[3] = v41;
    v35[4] = v42;
    v35[5] = v43;
    v35[0] = v38;
    v35[1] = v39;
    sub_1DAF40AEC(v35, &qword_1ECC0E8D0, &qword_1DB0A6668);
    v33 = v25;
    v32 = v26;
    v34 = v17;
    v31 = 4;
    sub_1DAF9C544();
    sub_1DB09E144();
    return (*(v4 + 8))(v22, 0);
  }
}

uint64_t sub_1DAF99E60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E8B0, &qword_1DB0A6658);
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v29, v7);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF9C2E4();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11 = v5;
  v84 = 0;
  sub_1DAF9C338();
  sub_1DB09E074();
  v78 = v64;
  v79 = v65;
  v80 = v66;
  v81 = v67;
  LOBYTE(v31[0]) = 1;
  v12 = sub_1DB09E044();
  v28 = v13;
  v26 = v12;
  LOBYTE(v31[0]) = 2;
  v25 = sub_1DB09E044();
  v27 = v14;
  v83 = 3;
  sub_1DAF9C38C();
  v15 = v29;
  sub_1DB09E074();
  v74 = v60;
  v75 = v61;
  v76 = v62;
  v77 = v63;
  v70 = v56;
  v71 = v57;
  v72 = v58;
  v73 = v59;
  v68 = v54;
  v69 = v55;
  v82 = 4;
  sub_1DAF9C3E0();
  sub_1DB09E074();
  (*(v11 + 8))(v9, v15);
  v16 = v51;
  v29 = v52;
  v23 = v53;
  v24 = *(&v52 + 1);
  v22 = *(&v53 + 1);
  v30[0] = v78;
  v30[1] = v79;
  v30[2] = v80;
  v30[3] = v81;
  v18 = v25;
  v17 = v26;
  v20 = v27;
  v19 = v28;
  *&v30[4] = v26;
  *(&v30[4] + 1) = v28;
  *&v30[5] = v25;
  *(&v30[5] + 1) = v27;
  v30[13] = v75;
  v30[14] = v76;
  v30[11] = v73;
  v30[12] = v74;
  v30[9] = v71;
  v30[10] = v72;
  v30[7] = v69;
  v30[8] = v70;
  v30[6] = v68;
  *&v30[15] = v77;
  *(&v30[15] + 1) = v51;
  v30[16] = v52;
  v30[17] = v53;
  memcpy(a2, v30, 0x120uLL);
  sub_1DAF9C434(v30, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v31[0] = v78;
  v31[1] = v79;
  v31[2] = v80;
  v31[3] = v81;
  v32 = v17;
  v33 = v19;
  v34 = v18;
  v35 = v20;
  v42 = v74;
  v43 = v75;
  v44 = v76;
  v38 = v70;
  v39 = v71;
  v40 = v72;
  v41 = v73;
  v36 = v68;
  v37 = v69;
  v45 = v77;
  v46 = v16;
  v47 = v29;
  v48 = v24;
  v49 = v23;
  v50 = v22;
  return sub_1DAF9C46C(v31);
}

uint64_t sub_1DAF9A384()
{
  v1 = *v0;
  v2 = 0x7364656573;
  v3 = 0x656D737365737361;
  v4 = 0x6E6F697469646461;
  if (v1 != 3)
  {
    v4 = 0x666E49726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x49656C69666F7270;
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

uint64_t sub_1DAF9A43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAF9BBB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAF9A464(uint64_t a1)
{
  v2 = sub_1DAF9C2E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAF9A4A0(uint64_t a1)
{
  v2 = sub_1DAF9C2E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DAF9A4DC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DAF9BD80(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

void *sub_1DAF9A598(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E900, &unk_1DB0A6678);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v46 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DAF9C598();
  sub_1DB09E414();
  if (v2)
  {
LABEL_20:
    type metadata accessor for AMPCristalPayloadData();
    swift_deallocPartialClassInstance();
    goto LABEL_21;
  }

  v48 = v6;
  LOBYTE(v50[0]) = 0;
  v13 = sub_1DB09E084();
  v46 = v5;
  v47 = v3;
  *&v49[0] = v13;
  *(&v49[0] + 1) = v14;
  v53 = 45;
  v54 = 0xE100000000000000;
  v51 = 43;
  v52 = 0xE100000000000000;
  sub_1DAF9C5EC();
  v15 = sub_1DB09DCA4();
  v17 = v16;

  *&v49[0] = v15;
  *(&v49[0] + 1) = v17;
  v53 = 95;
  v54 = 0xE100000000000000;
  v51 = 47;
  v52 = 0xE100000000000000;
  v18 = sub_1DB09DCA4();
  v20 = v19;

  *&v50[0] = v18;
  *(&v50[0] + 1) = v20;

  LOBYTE(v17) = sub_1DB09D7A4();

  if ((v17 & 3) != 0)
  {
    if ((sub_1DB09D7A4() & 3) != 0)
    {
      sub_1DB09D7A4();
      v21 = sub_1DB09D844();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0xE000000000000000;
    }

    MEMORY[0x1E127FE90](v21, v23);
  }

  v24 = sub_1DB09CFA4();
  v26 = v25;
  sub_1DAF4ED88(v24, v25);

  if (v26 >> 60 == 15)
  {
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v27 = MEMORY[0x1E69E7CC0];
    v28 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v28 + 16))
    {
      v29 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v30)
      {
        sub_1DAF409DC(*(v28 + 56) + 32 * v29, v50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v27 = *&v49[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1DAF72FF4(0, *(v27 + 2) + 1, 1, v27);
    }

    v32 = *(v27 + 2);
    v31 = *(v27 + 3);
    if (v32 >= v31 >> 1)
    {
      v27 = sub_1DAF72FF4((v31 > 1), v32 + 1, 1, v27);
    }

    *(v27 + 2) = v32 + 1;
    v33 = &v27[56 * v32];
    *(v33 + 4) = 0xD000000000000028;
    *(v33 + 5) = 0x80000001DB0C4900;
    *(v33 + 6) = 0xD00000000000002ELL;
    *(v33 + 7) = 0x80000001DB0C4930;
    *(v33 + 8) = 0x6F72662874696E69;
    *(v33 + 9) = 0xEB00000000293A6DLL;
    *(v33 + 10) = 78;
    *(&v50[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v50[0] = v27;
    sub_1DAF40D20(v50, v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v28;
    sub_1DAF3B11C(v49, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v35 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v36 = sub_1DB09D6B4();
    v37 = sub_1DB09D604();
    [v35 initWithDomain:v36 code:-1 userInfo:v37];

    swift_willThrow();
    (*(v48 + 8))(v10, v46);
    v3 = v47;
    goto LABEL_20;
  }

  sub_1DAF4AC40(v24, v26);
  v38 = sub_1DB09CC24();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  sub_1DB09CC14();
  sub_1DAF9C640();
  sub_1DB09CC04();
  v3 = v47;

  memcpy(v3 + 2, v50, 0x120uLL);
  LOBYTE(v53) = 1;
  v41 = v46;
  v43 = sub_1DB09E084();
  v45 = v44;
  (*(v48 + 8))(v10, v41);
  sub_1DAF4AC40(v24, v26);
  v3[38] = v43;
  v3[39] = v45;
LABEL_21:
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  return v3;
}

uint64_t sub_1DAF9AC94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x656D737365737361;
  }

  if (v3)
  {
    v5 = 0xEA0000000000746ELL;
  }

  else
  {
    v5 = 0x80000001DB0C14B0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x656D737365737361;
  }

  if (*a2)
  {
    v7 = 0x80000001DB0C14B0;
  }

  else
  {
    v7 = 0xEA0000000000746ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB09E254();
  }

  return v9 & 1;
}

uint64_t sub_1DAF9AD44()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAF9ADD0()
{
  *v0;
  sub_1DB09D794();
}

uint64_t sub_1DAF9AE48()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAF9AED0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB09E004();

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

void sub_1DAF9AF30(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DB0C14B0;
  v3 = 0x656D737365737361;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEA0000000000746ELL;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1DAF9AF78()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x656D737365737361;
  }

  *v0;
  return result;
}

uint64_t sub_1DAF9AFBC@<X0>(char *a1@<X8>)
{
  v2 = sub_1DB09E004();

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

uint64_t sub_1DAF9B020(uint64_t a1)
{
  v2 = sub_1DAF9C598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAF9B05C(uint64_t a1)
{
  v2 = sub_1DAF9C598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DAF9B098(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E918, &qword_1DB0A6688);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v57[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF9C598();
  sub_1DB09E434();
  v12 = v3[38];
  v13 = v3[39];
  v61 = 1;
  sub_1DB09E154();
  if (!v2)
  {
    v14 = sub_1DB09CC54();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_1DB09CC44();
    memcpy(v60, v3 + 2, sizeof(v60));
    memcpy(v59, v3 + 2, sizeof(v59));
    sub_1DAF9C434(v60, v58);
    sub_1DAF9C694();
    v41 = sub_1DB09CC34();
    v43 = v42;
    memcpy(v58, v59, sizeof(v58));
    sub_1DAF9C46C(v58);

    sub_1DB09D014();
    sub_1DAF40780(v41, v43);
    v57[15] = 0;
    sub_1DB09E154();
    (*(v6 + 8))(v10, v5);

    return;
  }

  (*(v6 + 8))(v10, v5);
  v17 = v2;
  if (qword_1EE300B90 != -1)
  {
    swift_once();
  }

  v18 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v19 = v2;
  v20 = sub_1DB09CE64();
  v21 = [v20 domain];
  v22 = sub_1DB09D6C4();
  v24 = v23;

  if (v22 == 0x726F727245504944 && v24 == 0xE800000000000000)
  {
    goto LABEL_16;
  }

  v26 = sub_1DB09E254();

  if (v26)
  {
    goto LABEL_17;
  }

  v27 = [v20 domain];
  v28 = sub_1DB09D6C4();
  v30 = v29;

  if (v28 == 0x726F72724549444FLL && v30 == 0xE800000000000000)
  {
LABEL_16:

    goto LABEL_17;
  }

  v32 = sub_1DB09E254();

  if ((v32 & 1) == 0)
  {
    v33 = *MEMORY[0x1E696AA08];
    v34 = sub_1DB09D6C4();
    v36 = v35;
    *(&v60[1] + 1) = sub_1DAF4D7A4();
    *&v60[0] = v20;
    sub_1DAF40D20(v60, v59);
    v37 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58[0] = v18;
    sub_1DAF3B11C(v59, v34, v36, isUniquelyReferenced_nonNull_native);

    v39 = v58[0];
    v40 = 85;
    goto LABEL_21;
  }

LABEL_17:
  DIPErrorCode.init(rawValue:)([v20 code]);
  if (LOWORD(v60[0]) == 462)
  {
    v44 = 85;
  }

  else
  {
    v44 = v60[0];
  }

  v45 = [v20 userInfo];
  v39 = sub_1DB09D624();

  v40 = v44;
LABEL_21:
  v62 = v40;
  if (*(v39 + 16) && (v46 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v47 & 1) != 0) && (sub_1DAF409DC(*(v39 + 56) + 32 * v46, v60), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
  {
    v48 = *&v59[0];
  }

  else
  {
    v48 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v48 = sub_1DAF72FF4(0, *(v48 + 2) + 1, 1, v48);
  }

  v50 = *(v48 + 2);
  v49 = *(v48 + 3);
  if (v50 >= v49 >> 1)
  {
    v48 = sub_1DAF72FF4((v49 > 1), v50 + 1, 1, v48);
  }

  *(v48 + 2) = v50 + 1;
  v51 = &v48[56 * v50];
  *(v51 + 4) = 0xD000000000000046;
  *(v51 + 5) = 0x80000001DB0C4960;
  *(v51 + 6) = 0xD00000000000002ELL;
  *(v51 + 7) = 0x80000001DB0C4930;
  *(v51 + 8) = 0x742865646F636E65;
  *(v51 + 9) = 0xEB00000000293A6FLL;
  *(v51 + 10) = 104;
  *(&v60[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
  *&v60[0] = v48;
  sub_1DAF40D20(v60, v59);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v58[0] = v39;
  sub_1DAF3B11C(v59, 0x636F766E49504944, 0xEE00736E6F697461, v52);
  v53 = qword_1DB0A6C00[v62];
  v54 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v55 = sub_1DB09D6B4();
  v56 = sub_1DB09D604();
  [v54 initWithDomain:v55 code:v53 userInfo:v56];

  swift_willThrow();
}

uint64_t sub_1DAF9B804()
{
  memcpy(v3, (v0 + 16), sizeof(v3));
  sub_1DAF9C46C(v3);
  v1 = *(v0 + 312);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAF9B884(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 288))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DAF9B8E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 288) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1DAF9B990@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AMPCristalPayloadData();
  v5 = swift_allocObject();
  result = sub_1DAF9A598(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1DAF9BA0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D697473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684955506 && a2 == 0xE400000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D697464 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DAF9BB6C()
{
  v0 = sub_1DB09E004();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAF9BBB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7364656573 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49656C69666F7270 && a2 == 0xE900000000000064 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xEA0000000000746ELL || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697469646461 && a2 == 0xEE006F666E496C61 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x666E49726F727265 && a2 == 0xE90000000000006FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DAF9BD80@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E858, &qword_1DB0A6628);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF9C074();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v35[0]) = 0;
  v12 = sub_1DB09E084();
  v30 = v13;
  LOBYTE(v35[0]) = 1;
  v14 = sub_1DB09E084();
  v29 = v15;
  v27 = v14;
  LOBYTE(v35[0]) = 2;
  v26 = sub_1DB09E084();
  v28 = v16;
  v36 = 3;
  v17 = sub_1DB09E084();
  v19 = v18;
  (*(v6 + 8))(v10, v5);
  v20 = v30;
  *&v31 = v12;
  *(&v31 + 1) = v30;
  v22 = v27;
  v21 = v28;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  *&v33 = v26;
  *(&v33 + 1) = v28;
  *&v34 = v17;
  *(&v34 + 1) = v19;
  sub_1DAF9C0C8(&v31, v35);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v35[0] = v12;
  v35[1] = v20;
  v35[2] = v22;
  v35[3] = v29;
  v35[4] = v26;
  v35[5] = v21;
  v35[6] = v17;
  v35[7] = v19;
  result = sub_1DAF9C100(v35);
  v24 = v32;
  *a2 = v31;
  a2[1] = v24;
  v25 = v34;
  a2[2] = v33;
  a2[3] = v25;
  return result;
}

unint64_t sub_1DAF9C074()
{
  result = qword_1ECC0E860;
  if (!qword_1ECC0E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E860);
  }

  return result;
}

unint64_t sub_1DAF9C130()
{
  result = qword_1ECC0E878;
  if (!qword_1ECC0E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E878);
  }

  return result;
}

unint64_t sub_1DAF9C184()
{
  result = qword_1ECC0E890;
  if (!qword_1ECC0E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E890);
  }

  return result;
}

uint64_t sub_1DAF9C240(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E880, &qword_1DB0A6640);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAF9C290()
{
  result = qword_1ECC0E8A8;
  if (!qword_1ECC0E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E8A8);
  }

  return result;
}

unint64_t sub_1DAF9C2E4()
{
  result = qword_1ECC0E8B8;
  if (!qword_1ECC0E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E8B8);
  }

  return result;
}

unint64_t sub_1DAF9C338()
{
  result = qword_1ECC0E8C0;
  if (!qword_1ECC0E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E8C0);
  }

  return result;
}

unint64_t sub_1DAF9C38C()
{
  result = qword_1ECC0E8D8;
  if (!qword_1ECC0E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E8D8);
  }

  return result;
}

unint64_t sub_1DAF9C3E0()
{
  result = qword_1ECC0E8E0;
  if (!qword_1ECC0E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E8E0);
  }

  return result;
}

unint64_t sub_1DAF9C49C()
{
  result = qword_1ECC0E8F0;
  if (!qword_1ECC0E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E8F0);
  }

  return result;
}

unint64_t sub_1DAF9C4F0()
{
  result = qword_1ECC0E8F8;
  if (!qword_1ECC0E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E8F8);
  }

  return result;
}

unint64_t sub_1DAF9C544()
{
  result = qword_1EE3017F0;
  if (!qword_1EE3017F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3017F0);
  }

  return result;
}

unint64_t sub_1DAF9C598()
{
  result = qword_1ECC0E908;
  if (!qword_1ECC0E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E908);
  }

  return result;
}

unint64_t sub_1DAF9C5EC()
{
  result = qword_1EE301988;
  if (!qword_1EE301988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301988);
  }

  return result;
}

unint64_t sub_1DAF9C640()
{
  result = qword_1ECC0E910;
  if (!qword_1ECC0E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E910);
  }

  return result;
}

unint64_t sub_1DAF9C694()
{
  result = qword_1ECC0E920;
  if (!qword_1ECC0E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E920);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODNAssessmentResultAMP.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ODNAssessmentResultAMP.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODNAssessmentResultAMP.AdditionalInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ODNAssessmentResultAMP.AdditionalInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1DAF9C9DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1DAF9CA24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAF9CAAC()
{
  result = qword_1ECC0E928;
  if (!qword_1ECC0E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E928);
  }

  return result;
}

unint64_t sub_1DAF9CB04()
{
  result = qword_1ECC0E930;
  if (!qword_1ECC0E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E930);
  }

  return result;
}

unint64_t sub_1DAF9CB5C()
{
  result = qword_1ECC0E938;
  if (!qword_1ECC0E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E938);
  }

  return result;
}

unint64_t sub_1DAF9CBB4()
{
  result = qword_1ECC0E940;
  if (!qword_1ECC0E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E940);
  }

  return result;
}

unint64_t sub_1DAF9CC0C()
{
  result = qword_1ECC0E948;
  if (!qword_1ECC0E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E948);
  }

  return result;
}

unint64_t sub_1DAF9CC64()
{
  result = qword_1ECC0E950;
  if (!qword_1ECC0E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E950);
  }

  return result;
}

unint64_t sub_1DAF9CCBC()
{
  result = qword_1ECC0E958;
  if (!qword_1ECC0E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E958);
  }

  return result;
}

unint64_t sub_1DAF9CD14()
{
  result = qword_1ECC0E960;
  if (!qword_1ECC0E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E960);
  }

  return result;
}

unint64_t sub_1DAF9CD6C()
{
  result = qword_1ECC0E968;
  if (!qword_1ECC0E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E968);
  }

  return result;
}

unint64_t sub_1DAF9CDC4()
{
  result = qword_1ECC0E970;
  if (!qword_1ECC0E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E970);
  }

  return result;
}

unint64_t sub_1DAF9CE1C()
{
  result = qword_1ECC0E978;
  if (!qword_1ECC0E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E978);
  }

  return result;
}

unint64_t sub_1DAF9CE74()
{
  result = qword_1ECC0E980;
  if (!qword_1ECC0E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E980);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DIPRetrier(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DIPRetrier(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DAF9CF6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 536) = a8;
  *(v8 + 459) = a7;
  *(v8 + 528) = a6;
  *(v8 + 520) = a5;
  *(v8 + 458) = a4;
  *(v8 + 504) = a2;
  *(v8 + 512) = a3;
  *(v8 + 496) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF9CFA4, 0, 0);
}

uint64_t sub_1DAF9CFA4()
{
  *(v0 + 544) = xmmword_1DB0A7A90;
  v1 = *(v0 + 504);
  if (v1 <= 0)
  {
    sub_1DB09DE44();

    *(v0 + 480) = v1;
    v8 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v8);

    MEMORY[0x1E127FE90](0x6564656563786520, 0xE900000000000064);
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v9 = MEMORY[0x1E69E7CC0];
    v10 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v11 = *(v10 + 16);

    if (v11)
    {
      v12 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v13)
      {
        sub_1DAF409DC(*(v10 + 56) + 32 * v12, v0 + 272);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v9 = *(v0 + 488);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DAF72FF4(0, *(v9 + 2) + 1, 1, v9);
    }

    v15 = *(v9 + 2);
    v14 = *(v9 + 3);
    if (v15 >= v14 >> 1)
    {
      v9 = sub_1DAF72FF4((v14 > 1), v15 + 1, 1, v9);
    }

    *(v9 + 2) = v15 + 1;
    v16 = &v9[56 * v15];
    *(v16 + 4) = 0x656972742078616DLL;
    *(v16 + 5) = 0xEA00000000002073;
    *(v16 + 6) = 0xD000000000000022;
    *(v16 + 7) = 0x80000001DB0C4A00;
    *(v16 + 8) = 0x293A5F28636E7973;
    *(v16 + 9) = 0xE800000000000000;
    *(v16 + 10) = 106;
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *(v0 + 304) = v9;
    sub_1DAF40D20((v0 + 304), (v0 + 336));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 336), 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v18 = *(v0 + 536);
    v19 = *(v0 + 528);
    v20 = *(v0 + 520);
    v21 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v22 = sub_1DB09D6B4();
    v23 = sub_1DB09D604();
    [v21 initWithDomain:v22 code:-2108 userInfo:{v23, v10}];

    swift_willThrow();

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 560) = v2;
    *v2 = v0;
    v2[1] = sub_1DAF9D3D0;
    v3 = *(v0 + 536);
    v4 = *(v0 + 459);
    v5 = *(v0 + 528);
    v6 = *(v0 + 520);

    return sub_1DAFAC774(v0 + 432, 1, v6, v5, v4, v3);
  }
}

uint64_t sub_1DAF9D3D0()
{
  v1 = *(*v0 + 560);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF9D4CC, 0, 0);
}

uint64_t sub_1DAF9D4CC()
{
  v4 = *(v0 + 432);
  v5 = *(v0 + 440);
  *(v0 + 568) = v4;
  *(v0 + 576) = v5;
  v6 = *(v0 + 448);
  *(v0 + 584) = v6;
  v7 = *(v0 + 456);
  *(v0 + 460) = v7;
  v8 = *(v0 + 457);
  if (v8 <= 1)
  {
    if (!*(v0 + 457))
    {
      v11 = *(v0 + 536);
      v12 = *(v0 + 528);
      v13 = *(v0 + 520);
      v14 = *(v0 + 496);
      sub_1DAF40674(v4, *&v5);
      v15 = v6;
      sub_1DAFA0678(v4, *&v5, v6, v7, 0);

      *v14 = v4;
      *(v14 + 8) = v5;
      *(v14 + 16) = v15;
      *(v14 + 24) = v7 & 1;

      v16 = *(v0 + 8);
LABEL_128:

      return v16();
    }

    sub_1DAFA06FC(v4, *&v5, v6, v7, 1u);
    v32 = v4;
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    sub_1DAF4B4C0(v4, 0xD00000000000002ALL, 0x80000001DB0C4AE0);
    sub_1DAFA0678(v4, *&v5, v6, v7, 1u);
    sub_1DAFA0678(*(v0 + 432), *(v0 + 440), *(v0 + 448), *(v0 + 456), *(v0 + 457));
    v33 = *(v0 + 552);
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_142;
    }

    *(v0 + 552) = v35;
    *(v0 + 544) = v4;
    if (!v4)
    {
      if (qword_1EE300B90 != -1)
      {
        swift_once();
      }

      v54 = MEMORY[0x1E69E7CC0];
      v55 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v55 + 16))
      {
        v56 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
        if (v57)
        {
          sub_1DAF409DC(*(v55 + 56) + 32 * v56, v0 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
          if (swift_dynamicCast())
          {
            v54 = *(v0 + 464);
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1DAF72FF4(0, *(v54 + 2) + 1, 1, v54);
      }

      v59 = *(v54 + 2);
      v58 = *(v54 + 3);
      if (v59 >= v58 >> 1)
      {
        v54 = sub_1DAF72FF4((v58 > 1), v59 + 1, 1, v54);
      }

      v60 = *(v0 + 536);
      v61 = *(v0 + 528);
      v62 = *(v0 + 520);
      *(v54 + 2) = v59 + 1;
      v63 = &v54[56 * v59];
      v64 = v60;
      *(v63 + 4) = 0xD000000000000046;
      *(v63 + 5) = 0x80000001DB0C49B0;
      *(v63 + 6) = 0xD000000000000022;
      *(v63 + 7) = 0x80000001DB0C4A00;
      *(v63 + 8) = 0x293A5F28636E7973;
      *(v63 + 9) = 0xE800000000000000;
      *(v63 + 10) = 115;
      *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *(v0 + 48) = v54;
      sub_1DAF40D20((v0 + 48), (v0 + 80));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v0 + 80), 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
      v66 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v67 = sub_1DB09D6B4();
      v68 = sub_1DB09D604();
      [v66 initWithDomain:v67 code:-1 userInfo:v68];

      swift_willThrow();
      goto LABEL_127;
    }

    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v36 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v37 = v4;
    v38 = sub_1DB09CE64();
    v39 = [v38 domain];
    v40 = sub_1DB09D6C4();
    v42 = v41;

    if (v40 == 0x726F727245504944 && v42 == 0xE800000000000000)
    {
      goto LABEL_41;
    }

    v69 = sub_1DB09E254();

    if (v69)
    {
      goto LABEL_77;
    }

    v91 = [v38 domain];
    v92 = sub_1DB09D6C4();
    v94 = v93;

    if (v92 == 0x726F72724549444FLL && v94 == 0xE800000000000000)
    {
LABEL_41:
    }

    else
    {
      v95 = sub_1DB09E254();

      if ((v95 & 1) == 0)
      {
        v96 = *MEMORY[0x1E696AA08];
        v97 = sub_1DB09D6C4();
        v99 = v98;
        *(v0 + 136) = sub_1DAF4D7A4();
        *(v0 + 112) = v38;
        sub_1DAF40D20((v0 + 112), (v0 + 144));
        v100 = v38;
        v101 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C((v0 + 144), v97, v99, v101);

        v70 = 0;
        v72 = v36;
        goto LABEL_81;
      }
    }

LABEL_77:
    DIPErrorCode.init(rawValue:)([v38 code]);
    if (v136 == 462)
    {
      LOWORD(v70) = 0;
    }

    else
    {
      LOWORD(v70) = v136;
    }

    v71 = [v38 userInfo];
    v72 = sub_1DB09D624();

    v70 = v70;
LABEL_81:
    if (*(v72 + 16) && (v73 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v74 & 1) != 0) && (sub_1DAF409DC(*(v72 + 56) + 32 * v73, v0 + 176), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
    {
      v75 = *(v0 + 472);
    }

    else
    {
      v75 = MEMORY[0x1E69E7CC0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = sub_1DAF72FF4(0, *(v75 + 2) + 1, 1, v75);
    }

    v77 = *(v75 + 2);
    v76 = *(v75 + 3);
    if (v77 >= v76 >> 1)
    {
      v75 = sub_1DAF72FF4((v76 > 1), v77 + 1, 1, v75);
    }

    *(v75 + 2) = v77 + 1;
    v78 = &v75[56 * v77];
    *(v78 + 4) = 0xD00000000000001DLL;
    *(v78 + 5) = 0x80000001DB0C4A30;
    *(v78 + 6) = 0xD000000000000022;
    *(v78 + 7) = 0x80000001DB0C4A00;
    *(v78 + 8) = 0x293A5F28636E7973;
    *(v78 + 9) = 0xE800000000000000;
    *(v78 + 10) = 112;
    *(v0 + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *(v0 + 208) = v75;
    sub_1DAF40D20((v0 + 208), (v0 + 240));
    v79 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 240), 0x636F766E49504944, 0xEE00736E6F697461, v79);
    v80 = qword_1DB0A7B08[v70];
    v64 = *(v0 + 536);
    v61 = *(v0 + 528);
    v62 = *(v0 + 520);
    v81 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v82 = sub_1DB09D6B4();
    v83 = sub_1DB09D604();
    [v81 initWithDomain:v82 code:v80 userInfo:v83];

    goto LABEL_126;
  }

  if (v8 == 2)
  {
    sub_1DAFA06FC(v4, *&v5, v6, v7, 2u);
    v17 = v4;
    if (qword_1EE301DE8 == -1)
    {
LABEL_11:
      sub_1DAF4B4C0(v4, 0xD00000000000002BLL, 0x80000001DB0C4A80);
      sub_1DAFA0678(v4, *&v5, v6, v7, 2u);
      v18 = swift_task_alloc();
      *(v0 + 592) = v18;
      *v18 = v0;
      v18[1] = sub_1DAF9EA58;
      v19 = *(v0 + 552);
      v20 = *(v0 + 504);
      v21 = *(v0 + 512);
      v22 = *(v0 + 458);

      return sub_1DAFA0254(v19, v20, v21, v22);
    }

LABEL_143:
    swift_once();
    goto LABEL_11;
  }

  if (v8 != 3)
  {
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 552);
    v25 = *(v0 + 504);
    sub_1DB09DB54();
    v10 = sub_1DB09D444();
    if (v24 != v25)
    {
      if (!*(v0 + 458))
      {
        v89 = *(v0 + 512);
        if (v89 <= 0.0)
        {
          v26 = 0;
        }

        else
        {
          if ((~*(v0 + 512) & 0x7FF0000000000000) == 0)
          {
LABEL_153:
            __break(1u);
            goto LABEL_154;
          }

          if (v89 <= -1.0)
          {
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          if (v89 >= 1.84467441e19)
          {
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

          if (v89 >= 0x44B82FA09)
          {
            v26 = -1;
          }

          else
          {
            v90 = v89 * 1000000000.0;
            if (*&v90 >> 52 > 0x7FEuLL)
            {
LABEL_159:
              __break(1u);
              goto LABEL_160;
            }

            if (v90 <= -1.0)
            {
LABEL_161:
              __break(1u);
              goto LABEL_162;
            }

            if (v90 >= 1.84467441e19)
            {
LABEL_163:
              __break(1u);
              return MEMORY[0x1EEE6DA60](v10);
            }

            v26 = v90;
          }
        }

        v122 = *(MEMORY[0x1E69E86C8] + 4);
        v103 = swift_task_alloc();
        *(v0 + 608) = v103;
        *v103 = v0;
        v104 = sub_1DAF9EFB8;
        goto LABEL_135;
      }

      if (*(v0 + 458) == 1)
      {
        v26 = 0;
        v27 = *(v0 + 552);
        if ((v27 - 1) >= 0x40)
        {
          v28 = 0;
        }

        else
        {
          v28 = 1 << (v27 - 1);
        }

        v29 = v28;
        if ((v27 - 66) < 0xFFFFFFFFFFFFFF7FLL)
        {
          v29 = 0.0;
        }

        v30 = *(v0 + 512) * v29;
        if (v30 > 0.0)
        {
          if (*&v30 >> 52 > 0x7FEuLL)
          {
LABEL_152:
            __break(1u);
            goto LABEL_153;
          }

          if (v30 <= -1.0)
          {
LABEL_154:
            __break(1u);
            goto LABEL_155;
          }

          if (v30 >= 1.84467441e19)
          {
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

          if (v30 >= 0x44B82FA09)
          {
            v26 = -1;
          }

          else
          {
            v31 = v30 * 1000000000.0;
            if (*&v31 >> 52 > 0x7FEuLL)
            {
LABEL_158:
              __break(1u);
              goto LABEL_159;
            }

            if (v31 <= -1.0)
            {
LABEL_160:
              __break(1u);
              goto LABEL_161;
            }

            if (v31 >= 1.84467441e19)
            {
LABEL_162:
              __break(1u);
              goto LABEL_163;
            }

            v26 = v31;
          }
        }

        v121 = *(MEMORY[0x1E69E86C8] + 4);
        v103 = swift_task_alloc();
        *(v0 + 624) = v103;
        *v103 = v0;
        v104 = sub_1DAF9F168;
LABEL_135:
        v103[1] = v104;
        v10 = v26;

        return MEMORY[0x1EEE6DA60](v10);
      }
    }

    return MEMORY[0x1EEE6DFA0](sub_1DAF9EB6C, 0, 0);
  }

  if (v4)
  {
    sub_1DAFA06FC(v4, *&v5, v6, v7, 3u);
    sub_1DAFA06FC(v4, *&v5, v6, v7, 3u);
    v9 = v4;
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    sub_1DAF4B4C0(v4, 0xD00000000000002CLL, 0x80000001DB0C4A50);
    sub_1DAFA0678(v4, *&v5, v6, v7, 3u);
  }

  else
  {
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    sub_1DB09DB54();
    v10 = sub_1DB09D444();
  }

  if (*(v0 + 552) != *(v0 + 504))
  {
    if (v5 <= 0.0)
    {
      v26 = 0;
      goto LABEL_109;
    }

    if ((~*&v5 & 0x7FF0000000000000) == 0)
    {
      __break(1u);
LABEL_145:
      swift_once();
LABEL_52:
      v46 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      v134 = v6;
      if (v4)
      {
        v47 = v4;
        v48 = sub_1DB09CE64();
        v49 = [v48 domain];
        v50 = sub_1DB09D6C4();
        v52 = v51;

        if (v50 == 0x726F727245504944 && v52 == 0xE800000000000000)
        {
          goto LABEL_55;
        }

        v105 = sub_1DB09E254();

        if (v105)
        {
          goto LABEL_113;
        }

        v123 = [v48 domain];
        v124 = sub_1DB09D6C4();
        v126 = v125;

        if (v124 == 0x726F72724549444FLL && v126 == 0xE800000000000000)
        {
LABEL_55:

LABEL_113:
          DIPErrorCode.init(rawValue:)([v48 code]);
          if (v136 == 462)
          {
            v106 = 107;
          }

          else
          {
            v106 = v136;
          }

          v107 = [v48 userInfo];
          v108 = sub_1DB09D624();

          v3 = v106;
          v46 = v108;
          goto LABEL_117;
        }

        v127 = sub_1DB09E254();

        if (v127)
        {
          goto LABEL_113;
        }

        v128 = *MEMORY[0x1E696AA08];
        v129 = sub_1DB09D6C4();
        v131 = v130;
        *(v0 + 392) = sub_1DAF4D7A4();
        *(v0 + 368) = v48;
        sub_1DAF40D20((v0 + 368), (v0 + 400));
        v132 = v48;
        v133 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C((v0 + 400), v129, v131, v133);

        v3 = 107;
      }

      else
      {
        v3 = 107;
      }

LABEL_117:
      v1 = 0xEE00736E6F697461;
      v7 = 0x636F766E49504944;
      v109 = *(v46 + 16);

      if (v109 && (v110 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v111 & 1) != 0) && (sub_1DAF409DC(*(v46 + 56) + 32 * v110, v0 + 272), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
      {
        v2 = *(v0 + 488);
      }

      else
      {
        v2 = MEMORY[0x1E69E7CC0];
      }

      v6 = 0x80000001DB0C4A00;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_123:
        v113 = *(v2 + 2);
        v112 = *(v2 + 3);
        if (v113 >= v112 >> 1)
        {
          v2 = sub_1DAF72FF4((v112 > 1), v113 + 1, 1, v2);
        }

        *(v2 + 2) = v113 + 1;
        v114 = &v2[56 * v113];
        *(v114 + 4) = v134;
        *(v114 + 5) = v135;
        *(v114 + 6) = 0xD000000000000022;
        *(v114 + 7) = v6;
        *(v114 + 8) = 0x293A5F28636E7973;
        *(v114 + 9) = 0xE800000000000000;
        *(v114 + 10) = 106;
        *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        *(v0 + 304) = v2;
        sub_1DAF40D20((v0 + 304), (v0 + 336));
        v115 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C((v0 + 336), v7, v1, v115);
        v116 = qword_1DB0A7B08[v3];
        v117 = *(v0 + 536);
        v61 = *(v0 + 528);
        v62 = *(v0 + 520);
        v118 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v119 = sub_1DB09D6B4();
        v120 = sub_1DB09D604();
        [v118 initWithDomain:v119 code:v116 userInfo:v120];

        v64 = v117;

LABEL_126:
        swift_willThrow();

LABEL_127:
        v16 = *(v0 + 8);
        goto LABEL_128;
      }

LABEL_147:
      v2 = sub_1DAF72FF4(0, *(v2 + 2) + 1, 1, v2);
      goto LABEL_123;
    }

    if (v5 <= -1.0)
    {
      __break(1u);
      goto LABEL_147;
    }

    if (v5 >= 1.84467441e19)
    {
      __break(1u);
    }

    else
    {
      if (v5 >= 0x44B82FA09)
      {
        v26 = -1;
        goto LABEL_109;
      }

      v53 = v5 * 1000000000.0;
      if (COERCE_UNSIGNED_INT64(v5 * 1000000000.0) >> 52 <= 0x7FE)
      {
        if (v53 > -1.0)
        {
          if (v53 < 1.84467441e19)
          {
            v26 = v53;
LABEL_109:
            v102 = *(MEMORY[0x1E69E86C8] + 4);
            v103 = swift_task_alloc();
            *(v0 + 632) = v103;
            *v103 = v0;
            v104 = sub_1DAF9F9C4;
            goto LABEL_135;
          }

          goto LABEL_151;
        }

LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }
    }

    __break(1u);
    goto LABEL_150;
  }

  sub_1DAFA0678(*(v0 + 432), *(v0 + 440), *(v0 + 448), *(v0 + 456), *(v0 + 457));
  sub_1DAFA0678(v4, *&v5, v6, v7, 3u);
  v43 = *(v0 + 552);
  *&v5 = v43 + 1;
  if (__OFADD__(v43, 1))
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  *(v0 + 552) = v5;
  *(v0 + 544) = v4;
  v44 = *(v0 + 504);
  if (*&v5 > v44)
  {
    sub_1DB09DE44();

    v136 = 24941;
    *(v0 + 480) = v44;
    v45 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v45);

    MEMORY[0x1E127FE90](0x6564656563786520, 0xE900000000000064);
    v6 = 0x656972742078616DLL;
    v135 = 0xEA00000000002073;
    if (qword_1EE300B90 == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_145;
  }

  v84 = swift_task_alloc();
  *(v0 + 560) = v84;
  *v84 = v0;
  v84[1] = sub_1DAF9D3D0;
  v85 = *(v0 + 536);
  v86 = *(v0 + 459);
  v87 = *(v0 + 528);
  v88 = *(v0 + 520);

  return sub_1DAFAC774(v0 + 432, *&v5, v88, v87, v86, v85);
}

uint64_t sub_1DAF9EA58()
{
  v2 = *(*v1 + 592);
  v5 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v3 = sub_1DAF9F91C;
  }

  else
  {
    v3 = sub_1DAF9F288;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAF9EB6C()
{
  sub_1DAFA0678(*(v1 + 432), *(v1 + 440), *(v1 + 448), *(v1 + 456), *(v1 + 457));
  v3 = *(v1 + 552);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
LABEL_19:
    swift_once();
LABEL_4:
    v7 = MEMORY[0x1E69E7CC0];
    v8 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v9 = *(v8 + 16);

    if (v9)
    {
      v10 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v11)
      {
        sub_1DAF409DC(*(v8 + 56) + 32 * v10, v1 + 272);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v7 = *(v1 + 488);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DAF72FF4(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = sub_1DAF72FF4((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    v14 = &v7[56 * v13];
    *(v14 + 4) = v2;
    *(v14 + 5) = v0;
    *(v14 + 6) = 0xD000000000000022;
    *(v14 + 7) = 0x80000001DB0C4A00;
    *(v14 + 8) = 0x293A5F28636E7973;
    *(v14 + 9) = 0xE800000000000000;
    *(v14 + 10) = 106;
    *(v1 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *(v1 + 304) = v7;
    sub_1DAF40D20((v1 + 304), (v1 + 336));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v1 + 336), 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v16 = *(v1 + 536);
    v17 = *(v1 + 528);
    v18 = *(v1 + 520);
    v19 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v20 = sub_1DB09D6B4();
    v21 = sub_1DB09D604();
    [v19 initWithDomain:v20 code:-2108 userInfo:{v21, v8}];

    swift_willThrow();

    v22 = *(v1 + 8);

    return v22();
  }

  *(v1 + 552) = v4;
  *(v1 + 544) = 0;
  v5 = *(v1 + 504);
  if (v4 > v5)
  {
    sub_1DB09DE44();

    *(v1 + 480) = v5;
    v6 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v6);

    MEMORY[0x1E127FE90](0x6564656563786520, 0xE900000000000064);
    v2 = 0x656972742078616DLL;
    v0 = 0xEA00000000002073;
    if (qword_1EE300B90 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  v24 = swift_task_alloc();
  *(v1 + 560) = v24;
  *v24 = v1;
  v24[1] = sub_1DAF9D3D0;
  v25 = *(v1 + 536);
  v26 = *(v1 + 459);
  v27 = *(v1 + 528);
  v28 = *(v1 + 520);

  return sub_1DAFAC774(v1 + 432, v4, v28, v27, v26, v25);
}

uint64_t sub_1DAF9EFB8()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 616) = v0;
    v5 = sub_1DAF9F0D8;
  }

  else
  {
    v5 = sub_1DAF9EB6C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DAF9F0D8()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  sub_1DAFA0678(*(v0 + 432), *(v0 + 440), *(v0 + 448), *(v0 + 456), *(v0 + 457));

  v4 = *(v0 + 616);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DAF9F168()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 616) = v0;
    v5 = sub_1DAF9F0D8;
  }

  else
  {
    v5 = sub_1DAF9EB6C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DAF9F288()
{
  sub_1DAFA0678(*(v1 + 432), *(v1 + 440), *(v1 + 448), *(v1 + 456), *(v1 + 457));
  v3 = *(v1 + 552);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  v2 = *(v1 + 568);
  *(v1 + 552) = v4;
  *(v1 + 544) = v2;
  v5 = *(v1 + 504);
  if (v4 > v5)
  {
    sub_1DB09DE44();

    v55 = 24941;
    *(v1 + 480) = v5;
    v6 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v6);

    MEMORY[0x1E127FE90](0x6564656563786520, 0xE900000000000064);
    v0 = 0xEA00000000002073;
    v53 = 0x656972742078616DLL;
    if (qword_1EE300B90 == -1)
    {
LABEL_4:
      v7 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (!v2)
      {
        v54 = 0;
        v20 = 107;
        goto LABEL_17;
      }

      v8 = v2;
      v9 = sub_1DB09CE64();
      v10 = [v9 domain];
      v11 = sub_1DB09D6C4();
      v13 = v12;

      if (v11 == 0x726F727245504944 && v13 == 0xE800000000000000)
      {
        goto LABEL_7;
      }

      v21 = sub_1DB09E254();

      if (v21)
      {
        goto LABEL_13;
      }

      v41 = [v9 domain];
      v54 = v2;
      v42 = sub_1DB09D6C4();
      v44 = v43;

      v45 = v42;
      v2 = v54;
      if (v45 == 0x726F72724549444FLL && v44 == 0xE800000000000000)
      {
LABEL_7:
      }

      else
      {
        v46 = sub_1DB09E254();

        if ((v46 & 1) == 0)
        {
          v47 = *MEMORY[0x1E696AA08];
          v48 = sub_1DB09D6C4();
          v50 = v49;
          *(v1 + 392) = sub_1DAF4D7A4();
          *(v1 + 368) = v9;
          sub_1DAF40D20((v1 + 368), (v1 + 400));
          v51 = v9;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1DAF3B11C((v1 + 400), v48, v50, isUniquelyReferenced_nonNull_native);

          v20 = 107;
          goto LABEL_17;
        }
      }

LABEL_13:
      DIPErrorCode.init(rawValue:)([v9 code]);
      if (v55 == 462)
      {
        v22 = 107;
      }

      else
      {
        v22 = v55;
      }

      v23 = [v9 userInfo];
      v24 = sub_1DB09D624();
      v54 = v2;

      v20 = v22;
      v7 = v24;
LABEL_17:
      v25 = *(v7 + 16);

      if (v25 && (v26 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v27 & 1) != 0) && (sub_1DAF409DC(*(v7 + 56) + 32 * v26, v1 + 272), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
      {
        v28 = *(v1 + 488);
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1DAF72FF4(0, *(v28 + 2) + 1, 1, v28);
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1DAF72FF4((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[56 * v30];
      *(v31 + 4) = v53;
      *(v31 + 5) = v0;
      *(v31 + 6) = 0xD000000000000022;
      *(v31 + 7) = 0x80000001DB0C4A00;
      *(v31 + 8) = 0x293A5F28636E7973;
      *(v31 + 9) = 0xE800000000000000;
      *(v31 + 10) = 106;
      *(v1 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *(v1 + 304) = v28;
      sub_1DAF40D20((v1 + 304), (v1 + 336));
      v32 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v1 + 336), 0x636F766E49504944, 0xEE00736E6F697461, v32);
      v33 = qword_1DB0A7B08[v20];
      v34 = *(v1 + 536);
      v35 = *(v1 + 528);
      v36 = *(v1 + 520);
      v37 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v38 = sub_1DB09D6B4();
      v39 = sub_1DB09D604();
      [v37 initWithDomain:v38 code:v33 userInfo:v39];

      swift_willThrow();

      v40 = *(v1 + 8);

      return v40();
    }

LABEL_34:
    swift_once();
    goto LABEL_4;
  }

  v14 = swift_task_alloc();
  *(v1 + 560) = v14;
  *v14 = v1;
  v14[1] = sub_1DAF9D3D0;
  v15 = *(v1 + 536);
  v16 = *(v1 + 459);
  v17 = *(v1 + 528);
  v18 = *(v1 + 520);

  return sub_1DAFAC774(v1 + 432, v4, v18, v17, v16, v15);
}

uint64_t sub_1DAF9F91C()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  sub_1DAFA0678(*(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 460), 2u);
  sub_1DAFA0678(*(v0 + 432), *(v0 + 440), *(v0 + 448), *(v0 + 456), *(v0 + 457));

  v4 = *(v0 + 600);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DAF9F9C4()
{
  v2 = *(*v1 + 632);
  v5 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = sub_1DAFA0184;
  }

  else
  {
    v3 = sub_1DAF9FAD8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAF9FAD8()
{
  sub_1DAFA0678(*(v1 + 568), *(v1 + 576), *(v1 + 584), *(v1 + 460), 3u);
  sub_1DAFA0678(*(v1 + 432), *(v1 + 440), *(v1 + 448), *(v1 + 456), *(v1 + 457));
  v3 = *(v1 + 552);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  v2 = *(v1 + 568);
  *(v1 + 552) = v4;
  *(v1 + 544) = v2;
  v5 = *(v1 + 504);
  if (v4 > v5)
  {
    sub_1DB09DE44();

    v55 = 24941;
    *(v1 + 480) = v5;
    v6 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v6);

    MEMORY[0x1E127FE90](0x6564656563786520, 0xE900000000000064);
    v0 = 0xEA00000000002073;
    v53 = 0x656972742078616DLL;
    if (qword_1EE300B90 == -1)
    {
LABEL_4:
      v7 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (!v2)
      {
        v54 = 0;
        v20 = 107;
        goto LABEL_17;
      }

      v8 = v2;
      v9 = sub_1DB09CE64();
      v10 = [v9 domain];
      v11 = sub_1DB09D6C4();
      v13 = v12;

      if (v11 == 0x726F727245504944 && v13 == 0xE800000000000000)
      {
        goto LABEL_7;
      }

      v21 = sub_1DB09E254();

      if (v21)
      {
        goto LABEL_13;
      }

      v41 = [v9 domain];
      v54 = v2;
      v42 = sub_1DB09D6C4();
      v44 = v43;

      v45 = v42;
      v2 = v54;
      if (v45 == 0x726F72724549444FLL && v44 == 0xE800000000000000)
      {
LABEL_7:
      }

      else
      {
        v46 = sub_1DB09E254();

        if ((v46 & 1) == 0)
        {
          v47 = *MEMORY[0x1E696AA08];
          v48 = sub_1DB09D6C4();
          v50 = v49;
          *(v1 + 392) = sub_1DAF4D7A4();
          *(v1 + 368) = v9;
          sub_1DAF40D20((v1 + 368), (v1 + 400));
          v51 = v9;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1DAF3B11C((v1 + 400), v48, v50, isUniquelyReferenced_nonNull_native);

          v20 = 107;
          goto LABEL_17;
        }
      }

LABEL_13:
      DIPErrorCode.init(rawValue:)([v9 code]);
      if (v55 == 462)
      {
        v22 = 107;
      }

      else
      {
        v22 = v55;
      }

      v23 = [v9 userInfo];
      v24 = sub_1DB09D624();
      v54 = v2;

      v20 = v22;
      v7 = v24;
LABEL_17:
      v25 = *(v7 + 16);

      if (v25 && (v26 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v27 & 1) != 0) && (sub_1DAF409DC(*(v7 + 56) + 32 * v26, v1 + 272), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
      {
        v28 = *(v1 + 488);
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1DAF72FF4(0, *(v28 + 2) + 1, 1, v28);
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1DAF72FF4((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[56 * v30];
      *(v31 + 4) = v53;
      *(v31 + 5) = v0;
      *(v31 + 6) = 0xD000000000000022;
      *(v31 + 7) = 0x80000001DB0C4A00;
      *(v31 + 8) = 0x293A5F28636E7973;
      *(v31 + 9) = 0xE800000000000000;
      *(v31 + 10) = 106;
      *(v1 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *(v1 + 304) = v28;
      sub_1DAF40D20((v1 + 304), (v1 + 336));
      v32 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v1 + 336), 0x636F766E49504944, 0xEE00736E6F697461, v32);
      v33 = qword_1DB0A7B08[v20];
      v34 = *(v1 + 536);
      v35 = *(v1 + 528);
      v36 = *(v1 + 520);
      v37 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v38 = sub_1DB09D6B4();
      v39 = sub_1DB09D604();
      [v37 initWithDomain:v38 code:v33 userInfo:v39];

      swift_willThrow();

      v40 = *(v1 + 8);

      return v40();
    }

LABEL_34:
    swift_once();
    goto LABEL_4;
  }

  v14 = swift_task_alloc();
  *(v1 + 560) = v14;
  *v14 = v1;
  v14[1] = sub_1DAF9D3D0;
  v15 = *(v1 + 536);
  v16 = *(v1 + 459);
  v17 = *(v1 + 528);
  v18 = *(v1 + 520);

  return sub_1DAFAC774(v1 + 432, v4, v18, v17, v16, v15);
}

uint64_t sub_1DAFA0184()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v7 = *(v0 + 460);

  sub_1DAFA0678(v3, v2, v1, v7, 3u);
  sub_1DAFA0678(*(v0 + 432), *(v0 + 440), *(v0 + 448), *(v0 + 456), *(v0 + 457));

  v8 = *(v0 + 640);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DAFA0254(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 56) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAFA027C, 0, 0);
}

uint64_t sub_1DAFA027C(unint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2 != *(v1 + 24))
  {
    if (!*(v1 + 56))
    {
      v13 = *(v1 + 32);
      if (v13 <= 0.0)
      {
        v7 = 0;
      }

      else
      {
        if ((~*(v1 + 32) & 0x7FF0000000000000) == 0)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (v13 <= -1.0)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if (v13 >= 1.84467441e19)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v13 > 0x44B82FA08)
        {
          v7 = -1;
        }

        else
        {
          v14 = v13 * 1000000000.0;
          if (*&v14 >> 52 > 0x7FEuLL)
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          if (v14 <= -1.0)
          {
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          if (v14 >= 1.84467441e19)
          {
LABEL_35:
            __break(1u);
            return MEMORY[0x1EEE6DA60](a1);
          }

          v7 = v14;
        }
      }

      v15 = *(MEMORY[0x1E69E86C8] + 4);
      v9 = swift_task_alloc();
      *(v1 + 40) = v9;
      *v9 = v1;
      v10 = sub_1DAFA0490;
LABEL_26:
      v9[1] = v10;
      a1 = v7;

      return MEMORY[0x1EEE6DA60](a1);
    }

    if (*(v1 + 56) == 1)
    {
      v3 = __OFSUB__(v2, 1);
      v4 = v2 - 1;
      if (!v3)
      {
        v5 = v4 > 0x40;
        if (v4 >= 0x40)
        {
          v6 = 0;
        }

        else
        {
          v6 = 1 << v4;
        }

        if (v5)
        {
          v6 = 0;
        }

        v7 = sub_1DAFC2A84(*(v1 + 32) * v6);
        v8 = *(MEMORY[0x1E69E86C8] + 4);
        v9 = swift_task_alloc();
        *(v1 + 48) = v9;
        *v9 = v1;
        v10 = sub_1DAFA0584;
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_1DAFA0490()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DAFA0584()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1DAFA0678(void *a1, unint64_t a2, void *a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2 || a5 == 3)
    {

      goto LABEL_6;
    }
  }

  else
  {
    if (!a5)
    {
      sub_1DAF40780(a1, a2);
      a1 = a3;

      goto LABEL_6;
    }

    if (a5 == 1)
    {

LABEL_6:
    }
  }
}

id sub_1DAFA06FC(id result, unint64_t a2, void *a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2 || a5 == 3)
    {

      return result;
    }
  }

  else
  {
    if (!a5)
    {
      sub_1DAF40674(result, a2);
      result = a3;

      return result;
    }

    if (a5 == 1)
    {

      return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DIPBackoffStrategy(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DIPBackoffStrategy(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DAFA080C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1DAFA0824(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t dispatch thunk of PersistenceCommand.save(files:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DAF63DEC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PersistenceCommand.save(data:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1DAF63DEC;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of PersistenceCommand.load(key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DAF680EC;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1DAFA0C0C()
{
  v1 = *(v0 + 408);
  v3 = *(v1 + 152);
  v2 = *(v1 + 160);
  v4 = swift_task_alloc();
  *(v0 + 416) = v4;
  *v4 = v0;
  v4[1] = sub_1DAFA0CBC;
  v5 = *(v0 + 408);

  return sub_1DAFA249C(v0 + 16, v3, v2);
}

uint64_t sub_1DAFA0CBC()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 408);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFA0DCC, v2, 0);
}

uint64_t sub_1DAFA0DCC()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 408) + 112), *(*(v0 + 408) + 136));
  v2 = swift_task_alloc();
  *(v0 + 424) = v2;
  *v2 = v0;
  v2[1] = sub_1DAFA0E78;
  v3 = *(v0 + 408);

  return sub_1DAFFF6F4(v0 + 16, v3);
}

uint64_t sub_1DAFA0E78()
{
  v2 = *(*v1 + 424);
  v3 = *v1;
  v3[54] = v0;

  if (v0)
  {
    v4 = v3[51];
    sub_1DAFA7274((v3 + 2));

    return MEMORY[0x1EEE6DFA0](sub_1DAFA0FC0, v4, 0);
  }

  else
  {
    sub_1DAFA7274((v3 + 2));
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DAFA0FC0()
{
  v57 = v0;
  v1 = *(v0 + 432);
  *(v0 + 384) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 432);
  if (v3)
  {
    v5 = *(v0 + 408);

    v54 = *(v5 + 216);
    v55 = *(v5 + 224);
    v56[0] = 0x203A726F727201;
    v56[1] = 0xE700000000000000;
    sub_1DAF6244C();

    v6 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v6);

    CoreODILogger.error(_:category:)(0x203A726F727245, 0xE700000000000000, v56);

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v7 = MEMORY[0x1E69E7CC0];
    v8 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v8 + 16))
    {
      v9 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v10)
      {
        sub_1DAF409DC(*(v8 + 56) + 32 * v9, v0 + 288);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v7 = *(v0 + 400);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DAF72EC0(0, *(v7 + 2) + 1, 1, v7);
    }

    v12 = *(v7 + 2);
    v11 = *(v7 + 3);
    if (v12 >= v11 >> 1)
    {
      v7 = sub_1DAF72EC0((v11 > 1), v12 + 1, 1, v7);
    }

    *(v7 + 2) = v12 + 1;
    v13 = &v7[56 * v12];
    *(v13 + 4) = 0xD00000000000001ALL;
    *(v13 + 5) = 0x80000001DB0C4DB0;
    *(v13 + 6) = 0xD000000000000026;
    *(v13 + 7) = 0x80000001DB0C4C20;
    *(v13 + 8) = 0xD00000000000001ALL;
    *(v13 + 9) = 0x80000001DB0C4E30;
    *(v13 + 10) = 65;
    *(v0 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 320) = v7;
    sub_1DAF40D20((v0 + 320), (v0 + 352));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56[0] = v8;
    sub_1DAF3B11C((v0 + 352), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v15 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v16 = sub_1DB09D6B4();
    v17 = sub_1DB09D604();
    [v15 initWithDomain:v16 code:-6104 userInfo:{v17, v54, v55}];

    swift_willThrow();
    v18 = *(v0 + 384);
    goto LABEL_34;
  }

  v19 = v4;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 432);
  v21 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v22 = v20;
  v23 = sub_1DB09CE64();
  v24 = [v23 domain];
  v25 = sub_1DB09D6C4();
  v27 = v26;

  if (v25 == 0x726F72724549444FLL && v27 == 0xE800000000000000)
  {

    goto LABEL_19;
  }

  v28 = sub_1DB09E254();

  if (v28)
  {
LABEL_19:
    v29 = *(v0 + 432);
    ODIErrorCode.init(rawValue:)([v23 code]);
    v30 = [v23 userInfo];
    v31 = sub_1DB09D624();

    if (LOBYTE(v56[0]) == 211)
    {
      v32 = 128;
    }

    else
    {
      v32 = LOBYTE(v56[0]) ^ 0x80u;
    }

    goto LABEL_23;
  }

  v33 = *(v0 + 432);
  v34 = *MEMORY[0x1E696AA08];
  v35 = sub_1DB09D6C4();
  v37 = v36;
  *(v0 + 152) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
  *(v0 + 128) = v23;
  sub_1DAF40D20((v0 + 128), (v0 + 160));
  v38 = v23;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v56[0] = v21;
  sub_1DAF3B11C((v0 + 160), v35, v37, v39);

  v31 = v21;
  v32 = 128;
LABEL_23:
  if (*(v31 + 16))
  {
    v40 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if ((v41 & 1) != 0 && (sub_1DAF409DC(*(v31 + 56) + 32 * v40, v0 + 192), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
    {
      v42 = *(v0 + 392);
    }

    else
    {
      v42 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = sub_1DAF72EC0(0, *(v42 + 2) + 1, 1, v42);
  }

  v44 = *(v42 + 2);
  v43 = *(v42 + 3);
  if (v44 >= v43 >> 1)
  {
    v42 = sub_1DAF72EC0((v43 > 1), v44 + 1, 1, v42);
  }

  *(v42 + 2) = v44 + 1;
  v45 = &v42[56 * v44];
  *(v45 + 4) = 0;
  *(v45 + 5) = 0xE000000000000000;
  *(v45 + 6) = 0xD000000000000026;
  *(v45 + 7) = 0x80000001DB0C4C20;
  *(v45 + 8) = 0xD00000000000001ALL;
  *(v45 + 9) = 0x80000001DB0C4E30;
  *(v45 + 10) = 67;
  *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 224) = v42;
  sub_1DAF40D20((v0 + 224), (v0 + 256));
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v56[0] = v31;
  sub_1DAF3B11C((v0 + 256), 0x636F766E4949444FLL, 0xEE00736E6F697461, v46);
  v47 = qword_1DB0A8B68[v32];
  v48 = *(v0 + 432);
  v49 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v50 = sub_1DB09D6B4();
  v51 = sub_1DB09D604();
  [v49 initWithDomain:v50 code:v47 userInfo:v51];

  swift_willThrow();
  v18 = v48;
LABEL_34:

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_1DAFA17F8()
{
  v1 = *(v0 + 456);
  v3 = *(v1 + 152);
  v2 = *(v1 + 160);
  v4 = swift_task_alloc();
  *(v0 + 464) = v4;
  *v4 = v0;
  v4[1] = sub_1DAFA18A8;
  v5 = *(v0 + 456);

  return sub_1DAFA249C(v0 + 16, v3, v2);
}

uint64_t sub_1DAFA18A8()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 456);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFA19B8, v2, 0);
}

uint64_t sub_1DAFA19B8()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 456) + 112), *(*(v0 + 456) + 136));
  v2 = swift_task_alloc();
  *(v0 + 472) = v2;
  *v2 = v0;
  v2[1] = sub_1DAFA1A60;

  return sub_1DB000BF8(v0 + 16);
}

uint64_t sub_1DAFA1A60(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *(*v4 + 472);
  v9 = *v4;
  v9[60] = v3;

  if (v3)
  {
    v10 = v9[57];
    sub_1DAFA7274((v9 + 2));

    return MEMORY[0x1EEE6DFA0](sub_1DAFA1BD8, v10, 0);
  }

  else
  {
    sub_1DAFA7274((v9 + 2));
    v11 = v9[1];

    return v11(a1, a2, a3 & 1);
  }
}

uint64_t sub_1DAFA1BD8()
{
  v65 = v0;
  v1 = *(v0 + 480);
  *(v0 + 424) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 456);

    v59 = *(v3 + 216);
    v61 = *(v3 + 224);
    v63 = 0;
    v64 = 0xE000000000000000;

    sub_1DB09DE44();
    *(v0 + 408) = 0;
    *(v0 + 416) = 0xE000000000000000;
    MEMORY[0x1E127FE90](0xD000000000000020, 0x80000001DB0C4D60);
    sub_1DB09DF94();
    v4 = *(v0 + 408);
    v5 = *(v0 + 416);
    LOBYTE(v63) = 1;
    CoreODILogger.error(_:category:)(v4, v5, &v63);

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v6 = MEMORY[0x1E69E7CC0];
    v7 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v7 + 16))
    {
      v8 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v9)
      {
        sub_1DAF409DC(*(v7 + 56) + 32 * v8, v0 + 288);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v6 = *(v0 + 448);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DAF72EC0(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_1DAF72EC0((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[56 * v11];
    *(v12 + 4) = 0xD00000000000001ALL;
    *(v12 + 5) = 0x80000001DB0C4DB0;
    *(v12 + 6) = 0xD000000000000026;
    *(v12 + 7) = 0x80000001DB0C4C20;
    *(v12 + 8) = 0xD000000000000016;
    *(v12 + 9) = 0x80000001DB0C4D90;
    *(v12 + 10) = 82;
    *(v0 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 320) = v6;
    sub_1DAF40D20((v0 + 320), (v0 + 352));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v7;
    sub_1DAF3B11C((v0 + 352), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v15 = sub_1DB09D6B4();
    v16 = sub_1DB09D604();
    [v14 initWithDomain:v15 code:-6104 userInfo:{v16, v59, v61}];

    swift_willThrow();
    v17 = *(v0 + 424);
    goto LABEL_34;
  }

  v18 = *(v0 + 480);
  v19 = *(v0 + 456);

  v60 = *(v19 + 216);
  v62 = *(v19 + 224);
  v63 = 0;
  v64 = 0xE000000000000000;

  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000020, 0x80000001DB0C4D60);
  swift_getErrorValue();
  v20 = *(v0 + 384);
  v21 = *(v0 + 392);
  sub_1DB09E234();
  LOBYTE(v63) = 1;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, &v63);

  v22 = v18;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 480);
  v24 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v25 = v23;
  v26 = sub_1DB09CE64();
  v27 = [v26 domain];
  v28 = sub_1DB09D6C4();
  v30 = v29;

  if (v28 == 0x726F72724549444FLL && v30 == 0xE800000000000000)
  {

    goto LABEL_19;
  }

  v31 = sub_1DB09E254();

  if (v31)
  {
LABEL_19:
    v32 = *(v0 + 480);
    ODIErrorCode.init(rawValue:)([v26 code]);
    v33 = v63;
    v34 = v63 ^ 0x80;
    v35 = [v26 userInfo];
    v36 = sub_1DB09D624();

    if (v33 == 211)
    {
      v37 = 128;
    }

    else
    {
      v37 = v34;
    }

    goto LABEL_23;
  }

  v38 = *(v0 + 480);
  v39 = *MEMORY[0x1E696AA08];
  v40 = sub_1DB09D6C4();
  v42 = v41;
  *(v0 + 152) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
  *(v0 + 128) = v26;
  sub_1DAF40D20((v0 + 128), (v0 + 160));
  v43 = v26;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v63 = v24;
  sub_1DAF3B11C((v0 + 160), v40, v42, v44);

  v36 = v63;
  v37 = 128;
LABEL_23:
  if (*(v36 + 16))
  {
    v45 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if ((v46 & 1) != 0 && (sub_1DAF409DC(*(v36 + 56) + 32 * v45, v0 + 192), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
    {
      v47 = *(v0 + 440);
    }

    else
    {
      v47 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = sub_1DAF72EC0(0, *(v47 + 2) + 1, 1, v47);
  }

  v49 = *(v47 + 2);
  v48 = *(v47 + 3);
  if (v49 >= v48 >> 1)
  {
    v47 = sub_1DAF72EC0((v48 > 1), v49 + 1, 1, v47);
  }

  *(v47 + 2) = v49 + 1;
  v50 = &v47[56 * v49];
  *(v50 + 4) = 0;
  *(v50 + 5) = 0xE000000000000000;
  *(v50 + 6) = 0xD000000000000026;
  *(v50 + 7) = 0x80000001DB0C4C20;
  *(v50 + 8) = 0xD000000000000016;
  *(v50 + 9) = 0x80000001DB0C4D90;
  *(v50 + 10) = 85;
  *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 224) = v47;
  sub_1DAF40D20((v0 + 224), (v0 + 256));
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v63 = v36;
  sub_1DAF3B11C((v0 + 256), 0x636F766E4949444FLL, 0xEE00736E6F697461, v51);
  v52 = qword_1DB0A8B68[v37];
  v53 = *(v0 + 480);
  v54 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v55 = sub_1DB09D6B4();
  v56 = sub_1DB09D604();
  [v54 initWithDomain:v55 code:v52 userInfo:v56];

  swift_willThrow();
  v17 = v53;
LABEL_34:

  v57 = *(v0 + 8);

  return v57();
}