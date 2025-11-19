uint64_t sub_18EFE2134(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D65726975716572 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F697661686562 && a2 == 0xE800000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_18F09444C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_18EFE2298(char a1)
{
  result = 0x6D65726975716572;
  switch(a1)
  {
    case 1:
      result = 0x6F697469646E6F63;
      break;
    case 2:
      result = 0x726F697661686562;
      break;
    case 3:
      result = 0x6567617373656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18EFE2328(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7EB8, &qword_18F0A0DE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F017790();
  sub_18F0945BC();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_18F09437C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v18[14] = 1;
    sub_18F09433C();
    v15 = v3[4];
    v18[13] = 2;
    sub_18F0943AC();
    v16 = *(_s14CodableWrapperVMa_24(0) + 28);
    v18[12] = 3;
    _s14CodableWrapperVMa_0(0);
    sub_18EF8558C(&unk_1EACB6A38);
    sub_18F09436C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFE2530@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8098, &qword_18F0A0F60);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - v8;
  v10 = _s14CodableWrapperVMa_24(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = (v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 36);
  v16 = _s14CodableWrapperVMa_0(0);
  v27 = v15;
  __swift_storeEnumTagSinglePayload(v14 + v15, 1, 1, v16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F017790();
  sub_18F09459C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF933AC(v14 + v27, &qword_1EACB72D0);
  }

  else
  {
    v23[1] = v16;
    v19 = v25;
    v18 = v26;
    v31 = 0;
    *v14 = sub_18F09427C();
    v14[1] = v20;
    v30 = 1;
    v14[2] = sub_18F09423C();
    v14[3] = v21;
    v23[0] = v21;
    v29 = 2;
    v14[4] = sub_18F0942AC();
    v28 = 3;
    sub_18EF8558C(&unk_1ED5FF4F8);
    sub_18F09426C();
    (*(v19 + 8))(v9, v18);
    sub_18EF872D4();
    sub_18EF86A14(v14, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF86A6C();
  }
}

uint64_t sub_18EFE2904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE2134(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE292C(uint64_t a1)
{
  v2 = sub_18F017790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE2968(uint64_t a1)
{
  v2 = sub_18F017790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE29D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v24 - v5;
  v7 = [v1 requirement];
  v8 = [v7 predicateFormat];

  v9 = sub_18F093B8C();
  v11 = v10;

  v12 = [v1 condition];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 predicateFormat];

    v13 = sub_18F093B8C();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v1 behavior];
  v18 = [v1 message];
  if (v18)
  {
    v19 = v18;
    sub_18EFD9154(v6);

    v20 = _s14CodableWrapperVMa_0(0);
    v21 = 0;
  }

  else
  {
    v20 = _s14CodableWrapperVMa_0(0);
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v21, 1, v20);
  *a1 = v9;
  a1[1] = v11;
  a1[2] = v13;
  a1[3] = v16;
  a1[4] = v17;
  v22 = *(_s14CodableWrapperVMa_24(0) + 28);
  return sub_18EF869B4();
}

id sub_18EFE2BA8(uint64_t *a1, uint64_t a2, void *a3)
{
  sub_18EF825F4(0, &qword_1EACB6F80, 0x1E696AE18);
  v6 = *a1;
  v7 = a1[1];
  v8 = sub_18F093E9C();
  if (a1[3])
  {
    v9 = a1[2];
    v10 = a1[3];

    v11 = sub_18F093E9C();
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = a1[4];
  v14 = _s14CodableWrapperVMa_24(0);
  v15 = *(v14 + 28);
  MEMORY[0x1EEE9AC00](v14);
  v16 = sub_18EF9EBC8(sub_18EFA3E10);
  v17 = [v12 initWithRequirement:v8 condition:v11 behavior:v13 message:v16];

  sub_18EF86A6C();
  sub_18EF933AC(a2, &qword_1EACB72C8);
  return v17;
}

uint64_t sub_18EFE2D44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745374616D726F66 && a2 == 0xEC000000676E6972;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000018F0AE9B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18EFE2E18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E00, &qword_18F0A7CE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA3B74();
  sub_18F0945BC();
  v15 = 0;
  sub_18F09437C();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    sub_18EFA3C14(&unk_1EACB7770);
    sub_18F0943CC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_18EFE32E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE2D44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE3308(uint64_t a1)
{
  v2 = sub_18EFA3B74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE3344(uint64_t a1)
{
  v2 = sub_18EFA3B74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE33A0()
{
  v1 = [v0 formatString];
  v2 = sub_18F093B8C();

  v3 = [v0 parameterIdentifiers];
  sub_18F093DCC();

  return v2;
}

uint64_t sub_18EFE342C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x537972616D6D7573 && a2 == 0xED0000676E697274;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5255656C646E7562 && a2 == 0xE90000000000004CLL;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C626174 && a2 == 0xE500000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000019 && 0x800000018F0AE990 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_18F09444C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_18EFE3598(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8CD0, &qword_18F0A7C28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA3620();
  sub_18F0945BC();
  v11 = *(v3 + 2);
  v20 = *v3;
  v21 = v11;
  v19 = 0;
  sub_18F018880();
  sub_18F09436C();
  if (!v2)
  {
    v12 = _s27ActionSummaryCodableWrapperVMa(0);
    v13 = v12[5];
    LOBYTE(v20) = 1;
    sub_18F0932BC();
    sub_18EF8558C(&unk_1EACB6B48);
    sub_18F09436C();
    v14 = (v3 + v12[6]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v20) = 2;
    sub_18F09433C();
    *&v20 = *(v3 + v12[7]);
    v19 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    sub_18EFA3C14(&unk_1EACB7770);
    sub_18F0943CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFE3820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE342C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE3848(uint64_t a1)
{
  v2 = sub_18EFA3620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE3884(uint64_t a1)
{
  v2 = sub_18EFA3620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE38D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - v6;
  v8 = [v1 summaryString];
  if (v8)
  {
    v9 = v8;
    v10 = sub_18EFE33A0();
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v14 = 0;
  }

  v15 = [v2 bundleURL];
  if (v15)
  {
    v16 = v15;
    sub_18F09327C();

    v17 = sub_18F0932BC();
    v18 = 0;
  }

  else
  {
    v17 = sub_18F0932BC();
    v18 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v18, 1, v17);
  v19 = sub_18F013BD0(v2, &selRef_table);
  v21 = v20;
  v22 = [v2 otherParameterIdentifiers];
  v23 = sub_18F093DCC();

  *a1 = v10;
  a1[1] = v12;
  a1[2] = v14;
  v24 = _s27ActionSummaryCodableWrapperVMa(0);
  v25 = v24[5];
  result = sub_18EF869B4();
  v27 = (a1 + v24[6]);
  *v27 = v19;
  v27[1] = v21;
  *(a1 + v24[7]) = v23;
  return result;
}

uint64_t sub_18EFE3A9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E65707974 && a2 == 0xE800000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18EFE3BAC(char a1)
{
  if (!a1)
  {
    return 0x656D614E65707974;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0x65706F6373;
}

uint64_t sub_18EFE3BFC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8578, &qword_18F0A11F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F019B54();
  sub_18F0945BC();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_18F09437C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v17[14] = 1;
    sub_18F09437C();
    v15 = v3[4];
    v17[13] = 2;
    sub_18F0943AC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFE3D88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8568, &qword_18F0A11F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F019B54();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = 0;
  v11 = sub_18F09427C();
  v21 = v12;
  v23 = 1;
  v19 = sub_18F09427C();
  v20 = v13;
  v22 = 2;
  v14 = sub_18F0942AC();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v16 = v21;
  *a2 = v11;
  a2[1] = v16;
  v17 = v20;
  a2[2] = v19;
  a2[3] = v17;
  a2[4] = v14;
  return result;
}

uint64_t sub_18EFE4058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE3A9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE4080(uint64_t a1)
{
  v2 = sub_18F019B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE40BC(uint64_t a1)
{
  v2 = sub_18F019B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_18EFE40F8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18EFE3D88(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_18EFE4140(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_18EFE3BFC(a1);
}

void sub_18EFE417C(uint64_t *a1@<X8>)
{
  v3 = [v1 typeIdentifier];
  v4 = sub_18F093B8C();
  v6 = v5;

  v7 = [v1 instanceIdentifier];
  v8 = sub_18F093B8C();
  v10 = v9;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = 0;
}

void static LNValue.fromJSON(_:bundleURL:effectiveBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  OUTLINED_FUNCTION_95(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_163();
  v12 = _s19BasicCodableWrapperOMa(0);
  v13 = OUTLINED_FUNCTION_36(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_330();
  OUTLINED_FUNCTION_178();
  sub_18EF84150();
  v16 = v5;
  if (v5)
  {
    goto LABEL_7;
  }

  if (__swift_getEnumTagSinglePayload(v6, 1, v12) == 1)
  {
    sub_18EF933AC(v6, &unk_1EACB72F8);
    sub_18EFD2EC8();
    v16 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_38(v16, v17);
LABEL_7:
    sub_18EFD2EC8();
    v21 = OUTLINED_FUNCTION_249();
    *v22 = v16;
    OUTLINED_FUNCTION_278(v21, v22);
    goto LABEL_8;
  }

  sub_18EF88240(v6, v4);
  sub_18EF825F4(0, &qword_1ED5FE060, off_1E72B0218);
  v18 = OUTLINED_FUNCTION_244();
  if (!sub_18EFC6ADC(v18, v19, a4))
  {
    sub_18EFD2EC8();
    v16 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_38(v16, v20);
    OUTLINED_FUNCTION_222();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_222();
LABEL_8:
  OUTLINED_FUNCTION_400();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNValue.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  OUTLINED_FUNCTION_176();
  v3 = OUTLINED_FUNCTION_263();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_95(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_162();
  sub_18EFD7818(v2);
  sub_18EFDA788();
  OUTLINED_FUNCTION_48();
  v9 = OUTLINED_FUNCTION_184();
  sub_18EF933AC(v9, v10);
  if (v1)
  {
    sub_18EFD2EC8();
    v11 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_43(v11, v12);
  }

  v13 = OUTLINED_FUNCTION_49();
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_18EFE44E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365756C6176 && a2 == 0xE600000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x70795465756C6176 && a2 == 0xE900000000000065;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x800000018F0AE7B0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18EFE4604(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6569736E617274 && a2 == 0xE900000000000074;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x70795465756C6176 && a2 == 0xE900000000000065;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x800000018F0AE910 == a2;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000015 && 0x800000018F0AE7B0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_18F09444C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_18EFE47C4(char a1)
{
  result = 0x6E6569736E617274;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x70795465756C6176;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18EFE487C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000018F0AE8F0 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18EFE4954(char a1)
{
  if (a1)
  {
    return 0x6E65644965707974;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_18EFE499C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x800000018F0AE7B0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18EFE4AB8()
{
  OUTLINED_FUNCTION_115();
  v3 = v1 == 0x65756C6176 && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_291() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0xD000000000000015 && 0x800000018F0AE7B0 == v0)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_291();
    OUTLINED_FUNCTION_354();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18EFE4B60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8510, &qword_18F0A11A8);
  v135 = *(v2 - 8);
  v136 = v2;
  v3 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v133 = &v116 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8518, &qword_18F0A11B0);
  v140 = *(v5 - 8);
  v141 = v5;
  v6 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v139 = &v116 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8520, &qword_18F0A11B8);
  v137 = *(v8 - 8);
  v138 = v8;
  v9 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v134 = &v116 - v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8528, &qword_18F0A11C0);
  v131 = *(v132 - 8);
  v11 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v116 - v12;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8530, &qword_18F0A11C8);
  v128 = *(v129 - 8);
  v13 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v127 = &v116 - v14;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8538, &qword_18F0A11D0);
  v125 = *(v126 - 8);
  v15 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v123 = &v116 - v16;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8540, &qword_18F0A11D8);
  v121 = *(v122 - 8);
  v17 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v120 = &v116 - v18;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8548, &qword_18F0A11E0);
  v118 = *(v119 - 8);
  v19 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v116 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7860, &qword_18F09DA60);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v143 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v124 = &v116 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v142 = &v116 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v116 = &v116 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v116 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v116 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v116 - v37;
  v39 = _s19BasicCodableWrapperOMa(0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = (&v116 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8550, &qword_18F0A11E8);
  v44 = *(v43 - 8);
  v146 = v43;
  v147 = v44;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v116 - v46;
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFC04F8();
  v148 = v47;
  sub_18F0945BC();
  sub_18EF86A14(v144, v42);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v86 = *v42;
      v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84F8, &qword_18F0A1198) + 48);
      sub_18EF869B4();
      LOBYTE(v150[0]) = 1;
      sub_18F0199A4();
      v88 = v120;
      v52 = v146;
      v53 = v148;
      sub_18F09431C();
      LOBYTE(v150[0]) = 0;
      v89 = v122;
      v90 = v145;
      sub_18F09439C();
      if (!v90)
      {
        LOBYTE(v150[0]) = 1;
        _s14CodableWrapperVMa_2(0);
        sub_18EF8558C(&unk_1EACB6AA0);
        sub_18F09436C();
      }

      (*(v121 + 8))(v88, v89);
      v91 = v36;
      goto LABEL_26;
    case 2u:
      v67 = *v42;
      v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84E8, &qword_18F0A1190) + 48);
      sub_18EF869B4();
      LOBYTE(v150[0]) = 2;
      sub_18F019950();
      v69 = v123;
      v70 = v146;
      v71 = v148;
      sub_18F09431C();
      LOBYTE(v150[0]) = 0;
      v72 = v126;
      v73 = v145;
      sub_18F09438C();
      if (!v73)
      {
        LOBYTE(v150[0]) = 1;
        _s14CodableWrapperVMa_2(0);
        sub_18EF8558C(&unk_1EACB6AA0);
        sub_18F09436C();
      }

      (*(v125 + 8))(v69, v72);
      sub_18EF933AC(v33, &qword_1EACB7860);
      return (*(v147 + 8))(v71, v70);
    case 3u:
      v76 = *v42;
      v75 = v42[1];
      v77 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84D8, &qword_18F0A1188) + 48);
      v38 = v116;
      sub_18EF869B4();
      LOBYTE(v150[0]) = 3;
      sub_18F0198FC();
      v51 = v127;
      v52 = v146;
      v53 = v148;
      sub_18F09431C();
      LOBYTE(v150[0]) = 0;
      v54 = v129;
      v78 = v145;
      sub_18F09437C();

      if (!v78)
      {
        LOBYTE(v150[0]) = 1;
        _s14CodableWrapperVMa_2(0);
        sub_18EF8558C(&unk_1EACB6AA0);
        sub_18F09436C();
      }

      v56 = &v151;
      goto LABEL_25;
    case 4u:
      v58 = *v42;
      v57 = v42[1];
      v59 = v42[3];
      v144 = v42[2];
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84C8, &qword_18F0A1180) + 64);
      v61 = v142;
      sub_18EF869B4();
      LOBYTE(v150[0]) = 4;
      sub_18EFC083C();
      v62 = v130;
      v63 = v146;
      v64 = v148;
      sub_18F09431C();
      LOBYTE(v150[0]) = 0;
      v65 = v132;
      v66 = v145;
      sub_18F09437C();

      if (v66)
      {
      }

      else
      {
        LOBYTE(v150[0]) = 1;
        sub_18F09437C();

        LOBYTE(v150[0]) = 2;
        _s14CodableWrapperVMa_2(0);
        sub_18EF8558C(&unk_1EACB6AA0);
        v61 = v142;
        sub_18F09436C();
      }

      (*(v131 + 8))(v62, v65);
      sub_18EF933AC(v61, &qword_1EACB7860);
      return (*(v147 + 8))(v64, v63);
    case 5u:
      v93 = *v42;
      v92 = v42[1];
      v94 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84B8, &qword_18F0A1178) + 64);
      v95 = v124;
      sub_18EF869B4();
      LOBYTE(v150[0]) = 5;
      sub_18EFC07E8();
      v96 = v134;
      v52 = v146;
      v53 = v148;
      sub_18F09431C();
      v150[0] = v93;
      v149 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7898, &qword_18F09DC48);
      sub_18F019AA0();
      v97 = v138;
      v98 = v145;
      sub_18F0943CC();
      if (v98)
      {
        sub_18EFA3DA4(v92);
        (*(v137 + 8))(v96, v97);
        sub_18EF933AC(v95, &qword_1EACB7860);
        (*(v147 + 8))(v53, v52);
      }

      else
      {

        v150[0] = v92;
        v149 = 1;
        sub_18F012B0C();
        sub_18F0943CC();
        LOBYTE(v150[0]) = 2;
        _s14CodableWrapperVMa_2(0);
        sub_18EF8558C(&unk_1EACB6AA0);
        sub_18F09436C();
        sub_18EFA3DA4(v92);
        (*(v137 + 8))(v96, v97);
        v91 = v95;
LABEL_26:
        sub_18EF933AC(v91, &qword_1EACB7860);
        return (*(v147 + 8))(v53, v52);
      }

    case 6u:
      v99 = *v42;
      v100 = v42[1];
      v101 = v42[2];
      v102 = v42[4];
      v137 = v42[3];
      v138 = v100;
      v144 = v102;
      v103 = v42[5];
      v142 = v42[6];
      v104 = v42[8];
      v135 = v42[7];
      v136 = v103;
      v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84B0, &qword_18F0A1170) + 96);
      v106 = v143;
      sub_18EF869B4();
      LOBYTE(v150[0]) = 6;
      sub_18F019854();
      v107 = v139;
      v108 = v146;
      v109 = v148;
      sub_18F09431C();
      LOBYTE(v150[0]) = 0;
      v110 = v141;
      v111 = v145;
      sub_18F09438C();
      if (v111)
      {

        sub_18EFA3DA4(v142);
        (*(v140 + 8))(v107, v110);
        sub_18EF933AC(v106, &qword_1EACB7860);
        return (*(v147 + 8))(v109, v108);
      }

      else
      {
        v112 = v142;
        v150[0] = v138;
        v150[1] = v101;
        v150[2] = v137;
        v150[3] = v144;
        v150[4] = v136;
        v149 = 1;
        sub_18F019A4C();
        sub_18F0943CC();

        v113 = v112;
        v150[0] = v112;
        v149 = 2;
        sub_18F012B0C();
        sub_18F0943CC();
        v114 = v148;
        v115 = v143;
        LOBYTE(v150[0]) = 3;
        sub_18F09433C();

        LOBYTE(v150[0]) = 4;
        _s14CodableWrapperVMa_2(0);
        sub_18EF8558C(&unk_1EACB6AA0);
        sub_18F09436C();
        sub_18EFA3DA4(v113);
        (*(v140 + 8))(v107, v110);
        sub_18EF933AC(v115, &qword_1EACB7860);
        return (*(v147 + 8))(v114, v108);
      }

    case 7u:
      v80 = *v42;
      v79 = v42[1];
      v82 = v42[2];
      v81 = v42[3];
      LOBYTE(v150[0]) = 7;
      sub_18F019800();
      v83 = v133;
      v63 = v146;
      v64 = v148;
      sub_18F09431C();
      LOBYTE(v150[0]) = 0;
      v84 = v136;
      v85 = v145;
      sub_18F09437C();

      if (!v85)
      {
        LOBYTE(v150[0]) = 1;
        sub_18F09437C();
      }

      (*(v135 + 8))(v83, v84);
      return (*(v147 + 8))(v64, v63);
    default:
      v49 = *v42;
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8508, &qword_18F0A11A0) + 48);
      sub_18EF869B4();
      LOBYTE(v150[0]) = 0;
      sub_18F0199F8();
      v51 = v117;
      v52 = v146;
      v53 = v148;
      sub_18F09431C();
      LOBYTE(v150[0]) = 0;
      v54 = v119;
      v55 = v145;
      sub_18F0943AC();
      if (!v55)
      {
        LOBYTE(v150[0]) = 1;
        _s14CodableWrapperVMa_2(0);
        sub_18EF8558C(&unk_1EACB6AA0);
        sub_18F09436C();
      }

      v56 = v150;
LABEL_25:
      (*(*(v56 - 32) + 8))(v51, v54);
      v91 = v38;
      goto LABEL_26;
  }
}

uint64_t sub_18EFE60B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE44E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE60E0(uint64_t a1)
{
  v2 = sub_18EFC07E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE611C(uint64_t a1)
{
  v2 = sub_18EFC07E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE6158(uint64_t a1)
{
  v2 = sub_18F019950();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE6194(uint64_t a1)
{
  v2 = sub_18F019950();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE61D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFE45FC();
  *a1 = result;
  return result;
}

uint64_t sub_18EFE61F8(uint64_t a1)
{
  v2 = sub_18EFC04F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE6234(uint64_t a1)
{
  v2 = sub_18EFC04F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE6270(uint64_t a1)
{
  v2 = sub_18F0199A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE62AC(uint64_t a1)
{
  v2 = sub_18F0199A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE62F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE4604(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE6318@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFE47BC();
  *a1 = result;
  return result;
}

uint64_t sub_18EFE6340(uint64_t a1)
{
  v2 = sub_18F019854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE637C(uint64_t a1)
{
  v2 = sub_18F019854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE63C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE487C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE63E8(uint64_t a1)
{
  v2 = sub_18F019800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE6424(uint64_t a1)
{
  v2 = sub_18F019800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE6460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE499C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE6488(uint64_t a1)
{
  v2 = sub_18EFC083C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE64C4(uint64_t a1)
{
  v2 = sub_18EFC083C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE6500(uint64_t a1)
{
  v2 = sub_18F0199F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE653C(uint64_t a1)
{
  v2 = sub_18F0199F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE6578(uint64_t a1)
{
  v2 = sub_18F0198FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE65B4(uint64_t a1)
{
  v2 = sub_18F0198FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18EFE6608(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7830, &qword_18F09DA08);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v52 - v16;
  v59 = _s14CodableWrapperVMa_0(0);
  v18 = *(v59 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v59);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v52 - v23;
  v25 = [v1 title];
  v57 = v24;
  sub_18EFD9154(v24);

  v60 = v2;
  v26 = [v2 subtitle];
  if (v26)
  {
    v27 = v26;
    sub_18EFD9154(v17);

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v28, 1, v59);
  v29 = [v60 image];
  if (v29)
  {
    v30 = v29;
    sub_18EFF789C(1, v10);
  }

  else
  {
    v31 = _s14CodableWrapperOMa(0);
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v31);
  }

  v32 = [v60 image];
  v58 = v10;
  if (v32)
  {
    v33 = v32;
    sub_18EFF789C(0, v8);
  }

  else
  {
    v34 = _s14CodableWrapperOMa(0);
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v34);
  }

  v35 = sub_18F012778(v60, &selRef_synonyms, &qword_1ED5FF4D0, off_1E72B0180);
  if (v35)
  {
    v36 = v35;
    v56 = v17;
    v37 = sub_18EFA0A7C(v35);
    if (v37)
    {
      v38 = v37;
      v61 = MEMORY[0x1E69E7CC0];
      sub_18F00F0B8();
      if (v38 < 0)
      {
        __break(1u);
        return;
      }

      v53 = v15;
      v54 = v8;
      v55 = a1;
      v39 = 0;
      v40 = v61;
      do
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v41 = MEMORY[0x193AD8BA0](v39, v36);
        }

        else
        {
          v41 = *(v36 + 8 * v39 + 32);
        }

        v42 = v41;
        sub_18EFD9154(v22);

        v61 = v40;
        v43 = *(v40 + 16);
        if (v43 >= *(v40 + 24) >> 1)
        {
          sub_18F00F0B8();
          v40 = v61;
        }

        ++v39;
        *(v40 + 16) = v43 + 1;
        sub_18EF88240(v22, v40 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v43);
      }

      while (v38 != v39);

      a1 = v55;
      v15 = v53;
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v40 = 0;
  }

  v44 = [v60 descriptionText];
  if (v44)
  {
    v45 = v44;
    sub_18EFD9154(v15);

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v46, 1, v59);
  sub_18EF88240(v57, a1);
  v47 = _s14CodableWrapperVMa_2(0);
  v48 = v47[5];
  sub_18EF869B4();
  v49 = v47[6];
  sub_18EF869B4();
  v50 = v47[7];
  sub_18EF869B4();
  *(a1 + v47[8]) = v40;
  v51 = v47[9];
  sub_18EF869B4();
}

uint64_t sub_18EFE6B34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000018F0AE810 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000018F0AE9F0 == a2;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18EFE6C50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E88, &qword_18F0A7D38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA2F8C();
  sub_18F0945BC();
  v11 = *v3;
  v12 = v3[1];
  v17 = 0;
  sub_18F09437C();
  if (!v2)
  {
    v16 = v3[2];
    v15[15] = 1;
    type metadata accessor for LNActionConfigurationConditionComparisonOperator(0);
    sub_18EF8558C(&unk_1EACB8E90);
    sub_18F0943CC();
    v13 = *(_s14CodableWrapperVMa_22(0) + 24);
    v15[14] = 2;
    _s19BasicCodableWrapperOMa(0);
    sub_18EF8558C(&unk_1EACB6A08);
    sub_18F09436C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFE6E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE6B34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE6EA8(uint64_t a1)
{
  v2 = sub_18EFA2F8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE6EE4(uint64_t a1)
{
  v2 = sub_18EFA2F8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE6F38@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v17 - v5);
  v7 = [v1 parameterIdentifier];
  v8 = sub_18F093B8C();
  v10 = v9;

  v11 = [v1 comparisonOperator];
  v12 = [v1 value];
  if (v12)
  {
    v13 = v12;
    sub_18EFD7818(v6);
  }

  else
  {
    v14 = _s19BasicCodableWrapperOMa(0);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v14);
  }

  *a1 = v8;
  a1[1] = v10;
  a1[2] = v11;
  v15 = *(_s14CodableWrapperVMa_22(0) + 24);
  return sub_18EF869B4();
}

uint64_t sub_18EFE7070(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1852139639 && a2 == 0xE400000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736977726568746FLL && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18EFE718C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8C90, &qword_18F0A7C10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA2ADC();
  sub_18F0945BC();
  LOBYTE(v14) = 0;
  _s14CodableWrapperVMa_22(0);
  sub_18EF8558C(&unk_1EACB8CA0);
  sub_18F0943CC();
  if (!v2)
  {
    v11 = _s24WhenClauseCodableWrapperVMa(0);
    v14 = *(v3 + *(v11 + 20));
    HIBYTE(v13) = 1;
    sub_18F012CD0();
    sub_18F0943CC();
    v14 = *(v3 + *(v11 + 24));
    HIBYTE(v13) = 2;
    sub_18F09436C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFE73A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE7070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE73CC(uint64_t a1)
{
  v2 = sub_18EFA2ADC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE7408(uint64_t a1)
{
  v2 = sub_18EFA2ADC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE745C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s14CodableWrapperVMa_22(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [v1 condition];
  sub_18EFE6F38(v7);

  v9 = [v2 when];
  v10 = sub_18EFE7598();

  v11 = [v2 otherwise];
  if (v11)
  {
    v12 = v11;
    v13 = sub_18EFE7598();
  }

  else
  {
    v13 = 0xF000000000000007;
  }

  sub_18EF88240(v7, a1);
  result = _s24WhenClauseCodableWrapperVMa(0);
  *(a1 + *(result + 20)) = v10;
  *(a1 + *(result + 24)) = v13;
  return result;
}

unint64_t sub_18EFE7598()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7CD0, &qword_18F0A0CD8);
    v1 = swift_allocBox();
    sub_18EFE38D8(v2);
    return v1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v3 = swift_allocObject();
    sub_18EFE7F9C();
    *(v3 + 16) = v4;
    *(v3 + 24) = v5;
    *(v3 + 32) = v6;
    return v3 | 0x4000000000000000;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7CA8, &qword_18F0A0CD0);
    v7 = swift_allocBox();
    sub_18EFE745C(v8);
    return v7 | 0x8000000000000000;
  }

  sub_18F09406C();

  v10 = [v0 description];
  v11 = sub_18F093B8C();
  v13 = v12;

  MEMORY[0x193AD8780](v11, v13);

  result = sub_18F0941AC();
  __break(1u);
  return result;
}

uint64_t sub_18EFE775C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C75616665447369 && a2 == 0xED00006573614374;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18EFE7878(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8EA8, &qword_18F0A7D48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFBF918();
  sub_18F0945BC();
  v17 = 0;
  _s19BasicCodableWrapperOMa(0);
  sub_18EF8558C(&unk_1EACB6A08);
  sub_18F09436C();
  if (!v2)
  {
    v11 = _s14CodableWrapperVMa_20(0);
    v12 = *(v3 + *(v11 + 20));
    v16 = 1;
    sub_18F09434C();
    v15 = *(v3 + *(v11 + 24));
    v14[15] = 2;
    sub_18F012CD0();
    sub_18F0943CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFE7A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE775C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE7AA0(uint64_t a1)
{
  v2 = sub_18EFBF918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE7ADC(uint64_t a1)
{
  v2 = sub_18EFBF918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE7B30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v15 - v6);
  v8 = [v1 value];
  if (v8)
  {
    v9 = v8;
    sub_18EFD7818(v7);
  }

  else
  {
    v10 = _s19BasicCodableWrapperOMa(0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
  }

  v11 = [v2 isDefaultCase];
  v12 = [v2 configuration];
  v13 = sub_18EFE7598();

  sub_18EF869B4();
  result = _s14CodableWrapperVMa_20(0);
  *(a1 + *(result + 20)) = v11;
  *(a1 + *(result + 24)) = v13;
  return result;
}

uint64_t sub_18EFE7C6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000018F0AE810 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365736163 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18EFE7D38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8CA8, &qword_18F0A7C18);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFC4340();
  sub_18F0945BC();
  v15 = 0;
  sub_18F09437C();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8CB8, &qword_18F0A7C20);
    sub_18F01E1DC();
    sub_18F0943CC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_18EFE7EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE7C6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE7F04(uint64_t a1)
{
  v2 = sub_18EFC4340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE7F40(uint64_t a1)
{
  v2 = sub_18EFC4340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18EFE7F9C()
{
  v1 = _s14CodableWrapperVMa_20(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 parameterIdentifier];
  v7 = sub_18F093B8C();
  v9 = v8;

  v10 = [v0 cases];
  sub_18EF825F4(0, &qword_1ED5FD648, off_1E72AFE60);
  v11 = sub_18F093DCC();

  v12 = sub_18EFA0A7C(v11);
  if (!v12)
  {
LABEL_10:

    return;
  }

  v13 = v12;
  v20 = MEMORY[0x1E69E7CC0];
  sub_18F00F148();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v19[1] = v9;
    v19[2] = v7;
    v14 = 0;
    v15 = v20;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x193AD8BA0](v14, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v14 + 32);
      }

      v17 = v16;
      sub_18EFE7B30(v5);

      v20 = v15;
      v18 = *(v15 + 16);
      if (v18 >= *(v15 + 24) >> 1)
      {
        sub_18F00F148();
        v15 = v20;
      }

      ++v14;
      *(v15 + 16) = v18 + 1;
      sub_18EF88240(v5, v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v18);
    }

    while (v13 != v14);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_18EFE81EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x72657070617277 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_296();
    OUTLINED_FUNCTION_354();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFE8254(void *a1, uint64_t a2)
{
  *&v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7C80, &qword_18F0A0CB0);
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v34 - v5;
  v37 = _s24WhenClauseCodableWrapperVMa(0);
  v6 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7C88, &qword_18F0A0CB8);
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7C90, &qword_18F0A0CC0);
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v16 = _s27ActionSummaryCodableWrapperVMa(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7C98, &qword_18F0A0CC8);
  v43 = *(v20 - 8);
  v44 = v20;
  v21 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v34 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA2438();
  sub_18F0945BC();
  if (!(v42 >> 62))
  {
    v29 = swift_projectBox();
    sub_18EF86A14(v29, v19);
    LOBYTE(v45) = 0;
    sub_18EFA3100();
    v27 = v44;
    sub_18F09431C();
    sub_18EF8558C(&unk_1EACB7CE0);
    sub_18F0943CC();
    (*(v34 + 8))(v15, v12);
LABEL_6:
    sub_18EF86A6C();
    return (*(v43 + 8))(v23, v27);
  }

  if (v42 >> 62 != 1)
  {
    v30 = swift_projectBox();
    sub_18EF86A14(v30, v38);
    LOBYTE(v45) = 2;
    sub_18EFA25DC();
    v31 = v39;
    v27 = v44;
    sub_18F09431C();
    sub_18EF8558C(&unk_1EACB7CB8);
    v32 = v41;
    sub_18F0943CC();
    (*(v40 + 8))(v31, v32);
    goto LABEL_6;
  }

  v25 = v42 & 0x3FFFFFFFFFFFFFFFLL;
  v26 = *((v42 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  LOBYTE(v45) = 1;
  sub_18EFC4298();
  v42 = *(v25 + 24);
  v27 = v44;
  sub_18F09431C();
  v45 = v26;
  v46 = v42;
  sub_18F017194();
  v28 = v36;
  sub_18F0943CC();
  (*(v35 + 8))(v11, v28);
  return (*(v43 + 8))(v23, v27);
}

uint64_t sub_18EFE8808(uint64_t a1)
{
  v2 = sub_18EFA3100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE8844(uint64_t a1)
{
  v2 = sub_18EFA3100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE8880(uint64_t a1)
{
  v2 = sub_18EFA2438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE88BC(uint64_t a1)
{
  v2 = sub_18EFA2438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE88F8(uint64_t a1)
{
  v2 = sub_18EFC4298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE8934(uint64_t a1)
{
  v2 = sub_18EFC4298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE8970(uint64_t a1)
{
  v2 = sub_18EFA25DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE89AC(uint64_t a1)
{
  v2 = sub_18EFA25DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE8A04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18EFE8ACC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E10, &qword_18F0A7CF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFC560C();
  sub_18F0945BC();
  v16 = 0;
  sub_18F09437C();
  if (!v5)
  {
    v15 = 1;
    sub_18F09437C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_18EFE8CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE8A04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE8CEC(uint64_t a1)
{
  v2 = sub_18EFC560C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE8D28(uint64_t a1)
{
  v2 = sub_18EFC560C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE8D84()
{
  v1 = [v0 name];
  v2 = sub_18F093B8C();

  v3 = [v0 version];
  sub_18F093B8C();

  return v2;
}

uint64_t sub_18EFE8E98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18EFE8FA4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7E88, &qword_18F0A0DC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA0FDC();
  sub_18F0945BC();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_18F09437C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v18[14] = 1;
    sub_18F09437C();
    v15 = v3[4];
    v16 = v3[5];
    v18[13] = 2;
    sub_18F09433C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFE9130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE8E98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE9158(uint64_t a1)
{
  v2 = sub_18EFA0FDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE9194(uint64_t a1)
{
  v2 = sub_18EFA0FDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE91D0(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_18EFE8FA4(a1);
}

uint64_t sub_18EFE920C@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 name];
  v4 = sub_18F093B8C();
  v6 = v5;

  v7 = [v1 version];
  v8 = sub_18F093B8C();
  v10 = v9;

  result = sub_18F013BD0(v1, &selRef_domain);
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = result;
  a1[5] = v12;
  return result;
}

uint64_t sub_18EFE92B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F69746361 && a2 == 0xE700000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001FLL && 0x800000018F0AE440 == a2;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F68536F747561 && a2 == 0xED00007374756374;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7365697469746E65 && a2 == 0xE800000000000000;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73656972657571 && a2 == 0xE700000000000000;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x736D756E65 && a2 == 0xE500000000000000;
            if (v10 || (sub_18F09444C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x800000018F0AE460 == a2;
              if (v11 || (sub_18F09444C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
                if (v12 || (sub_18F09444C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6F746172656E6567 && a2 == 0xE900000000000072;
                  if (v13 || (sub_18F09444C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x657669746167656ELL && a2 == 0xEF73657361726850;
                    if (v14 || (sub_18F09444C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x800000018F0AE480 == a2;
                      if (v15 || (sub_18F09444C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001ELL && 0x800000018F0AE4A0 == a2;
                        if (v16 || (sub_18F09444C() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000011 && 0x800000018F0AE4C0 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_18F09444C();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18EFE96BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8278, &qword_18F0A1058);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFBC950();
  sub_18F0945BC();
  *&v15[0] = *v3;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7A70, &qword_18F0A0BB8);
  sub_18F018C4C();
  sub_18F0943CC();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    LOBYTE(v15[0]) = 1;
    sub_18F09433C();
    *&v15[0] = *(v3 + 24);
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7A78, &qword_18F0A0BC0);
    sub_18F018D08();
    sub_18F09436C();
    *&v15[0] = *(v3 + 32);
    v16 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7A80, &qword_18F0A0BC8);
    sub_18F018DBC();
    sub_18F0943CC();
    *&v15[0] = *(v3 + 40);
    v16 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7A88, &qword_18F0A0BD0);
    sub_18F018E78();
    sub_18F0943CC();
    *&v15[0] = *(v3 + 48);
    v16 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7A90, &qword_18F0A0BD8);
    sub_18F018F34();
    sub_18F0943CC();
    *&v15[0] = *(v3 + 56);
    BYTE8(v15[0]) = *(v3 + 64);
    v16 = 6;
    type metadata accessor for LNShortcutTileColor(0);
    sub_18EF8558C(&unk_1EACB82C0);
    sub_18F09436C();
    *&v15[0] = *(v3 + 72);
    BYTE8(v15[0]) = *(v3 + 80);
    v16 = 7;
    type metadata accessor for LNBundleMetadataVersion(0);
    sub_18EF8558C(&unk_1EACB8140);
    sub_18F09436C();
    v13 = *(v3 + 104);
    v15[0] = *(v3 + 88);
    v15[1] = v13;
    v16 = 8;
    sub_18F018FE8();
    sub_18F09436C();
    *&v15[0] = *(v3 + 120);
    v16 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7AA0, &qword_18F0A0BE0);
    sub_18F01903C();
    sub_18F09436C();
    *&v15[0] = *(v3 + 128);
    v16 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7AA8, &qword_18F0A0BE8);
    sub_18F0190F0();
    sub_18F09436C();
    *&v15[0] = *(v3 + 136);
    v16 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7AB0, &qword_18F0A0BF0);
    sub_18F0191C8();
    sub_18F09436C();
    *&v15[0] = *(v3 + 144);
    v16 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7AB8, &qword_18F0A0BF8);
    sub_18F0192A0();
    sub_18F09436C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFE9C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE92B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE9C58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFE96B4();
  *a1 = result;
  return result;
}

uint64_t sub_18EFE9C80(uint64_t a1)
{
  v2 = sub_18EFBC950();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE9CBC(uint64_t a1)
{
  v2 = sub_18EFBC950();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18EFE9D4C(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v131 = a2;
  v5 = _s14CodableWrapperVMa_26(0);
  v134 = *(v5 - 8);
  v6 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s14CodableWrapperVMa_29(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = (&v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v15 = *(a1 + 1);
  v16 = a1[16];
  v17 = [v2 actions];
  sub_18EF825F4(0, &qword_1ED5FF210, off_1E72AFEA0);
  v18 = sub_18F093A4C();

  v136 = v15;
  LODWORD(v133) = v16;
  v130 = sub_18F010EB4(v18, v14, v15, v16);
  v132 = 0;

  v19 = sub_18F013BD0(v3, &selRef_autoShortcutProviderMangledName);
  v128 = v20;
  v129 = v19;
  v21 = v3;
  v22 = [v3 autoShortcuts];
  sub_18EF825F4(0, &qword_1ED5FEC28, off_1E72AFF60);
  v23 = sub_18F093DCC();

  v24 = sub_18EFA0A7C(v23);
  v135 = v8;
  if (v24)
  {
    v25 = v24;
    *&v140[0] = MEMORY[0x1E69E7CC0];
    sub_18F00F2B0();
    if (v25 < 0)
    {
      __break(1u);
      goto LABEL_69;
    }

    LODWORD(v127) = v14;
    v26 = 0;
    v137 = *&v140[0];
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x193AD8BA0](v26, v23);
      }

      else
      {
        v27 = *(v23 + 8 * v26 + 32);
      }

      v28 = v27;
      sub_18EFEBE88(v13);

      v29 = v137;
      *&v140[0] = v137;
      v30 = *(v137 + 16);
      if (v30 >= *(v137 + 24) >> 1)
      {
        sub_18F00F2B0();
        v29 = *&v140[0];
      }

      ++v26;
      *(v29 + 16) = v30 + 1;
      v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v137 = v29;
      sub_18EF88240(v13, v29 + v31 + *(v10 + 72) * v30);
    }

    while (v25 != v26);

    v32 = v21;
    LOBYTE(v14) = v127;
  }

  else
  {

    v137 = MEMORY[0x1E69E7CC0];
    v32 = v3;
  }

  v33 = [v32 entities];
  sub_18EF825F4(0, &qword_1ED5FF428, off_1E72B0020);
  v34 = sub_18F093A4C();

  v35 = v136;

  v127 = sub_18F010C50(v34, v14, v35, v133);

  v36 = [v32 queries];
  sub_18EF825F4(0, &unk_1ED5FED68, off_1E72B0120);
  v37 = sub_18F093A4C();

  v126 = sub_18F010A30(v37);

  v38 = [v32 enums];
  sub_18EF825F4(0, &qword_1ED5FF268, off_1E72B0048);
  v39 = sub_18F093A4C();

  v40 = sub_18EFD71E0(v39);

  v41 = [v32 shortcutTileColor];
  v123 = [v32 version];
  v42 = [v32 generator];
  v43 = v134;
  v125 = v40;
  v124 = v41;
  if (v42)
  {
    v44 = v42;
    v122 = sub_18EFE8D84();
    v121 = v45;
    v120 = v46;
    v119 = v47;
  }

  else
  {
    v122 = 0;
    v121 = 0;
    v120 = 0;
    v119 = 0;
  }

  v48 = sub_18F012778(v32, &selRef_negativePhrases, &unk_1ED5FE730, off_1E72AFEE8);
  if (!v48)
  {
    v136 = 0;
    goto LABEL_28;
  }

  v49 = v48;
  v50 = sub_18EFA0A7C(v48);
  if (!v50)
  {

    v136 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v51 = v50;
  *&v140[0] = MEMORY[0x1E69E7CC0];
  sub_18F00F200();
  if (v51 < 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v133 = v32;
  v52 = 0;
  v136 = *&v140[0];
  v53 = v135;
  do
  {
    if ((v49 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x193AD8BA0](v52, v49);
    }

    else
    {
      v54 = *(v49 + 8 * v52 + 32);
    }

    v55 = v54;
    v56 = [v55 phrase];
    sub_18EFD9154(v53);

    v57 = v136;
    *&v140[0] = v136;
    v58 = *(v136 + 16);
    if (v58 >= *(v136 + 24) >> 1)
    {
      sub_18F00F200();
      v57 = *&v140[0];
    }

    ++v52;
    *(v57 + 16) = v58 + 1;
    v59 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v136 = v57;
    sub_18EF88240(v53, v57 + v59 + *(v43 + 72) * v58);
  }

  while (v51 != v52);

  v32 = v133;
LABEL_28:
  v60 = sub_18F012778(v32, &selRef_assistantIntents, qword_1ED5FE4D8, off_1E72AFF20);
  if (!v60)
  {
    v66 = 0;
    goto LABEL_41;
  }

  v61 = v60;
  v62 = sub_18EFA0A7C(v60);
  if (!v62)
  {

    v66 = MEMORY[0x1E69E7CC0];
    goto LABEL_41;
  }

  v63 = v62;
  v138 = MEMORY[0x1E69E7CC0];
  sub_18F00F1E0(0, v62 & ~(v62 >> 63), 0);
  if (v63 < 0)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v64 = v32;
  v65 = 0;
  v66 = v138;
  do
  {
    if ((v61 & 0xC000000000000001) != 0)
    {
      v67 = MEMORY[0x193AD8BA0](v65, v61);
    }

    else
    {
      v67 = *(v61 + 8 * v65 + 32);
    }

    v68 = v67;
    sub_18EFEE868(v140);

    v138 = v66;
    v70 = *(v66 + 2);
    v69 = *(v66 + 3);
    if (v70 >= v69 >> 1)
    {
      sub_18F00F1E0((v69 > 1), v70 + 1, 1);
      v66 = v138;
    }

    ++v65;
    *(v66 + 2) = v70 + 1;
    v71 = &v66[48 * v70];
    v72 = v140[0];
    v73 = v140[2];
    *(v71 + 3) = v140[1];
    *(v71 + 4) = v73;
    *(v71 + 2) = v72;
  }

  while (v63 != v65);

  v32 = v64;
LABEL_41:
  v74 = sub_18F012778(v32, &selRef_assistantIntentNegativePhrases, qword_1ED5FE438, off_1E72AFF28);
  v135 = v66;
  if (!v74)
  {
    v79 = 0;
    goto LABEL_54;
  }

  v75 = v74;
  v76 = sub_18EFA0A7C(v74);
  if (!v76)
  {

    v79 = MEMORY[0x1E69E7CC0];
    goto LABEL_54;
  }

  v77 = v76;
  v138 = MEMORY[0x1E69E7CC0];
  sub_18F00F1C0(0, v76 & ~(v76 >> 63), 0);
  if (v77 < 0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v78 = 0;
  v79 = v138;
  v133 = v32;
  v134 = v75 & 0xC000000000000001;
  v80 = v75;
  do
  {
    if (v134)
    {
      v81 = MEMORY[0x193AD8BA0](v78, v75);
    }

    else
    {
      v81 = *(v75 + 8 * v78 + 32);
    }

    v82 = v81;
    sub_18EFEEBCC();
    v84 = v83;
    v86 = v85;
    v88 = v87;

    v138 = v79;
    v90 = *(v79 + 16);
    v89 = *(v79 + 24);
    if (v90 >= v89 >> 1)
    {
      sub_18F00F1C0((v89 > 1), v90 + 1, 1);
      v79 = v138;
    }

    ++v78;
    *(v79 + 16) = v90 + 1;
    v91 = (v79 + 24 * v90);
    v91[4] = v84;
    v91[5] = v86;
    v91[6] = v88;
    v75 = v80;
  }

  while (v77 != v78);

  v32 = v133;
  v66 = v135;
LABEL_54:
  v92 = sub_18F012778(v32, &selRef_assistantEntities, &unk_1ED5FE410, off_1E72AFF08);
  if (!v92)
  {
    v97 = 0;
LABEL_67:
    v111 = v137;
    LOBYTE(v138) = 0;
    v139 = 0;
    v112 = v131;
    v113 = v129;
    *v131 = v130;
    v112[1] = v113;
    v114 = v127;
    v112[2] = v128;
    v112[3] = v111;
    v112[4] = v114;
    v115 = v125;
    v112[5] = v126;
    v112[6] = v115;
    v112[7] = v124;
    *(v112 + 64) = 0;
    v112[9] = v123;
    *(v112 + 80) = 0;
    v116 = v121;
    v112[11] = v122;
    v112[12] = v116;
    v117 = v119;
    v112[13] = v120;
    v112[14] = v117;
    v112[15] = v136;
    v112[16] = v66;
    v112[17] = v79;
    v112[18] = v97;
    return;
  }

  v93 = v92;
  v94 = sub_18EFA0A7C(v92);
  if (!v94)
  {

    v97 = MEMORY[0x1E69E7CC0];
    goto LABEL_67;
  }

  v95 = v94;
  v138 = MEMORY[0x1E69E7CC0];
  sub_18F00F1A0(0, v94 & ~(v94 >> 63), 0);
  if ((v95 & 0x8000000000000000) == 0)
  {
    v96 = 0;
    v97 = v138;
    v132 = v93 & 0xC000000000000001;
    v133 = v95;
    v134 = v93;
    do
    {
      if (v132)
      {
        v98 = MEMORY[0x193AD8BA0](v96, v93);
      }

      else
      {
        v98 = *(v93 + 8 * v96 + 32);
      }

      v99 = v98;
      sub_18EFEEE1C();
      v101 = v100;
      v103 = v102;
      v105 = v104;
      v107 = v106;

      v138 = v97;
      v109 = *(v97 + 16);
      v108 = *(v97 + 24);
      if (v109 >= v108 >> 1)
      {
        sub_18F00F1A0((v108 > 1), v109 + 1, 1);
        v97 = v138;
      }

      v96 = v96 + 1;
      *(v97 + 16) = v109 + 1;
      v110 = (v97 + 32 * v109);
      v110[4] = v101;
      v110[5] = v103;
      v110[6] = v105;
      v110[7] = v107;
      v93 = v134;
      v66 = v135;
    }

    while (v133 != v96);

    goto LABEL_67;
  }

LABEL_72:
  __break(1u);
}

void LNActionMetadata.wrapper(encodingContext:)()
{
  OUTLINED_FUNCTION_260();
  v4 = v3;
  v6 = v5;
  v7 = _s14CodableWrapperVMa_24(0);
  v8 = OUTLINED_FUNCTION_45(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22();
  v11 = OUTLINED_FUNCTION_237();
  v12 = _s14CodableWrapperVMa_10(v11);
  v13 = OUTLINED_FUNCTION_45(v12);
  v289 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_220();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7308, &qword_18F09BD40);
  OUTLINED_FUNCTION_95(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_135();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7310, &qword_18F09BD48);
  OUTLINED_FUNCTION_95(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_334(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  OUTLINED_FUNCTION_95(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_135();
  v30 = OUTLINED_FUNCTION_237();
  v31 = _s14CodableWrapperVMa(v30);
  v32 = OUTLINED_FUNCTION_45(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_256();
  v37 = *(v4 + 1);
  v38 = v4[16];
  LODWORD(v288) = *v4;
  LOBYTE(v294[0]) = v288;
  v287 = v37;
  v294[1] = v37;
  LODWORD(v286) = v38;
  v295 = v38;
  sub_18F035410(v294);
  v40 = v39;
  v41 = [v39 authenticationPolicyAllowingImplicit_];
  v281 = v6;
  v276 = v41;
  if (v41)
  {
    v42 = v41;
    OUTLINED_FUNCTION_228([v41 integerValue]);
  }

  else
  {
    v280 = 0;
  }

  v43 = [v40 identifier];
  v44 = sub_18F093B8C();
  OUTLINED_FUNCTION_365(v44);
  v278 = v45;

  v46 = [v40 mangledTypeName];
  v275 = sub_18F093B8C();
  v274 = v47;

  v48 = [v40 mangledTypeNameByBundleIdentifier];
  v49 = MEMORY[0x1E69E6158];
  v273 = sub_18F093A4C();

  v50 = [v0 mangledTypeName];
  v51 = sub_18F093B8C();
  v271 = v52;

  v53 = [v0 mangledTypeNameByBundleIdentifier];
  v270 = sub_18F093A4C();

  v54 = [v40 effectiveBundleIdentifiers];
  v55 = [v54 array];

  v56 = sub_18F093DCC();
  v57 = sub_18EFF3050(v56);

  v285 = v40;
  v272 = v51;
  if (v57)
  {
    v58 = sub_18EFA0A7C(v57);
    if (v58)
    {
      v59 = v58;
      OUTLINED_FUNCTION_11(MEMORY[0x1E69E7CC0]);
      sub_18F00F468();
      if (v59 < 0)
      {
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      v60 = 0;
      v290 = v294[0];
      v51 = v57 & 0xC000000000000001;
      do
      {
        if (v51)
        {
          v61 = OUTLINED_FUNCTION_366();
          v62 = MEMORY[0x193AD8BA0](v61);
        }

        else
        {
          v62 = *(v57 + 8 * v60 + 32);
        }

        v63 = v62;
        sub_18EFF0A68(v2);

        OUTLINED_FUNCTION_375();
        if (v66)
        {
          OUTLINED_FUNCTION_54(v64);
          OUTLINED_FUNCTION_317();
          sub_18F00F468();
          v65 = v294[0];
        }

        ++v60;
        *(v65 + 16) = v49;
        v67 = *(v34 + 80);
        OUTLINED_FUNCTION_149();
        v290 = v68;
        v69 = *(v34 + 72);
        OUTLINED_FUNCTION_25();
        sub_18EF88240(v2, v70);
      }

      while (v59 != v60);
    }

    else
    {

      v290 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_283();
    v40 = v285;
  }

  else
  {
    v290 = 0;
    OUTLINED_FUNCTION_283();
  }

  v71 = [v40 title];
  if (v71)
  {
    v72 = v71;
    sub_18EFD9154(v34);

    v73 = 0;
  }

  else
  {
    v73 = 1;
  }

  v74 = _s14CodableWrapperVMa_0(0);
  v75 = 1;
  __swift_storeEnumTagSinglePayload(v34, v73, 1, v74);
  v76 = [v40 descriptionMetadata];
  if (v76)
  {
    v77 = v76;
    sub_18EFF315C(&selRef_initWithPlatformSpecificationConfigurationData_platform_);

    v75 = 0;
  }

  v78 = 1;
  v264 = _s14CodableWrapperVMa_1(0);
  __swift_storeEnumTagSinglePayload(&selRef_initWithPlatformSpecificationConfigurationData_platform_, v75, 1, v264);
  v79 = [v40 deprecationMetadata];
  if (v79)
  {
    v80 = v79;
    sub_18F00208C(&selRef_messageText, &selRef_replacedByIntentIdentifier, _s14CodableWrapperVMa_8, v51);

    v78 = 0;
  }

  v259 = _s14CodableWrapperVMa_8(0);
  __swift_storeEnumTagSinglePayload(v51, v78, 1, v259);
  v81 = [v40 openAppWhenRun];
  v266 = [v40 supportedModes];
  v263 = [v40 visibleForUse_];
  v82 = [v40 outputType];
  if (v82)
  {
    v83 = v82;
    v262 = sub_18EFD1A70();
  }

  else
  {
    v262 = 0xF000000000000007;
  }

  v261 = [v40 outputFlags];
  v84 = [v40 parameters];
  sub_18EF825F4(0, &unk_1ED5FFA18, off_1E72AFEA8);
  OUTLINED_FUNCTION_142();
  v85 = sub_18F093DCC();

  v86 = sub_18EFA0A7C(v85);
  v268 = v74;
  v267 = v81;
  if (v86)
  {
    v87 = v86;
    OUTLINED_FUNCTION_11(MEMORY[0x1E69E7CC0]);
    sub_18F00F410();
    if (v87 < 0)
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v88 = 0;
    v291 = v294[0];
    do
    {
      if ((v85 & 0xC000000000000001) != 0)
      {
        v89 = OUTLINED_FUNCTION_140();
        v90 = MEMORY[0x193AD8BA0](v89);
      }

      else
      {
        v90 = *(v85 + 8 * v88 + 32);
      }

      v91 = v90;
      sub_18EFE14F8(v1);

      OUTLINED_FUNCTION_375();
      if (v66)
      {
        OUTLINED_FUNCTION_54(v92);
        OUTLINED_FUNCTION_317();
        sub_18F00F410();
        v93 = v294[0];
      }

      ++v88;
      *(v93 + 16) = v49;
      v94 = *(v289 + 80);
      OUTLINED_FUNCTION_149();
      v291 = v95;
      sub_18EF88240(v1, v95 + v96 + *(v97 + 72) * &selRef_initWithPlatformSpecificationConfigurationData_platform_);
    }

    while (v87 != v88);

    v40 = v285;
  }

  else
  {

    v291 = MEMORY[0x1E69E7CC0];
  }

  v98 = [v40 systemProtocolMetadata];
  OUTLINED_FUNCTION_295();
  type metadata accessor for LNSystemProtocolIdentifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
  OUTLINED_FUNCTION_24();
  v100 = sub_18EF8558C(v99);
  OUTLINED_FUNCTION_292();
  v101 = sub_18F093A4C();

  v102 = v287;

  v258 = sub_18F0112DC(v101, v288, v287, v286, &qword_1EACB8860);

  v103 = [v40 systemProtocolMetadata];
  v104 = sub_18F093A4C();

  v105 = sub_18F01178C(v104, v288, v287, v286, &qword_1EACB8860, &qword_18F0A1428);
  OUTLINED_FUNCTION_232(v105, &v290);

  v106 = [v40 actionConfiguration];
  if (v106)
  {
    v104 = v106;
    v256 = sub_18EFE7598();
  }

  else
  {
    v256 = 0xF000000000000007;
  }

  v107 = sub_18F0127F4(v40);
  if (v107)
  {
    v104 = v107;

    v255 = sub_18F011118(v104);
    v288 = 0;
  }

  else
  {
    v288 = 0;
    v255 = 0;
  }

  v108 = sub_18F013BD0(v40, &selRef_customIntentClassName);
  v110 = v109;
  v111 = sub_18F013B0C(v40);
  v254 = v108;
  v253 = v110;
  if (v111)
  {
    v104 = v111;
    v112 = sub_18EFD61FC(v111);
    OUTLINED_FUNCTION_232(v112, &v285);
  }

  else
  {
    v252 = 0;
  }

  v113 = sub_18F012778(v40, &selRef_requiredCapabilities, qword_1ED5FEEC8, off_1E72B0150);
  if (v113)
  {
    v114 = v113;
    v115 = sub_18EFA0A7C(v113);
    if (v115)
    {
      v116 = v115;
      OUTLINED_FUNCTION_11(MEMORY[0x1E69E7CC0]);
      sub_18F00F3D8();
      if (v116 < 0)
      {
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      v100 = 0;
      v289 = v294[0];
      v108 = v114 & 0xC000000000000001;
      do
      {
        if (v108)
        {
          v117 = MEMORY[0x193AD8BA0](v100, v114);
        }

        else
        {
          v117 = *(v114 + 8 * v100 + 32);
        }

        v104 = v117;
        sub_18EFF39C0(&v293);

        v118 = v289;
        v294[0] = v289;
        v120 = *(v289 + 16);
        v119 = *(v289 + 24);
        v102 = v120 + 1;
        if (v120 >= v119 >> 1)
        {
          OUTLINED_FUNCTION_54(v119);
          OUTLINED_FUNCTION_317();
          sub_18F00F3D8();
          v118 = v294[0];
        }

        ++v100;
        *(v118 + 16) = v102;
        v289 = v118;
        OUTLINED_FUNCTION_356(v118 + 40 * v120);
      }

      while (v116 != v100);
    }

    else
    {

      v289 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v289 = 0;
  }

  sub_18F013BD0(v40, &selRef_attributionBundleIdentifier);
  OUTLINED_FUNCTION_134();
  v121 = [v40 sideEffect];
  v251 = v108;
  v250 = v104;
  v246 = v121;
  if (v121)
  {
    v122 = v121;
    v249 = [v121 effect];
    v248 = [v122 changeEffect];
  }

  else
  {
    v249 = 0;
    v248 = 0;
  }

  v123 = [v40 systemProtocols];
  sub_18EF825F4(0, &unk_1EACB6AD8, off_1E72B01D8);
  OUTLINED_FUNCTION_142();
  v124 = sub_18F093DCC();

  v125 = sub_18EFA0A7C(v124);
  if (v125)
  {
    v100 = v125;
    v126 = OUTLINED_FUNCTION_11(MEMORY[0x1E69E7CC0]);
    sub_18F00F3B8(v126, v127, v128);
    if ((v100 & 0x8000000000000000) != 0)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    v129 = 0;
    v130 = v294[0];
    do
    {
      v131 = v130;
      if ((v124 & 0xC000000000000001) != 0)
      {
        v132 = OUTLINED_FUNCTION_366();
        v133 = MEMORY[0x193AD8BA0](v132);
      }

      else
      {
        v133 = *(v124 + 8 * v129 + 32);
      }

      v123 = v133;
      v134 = [v133 identifier];

      v130 = v131;
      v294[0] = v131;
      v135 = *(v131 + 16);
      v136 = *(v130 + 24);
      v102 = v135 + 1;
      if (v135 >= v136 >> 1)
      {
        OUTLINED_FUNCTION_54(v136);
        OUTLINED_FUNCTION_317();
        sub_18F00F3B8(v137, v138, v139);
        v130 = v294[0];
      }

      ++v129;
      *(v130 + 16) = v102;
      *(v130 + 8 * v135 + 32) = v134;
    }

    while (v100 != v129);
    v245 = v130;
  }

  else
  {

    v245 = MEMORY[0x1E69E7CC0];
  }

  v140 = sub_18F012778(v40, &selRef_assistantDefinedSchemas, qword_1ED5FE9A0, off_1E72AFF10);
  if (v140)
  {
    v141 = v140;
    v142 = sub_18EFA0A7C(v140);
    if (v142)
    {
      v100 = v142;
      v143 = OUTLINED_FUNCTION_59(MEMORY[0x1E69E7CC0]);
      sub_18F00F398(v143, v144, v145);
      if ((v100 & 0x8000000000000000) != 0)
      {
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v146 = 0;
      v147 = v292;
      do
      {
        if ((v141 & 0xC000000000000001) != 0)
        {
          v148 = OUTLINED_FUNCTION_368();
          v149 = MEMORY[0x193AD8BA0](v148);
        }

        else
        {
          v149 = *(v141 + 8 * v146 + 32);
        }

        v150 = v149;
        OUTLINED_FUNCTION_412();

        v292 = v147;
        v102 = *(v147 + 16);
        v151 = *(v147 + 24);
        if (v102 >= v151 >> 1)
        {
          OUTLINED_FUNCTION_114(v151);
          v123 = &v292;
          OUTLINED_FUNCTION_339();
          sub_18F00F398(v152, v153, v154);
          v147 = v292;
        }

        ++v146;
        *(v147 + 16) = v102 + 1;
        OUTLINED_FUNCTION_91(v147 + 48 * v102);
      }

      while (v100 != v146);

      v40 = v285;
    }

    else
    {

      v147 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v147 = 0;
  }

  OUTLINED_FUNCTION_373();
  v155 = sub_18F0128B8(v40);
  v244 = v147;
  if (v155)
  {
    v156 = v155;
    v100 = sub_18EFA0A7C(v155);
    v157 = 0;
    v284 = MEMORY[0x1E69E7CC0];
    v102 = off_1E72B0000;
    while (1)
    {
      if (v100 == v157)
      {

        OUTLINED_FUNCTION_373();
        goto LABEL_105;
      }

      if ((v156 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193AD8BA0](v157, v156);
      }

      else
      {
        if (v157 >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_136;
        }

        v158 = *(v156 + 8 * v157 + 32);
        swift_unknownObjectRetain();
      }

      v159 = v157 + 1;
      if (__OFADD__(v157, 1))
      {
        break;
      }

      objc_opt_self();
      v160 = swift_dynamicCastObjCClass();
      if (v160)
      {
        v161 = [v160 entityIdentifier];
        v162 = sub_18F093B8C();
        v164 = v163;

        swift_unknownObjectRelease();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v168 = *(v284 + 2);
          v169 = OUTLINED_FUNCTION_242();
          v284 = sub_18F00E7C8(v169, v170, v171, v172);
        }

        v166 = *(v284 + 2);
        v165 = *(v284 + 3);
        if (v166 >= v165 >> 1)
        {
          OUTLINED_FUNCTION_114(v165);
          OUTLINED_FUNCTION_339();
          v284 = sub_18F00E7C8(v173, v174, v175, v284);
        }

        *(v284 + 2) = v166 + 1;
        v167 = &v284[16 * v166];
        *(v167 + 4) = v162;
        *(v167 + 5) = v164;
        v157 = v159;
        v40 = v285;
      }

      else
      {
        swift_unknownObjectRelease();
        ++v157;
      }
    }

    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v284 = 0;
LABEL_105:
  v176 = [v40 visibilityMetadata];
  v283 = [v176 isDiscoverable];
  v241 = [v176 assistantOnly];

  v243 = sub_18F013BD0(v40, &selRef_fullyQualifiedTypeName);
  v242 = v177;
  v178 = sub_18F012778(v40, &selRef_constraints, &unk_1EACB6F30, off_1E72AFE70);
  if (v178)
  {
    v179 = v178;
    v180 = sub_18EFA0A7C(v178);
    if (v180)
    {
      v181 = v180;
      OUTLINED_FUNCTION_59(MEMORY[0x1E69E7CC0]);
      sub_18F00F340();
      if (v181 < 0)
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      v182 = 0;
      v183 = v292;
      do
      {
        if ((v179 & 0xC000000000000001) != 0)
        {
          v184 = MEMORY[0x193AD8BA0](v182, v179);
        }

        else
        {
          v184 = *(v179 + 8 * v182 + 32);
        }

        v185 = v184;
        sub_18EFE29D4(v102);

        v292 = v183;
        v187 = *(v183 + 16);
        v186 = *(v183 + 24);
        if (v187 >= v186 >> 1)
        {
          OUTLINED_FUNCTION_114(v186);
          OUTLINED_FUNCTION_339();
          sub_18F00F340();
          v183 = v292;
        }

        ++v182;
        *(v183 + 16) = v187 + 1;
        v188 = *(v100 + 80);
        OUTLINED_FUNCTION_149();
        sub_18EF88240(v102, v183 + v189 + *(v100 + 72) * v187);
      }

      while (v181 != v182);

      v40 = v285;
    }

    else
    {

      v183 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v183 = 0;
  }

  v190 = sub_18F012778(v40, &selRef_allowedTargets, &unk_1EACB72E8, off_1E72B01E8);
  if (v190)
  {
    v191 = v190;
    v192 = sub_18EFA0A7C(v190);
    if (v192)
    {
      v193 = v192;
      OUTLINED_FUNCTION_59(MEMORY[0x1E69E7CC0]);
      sub_18F00F308();
      if (v193 < 0)
      {
LABEL_143:
        __break(1u);
        return;
      }

      v194 = 0;
      v195 = v292;
      v286 = v191 & 0xC000000000000001;
      v287 = v193;
      v288 = v191;
      do
      {
        if (v286)
        {
          v196 = MEMORY[0x193AD8BA0](v194, v191);
        }

        else
        {
          v196 = *(v191 + 8 * v194 + 32);
        }

        v197 = v196;
        v198 = sub_18EFF17B4();
        v200 = v199;
        v202 = v201;
        v204 = v203;

        v292 = v195;
        v206 = *(v195 + 16);
        v205 = *(v195 + 24);
        if (v206 >= v205 >> 1)
        {
          OUTLINED_FUNCTION_114(v205);
          OUTLINED_FUNCTION_317();
          sub_18F00F308();
          v195 = v292;
        }

        ++v194;
        *(v195 + 16) = v206 + 1;
        v207 = (v195 + 32 * v206);
        v207[4] = v198;
        v207[5] = v200;
        v207[6] = v202;
        v207[7] = v204;
        v191 = v288;
      }

      while (v287 != v194);
    }

    else
    {

      v195 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {

    v195 = 0;
  }

  LODWORD(v288) = v246 == 0;
  LODWORD(v287) = v276 != 0;
  v208 = type metadata accessor for LNActionMetadata.CodableWrapper(0);
  v209 = v208[10];
  OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v210, v211, v212, v268);
  v233 = v208[11];
  OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v213, v214, v215, v264);
  v234 = v208[12];
  OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v216, v217, v218, v259);
  v219 = v208[14];
  v235 = v208[13];
  v236 = v208[15];
  v238 = v208[17];
  v237 = v208[18];
  v220 = v208[19];
  v269 = v208[21];
  v265 = v208[22];
  v260 = v208[23];
  v247 = v208[24];
  v221 = v208[25];
  v240 = v208[26];
  v239 = v208[27];
  v222 = v208[28];
  v223 = v208[29];
  v282 = v208[30];
  v277 = v208[31];
  v224 = v208[33];
  v286 = v208[32];
  v232 = v208[34];
  v285 = v208[35];
  *v281 = v279;
  v281[1] = v278;
  v281[2] = v275;
  v281[3] = v274;
  v281[4] = v273;
  v281[5] = v272;
  v281[6] = v271;
  v281[7] = v270;
  v281[8] = v290;
  v225 = v281 + v219;
  v226 = v281 + v220;
  v227 = (v281 + v221);
  v228 = (v281 + v222);
  v229 = v281 + v223;
  v290 = (v281 + v224);
  sub_18EF872D4();
  OUTLINED_FUNCTION_374();
  sub_18EF872D4();
  sub_18EF872D4();
  *(v281 + v235) = v267;
  *v225 = v266;
  v225[8] = 0;
  *(v281 + v236) = v263;
  *(v281 + v208[16]) = v280;
  *(v281 + v238) = v287;
  *(v281 + v237) = v262;
  *v226 = v261;
  v226[8] = 0;
  *(v281 + v208[20]) = v291;
  *(v281 + v232) = v183;
  *(v281 + v269) = v258;
  *(v281 + v265) = v257;
  *(v281 + v260) = v256;
  *(v281 + v247) = v255;
  *v227 = v254;
  v227[1] = v253;
  *(v281 + v240) = v252;
  *(v281 + v239) = v289;
  *v228 = v251;
  v228[1] = v250;
  *v229 = v249;
  *(v229 + 1) = v248;
  v229[16] = v288;
  *(v281 + v208[36]) = 0;
  *(v281 + v208[37]) = v245;
  *(v281 + v282) = v244;
  *(v281 + v277) = v284;
  if (v241)
  {
    v230 = 256;
  }

  else
  {
    v230 = 0;
  }

  *(v281 + v286) = v230 | v283;
  v231 = v290;
  *v290 = v243;
  v231[1] = v242;
  *(v285 + v281) = v195;
  OUTLINED_FUNCTION_259();
}

void sub_18EFEBE88(uint64_t *a1@<X8>)
{
  v2 = v1;
  *&v58 = _s14CodableWrapperVMa_0(0);
  v4 = *(v58 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v55 - v12;
  v13 = [v1 actionIdentifier];
  v14 = sub_18F093B8C();
  v16 = v15;

  v61 = v2;
  v17 = [v2 phraseTemplates];
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v18 = sub_18F093DCC();

  v19 = sub_18EFA0A7C(v18);
  v62 = a1;
  v59 = v16;
  v60 = v14;
  if (v19)
  {
    v20 = v19;
    *&v65[0] = MEMORY[0x1E69E7CC0];
    sub_18F00F0B8();
    if (v20 < 0)
    {
      __break(1u);
      return;
    }

    v21 = 0;
    v22 = *&v65[0];
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x193AD8BA0](v21, v18);
      }

      else
      {
        v23 = *(v18 + 8 * v21 + 32);
      }

      v24 = v23;
      sub_18EFD9154(v7);

      *&v65[0] = v22;
      v25 = *(v22 + 16);
      if (v25 >= *(v22 + 24) >> 1)
      {
        sub_18F00F0B8();
        v22 = *&v65[0];
      }

      ++v21;
      *(v22 + 16) = v25 + 1;
      sub_18EF88240(v7, v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25);
    }

    while (v20 != v21);
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  v26 = v58;
  v27 = v61;
  v28 = [v61 shortTitle];
  v30 = v63;
  v29 = v64;
  if (v28)
  {
    v31 = v28;
    sub_18EFD9154(v63);

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = 1;
  __swift_storeEnumTagSinglePayload(v30, v32, 1, v26);
  v34 = [v27 autoShortcutDescription];
  if (v34)
  {
    v35 = v34;
    sub_18EFD9154(v29);

    v33 = 0;
  }

  __swift_storeEnumTagSinglePayload(v29, v33, 1, v26);
  v36 = [v27 systemImageName];
  v37 = sub_18F093B8C();
  v39 = v38;

  v40 = [v27 parameterPresentation];
  if (v40)
  {
    v41 = v40;
    sub_18F002CF4(v65);
    v57 = v65[1];
    v58 = v65[0];
    v55 = v65[3];
    v56 = v65[2];
    v42 = v66;
    v43 = v67;
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    v55 = 0u;
  }

  v44 = sub_18F013B0C(v27);
  if (v44)
  {
    v45 = sub_18EFD61FC(v44);
  }

  else
  {
    v45 = 0;
  }

  v46 = v62;
  v47 = v59;
  *v62 = v60;
  v46[1] = v47;
  v46[2] = v22;
  v48 = _s14CodableWrapperVMa_29(0);
  v49 = v48[6];
  sub_18EF869B4();
  v50 = v48[7];
  sub_18EF869B4();
  v51 = (v46 + v48[8]);
  *v51 = v37;
  v51[1] = v39;
  v52 = v46 + v48[9];
  v53 = v57;
  *v52 = v58;
  *(v52 + 1) = v53;
  v54 = v55;
  *(v52 + 2) = v56;
  *(v52 + 3) = v54;
  *(v52 + 8) = v42;
  *(v52 + 9) = v43;
  *(v46 + v48[10]) = v45;
}

void LNEntityMetadata.wrapper(encodingContext:)()
{
  OUTLINED_FUNCTION_260();
  v2 = v0;
  v4 = v3;
  v221 = v5;
  v6 = _s14CodableWrapperVMa_12(0);
  v7 = OUTLINED_FUNCTION_45(v6);
  v231 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  OUTLINED_FUNCTION_95(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_135();
  v228 = v15;
  v16 = OUTLINED_FUNCTION_237();
  v226 = _s14CodableWrapperVMa_0(v16);
  v17 = OUTLINED_FUNCTION_7(v226);
  v230 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_42();
  v225 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v227 = &v200 - v24;
  v25 = OUTLINED_FUNCTION_237();
  v26 = _s14CodableWrapperVMa(v25);
  v27 = OUTLINED_FUNCTION_45(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_22();
  v34 = (v33 - v32);
  LODWORD(v224) = *v4;
  OUTLINED_FUNCTION_334(*(v4 + 1));
  LODWORD(v222) = v4[16];
  v35 = [v2 identifier];
  v36 = sub_18F093B8C();
  OUTLINED_FUNCTION_323(v36);
  v220 = v37;

  v219 = [v2 isTransient];
  v38 = [v2 mangledTypeName];
  v39 = sub_18F093B8C();
  OUTLINED_FUNCTION_365(v39);
  v217 = v40;

  v41 = [v2 mangledTypeNameByBundleIdentifier];
  v216 = sub_18F093A4C();

  v229 = v2;
  v42 = [v2 effectiveBundleIdentifiers];
  v43 = [v42 array];

  v44 = sub_18F093DCC();
  v45 = sub_18EFF3050(v44);

  if (v45)
  {
    v46 = sub_18EFA0A7C(v45);
    if (v46)
    {
      v47 = v46;
      OUTLINED_FUNCTION_11(MEMORY[0x1E69E7CC0]);
      sub_18F00F468();
      if (v47 < 0)
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_394();
      v232 = v48;
      do
      {
        if ((v45 & 0xC000000000000001) != 0)
        {
          v49 = MEMORY[0x193AD8BA0](v44, v45);
        }

        else
        {
          v49 = *(v45 + 8 * v44 + 32);
        }

        v50 = v49;
        sub_18EFF0A68(v34);

        v51 = v232;
        v236 = v232;
        v53 = *(v232 + 16);
        v52 = *(v232 + 24);
        if (v53 >= v52 >> 1)
        {
          OUTLINED_FUNCTION_54(v52);
          OUTLINED_FUNCTION_339();
          sub_18F00F468();
          v51 = v236;
        }

        ++v44;
        *(v51 + 16) = v53 + 1;
        v54 = *(v29 + 80);
        OUTLINED_FUNCTION_149();
        v232 = v55;
        v57 = v55 + v56 + *(v29 + 72) * v53;
        OUTLINED_FUNCTION_25();
        sub_18EF88240(v34, v58);
      }

      while (v47 != v44);
    }

    else
    {

      v232 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v232 = 0;
  }

  v59 = v229;
  v60 = &selRef_scrollProtocol;
  v61 = [v229 displayRepresentation];
  v62 = [v61 name];

  sub_18EFD9154(v227);
  v63 = [v59 displayRepresentation];
  v64 = [v63 numericFormat];

  if (v64)
  {
    v65 = v228;
    sub_18EFD9154(v228);

    v66 = 0;
  }

  else
  {
    v66 = 1;
    v65 = v228;
  }

  __swift_storeEnumTagSinglePayload(v65, v66, 1, v226);
  v67 = v59;
  v68 = [v59 properties];
  sub_18EF825F4(0, &qword_1ED5FE780, off_1E72B0108);
  OUTLINED_FUNCTION_272();
  v69 = sub_18F093DCC();

  v70 = sub_18EFA0A7C(v69);
  if (!v70)
  {

    v73 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v71 = v70;
  OUTLINED_FUNCTION_11(MEMORY[0x1E69E7CC0]);
  sub_18F00F518();
  if (v71 < 0)
  {
    __break(1u);
    goto LABEL_89;
  }

  v72 = 0;
  v73 = v236;
  do
  {
    if ((v69 & 0xC000000000000001) != 0)
    {
      v74 = OUTLINED_FUNCTION_368();
      v75 = MEMORY[0x193AD8BA0](v74);
    }

    else
    {
      v75 = *(v69 + 8 * v72 + 32);
    }

    v76 = v75;
    sub_18EFF5DCC(v1);

    v236 = v73;
    v78 = *(v73 + 16);
    v77 = *(v73 + 24);
    if (v78 >= v77 >> 1)
    {
      OUTLINED_FUNCTION_54(v77);
      sub_18F00F518();
      v73 = v236;
    }

    ++v72;
    *(v73 + 16) = v78 + 1;
    v79 = *(v231 + 80);
    OUTLINED_FUNCTION_149();
    v81 = *(v80 + 72);
    v82 = OUTLINED_FUNCTION_173();
    sub_18EF88240(v82, v83);
  }

  while (v71 != v72);

  v67 = v229;
LABEL_28:
  v84 = sub_18F013BD0(v67, &selRef_customIntentTypeClassName);
  v86 = v85;
  v87 = sub_18F013B0C(v67);
  if (v87)
  {
    v88 = sub_18EFD61FC(v87);
    OUTLINED_FUNCTION_345(v88, &v237);
  }

  else
  {
    v214 = 0;
  }

  v89 = v225;
  v90 = sub_18F012924([v67 displayRepresentation]);
  v225 = v73;
  v215 = v86;
  if (!v90)
  {
    v95 = 0;
    goto LABEL_44;
  }

  v91 = v90;
  v92 = sub_18EFA0A7C(v90);
  if (!v92)
  {

    v95 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

  v93 = v92;
  OUTLINED_FUNCTION_11(MEMORY[0x1E69E7CC0]);
  sub_18F00F0B8();
  if (v93 < 0)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v94 = 0;
  v95 = v236;
  v60 = v91 & 0xC000000000000001;
  do
  {
    if (v60)
    {
      v96 = OUTLINED_FUNCTION_186();
      v97 = MEMORY[0x193AD8BA0](v96);
    }

    else
    {
      v97 = *(v91 + 8 * v94 + 32);
    }

    v98 = v97;
    sub_18EFD9154(v89);

    v236 = v95;
    v100 = *(v95 + 16);
    v99 = *(v95 + 24);
    if (v100 >= v99 >> 1)
    {
      OUTLINED_FUNCTION_54(v99);
      sub_18F00F0B8();
      v95 = v236;
    }

    ++v94;
    *(v95 + 16) = v100 + 1;
    v101 = *(v230 + 80);
    OUTLINED_FUNCTION_149();
    v103 = *(v102 + 72);
    OUTLINED_FUNCTION_1_1();
    sub_18EF88240(v89, v104);
  }

  while (v93 != v94);

  v67 = v229;
LABEL_44:
  v212 = v95;
  v105 = sub_18F012778(v67, &selRef_requiredCapabilities, qword_1ED5FEEC8, off_1E72B0150);
  v213 = v84;
  if (!v105)
  {
    v211 = 0;
    goto LABEL_58;
  }

  v60 = v105;
  v106 = sub_18EFA0A7C(v105);
  if (v106)
  {
    v107 = v106;
    OUTLINED_FUNCTION_11(MEMORY[0x1E69E7CC0]);
    sub_18F00F3D8();
    if ((v107 & 0x8000000000000000) == 0)
    {
      v108 = 0;
      v109 = v236;
      do
      {
        if ((v60 & 0xC000000000000001) != 0)
        {
          v110 = OUTLINED_FUNCTION_273();
          v111 = MEMORY[0x193AD8BA0](v110);
        }

        else
        {
          v111 = OUTLINED_FUNCTION_353();
        }

        v112 = v111;
        sub_18EFF39C0(&v235);

        v236 = v109;
        v114 = *(v109 + 16);
        v113 = *(v109 + 24);
        if (v114 >= v113 >> 1)
        {
          OUTLINED_FUNCTION_41(v113);
          sub_18F00F3D8();
          v109 = v236;
        }

        ++v108;
        *(v109 + 16) = v114 + 1;
        OUTLINED_FUNCTION_356(v109 + 40 * v114);
      }

      while (v107 != v108);

      v67 = v229;
      goto LABEL_57;
    }

LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v109 = MEMORY[0x1E69E7CC0];
LABEL_57:
  v211 = v109;
LABEL_58:
  v115 = [v67 systemProtocolMetadata];
  OUTLINED_FUNCTION_295();
  type metadata accessor for LNSystemEntityProtocolIdentifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
  OUTLINED_FUNCTION_61();
  sub_18EF8558C(v116);
  OUTLINED_FUNCTION_357();
  OUTLINED_FUNCTION_288();
  v117 = sub_18F093A4C();

  v118 = v223;

  v119 = v224;
  v120 = v222;
  v210 = sub_18F0112DC(v117, v224, v118, v222, &qword_1EACB87E8);

  v121 = [v229 systemProtocolMetadata];
  OUTLINED_FUNCTION_288();
  v122 = v229;
  v123 = sub_18F093A4C();

  v124 = sub_18F01178C(v123, v119, v118, v120, &qword_1EACB87E8, &qword_18F0A13B8);

  v125 = sub_18F013BD0(v122, &selRef_attributionBundleIdentifier);
  v127 = v126;
  v128 = [v122 transferableContentTypes];
  v129 = sub_18F012778(v122, &selRef_assistantDefinedSchemas, qword_1ED5FE9A0, off_1E72AFF10);
  v224 = v124;
  v223 = v125;
  v222 = v127;
  v209 = v128;
  if (!v129)
  {
    v137 = 0;
    goto LABEL_71;
  }

  v130 = v129;
  v131 = sub_18EFA0A7C(v129);
  if (!v131)
  {

    v137 = MEMORY[0x1E69E7CC0];
    goto LABEL_71;
  }

  v132 = v131;
  v133 = OUTLINED_FUNCTION_59(MEMORY[0x1E69E7CC0]);
  sub_18F00F398(v133, v134, v135);
  if (v132 < 0)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v136 = 0;
  v137 = v233;
  do
  {
    if ((v130 & 0xC000000000000001) != 0)
    {
      v138 = OUTLINED_FUNCTION_273();
      v139 = MEMORY[0x193AD8BA0](v138);
    }

    else
    {
      v139 = OUTLINED_FUNCTION_353();
    }

    v140 = v139;
    OUTLINED_FUNCTION_412();

    v233 = v137;
    v142 = *(v137 + 16);
    v141 = *(v137 + 24);
    if (v142 >= v141 >> 1)
    {
      v143 = OUTLINED_FUNCTION_114(v141);
      v122 = &v233;
      sub_18F00F398(v143, v142 + 1, 1);
      v137 = v233;
    }

    ++v136;
    *(v137 + 16) = v142 + 1;
    OUTLINED_FUNCTION_91(v137 + 48 * v142);
  }

  while (v132 != v136);

  v122 = v229;
LABEL_71:
  v144 = sub_18F013BD0(v122, &selRef_fullyQualifiedTypeName);
  v146 = v145;
  v147 = [v122 visibilityMetadata];
  v148 = [v147 isDiscoverable];
  v149 = [v147 assistantOnly];

  v150 = sub_18F013BD0(v122, &selRef_defaultQueryIdentifier);
  v152 = v151;
  v153 = sub_18F012778(v122, &selRef_allowedTargets, &unk_1EACB72E8, off_1E72B01E8);
  v208 = v144;
  v207 = v146;
  v206 = v150;
  v205 = v152;
  LODWORD(v204) = v148;
  LODWORD(v203) = v149;
  if (v153)
  {
    v154 = v153;
    v155 = sub_18EFA0A7C(v153);
    if (v155)
    {
      v156 = v155;
      OUTLINED_FUNCTION_59(MEMORY[0x1E69E7CC0]);
      sub_18F00F308();
      if ((v156 & 0x8000000000000000) == 0)
      {
        v157 = 0;
        v158 = v233;
        v229 = v154 & 0xC000000000000001;
        v230 = v156;
        v231 = v154;
        do
        {
          if (v229)
          {
            v159 = MEMORY[0x193AD8BA0](v157, v154);
          }

          else
          {
            v159 = *(v154 + 8 * v157 + 32);
          }

          v160 = v159;
          v161 = sub_18EFF17B4();
          v163 = v162;
          v165 = v164;
          v167 = v166;

          v233 = v158;
          v169 = *(v158 + 16);
          v168 = *(v158 + 24);
          if (v169 >= v168 >> 1)
          {
            OUTLINED_FUNCTION_114(v168);
            sub_18F00F308();
            v158 = v233;
          }

          ++v157;
          *(v158 + 16) = v169 + 1;
          v170 = (v158 + 32 * v169);
          v170[4] = v161;
          v170[5] = v163;
          v170[6] = v165;
          v170[7] = v167;
          v154 = v231;
        }

        while (v230 != v157);

        goto LABEL_84;
      }

LABEL_93:
      __break(1u);
      return;
    }

    v158 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v158 = 0;
  }

LABEL_84:
  OUTLINED_FUNCTION_305(&v234);
  if (v172)
  {
    v171 = 0;
  }

  LODWORD(v231) = v171 | v204;
  v173 = type metadata accessor for LNEntityMetadata.CodableWrapper(0);
  v202 = v173[10];
  v174 = v221;
  OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v175, v176, v177, v226);
  v178 = v173[12];
  v179 = v173[13];
  v180 = v173[15];
  v229 = v173[14];
  v230 = v179;
  v226 = v180;
  v181 = v173[17];
  v204 = v173[16];
  v203 = v181;
  *(v174 + v181) = 0;
  v182 = (v174 + v173[18]);
  *v182 = 0;
  v182[1] = 0;
  v201 = v173[19];
  *(v174 + v201) = 0;
  v200 = v173[20];
  *(v174 + v200) = 0;
  v183 = (v174 + v178);
  v184 = (v174 + v173[21]);
  *v184 = 0;
  v184[1] = 0;
  v185 = v173[22];
  *(v174 + v185) = 2;
  v186 = (v174 + v173[23]);
  *v186 = 0;
  v186[1] = 0;
  v187 = v173[24];
  *(v174 + v187) = 0;
  OUTLINED_FUNCTION_326();
  *v174 = v189;
  *(v174 + 8) = v188;
  *(v174 + 16) = v219;
  v190 = v217;
  *(v174 + 24) = v218;
  *(v174 + 32) = v190;
  v191 = v232;
  *(v174 + 40) = v216;
  *(v174 + 48) = v191;
  v192 = v173[9];
  OUTLINED_FUNCTION_1_1();
  sub_18EF88240(v227, v174 + v193);
  sub_18EF872D4();
  *(v174 + v173[11]) = v225;
  v194 = v215;
  *v183 = v213;
  v183[1] = v194;
  v195 = v229;
  *(v174 + v230) = v214;
  *(v174 + v195) = v212;
  *(v174 + v226) = v211;
  *(v174 + v204) = v210;
  *(v174 + v203) = v224;
  OUTLINED_FUNCTION_116();
  *v182 = v197;
  v182[1] = v196;
  *(v174 + v201) = v209;
  *(v174 + v200) = v137;
  v198 = v207;
  *v184 = v208;
  v184[1] = v198;
  *(v174 + v185) = v231;
  v199 = v205;
  *v186 = v206;
  v186[1] = v199;
  *(v174 + v187) = v158;
  OUTLINED_FUNCTION_259();
}

void sub_18EFED20C(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7310, &qword_18F09BD48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v143 = &v123 - v5;
  v6 = _s14CodableWrapperVMa_35(0);
  v130 = *(v6 - 8);
  v7 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = _s14CodableWrapperVMa_33(0);
  v146 = *(v10 - 8);
  v11 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s14CodableWrapperVMa(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = (&v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = v1;
  v19 = [v1 effectiveBundleIdentifiers];
  v20 = [v19 array];

  v21 = sub_18F093DCC();
  v22 = sub_18EFF3050(v21);

  v142 = a1;
  v144 = v13;
  if (v22)
  {
    v23 = sub_18EFA0A7C(v22);
    if (v23)
    {
      v24 = v23;
      v153 = MEMORY[0x1E69E7CC0];
      sub_18F00F468();
      if (v24 < 0)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v25 = 0;
      v147 = v153;
      v26 = v9;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x193AD8BA0](v25, v22);
        }

        else
        {
          v27 = *(v22 + 8 * v25 + 32);
        }

        v28 = v27;
        sub_18EFF0A68(v18);

        v29 = v147;
        v153 = v147;
        v30 = *(v147 + 16);
        if (v30 >= *(v147 + 24) >> 1)
        {
          sub_18F00F468();
          v29 = v153;
        }

        ++v25;
        *(v29 + 16) = v30 + 1;
        v31 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v147 = v29;
        sub_18EF88240(v18, v29 + v31 + *(v15 + 72) * v30);
      }

      while (v24 != v25);
      v9 = v26;
    }

    else
    {

      v147 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v147 = 0;
  }

  v32 = v145;
  v33 = [v145 resultValueType];
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    v35 = [v34 identifier];

    v36 = sub_18F093B8C();
    v140 = v37;
    v141 = v36;
  }

  else
  {

    v140 = 0xE000000000000000;
    v141 = 0;
  }

  v38 = [v32 identifier];
  v39 = sub_18F093B8C();
  v138 = v40;

  v41 = [v32 identifier];
  v42 = sub_18F093B8C();
  v44 = v43;

  v153 = v42;
  v154 = v44;
  v151 = 45;
  v152 = 0xE100000000000000;
  v149 = 46;
  v150 = 0xE100000000000000;
  sub_18EFB30C8();
  v45 = sub_18F093F8C();
  v136 = v46;
  v137 = v45;

  v47 = [v32 inputValueType];
  if (v47)
  {
    v48 = v47;
    v49 = sub_18EFD1A70();
  }

  else
  {
    v49 = 0xF000000000000007;
  }

  v50 = [v32 resultValueType];
  v134 = sub_18EFD1A70();

  v51 = [v32 mangledTypeName];
  v133 = sub_18F093B8C();
  v132 = v52;

  v53 = [v32 mangledTypeNameByBundleIdentifier];
  v131 = sub_18F093A4C();

  v54 = [v32 parameters];
  sub_18EF825F4(0, &qword_1ED5FE338, off_1E72B0130);
  v55 = sub_18F093DCC();

  v56 = sub_18EFA0A7C(v55);
  v139 = v39;
  v135 = v49;
  if (v56)
  {
    v57 = v56;
    v153 = MEMORY[0x1E69E7CC0];
    sub_18F00F5C8();
    if (v57 < 0)
    {
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v58 = 0;
    v148 = v153;
    v59 = v144;
    do
    {
      if ((v55 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x193AD8BA0](v58, v55);
      }

      else
      {
        v60 = *(v55 + 8 * v58 + 32);
      }

      v61 = v60;
      sub_18EFFAF24(v59);

      v62 = v148;
      v153 = v148;
      v63 = *(v148 + 16);
      if (v63 >= *(v148 + 24) >> 1)
      {
        sub_18F00F5C8();
        v62 = v153;
      }

      ++v58;
      *(v62 + 16) = v63 + 1;
      v64 = (*(v146 + 80) + 32) & ~*(v146 + 80);
      v148 = v62;
      sub_18EF88240(v59, v62 + v64 + *(v146 + 72) * v63);
    }

    while (v57 != v58);

    v32 = v145;
  }

  else
  {

    v148 = MEMORY[0x1E69E7CC0];
  }

  v65 = [v32 sortingOptions];
  sub_18EF825F4(0, &qword_1ED5FE320, off_1E72B0140);
  v66 = sub_18F093DCC();

  v67 = sub_18EFA0A7C(v66);
  v68 = v143;
  if (!v67)
  {

    v71 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  v69 = v67;
  v153 = MEMORY[0x1E69E7CC0];
  sub_18F00F570();
  if (v69 < 0)
  {
    goto LABEL_66;
  }

  v70 = 0;
  v71 = v153;
  v72 = v130;
  do
  {
    if ((v66 & 0xC000000000000001) != 0)
    {
      v73 = MEMORY[0x193AD8BA0](v70, v66);
    }

    else
    {
      v73 = *(v66 + 8 * v70 + 32);
    }

    v74 = v73;
    sub_18EFFB568(v9);

    v153 = v71;
    v75 = *(v71 + 16);
    if (v75 >= *(v71 + 24) >> 1)
    {
      sub_18F00F570();
      v71 = v153;
    }

    ++v70;
    *(v71 + 16) = v75 + 1;
    sub_18EF88240(v9, v71 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v75);
  }

  while (v69 != v70);

  v68 = v143;
  v32 = v145;
LABEL_42:
  v76 = sub_18F013B0C(v32);
  if (v76)
  {
    v77 = sub_18EFD61FC(v76);
  }

  else
  {
    v77 = 0;
  }

  v78 = [v32 capabilities];
  v79 = [v32 descriptionMetadata];
  if (v79)
  {
    v80 = v79;
    sub_18EFF315C(v68);

    v81 = 0;
  }

  else
  {
    v81 = 1;
  }

  v82 = _s14CodableWrapperVMa_1(0);
  __swift_storeEnumTagSinglePayload(v68, v81, 1, v82);
  v83 = [v32 visibilityMetadata];
  v84 = [v83 isDiscoverable];
  v127 = [v83 assistantOnly];

  LODWORD(v83) = [v32 defaultQueryForEntity];
  v85 = sub_18F013BD0(v32, &selRef_fullyQualifiedIdentifier);
  v87 = v86;
  v88 = sub_18F012778(v32, &selRef_allowedTargets, &unk_1EACB72E8, off_1E72B01E8);
  LODWORD(v130) = v83;
  v129 = v85;
  v128 = v87;
  if (v88)
  {
    v89 = v88;
    v90 = sub_18EFA0A7C(v88);
    if (v90)
    {
      v91 = v90;
      v126 = v84;
      v153 = MEMORY[0x1E69E7CC0];
      sub_18F00F308();
      if ((v91 & 0x8000000000000000) == 0)
      {
        v124 = v78;
        v125 = v77;
        v92 = 0;
        v93 = v153;
        v144 = v89 & 0xC000000000000001;
        v145 = v91;
        v146 = v89;
        do
        {
          if (v144)
          {
            v94 = MEMORY[0x193AD8BA0](v92, v89);
          }

          else
          {
            v94 = *(v89 + 8 * v92 + 32);
          }

          v95 = v94;
          v96 = sub_18EFF17B4();
          v98 = v97;
          v100 = v99;
          v102 = v101;

          v153 = v93;
          v103 = *(v93 + 16);
          if (v103 >= *(v93 + 24) >> 1)
          {
            sub_18F00F308();
            v93 = v153;
          }

          v92 = v92 + 1;
          *(v93 + 16) = v103 + 1;
          v104 = (v93 + 32 * v103);
          v104[4] = v96;
          v104[5] = v98;
          v104[6] = v100;
          v104[7] = v102;
          v89 = v146;
        }

        while (v145 != v92);

        v77 = v125;
        v78 = v124;
        LOWORD(v84) = v126;
        goto LABEL_61;
      }

LABEL_68:
      __break(1u);
      return;
    }

    v93 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v93 = 0;
  }

LABEL_61:
  v106 = v147;
  v105 = v148;
  v108 = v140;
  v107 = v141;
  v110 = v137;
  v109 = v138;
  v111 = v136;
  v112 = v134;
  v113 = v133;
  v114 = v132;
  v115 = v131;
  if (v127)
  {
    v116 = 256;
  }

  else
  {
    v116 = 0;
  }

  v117 = v142;
  *v142 = v139;
  v117[1] = v109;
  v118 = v116 | v84;
  v117[2] = v110;
  v117[3] = v111;
  v117[4] = v107;
  v117[5] = v108;
  v117[6] = v135;
  v117[7] = v112;
  v117[8] = v113;
  v117[9] = v114;
  v117[10] = v115;
  v117[11] = v106;
  v117[12] = v105;
  v117[13] = v71;
  v117[14] = v77;
  v117[15] = v78;
  *(v117 + 128) = 0;
  v119 = _s14CodableWrapperVMa_32(0);
  v120 = v119[16];
  sub_18EF869B4();
  *(v117 + v119[17]) = v118;
  *(v117 + v119[18]) = v130;
  v121 = (v117 + v119[19]);
  v122 = v128;
  *v121 = v129;
  v121[1] = v122;
  *(v117 + v119[20]) = v93;
}

void LNEnumMetadata.wrapper.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_260();
  a20 = v23;
  a21 = v24;
  v193 = v25;
  v26 = _s14CodableWrapperVMa_18(0);
  v27 = OUTLINED_FUNCTION_45(v26);
  v200 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_22();
  v33 = (v32 - v31);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  OUTLINED_FUNCTION_95(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_133(v38, v180);
  v39 = _s14CodableWrapperVMa_0(0);
  v40 = OUTLINED_FUNCTION_7(v39);
  v197 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_42();
  v196 = v44 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v194 = &v180 - v47;
  v48 = OUTLINED_FUNCTION_237();
  v49 = _s14CodableWrapperVMa(v48);
  v50 = OUTLINED_FUNCTION_45(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_22();
  v57 = (v56 - v55);
  v198 = v21;
  v58 = [v21 effectiveBundleIdentifiers];
  v59 = [v58 array];

  v60 = sub_18F093DCC();
  v61 = sub_18EFF3050(v60);

  if (v61)
  {
    v62 = sub_18EFA0A7C(v61);
    if (v62)
    {
      v63 = v62;
      OUTLINED_FUNCTION_11(MEMORY[0x1E69E7CC0]);
      sub_18F00F468();
      if (v63 < 0)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v199 = v39;
      v64 = 0;
      v201 = v203;
      v22 = v61 & 0xC000000000000001;
      do
      {
        if (v22)
        {
          v65 = MEMORY[0x193AD8BA0](v64, v61);
        }

        else
        {
          v65 = *(v61 + 8 * v64 + 32);
        }

        v66 = v65;
        sub_18EFF0A68(v57);

        v67 = v201;
        v203 = v201;
        v69 = *(v201 + 16);
        v68 = *(v201 + 24);
        if (v69 >= v68 >> 1)
        {
          OUTLINED_FUNCTION_54(v68);
          sub_18F00F468();
          v67 = v203;
        }

        ++v64;
        *(v67 + 16) = v69 + 1;
        v70 = *(v52 + 80);
        OUTLINED_FUNCTION_149();
        v201 = v71;
        v72 = *(v52 + 72);
        OUTLINED_FUNCTION_25();
        sub_18EF88240(v57, v73);
      }

      while (v63 != v64);

      v39 = v199;
    }

    else
    {

      v201 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v201 = 0;
  }

  v74 = v198;
  v75 = [v198 identifier];
  v76 = sub_18F093B8C();
  v191 = v77;
  v192 = v76;

  v78 = [v74 mangledTypeName];
  v79 = sub_18F093B8C();
  v189 = v80;
  v190 = v79;

  v81 = [v74 mangledTypeNameByBundleIdentifier];
  v188 = sub_18F093A4C();

  v82 = [v74 displayRepresentation];
  v83 = [v82 name];

  sub_18EFD9154(v194);
  v84 = [v74 displayRepresentation];
  v85 = [v84 numericFormat];

  if (v85)
  {
    v86 = v195;
    sub_18EFD9154(v195);

    v87 = 0;
  }

  else
  {
    v87 = 1;
    v86 = v195;
  }

  __swift_storeEnumTagSinglePayload(v86, v87, 1, v39);
  v88 = [v74 cases];
  sub_18EF825F4(0, &qword_1ED5FDFF0, off_1E72B0040);
  OUTLINED_FUNCTION_272();
  v89 = sub_18F093DCC();

  v90 = sub_18EFA0A7C(v89);
  if (!v90)
  {

    v199 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v91 = v90;
  OUTLINED_FUNCTION_11(MEMORY[0x1E69E7CC0]);
  sub_18F00F620();
  if (v91 < 0)
  {
    __break(1u);
    goto LABEL_78;
  }

  v88 = 0;
  v92 = v203;
  do
  {
    if ((v89 & 0xC000000000000001) != 0)
    {
      v93 = OUTLINED_FUNCTION_273();
      v94 = MEMORY[0x193AD8BA0](v93);
    }

    else
    {
      v94 = OUTLINED_FUNCTION_353();
    }

    v85 = v94;
    sub_18F00045C(v33);

    v203 = v92;
    v22 = *(v92 + 16);
    v95 = *(v92 + 24);
    v39 = v22 + 1;
    if (v22 >= v95 >> 1)
    {
      OUTLINED_FUNCTION_41(v95);
      sub_18F00F620();
      v92 = v203;
    }

    ++v88;
    *(v92 + 16) = v39;
    v96 = *(v200 + 80);
    OUTLINED_FUNCTION_149();
    v98 = *(v97 + 72);
    OUTLINED_FUNCTION_179();
    sub_18EF88240(v33, v99);
  }

  while (v91 != v88);
  v199 = v92;

  v74 = v198;
LABEL_28:
  v100 = sub_18F013BD0(v74, &selRef_customIntentEnumTypeName);
  OUTLINED_FUNCTION_234(v100);
  v187 = v101;
  v102 = sub_18F013B0C(v74);
  v104 = v196;
  v103 = v197;
  if (v102)
  {
    v88 = v102;
    v105 = sub_18EFD61FC(v102);
    OUTLINED_FUNCTION_281(v105);
  }

  else
  {
    v186 = 0;
  }

  v106 = [v74 isSystem];
  if (v106)
  {
    v88 = v106;
    v185 = [v106 BOOLValue];
  }

  else
  {
    v185 = 2;
  }

  v107 = sub_18F012924([v74 displayRepresentation]);
  if (!v107)
  {
    v200 = 0;
    goto LABEL_47;
  }

  v108 = v107;
  v109 = sub_18EFA0A7C(v107);
  if (!v109)
  {

    v200 = MEMORY[0x1E69E7CC0];
    goto LABEL_47;
  }

  v110 = v109;
  OUTLINED_FUNCTION_11(MEMORY[0x1E69E7CC0]);
  sub_18F00F0B8();
  if (v110 < 0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_394();
  v200 = v111;
  do
  {
    if ((v108 & 0xC000000000000001) != 0)
    {
      v112 = OUTLINED_FUNCTION_340();
      v113 = MEMORY[0x193AD8BA0](v112);
    }

    else
    {
      v113 = *(v108 + 8 * v88 + 32);
    }

    v85 = v113;
    sub_18EFD9154(v104);

    OUTLINED_FUNCTION_129();
    if (v116)
    {
      OUTLINED_FUNCTION_41(v114);
      sub_18F00F0B8();
      v115 = v203;
    }

    ++v88;
    *(v115 + 16) = v39;
    v117 = *(v103 + 80);
    OUTLINED_FUNCTION_149();
    v200 = v118;
    v120 = v118 + v119 + *(v103 + 72) * v22;
    OUTLINED_FUNCTION_1_1();
    sub_18EF88240(v104, v121);
  }

  while (v110 != v88);

LABEL_47:
  v122 = v199;
  v123 = sub_18F013BD0(v74, &selRef_fullyQualifiedTypeName);
  v125 = v124;
  v126 = sub_18F012778(v74, &selRef_assistantDefinedSchemas, qword_1ED5FE9A0, off_1E72AFF10);
  v184 = v123;
  v183 = v125;
  if (!v126)
  {
    v134 = 0;
    goto LABEL_60;
  }

  v127 = v126;
  v128 = sub_18EFA0A7C(v126);
  if (!v128)
  {

    v134 = MEMORY[0x1E69E7CC0];
    goto LABEL_60;
  }

  v129 = v128;
  v130 = OUTLINED_FUNCTION_92(MEMORY[0x1E69E7CC0]);
  sub_18F00F398(v130, v131, v132);
  if (v129 < 0)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v133 = 0;
  v134 = v202;
  do
  {
    if ((v127 & 0xC000000000000001) != 0)
    {
      v135 = OUTLINED_FUNCTION_257();
      v136 = MEMORY[0x193AD8BA0](v135);
    }

    else
    {
      v136 = *(v127 + 8 * v133 + 32);
    }

    v137 = v136;
    OUTLINED_FUNCTION_412();

    v202 = v134;
    v139 = *(v134 + 16);
    v138 = *(v134 + 24);
    if (v139 >= v138 >> 1)
    {
      v140 = OUTLINED_FUNCTION_114(v138);
      v85 = &v202;
      sub_18F00F398(v140, v139 + 1, 1);
      v134 = v202;
    }

    ++v133;
    *(v134 + 16) = v139 + 1;
    OUTLINED_FUNCTION_91(v134 + 48 * v139);
  }

  while (v129 != v133);

  v122 = v199;
LABEL_60:
  v141 = [v74 visibilityMetadata];
  v142 = [v141 isDiscoverable];
  v143 = [v141 assistantOnly];

  v144 = sub_18F012778(v74, &selRef_allowedTargets, &unk_1EACB72E8, off_1E72B01E8);
  v182 = v143;
  if (v144)
  {
    v145 = v144;
    v146 = sub_18EFA0A7C(v144);
    if (v146)
    {
      v147 = v146;
      v181 = v142;
      OUTLINED_FUNCTION_92(MEMORY[0x1E69E7CC0]);
      sub_18F00F308();
      if ((v147 & 0x8000000000000000) == 0)
      {
        v148 = 0;
        v149 = v202;
        v196 = v145 & 0xC000000000000001;
        v197 = v147;
        v198 = v145;
        do
        {
          if (v196)
          {
            v150 = OUTLINED_FUNCTION_340();
            v151 = MEMORY[0x193AD8BA0](v150);
          }

          else
          {
            v151 = *(v145 + 8 * v148 + 32);
          }

          v152 = v151;
          v153 = sub_18EFF17B4();
          v155 = v154;
          v157 = v156;
          v159 = v158;

          v202 = v149;
          v161 = *(v149 + 16);
          v160 = *(v149 + 24);
          if (v161 >= v160 >> 1)
          {
            OUTLINED_FUNCTION_114(v160);
            sub_18F00F308();
            v149 = v202;
          }

          ++v148;
          *(v149 + 16) = v161 + 1;
          v162 = (v149 + 32 * v161);
          v162[4] = v153;
          v162[5] = v155;
          v162[6] = v157;
          v162[7] = v159;
          v145 = v198;
          v122 = v199;
        }

        while (v197 != v148);

        LOWORD(v142) = v181;
        goto LABEL_73;
      }

LABEL_81:
      __break(1u);
      return;
    }

    v149 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v149 = 0;
  }

LABEL_73:
  OUTLINED_FUNCTION_305(&a13);
  if (v170)
  {
    v163 = 0;
  }

  v171 = v193;
  *v193 = v165;
  v171[1] = v166;
  v172 = v163 | v142;
  v171[2] = v167;
  v171[3] = v168;
  v171[4] = v169;
  v171[5] = v164;
  v173 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  v174 = v173[8];
  OUTLINED_FUNCTION_1_1();
  sub_18EF88240(v194, v171 + v175);
  v176 = v173[9];
  sub_18EF869B4();
  *(v171 + v173[10]) = v122;
  OUTLINED_FUNCTION_255((v171 + v173[11]));
  *(v171 + v177) = v178;
  *(v171 + v173[13]) = v185;
  *(v171 + v173[14]) = v200;
  OUTLINED_FUNCTION_286((v171 + v173[15]));
  *(v171 + v179) = v134;
  *(v171 + v173[17]) = v172;
  *(v171 + v173[18]) = v149;
  OUTLINED_FUNCTION_259();
}

void sub_18EFEE868(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = _s14CodableWrapperVMa_0(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 intentIdentifier];
  v10 = sub_18F093B8C();
  v12 = v11;

  v13 = [v2 phraseTemplates];
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v14 = sub_18F093DCC();

  v15 = sub_18EFA0A7C(v14);
  v35 = v12;
  if (v15)
  {
    v16 = v15;
    v36 = MEMORY[0x1E69E7CC0];
    sub_18F00F0B8();
    if (v16 < 0)
    {
      __break(1u);
      return;
    }

    v32 = v10;
    v33 = v2;
    v34 = a1;
    v17 = 0;
    v18 = v36;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AD8BA0](v17, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v17 + 32);
      }

      v20 = v19;
      sub_18EFD9154(v8);

      v36 = v18;
      v21 = *(v18 + 16);
      if (v21 >= *(v18 + 24) >> 1)
      {
        sub_18F00F0B8();
        v18 = v36;
      }

      ++v17;
      *(v18 + 16) = v21 + 1;
      sub_18EF88240(v8, v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21);
    }

    while (v16 != v17);

    v2 = v33;
    a1 = v34;
    v10 = v32;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  v22 = [v2 parameterValues];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8650, &qword_18F0A1290);
  v23 = sub_18F093A4C();

  v24 = sub_18F00B4CC(v23);

  v25 = [v2 impliedValues];
  sub_18EF825F4(0, &qword_1ED5FE060, off_1E72B0218);
  v26 = sub_18F093A4C();

  v27 = sub_18F00B8D4(v26);

  v28 = sub_18F013B0C(v2);
  if (v28)
  {
    v29 = sub_18EFD61FC(v28);
  }

  else
  {
    v29 = 0;
  }

  v30 = v35;
  *a1 = v10;
  a1[1] = v30;
  a1[2] = v18;
  a1[3] = v24;
  a1[4] = v27;
  a1[5] = v29;
}

void sub_18EFEEBCC()
{
  v1 = _s14CodableWrapperVMa_0(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 intentIdentifier];
  v7 = sub_18F093B8C();
  v9 = v8;

  v10 = [v0 phrases];
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v11 = sub_18F093DCC();

  v12 = sub_18EFA0A7C(v11);
  if (!v12)
  {
LABEL_10:

    return;
  }

  v13 = v12;
  v20 = MEMORY[0x1E69E7CC0];
  sub_18F00F0B8();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v19[1] = v9;
    v19[2] = v7;
    v14 = 0;
    v15 = v20;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x193AD8BA0](v14, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v14 + 32);
      }

      v17 = v16;
      sub_18EFD9154(v5);

      v20 = v15;
      v18 = *(v15 + 16);
      if (v18 >= *(v15 + 24) >> 1)
      {
        sub_18F00F0B8();
        v15 = v20;
      }

      ++v14;
      *(v15 + 16) = v18 + 1;
      sub_18EF88240(v5, v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v18);
    }

    while (v13 != v14);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_18EFEEE1C()
{
  v1 = _s14CodableWrapperVMa_0(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 entityIdentifier];
  v7 = sub_18F093B8C();
  v9 = v8;

  v10 = [v0 kind];
  v11 = [v0 phraseTemplates];
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v12 = sub_18F093DCC();

  v13 = sub_18EFA0A7C(v12);
  if (!v13)
  {
LABEL_10:

    return;
  }

  v14 = v13;
  v21 = MEMORY[0x1E69E7CC0];
  sub_18F00F0B8();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v20[0] = v10;
    v20[1] = v9;
    v20[2] = v7;
    v15 = 0;
    v16 = v21;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193AD8BA0](v15, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v15 + 32);
      }

      v18 = v17;
      sub_18EFD9154(v5);

      v21 = v16;
      v19 = *(v16 + 16);
      if (v19 >= *(v16 + 24) >> 1)
      {
        sub_18F00F0B8();
        v16 = v21;
      }

      ++v15;
      *(v16 + 16) = v19 + 1;
      sub_18EF88240(v5, v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v19);
    }

    while (v14 != v15);
    goto LABEL_10;
  }

  __break(1u);
}

id sub_18EFEF08C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v16 - v8;
  v10 = _s14CodableWrapperVMa_29(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18EF825F4(0, &qword_1ED5FEC28, off_1E72AFF60);
  sub_18EF86A14(a1, v13);
  sub_18EF9FE2C();
  v14 = a2;
  result = sub_18EFA89F4(v13, v9, a2);
  *a3 = result;
  return result;
}

void sub_18EFEF1E4(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  v10 = _s14CodableWrapperVMa_0(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  sub_18EF86A14(a1, v13);
  sub_18EF9FE2C();
  v14 = a2;
  v15 = sub_18EFA8ED8(v13, 0x74726F6853707041, 0xEC00000073747563, v9, a2);
  v16 = [objc_allocWithZone(LNAppShortcutNegativePhrase) initWithPhrase_];

  *a3 = v16;
}

uint64_t LNExamplePhraseDescriptions.phraseDescriptions.getter()
{
  v2 = *v0;
  v83 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = MEMORY[0x1E69E7CC0];
  v88 = v4;
  v93 = v3;
  if (*(*v0 + 16))
  {
    v109 = MEMORY[0x1E69E7CC0];
    sub_18F09411C();
    do
    {
      if (*(v2 + 80))
      {
        OUTLINED_FUNCTION_383();
      }

      else
      {
        OUTLINED_FUNCTION_403();
      }

      OUTLINED_FUNCTION_239();
      v6 = objc_allocWithZone(LNExamplePhraseDescription);
      OUTLINED_FUNCTION_352();

      OUTLINED_FUNCTION_107(0, v7, v8, v9, v10, v11, v12, v13, v1, v78, v83, v88, v93, v99, v104);
      v14 = OUTLINED_FUNCTION_415();
      OUTLINED_FUNCTION_155(v14, v15, v16, v17, v18, v19, v20, v21, v74, v79, v84, v89, v94, v100, v105, v109);
      OUTLINED_FUNCTION_189();
      sub_18F09413C();
      sub_18F09410C();
      OUTLINED_FUNCTION_382();
    }

    while (!v22);
    v5 = v109;
    v4 = v88;
    v3 = v93;
  }

  v23 = v83;
  if (*(v83 + 16))
  {
    v83 = v5;
    OUTLINED_FUNCTION_346();
    do
    {
      if (*(v23 + 80))
      {
        OUTLINED_FUNCTION_383();
      }

      else
      {
        OUTLINED_FUNCTION_403();
      }

      OUTLINED_FUNCTION_239();
      v24 = objc_allocWithZone(LNExamplePhraseDescription);
      OUTLINED_FUNCTION_352();

      OUTLINED_FUNCTION_107(2, v25, v26, v27, v28, v29, v30, v31, v1, v78, v83, v88, v93, v99, v104);
      v32 = OUTLINED_FUNCTION_415();
      OUTLINED_FUNCTION_155(v32, v33, v34, v35, v36, v37, v38, v39, v75, v80, v85, v90, v95, v101, v106, v109);
      OUTLINED_FUNCTION_189();
      sub_18F09413C();
      sub_18F09410C();
      OUTLINED_FUNCTION_382();
    }

    while (!v22);
    v4 = v88;
    v3 = v93;
  }

  OUTLINED_FUNCTION_72();
  if (*(v4 + 16))
  {
    v83 = v109;
    OUTLINED_FUNCTION_346();
    v40 = v4 + 112;
    do
    {
      if (*(v40 - 32))
      {
        OUTLINED_FUNCTION_383();
      }

      else
      {
        OUTLINED_FUNCTION_403();
      }

      OUTLINED_FUNCTION_239();
      v41 = objc_allocWithZone(LNExamplePhraseDescription);
      OUTLINED_FUNCTION_352();

      OUTLINED_FUNCTION_107(3, v42, v43, v44, v45, v46, v47, v48, v1, v78, v83, v88, v93, v99, v104);
      v49 = OUTLINED_FUNCTION_415();
      OUTLINED_FUNCTION_155(v49, v50, v51, v52, v53, v54, v55, v56, v76, v81, v86, v91, v96, v102, v107, v109);
      OUTLINED_FUNCTION_189();
      sub_18F09413C();
      sub_18F09410C();
      OUTLINED_FUNCTION_382();
    }

    while (!v22);
    v3 = v93;
  }

  OUTLINED_FUNCTION_72();
  if (*(v3 + 16))
  {
    v97 = v109;
    OUTLINED_FUNCTION_346();
    do
    {
      if (*(v3 + 80))
      {
        OUTLINED_FUNCTION_383();
      }

      else
      {
        OUTLINED_FUNCTION_403();
      }

      OUTLINED_FUNCTION_239();
      v57 = objc_allocWithZone(LNExamplePhraseDescription);
      OUTLINED_FUNCTION_352();

      OUTLINED_FUNCTION_107(4, v58, v59, v60, v61, v62, v63, v64, v1, v78, v83, v88, v97, v99, v104);
      v65 = OUTLINED_FUNCTION_415();
      OUTLINED_FUNCTION_155(v65, v66, v67, v68, v69, v70, v71, v72, v77, v82, v87, v92, v98, v103, v108, v109);
      OUTLINED_FUNCTION_189();
      sub_18F09413C();
      sub_18F09410C();
      OUTLINED_FUNCTION_382();
    }

    while (!v22);
  }

  OUTLINED_FUNCTION_72();
  return v109;
}

id sub_18EFEF650@<X0>(__int128 *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13[-v8];
  v10 = a1[1];
  v14 = *a1;
  v15 = v10;
  v16 = a1[2];
  sub_18EF825F4(0, qword_1ED5FE4D8, off_1E72AFF20);
  *v17 = *a1;
  *&v17[3] = v15;
  v17[7] = *(&v16 + 1);
  v17[5] = v16;
  sub_18EF9FE2C();
  sub_18F019F40(v17, v13);
  sub_18EF9FE2C();
  sub_18EF9FE2C();
  sub_18EF9FE2C();
  sub_18EF9FE2C();
  v11 = a2;
  result = sub_18EFEF7F4(&v14, v9, a2);
  *a3 = result;
  return result;
}

id sub_18EFEF7F4(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = *a1;
  v7 = a1[1];
  v23 = sub_18F093B5C();
  v8 = a1[2];
  v27 = a2;
  v28 = a3;

  sub_18EF9D97C(sub_18EFA3E10);

  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v22 = sub_18F093DBC();

  v29 = a1[3];
  v25 = a2;
  v26 = a3;
  sub_18F0123CC(sub_18F019BFC, v24, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8650, &qword_18F0A1290);
  v9 = sub_18F093A3C();

  v11 = a1[4];
  if (v11)
  {
    MEMORY[0x1EEE9AC00](v10);
    v21[2] = a2;
    v21[3] = a3;

    sub_18EFE1D28(sub_18EFC77D8, v21, v11);
  }

  else
  {
    sub_18EF825F4(0, &qword_1ED5FE060, off_1E72B0218);
    sub_18F093A5C();
  }

  sub_18EF825F4(0, &qword_1ED5FE060, off_1E72B0218);
  v12 = sub_18F093A3C();

  if (a1[5])
  {
    v13 = a1[5];

    sub_18EF94FC0(v14);

    sub_18EF933AC(&v29, &unk_1EACB77C0);

    type metadata accessor for LNPlatformName();
    sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    sub_18EF8558C(&qword_1ED5FFA38);
    v15 = sub_18F093A3C();
  }

  else
  {

    sub_18EF933AC(&v29, &unk_1EACB77C0);
    v15 = 0;
  }

  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = v23;
  v18 = v22;
  v19 = [v16 initWithIntentIdentifier:v23 phraseTemplates:v22 parameterValues:v9 impliedValues:v12 availabilityAnnotations:v15];

  sub_18EF933AC(a2, &qword_1EACB72C8);
  return v19;
}

id sub_18EFEFBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_18F093B5C();

  sub_18EF9D97C(sub_18EFA3E10);
  swift_bridgeObjectRelease_n();

  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v9 = sub_18F093DBC();

  v10 = [v7 initWithIntentIdentifier:v8 phrases:v9];

  sub_18EF933AC(a4, &qword_1EACB72C8);
  return v10;
}

id sub_18EFEFCE8@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v16 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  sub_18EF825F4(0, &unk_1ED5FE410, off_1E72AFF08);
  sub_18EF9FE2C();
  v13 = a2;

  result = sub_18EFEFE08(v10, v9, v11, v12, v8, a2);
  *v16 = result;
  return result;
}

id sub_18EFEFE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = sub_18F093B5C();

  sub_18EF9D97C(sub_18EFA3E10);
  swift_bridgeObjectRelease_n();

  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v11 = sub_18F093DBC();

  v12 = [v9 initWithEntityIdentifier:v10 kind:a3 phraseTemplates:v11];

  sub_18EF933AC(a5, &qword_1EACB72C8);
  return v12;
}

void static LNBundleMetadata.fromJSON(_:)()
{
  OUTLINED_FUNCTION_180();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_55();
  v6 = sub_18F093BCC();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_22();
  sub_18F093BBC();
  sub_18F093B9C();
  v13 = v12;
  v14 = *(v9 + 8);
  v15 = OUTLINED_FUNCTION_266();
  v16(v15);
  if (v13 >> 60 == 15)
  {
    sub_18F0129F0(v34);
  }

  else
  {
    v17 = sub_18F09302C();
    OUTLINED_FUNCTION_277(v17);
    v18 = OUTLINED_FUNCTION_252();
    sub_18EF844C4(v18, v19);
    sub_18F09301C();
    sub_18EFBC84C();
    sub_18F09300C();

    v20 = OUTLINED_FUNCTION_252();
    sub_18EF9A498(v20, v21);
    v22 = OUTLINED_FUNCTION_252();
    sub_18EF9A498(v22, v23);
    if (v0)
    {
      v24 = v0;
      goto LABEL_8;
    }

    nullsub_1(v34);
  }

  memcpy(v33, v34, sizeof(v33));
  if (sub_18F0129F8(v33) != 1)
  {
    memcpy(v35, v33, 0x98uLL);
    sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
    OUTLINED_FUNCTION_138();
    sub_18F0932BC();
    OUTLINED_FUNCTION_171();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    memset(v32, 0, sizeof(v32));
    sub_18EFC5A60(v35, v1, 0, v32);
    goto LABEL_10;
  }

  sub_18EFD2EC8();
  v24 = OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_38(v24, v25);
LABEL_8:
  sub_18EFD2EC8();
  v26 = OUTLINED_FUNCTION_249();
  *v27 = v24;
  OUTLINED_FUNCTION_278(v26, v27);
LABEL_10:
  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_177();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNBundleMetadata.asJson(prettyPrinted:)(Swift::Bool prettyPrinted)
{
  type metadata accessor for LNPlatformName();
  OUTLINED_FUNCTION_2();
  sub_18EF8558C(v1);
  sub_18F093A5C();
  LNBundleMetadata.asJson(encodingContext:)();
  OUTLINED_FUNCTION_48();

  v2 = OUTLINED_FUNCTION_49();
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t LNBundleMetadata.JSONEncodingContext.init(minimumDeploymentTargets:prettyPrinted:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

void LNBundleMetadata.asJson(encodingContext:)()
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_138();
  v1 = sub_18F09305C();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  v8 = *v0;
  v27 = *(v0 + 1);
  v9 = v0[16];
  v10 = sub_18F0930BC();
  OUTLINED_FUNCTION_277(v10);
  sub_18F0930AC();
  if (v8 == 1)
  {
    sub_18F09304C();
    v11 = sub_18F09306C();
    OUTLINED_FUNCTION_323(v11);
    v12 = OUTLINED_FUNCTION_265();
    sub_18EFD2A7C(v12, v13);
    v14 = *(v4 + 8);
    v15 = OUTLINED_FUNCTION_184();
    v14(v15);
    v16 = OUTLINED_FUNCTION_230();
    v14(v16);
    v26(&v28, 0);
  }

  if (v9)
  {
    sub_18F09303C();
    v17 = sub_18F09306C();
    v18 = OUTLINED_FUNCTION_265();
    sub_18EFD2A7C(v18, v19);
    v20 = *(v4 + 8);
    v21 = OUTLINED_FUNCTION_184();
    v20(v21);
    v22 = OUTLINED_FUNCTION_230();
    v20(v22);
    v17(&v28, 0);
  }

  v28 = v8;
  OUTLINED_FUNCTION_372();
  v29 = v23;
  v30 = v9;
  sub_18EFE9D4C(&v28, v31);
  sub_18EFD2F1C();
  OUTLINED_FUNCTION_48();

  sub_18EFC4784(v31);
  if (v9)
  {
    sub_18EFD2EC8();
    v24 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_43(v24, v25);
  }

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_177();
}

uint64_t LNBundleMetadata.JSONEncodingContext.init(minimumDeploymentTargets:prettyPrinted:sortedKeys:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a2;
  *(a4 + 8) = result;
  *(a4 + 16) = a3;
  return result;
}

uint64_t LNBundleMetadata.JSONEncodingContext.minimumDeploymentTargets.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_18EFF0568(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000018F0AE4E0 == a2;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7107189 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18EFF0680(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7AC0, &qword_18F0A0C00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF86678();
  sub_18F0945BC();
  v16 = *v3;
  v15[7] = 0;
  type metadata accessor for LNEffectiveBundleIdentifierType(0);
  sub_18EF8558C(&unk_1EACB7AD0);
  sub_18F0943CC();
  if (!v2)
  {
    v11 = v3[1];
    v12 = v3[2];
    v15[6] = 1;
    sub_18F09437C();
    v13 = *(_s14CodableWrapperVMa(0) + 24);
    v15[5] = 2;
    sub_18F0932BC();
    sub_18EF8558C(&unk_1EACB6B48);
    sub_18F09436C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFF09B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFF0568(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFF09D8(uint64_t a1)
{
  v2 = sub_18EF86678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFF0A14(uint64_t a1)
{
  v2 = sub_18EF86678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFF0A68@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = [v2 type];
  v9 = [v2 bundleIdentifier];
  v10 = sub_18F093B8C();
  v12 = v11;

  v13 = [v2 url];
  if (v13)
  {
    v14 = v13;
    sub_18F09327C();

    v15 = sub_18F0932BC();
    v16 = 0;
  }

  else
  {
    v15 = sub_18F0932BC();
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v16, 1, v15);
  *a1 = v8;
  a1[1] = v10;
  a1[2] = v12;
  v17 = *(_s14CodableWrapperVMa(0) + 24);
  return sub_18EF869B4();
}

uint64_t sub_18EFF0BBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000018F0AE6D0 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000018F0AE6F0 == a2;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x800000018F0AE710 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18EFF0CD8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7E48, &qword_18F0A0DA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF9CCD8();
  sub_18F0945BC();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_18F09433C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v18[14] = 1;
    sub_18F09433C();
    v15 = v3[4];
    v16 = v3[5];
    v18[13] = 2;
    sub_18F09433C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFF0E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFF0BBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFF0E8C(uint64_t a1)
{
  v2 = sub_18EF9CCD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFF0EC8(uint64_t a1)
{
  v2 = sub_18EF9CCD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFF0F04(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_18EFF0CD8(a1);
}

id LNActionAuthenticationPolicy.init(nsNumber:)(id a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 integerValue];

  return v2;
}

uint64_t sub_18EFF0F90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_296();
    OUTLINED_FUNCTION_354();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFF1000(uint64_t a1)
{
  v2 = sub_18F01E2E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFF103C(uint64_t a1)
{
  v2 = sub_18F01E2E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18EFF1078(void *a1@<X8>)
{
  sub_18EFA1880();
  if (!v1)
  {
    *a1 = v3;
  }
}

id sub_18EFF1118(uint64_t a1, uint64_t *a2, SEL *a3)
{
  if (a1)
  {
    return 0;
  }

  v4 = *a2;
  return [objc_opt_self() *a3];
}

uint64_t sub_18EFF1160(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000018F0AE4E0 == a2;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F697469646E6F63 && a2 == 0xEA0000000000736ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18EFF1280(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x6F697469646E6F63;
}

uint64_t sub_18EFF12D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[1] = a3;
  v15[2] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7EC8, &qword_18F0A0DE8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F0177E4();
  sub_18F0945BC();
  v18 = 0;
  sub_18F0943AC();
  if (!v5)
  {
    v17 = 1;
    sub_18F09433C();
    v15[3] = a5;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7ED8, &qword_18F0A0DF0);
    sub_18F017838();
    sub_18F09436C();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_18EFF149C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB80A0, &qword_18F0A0F68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F0177E4();
  sub_18F09459C();
  v10[31] = 0;
  v8 = sub_18F0942AC();
  v10[30] = 1;
  sub_18F09423C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7ED8, &qword_18F0A0DF0);
  v10[29] = 2;
  sub_18F01843C();
  sub_18F09426C();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_18EFF16C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFF1160(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFF16F0(uint64_t a1)
{
  v2 = sub_18F0177E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFF172C(uint64_t a1)
{
  v2 = sub_18F0177E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFF17B4()
{
  v1 = [v0 type];
  sub_18F013BD0(v0, &selRef_bundleIdentifier);
  v2 = sub_18F012778(v0, &selRef_conditions, &qword_1EACB8848, off_1E72B01F0);
  if (!v2)
  {
    return v1;
  }

  v3 = v2;
  result = sub_18EFA0A7C(v2);
  v5 = result;
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v6)
    {

      return v1;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x193AD8BA0](v6, v3);
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      result = *(v3 + 8 * v6 + 32);
    }

    v8 = result;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v9 = [result identifier];

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_18F00E8D0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v11 = *(v7 + 16);
    v10 = *(v7 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_18F00E8D0((v10 > 1), v11 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v11 + 1;
    *(v7 + 8 * v11 + 32) = v9;
    ++v6;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

id sub_18EFF196C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v6 = sub_18F093B5C();

  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_3:
  v13 = v6;
  v14 = a1;
  v15 = MEMORY[0x1E69E7CC0];
  v7 = *(a4 + 16);
  if (v7)
  {
    sub_18EF825F4(0, &qword_1EACB8848, off_1E72B01F0);
    v8 = (a4 + 32);
    do
    {
      v9 = *v8++;
      if (sub_18EFF1118(v9, off_1E72B01F0, &selRef_foregroundCondition))
      {
        MEMORY[0x193AD88C0]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18F093DFC();
        }

        sub_18F093E3C();
      }

      --v7;
    }

    while (v7);
  }

  sub_18EF825F4(0, &qword_1EACB8848, off_1E72B01F0);
  v10 = sub_18F093DBC();
  v6 = v13;
  a1 = v14;
LABEL_13:

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithType:a1 bundleIdentifier:v6 conditions:v10];

  return v11;
}

uint64_t sub_18EFF1B38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5464656C676E616DLL && a2 == 0xEF656D614E657079;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000021 && 0x800000018F0ADDD0 == a2;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x800000018F0ADE00 == a2;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000023 && 0x800000018F0ADE20 == a2;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001ALL && 0x800000018F0ADE50 == a2;
            if (v10 || (sub_18F09444C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
              if (v11 || (sub_18F09444C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x800000018F0ADE70 == a2;
                if (v12 || (sub_18F09444C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x800000018F0ADE90 == a2;
                  if (v13 || (sub_18F09444C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x577070416E65706FLL && a2 == 0xEE006E75526E6568;
                    if (v14 || (sub_18F09444C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6574726F70707573 && a2 == 0xEE007365646F4D64;
                      if (v15 || (sub_18F09444C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x766F637369447369 && a2 == 0xEE00656C62617265;
                        if (v16 || (sub_18F09444C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000014 && 0x800000018F0ADEB0 == a2;
                          if (v17 || (sub_18F09444C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000011 && 0x800000018F0ADED0 == a2;
                            if (v18 || (sub_18F09444C() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x795474757074756FLL && a2 == 0xEA00000000006570;
                              if (v19 || (sub_18F09444C() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6C4674757074756FLL && a2 == 0xEB00000000736761;
                                if (v20 || (sub_18F09444C() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
                                  if (v21 || (sub_18F09444C() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000016 && 0x800000018F0ADEF0 == a2;
                                    if (v22 || (sub_18F09444C() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000018 && 0x800000018F0ADF10 == a2;
                                      if (v23 || (sub_18F09444C() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000013 && 0x800000018F0ADF30 == a2;
                                        if (v24 || (sub_18F09444C() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000014 && 0x800000018F0ADF50 == a2;
                                          if (v25 || (sub_18F09444C() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000015 && 0x800000018F0ADF70 == a2;
                                            if (v26 || (sub_18F09444C() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000017 && 0x800000018F0ADF90 == a2;
                                              if (v27 || (sub_18F09444C() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000014 && 0x800000018F0ADFB0 == a2;
                                                if (v28 || (sub_18F09444C() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD00000000000001BLL && 0x800000018F0ADFD0 == a2;
                                                  if (v29 || (sub_18F09444C() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x6566664565646973 && a2 == 0xEA00000000007463;
                                                    if (v30 || (sub_18F09444C() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000017 && 0x800000018F0ADFF0 == a2;
                                                      if (v31 || (sub_18F09444C() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD00000000000001CLL && 0x800000018F0AE010 == a2;
                                                        if (v32 || (sub_18F09444C() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000012 && 0x800000018F0AE030 == a2;
                                                          if (v33 || (sub_18F09444C() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000016 && 0x800000018F0AE050 == a2;
                                                            if (v34 || (sub_18F09444C() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x69617274736E6F63 && a2 == 0xEB0000000073746ELL;
                                                              if (v35 || (sub_18F09444C() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x546465776F6C6C61 && a2 == 0xEE00737465677261;
                                                                if (v36 || (sub_18F09444C() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD000000000000011 && 0x800000018F0AE070 == a2;
                                                                  if (v37 || (sub_18F09444C() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else if (a1 == 0x72506D6574737973 && a2 == 0xEF736C6F636F746FLL)
                                                                  {

                                                                    return 33;
                                                                  }

                                                                  else
                                                                  {
                                                                    v39 = sub_18F09444C();

                                                                    if (v39)
                                                                    {
                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      return 34;
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18EFF252C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFF1B38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFF2554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFF2524();
  *a1 = result;
  return result;
}

uint64_t sub_18EFF257C(uint64_t a1)
{
  v2 = sub_18EF85AD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFF25B8(uint64_t a1)
{
  v2 = sub_18EF85AD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LNActionMetadata.CodableWrapper.encode(to:)()
{
  OUTLINED_FUNCTION_180();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB73A0, &qword_18F09BD78);
  OUTLINED_FUNCTION_7(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_80();
  sub_18EF85AD8();
  OUTLINED_FUNCTION_214();
  v8 = *v0;
  v9 = v0[1];
  OUTLINED_FUNCTION_109();
  sub_18F09437C();
  if (v1)
  {
    v22 = *(v4 + 8);
    v23 = OUTLINED_FUNCTION_137();
    v24(v23);
  }

  else
  {
    v10 = v0[2];
    v11 = v0[3];
    OUTLINED_FUNCTION_58(1);
    sub_18F09437C();
    v40 = v0[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
    OUTLINED_FUNCTION_79(&unk_1EACB73B8);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_109();
    sub_18F09436C();
    v12 = v0[5];
    v13 = v0[6];
    OUTLINED_FUNCTION_58(3);
    sub_18F09433C();
    v41 = v0[7];
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_109();
    sub_18F09436C();
    v42 = v0[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73C0, &qword_18F09BD88);
    sub_18F012A58();
    OUTLINED_FUNCTION_4_0();
    sub_18F09436C();
    v14 = type metadata accessor for LNActionMetadata.CodableWrapper(0);
    v15 = v14[10];
    _s14CodableWrapperVMa_0(0);
    OUTLINED_FUNCTION_5();
    sub_18EF8558C(v16);
    OUTLINED_FUNCTION_14();
    sub_18F09436C();
    v17 = v14[11];
    _s14CodableWrapperVMa_1(0);
    OUTLINED_FUNCTION_196();
    sub_18EF8558C(v18);
    OUTLINED_FUNCTION_14();
    sub_18F09436C();
    v19 = v14[12];
    _s14CodableWrapperVMa_8(0);
    OUTLINED_FUNCTION_195();
    sub_18EF8558C(v20);
    OUTLINED_FUNCTION_14();
    sub_18F09436C();
    v21 = *(v0 + v14[13]);
    OUTLINED_FUNCTION_96();
    sub_18F09434C();
    OUTLINED_FUNCTION_325(v14[14]);
    v25 = OUTLINED_FUNCTION_364(10);
    type metadata accessor for LNActionModes(v25);
    OUTLINED_FUNCTION_194();
    sub_18EF8558C(v26);
    OUTLINED_FUNCTION_4_0();
    sub_18F09436C();
    v27 = *(v0 + v14[15]);
    OUTLINED_FUNCTION_96();
    sub_18F09434C();
    OUTLINED_FUNCTION_147(v14[16]);
    v28 = OUTLINED_FUNCTION_364(12);
    type metadata accessor for LNActionAuthenticationPolicy(v28);
    OUTLINED_FUNCTION_193();
    sub_18EF8558C(v29);
    OUTLINED_FUNCTION_4_0();
    sub_18F0943CC();
    v30 = *(v0 + v14[17]);
    OUTLINED_FUNCTION_96();
    sub_18F09434C();
    OUTLINED_FUNCTION_147(v14[18]);
    sub_18F012B0C();
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_109();
    sub_18F09436C();
    OUTLINED_FUNCTION_325(v14[19]);
    v31 = OUTLINED_FUNCTION_364(15);
    type metadata accessor for LNActionOutputFlags(v31);
    OUTLINED_FUNCTION_192();
    sub_18EF8558C(v32);
    OUTLINED_FUNCTION_4_0();
    sub_18F09436C();
    OUTLINED_FUNCTION_147(v14[20]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7410, &qword_18F09BD90);
    sub_18F012B60();
    OUTLINED_FUNCTION_4_0();
    sub_18F0943CC();
    OUTLINED_FUNCTION_147(v14[21]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7428, &qword_18F09BD98);
    sub_18F012C14();
    OUTLINED_FUNCTION_4_0();
    sub_18F09436C();
    OUTLINED_FUNCTION_147(v14[22]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7438, &qword_18F09BDA0);
    OUTLINED_FUNCTION_175();
    sub_18EF8992C(v33);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_109();
    sub_18F0943CC();
    OUTLINED_FUNCTION_147(v14[23]);
    sub_18F012CD0();
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_109();
    sub_18F09436C();
    OUTLINED_FUNCTION_147(v14[24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7450, &qword_18F09BDA8);
    sub_18F012D24();
    OUTLINED_FUNCTION_4_0();
    sub_18F09436C();
    OUTLINED_FUNCTION_233(v14[25]);
    OUTLINED_FUNCTION_58(21);
    sub_18F09433C();
    OUTLINED_FUNCTION_147(v14[26]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18F012DE0();
    OUTLINED_FUNCTION_4_0();
    sub_18F09436C();
    OUTLINED_FUNCTION_147(v14[27]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7488, &qword_18F09BDB8);
    sub_18F012EC0();
    OUTLINED_FUNCTION_4_0();
    sub_18F09436C();
    OUTLINED_FUNCTION_233(v14[28]);
    OUTLINED_FUNCTION_58(24);
    sub_18F09433C();
    v34 = v0 + v14[29];
    v43 = *v34;
    v45 = v34[16];
    sub_18F012F98();
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_109();
    sub_18F09436C();
    OUTLINED_FUNCTION_147(v14[30]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74A8, &qword_18F09BDC0);
    sub_18F012FEC();
    OUTLINED_FUNCTION_4_0();
    sub_18F09436C();
    OUTLINED_FUNCTION_147(v14[31]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74C0, &qword_18F09BDC8);
    sub_18F0130C4();
    OUTLINED_FUNCTION_4_0();
    sub_18F09436C();
    v44 = *(v0 + v14[32]);
    sub_18F01319C();
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_109();
    sub_18F09436C();
    OUTLINED_FUNCTION_233(v14[33]);
    OUTLINED_FUNCTION_58(29);
    sub_18F09433C();
    OUTLINED_FUNCTION_147(v14[34]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74E0, &qword_18F09BDD0);
    sub_18F0131F0();
    OUTLINED_FUNCTION_4_0();
    sub_18F09436C();
    OUTLINED_FUNCTION_147(v14[35]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74F8, &qword_18F09BDD8);
    sub_18F0132A4();
    OUTLINED_FUNCTION_4_0();
    sub_18F09436C();
    OUTLINED_FUNCTION_147(v14[36]);
    v35 = OUTLINED_FUNCTION_364(32);
    type metadata accessor for LNActionPresentationStyle(v35);
    OUTLINED_FUNCTION_207();
    sub_18EF8558C(v36);
    OUTLINED_FUNCTION_4_0();
    sub_18F0943CC();
    OUTLINED_FUNCTION_147(v14[37]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7518, &qword_18F09BDE0);
    sub_18F01337C();
    OUTLINED_FUNCTION_4_0();
    sub_18F0943CC();
    v37 = *(v4 + 8);
    v38 = OUTLINED_FUNCTION_137();
    v39(v38);
  }

  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_177();
}

uint64_t sub_18EFF2E98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7438, &qword_18F09BDA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7528, &qword_18F09BDE8);
  sub_18EF8992C(&unk_1ED5FEC10);
  result = sub_18F09426C();
  if (!v0)
  {
    if (v2 == 1)
    {
      return 0;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

uint64_t sub_18EFF2F68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB75E8, &qword_18F09BE40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7608, &qword_18F09BE48);
  sub_18EF8992C(&unk_1ED5FE3E8);
  result = sub_18F09426C();
  if (!v0)
  {
    if (v2 == 1)
    {
      return 0;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

uint64_t sub_18EFF3050(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_18F09411C();
  v3 = a1 + 32;
  if (!v2)
  {
    return v7;
  }

  while (1)
  {
    sub_18EFB6E2C(v3, v6);
    sub_18EF825F4(0, &qword_1ED5FF350, off_1E72AFFF8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_18F0940FC();
    v4 = *(v7 + 16);
    sub_18F09412C();
    sub_18F09413C();
    sub_18F09410C();
    v3 += 32;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void sub_18EFF315C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7868, &qword_18F09DA68);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v49 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7860, &qword_18F09DA60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v49 - v14;
  v51 = _s14CodableWrapperVMa_0(0);
  v16 = *(v51 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v51);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v49 - v21;
  v23 = [v1 descriptionText];
  v52 = v22;
  sub_18EFD9154(v22);

  v24 = [v2 categoryName];
  v55 = v11;
  if (v24)
  {
    v25 = v24;
    sub_18EFE6608(v15);

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = _s14CodableWrapperVMa_2(0);
  __swift_storeEnumTagSinglePayload(v15, v26, 1, v27);
  v54 = v2;
  v28 = [v2 searchKeywords];
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v29 = sub_18F093DCC();

  v30 = sub_18EFA0A7C(v29);
  v53 = v15;
  if (v30)
  {
    v31 = v30;
    v56 = MEMORY[0x1E69E7CC0];
    sub_18F00F0B8();
    if (v31 < 0)
    {
      __break(1u);
      return;
    }

    v49 = v7;
    v50 = a1;
    v32 = 0;
    v33 = v56;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x193AD8BA0](v32, v29);
      }

      else
      {
        v34 = *(v29 + 8 * v32 + 32);
      }

      v35 = v34;
      sub_18EFD9154(v20);

      v56 = v33;
      v36 = *(v33 + 16);
      if (v36 >= *(v33 + 24) >> 1)
      {
        sub_18F00F0B8();
        v33 = v56;
      }

      ++v32;
      *(v33 + 16) = v36 + 1;
      sub_18EF88240(v20, v33 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v36);
    }

    while (v31 != v32);

    v7 = v49;
    a1 = v50;
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  v37 = v54;
  v38 = [v54 resultValueName];
  v39 = v55;
  if (v38)
  {
    v40 = v38;
    sub_18EFD9154(v55);

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  __swift_storeEnumTagSinglePayload(v39, v41, 1, v51);
  v42 = [v37 icon];
  if (v42)
  {
    v43 = v42;
    sub_18EFF87D8(v7);
  }

  else
  {
    v44 = _s14CodableWrapperVMa_5(0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v44);
  }

  sub_18EF88240(v52, a1);
  v45 = _s14CodableWrapperVMa_1(0);
  v46 = v45[5];
  sub_18EF869B4();
  *(a1 + v45[6]) = v33;
  v47 = v45[7];
  sub_18EF869B4();
  v48 = v45[8];
  sub_18EF869B4();
}

uint64_t sub_18EFF3640@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_18EFB6E2C(a1, v36);
  if (swift_dynamicCast())
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v33;
    *(v4 + 24) = v34;
    v5 = v4 | 0x2000000000000000;
LABEL_17:
    *a2 = v5;
    return __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
  if (swift_dynamicCast())
  {
    v6 = *(v33 + 16);
    if (v6)
    {
      v37 = MEMORY[0x1E69E7CC0];
      sub_18F00F678();
      v7 = v37;
      v8 = (v33 + 40);
      do
      {
        v10 = *(v8 - 1);
        v9 = *v8;
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = v9;
        v37 = v7;
        v13 = v7[2];
        v12 = v7[3];

        if (v13 >= v12 >> 1)
        {
          sub_18F00F678();
          v7 = v37;
        }

        v7[2] = v13 + 1;
        v7[v13 + 4] = v11 | 0x2000000000000000;
        v8 += 2;
        --v6;
      }

      while (v6);
    }

    else
    {

      v7 = MEMORY[0x1E69E7CC0];
    }

    v25 = swift_allocObject();
    *(v25 + 16) = v7;
    v5 = v25 | 0xD000000000000000;
    goto LABEL_17;
  }

  sub_18EF825F4(0, &qword_1ED5FF428, off_1E72B0020);
  if (swift_dynamicCast())
  {
    v14 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7DB8, &qword_18F0A0D78);
    v15 = swift_allocBox();
    LNEntityMetadata.wrapper(encodingContext:)();

    v16 = 0xA000000000000000;
LABEL_14:
    v5 = v15 | v16;
    goto LABEL_17;
  }

  sub_18EF825F4(0, &qword_1ED5FF268, off_1E72B0048);
  if (swift_dynamicCast())
  {
    v17 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7DA0, &qword_18F0A0D70);
    v15 = swift_allocBox();
    LNEnumMetadata.wrapper.getter(v15, v18, v19, v20, v21, v22, v23, v24, v28, v29, v30, v31, SHIDWORD(v31), v32, v33, v34, v35, v36[0], v36[1], v36[2], v36[3]);

    v16 = 0xB000000000000000;
    goto LABEL_14;
  }

  sub_18F09406C();
  MEMORY[0x193AD8780](0xD000000000000036, 0x800000018F0AE3C0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  swift_getDynamicType();
  v27 = sub_18F0945EC();
  MEMORY[0x193AD8780](v27);

  result = sub_18F0941AC();
  __break(1u);
  return result;
}

id sub_18EFF39C0@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 domain];
  v4 = sub_18F093B8C();
  v6 = v5;

  v7 = [v1 key];
  v8 = sub_18F093B8C();
  v10 = v9;

  result = [v1 value];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = result;
  return result;
}

void sub_18EFF3A6C(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = _s14CodableWrapperVMa_8(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18EF825F4(0, &unk_1EACB6FB0, off_1E72AFE78);
  sub_18EF86A14(a1, v11);
  sub_18EF9FE2C();
  v12 = a2;
  sub_18F002110();
  *a3 = v13;
}

uint64_t sub_18EFF3BF4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v16 - v8;
  v10 = _s14CodableWrapperVMa_10(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18EF825F4(0, &unk_1ED5FFA18, off_1E72AFEA8);
  sub_18EF86A14(a1, v13);
  sub_18EF9FE2C();
  v14 = a2;
  result = sub_18EF9E184(v13, v9, a2);
  *a3 = result;
  return result;
}

id sub_18EFF3D4C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v16 - v8;
  v10 = _s14CodableWrapperVMa_24(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18EF825F4(0, &unk_1EACB6F30, off_1E72AFE70);
  sub_18EF86A14(a1, v13);
  sub_18EF9FE2C();
  v14 = a2;
  result = sub_18EFE2BA8(v13, v9, a2);
  *a3 = result;
  return result;
}

void LNActionMetadata.init(identifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:descriptionMetadata:deprecationMetadata:openAppWhenRun:supportedModes:explicitAuthenticationPolicy:outputType:outputFlags:parameters:systemProtocolMetadata:actionConfiguration:typeSpecificMetadata:customIntentClassName:availabilityAnnotations:shortcutsMetadata:requiredCapabilities:attributionBundleIdentifier:sideEffect:assistantDefinedSchemas:assistantDefinedSchemaTraits:visibilityMetadata:fullyQualifiedTypeName:constraints:allowedTargets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, char a23, uint64_t a24, uint64_t a25, char a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  OUTLINED_FUNCTION_260();
  v65 = v47;
  v66 = v48;
  v64 = v49;
  OUTLINED_FUNCTION_227();
  v63 = sub_18F093B5C();

  OUTLINED_FUNCTION_264();
  v62 = sub_18F093B5C();

  v61 = sub_18F093A3C();

  if (a26)
  {
    v60 = 0;
  }

  else
  {
    v60 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  sub_18EF825F4(0, &unk_1ED5FFA18, off_1E72AFEA8);
  v59 = sub_18F093DBC();

  type metadata accessor for LNSystemProtocolIdentifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
  OUTLINED_FUNCTION_24();
  sub_18EF8558C(v50);
  OUTLINED_FUNCTION_144();
  v73 = sub_18F093A3C();

  if (a32)
  {
    type metadata accessor for LNActionTypeSpecificMetadataKey(0);
    OUTLINED_FUNCTION_30();
    sub_18EF8558C(v51);
    OUTLINED_FUNCTION_108();
    v72 = sub_18F093A3C();
  }

  else
  {
    v72 = 0;
  }

  if (a34)
  {
    v58 = sub_18F093B5C();
  }

  else
  {
    v58 = 0;
  }

  if (a35)
  {
    type metadata accessor for LNPlatformName();
    sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    OUTLINED_FUNCTION_2();
    sub_18EF8558C(v52);
    OUTLINED_FUNCTION_144();
    v56 = sub_18F093A3C();
  }

  else
  {
    v56 = 0;
  }

  if (a36)
  {
    v71 = sub_18F093A3C();
  }

  else
  {
    v71 = 0;
  }

  if (a37)
  {
    sub_18EF825F4(0, qword_1ED5FEEC8, off_1E72B0150);
    v57 = OUTLINED_FUNCTION_414();
  }

  else
  {
    v57 = 0;
  }

  if (a39)
  {
    v70 = sub_18F093B5C();
  }

  else
  {
    v70 = 0;
  }

  if (a41)
  {
    sub_18EF825F4(0, qword_1ED5FE9A0, off_1E72AFF10);
    OUTLINED_FUNCTION_202();
    v67 = sub_18F093DBC();
  }

  else
  {
    v67 = 0;
  }

  if (a42)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7390, &qword_18F09BD68);
    OUTLINED_FUNCTION_271();
    v69 = sub_18F093DBC();
  }

  else
  {
    v69 = 0;
  }

  if (a45)
  {
    v68 = sub_18F093B5C();
  }

  else
  {
    v68 = 0;
  }

  if (a46)
  {
    sub_18EF825F4(0, &unk_1EACB6F30, off_1E72AFE70);
    OUTLINED_FUNCTION_271();
    v53 = sub_18F093DBC();
  }

  else
  {
    v53 = 0;
  }

  if (a47)
  {
    sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);
    OUTLINED_FUNCTION_202();
    v54 = sub_18F093DBC();
  }

  else
  {
    v54 = 0;
  }

  LOBYTE(v55) = a23 & 1;
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v63 mangledTypeName:v62 mangledTypeNameByBundleIdentifier:v61 effectiveBundleIdentifiers:v65 bundleMetadataVersion:v64 title:v66 descriptionMetadata:a21 deprecationMetadata:a22 openAppWhenRun:v55 supportedModes:a24 explicitAuthenticationPolicy:v60 outputType:a27 outputFlags:a28 parameters:v59 systemProtocolMetadata:v73 actionConfiguration:a31 typeSpecificMetadata:v72 customIntentClassName:v58 availabilityAnnotations:v56 shortcutsMetadata:v71 requiredCapabilities:v57 attributionBundleIdentifier:v70 sideEffect:a40 assistantDefinedSchemas:v67 assistantDefinedSchemaTraits:v69 visibilityMetadata:a43 fullyQualifiedTypeName:v68 constraints:v53 allowedTargets:v54];

  OUTLINED_FUNCTION_259();
}

id LNActionMetadata.init(identifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:descriptionMetadata:deprecationMetadata:openAppWhenRun:explicitAuthenticationPolicy:outputType:outputFlags:parameters:systemProtocolMetadata:actionConfiguration:typeSpecificMetadata:customIntentClassName:availabilityAnnotations:shortcutsMetadata:requiredCapabilities:attributionBundleIdentifier:sideEffect:assistantDefinedSchemas:assistantDefinedSchemaTraits:visibilityMetadata:fullyQualifiedTypeName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void *a9, void *a10, char a11, uint64_t a12, char a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_227();
  v46 = sub_18F093B5C();

  OUTLINED_FUNCTION_264();
  v45 = sub_18F093B5C();

  v44 = sub_18F093A3C();

  if (a13)
  {
    v39 = 0;
  }

  else
  {
    v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  sub_18EF825F4(0, &unk_1ED5FFA18, off_1E72AFEA8);
  OUTLINED_FUNCTION_271();
  v43 = sub_18F093DBC();

  type metadata accessor for LNSystemProtocolIdentifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
  OUTLINED_FUNCTION_24();
  sub_18EF8558C(v32);
  OUTLINED_FUNCTION_144();
  v42 = sub_18F093A3C();

  if (a19)
  {
    type metadata accessor for LNActionTypeSpecificMetadataKey(0);
    OUTLINED_FUNCTION_30();
    sub_18EF8558C(v33);
    OUTLINED_FUNCTION_108();
    v41 = sub_18F093A3C();
  }

  else
  {
    v41 = 0;
  }

  if (a21)
  {
    v40 = sub_18F093B5C();
  }

  else
  {
    v40 = 0;
  }

  if (a22)
  {
    type metadata accessor for LNPlatformName();
    sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    OUTLINED_FUNCTION_2();
    sub_18EF8558C(v34);
    OUTLINED_FUNCTION_144();
    v55 = sub_18F093A3C();
  }

  else
  {
    v55 = 0;
  }

  if (a23)
  {
    v54 = sub_18F093A3C();
  }

  else
  {
    v54 = 0;
  }

  if (a24)
  {
    sub_18EF825F4(0, qword_1ED5FEEC8, off_1E72B0150);
    v53 = OUTLINED_FUNCTION_414();
  }

  else
  {
    v53 = 0;
  }

  if (a26)
  {
    v51 = sub_18F093B5C();
  }

  else
  {
    v51 = 0;
  }

  if (a28)
  {
    sub_18EF825F4(0, qword_1ED5FE9A0, off_1E72AFF10);
    OUTLINED_FUNCTION_201();
    v52 = sub_18F093DBC();
  }

  else
  {
    v52 = 0;
  }

  if (a29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7390, &qword_18F09BD68);
    v35 = sub_18F093DBC();
  }

  else
  {
    v35 = 0;
  }

  if (a32)
  {
    v36 = sub_18F093B5C();
  }

  else
  {
    v36 = 0;
  }

  LOBYTE(v38) = a11 & 1;
  v48 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v46 mangledTypeName:v45 mangledTypeNameByBundleIdentifier:v44 effectiveBundleIdentifiers:a6 bundleMetadataVersion:a7 title:a8 descriptionMetadata:a9 deprecationMetadata:a10 openAppWhenRun:v38 explicitAuthenticationPolicy:v39 outputType:a14 outputFlags:a15 parameters:v43 systemProtocolMetadata:v42 actionConfiguration:a18 typeSpecificMetadata:v41 customIntentClassName:v40 availabilityAnnotations:v55 shortcutsMetadata:v54 requiredCapabilities:v53 attributionBundleIdentifier:v51 sideEffect:a27 assistantDefinedSchemas:v52 assistantDefinedSchemaTraits:v35 visibilityMetadata:a30 fullyQualifiedTypeName:v36];

  return v48;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNActionMetadata.asJson(prettyPrinted:)(Swift::Bool prettyPrinted)
{
  OUTLINED_FUNCTION_418();
  v3 = OUTLINED_FUNCTION_358();
  v4 = type metadata accessor for LNActionMetadata.CodableWrapper(v3);
  v5 = OUTLINED_FUNCTION_95(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  v8 = sub_18F09305C();
  v9 = OUTLINED_FUNCTION_95(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_165();
  v12 = sub_18F0930BC();
  OUTLINED_FUNCTION_277(v12);
  sub_18F0930AC();
  if (v2)
  {
    sub_18F09304C();
    sub_18F09307C();
  }

  type metadata accessor for LNPlatformName();
  OUTLINED_FUNCTION_2();
  sub_18EF8558C(v13);
  v14 = sub_18F093A5C();
  OUTLINED_FUNCTION_322(v14);
  LNActionMetadata.wrapper(encodingContext:)();

  OUTLINED_FUNCTION_169();
  sub_18EFD3070();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_28();
  sub_18EF86A6C();

  if (v1)
  {
    sub_18EFD2EC8();
    v15 = OUTLINED_FUNCTION_249();
    *v16 = v1;
    OUTLINED_FUNCTION_117(v15, v16);
  }

  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_417();
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

BOOL sub_18EFF4B34()
{
  OUTLINED_FUNCTION_396();
  sub_18F09420C();
  OUTLINED_FUNCTION_216();

  return v0 != 0;
}

BOOL sub_18EFF4B80@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18EFF4B34();
  *a2 = result;
  return result;
}

BOOL sub_18EFF4BD8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_18EFF4B34();
  *a1 = result;
  return result;
}

uint64_t sub_18EFF4C10(uint64_t a1)
{
  v2 = sub_18EFAFE40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFF4C4C(uint64_t a1)
{
  v2 = sub_18EFAFE40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LNContentType.encode(to:)()
{
  OUTLINED_FUNCTION_298();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7558, &qword_18F09BE00);
  OUTLINED_FUNCTION_7(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_80();
  sub_18EFAFE40();
  OUTLINED_FUNCTION_214();
  v7 = [v0 contentType];
  sub_18F093B8C();

  OUTLINED_FUNCTION_110();
  sub_18F09437C();
  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_318();
  v10(v9);
}

uint64_t sub_18EFF4DAC()
{
  OUTLINED_FUNCTION_396();
  sub_18F09420C();
  OUTLINED_FUNCTION_216();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18EFF4E40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18EFF4DAC();
  *a2 = result;
  return result;
}

uint64_t sub_18EFF4E70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18EFAFC98(*v1);
  *a1 = result;
  a1[1] = 0xEF7365707954656CLL;
  return result;
}

uint64_t sub_18EFF4EAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFF4DAC();
  *a1 = result;
  return result;
}

uint64_t sub_18EFF4EE0(uint64_t a1)
{
  v2 = sub_18EFAFB88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFF4F1C(uint64_t a1)
{
  v2 = sub_18EFAFB88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LNContentTypeMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_180();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7580, &qword_18F09BE18);
  OUTLINED_FUNCTION_7(v3);
  v12 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_80();
  sub_18EFAFB88();
  OUTLINED_FUNCTION_214();
  v8 = [v0 exportableTypes];
  sub_18EF825F4(0, &qword_1ED5FE1A8, off_1E72AFFC8);
  sub_18F093DCC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7570, &qword_18F09BE10);
  sub_18EFAFBDC(&unk_1EACB7588);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_336();
  sub_18F0943CC();

  if (!v1)
  {
    v9 = [v2 importableTypes];
    sub_18F093DCC();

    OUTLINED_FUNCTION_362();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_174();
    OUTLINED_FUNCTION_336();
    sub_18F0943CC();
  }

  v10 = OUTLINED_FUNCTION_158();
  v11(v10, v3);
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_177();
}

uint64_t sub_18EFF5170(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E65707974 && a2 == 0xE800000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6569736E617274 && a2 == 0xE900000000000074;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5464656C676E616DLL && a2 == 0xEF656D614E657079;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000021 && 0x800000018F0ADDD0 == a2;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ALL && 0x800000018F0ADE50 == a2;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x5479616C70736964 && a2 == 0xEF656D614E657079;
            if (v10 || (sub_18F09444C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x800000018F0AE170 == a2;
              if (v11 || (sub_18F09444C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365;
                if (v12 || (sub_18F09444C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000019 && 0x800000018F0AE190 == a2;
                  if (v13 || (sub_18F09444C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000017 && 0x800000018F0ADF90 == a2;
                    if (v14 || (sub_18F09444C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000;
                      if (v15 || (sub_18F09444C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000014 && 0x800000018F0ADFB0 == a2;
                        if (v16 || (sub_18F09444C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000016 && 0x800000018F0ADEF0 == a2;
                          if (v17 || (sub_18F09444C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000018 && 0x800000018F0ADF10 == a2;
                            if (v18 || (sub_18F09444C() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD00000000000001BLL && 0x800000018F0ADFD0 == a2;
                              if (v19 || (sub_18F09444C() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000018 && 0x800000018F0AE1B0 == a2;
                                if (v20 || (sub_18F09444C() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000017 && 0x800000018F0ADFF0 == a2;
                                  if (v21 || (sub_18F09444C() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000016 && 0x800000018F0AE050 == a2;
                                    if (v22 || (sub_18F09444C() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000012 && 0x800000018F0AE030 == a2;
                                      if (v23 || (sub_18F09444C() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000016 && 0x800000018F0AE1D0 == a2;
                                        if (v24 || (sub_18F09444C() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else if (a1 == 0x546465776F6C6C61 && a2 == 0xEE00737465677261)
                                        {

                                          return 20;
                                        }

                                        else
                                        {
                                          v26 = sub_18F09444C();

                                          if (v26)
                                          {
                                            return 20;
                                          }

                                          else
                                          {
                                            return 21;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18EFF57AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFF5170(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFF57D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFF57A4();
  *a1 = result;
  return result;
}

uint64_t sub_18EFF57FC(uint64_t a1)
{
  v2 = sub_18EF98740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFF5838(uint64_t a1)
{
  v2 = sub_18EF98740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LNEntityMetadata.CodableWrapper.encode(to:)()
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_298();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7598, &qword_18F09BE20);
  OUTLINED_FUNCTION_7(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_80();
  sub_18EF98740();
  OUTLINED_FUNCTION_214();
  v8 = *v1;
  v9 = v1[1];
  OUTLINED_FUNCTION_35();
  sub_18F09437C();
  if (!v0)
  {
    v10 = *(v1 + 16);
    OUTLINED_FUNCTION_250();
    OUTLINED_FUNCTION_110();
    sub_18F09434C();
    v11 = v1[3];
    v12 = v1[4];
    OUTLINED_FUNCTION_35();
    sub_18F09433C();
    v23 = v1[5];
    OUTLINED_FUNCTION_294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
    OUTLINED_FUNCTION_79(&unk_1EACB73B8);
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
    v24 = v1[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73C0, &qword_18F09BD88);
    sub_18F012A58();
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
    v13 = type metadata accessor for LNEntityMetadata.CodableWrapper(0);
    v14 = v13[9];
    OUTLINED_FUNCTION_343();
    _s14CodableWrapperVMa_0(0);
    OUTLINED_FUNCTION_5();
    sub_18EF8558C(v15);
    OUTLINED_FUNCTION_69();
    sub_18F0943CC();
    v16 = v13[10];
    OUTLINED_FUNCTION_69();
    sub_18F09436C();
    OUTLINED_FUNCTION_167(v13[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB75A8, &qword_18F09BE28);
    sub_18F013694();
    OUTLINED_FUNCTION_3();
    sub_18F0943CC();
    OUTLINED_FUNCTION_233(v13[12]);
    OUTLINED_FUNCTION_35();
    sub_18F09433C();
    OUTLINED_FUNCTION_167(v13[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18F012DE0();
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
    OUTLINED_FUNCTION_167(v13[14]);
    OUTLINED_FUNCTION_361();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18F013748();
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
    OUTLINED_FUNCTION_167(v13[15]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7488, &qword_18F09BDB8);
    sub_18F012EC0();
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
    OUTLINED_FUNCTION_167(v13[16]);
    OUTLINED_FUNCTION_360();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB75D0, &qword_18F09BE38);
    sub_18F0137FC();
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
    OUTLINED_FUNCTION_167(v13[17]);
    v17 = OUTLINED_FUNCTION_384();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_175();
    sub_18EF8992C(v19);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_110();
    sub_18F0943CC();
    OUTLINED_FUNCTION_233(v13[18]);
    OUTLINED_FUNCTION_35();
    sub_18F09433C();
    OUTLINED_FUNCTION_167(v13[19]);
    sub_18EF825F4(0, &qword_1ED5FE428, off_1E72AFFD0);
    sub_18EF99DFC(&unk_1EACB7600);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_110();
    sub_18F09436C();
    OUTLINED_FUNCTION_167(v13[20]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74A8, &qword_18F09BDC0);
    sub_18F012FEC();
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
    OUTLINED_FUNCTION_233(v13[21]);
    OUTLINED_FUNCTION_35();
    sub_18F09433C();
    v25 = *(v1 + v13[22]);
    sub_18F01319C();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_110();
    sub_18F09436C();
    OUTLINED_FUNCTION_233(v13[23]);
    OUTLINED_FUNCTION_35();
    sub_18F09433C();
    OUTLINED_FUNCTION_167(v13[24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74F8, &qword_18F09BDD8);
    sub_18F0132A4();
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
  }

  v20 = *(v4 + 8);
  v21 = OUTLINED_FUNCTION_318();
  v22(v21);
  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_177();
}

uint64_t sub_18EFF5DCC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - v6;
  v8 = sub_18F013BD0(v1, &selRef_identifier);
  v35 = v9;
  v36 = v8;
  v10 = [v1 valueType];
  v34 = sub_18EFD1A70();

  v11 = [v2 title];
  if (v11)
  {
    v12 = v11;
    sub_18EFD9154(v7);

    v13 = _s14CodableWrapperVMa_0(0);
    v14 = 0;
  }

  else
  {
    v13 = _s14CodableWrapperVMa_0(0);
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v14, 1, v13);
  v33 = [v2 capabilities];
  v15 = sub_18F013BD0(v2, &selRef_updateActionIdentifier);
  v17 = v16;
  v18 = [v2 isOptional];
  v19 = sub_18F013BD0(v2, &selRef_spotlightAttributeKey);
  v21 = v20;
  v22 = sub_18F013BD0(v2, &selRef_spotlightCustomAttributeKey);
  v24 = v23;
  v25 = v35;
  *a1 = v36;
  a1[1] = v25;
  a1[2] = v34;
  v26 = _s14CodableWrapperVMa_12(0);
  v27 = v26[6];
  result = sub_18EF869B4();
  v29 = a1 + v26[7];
  *v29 = v33;
  v29[8] = 0;
  v30 = (a1 + v26[8]);
  *v30 = v15;
  v30[1] = v17;
  *(a1 + v26[9]) = v18;
  v31 = (a1 + v26[10]);
  *v31 = v19;
  v31[1] = v21;
  v32 = (a1 + v26[11]);
  *v32 = v22;
  v32[1] = v24;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNEntityMetadata.asJson(prettyPrinted:)(Swift::Bool prettyPrinted)
{
  OUTLINED_FUNCTION_418();
  v3 = v2;
  v4 = type metadata accessor for LNEntityMetadata.CodableWrapper(0);
  v5 = OUTLINED_FUNCTION_95(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  v8 = sub_18F09305C();
  v9 = OUTLINED_FUNCTION_95(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_165();
  v12 = sub_18F0930BC();
  OUTLINED_FUNCTION_277(v12);
  sub_18F0930AC();
  if (v3)
  {
    sub_18F09304C();
    sub_18F09307C();
  }

  type metadata accessor for LNPlatformName();
  OUTLINED_FUNCTION_2();
  sub_18EF8558C(v13);
  v14 = sub_18F093A5C();
  OUTLINED_FUNCTION_322(v14);
  LNEntityMetadata.wrapper(encodingContext:)();

  OUTLINED_FUNCTION_169();
  sub_18EFD3070();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_27();
  sub_18EF86A6C();

  if (v1)
  {
    sub_18EFD2EC8();
    v15 = OUTLINED_FUNCTION_249();
    *v16 = v1;
    OUTLINED_FUNCTION_117(v15, v16);
  }

  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_417();
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t sub_18EFF63C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x70795465756C6176 && a2 == 0xE900000000000065;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x696C696261706163 && a2 == 0xEC00000073656974;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x800000018F0AE750 == a2;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F6974704F7369 && a2 == 0xEA00000000006C61;
            if (v10 || (sub_18F09444C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x800000018F0AE770 == a2;
              if (v11 || (sub_18F09444C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD00000000000001BLL && 0x800000018F0AE790 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_18F09444C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18EFF6650(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB80B8, &qword_18F0A0F70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF99268();
  sub_18F0945BC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v30) = 0;
  sub_18F09433C();
  if (!v2)
  {
    v30 = v3[2];
    v29[7] = 1;
    sub_18F012B0C();
    sub_18F0943CC();
    v13 = _s14CodableWrapperVMa_12(0);
    v14 = v13[6];
    LOBYTE(v30) = 2;
    _s14CodableWrapperVMa_0(0);
    sub_18EF8558C(&unk_1EACB6A38);
    sub_18F09436C();
    v15 = v3 + v13[7];
    v16 = *v15;
    v17 = v15[8];
    LOBYTE(v30) = 3;
    sub_18F09435C();
    v18 = (v3 + v13[8]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v30) = 4;
    sub_18F09433C();
    v21 = *(v3 + v13[9]);
    LOBYTE(v30) = 5;
    sub_18F09434C();
    v22 = (v3 + v13[10]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v30) = 6;
    sub_18F09433C();
    v25 = (v3 + v13[11]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v30) = 7;
    sub_18F09433C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFF693C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFF63C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFF6964(uint64_t a1)
{
  v2 = sub_18EF99268();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFF69A0(uint64_t a1)
{
  v2 = sub_18EF99268();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFF69F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5255656C646E7562 && a2 == 0xE90000000000004CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18EFF6AC4(char a1)
{
  if (a1)
  {
    return 0x5255656C646E7562;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_18EFF6AF8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8448, &qword_18F0A1110);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F0197AC();
  sub_18F0945BC();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_18F09437C();
  if (!v2)
  {
    v13 = *(_s14CodableWrapperVMa_6(0) + 20);
    v15[14] = 1;
    sub_18F0932BC();
    sub_18EF8558C(&unk_1EACB6B48);
    sub_18F09436C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFF6CB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8438, &qword_18F0A1108);
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = _s14CodableWrapperVMa_6(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 28);
  v16 = sub_18F0932BC();
  v24 = v15;
  __swift_storeEnumTagSinglePayload(v14 + v15, 1, 1, v16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F0197AC();
  sub_18F09459C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF933AC(v14 + v24, &qword_1EACB72C8);
  }

  else
  {
    v18 = v22;
    v26 = 0;
    *v14 = sub_18F09427C();
    v14[1] = v19;
    v25 = 1;
    sub_18EF8558C(&unk_1ED5FF550);
    sub_18F09426C();
    (*(v18 + 8))(v9, v23);
    sub_18EF872D4();
    sub_18EF86A14(v14, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF86A6C();
  }
}

uint64_t sub_18EFF6FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFF69F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFF7024(uint64_t a1)
{
  v2 = sub_18F0197AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFF7060(uint64_t a1)
{
  v2 = sub_18F0197AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFF70CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = [v2 name];
  v9 = sub_18F093B8C();
  v11 = v10;

  v12 = [v2 bundleURL];
  if (v12)
  {
    v13 = v12;
    sub_18F09327C();

    v14 = sub_18F0932BC();
    v15 = 0;
  }

  else
  {
    v14 = sub_18F0932BC();
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v15, 1, v14);
  *a1 = v9;
  a1[1] = v11;
  v16 = *(_s14CodableWrapperVMa_6(0) + 20);
  return sub_18EF869B4();
}

uint64_t sub_18EFF7200(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFF7288(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8430, &qword_18F0A1100);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F019758();
  sub_18F0945BC();
  _s14CodableWrapperOMa(0);
  sub_18EF8558C(&unk_1EACB6A28);
  sub_18F0943CC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_18EFF7400@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = _s14CodableWrapperOMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8420, &qword_18F0A10F8);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = _s14CodableWrapperVMa_7(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F019758();
  sub_18F09459C();
  if (!v2)
  {
    v16 = v19;
    sub_18EF8558C(&unk_1ED5FE068);
    v17 = v21;
    sub_18F0942CC();
    (*(v20 + 8))(v10, v7);
    sub_18EF88240(v17, v14);
    sub_18EF88240(v14, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_18EFF7678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFF7200(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFF76A4(uint64_t a1)
{
  v2 = sub_18F019758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFF76E0(uint64_t a1)
{
  v2 = sub_18F019758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFF774C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7830, &qword_18F09DA08);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = [v1 image];
  sub_18EFF789C(0, v9);

  sub_18EF869B4();
  v11 = _s14CodableWrapperOMa(0);
  v12 = 1;
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) != 1)
  {
    sub_18EF88240(v7, a1);
    v12 = 0;
  }

  v13 = _s14CodableWrapperVMa_7(0);
  return __swift_storeEnumTagSinglePayload(a1, v12, 1, v13);
}