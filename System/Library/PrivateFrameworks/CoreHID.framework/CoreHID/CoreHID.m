uint64_t HIDElementCollection.CollectionType.hashValue.getter()
{
  v1 = *v0;
  sub_2455EA080();
  MEMORY[0x245D6BE80](v1);
  return sub_2455EA0D0();
}

uint64_t _s7CoreHID13HIDReportTypeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_2455EA080();
  MEMORY[0x245D6BE80](v1);
  return sub_2455EA0D0();
}

uint64_t sub_2455A01C0()
{
  v1 = *v0;
  sub_2455EA080();
  MEMORY[0x245D6BE80](v1);
  return sub_2455EA0D0();
}

uint64_t sub_2455A0204@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result >= 7)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2455A0214@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = swift_unownedRetainStrong();
  *a2 = result;
  return result;
}

uint64_t sub_2455A0240(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_unownedRetain();
  result = swift_unownedRelease();
  *a2 = v3;
  return result;
}

uint64_t HIDElementCollection.client.setter(uint64_t a1)
{
  v3 = *v1;
  swift_unownedRetain();
  swift_unownedRelease();

  *v1 = a1;
  return result;
}

uint64_t (*HIDElementCollection.client.modify(uint64_t *a1))()
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = swift_unownedRetainStrong();
  return sub_2455A76E0;
}

void HIDElementCollection.parentCollection.getter(void *a1@<X8>)
{
  v3 = *v1;
  v4 = IOHIDElementGetParent(*(v1 + 16));
  if (v4)
  {
    v5 = v4;
    swift_unownedRetainStrong();

    sub_2455A039C(v5, v3, a1);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2455A039C(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (IOHIDElementGetType(a1) == kIOHIDElementTypeCollection)
  {
    v16 = a1;
    type metadata accessor for IOHIDElement();
    v7 = v6;
    v8 = a1;
    sub_2455D06E8(&v16, v7, &v17);
    v9 = v17;
    swift_unownedRetain();
    CollectionType = IOHIDElementGetCollectionType(v9);
    sub_2455A0204(CollectionType, &v17);
    v11 = v17;
    UsagePage = IOHIDElementGetUsagePage(v9);
    if (WORD1(UsagePage))
    {
      __break(1u);
    }

    else
    {
      v13 = UsagePage;
      Usage = IOHIDElementGetUsage(v9);

      if (!HIWORD(Usage))
      {
        HIDUsage.init(page:usage:)(Usage, v13, &v17);

        v15 = (v17 << 16) | (BYTE4(v17) << 48) | v11;
        *a3 = a2;
        a3[1] = v15;
        a3[2] = v9;
        return;
      }
    }

    __break(1u);
  }

  else
  {

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void HIDElementCollection.childCollections.getter()
{
  v1 = *v0;
  v2 = IOHIDElementGetChildren(v0[2]);
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v3);
    if (Count < 0)
    {
LABEL_27:
      __break(1u);
    }

    else
    {
      v5 = Count;
      if (!Count)
      {
LABEL_24:

        return;
      }

      v6 = 0;
      v7 = MEMORY[0x277D84F90];
      while (1)
      {
        v8 = v6;
        while (1)
        {
          if (v8 >= v5)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_26;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(v3, v8);
          if (!ValueAtIndex)
          {
            goto LABEL_30;
          }

          v10 = ValueAtIndex;
          swift_unownedRetainStrong();
          v11 = v10;
          if (IOHIDElementGetType(v11) == kIOHIDElementTypeCollection)
          {
            break;
          }

          ++v8;
          if (v6 == v5)
          {
            goto LABEL_24;
          }
        }

        v26 = v11;
        type metadata accessor for IOHIDElement();
        v13 = v12;
        v14 = v11;
        sub_2455D06E8(&v26, v13, &v27);
        v15 = v27;
        swift_unownedRetain();
        CollectionType = IOHIDElementGetCollectionType(v15);
        v17 = CollectionType >= (kIOHIDElementCollectionTypeUsageModifier|kIOHIDElementCollectionTypeApplication) ? 1 : CollectionType;
        UsagePage = IOHIDElementGetUsagePage(v15);
        if (WORD1(UsagePage))
        {
          break;
        }

        v19 = UsagePage;
        Usage = IOHIDElementGetUsage(v15);

        if (HIWORD(Usage))
        {
          goto LABEL_29;
        }

        HIDUsage.init(page:usage:)(Usage, v19, &v27);

        v24 = v27;
        v25 = BYTE4(v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2455A5ADC(0, *(v7 + 2) + 1, 1, v7);
        }

        v22 = *(v7 + 2);
        v21 = *(v7 + 3);
        if (v22 >= v21 >> 1)
        {
          v7 = sub_2455A5ADC((v21 > 1), v22 + 1, 1, v7);
        }

        *(v7 + 2) = v22 + 1;
        v23 = &v7[24 * v22];
        *(v23 + 4) = v1;
        v23[40] = v17;
        v23[46] = (v24 | (v25 << 32)) >> 32;
        *(v23 + 42) = v24;
        *(v23 + 6) = v15;
        if (v6 == v5)
        {
          goto LABEL_24;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

void HIDElementCollection.childElements.getter()
{
  v1 = *v0;
  v2 = IOHIDElementGetChildren(*(v0 + 16));
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v3);
    if ((Count & 0x8000000000000000) == 0)
    {
      v5 = Count;
      if (!Count)
      {
        goto LABEL_21;
      }

      v6 = 0;
      v7 = MEMORY[0x277D84F90];
      while (1)
      {
        v8 = v6;
        while (1)
        {
          if (v8 >= v5)
          {
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_23;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(v3, v8);
          if (!ValueAtIndex)
          {
            goto LABEL_25;
          }

          v10 = ValueAtIndex;
          swift_unownedRetainStrong();
          v11 = v10;
          sub_2455A0954(v11, v1, &v21);
          v28[4] = v25;
          v28[5] = v26;
          v29[0] = v27[0];
          *(v29 + 9) = *(v27 + 9);
          v28[0] = v21;
          v28[1] = v22;
          v28[2] = v23;
          v28[3] = v24;
          v30 = v21;
          v31 = v22;
          v32 = v23;
          v33 = v24;
          v34 = v25;
          v35 = v26;
          v36[0] = v27[0];
          *(v36 + 9) = *(v27 + 9);
          if (sub_2455A5BFC(&v30) != 1)
          {
            break;
          }

LABEL_7:
          ++v8;
          if (v6 == v5)
          {
            goto LABEL_21;
          }
        }

        if (BYTE8(v36[0]))
        {
          break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2455A5C14(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_2455A5C14((v12 > 1), v13 + 1, 1, v7);
        }

        *(v7 + 2) = v13 + 1;
        v14 = &v7[128 * v13];
        v15 = v30;
        v16 = v31;
        v17 = v33;
        *(v14 + 4) = v32;
        *(v14 + 5) = v17;
        *(v14 + 2) = v15;
        *(v14 + 3) = v16;
        v18 = v34;
        v19 = v35;
        v20 = v36[0];
        *(v14 + 137) = *(v36 + 9);
        *(v14 + 7) = v19;
        *(v14 + 8) = v20;
        *(v14 + 6) = v18;
        if (v6 == v5)
        {
LABEL_21:

          return;
        }
      }

      sub_2455A7680(v28, &qword_27EE14DF0, &qword_2455EAC30);
      goto LABEL_7;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

void sub_2455A0954(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v88 = 1;
  *&v59 = a1;
  type metadata accessor for IOHIDElement();
  v7 = v6;
  v8 = a1;
  sub_2455D06E8(&v59, v7, &v66);
  v9 = v66;
  swift_unownedRetain();
  ReportID = IOHIDElementGetReportID(v9);
  if (ReportID > 0xFF)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  HIDReportID.init(rawValue:)(ReportID, &v66);
  v51 = v66;
  v88 = BYTE1(v66);
  Type = IOHIDElementGetType(v9);
  if (Type == kIOHIDElementTypeCollection)
  {

    swift_unownedRelease();

    sub_2455A5DD0(&v66);
    v12 = v71;
    a3[4] = v70;
    a3[5] = v12;
    a3[6] = *v72;
    *(a3 + 105) = *&v72[9];
    v13 = v67;
    *a3 = v66;
    a3[1] = v13;
    v14 = v69;
    a3[2] = v68;
    a3[3] = v14;
    return;
  }

  v15 = Type == kIOHIDElementTypeInput_NULL;
  v16 = 2 * (Type == kIOHIDElementTypeFeature);
  if (Type == kIOHIDElementTypeOutput)
  {
    v16 = 1;
  }

  if (Type - 1 >= 5)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  UsagePage = IOHIDElementGetUsagePage(v9);
  Usage = IOHIDElementGetUsage(v9);
  v20 = (Usage & 0xFFFF0000) != 0;
  if (WORD1(UsagePage))
  {
    goto LABEL_24;
  }

  if (HIWORD(Usage))
  {
    v21 = 0;
  }

  else
  {
    v21 = Usage;
  }

  HIDUsage.init(page:usage:)(v21, UsagePage, &v66);
  v22 = BYTE4(v66);
  v23 = v66;
  LODWORD(v24) = IOHIDElementGetReportSize(v9);
  if (IOHIDElementIsArray(v9))
  {
    v24 = v24 * IOHIDElementGetReportCount(v9);
    if ((v24 & 0xFFFFFFFF00000000) != 0)
    {
      goto LABEL_26;
    }
  }

  v50 = v24;
  IOHIDElementGetUnit(v9);
  if (IOHIDElementGetUnitExponent(v9) > 0x7F)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v48 = v15;
  v47 = v23 | (v22 << 32);
  v85 = 1;
  v84 = 1;
  LogicalMin = IOHIDElementGetLogicalMin(v9);
  v83 = 0;
  LogicalMax = IOHIDElementGetLogicalMax(v9);
  v81 = 0;
  v27 = LogicalMin;
  v28 = LogicalMin | LogicalMax;
  v29 = (LogicalMin | LogicalMax) == 0;
  v49 = v17;
  v39 = a2;
  v30 = v8;
  if (v28)
  {
    v46 = LogicalMax;
  }

  else
  {
    v46 = 0;
    v27 = 0;
    v83 = 1;
    v81 = 1;
  }

  PhysicalMin = IOHIDElementGetPhysicalMin(v9);
  v79 = 0;
  PhysicalMax = IOHIDElementGetPhysicalMax(v9);

  v77 = 0;
  if (PhysicalMin | PhysicalMax)
  {
    v34 = v46;
    v33 = v27;
  }

  else
  {
    v79 = v29;
    v77 = v29;
    v33 = v27;
    PhysicalMin = v27;
    v34 = v46;
    PhysicalMax = v46;
  }

  v73 = 1;
  *&v52 = v39;
  BYTE8(v52) = v49;
  BYTE14(v52) = BYTE4(v47);
  *(&v52 + 10) = v47;
  HIBYTE(v52) = v51;
  v45 = v88;
  LOBYTE(v53) = v88;
  *(&v53 + 1) = v86;
  BYTE3(v53) = v87;
  *(&v53 + 4) = v50;
  v44 = v85;
  WORD6(v53) = v85;
  v43 = v84;
  BYTE14(v53) = v84;
  *&v54 = v33;
  v42 = v83;
  BYTE8(v54) = v83;
  HIDWORD(v54) = *&v82[3];
  *(&v54 + 9) = *v82;
  *&v55 = v34;
  v41 = v81;
  BYTE8(v55) = v81;
  HIDWORD(v55) = *&v80[3];
  *(&v55 + 9) = *v80;
  *&v56 = PhysicalMin;
  v40 = v79;
  BYTE8(v56) = v79;
  HIDWORD(v56) = *&v78[3];
  *(&v56 + 9) = *v78;
  *&v57 = PhysicalMax;
  v38 = v77;
  BYTE8(v57) = v77;
  HIDWORD(v57) = *&v76[3];
  *(&v57 + 9) = *v76;
  *v58 = v9;
  v58[8] = v48;
  v58[9] = v20;
  *&v58[14] = v75;
  *&v58[10] = v74;
  *&v58[16] = 0;
  v58[24] = 1;
  v61 = v54;
  v62 = v55;
  v59 = v52;
  v60 = v53;
  *(v65 + 9) = *&v58[9];
  v64 = v57;
  v65[0] = *v58;
  v63 = v56;
  nullsub_1(&v59);
  v35 = v64;
  a3[4] = v63;
  a3[5] = v35;
  a3[6] = v65[0];
  *(a3 + 105) = *(v65 + 9);
  v36 = v60;
  *a3 = v59;
  a3[1] = v36;
  v37 = v62;
  a3[2] = v61;
  a3[3] = v37;
  sub_2455A5D68(&v52, &v66);

  *&v66 = v39;
  BYTE8(v66) = v49;
  BYTE14(v66) = BYTE4(v47);
  *(&v66 + 10) = v47;
  HIBYTE(v66) = v51;
  LOBYTE(v67) = v45;
  *(&v67 + 1) = v86;
  BYTE3(v67) = v87;
  *(&v67 + 4) = v50;
  WORD6(v67) = v44;
  BYTE14(v67) = v43;
  *&v68 = v33;
  BYTE8(v68) = v42;
  *(&v68 + 9) = *v82;
  HIDWORD(v68) = *&v82[3];
  *&v69 = v34;
  BYTE8(v69) = v41;
  *(&v69 + 9) = *v80;
  HIDWORD(v69) = *&v80[3];
  *&v70 = PhysicalMin;
  BYTE8(v70) = v40;
  *(&v70 + 9) = *v78;
  HIDWORD(v70) = *&v78[3];
  *&v71 = PhysicalMax;
  BYTE8(v71) = v38;
  *(&v71 + 9) = *v76;
  HIDWORD(v71) = *&v76[3];
  *v72 = v9;
  v72[8] = v48;
  v72[9] = v20;
  *&v72[14] = v75;
  *&v72[10] = v74;
  *&v72[16] = 0;
  v72[24] = 1;
  sub_2455A5DA0(&v66);
}

void HIDElementCollection.usage.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 10);
  *(a1 + 4) = *(v1 + 14);
  *a1 = v2;
}

int *HIDElementCollection.usage.setter(int *result)
{
  v2 = *result;
  *(v1 + 14) = *(result + 4);
  *(v1 + 10) = v2;
  return result;
}

uint64_t static HIDElementCollection.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *a2;
  v5 = a2[2];
  type metadata accessor for HIDDeviceClient();
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();
  v6 = static HIDDeviceClient.== infix(_:_:)(v2, v4);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for IOHIDElement();
  sub_2455A7638(&qword_27EE14DF8, type metadata accessor for IOHIDElement);
  v7 = v3;
  v8 = v5;
  v9 = sub_2455E9A50();

  return v9 & 1;
}

uint64_t sub_2455A1018(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *a2;
  v5 = a2[2];
  type metadata accessor for HIDDeviceClient();
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();
  v6 = static HIDDeviceClient.== infix(_:_:)(v2, v4);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for IOHIDElement();
  sub_2455A7638(&qword_27EE14DF8, type metadata accessor for IOHIDElement);
  v7 = v3;
  v8 = v5;
  v9 = sub_2455E9A50();

  return v9 & 1;
}

uint64_t HIDElementCollection.hash(into:)()
{
  v1 = *v0;
  v2 = v0[2];
  swift_unownedRetainStrong();
  type metadata accessor for HIDDeviceClient();
  sub_2455A7638(&qword_27EE14E00, type metadata accessor for HIDDeviceClient);
  sub_2455E9B00();

  type metadata accessor for IOHIDElement();
  sub_2455A7638(&qword_27EE14DF8, type metadata accessor for IOHIDElement);
  return sub_2455E9A60();
}

uint64_t HIDElementCollection.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v5 = *(v0 + 14);
  v4 = *(v0 + 10);
  v6 = v0[2];
  sub_2455EA080();
  sub_2455A5DEC();
  sub_2455E9B00();
  return sub_2455EA0D0();
}

uint64_t sub_2455A128C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v5 = *(v0 + 14);
  v4 = *(v0 + 10);
  v6 = v0[2];
  sub_2455EA080();
  sub_2455E9B00();
  return sub_2455EA0D0();
}

uint64_t sub_2455A1310()
{
  v1 = *v0;
  v2 = v0[2];
  swift_unownedRetainStrong();
  type metadata accessor for HIDDeviceClient();
  sub_2455A7638(&qword_27EE14E00, type metadata accessor for HIDDeviceClient);
  sub_2455E9B00();

  type metadata accessor for IOHIDElement();
  sub_2455A7638(&qword_27EE14DF8, type metadata accessor for IOHIDElement);
  return sub_2455E9A60();
}

uint64_t sub_2455A140C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v5 = *(v0 + 14);
  v4 = *(v0 + 10);
  v6 = v0[2];
  sub_2455EA080();
  sub_2455E9B00();
  return sub_2455EA0D0();
}

uint64_t HIDElementCollection.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 10);
  v4 = *(v0 + 14);
  sub_2455E9DF0();
  MEMORY[0x245D6B9A0](0xD000000000000025, 0x80000002455F27B0);
  swift_unownedRetainStrong();
  type metadata accessor for HIDDeviceClient();
  sub_2455A7638(&qword_27EE14E10, type metadata accessor for HIDDeviceClient);
  v5 = sub_2455E9FD0();
  MEMORY[0x245D6B9A0](v5);

  MEMORY[0x245D6B9A0](0x203A65707974202CLL, 0xE800000000000000);
  v6 = sub_2455E9B80();
  MEMORY[0x245D6B9A0](v6);

  MEMORY[0x245D6B9A0](0x3A6567617375202CLL, 0xE900000000000020);
  sub_2455A5E40();
  v7 = sub_2455E9FD0();
  MEMORY[0x245D6B9A0](v7);

  MEMORY[0x245D6B9A0](41, 0xE100000000000000);
  return 0;
}

uint64_t HIDElement.Value.element.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[6];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 105);
  v5 = *(v16 + 9);
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_2455A5D68(v11, &v10);
}

__n128 HIDElement.Value.element.setter(uint64_t a1)
{
  v3 = v1[5];
  v10[4] = v1[4];
  v10[5] = v3;
  v11[0] = v1[6];
  *(v11 + 9) = *(v1 + 105);
  v4 = v1[1];
  v10[0] = *v1;
  v10[1] = v4;
  v5 = v1[3];
  v10[2] = v1[2];
  v10[3] = v5;
  sub_2455A5DA0(v10);
  v6 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v6;
  v1[6] = *(a1 + 96);
  *(v1 + 105) = *(a1 + 105);
  v7 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v9;
  return result;
}

uint64_t HIDElement.Value.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HIDElement.Value() + 20);
  v4 = sub_2455E9E90();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HIDElement.Value.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HIDElement.Value() + 20);
  v4 = sub_2455E9E90();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HIDElement.Value.bytes.getter()
{
  v1 = v0 + *(type metadata accessor for HIDElement.Value() + 24);
  v2 = *v1;
  sub_2455A5EE0(*v1, *(v1 + 8));
  return v2;
}

uint64_t HIDElement.Value.bytes.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for HIDElement.Value() + 24);
  result = sub_2455A5F34(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t HIDElement.Value.init(element:fromBytes:timestamp:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v9 = a1[5];
  a5[4] = a1[4];
  a5[5] = v9;
  a5[6] = a1[6];
  *(a5 + 105) = *(a1 + 105);
  v10 = a1[1];
  *a5 = *a1;
  a5[1] = v10;
  v11 = a1[3];
  a5[2] = a1[2];
  a5[3] = v11;
  v12 = type metadata accessor for HIDElement.Value();
  v13 = (a5 + *(v12 + 24));
  *v13 = a2;
  v13[1] = a3;
  v14 = *(v12 + 20);
  v15 = sub_2455E9E90();
  v16 = *(*(v15 - 8) + 32);

  return v16(a5 + v14, a4, v15);
}

uint64_t HIDElement.client.setter(uint64_t a1)
{
  v3 = *v1;
  swift_unownedRetain();
  swift_unownedRelease();

  *v1 = a1;
  return result;
}

uint64_t (*HIDElement.client.modify(uint64_t *a1))()
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = swift_unownedRetainStrong();
  return sub_2455A1AA8;
}

uint64_t sub_2455A1AAC(uint64_t *a1, char a2)
{
  v4 = a1[2];
  v5 = *a1;
  swift_unownedRetain();
  swift_unownedRelease();
  v6 = a1[1];
  if (a2)
  {
    *v6 = v5;
  }

  else
  {

    *v6 = v5;
  }

  return result;
}

void HIDElement.parentCollection.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = IOHIDElementGetParent(*(v1 + 96));
  if (v4)
  {
    v5 = v4;
    swift_unownedRetainStrong();
    sub_2455A039C(v5, v3, &v9);
    v6 = v11;
    if (v11)
    {
      v7 = v10;
      v8 = v10 >> 16;
      *a1 = v9;
      *(a1 + 8) = v7;
      *(a1 + 14) = BYTE6(v7);
      *(a1 + 10) = v8;
      *(a1 + 16) = v6;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2455A1BF8@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result == 129;
  if (result == 257)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

void HIDElement.usage.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 10);
  *(a1 + 4) = *(v1 + 14);
  *a1 = v2;
}

int *HIDElement.usage.setter(int *result)
{
  v2 = *result;
  *(v1 + 14) = *(result + 4);
  *(v1 + 10) = v2;
  return result;
}

void HIDElement.reportID.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 15);
  a1[1] = v2;
}

_BYTE *HIDElement.reportID.setter(_BYTE *result)
{
  v2 = result[1];
  *(v1 + 15) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t HIDElement.unit.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t HIDElement.unitExponent.setter(uint64_t result)
{
  *(v1 + 29) = result;
  *(v1 + 30) = BYTE1(result) & 1;
  return result;
}

uint64_t HIDElement.logicalMinimum.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t HIDElement.logicalMinimum.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t HIDElement.logicalMaximum.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t HIDElement.logicalMaximum.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t HIDElement.physicalMinimum.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t HIDElement.physicalMinimum.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t HIDElement.physicalMaximum.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t HIDElement.physicalMaximum.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t sub_2455A1EB8()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t static HIDElement.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[12];
  v4 = *a2;
  v5 = a2[12];
  type metadata accessor for HIDDeviceClient();
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();
  v6 = static HIDDeviceClient.== infix(_:_:)(v2, v4);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for IOHIDElement();
  sub_2455A7638(&qword_27EE14DF8, type metadata accessor for IOHIDElement);
  v7 = v3;
  v8 = v5;
  v9 = sub_2455E9A50();

  return v9 & 1;
}

uint64_t sub_2455A1FC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[12];
  v4 = *a2;
  v5 = a2[12];
  type metadata accessor for HIDDeviceClient();
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();
  v6 = static HIDDeviceClient.== infix(_:_:)(v2, v4);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for IOHIDElement();
  sub_2455A7638(&qword_27EE14DF8, type metadata accessor for IOHIDElement);
  v7 = v3;
  v8 = v5;
  v9 = sub_2455E9A50();

  return v9 & 1;
}

uint64_t HIDElement.hash(into:)()
{
  v1 = *v0;
  v2 = v0[12];
  swift_unownedRetainStrong();
  type metadata accessor for HIDDeviceClient();
  sub_2455A7638(&qword_27EE14E00, type metadata accessor for HIDDeviceClient);
  sub_2455E9B00();

  type metadata accessor for IOHIDElement();
  sub_2455A7638(&qword_27EE14DF8, type metadata accessor for IOHIDElement);
  return sub_2455E9A60();
}

uint64_t HIDElement.hashValue.getter()
{
  v6 = v0[4];
  v7 = v0[5];
  *v8 = v0[6];
  *&v8[9] = *(v0 + 105);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_2455EA080();
  sub_2455A5F88();
  sub_2455E9B00();
  return sub_2455EA0D0();
}

uint64_t sub_2455A2238()
{
  v6 = v0[4];
  v7 = v0[5];
  *v8 = v0[6];
  *&v8[9] = *(v0 + 105);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_2455EA080();
  sub_2455E9B00();
  return sub_2455EA0D0();
}

uint64_t sub_2455A22C0()
{
  v1 = *v0;
  v2 = v0[12];
  swift_unownedRetainStrong();
  type metadata accessor for HIDDeviceClient();
  sub_2455A7638(&qword_27EE14E00, type metadata accessor for HIDDeviceClient);
  sub_2455E9B00();

  type metadata accessor for IOHIDElement();
  sub_2455A7638(&qword_27EE14DF8, type metadata accessor for IOHIDElement);
  return sub_2455E9A60();
}

uint64_t sub_2455A23BC()
{
  v6 = v0[4];
  v7 = v0[5];
  *v8 = v0[6];
  *&v8[9] = *(v0 + 105);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_2455EA080();
  sub_2455E9B00();
  return sub_2455EA0D0();
}

uint64_t HIDElement.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 10);
  v4 = *(v0 + 14);
  v5 = *(v0 + 15);
  v6 = *(v0 + 16);
  v7 = 0xE000000000000000;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2455E9DF0();
  MEMORY[0x245D6B9A0](0xD00000000000001BLL, 0x80000002455F27E0);
  swift_unownedRetainStrong();
  HIDWORD(v14[0]) = HIDWORD(v1);
  type metadata accessor for HIDDeviceClient();
  sub_2455A7638(&qword_27EE14E10, type metadata accessor for HIDDeviceClient);
  v8 = sub_2455E9FD0();
  MEMORY[0x245D6B9A0](v8);

  MEMORY[0x245D6B9A0](0x203A65707974202CLL, 0xE800000000000000);
  v9 = sub_2455E9B80();
  MEMORY[0x245D6B9A0](v9);

  MEMORY[0x245D6B9A0](0x3A6567617375202CLL, 0xE900000000000020);
  BYTE4(v14[0]) = v4;
  LODWORD(v14[0]) = v3;
  sub_2455A5E40();
  v10 = sub_2455E9FD0();
  MEMORY[0x245D6B9A0](v10);

  if (v6)
  {
    v11 = 0;
  }

  else
  {
    strcpy(v14, ", reportID: ");
    BYTE5(v14[1]) = 0;
    HIWORD(v14[1]) = -5120;
    sub_2455A5FDC();
    v12 = sub_2455E9FD0();
    MEMORY[0x245D6B9A0](v12);

    v11 = v14[0];
    v7 = v14[1];
  }

  MEMORY[0x245D6B9A0](v11, v7);

  MEMORY[0x245D6B9A0](41, 0xE100000000000000);
  return v15;
}

uint64_t HIDElement.Value.hash(into:)()
{
  v1 = v0;
  v12 = v0[4];
  v13 = v0[5];
  *v14 = v0[6];
  *&v14[9] = *(v0 + 105);
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v11 = v0[3];
  sub_2455A5F88();
  sub_2455E9B00();
  v2 = type metadata accessor for HIDElement.Value();
  v3 = *(v2 + 20);
  sub_2455E9E90();
  sub_2455A7638(&qword_27EE14E30, MEMORY[0x277D85938]);
  sub_2455E9B00();
  v4 = (v1 + *(v2 + 24));
  v5 = *v4;
  v6 = v4[1];
  return sub_2455E9A10();
}

uint64_t HIDElement.Value.hashValue.getter()
{
  v1 = v0;
  sub_2455EA080();
  v12 = v0[4];
  v13 = v0[5];
  *v14 = v0[6];
  *&v14[9] = *(v0 + 105);
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v11 = v0[3];
  sub_2455A5F88();
  sub_2455E9B00();
  v2 = type metadata accessor for HIDElement.Value();
  v3 = *(v2 + 20);
  sub_2455E9E90();
  sub_2455A7638(&qword_27EE14E30, MEMORY[0x277D85938]);
  sub_2455E9B00();
  v4 = (v1 + *(v2 + 24));
  v5 = *v4;
  v6 = v4[1];
  sub_2455E9A10();
  return sub_2455EA0D0();
}

uint64_t sub_2455A2878(uint64_t a1)
{
  v3 = v1;
  sub_2455EA080();
  v13 = v1[4];
  v14 = v1[5];
  *v15 = v1[6];
  *&v15[9] = *(v1 + 105);
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  sub_2455A5F88();
  sub_2455E9B00();
  v4 = *(a1 + 20);
  sub_2455E9E90();
  sub_2455A7638(&qword_27EE14E30, MEMORY[0x277D85938]);
  sub_2455E9B00();
  v5 = (v3 + *(a1 + 24));
  v6 = *v5;
  v7 = v5[1];
  sub_2455E9A10();
  return sub_2455EA0D0();
}

uint64_t sub_2455A2978(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v14 = v2[4];
  v15 = v2[5];
  *v16 = v2[6];
  *&v16[9] = *(v2 + 105);
  v10 = *v2;
  v11 = v2[1];
  v12 = v2[2];
  v13 = v2[3];
  sub_2455A5F88();
  sub_2455E9B00();
  v5 = *(a2 + 20);
  sub_2455E9E90();
  sub_2455A7638(&qword_27EE14E30, MEMORY[0x277D85938]);
  sub_2455E9B00();
  v6 = (v4 + *(a2 + 24));
  v7 = *v6;
  v8 = v6[1];
  return sub_2455E9A10();
}

uint64_t sub_2455A2A68(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_2455EA080();
  v14 = v2[4];
  v15 = v2[5];
  *v16 = v2[6];
  *&v16[9] = *(v2 + 105);
  v10 = *v2;
  v11 = v2[1];
  v12 = v2[2];
  v13 = v2[3];
  sub_2455A5F88();
  sub_2455E9B00();
  v5 = *(a2 + 20);
  sub_2455E9E90();
  sub_2455A7638(&qword_27EE14E30, MEMORY[0x277D85938]);
  sub_2455E9B00();
  v6 = (v4 + *(a2 + 24));
  v7 = *v6;
  v8 = v6[1];
  sub_2455E9A10();
  return sub_2455EA0D0();
}

uint64_t HIDElement.Value.integerValue<A>(asTypeTruncatingIfNeeded:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(*(*(a2 + 8) + 24) + 16);
  v7 = (*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = (MEMORY[0x28223BE20])();
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_2455E9DB0() & 1) == 0)
  {
    goto LABEL_4;
  }

  v13 = type metadata accessor for HIDElement.Value();
  result = sub_2455A2E30(*(v18[0] + *(v13 + 24)), *(v18[0] + *(v13 + 24) + 8));
  if ((result & 0x100) == 0)
  {
    if ((result & 0x80) != 0)
    {
      swift_getAssociatedConformanceWitness();
      sub_2455EA010();
      sub_2455E9FE0();
      sub_2455E9D80();
      v15 = (*(v9 + 8))(v12, a1);
      goto LABEL_6;
    }

LABEL_4:
    swift_getAssociatedConformanceWitness();
    sub_2455EA010();
    v15 = sub_2455E9FE0();
LABEL_6:
    MEMORY[0x28223BE20](v15);
    v18[-4] = a1;
    v18[-3] = a2;
    v17 = 4039;
    return sub_2455A4668(a3, sub_2455A6B98, &v18[-6], a1, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v16);
  }

  __break(1u);
  return result;
}

uint64_t sub_2455A2E30(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v2)
    {
      if ((a2 & 0xFF000000000000) != 0)
      {
        v3 = BYTE6(a2);
        goto LABEL_12;
      }

LABEL_10:
      v4 = 0;
      v5 = 1;
      return v4 | (v5 << 8);
    }

    if (a1 == a1 >> 32)
    {
      goto LABEL_10;
    }
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = a1 >> 32;
  }

LABEL_12:
  result = v3 - 1;
  if (!__OFSUB__(v3, 1))
  {
    v4 = sub_2455E99F0();
    v5 = 0;
    return v4 | (v5 << 8);
  }

  __break(1u);
  return result;
}

uint64_t sub_2455A2ED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EC0, "Ro");
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v18 - v6;
  v8 = (a2 + *(type metadata accessor for HIDElement.Value() + 24));
  v9 = *v8;
  v10 = v8[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_7;
    }

    v12 = *(v9 + 16);
  }

  else if (!v11)
  {
    goto LABEL_7;
  }

  sub_2455A5EE0(v9, v10);
LABEL_7:
  sub_2455E9A30();
  v18 = *(v4 + 36);
  sub_2455E9A20();
  sub_2455A7638(&qword_27EE14EC8, MEMORY[0x277CC92E0]);
  sub_2455E9D60();
  v13 = 0;
  if (v20)
  {
LABEL_14:
    *&v7[v18] = v13;
    return sub_2455A7680(v7, &qword_27EE14EC0, "Ro");
  }

  else
  {
    v14 = 0;
    while (1)
    {
      v15 = v19;
      result = sub_2455E9EB0();
      v17 = result + 7;
      if (__OFADD__(result, 7))
      {
        break;
      }

      v13 = v14 + 1;
      if (v17 < 0)
      {
        v17 = result + 14;
      }

      if (v14 < v17 >> 3)
      {
        *(a1 + v14) = v15;
        sub_2455E9D60();
        ++v14;
        if ((v20 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    __break(1u);
  }

  return result;
}

uint64_t HIDElement.Value.logicalValue<A>(asTypeTruncatingIfNeeded:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 8);
  v9 = *(*(v8 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = *(a1 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  HIDElement.Value.integerValue<A>(asTypeTruncatingIfNeeded:)(a1, a2, &v39 - v17);
  if (*(v4 + 40))
  {
    goto LABEL_2;
  }

  v40 = *(v4 + 32);
  if ((sub_2455E9DB0() & 1) == 0)
  {
    v39 = v13;
    v21 = a3;
    v22 = sub_2455E9DB0();
    result = sub_2455E9DA0();
    if (v22)
    {
      a3 = v21;
      if (result <= 64)
      {
        swift_getAssociatedConformanceWitness();
        sub_2455EA010();
        v27 = v41;
        sub_2455E9FE0();
        v28 = *(*(v8 + 32) + 8);
        v29 = sub_2455E9B20();
        v13 = v39;
        (*(v39 + 8))(v27, a1);
        v30 = v40;
        if (v29)
        {
          goto LABEL_2;
        }

        result = sub_2455E9D90();
        if (result < v30)
        {
          goto LABEL_2;
        }

        goto LABEL_21;
      }

      v42 = v40;
      sub_2455A6BC8();
      v23 = v41;
      sub_2455E9D70();
      v24 = *(*(v8 + 32) + 8);
      v25 = sub_2455E9B20();
      v13 = v39;
      goto LABEL_20;
    }

    a3 = v21;
    if (result < 64)
    {
      result = sub_2455E9D90();
      v13 = v39;
      if (result < v40)
      {
        goto LABEL_2;
      }

      goto LABEL_21;
    }

    v13 = v39;
    v26 = v40;
    if (v40 < 1)
    {
      goto LABEL_21;
    }

LABEL_19:
    v42 = v26;
    sub_2455A6BC8();
    v23 = v41;
    sub_2455E9D70();
    v31 = *(*(v8 + 32) + 8);
    v25 = sub_2455E9B20();
LABEL_20:
    result = (*(v13 + 8))(v23, a1);
    if (v25)
    {
      goto LABEL_2;
    }

    goto LABEL_21;
  }

  if (sub_2455E9DA0() >= 64)
  {
    v26 = v40;
    goto LABEL_19;
  }

  result = sub_2455E9D90();
  if (result < v40)
  {
    goto LABEL_2;
  }

LABEL_21:
  if ((*(v4 + 56) & 1) == 0)
  {
    v32 = a3;
    v33 = *(v4 + 48);
    v34 = sub_2455E9DB0();
    v35 = sub_2455E9DA0();
    if (v34)
    {
      a3 = v32;
      if (v35 > 64)
      {
LABEL_29:
        v42 = v33;
        sub_2455A6BC8();
        v36 = v41;
        sub_2455E9D70();
        v37 = *(*(v8 + 32) + 8);
        v38 = sub_2455E9B20();
        (*(v13 + 8))(v36, a1);
        if ((v38 & 1) == 0)
        {
LABEL_30:
          (*(v13 + 32))(a3, v18, a1);
          v19 = 0;
          return (*(v13 + 56))(a3, v19, 1, a1);
        }

LABEL_2:
        (*(v13 + 8))(v18, a1);
        v19 = 1;
        return (*(v13 + 56))(a3, v19, 1, a1);
      }
    }

    else
    {
      a3 = v32;
      if (v35 > 63)
      {
        if (v33 < 0)
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      }
    }

    if (v33 >= sub_2455E9D90())
    {
      goto LABEL_30;
    }

    goto LABEL_2;
  }

  __break(1u);
  return result;
}

uint64_t HIDElement.Value.physicalValue<A, B>(fromTypeTruncatingIfNeeded:as:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v35 = a4;
  v10 = sub_2455E9D50();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - v14;
  v16 = *(a1 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  if (*(v5 + 120))
  {
    v22 = *(*(a2 - 8) + 56);

    return v22(a5, 1, 1, a2);
  }

  else
  {
    v33 = &v33 - v21;
    v34 = a5;
    v24 = *(v5 + 112);
    v25 = a3;
    HIDElement.Value.logicalValue<A>(asTypeTruncatingIfNeeded:)(a1, a3, v15);
    if ((*(v16 + 48))(v15, 1, a1) == 1)
    {
      (*(v11 + 8))(v15, v10);
      return (*(*(a2 - 8) + 56))(v34, 1, 1, a2);
    }

    else
    {
      v26 = v33;
      (*(v16 + 32))(v33, v15, a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14E40, &qword_2455EAC38);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_2455EAC10;
      *(v27 + 56) = a1;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v27 + 32));
      v29 = *(v16 + 16);
      v29(boxed_opaque_existential_0, v26, a1);
      sub_2455EA070();

      v29(v20, v26, a1);
      v30 = *(v25 + 8);
      if (sub_2455E9DA0() < 65)
      {
        sub_2455E9DB0();
        sub_2455E9D90();
      }

      else
      {
        sub_2455A6C80();
        sub_2455A6CD4();
        sub_2455E9AB0();
      }

      v31 = *(v16 + 8);
      v31(v20, a1);
      v32 = v34;
      sub_2455E9AC0();
      v31(v33, a1);
      return (*(*(a2 - 8) + 56))(v32, 0, 1, a2);
    }
  }
}

uint64_t sub_2455A3A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = a2;
  v5 = *(a1 + 20);
  v6 = __CFADD__(v5, 7);
  v7 = v5 + 7;
  if (v6)
  {
    __break(1u);
  }

  v10 = a2 >> 63;
  v23[0] = sub_2455A6D28(v7 >> 3);
  v23[1] = v11;
  sub_2455A63F0(v23, v10);
  sub_2455A41AC(&v22, v23, v23);
  v12 = *v23;
  v13 = *(a1 + 80);
  a4[4] = *(a1 + 64);
  a4[5] = v13;
  a4[6] = *(a1 + 96);
  *(a4 + 105) = *(a1 + 105);
  v14 = *(a1 + 16);
  *a4 = *a1;
  a4[1] = v14;
  v15 = *(a1 + 48);
  a4[2] = *(a1 + 32);
  a4[3] = v15;
  v16 = type metadata accessor for HIDElement.Value();
  *(a4 + *(v16 + 24)) = v12;
  v17 = *(v16 + 20);
  v18 = sub_2455E9E90();
  (*(*(v18 - 8) + 32))(a4 + v17, a3, v18);
  v19 = *v23;
  sub_2455A5EE0(v12, *(&v12 + 1));
  result = sub_2455A5F34(v19, *(&v19 + 1));
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t HIDElement.Value.init<A>(element:fromIntegerTruncatingIfNeeded:timestamp:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a3;
  v63 = *MEMORY[0x277D85DE8];
  v10 = *(a5 + 8);
  v50 = *(*(v10 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *a1;
  LODWORD(v16) = *(a1 + 4);
  v52 = *(a1 + 5);
  v54 = v16;
  v18 = *(a1 + 88);
  v59 = *(a1 + 72);
  v60 = v18;
  v61 = *(a1 + 104);
  v62 = *(a1 + 120);
  v19 = *(a1 + 40);
  v56 = *(a1 + 24);
  v57 = v19;
  v58 = *(a1 + 56);
  if (sub_2455E9DB0())
  {
    if (sub_2455E9DA0() < 64)
    {
      (*(v14 + 16))(v17, a2, a4);
      v20 = sub_2455E9D90();
      (*(v14 + 8))(v17, a4);
LABEL_4:
      v21 = v52;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    *&v55 = 0;
    sub_2455A6DF4();
    sub_2455E9D70();
    v26 = *(*(v10 + 32) + 8);
  }

  else
  {
    v22 = sub_2455E9DB0();
    v49 = a2;
    v23 = sub_2455E9DA0();
    v24 = v23 < 64;
    if ((v22 & 1) == 0)
    {
      goto LABEL_13;
    }

    if (v23 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      sub_2455EA010();
      sub_2455E9FE0();
      v44 = *(*(v10 + 32) + 8);
      a2 = v49;
      v45 = sub_2455E9B20();
      v46 = *(v14 + 8);
      v46(v17, a4);
      if (v45)
      {
        v28 = 255;
        v21 = v52;
        v29 = v52 + 7;
        v24 = v52 < -7;
        if (v52 >= 0xFFFFFFF9)
        {
          goto LABEL_12;
        }

        goto LABEL_17;
      }

      (*(v14 + 16))(v17, a2, a4);
      v20 = sub_2455E9D90();
      v46(v17, a4);
      goto LABEL_4;
    }

    *&v55 = 0;
    sub_2455A6DF4();
    sub_2455E9D70();
    v25 = *(*(v10 + 32) + 8);
    a2 = v49;
  }

  v27 = sub_2455E9B20();
  (*(v14 + 8))(v17, a4);
  v21 = v52;
  if ((v27 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  while (1)
  {
    v28 = 255;
    v29 = v21 + 7;
    v24 = v21 < -7;
    if (v21 < 0xFFFFFFF9)
    {
      break;
    }

LABEL_12:
    while (1)
    {
      __break(1u);
LABEL_13:
      a2 = v49;
      v21 = v52;
      if (v24)
      {
        (*(v14 + 16))(v17, v49, a4);
        v30 = sub_2455E9D90();
        (*(v14 + 8))(v17, a4);
        if (v30 < 0)
        {
          break;
        }
      }

LABEL_16:
      v28 = 0;
      v29 = v21 + 7;
      v24 = v21 < -7;
      if (v21 < 0xFFFFFFF9)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_17:
  *&v55 = sub_2455A6D28(v29 >> 3);
  *(&v55 + 1) = v31;
  sub_2455A63F0(&v55, v28);
  v32 = (*(v14 + 16))(v17, a2, a4);
  MEMORY[0x28223BE20](v32);
  v47 = 803;
  sub_2455A4668(v17, sub_2455A6DC8, (&v48 - 4), a4, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v33);
  v34 = *(v14 + 8);
  v34(a2, a4);
  v34(v17, a4);
  *a6 = v53;
  v35 = v58;
  *(a6 + 72) = v59;
  *(a6 + 88) = v60;
  *(a6 + 104) = v61;
  v36 = v57;
  *(a6 + 24) = v56;
  *(a6 + 40) = v36;
  v37 = v55;
  *(a6 + 16) = v54;
  *(a6 + 20) = v21;
  *(a6 + 120) = v62;
  *(a6 + 56) = v35;
  v38 = type metadata accessor for HIDElement.Value();
  *(a6 + *(v38 + 24)) = v37;
  v39 = *(v38 + 20);
  v40 = sub_2455E9E90();
  (*(*(v40 - 8) + 32))(a6 + v39, v51, v40);
  v41 = v55;
  sub_2455A5EE0(v37, *(&v37 + 1));
  result = sub_2455A5F34(v41, *(&v41 + 1));
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2455A41AC(uint64_t result, char *a2, uint64_t *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = a2;
    v4 = result;
    if (result != a2)
    {
      v6 = a3;
      v7 = 0;
      while (1)
      {
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
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
LABEL_61:
          __break(1u);
        }

        v9 = *v4;
        v11 = *v6;
        v10 = v6[1];
        v12 = v10 >> 62;
        if ((v10 >> 62) > 1)
        {
          if (v12 != 2)
          {
            goto LABEL_3;
          }

          v14 = *(v11 + 16);
          v13 = *(v11 + 24);
          v15 = __OFSUB__(v13, v14);
          v16 = v13 - v14;
          if (v15)
          {
            goto LABEL_49;
          }

          if (v7 >= v16)
          {
            goto LABEL_3;
          }
        }

        else if (v12)
        {
          if (__OFSUB__(HIDWORD(v11), v11))
          {
            goto LABEL_50;
          }

          if (v7 >= HIDWORD(v11) - v11)
          {
            goto LABEL_3;
          }
        }

        else if (v7 >= BYTE6(v10))
        {
          goto LABEL_3;
        }

        if (v12 == 2)
        {
          break;
        }

        if (v12 == 1)
        {
          v17 = v10 & 0x3FFFFFFFFFFFFFFFLL;

          sub_2455A5F34(v11, v10);
          *v6 = xmmword_2455EAC20;
          sub_2455A5F34(0, 0xC000000000000000);
          if (v7 >= v11 >> 32 || v7 < v11)
          {
            goto LABEL_53;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {

            if (sub_2455E9910() && __OFSUB__(v11, sub_2455E9940()))
            {
              goto LABEL_58;
            }

            v23 = sub_2455E9960();
            v24 = *(v23 + 48);
            v25 = *(v23 + 52);
            swift_allocObject();
            v26 = sub_2455E98F0();

            v17 = v26;
          }

          sub_2455E98E0();
          v27 = sub_2455E9910();
          if (!v27)
          {
            goto LABEL_60;
          }

          v28 = v27;
          result = sub_2455E9940();
          if (__OFSUB__(v7, result))
          {
            goto LABEL_55;
          }

          *(v28 + v7 - result) = v9;
          v8 = v17 | 0x4000000000000000;
          goto LABEL_5;
        }

        result = sub_2455A5F34(v11, v10);
        v41 = v11;
        LOWORD(v42) = v10;
        BYTE2(v42) = BYTE2(v10);
        HIBYTE(v42) = BYTE3(v10);
        LOBYTE(v43) = BYTE4(v10);
        HIBYTE(v43) = BYTE5(v10);
        v44 = BYTE6(v10);
        if (v7 >= BYTE6(v10))
        {
          goto LABEL_51;
        }

        *(&v41 + v7) = v9;
        v3 = a2;
        v22 = v40 & 0xF00000000000000 | v42 | ((v43 | (v44 << 16)) << 32);
        v6 = a3;
        *a3 = v41;
        a3[1] = v22;
        v40 = v22;
LABEL_6:
        ++v4;
        ++v7;
        if (v4 == v3)
        {
          goto LABEL_3;
        }
      }

      v18 = v10 & 0x3FFFFFFFFFFFFFFFLL;
      v19 = *v6;

      sub_2455A5F34(v11, v10);
      *v6 = xmmword_2455EAC20;
      sub_2455A5F34(0, 0xC000000000000000);
      if (v7 < *(v11 + 16))
      {
        goto LABEL_52;
      }

      if (v7 >= *(v11 + 24))
      {
        goto LABEL_54;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = *(v11 + 16);
        v20 = *(v11 + 24);
        if (sub_2455E9910())
        {
          if (__OFSUB__(v21, sub_2455E9940()))
          {
            goto LABEL_59;
          }

          if (__OFSUB__(v20, v21))
          {
            goto LABEL_57;
          }
        }

        else if (__OFSUB__(v20, v21))
        {
          goto LABEL_57;
        }

        v29 = sub_2455E9960();
        v30 = *(v29 + 48);
        v31 = *(v29 + 52);
        swift_allocObject();
        v32 = sub_2455E98F0();

        v18 = v32;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = *(v11 + 16);
        v34 = *(v11 + 24);
        sub_2455E99E0();
        v35 = swift_allocObject();
        *(v35 + 16) = v33;
        *(v35 + 24) = v34;
        v3 = a2;

        v11 = v35;
      }

      sub_2455E98E0();
      v36 = sub_2455E9910();
      if (!v36)
      {
        goto LABEL_61;
      }

      v37 = v36;
      result = sub_2455E9940();
      if (__OFSUB__(v7, result))
      {
        goto LABEL_56;
      }

      *(v37 + v7 - result) = v9;
      v8 = v18 | 0x8000000000000000;
LABEL_5:
      *v6 = v11;
      v6[1] = v8;
      goto LABEL_6;
    }
  }

LABEL_3:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2455A4668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t HIDElement.Value.init<A>(element:fromLogicalValueTruncatingIfNeeded:timestamp:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a6;
  v11 = sub_2455E9E90();
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v11);
  v63 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a5;
  v14 = *(a5 + 8);
  v15 = *(*(v14 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v65 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[5];
  v75 = a1[4];
  v76 = v21;
  v77[0] = a1[6];
  *(v77 + 9) = *(a1 + 105);
  v23 = v22;
  v24 = a1[1];
  v71 = *a1;
  v72 = v24;
  v25 = a1[3];
  v73 = a1[2];
  v74 = v25;
  if (BYTE8(v73))
  {
    goto LABEL_2;
  }

  v62 = v73;
  if (sub_2455E9DB0())
  {
    if (sub_2455E9DA0() < 64)
    {
      v29 = v65;
      (*(v23 + 16))(v65, a2, a4);
      v30 = sub_2455E9D90();
      result = (*(v23 + 8))(v29, a4);
      goto LABEL_7;
    }

    v35 = v62;
LABEL_20:
    *&v69[0] = v35;
    sub_2455A6BC8();
    v43 = v65;
    sub_2455E9D70();
    v44 = *(*(v14 + 32) + 8);
    v45 = sub_2455E9B20();
    result = (*(v23 + 8))(v43, a4);
    if (v45)
    {
      goto LABEL_2;
    }

    goto LABEL_21;
  }

  v59 = v23;
  v60 = a3;
  v31 = sub_2455E9DB0();
  v61 = a2;
  result = sub_2455E9DA0();
  if ((v31 & 1) == 0)
  {
    if (result < 64)
    {
      v23 = v59;
      v36 = v65;
      a2 = v61;
      (*(v59 + 16))(v65, v61, a4);
      v37 = sub_2455E9D90();
      result = (*(v23 + 8))(v36, a4);
      a3 = v60;
      if (v37 < v62)
      {
        goto LABEL_2;
      }

      goto LABEL_21;
    }

    a2 = v61;
    v35 = v62;
    v23 = v59;
    a3 = v60;
    if (v62 < 1)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (result > 64)
  {
    *&v69[0] = v62;
    sub_2455A6BC8();
    v32 = v65;
    sub_2455E9D70();
    v33 = *(*(v14 + 32) + 8);
    a2 = v61;
    v34 = sub_2455E9B20();
    v23 = v59;
    result = (*(v59 + 8))(v32, a4);
    a3 = v60;
    if (v34)
    {
      goto LABEL_2;
    }

    goto LABEL_21;
  }

  swift_getAssociatedConformanceWitness();
  sub_2455EA010();
  v38 = v65;
  sub_2455E9FE0();
  v39 = *(*(v14 + 32) + 8);
  a2 = v61;
  v40 = sub_2455E9B20();
  v23 = v59;
  v41 = *(v59 + 8);
  v41(v38, a4);
  a3 = v60;
  if (v40)
  {
    goto LABEL_2;
  }

  v42 = v65;
  (*(v23 + 16))(v65, a2, a4);
  v30 = sub_2455E9D90();
  result = (v41)(v42, a4);
LABEL_7:
  if (v30 < v62)
  {
    goto LABEL_2;
  }

LABEL_21:
  if ((BYTE8(v74) & 1) == 0)
  {
    v46 = v74;
    v47 = sub_2455E9DB0();
    v48 = sub_2455E9DA0();
    if (v47)
    {
      if (v48 > 64)
      {
LABEL_29:
        *&v69[0] = v46;
        sub_2455A6BC8();
        v52 = v65;
        sub_2455E9D70();
        v53 = *(*(v14 + 32) + 8);
        v54 = sub_2455E9B20();
        v51 = *(v23 + 8);
        v51(v52, a4);
        if ((v54 & 1) == 0)
        {
LABEL_30:
          v62 = v51;
          v69[4] = v75;
          v69[5] = v76;
          v70[0] = v77[0];
          *(v70 + 9) = *(v77 + 9);
          v69[0] = v71;
          v69[1] = v72;
          v69[2] = v73;
          v69[3] = v74;
          v55 = v65;
          (*(v23 + 16))(v65, a2, a4);
          v57 = v66;
          v56 = v67;
          v58 = v63;
          (*(v66 + 16))(v63, a3, v67);
          HIDElement.Value.init<A>(element:fromIntegerTruncatingIfNeeded:timestamp:)(v69, v55, v58, a4, v64, v68);
          (*(v57 + 8))(a3, v56);
          (v62)(a2, a4);
          v26 = 0;
          goto LABEL_3;
        }

LABEL_2:
        sub_2455A5DA0(&v71);
        (*(v66 + 8))(a3, v67);
        (*(v23 + 8))(a2, a4);
        v26 = 1;
LABEL_3:
        v27 = type metadata accessor for HIDElement.Value();
        return (*(*(v27 - 8) + 56))(v68, v26, 1, v27);
      }
    }

    else if (v48 > 63)
    {
      if (v46 < 0)
      {
        goto LABEL_2;
      }

      goto LABEL_29;
    }

    v49 = v65;
    (*(v23 + 16))(v65, a2, a4);
    v50 = sub_2455E9D90();
    v51 = *(v23 + 8);
    v51(v49, a4);
    if (v46 >= v50)
    {
      goto LABEL_30;
    }

    goto LABEL_2;
  }

  __break(1u);
  return result;
}

uint64_t HIDElement.Value.init<A>(element:fromPhysicalValue:timestamp:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a5;
  v45 = a6;
  v10 = sub_2455E9E90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v42 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14E60, &qword_2455EAC40);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = (&v41 - v20);
  v22 = *(a4 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  *&v52[9] = *(a1 + 105);
  v25 = a1[5];
  v50 = a1[4];
  v51 = v25;
  *v52 = a1[6];
  v26 = a1[1];
  v47[0] = *a1;
  v47[1] = v26;
  v27 = a1[3];
  v48 = a1[2];
  v49 = v27;
  if (v52[24])
  {
    sub_2455A5DA0(v47);
    (*(v11 + 8))(a3, v10);
    (*(v22 + 8))(a2, a4);
LABEL_14:
    v38 = v45;
    v39 = type metadata accessor for HIDElement.Value();
    return (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  }

  v43 = a3;
  v28 = *&v52[16];
  (*(v22 + 16))(&v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a4);
  sub_2455A6C80();
  result = sub_2455E9AA0();
  v30 = v28 * v46;
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v41 = a2;
  v44 = a4;
  v31 = *(v11 + 16);
  result = v31(v16, v43, v10);
  if ((BYTE8(v48) & 1) != 0 || v48 > v30)
  {
    goto LABEL_10;
  }

  if (BYTE8(v49))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v49 >= v30)
  {
    v34 = v42;
    v31(v42, v16, v10);
    sub_2455A3A00(v47, v30, v34, v21);
    v32 = *(v11 + 8);
    v32(v16, v10);
    v33 = 0;
    goto LABEL_12;
  }

LABEL_10:
  v32 = *(v11 + 8);
  v32(v16, v10);
  sub_2455A5DA0(v47);
  v33 = 1;
LABEL_12:
  v35 = type metadata accessor for HIDElement.Value();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v37(v21, v33, 1, v35);
  v32(v43, v10);
  (*(v22 + 8))(v41, v44);
  if ((*(v36 + 48))(v21, 1, v35))
  {
    sub_2455A7680(v21, &qword_27EE14E60, &qword_2455EAC40);
    goto LABEL_14;
  }

  v40 = v45;
  sub_2455A6E48(v21, v45);
  return (v37)(v40, 0, 1, v35);
}

uint64_t HIDElement.Value.description.getter()
{
  v1 = v0;
  sub_2455E9DF0();
  MEMORY[0x245D6B9A0](0xD000000000000022, 0x80000002455F2800);
  v13 = v0[4];
  v14 = v0[5];
  *v15 = v0[6];
  *&v15[9] = *(v0 + 105);
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];
  v12 = v0[3];
  v2 = HIDElement.description.getter();
  MEMORY[0x245D6B9A0](v2);

  MEMORY[0x245D6B9A0](0x7473656D6974202CLL, 0xED0000203A706D61);
  v3 = type metadata accessor for HIDElement.Value();
  v4 = *(v3 + 20);
  sub_2455E9E90();
  sub_2455E9EA0();
  MEMORY[0x245D6B9A0](0x3A7365747962202CLL, 0xE90000000000005BLL);
  sub_2455A55A0(*(v1 + *(v3 + 24)), *(v1 + *(v3 + 24) + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14E68, &qword_2455EAC48);
  sub_2455A6EAC();
  v5 = sub_2455E9B10();
  v7 = v6;

  MEMORY[0x245D6B9A0](v5, v7);

  MEMORY[0x245D6B9A0](10589, 0xE200000000000000);
  return 0;
}

uint64_t sub_2455A55A0(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v46 = MEMORY[0x277D84F90];
    sub_2455A6700(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v33 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v46;
    v30 = &v34 + v9;
    v32 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v33 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_2455E9910();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_2455E9940();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v19 = v30[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_2455E9910();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_2455E9940();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EB0, &unk_2455F15E0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_2455EAC10;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v21 = sub_2455E9B70();
      v46 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v29 = v21;
        v26 = v22;
        sub_2455A6700((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v32;
    }

    while (v11 != v5);
  }

LABEL_39:
  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

void type metadata accessor for IOHIDElement()
{
  if (!qword_27EE14E98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE14E98);
    }
  }
}

uint64_t sub_2455A5964()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2455E9A70();
}

uint64_t sub_2455A59B0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2455E9A60();
}

uint64_t sub_2455A5A08()
{
  sub_2455EA080();
  v1 = *v0;
  swift_getWitnessTable();
  sub_2455E9A60();
  return sub_2455EA0D0();
}

uint64_t sub_2455A5A70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_2455E9A50();
}

char *sub_2455A5ADC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14ED8, &qword_2455EAFA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2455A5BFC(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *sub_2455A5C14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14ED0, "Xo");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
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

double sub_2455A5DD0(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_2455A5DEC()
{
  result = qword_27EE14E08;
  if (!qword_27EE14E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE14E08);
  }

  return result;
}

unint64_t sub_2455A5E40()
{
  result = qword_27EE14E18;
  if (!qword_27EE14E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE14E18);
  }

  return result;
}

uint64_t type metadata accessor for HIDElement.Value()
{
  result = qword_27EE15810;
  if (!qword_27EE15810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2455A5EE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2455A5F34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2455A5F88()
{
  result = qword_27EE14E20;
  if (!qword_27EE14E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE14E20);
  }

  return result;
}

unint64_t sub_2455A5FDC()
{
  result = qword_27EE14E28;
  if (!qword_27EE14E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE14E28);
  }

  return result;
}

uint64_t sub_2455A6030@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_2455E9910();
    if (v10)
    {
      v11 = sub_2455E9940();
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
      result = sub_2455E9930();
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
  v10 = sub_2455E9910();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2455E9940();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2455E9930();
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

uint64_t sub_2455A6260(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_2455A682C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2455A5F34(a3, a4);
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
  sub_2455A6030(v14, a3, a4, &v13);
  v10 = v4;
  sub_2455A5F34(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t *sub_2455A63F0(uint64_t *result, int a2)
{
  v3 = result;
  v24 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_2455A5F34(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_2455EAC20;
      sub_2455A5F34(0, 0xC000000000000000);
      result = sub_2455A6658(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_2455A5F34(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      result = memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_14:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = *result;

  sub_2455A5F34(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_2455EAC20;
  sub_2455A5F34(0, 0xC000000000000000);
  sub_2455E99A0();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  result = sub_2455E9910();
  if (result)
  {
    v13 = result;
    v14 = sub_2455E9940();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_2455E9930();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = memset(v13 + v15, a2, v19);
        *v3 = __b;
        v3[1] = v10 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2455A6658(int *a1, int a2)
{
  result = sub_2455E99D0();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_2455E9910();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_2455E9940();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_2455E9930();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

char *sub_2455A6700(char *a1, int64_t a2, char a3)
{
  result = sub_2455A6720(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2455A6720(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EB8, "Po");
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

uint64_t sub_2455A682C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2455E9910();
  v11 = result;
  if (result)
  {
    result = sub_2455E9940();
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

  sub_2455E9930();
  sub_2455A6030(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2455A68E4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_2455A5EE0(a3, a4);
          return sub_2455A6260(v13, a2, a3, a4) & 1;
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

uint64_t _s7CoreHID10HIDElementV5ValueV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[12];
  v6 = *a2;
  v7 = a2[12];
  type metadata accessor for HIDDeviceClient();
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();
  v8 = static HIDDeviceClient.== infix(_:_:)(v4, v6);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for IOHIDElement();
  sub_2455A7638(&qword_27EE14DF8, type metadata accessor for IOHIDElement);
  v9 = v5;
  v10 = v7;
  v11 = sub_2455E9A50();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = *(type metadata accessor for HIDElement.Value() + 24);
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = *v15;
  v17 = v15[1];

  return sub_2455A68E4(v13, v14, v16, v17);
}

uint64_t sub_2455A6B98(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_2455A2ED8(a1, v1[4]);
}

unint64_t sub_2455A6BC8()
{
  result = qword_27EE14E38;
  if (!qword_27EE14E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE14E38);
  }

  return result;
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

unint64_t sub_2455A6C80()
{
  result = qword_27EE14E48;
  if (!qword_27EE14E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE14E48);
  }

  return result;
}

unint64_t sub_2455A6CD4()
{
  result = qword_27EE14E50;
  if (!qword_27EE14E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE14E50);
  }

  return result;
}

uint64_t sub_2455A6D28(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_2455E9960();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_2455E9920();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2455E99E0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_2455A6DF4()
{
  result = qword_27EE14E58;
  if (!qword_27EE14E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE14E58);
  }

  return result;
}

uint64_t sub_2455A6E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HIDElement.Value();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2455A6EAC()
{
  result = qword_27EE14E70;
  if (!qword_27EE14E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE14E68, &qword_2455EAC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE14E70);
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

unint64_t sub_2455A6F5C()
{
  result = qword_27EE14E78;
  if (!qword_27EE14E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE14E78);
  }

  return result;
}

unint64_t sub_2455A6FB4()
{
  result = qword_27EE14E80;
  if (!qword_27EE14E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE14E80);
  }

  return result;
}

unint64_t sub_2455A700C()
{
  result = qword_27EE14E88;
  if (!qword_27EE14E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE14E88);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2455A70BC(uint64_t a1, int a2)
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

uint64_t sub_2455A7104(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for HIDElementCollection.CollectionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HIDElementCollection.CollectionType(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2455A72F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2455A7338(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2455A73BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2455E9E90();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2455A747C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 96) = (a2 - 1);
  }

  else
  {
    v7 = sub_2455E9E90();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2455A7520()
{
  result = sub_2455E9E90();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2455A7638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2455A7680(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t HIDVirtualDevice.Properties.descriptor.getter()
{
  v1 = *v0;
  sub_2455A5EE0(*v0, *(v0 + 8));
  return v1;
}

uint64_t HIDVirtualDevice.Properties.transport.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_2455A774C(v2, v3);
}

uint64_t sub_2455A774C(uint64_t a1, unint64_t a2)
{
  if (a2 != 14)
  {
    return sub_2455A775C(a1, a2);
  }

  return a1;
}

uint64_t sub_2455A775C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xE)
  {
  }

  return result;
}

uint64_t HIDVirtualDevice.Properties.product.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t HIDVirtualDevice.Properties.manufacturer.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t HIDVirtualDevice.Properties.modelNumber.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t HIDVirtualDevice.Properties.versionNumber.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t HIDVirtualDevice.Properties.serialNumber.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t HIDVirtualDevice.Properties.uniqueID.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t HIDVirtualDevice.Properties.locationID.getter()
{
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t sub_2455A7894(uint64_t a1)
{
  v3 = *(v1 + 160);

  *(v1 + 160) = a1;
  return result;
}

uint64_t HIDVirtualDevice.Properties.init(descriptor:vendorID:productID:transport:product:manufacturer:modelNumber:versionNumber:serialNumber:uniqueID:locationID:localizationCode:extraProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, unsigned __int8 *a21, uint64_t a22)
{
  v26 = a18;
  v25 = a19;
  v27 = a17;
  v28 = a15;
  v30 = a10;
  v29 = a11;
  v31 = *a5;
  result = *a21;
  v42 = BYTE4(a4) & 1;
  if (a22)
  {
    v38 = *a21;
    v41 = a8;
    v40 = a7;
    v39 = a6;
    v37 = a1;
    v33 = a4;
    v34 = a3;
    v36 = *a5;
    v35 = sub_2455A7A2C(a22);

    v31 = v36;
    result = v38;
    a3 = v34;
    LODWORD(a4) = v33;
    v30 = a10;
    a1 = v37;
    v28 = a15;
    v29 = a11;
    v27 = a17;
    a6 = v39;
    v26 = a18;
    a7 = v40;
    v25 = a19;
    a8 = v41;
  }

  else
  {
    v35 = 0;
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 20) = a4;
  *(a9 + 24) = v42;
  *(a9 + 32) = v31;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = v30;
  *(a9 + 80) = v29;
  *(a9 + 88) = a12;
  *(a9 + 96) = a13;
  *(a9 + 104) = a14 & 1;
  *(a9 + 112) = v28;
  *(a9 + 120) = a16;
  *(a9 + 128) = v27;
  *(a9 + 136) = v26;
  *(a9 + 144) = v25;
  *(a9 + 152) = a20 & 1;
  *(a9 + 153) = result;
  *(a9 + 160) = v35;
  return result;
}

uint64_t sub_2455A7A2C(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v28 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
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

  v8 = 0;
  while (v5)
  {
LABEL_12:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(a1 + 56) + 8 * v12);
    v17 = *(v1 + 16);
    if (*(v1 + 24) <= v17)
    {

      swift_unknownObjectRetain();
      sub_2455AB110(v17 + 1, 1);
      v1 = v28;
    }

    else
    {

      swift_unknownObjectRetain();
    }

    v18 = *(v1 + 40);
    sub_2455EA080();
    sub_2455E9BA0();
    result = sub_2455EA0D0();
    v19 = v1 + 64;
    v20 = -1 << *(v1 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v1 + 64 + 8 * (v21 >> 6))) == 0)
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
        v26 = *(v19 + 8 * v22);
        if (v26 != -1)
        {
          v9 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_6;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v21) & ~*(v1 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_6:
    v5 &= v5 - 1;
    *(v19 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = (*(v1 + 48) + 16 * v9);
    *v10 = v14;
    v10[1] = v15;
    *(*(v1 + 56) + 8 * v9) = v16;
    ++*(v1 + 16);
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

      return v1;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2455A7C54()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  v5 = *(v0 + 24);
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[7];
  v9 = v0[9];
  v77 = v0[6];
  v78 = v0[8];
  v83 = *(v0 + 104);
  v79 = v0[10];
  v80 = v0[14];
  v81 = v0[16];
  v82 = v0[11];
  v84 = v0[15];
  v85 = v0[17];
  v75 = v0[12];
  v76 = v0[18];
  v86 = *(v0 + 152);
  v87 = *(v0 + 153);
  v88 = v0[20];
  v10 = sub_2455E9A00();
  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v89 = v11;
  sub_2455AB790(v10, 0xD000000000000010, 0x80000002455F2830, isUniquelyReferenced_nonNull_native);
  v13 = sub_2455EA0F0();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_2455AB790(v13, 0x4449726F646E6556, 0xE800000000000000, v14);
  v15 = v11;
  if ((v5 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EF8, &qword_2455EAFE8);
    v16 = sub_2455E9D40();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v11;
    sub_2455AB790(v16, 0x49746375646F7250, 0xE900000000000044, v17);
  }

  if (v7 == 14)
  {
    v18 = 0;
  }

  else
  {
    v18 = v6;
  }

  v19 = 13;
  if (v7 != 14)
  {
    v19 = v7;
  }

  v89 = v18;
  v90 = v19;
  sub_2455A774C(v6, v7);
  v20 = sub_2455CFC94(&v89);
  v22 = v21;
  sub_2455AB90C(v89, v90);
  v89 = v20;
  v90 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EE0, &qword_2455EAFD0);
  v23 = sub_2455E9D40();

  v24 = swift_isUniquelyReferenced_nonNull_native();
  v89 = v15;
  sub_2455AB790(v23, 0x726F70736E617254, 0xE900000000000074, v24);
  v25 = v89;
  if (v8)
  {
    v89 = v77;
    v90 = v8;
    v26 = sub_2455E9D40();
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v25;
    sub_2455AB790(v26, 0x746375646F7250, 0xE700000000000000, v27);
    v25 = v89;
  }

  if (v9)
  {
    v89 = v78;
    v90 = v9;
    v28 = sub_2455E9D40();
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v25;
    sub_2455AB790(v28, 0x74636166756E614DLL, 0xEC00000072657275, v29);
    v25 = v89;
  }

  if (v82)
  {
    v89 = v79;
    v90 = v82;
    v30 = sub_2455E9D40();
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v25;
    sub_2455AB790(v30, 0x6D754E6C65646F4DLL, 0xEB00000000726562, v31);
    v25 = v89;
  }

  if ((v83 & 1) == 0)
  {
    v89 = v75;
    LOBYTE(v90) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EF0, &qword_2455EAFE0);
    v32 = sub_2455E9D40();
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v25;
    sub_2455AB790(v32, 0x4E6E6F6973726556, 0xED00007265626D75, v33);
    v25 = v89;
  }

  if (v84)
  {
    v89 = v80;
    v90 = v84;
    v34 = sub_2455E9D40();
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v25;
    sub_2455AB790(v34, 0x754E6C6169726553, 0xEC0000007265626DLL, v35);
    v25 = v89;
  }

  v36 = v88;
  if (v85)
  {
    v89 = v81;
    v90 = v85;
    v37 = sub_2455E9D40();
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v25;
    sub_2455AB790(v37, 0xD000000000000016, 0x80000002455F2850, v38);
    v25 = v89;
  }

  if ((v86 & 1) == 0)
  {
    v89 = v76;
    LOBYTE(v90) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EF0, &qword_2455EAFE0);
    v39 = sub_2455E9D40();
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v25;
    sub_2455AB790(v39, 0x6E6F697461636F4CLL, 0xEA00000000004449, v40);
    v25 = v89;
  }

  if (v87 != 36)
  {
    LOBYTE(v89) = v87;
    v89 = sub_2455CFE80(&v89);
    LOBYTE(v90) = v41 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EE8, &qword_2455EAFD8);
    v42 = sub_2455E9D40();
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v25;
    sub_2455AB790(v42, 0x437972746E756F43, 0xEB0000000065646FLL, v43);
    v25 = v89;
  }

  v44 = sub_2455E9C10();
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v89 = v25;
  sub_2455AB790(v44, 0x6E492D746C697542, 0xE800000000000000, v45);
  v46 = v89;
  if (!v88)
  {
    return v46;
  }

  v47 = 1 << *(v88 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v88 + 64);
  v50 = (v47 + 63) >> 6;

  v51 = 0;
  while (v49)
  {
    v54 = v51;
LABEL_35:
    v55 = __clz(__rbit64(v49)) | (v54 << 6);
    v56 = *(v36 + 56);
    v57 = (*(v36 + 48) + 16 * v55);
    v59 = *v57;
    v58 = v57[1];
    v60 = *(v56 + 8 * v55);

    swift_unknownObjectRetain();
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v46;
    v62 = sub_2455AB718(v59, v58);
    v64 = v46[2];
    v65 = (v63 & 1) == 0;
    v66 = __OFADD__(v64, v65);
    v67 = v64 + v65;
    if (v66)
    {
      goto LABEL_47;
    }

    v68 = v63;
    if (v46[3] >= v67)
    {
      if ((v61 & 1) == 0)
      {
        v73 = v62;
        sub_2455AB930();
        v62 = v73;
      }
    }

    else
    {
      sub_2455AB3B8(v67, v61);
      v62 = sub_2455AB718(v59, v58);
      if ((v68 & 1) != (v69 & 1))
      {
        goto LABEL_49;
      }
    }

    v49 &= v49 - 1;
    v46 = v89;
    if (v68)
    {
      v52 = v89[7];
      v53 = *(v52 + 8 * v62);
      *(v52 + 8 * v62) = v60;

      swift_unknownObjectRelease();
    }

    else
    {
      v89[(v62 >> 6) + 8] |= 1 << v62;
      v70 = (v46[6] + 16 * v62);
      *v70 = v59;
      v70[1] = v58;
      *(v46[7] + 8 * v62) = v60;
      v71 = v46[2];
      v66 = __OFADD__(v71, 1);
      v72 = v71 + 1;
      if (v66)
      {
        goto LABEL_48;
      }

      v46[2] = v72;
    }

    v51 = v54;
    v36 = v88;
  }

  while (1)
  {
    v54 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v54 >= v50)
    {

      return v46;
    }

    v49 = *(v88 + 64 + 8 * v54);
    ++v51;
    if (v49)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_2455EA020();
  __break(1u);
  return result;
}

double sub_2455A836C@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2455A83D4(uint64_t a1)
{
  swift_beginAccess();
  sub_2455ABAA0(a1, v1 + 128);
  return swift_endAccess();
}

uint64_t sub_2455A84BC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 192) = a1;
  return result;
}

uint64_t sub_2455A8580(char a1)
{
  result = swift_beginAccess();
  *(v1 + 193) = a1;
  return result;
}

void HIDVirtualDevice.init(properties:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_2455E9CD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2455E9D00();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_2455E9A90();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = a1[9];
  v67 = a1[8];
  v68 = v13;
  v69 = *(a1 + 20);
  v14 = a1[5];
  v63 = a1[4];
  v64 = v14;
  v15 = a1[7];
  v65 = a1[6];
  v66 = v15;
  v16 = a1[1];
  v59 = *a1;
  v17 = a1[2];
  v62 = a1[3];
  v60 = v16;
  v61 = v17;
  swift_defaultActor_initialize();
  *(v2 + 128) = 0u;
  *(v2 + 192) = 0;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0;
  sub_2455A7C54();
  v18 = sub_2455E9AD0();

  v19 = MEMORY[0x245D6C1A0](0, v18, 1);

  if (!v19)
  {
    goto LABEL_4;
  }

  v20 = IOHIDUserDeviceCopyService();
  sub_2455D1550(v20, &v55);
  if (v56)
  {

LABEL_4:
    sub_2455ABB10(&v59);
    sub_2455A7680(v2 + 128, &qword_27EE14F00, &unk_2455EAFF0);
    type metadata accessor for HIDVirtualDevice();
    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();
    return;
  }

  v53 = v4;
  v21 = v55;
  v58 = v19;
  type metadata accessor for IOHIDUserDevice(0);
  v23 = v22;
  v51 = v19;
  sub_2455D06E8(&v58, v23, &v55);
  v24 = v55;
  *(v2 + 112) = v21;
  *(v2 + 120) = v24;
  v52 = sub_2455ABB78();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EB0, &unk_2455F15E0);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D84D38];
  v49 = xmmword_2455EAC10;
  *(v25 + 16) = xmmword_2455EAC10;
  v27 = MEMORY[0x277D84D90];
  *(v25 + 56) = v26;
  *(v25 + 64) = v27;
  *(v25 + 32) = v21;
  sub_2455E9B70();
  sub_2455E9A80();
  v55 = MEMORY[0x277D84F90];
  sub_2455ABCEC(&qword_27EE14F10, 255, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F18, &unk_2455EB000);
  sub_2455ABBC4();
  sub_2455E9DC0();
  (*(v5 + 104))(v8, *MEMORY[0x277D85268], v53);
  *(v2 + 168) = sub_2455E9D10();
  v28 = *(v2 + 120);
  v29 = sub_2455E9B60();
  v30 = IOHIDUserDeviceCopyProperty(v28, v29);

  if (v30)
  {
    v55 = v30;
    swift_dynamicCast();
    v31 = v57;
    v32 = *(v2 + 120);
    v33 = sub_2455E9B60();
    v34 = IOHIDUserDeviceCopyProperty(v32, v33);

    if (v34)
    {
      v58 = v34;
      v35 = swift_dynamicCast();
      v36 = v54;
      v37 = v35 ^ 1;
      if (!v35)
      {
        v36 = 0;
      }
    }

    else
    {
      v36 = 0;
      v37 = 1;
    }

    HIDUsage.init(page:usage:)(v36 | (v37 << 16), v31, &v58);
    v38 = v58;
    v39 = BYTE4(v58);
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_2455E9DF0();
    MEMORY[0x245D6B9A0](0xD000000000000039, 0x80000002455F28B0);
    BYTE4(v58) = v39;
    LODWORD(v58) = v38;
    sub_2455A5E40();
    v40 = sub_2455E9FD0();
    MEMORY[0x245D6B9A0](v40);

    MEMORY[0x245D6B9A0](0x726F646E6576202CLL, 0xEC000000203A4449);
    LODWORD(v58) = v60;
    v41 = sub_2455E9FD0();
    MEMORY[0x245D6B9A0](v41);

    MEMORY[0x245D6B9A0](0x6375646F7270202CLL, 0xED0000203A444974);
    sub_2455ABB10(&v59);
    v42 = DWORD1(v60);
    if (BYTE8(v60))
    {
      v42 = 0;
    }

    LODWORD(v58) = v42;
    v43 = sub_2455E9FD0();
    MEMORY[0x245D6B9A0](v43);

    MEMORY[0x245D6B9A0](41, 0xE100000000000000);
    v44 = swift_allocObject();
    *(v44 + 16) = v49;
    v45 = *(v2 + 112);
    *(v44 + 56) = MEMORY[0x277D84D38];
    *(v44 + 64) = MEMORY[0x277D84D90];
    *(v44 + 32) = v45;
    v46 = sub_2455E9B70();
    v48 = v47;

    *(v2 + 176) = v46;
    *(v2 + 184) = v48;
  }

  else
  {
    __break(1u);
  }
}

uint64_t HIDVirtualDevice.deinit()
{
  swift_beginAccess();
  *(v0 + 193) = 1;
  swift_beginAccess();
  if (*(v0 + 192) != 1)
  {
    goto LABEL_3;
  }

  IOHIDUserDeviceCancel(*(v0 + 120));
  v1 = *(v0 + 168);
  v6[4] = nullsub_1;
  v6[5] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2455A8F04;
  v6[3] = &block_descriptor;
  v2 = _Block_copy(v6);
  v3 = v1;

  dispatch_sync(v3, v2);

  _Block_release(v2);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
LABEL_3:

    sub_2455A7680(v0 + 128, &qword_27EE14F00, &unk_2455EAFF0);
    v5 = *(v0 + 184);

    swift_defaultActor_destroy();
    return v0;
  }

  return result;
}

uint64_t HIDVirtualDevice.__deallocating_deinit()
{
  HIDVirtualDevice.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2455A8F58(uint64_t a1)
{
  v3 = *(v1 + 120);
  v4 = swift_allocObject();
  swift_weakInit();
  v14 = sub_2455ABC78;
  v15 = v4;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2455A9B9C;
  v13 = &block_descriptor_4;
  v5 = _Block_copy(&v10);

  IOHIDUserDeviceRegisterSetReportBlock(v3, v5);
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v14 = sub_2455ABC80;
  v15 = v6;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2455AA378;
  v13 = &block_descriptor_8;
  v7 = _Block_copy(&v10);

  IOHIDUserDeviceRegisterGetReportBlock(v3, v7);
  _Block_release(v7);
  v14 = nullsub_1;
  v15 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2455AA3FC;
  v13 = &block_descriptor_11;
  v8 = _Block_copy(&v10);
  IOHIDUserDeviceSetCancelHandler(v3, v8);
  _Block_release(v8);
  IOHIDUserDeviceSetDispatchQueue(v3, *(v1 + 168));
  IOHIDUserDeviceActivate(v3);
  (*(*v1 + 176))(1);
  sub_2455ABC88(a1, &v10);
  return (*(*v1 + 152))(&v10);
}

uint64_t sub_2455A91B4(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F70, &qword_2455F1D70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_2455E99C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return *sub_2455D00E8();
  }

  v18 = Strong;
  v19 = dispatch_semaphore_create(0);
  (*(v13 + 104))(v16, *MEMORY[0x277CC92A8], v12);
  v20 = sub_2455ACF24(a3, a4, v16);
  v22 = v21;
  type metadata accessor for HIDVirtualDevice.Context();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = sub_2455E9C60();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v18;
  *(v25 + 40) = a1;
  *(v25 + 44) = a2;
  *(v25 + 48) = v20;
  *(v25 + 56) = v22;
  *(v25 + 64) = v23;
  *(v25 + 72) = v19;

  sub_2455A5EE0(v20, v22);

  v26 = v19;
  sub_2455A989C(0, 0, v11, &unk_2455EB410, v25);

  sub_2455E9CE0();

  sub_2455A5F34(v20, v22);

  v27 = *(v23 + 16);

  return v27;
}

uint64_t sub_2455A9448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v11;
  *(v8 + 88) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 128) = a5;
  *(v8 + 132) = a6;
  *(v8 + 56) = a4;
  v9 = (*a4 + 144) & 0xFFFFFFFFFFFFLL | 0x19E000000000000;
  *(v8 + 96) = *(*a4 + 144);
  *(v8 + 104) = v9;
  return MEMORY[0x2822009F8](sub_2455A9498, a4, 0);
}

uint64_t sub_2455A9498()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);
  (*(v0 + 96))();

  return MEMORY[0x2822009F8](sub_2455A9508, 0, 0);
}

void sub_2455A9508()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = *(v0 + 128);
  v3 = *(v0 + 132);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2455CF818(v2, (v0 + 140));
  if (v3 > 0xFF)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  HIDReportID.init(rawValue:)(*(v0 + 132), (v0 + 136));
  v5 = *(v0 + 137);
  *(v0 + 138) = *(v0 + 136);
  *(v0 + 139) = v5;
  v6 = *(v4 + 8);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_2455A9690;
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 56);

  v12(v11, v0 + 140, v0 + 138, v9, v10, v1, v4);
}

uint64_t sub_2455A9690()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_2455A980C;
  }

  else
  {
    v3 = sub_2455A97A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2455A97A4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[11];
  sub_2455E9CF0();
  v2 = v0[1];

  return v2();
}

uint64_t sub_2455A980C()
{
  v1 = v0[15];
  v2 = v0[10];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = sub_2455D03A0(v1);

  *(v2 + 16) = v3;
  v4 = v0[11];
  sub_2455E9CF0();
  v5 = v0[1];

  return v5();
}

uint64_t sub_2455A989C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F70, &qword_2455F1D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2455ACBA0(a3, v27 - v11, &qword_27EE14F70, &qword_2455F1D70);
  v13 = sub_2455E9C60();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2455A7680(v12, &qword_27EE14F70, &qword_2455F1D70);
  }

  else
  {
    sub_2455E9C50();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2455E9C20();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2455E9B90() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2455A7680(a3, &qword_27EE14F70, &qword_2455F1D70);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2455A7680(a3, &qword_27EE14F70, &qword_2455F1D70);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2455A9BA4(int a1, int a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F70, &qword_2455F1D70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return *sub_2455D00E8();
  }

  v13 = Strong;
  v14 = dispatch_semaphore_create(0);
  v15 = *a4;
  _s7CoreHID16HIDVirtualDeviceC7ContextCMa_0();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = v15;
  *(v16 + 32) = a3;
  v17 = sub_2455E9C60();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v13;
  *(v18 + 40) = a1;
  *(v18 + 44) = a2;
  *(v18 + 48) = v16;
  *(v18 + 56) = v14;

  v19 = v14;
  sub_2455A989C(0, 0, v11, &unk_2455EB3E8, v18);

  sub_2455E9CE0();
  *a4 = *(v16 + 24);

  v20 = *(v16 + 16);

  return v20;
}

uint64_t sub_2455A9D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 128) = a5;
  *(v8 + 132) = a6;
  *(v8 + 56) = a4;
  v9 = (*a4 + 144) & 0xFFFFFFFFFFFFLL | 0x19E000000000000;
  *(v8 + 80) = *(*a4 + 144);
  *(v8 + 88) = v9;
  return MEMORY[0x2822009F8](sub_2455A9DC0, a4, 0);
}

uint64_t sub_2455A9DC0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  (*(v0 + 80))();

  return MEMORY[0x2822009F8](sub_2455A9E30, 0, 0);
}

void sub_2455A9E30()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = *(v0 + 128);
  v3 = *(v0 + 132);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2455CF818(v2, (v0 + 140));
  if (v3 > 0xFF)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = *(v0 + 64);
  HIDReportID.init(rawValue:)(*(v0 + 132), (v0 + 136));
  v6 = *(v0 + 137);
  *(v0 + 138) = *(v0 + 136);
  *(v0 + 139) = v6;
  v7 = *(v5 + 24);
  v8 = *(v4 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_2455A9FC0;
  v11 = *(v0 + 56);

  v12(v11, v0 + 140, v0 + 138, v7, v1, v4);
}

uint64_t sub_2455A9FC0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 96);
  v8 = *v3;
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = v2;

  if (v2)
  {
    v6 = sub_2455AA2E8;
  }

  else
  {
    v6 = sub_2455AA0D8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2455AA0D8()
{
  v1 = *(v0 + 112);
  result = __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v3 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = *(v0 + 118);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    v4 = 0;
    goto LABEL_11;
  }

  v5 = *(*(v0 + 104) + 16);
  v6 = *(*(v0 + 104) + 24);
  v7 = __OFSUB__(v6, v5);
  v4 = v6 - v5;
  if (v7)
  {
    __break(1u);
LABEL_8:
    v8 = *(v0 + 104);
    v9 = *(v0 + 108);
    v7 = __OFSUB__(v9, v8);
    LODWORD(v4) = v9 - v8;
    if (v7)
    {
      __break(1u);
      goto LABEL_31;
    }

    v4 = v4;
  }

LABEL_11:
  v10 = *(v0 + 64);
  if (*(v10 + 24) >= v4)
  {
    result = *(v10 + 32);
    if (v3 <= 1)
    {
      if (!v3)
      {
        v16 = *(v0 + 112);
        v17 = BYTE6(v16);
LABEL_24:
        v28 = *(v0 + 104);
        sub_2455E9A40();
        v26 = v28;
        v27 = v16;
        goto LABEL_25;
      }

      goto LABEL_21;
    }

    if (v3 != 2)
    {
      v17 = 0;
      v16 = *(v0 + 112);
      goto LABEL_24;
    }

    v18 = *(v0 + 104);
    if (!__OFSUB__(*(v18 + 24), *(v18 + 16)))
    {
      v19 = *(v0 + 112);
      v20 = *(v0 + 104);
      sub_2455E9A40();
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      result = sub_2455A5F34(v18, v19);
      v17 = v21 - v22;
      if (!__OFSUB__(v21, v22))
      {
        goto LABEL_26;
      }

      __break(1u);
LABEL_21:
      v23 = *(v0 + 104);
      if (!__OFSUB__(HIDWORD(v23), v23))
      {
        v24 = *(v0 + 112);
        v17 = HIDWORD(v23) - v23;
        v25 = *(v0 + 104);
        sub_2455E9A40();
        v26 = v23;
        v27 = v24;
LABEL_25:
        sub_2455A5F34(v26, v27);
LABEL_26:
        *(*(v0 + 64) + 24) = v17;
        goto LABEL_27;
      }

LABEL_32:
      __break(1u);
      return result;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  sub_2455ACA40();
  v13 = swift_allocError();
  *v14 = 9;
  *(v14 + 4) = 1;
  swift_willThrow();
  sub_2455A5F34(v11, v12);
  v15 = *(v0 + 64);
  LODWORD(v12) = sub_2455D03A0(v13);

  *(v15 + 16) = v12;
LABEL_27:
  v29 = *(v0 + 72);
  sub_2455E9CF0();
  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_2455AA2E8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[15];
  v2 = v0[8];
  v3 = sub_2455D03A0(v1);

  *(v2 + 16) = v3;
  v4 = v0[9];
  sub_2455E9CF0();
  v5 = v0[1];

  return v5();
}

uint64_t sub_2455AA380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v11 = v10(a2, a3, a4, a5);

  return v11;
}

uint64_t sub_2455AA3FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2455AA440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2455AA464, v3, 0);
}

uint64_t sub_2455AA464()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F28, &qword_2455EB010) - 8);
  *(v5 + 80);
  v6 = *(v5 + 72);
  v7 = swift_slowAlloc();
  v0[6] = v7;
  sub_2455ABCEC(&qword_27EE14F30, v8, type metadata accessor for HIDVirtualDevice);
  v9 = swift_task_alloc();
  v0[7] = v9;
  v9[2] = v7;
  v9[3] = v4;
  v9[4] = v3;
  v9[5] = v1;
  v9[6] = v2;
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_2455AA61C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2455AA61C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_2455AA7B0;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 40);

    v5 = sub_2455AA744;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2455AA744()
{
  MEMORY[0x245D6C8C0](*(v0 + 48), -1, -1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2455AA7B0()
{
  v2 = v0[6];
  v1 = v0[7];

  MEMORY[0x245D6C8C0](v2, -1, -1);
  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_2455AA824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F28, &qword_2455EB010);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  if (a1)
  {
    (*(v5 + 16))(v9, a1, v4);
    sub_2455D016C(a2, &v14);
    if (v16 == 1)
    {
      sub_2455E9C40();
    }

    else
    {
      v10 = v14 | (v15 << 32);
      sub_2455ACA40();
      v11 = swift_allocError();
      *v12 = v10;
      *(v12 + 4) = BYTE4(v10) & 1;
      v13 = v11;
      sub_2455E9C30();
    }

    return (*(v5 + 8))(v9, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static HIDVirtualDevice.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IOHIDUserDevice(0);
  v4 = *(a1 + 120);
  v5 = *(a2 + 120);
  sub_2455ABCEC(&qword_27EE14F38, 255, type metadata accessor for IOHIDUserDevice);
  return sub_2455E9A50() & 1;
}

uint64_t sub_2455AAA50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for IOHIDUserDevice(0);
  v4 = *(v2 + 120);
  v5 = *(v3 + 120);
  sub_2455ABCEC(&qword_27EE14F38, 255, type metadata accessor for IOHIDUserDevice);
  return sub_2455E9A50() & 1;
}

uint64_t HIDVirtualDevice.hash(into:)()
{
  v1 = *(v0 + 120);
  type metadata accessor for IOHIDUserDevice(0);
  sub_2455ABCEC(&qword_27EE14F38, 255, type metadata accessor for IOHIDUserDevice);
  return sub_2455E9A60();
}

uint64_t HIDVirtualDevice.hashValue.getter()
{
  sub_2455EA080();
  type metadata accessor for HIDVirtualDevice();
  sub_2455ABCEC(&qword_27EE14F40, v0, type metadata accessor for HIDVirtualDevice);
  sub_2455E9B00();
  return sub_2455EA0D0();
}

uint64_t sub_2455AABEC()
{
  v2 = *v0;
  sub_2455EA080();
  type metadata accessor for HIDVirtualDevice();
  sub_2455E9B00();
  return sub_2455EA0D0();
}

uint64_t sub_2455AAC48()
{
  v1 = *(*v0 + 120);
  type metadata accessor for IOHIDUserDevice(0);
  sub_2455ABCEC(&qword_27EE14F38, 255, type metadata accessor for IOHIDUserDevice);
  return sub_2455E9A60();
}

uint64_t sub_2455AACCC()
{
  v2 = *v0;
  sub_2455EA080();
  type metadata accessor for HIDVirtualDevice();
  sub_2455E9B00();
  return sub_2455EA0D0();
}

uint64_t HIDVirtualDevice.description.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t sub_2455AAD54()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 184);

  return v1;
}

uint64_t sub_2455AADA8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2455E9A70();
}

uint64_t sub_2455AADF4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2455E9A60();
}

uint64_t sub_2455AAE4C()
{
  sub_2455EA080();
  v1 = *v0;
  swift_getWitnessTable();
  sub_2455E9A60();
  return sub_2455EA0D0();
}

uint64_t sub_2455AAEB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_2455E9A50();
}

uint64_t sub_2455AAF20(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2455AB018;

  return v7(a1);
}

uint64_t sub_2455AB018()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2455AB110(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F80, &qword_2455EB420);
  v38 = a2;
  result = sub_2455E9FA0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_2455EA080();
      sub_2455E9BA0();
      result = sub_2455EA0D0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2455AB3B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F78, &qword_2455EB418);
  v38 = a2;
  result = sub_2455E9FA0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_2455EA080();
      sub_2455E9BA0();
      result = sub_2455EA0D0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_2455AB660(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2455E9FF0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2455AB718(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2455EA080();
  sub_2455E9BA0();
  v6 = sub_2455EA0D0();

  return sub_2455AB660(a1, a2, v6);
}

uint64_t sub_2455AB790(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2455AB718(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2455AB3B8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2455AB718(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2455EA020();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2455AB930();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_2455AB90C(uint64_t a1, unint64_t a2)
{
  if (a2 != 14)
  {
    return sub_2455AB91C(a1, a2);
  }

  return a1;
}

uint64_t sub_2455AB91C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xE)
  {
  }

  return result;
}

void *sub_2455AB930()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F78, &qword_2455EB418);
  v2 = *v0;
  v3 = sub_2455E9F90();
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

        result = swift_unknownObjectRetain();
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

uint64_t sub_2455ABAA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F00, &unk_2455EAFF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2455ABB78()
{
  result = qword_27EE14F08;
  if (!qword_27EE14F08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE14F08);
  }

  return result;
}

unint64_t sub_2455ABBC4()
{
  result = qword_27EE14F20;
  if (!qword_27EE14F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE14F18, &unk_2455EB000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE14F20);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2455ABC40()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2455ABC88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2455ABCEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2455ABD34(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F28, &qword_2455EB010);
  v8 = *(v1 + 40);
  (*(*(v6 - 8) + 24))(v3, a1, v6);
  v10 = v8;
  v11 = v3;
  v12 = a1;
  return sub_2455AC860(sub_2455AC764, v9, v4, v5);
}

uint64_t dispatch thunk of HIDVirtualDevice.dispatchInputReport(data:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 232);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2455ABFC8;

  return v12(a1, a2, a3);
}

uint64_t sub_2455ABFC8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_7CoreHID18HIDDeviceTransportO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_7CoreHID18HIDDeviceTransportOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 14;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_2455AC150(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 168))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_2455AC1AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_2455AC244(uint64_t *a1, int a2)
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

uint64_t sub_2455AC28C(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of HIDVirtualDeviceDelegate.hidVirtualDevice(_:receivedSetReportRequestOfType:id:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_2455AD2F4;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of HIDVirtualDeviceDelegate.hidVirtualDevice(_:receivedGetReportRequestOfType:id:maxSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2455AC578;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2455AC578(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_2455AC764(uint64_t a1)
{
  v4 = v1[4];
  v3 = v1[5];
  v5 = *(v1[2] + 120);
  v6 = v1[3];
  result = sub_2455D04E0();
  if (a1)
  {
    v8 = IOHIDUserDeviceHandleReportAsyncWithTimeStamp();
    result = sub_2455D016C(v8, &v11);
    if ((v13 & 1) == 0)
    {
      v9 = v11 | (v12 << 32);
      sub_2455ACA40();
      swift_allocError();
      *v10 = v9;
      *(v10 + 4) = BYTE4(v9) & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F28, &qword_2455EB010);
      return sub_2455E9C30();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2455AC860(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v6 = v11;
      goto LABEL_9;
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a3;
      LOWORD(v11[1]) = a4;
      BYTE2(v11[1]) = BYTE2(a4);
      BYTE3(v11[1]) = BYTE3(a4);
      BYTE4(v11[1]) = BYTE4(a4);
      BYTE5(v11[1]) = BYTE5(a4);
      v6 = v11 + BYTE6(a4);
LABEL_9:
      result = a1(v11, v6);
      goto LABEL_10;
    }

    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }
  }

  result = sub_2455AC998(v7, v8, a1);
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2455AC998(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_2455E9910();
  v7 = result;
  if (result)
  {
    result = sub_2455E9940();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_2455E9930();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

unint64_t sub_2455ACA40()
{
  result = qword_27EE14F68;
  if (!qword_27EE14F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE14F68);
  }

  return result;
}

uint64_t sub_2455ACA94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2455ACAE4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 44);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2455AD2F4;

  return sub_2455A9D7C(v7, v8, v9, v2, v3, v4, v6, v5);
}

uint64_t sub_2455ACBA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2455ACC08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2455ACC40(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2455AD2F4;

  return sub_2455AAF20(a1, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

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

uint64_t sub_2455ACD88(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2455ACE40(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_2455E99E0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_2455E9910();
  if (v3)
  {
    result = sub_2455E9940();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_2455E9930();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2455ACD88(v3, v7);

  return v8;
}

uint64_t sub_2455ACF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2455E99C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2455E99B0();
  if (a2)
  {
    v11 = sub_2455E9960();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = sub_2455E98F0();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277CC92A8])
    {
      v15 = sub_2455E9950();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_2455ACE40(v14, a2);
  }

  else
  {
    v17 = sub_2455E99B0();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

uint64_t sub_2455AD15C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_2455A5F34(*(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2455AD1B4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 44);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_2455ABFC8;

  return sub_2455A9448(v9, v10, v11, v2, v3, v4, v5, v6);
}

void sub_2455AD298(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *HIDVirtualDevice.hidDevice.getter()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

void HIDDeviceManager.DeviceMatchingCriteria.primaryUsage.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  *(a1 + 4) = *(v1 + 4);
  *a1 = v2;
}

int *HIDDeviceManager.DeviceMatchingCriteria.primaryUsage.setter(int *result)
{
  v2 = *result;
  *(v1 + 4) = *(result + 4);
  *v1 = v2;
  return result;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.deviceUsages.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.vendorID.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.productID.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

double sub_2455AD480@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_2455EB460;
  return result;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.transport.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_2455A774C(v2, v3);
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.transport.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2455AB90C(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.product.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.product.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.manufacturer.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.manufacturer.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.modelNumber.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.modelNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.versionNumber.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.versionNumber.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.serialNumber.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.serialNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.uniqueID.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.uniqueID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.locationID.getter()
{
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.locationID.setter(uint64_t result, char a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2 & 1;
  return result;
}

uint64_t HIDDeviceManager.DeviceMatchingCriteria.init(primaryUsage:deviceUsages:vendorID:productID:transport:product:manufacturer:modelNumber:versionNumber:serialNumber:uniqueID:locationID:localizationCode:isBuiltIn:extraProperties:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, char *a21, char a22, uint64_t a23)
{
  v23 = a4;
  v24 = a3;
  v26 = *a1 | (*(a1 + 4) << 32);
  v27 = *a5;
  v28 = a5[1];
  v29 = *a21;
  v37 = BYTE4(a3) & 1;
  v36 = BYTE4(a4) & 1;
  result = sub_2455AB90C(0, 0xEuLL);
  if (a23)
  {
    v31 = sub_2455ADA4C(a23);
  }

  else
  {
    v31 = 0;
  }

  *a9 = v26;
  *(a9 + 4) = BYTE4(v26);
  *(a9 + 8) = a2;
  *(a9 + 16) = v24;
  *(a9 + 20) = v37;
  *(a9 + 24) = v23;
  *(a9 + 28) = v36;
  *(a9 + 32) = v27;
  *(a9 + 40) = v28;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  *(a9 + 96) = a13;
  *(a9 + 104) = a14 & 1;
  *(a9 + 112) = a15;
  *(a9 + 120) = a16;
  *(a9 + 128) = a17;
  *(a9 + 136) = a18;
  *(a9 + 144) = a19;
  *(a9 + 152) = a20 & 1;
  *(a9 + 153) = v29;
  *(a9 + 154) = a22;
  *(a9 + 160) = v31;
  return result;
}

uint64_t sub_2455ADA4C(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v28 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
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

  v8 = 0;
  while (v5)
  {
LABEL_12:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(a1 + 56) + 8 * v12);
    v17 = *(v1 + 16);
    if (*(v1 + 24) <= v17)
    {

      swift_unknownObjectRetain();
      sub_2455AF774(v17 + 1, 1);
      v1 = v28;
    }

    else
    {

      swift_unknownObjectRetain();
    }

    v18 = *(v1 + 40);
    sub_2455EA080();
    sub_2455E9BA0();
    result = sub_2455EA0D0();
    v19 = v1 + 64;
    v20 = -1 << *(v1 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v1 + 64 + 8 * (v21 >> 6))) == 0)
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
        v26 = *(v19 + 8 * v22);
        if (v26 != -1)
        {
          v9 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_6;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v21) & ~*(v1 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_6:
    v5 &= v5 - 1;
    *(v19 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = (*(v1 + 48) + 16 * v9);
    *v10 = v14;
    v10[1] = v15;
    *(*(v1 + 56) + 8 * v9) = v16;
    ++*(v1 + 16);
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

      return v1;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2455ADC74()
{
  v1 = *(v0 + 4);
  v2 = *v0;
  v132 = *(v0 + 1);
  v3 = *(v0 + 20);
  v113 = v0[4];
  v114 = v0[6];
  v4 = *(v0 + 28);
  v5 = *(v0 + 5);
  v122 = *(v0 + 4);
  v123 = *(v0 + 7);
  v117 = *(v0 + 6);
  v118 = *(v0 + 8);
  v124 = *(v0 + 9);
  v126 = *(v0 + 11);
  v129 = *(v0 + 104);
  v119 = *(v0 + 10);
  v120 = *(v0 + 14);
  v130 = *(v0 + 15);
  v121 = *(v0 + 16);
  v6 = *(v0 + 17);
  v115 = *(v0 + 12);
  v116 = *(v0 + 18);
  v133 = *(v0 + 152);
  v135 = *(v0 + 153);
  v7 = *(v0 + 154);
  v128 = *(v0 + 20);
  v8 = sub_2455E9B60();
  v9 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2455AB790(v8, 0x6469766F72504F49, 0xEF7373616C437265, isUniquelyReferenced_nonNull_native);
  v11 = v9;
  if (v1 >> 1 <= 0x7EuLL)
  {
    v12 = v2 & 0xFFFFFF00FFFFFFFFLL | (v1 << 32);
    HIDUsage.page.getter();
    v13 = sub_2455EA0E0();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    HIDWORD(v137) = HIDWORD(v9);
    sub_2455AB790(v13, 0xD000000000000010, 0x80000002455F2890, v14);
    BYTE4(v137) = BYTE4(v12);
    LODWORD(v137) = v12;
    if ((HIDUsage.usage.getter() & 0x10000) == 0)
    {
      HIDUsage.usage.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14FA8, &unk_2455EB490);
      v15 = sub_2455E9D40();
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v137 = v9;
      sub_2455AB790(v15, 0x557972616D697250, 0xEC00000065676173, v16);
    }
  }

  v17 = v6;
  if ((v3 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EF8, &qword_2455EAFE8);
    v18 = sub_2455E9D40();
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v9;
    sub_2455AB790(v18, 0x4449726F646E6556, 0xE800000000000000, v19);
  }

  if ((v4 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EF8, &qword_2455EAFE8);
    v20 = sub_2455E9D40();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v9;
    sub_2455AB790(v20, 0x49746375646F7250, 0xE900000000000044, v21);
  }

  v137 = v122;
  v138 = v5;
  sub_2455A774C(v122, v5);
  sub_2455CFC94(&v137);
  v23 = v22;
  sub_2455AB90C(v137, v138);
  if (v23)
  {
    v24 = sub_2455E9B60();

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v9;
    sub_2455AB790(v24, 0x726F70736E617254, 0xE900000000000074, v25);
    v11 = v137;
  }

  v26 = v128;
  v27 = MEMORY[0x277D84F98];
  if (v123)
  {
    v137 = v117;
    v138 = v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EE0, &qword_2455EAFD0);
    v28 = sub_2455E9D40();
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v27;
    sub_2455AB790(v28, 0x746375646F7250, 0xE700000000000000, v29);
    v27 = v137;
  }

  if (v124)
  {
    v137 = v118;
    v138 = v124;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EE0, &qword_2455EAFD0);
    v30 = sub_2455E9D40();
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v11;
    sub_2455AB790(v30, 0x74636166756E614DLL, 0xEC00000072657275, v31);
    v11 = v137;
  }

  if (v126)
  {
    v137 = v119;
    v138 = v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EE0, &qword_2455EAFD0);
    v32 = sub_2455E9D40();
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v11;
    sub_2455AB790(v32, 0x6D754E6C65646F4DLL, 0xEB00000000726562, v33);
    v11 = v137;
  }

  if ((v129 & 1) == 0)
  {
    v137 = v115;
    LOBYTE(v138) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EF0, &qword_2455EAFE0);
    v34 = sub_2455E9D40();
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v11;
    sub_2455AB790(v34, 0x4E6E6F6973726556, 0xED00007265626D75, v35);
    v11 = v137;
  }

  if (v130)
  {
    v137 = v120;
    v138 = v130;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EE0, &qword_2455EAFD0);
    v36 = sub_2455E9D40();
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v11;
    sub_2455AB790(v36, 0x754E6C6169726553, 0xEC0000007265626DLL, v37);
    v11 = v137;
  }

  if (v17)
  {
    v137 = v121;
    v138 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EE0, &qword_2455EAFD0);
    v38 = sub_2455E9D40();
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v11;
    sub_2455AB790(v38, 0xD000000000000016, 0x80000002455F2850, v39);
    v11 = v137;
  }

  v40 = v132;
  if ((v133 & 1) == 0)
  {
    v137 = v116;
    LOBYTE(v138) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EF0, &qword_2455EAFE0);
    v41 = sub_2455E9D40();
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v11;
    sub_2455AB790(v41, 0x6E6F697461636F4CLL, 0xEA00000000004449, v42);
    v11 = v137;
  }

  LOBYTE(v137) = v135;
  sub_2455CFE80(&v137);
  if (v43)
  {
    if (v7 == 2)
    {
      goto LABEL_26;
    }

LABEL_29:
    LOBYTE(v137) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14FA0, &unk_2455EB480);
    v46 = sub_2455E9D40();
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v27;
    sub_2455AB790(v46, 0x6E492D746C697542, 0xE800000000000000, v47);
    v27 = v137;
    if (!v132)
    {
      goto LABEL_54;
    }

    goto LABEL_30;
  }

  v44 = sub_2455E9CC0();
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v137 = v27;
  sub_2455AB790(v44, 0x437972746E756F43, 0xEB0000000065646FLL, v45);
  v27 = v137;
  if (v7 != 2)
  {
    goto LABEL_29;
  }

LABEL_26:
  if (!v132)
  {
    goto LABEL_54;
  }

LABEL_30:
  v131 = *(v132 + 16);
  if (v131)
  {
    v125 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F90, &qword_2455EB470);
    v48 = 0;
    v49 = (v132 + 32);
    v50 = MEMORY[0x277D84F90];
    while (v48 < *(v40 + 16))
    {
      v134 = v48;
      v136 = v50;
      v51 = *(v49 + 4);
      v52 = *v49;
      BYTE4(v137) = *(v49 + 4);
      LODWORD(v137) = v52;
      v53 = HIDUsage.page.getter();
      v54 = sub_2455E9FC0();

      v55 = sub_2455AB718(0x7355656369766544, 0xEF65676150656761);
      v57 = v56;

      if (v57)
      {
        goto LABEL_81;
      }

      v54[(v55 >> 6) + 8] |= 1 << v55;
      v58 = (v54[6] + 16 * v55);
      *v58 = 0x7355656369766544;
      v58[1] = 0xEF65676150656761;
      *(v54[7] + 8 * v55) = v53;
      v59 = v54[2];
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_82;
      }

      v54[2] = v61;
      BYTE4(v137) = (v52 | (v51 << 32)) >> 32;
      LODWORD(v137) = v52;
      v62 = HIDUsage.usage.getter();
      if ((v62 & 0x10000) != 0)
      {
        v40 = v132;
        v73 = v134;
        v50 = v136;
      }

      else
      {
        v63 = v62;
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v137 = v54;
        v66 = sub_2455AB718(0x7355656369766544, 0xEB00000000656761);
        v67 = v54[2];
        v68 = (v65 & 1) == 0;
        v69 = v67 + v68;
        if (__OFADD__(v67, v68))
        {
          goto LABEL_83;
        }

        v70 = v65;
        if (v54[3] >= v69)
        {
          if ((v64 & 1) == 0)
          {
            sub_2455AFDF0();
          }
        }

        else
        {
          sub_2455AFA1C(v69, v64);
          v71 = sub_2455AB718(0x7355656369766544, 0xEB00000000656761);
          if ((v70 & 1) != (v72 & 1))
          {
            goto LABEL_87;
          }

          v66 = v71;
        }

        v50 = v136;
        v54 = v137;
        if (v70)
        {
          *(v137[7] + 8 * v66) = v63;
          v73 = v134;
        }

        else
        {
          v137[(v66 >> 6) + 8] |= 1 << v66;
          v74 = (v54[6] + 16 * v66);
          *v74 = 0x7355656369766544;
          v74[1] = 0xEB00000000656761;
          *(v54[7] + 8 * v66) = v63;
          v75 = v54[2];
          v60 = __OFADD__(v75, 1);
          v76 = v75 + 1;
          v73 = v134;
          if (v60)
          {
            goto LABEL_84;
          }

          v54[2] = v76;
        }

        v40 = v132;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_2455AFCBC(0, v50[2] + 1, 1, v50);
      }

      v78 = v50[2];
      v77 = v50[3];
      if (v78 >= v77 >> 1)
      {
        v50 = sub_2455AFCBC((v77 > 1), v78 + 1, 1, v50);
      }

      v48 = v73 + 1;
      v50[2] = v78 + 1;
      v50[v78 + 4] = v54;
      v49 = (v49 + 6);
      if (v131 == v48)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F98, &qword_2455EB478);
        v79 = sub_2455E9BD0();

        v80 = swift_isUniquelyReferenced_nonNull_native();
        v137 = v11;
        sub_2455AB790(v79, 0xD000000000000010, 0x80000002455F2B30, v80);
        v11 = v137;
        v26 = v128;
        v27 = v125;
        goto LABEL_54;
      }
    }

LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

LABEL_54:
  if (!v26)
  {
LABEL_75:
    if (*(v27 + 16))
    {
      v110 = sub_2455E9AD0();
      v111 = swift_isUniquelyReferenced_nonNull_native();
      v137 = v11;
      sub_2455AB790(v110, 0x7265706F72504F49, 0xEF686374614D7974, v111);

      return v137;
    }

    else
    {
    }

    return v11;
  }

  v127 = v11;
  v81 = v26 + 64;
  v82 = 1 << *(v26 + 32);
  v83 = -1;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  v84 = v83 & *(v26 + 64);
  v85 = (v82 + 63) >> 6;

  v86 = 0;
  if (v84)
  {
    goto LABEL_60;
  }

  do
  {
LABEL_61:
    v89 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      __break(1u);
      goto LABEL_80;
    }

    if (v89 >= v85)
    {

      v11 = v127;
      goto LABEL_75;
    }

    v84 = *(v81 + 8 * v89);
    ++v86;
  }

  while (!v84);
  while (1)
  {
    v90 = __clz(__rbit64(v84)) | (v89 << 6);
    v91 = *(v26 + 56);
    v92 = (*(v26 + 48) + 16 * v90);
    v94 = *v92;
    v93 = v92[1];
    v95 = *(v91 + 8 * v90);

    swift_unknownObjectRetain();
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v27;
    v97 = sub_2455AB718(v94, v93);
    v99 = v27;
    v100 = *(v27 + 16);
    v101 = (v98 & 1) == 0;
    v60 = __OFADD__(v100, v101);
    v102 = v100 + v101;
    if (v60)
    {
      break;
    }

    v103 = v98;
    if (*(v99 + 24) >= v102)
    {
      if ((v96 & 1) == 0)
      {
        v109 = v97;
        sub_2455AB930();
        v97 = v109;
      }
    }

    else
    {
      sub_2455AB3B8(v102, v96);
      v97 = sub_2455AB718(v94, v93);
      if ((v103 & 1) != (v104 & 1))
      {
        goto LABEL_87;
      }
    }

    v84 &= v84 - 1;
    v105 = v137;
    if (v103)
    {
      v87 = v137[7];
      v88 = *(v87 + 8 * v97);
      *(v87 + 8 * v97) = v95;

      swift_unknownObjectRelease();
      v86 = v89;
      v26 = v128;
      v27 = v105;
      if (!v84)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v137[(v97 >> 6) + 8] |= 1 << v97;
      v106 = (v105[6] + 16 * v97);
      *v106 = v94;
      v106[1] = v93;
      *(v105[7] + 8 * v97) = v95;
      v107 = v105[2];
      v60 = __OFADD__(v107, 1);
      v108 = v107 + 1;
      if (v60)
      {
        goto LABEL_86;
      }

      v27 = v105;
      v105[2] = v108;
      v86 = v89;
      v26 = v128;
      if (!v84)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    v89 = v86;
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  result = sub_2455EA020();
  __break(1u);
  return result;
}

uint64_t sub_2455AE944()
{
  v0 = sub_2455E9CD0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2455E9D00();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_2455E9A90();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_2455AFF60(0, &qword_27EE14F08, 0x277D85C90);
  sub_2455E9A80();
  v10[1] = MEMORY[0x277D84F90];
  sub_2455AFFF0(&qword_27EE14F10, 255, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F18, &unk_2455EB000);
  sub_2455ABBC4();
  sub_2455E9DC0();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v0);
  return sub_2455E9D10();
}

uint64_t HIDDeviceManager.__allocating_init()()
{
  v0 = swift_allocObject();
  HIDDeviceManager.init()();
  return v0;
}

uint64_t HIDDeviceManager.init()()
{
  v10[0] = sub_2455E9CD0();
  v1 = *(v10[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v10[0]);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2455E9D00();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_2455E9A90();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  swift_defaultActor_initialize();
  sub_2455AFF60(0, &qword_27EE14F08, 0x277D85C90);
  sub_2455E9A80();
  v10[1] = MEMORY[0x277D84F90];
  sub_2455AFFF0(&qword_27EE14F10, 255, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F18, &unk_2455EB000);
  sub_2455ABBC4();
  sub_2455E9DC0();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v10[0]);
  *(v0 + 112) = sub_2455E9D10();
  return v0;
}

uint64_t sub_2455AEE20(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14FB0, &qword_2455EB4C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v9 = v1;
  v10 = a1;
  (*(v6 + 104))(&v8[-v5], *MEMORY[0x277D858A0]);
  return sub_2455E9CB0();
}

void sub_2455AEF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14FD8, "Jj");
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v31 - v9;
  v11 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  if (!v11)
  {
    __break(1u);
  }

  v12 = v11;
  (*(v7 + 16))(v10, a1, v6);
  v13 = type metadata accessor for HIDDeviceManager.Context();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v16[2] = v12;
  (*(v7 + 32))(v16 + OBJC_IVAR____TtCFFC7CoreHID16HIDDeviceManager20monitorNotificationsFT16matchingCriteriaGSaVS0_22DeviceMatchingCriteria__GVs19AsyncThrowingStreamOS0_12NotificationPs5Error__U_FGVS2_12ContinuationS3_PS4____T_L_7Context_continuation, v10, v6);
  IONotificationPortSetDispatchQueue(v12, *(a2 + 112));

  v31[1] = v6;
  v31[2] = a1;
  sub_2455E9C70();
  v17 = *(a3 + 16);
  if (v17)
  {
    v18 = a3 + 32;
    while (1)
    {
      v19 = *(v18 + 144);
      v33[8] = *(v18 + 128);
      v33[9] = v19;
      v34 = *(v18 + 160);
      v20 = *(v18 + 80);
      v33[4] = *(v18 + 64);
      v33[5] = v20;
      v21 = *(v18 + 112);
      v33[6] = *(v18 + 96);
      v33[7] = v21;
      v22 = *(v18 + 16);
      v33[0] = *v18;
      v23 = *(v18 + 32);
      v33[3] = *(v18 + 48);
      v33[1] = v22;
      v33[2] = v23;
      sub_2455ADC74();
      v24 = sub_2455E9AD0();

      notification = 0;
      v25 = v24;
      v26 = IOServiceAddMatchingNotification(v12, "IOServiceFirstMatch", v25, sub_2455AF480, v16, &notification);
      sub_2455D016C(v26, v33);
      if (BYTE5(v33[0]) != 1)
      {
        break;
      }

      sub_2455AF25C(notification, v16);

      v18 += 168;
      if (!--v17)
      {
        goto LABEL_6;
      }
    }

    v27 = LODWORD(v33[0]) | (BYTE4(v33[0]) << 32);
    sub_2455ACA40();
    v28 = swift_allocError();
    *v29 = v27;
    *(v29 + 4) = BYTE4(v27) & 1;
    *&v33[0] = v28;
    sub_2455E9C90();
  }

  else
  {
LABEL_6:
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2455AF25C(io_iterator_t a1, IONotificationPortRef *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14FE0, &qword_2455EB6C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &notification[-2] - v7;

  v9 = IOIteratorNext(a1);
  if (v9)
  {
    v10 = v9;
    do
    {
      sub_2455D1550(v10, notification);
      if ((v16 & 1) == 0)
      {
        v16 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14FD8, "Jj");
        sub_2455E9C80();
        (*(v5 + 8))(v8, v4);
        notification[0] = 0;
        IOServiceAddInterestNotification(a2[2], v10, "IOGeneralInterest", sub_2455AF47C, a2, notification);
      }

      v10 = IOIteratorNext(a1);
    }

    while (v10);

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v13 = *MEMORY[0x277D85DE8];
  }

  return result;
}

IONotificationPortRef *sub_2455AF480(IONotificationPortRef *result, io_iterator_t a2)
{
  if (result)
  {
    return sub_2455AF25C(a2, result);
  }

  __break(1u);
  return result;
}

uint64_t HIDDeviceManager.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t static HIDDeviceManager.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2455AFF60(0, &qword_27EE14FB8, 0x277D82BB8);
  v4 = *(a1 + 112);
  v5 = *(a2 + 112);
  return sub_2455E9D20() & 1;
}

uint64_t sub_2455AF558(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2455AFF60(0, &qword_27EE14FB8, 0x277D82BB8);
  v4 = *(v2 + 112);
  v5 = *(v3 + 112);
  return sub_2455E9D20() & 1;
}

uint64_t HIDDeviceManager.hashValue.getter()
{
  sub_2455EA080();
  v1 = *(v0 + 112);
  sub_2455E9D30();
  return sub_2455EA0D0();
}

uint64_t sub_2455AF618()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = *(v1 + 112);
  sub_2455E9D30();
  return sub_2455EA0D0();
}

uint64_t sub_2455AF688()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = *(v1 + 112);
  sub_2455E9D30();
  return sub_2455EA0D0();
}

uint64_t sub_2455AF6CC()
{
  v1 = OBJC_IVAR____TtCFFC7CoreHID16HIDDeviceManager20monitorNotificationsFT16matchingCriteriaGSaVS0_22DeviceMatchingCriteria__GVs19AsyncThrowingStreamOS0_12NotificationPs5Error__U_FGVS2_12ContinuationS3_PS4____T_L_7Context_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14FD8, "Jj");
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2455AF774(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14FF0, &unk_2455EB6E0);
  v38 = a2;
  result = sub_2455E9FA0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_2455EA080();
      sub_2455E9BA0();
      result = sub_2455EA0D0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2455AFA1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F90, &qword_2455EB470);
  v38 = a2;
  result = sub_2455E9FA0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_2455EA080();
      sub_2455E9BA0();
      result = sub_2455EA0D0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_2455AFCBC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14FE8, &unk_2455EB6D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F98, &qword_2455EB478);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2455AFDF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F90, &qword_2455EB470);
  v2 = *v0;
  v3 = sub_2455E9F90();
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

uint64_t sub_2455AFF60(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2455AFFF0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2455B00AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 168))
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

uint64_t sub_2455B0108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
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

uint64_t getEnumTagSinglePayload for HIDDeviceManager.Notification(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDDeviceManager.Notification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t type metadata accessor for HIDDeviceManager.Context()
{
  result = qword_27EE15EA8;
  if (!qword_27EE15EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2455B02BC()
{
  sub_2455B035C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2455B035C()
{
  if (!qword_27EE14FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE14FD0, &qword_2455F1620);
    v0 = sub_2455E9CA0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE14FC8);
    }
  }
}

uint64_t sub_2455B03D8(uint64_t a1, io_registry_entry_t a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14FE0, &qword_2455EB6C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v13 - v10;
  if (a3 == -536870896)
  {
    result = sub_2455D1550(a2, &v13);
    if ((v14 & 1) == 0)
    {
      if (a1)
      {
        v12 = v13;

        v13 = v12;
        v14 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14FD8, "Jj");
        sub_2455E9C80();

        return (*(v7 + 8))(v11, v6);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t HIDUsage.page.getter()
{
  result = 1;
  switch(*(v0 + 4) >> 2)
  {
    case 1:
      result = 2;
      break;
    case 2:
      result = 3;
      break;
    case 3:
      result = 4;
      break;
    case 4:
      result = 5;
      break;
    case 5:
      result = 6;
      break;
    case 6:
      result = 7;
      break;
    case 7:
      result = 8;
      break;
    case 8:
      result = 9;
      break;
    case 9:
      result = 10;
      break;
    case 0xA:
      result = 11;
      break;
    case 0xB:
      result = 12;
      break;
    case 0xC:
      result = 13;
      break;
    case 0xD:
      result = 14;
      break;
    case 0xE:
      result = 15;
      break;
    case 0xF:
      result = 17;
      break;
    case 0x10:
      result = 18;
      break;
    case 0x11:
      result = 20;
      break;
    case 0x12:
      result = 32;
      break;
    case 0x13:
      result = 64;
      break;
    case 0x14:
      result = 65;
      break;
    case 0x15:
      result = 89;
      break;
    case 0x16:
      result = 128;
      break;
    case 0x17:
      result = 129;
      break;
    case 0x18:
      result = 130;
      break;
    case 0x19:
      result = 132;
      break;
    case 0x1A:
      result = 133;
      break;
    case 0x1B:
      result = 140;
      break;
    case 0x1C:
      result = 141;
      break;
    case 0x1D:
      result = 142;
      break;
    case 0x1E:
      result = 144;
      break;
    case 0x1F:
      result = 145;
      break;
    case 0x20:
      result = 61904;
      break;
    case 0x21:
      result = *v0 | (*(v0 + 4) << 32);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t HIDUsage.usage.getter()
{
  v1 = *v0 | (*(v0 + 4) << 32);
  switch(*(v0 + 4) >> 2)
  {
    case 1:
      LODWORD(v3) = 1;
      LOWORD(v2) = 0;
      *(v0 + 4);
      switch(*v0)
      {
        case 1u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 2;
          break;
        case 2u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 3;
          break;
        case 3u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4;
          break;
        case 4u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 5;
          break;
        case 5u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 6;
          break;
        case 6u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 7;
          break;
        case 7u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 8;
          break;
        case 8u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 9;
          break;
        case 9u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 10;
          break;
        case 0xAu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 11;
          break;
        case 0xBu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 12;
          break;
        case 0xCu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 32;
          break;
        case 0xDu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 33;
          break;
        case 0xEu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 34;
          break;
        case 0xFu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 35;
          break;
        case 0x10u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 36;
          break;
        case 0x11u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 37;
          break;
        case 0x12u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 176;
          break;
        case 0x13u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 177;
          break;
        case 0x14u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 178;
          break;
        case 0x15u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 179;
          break;
        case 0x16u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 180;
          break;
        case 0x17u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 181;
          break;
        case 0x18u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 182;
          break;
        case 0x19u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 183;
          break;
        case 0x1Au:
          LODWORD(v3) = 0;
          LOWORD(v2) = 184;
          break;
        case 0x1Bu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 185;
          break;
        case 0x1Cu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 186;
          break;
        case 0x1Du:
          LODWORD(v3) = 0;
          LOWORD(v2) = 187;
          break;
        case 0x1Eu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 188;
          break;
        case 0x1Fu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 189;
          break;
        case 0x20u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 190;
          break;
        case 0x21u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 191;
          break;
        case 0x22u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 192;
          break;
        case 0x23u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 193;
          break;
        case 0x24u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 194;
          break;
        case 0x25u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 195;
          break;
        case 0x26u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 196;
          break;
        case 0x27u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 197;
          break;
        case 0x28u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 198;
          break;
        case 0x29u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 199;
          break;
        case 0x2Au:
          LODWORD(v3) = 0;
          LOWORD(v2) = 200;
          break;
        case 0x2Bu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 201;
          break;
        case 0x2Cu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 202;
          break;
        case 0x2Du:
          LODWORD(v3) = 0;
          LOWORD(v2) = 203;
          break;
        case 0x2Eu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 204;
          break;
        case 0x2Fu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 205;
          break;
        case 0x30u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 206;
          break;
        case 0x31u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 207;
          break;
        case 0x32u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 208;
          break;
        case 0x33u:
          return v2 | (v3 << 16);
        default:
          LODWORD(v3) = 0;
          LOWORD(v2) = 1;
          break;
      }

      break;
    case 2:
      LODWORD(v3) = 1;
      LOWORD(v2) = 0;
      *(v0 + 4);
      switch(*v0)
      {
        case 1u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 2;
          break;
        case 2u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 3;
          break;
        case 3u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4;
          break;
        case 4u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 5;
          break;
        case 5u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 6;
          break;
        case 6u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 7;
          break;
        case 7u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 8;
          break;
        case 8u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 9;
          break;
        case 9u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 10;
          break;
        case 0xAu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 32;
          break;
        case 0xBu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 33;
          break;
        case 0xCu:
          return v2 | (v3 << 16);
        default:
          LODWORD(v3) = 0;
          LOWORD(v2) = 1;
          break;
      }

      break;
    case 3:
      LODWORD(v3) = 1;
      LOWORD(v2) = 0;
      *(v0 + 4);
      switch(*v0)
      {
        case 1u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 2;
          break;
        case 2u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 3;
          break;
        case 3u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4;
          break;
        case 4u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 48;
          break;
        case 5u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 49;
          break;
        case 6u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 50;
          break;
        case 7u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 51;
          break;
        case 8u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 52;
          break;
        case 9u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 53;
          break;
        case 0xAu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 54;
          break;
        case 0xBu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 55;
          break;
        case 0xCu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 56;
          break;
        case 0xDu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 57;
          break;
        case 0xEu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 80;
          break;
        case 0xFu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 81;
          break;
        case 0x10u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 82;
          break;
        case 0x11u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 83;
          break;
        case 0x12u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 84;
          break;
        case 0x13u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 85;
          break;
        case 0x14u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 86;
          break;
        case 0x15u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 87;
          break;
        case 0x16u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 88;
          break;
        case 0x17u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 89;
          break;
        case 0x18u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 90;
          break;
        case 0x19u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 91;
          break;
        case 0x1Au:
          LODWORD(v3) = 0;
          LOWORD(v2) = 92;
          break;
        case 0x1Bu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 93;
          break;
        case 0x1Cu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 94;
          break;
        case 0x1Du:
          LODWORD(v3) = 0;
          LOWORD(v2) = 95;
          break;
        case 0x1Eu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 96;
          break;
        case 0x1Fu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 97;
          break;
        case 0x20u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 98;
          break;
        case 0x21u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 99;
          break;
        case 0x22u:
          return v2 | (v3 << 16);
        default:
          LODWORD(v3) = 0;
          LOWORD(v2) = 1;
          break;
      }

      break;
    case 4:
      LODWORD(v3) = 1;
      LOWORD(v2) = 0;
      *(v0 + 4);
      switch(*v0)
      {
        case 1u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 2;
          break;
        case 2u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 3;
          break;
        case 3u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 32;
          break;
        case 4u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 33;
          break;
        case 5u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 34;
          break;
        case 6u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 35;
          break;
        case 7u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 36;
          break;
        case 8u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 37;
          break;
        case 9u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 38;
          break;
        case 0xAu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 39;
          break;
        case 0xBu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 40;
          break;
        case 0xCu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 41;
          break;
        case 0xDu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 42;
          break;
        case 0xEu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 43;
          break;
        case 0xFu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 44;
          break;
        case 0x10u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 45;
          break;
        case 0x11u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 46;
          break;
        case 0x12u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 47;
          break;
        case 0x13u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 48;
          break;
        case 0x14u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 49;
          break;
        case 0x15u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 50;
          break;
        case 0x16u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 51;
          break;
        case 0x17u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 52;
          break;
        case 0x18u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 53;
          break;
        case 0x19u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 54;
          break;
        case 0x1Au:
          LODWORD(v3) = 0;
          LOWORD(v2) = 55;
          break;
        case 0x1Bu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 57;
          break;
        case 0x1Cu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 58;
          break;
        case 0x1Du:
          return v2 | (v3 << 16);
        default:
          LODWORD(v3) = 0;
          LOWORD(v2) = 1;
          break;
      }

      break;
    case 5:
      LODWORD(v3) = 1;
      LOWORD(v2) = 0;
      *(v0 + 4);
      switch(*v0)
      {
        case 1u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 32;
          break;
        case 2u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 33;
          break;
        case 3u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 34;
          break;
        case 4u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 35;
          break;
        case 5u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 36;
          break;
        case 6u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 37;
          break;
        case 7u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 38;
          break;
        case 8u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 39;
          break;
        case 9u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 40;
          break;
        case 0xAu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 41;
          break;
        case 0xBu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 42;
          break;
        case 0xCu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 43;
          break;
        case 0xDu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 44;
          break;
        case 0xEu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 45;
          break;
        case 0xFu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 46;
          break;
        case 0x10u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 47;
          break;
        case 0x11u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 48;
          break;
        case 0x12u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 49;
          break;
        case 0x13u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 50;
          break;
        case 0x14u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 51;
          break;
        case 0x15u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 52;
          break;
        case 0x16u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 64;
          break;
        case 0x17u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 65;
          break;
        case 0x18u:
          return v2 | (v3 << 16);
        default:
          LODWORD(v3) = 0;
          LOWORD(v2) = 1;
          break;
      }

      break;
    case 6:
      *(v0 + 4);
      if (*v0 == 218)
      {
        LOWORD(v2) = 0;
        LODWORD(v3) = 1;
      }

      else
      {
        LOWORD(v2) = 1;
        LODWORD(v3) = 0;
        *(v0 + 4);
        switch(*v0)
        {
          case 1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2;
            break;
          case 2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 3;
            break;
          case 3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 4;
            break;
          case 4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 5;
            break;
          case 5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 6;
            break;
          case 6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 7;
            break;
          case 7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 8;
            break;
          case 8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 9;
            break;
          case 9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 10;
            break;
          case 0xAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 11;
            break;
          case 0xBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 12;
            break;
          case 0xCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 13;
            break;
          case 0xDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 14;
            break;
          case 0xEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 15;
            break;
          case 0xFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 16;
            break;
          case 0x10u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 17;
            break;
          case 0x11u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 18;
            break;
          case 0x12u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 19;
            break;
          case 0x13u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 20;
            break;
          case 0x14u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 21;
            break;
          case 0x15u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 22;
            break;
          case 0x16u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 23;
            break;
          case 0x17u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 24;
            break;
          case 0x18u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 25;
            break;
          case 0x19u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 26;
            break;
          case 0x1Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 27;
            break;
          case 0x1Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 28;
            break;
          case 0x1Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 29;
            break;
          case 0x1Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 30;
            break;
          case 0x1Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 31;
            break;
          case 0x1Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 32;
            break;
          case 0x20u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 33;
            break;
          case 0x21u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 34;
            break;
          case 0x22u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 35;
            break;
          case 0x23u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 36;
            break;
          case 0x24u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 37;
            break;
          case 0x25u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 38;
            break;
          case 0x26u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 39;
            break;
          case 0x27u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 40;
            break;
          case 0x28u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 41;
            break;
          case 0x29u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 42;
            break;
          case 0x2Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 43;
            break;
          case 0x2Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 44;
            break;
          case 0x2Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 45;
            break;
          case 0x2Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 46;
            break;
          case 0x2Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 47;
            break;
          case 0x2Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 48;
            break;
          case 0x30u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 49;
            break;
          case 0x31u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 50;
            break;
          case 0x32u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 51;
            break;
          case 0x33u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 52;
            break;
          case 0x34u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 53;
            break;
          case 0x35u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 54;
            break;
          case 0x36u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 55;
            break;
          case 0x37u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 56;
            break;
          case 0x38u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 57;
            break;
          case 0x39u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 58;
            break;
          case 0x3Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 59;
            break;
          case 0x3Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 60;
            break;
          case 0x3Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 61;
            break;
          case 0x3Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 62;
            break;
          case 0x3Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 63;
            break;
          case 0x3Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 64;
            break;
          case 0x40u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 65;
            break;
          case 0x41u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 66;
            break;
          case 0x42u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 67;
            break;
          case 0x43u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 68;
            break;
          case 0x44u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 69;
            break;
          case 0x45u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 70;
            break;
          case 0x46u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 71;
            break;
          case 0x47u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 72;
            break;
          case 0x48u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 73;
            break;
          case 0x49u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 74;
            break;
          case 0x4Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 75;
            break;
          case 0x4Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 76;
            break;
          case 0x4Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 77;
            break;
          case 0x4Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 78;
            break;
          case 0x4Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 79;
            break;
          case 0x4Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 80;
            break;
          case 0x50u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 81;
            break;
          case 0x51u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 82;
            break;
          case 0x52u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 83;
            break;
          case 0x53u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 84;
            break;
          case 0x54u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 85;
            break;
          case 0x55u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 86;
            break;
          case 0x56u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 87;
            break;
          case 0x57u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 88;
            break;
          case 0x58u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 89;
            break;
          case 0x59u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 90;
            break;
          case 0x5Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 91;
            break;
          case 0x5Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 92;
            break;
          case 0x5Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 93;
            break;
          case 0x5Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 94;
            break;
          case 0x5Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 95;
            break;
          case 0x5Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 96;
            break;
          case 0x60u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 97;
            break;
          case 0x61u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 98;
            break;
          case 0x62u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 99;
            break;
          case 0x63u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 100;
            break;
          case 0x64u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 101;
            break;
          case 0x65u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 102;
            break;
          case 0x66u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 103;
            break;
          case 0x67u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 104;
            break;
          case 0x68u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 105;
            break;
          case 0x69u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 106;
            break;
          case 0x6Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 107;
            break;
          case 0x6Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 108;
            break;
          case 0x6Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 109;
            break;
          case 0x6Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 110;
            break;
          case 0x6Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 111;
            break;
          case 0x6Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 112;
            break;
          case 0x70u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 113;
            break;
          case 0x71u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 114;
            break;
          case 0x72u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 115;
            break;
          case 0x73u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 116;
            break;
          case 0x74u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 117;
            break;
          case 0x75u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 118;
            break;
          case 0x76u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 119;
            break;
          case 0x77u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 120;
            break;
          case 0x78u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 121;
            break;
          case 0x79u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 122;
            break;
          case 0x7Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 123;
            break;
          case 0x7Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 124;
            break;
          case 0x7Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 125;
            break;
          case 0x7Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 126;
            break;
          case 0x7Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 127;
            break;
          case 0x7Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 128;
            break;
          case 0x80u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 129;
            break;
          case 0x81u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 130;
            break;
          case 0x82u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 131;
            break;
          case 0x83u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 132;
            break;
          case 0x84u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 133;
            break;
          case 0x85u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 134;
            break;
          case 0x86u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 135;
            break;
          case 0x87u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 136;
            break;
          case 0x88u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 137;
            break;
          case 0x89u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 138;
            break;
          case 0x8Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 139;
            break;
          case 0x8Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 140;
            break;
          case 0x8Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 141;
            break;
          case 0x8Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 142;
            break;
          case 0x8Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 143;
            break;
          case 0x8Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 144;
            break;
          case 0x90u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 145;
            break;
          case 0x91u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 146;
            break;
          case 0x92u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 147;
            break;
          case 0x93u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 148;
            break;
          case 0x94u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 149;
            break;
          case 0x95u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 150;
            break;
          case 0x96u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 151;
            break;
          case 0x97u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 152;
            break;
          case 0x98u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 153;
            break;
          case 0x99u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 154;
            break;
          case 0x9Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 155;
            break;
          case 0x9Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 156;
            break;
          case 0x9Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 157;
            break;
          case 0x9Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 158;
            break;
          case 0x9Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 159;
            break;
          case 0x9Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 160;
            break;
          case 0xA0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 161;
            break;
          case 0xA1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 162;
            break;
          case 0xA2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 163;
            break;
          case 0xA3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 164;
            break;
          case 0xA4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 176;
            break;
          case 0xA5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 177;
            break;
          case 0xA6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 178;
            break;
          case 0xA7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 179;
            break;
          case 0xA8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 180;
            break;
          case 0xA9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 181;
            break;
          case 0xAAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 182;
            break;
          case 0xABu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 183;
            break;
          case 0xACu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 184;
            break;
          case 0xADu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 185;
            break;
          case 0xAEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 186;
            break;
          case 0xAFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 187;
            break;
          case 0xB0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 188;
            break;
          case 0xB1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 189;
            break;
          case 0xB2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 190;
            break;
          case 0xB3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 191;
            break;
          case 0xB4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 192;
            break;
          case 0xB5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 193;
            break;
          case 0xB6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 194;
            break;
          case 0xB7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 195;
            break;
          case 0xB8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 196;
            break;
          case 0xB9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 197;
            break;
          case 0xBAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 198;
            break;
          case 0xBBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 199;
            break;
          case 0xBCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 200;
            break;
          case 0xBDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 201;
            break;
          case 0xBEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 202;
            break;
          case 0xBFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 203;
            break;
          case 0xC0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 204;
            break;
          case 0xC1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 205;
            break;
          case 0xC2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 206;
            break;
          case 0xC3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 207;
            break;
          case 0xC4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 208;
            break;
          case 0xC5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 209;
            break;
          case 0xC6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 210;
            break;
          case 0xC7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 211;
            break;
          case 0xC8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 212;
            break;
          case 0xC9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 213;
            break;
          case 0xCAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 214;
            break;
          case 0xCBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 215;
            break;
          case 0xCCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 216;
            break;
          case 0xCDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 217;
            break;
          case 0xCEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 218;
            break;
          case 0xCFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 219;
            break;
          case 0xD0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 220;
            break;
          case 0xD1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 221;
            break;
          case 0xD2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 224;
            break;
          case 0xD3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 225;
            break;
          case 0xD4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 226;
            break;
          case 0xD5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 227;
            break;
          case 0xD6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 228;
            break;
          case 0xD7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 229;
            break;
          case 0xD8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 230;
            break;
          case 0xD9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 231;
            break;
          default:
            return v2 | (v3 << 16);
        }
      }

      break;
    case 7:
      *(v0 + 4);
      if (*v0 == 96)
      {
        LOWORD(v2) = 0;
        LODWORD(v3) = 1;
      }

      else
      {
        LOWORD(v2) = 1;
        LODWORD(v3) = 0;
        *(v0 + 4);
        switch(*v0)
        {
          case 1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2;
            break;
          case 2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 3;
            break;
          case 3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 4;
            break;
          case 4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 5;
            break;
          case 5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 6;
            break;
          case 6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 7;
            break;
          case 7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 8;
            break;
          case 8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 9;
            break;
          case 9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 10;
            break;
          case 0xAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 11;
            break;
          case 0xBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 12;
            break;
          case 0xCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 13;
            break;
          case 0xDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 14;
            break;
          case 0xEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 15;
            break;
          case 0xFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 16;
            break;
          case 0x10u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 17;
            break;
          case 0x11u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 18;
            break;
          case 0x12u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 19;
            break;
          case 0x13u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 20;
            break;
          case 0x14u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 21;
            break;
          case 0x15u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 22;
            break;
          case 0x16u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 23;
            break;
          case 0x17u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 24;
            break;
          case 0x18u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 25;
            break;
          case 0x19u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 26;
            break;
          case 0x1Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 27;
            break;
          case 0x1Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 28;
            break;
          case 0x1Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 29;
            break;
          case 0x1Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 30;
            break;
          case 0x1Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 31;
            break;
          case 0x1Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 32;
            break;
          case 0x20u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 33;
            break;
          case 0x21u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 34;
            break;
          case 0x22u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 35;
            break;
          case 0x23u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 36;
            break;
          case 0x24u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 37;
            break;
          case 0x25u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 38;
            break;
          case 0x26u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 39;
            break;
          case 0x27u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 40;
            break;
          case 0x28u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 41;
            break;
          case 0x29u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 42;
            break;
          case 0x2Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 43;
            break;
          case 0x2Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 44;
            break;
          case 0x2Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 45;
            break;
          case 0x2Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 46;
            break;
          case 0x2Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 47;
            break;
          case 0x2Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 48;
            break;
          case 0x30u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 49;
            break;
          case 0x31u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 50;
            break;
          case 0x32u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 51;
            break;
          case 0x33u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 52;
            break;
          case 0x34u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 53;
            break;
          case 0x35u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 54;
            break;
          case 0x36u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 55;
            break;
          case 0x37u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 56;
            break;
          case 0x38u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 57;
            break;
          case 0x39u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 58;
            break;
          case 0x3Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 59;
            break;
          case 0x3Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 60;
            break;
          case 0x3Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 61;
            break;
          case 0x3Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 62;
            break;
          case 0x3Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 63;
            break;
          case 0x3Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 64;
            break;
          case 0x40u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 65;
            break;
          case 0x41u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 66;
            break;
          case 0x42u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 67;
            break;
          case 0x43u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 68;
            break;
          case 0x44u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 69;
            break;
          case 0x45u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 70;
            break;
          case 0x46u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 71;
            break;
          case 0x47u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 72;
            break;
          case 0x48u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 73;
            break;
          case 0x49u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 74;
            break;
          case 0x4Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 75;
            break;
          case 0x4Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 76;
            break;
          case 0x4Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 77;
            break;
          case 0x4Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 78;
            break;
          case 0x4Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 79;
            break;
          case 0x4Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 80;
            break;
          case 0x50u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 81;
            break;
          case 0x51u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 82;
            break;
          case 0x52u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 83;
            break;
          case 0x53u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 84;
            break;
          case 0x54u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 85;
            break;
          case 0x55u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 86;
            break;
          case 0x56u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 87;
            break;
          case 0x57u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 96;
            break;
          case 0x58u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 97;
            break;
          case 0x59u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 98;
            break;
          case 0x5Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 99;
            break;
          case 0x5Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 100;
            break;
          case 0x5Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 101;
            break;
          case 0x5Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 102;
            break;
          case 0x5Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 103;
            break;
          case 0x5Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 104;
            break;
          default:
            return v2 | (v3 << 16);
        }
      }

      break;
    case 8:
      v3 = (v1 >> 16) & 1;
      *(v0 + 4);
      LODWORD(v2) = *v0;
      break;
    case 9:
      v3 = (v1 >> 16) & 1;
      *(v0 + 4);
      LODWORD(v2) = *v0;
      break;
    case 0xA:
      *(v0 + 4);
      if (*v0 == 99)
      {
        LOWORD(v2) = 0;
        LODWORD(v3) = 1;
      }

      else
      {
        LOWORD(v2) = 1;
        LODWORD(v3) = 0;
        *(v0 + 4);
        switch(*v0)
        {
          case 1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2;
            break;
          case 2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 3;
            break;
          case 3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 4;
            break;
          case 4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 5;
            break;
          case 5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 6;
            break;
          case 6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 7;
            break;
          case 7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 32;
            break;
          case 8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 33;
            break;
          case 9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 34;
            break;
          case 0xAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 35;
            break;
          case 0xBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 36;
            break;
          case 0xCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 37;
            break;
          case 0xDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 38;
            break;
          case 0xEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 39;
            break;
          case 0xFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 40;
            break;
          case 0x10u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 41;
            break;
          case 0x11u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 42;
            break;
          case 0x12u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 43;
            break;
          case 0x13u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 44;
            break;
          case 0x14u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 45;
            break;
          case 0x15u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 46;
            break;
          case 0x16u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 47;
            break;
          case 0x17u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 48;
            break;
          case 0x18u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 49;
            break;
          case 0x19u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 80;
            break;
          case 0x1Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 81;
            break;
          case 0x1Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 82;
            break;
          case 0x1Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 83;
            break;
          case 0x1Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 112;
            break;
          case 0x1Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 113;
            break;
          case 0x1Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 114;
            break;
          case 0x20u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 115;
            break;
          case 0x21u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 116;
            break;
          case 0x22u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 144;
            break;
          case 0x23u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 145;
            break;
          case 0x24u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 146;
            break;
          case 0x25u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 147;
            break;
          case 0x26u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 148;
            break;
          case 0x27u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 149;
            break;
          case 0x28u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 150;
            break;
          case 0x29u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 151;
            break;
          case 0x2Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 152;
            break;
          case 0x2Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 153;
            break;
          case 0x2Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 154;
            break;
          case 0x2Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 155;
            break;
          case 0x2Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 156;
            break;
          case 0x2Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 157;
            break;
          case 0x30u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 158;
            break;
          case 0x31u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 176;
            break;
          case 0x32u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 177;
            break;
          case 0x33u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 178;
            break;
          case 0x34u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 179;
            break;
          case 0x35u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 180;
            break;
          case 0x36u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 181;
            break;
          case 0x37u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 182;
            break;
          case 0x38u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 183;
            break;
          case 0x39u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 184;
            break;
          case 0x3Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 185;
            break;
          case 0x3Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 186;
            break;
          case 0x3Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 187;
            break;
          case 0x3Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 188;
            break;
          case 0x3Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 189;
            break;
          case 0x3Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 190;
            break;
          case 0x40u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 191;
            break;
          case 0x41u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 192;
            break;
          case 0x42u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 193;
            break;
          case 0x43u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 194;
            break;
          case 0x44u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 240;
            break;
          case 0x45u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 241;
            break;
          case 0x46u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 242;
            break;
          case 0x47u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 243;
            break;
          case 0x48u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 244;
            break;
          case 0x49u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 245;
            break;
          case 0x4Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 248;
            break;
          case 0x4Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 249;
            break;
          case 0x4Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 250;
            break;
          case 0x4Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 251;
            break;
          case 0x4Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 252;
            break;
          case 0x4Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 253;
            break;
          case 0x50u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 254;
            break;
          case 0x51u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 264;
            break;
          case 0x52u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 265;
            break;
          case 0x53u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 266;
            break;
          case 0x54u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 272;
            break;
          case 0x55u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 273;
            break;
          case 0x56u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 274;
            break;
          case 0x57u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 275;
            break;
          case 0x58u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 276;
            break;
          case 0x59u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 320;
            break;
          case 0x5Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 321;
            break;
          case 0x5Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 322;
            break;
          case 0x5Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 323;
            break;
          case 0x5Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 324;
            break;
          case 0x5Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 325;
            break;
          case 0x5Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 326;
            break;
          case 0x60u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 327;
            break;
          case 0x61u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 330;
            break;
          case 0x62u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 331;
            break;
          default:
            return v2 | (v3 << 16);
        }
      }

      break;
    case 0xB:
      *(v0 + 4);
      if (*v0 == 450)
      {
        LOWORD(v2) = 0;
        LODWORD(v3) = 1;
      }

      else
      {
        LOWORD(v2) = 1;
        LODWORD(v3) = 0;
        *(v0 + 4);
        switch(*v0)
        {
          case 1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2;
            break;
          case 2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 3;
            break;
          case 3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 4;
            break;
          case 4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 5;
            break;
          case 5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 6;
            break;
          case 6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 32;
            break;
          case 7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 33;
            break;
          case 8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 34;
            break;
          case 9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 48;
            break;
          case 0xAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 49;
            break;
          case 0xBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 50;
            break;
          case 0xCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 51;
            break;
          case 0xDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 52;
            break;
          case 0xEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 53;
            break;
          case 0xFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 54;
            break;
          case 0x10u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 64;
            break;
          case 0x11u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 65;
            break;
          case 0x12u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 66;
            break;
          case 0x13u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 67;
            break;
          case 0x14u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 68;
            break;
          case 0x15u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 69;
            break;
          case 0x16u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 70;
            break;
          case 0x17u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 71;
            break;
          case 0x18u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 72;
            break;
          case 0x19u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 96;
            break;
          case 0x1Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 97;
            break;
          case 0x1Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 98;
            break;
          case 0x1Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 99;
            break;
          case 0x1Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 100;
            break;
          case 0x1Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 101;
            break;
          case 0x1Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 102;
            break;
          case 0x20u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 103;
            break;
          case 0x21u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 104;
            break;
          case 0x22u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 105;
            break;
          case 0x23u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 106;
            break;
          case 0x24u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 107;
            break;
          case 0x25u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 108;
            break;
          case 0x26u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 109;
            break;
          case 0x27u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 110;
            break;
          case 0x28u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 111;
            break;
          case 0x29u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 112;
            break;
          case 0x2Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 113;
            break;
          case 0x2Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 114;
            break;
          case 0x2Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 115;
            break;
          case 0x2Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 116;
            break;
          case 0x2Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 117;
            break;
          case 0x2Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 118;
            break;
          case 0x30u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 119;
            break;
          case 0x31u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 120;
            break;
          case 0x32u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 121;
            break;
          case 0x33u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 122;
            break;
          case 0x34u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 123;
            break;
          case 0x35u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 124;
            break;
          case 0x36u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 125;
            break;
          case 0x37u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 126;
            break;
          case 0x38u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 127;
            break;
          case 0x39u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 128;
            break;
          case 0x3Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 129;
            break;
          case 0x3Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 130;
            break;
          case 0x3Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 131;
            break;
          case 0x3Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 132;
            break;
          case 0x3Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 133;
            break;
          case 0x3Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 134;
            break;
          case 0x40u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 135;
            break;
          case 0x41u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 136;
            break;
          case 0x42u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 137;
            break;
          case 0x43u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 138;
            break;
          case 0x44u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 139;
            break;
          case 0x45u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 140;
            break;
          case 0x46u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 141;
            break;
          case 0x47u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 142;
            break;
          case 0x48u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 143;
            break;
          case 0x49u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 144;
            break;
          case 0x4Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 145;
            break;
          case 0x4Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 146;
            break;
          case 0x4Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 147;
            break;
          case 0x4Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 148;
            break;
          case 0x4Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 149;
            break;
          case 0x4Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 150;
            break;
          case 0x50u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 151;
            break;
          case 0x51u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 152;
            break;
          case 0x52u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 153;
            break;
          case 0x53u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 154;
            break;
          case 0x54u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 155;
            break;
          case 0x55u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 156;
            break;
          case 0x56u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 157;
            break;
          case 0x57u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 158;
            break;
          case 0x58u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 160;
            break;
          case 0x59u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 161;
            break;
          case 0x5Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 162;
            break;
          case 0x5Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 163;
            break;
          case 0x5Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 164;
            break;
          case 0x5Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 176;
            break;
          case 0x5Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 177;
            break;
          case 0x5Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 178;
            break;
          case 0x60u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 179;
            break;
          case 0x61u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 180;
            break;
          case 0x62u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 181;
            break;
          case 0x63u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 182;
            break;
          case 0x64u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 183;
            break;
          case 0x65u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 184;
            break;
          case 0x66u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 185;
            break;
          case 0x67u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 186;
            break;
          case 0x68u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 187;
            break;
          case 0x69u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 188;
            break;
          case 0x6Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 189;
            break;
          case 0x6Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 190;
            break;
          case 0x6Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 191;
            break;
          case 0x6Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 192;
            break;
          case 0x6Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 193;
            break;
          case 0x6Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 194;
            break;
          case 0x70u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 195;
            break;
          case 0x71u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 196;
            break;
          case 0x72u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 197;
            break;
          case 0x73u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 198;
            break;
          case 0x74u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 199;
            break;
          case 0x75u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 200;
            break;
          case 0x76u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 201;
            break;
          case 0x77u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 202;
            break;
          case 0x78u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 203;
            break;
          case 0x79u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 204;
            break;
          case 0x7Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 205;
            break;
          case 0x7Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 206;
            break;
          case 0x7Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 207;
            break;
          case 0x7Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 208;
            break;
          case 0x7Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 209;
            break;
          case 0x7Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 210;
            break;
          case 0x80u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 211;
            break;
          case 0x81u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 212;
            break;
          case 0x82u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 213;
            break;
          case 0x83u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 214;
            break;
          case 0x84u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 215;
            break;
          case 0x85u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 216;
            break;
          case 0x86u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 217;
            break;
          case 0x87u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 224;
            break;
          case 0x88u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 225;
            break;
          case 0x89u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 226;
            break;
          case 0x8Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 227;
            break;
          case 0x8Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 228;
            break;
          case 0x8Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 229;
            break;
          case 0x8Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 230;
            break;
          case 0x8Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 231;
            break;
          case 0x8Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 232;
            break;
          case 0x90u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 233;
            break;
          case 0x91u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 234;
            break;
          case 0x92u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 240;
            break;
          case 0x93u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 241;
            break;
          case 0x94u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 242;
            break;
          case 0x95u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 243;
            break;
          case 0x96u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 244;
            break;
          case 0x97u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 245;
            break;
          case 0x98u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 256;
            break;
          case 0x99u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 257;
            break;
          case 0x9Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 258;
            break;
          case 0x9Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 259;
            break;
          case 0x9Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 260;
            break;
          case 0x9Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 261;
            break;
          case 0x9Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 262;
            break;
          case 0x9Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 263;
            break;
          case 0xA0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 264;
            break;
          case 0xA1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 265;
            break;
          case 0xA2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 266;
            break;
          case 0xA3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 267;
            break;
          case 0xA4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 268;
            break;
          case 0xA5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 269;
            break;
          case 0xA6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 336;
            break;
          case 0xA7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 337;
            break;
          case 0xA8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 338;
            break;
          case 0xA9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 339;
            break;
          case 0xAAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 340;
            break;
          case 0xABu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 341;
            break;
          case 0xACu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 352;
            break;
          case 0xADu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 353;
            break;
          case 0xAEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 354;
            break;
          case 0xAFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 355;
            break;
          case 0xB0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 356;
            break;
          case 0xB1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 357;
            break;
          case 0xB2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 358;
            break;
          case 0xB3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 359;
            break;
          case 0xB4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 360;
            break;
          case 0xB5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 361;
            break;
          case 0xB6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 362;
            break;
          case 0xB7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 368;
            break;
          case 0xB8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 369;
            break;
          case 0xB9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 370;
            break;
          case 0xBAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 371;
            break;
          case 0xBBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 372;
            break;
          case 0xBCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 384;
            break;
          case 0xBDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 385;
            break;
          case 0xBEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 386;
            break;
          case 0xBFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 387;
            break;
          case 0xC0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 388;
            break;
          case 0xC1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 389;
            break;
          case 0xC2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 390;
            break;
          case 0xC3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 391;
            break;
          case 0xC4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 392;
            break;
          case 0xC5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 393;
            break;
          case 0xC6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 394;
            break;
          case 0xC7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 395;
            break;
          case 0xC8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 396;
            break;
          case 0xC9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 397;
            break;
          case 0xCAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 398;
            break;
          case 0xCBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 399;
            break;
          case 0xCCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 400;
            break;
          case 0xCDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 401;
            break;
          case 0xCEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 402;
            break;
          case 0xCFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 403;
            break;
          case 0xD0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 404;
            break;
          case 0xD1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 405;
            break;
          case 0xD2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 406;
            break;
          case 0xD3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 407;
            break;
          case 0xD4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 408;
            break;
          case 0xD5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 409;
            break;
          case 0xD6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 410;
            break;
          case 0xD7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 411;
            break;
          case 0xD8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 412;
            break;
          case 0xD9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 413;
            break;
          case 0xDAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 414;
            break;
          case 0xDBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 415;
            break;
          case 0xDCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 416;
            break;
          case 0xDDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 417;
            break;
          case 0xDEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 418;
            break;
          case 0xDFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 419;
            break;
          case 0xE0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 420;
            break;
          case 0xE1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 421;
            break;
          case 0xE2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 422;
            break;
          case 0xE3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 423;
            break;
          case 0xE4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 424;
            break;
          case 0xE5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 425;
            break;
          case 0xE6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 426;
            break;
          case 0xE7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 427;
            break;
          case 0xE8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 428;
            break;
          case 0xE9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 429;
            break;
          case 0xEAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 430;
            break;
          case 0xEBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 431;
            break;
          case 0xECu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 432;
            break;
          case 0xEDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 433;
            break;
          case 0xEEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 434;
            break;
          case 0xEFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 435;
            break;
          case 0xF0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 436;
            break;
          case 0xF1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 437;
            break;
          case 0xF2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 438;
            break;
          case 0xF3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 439;
            break;
          case 0xF4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 440;
            break;
          case 0xF5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 441;
            break;
          case 0xF6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 442;
            break;
          case 0xF7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 444;
            break;
          case 0xF8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 445;
            break;
          case 0xF9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 446;
            break;
          case 0xFAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 447;
            break;
          case 0xFBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 448;
            break;
          case 0xFCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 449;
            break;
          case 0xFDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 450;
            break;
          case 0xFEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 451;
            break;
          case 0xFFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 452;
            break;
          case 0x100u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 453;
            break;
          case 0x101u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 454;
            break;
          case 0x102u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 455;
            break;
          case 0x103u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 456;
            break;
          case 0x104u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 457;
            break;
          case 0x105u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 458;
            break;
          case 0x106u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 459;
            break;
          case 0x107u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 512;
            break;
          case 0x108u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 513;
            break;
          case 0x109u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 514;
            break;
          case 0x10Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 515;
            break;
          case 0x10Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 516;
            break;
          case 0x10Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 517;
            break;
          case 0x10Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 518;
            break;
          case 0x10Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 519;
            break;
          case 0x10Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 520;
            break;
          case 0x110u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 521;
            break;
          case 0x111u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 538;
            break;
          case 0x112u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 539;
            break;
          case 0x113u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 540;
            break;
          case 0x114u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 541;
            break;
          case 0x115u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 542;
            break;
          case 0x116u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 543;
            break;
          case 0x117u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 544;
            break;
          case 0x118u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 545;
            break;
          case 0x119u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 546;
            break;
          case 0x11Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 547;
            break;
          case 0x11Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 548;
            break;
          case 0x11Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 549;
            break;
          case 0x11Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 550;
            break;
          case 0x11Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 551;
            break;
          case 0x11Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 552;
            break;
          case 0x120u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 553;
            break;
          case 0x121u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 554;
            break;
          case 0x122u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 555;
            break;
          case 0x123u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 556;
            break;
          case 0x124u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 557;
            break;
          case 0x125u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 558;
            break;
          case 0x126u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 559;
            break;
          case 0x127u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 560;
            break;
          case 0x128u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 561;
            break;
          case 0x129u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 562;
            break;
          case 0x12Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 563;
            break;
          case 0x12Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 564;
            break;
          case 0x12Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 565;
            break;
          case 0x12Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 566;
            break;
          case 0x12Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 567;
            break;
          case 0x12Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 568;
            break;
          case 0x130u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 569;
            break;
          case 0x131u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 570;
            break;
          case 0x132u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 571;
            break;
          case 0x133u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 572;
            break;
          case 0x134u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 573;
            break;
          case 0x135u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 574;
            break;
          case 0x136u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 575;
            break;
          case 0x137u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 576;
            break;
          case 0x138u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 577;
            break;
          case 0x139u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 578;
            break;
          case 0x13Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 579;
            break;
          case 0x13Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 580;
            break;
          case 0x13Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 581;
            break;
          case 0x13Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 582;
            break;
          case 0x13Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 583;
            break;
          case 0x13Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 584;
            break;
          case 0x140u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 585;
            break;
          case 0x141u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 586;
            break;
          case 0x142u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 587;
            break;
          case 0x143u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 588;
            break;
          case 0x144u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 589;
            break;
          case 0x145u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 590;
            break;
          case 0x146u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 591;
            break;
          case 0x147u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 592;
            break;
          case 0x148u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 593;
            break;
          case 0x149u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 594;
            break;
          case 0x14Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 595;
            break;
          case 0x14Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 596;
            break;
          case 0x14Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 597;
            break;
          case 0x14Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 598;
            break;
          case 0x14Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 599;
            break;
          case 0x14Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 600;
            break;
          case 0x150u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 601;
            break;
          case 0x151u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 602;
            break;
          case 0x152u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 603;
            break;
          case 0x153u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 604;
            break;
          case 0x154u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 605;
            break;
          case 0x155u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 606;
            break;
          case 0x156u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 607;
            break;
          case 0x157u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 608;
            break;
          case 0x158u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 609;
            break;
          case 0x159u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 610;
            break;
          case 0x15Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 611;
            break;
          case 0x15Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 612;
            break;
          case 0x15Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 613;
            break;
          case 0x15Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 614;
            break;
          case 0x15Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 615;
            break;
          case 0x15Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 616;
            break;
          case 0x160u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 617;
            break;
          case 0x161u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 618;
            break;
          case 0x162u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 619;
            break;
          case 0x163u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 620;
            break;
          case 0x164u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 621;
            break;
          case 0x165u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 622;
            break;
          case 0x166u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 623;
            break;
          case 0x167u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 624;
            break;
          case 0x168u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 625;
            break;
          case 0x169u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 626;
            break;
          case 0x16Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 627;
            break;
          case 0x16Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 628;
            break;
          case 0x16Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 629;
            break;
          case 0x16Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 630;
            break;
          case 0x16Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 631;
            break;
          case 0x16Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 632;
            break;
          case 0x170u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 633;
            break;
          case 0x171u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 634;
            break;
          case 0x172u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 635;
            break;
          case 0x173u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 636;
            break;
          case 0x174u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 637;
            break;
          case 0x175u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 638;
            break;
          case 0x176u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 639;
            break;
          case 0x177u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 640;
            break;
          case 0x178u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 641;
            break;
          case 0x179u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 642;
            break;
          case 0x17Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 643;
            break;
          case 0x17Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 644;
            break;
          case 0x17Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 645;
            break;
          case 0x17Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 646;
            break;
          case 0x17Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 647;
            break;
          case 0x17Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 648;
            break;
          case 0x180u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 649;
            break;
          case 0x181u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 650;
            break;
          case 0x182u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 651;
            break;
          case 0x183u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 652;
            break;
          case 0x184u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 653;
            break;
          case 0x185u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 654;
            break;
          case 0x186u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 655;
            break;
          case 0x187u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 656;
            break;
          case 0x188u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 657;
            break;
          case 0x189u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 658;
            break;
          case 0x18Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 659;
            break;
          case 0x18Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 660;
            break;
          case 0x18Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 661;
            break;
          case 0x18Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 662;
            break;
          case 0x18Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 663;
            break;
          case 0x18Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 664;
            break;
          case 0x190u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 665;
            break;
          case 0x191u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 666;
            break;
          case 0x192u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 667;
            break;
          case 0x193u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 668;
            break;
          case 0x194u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 669;
            break;
          case 0x195u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 670;
            break;
          case 0x196u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 671;
            break;
          case 0x197u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 672;
            break;
          case 0x198u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 673;
            break;
          case 0x199u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 674;
            break;
          case 0x19Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 688;
            break;
          case 0x19Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 704;
            break;
          case 0x19Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 705;
            break;
          case 0x19Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 706;
            break;
          case 0x19Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 707;
            break;
          case 0x19Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 708;
            break;
          case 0x1A0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 709;
            break;
          case 0x1A1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 710;
            break;
          case 0x1A2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 711;
            break;
          case 0x1A3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 712;
            break;
          case 0x1A4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 713;
            break;
          case 0x1A5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 714;
            break;
          case 0x1A6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 715;
            break;
          case 0x1A7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 716;
            break;
          case 0x1A8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 720;
            break;
          case 0x1A9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 721;
            break;
          case 0x1AAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 722;
            break;
          case 0x1ABu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 723;
            break;
          case 0x1ACu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 724;
            break;
          case 0x1ADu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1280;
            break;
          case 0x1AEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1281;
            break;
          case 0x1AFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1282;
            break;
          case 0x1B0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1283;
            break;
          case 0x1B1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1284;
            break;
          case 0x1B2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1285;
            break;
          case 0x1B3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1286;
            break;
          case 0x1B4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1287;
            break;
          case 0x1B5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1288;
            break;
          case 0x1B6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1289;
            break;
          case 0x1B7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1290;
            break;
          case 0x1B8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1291;
            break;
          case 0x1B9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1292;
            break;
          case 0x1BAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1293;
            break;
          case 0x1BBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1294;
            break;
          case 0x1BCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1295;
            break;
          case 0x1BDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1296;
            break;
          case 0x1BEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1297;
            break;
          case 0x1BFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1298;
            break;
          case 0x1C0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1299;
            break;
          case 0x1C1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1300;
            break;
          default:
            return v2 | (v3 << 16);
        }
      }

      break;
    case 0xC:
      *(v0 + 4);
      if (*v0 == 108)
      {
        LOWORD(v2) = 0;
        LODWORD(v3) = 1;
      }

      else
      {
        LOWORD(v2) = 1;
        LODWORD(v3) = 0;
        *(v0 + 4);
        switch(*v0)
        {
          case 1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2;
            break;
          case 2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 3;
            break;
          case 3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 4;
            break;
          case 4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 5;
            break;
          case 5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 6;
            break;
          case 6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 7;
            break;
          case 7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 8;
            break;
          case 8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 9;
            break;
          case 9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 10;
            break;
          case 0xAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 11;
            break;
          case 0xBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 12;
            break;
          case 0xCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 13;
            break;
          case 0xDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 14;
            break;
          case 0xEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 15;
            break;
          case 0xFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 32;
            break;
          case 0x10u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 33;
            break;
          case 0x11u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 34;
            break;
          case 0x12u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 35;
            break;
          case 0x13u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 36;
            break;
          case 0x14u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 48;
            break;
          case 0x15u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 49;
            break;
          case 0x16u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 50;
            break;
          case 0x17u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 51;
            break;
          case 0x18u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 52;
            break;
          case 0x19u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 53;
            break;
          case 0x1Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 54;
            break;
          case 0x1Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 55;
            break;
          case 0x1Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 56;
            break;
          case 0x1Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 57;
            break;
          case 0x1Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 58;
            break;
          case 0x1Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 59;
            break;
          case 0x20u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 60;
            break;
          case 0x21u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 61;
            break;
          case 0x22u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 62;
            break;
          case 0x23u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 63;
            break;
          case 0x24u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 64;
            break;
          case 0x25u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 65;
            break;
          case 0x26u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 66;
            break;
          case 0x27u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 67;
            break;
          case 0x28u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 68;
            break;
          case 0x29u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 69;
            break;
          case 0x2Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 70;
            break;
          case 0x2Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 71;
            break;
          case 0x2Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 72;
            break;
          case 0x2Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 73;
            break;
          case 0x2Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 81;
            break;
          case 0x2Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 82;
            break;
          case 0x30u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 83;
            break;
          case 0x31u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 84;
            break;
          case 0x32u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 85;
            break;
          case 0x33u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 86;
            break;
          case 0x34u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 87;
            break;
          case 0x35u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 88;
            break;
          case 0x36u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 89;
            break;
          case 0x37u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 90;
            break;
          case 0x38u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 91;
            break;
          case 0x39u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 92;
            break;
          case 0x3Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 93;
            break;
          case 0x3Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 94;
            break;
          case 0x3Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 95;
            break;
          case 0x3Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 96;
            break;
          case 0x3Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 97;
            break;
          case 0x3Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 98;
            break;
          case 0x40u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 99;
            break;
          case 0x41u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 100;
            break;
          case 0x42u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 101;
            break;
          case 0x43u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 102;
            break;
          case 0x44u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 103;
            break;
          case 0x45u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 104;
            break;
          case 0x46u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 105;
            break;
          case 0x47u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 106;
            break;
          case 0x48u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 107;
            break;
          case 0x49u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 108;
            break;
          case 0x4Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 109;
            break;
          case 0x4Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 110;
            break;
          case 0x4Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 111;
            break;
          case 0x4Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 112;
            break;
          case 0x4Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 113;
            break;
          case 0x4Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 114;
            break;
          case 0x50u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 115;
            break;
          case 0x51u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 116;
            break;
          case 0x52u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 117;
            break;
          case 0x53u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 118;
            break;
          case 0x54u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 119;
            break;
          case 0x55u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 128;
            break;
          case 0x56u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 129;
            break;
          case 0x57u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 130;
            break;
          case 0x58u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 131;
            break;
          case 0x59u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 132;
            break;
          case 0x5Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 133;
            break;
          case 0x5Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 144;
            break;
          case 0x5Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 145;
            break;
          case 0x5Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 146;
            break;
          case 0x5Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 147;
            break;
          case 0x5Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 148;
            break;
          case 0x60u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 149;
            break;
          case 0x61u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 150;
            break;
          case 0x62u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 151;
            break;
          case 0x63u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 152;
            break;
          case 0x64u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 160;
            break;
          case 0x65u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 161;
            break;
          case 0x66u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 162;
            break;
          case 0x67u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 163;
            break;
          case 0x68u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 164;
            break;
          case 0x69u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 165;
            break;
          case 0x6Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 166;
            break;
          case 0x6Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 176;
            break;
          default:
            return v2 | (v3 << 16);
        }
      }

      break;
    case 0xD:
      LODWORD(v3) = 1;
      LOWORD(v2) = 0;
      *(v0 + 4);
      switch(*v0)
      {
        case 1u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 16;
          break;
        case 2u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 17;
          break;
        case 3u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 32;
          break;
        case 4u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 33;
          break;
        case 5u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 34;
          break;
        case 6u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 35;
          break;
        case 7u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 36;
          break;
        case 8u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 37;
          break;
        case 9u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 38;
          break;
        case 0xAu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 39;
          break;
        case 0xBu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 40;
          break;
        case 0xCu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4097;
          break;
        case 0xDu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4098;
          break;
        case 0xEu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4099;
          break;
        case 0xFu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4100;
          break;
        case 0x10u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4101;
          break;
        case 0x11u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4102;
          break;
        case 0x12u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4103;
          break;
        case 0x13u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4104;
          break;
        case 0x14u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4105;
          break;
        case 0x15u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4106;
          break;
        case 0x16u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4107;
          break;
        case 0x17u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4108;
          break;
        case 0x18u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4109;
          break;
        case 0x19u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4110;
          break;
        case 0x1Au:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4111;
          break;
        case 0x1Bu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4112;
          break;
        case 0x1Cu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4113;
          break;
        case 0x1Du:
          return v2 | (v3 << 16);
        default:
          LODWORD(v3) = 0;
          LOWORD(v2) = 1;
          break;
      }

      break;
    case 0xE:
      *(v0 + 4);
      if (*v0 == 105)
      {
        LOWORD(v2) = 0;
        LODWORD(v3) = 1;
      }

      else
      {
        LOWORD(v2) = 1;
        LODWORD(v3) = 0;
        *(v0 + 4);
        switch(*v0)
        {
          case 1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 32;
            break;
          case 2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 33;
            break;
          case 3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 34;
            break;
          case 4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 35;
            break;
          case 5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 36;
            break;
          case 6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 37;
            break;
          case 7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 38;
            break;
          case 8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 39;
            break;
          case 9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 40;
            break;
          case 0xAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 48;
            break;
          case 0xBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 49;
            break;
          case 0xCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 50;
            break;
          case 0xDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 51;
            break;
          case 0xEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 52;
            break;
          case 0xFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 64;
            break;
          case 0x10u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 65;
            break;
          case 0x11u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 66;
            break;
          case 0x12u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 67;
            break;
          case 0x13u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 80;
            break;
          case 0x14u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 81;
            break;
          case 0x15u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 82;
            break;
          case 0x16u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 83;
            break;
          case 0x17u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 84;
            break;
          case 0x18u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 85;
            break;
          case 0x19u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 86;
            break;
          case 0x1Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 87;
            break;
          case 0x1Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 88;
            break;
          case 0x1Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 89;
            break;
          case 0x1Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 90;
            break;
          case 0x1Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 91;
            break;
          case 0x1Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 92;
            break;
          case 0x20u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 93;
            break;
          case 0x21u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 94;
            break;
          case 0x22u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 95;
            break;
          case 0x23u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 96;
            break;
          case 0x24u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 97;
            break;
          case 0x25u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 98;
            break;
          case 0x26u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 99;
            break;
          case 0x27u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 100;
            break;
          case 0x28u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 101;
            break;
          case 0x29u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 102;
            break;
          case 0x2Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 103;
            break;
          case 0x2Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 104;
            break;
          case 0x2Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 105;
            break;
          case 0x2Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 106;
            break;
          case 0x2Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 107;
            break;
          case 0x2Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 108;
            break;
          case 0x30u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 109;
            break;
          case 0x31u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 110;
            break;
          case 0x32u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 111;
            break;
          case 0x33u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 112;
            break;
          case 0x34u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 113;
            break;
          case 0x35u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 114;
            break;
          case 0x36u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 115;
            break;
          case 0x37u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 116;
            break;
          case 0x38u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 117;
            break;
          case 0x39u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 118;
            break;
          case 0x3Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 119;
            break;
          case 0x3Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 120;
            break;
          case 0x3Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 121;
            break;
          case 0x3Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 122;
            break;
          case 0x3Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 123;
            break;
          case 0x3Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 124;
            break;
          case 0x40u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 125;
            break;
          case 0x41u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 126;
            break;
          case 0x42u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 127;
            break;
          case 0x43u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 128;
            break;
          case 0x44u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 129;
            break;
          case 0x45u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 130;
            break;
          case 0x46u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 131;
            break;
          case 0x47u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 132;
            break;
          case 0x48u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 133;
            break;
          case 0x49u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 134;
            break;
          case 0x4Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 135;
            break;
          case 0x4Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 136;
            break;
          case 0x4Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 137;
            break;
          case 0x4Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 139;
            break;
          case 0x4Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 140;
            break;
          case 0x4Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 141;
            break;
          case 0x50u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 142;
            break;
          case 0x51u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 143;
            break;
          case 0x52u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 144;
            break;
          case 0x53u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 145;
            break;
          case 0x54u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 146;
            break;
          case 0x55u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 148;
            break;
          case 0x56u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 149;
            break;
          case 0x57u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 150;
            break;
          case 0x58u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 151;
            break;
          case 0x59u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 152;
            break;
          case 0x5Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 153;
            break;
          case 0x5Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 154;
            break;
          case 0x5Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 155;
            break;
          case 0x5Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 156;
            break;
          case 0x5Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 159;
            break;
          case 0x5Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 160;
            break;
          case 0x60u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 164;
            break;
          case 0x61u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 165;
            break;
          case 0x62u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 166;
            break;
          case 0x63u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 167;
            break;
          case 0x64u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 168;
            break;
          case 0x65u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 169;
            break;
          case 0x66u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 170;
            break;
          case 0x67u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 171;
            break;
          case 0x68u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 172;
            break;
          default:
            return v2 | (v3 << 16);
        }
      }

      break;
    case 0xF:
      *(v0 + 4);
      if (*v0 == 10)
      {
        LOWORD(v2) = 0;
      }

      else
      {
        *(v0 + 4);
        LOWORD(v2) = *v0 + 1;
      }

      *(v0 + 4);
      LODWORD(v3) = *v0 == 10;
      break;
    case 0x10:
      LODWORD(v3) = 1;
      LOWORD(v2) = 0;
      *(v0 + 4);
      switch(*v0)
      {
        case 1u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 2;
          break;
        case 2u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 16;
          break;
        case 3u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 17;
          break;
        case 4u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 18;
          break;
        case 5u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 19;
          break;
        case 6u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 20;
          break;
        case 7u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 32;
          break;
        case 8u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 33;
          break;
        case 9u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 34;
          break;
        case 0xAu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 35;
          break;
        case 0xBu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 36;
          break;
        case 0xCu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 37;
          break;
        case 0xDu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 38;
          break;
        case 0xEu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 39;
          break;
        case 0xFu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 40;
          break;
        case 0x10u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 41;
          break;
        case 0x11u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 42;
          break;
        case 0x12u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 43;
          break;
        case 0x13u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 256;
          break;
        case 0x14u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 257;
          break;
        case 0x15u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 258;
          break;
        case 0x16u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 259;
          break;
        case 0x17u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 260;
          break;
        case 0x18u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 261;
          break;
        case 0x19u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 512;
          break;
        case 0x1Au:
          LODWORD(v3) = 0;
          LOWORD(v2) = 513;
          break;
        case 0x1Bu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 514;
          break;
        case 0x1Cu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 515;
          break;
        case 0x1Du:
          LODWORD(v3) = 0;
          LOWORD(v2) = 516;
          break;
        case 0x1Eu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 517;
          break;
        case 0x1Fu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 768;
          break;
        case 0x20u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 769;
          break;
        case 0x21u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 1024;
          break;
        case 0x22u:
          return v2 | (v3 << 16);
        default:
          LODWORD(v3) = 0;
          LOWORD(v2) = 1;
          break;
      }

      break;
    case 0x11:
      *(v0 + 4);
      if (*v0 == 75)
      {
        LOWORD(v2) = 0;
        LODWORD(v3) = 1;
      }

      else
      {
        LOWORD(v2) = 1;
        LODWORD(v3) = 0;
        *(v0 + 4);
        switch(*v0)
        {
          case 1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2;
            break;
          case 2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 32;
            break;
          case 3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 33;
            break;
          case 4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 34;
            break;
          case 5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 35;
            break;
          case 6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 36;
            break;
          case 7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 37;
            break;
          case 8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 38;
            break;
          case 9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 39;
            break;
          case 0xAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 40;
            break;
          case 0xBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 41;
            break;
          case 0xCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 42;
            break;
          case 0xDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 43;
            break;
          case 0xEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 44;
            break;
          case 0xFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 45;
            break;
          case 0x10u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 46;
            break;
          case 0x11u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 47;
            break;
          case 0x12u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 48;
            break;
          case 0x13u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 49;
            break;
          case 0x14u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 50;
            break;
          case 0x15u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 51;
            break;
          case 0x16u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 52;
            break;
          case 0x17u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 53;
            break;
          case 0x18u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 54;
            break;
          case 0x19u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 55;
            break;
          case 0x1Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 56;
            break;
          case 0x1Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 57;
            break;
          case 0x1Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 58;
            break;
          case 0x1Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 59;
            break;
          case 0x1Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 60;
            break;
          case 0x1Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 61;
            break;
          case 0x20u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 62;
            break;
          case 0x21u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 63;
            break;
          case 0x22u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 64;
            break;
          case 0x23u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 65;
            break;
          case 0x24u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 66;
            break;
          case 0x25u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 67;
            break;
          case 0x26u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 68;
            break;
          case 0x27u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 69;
            break;
          case 0x28u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 70;
            break;
          case 0x29u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 71;
            break;
          case 0x2Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 72;
            break;
          case 0x2Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 73;
            break;
          case 0x2Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 74;
            break;
          case 0x2Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 75;
            break;
          case 0x2Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 76;
            break;
          case 0x2Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 77;
            break;
          case 0x30u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 128;
            break;
          case 0x31u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 129;
            break;
          case 0x32u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 130;
            break;
          case 0x33u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 131;
            break;
          case 0x34u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 132;
            break;
          case 0x35u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 133;
            break;
          case 0x36u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 134;
            break;
          case 0x37u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 135;
            break;
          case 0x38u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 136;
            break;
          case 0x39u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 138;
            break;
          case 0x3Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 139;
            break;
          case 0x3Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 140;
            break;
          case 0x3Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 141;
            break;
          case 0x3Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 142;
            break;
          case 0x3Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 143;
            break;
          case 0x3Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 144;
            break;
          case 0x40u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 145;
            break;
          case 0x41u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 146;
            break;
          case 0x42u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 147;
            break;
          case 0x43u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 148;
            break;
          case 0x44u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 149;
            break;
          case 0x45u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 194;
            break;
          case 0x46u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 204;
            break;
          case 0x47u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 207;
            break;
          case 0x48u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 221;
            break;
          case 0x49u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 223;
            break;
          case 0x4Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 255;
            break;
          default:
            return v2 | (v3 << 16);
        }
      }

      break;
    case 0x12:
      *(v0 + 4);
      if (*v0 == 665)
      {
        LOWORD(v2) = 0;
        LODWORD(v3) = 1;
      }

      else
      {
        LOWORD(v2) = 1;
        LODWORD(v3) = 0;
        *(v0 + 4);
        switch(*v0)
        {
          case 1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 16;
            break;
          case 2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 17;
            break;
          case 3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 18;
            break;
          case 4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 19;
            break;
          case 5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 20;
            break;
          case 6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 21;
            break;
          case 7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 22;
            break;
          case 8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 23;
            break;
          case 9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 24;
            break;
          case 0xAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 25;
            break;
          case 0xBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 32;
            break;
          case 0xCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 33;
            break;
          case 0xDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 34;
            break;
          case 0xEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 35;
            break;
          case 0xFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 36;
            break;
          case 0x10u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 37;
            break;
          case 0x11u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 38;
            break;
          case 0x12u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 39;
            break;
          case 0x13u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 40;
            break;
          case 0x14u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 41;
            break;
          case 0x15u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 48;
            break;
          case 0x16u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 49;
            break;
          case 0x17u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 50;
            break;
          case 0x18u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 51;
            break;
          case 0x19u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 52;
            break;
          case 0x1Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 53;
            break;
          case 0x1Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 54;
            break;
          case 0x1Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 55;
            break;
          case 0x1Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 56;
            break;
          case 0x1Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 57;
            break;
          case 0x1Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 58;
            break;
          case 0x20u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 59;
            break;
          case 0x21u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 64;
            break;
          case 0x22u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 65;
            break;
          case 0x23u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 66;
            break;
          case 0x24u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 67;
            break;
          case 0x25u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 68;
            break;
          case 0x26u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 69;
            break;
          case 0x27u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 80;
            break;
          case 0x28u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 81;
            break;
          case 0x29u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 82;
            break;
          case 0x2Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 83;
            break;
          case 0x2Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 84;
            break;
          case 0x2Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 85;
            break;
          case 0x2Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 86;
            break;
          case 0x2Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 87;
            break;
          case 0x2Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 96;
            break;
          case 0x30u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 97;
            break;
          case 0x31u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 98;
            break;
          case 0x32u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 99;
            break;
          case 0x33u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 100;
            break;
          case 0x34u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 101;
            break;
          case 0x35u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 102;
            break;
          case 0x36u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 103;
            break;
          case 0x37u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 104;
            break;
          case 0x38u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 105;
            break;
          case 0x39u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 112;
            break;
          case 0x3Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 113;
            break;
          case 0x3Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 114;
            break;
          case 0x3Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 115;
            break;
          case 0x3Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 116;
            break;
          case 0x3Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 117;
            break;
          case 0x3Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 118;
            break;
          case 0x40u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 119;
            break;
          case 0x41u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 120;
            break;
          case 0x42u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 121;
            break;
          case 0x43u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 122;
            break;
          case 0x44u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 123;
            break;
          case 0x45u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 124;
            break;
          case 0x46u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 128;
            break;
          case 0x47u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 129;
            break;
          case 0x48u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 130;
            break;
          case 0x49u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 131;
            break;
          case 0x4Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 132;
            break;
          case 0x4Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 133;
            break;
          case 0x4Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 134;
            break;
          case 0x4Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 135;
            break;
          case 0x4Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 136;
            break;
          case 0x4Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 137;
            break;
          case 0x50u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 138;
            break;
          case 0x51u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 139;
            break;
          case 0x52u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 140;
            break;
          case 0x53u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 141;
            break;
          case 0x54u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 142;
            break;
          case 0x55u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 143;
            break;
          case 0x56u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 144;
            break;
          case 0x57u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 145;
            break;
          case 0x58u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 146;
            break;
          case 0x59u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 147;
            break;
          case 0x5Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 160;
            break;
          case 0x5Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 161;
            break;
          case 0x5Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 162;
            break;
          case 0x5Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 176;
            break;
          case 0x5Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 177;
            break;
          case 0x5Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 178;
            break;
          case 0x60u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 179;
            break;
          case 0x61u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 180;
            break;
          case 0x62u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 192;
            break;
          case 0x63u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 193;
            break;
          case 0x64u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 194;
            break;
          case 0x65u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 208;
            break;
          case 0x66u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 209;
            break;
          case 0x67u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 210;
            break;
          case 0x68u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 224;
            break;
          case 0x69u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 225;
            break;
          case 0x6Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 226;
            break;
          case 0x6Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 227;
            break;
          case 0x6Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 228;
            break;
          case 0x6Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 240;
            break;
          case 0x6Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 241;
            break;
          case 0x6Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 242;
            break;
          case 0x70u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 243;
            break;
          case 0x71u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 244;
            break;
          case 0x72u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 245;
            break;
          case 0x73u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 246;
            break;
          case 0x74u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 247;
            break;
          case 0x75u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 248;
            break;
          case 0x76u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 249;
            break;
          case 0x77u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 250;
            break;
          case 0x78u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 251;
            break;
          case 0x79u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 252;
            break;
          case 0x7Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 253;
            break;
          case 0x7Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 254;
            break;
          case 0x7Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 255;
            break;
          case 0x7Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 512;
            break;
          case 0x7Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 513;
            break;
          case 0x7Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 514;
            break;
          case 0x80u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 768;
            break;
          case 0x81u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 769;
            break;
          case 0x82u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 770;
            break;
          case 0x83u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 771;
            break;
          case 0x84u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 772;
            break;
          case 0x85u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 773;
            break;
          case 0x86u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 774;
            break;
          case 0x87u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 775;
            break;
          case 0x88u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 776;
            break;
          case 0x89u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 777;
            break;
          case 0x8Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 778;
            break;
          case 0x8Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 779;
            break;
          case 0x8Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 780;
            break;
          case 0x8Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 781;
            break;
          case 0x8Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 782;
            break;
          case 0x8Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 783;
            break;
          case 0x90u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 784;
            break;
          case 0x91u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 785;
            break;
          case 0x92u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 786;
            break;
          case 0x93u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 787;
            break;
          case 0x94u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 788;
            break;
          case 0x95u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 789;
            break;
          case 0x96u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 790;
            break;
          case 0x97u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 791;
            break;
          case 0x98u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 792;
            break;
          case 0x99u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 793;
            break;
          case 0x9Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 794;
            break;
          case 0x9Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 795;
            break;
          case 0x9Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 796;
            break;
          case 0x9Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 797;
            break;
          case 0x9Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 798;
            break;
          case 0x9Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 799;
            break;
          case 0xA0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1024;
            break;
          case 0xA1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1026;
            break;
          case 0xA2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1027;
            break;
          case 0xA3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1028;
            break;
          case 0xA4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1029;
            break;
          case 0xA5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1030;
            break;
          case 0xA6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1031;
            break;
          case 0xA7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1032;
            break;
          case 0xA8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1033;
            break;
          case 0xA9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1034;
            break;
          case 0xAAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1035;
            break;
          case 0xABu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1036;
            break;
          case 0xACu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1037;
            break;
          case 0xADu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1038;
            break;
          case 0xAEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1039;
            break;
          case 0xAFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1040;
            break;
          case 0xB0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1041;
            break;
          case 0xB1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1042;
            break;
          case 0xB2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1043;
            break;
          case 0xB3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1044;
            break;
          case 0xB4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1045;
            break;
          case 0xB5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1046;
            break;
          case 0xB6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1047;
            break;
          case 0xB7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1048;
            break;
          case 0xB8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1049;
            break;
          case 0xB9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1050;
            break;
          case 0xBAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1051;
            break;
          case 0xBBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1052;
            break;
          case 0xBCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1053;
            break;
          case 0xBDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1054;
            break;
          case 0xBEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1055;
            break;
          case 0xBFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1056;
            break;
          case 0xC0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1057;
            break;
          case 0xC1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1058;
            break;
          case 0xC2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1059;
            break;
          case 0xC3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1060;
            break;
          case 0xC4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1061;
            break;
          case 0xC5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1062;
            break;
          case 0xC6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1063;
            break;
          case 0xC7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1066;
            break;
          case 0xC8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1067;
            break;
          case 0xC9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1072;
            break;
          case 0xCAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1073;
            break;
          case 0xCBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1075;
            break;
          case 0xCCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1076;
            break;
          case 0xCDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1077;
            break;
          case 0xCEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1078;
            break;
          case 0xCFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1079;
            break;
          case 0xD0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1080;
            break;
          case 0xD1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1081;
            break;
          case 0xD2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1082;
            break;
          case 0xD3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1083;
            break;
          case 0xD4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1084;
            break;
          case 0xD5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1088;
            break;
          case 0xD6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1089;
            break;
          case 0xD7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1104;
            break;
          case 0xD8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1105;
            break;
          case 0xD9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1106;
            break;
          case 0xDAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1107;
            break;
          case 0xDBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1108;
            break;
          case 0xDCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1109;
            break;
          case 0xDDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1110;
            break;
          case 0xDEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1111;
            break;
          case 0xDFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1112;
            break;
          case 0xE0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1113;
            break;
          case 0xE1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1114;
            break;
          case 0xE2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1115;
            break;
          case 0xE3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1116;
            break;
          case 0xE4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1117;
            break;
          case 0xE5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1118;
            break;
          case 0xE6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1119;
            break;
          case 0xE7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1136;
            break;
          case 0xE8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1137;
            break;
          case 0xE9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1138;
            break;
          case 0xEAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1139;
            break;
          case 0xEBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1140;
            break;
          case 0xECu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1141;
            break;
          case 0xEDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1142;
            break;
          case 0xEEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1143;
            break;
          case 0xEFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1144;
            break;
          case 0xF0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1145;
            break;
          case 0xF1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1146;
            break;
          case 0xF2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1147;
            break;
          case 0xF3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1148;
            break;
          case 0xF4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1149;
            break;
          case 0xF5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1150;
            break;
          case 0xF6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1151;
            break;
          case 0xF7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1152;
            break;
          case 0xF8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1153;
            break;
          case 0xF9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1154;
            break;
          case 0xFAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1155;
            break;
          case 0xFBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1156;
            break;
          case 0xFCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1157;
            break;
          case 0xFDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1158;
            break;
          case 0xFEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1159;
            break;
          case 0xFFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1160;
            break;
          case 0x100u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1161;
            break;
          case 0x101u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1168;
            break;
          case 0x102u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1169;
            break;
          case 0x103u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1170;
            break;
          case 0x104u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1171;
            break;
          case 0x105u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1172;
            break;
          case 0x106u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1173;
            break;
          case 0x107u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1174;
            break;
          case 0x108u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1175;
            break;
          case 0x109u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1176;
            break;
          case 0x10Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1184;
            break;
          case 0x10Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1185;
            break;
          case 0x10Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1186;
            break;
          case 0x10Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1187;
            break;
          case 0x10Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1200;
            break;
          case 0x10Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1201;
            break;
          case 0x110u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1202;
            break;
          case 0x111u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1203;
            break;
          case 0x112u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1204;
            break;
          case 0x113u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1205;
            break;
          case 0x114u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1206;
            break;
          case 0x115u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1207;
            break;
          case 0x116u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1208;
            break;
          case 0x117u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1209;
            break;
          case 0x118u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1210;
            break;
          case 0x119u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1211;
            break;
          case 0x11Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1212;
            break;
          case 0x11Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1213;
            break;
          case 0x11Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1232;
            break;
          case 0x11Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1233;
            break;
          case 0x11Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1234;
            break;
          case 0x11Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1235;
            break;
          case 0x120u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1236;
            break;
          case 0x121u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1237;
            break;
          case 0x122u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1238;
            break;
          case 0x123u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1239;
            break;
          case 0x124u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1240;
            break;
          case 0x125u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1241;
            break;
          case 0x126u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1242;
            break;
          case 0x127u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1243;
            break;
          case 0x128u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1244;
            break;
          case 0x129u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1245;
            break;
          case 0x12Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1246;
            break;
          case 0x12Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1247;
            break;
          case 0x12Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1248;
            break;
          case 0x12Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1250;
            break;
          case 0x12Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1251;
            break;
          case 0x12Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1264;
            break;
          case 0x130u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1265;
            break;
          case 0x131u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1266;
            break;
          case 0x132u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1272;
            break;
          case 0x133u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1273;
            break;
          case 0x134u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1280;
            break;
          case 0x135u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1281;
            break;
          case 0x136u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1282;
            break;
          case 0x137u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1283;
            break;
          case 0x138u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1284;
            break;
          case 0x139u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1285;
            break;
          case 0x13Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1286;
            break;
          case 0x13Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1287;
            break;
          case 0x13Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1288;
            break;
          case 0x13Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1289;
            break;
          case 0x13Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1312;
            break;
          case 0x13Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1313;
            break;
          case 0x140u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1314;
            break;
          case 0x141u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1315;
            break;
          case 0x142u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1316;
            break;
          case 0x143u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1317;
            break;
          case 0x144u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1318;
            break;
          case 0x145u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1319;
            break;
          case 0x146u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1320;
            break;
          case 0x147u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1321;
            break;
          case 0x148u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1322;
            break;
          case 0x149u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1323;
            break;
          case 0x14Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1328;
            break;
          case 0x14Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1329;
            break;
          case 0x14Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1330;
            break;
          case 0x14Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1331;
            break;
          case 0x14Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1332;
            break;
          case 0x14Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1333;
            break;
          case 0x150u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1344;
            break;
          case 0x151u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1345;
            break;
          case 0x152u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1346;
            break;
          case 0x153u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1347;
            break;
          case 0x154u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1348;
            break;
          case 0x155u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1349;
            break;
          case 0x156u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1350;
            break;
          case 0x157u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1351;
            break;
          case 0x158u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1352;
            break;
          case 0x159u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1353;
            break;
          case 0x15Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1354;
            break;
          case 0x15Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1355;
            break;
          case 0x15Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1356;
            break;
          case 0x15Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1357;
            break;
          case 0x15Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1358;
            break;
          case 0x15Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1359;
            break;
          case 0x160u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1360;
            break;
          case 0x161u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1361;
            break;
          case 0x162u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1362;
            break;
          case 0x163u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1363;
            break;
          case 0x164u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1364;
            break;
          case 0x165u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1365;
            break;
          case 0x166u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1366;
            break;
          case 0x167u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1367;
            break;
          case 0x168u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1368;
            break;
          case 0x169u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1369;
            break;
          case 0x16Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1370;
            break;
          case 0x16Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1371;
            break;
          case 0x16Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1372;
            break;
          case 0x16Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1373;
            break;
          case 0x16Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1374;
            break;
          case 0x16Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1375;
            break;
          case 0x170u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1376;
            break;
          case 0x171u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1377;
            break;
          case 0x172u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1378;
            break;
          case 0x173u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1379;
            break;
          case 0x174u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1380;
            break;
          case 0x175u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1381;
            break;
          case 0x176u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1382;
            break;
          case 0x177u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1383;
            break;
          case 0x178u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1384;
            break;
          case 0x179u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1385;
            break;
          case 0x17Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1386;
            break;
          case 0x17Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1387;
            break;
          case 0x17Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1388;
            break;
          case 0x17Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1389;
            break;
          case 0x17Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1390;
            break;
          case 0x17Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1391;
            break;
          case 0x180u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1392;
            break;
          case 0x181u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1393;
            break;
          case 0x182u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1394;
            break;
          case 0x183u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1395;
            break;
          case 0x184u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1396;
            break;
          case 0x185u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1397;
            break;
          case 0x186u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1398;
            break;
          case 0x187u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1408;
            break;
          case 0x188u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1409;
            break;
          case 0x189u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1410;
            break;
          case 0x18Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1424;
            break;
          case 0x18Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1425;
            break;
          case 0x18Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1426;
            break;
          case 0x18Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1427;
            break;
          case 0x18Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1428;
            break;
          case 0x18Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1429;
            break;
          case 0x190u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1430;
            break;
          case 0x191u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1431;
            break;
          case 0x192u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1440;
            break;
          case 0x193u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1441;
            break;
          case 0x194u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1442;
            break;
          case 0x195u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1443;
            break;
          case 0x196u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1444;
            break;
          case 0x197u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1445;
            break;
          case 0x198u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1456;
            break;
          case 0x199u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1472;
            break;
          case 0x19Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1473;
            break;
          case 0x19Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1474;
            break;
          case 0x19Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1475;
            break;
          case 0x19Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1476;
            break;
          case 0x19Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1477;
            break;
          case 0x19Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1478;
            break;
          case 0x1A0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1479;
            break;
          case 0x1A1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1480;
            break;
          case 0x1A2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1481;
            break;
          case 0x1A3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1482;
            break;
          case 0x1A4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1483;
            break;
          case 0x1A5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1484;
            break;
          case 0x1A6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1485;
            break;
          case 0x1A7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1486;
            break;
          case 0x1A8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1487;
            break;
          case 0x1A9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1488;
            break;
          case 0x1AAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1504;
            break;
          case 0x1ABu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1505;
            break;
          case 0x1ACu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1520;
            break;
          case 0x1ADu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1521;
            break;
          case 0x1AEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1522;
            break;
          case 0x1AFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1523;
            break;
          case 0x1B0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1524;
            break;
          case 0x1B1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 1525;
            break;
          case 0x1B2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2048;
            break;
          case 0x1B3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2049;
            break;
          case 0x1B4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2050;
            break;
          case 0x1B5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2051;
            break;
          case 0x1B6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2052;
            break;
          case 0x1B7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2053;
            break;
          case 0x1B8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2054;
            break;
          case 0x1B9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2064;
            break;
          case 0x1BAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2065;
            break;
          case 0x1BBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2066;
            break;
          case 0x1BCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2067;
            break;
          case 0x1BDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2068;
            break;
          case 0x1BEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2069;
            break;
          case 0x1BFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2070;
            break;
          case 0x1C0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2071;
            break;
          case 0x1C1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2072;
            break;
          case 0x1C2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2073;
            break;
          case 0x1C3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2074;
            break;
          case 0x1C4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2075;
            break;
          case 0x1C5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2076;
            break;
          case 0x1C6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2077;
            break;
          case 0x1C7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2078;
            break;
          case 0x1C8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2079;
            break;
          case 0x1C9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2080;
            break;
          case 0x1CAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2096;
            break;
          case 0x1CBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2097;
            break;
          case 0x1CCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2098;
            break;
          case 0x1CDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2112;
            break;
          case 0x1CEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2113;
            break;
          case 0x1CFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2114;
            break;
          case 0x1D0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2115;
            break;
          case 0x1D1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2116;
            break;
          case 0x1D2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2117;
            break;
          case 0x1D3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2128;
            break;
          case 0x1D4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2129;
            break;
          case 0x1D5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2130;
            break;
          case 0x1D6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2131;
            break;
          case 0x1D7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2132;
            break;
          case 0x1D8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2133;
            break;
          case 0x1D9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2144;
            break;
          case 0x1DAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2145;
            break;
          case 0x1DBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2146;
            break;
          case 0x1DCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2147;
            break;
          case 0x1DDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2160;
            break;
          case 0x1DEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2161;
            break;
          case 0x1DFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2162;
            break;
          case 0x1E0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2176;
            break;
          case 0x1E1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2177;
            break;
          case 0x1E2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2178;
            break;
          case 0x1E3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2179;
            break;
          case 0x1E4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2180;
            break;
          case 0x1E5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2181;
            break;
          case 0x1E6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2182;
            break;
          case 0x1E7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2183;
            break;
          case 0x1E8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2184;
            break;
          case 0x1E9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2192;
            break;
          case 0x1EAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2193;
            break;
          case 0x1EBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2208;
            break;
          case 0x1ECu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2209;
            break;
          case 0x1EDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2210;
            break;
          case 0x1EEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2211;
            break;
          case 0x1EFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2212;
            break;
          case 0x1F0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2213;
            break;
          case 0x1F1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2224;
            break;
          case 0x1F2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2225;
            break;
          case 0x1F3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2240;
            break;
          case 0x1F4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2241;
            break;
          case 0x1F5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2242;
            break;
          case 0x1F6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2243;
            break;
          case 0x1F7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2244;
            break;
          case 0x1F8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2245;
            break;
          case 0x1F9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2246;
            break;
          case 0x1FAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2256;
            break;
          case 0x1FBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2257;
            break;
          case 0x1FCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2258;
            break;
          case 0x1FDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2259;
            break;
          case 0x1FEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2260;
            break;
          case 0x1FFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2272;
            break;
          case 0x200u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2273;
            break;
          case 0x201u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2274;
            break;
          case 0x202u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2288;
            break;
          case 0x203u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2289;
            break;
          case 0x204u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2290;
            break;
          case 0x205u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2291;
            break;
          case 0x206u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2292;
            break;
          case 0x207u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2293;
            break;
          case 0x208u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2304;
            break;
          case 0x209u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2305;
            break;
          case 0x20Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2306;
            break;
          case 0x20Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2307;
            break;
          case 0x20Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2308;
            break;
          case 0x20Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2309;
            break;
          case 0x20Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2310;
            break;
          case 0x20Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2311;
            break;
          case 0x210u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2312;
            break;
          case 0x211u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2313;
            break;
          case 0x212u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2314;
            break;
          case 0x213u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2315;
            break;
          case 0x214u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2316;
            break;
          case 0x215u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2317;
            break;
          case 0x216u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2318;
            break;
          case 0x217u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2319;
            break;
          case 0x218u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2320;
            break;
          case 0x219u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2321;
            break;
          case 0x21Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2322;
            break;
          case 0x21Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2323;
            break;
          case 0x21Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2324;
            break;
          case 0x21Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2325;
            break;
          case 0x21Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2326;
            break;
          case 0x21Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2327;
            break;
          case 0x220u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2328;
            break;
          case 0x221u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2329;
            break;
          case 0x222u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2330;
            break;
          case 0x223u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2331;
            break;
          case 0x224u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2332;
            break;
          case 0x225u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2333;
            break;
          case 0x226u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2334;
            break;
          case 0x227u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2335;
            break;
          case 0x228u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2336;
            break;
          case 0x229u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2337;
            break;
          case 0x22Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2338;
            break;
          case 0x22Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2339;
            break;
          case 0x22Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2340;
            break;
          case 0x22Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2341;
            break;
          case 0x22Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2342;
            break;
          case 0x22Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2343;
            break;
          case 0x230u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2344;
            break;
          case 0x231u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2345;
            break;
          case 0x232u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2346;
            break;
          case 0x233u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2347;
            break;
          case 0x234u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2348;
            break;
          case 0x235u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2349;
            break;
          case 0x236u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2350;
            break;
          case 0x237u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2351;
            break;
          case 0x238u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2352;
            break;
          case 0x239u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2353;
            break;
          case 0x23Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2354;
            break;
          case 0x23Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2355;
            break;
          case 0x23Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2356;
            break;
          case 0x23Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2357;
            break;
          case 0x23Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2358;
            break;
          case 0x23Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2359;
            break;
          case 0x240u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2368;
            break;
          case 0x241u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2369;
            break;
          case 0x242u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2370;
            break;
          case 0x243u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2371;
            break;
          case 0x244u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2372;
            break;
          case 0x245u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2373;
            break;
          case 0x246u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2374;
            break;
          case 0x247u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2375;
            break;
          case 0x248u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2376;
            break;
          case 0x249u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2377;
            break;
          case 0x24Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2378;
            break;
          case 0x24Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2379;
            break;
          case 0x24Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2380;
            break;
          case 0x24Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2381;
            break;
          case 0x24Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2382;
            break;
          case 0x24Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2383;
            break;
          case 0x250u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2384;
            break;
          case 0x251u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2385;
            break;
          case 0x252u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2386;
            break;
          case 0x253u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2387;
            break;
          case 0x254u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2388;
            break;
          case 0x255u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2389;
            break;
          case 0x256u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2390;
            break;
          case 0x257u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2391;
            break;
          case 0x258u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2392;
            break;
          case 0x259u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2393;
            break;
          case 0x25Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2394;
            break;
          case 0x25Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2395;
            break;
          case 0x25Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2396;
            break;
          case 0x25Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2397;
            break;
          case 0x25Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2398;
            break;
          case 0x25Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2400;
            break;
          case 0x260u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2401;
            break;
          case 0x261u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2402;
            break;
          case 0x262u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2416;
            break;
          case 0x263u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2417;
            break;
          case 0x264u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2418;
            break;
          case 0x265u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2419;
            break;
          case 0x266u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2420;
            break;
          case 0x267u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2421;
            break;
          case 0x268u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2422;
            break;
          case 0x269u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2423;
            break;
          case 0x26Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2424;
            break;
          case 0x26Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2425;
            break;
          case 0x26Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2426;
            break;
          case 0x26Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2427;
            break;
          case 0x26Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2428;
            break;
          case 0x26Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2429;
            break;
          case 0x270u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2430;
            break;
          case 0x271u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2431;
            break;
          case 0x272u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2432;
            break;
          case 0x273u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2433;
            break;
          case 0x274u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2434;
            break;
          case 0x275u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2435;
            break;
          case 0x276u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2436;
            break;
          case 0x277u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2437;
            break;
          case 0x278u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2448;
            break;
          case 0x279u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2449;
            break;
          case 0x27Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2450;
            break;
          case 0x27Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2464;
            break;
          case 0x27Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2465;
            break;
          case 0x27Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2466;
            break;
          case 0x27Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2467;
            break;
          case 0x27Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2480;
            break;
          case 0x280u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2481;
            break;
          case 0x281u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2482;
            break;
          case 0x282u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2483;
            break;
          case 0x283u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2484;
            break;
          case 0x284u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2485;
            break;
          case 0x285u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2486;
            break;
          case 0x286u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2496;
            break;
          case 0x287u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2497;
            break;
          case 0x288u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2498;
            break;
          case 0x289u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2499;
            break;
          case 0x28Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 4096;
            break;
          case 0x28Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 0x2000;
            break;
          case 0x28Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 12288;
            break;
          case 0x28Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 0x4000;
            break;
          case 0x28Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 20480;
            break;
          case 0x28Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 24576;
            break;
          case 0x290u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 28672;
            break;
          case 0x291u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 0x8000;
            break;
          case 0x292u:
            LODWORD(v3) = 0;
            LOWORD(v2) = -28672;
            break;
          case 0x293u:
            LODWORD(v3) = 0;
            LOWORD(v2) = -24576;
            break;
          case 0x294u:
            LODWORD(v3) = 0;
            LOWORD(v2) = -20480;
            break;
          case 0x295u:
            LODWORD(v3) = 0;
            LOWORD(v2) = -16384;
            break;
          case 0x296u:
            LODWORD(v3) = 0;
            LOWORD(v2) = -12288;
            break;
          case 0x297u:
            LODWORD(v3) = 0;
            LOWORD(v2) = -8192;
            break;
          case 0x298u:
            LODWORD(v3) = 0;
            LOWORD(v2) = -4096;
            break;
          default:
            return v2 | (v3 << 16);
        }
      }

      break;
    case 0x13:
      LODWORD(v3) = 1;
      LOWORD(v2) = 0;
      *(v0 + 4);
      switch(*v0)
      {
        case 1u:
          goto LABEL_135;
        case 2u:
          goto LABEL_152;
        case 3u:
          goto LABEL_134;
        case 4u:
          goto LABEL_155;
        case 5u:
          goto LABEL_136;
        case 6u:
          goto LABEL_153;
        case 7u:
          goto LABEL_137;
        case 8u:
          goto LABEL_150;
        case 9u:
          goto LABEL_166;
        case 0xAu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 65;
          break;
        case 0xBu:
          goto LABEL_165;
        case 0xCu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 67;
          break;
        case 0xDu:
          goto LABEL_164;
        case 0xEu:
          goto LABEL_154;
        case 0xFu:
          goto LABEL_149;
        case 0x10u:
          goto LABEL_151;
        case 0x11u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 128;
          break;
        case 0x12u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 129;
          break;
        case 0x13u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 130;
          break;
        case 0x14u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 131;
          break;
        case 0x15u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 132;
          break;
        case 0x16u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 133;
          break;
        case 0x17u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 134;
          break;
        case 0x18u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 135;
          break;
        case 0x19u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 136;
          break;
        case 0x1Au:
          LODWORD(v3) = 0;
          LOWORD(v2) = 137;
          break;
        case 0x1Bu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 160;
          break;
        case 0x1Cu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 161;
          break;
        case 0x1Du:
          return v2 | (v3 << 16);
        default:
          goto LABEL_71;
      }

      break;
    case 0x14:
      LODWORD(v3) = 1;
      LOWORD(v2) = 0;
      *(v0 + 4);
      switch(*v0)
      {
        case 1u:
          goto LABEL_43;
        case 2u:
          goto LABEL_168;
        case 3u:
          goto LABEL_169;
        case 4u:
          goto LABEL_167;
        case 5u:
          goto LABEL_171;
        case 6u:
          goto LABEL_170;
        case 7u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 250;
          break;
        case 8u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 251;
          break;
        case 9u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 252;
          break;
        case 0xAu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 256;
          break;
        case 0xBu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 257;
          break;
        case 0xCu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 512;
          break;
        case 0xDu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 513;
          break;
        case 0xEu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 514;
          break;
        case 0xFu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 515;
          break;
        case 0x10u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 516;
          break;
        case 0x11u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 517;
          break;
        case 0x12u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 518;
          break;
        case 0x13u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 519;
          break;
        case 0x14u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 520;
          break;
        case 0x15u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 521;
          break;
        case 0x16u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 522;
          break;
        case 0x17u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 523;
          break;
        case 0x18u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 524;
          break;
        case 0x19u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 525;
          break;
        case 0x1Au:
          LODWORD(v3) = 0;
          LOWORD(v2) = 526;
          break;
        case 0x1Bu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 527;
          break;
        case 0x1Cu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 528;
          break;
        case 0x1Du:
          LODWORD(v3) = 0;
          LOWORD(v2) = 529;
          break;
        case 0x1Eu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 530;
          break;
        case 0x1Fu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 531;
          break;
        case 0x20u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 532;
          break;
        case 0x21u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 533;
          break;
        case 0x22u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 534;
          break;
        case 0x23u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 535;
          break;
        case 0x24u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 536;
          break;
        case 0x25u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 537;
          break;
        case 0x26u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 538;
          break;
        case 0x27u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 539;
          break;
        case 0x28u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 540;
          break;
        case 0x29u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 541;
          break;
        case 0x2Au:
          LODWORD(v3) = 0;
          LOWORD(v2) = 542;
          break;
        case 0x2Bu:
          return v2 | (v3 << 16);
        default:
          goto LABEL_71;
      }

      break;
    case 0x15:
      LODWORD(v3) = 1;
      LOWORD(v2) = 0;
      *(v0 + 4);
      switch(*v0)
      {
        case 1u:
LABEL_43:
          LODWORD(v3) = 0;
          LOWORD(v2) = 2;
          break;
        case 2u:
LABEL_168:
          LODWORD(v3) = 0;
          LOWORD(v2) = 3;
          break;
        case 3u:
LABEL_169:
          LODWORD(v3) = 0;
          LOWORD(v2) = 4;
          break;
        case 4u:
LABEL_167:
          LODWORD(v3) = 0;
          LOWORD(v2) = 5;
          break;
        case 5u:
LABEL_171:
          LODWORD(v3) = 0;
          LOWORD(v2) = 6;
          break;
        case 6u:
LABEL_170:
          LODWORD(v3) = 0;
          LOWORD(v2) = 7;
          break;
        case 7u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 8;
          break;
        case 8u:
          goto LABEL_135;
        case 9u:
LABEL_152:
          LODWORD(v3) = 0;
          LOWORD(v2) = 33;
          break;
        case 0xAu:
          goto LABEL_134;
        case 0xBu:
LABEL_155:
          LODWORD(v3) = 0;
          LOWORD(v2) = 35;
          break;
        case 0xCu:
          goto LABEL_136;
        case 0xDu:
LABEL_153:
          LODWORD(v3) = 0;
          LOWORD(v2) = 37;
          break;
        case 0xEu:
          goto LABEL_137;
        case 0xFu:
LABEL_150:
          LODWORD(v3) = 0;
          LOWORD(v2) = 39;
          break;
        case 0x10u:
          goto LABEL_173;
        case 0x11u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 41;
          break;
        case 0x12u:
          goto LABEL_174;
        case 0x13u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 43;
          break;
        case 0x14u:
          goto LABEL_172;
        case 0x15u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 45;
          break;
        case 0x16u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 80;
          break;
        case 0x17u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 81;
          break;
        case 0x18u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 82;
          break;
        case 0x19u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 83;
          break;
        case 0x1Au:
          LODWORD(v3) = 0;
          LOWORD(v2) = 84;
          break;
        case 0x1Bu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 85;
          break;
        case 0x1Cu:
LABEL_154:
          LODWORD(v3) = 0;
          LOWORD(v2) = 96;
          break;
        case 0x1Du:
LABEL_149:
          LODWORD(v3) = 0;
          LOWORD(v2) = 97;
          break;
        case 0x1Eu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 98;
          break;
        case 0x1Fu:
LABEL_151:
          LODWORD(v3) = 0;
          LOWORD(v2) = 112;
          break;
        case 0x20u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 113;
          break;
        case 0x21u:
          return v2 | (v3 << 16);
        default:
          goto LABEL_71;
      }

      break;
    case 0x16:
      *(v0 + 4);
      if (*v0 == 4)
      {
        LOWORD(v2) = 0;
      }

      else
      {
        *(v0 + 4);
        LOWORD(v2) = *v0 + 1;
      }

      *(v0 + 4);
      LODWORD(v3) = *v0 == 4;
      break;
    case 0x17:
      v3 = (v1 >> 16) & 1;
      *(v0 + 4);
      LODWORD(v2) = *v0;
      break;
    case 0x18:
      LODWORD(v3) = 1;
      LOWORD(v2) = 0;
      *(v0 + 4);
      switch(*v0)
      {
        case 1u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 16;
          break;
        case 2u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 18;
          break;
        case 3u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 22;
          break;
        case 4u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 24;
          break;
        case 5u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 26;
          break;
        case 6u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 28;
          break;
        case 7u:
LABEL_135:
          LODWORD(v3) = 0;
          LOWORD(v2) = 32;
          break;
        case 8u:
LABEL_134:
          LODWORD(v3) = 0;
          LOWORD(v2) = 34;
          break;
        case 9u:
LABEL_136:
          LODWORD(v3) = 0;
          LOWORD(v2) = 36;
          break;
        case 0xAu:
LABEL_137:
          LODWORD(v3) = 0;
          LOWORD(v2) = 38;
          break;
        case 0xBu:
LABEL_173:
          LODWORD(v3) = 0;
          LOWORD(v2) = 40;
          break;
        case 0xCu:
LABEL_174:
          LODWORD(v3) = 0;
          LOWORD(v2) = 42;
          break;
        case 0xDu:
LABEL_172:
          LODWORD(v3) = 0;
          LOWORD(v2) = 44;
          break;
        case 0xEu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 48;
          break;
        case 0xFu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 50;
          break;
        case 0x10u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 52;
          break;
        case 0x11u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 54;
          break;
        case 0x12u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 56;
          break;
        case 0x13u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 58;
          break;
        case 0x14u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 60;
          break;
        case 0x15u:
LABEL_166:
          LODWORD(v3) = 0;
          LOWORD(v2) = 64;
          break;
        case 0x16u:
LABEL_165:
          LODWORD(v3) = 0;
          LOWORD(v2) = 66;
          break;
        case 0x17u:
LABEL_164:
          LODWORD(v3) = 0;
          LOWORD(v2) = 68;
          break;
        case 0x18u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 70;
          break;
        case 0x19u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 72;
          break;
        case 0x1Au:
          LODWORD(v3) = 0;
          LOWORD(v2) = 74;
          break;
        case 0x1Bu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 76;
          break;
        case 0x1Cu:
          goto LABEL_368;
        case 0x1Du:
          goto LABEL_367;
        case 0x1Eu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 94;
          break;
        case 0x1Fu:
          goto LABEL_215;
        case 0x20u:
          goto LABEL_366;
        case 0x21u:
          goto LABEL_365;
        case 0x22u:
          goto LABEL_364;
        case 0x23u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 162;
          break;
        case 0x24u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 164;
          break;
        case 0x25u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 166;
          break;
        case 0x26u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 168;
          break;
        case 0x27u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 170;
          break;
        case 0x28u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 172;
          break;
        case 0x29u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 174;
          break;
        case 0x2Au:
          LODWORD(v3) = 0;
          LOWORD(v2) = 176;
          break;
        case 0x2Bu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 202;
          break;
        case 0x2Cu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 212;
          break;
        case 0x2Du:
          return v2 | (v3 << 16);
        default:
LABEL_71:
          LODWORD(v3) = 0;
          LOWORD(v2) = 1;
          break;
      }

      break;
    case 0x19:
      *(v0 + 4);
      if (*v0 == 77)
      {
        LOWORD(v2) = 0;
        LODWORD(v3) = 1;
      }

      else
      {
        LOWORD(v2) = 1;
        LODWORD(v3) = 0;
        *(v0 + 4);
        switch(*v0)
        {
          case 1u:
            goto LABEL_119;
          case 2u:
            goto LABEL_536;
          case 3u:
            goto LABEL_528;
          case 4u:
            goto LABEL_539;
          case 5u:
            goto LABEL_530;
          case 6u:
            goto LABEL_531;
          case 7u:
            goto LABEL_541;
          case 8u:
            goto LABEL_524;
          case 9u:
            goto LABEL_535;
          case 0xAu:
            goto LABEL_523;
          case 0xBu:
            goto LABEL_532;
          case 0xCu:
            goto LABEL_540;
          case 0xDu:
            goto LABEL_533;
          case 0xEu:
            goto LABEL_534;
          case 0xFu:
            goto LABEL_527;
          case 0x10u:
            goto LABEL_546;
          case 0x11u:
            goto LABEL_548;
          case 0x12u:
            goto LABEL_544;
          case 0x13u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 30;
            break;
          case 0x14u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 31;
            break;
          case 0x15u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 32;
            break;
          case 0x16u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 33;
            break;
          case 0x17u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 34;
            break;
          case 0x18u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 35;
            break;
          case 0x19u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 36;
            break;
          case 0x1Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 37;
            break;
          case 0x1Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 48;
            break;
          case 0x1Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 49;
            break;
          case 0x1Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 50;
            break;
          case 0x1Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 51;
            break;
          case 0x1Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 52;
            break;
          case 0x20u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 53;
            break;
          case 0x21u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 54;
            break;
          case 0x22u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 55;
            break;
          case 0x23u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 56;
            break;
          case 0x24u:
            goto LABEL_547;
          case 0x25u:
            goto LABEL_520;
          case 0x26u:
            goto LABEL_529;
          case 0x27u:
            goto LABEL_549;
          case 0x28u:
            goto LABEL_552;
          case 0x29u:
            goto LABEL_521;
          case 0x2Au:
            goto LABEL_542;
          case 0x2Bu:
            goto LABEL_522;
          case 0x2Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 80;
            break;
          case 0x2Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 81;
            break;
          case 0x2Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 82;
            break;
          case 0x2Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 83;
            break;
          case 0x30u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 84;
            break;
          case 0x31u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 85;
            break;
          case 0x32u:
LABEL_368:
            LODWORD(v3) = 0;
            LOWORD(v2) = 86;
            break;
          case 0x33u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 87;
            break;
          case 0x34u:
LABEL_367:
            LODWORD(v3) = 0;
            LOWORD(v2) = 88;
            break;
          case 0x35u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 89;
            break;
          case 0x36u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 90;
            break;
          case 0x37u:
            goto LABEL_215;
          case 0x38u:
            goto LABEL_551;
          case 0x39u:
            goto LABEL_545;
          case 0x3Au:
            goto LABEL_543;
          case 0x3Bu:
            goto LABEL_538;
          case 0x3Cu:
            goto LABEL_537;
          case 0x3Du:
            goto LABEL_525;
          case 0x3Eu:
            goto LABEL_526;
          case 0x3Fu:
            goto LABEL_518;
          case 0x40u:
            goto LABEL_519;
          case 0x41u:
            goto LABEL_550;
          case 0x42u:
LABEL_366:
            LODWORD(v3) = 0;
            LOWORD(v2) = 108;
            break;
          case 0x43u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 109;
            break;
          case 0x44u:
LABEL_365:
            LODWORD(v3) = 0;
            LOWORD(v2) = 110;
            break;
          case 0x45u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 111;
            break;
          case 0x46u:
LABEL_364:
            LODWORD(v3) = 0;
            LOWORD(v2) = 112;
            break;
          case 0x47u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 113;
            break;
          case 0x48u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 114;
            break;
          case 0x49u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 115;
            break;
          case 0x4Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 253;
            break;
          case 0x4Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 254;
            break;
          case 0x4Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 255;
            break;
          default:
            return v2 | (v3 << 16);
        }
      }

      break;
    case 0x1A:
      *(v0 + 4);
      if (*v0 == 91)
      {
        LOWORD(v2) = 0;
        LODWORD(v3) = 1;
      }

      else
      {
        LOWORD(v2) = 1;
        LODWORD(v3) = 0;
        *(v0 + 4);
        switch(*v0)
        {
          case 1u:
LABEL_119:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2;
            break;
          case 2u:
LABEL_536:
            LODWORD(v3) = 0;
            LOWORD(v2) = 3;
            break;
          case 3u:
LABEL_528:
            LODWORD(v3) = 0;
            LOWORD(v2) = 4;
            break;
          case 4u:
LABEL_539:
            LODWORD(v3) = 0;
            LOWORD(v2) = 5;
            break;
          case 5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 6;
            break;
          case 6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 7;
            break;
          case 7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 8;
            break;
          case 8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 9;
            break;
          case 9u:
LABEL_530:
            LODWORD(v3) = 0;
            LOWORD(v2) = 16;
            break;
          case 0xAu:
LABEL_531:
            LODWORD(v3) = 0;
            LOWORD(v2) = 17;
            break;
          case 0xBu:
LABEL_541:
            LODWORD(v3) = 0;
            LOWORD(v2) = 18;
            break;
          case 0xCu:
LABEL_524:
            LODWORD(v3) = 0;
            LOWORD(v2) = 19;
            break;
          case 0xDu:
LABEL_535:
            LODWORD(v3) = 0;
            LOWORD(v2) = 20;
            break;
          case 0xEu:
LABEL_523:
            LODWORD(v3) = 0;
            LOWORD(v2) = 21;
            break;
          case 0xFu:
LABEL_532:
            LODWORD(v3) = 0;
            LOWORD(v2) = 22;
            break;
          case 0x10u:
LABEL_540:
            LODWORD(v3) = 0;
            LOWORD(v2) = 23;
            break;
          case 0x11u:
LABEL_533:
            LODWORD(v3) = 0;
            LOWORD(v2) = 24;
            break;
          case 0x12u:
LABEL_534:
            LODWORD(v3) = 0;
            LOWORD(v2) = 25;
            break;
          case 0x13u:
LABEL_527:
            LODWORD(v3) = 0;
            LOWORD(v2) = 26;
            break;
          case 0x14u:
LABEL_546:
            LODWORD(v3) = 0;
            LOWORD(v2) = 27;
            break;
          case 0x15u:
LABEL_548:
            LODWORD(v3) = 0;
            LOWORD(v2) = 28;
            break;
          case 0x16u:
LABEL_544:
            LODWORD(v3) = 0;
            LOWORD(v2) = 29;
            break;
          case 0x17u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 40;
            break;
          case 0x18u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 41;
            break;
          case 0x19u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 42;
            break;
          case 0x1Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 43;
            break;
          case 0x1Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 44;
            break;
          case 0x1Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 45;
            break;
          case 0x1Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 46;
            break;
          case 0x1Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 47;
            break;
          case 0x1Fu:
LABEL_547:
            LODWORD(v3) = 0;
            LOWORD(v2) = 64;
            break;
          case 0x20u:
LABEL_520:
            LODWORD(v3) = 0;
            LOWORD(v2) = 65;
            break;
          case 0x21u:
LABEL_529:
            LODWORD(v3) = 0;
            LOWORD(v2) = 66;
            break;
          case 0x22u:
LABEL_549:
            LODWORD(v3) = 0;
            LOWORD(v2) = 67;
            break;
          case 0x23u:
LABEL_552:
            LODWORD(v3) = 0;
            LOWORD(v2) = 68;
            break;
          case 0x24u:
LABEL_521:
            LODWORD(v3) = 0;
            LOWORD(v2) = 69;
            break;
          case 0x25u:
LABEL_542:
            LODWORD(v3) = 0;
            LOWORD(v2) = 70;
            break;
          case 0x26u:
LABEL_522:
            LODWORD(v3) = 0;
            LOWORD(v2) = 71;
            break;
          case 0x27u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 72;
            break;
          case 0x28u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 73;
            break;
          case 0x29u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 74;
            break;
          case 0x2Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 75;
            break;
          case 0x2Bu:
LABEL_215:
            LODWORD(v3) = 0;
            LOWORD(v2) = 96;
            break;
          case 0x2Cu:
LABEL_551:
            LODWORD(v3) = 0;
            LOWORD(v2) = 97;
            break;
          case 0x2Du:
LABEL_545:
            LODWORD(v3) = 0;
            LOWORD(v2) = 98;
            break;
          case 0x2Eu:
LABEL_543:
            LODWORD(v3) = 0;
            LOWORD(v2) = 99;
            break;
          case 0x2Fu:
LABEL_538:
            LODWORD(v3) = 0;
            LOWORD(v2) = 100;
            break;
          case 0x30u:
LABEL_537:
            LODWORD(v3) = 0;
            LOWORD(v2) = 101;
            break;
          case 0x31u:
LABEL_525:
            LODWORD(v3) = 0;
            LOWORD(v2) = 102;
            break;
          case 0x32u:
LABEL_526:
            LODWORD(v3) = 0;
            LOWORD(v2) = 103;
            break;
          case 0x33u:
LABEL_518:
            LODWORD(v3) = 0;
            LOWORD(v2) = 104;
            break;
          case 0x34u:
LABEL_519:
            LODWORD(v3) = 0;
            LOWORD(v2) = 105;
            break;
          case 0x35u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 106;
            break;
          case 0x36u:
LABEL_550:
            LODWORD(v3) = 0;
            LOWORD(v2) = 107;
            break;
          case 0x37u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 128;
            break;
          case 0x38u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 129;
            break;
          case 0x39u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 130;
            break;
          case 0x3Au:
            goto LABEL_560;
          case 0x3Bu:
            goto LABEL_555;
          case 0x3Cu:
            goto LABEL_553;
          case 0x3Du:
            goto LABEL_557;
          case 0x3Eu:
            goto LABEL_559;
          case 0x3Fu:
            goto LABEL_554;
          case 0x40u:
            goto LABEL_556;
          case 0x41u:
            goto LABEL_561;
          case 0x42u:
            goto LABEL_558;
          case 0x43u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 140;
            break;
          case 0x44u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 141;
            break;
          case 0x45u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 142;
            break;
          case 0x46u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 143;
            break;
          case 0x47u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 192;
            break;
          case 0x48u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 193;
            break;
          case 0x49u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 194;
            break;
          case 0x4Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 208;
            break;
          case 0x4Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 209;
            break;
          case 0x4Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 210;
            break;
          case 0x4Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 211;
            break;
          case 0x4Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 212;
            break;
          case 0x4Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 213;
            break;
          case 0x50u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 214;
            break;
          case 0x51u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 215;
            break;
          case 0x52u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 216;
            break;
          case 0x53u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 217;
            break;
          case 0x54u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 218;
            break;
          case 0x55u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 219;
            break;
          case 0x56u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 220;
            break;
          case 0x57u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 240;
            break;
          case 0x58u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 241;
            break;
          case 0x59u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 242;
            break;
          case 0x5Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 243;
            break;
          default:
            return v2 | (v3 << 16);
        }
      }

      break;
    case 0x1B:
      *(v0 + 4);
      if (*v0 == 194)
      {
        LOWORD(v2) = 0;
        LODWORD(v3) = 1;
      }

      else
      {
        LOWORD(v2) = 1;
        LODWORD(v3) = 0;
        *(v0 + 4);
        switch(*v0)
        {
          case 1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2;
            break;
          case 2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 3;
            break;
          case 3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 4;
            break;
          case 4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 5;
            break;
          case 5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 16;
            break;
          case 6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 17;
            break;
          case 7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 18;
            break;
          case 8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 19;
            break;
          case 9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 20;
            break;
          case 0xAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 21;
            break;
          case 0xBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 22;
            break;
          case 0xCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 23;
            break;
          case 0xDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 24;
            break;
          case 0xEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 25;
            break;
          case 0xFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 26;
            break;
          case 0x10u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 27;
            break;
          case 0x11u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 28;
            break;
          case 0x12u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 29;
            break;
          case 0x13u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 30;
            break;
          case 0x14u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 31;
            break;
          case 0x15u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 48;
            break;
          case 0x16u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 49;
            break;
          case 0x17u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 50;
            break;
          case 0x18u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 51;
            break;
          case 0x19u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 52;
            break;
          case 0x1Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 53;
            break;
          case 0x1Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 54;
            break;
          case 0x1Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 55;
            break;
          case 0x1Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 56;
            break;
          case 0x1Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 57;
            break;
          case 0x1Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 58;
            break;
          case 0x20u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 59;
            break;
          case 0x21u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 60;
            break;
          case 0x22u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 61;
            break;
          case 0x23u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 62;
            break;
          case 0x24u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 63;
            break;
          case 0x25u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 64;
            break;
          case 0x26u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 65;
            break;
          case 0x27u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 66;
            break;
          case 0x28u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 67;
            break;
          case 0x29u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 68;
            break;
          case 0x2Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 69;
            break;
          case 0x2Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 70;
            break;
          case 0x2Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 77;
            break;
          case 0x2Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 78;
            break;
          case 0x2Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 79;
            break;
          case 0x2Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 80;
            break;
          case 0x30u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 81;
            break;
          case 0x31u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 82;
            break;
          case 0x32u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 85;
            break;
          case 0x33u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 86;
            break;
          case 0x34u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 87;
            break;
          case 0x35u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 88;
            break;
          case 0x36u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 89;
            break;
          case 0x37u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 90;
            break;
          case 0x38u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 91;
            break;
          case 0x39u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 92;
            break;
          case 0x3Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 93;
            break;
          case 0x3Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 94;
            break;
          case 0x3Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 95;
            break;
          case 0x3Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 96;
            break;
          case 0x3Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 97;
            break;
          case 0x3Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 98;
            break;
          case 0x40u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 99;
            break;
          case 0x41u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 100;
            break;
          case 0x42u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 101;
            break;
          case 0x43u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 102;
            break;
          case 0x44u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 109;
            break;
          case 0x45u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 110;
            break;
          case 0x46u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 111;
            break;
          case 0x47u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 112;
            break;
          case 0x48u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 117;
            break;
          case 0x49u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 118;
            break;
          case 0x4Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 122;
            break;
          case 0x4Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 123;
            break;
          case 0x4Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 124;
            break;
          case 0x4Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 125;
            break;
          case 0x4Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 126;
            break;
          case 0x4Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 127;
            break;
          case 0x50u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 128;
            break;
          case 0x51u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 130;
            break;
          case 0x52u:
LABEL_560:
            LODWORD(v3) = 0;
            LOWORD(v2) = 131;
            break;
          case 0x53u:
LABEL_555:
            LODWORD(v3) = 0;
            LOWORD(v2) = 132;
            break;
          case 0x54u:
LABEL_553:
            LODWORD(v3) = 0;
            LOWORD(v2) = 133;
            break;
          case 0x55u:
LABEL_557:
            LODWORD(v3) = 0;
            LOWORD(v2) = 134;
            break;
          case 0x56u:
LABEL_559:
            LODWORD(v3) = 0;
            LOWORD(v2) = 135;
            break;
          case 0x57u:
LABEL_554:
            LODWORD(v3) = 0;
            LOWORD(v2) = 136;
            break;
          case 0x58u:
LABEL_556:
            LODWORD(v3) = 0;
            LOWORD(v2) = 137;
            break;
          case 0x59u:
LABEL_561:
            LODWORD(v3) = 0;
            LOWORD(v2) = 138;
            break;
          case 0x5Au:
LABEL_558:
            LODWORD(v3) = 0;
            LOWORD(v2) = 139;
            break;
          case 0x5Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 145;
            break;
          case 0x5Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 146;
            break;
          case 0x5Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 147;
            break;
          case 0x5Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 148;
            break;
          case 0x5Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 149;
            break;
          case 0x60u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 150;
            break;
          case 0x61u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 151;
            break;
          case 0x62u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 152;
            break;
          case 0x63u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 153;
            break;
          case 0x64u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 154;
            break;
          case 0x65u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 155;
            break;
          case 0x66u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 156;
            break;
          case 0x67u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 157;
            break;
          case 0x68u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 158;
            break;
          case 0x69u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 159;
            break;
          case 0x6Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 160;
            break;
          case 0x6Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 161;
            break;
          case 0x6Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 162;
            break;
          case 0x6Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 169;
            break;
          case 0x6Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 170;
            break;
          case 0x6Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 171;
            break;
          case 0x70u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 172;
            break;
          case 0x71u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 173;
            break;
          case 0x72u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 174;
            break;
          case 0x73u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 175;
            break;
          case 0x74u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 176;
            break;
          case 0x75u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 177;
            break;
          case 0x76u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 178;
            break;
          case 0x77u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 179;
            break;
          case 0x78u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 180;
            break;
          case 0x79u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 181;
            break;
          case 0x7Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 183;
            break;
          case 0x7Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 184;
            break;
          case 0x7Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 185;
            break;
          case 0x7Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 186;
            break;
          case 0x7Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 187;
            break;
          case 0x7Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 188;
            break;
          case 0x80u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 189;
            break;
          case 0x81u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 190;
            break;
          case 0x82u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 191;
            break;
          case 0x83u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 192;
            break;
          case 0x84u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 195;
            break;
          case 0x85u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 196;
            break;
          case 0x86u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 199;
            break;
          case 0x87u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 200;
            break;
          case 0x88u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 201;
            break;
          case 0x89u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 202;
            break;
          case 0x8Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 203;
            break;
          case 0x8Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 204;
            break;
          case 0x8Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 205;
            break;
          case 0x8Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 206;
            break;
          case 0x8Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 211;
            break;
          case 0x8Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 212;
            break;
          case 0x90u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 213;
            break;
          case 0x91u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 214;
            break;
          case 0x92u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 215;
            break;
          case 0x93u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 216;
            break;
          case 0x94u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 217;
            break;
          case 0x95u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 218;
            break;
          case 0x96u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 219;
            break;
          case 0x97u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 220;
            break;
          case 0x98u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 221;
            break;
          case 0x99u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 222;
            break;
          case 0x9Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 223;
            break;
          case 0x9Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 240;
            break;
          case 0x9Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 241;
            break;
          case 0x9Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 242;
            break;
          case 0x9Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 251;
            break;
          case 0x9Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 252;
            break;
          case 0xA0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 253;
            break;
          case 0xA1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 254;
            break;
          case 0xA2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 255;
            break;
          case 0xA3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 256;
            break;
          case 0xA4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 257;
            break;
          case 0xA5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 258;
            break;
          case 0xA6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 259;
            break;
          case 0xA7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 260;
            break;
          case 0xA8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 262;
            break;
          case 0xA9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 263;
            break;
          case 0xAAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 264;
            break;
          case 0xABu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 265;
            break;
          case 0xACu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 266;
            break;
          case 0xADu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 267;
            break;
          case 0xAEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 268;
            break;
          case 0xAFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 269;
            break;
          case 0xB0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 272;
            break;
          case 0xB1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 273;
            break;
          case 0xB2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 274;
            break;
          case 0xB3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 275;
            break;
          case 0xB4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 276;
            break;
          case 0xB5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 277;
            break;
          case 0xB6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 278;
            break;
          case 0xB7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 279;
            break;
          case 0xB8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 280;
            break;
          case 0xB9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 281;
            break;
          case 0xBAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 282;
            break;
          case 0xBBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 283;
            break;
          case 0xBCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 284;
            break;
          case 0xBDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 285;
            break;
          case 0xBEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 286;
            break;
          case 0xBFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 287;
            break;
          case 0xC0u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 288;
            break;
          case 0xC1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 289;
            break;
          default:
            return v2 | (v3 << 16);
        }
      }

      break;
    case 0x1C:
      LODWORD(v3) = 1;
      LOWORD(v2) = 0;
      *(v0 + 4);
      switch(*v0)
      {
        case 1u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 32;
          break;
        case 2u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 33;
          break;
        case 3u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 34;
          break;
        case 4u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 35;
          break;
        case 5u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 36;
          break;
        case 6u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 37;
          break;
        case 7u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 38;
          break;
        case 8u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 39;
          break;
        case 9u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 40;
          break;
        case 0xAu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 41;
          break;
        case 0xBu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 42;
          break;
        case 0xCu:
          goto LABEL_160;
        case 0xDu:
          goto LABEL_156;
        case 0xEu:
          goto LABEL_158;
        case 0xFu:
          goto LABEL_157;
        case 0x10u:
          goto LABEL_162;
        case 0x11u:
          goto LABEL_161;
        case 0x12u:
          goto LABEL_163;
        case 0x13u:
          goto LABEL_159;
        case 0x14u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 80;
          break;
        case 0x15u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 81;
          break;
        case 0x16u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 82;
          break;
        case 0x17u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 83;
          break;
        case 0x18u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 84;
          break;
        case 0x19u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 85;
          break;
        case 0x1Au:
          LODWORD(v3) = 0;
          LOWORD(v2) = 86;
          break;
        case 0x1Bu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 87;
          break;
        case 0x1Cu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 88;
          break;
        case 0x1Du:
          LODWORD(v3) = 0;
          LOWORD(v2) = 89;
          break;
        case 0x1Eu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 90;
          break;
        case 0x1Fu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 91;
          break;
        case 0x20u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 92;
          break;
        case 0x21u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 96;
          break;
        case 0x22u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 97;
          break;
        case 0x23u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 112;
          break;
        case 0x24u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 113;
          break;
        case 0x25u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 114;
          break;
        case 0x26u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 115;
          break;
        case 0x27u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 116;
          break;
        case 0x28u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 117;
          break;
        case 0x29u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 118;
          break;
        case 0x2Au:
          LODWORD(v3) = 0;
          LOWORD(v2) = 119;
          break;
        case 0x2Bu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 120;
          break;
        case 0x2Cu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 128;
          break;
        case 0x2Du:
          LODWORD(v3) = 0;
          LOWORD(v2) = 129;
          break;
        case 0x2Eu:
          return v2 | (v3 << 16);
        default:
          goto LABEL_74;
      }

      break;
    case 0x1D:
      *(v0 + 4);
      v5 = *v0;
      if (v5 <= 4)
      {
        if (v5 == 3)
        {
          v10 = 19;
        }

        else
        {
          v10 = 20;
        }

        if (v5 == 2)
        {
          LOWORD(v2) = 18;
        }

        else
        {
          LOWORD(v2) = v10;
        }

        if (*v0)
        {
          v11 = 17;
        }

        else
        {
          v11 = 1;
        }

        if (*v0 <= 1u)
        {
          LOWORD(v2) = v11;
        }

        LODWORD(v3) = 0;
      }

      else
      {
        if (v5 == 9)
        {
          v6 = 36;
        }

        else
        {
          v6 = 0;
        }

        if (v5 == 8)
        {
          v7 = 35;
        }

        else
        {
          v7 = v6;
        }

        v8 = v5 != 8 && v5 != 9;
        if (v5 == 6)
        {
          v9 = 33;
        }

        else
        {
          v9 = 34;
        }

        if (v5 == 5)
        {
          LOWORD(v2) = 32;
        }

        else
        {
          LOWORD(v2) = v9;
        }

        if (*v0 <= 7u)
        {
          LODWORD(v3) = 0;
        }

        else
        {
          LOWORD(v2) = v7;
          LODWORD(v3) = v8;
        }
      }

      break;
    case 0x1E:
      *(v0 + 4);
      if (*v0 == 2)
      {
        LOWORD(v2) = 0;
      }

      else
      {
        *(v0 + 4);
        LOWORD(v2) = *v0 & 1 | 0x20;
      }

      *(v0 + 4);
      LODWORD(v3) = *v0 == 2;
      break;
    case 0x1F:
      LODWORD(v3) = 1;
      LOWORD(v2) = 0;
      *(v0 + 4);
      switch(*v0)
      {
        case 1u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 2;
          break;
        case 2u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 3;
          break;
        case 3u:
LABEL_160:
          LODWORD(v3) = 0;
          LOWORD(v2) = 48;
          break;
        case 4u:
LABEL_156:
          LODWORD(v3) = 0;
          LOWORD(v2) = 49;
          break;
        case 5u:
LABEL_158:
          LODWORD(v3) = 0;
          LOWORD(v2) = 50;
          break;
        case 6u:
LABEL_157:
          LODWORD(v3) = 0;
          LOWORD(v2) = 51;
          break;
        case 7u:
LABEL_162:
          LODWORD(v3) = 0;
          LOWORD(v2) = 52;
          break;
        case 8u:
LABEL_161:
          LODWORD(v3) = 0;
          LOWORD(v2) = 53;
          break;
        case 9u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 54;
          break;
        case 0xAu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 55;
          break;
        case 0xBu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 56;
          break;
        case 0xCu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 57;
          break;
        case 0xDu:
LABEL_163:
          LODWORD(v3) = 0;
          LOWORD(v2) = 64;
          break;
        case 0xEu:
LABEL_159:
          LODWORD(v3) = 0;
          LOWORD(v2) = 65;
          break;
        case 0xFu:
          LODWORD(v3) = 0;
          LOWORD(v2) = 66;
          break;
        case 0x10u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 67;
          break;
        case 0x11u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 68;
          break;
        case 0x12u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 69;
          break;
        case 0x13u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 70;
          break;
        case 0x14u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 71;
          break;
        case 0x15u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 72;
          break;
        case 0x16u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 73;
          break;
        case 0x17u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 74;
          break;
        case 0x18u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 75;
          break;
        case 0x19u:
          LODWORD(v3) = 0;
          LOWORD(v2) = 76;
          break;
        case 0x1Au:
          LODWORD(v3) = 0;
          LOWORD(v2) = 77;
          break;
        case 0x1Bu:
          return v2 | (v3 << 16);
        default:
LABEL_74:
          LODWORD(v3) = 0;
          LOWORD(v2) = 1;
          break;
      }

      break;
    case 0x20:
      *(v0 + 4);
      if (*v0 == 2)
      {
        v4 = 33;
      }

      else
      {
        v4 = 0;
      }

      if (*v0)
      {
        LOWORD(v2) = 32;
      }

      else
      {
        LOWORD(v2) = 1;
      }

      if (*v0 <= 1u)
      {
        LODWORD(v3) = 0;
      }

      else
      {
        LOWORD(v2) = v4;
        LODWORD(v3) = *v0 != 2;
      }

      break;
    case 0x21:
      v2 = v1 >> 16;
      v3 = HIDWORD(v1) & 1;
      break;
    default:
      *(v0 + 4);
      if (*v0 == 114)
      {
        LOWORD(v2) = 0;
        LODWORD(v3) = 1;
      }

      else
      {
        LOWORD(v2) = 1;
        LODWORD(v3) = 0;
        *(v0 + 4);
        switch(*v0)
        {
          case 1u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 2;
            break;
          case 2u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 4;
            break;
          case 3u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 5;
            break;
          case 4u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 6;
            break;
          case 5u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 7;
            break;
          case 6u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 8;
            break;
          case 7u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 9;
            break;
          case 8u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 10;
            break;
          case 9u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 11;
            break;
          case 0xAu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 12;
            break;
          case 0xBu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 13;
            break;
          case 0xCu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 14;
            break;
          case 0xDu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 15;
            break;
          case 0xEu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 16;
            break;
          case 0xFu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 17;
            break;
          case 0x10u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 18;
            break;
          case 0x11u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 19;
            break;
          case 0x12u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 48;
            break;
          case 0x13u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 49;
            break;
          case 0x14u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 50;
            break;
          case 0x15u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 51;
            break;
          case 0x16u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 52;
            break;
          case 0x17u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 53;
            break;
          case 0x18u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 54;
            break;
          case 0x19u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 55;
            break;
          case 0x1Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 56;
            break;
          case 0x1Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 57;
            break;
          case 0x1Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 58;
            break;
          case 0x1Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 59;
            break;
          case 0x1Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 60;
            break;
          case 0x1Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 61;
            break;
          case 0x20u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 62;
            break;
          case 0x21u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 64;
            break;
          case 0x22u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 65;
            break;
          case 0x23u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 66;
            break;
          case 0x24u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 67;
            break;
          case 0x25u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 68;
            break;
          case 0x26u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 69;
            break;
          case 0x27u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 70;
            break;
          case 0x28u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 71;
            break;
          case 0x29u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 72;
            break;
          case 0x2Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 73;
            break;
          case 0x2Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 74;
            break;
          case 0x2Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 75;
            break;
          case 0x2Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 76;
            break;
          case 0x2Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 128;
            break;
          case 0x2Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 129;
            break;
          case 0x30u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 130;
            break;
          case 0x31u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 131;
            break;
          case 0x32u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 132;
            break;
          case 0x33u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 133;
            break;
          case 0x34u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 134;
            break;
          case 0x35u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 135;
            break;
          case 0x36u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 136;
            break;
          case 0x37u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 137;
            break;
          case 0x38u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 138;
            break;
          case 0x39u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 139;
            break;
          case 0x3Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 140;
            break;
          case 0x3Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 141;
            break;
          case 0x3Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 142;
            break;
          case 0x3Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 143;
            break;
          case 0x3Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 144;
            break;
          case 0x3Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 145;
            break;
          case 0x40u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 146;
            break;
          case 0x41u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 147;
            break;
          case 0x42u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 148;
            break;
          case 0x43u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 149;
            break;
          case 0x44u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 150;
            break;
          case 0x45u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 151;
            break;
          case 0x46u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 152;
            break;
          case 0x47u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 153;
            break;
          case 0x48u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 154;
            break;
          case 0x49u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 155;
            break;
          case 0x4Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 160;
            break;
          case 0x4Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 161;
            break;
          case 0x4Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 162;
            break;
          case 0x4Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 163;
            break;
          case 0x4Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 164;
            break;
          case 0x4Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 165;
            break;
          case 0x50u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 166;
            break;
          case 0x51u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 167;
            break;
          case 0x52u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 168;
            break;
          case 0x53u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 169;
            break;
          case 0x54u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 176;
            break;
          case 0x55u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 177;
            break;
          case 0x56u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 178;
            break;
          case 0x57u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 179;
            break;
          case 0x58u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 180;
            break;
          case 0x59u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 181;
            break;
          case 0x5Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 182;
            break;
          case 0x5Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 183;
            break;
          case 0x5Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 192;
            break;
          case 0x5Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 193;
            break;
          case 0x5Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 194;
            break;
          case 0x5Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 195;
            break;
          case 0x60u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 196;
            break;
          case 0x61u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 197;
            break;
          case 0x62u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 198;
            break;
          case 0x63u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 199;
            break;
          case 0x64u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 200;
            break;
          case 0x65u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 201;
            break;
          case 0x66u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 202;
            break;
          case 0x67u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 203;
            break;
          case 0x68u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 208;
            break;
          case 0x69u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 209;
            break;
          case 0x6Au:
            LODWORD(v3) = 0;
            LOWORD(v2) = 210;
            break;
          case 0x6Bu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 211;
            break;
          case 0x6Cu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 212;
            break;
          case 0x6Du:
            LODWORD(v3) = 0;
            LOWORD(v2) = 213;
            break;
          case 0x6Eu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 214;
            break;
          case 0x6Fu:
            LODWORD(v3) = 0;
            LOWORD(v2) = 224;
            break;
          case 0x70u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 225;
            break;
          case 0x71u:
            LODWORD(v3) = 0;
            LOWORD(v2) = 226;
            break;
          default:
            return v2 | (v3 << 16);
        }
      }

      break;
  }

  return v2 | (v3 << 16);
}