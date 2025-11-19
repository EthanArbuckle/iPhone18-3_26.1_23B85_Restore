uint64_t sub_18EFF789C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v90[1] = *MEMORY[0x1E69E9840];
  v5 = sub_18F0932BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v89 - v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 colorization];
    v16 = [v15 foreground];

    if (v16)
    {
      v17 = [v16 systemNamedColor];

      if (v17)
      {
        v18 = v17;
        v16 = [v18 systemColor];
        v17 = [v18 colorVariant];

        v19 = 0;
LABEL_11:
        v26 = [v14 colorization];
        v27 = [v26 background];

        if (v27 && (v28 = [v27 systemNamedColor], v27, v28))
        {
          v89[0] = v17;
          v29 = v16;
          v30 = v28;
          v31 = [v30 systemColor];
          v32 = [v30 colorVariant];

          v33 = 0;
        }

        else
        {
          v32 = 0;
          v33 = 1;
          if (v19)
          {
            v34 = 0;
            v29 = 0;
            v89[0] = 0;
            v31 = 0;
            v35 = 0;
LABEL_18:
            v36 = [v14 systemName];
            v37 = sub_18F093B8C();
            v39 = v38;

            LOBYTE(v90[0]) = v33;
            *a2 = v37;
            *(a2 + 8) = v39;
            v40 = v89[0];
            *(a2 + 16) = v29;
            *(a2 + 24) = v40;
            *(a2 + 32) = v32;
            *(a2 + 40) = v31;
            *(a2 + 48) = v35;
            *(a2 + 56) = v34;
            *(a2 + 57) = v33;
LABEL_19:
            v41 = _s14CodableWrapperOMa(0);
            goto LABEL_20;
          }

          v89[0] = v17;
          v29 = v16;
          v31 = 0;
        }

        v35 = v32;
        v32 = v19;
        v34 = v33;
        v33 = 0;
        goto LABEL_18;
      }

      v16 = 0;
    }

    else
    {
      v17 = 0;
    }

    v19 = 1;
    goto LABEL_11;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    v47 = sub_18F0126AC([v2 inImage], &selRef__name);
    if (!v48)
    {
      v60 = [v2 inImage];
      v61 = [v60 _uri];

      if (!v61)
      {
        v77 = [v2 inImage];
        objc_opt_self();
        v78 = swift_dynamicCastObjCClass();
        if (v78)
        {
          v79 = v78;
          v80 = objc_opt_self();
          v90[0] = 0;
          v81 = [v80 archivedDataWithRootObject:v79 requiringSecureCoding:1 error:v90];
          v82 = v90[0];
          if (v81)
          {
            v83 = sub_18F09330C();
            v85 = v84;

            v86 = [v2 displayStyle];
            *a2 = v83;
            *(a2 + 8) = v85;
            *(a2 + 16) = v86;
            *(a2 + 24) = 0;
            v41 = _s14CodableWrapperOMa(0);
            goto LABEL_20;
          }

          v87 = v82;
          v88 = sub_18F09318C();

          swift_willThrow();
        }

        else
        {
        }

        v44 = _s14CodableWrapperOMa(0);
        v42 = a2;
        v43 = 1;
        goto LABEL_21;
      }

      sub_18F09327C();

      (*(v6 + 32))(v12, v10, v5);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8380, &qword_18F0A10A0);
      v63 = v62[12];
      v89[0] = v62[16];
      v64 = a2 + v62[20];
      (*(v6 + 16))(a2, v12, v5);
      v65 = [v2 inImage];
      [v65 _imageSize];
      v67 = v66;

      *(a2 + v63) = v67;
      v68 = [v2 inImage];
      [v68 _imageSize];
      v70 = v69;

      *(a2 + v89[0]) = v70;
      v71 = [v2 displayStyle];
      (*(v6 + 8))(v12, v5);
      *v64 = v71;
      *(v64 + 8) = 0;
      v41 = _s14CodableWrapperOMa(0);
LABEL_20:
      swift_storeEnumTagMultiPayload();
      v42 = a2;
      v43 = 0;
      v44 = v41;
LABEL_21:
      result = __swift_storeEnumTagSinglePayload(v42, v43, 1, v44);
      v46 = *MEMORY[0x1E69E9840];
      return result;
    }

    v49 = v47;
    v50 = v48;
    v51 = [v2 inImage];
    v52 = [v51 _isSystem];

    if (v52)
    {
      LOBYTE(v90[0]) = 1;
      *a2 = v49;
      *(a2 + 8) = v50;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 41) = 0u;
      *(a2 + 57) = 1;
      goto LABEL_19;
    }

    v72 = sub_18F0126AC([v2 inImage], &selRef__bundleIdentifier);
    v74 = v73;
    v75 = [v2 displayStyle];
    *a2 = v49;
    *(a2 + 8) = v50;
    *(a2 + 16) = v72;
    *(a2 + 24) = v74;
    *(a2 + 32) = v75;
    *(a2 + 40) = 0;
    v59 = _s14CodableWrapperOMa(0);
    goto LABEL_29;
  }

  if ((a1 & 1) == 0)
  {
    v53 = v20;
    v54 = [v20 iconType];
    v55 = [v53 identifier];
    v56 = sub_18F093B8C();
    v58 = v57;

    *a2 = v54;
    *(a2 + 8) = v56;
    *(a2 + 16) = v58;
    v59 = _s14CodableWrapperOMa(0);
LABEL_29:
    swift_storeEnumTagMultiPayload();
    v76 = *MEMORY[0x1E69E9840];
    v24 = a2;
    v25 = 0;
    v23 = v59;
    goto LABEL_30;
  }

  v21 = _s14CodableWrapperOMa(0);
  v22 = *MEMORY[0x1E69E9840];
  v23 = v21;
  v24 = a2;
  v25 = 1;
LABEL_30:

  return __swift_storeEnumTagSinglePayload(v24, v25, 1, v23);
}

uint64_t sub_18EFF8038(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656D616ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
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

uint64_t sub_18EFF8100(char a1)
{
  if (a1)
  {
    return 0x6567616D69;
  }

  else
  {
    return 0x64656D616ELL;
  }
}

uint64_t sub_18EFF8128(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8408, &qword_18F0A10F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F019704();
  sub_18F0945BC();
  v11[15] = 0;
  _s14CodableWrapperVMa_6(0);
  sub_18EF8558C(&unk_1EACB8410);
  sub_18F09436C();
  if (!v1)
  {
    v9 = *(_s14CodableWrapperVMa_5(0) + 20);
    v11[14] = 1;
    _s14CodableWrapperVMa_7(0);
    sub_18EF8558C(&unk_1EACB8418);
    sub_18F09436C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_18EFF8328@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7878, &qword_18F09DA78);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7870, &qword_18F09DA70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v26 = &v22 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB83F8, &qword_18F0A10E8);
  v25 = *(v27 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v22 - v10;
  v12 = _s14CodableWrapperVMa_5(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F019704();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v23 = v12;
  v17 = v25;
  v18 = v15;
  _s14CodableWrapperVMa_6(0);
  v29 = 0;
  sub_18EF8558C(&unk_1EACB6BB8);
  v19 = v27;
  sub_18F09426C();
  sub_18EF869B4();
  _s14CodableWrapperVMa_7(0);
  v28 = 1;
  sub_18EF8558C(&unk_1EACB6BC0);
  sub_18F09426C();
  (*(v17 + 8))(v11, v19);
  v20 = *(v23 + 20);
  sub_18EF869B4();
  sub_18EF86A14(v18, v24);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_18EF86A6C();
}

uint64_t sub_18EFF8708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFF8038(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFF8730(uint64_t a1)
{
  v2 = sub_18F019704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFF876C(uint64_t a1)
{
  v2 = sub_18F019704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFF87D8@<X0>(uint64_t a1@<X8>)
{
  v2 = _s14CodableWrapperVMa_7(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7878, &qword_18F09DA78);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = _s14CodableWrapperVMa_6(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_18EFF70CC(v16);
    sub_18EF88240(v16, a1);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v13);
    v17 = _s14CodableWrapperVMa_5(0);
    __swift_storeEnumTagSinglePayload(a1 + *(v17 + 20), 1, 1, v2);
    v18 = a1;
    v19 = 0;
    v20 = v17;
    return __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_18EFF774C(v12);
    sub_18EF869B4();
    if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
    {
      v20 = _s14CodableWrapperVMa_5(0);
      v18 = a1;
      v19 = 1;
    }

    else
    {
      sub_18EF88240(v10, v5);
      v23 = _s14CodableWrapperVMa_5(0);
      v24 = *(v23 + 20);
      sub_18EF88240(v5, a1 + v24);
      __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v2);
      __swift_storeEnumTagSinglePayload(a1, 1, 1, v13);
      v18 = a1;
      v19 = 0;
      v20 = v23;
    }

    return __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
  }

  v22 = _s14CodableWrapperVMa_5(0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v22);
}

uint64_t sub_18EFF8AE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEF747865546E6F69;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79726F6765746163 && a2 == 0xEC000000656D614ELL;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x654B686372616573 && a2 == 0xEE007364726F7779;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6156746C75736572 && a2 == 0xEF656D614E65756CLL;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1852793705 && a2 == 0xE400000000000000)
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

uint64_t sub_18EFF8CA4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7AF0, &qword_18F0A0C18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF87D6C();
  sub_18F0945BC();
  v21 = 0;
  _s14CodableWrapperVMa_0(0);
  sub_18EF8558C(&unk_1EACB6A38);
  sub_18F0943CC();
  if (!v2)
  {
    v16[0] = _s14CodableWrapperVMa_1(0);
    v11 = *(v16[0] + 20);
    v20 = 1;
    _s14CodableWrapperVMa_2(0);
    sub_18EF8558C(&unk_1EACB6AA0);
    sub_18F09436C();
    v12 = v16[0];
    v16[1] = *(v3 + *(v16[0] + 24));
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18F013748();
    sub_18F0943CC();
    v13 = *(v12 + 28);
    v18 = 3;
    sub_18F09436C();
    v14 = *(v12 + 32);
    v17 = 4;
    _s14CodableWrapperVMa_5(0);
    sub_18EF8558C(&unk_1EACB7AF8);
    sub_18F09436C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFF8FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFF8AE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFF8FE0(uint64_t a1)
{
  v2 = sub_18EF87D6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFF901C(uint64_t a1)
{
  v2 = sub_18EF87D6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFF9070(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000747865;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000018F0AE520 == a2)
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

uint64_t sub_18EFF9144(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x546567617373656DLL;
  }
}

uint64_t sub_18EFF9188(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7B00, &qword_18F0A0C20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F016978();
  sub_18F0945BC();
  v15[15] = 0;
  _s14CodableWrapperVMa_0(0);
  sub_18EF8558C(&unk_1EACB6A38);
  sub_18F0943CC();
  if (!v2)
  {
    v11 = (v3 + *(_s14CodableWrapperVMa_8(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_18F09433C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFF9344@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = _s14CodableWrapperVMa_0(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F10, &qword_18F0A0E10);
  v29 = *(v31 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v26 - v8;
  v10 = _s14CodableWrapperVMa_8(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F016978();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v27 = v10;
  v15 = v13;
  v16 = v29;
  v33 = 0;
  sub_18EF8558C(&unk_1ED5FF4F8);
  v18 = v30;
  v17 = v31;
  sub_18F0942CC();
  sub_18EF88240(v18, v15);
  v32 = 1;
  v19 = sub_18F09423C();
  v20 = v16;
  v21 = v19;
  v23 = v22;
  v24 = (v15 + *(v27 + 20));
  (*(v20 + 8))(v9, v17);
  *v24 = v21;
  v24[1] = v23;
  sub_18EF86A14(v15, v28);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_18EF86A6C();
}

uint64_t sub_18EFF9680(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
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

uint64_t sub_18EFF9788(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7E58, &qword_18F0A0DB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFCB0C0();
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
    v15 = *(v3 + 32);
    v17[13] = 2;
    sub_18F09438C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFF991C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFF9070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFF9944(uint64_t a1)
{
  v2 = sub_18F016978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFF9980(uint64_t a1)
{
  v2 = sub_18F016978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFF99EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFF9680(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFF9A14(uint64_t a1)
{
  v2 = sub_18EFCB0C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFF9A50(uint64_t a1)
{
  v2 = sub_18EFCB0C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFF9A8C(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_18EFF9788(a1);
}

uint64_t static Array<A>.fromJSON(_:bundleURL:effectiveBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_18EFD9F00();
  if (!v4)
  {
    v8 = v7;
    if (v7)
    {
      MEMORY[0x1EEE9AC00](v7);
      OUTLINED_FUNCTION_97();
      *(v9 - 16) = a3;
      *(v9 - 8) = a4;
      sub_18EF93B88(sub_18EF94914, v10, v8, _s14CodableWrapperVMa_12);
    }

    else
    {
      sub_18EFD2EC8();
      v12 = OUTLINED_FUNCTION_249();
      OUTLINED_FUNCTION_38(v12, v13);
    }
  }

  return OUTLINED_FUNCTION_399();
}

void Array<A>.asJson(userInfo:)()
{
  OUTLINED_FUNCTION_180();
  v3 = OUTLINED_FUNCTION_226();
  v4 = _s14CodableWrapperVMa_12(v3);
  v5 = OUTLINED_FUNCTION_45(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19();
  v22 = v0;
  v10 = sub_18EFA0A7C(v0);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
LABEL_10:
    sub_18EFDA918(v1, v11);
    OUTLINED_FUNCTION_48();

    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_177();
    return;
  }

  v12 = v10;
  v23 = MEMORY[0x1E69E7CC0];
  sub_18F00F518();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v11 = v23;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x193AD8BA0](v13, v22);
      }

      else
      {
        v14 = *(v22 + 8 * v13 + 32);
      }

      v15 = v14;
      sub_18EFF5DCC(v2);

      v17 = *(v23 + 16);
      v16 = *(v23 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_114(v16);
        sub_18F00F518();
      }

      ++v13;
      *(v23 + 16) = v17 + 1;
      v18 = *(v7 + 80);
      OUTLINED_FUNCTION_149();
      v19 = *(v7 + 72);
      v20 = OUTLINED_FUNCTION_173();
      sub_18EF88240(v20, v21);
    }

    while (v12 != v13);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_18EFF9D3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746365666665 && a2 == 0xE600000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x664565676E616863 && a2 == 0xEC00000074636566)
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

uint64_t sub_18EFF9E04(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7E68, &qword_18F0A0DB8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF9F95C();
  sub_18F0945BC();
  v16 = a2;
  v15 = 0;
  type metadata accessor for LNSideEffect(0);
  sub_18EF8558C(&unk_1EACB7E78);
  sub_18F0943CC();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    type metadata accessor for LNChangeEffect(0);
    sub_18EF8558C(&unk_1EACB7E80);
    sub_18F0943CC();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_18EFFA00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFF9D3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFA034(uint64_t a1)
{
  v2 = sub_18EF9F95C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFA070(uint64_t a1)
{
  v2 = sub_18EF9F95C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFA1C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756C6156646E696BLL && a2 == 0xE900000000000065;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7079547972657571 && a2 == 0xE900000000000065;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x70795465756C6176 && a2 == 0xE900000000000065)
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

uint64_t sub_18EFFA2E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[1] = a3;
  v15[2] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8460, &qword_18F0A1120);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA1394();
  sub_18F0945BC();
  v18 = 0;
  sub_18F0943AC();
  if (!v5)
  {
    v17 = 1;
    sub_18F09433C();
    v15[3] = a5;
    v16 = 2;
    sub_18F012B0C();
    sub_18F09436C();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_18EFFA498(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000018F0AE8D0 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000018F0AE560 == a2;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x70795465756C6176 && a2 == 0xE900000000000065)
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

uint64_t sub_18EFFA5BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8270, &qword_18F0A1050);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFCC4BC();
  sub_18F0945BC();
  LOBYTE(v16) = 0;
  sub_18F0943BC();
  if (!v4)
  {
    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7BA8, &qword_18F0A0C48);
    sub_18F016E10();
    sub_18F0943CC();
    v16 = a4;
    v15 = 2;
    sub_18F012B0C();
    sub_18F0943CC();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_18EFFA798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFA1C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFA7C0(uint64_t a1)
{
  v2 = sub_18EFA1394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFA7FC(uint64_t a1)
{
  v2 = sub_18EFA1394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFA838@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_18EFFA88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFA498(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFA8B4(uint64_t a1)
{
  v2 = sub_18EFCC4BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFA8F0(uint64_t a1)
{
  v2 = sub_18EFCC4BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18EFFA94C()
{
  v1 = v0;
  [v0 comparatorType];
  v2 = [v0 resolvableInputTypes];
  sub_18EF825F4(0, &unk_1ED5FF090, off_1E72B0158);
  v3 = sub_18F093DCC();

  v4 = sub_18EFA0A7C(v3);
  if (!v4)
  {

LABEL_12:
    v19 = [v1 valueType];
    sub_18EFD1A70();

    return;
  }

  v5 = v4;
  v23 = MEMORY[0x1E69E7CC0];
  sub_18F00F110();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v20 = v0;
    v6 = 0;
    v21 = v3 & 0xC000000000000001;
    v22 = v3;
    v7 = v5;
    do
    {
      if (v21)
      {
        v8 = MEMORY[0x193AD8BA0](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = sub_18EFE19D8();
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v17 = *(v23 + 16);
      if (v17 >= *(v23 + 24) >> 1)
      {
        sub_18F00F110();
      }

      ++v6;
      *(v23 + 16) = v17 + 1;
      v18 = (v23 + 32 * v17);
      v18[4] = v10;
      v18[5] = v12;
      v18[6] = v14;
      v18[7] = v16;
      v3 = v22;
    }

    while (v7 != v6);

    v1 = v20;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_18EFFAB34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000018F0AE8B0 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74617261706D6F63 && a2 == 0xEB0000000073726FLL)
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

uint64_t sub_18EFFAC58(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8248, &qword_18F0A1040);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFCC0E4();
  sub_18F0945BC();
  v11 = *v3;
  v12 = v3[1];
  v19 = 0;
  sub_18F09433C();
  if (!v2)
  {
    v13 = _s14CodableWrapperVMa_33(0);
    v14 = *(v13 + 20);
    v18 = 1;
    _s14CodableWrapperVMa_0(0);
    sub_18EF8558C(&unk_1EACB6A38);
    sub_18F09436C();
    v17 = *(v3 + *(v13 + 24));
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8240, &qword_18F0A1038);
    sub_18F018B74();
    sub_18F0943CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFFAE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFAB34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFAE94(uint64_t a1)
{
  v2 = sub_18EFCC0E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFAED0(uint64_t a1)
{
  v2 = sub_18EFCC0E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFAF24@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - v6;
  v8 = sub_18F013BD0(v1, &selRef_propertyIdentifier);
  v10 = v9;
  v11 = [v1 localizedTitle];
  sub_18EFD9154(v7);

  v12 = _s14CodableWrapperVMa_0(0);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  v13 = [v2 comparators];
  sub_18EF825F4(0, &qword_1EACB71E8, off_1E72B0128);
  v14 = sub_18F093DCC();

  v15 = sub_18EFA0A7C(v14);
  if (!v15)
  {

    v19 = MEMORY[0x1E69E7CC0];
LABEL_12:
    *a1 = v8;
    a1[1] = v10;
    v33 = _s14CodableWrapperVMa_33(0);
    v34 = *(v33 + 20);
    result = sub_18EF869B4();
    *(a1 + *(v33 + 24)) = v19;
    return result;
  }

  v16 = v15;
  v40 = MEMORY[0x1E69E7CC0];
  result = sub_18F00F6B0(0, v15 & ~(v15 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v35 = v10;
    v36 = v8;
    v37 = v7;
    v38 = a1;
    v18 = 0;
    v19 = v40;
    v39 = v14 & 0xC000000000000001;
    v20 = v14;
    v21 = v16;
    do
    {
      if (v39)
      {
        v22 = MEMORY[0x193AD8BA0](v18, v14);
      }

      else
      {
        v22 = *(v14 + 8 * v18 + 32);
      }

      v23 = v22;
      sub_18EFFA94C();
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v40 = v19;
      v31 = *(v19 + 16);
      v30 = *(v19 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_18F00F6B0((v30 > 1), v31 + 1, 1);
        v19 = v40;
      }

      ++v18;
      *(v19 + 16) = v31 + 1;
      v32 = (v19 + 24 * v31);
      v32[4] = v25;
      v32[5] = v27;
      v32[6] = v29;
      v14 = v20;
    }

    while (v21 != v18);

    a1 = v38;
    v10 = v35;
    v8 = v36;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_18EFFB1B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000018F0AE8B0 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7954797469746E65 && a2 == 0xEA00000000006570;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
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

uint64_t sub_18EFFB2D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8228, &qword_18F0A1028);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFC9854();
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
    v15 = *(_s14CodableWrapperVMa_35(0) + 24);
    v17[13] = 2;
    _s14CodableWrapperVMa_0(0);
    sub_18EF8558C(&unk_1EACB6A38);
    sub_18F0943CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFFB4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFB1B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFB4D8(uint64_t a1)
{
  v2 = sub_18EFC9854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFB514(uint64_t a1)
{
  v2 = sub_18EFC9854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFB568@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v24 - v5;
  v7 = [v1 propertyIdentifier];
  v8 = sub_18F093B8C();
  v26 = v9;
  v27 = v8;

  v10 = [v1 entityType];
  v25 = sub_18F093B8C();
  v12 = v11;

  v13 = sub_18F0932BC();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v13);
  type metadata accessor for LNStaticDeferredLocalizedStringAlternativeKind(0);
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  sub_18EF8558C(&unk_1ED5FD778);
  v14 = sub_18F093A5C();
  v15 = a1 + *(_s14CodableWrapperVMa_35(0) + 24);
  v16 = _s14CodableWrapperVMa_0(0);
  v17 = v16[7];
  __swift_storeEnumTagSinglePayload(&v15[v17], 1, 1, v13);
  v18 = v16[8];
  v19 = sub_18F0931CC();
  __swift_storeEnumTagSinglePayload(&v15[v18], 1, 1, v19);
  v20 = v16[9];
  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  sub_18F019D08(v6, &v15[v17]);
  sub_18EF933AC(&v15[v18], &qword_1EACB78A0);
  __swift_storeEnumTagSinglePayload(&v15[v18], 1, 1, v19);
  v21 = sub_18EFD8644(v14);

  result = sub_18EF933AC(v6, &qword_1EACB72C8);
  *&v15[v20] = v21;
  v23 = v26;
  *a1 = v27;
  a1[1] = v23;
  a1[2] = v25;
  a1[3] = v12;
  return result;
}

uint64_t sub_18EFFB7CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7079547972657571 && a2 == 0xE900000000000065;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7954797469746E65 && a2 == 0xEA00000000006570;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C61567475706E69 && a2 == 0xEE00657079546575;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6156746C75736572 && a2 == 0xEF6570795465756CLL;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x5464656C676E616DLL && a2 == 0xEF656D614E657079;
            if (v10 || (sub_18F09444C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000021 && 0x800000018F0ADDD0 == a2;
              if (v11 || (sub_18F09444C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001ALL && 0x800000018F0ADE50 == a2;
                if (v12 || (sub_18F09444C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
                  if (v13 || (sub_18F09444C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x4F676E6974726F73 && a2 == 0xEE00736E6F697470;
                    if (v14 || (sub_18F09444C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000017 && 0x800000018F0ADF90 == a2;
                      if (v15 || (sub_18F09444C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x696C696261706163 && a2 == 0xEC00000073656974;
                        if (v16 || (sub_18F09444C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000013 && 0x800000018F0ADE70 == a2;
                          if (v17 || (sub_18F09444C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000012 && 0x800000018F0AE030 == a2;
                            if (v18 || (sub_18F09444C() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000015 && 0x800000018F0AE870 == a2;
                              if (v19 || (sub_18F09444C() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000018 && 0x800000018F0AE890 == a2;
                                if (v20 || (sub_18F09444C() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0x546465776F6C6C61 && a2 == 0xEE00737465677261)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = sub_18F09444C();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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

uint64_t sub_18EFFBD30(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB81E8, &qword_18F0A1018);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFCBE50();
  sub_18F0945BC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v27) = 0;
  sub_18F09437C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v27) = 1;
    sub_18F09437C();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v27) = 2;
    sub_18F09437C();
    v27 = v3[6];
    v29 = 3;
    sub_18F012B0C();
    sub_18F09436C();
    v27 = v3[7];
    v29 = 4;
    sub_18F09436C();
    v17 = v3[8];
    v18 = v3[9];
    LOBYTE(v27) = 5;
    sub_18F09433C();
    v27 = v3[10];
    v29 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
    sub_18EF85B48(&unk_1EACB73B8);
    sub_18F09436C();
    v27 = v3[11];
    v29 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73C0, &qword_18F09BD88);
    sub_18F012A58();
    sub_18F09436C();
    v27 = v3[12];
    v29 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB81D0, &qword_18F0A1008);
    sub_18F018988();
    sub_18F0943CC();
    v27 = v3[13];
    v29 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB81D8, &qword_18F0A1010);
    sub_18F018A3C();
    sub_18F0943CC();
    v27 = v3[14];
    v29 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18F012DE0();
    sub_18F09436C();
    v19 = *(v3 + 128);
    v27 = v3[15];
    v28 = v19;
    v29 = 11;
    type metadata accessor for LNQueryCapabilities();
    sub_18EF8558C(&unk_1EACB8210);
    sub_18F09436C();
    v20 = _s14CodableWrapperVMa_32(0);
    v21 = v20[16];
    LOBYTE(v27) = 12;
    _s14CodableWrapperVMa_1(0);
    sub_18EF8558C(&unk_1EACB73E0);
    sub_18F09436C();
    LOWORD(v27) = *(v3 + v20[17]);
    v29 = 13;
    sub_18F01319C();
    sub_18F09436C();
    v22 = *(v3 + v20[18]);
    LOBYTE(v27) = 14;
    sub_18F09434C();
    v23 = (v3 + v20[19]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v27) = 15;
    sub_18F09433C();
    v27 = *(v3 + v20[20]);
    v29 = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74F8, &qword_18F09BDD8);
    sub_18F0132A4();
    sub_18F09436C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFFC324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFB7CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFC34C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFFBD28();
  *a1 = result;
  return result;
}

uint64_t sub_18EFFC374(uint64_t a1)
{
  v2 = sub_18EFCBE50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFC3B0(uint64_t a1)
{
  v2 = sub_18EFCBE50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static LNQueryMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)()
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_33(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_46();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7620, &qword_18F09BE58);
  OUTLINED_FUNCTION_95(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_21();
  v15 = _s14CodableWrapperVMa_32(v14);
  v16 = OUTLINED_FUNCTION_36(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_113();
  if (v0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_31();
  if (v20)
  {
    sub_18EF933AC(v1, &unk_1EACB7620);
    sub_18EFD2EC8();
    v21 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_38(v21, v22);
LABEL_5:
    sub_18EFD2EC8();
    v23 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_112(v23, v24);
    goto LABEL_6;
  }

  v25 = OUTLINED_FUNCTION_140();
  sub_18EF88240(v25, v26);
  sub_18EF825F4(0, &unk_1ED5FED68, off_1E72B0120);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_244();
  sub_18EF9FE2C();
  v27 = 0;
  v28 = OUTLINED_FUNCTION_100();
  sub_18EFC7954(v28, v29, v30);
  OUTLINED_FUNCTION_200();
  sub_18EF86A6C();
LABEL_6:
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_177();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNQueryMetadata.asJson(prettyPrinted:sortKeys:)(Swift::Bool prettyPrinted, Swift::Bool sortKeys)
{
  OUTLINED_FUNCTION_180();
  v38 = v2;
  v6 = v5;
  v8 = v7;
  v9 = _s14CodableWrapperVMa_32(0);
  v10 = OUTLINED_FUNCTION_95(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  v13 = sub_18F09305C();
  v14 = OUTLINED_FUNCTION_7(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_42();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  v22 = sub_18F0930BC();
  OUTLINED_FUNCTION_277(v22);
  sub_18F0930AC();
  if (v8)
  {
    sub_18F09304C();
    v37 = OUTLINED_FUNCTION_411();
    v23 = OUTLINED_FUNCTION_197();
    sub_18EFD2A7C(v23, v24);
    v8 = v6;
    v6 = *(v16 + 8);
    v25 = OUTLINED_FUNCTION_178();
    v6(v25);
    (v6)(v21, v13);
    LOBYTE(v6) = v8;
    v26 = OUTLINED_FUNCTION_369();
    v37(v26);
  }

  if (v6)
  {
    sub_18F09303C();
    OUTLINED_FUNCTION_411();
    OUTLINED_FUNCTION_134();
    v27 = OUTLINED_FUNCTION_197();
    sub_18EFD2A7C(v27, v28);
    v29 = *(v16 + 8);
    v30 = OUTLINED_FUNCTION_178();
    v29(v30);
    (v29)(v21, v13);
    v31 = OUTLINED_FUNCTION_369();
    v8(v31);
  }

  sub_18EFED20C(v4);
  sub_18EFD3070();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_200();
  sub_18EF86A6C();

  if (v3)
  {
    sub_18EFD2EC8();
    v32 = OUTLINED_FUNCTION_249();
    *v33 = v3;
    OUTLINED_FUNCTION_117(v32, v33);
  }

  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
  result._object = v35;
  result._countAndFlagsBits = v34;
  return result;
}

uint64_t sub_18EFFC89C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F436D6574737973 && a2 == 0xEB00000000726F6CLL;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726156726F6C6F63 && a2 == 0xEC000000746E6169)
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

uint64_t sub_18EFFC96C(char a1)
{
  if (a1)
  {
    return 0x726156726F6C6F63;
  }

  else
  {
    return 0x6F436D6574737973;
  }
}

uint64_t sub_18EFFC9B4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9068, &qword_18F0A9CC0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F020258();
  sub_18F0945BC();
  v16 = a2;
  v15 = 0;
  type metadata accessor for LNSystemColor(0);
  sub_18EF8558C(&unk_1EACB9070);
  sub_18F0943CC();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    type metadata accessor for LNColorVariant(0);
    sub_18EF8558C(&unk_1EACB9078);
    sub_18F0943CC();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_18EFFCBBC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9048, &qword_18F0A9CB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F020258();
  sub_18F09459C();
  type metadata accessor for LNSystemColor(0);
  HIBYTE(v10) = 0;
  sub_18EF8558C(&unk_1EACB9058);
  sub_18F0942CC();
  v8 = v11;
  type metadata accessor for LNColorVariant(0);
  HIBYTE(v10) = 1;
  sub_18EF8558C(&unk_1EACB9060);
  sub_18F0942CC();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_18EFFCE04(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000018F0AE9D0 == a2)
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

uint64_t sub_18EFFCEA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_18EFFCF1C(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E68, &qword_18F0A7D20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E70, &qword_18F0A7D28);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01E784();
  sub_18F0945BC();
  sub_18F01E7D8();
  sub_18F09431C();
  v18 = v16;
  v19 = v17;
  sub_18F01E880();
  sub_18F0943CC();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

void sub_18EFFD12C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E40, &qword_18F0A7D10);
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E48, &qword_18F0A7D18);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01E784();
  v12 = a1;
  sub_18F09459C();
  if (v1)
  {
    goto LABEL_9;
  }

  v32 = v3;
  v33 = v6;
  v13 = v35;
  v14 = sub_18F0942EC();
  sub_18EF89690(v14, 0);
  v19 = v7;
  if (v17 == v18 >> 1)
  {
    v20 = v12;
LABEL_8:
    v26 = sub_18F0940BC();
    swift_allocError();
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F98, &qword_18F0A0E80) + 48);
    *v28 = &_s14CodableWrapperON;
    sub_18F09422C();
    sub_18F0940AC();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v34 + 8))(v10, v19);
    v12 = v20;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    return;
  }

  if (v17 < (v18 >> 1))
  {
    v20 = v12;
    sub_18F019378(v17 + 1, v18 >> 1, v15, v16, v17, v18);
    v22 = v21;
    v24 = v23;
    swift_unknownObjectRelease();
    if (v22 == v24 >> 1)
    {
      sub_18F01E7D8();
      v25 = v33;
      sub_18F09421C();
      sub_18F01E82C();
      sub_18F0942CC();
      v30 = v34;
      swift_unknownObjectRelease();
      (*(v13 + 8))(v25, v32);
      (*(v30 + 8))(v10, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      return;
    }

    v19 = v7;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_18EFFDA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFC89C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFDA60(uint64_t a1)
{
  v2 = sub_18F020258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFDA9C(uint64_t a1)
{
  v2 = sub_18F020258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFDAD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18EFFCBBC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_18EFFDB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFCE04(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFFDB50(uint64_t a1)
{
  v2 = sub_18F01E784();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFDB8C(uint64_t a1)
{
  v2 = sub_18F01E784();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFDBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFCEA0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFFDBF8(uint64_t a1)
{
  v2 = sub_18F01E7D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFDC34(uint64_t a1)
{
  v2 = sub_18F01E7D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18EFFDC70(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_18EFFD12C(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
  }
}

uint64_t sub_18EFFDCB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F726765726F66 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
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

uint64_t sub_18EFFDD90(char a1)
{
  if (a1)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return 0x756F726765726F66;
  }
}

uint64_t sub_18EFFDDC4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB83E0, &qword_18F0A10E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F019608();
  sub_18F0945BC();
  v14 = *v3;
  v15 = *(v3 + 16);
  v13 = 0;
  sub_18F0196B0();
  sub_18F09436C();
  if (!v2)
  {
    v14 = *(v3 + 24);
    v15 = *(v3 + 40);
    v13 = 1;
    sub_18F09436C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18EFFDF68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB83C8, &qword_18F0A10D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F019608();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = 0;
  sub_18F01965C();
  sub_18F09426C();
  v11 = v18;
  v17 = v19;
  v21 = v20;
  v22 = 1;
  sub_18F09426C();
  (*(v6 + 8))(v9, v5);
  v12 = v18;
  v13 = v19;
  v14 = v20;
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v16 = v17;
  *a2 = v11;
  *(a2 + 8) = v16;
  *(a2 + 16) = v21;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  return result;
}

uint64_t sub_18EFFE16C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974)
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

uint64_t sub_18EFFE230(char a1)
{
  if (a1)
  {
    return 0x5379616C70736964;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_18EFFE264(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
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

    else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974)
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

uint64_t sub_18EFFE378(char a1)
{
  if (!a1)
  {
    return 12383;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x5379616C70736964;
}

uint64_t sub_18EFFE3D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

uint64_t sub_18EFFE4A0(char a1)
{
  if (a1)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_18EFFE4D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617A69726F6C6F63 && a2 == 0xEC0000006E6F6974)
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

uint64_t sub_18EFFE598(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974)
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

uint64_t sub_18EFFE6E4(char a1)
{
  result = 12383;
  switch(a1)
  {
    case 1:
      result = 0x6874646977;
      break;
    case 2:
      result = 0x746867696568;
      break;
    case 3:
      result = 0x5379616C70736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18EFFE75C(void *a1)
{
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8390, &qword_18F0A10A8);
  v84 = *(v85 - 8);
  v2 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v77 - v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8398, &qword_18F0A10B0);
  v81 = *(v82 - 8);
  v4 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v77 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB83A0, &qword_18F0A10B8);
  v86 = *(v87 - 8);
  v6 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v77 - v7;
  v8 = sub_18F0932BC();
  v88 = *(v8 - 8);
  v89 = v8;
  v9 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v8);
  *&v91 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB83A8, &qword_18F0A10C0);
  v77 = *(v11 - 8);
  v12 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v77 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB83B0, &qword_18F0A10C8);
  v78 = *(v79 - 8);
  v15 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v17 = &v77 - v16;
  v18 = _s14CodableWrapperOMa(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB83B8, &qword_18F0A10D0);
  v94 = *(v22 - 8);
  v95 = v22;
  v23 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v77 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF8FCA8();
  v96 = v25;
  sub_18F0945BC();
  sub_18EF86A14(v92, v21);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v66 = *v21;
      v65 = *(v21 + 1);
      v67 = *(v21 + 1);
      v91 = *(v21 + 2);
      v92 = v67;
      v90 = *(v21 + 6);
      LODWORD(v89) = v21[56];
      v68 = v21[57];
      LOBYTE(v97) = 1;
      sub_18EF91480();
      v39 = v95;
      v40 = v96;
      sub_18F09431C();
      LOBYTE(v97) = 0;
      v69 = v93;
      sub_18F09437C();
      if (v69)
      {

        v42 = &v102;
        goto LABEL_13;
      }

      v98 = v91;
      v97 = v92;
      v99 = v90;
      v100 = v89;
      v101 = v68;
      v103 = 1;
      sub_18F0195B4();
      sub_18F09436C();
      (*(v77 + 8))(v14, v11);
      goto LABEL_19;
    case 2u:
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8380, &qword_18F0A10A0);
      v44 = *&v21[v43[12]];
      v45 = *&v21[v43[16]];
      v46 = &v21[v43[20]];
      *&v92 = *v46;
      LODWORD(v85) = v46[8];
      v48 = v88;
      v47 = v89;
      v49 = v91;
      (*(v88 + 32))(v91, v21, v89);
      LOBYTE(v97) = 2;
      sub_18F01950C();
      v50 = v90;
      v51 = v95;
      v52 = v96;
      sub_18F09431C();
      LOBYTE(v97) = 0;
      sub_18EF8558C(&unk_1EACB6B48);
      v53 = v87;
      v54 = v93;
      sub_18F0943CC();
      if (v54)
      {
        (*(v86 + 8))(v50, v53);
        (*(v48 + 8))(v49, v47);
        v55 = *(v94 + 8);
        v56 = v52;
      }

      else
      {
        v70 = v85;
        v71 = v92;
        LOBYTE(v97) = 1;
        sub_18F09439C();
        LOBYTE(v97) = 2;
        sub_18F09439C();
        *&v97 = v71;
        BYTE8(v97) = v70;
        v103 = 3;
        type metadata accessor for LNImageDisplayStyle(0);
        sub_18EF8558C(&unk_1EACB6AA8);
        v75 = v90;
        sub_18F09436C();
        v76 = v96;
        (*(v86 + 8))(v75, v53);
        (*(v48 + 8))(v91, v47);
        v55 = *(v94 + 8);
        v56 = v76;
      }

      v72 = v51;
      return v55(v56, v72);
    case 3u:
      v58 = *v21;
      v57 = *(v21 + 1);
      *&v92 = *(v21 + 2);
      v59 = v21[24];
      LOBYTE(v97) = 3;
      sub_18F0194B8();
      v60 = v80;
      v61 = v95;
      v62 = v96;
      sub_18F09431C();
      *&v97 = v58;
      *(&v97 + 1) = v57;
      v103 = 0;
      sub_18F017448();
      v63 = v82;
      v64 = v93;
      sub_18F0943CC();
      if (v64)
      {
        (*(v81 + 8))(v60, v63);
        (*(v94 + 8))(v62, v61);
        return sub_18EF9A4AC(v58, v57);
      }

      else
      {
        *&v97 = v92;
        BYTE8(v97) = v59;
        v103 = 1;
        type metadata accessor for LNImageDisplayStyle(0);
        sub_18EF8558C(&unk_1EACB6AA8);
        sub_18F09436C();
        sub_18EF9A4AC(v58, v57);
        (*(v81 + 8))(v60, v63);
        return (*(v94 + 8))(v62, v61);
      }

    case 4u:
      v37 = *v21;
      v36 = *(v21 + 1);
      v38 = *(v21 + 2);
      LOBYTE(v97) = 4;
      sub_18F019464();
      v14 = v83;
      v39 = v95;
      v40 = v96;
      sub_18F09431C();
      *&v97 = v37;
      v103 = 0;
      type metadata accessor for LNImageISIconType(0);
      sub_18EF8558C(&unk_1EACB83C0);
      v11 = v85;
      v41 = v93;
      sub_18F0943CC();
      if (!v41)
      {
        LOBYTE(v97) = 1;
        sub_18F09437C();
      }

      v42 = &v104;
LABEL_13:
      (*(*(v42 - 32) + 8))(v14, v11);
      return (*(v94 + 8))(v40, v39);
    default:
      v27 = *v21;
      v28 = *(v21 + 1);
      v29 = *(v21 + 3);
      *&v92 = *(v21 + 2);
      *&v91 = *(v21 + 4);
      v30 = v21[40];
      LOBYTE(v97) = 0;
      sub_18F019560();
      v31 = v95;
      v32 = v96;
      sub_18F09431C();
      LOBYTE(v97) = 0;
      v33 = v79;
      v34 = v93;
      sub_18F09437C();

      if (v34)
      {

        (*(v78 + 8))(v17, v33);
        return (*(v94 + 8))(v32, v31);
      }

      else
      {
        v73 = v30;
        v74 = v91;
        LOBYTE(v97) = 1;
        sub_18F09433C();

        *&v97 = v74;
        BYTE8(v97) = v73;
        v103 = 2;
        type metadata accessor for LNImageDisplayStyle(0);
        sub_18EF8558C(&unk_1EACB6AA8);
        sub_18F09436C();
        (*(v78 + 8))(v17, v33);
LABEL_19:
        v72 = v95;
        v55 = *(v94 + 8);
        v56 = v96;
        return v55(v56, v72);
      }
  }
}

uint64_t sub_18EFFF440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFDCB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFF468(uint64_t a1)
{
  v2 = sub_18F019608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFF4A4(uint64_t a1)
{
  v2 = sub_18F019608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_18EFFF4E0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_18EFFDF68(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_18EFFF524(void *a1)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[9] = *(v1 + 25);
  return sub_18EFFDDC4(a1);
}

uint64_t sub_18EFFF560(uint64_t a1)
{
  v2 = sub_18EF8FCA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFF59C(uint64_t a1)
{
  v2 = sub_18EF8FCA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFF5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFE16C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFF608(uint64_t a1)
{
  v2 = sub_18F0194B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFF644(uint64_t a1)
{
  v2 = sub_18F0194B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFF688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFE264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFF6B0(uint64_t a1)
{
  v2 = sub_18F019560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFF6EC(uint64_t a1)
{
  v2 = sub_18F019560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFF730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFE3D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFF758(uint64_t a1)
{
  v2 = sub_18F019464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFF794(uint64_t a1)
{
  v2 = sub_18F019464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFF7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFE4D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFF7F8(uint64_t a1)
{
  v2 = sub_18EF91480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFF834(uint64_t a1)
{
  v2 = sub_18EF91480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFFF878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFE598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFFF8A0(uint64_t a1)
{
  v2 = sub_18F01950C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFFF8DC(uint64_t a1)
{
  v2 = sub_18F01950C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_18EFFF930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_18F093B5C();

  v8 = [v6 initWithImageNamed:v7 renderingMode:a3 displayStyle:a4];

  return v8;
}

id sub_18EFFF9BC(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_18F093B5C();

  v4 = [v2 initWithIconType:a1 identifier:v3];

  return v4;
}

id sub_18EFFFA38(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_18F09324C();
  v12 = [v10 initWithURL:v11 width:a2 height:a3 renderingMode:a4 displayStyle:a5];

  v13 = sub_18F0932BC();
  (*(*(v13 - 8) + 8))(a1, v13);
  return v12;
}

id sub_18EFFFB04(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithINImage:a1 displayStyle:a2 size:a3];

  return v5;
}

uint64_t sub_18EFFFB68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x32566567616D69 && a2 == 0xE700000000000000;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7470697263736564 && a2 == 0xEF747865546E6F69)
          {

            return 5;
          }

          else
          {
            v11 = sub_18F09444C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18EFFFD50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8330, &qword_18F0A1068);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF9208C();
  sub_18F0945BC();
  v25 = 0;
  _s14CodableWrapperVMa_0(0);
  sub_18EF8558C(&unk_1EACB6A38);
  sub_18F0943CC();
  if (!v2)
  {
    v11 = _s14CodableWrapperVMa_2(0);
    v12 = v11[5];
    v24 = 1;
    sub_18F09436C();
    v18 = v11[6];
    v23 = 2;
    v13 = _s14CodableWrapperOMa(0);
    v17[1] = sub_18EF8558C(&unk_1EACB6A28);
    v18 = v13;
    sub_18F09436C();
    v14 = v11[7];
    v22 = 3;
    sub_18F09436C();
    v19 = *(v3 + v11[8]);
    v21 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18F013748();
    sub_18F09436C();
    v15 = v11[9];
    v20 = 5;
    sub_18F09436C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18F00005C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFFFB68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F000084(uint64_t a1)
{
  v2 = sub_18EF9208C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F0000C0(uint64_t a1)
{
  v2 = sub_18EF9208C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F000114(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000018F0AE7B0 == a2)
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

uint64_t sub_18F0001EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB80D0, &qword_18F0A0F80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF8F4C8();
  sub_18F0945BC();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_18F09437C();
  if (!v2)
  {
    v13 = *(_s14CodableWrapperVMa_18(0) + 20);
    v15[14] = 1;
    _s14CodableWrapperVMa_2(0);
    sub_18EF8558C(&unk_1EACB6AA0);
    sub_18F0943CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18F0003A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F000114(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F0003CC(uint64_t a1)
{
  v2 = sub_18EF8F4C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F000408(uint64_t a1)
{
  v2 = sub_18EF8F4C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18F00045C(uint64_t *a1@<X8>)
{
  v3 = [v1 identifier];
  v4 = sub_18F093B8C();
  v6 = v5;

  v7 = [v1 displayRepresentation];
  v8 = _s14CodableWrapperVMa_18(0);
  sub_18EFE6608(a1 + *(v8 + 20));

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_18F0004F0(uint64_t a1, uint64_t a2)
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
        v8 = a1 == 0xD00000000000001ALL && 0x800000018F0ADE50 == a2;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5479616C70736964 && a2 == 0xEF656D614E657079;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x800000018F0AE170 == a2;
            if (v10 || (sub_18F09444C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7365736163 && a2 == 0xE500000000000000;
              if (v11 || (sub_18F09444C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000018 && 0x800000018F0AE1F0 == a2;
                if (v12 || (sub_18F09444C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000017 && 0x800000018F0ADF90 == a2;
                  if (v13 || (sub_18F09444C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6D65747379537369 && a2 == 0xE800000000000000;
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
                        v16 = a1 == 0xD000000000000016 && 0x800000018F0AE050 == a2;
                        if (v16 || (sub_18F09444C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000017 && 0x800000018F0ADFF0 == a2;
                          if (v17 || (sub_18F09444C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000012 && 0x800000018F0AE030 == a2;
                            if (v18 || (sub_18F09444C() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x546465776F6C6C61 && a2 == 0xEE00737465677261)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_18F09444C();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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

uint64_t sub_18F00096C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F0004F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F000994(uint64_t a1)
{
  v2 = sub_18EF8F408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F0009D0(uint64_t a1)
{
  v2 = sub_18EF8F408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LNEnumMetadata.CodableWrapper.encode(to:)()
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_298();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7630, &qword_18F09BE60);
  OUTLINED_FUNCTION_7(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_80();
  sub_18EF8F408();
  OUTLINED_FUNCTION_214();
  v8 = *v1;
  v9 = v1[1];
  OUTLINED_FUNCTION_35();
  sub_18F09437C();
  if (!v0)
  {
    v10 = v1[2];
    v11 = v1[3];
    OUTLINED_FUNCTION_250();
    OUTLINED_FUNCTION_35();
    sub_18F09433C();
    v20 = v1[4];
    OUTLINED_FUNCTION_397();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
    OUTLINED_FUNCTION_79(&unk_1EACB73B8);
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
    v21 = v1[5];
    OUTLINED_FUNCTION_294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73C0, &qword_18F09BD88);
    sub_18F012A58();
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
    v12 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
    v13 = v12[8];
    OUTLINED_FUNCTION_379();
    _s14CodableWrapperVMa_0(0);
    OUTLINED_FUNCTION_5();
    sub_18EF8558C(v14);
    OUTLINED_FUNCTION_69();
    sub_18F0943CC();
    v15 = v12[9];
    OUTLINED_FUNCTION_69();
    sub_18F09436C();
    OUTLINED_FUNCTION_167(v12[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7640, &qword_18F09BE68);
    sub_18F0138B8();
    OUTLINED_FUNCTION_3();
    sub_18F0943CC();
    OUTLINED_FUNCTION_233(v12[11]);
    OUTLINED_FUNCTION_35();
    sub_18F09433C();
    OUTLINED_FUNCTION_167(v12[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18F012DE0();
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
    v16 = *(v1 + v12[13]);
    OUTLINED_FUNCTION_110();
    sub_18F09434C();
    OUTLINED_FUNCTION_167(v12[14]);
    OUTLINED_FUNCTION_361();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18F013748();
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
    OUTLINED_FUNCTION_233(v12[15]);
    OUTLINED_FUNCTION_35();
    sub_18F09433C();
    OUTLINED_FUNCTION_167(v12[16]);
    OUTLINED_FUNCTION_360();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74A8, &qword_18F09BDC0);
    sub_18F012FEC();
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
    v22 = *(v1 + v12[17]);
    sub_18F01319C();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_110();
    sub_18F09436C();
    OUTLINED_FUNCTION_167(v12[18]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74F8, &qword_18F09BDD8);
    sub_18F0132A4();
    OUTLINED_FUNCTION_3();
    sub_18F09436C();
  }

  v17 = *(v4 + 8);
  v18 = OUTLINED_FUNCTION_318();
  v19(v18);
  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_177();
}

void LNEnumMetadata.wrapper(encodingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_260();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v192 = v27;
  v28 = _s14CodableWrapperVMa_18(0);
  v29 = OUTLINED_FUNCTION_45(v28);
  v198 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_220();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  OUTLINED_FUNCTION_95(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_133(v37, v178);
  v200 = _s14CodableWrapperVMa_0(0);
  v38 = OUTLINED_FUNCTION_7(v200);
  v196 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_42();
  v44 = v42 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v193 = &v178 - v46;
  v47 = OUTLINED_FUNCTION_237();
  v48 = _s14CodableWrapperVMa(v47);
  v49 = OUTLINED_FUNCTION_45(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_22();
  v56 = (v55 - v54);
  v57 = [v20 identifier];
  v58 = sub_18F093B8C();
  v190 = v59;
  v191 = v58;

  v60 = [v20 mangledTypeName];
  v61 = sub_18F093B8C();
  v188 = v62;
  v189 = v61;

  v63 = [v20 mangledTypeNameByBundleIdentifier];
  v187 = sub_18F093A4C();

  v64 = [v20 effectiveBundleIdentifiers];
  v65 = [v64 array];

  v66 = sub_18F093DCC();
  v67 = sub_18EFF3050(v66);

  v197 = v26;
  if (v67)
  {
    v68 = sub_18EFA0A7C(v67);
    if (v68)
    {
      v69 = v68;
      OUTLINED_FUNCTION_11(MEMORY[0x1E69E7CC0]);
      sub_18F00F468();
      if (v69 < 0)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v195 = v44;
      v70 = 0;
      v199 = v202;
      do
      {
        if ((v67 & 0xC000000000000001) != 0)
        {
          v71 = OUTLINED_FUNCTION_197();
          v72 = MEMORY[0x193AD8BA0](v71);
        }

        else
        {
          v72 = *(v67 + 8 * v70 + 32);
        }

        v73 = v72;
        sub_18EFF0A68(v56);

        OUTLINED_FUNCTION_129();
        if (v76)
        {
          OUTLINED_FUNCTION_41(v74);
          sub_18F00F468();
          v75 = v202;
        }

        ++v70;
        *(v75 + 16) = v21;
        v77 = *(v51 + 80);
        OUTLINED_FUNCTION_149();
        v199 = v78;
        v80 = v78 + v79 + *(v51 + 72) * v23;
        OUTLINED_FUNCTION_25();
        sub_18EF88240(v56, v81);
      }

      while (v69 != v70);

      v26 = v197;
      v44 = v195;
    }

    else
    {

      v199 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v199 = 0;
  }

  v82 = &selRef_scrollProtocol;
  v83 = [v26 displayRepresentation];
  v84 = [v83 name];

  sub_18EFD9154(v193);
  v85 = [v26 displayRepresentation];
  v86 = [v85 numericFormat];

  if (v86)
  {
    v87 = v194;
    sub_18EFD9154(v194);

    v88 = 0;
  }

  else
  {
    v88 = 1;
    v87 = v194;
  }

  __swift_storeEnumTagSinglePayload(v87, v88, 1, v200);
  v89 = [v26 cases];
  sub_18EF825F4(0, &qword_1ED5FDFF0, off_1E72B0040);
  OUTLINED_FUNCTION_272();
  v90 = sub_18F093DCC();

  v91 = sub_18EFA0A7C(v90);
  if (!v91)
  {

    v200 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v92 = v91;
  OUTLINED_FUNCTION_11(MEMORY[0x1E69E7CC0]);
  sub_18F00F620();
  if (v92 < 0)
  {
    __break(1u);
    goto LABEL_78;
  }

  OUTLINED_FUNCTION_394();
  v200 = v93;
  v94 = v198;
  do
  {
    if ((v90 & 0xC000000000000001) != 0)
    {
      v95 = OUTLINED_FUNCTION_273();
      v96 = MEMORY[0x193AD8BA0](v95);
    }

    else
    {
      v96 = OUTLINED_FUNCTION_353();
    }

    v86 = v96;
    sub_18F00045C(v22);

    OUTLINED_FUNCTION_129();
    if (v76)
    {
      OUTLINED_FUNCTION_41(v97);
      sub_18F00F620();
      v98 = v202;
    }

    ++v89;
    *(v98 + 16) = &selRef_scrollProtocol;
    v99 = *(v94 + 80);
    OUTLINED_FUNCTION_149();
    v200 = v100;
    v101 = *(v94 + 72);
    OUTLINED_FUNCTION_179();
    sub_18EF88240(v22, v102);
  }

  while (v92 != v89);

  v26 = v197;
  v82 = &selRef_scrollProtocol;
LABEL_28:
  sub_18F013BD0(v26, &selRef_customIntentEnumTypeName);
  OUTLINED_FUNCTION_327();
  v103 = sub_18F013B0C(v26);
  if (v103)
  {
    v89 = v103;
    v104 = sub_18EFD61FC(v103);
    OUTLINED_FUNCTION_281(v104);
  }

  else
  {
    v184 = 0;
  }

  v105 = [v26 isSystem];
  v186 = v86;
  v185 = v90;
  if (v105)
  {
    v89 = v105;
    v183 = [v105 BOOLValue];
  }

  else
  {
    v183 = 2;
  }

  v106 = sub_18F012924([v26 v82[234]]);
  if (!v106)
  {
    v198 = 0;
    goto LABEL_47;
  }

  v107 = v106;
  v108 = sub_18EFA0A7C(v106);
  if (!v108)
  {

    v198 = MEMORY[0x1E69E7CC0];
    goto LABEL_47;
  }

  v109 = v108;
  OUTLINED_FUNCTION_11(MEMORY[0x1E69E7CC0]);
  sub_18F00F0B8();
  if (v109 < 0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_394();
  v198 = v110;
  v111 = v196;
  do
  {
    if ((v107 & 0xC000000000000001) != 0)
    {
      v112 = OUTLINED_FUNCTION_273();
      v113 = MEMORY[0x193AD8BA0](v112);
    }

    else
    {
      v113 = OUTLINED_FUNCTION_353();
    }

    v86 = v113;
    sub_18EFD9154(v44);

    OUTLINED_FUNCTION_129();
    if (v76)
    {
      OUTLINED_FUNCTION_41(v114);
      sub_18F00F0B8();
      v115 = v202;
    }

    ++v89;
    *(v115 + 16) = v82;
    v116 = *(v111 + 80);
    OUTLINED_FUNCTION_149();
    v198 = v117;
    v119 = v117 + v118 + *(v111 + 72) * v23;
    OUTLINED_FUNCTION_1_1();
    sub_18EF88240(v44, v120);
  }

  while (v109 != v89);

LABEL_47:
  v121 = sub_18F013BD0(v26, &selRef_fullyQualifiedTypeName);
  v123 = v122;
  v124 = sub_18F012778(v26, &selRef_assistantDefinedSchemas, qword_1ED5FE9A0, off_1E72AFF10);
  v182 = v121;
  v181 = v123;
  if (!v124)
  {
    v132 = 0;
    goto LABEL_60;
  }

  v125 = v124;
  v126 = sub_18EFA0A7C(v124);
  if (!v126)
  {

    v132 = MEMORY[0x1E69E7CC0];
    goto LABEL_60;
  }

  v127 = v126;
  v128 = OUTLINED_FUNCTION_92(MEMORY[0x1E69E7CC0]);
  sub_18F00F398(v128, v129, v130);
  if (v127 < 0)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v131 = 0;
  v132 = v201;
  do
  {
    if ((v125 & 0xC000000000000001) != 0)
    {
      v133 = OUTLINED_FUNCTION_189();
      v134 = MEMORY[0x193AD8BA0](v133);
    }

    else
    {
      v134 = *(v125 + 8 * v131 + 32);
    }

    v135 = v134;
    OUTLINED_FUNCTION_412();

    v201 = v132;
    v137 = *(v132 + 16);
    v136 = *(v132 + 24);
    if (v137 >= v136 >> 1)
    {
      v138 = OUTLINED_FUNCTION_114(v136);
      v86 = &v201;
      sub_18F00F398(v138, v137 + 1, 1);
      v132 = v201;
    }

    ++v131;
    *(v132 + 16) = v137 + 1;
    OUTLINED_FUNCTION_91(v132 + 48 * v137);
  }

  while (v127 != v131);

LABEL_60:
  v139 = v197;
  v140 = [v197 visibilityMetadata];
  v141 = [v140 isDiscoverable];
  v142 = [v140 assistantOnly];

  v143 = sub_18F012778(v139, &selRef_allowedTargets, &unk_1EACB72E8, off_1E72B01E8);
  v180 = v141;
  v179 = v142;
  if (v143)
  {
    v144 = v143;
    v145 = sub_18EFA0A7C(v143);
    if (v145)
    {
      v146 = v145;
      OUTLINED_FUNCTION_92(MEMORY[0x1E69E7CC0]);
      sub_18F00F308();
      if ((v146 & 0x8000000000000000) == 0)
      {
        v147 = 0;
        v148 = v201;
        v195 = v144 & 0xC000000000000001;
        v196 = v146;
        v197 = v144;
        do
        {
          if (v195)
          {
            v149 = MEMORY[0x193AD8BA0](v147, v144);
          }

          else
          {
            v149 = *(v144 + 8 * v147 + 32);
          }

          v150 = v149;
          v151 = sub_18EFF17B4();
          v153 = v152;
          v155 = v154;
          v157 = v156;

          v201 = v148;
          v159 = *(v148 + 16);
          v158 = *(v148 + 24);
          if (v159 >= v158 >> 1)
          {
            OUTLINED_FUNCTION_114(v158);
            OUTLINED_FUNCTION_339();
            sub_18F00F308();
            v148 = v201;
          }

          ++v147;
          *(v148 + 16) = v159 + 1;
          v160 = (v148 + 32 * v159);
          v160[4] = v151;
          v160[5] = v153;
          v160[6] = v155;
          v160[7] = v157;
          v144 = v197;
        }

        while (v196 != v147);

        goto LABEL_73;
      }

LABEL_81:
      __break(1u);
      return;
    }

    v148 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v148 = 0;
  }

LABEL_73:
  OUTLINED_FUNCTION_305(&a12);
  if (v168)
  {
    v161 = 0;
  }

  v169 = v192;
  *v192 = v162;
  v169[1] = v163;
  v170 = v161 | v180;
  v169[2] = v164;
  v169[3] = v165;
  v169[4] = v166;
  v169[5] = v167;
  v171 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  v172 = v171[8];
  OUTLINED_FUNCTION_1_1();
  sub_18EF88240(v193, v169 + v173);
  v174 = v171[9];
  sub_18EF869B4();
  *(v169 + v171[10]) = v200;
  OUTLINED_FUNCTION_255((v169 + v171[11]));
  *(v169 + v175) = v176;
  *(v169 + v171[13]) = v183;
  *(v169 + v171[14]) = v198;
  OUTLINED_FUNCTION_286((v169 + v171[15]));
  *(v169 + v177) = v132;
  *(v169 + v171[17]) = v170;
  *(v169 + v171[18]) = v148;
  OUTLINED_FUNCTION_259();
}

uint64_t sub_18F0019B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761)
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

uint64_t sub_18F001A7C(char a1)
{
  if (a1)
  {
    return 0x6D496D6574737973;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_18F001ABC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E08, &qword_18F0A7CE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01E5E8();
  sub_18F0945BC();
  v15[15] = 0;
  _s14CodableWrapperVMa_0(0);
  sub_18EF8558C(&unk_1EACB6A38);
  sub_18F0943CC();
  if (!v2)
  {
    v11 = (v3 + *(_s14CodableWrapperVMa_31(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_18F09433C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18F001C78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = _s14CodableWrapperVMa_0(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8DF0, &qword_18F0A7CD8);
  v29 = *(v31 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v26 - v8;
  v10 = _s14CodableWrapperVMa_31(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01E5E8();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v27 = v10;
  v15 = v13;
  v16 = v29;
  v33 = 0;
  sub_18EF8558C(&unk_1ED5FF4F8);
  v18 = v30;
  v17 = v31;
  sub_18F0942CC();
  sub_18EF88240(v18, v15);
  v32 = 1;
  v19 = sub_18F09423C();
  v20 = v16;
  v21 = v19;
  v23 = v22;
  v24 = (v15 + *(v27 + 20));
  (*(v20 + 8))(v9, v17);
  *v24 = v21;
  v24[1] = v23;
  sub_18EF86A14(v15, v28);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_18EF86A6C();
}

uint64_t sub_18F001FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F0019B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F001FE4(uint64_t a1)
{
  v2 = sub_18F01E5E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F002020(uint64_t a1)
{
  v2 = sub_18F01E5E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F00208C@<X0>(SEL *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = [v4 *a1];
  sub_18EFD9154(a4);

  v9 = OUTLINED_FUNCTION_189();
  sub_18F013BD0(v9, v10);
  OUTLINED_FUNCTION_327();
  result = a3(0);
  v12 = (a4 + *(result + 20));
  *v12 = v8;
  v12[1] = a2;
  return result;
}

void sub_18F002110()
{
  OUTLINED_FUNCTION_260();
  v27 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = OUTLINED_FUNCTION_320();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_95(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_256();
  v17 = _s14CodableWrapperVMa_0(0);
  v18 = OUTLINED_FUNCTION_95(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_330();
  v21 = sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  OUTLINED_FUNCTION_8();
  sub_18EF86A14(v10, v0);
  sub_18EF9FE2C();
  v22 = v6;
  sub_18EF9CEB8(v0, v1, v6);
  v23 = OUTLINED_FUNCTION_138();
  v24 = (v10 + *(v4(v23) + 20));
  if (v24[1])
  {
    v25 = *v24;
    v26 = sub_18F093B5C();
  }

  else
  {
    v26 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) *v27];

  sub_18EF933AC(v8, &qword_1EACB72C8);
  sub_18EF86A6C();
  OUTLINED_FUNCTION_259();
}

uint64_t sub_18F0022B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000018F0AE810 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6369666963657073 && a2 == 0xED0000656C746954;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x54636972656E6567 && a2 == 0xEC000000656C7469;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x800000018F0AE830 == a2;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000011 && 0x800000018F0AE850 == a2)
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

unint64_t sub_18F002470(char a1)
{
  result = 0x6369666963657073;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x54636972656E6567;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_18F002528(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB81A0, &qword_18F0A0FF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F0186F0();
  sub_18F0945BC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v20) = 0;
  sub_18F09437C();
  if (!v2)
  {
    v20 = *(v3 + 1);
    v21 = v3[4];
    v19 = 1;
    sub_18F018880();
    sub_18F0943CC();
    v13 = v3[5];
    v14 = v3[6];
    LOBYTE(v20) = 2;
    sub_18F09433C();
    v15 = v3[7];
    v16 = v3[8];
    LOBYTE(v20) = 3;
    sub_18F09433C();
    *&v20 = v3[9];
    v19 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8198, &qword_18F0A0FF0);
    sub_18F0188D4();
    sub_18F09436C();
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_18F002750@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8190, &qword_18F0A0FE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F0186F0();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v32) = 0;
  v11 = sub_18F09427C();
  v30 = v12;
  LOBYTE(__src[0]) = 1;
  sub_18EFA3674();
  sub_18F0942CC();
  v27 = v32;
  v29 = v33;
  v28 = v34;
  LOBYTE(v32) = 2;
  v25 = sub_18F09423C();
  v26 = v13;
  LOBYTE(v32) = 3;
  v23 = sub_18F09423C();
  v24 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8198, &qword_18F0A0FF0);
  v42 = 4;
  sub_18F018744();
  sub_18F09426C();
  (*(v6 + 8))(v9, v5);
  v22 = v43;
  v15 = v30;
  __src[0] = v11;
  __src[1] = v30;
  v16 = v29;
  __src[2] = v27;
  __src[3] = v29;
  v17 = v28;
  __src[4] = v28;
  __src[5] = v25;
  v18 = v26;
  __src[6] = v26;
  __src[7] = v23;
  v19 = v24;
  __src[8] = v24;
  __src[9] = v43;
  sub_18F018818(__src, &v32);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v32 = v11;
  v33 = v15;
  v34 = v27;
  v35 = v16;
  v36 = v17;
  v37 = v25;
  v38 = v18;
  v39 = v23;
  v40 = v19;
  v41 = v22;
  sub_18F018850(&v32);
  return memcpy(a2, __src, 0x50uLL);
}

uint64_t sub_18F002BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F0022B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F002BDC(uint64_t a1)
{
  v2 = sub_18F0186F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F002C18(uint64_t a1)
{
  v2 = sub_18F0186F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_18F002C54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_18F002750(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

void sub_18F002CF4(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s14CodableWrapperVMa_31(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 parameterIdentifier];
  v10 = sub_18F093B8C();
  v12 = v11;

  v13 = [v2 specificTitle];
  v14 = sub_18EFE33A0();
  v36 = v16;
  v37 = v15;

  v17 = sub_18F013BD0(v2, &selRef_localizationTable);
  v35 = v18;
  v19 = sub_18F012778(v2, &selRef_optionsCollection, &qword_1EACB6E78, off_1E72AFEF0);
  v38 = v14;
  if (!v19)
  {
    v24 = 0;
LABEL_15:
    *a1 = v10;
    *(a1 + 8) = v12;
    v28 = v37;
    *(a1 + 16) = v38;
    *(a1 + 24) = v28;
    *(a1 + 32) = v36;
    *(a1 + 40) = xmmword_18F09BCE0;
    v29 = v35;
    *(a1 + 56) = v17;
    *(a1 + 64) = v29;
    *(a1 + 72) = v24;
    return;
  }

  v20 = v19;
  v34 = v12;
  v21 = sub_18EFA0A7C(v19);
  if (!v21)
  {

    v24 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v12 = v34;
    goto LABEL_15;
  }

  v22 = v21;
  v33 = v17;
  v39 = MEMORY[0x1E69E7CC0];
  sub_18F00F4C0();
  if ((v22 & 0x8000000000000000) == 0)
  {
    v31 = v10;
    v32 = a1;
    v23 = 0;
    v24 = v39;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x193AD8BA0](v23, v20);
      }

      else
      {
        v25 = *(v20 + 8 * v23 + 32);
      }

      v26 = v25;
      sub_18F00208C(&selRef_title, &selRef_systemImageName, _s14CodableWrapperVMa_31, v8);

      v39 = v24;
      v27 = *(v24 + 16);
      if (v27 >= *(v24 + 24) >> 1)
      {
        sub_18F00F4C0();
        v24 = v39;
      }

      ++v23;
      *(v24 + 16) = v27 + 1;
      sub_18EF88240(v8, v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27);
    }

    while (v22 != v23);

    v10 = v31;
    a1 = v32;
    v17 = v33;
    goto LABEL_14;
  }

  __break(1u);
}

id sub_18F002FC4(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - v8;
  v10 = *a1;
  v11 = a1[1];
  v28 = sub_18F093B5C();
  sub_18EF825F4(0, &unk_1ED5FDB38, off_1E72AFEC8);
  v13 = a1[2];
  v12 = a1[3];
  v14 = a1[4];
  v15 = a2;
  sub_18EF9FE2C();
  v16 = a3;

  v17 = sub_18EFA4D44(v13, v12, v14, v9, a3);
  v18 = v17;
  if (a1[8])
  {
    v19 = a1[7];
    v20 = a1[8];

    v21 = sub_18F093B5C();
  }

  else
  {
    v21 = 0;
  }

  if (a1[9])
  {
    MEMORY[0x1EEE9AC00](v17);
    *(&v27 - 2) = v15;
    *(&v27 - 1) = a3;

    sub_18EF9D97C(sub_18F019CEC);
    sub_18F018850(a1);

    sub_18EF825F4(0, &qword_1EACB6E78, off_1E72AFEF0);
    v22 = sub_18F093DBC();
  }

  else
  {
    sub_18F018850(a1);
    v22 = 0;
  }

  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = v28;
  v25 = [v23 initWithParameterIdentifier:v28 specificTitle:v18 localizationTable:v21 optionsCollection:v22];

  sub_18EF933AC(v15, &qword_1EACB72C8);
  return v25;
}

void sub_18F003248(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = _s14CodableWrapperVMa_31(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18EF825F4(0, &qword_1EACB6E78, off_1E72AFEF0);
  sub_18EF86A14(a1, v11);
  sub_18EF9FE2C();
  v12 = a2;
  sub_18F002110();
  *a3 = v13;
}

uint64_t sub_18F0033D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x800000018F0AE250 == a2;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6554657361726870 && a2 == 0xEF736574616C706DLL;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74695474726F6873 && a2 == 0xEA0000000000656CLL;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x800000018F0AE7D0 == a2;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x800000018F0AE7F0 == a2;
            if (v10 || (sub_18F09444C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000017 && 0x800000018F0ADF90 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_18F09444C();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18F003628(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8180, &qword_18F0A0FE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA810C();
  sub_18F0945BC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(__dst[0]) = 0;
  sub_18F09437C();
  if (!v2)
  {
    __dst[0] = v3[2];
    v24[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18F013748();
    sub_18F0943CC();
    v21 = _s14CodableWrapperVMa_29(0);
    v13 = v21[6];
    LOBYTE(__dst[0]) = 2;
    _s14CodableWrapperVMa_0(0);
    sub_18EF8558C(&unk_1EACB6A38);
    sub_18F09436C();
    v14 = v21[7];
    LOBYTE(__dst[0]) = 3;
    sub_18F09436C();
    v15 = (v3 + v21[8]);
    v16 = *v15;
    v17 = v15[1];
    v28 = 4;
    sub_18F09433C();
    v18 = v21[9];
    memcpy(__dst, v3 + v18, sizeof(__dst));
    memcpy(v24, v3 + v18, sizeof(v24));
    v27 = 5;
    sub_18EF9FE2C();
    sub_18F01869C();
    sub_18F09436C();
    memcpy(v23, v24, sizeof(v23));
    sub_18EF933AC(v23, &unk_1EACB8170);
    v22 = *(v3 + v21[10]);
    v26 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18F012DE0();
    sub_18F09436C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18F0039D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F0033D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F0039FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F003620();
  *a1 = result;
  return result;
}

uint64_t sub_18F003A24(uint64_t a1)
{
  v2 = sub_18EFA810C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F003A60(uint64_t a1)
{
  v2 = sub_18EFA810C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_18F003AB4@<X0>(const void *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12[-v8];
  memcpy(__dst, a1, sizeof(__dst));
  sub_18EF825F4(0, &unk_1EACB6E40, off_1E72AFEF8);
  sub_18EF9FE2C();
  sub_18F018818(__dst, v12);
  v10 = a2;
  result = sub_18F002FC4(__dst, v9, a2);
  *a3 = result;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAutoShortcutMetadata.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  v3 = OUTLINED_FUNCTION_146();
  v4 = _s14CodableWrapperVMa_29(v3);
  v5 = OUTLINED_FUNCTION_95(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_141();
  sub_18EFEBE88(v2);
  OUTLINED_FUNCTION_109();
  sub_18EFDADC8();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_224();
  if (v1)
  {
    sub_18EFD2EC8();
    v8 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_43(v8, v9);
  }

  v10 = OUTLINED_FUNCTION_49();
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_18F003CA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_18F003D70(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_18F003DA8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8150, &qword_18F0A0FC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F018648();
  sub_18F0945BC();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_18F09437C();
  if (!v2)
  {
    v13 = *(_s14CodableWrapperVMa_28(0) + 20);
    v15[14] = 1;
    _s19BasicCodableWrapperOMa(0);
    sub_18EF8558C(&unk_1EACB6A08);
    sub_18F09436C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18F003F60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8148, &qword_18F0A0FC0);
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = _s14CodableWrapperVMa_28(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 28);
  v16 = _s19BasicCodableWrapperOMa(0);
  v24 = v15;
  __swift_storeEnumTagSinglePayload(v14 + v15, 1, 1, v16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F018648();
  sub_18F09459C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF933AC(v14 + v24, &unk_1EACB72F8);
  }

  else
  {
    v18 = v22;
    v26 = 0;
    *v14 = sub_18F09427C();
    v14[1] = v19;
    v25 = 1;
    sub_18EF8558C(&unk_1ED5FE008);
    sub_18F09426C();
    (*(v18 + 8))(v9, v23);
    sub_18EF872D4();
    sub_18EF86A14(v14, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF86A6C();
  }
}

uint64_t sub_18F0042AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F003CA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F0042D4(uint64_t a1)
{
  v2 = sub_18F018648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F004310(uint64_t a1)
{
  v2 = sub_18F018648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F00437C@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v16 - v5);
  v7 = [v1 identifier];
  v8 = sub_18F093B8C();
  v10 = v9;

  v11 = [v1 value];
  if (v11)
  {
    v12 = v11;
    sub_18EFD7818(v6);
  }

  else
  {
    v13 = _s19BasicCodableWrapperOMa(0);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v13);
  }

  *a1 = v8;
  a1[1] = v10;
  v14 = *(_s14CodableWrapperVMa_28(0) + 20);
  return sub_18EF869B4();
}

id sub_18F00449C(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = *a1;
  v8 = a1[1];
  v9 = sub_18F093B5C();
  v10 = *(_s14CodableWrapperVMa_28(0) + 20);
  v11 = sub_18EFA4790(sub_18EFC74F0);
  v12 = [v6 initWithIdentifier:v9 value:v11];

  sub_18EF86A6C();
  sub_18EF933AC(a2, &qword_1EACB72C8);
  return v12;
}

void static LNProperty.fromJSON(_:bundleURL:effectiveBundleIdentifier:)()
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_33(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_46();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7680, &qword_18F09BE88);
  OUTLINED_FUNCTION_95(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_21();
  v15 = _s14CodableWrapperVMa_28(v14);
  v16 = OUTLINED_FUNCTION_36(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_113();
  if (v0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_31();
  if (v20)
  {
    sub_18EF933AC(v1, &unk_1EACB7680);
    sub_18EFD2EC8();
    v21 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_38(v21, v22);
LABEL_5:
    sub_18EFD2EC8();
    v23 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_112(v23, v24);
    goto LABEL_6;
  }

  v25 = OUTLINED_FUNCTION_140();
  sub_18EF88240(v25, v26);
  sub_18EF825F4(0, &unk_1ED5FCE08, off_1E72B0100);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_244();
  sub_18EF9FE2C();
  v27 = 0;
  v28 = OUTLINED_FUNCTION_100();
  sub_18F00449C(v28, v29, v30);
  OUTLINED_FUNCTION_223();
LABEL_6:
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_177();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNProperty.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  v3 = OUTLINED_FUNCTION_146();
  v4 = _s14CodableWrapperVMa_28(v3);
  v5 = OUTLINED_FUNCTION_95(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_141();
  sub_18F00437C(v2);
  OUTLINED_FUNCTION_109();
  sub_18EFDADC8();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_223();
  if (v1)
  {
    sub_18EFD2EC8();
    v8 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_43(v8, v9);
  }

  v10 = OUTLINED_FUNCTION_49();
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_18F00488C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736564756C636E69 && a2 == 0xE800000000000000)
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

uint64_t sub_18F004954(char a1)
{
  if (a1)
  {
    return 0x736564756C636E69;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_18F00498C(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v16 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8138, &qword_18F0A0FB8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F018514();
  sub_18F0945BC();
  v17 = a2;
  v18 = a3 & 1;
  v19 = 0;
  type metadata accessor for LNBundleMetadataVersion(0);
  sub_18EF8558C(&unk_1EACB8140);
  sub_18F09436C();
  if (!v4)
  {
    v17 = v16;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    sub_18EFA3C14(&unk_1EACB7770);
    sub_18F0943CC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_18F004BA4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB80E8, &qword_18F0A0F90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F018514();
  sub_18F09459C();
  type metadata accessor for LNBundleMetadataVersion(0);
  v11 = 0;
  sub_18EF8558C(&unk_1ED5FEA50);
  sub_18F09426C();
  v8 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
  v11 = 1;
  sub_18EFA3C14(&unk_1ED5FDD20);
  sub_18F0942CC();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_18F004DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F00488C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F004E24(uint64_t a1)
{
  v2 = sub_18F018514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F004E60(uint64_t a1)
{
  v2 = sub_18F018514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F004E9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18F004BA4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
  }

  return result;
}

id sub_18F004F00()
{
  v1 = [objc_opt_self() latestMetadataVersion];
  v2 = [v0 includes];
  sub_18F093DCC();

  return v1;
}

id sub_18F004F84(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    [objc_opt_self() latestMetadataVersion];
  }

  objc_autoreleasePoolPop(MEMORY[0x193AD91F0]());
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_18F093DBC();

  v7 = [v5 initWithIncludes_];

  sub_18EF933AC(a4, &qword_1EACB72C8);
  return v7;
}

id LNPackageMetadata.init(metadataFileURL:bundleURL:)(uint64_t a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = sub_18F09324C();
  v5 = sub_18F0932BC();
  v6 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v5) != 1)
  {
    v6 = sub_18F09324C();
    OUTLINED_FUNCTION_111(v5);
    v8 = *(v7 + 8);
    v9 = OUTLINED_FUNCTION_140();
    v10(v9);
  }

  v20[0] = 0;
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) _initWithMetadataFileURL_bundleURL_error_];

  v12 = v20[0];
  if (v11)
  {
    OUTLINED_FUNCTION_111(v5);
    v14 = *(v13 + 8);
    v15 = v12;
    v14(a1, v5);
  }

  else
  {
    v16 = v20[0];
    sub_18F09318C();

    swift_willThrow();
    OUTLINED_FUNCTION_111(v5);
    (*(v17 + 8))(a1, v5);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

void LNPackageMetadata.init(metadataFileURL:bundleURL:)()
{
  OUTLINED_FUNCTION_180();
  v36 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_162();
  v9 = sub_18F09316C();
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7398, &qword_18F09BD70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F09BCC0;
  v16 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v17 = v16;
  sub_18EFBC078(inited);
  OUTLINED_FUNCTION_336();
  sub_18F09322C();
  if (v0)
  {

LABEL_4:
    sub_18EFD2EC8();
    OUTLINED_FUNCTION_249();
    *v25 = 0;
    v26 = 4;
    goto LABEL_5;
  }

  v18 = sub_18F09315C();
  v20 = v19;
  v21 = *(v12 + 8);
  v22 = OUTLINED_FUNCTION_266();
  v24 = v23(v22);
  if (v20)
  {
    goto LABEL_4;
  }

  if (v18 <= 5048575)
  {
    v29 = MEMORY[0x193AD91F0](v24);
    sub_18F0932CC();
    v30 = sub_18F09302C();
    OUTLINED_FUNCTION_277(v30);
    sub_18F09301C();
    sub_18F01398C();
    sub_18F09300C();

    v31 = OUTLINED_FUNCTION_197();
    sub_18EF9A4AC(v31, v32);
    objc_autoreleasePoolPop(v29);
    swift_getObjectType();
    OUTLINED_FUNCTION_251();
    sub_18EF9FE2C();
    sub_18F004F84(v37, v38, v39, v1);
    v33 = OUTLINED_FUNCTION_284();
    sub_18EF933AC(v33, &qword_1EACB72C8);
    v34 = sub_18F0932BC();
    OUTLINED_FUNCTION_36(v34);
    (*(v35 + 8))(v4);
    OUTLINED_FUNCTION_413();
    goto LABEL_6;
  }

  sub_18EFD2EC8();
  OUTLINED_FUNCTION_249();
  *v25 = v18;
  v26 = 2;
LABEL_5:
  *(v25 + 8) = v26;
  swift_willThrow();
  sub_18EF933AC(v36, &qword_1EACB72C8);
  v27 = sub_18F0932BC();
  OUTLINED_FUNCTION_36(v27);
  (*(v28 + 8))(v4);
  swift_getObjectType();
  OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_413();
LABEL_6:
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_177();
}

id static LNPackageMetadata.fromJSON(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24[-v5];
  v7 = OUTLINED_FUNCTION_137();
  v9 = sub_18EFDA054(v7, v8);
  v12 = v0;
  if (v0)
  {
    goto LABEL_2;
  }

  v16 = v11;
  if (!v11)
  {
    sub_18EFD2EC8();
    v12 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_38(v12, v23);
LABEL_2:
    sub_18EFD2EC8();
    v13 = OUTLINED_FUNCTION_249();
    *v14 = v12;
    return OUTLINED_FUNCTION_278(v13, v14);
  }

  v17 = v9;
  v18 = v10;
  sub_18EF825F4(0, &qword_1ED5FE798, off_1E72B00C0);
  sub_18F0932BC();
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v24[8] = v18 & 1;
  return sub_18F004F84(v17, v18 & 1, v16, v6);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNPackageMetadata.asJson(prettyPrinted:)(Swift::Bool prettyPrinted)
{
  v3 = sub_18F09305C();
  v4 = OUTLINED_FUNCTION_95(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_220();
  v7 = sub_18F0930BC();
  OUTLINED_FUNCTION_277(v7);
  v8 = sub_18F0930AC();
  if (prettyPrinted)
  {
    sub_18F09304C();
    sub_18F09307C();
  }

  v9 = sub_18F004F00();
  sub_18EFD3198(v8, v9, v10 & 1, v11);
  OUTLINED_FUNCTION_48();

  if (v1)
  {
    sub_18EFD2EC8();
    v12 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_43(v12, v13);
  }

  v14 = OUTLINED_FUNCTION_49();
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t sub_18F005998(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
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

uint64_t sub_18F005A68(char a1)
{
  if (a1)
  {
    return 7889261;
  }

  else
  {
    return 7235949;
  }
}

uint64_t sub_18F005A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F005998(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F005AB8(uint64_t a1)
{
  v2 = sub_18F0139E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F005AF4(uint64_t a1)
{
  v2 = sub_18F0139E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LNIntentCollectionSize.CodableWrapper.encode(to:)()
{
  OUTLINED_FUNCTION_180();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7690, &qword_18F09BE90);
  OUTLINED_FUNCTION_7(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_46();
  v11 = *v0;
  v13 = v0[1];
  v12 = v4[4];
  OUTLINED_FUNCTION_190(v4, v4[3]);
  sub_18F0139E0();
  OUTLINED_FUNCTION_219();
  sub_18F0945BC();
  OUTLINED_FUNCTION_159();
  sub_18F0943AC();
  if (!v1)
  {
    OUTLINED_FUNCTION_262();
    OUTLINED_FUNCTION_159();
    sub_18F0943AC();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

void LNIntentCollectionSize.CodableWrapper.init(from:)()
{
  OUTLINED_FUNCTION_180();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB76A0, &qword_18F09BE98);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_127();
  sub_18F0139E0();
  OUTLINED_FUNCTION_174();
  sub_18F09459C();
  if (!v0)
  {
    OUTLINED_FUNCTION_392();
    v9 = sub_18F0942AC();
    OUTLINED_FUNCTION_262();
    OUTLINED_FUNCTION_392();
    v10 = sub_18F0942AC();
    v11 = OUTLINED_FUNCTION_118();
    v12(v11);
    *v4 = v9;
    v4[1] = v10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_177();
}

void LNIntentCollectionSize.wrapper.getter(void *a1@<X8>)
{
  v3 = [v1 min];
  v4 = [v3 integerValue];

  v5 = [v1 max];
  v6 = [v5 integerValue];

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_18F005E64(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657361726870 && a2 == 0xE600000000000000)
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

uint64_t sub_18F005ED8()
{
  sub_18F09452C();
  MEMORY[0x193AD9050](0);
  return sub_18F09456C();
}

uint64_t sub_18F005F30(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8130, &qword_18F0A0FB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F0185F4();
  sub_18F0945BC();
  _s14CodableWrapperVMa_0(0);
  sub_18EF8558C(&unk_1EACB6A38);
  sub_18F0943CC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_18F0060A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = _s14CodableWrapperVMa_0(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8120, &qword_18F0A0FA8);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = _s14CodableWrapperVMa_26(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F0185F4();
  sub_18F09459C();
  if (!v2)
  {
    v16 = v19;
    sub_18EF8558C(&unk_1ED5FF4F8);
    v17 = v21;
    sub_18F0942CC();
    (*(v20 + 8))(v10, v7);
    sub_18EF88240(v17, v14);
    sub_18EF88240(v14, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_18F00631C()
{
  sub_18F09452C();
  MEMORY[0x193AD9050](0);
  return sub_18F09456C();
}

uint64_t sub_18F006360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F005E64(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18F00638C(uint64_t a1)
{
  v2 = sub_18F0185F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F0063C8(uint64_t a1)
{
  v2 = sub_18F0185F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_18F006434(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = _s14CodableWrapperVMa_0(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  sub_18EF86A14(a1, v13);
  sub_18EF9FE2C();
  v15 = a3;
  v16 = sub_18EFA8ED8(v13, 0x74726F6853707041, 0xEC00000073747563, v9, a3);
  v17 = [v14 initWithPhrase_];

  sub_18EF933AC(a2, &qword_1EACB72C8);
  sub_18EF86A6C();
  return v17;
}

void static LNAppShortcutNegativePhrase.fromJSON(_:bundleURL:effectiveBundleIdentifier:)()
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_33(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_46();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB76A8, &qword_18F09BEA0);
  OUTLINED_FUNCTION_95(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_21();
  v15 = _s14CodableWrapperVMa_26(v14);
  v16 = OUTLINED_FUNCTION_36(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_113();
  if (v0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_31();
  if (v20)
  {
    sub_18EF933AC(v1, &unk_1EACB76A8);
    sub_18EFD2EC8();
    v21 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_38(v21, v22);
LABEL_5:
    sub_18EFD2EC8();
    v23 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_112(v23, v24);
    goto LABEL_6;
  }

  v25 = OUTLINED_FUNCTION_140();
  sub_18EF88240(v25, v26);
  sub_18EF825F4(0, &unk_1ED5FE730, off_1E72AFEE8);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_244();
  sub_18EF9FE2C();
  v27 = 0;
  v28 = OUTLINED_FUNCTION_100();
  sub_18F006434(v28, v29, v30);
  OUTLINED_FUNCTION_221();
LABEL_6:
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_177();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAppShortcutNegativePhrase.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  v4 = OUTLINED_FUNCTION_146();
  v5 = _s14CodableWrapperVMa_26(v4);
  v6 = OUTLINED_FUNCTION_95(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_141();
  v9 = [v1 phrase];
  sub_18EFD9154(v3);

  OUTLINED_FUNCTION_109();
  sub_18EFDADC8();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_221();
  if (v2)
  {
    sub_18EFD2EC8();
    v10 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_43(v10, v11);
  }

  v12 = OUTLINED_FUNCTION_49();
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t sub_18F00691C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000018F0AE290 == a2;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657361726870 && a2 == 0xE600000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465746365707865 && a2 == 0xE800000000000000;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6554657361726870 && a2 == 0xEE006574616C706DLL)
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

unint64_t sub_18F006AC8(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x657361726870;
      break;
    case 3:
      result = 0x6465746365707865;
      break;
    case 4:
      result = 0x6554657361726870;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F006B68(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8118, &qword_18F0A0FA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F018568();
  sub_18F0945BC();
  v11 = *v3;
  v21[15] = 0;
  sub_18F0943AC();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    v21[14] = 1;
    sub_18F09437C();
    v14 = v3[3];
    v15 = v3[4];
    v21[13] = 2;
    sub_18F09437C();
    v16 = v3[5];
    v17 = v3[6];
    v21[12] = 3;
    sub_18F09433C();
    v18 = v3[7];
    v19 = v3[8];
    v21[11] = 4;
    sub_18F09433C();
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_18F006D44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB80F8, &qword_18F0A0F98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F018568();
  sub_18F09459C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v35[0]) = 0;
    v11 = sub_18F0942AC();
    LOBYTE(v35[0]) = 1;
    v12 = sub_18F09427C();
    v14 = v13;
    v32 = v12;
    LOBYTE(v35[0]) = 2;
    v30 = sub_18F09427C();
    v33 = v15;
    v31 = a2;
    LOBYTE(v35[0]) = 3;
    v16 = sub_18F09423C();
    v18 = v17;
    v29 = v16;
    v36 = 4;
    v19 = sub_18F09423C();
    v20 = *(v6 + 8);
    v21 = v19;
    v28 = v22;
    v20(v9, v5);
    v23 = v32;
    __src[0] = v11;
    __src[1] = v32;
    v24 = v30;
    __src[2] = v14;
    __src[3] = v30;
    __src[4] = v33;
    __src[5] = v29;
    __src[6] = v18;
    __src[7] = v21;
    v25 = v28;
    __src[8] = v28;
    sub_18F0185BC(__src, v35);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v35[0] = v11;
    v35[1] = v23;
    v35[2] = v14;
    v35[3] = v24;
    v35[4] = v33;
    v35[5] = v29;
    v35[6] = v18;
    v35[7] = v21;
    v35[8] = v25;
    sub_18F013A34(v35);
    return memcpy(v31, __src, 0x48uLL);
  }
}

uint64_t sub_18F0070AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F00691C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F0070D4(uint64_t a1)
{
  v2 = sub_18F018568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F007110(uint64_t a1)
{
  v2 = sub_18F018568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_18F00714C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_18F006D44(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x48uLL);
  }

  return result;
}

uint64_t sub_18F0071EC@<X0>(void *a1@<X8>)
{
  v3 = [v1 kind];
  v4 = [v1 parentIdentifier];
  v5 = sub_18F093B8C();
  v7 = v6;

  v8 = [v1 phrase];
  v9 = sub_18F093B8C();
  v11 = v10;

  v12 = sub_18F013BD0(v1, &selRef_expected);
  v14 = v13;
  result = sub_18F013BD0(v1, &selRef_phraseTemplate);
  *a1 = v3;
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v9;
  a1[4] = v11;
  a1[5] = v12;
  a1[6] = v14;
  a1[7] = result;
  a1[8] = v16;
  return result;
}

id sub_18F0072D4(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = sub_18F093B5C();
  v6 = a1[3];
  v7 = a1[4];
  v8 = sub_18F093B5C();
  if (a1[6])
  {
    v9 = a1[5];
    v10 = a1[6];

    v11 = sub_18F093B5C();
  }

  else
  {
    v11 = 0;
  }

  if (a1[8])
  {
    v12 = a1[7];
    v13 = a1[8];

    v14 = sub_18F093B5C();
    sub_18F013A34(a1);
  }

  else
  {
    sub_18F013A34(a1);
    v14 = 0;
  }

  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKind:v3 parentIdentifier:v5 phrase:v8 expected:v11 phraseTemplate:v14];

  return v15;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNExamplePhraseDescription.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  OUTLINED_FUNCTION_176();
  sub_18F0071EC(v7);
  OUTLINED_FUNCTION_399();
  sub_18EFDAAB0();
  OUTLINED_FUNCTION_48();
  sub_18F013A34(v7);
  if (v1)
  {
    sub_18EFD2EC8();
    v2 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_43(v2, v3);
  }

  v4 = OUTLINED_FUNCTION_49();
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

void static LNExamplePhraseDescription.fromJSON(_:)()
{
  OUTLINED_FUNCTION_418();
  OUTLINED_FUNCTION_226();
  v2 = sub_18F093BCC();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_19();
  sub_18F093BBC();
  OUTLINED_FUNCTION_124();
  sub_18F093B9C();
  v6 = OUTLINED_FUNCTION_324();
  v7(v6);
  if (v1 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v8 = sub_18F09302C();
  OUTLINED_FUNCTION_277(v8);
  v9 = OUTLINED_FUNCTION_137();
  sub_18EF844C4(v9, v10);
  sub_18F09301C();
  sub_18F013A64();
  OUTLINED_FUNCTION_166();
  sub_18F09300C();
  if (v0)
  {

    v11 = OUTLINED_FUNCTION_137();
    sub_18EF9A498(v11, v12);
    v13 = OUTLINED_FUNCTION_137();
    sub_18EF9A498(v13, v14);
LABEL_6:
    sub_18EFD2EC8();
    v19 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_38(v19, v20);
    goto LABEL_7;
  }

  v15 = OUTLINED_FUNCTION_137();
  sub_18EF9A498(v15, v16);
  v17 = OUTLINED_FUNCTION_137();
  sub_18EF9A498(v17, v18);
  if (!v22)
  {
    goto LABEL_6;
  }

  v26 = v21;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  v30 = v25;
  sub_18EF825F4(0, &qword_1EACB6A58, off_1E72B0050);
  if (!sub_18F0072D4(&v26))
  {
    goto LABEL_6;
  }

LABEL_7:
  OUTLINED_FUNCTION_417();
}

uint64_t sub_18F007638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xED0000656D614E72;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x800000018F0AE210 == a2;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x800000018F0AE230 == a2)
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

uint64_t sub_18F00775C(char a1)
{
  if (!a1)
  {
    return 0x6574656D61726170;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000018;
}

uint64_t sub_18F0077CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F007638(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F0077F4(uint64_t a1)
{
  v2 = sub_18F013AB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F007830(uint64_t a1)
{
  v2 = sub_18F013AB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LNAssistantSuggestionPhraseParameterMetadata.CodableWrapper.encode(to:)()
{
  OUTLINED_FUNCTION_180();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB76B8, &qword_18F09BEA8);
  OUTLINED_FUNCTION_7(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_46();
  v11 = *v0;
  v10 = v0[1];
  v17 = v0[3];
  v18 = v0[2];
  v19 = *(v0 + 32);
  v12 = v3[3];
  v13 = v3[4];
  OUTLINED_FUNCTION_136(v3);
  sub_18F013AB8();
  OUTLINED_FUNCTION_214();
  sub_18F09437C();
  if (!v1)
  {
    OUTLINED_FUNCTION_262();
    OUTLINED_FUNCTION_159();
    sub_18F09433C();
    OUTLINED_FUNCTION_338();
    OUTLINED_FUNCTION_159();
    sub_18F09434C();
  }

  v14 = *(v6 + 8);
  v15 = OUTLINED_FUNCTION_257();
  v16(v15);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

void LNAssistantSuggestionPhraseParameterMetadata.CodableWrapper.init(from:)()
{
  OUTLINED_FUNCTION_180();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB76C8, &qword_18F09BEB0);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_127();
  sub_18F013AB8();
  OUTLINED_FUNCTION_174();
  sub_18F09459C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_299();
    v9 = sub_18F09427C();
    v18 = v10;
    OUTLINED_FUNCTION_262();
    OUTLINED_FUNCTION_299();
    v11 = sub_18F09423C();
    v13 = v12;
    v17 = v11;
    OUTLINED_FUNCTION_338();
    OUTLINED_FUNCTION_299();
    v14 = sub_18F09424C();
    v15 = OUTLINED_FUNCTION_118();
    v16(v15);
    *v4 = v9;
    *(v4 + 8) = v18;
    *(v4 + 16) = v17;
    *(v4 + 24) = v13;
    *(v4 + 32) = v14;

    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_177();
}

void LNAssistantSuggestionPhraseParameterMetadata.wrapper.getter(uint64_t a1@<X8>)
{
  v4 = [v1 parameterName];
  sub_18F093B8C();
  OUTLINED_FUNCTION_327();

  v5 = sub_18F013BD0(v1, &selRef_parameterValueToSet);
  v7 = v6;
  v8 = [v1 hasToBeOnScreenParameter];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 BOOLValue];
  }

  else
  {
    v10 = 2;
  }

  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v10;
}

id LNAssistantSuggestionPhraseParameterMetadata.init(from:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *(a1 + 32);
  if (v5 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v7 = sub_18F093B5C();
  if (v3)
  {

    OUTLINED_FUNCTION_279();
    v8 = sub_18F093B5C();
    swift_bridgeObjectRelease_n();
  }

  else
  {

    v8 = 0;
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithParameterName:v7 parameterValueToSet:v8 hasToBeOnScreenParameter:v6];

  return v9;
}

uint64_t LNAssistantSuggestionPhraseMetadata.CodableWrapper.init(actionIdentifier:templateKey:parametersMetadata:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_18F007D98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000018F0AE250 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574616C706D6574 && a2 == 0xEB0000000079654BLL;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x800000018F0AE270 == a2)
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

uint64_t sub_18F007EB8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6574616C706D6574;
  }

  return 0xD000000000000012;
}

uint64_t sub_18F007F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F007D98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F007F54(uint64_t a1)
{
  v2 = sub_18F013C28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F007F90(uint64_t a1)
{
  v2 = sub_18F013C28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LNAssistantSuggestionPhraseMetadata.CodableWrapper.encode(to:)()
{
  OUTLINED_FUNCTION_180();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB76D0, &qword_18F09BEB8);
  OUTLINED_FUNCTION_7(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_46();
  v10 = *v0;
  v11 = v0[1];
  v17 = v0[3];
  v18 = v0[2];
  v16 = v0[4];
  v12 = v3[4];
  OUTLINED_FUNCTION_190(v3, v3[3]);
  sub_18F013C28();
  OUTLINED_FUNCTION_219();
  sub_18F0945BC();
  OUTLINED_FUNCTION_367();
  sub_18F09437C();
  if (!v1)
  {
    OUTLINED_FUNCTION_262();
    OUTLINED_FUNCTION_159();
    sub_18F09437C();
    OUTLINED_FUNCTION_338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB76E0, &qword_18F09BEC0);
    sub_18F013C7C();
    OUTLINED_FUNCTION_159();
    sub_18F0943CC();
  }

  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_257();
  v15(v14);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

void LNAssistantSuggestionPhraseMetadata.CodableWrapper.init(from:)()
{
  OUTLINED_FUNCTION_180();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB76F8, &qword_18F09BEC8);
  OUTLINED_FUNCTION_7(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_127();
  sub_18F013C28();
  OUTLINED_FUNCTION_174();
  sub_18F09459C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_392();
    v11 = sub_18F09427C();
    v19 = v12;
    OUTLINED_FUNCTION_262();
    OUTLINED_FUNCTION_392();
    v17 = sub_18F09427C();
    v18 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB76E0, &qword_18F09BEC0);
    OUTLINED_FUNCTION_338();
    sub_18F013D54();
    OUTLINED_FUNCTION_124();
    sub_18F0942CC();
    v14 = *(v7 + 8);
    v15 = OUTLINED_FUNCTION_186();
    v16(v15);
    *v4 = v11;
    v4[1] = v19;
    v4[2] = v17;
    v4[3] = v18;
    v4[4] = v20;

    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_177();
}

id LNAssistantSuggestionPhraseMetadata.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = sub_18F093B5C();
  OUTLINED_FUNCTION_130();
  v9 = sub_18F093B5C();
  v10 = *(v7 + 16);
  if (v10)
  {
    v29 = v2;
    v30 = v8;
    v36 = MEMORY[0x1E69E7CC0];
    sub_18F09411C();
    sub_18EF825F4(0, &qword_1EACB7710, off_1E72AFF40);
    v11 = (v7 + 64);
    do
    {
      v12 = *(v11 - 4);
      v13 = *(v11 - 3);
      v15 = *(v11 - 2);
      v14 = *(v11 - 1);
      v16 = *v11;
      v11 += 40;
      v31 = v12;
      v32 = v13;
      v33 = v15;
      v34 = v14;
      LOBYTE(v35) = v16;

      LNAssistantSuggestionPhraseParameterMetadata.init(from:)(&v31);
      v17 = sub_18F0940FC();
      OUTLINED_FUNCTION_155(v17, v18, v19, v20, v21, v22, v23, v24, v29, v30, v31, v32, v33, v34, v35, v36);
      sub_18F09413C();
      sub_18F09410C();
      --v10;
    }

    while (v10);

    v8 = v30;
  }

  else
  {
  }

  v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18EF825F4(0, &qword_1EACB7710, off_1E72AFF40);
  OUTLINED_FUNCTION_142();
  v26 = sub_18F093DBC();

  v27 = [v25 initWithActionIdentifier:v8 templateKey:v9 parametersMetadata:v26];

  return v27;
}

void sub_18F008584(uint64_t *a1@<X8>)
{
  v3 = [v1 actionIdentifier];
  v4 = sub_18F093B8C();
  v6 = v5;

  v7 = [v1 templateKey];
  v8 = sub_18F093B8C();
  v10 = v9;

  v11 = [v1 parametersMetadata];
  sub_18EF825F4(0, &qword_1EACB7710, off_1E72AFF40);
  v12 = sub_18F093DCC();

  v13 = sub_18EFA0A7C(v12);
  if (!v13)
  {

    v16 = MEMORY[0x1E69E7CC0];
LABEL_15:
    *a1 = v4;
    a1[1] = v6;
    a1[2] = v8;
    a1[3] = v10;
    a1[4] = v16;
    return;
  }

  v14 = v13;
  v39 = MEMORY[0x1E69E7CC0];
  sub_18F00F6D0();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v31 = v10;
    v32 = v8;
    v33 = v6;
    v34 = v4;
    v15 = 0;
    v16 = v39;
    v35 = a1;
    v36 = v12 & 0xC000000000000001;
    v37 = v14;
    v38 = v12;
    do
    {
      if (v36)
      {
        v17 = MEMORY[0x193AD8BA0](v15, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = [v17 parameterName];
      v20 = sub_18F093B8C();
      v22 = v21;

      v23 = sub_18F013BD0(v18, &selRef_parameterValueToSet);
      v25 = v24;
      v26 = [v18 hasToBeOnScreenParameter];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 BOOLValue];
      }

      else
      {

        v28 = 2;
      }

      v29 = *(v39 + 16);
      if (v29 >= *(v39 + 24) >> 1)
      {
        sub_18F00F6D0();
      }

      ++v15;
      *(v39 + 16) = v29 + 1;
      v30 = v39 + 40 * v29;
      *(v30 + 32) = v20;
      *(v30 + 40) = v22;
      *(v30 + 48) = v23;
      *(v30 + 56) = v25;
      *(v30 + 64) = v28;
      v12 = v38;
    }

    while (v37 != v15);

    v4 = v34;
    a1 = v35;
    v8 = v32;
    v6 = v33;
    v10 = v31;
    goto LABEL_15;
  }

  __break(1u);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAssistantSuggestionPhraseMetadata.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  OUTLINED_FUNCTION_176();
  sub_18F008584(v7);
  OUTLINED_FUNCTION_399();
  sub_18EFDAC3C();
  OUTLINED_FUNCTION_48();
  sub_18F013E2C(v7);
  if (v1)
  {
    sub_18EFD2EC8();
    v2 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_43(v2, v3);
  }

  v4 = OUTLINED_FUNCTION_49();
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

void static LNAssistantSuggestionPhraseMetadata.fromJSON(_:)()
{
  OUTLINED_FUNCTION_418();
  OUTLINED_FUNCTION_226();
  v2 = sub_18F093BCC();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_19();
  sub_18F093BBC();
  OUTLINED_FUNCTION_124();
  sub_18F093B9C();
  v6 = OUTLINED_FUNCTION_324();
  v7(v6);
  if (v1 >> 60 != 15)
  {
    v8 = sub_18F09302C();
    OUTLINED_FUNCTION_277(v8);
    v9 = OUTLINED_FUNCTION_137();
    sub_18EF844C4(v9, v10);
    sub_18F09301C();
    sub_18F013E5C();
    OUTLINED_FUNCTION_166();
    sub_18F09300C();
    if (v0)
    {

      v11 = OUTLINED_FUNCTION_137();
      sub_18EF9A498(v11, v12);
      v13 = OUTLINED_FUNCTION_137();
      sub_18EF9A498(v13, v14);
    }

    else
    {

      v17 = OUTLINED_FUNCTION_137();
      sub_18EF9A498(v17, v18);
      v19 = OUTLINED_FUNCTION_137();
      sub_18EF9A498(v19, v20);
      if (v21[1])
      {
        sub_18EF825F4(0, &qword_1EACB7718, off_1E72AFF38);
        LNAssistantSuggestionPhraseMetadata.init(from:)(v21);
        goto LABEL_5;
      }
    }
  }

  sub_18EFD2EC8();
  v15 = OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_38(v15, v16);
LABEL_5:
  OUTLINED_FUNCTION_417();
}

uint64_t LNAssistantSuggestionPhrase.CodableWrapper.phraseMetadata.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LNAssistantSuggestionPhrase.CodableWrapper(0) + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
}

__n128 LNAssistantSuggestionPhrase.CodableWrapper.phraseMetadata.setter(__int128 *a1)
{
  v9 = *a1;
  v3 = *(a1 + 2);
  v4 = v1 + *(type metadata accessor for LNAssistantSuggestionPhrase.CodableWrapper(0) + 20);
  v5 = *(v4 + 8);
  v7 = *(v4 + 24);
  v6 = *(v4 + 32);

  *v4 = v9;
  *(v4 + 16) = v3;
  result = *(a1 + 24);
  *(v4 + 24) = result;
  return result;
}

uint64_t (*LNAssistantSuggestionPhrase.CodableWrapper.phraseMetadata.modify())(void)
{
  v0 = OUTLINED_FUNCTION_204();
  v1 = *(type metadata accessor for LNAssistantSuggestionPhrase.CodableWrapper(v0) + 20);
  return nullsub_1;
}

uint64_t sub_18F008B64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657361726870 && a2 == 0xE600000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654D657361726870 && a2 == 0xEE00617461646174)
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

uint64_t sub_18F008C30(char a1)
{
  if (a1)
  {
    return 0x654D657361726870;
  }

  else
  {
    return 0x657361726870;
  }
}

uint64_t sub_18F008C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F008B64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F008CA0(uint64_t a1)
{
  v2 = sub_18F013ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F008CDC(uint64_t a1)
{
  v2 = sub_18F013ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LNAssistantSuggestionPhrase.CodableWrapper.encode(to:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7728, &qword_18F09BED0);
  OUTLINED_FUNCTION_7(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_80();
  sub_18F013ED0();
  OUTLINED_FUNCTION_214();
  _s14CodableWrapperVMa_0(0);
  OUTLINED_FUNCTION_5();
  sub_18EF8558C(v9);
  OUTLINED_FUNCTION_336();
  sub_18F0943CC();
  if (!v1)
  {
    v10 = (v0 + *(type metadata accessor for LNAssistantSuggestionPhrase.CodableWrapper(0) + 20));
    v12 = *v10;
    v13 = v10[1];
    v14 = v10[2];
    v15 = v10[3];
    v16 = v10[4];
    sub_18F013F24();
    OUTLINED_FUNCTION_404();

    OUTLINED_FUNCTION_336();
    sub_18F0943CC();
  }

  return (*(v5 + 8))(v2, v3);
}

void LNAssistantSuggestionPhrase.CodableWrapper.init(from:)()
{
  OUTLINED_FUNCTION_180();
  v3 = v2;
  v26 = v4;
  v5 = _s14CodableWrapperVMa_0(0);
  v6 = OUTLINED_FUNCTION_36(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22();
  v28 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7740, &qword_18F09BED8);
  OUTLINED_FUNCTION_7(v11);
  v27 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_164();
  v16 = type metadata accessor for LNAssistantSuggestionPhrase.CodableWrapper(0);
  v17 = OUTLINED_FUNCTION_36(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_19();
  v20 = v3[4];
  OUTLINED_FUNCTION_190(v3, v3[3]);
  sub_18F013ED0();
  sub_18F09459C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    LOBYTE(v29) = 0;
    OUTLINED_FUNCTION_5();
    sub_18EF8558C(v21);
    sub_18F0942CC();
    OUTLINED_FUNCTION_1_1();
    sub_18EF88240(v28, v1);
    sub_18F013E5C();
    sub_18F0942CC();
    v22 = *(v27 + 8);
    v23 = OUTLINED_FUNCTION_265();
    v24(v23);
    v25 = v1 + *(v16 + 20);
    *v25 = v29;
    *(v25 + 16) = v30;
    *(v25 + 24) = v31;
    OUTLINED_FUNCTION_191();
    sub_18EF86A14(v1, v26);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    sub_18EF86A6C();
  }

  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

double LNAssistantSuggestionPhrase.wrapper.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 phrase];
  sub_18EFD9154(a1);

  v5 = [v2 phraseMetadata];
  sub_18F008584(&v10);

  v9 = v10;
  v6 = v11;
  v7 = a1 + *(type metadata accessor for LNAssistantSuggestionPhrase.CodableWrapper(0) + 20);
  *v7 = v9;
  *(v7 + 16) = v6;
  result = *&v12;
  *(v7 + 24) = v12;
  return result;
}

id LNAssistantSuggestionPhrase.init(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_55();
  v7 = _s14CodableWrapperVMa_0(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19();
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  OUTLINED_FUNCTION_8();
  sub_18EF86A14(a1, v1);
  v11 = *(v8 + 36);
  sub_18EF9FE2C();
  v12 = OUTLINED_FUNCTION_184();
  v14 = sub_18EF9CEB8(v12, v13, 0);
  sub_18EF825F4(0, &qword_1EACB7718, off_1E72AFF38);
  v15 = OUTLINED_FUNCTION_138();
  v16 = (a1 + *(type metadata accessor for LNAssistantSuggestionPhrase.CodableWrapper(v15) + 20));
  v17 = v16[1];
  v18 = v16[2];
  v19 = v16[3];
  v20 = v16[4];
  v26[0] = *v16;
  v26[1] = v17;
  v26[2] = v18;
  v26[3] = v19;
  v26[4] = v20;

  v21 = LNAssistantSuggestionPhraseMetadata.init(from:)(v26);
  OUTLINED_FUNCTION_124();
  v24 = [v22 v23];

  OUTLINED_FUNCTION_60();
  sub_18EF86A6C();
  return v24;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAssistantSuggestionPhrase.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  v3 = OUTLINED_FUNCTION_146();
  v4 = type metadata accessor for LNAssistantSuggestionPhrase.CodableWrapper(v3);
  v5 = OUTLINED_FUNCTION_95(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_141();
  LNAssistantSuggestionPhrase.wrapper.getter(v2);
  OUTLINED_FUNCTION_109();
  sub_18EFDADC8();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_60();
  sub_18EF86A6C();
  if (v1)
  {
    sub_18EFD2EC8();
    v8 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_43(v8, v9);
  }

  v10 = OUTLINED_FUNCTION_49();
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

void static LNAssistantSuggestionPhrase.fromJSON(_:)()
{
  OUTLINED_FUNCTION_418();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7748, &qword_18F09BEE0);
  OUTLINED_FUNCTION_95(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_330();
  v7 = type metadata accessor for LNAssistantSuggestionPhrase.CodableWrapper(0);
  v8 = OUTLINED_FUNCTION_36(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_42();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_241();
  sub_18EF84150();
  if (v1)
  {

    OUTLINED_FUNCTION_171();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v7);
  }

  else if (__swift_getEnumTagSinglePayload(v0, 1, v7) != 1)
  {
    sub_18EF88240(v0, v2);
    sub_18EF825F4(0, &qword_1EACB7750, off_1E72AFF30);
    OUTLINED_FUNCTION_191();
    sub_18EF86A14(v2, v13);
    v20 = LNAssistantSuggestionPhrase.init(from:)(v13);
    OUTLINED_FUNCTION_60();
    sub_18EF86A6C();
    if (v20)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_18EF933AC(v0, &qword_1EACB7748);
LABEL_5:
  sub_18EFD2EC8();
  v18 = OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_38(v18, v19);
LABEL_6:
  OUTLINED_FUNCTION_417();
}

uint64_t LNExamplePhraseDescriptions.Element.parentIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_108();
}

uint64_t LNExamplePhraseDescriptions.Element.parentIdentifier.setter()
{
  OUTLINED_FUNCTION_337();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LNExamplePhraseDescriptions.Element.parameter.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_108();
}

uint64_t LNExamplePhraseDescriptions.Element.parameter.setter()
{
  OUTLINED_FUNCTION_337();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t LNExamplePhraseDescriptions.Element.phrases.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t LNExamplePhraseDescriptions.Element.phrase.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_108();
}

uint64_t LNExamplePhraseDescriptions.Element.phrase.setter()
{
  OUTLINED_FUNCTION_337();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t LNExamplePhraseDescriptions.Element.expected.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_108();
}

uint64_t LNExamplePhraseDescriptions.Element.expected.setter()
{
  OUTLINED_FUNCTION_337();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t LNExamplePhraseDescriptions.Element.phraseTemplate.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_108();
}

uint64_t LNExamplePhraseDescriptions.Element.phraseTemplate.setter()
{
  OUTLINED_FUNCTION_337();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

void LNExamplePhraseDescriptions.Element.init(parentIdentifier:parameter:phrases:expected:)()
{
  OUTLINED_FUNCTION_260();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_227();
  v10 = v9;
  v12 = v11;
  if (*(v13 + 16))
  {
    v15 = *(v8 + 32);
    v14 = *(v8 + 40);
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  *v12 = v10;
  v12[1] = v2;
  v12[2] = v1;
  v12[3] = v0;
  v12[4] = v8;
  v12[5] = v15;
  v12[6] = v16;
  v12[7] = v6;
  v12[9] = 0;
  v12[10] = 0;
  v12[8] = v4;
  OUTLINED_FUNCTION_259();
}

uint64_t LNExamplePhraseDescriptions.Element.init(parentIdentifier:phrase:expected:phraseTemplate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  a9[2] = 0;
  a9[3] = 0;
  *a9 = result;
  a9[1] = a2;
  a9[4] = 0;
  a9[5] = a3;
  a9[6] = a4;
  a9[7] = a5;
  a9[8] = a6;
  a9[9] = a7;
  a9[10] = a8;
  return result;
}

uint64_t sub_18F009A78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000018F0AE290 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73657361726870 && a2 == 0xE700000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657361726870 && a2 == 0xE600000000000000;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6465746365707865 && a2 == 0xE800000000000000;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6554657361726870 && a2 == 0xEE006574616C706DLL)
          {

            return 5;
          }

          else
          {
            v11 = sub_18F09444C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_18F009C74(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x73657361726870;
      break;
    case 3:
      result = 0x657361726870;
      break;
    case 4:
      result = 0x6465746365707865;
      break;
    case 5:
      result = 0x6554657361726870;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_18F009D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F009A78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F009D68(uint64_t a1)
{
  v2 = sub_18F013F78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F009DA4(uint64_t a1)
{
  v2 = sub_18F013F78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LNExamplePhraseDescriptions.Element.encode(to:)()
{
  OUTLINED_FUNCTION_180();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7758, &qword_18F09BEE8);
  OUTLINED_FUNCTION_7(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_46();
  v11 = *v0;
  v12 = v0[1];
  v22 = v0[3];
  v23 = v0[2];
  v20 = v0[5];
  v21 = v0[4];
  v18 = v0[7];
  v19 = v0[6];
  v15 = v0[9];
  v16 = v0[10];
  v17 = v0[8];
  v13 = v4[3];
  v14 = v4[4];
  OUTLINED_FUNCTION_136(v4);
  sub_18F013F78();
  OUTLINED_FUNCTION_219();
  sub_18F0945BC();
  sub_18F09437C();
  if (!v1)
  {
    OUTLINED_FUNCTION_262();
    OUTLINED_FUNCTION_159();
    sub_18F09433C();
    OUTLINED_FUNCTION_338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    OUTLINED_FUNCTION_90(&unk_1EACB7770);
    OUTLINED_FUNCTION_159();
    sub_18F09436C();
    OUTLINED_FUNCTION_320();
    OUTLINED_FUNCTION_159();
    sub_18F09433C();
    OUTLINED_FUNCTION_159();
    sub_18F09433C();
    OUTLINED_FUNCTION_159();
    sub_18F09433C();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

void LNExamplePhraseDescriptions.Element.init(from:)()
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_176();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7778, &qword_18F09BEF8);
  OUTLINED_FUNCTION_7(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_50();
  v11 = v1[4];
  OUTLINED_FUNCTION_190(v1, v1[3]);
  sub_18F013F78();
  sub_18F09459C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1);
  }

  else
  {
    OUTLINED_FUNCTION_131();
    v12 = sub_18F09427C();
    v34 = v13;
    LOBYTE(v36[0]) = 1;
    OUTLINED_FUNCTION_131();
    sub_18F09423C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    LOBYTE(v35[0]) = 2;
    OUTLINED_FUNCTION_86(&unk_1ED5FDD20);
    sub_18F09426C();
    v33 = v12;
    v14 = v36[0];
    OUTLINED_FUNCTION_131();
    sub_18F09423C();
    v16 = v15;
    v32 = v4;
    LOBYTE(v36[0]) = 4;
    OUTLINED_FUNCTION_131();
    v17 = sub_18F09423C();
    v19 = v18;
    OUTLINED_FUNCTION_365(v17);
    v20 = sub_18F09423C();
    v21 = v2;
    v23 = v22;
    (*(v7 + 8))(v21, v5);
    v35[0] = v33;
    OUTLINED_FUNCTION_372();
    v35[1] = v34;
    v35[2] = v24;
    OUTLINED_FUNCTION_116();
    v35[3] = v25;
    v35[4] = v14;
    OUTLINED_FUNCTION_326();
    v35[5] = v26;
    v35[6] = v16;
    OUTLINED_FUNCTION_319();
    v35[7] = v27;
    v35[8] = v19;
    v35[9] = v20;
    v35[10] = v23;
    memcpy(v32, v35, 0x58uLL);
    sub_18F013FCC(v35, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v1);
    v36[0] = v33;
    v36[1] = v34;
    OUTLINED_FUNCTION_116();
    v36[2] = v29;
    v36[3] = v28;
    OUTLINED_FUNCTION_326();
    v36[4] = v14;
    v36[5] = v30;
    OUTLINED_FUNCTION_319();
    v36[6] = v16;
    v36[7] = v31;
    v36[8] = v19;
    v36[9] = v20;
    v36[10] = v23;
    sub_18F014004(v36);
  }

  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_177();
}

LinkMetadata::LNExamplePhraseDescriptions __swiftcall LNExamplePhraseDescriptions.init(actions:entities:queries:negative:)(Swift::OpaquePointer actions, Swift::OpaquePointer entities, Swift::OpaquePointer queries, Swift::OpaquePointer negative)
{
  v4->_rawValue = actions._rawValue;
  v4[1]._rawValue = entities._rawValue;
  v4[2]._rawValue = queries._rawValue;
  v4[3]._rawValue = negative._rawValue;
  result.negative = negative;
  result.queries = queries;
  result.entities = entities;
  result.actions = actions;
  return result;
}

uint64_t sub_18F00A404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F69746361 && a2 == 0xE700000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365697469746E65 && a2 == 0xE800000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73656972657571 && a2 == 0xE700000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x657669746167656ELL && a2 == 0xE800000000000000)
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

uint64_t sub_18F00A55C(char a1)
{
  result = 0x736E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x7365697469746E65;
      break;
    case 2:
      result = 0x73656972657571;
      break;
    case 3:
      result = 0x657669746167656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F00A5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F00A404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F00A60C(uint64_t a1)
{
  v2 = sub_18F014034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F00A648(uint64_t a1)
{
  v2 = sub_18F014034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LNExamplePhraseDescriptions.encode(to:)()
{
  OUTLINED_FUNCTION_180();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7788, &unk_18F09BF00);
  OUTLINED_FUNCTION_7(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_46();
  v10 = *v0;
  v15 = v0[2];
  v16 = v0[1];
  v14 = v0[3];
  v11 = v3[3];
  v12 = v3[4];
  OUTLINED_FUNCTION_136(v3);
  v13 = sub_18F014034();

  OUTLINED_FUNCTION_219();
  sub_18F0945BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7798, &unk_18F0AB930);
  sub_18F014088();
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_329();
  OUTLINED_FUNCTION_159();
  sub_18F0943CC();

  if (!v13)
  {
    OUTLINED_FUNCTION_362();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_329();
    OUTLINED_FUNCTION_159();
    sub_18F0943CC();
    OUTLINED_FUNCTION_397();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_329();
    OUTLINED_FUNCTION_159();
    sub_18F0943CC();
    OUTLINED_FUNCTION_294();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_329();
    OUTLINED_FUNCTION_159();
    sub_18F0943CC();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

void LNExamplePhraseDescriptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_180();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB77B0, &qword_18F09BF10);
  OUTLINED_FUNCTION_7(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_164();
  v19 = v12[3];
  v20 = v12[4];
  OUTLINED_FUNCTION_136(v12);
  sub_18F014034();
  sub_18F09459C();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7798, &unk_18F0AB930);
    sub_18F014160();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_362();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_397();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_294();
    OUTLINED_FUNCTION_71();
    v21 = OUTLINED_FUNCTION_150();
    v22(v21);
    *v14 = a10;
    v14[1] = a10;
    v14[2] = a10;
    v14[3] = a10;

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_177();
}

uint64_t sub_18F00AAC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000018F0AE930 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6554657361726870 && a2 == 0xEF736574616C706DLL;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6574656D61726170 && a2 == 0xEF7365756C615672;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x566465696C706D69 && a2 == 0xED00007365756C61;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000017 && 0x800000018F0ADF90 == a2)
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

unint64_t sub_18F00AC88(char a1)
{
  result = 0x6554657361726870;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6574656D61726170;
      break;
    case 3:
      result = 0x566465696C706D69;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_18F00AD54(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E18, &qword_18F0A7CF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01DC74();
  sub_18F0945BC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v15) = 0;
  sub_18F09437C();
  if (!v2)
  {
    v15 = v3[2];
    HIBYTE(v14) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18F013748();
    sub_18F0943CC();
    v15 = v3[3];
    HIBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB77C0, &qword_18F09BF18);
    sub_18F01E63C();
    sub_18F0943CC();
    v15 = v3[4];
    HIBYTE(v14) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8B78, &qword_18F0A7B90);
    sub_18F01E6C8();
    sub_18F09436C();
    v15 = v3[5];
    HIBYTE(v14) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18F012DE0();
    sub_18F09436C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18F00AFE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8B70, &qword_18F0A7B88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01DC74();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v25) = 0;
  v11 = sub_18F09427C();
  v23 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
  v24 = 1;
  sub_18EF883DC();
  sub_18F0942CC();
  v22 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB77C0, &qword_18F09BF18);
  v24 = 2;
  sub_18F01DCC8();
  sub_18F0942CC();
  v21 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8B78, &qword_18F0A7B90);
  v24 = 3;
  sub_18F01DD54();
  sub_18F09426C();
  v20 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
  v24 = 4;
  sub_18EF9CC4C();
  sub_18F09426C();
  (*(v6 + 8))(v9, v5);
  v13 = v25;
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v16 = v22;
  v15 = v23;
  *a2 = v11;
  a2[1] = v15;
  v17 = v20;
  v18 = v21;
  a2[2] = v16;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v13;
  return result;
}

uint64_t sub_18F00B3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F00AAC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F00B3D4(uint64_t a1)
{
  v2 = sub_18F01DC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F00B410(uint64_t a1)
{
  v2 = sub_18F01DC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_18F00B44C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_18F00AFE0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_18F00B490(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_18F00AD54(a1);
}

uint64_t sub_18F00B4CC(uint64_t a1)
{
  v2 = _s14CodableWrapperVMa_0(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v48 = a1;

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC8];
  v44 = v11;
  v45 = v7;
  if (v10)
  {
    while (1)
    {
      v14 = v12;
LABEL_8:
      v15 = __clz(__rbit64(v10)) | (v14 << 6);
      v16 = *(v48 + 56);
      v17 = (*(v48 + 48) + 16 * v15);
      v18 = v17[1];
      v50 = *v17;
      v19 = *(v16 + 8 * v15);
      v20 = v19 >> 62 ? sub_18F0941BC() : *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v51 = v19;
      v49 = v10;
      if (v20)
      {
        v47 = v13;
        v52 = MEMORY[0x1E69E7CC0];

        sub_18F00F0B8();
        if (v20 < 0)
        {
          goto LABEL_36;
        }

        v46 = v18;
        v21 = 0;
        v22 = v52;
        v23 = v19 & 0xC000000000000001;
        do
        {
          if (v23)
          {
            v24 = MEMORY[0x193AD8BA0](v21, v19);
          }

          else
          {
            v24 = *(v19 + 8 * v21 + 32);
          }

          v25 = v24;
          sub_18EFD9154(v6);

          v52 = v22;
          v26 = v22[2];
          if (v26 >= v22[3] >> 1)
          {
            sub_18F00F0B8();
            v22 = v52;
          }

          ++v21;
          v22[2] = v26 + 1;
          sub_18EF88240(v6, v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v26);
          v19 = v51;
        }

        while (v20 != v21);
        v18 = v46;
        v13 = v47;
      }

      else
      {

        v22 = MEMORY[0x1E69E7CC0];
      }

      swift_isUniquelyReferenced_nonNull_native();
      v52 = v13;
      v27 = v18;
      v28 = sub_18EFAF54C();
      if (__OFADD__(v13[2], (v29 & 1) == 0))
      {
        break;
      }

      v30 = v28;
      v31 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8660, &qword_18F0A12A0);
      if (sub_18F09417C())
      {
        v32 = sub_18EFAF54C();
        v34 = v49;
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_38;
        }

        v30 = v32;
      }

      else
      {
        v34 = v49;
      }

      v10 = (v34 - 1) & v34;
      v13 = v52;
      if (v31)
      {
        v35 = v52[7];
        v36 = v52;
        v37 = *(v35 + 8 * v30);
        *(v35 + 8 * v30) = v22;

        v13 = v36;
      }

      else
      {
        v52[(v30 >> 6) + 8] |= 1 << v30;
        v38 = (v13[6] + 16 * v30);
        *v38 = v50;
        v38[1] = v27;
        *(v13[7] + 8 * v30) = v22;

        v39 = v13[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_37;
        }

        v13[2] = v41;
      }

      v12 = v14;
      v11 = v44;
      v7 = v45;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v13;
      }

      v10 = *(v7 + 8 * v14);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18F00B8D4(uint64_t a1)
{
  v2 = _s19BasicCodableWrapperOMa(0);
  v48 = *(v2 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v46 - v10);
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v53 = a1;

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC8];
  v46 = v9;
  v47 = v2;
  v49 = v16;
  v50 = v11;
  while (v15)
  {
LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v20 | (v17 << 6);
    v22 = (*(v53 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(v53 + 56) + 8 * v21);

    v54 = v25;
    sub_18EFD7818(v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
    {
      sub_18EF933AC(v11, &unk_1EACB72F8);
      v26 = sub_18EFAF54C();
      if (v27)
      {
        v28 = v26;
        swift_isUniquelyReferenced_nonNull_native();
        v55 = v18;
        v29 = v18[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8658, &qword_18F0A1298);
        v9 = v46;
        v2 = v47;
        sub_18F09417C();
        v18 = v55;
        v30 = *(v55[6] + 16 * v28 + 8);

        sub_18EF88240(v18[7] + *(v48 + 72) * v28, v9);
        sub_18F09419C();

        v31 = 0;
      }

      else
      {

        v31 = 1;
      }

      v16 = v49;
      __swift_storeEnumTagSinglePayload(v9, v31, 1, v2);
      sub_18EF933AC(v9, &unk_1EACB72F8);
      v11 = v50;
    }

    else
    {
      sub_18EF88240(v11, v51);
      swift_isUniquelyReferenced_nonNull_native();
      v55 = v18;
      v32 = v23;
      v52 = v24;
      v33 = sub_18EFAF54C();
      if (__OFADD__(v18[2], (v34 & 1) == 0))
      {
        goto LABEL_25;
      }

      v35 = v33;
      v36 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8658, &qword_18F0A1298);
      if (sub_18F09417C())
      {
        v37 = sub_18EFAF54C();
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_27;
        }

        v35 = v37;
      }

      v18 = v55;
      if (v36)
      {
        sub_18F019D78(v51, v55[7] + *(v48 + 72) * v35);
      }

      else
      {
        v55[(v35 >> 6) + 8] |= 1 << v35;
        v39 = (v18[6] + 16 * v35);
        v40 = v51;
        v41 = v52;
        *v39 = v32;
        v39[1] = v41;
        sub_18EF88240(v40, v18[7] + *(v48 + 72) * v35);

        v42 = v18[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_26;
        }

        v18[2] = v44;
      }

      v9 = v46;
      v2 = v47;
      v16 = v49;
      v11 = v50;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      return v18;
    }

    v15 = *(v12 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18F00BDA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_18EF9D97C(sub_18EFA3E10);
  *a2 = result;
  return result;
}

id static LNAssistantIntentMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)()
{
  OUTLINED_FUNCTION_148();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_241();
  sub_18EFDA1DC(v7);
  v8 = v1;
  if (v1)
  {
    goto LABEL_2;
  }

  if (!v15)
  {
    sub_18EFD2EC8();
    v8 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_38(v8, v13);
LABEL_2:
    sub_18EFD2EC8();
    v9 = OUTLINED_FUNCTION_249();
    *v10 = v8;
    return OUTLINED_FUNCTION_278(v9, v10);
  }

  v18[0] = v14;
  v18[1] = v15;
  v19 = v16;
  v20 = v17;
  sub_18EF825F4(0, qword_1ED5FE4D8, off_1E72AFF20);
  OUTLINED_FUNCTION_289();
  sub_18EF9FE2C();
  v12 = v0;
  return sub_18EFEF7F4(v18, v2, v0);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAssistantIntentMetadata.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  OUTLINED_FUNCTION_176();
  sub_18EFEE868(&v7);
  OUTLINED_FUNCTION_399();
  sub_18EFDAF20();
  OUTLINED_FUNCTION_48();
  if (v1)
  {
    v21 = v7;
    sub_18F014238(&v21);
    v20 = v8;
    sub_18EF933AC(&v20, &unk_1EACB75C0);
    v19 = v9;
    sub_18EF933AC(&v19, &qword_1EACB77C0);
    v18 = v10;
    sub_18EF933AC(&v18, &unk_1EACB77C8);
    v17 = v11;
    sub_18EF933AC(&v17, &unk_1EACB77D0);
    sub_18EFD2EC8();
    v2 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_43(v2, v3);
  }

  else
  {
    v16 = v7;
    sub_18F014238(&v16);
    v15 = v8;
    sub_18EF933AC(&v15, &unk_1EACB75C0);
    v14 = v9;
    sub_18EF933AC(&v14, &qword_1EACB77C0);
    v13 = v10;
    sub_18EF933AC(&v13, &unk_1EACB77C8);
    v12 = v11;
    sub_18EF933AC(&v12, &unk_1EACB77D0);
  }

  v4 = OUTLINED_FUNCTION_49();
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_18F00C0D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000018F0AE930 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73657361726870 && a2 == 0xE700000000000000)
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

uint64_t sub_18F00C1A4(char a1)
{
  if (a1)
  {
    return 0x73657361726870;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_18F00C1E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E30, &qword_18F0A7D00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01DE10();
  sub_18F0945BC();
  v15 = 0;
  sub_18F09437C();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18F013748();
    sub_18F0943CC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_18F00C384(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8B88, &qword_18F0A7B98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01DE10();
  sub_18F09459C();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_18F09427C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    v10[15] = 1;
    sub_18EF883DC();
    sub_18F0942CC();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_18F00C590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F00C0D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F00C5B8(uint64_t a1)
{
  v2 = sub_18F01DE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F00C5F4(uint64_t a1)
{
  v2 = sub_18F01DE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id static LNAssistantIntentNegativePhrases.fromJSON(_:bundleURL:effectiveBundleIdentifier:)()
{
  OUTLINED_FUNCTION_148();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_241();
  sub_18EFDA384(v7, v8);
  v11 = v1;
  if (v1)
  {
    goto LABEL_2;
  }

  if (!v9)
  {
    sub_18EFD2EC8();
    v11 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_38(v11, v19);
LABEL_2:
    sub_18EFD2EC8();
    v12 = OUTLINED_FUNCTION_249();
    *v13 = v11;
    return OUTLINED_FUNCTION_278(v12, v13);
  }

  v15 = v10;
  sub_18EF825F4(0, qword_1ED5FE438, off_1E72AFF28);
  OUTLINED_FUNCTION_289();
  sub_18EF9FE2C();
  v16 = v0;
  v17 = OUTLINED_FUNCTION_252();
  return sub_18EFEFBA4(v17, v18, v15, v2, v0);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAssistantIntentNegativePhrases.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  OUTLINED_FUNCTION_176();
  sub_18EFEEBCC();
  sub_18EFDB0AC(v2, v3, v4, v5);
  OUTLINED_FUNCTION_48();

  if (v1)
  {
    sub_18EFD2EC8();
    v6 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_43(v6, v7);
  }

  v8 = OUTLINED_FUNCTION_49();
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_18F00C850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x766F637369447369 && a2 == 0xEE00656C62617265;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E61747369737361 && a2 == 0xED0000796C6E4F74)
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

uint64_t sub_18F00C928(char a1)
{
  sub_18F09452C();
  MEMORY[0x193AD9050](a1 & 1);
  return sub_18F09456C();
}

uint64_t sub_18F00C970(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7EA8, &qword_18F0A0DD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF9F694();
  sub_18F0945BC();
  v10[15] = 0;
  sub_18F09438C();
  if (!v1)
  {
    v10[14] = 1;
    sub_18F09438C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_18F00CAD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000018F0AC5B0 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6554657361726870 && a2 == 0xEF736574616C706DLL)
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

uint64_t sub_18F00CBF4(unsigned __int8 a1)
{
  sub_18F09452C();
  MEMORY[0x193AD9050](a1);
  return sub_18F09456C();
}

uint64_t sub_18F00CC3C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 1684957547;
  }

  return 0x6554657361726870;
}

uint64_t sub_18F00CC9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v17 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E38, &qword_18F0A7D08);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01DE64();
  sub_18F0945BC();
  v21 = 0;
  sub_18F09437C();
  if (!v5)
  {
    v13 = v16;
    v20 = 1;
    sub_18F0943AC();
    v18 = v13;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18F013748();
    sub_18F0943CC();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_18F00CE64(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8B98, &qword_18F0A7BA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01DE64();
  sub_18F09459C();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_18F09427C();
    v10[30] = 1;
    sub_18F0942AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    v10[29] = 2;
    sub_18EF883DC();
    sub_18F0942CC();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_18F00D09C()
{
  v1 = *v0;
  sub_18F09452C();
  MEMORY[0x193AD9050](v1);
  return sub_18F09456C();
}

uint64_t sub_18F00D0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F00C850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F00D108(uint64_t a1)
{
  v2 = sub_18EF9F694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F00D144(uint64_t a1)
{
  v2 = sub_18EF9F694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F00D180(void *a1)
{
  v2 = *v1;
  v1[1];
  return sub_18F00C970(a1);
}

uint64_t sub_18F00D1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F00CAD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F00D1E0(uint64_t a1)
{
  v2 = sub_18F01DE64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F00D21C(uint64_t a1)
{
  v2 = sub_18F01DE64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F00D258@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18F00CE64(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void static LNAssistantAppEntityMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)()
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_148();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_241();
  sub_18EFDA50C(v7, v8);
  v12 = v1;
  if (v1)
  {
    goto LABEL_5;
  }

  if (!v9 || (v13 = v10, v14 = v11, sub_18EF825F4(0, &unk_1ED5FE410, off_1E72AFF08), OUTLINED_FUNCTION_289(), sub_18EF9FE2C(), v15 = v0, v16 = OUTLINED_FUNCTION_252(), !sub_18EFEFE08(v16, v17, v13, v14, v2, v0)))
  {
    sub_18EFD2EC8();
    v12 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_38(v12, v18);
LABEL_5:
    sub_18EFD2EC8();
    v19 = OUTLINED_FUNCTION_249();
    *v20 = v12;
    OUTLINED_FUNCTION_278(v19, v20);
  }

  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_177();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAssistantAppEntityMetadata.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  OUTLINED_FUNCTION_176();
  sub_18EFEEE1C();
  sub_18EFDB23C(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_48();

  if (v1)
  {
    sub_18EFD2EC8();
    v7 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_43(v7, v8);
  }

  v9 = OUTLINED_FUNCTION_49();
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_18F00D47C()
{
  v1 = sub_18F09302C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_18F09301C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB75A8, &qword_18F09BE28);
  sub_18EF98C44();
  sub_18F09300C();

  if (!v0)
  {
    return v5;
  }

  return result;
}

uint64_t sub_18F00D52C()
{
  v1 = sub_18F09302C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_18F09301C();
  sub_18F01398C();
  sub_18F09300C();

  if (!v0)
  {
    return v5;
  }

  return result;
}

__n128 sub_18F00D5D0@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_18F09302C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_18F09301C();
  sub_18EFC5418();
  sub_18F09300C();

  if (!v1)
  {
    result = v10;
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
  }

  return result;
}

uint64_t sub_18F00D694()
{
  v1 = sub_18F09302C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_18F09301C();
  sub_18EFC546C();
  sub_18F09300C();

  if (!v0)
  {
    return v5;
  }

  return result;
}

uint64_t sub_18F00D734()
{
  v1 = sub_18F09302C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_18F09301C();
  sub_18EFC54D0();
  sub_18F09300C();

  if (!v0)
  {
    return v5;
  }

  return result;
}

uint64_t sub_18F00D7D4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_344(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_18F012594(result, 1, sub_18F00EAD8);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_18F00D8B4()
{
  OUTLINED_FUNCTION_376();
  v4 = sub_18EFA0A7C(v3);
  v5 = sub_18EFA0A7C(*v0);
  v6 = __OFADD__(v5, v4);
  result = v5 + v4;
  if (v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_18F01260C(result);
  v8 = *v0;
  v9 = *v0 & 0xFFFFFFFFFFFFFF8;
  v1(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), v2);
  v11 = v10;

  if (v11 < v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v11 < 1)
  {
LABEL_6:
    *v0 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_18F00D964(uint64_t a1)
{
  result = OUTLINED_FUNCTION_344(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_18F012594(result, 1, sub_18F00ECBC);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_18F0932BC();
  v8 = *(result - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_18F00DA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_18F093B5C();

  v8 = sub_18F093B5C();

  if (a5)
  {
    type metadata accessor for LNPlatformName();
    sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    sub_18EF8558C(&qword_1ED5FFA38);
    v9 = sub_18F093A3C();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_18F093B5C();

  v11 = [v5 initWithIdentifier:v7 mangledTypeName:v8 availabilityAnnotations:v9 contentTypeIdentifier:v10];

  return v11;
}

id sub_18F00DBCC(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_18EF825F4(0, &unk_1ED5FCE08, off_1E72B0100);
  v9 = sub_18F093DBC();

  if (a5)
  {
    v10 = sub_18F093B5C();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 initWithTransient:a1 & 1 identifier:a2 properties:v9 managedAccountIdentifier:v10];

  return v11;
}

id sub_18F00DC9C()
{
  sub_18EF825F4(0, &qword_1ED5FE1A8, off_1E72AFFC8);
  v1 = sub_18F093DBC();

  v2 = sub_18F093DBC();

  v3 = [v0 initWithExportableTypes:v1 importableTypes:v2];

  return v3;
}

id sub_18F00DD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_18F093B5C();

  v7 = sub_18F0932BC();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v7) != 1)
  {
    v8 = sub_18F09324C();
    (*(*(v7 - 8) + 8))(a3, v7);
  }

  v9 = [v4 initWithName:v6 bundleURL:v8];

  return v9;
}

id sub_18F00DE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = sub_18F093B5C();

  v13 = sub_18F093B5C();

  if (!a7)
  {
    v14 = 0;
    if (a9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = sub_18F093B5C();

  if (!a9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = sub_18F093B5C();

LABEL_6:
  v16 = [v9 initWithKind:a1 parentIdentifier:v12 phrase:v13 expected:v14 phraseTemplate:v15];

  return v16;
}

uint64_t sub_18F00DF24@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_18F00DF50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18F00DF78();
  *a1 = result;
  return result;
}

uint64_t sub_18F00DF80()
{
  v1 = sub_18F093B8C();
  MEMORY[0x193AD8810](v1);
  OUTLINED_FUNCTION_216();

  return v0;
}

uint64_t sub_18F00DFB4()
{
  sub_18F093B8C();
  sub_18F093C1C();
}

uint64_t sub_18F00E008()
{
  OUTLINED_FUNCTION_115();

  result = sub_18F093B6C();
  *v0 = 0;
  return result;
}

uint64_t sub_18F00E078(uint64_t a1)
{
  v2 = sub_18EF8558C(&qword_1ED5FFA38);
  v3 = sub_18EF8558C(&unk_1EACB8580);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F00E134(uint64_t a1)
{
  v2 = sub_18EF8558C(&unk_1ED5FD778);
  v3 = sub_18EF8558C(&unk_1EACB8110);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F00E1F0(uint64_t a1)
{
  v2 = sub_18EF8558C(&qword_1ED5FF088);
  v3 = sub_18EF8558C(&unk_1EACB8100);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F00E2AC(uint64_t a1)
{
  v2 = sub_18EF8558C(&qword_1ED5FFA10);
  v3 = sub_18EF8558C(&unk_1EACB83F0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F00E368(uint64_t a1)
{
  v2 = sub_18EF8558C(&qword_1ED5FE770);
  v3 = sub_18EF8558C(&unk_1EACB8588);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F00E424(uint64_t a1)
{
  v2 = sub_18EF8558C(&unk_1EACB8310);
  v3 = sub_18EF8558C(&unk_1EACB8318);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F00E4E0(uint64_t a1)
{
  v2 = sub_18EF8558C(&unk_1ED5FF0F8);
  v3 = sub_18EF8558C(&unk_1EACB8320);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

size_t sub_18F00E59C(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_18F00EF94(v9, a2, &unk_1EACB8890, &unk_18F0A1450, _s19BasicCodableWrapperOMa);
  v11 = *(_s19BasicCodableWrapperOMa(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_18EFBB490(a4 + v12, v9, v10 + v12, _s19BasicCodableWrapperOMa);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18F00E6C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8810, &qword_18F0A13E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18F00E7C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8830, &qword_18F0A1400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18F00E8D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8840, &qword_18F0A1410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}