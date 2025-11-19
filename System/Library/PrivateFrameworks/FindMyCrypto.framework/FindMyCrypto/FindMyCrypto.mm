uint64_t P256PrivateKey.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7C90, &qword_24AE3DB28);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE2453C();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AE2444C()
{
  result = qword_27EFB7CD0;
  if (!qword_27EFB7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7CD0);
  }

  return result;
}

unint64_t sub_24AE244A4()
{
  result = qword_27EFB7CD8;
  if (!qword_27EFB7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7CD8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24AE2453C()
{
  result = qword_27EFB7C88;
  if (!qword_27EFB7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7C88);
  }

  return result;
}

unint64_t sub_24AE24590()
{
  result = qword_27EFB77B0;
  if (!qword_27EFB77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77B0);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for KeyRepresentableInternal.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KeyRepresentableInternal.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t KeyRepresentableInternal.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7870, &qword_24AE3B1D8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE24984();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE249D8();
    sub_24AE3A4BC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AE24850()
{
  result = qword_27EFB7898;
  if (!qword_27EFB7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7898);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_24AE24930()
{
  result = qword_27EFB78A0;
  if (!qword_27EFB78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB78A0);
  }

  return result;
}

unint64_t sub_24AE24984()
{
  result = qword_27EFB7860;
  if (!qword_27EFB7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7860);
  }

  return result;
}

unint64_t sub_24AE249D8()
{
  result = qword_27EFB7878;
  if (!qword_27EFB7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7878);
  }

  return result;
}

uint64_t SymmetricKey256.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7D00, &qword_24AE3DE18);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE24C78();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AE24BCC()
{
  result = qword_27EFB7D40;
  if (!qword_27EFB7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7D40);
  }

  return result;
}

unint64_t sub_24AE24C24()
{
  result = qword_27EFB7D48;
  if (!qword_27EFB7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7D48);
  }

  return result;
}

unint64_t sub_24AE24C78()
{
  result = qword_27EFB7CF8;
  if (!qword_27EFB7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7CF8);
  }

  return result;
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

uint64_t sub_24AE24CE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t EncryptAndSignEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7958, &qword_24AE3BC38);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE25054();
  sub_24AE3A5CC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_24AE249D8();
  sub_24AE3A4BC();
  v11 = v18;
  v17 = v19;
  v20 = 1;
  sub_24AE3A4BC();
  (*(v6 + 8))(v9, v5);
  v12 = v18;
  v13 = v19;
  v14 = v17;
  *a2 = v11;
  a2[1] = v14;
  a2[2] = v12;
  a2[3] = v13;
  sub_24AE251B0(v11, v14);
  sub_24AE251B0(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_24AE25204(v11, v14);
  return sub_24AE25204(v12, v13);
}

unint64_t sub_24AE24FA8()
{
  result = qword_27EFB7978;
  if (!qword_27EFB7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7978);
  }

  return result;
}

unint64_t sub_24AE25000()
{
  result = qword_27EFB7980;
  if (!qword_27EFB7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7980);
  }

  return result;
}

unint64_t sub_24AE25054()
{
  result = qword_27EFB7950;
  if (!qword_27EFB7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7950);
  }

  return result;
}

uint64_t sub_24AE250B4()
{
  if (*v0)
  {
    result = 0x6574707972636E65;
  }

  else
  {
    result = 0x727574616E676973;
  }

  *v0;
  return result;
}

uint64_t storeEnumTagSinglePayload for KeyGenerationHint.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24AE251B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24AE25204(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t P256PrivateKey.publicKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24AE3A38C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24AE3A31C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v1[1];
  v22 = *v1;
  v23 = v13;
  sub_24AE251B0(v22, v13);
  sub_24AE3A2EC();
  v14 = sub_24AE3A2CC();
  v15 = MEMORY[0x24C2323F0](v14);
  v17 = v16;
  (*(v4 + 8))(v7, v3);
  sub_24AE254A8(v15, v17, &v22);
  v18 = v23;
  if (v23 >> 60 == 15)
  {
    result = sub_24AE3A49C();
    __break(1u);
  }

  else
  {
    v19 = v22;
    result = (*(v9 + 8))(v12, v8);
    *a1 = v19;
    a1[1] = v18;
  }

  return result;
}

uint64_t sub_24AE254A8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 64)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_24AE25204(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

char *decryptAndValidate(envelope:symmetricKey:publicKey:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_24AE3A29C();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20]();
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24AE3A34C();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20]();
  v60 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24AE3A38C();
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v19 = a1[2];
  v18 = a1[3];
  v21 = *a2;
  v20 = a2[1];
  v22 = a3[1];
  v61 = *a3;
  v62 = v22;
  sub_24AE251B0(v61, v22);
  v23 = v63;
  sub_24AE3A37C();
  if (!v23)
  {
    v50 = v20;
    v51 = v21;
    v52 = v18;
    v53 = v19;
    v24 = v58;
    v63 = v12;
    v61 = v16;
    v62 = v17;
    sub_24AE251B0(v16, v17);
    sub_24AE25A84();
    v25 = v60;
    sub_24AE3A33C();
    v26 = v52;
    v27 = v53;
    v61 = v53;
    v62 = v52;
    sub_24AE251B0(v53, v52);
    v28 = v15;
    v29 = sub_24AE3A35C();
    sub_24AE25204(v61, v62);
    v30 = v59;
    if (v29)
    {
      v61 = v51;
      v62 = v50;
      sub_24AE251B0(v51, v50);
      v31 = v54;
      sub_24AE3A27C();
      sub_24AE251B0(v27, v26);
      v32 = sub_24AE25AD8(v27, v26);
      v33 = v24;
      v43 = v25;
      v44 = v32;
      v46 = v45;
      v47 = sub_24AE3A22C();
      v48 = v31;
      v53 = 0;
      v15 = v47;
      sub_24AE25204(v44, v46);
      (*(v55 + 8))(v48, v56);
      (*(v57 + 8))(v43, v33);
      (*(v30 + 8))(v28, v63);
    }

    else
    {
      if (qword_27EFB7708 != -1)
      {
        swift_once();
      }

      v34 = sub_24AE3A21C();
      __swift_project_value_buffer(v34, qword_27EFB7E40);
      v35 = sub_24AE3A1FC();
      v36 = sub_24AE3A43C();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v63;
      v39 = v57;
      if (v37)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_24AE23000, v35, v36, "Invalid ECDSASignature", v40, 2u);
        MEMORY[0x24C232960](v40, -1, -1);
      }

      sub_24AE2DE4C();
      v15 = swift_allocError();
      *v41 = 0;
      swift_willThrow();
      (*(v39 + 8))(v60, v24);
      (*(v30 + 8))(v28, v38);
    }
  }

  return v15;
}

unint64_t sub_24AE25A84()
{
  result = qword_27EFB7788;
  if (!qword_27EFB7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7788);
  }

  return result;
}

uint64_t sub_24AE25AD8(uint64_t a1, unint64_t a2)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v30[3] = MEMORY[0x277CC9318];
      v30[4] = MEMORY[0x277CC9300];
      v30[0] = a1;
      v30[1] = a2;
      v9 = __swift_project_boxed_opaque_existential_1(v30, MEMORY[0x277CC9318]);
      v10 = *v9;
      v11 = v9[1];
      v12 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v12 != 2)
        {
          memset(v28, 0, 14);
          v14 = v28;
          v13 = v28;
          goto LABEL_33;
        }

        v15 = *(v10 + 16);
        v16 = *(v10 + 24);
        v17 = sub_24AE3A06C();
        if (v17)
        {
          v18 = sub_24AE3A09C();
          v10 = v15 - v18;
          if (__OFSUB__(v15, v18))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v17 += v10;
        }

        v5 = __OFSUB__(v16, v15);
        v19 = v16 - v15;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v12)
      {
        v28[0] = *v9;
        LOWORD(v28[1]) = v11;
        BYTE2(v28[1]) = BYTE2(v11);
        BYTE3(v28[1]) = BYTE3(v11);
        BYTE4(v28[1]) = BYTE4(v11);
        BYTE5(v28[1]) = BYTE5(v11);
        v13 = v28 + BYTE6(v11);
        v14 = v28;
LABEL_33:
        sub_24AE25DA4(v14, v13, &v29);
        v7 = v29;
        __swift_destroy_boxed_opaque_existential_1(v30);
        goto LABEL_34;
      }

      v20 = v10;
      v21 = v10 >> 32;
      v19 = v21 - v20;
      if (v21 >= v20)
      {
        v17 = sub_24AE3A06C();
        if (!v17)
        {
LABEL_25:
          v23 = sub_24AE3A08C();
          if (v23 >= v19)
          {
            v24 = v19;
          }

          else
          {
            v24 = v23;
          }

          v25 = (v24 + v17);
          if (v17)
          {
            v13 = v25;
          }

          else
          {
            v13 = 0;
          }

          v14 = v17;
          goto LABEL_33;
        }

        v22 = sub_24AE3A09C();
        if (!__OFSUB__(v20, v22))
        {
          v17 += v20 - v22;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_24AE25204(a1, a2);
  v7 = sub_24AE3A25C();
  sub_24AE2F38C();
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
  swift_willThrow();
LABEL_34:
  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

_BYTE *sub_24AE25DA4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_24AE38674(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_24AE38734(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_24AE25E38(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_24AE25E38(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_24AE3A0AC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_24AE3A05C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t encryptAndSign(data:symmetricKey:privateKey:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v43 = a5;
  v9 = sub_24AE3A34C();
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20]();
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24AE3A31C();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20]();
  v47 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7960, &qword_24AE3BC40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v40 - v16;
  v18 = sub_24AE3A29C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20]();
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a3;
  v24 = a3[1];
  v26 = *a4;
  v25 = a4[1];
  v50 = a1;
  v51 = a2;
  v48 = v23;
  v49 = v24;
  sub_24AE251B0(v23, v24);
  sub_24AE3A27C();
  v27 = sub_24AE3A24C();
  (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  sub_24AE25A84();
  v28 = v52;
  v29 = sub_24AE3A23C();
  if (v28)
  {
    sub_24AE262D0(v17, &qword_27EFB7960, &qword_24AE3BC40);
    return (*(v19 + 8))(v22, v18);
  }

  else
  {
    v32 = v29;
    v52 = v30;
    sub_24AE262D0(v17, &qword_27EFB7960, &qword_24AE3BC40);
    (*(v19 + 8))(v22, v18);
    v50 = v26;
    v51 = v25;
    sub_24AE251B0(v26, v25);
    v33 = v47;
    sub_24AE3A2EC();
    v34 = v52;
    v50 = v32;
    v51 = v52;
    v35 = v44;
    sub_24AE3A30C();
    v36 = sub_24AE3A32C();
    v38 = v37;
    (*(v41 + 8))(v35, v42);
    result = (*(v45 + 8))(v33, v46);
    v39 = v43;
    *v43 = v36;
    v39[1] = v38;
    v39[2] = v32;
    v39[3] = v34;
  }

  return result;
}

uint64_t sub_24AE262D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t EncryptAndSignEnvelope.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7948, &qword_24AE3BC30);
  v16 = *(v4 - 8);
  v5 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14 = v1[3];
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v8, v9);
  sub_24AE25054();
  sub_24AE3A5DC();
  v17 = v8;
  v18 = v9;
  v19 = 0;
  sub_24AE2650C();
  sub_24AE3A4EC();
  sub_24AE25204(v17, v18);
  if (!v2)
  {
    v17 = v15;
    v18 = v14;
    v19 = 1;
    sub_24AE251B0(v15, v14);
    sub_24AE3A4EC();
    sub_24AE25204(v17, v18);
  }

  return (*(v16 + 8))(v7, v4);
}

unint64_t sub_24AE2650C()
{
  result = qword_27EFB7868;
  if (!qword_27EFB7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7868);
  }

  return result;
}

uint64_t sub_24AE265A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24AE251B0(v2, v3);
}

__n128 sub_24AE265AC@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AE265B8()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_24AE26660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AE3A03C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 24) >> 60;
    if (((4 * v12) & 0xC) != 0)
    {
      return 16 - ((4 * v12) & 0xC | (v12 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24AE26734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AE3A03C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v13 = a1 + *(a4 + 24);
    *(v13 + 16) = 0;
    *(v13 + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_24AE26804(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AE25204(a1, a2);
  }

  return a1;
}

uint64_t sub_24AE26834(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AE251B0(a1, a2);
  }

  return a1;
}

uint64_t sub_24AE26848()
{
  v0 = sub_24AE3A21C();
  __swift_allocate_value_buffer(v0, qword_27EFB7E28);
  v1 = __swift_project_value_buffer(v0, qword_27EFB7E28);
  if (qword_27EFB7728 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFB7E70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TokenSequence.init(privateKey:publicKey:sharedKey:startIndex:hint:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a3;
  v7 = a3[1];
  v10 = *a5;
  v9 = a5[1];
  v11 = a5[2];
  v32 = *a2;
  if (!a4)
  {
    sub_24AE26804(*a1, *(a1 + 1));
    sub_24AE25204(v32, *(&v32 + 1));
    sub_24AE25204(v8, v7);
    sub_24AE26D34(v10, v9, v11);
    sub_24AE26D50();
    swift_allocError();
    return swift_willThrow();
  }

  v12 = v6;
  v31 = *a1;
  if (v11 >> 60 == 15)
  {
    sub_24AE251B0(v8, v7);
    v9 = v8;
    v11 = v7;
    v15 = a4;
  }

  else
  {
    v15 = a4 - v10;
    v36 = v6;
    if (a4 >= v10)
    {
      sub_24AE251B0(v9, v11);
      if (qword_27EFB7700 != -1)
      {
        swift_once();
      }

      v23 = sub_24AE3A21C();
      __swift_project_value_buffer(v23, qword_27EFB7E28);
      sub_24AE251B0(v9, v11);
      v24 = sub_24AE3A1FC();
      loga = sub_24AE3A42C();
      if (os_log_type_enabled(v24, loga))
      {
        v28 = v24;
        v25 = swift_slowAlloc();
        *v25 = 134218240;
        sub_24AE26D34(v10, v9, v11);
        *(v25 + 4) = v10;
        result = sub_24AE26D34(v10, v9, v11);
        *(v25 + 12) = 2048;
        if (a4 < v15)
        {
          __break(1u);
          return result;
        }

        *(v25 + 14) = v10;
        _os_log_impl(&dword_24AE23000, v28, loga, "KeyGenerationHint hint.index:%llu saved %llu ratchet iterations", v25, 0x16u);
        MEMORY[0x24C232960](v25, -1, -1);
      }

      else
      {
        sub_24AE26D34(v10, v9, v11);
        sub_24AE26D34(v10, v9, v11);
      }

      v12 = v36;
    }

    else
    {
      if (qword_27EFB7700 != -1)
      {
        swift_once();
      }

      v17 = sub_24AE3A21C();
      __swift_project_value_buffer(v17, qword_27EFB7E28);
      sub_24AE251B0(v9, v11);
      v18 = sub_24AE3A1FC();
      v19 = sub_24AE3A44C();
      log = v18;
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134218240;
        *(v20 + 4) = v10;
        sub_24AE26D34(v10, v9, v11);
        *(v20 + 12) = 2048;
        *(v20 + 14) = a4;
        v21 = v19;
        v22 = log;
        _os_log_impl(&dword_24AE23000, log, v21, "Ignoring KeyGenerationHint: hint.index (%llu) > initialRatchetsToSkip(%llu)", v20, 0x16u);
        MEMORY[0x24C232960](v20, -1, -1);
        v12 = v36;
      }

      else
      {
        sub_24AE26D34(v10, v9, v11);
        v12 = v36;
        v22 = log;
      }

      sub_24AE26D34(v10, v9, v11);
      v15 = a4 - 1;
      sub_24AE251B0(v8, v7);
      v9 = v8;
      v11 = v7;
    }
  }

  v33 = v9;
  v34 = v11;
  sub_24AE251B0(v9, v11);
  sub_24AE2C51C(&v33, v15, v35);
  sub_24AE25204(v33, v34);
  if (v12)
  {
    sub_24AE26804(v31, *(&v31 + 1));
    sub_24AE25204(v32, *(&v32 + 1));
    sub_24AE25204(v8, v7);
    return sub_24AE25204(v9, v11);
  }

  else
  {
    v26 = v35[0];
    v27 = v35[1];
    result = sub_24AE25204(v9, v11);
    *a6 = v31;
    *(a6 + 16) = v32;
    *(a6 + 32) = v8;
    *(a6 + 40) = v7;
    *(a6 + 48) = a4;
    *(a6 + 56) = v26;
    *(a6 + 64) = v27;
  }

  return result;
}

uint64_t sub_24AE26D34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_24AE25204(a2, a3);
  }

  return result;
}

unint64_t sub_24AE26D50()
{
  result = qword_27EFB7750;
  if (!qword_27EFB7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7750);
  }

  return result;
}

uint64_t TokenSequence.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_24AE274F8(v8, v7);
}

double TokenSequence.next()@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[8];
  v12 = v1[6];
  v9 = v1[7];
  v16[0] = v2;
  v16[1] = v3;
  v15[0] = v4;
  v15[1] = v5;
  *&v14 = v9;
  *(&v14 + 1) = v8;
  sub_24AE26834(v2, v3);
  sub_24AE251B0(v4, v5);
  sub_24AE251B0(v7, v6);
  sub_24AE251B0(v9, v8);
  sub_24AE251B0(v9, v8);
  sub_24AE251B0(v9, v8);
  sub_24AE2BC64(v16, v15, &v14, (v1 + 6), (v1 + 7), v17);
  sub_24AE25204(v14, *(&v14 + 1));
  sub_24AE26804(v2, v3);
  sub_24AE25204(v4, v5);
  sub_24AE25204(v7, v6);
  sub_24AE25204(v9, v8);
  *a1 = v12;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  v10 = v17[1];
  *(a1 + 24) = v17[0];
  *(a1 + 40) = v10;
  result = *&v18;
  *(a1 + 56) = v18;
  return result;
}

uint64_t sub_24AE270BC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v9[2] = v2;
  v9[3] = v3;
  v10 = *(v1 + 64);
  v4 = v10;
  v5 = *(v1 + 16);
  v9[0] = *v1;
  v6 = v9[0];
  v9[1] = v5;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v6;
  *(a1 + 16) = v5;
  v12 = v4;
  v11[2] = v2;
  v11[3] = v3;
  v11[0] = v6;
  v11[1] = v5;
  sub_24AE274F8(v9, v8);
  return sub_24AE27964(v11);
}

uint64_t sub_24AE27138()
{
  v1 = *(v0 + 48);
  v6[2] = *(v0 + 32);
  v6[3] = v1;
  v7 = *(v0 + 64);
  v2 = *(v0 + 16);
  v6[0] = *v0;
  v6[1] = v2;
  sub_24AE27730(v6);
  v4 = v3;
  sub_24AE27964(v6);
  return v4;
}

uint64_t sub_24AE2718C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v3 + 8);
  v5 = *v3;
  v6 = v3[1];
  return sub_24AE271D0(a1, a2, a3);
}

uint64_t sub_24AE271D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = v3[3];
  v28 = v3[2];
  v29 = v5;
  v30 = *(v3 + 8);
  v6 = v3[1];
  v26 = *v3;
  v27 = v6;
  if (!a2)
  {
    v7 = 0;
    v16 = v3[3];
    *(result + 32) = v3[2];
    *(result + 48) = v16;
    *(result + 64) = *(v3 + 8);
    v15 = *v3;
    v14 = v3[1];
    goto LABEL_12;
  }

  v7 = a3;
  if (!a3)
  {
LABEL_10:
    v13 = v29;
    *(v4 + 32) = v28;
    *(v4 + 48) = v13;
    *(v4 + 64) = v30;
    v15 = v26;
    v14 = v27;
LABEL_12:
    *v4 = v15;
    *(v4 + 16) = v14;
    return v7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 1;
    while (1)
    {
      TokenSequence.next()(&v21);
      if (v22 >> 60 == 15)
      {
        break;
      }

      v10 = v24;
      *(v8 + 32) = v23;
      *(v8 + 48) = v10;
      *(v8 + 64) = v25;
      v11 = v22;
      *v8 = v21;
      *(v8 + 16) = v11;
      if (v7 == v9)
      {
        goto LABEL_10;
      }

      v8 += 72;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v19[2] = v23;
    v19[3] = v24;
    v20 = v25;
    v19[0] = v21;
    v19[1] = v22;
    sub_24AE262D0(v19, &qword_27EFB7770, ":?");
    v17 = v29;
    *(v4 + 32) = v28;
    *(v4 + 48) = v17;
    *(v4 + 64) = v30;
    v18 = v27;
    *v4 = v26;
    *(v4 + 16) = v18;
    return v9 - 1;
  }

  __break(1u);
  return result;
}

uint64_t *sub_24AE2734C@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = *a2 + 1;
  if (*a2 == -1)
  {
    __break(1u);
  }

  else
  {
    v23 = a4;
    v20 = *result;
    v21 = result[1];
    v7 = result[2];
    v6 = result[3];
    v9 = result[4];
    v8 = result[5];
    *a2 = v5;
    v10 = *a3;
    v11 = a3[1];
    *a3 = v9;
    a3[1] = v8;
    sub_24AE251B0(v9, v8);
    sub_24AE25204(v10, v11);
    v12 = sub_24AE3A3AC();
    v14 = v13;
    sub_24AE251B0(v9, v8);
    v15 = sub_24AE2CF10(v9, v8, v12, v14, 32);
    if (v4)
    {
      sub_24AE25204(v12, v14);
      return sub_24AE25204(v9, v8);
    }

    else
    {
      v17 = v15;
      v18 = v16;
      sub_24AE25204(v9, v8);
      sub_24AE30810(v17, v18, &v22);
      sub_24AE25204(v12, v14);
      v19 = v23;
      *v23 = v22;
      v19[2] = v7;
      v19[3] = v6;
      v19[4] = v20;
      v19[5] = v21;
      sub_24AE251B0(v7, v6);
      return sub_24AE26834(v20, v21);
    }
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

unint64_t sub_24AE2757C()
{
  result = qword_27EFB7760;
  if (!qword_27EFB7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7760);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FindMyCrypto10PrivateKeyVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24AE2761C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 72))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24AE27670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void type metadata accessor for SecKey()
{
  if (!qword_27EFB7768)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EFB7768);
    }
  }
}

void sub_24AE27730(uint64_t a1)
{
  v1 = *(a1 + 48);
  v31 = *(a1 + 32);
  v32 = v1;
  v33 = *(a1 + 64);
  v2 = *(a1 + 16);
  v29 = *a1;
  v30 = v2;
  sub_24AE274F8(a1, &v24);
  TokenSequence.next()(&v24);
  v3 = MEMORY[0x277D84F90];
  if (v25 >> 60 != 15)
  {
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      v18[2] = v26;
      v18[3] = v27;
      v19 = v28;
      v18[0] = v24;
      v18[1] = v25;
      if (!v4)
      {
        v6 = v3[3];
        if (((v6 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_25;
        }

        v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
        if (v7 <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7778, ":?");
        v9 = swift_allocObject();
        v10 = (_swift_stdlib_malloc_size(v9) - 32) / 72;
        v9[2] = v8;
        v9[3] = 2 * v10;
        v11 = (v9 + 4);
        v12 = v3[3] >> 1;
        if (v3[2])
        {
          if (v9 != v3 || v11 >= &v3[9 * v12 + 4])
          {
            memmove(v9 + 4, v3 + 4, 72 * v12);
          }

          v3[2] = 0;
        }

        v5 = (v11 + 72 * v12);
        v4 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - v12;

        v3 = v9;
      }

      v14 = __OFSUB__(v4--, 1);
      if (v14)
      {
        break;
      }

      memmove(v5, v18, 0x48uLL);
      v5 += 72;
      TokenSequence.next()(&v24);
      if (v25 >> 60 == 15)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = 0;
LABEL_20:
  v20[2] = v31;
  v20[3] = v32;
  v21 = v33;
  v20[0] = v29;
  v20[1] = v30;
  sub_24AE27964(v20);
  v22[2] = v26;
  v22[3] = v27;
  v23 = v28;
  v22[0] = v24;
  v22[1] = v25;
  sub_24AE262D0(v22, &qword_27EFB7770, ":?");
  v15 = v3[3];
  if (v15 >= 2)
  {
    v16 = v15 >> 1;
    v14 = __OFSUB__(v16, v4);
    v17 = v16 - v4;
    if (!v14)
    {
      v3[2] = v17;
      return;
    }

LABEL_26:
    __break(1u);
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t Advertisement.data.getter()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

uint64_t Advertisement.hint.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE251B0(v1, v2);
  v3 = sub_24AE39FDC();
  sub_24AE27F98(v3, v1, v2, v8);
  v4 = v8[0];
  v5 = v8[1];
  v6 = sub_24AE3A12C();
  sub_24AE25204(v4, v5);
  return v6;
}

uint64_t Advertisement.address.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE251B0(v1, v2);
  v3 = sub_24AE39FDC();
  sub_24AE27F98(v3, v1, v2, &v5);
  return v5;
}

uint64_t Advertisement.key.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24AE251B0(v2, v3);
}

__n128 Advertisement.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t Advertisement.init(macAddress:pubKey2:ek:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v17 = sub_24AE39FCC();
  *(&v17 + 1) = v8;
  sub_24AE3A12C();
  sub_24AE3A13C();
  v9 = v17;
  v16 = v17;
  v15[3] = MEMORY[0x277CC9318];
  v15[4] = MEMORY[0x277CC9300];
  v15[0] = a2;
  v15[1] = a3;
  v10 = __swift_project_boxed_opaque_existential_1(v15, MEMORY[0x277CC9318]);
  v11 = *v10;
  v12 = v10[1];
  sub_24AE251B0(v9, *(&v9 + 1));
  sub_24AE287B8(v11, v12);
  v13 = sub_24AE39FEC();
  (*(*(v13 - 8) + 8))(a1, v13);
  __swift_destroy_boxed_opaque_existential_1(v15);
  *a4 = v16;
  return sub_24AE25204(v17, *(&v17 + 1));
}

uint64_t Advertisement.description.getter()
{
  v2 = *v0;
  sub_24AE288F0();
  return sub_24AE3A3EC();
}

uint64_t Advertisement.hashed.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24AE39FFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = v1[1];
  v14 = v9;
  v15 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D08948], v3);
  sub_24AE251B0(v9, v8);
  sub_24AE25A84();
  v10 = sub_24AE3A00C();
  v12 = v11;
  (*(v4 + 8))(v7, v3);
  result = sub_24AE25204(v14, v15);
  *a1 = v10;
  a1[1] = v12;
  return result;
}

uint64_t sub_24AE27DB4(uint64_t a1)
{
  v2 = sub_24AE28944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE27DF0(uint64_t a1)
{
  v2 = sub_24AE28944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AE27EB4()
{
  v2 = *v0;
  sub_24AE288F0();
  return sub_24AE3A3EC();
}

double Advertisement.nearOwner.getter@<D0>(_OWORD *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  sub_24AE251B0(v4, v3);
  sub_24AE27F98(6, v4, v3, &v6);
  result = *&v6;
  *a1 = v6;
  return result;
}

uint64_t sub_24AE27F98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_24AE292E0(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_24AE2927C(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_24AE3A11C();
    v15 = v14;
    result = sub_24AE25204(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_24AE280E8()
{
  sub_24AE3A57C();
  MEMORY[0x24C232610](0);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE2812C()
{
  sub_24AE3A57C();
  MEMORY[0x24C232610](0);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE2816C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24AE3A51C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24AE281F4(uint64_t a1)
{
  v2 = sub_24AE289EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE28230(uint64_t a1)
{
  v2 = sub_24AE289EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AE282B0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a4;
  v17[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v17 - v10;
  v12 = *v5;
  v13 = v5[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_24AE251B0(v12, v13);
  (v17[0])(v15);
  sub_24AE3A5DC();
  v18 = v12;
  v19 = v13;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v18, v19);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_24AE28458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  v16 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v8 - 8);
  v9 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_24AE3A5CC();
  if (!v5)
  {
    v13 = v16;
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v18 + 8))(v11, v8);
    *v13 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24AE28608()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE3A57C();
  sub_24AE251B0(v1, v2);
  sub_24AE3A14C();
  sub_24AE25204(v1, v2);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE2866C()
{
  v2 = *v0;
  v1 = v0[1];
  sub_24AE251B0(v2, v1);
  sub_24AE3A14C();

  return sub_24AE25204(v2, v1);
}

uint64_t sub_24AE286CC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE3A57C();
  sub_24AE251B0(v1, v2);
  sub_24AE3A14C();
  sub_24AE25204(v1, v2);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE28738(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_24AE251B0(*a1, v3);
  sub_24AE251B0(v4, v5);
  v6 = sub_24AE2A27C(v2, v3, v4, v5);
  sub_24AE25204(v4, v5);
  sub_24AE25204(v2, v3);
  return v6 & 1;
}

uint64_t sub_24AE287B8(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_24AE3A10C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_24AE291E8(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_24AE288F0()
{
  result = qword_27EFB7780;
  if (!qword_27EFB7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7780);
  }

  return result;
}

unint64_t sub_24AE28944()
{
  result = qword_27EFB7798;
  if (!qword_27EFB7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7798);
  }

  return result;
}

unint64_t sub_24AE28998()
{
  result = qword_27EFB77A0;
  if (!qword_27EFB77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77A0);
  }

  return result;
}

unint64_t sub_24AE289EC()
{
  result = qword_27EFB77C0;
  if (!qword_27EFB77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77C0);
  }

  return result;
}

unint64_t sub_24AE28A40(uint64_t a1)
{
  result = sub_24AE28A68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE28A68()
{
  result = qword_27EFB77D0;
  if (!qword_27EFB77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77D0);
  }

  return result;
}

unint64_t sub_24AE28B10()
{
  result = qword_27EFB77D8;
  if (!qword_27EFB77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77D8);
  }

  return result;
}

unint64_t sub_24AE28B64()
{
  result = qword_27EFB77E0;
  if (!qword_27EFB77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77E0);
  }

  return result;
}

unint64_t sub_24AE28BB8()
{
  result = qword_27EFB77E8;
  if (!qword_27EFB77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77E8);
  }

  return result;
}

unint64_t sub_24AE28C10()
{
  result = qword_27EFB77F0;
  if (!qword_27EFB77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77F0);
  }

  return result;
}

unint64_t sub_24AE28C64(uint64_t a1)
{
  result = sub_24AE28C8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE28C8C()
{
  result = qword_27EFB77F8;
  if (!qword_27EFB77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77F8);
  }

  return result;
}

uint64_t sub_24AE28D34(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE28D98()
{
  result = qword_27EFB7800;
  if (!qword_27EFB7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7800);
  }

  return result;
}

unint64_t sub_24AE28DEC()
{
  result = qword_27EFB7808;
  if (!qword_27EFB7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7808);
  }

  return result;
}

unint64_t sub_24AE28E40()
{
  result = qword_27EFB7810;
  if (!qword_27EFB7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7810);
  }

  return result;
}

unint64_t sub_24AE28E94()
{
  result = qword_27EFB7818;
  if (!qword_27EFB7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7818);
  }

  return result;
}

unint64_t sub_24AE28EEC()
{
  result = qword_27EFB7820;
  if (!qword_27EFB7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7820);
  }

  return result;
}

uint64_t sub_24AE28F50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_24AE28FDC()
{
  result = qword_27EFB7828;
  if (!qword_27EFB7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7828);
  }

  return result;
}

unint64_t sub_24AE29034()
{
  result = qword_27EFB7830;
  if (!qword_27EFB7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7830);
  }

  return result;
}

unint64_t sub_24AE2908C()
{
  result = qword_27EFB7838;
  if (!qword_27EFB7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7838);
  }

  return result;
}

unint64_t sub_24AE290E4()
{
  result = qword_27EFB7840;
  if (!qword_27EFB7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7840);
  }

  return result;
}

unint64_t sub_24AE2913C()
{
  result = qword_27EFB7848;
  if (!qword_27EFB7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7848);
  }

  return result;
}

unint64_t sub_24AE29194()
{
  result = qword_27EFB7850;
  if (!qword_27EFB7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7850);
  }

  return result;
}

uint64_t sub_24AE291E8(uint64_t a1, uint64_t a2)
{
  result = sub_24AE3A06C();
  if (!result || (result = sub_24AE3A09C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_24AE3A08C();
      return sub_24AE3A10C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE2927C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_24AE292E0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t KeyRepresenting.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a4 + 8);
  v11 = *(v10 + 48);
  sub_24AE251B0(a1, a2);
  v12 = v11(a3, v10);
  sub_24AE29878(a1, a2, v12, &v15);
  (*(a4 + 24))(&v15, a3, a4);
  sub_24AE25204(a1, a2);
  v13 = *(*(a3 - 8) + 56);

  return v13(a5, 0, 1, a3);
}

uint64_t KeyRepresentableError.description.getter()
{
  if (!*(v0 + 16))
  {
    sub_24AE3A46C();

    v5 = 0xD000000000000019;
    v2 = sub_24AE3A50C();
    MEMORY[0x24C232440](v2);

    MEMORY[0x24C232440](0x6C6175746361202CLL, 0xEA0000000000203ALL);
    v3 = sub_24AE3A50C();
    MEMORY[0x24C232440](v3);

    return v5;
  }

  if (*(v0 + 16) == 1)
  {
    sub_24AE3A46C();

    v5 = 0xD000000000000018;
    sub_24AE25A84();
    v1 = sub_24AE3A01C();
    MEMORY[0x24C232440](v1);

    MEMORY[0x24C232440](41, 0xE100000000000000);
    return v5;
  }

  if (*v0 == 0)
  {
    return 0x7479426F72657A2ELL;
  }

  else
  {
    return 0x64696C61766E692ELL;
  }
}

uint64_t static KeyRepresenting.random()(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(a2 + 8) + 48))();
  v5 = MEMORY[0x24C232150](v4);
  return KeyRepresentable<>.init(data:)(v5, v6, a1, a2);
}

uint64_t KeyRepresentable<>.init(data:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v10 = *(v9 + 48);
  sub_24AE251B0(a1, a2);
  v11 = v10(a3, v9);
  sub_24AE29878(a1, a2, v11, &v13);
  if (!v4)
  {
    (*(a4 + 24))(&v13, a3, a4);
  }

  return sub_24AE25204(a1, a2);
}

uint64_t sub_24AE29878@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (a3)
      {
        v11 = result;
        v10 = a2;
        v12 = 0;
        goto LABEL_21;
      }

      goto LABEL_17;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 == a3)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != a3)
      {
        goto LABEL_11;
      }

LABEL_17:
      *a4 = result;
      a4[1] = a2;
      return result;
    }

    goto LABEL_23;
  }

  if (BYTE6(a2) == a3)
  {
    goto LABEL_17;
  }

LABEL_11:
  if (v5 != 2)
  {
    if (v5 != 1)
    {
      v11 = result;
      v10 = a2;
      v12 = BYTE6(a2);
      goto LABEL_21;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      v10 = a2;
      v11 = result;
      v12 = HIDWORD(result) - result;
LABEL_21:
      sub_24AE2A708();
      swift_allocError();
      *v15 = a3;
      *(v15 + 8) = v12;
      *(v15 + 16) = 0;
      swift_willThrow();
      return sub_24AE25204(v11, v10);
    }

    goto LABEL_24;
  }

  v14 = *(result + 16);
  v13 = *(result + 24);
  v12 = v13 - v14;
  if (!__OFSUB__(v13, v14))
  {
    v10 = a2;
    v11 = result;
    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_24AE299D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24AE3A51C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24AE29A58(uint64_t a1)
{
  v2 = sub_24AE24984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE29A94(uint64_t a1)
{
  v2 = sub_24AE24984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KeyRepresentableInternal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7858, &qword_24AE3B1D0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v8, v9);
  sub_24AE24984();
  sub_24AE3A5DC();
  v12 = v8;
  v13 = v9;
  sub_24AE2650C();
  sub_24AE3A4EC();
  sub_24AE25204(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t KeyRepresentableInternal.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24AE3A14C();
}

uint64_t KeyRepresentableInternal.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE3A57C();
  sub_24AE3A14C();
  return sub_24AE3A5BC();
}

uint64_t sub_24AE29CA0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE3A57C();
  sub_24AE3A14C();
  return sub_24AE3A5BC();
}

uint64_t sub_24AE29CEC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24AE3A14C();
}

uint64_t sub_24AE29CF4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE3A57C();
  sub_24AE3A14C();
  return sub_24AE3A5BC();
}

uint64_t SecurityKeyRepresentable.init(rawValue:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(a2 + 16))();
  v5 = *(*(a1 - 8) + 56);

  return v5(a3, 0, 1, a1);
}

id sub_24AE29DF8@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_24AE29E04@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_24AE3A06C();
    if (v10)
    {
      v11 = sub_24AE3A09C();
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
      result = sub_24AE3A08C();
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
  v10 = sub_24AE3A06C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_24AE3A09C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_24AE3A08C();
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

uint64_t sub_24AE2A034(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_24AE2A1C4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_24AE25204(a3, a4);
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
  sub_24AE29E04(v14, a3, a4, &v13);
  v10 = v4;
  sub_24AE25204(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_24AE2A1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_24AE3A06C();
  v11 = result;
  if (result)
  {
    result = sub_24AE3A09C();
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

  sub_24AE3A08C();
  sub_24AE29E04(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_24AE2A27C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_24AE251B0(a3, a4);
          return sub_24AE2A034(v13, a2, a3, a4) & 1;
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

unint64_t sub_24AE2A3E8()
{
  result = qword_27EFB7880;
  if (!qword_27EFB7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7880);
  }

  return result;
}

unint64_t sub_24AE2A43C(uint64_t a1)
{
  result = sub_24AE2A464();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE2A464()
{
  result = qword_27EFB7888;
  if (!qword_27EFB7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7888);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FindMyCrypto21KeyRepresentableErrorO(uint64_t a1)
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

uint64_t sub_24AE2A4E8(uint64_t a1, unsigned int a2)
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

uint64_t sub_24AE2A530(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24AE2A574(uint64_t result, unsigned int a2)
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

uint64_t sub_24AE2A61C(uint64_t *a1, int a2)
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

uint64_t sub_24AE2A664(uint64_t result, int a2, int a3)
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

unint64_t sub_24AE2A6B4()
{
  result = qword_27EFB7890;
  if (!qword_27EFB7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7890);
  }

  return result;
}

unint64_t sub_24AE2A708()
{
  result = qword_27EFB78A8;
  if (!qword_27EFB78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB78A8);
  }

  return result;
}

uint64_t KeyGenerationHint.sharedSecret.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_24AE251B0(v2, v3);
}

uint64_t static KeyGenerationHint.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[1];
  v2 = a2[2];
  v5 = a1[1];
  v4 = a1[2];
  sub_24AE251B0(v5, v4);
  sub_24AE251B0(v3, v2);
  v6 = sub_24AE2A27C(v5, v4, v3, v2);
  sub_24AE25204(v3, v2);
  sub_24AE25204(v5, v4);
  return v6 & 1;
}

uint64_t sub_24AE2A820()
{
  v1 = *v0;
  sub_24AE3A57C();
  MEMORY[0x24C232610](v1);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE2A894()
{
  v1 = *v0;
  sub_24AE3A57C();
  MEMORY[0x24C232610](v1);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE2A8D8()
{
  if (*v0)
  {
    result = 0x6553646572616873;
  }

  else
  {
    result = 0x7865646E69;
  }

  *v0;
  return result;
}

uint64_t sub_24AE2A918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_24AE3A51C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEC00000074657263)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AE3A51C();

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

uint64_t sub_24AE2AA00(uint64_t a1)
{
  v2 = sub_24AE2B0E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE2AA3C(uint64_t a1)
{
  v2 = sub_24AE2B0E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KeyGenerationHint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB78B0, &qword_24AE3B6A0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v13 - v6;
  v8 = *v1;
  v13[0] = v1[1];
  v9 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE2B0E4();
  sub_24AE3A5DC();
  LOBYTE(v14) = 0;
  v11 = v13[1];
  sub_24AE3A4FC();
  if (!v11)
  {
    v14 = v13[0];
    v15 = v9;
    v16 = 1;
    sub_24AE251B0(v13[0], v9);
    sub_24AE2B138();
    sub_24AE3A4EC();
    sub_24AE25204(v14, v15);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t KeyGenerationHint.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x24C232630](*v0);
  sub_24AE251B0(v1, v2);
  sub_24AE3A14C();

  return sub_24AE25204(v1, v2);
}

uint64_t KeyGenerationHint.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24AE3A57C();
  MEMORY[0x24C232630](v1);
  sub_24AE251B0(v2, v3);
  sub_24AE3A14C();
  sub_24AE25204(v2, v3);
  return sub_24AE3A5BC();
}

uint64_t KeyGenerationHint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB78C0, &qword_24AE3B6A8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE2B0E4();
  sub_24AE3A5CC();
  if (!v2)
  {
    LOBYTE(v14) = 0;
    v11 = sub_24AE3A4CC();
    v15 = 1;
    sub_24AE2B18C();
    sub_24AE3A4BC();
    (*(v6 + 8))(v9, v5);
    v12 = v14;
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24AE2AEBC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24AE3A57C();
  MEMORY[0x24C232630](v1);
  sub_24AE251B0(v2, v3);
  sub_24AE3A14C();
  sub_24AE25204(v2, v3);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE2AF38()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x24C232630](*v0);
  sub_24AE251B0(v1, v2);
  sub_24AE3A14C();

  return sub_24AE25204(v1, v2);
}

uint64_t sub_24AE2AFA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24AE3A57C();
  MEMORY[0x24C232630](v1);
  sub_24AE251B0(v2, v3);
  sub_24AE3A14C();
  sub_24AE25204(v2, v3);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE2B04C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[1];
  v2 = a2[2];
  v5 = a1[1];
  v4 = a1[2];
  sub_24AE251B0(v5, v4);
  sub_24AE251B0(v3, v2);
  v6 = sub_24AE2A27C(v5, v4, v3, v2);
  sub_24AE25204(v3, v2);
  sub_24AE25204(v5, v4);
  return v6 & 1;
}

unint64_t sub_24AE2B0E4()
{
  result = qword_27EFB78B8;
  if (!qword_27EFB78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB78B8);
  }

  return result;
}

unint64_t sub_24AE2B138()
{
  result = qword_281392968;
  if (!qword_281392968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392968);
  }

  return result;
}

unint64_t sub_24AE2B18C()
{
  result = qword_281392948;
  if (!qword_281392948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392948);
  }

  return result;
}

unint64_t sub_24AE2B1E4()
{
  result = qword_27EFB78C8;
  if (!qword_27EFB78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB78C8);
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

uint64_t sub_24AE2B24C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24AE2B2A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KeyGenerationHint.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_24AE2B3B0()
{
  result = qword_27EFB78D0;
  if (!qword_27EFB78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB78D0);
  }

  return result;
}

unint64_t sub_24AE2B408()
{
  result = qword_27EFB78D8;
  if (!qword_27EFB78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB78D8);
  }

  return result;
}

unint64_t sub_24AE2B460()
{
  result = qword_27EFB78E0;
  if (!qword_27EFB78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB78E0);
  }

  return result;
}

uint64_t IntermediateKey.data.getter()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

uint64_t IntermediateKey.key.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24AE251B0(v2, v3);
}

__n128 IntermediateKey.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AE2B508(uint64_t a1)
{
  v2 = sub_24AE2B6E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE2B544(uint64_t a1)
{
  v2 = sub_24AE2B6E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntermediateKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB78E8, &qword_24AE3B928);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v8, v9);
  sub_24AE2B6E4();
  sub_24AE3A5DC();
  v12 = v8;
  v13 = v9;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24AE2B6E4()
{
  result = qword_27EFB78F0;
  if (!qword_27EFB78F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB78F0);
  }

  return result;
}

uint64_t IntermediateKey.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB78F8, &qword_24AE3B930);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE2B6E4();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AE2B8A8(uint64_t a1)
{
  result = sub_24AE2B8D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE2B8D0()
{
  result = qword_27EFB7900;
  if (!qword_27EFB7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7900);
  }

  return result;
}

unint64_t sub_24AE2B924(void *a1)
{
  a1[1] = sub_24AE2B964();
  a1[2] = sub_24AE2B9B8();
  a1[3] = sub_24AE2BA0C();
  result = sub_24AE2BA60();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE2B964()
{
  result = qword_27EFB7908;
  if (!qword_27EFB7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7908);
  }

  return result;
}

unint64_t sub_24AE2B9B8()
{
  result = qword_27EFB7910;
  if (!qword_27EFB7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7910);
  }

  return result;
}

unint64_t sub_24AE2BA0C()
{
  result = qword_27EFB7918;
  if (!qword_27EFB7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7918);
  }

  return result;
}

unint64_t sub_24AE2BA60()
{
  result = qword_27EFB7920;
  if (!qword_27EFB7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7920);
  }

  return result;
}

unint64_t sub_24AE2BAE8()
{
  result = qword_27EFB7928;
  if (!qword_27EFB7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7928);
  }

  return result;
}

unint64_t sub_24AE2BB60()
{
  result = qword_27EFB7930;
  if (!qword_27EFB7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7930);
  }

  return result;
}

unint64_t sub_24AE2BBB8()
{
  result = qword_27EFB7938;
  if (!qword_27EFB7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7938);
  }

  return result;
}

unint64_t sub_24AE2BC10()
{
  result = qword_27EFB7940;
  if (!qword_27EFB7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7940);
  }

  return result;
}

double sub_24AE2BC90@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(_OWORD *__return_ptr, _OWORD *, uint64_t, uint64_t)@<X5>, _OWORD *a7@<X8>)
{
  v13 = *a1;
  v12 = a1[1];
  v15 = *a2;
  v14 = a2[1];
  v61[0] = *a3;
  sub_24AE2C51C(v61, 1, v62);
  if (!v7)
  {
    v57 = a4;
    v58 = a5;
    v59 = a6;
    v56 = a7;
    v63 = v13;
    v17 = v62[0];
    v18 = sub_24AE3A3AC();
    v20 = v19;
    sub_24AE251B0(v17, *(&v17 + 1));
    v21 = sub_24AE2CF10(v17, *(&v17 + 1), v18, v20, 72);
    v23 = v22;
    sub_24AE25204(v17, *(&v17 + 1));
    sub_24AE306F8(v21, v23, v62);
    sub_24AE25204(v18, v20);
    v24 = v62[0];
    if (v12 >> 60 == 15)
    {
      sub_24AE251B0(*&v62[0], *(&v62[0] + 1));
      sub_24AE251B0(v15, v14);
      v26 = sub_24AE2D2E0(v15, v14);
      v28 = sub_24AE2D700(v26, 0, v24, *(&v24 + 1));
      v29 = v26;
      v30 = v28;
      MEMORY[0x24C2326D0](v29);
      sub_24AE25204(v15, v14);
      sub_24AE25204(v24, *(&v24 + 1));
      v31 = sub_24AE2CD04(v30, 0);
      v34 = v31;
      v35 = v32;
      sub_24AE251B0(v31, v32);
      if (qword_27EFB7710 != -1)
      {
        swift_once();
      }

      if (sub_24AE2A27C(v34, v35, qword_27EFB79F0, *algn_27EFB79F8))
      {
        sub_24AE25204(v34, v35);
        sub_24AE2A708();
        swift_allocError();
        *v36 = 0;
        *(v36 + 8) = 0;
        *(v36 + 16) = 2;
        swift_willThrow();
        sub_24AE25204(v24, *(&v24 + 1));
        sub_24AE25204(v17, *(&v17 + 1));
        v42 = v34;
        v43 = v35;
LABEL_7:
        sub_24AE25204(v42, v43);
        return result;
      }

      v41 = sub_24AE2D118(v34, v35);
      sub_24AE25204(v41, v45);
      sub_24AE29878(v34, v35, 57, v62);
      v53 = v62[0];
      MEMORY[0x24C2326D0](v30);
      sub_24AE25204(v34, v35);
      *&v47 = v63;
      *(&v47 + 1) = v12;
    }

    else
    {
      v25 = v63;
      sub_24AE26834(v63, v12);
      sub_24AE251B0(v24, *(&v24 + 1));
      v27 = sub_24AE2D2E0(v25, v12);
      v33 = sub_24AE2D700(v27, 1, v24, *(&v24 + 1));
      MEMORY[0x24C2326D0](v27);
      sub_24AE25204(v24, *(&v24 + 1));
      v37 = sub_24AE2CD04(v33, 1);
      v39 = v38;
      v40 = sub_24AE2CD04(v33, 0);
      v54 = v44;
      v55 = v40;
      sub_24AE251B0(v37, v39);
      PrivateKey.init(data:)(v37, v39, v62);
      v52 = v62[0];
      sub_24AE251B0(v55, v54);
      if (qword_27EFB7710 != -1)
      {
        swift_once();
      }

      if (sub_24AE2A27C(v55, v54, qword_27EFB79F0, *algn_27EFB79F8))
      {
        sub_24AE25204(v55, v54);
        sub_24AE2A708();
        swift_allocError();
        *v46 = 0;
        *(v46 + 8) = 0;
        *(v46 + 16) = 2;
        swift_willThrow();
        sub_24AE25204(v52, *(&v52 + 1));
        sub_24AE25204(v24, *(&v24 + 1));
        sub_24AE26804(v63, v12);
        sub_24AE25204(v37, v39);
        sub_24AE25204(v17, *(&v17 + 1));
        v42 = v55;
        v43 = v54;
        goto LABEL_7;
      }

      v48 = sub_24AE2D118(v55, v54);
      sub_24AE25204(v48, v51);
      sub_24AE29878(v55, v54, 57, v62);
      v53 = v62[0];
      MEMORY[0x24C2326D0](v33);
      sub_24AE25204(v55, v54);
      sub_24AE25204(v37, v39);
      sub_24AE26804(v63, v12);
      v47 = v52;
    }

    v61[0] = v47;
    v61[1] = v53;
    v60 = v47;
    v61[2] = v17;
    v59(v62, v61, v57, v58);
    sub_24AE25204(v24, *(&v24 + 1));
    sub_24AE26804(v60, *(&v60 + 1));
    sub_24AE25204(v53, *(&v53 + 1));
    sub_24AE25204(v17, *(&v17 + 1));
    result = *v62;
    v49 = v62[1];
    v50 = v62[2];
    *v56 = v62[0];
    v56[1] = v49;
    v56[2] = v50;
  }

  return result;
}

uint64_t sub_24AE2C51C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v6 = *a1;
  v7 = a1[1];
  sub_24AE251B0(*a1, v7);
  v8 = sub_24AE3A3AC();
  v10 = v9;
  if (!a2)
  {
    v18 = v6;
    v17 = v7;
LABEL_17:
    result = sub_24AE25204(v8, v10);
    *a3 = v18;
    a3[1] = v17;
    return result;
  }

  while (1)
  {
    v11 = MEMORY[0x24C232730]();
    v12 = sub_24AE3A0AC();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_24AE251B0(v6, v7);
    v15 = sub_24AE3A07C();
    v41 = 0x2000000000;
    v42 = v15 | 0x4000000000000000;
    sub_24AE251B0(v6, v7);
    sub_24AE251B0(v8, v10);
    v16 = sub_24AE2ED58(v8, v10, v8, v10, v6, v7, &v41, 32);
    if (v3)
    {
      sub_24AE25204(v6, v7);
      sub_24AE25204(v8, v10);
LABEL_26:
      sub_24AE25204(v41, v42);
      v33 = v6;
      v34 = v7;
LABEL_37:
      sub_24AE25204(v33, v34);
      objc_autoreleasePoolPop(v11);
      sub_24AE25204(v8, v10);
      return sub_24AE25204(v6, v7);
    }

    LODWORD(v17) = v16;
    sub_24AE25204(v6, v7);
    sub_24AE25204(v8, v10);
    if (v17)
    {
      v4 = v17;
      if (qword_27EFB7708 == -1)
      {
LABEL_20:
        v25 = sub_24AE3A21C();
        __swift_project_value_buffer(v25, qword_27EFB7E40);
        v26 = sub_24AE3A1FC();
        v27 = sub_24AE3A43C();
        if (os_log_type_enabled(v26, v27))
        {
          v40 = v4;
          v28 = swift_slowAlloc();
          *v28 = 67109120;
          *(v28 + 4) = v17;
          _os_log_impl(&dword_24AE23000, v26, v27, "Error running CCDeriveKey. Code: %d.", v28, 8u);
          v29 = v28;
          v4 = v40;
          MEMORY[0x24C232960](v29, -1, -1);
        }

        CryptoError.init(rawValue:)(v4);
        v30 = v43;
        sub_24AE2DE4C();
        swift_allocError();
        if (v30 == 14)
        {
          v32 = 9;
        }

        else
        {
          v32 = v30;
        }

        *v31 = v32;
        swift_willThrow();
        goto LABEL_26;
      }

LABEL_40:
      swift_once();
      goto LABEL_20;
    }

    v18 = v41;
    v17 = v42;
    sub_24AE251B0(v41, v42);
    sub_24AE25204(v18, v17);
    result = sub_24AE25204(v6, v7);
    v20 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v20 != 2)
      {
        v35 = 0;
LABEL_36:
        sub_24AE2A708();
        swift_allocError();
        *v38 = 32;
        *(v38 + 8) = v35;
        *(v38 + 16) = 0;
        swift_willThrow();
        v33 = v18;
        v34 = v17;
        goto LABEL_37;
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      v23 = __OFSUB__(v21, v22);
      v24 = v21 - v22;
      if (!v23)
      {
        if (v24 != 32)
        {
          break;
        }

        goto LABEL_14;
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v20)
    {
      if (BYTE6(v17) != 32)
      {
        break;
      }

      goto LABEL_14;
    }

    if (__OFSUB__(HIDWORD(v18), v18))
    {
      goto LABEL_39;
    }

    if (HIDWORD(v18) - v18 != 32)
    {
      break;
    }

LABEL_14:
    sub_24AE25204(v6, v7);
    objc_autoreleasePoolPop(v11);
    v7 = v17;
    v6 = v18;
    if (!--a2)
    {
      goto LABEL_17;
    }
  }

  if (v20 == 2)
  {
    v37 = *(v18 + 16);
    v36 = *(v18 + 24);
    v35 = v36 - v37;
    if (!__OFSUB__(v36, v37))
    {
      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_35;
  }

  if (v20 != 1)
  {
LABEL_35:
    v35 = BYTE6(v17);
    goto LABEL_36;
  }

  if (!__OFSUB__(HIDWORD(v18), v18))
  {
    v35 = HIDWORD(v18) - v18;
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE2C900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x727574616E676973 && a2 == 0xE900000000000065;
  if (v6 || (sub_24AE3A51C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AE3A51C();

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

uint64_t sub_24AE2C9EC(uint64_t a1)
{
  v2 = sub_24AE25054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE2CA28(uint64_t a1)
{
  v2 = sub_24AE25054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AE2CA64()
{
  v16 = *MEMORY[0x277D85DE8];
  Pair = CCECCryptorGeneratePair();
  if (Pair)
  {
    v1 = Pair;
    v2 = Pair;
    if (qword_27EFB7708 != -1)
    {
      swift_once();
    }

    v3 = sub_24AE3A21C();
    __swift_project_value_buffer(v3, qword_27EFB7E40);
    v4 = sub_24AE3A1FC();
    v5 = sub_24AE3A43C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = v1;
      _os_log_impl(&dword_24AE23000, v4, v5, "CCECCryptorGeneratePair failed. Status: %d", v6, 8u);
      MEMORY[0x24C232960](v6, -1, -1);
    }

    CryptoError.init(rawValue:)(v2);
    sub_24AE2DE4C();
    swift_allocError();
    if (v15 == 14)
    {
      v8 = 9;
    }

    else
    {
      v8 = v15;
    }
  }

  else
  {
    if (qword_27EFB7708 != -1)
    {
      swift_once();
    }

    v11 = sub_24AE3A21C();
    __swift_project_value_buffer(v11, qword_27EFB7E40);
    v12 = sub_24AE3A1FC();
    v13 = sub_24AE3A43C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24AE23000, v12, v13, "Private key is not available.", v14, 2u);
      MEMORY[0x24C232960](v14, -1, -1);
    }

    sub_24AE2DE4C();
    swift_allocError();
    v8 = 12;
  }

  *v7 = v8;
  result = swift_willThrow();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24AE2CD04(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    v3 = 85;
  }

  else
  {
    v3 = 57;
  }

  v17 = v3;
  v19 = sub_24AE2E370(v3);
  v20 = v4;
  v5 = sub_24AE2DFA8(&v19);
  if (!v2)
  {
    v6 = v5;
    if (!v5)
    {
      v15 = v19;
      v16 = v20;
      sub_24AE251B0(v19, v20);
      sub_24AE27F98(v17, v15, v16, &v18);
      sub_24AE25204(v15, v16);
      result = v18;
      goto LABEL_15;
    }

    if (qword_27EFB7708 != -1)
    {
      swift_once();
    }

    v7 = sub_24AE3A21C();
    __swift_project_value_buffer(v7, qword_27EFB7E40);
    v8 = sub_24AE3A1FC();
    v9 = sub_24AE3A43C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v6;
      _os_log_impl(&dword_24AE23000, v8, v9, "Error running CCECCryptorExportKey. Code: %d", v10, 8u);
      MEMORY[0x24C232960](v10, -1, -1);
    }

    CryptoError.init(rawValue:)(v6);
    sub_24AE2DE4C();
    swift_allocError();
    if (v18 == 14)
    {
      v12 = 9;
    }

    else
    {
      v12 = v18;
    }

    *v11 = v12;
    swift_willThrow();
  }

  result = sub_24AE25204(v19, v20);
LABEL_15:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24AE2CF10(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a5;
  v21 = sub_24AE2E370(a5);
  v22 = v11;
  sub_24AE251B0(a3, a4);
  sub_24AE251B0(a1, a2);
  v12 = sub_24AE2ED58(a3, a4, a3, a4, a1, a2, &v21, v6);
  sub_24AE25204(a1, a2);
  sub_24AE25204(a3, a4);
  if (!v5)
  {
    if (!v12)
    {
      v6 = v21;
      v20 = v22;
      sub_24AE251B0(v21, v22);
      sub_24AE25204(v6, v20);
      return v6;
    }

    if (qword_27EFB7708 != -1)
    {
      swift_once();
    }

    v13 = sub_24AE3A21C();
    __swift_project_value_buffer(v13, qword_27EFB7E40);
    v14 = sub_24AE3A1FC();
    v15 = sub_24AE3A43C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = v12;
      _os_log_impl(&dword_24AE23000, v14, v15, "Error running CCDeriveKey. Code: %d.", v16, 8u);
      MEMORY[0x24C232960](v16, -1, -1);
    }

    CryptoError.init(rawValue:)(v12);
    v6 = v23;
    sub_24AE2DE4C();
    swift_allocError();
    if (v6 == 14)
    {
      v18 = 9;
    }

    else
    {
      v18 = v6;
    }

    *v17 = v18;
    swift_willThrow();
  }

  sub_24AE25204(v21, v22);
  return v6;
}

uint64_t sub_24AE2D118(uint64_t a1, unint64_t a2)
{
  v3 = sub_24AE2D2E0(a1, a2);
  v4 = v2;
  if (v2)
  {
    if (qword_27EFB7708 != -1)
    {
      swift_once();
    }

    v6 = sub_24AE3A21C();
    __swift_project_value_buffer(v6, qword_27EFB7E40);
    v7 = v2;
    v8 = sub_24AE3A1FC();
    v9 = sub_24AE3A43C();
    MEMORY[0x24C232880](v2);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      v12 = sub_24AE3A0BC();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_24AE23000, v8, v9, "Error deriving advertisementKey: %{public}@", v10, 0xCu);
      sub_24AE262D0(v11, &qword_27EFB7758, &qword_24AE3A950);
      MEMORY[0x24C232960](v11, -1, -1);
      MEMORY[0x24C232960](v10, -1, -1);
    }

    sub_24AE2F338();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    MEMORY[0x24C232880](v2);
  }

  else
  {
    v5 = v3;
    v4 = sub_24AE2CD04(v3, 0);
    MEMORY[0x24C2326D0](v5);
  }

  return v4;
}

uint64_t sub_24AE2D2E0(uint64_t a1, unint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      v28 = 0;
      goto LABEL_18;
    }

    v3 = a1;
    v4 = *(a1 + 16);
    v5 = sub_24AE3A06C();
    if (!v5)
    {
      goto LABEL_30;
    }

    v6 = v5;
    v7 = sub_24AE3A09C();
    if (__OFSUB__(v4, v7))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v8 = v4 - v7 + v6;
    a1 = sub_24AE3A08C();
    if (!v8)
    {
LABEL_31:
      sub_24AE2DE4C();
      swift_allocError();
      v21 = 3;
      goto LABEL_32;
    }

    if (!__OFSUB__(*(v3 + 24), *(v3 + 16)))
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v28 = a1;
    goto LABEL_18;
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_34;
  }

  v10 = a1;
  v11 = sub_24AE3A06C();
  if (!v11)
  {
LABEL_30:
    sub_24AE3A08C();
    goto LABEL_31;
  }

  v12 = v11;
  v13 = sub_24AE3A09C();
  if (__OFSUB__(v9, v13))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_27;
  }

  v14 = v9 - v13 + v12;
  sub_24AE3A08C();
  if (!v14)
  {
    goto LABEL_31;
  }

  if (__OFSUB__(HIDWORD(v10), v10))
  {
    __break(1u);
  }

LABEL_18:
  v15 = CCECCryptorImportKey();
  if (v15)
  {
    if (qword_27EFB7708 != -1)
    {
      swift_once();
    }

    v16 = sub_24AE3A21C();
    __swift_project_value_buffer(v16, qword_27EFB7E40);
    v17 = sub_24AE3A1FC();
    v18 = sub_24AE3A43C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = v15;
      _os_log_impl(&dword_24AE23000, v17, v18, "Error running CCECCryptorImportKey. Code: %d", v19, 8u);
      MEMORY[0x24C232960](v19, -1, -1);
    }

    CryptoError.init(rawValue:)(v15);
    sub_24AE2DE4C();
    swift_allocError();
    if (v28 == 14)
    {
      v21 = 9;
    }

    else
    {
      v21 = v28;
    }

    goto LABEL_32;
  }

  if (qword_27EFB7708 != -1)
  {
    goto LABEL_36;
  }

LABEL_27:
  v22 = sub_24AE3A21C();
  __swift_project_value_buffer(v22, qword_27EFB7E40);
  v23 = sub_24AE3A1FC();
  v24 = sub_24AE3A43C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_24AE23000, v23, v24, "CryptoUtil: diversifyKey: CryptorRef was not populated as expected.", v25, 2u);
    MEMORY[0x24C232960](v25, -1, -1);
  }

  sub_24AE2DE4C();
  swift_allocError();
  v21 = 9;
LABEL_32:
  *v20 = v21;
  result = swift_willThrow();
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint8_t *sub_24AE2D700(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v22 = xmmword_24AE3BC20;
  sub_24AE3A15C();
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6 || !__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_13;
    }

LABEL_28:
    __break(1u);
    __break(1u);
    __break(1u);
  }

  if (v6 == 2)
  {
    v7 = *(a3 + 24);
    if (__OFSUB__(v7, *(a3 + 16)))
    {
      __break(1u);
      if (v7 == 2 && (v8 = *(a3 + 16), __OFSUB__(*(a3 + 24), v8)))
      {
        __break(1u);
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          __break(1u);
          goto LABEL_28;
        }

        v14 = CCECCryptorTwinDiversifyKey();
        v15 = 0;
      }

      else
      {
        v14 = CCECCryptorTwinDiversifyKey();
        v15 = 0xC000000000000000;
      }

      *&v22 = 0;
      *(&v22 + 1) = v15;
      if (!v14)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

LABEL_13:
  v14 = CCECCryptorTwinDiversifyKey();
  if (!v14)
  {
LABEL_14:
    v14 = 0;
    if (qword_27EFB7708 != -1)
    {
      swift_once();
    }

    v9 = sub_24AE3A21C();
    __swift_project_value_buffer(v9, qword_27EFB7E40);
    v10 = sub_24AE3A1FC();
    v11 = sub_24AE3A43C();
    if (os_log_type_enabled(v10, v11))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24AE23000, v10, v11, "CryptoUtil: diversifyKey: CryptorRef was not populated as expected.", v14, 2u);
      MEMORY[0x24C232960](v14, -1, -1);
    }

    sub_24AE2DE4C();
    swift_allocError();
    v13 = 9;
    goto LABEL_26;
  }

LABEL_21:
  if (qword_27EFB7708 != -1)
  {
    swift_once();
  }

  v16 = sub_24AE3A21C();
  __swift_project_value_buffer(v16, qword_27EFB7E40);
  v17 = sub_24AE3A1FC();
  v18 = sub_24AE3A43C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = v14;
    _os_log_impl(&dword_24AE23000, v17, v18, "Error running CCECCryptorTwinDiversifyKey. Code: %d.", v19, 8u);
    MEMORY[0x24C232960](v19, -1, -1);
  }

  CryptoError.init(rawValue:)(v14);
  sub_24AE2DE4C();
  swift_allocError();
  v13 = 0;
LABEL_26:
  *v12 = v13;
  swift_willThrow();
  sub_24AE25204(v22, *(&v22 + 1));
  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t sub_24AE2DDD8()
{
  v0 = sub_24AE3A21C();
  __swift_allocate_value_buffer(v0, qword_27EFB7E40);
  __swift_project_value_buffer(v0, qword_27EFB7E40);
  return sub_24AE3A20C();
}

unint64_t sub_24AE2DE4C()
{
  result = qword_27EFB7968;
  if (!qword_27EFB7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7968);
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

uint64_t sub_24AE2DEAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24AE2DF00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_24AE2DF54()
{
  result = qword_27EFB7970;
  if (!qword_27EFB7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7970);
  }

  return result;
}

uint64_t sub_24AE2DFA8(uint64_t *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      result = CCECCryptorExportKey();
      goto LABEL_14;
    }

    sub_24AE25204(v3, v2);
    *a1 = xmmword_24AE3BC20;
    sub_24AE25204(0, 0xC000000000000000);
    sub_24AE3A0DC();
    v6 = v2 & 0x3FFFFFFFFFFFFFFFLL;
    v7 = *(v3 + 16);
    result = sub_24AE3A06C();
    if (!result)
    {
      __break(1u);
      goto LABEL_26;
    }

    if (!__OFSUB__(v7, sub_24AE3A09C()))
    {
      sub_24AE3A08C();
      result = CCECCryptorExportKey();
      *a1 = v3;
      a1[1] = v6 | 0x8000000000000000;
      goto LABEL_14;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v4)
  {
    sub_24AE25204(v3, v2);
    LOWORD(v17) = v2;
    BYTE2(v17) = BYTE2(v2);
    HIBYTE(v17) = BYTE3(v2);
    LOBYTE(v18) = BYTE4(v2);
    HIBYTE(v18) = BYTE5(v2);
    result = CCECCryptorExportKey();
    *a1 = v3;
    a1[1] = v17 | ((v18 | (BYTE6(v2) << 16)) << 32);
LABEL_14:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v8 = v2 & 0x3FFFFFFFFFFFFFFFLL;

  sub_24AE25204(v3, v2);
  *a1 = xmmword_24AE3BC20;
  sub_24AE25204(0, 0xC000000000000000);
  v9 = v3 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v9 < v3)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (sub_24AE3A06C() && __OFSUB__(v3, sub_24AE3A09C()))
    {
LABEL_24:
      __break(1u);
    }

    v11 = sub_24AE3A0AC();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = sub_24AE3A04C();

    v8 = v14;
  }

  if (v9 < v3)
  {
    goto LABEL_21;
  }

  result = sub_24AE3A06C();
  if (result)
  {
    if (!__OFSUB__(v3, sub_24AE3A09C()))
    {
      sub_24AE3A08C();
      v15 = CCECCryptorExportKey();

      *a1 = v3;
      a1[1] = v8 | 0x4000000000000000;
      v16 = *MEMORY[0x277D85DE8];
      return v15;
    }

    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_24AE2E350(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE2E370(uint64_t result)
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
      v2 = sub_24AE3A0AC();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_24AE3A07C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_24AE3A0FC();
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

uint64_t sub_24AE2E9F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      memset(v32, 0, 14);
      goto LABEL_17;
    }

    v14 = *(a1 + 16);
    sub_24AE251B0(a5, a6);
    sub_24AE251B0(a5, a6);
    sub_24AE251B0(a5, a6);
    v15 = sub_24AE3A06C();
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = v15;
    v17 = sub_24AE3A09C();
    if (!__OFSUB__(v14, v17))
    {
      v18 = v14 - v17 + v16;
      sub_24AE3A08C();
      if (v18)
      {
        sub_24AE251B0(a5, a6);
        v19 = sub_24AE2E410(a3, a4, v18, a5, a6, a7);
        if (!v7)
        {
          v31 = v19;
          sub_24AE25204(a5, a6);
          sub_24AE25204(a5, a6);
          sub_24AE25204(a5, a6);
          sub_24AE25204(a5, a6);
          result = v31;
          goto LABEL_21;
        }

        sub_24AE25204(a5, a6);
        goto LABEL_20;
      }

LABEL_19:
      sub_24AE2DE4C();
      swift_allocError();
      *v29 = 3;
      swift_willThrow();
LABEL_20:
      sub_24AE25204(a5, a6);
      sub_24AE25204(a5, a6);
      result = sub_24AE25204(a5, a6);
      goto LABEL_21;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (!v11)
  {
    v32[0] = a1;
    LOWORD(v32[1]) = a2;
    BYTE2(v32[1]) = BYTE2(a2);
    BYTE3(v32[1]) = BYTE3(a2);
    BYTE4(v32[1]) = BYTE4(a2);
    BYTE5(v32[1]) = BYTE5(a2);
LABEL_17:
    result = sub_24AE2E410(a3, a4, v32, a5, a6, a7);
    goto LABEL_21;
  }

  v20 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_24;
  }

  sub_24AE251B0(a5, a6);
  sub_24AE251B0(a5, a6);
  sub_24AE251B0(a5, a6);
  v23 = sub_24AE3A06C();
  if (!v23)
  {
LABEL_18:
    sub_24AE3A08C();
    goto LABEL_19;
  }

  v24 = v23;
  v25 = sub_24AE3A09C();
  if (__OFSUB__(v20, v25))
  {
    goto LABEL_25;
  }

  v26 = v20 - v25 + v24;
  sub_24AE3A08C();
  if (!v26)
  {
    goto LABEL_19;
  }

  sub_24AE251B0(a5, a6);
  v27 = sub_24AE2E410(a3, a4, v26, a5, a6, a7);
  sub_24AE25204(a5, a6);
  sub_24AE25204(a5, a6);
  sub_24AE25204(a5, a6);
  result = sub_24AE25204(a5, a6);
  if (!v7)
  {
    result = v27;
  }

LABEL_21:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24AE2ED58(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v47[2] = *MEMORY[0x277D85DE8];
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 != 2)
    {
      v46 = 0;
      memset(v47, 0, 14);
      v32 = a4 >> 62;
      if ((a4 >> 62) <= 1)
      {
        if (v32)
        {
          if (__OFSUB__(HIDWORD(a3), a3))
          {
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
          }

          v23 = HIDWORD(a3) - a3;
        }

        else
        {
          v23 = BYTE6(a4);
        }

        goto LABEL_42;
      }

LABEL_32:
      v23 = 0;
      if (v32 == 2)
      {
        v35 = *(a3 + 16);
        v34 = *(a3 + 24);
        v23 = v34 - v35;
        if (__OFSUB__(v34, v35))
        {
          __break(1u);
LABEL_36:
          if (!__OFSUB__(HIDWORD(a3), a3))
          {
            goto LABEL_37;
          }

          goto LABEL_66;
        }
      }

LABEL_42:
      sub_24AE251B0(a3, a4);
      sub_24AE251B0(a5, a6);
      sub_24AE251B0(a3, a4);
      sub_24AE251B0(a5, a6);
      if (CCKDFParametersCreateAnsiX963())
      {
        v23 = 4294962996;
LABEL_58:
        sub_24AE25204(a3, a4);
        sub_24AE25204(a5, a6);
        goto LABEL_59;
      }

      sub_24AE251B0(a5, a6);
      v40 = sub_24AE2E9F4(a5, a6, a7, &v46, a5, a6, a8);
      if (!v8)
      {
        v23 = v40;
LABEL_57:
        sub_24AE25204(a5, a6);
        goto LABEL_58;
      }

      goto LABEL_27;
    }

    v44 = a8;
    v45 = v8;
    v18 = *(a1 + 16);
    sub_24AE251B0(a5, a6);
    sub_24AE251B0(a3, a4);
    sub_24AE251B0(a5, a6);
    sub_24AE251B0(a3, a4);
    sub_24AE251B0(a5, a6);
    v19 = sub_24AE3A06C();
    if (!v19)
    {
      goto LABEL_25;
    }

    v20 = v19;
    v21 = sub_24AE3A09C();
    if (__OFSUB__(v18, v21))
    {
      goto LABEL_64;
    }

    v22 = v18 - v21 + v20;
    v23 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = sub_24AE3A08C();
    if (!v22)
    {
      goto LABEL_26;
    }

    v23 = a7;
    v47[0] = 0;
    v24 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      v9 = v8;
      if (v24 != 2)
      {
        goto LABEL_55;
      }

      v31 = *(a3 + 24);
      if (!__OFSUB__(v31, *(a3 + 16)))
      {
        goto LABEL_55;
      }

      __break(1u);
      goto LABEL_50;
    }

    v9 = v8;
    if (!v24 || !__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_55;
    }

    __break(1u);
LABEL_15:
    v45 = v9;
    v25 = a1;
    if (a1 <= a1 >> 32)
    {
      v26 = a7;
      v44 = a8;
      sub_24AE251B0(a5, a6);
      sub_24AE251B0(a3, a4);
      sub_24AE251B0(a5, a6);
      sub_24AE251B0(a3, a4);
      sub_24AE251B0(a5, a6);
      v27 = sub_24AE3A06C();
      if (v27)
      {
        v28 = v27;
        v29 = sub_24AE3A09C();
        if (!__OFSUB__(v25, v29))
        {
          v30 = v25 - v29 + v28;
          v23 = a2 & 0x3FFFFFFFFFFFFFFFLL;
          sub_24AE3A08C();
          if (v30)
          {
            v23 = v26;
            v47[0] = 0;
            v31 = a4 >> 62;
            if ((a4 >> 62) <= 1)
            {
              v9 = v45;
              if (!v31)
              {
LABEL_55:
                if (CCKDFParametersCreateAnsiX963())
                {
                  v23 = 4294962996;
                  goto LABEL_57;
                }

                sub_24AE251B0(a5, a6);
                v43 = sub_24AE2E9F4(a5, a6, v23, v47, a5, a6, v44);
                if (!v9)
                {
                  v23 = v43;
                  sub_24AE25204(a5, a6);
                  goto LABEL_57;
                }

                sub_24AE25204(a5, a6);
LABEL_27:
                sub_24AE25204(a5, a6);
                sub_24AE25204(a3, a4);
                sub_24AE25204(a5, a6);
                goto LABEL_59;
              }

LABEL_54:
              if (__OFSUB__(HIDWORD(a3), a3))
              {
                goto LABEL_68;
              }

              goto LABEL_55;
            }

LABEL_50:
            v9 = v45;
            if (v31 != 2 || !__OFSUB__(*(a3 + 24), *(a3 + 16)))
            {
              goto LABEL_55;
            }

            __break(1u);
            goto LABEL_54;
          }

LABEL_26:
          sub_24AE2DE4C();
          swift_allocError();
          *v33 = 3;
          swift_willThrow();
          goto LABEL_27;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

LABEL_25:
      v23 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      sub_24AE3A08C();
      goto LABEL_26;
    }

    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v15)
  {
    goto LABEL_15;
  }

  v47[0] = a1;
  LOWORD(v47[1]) = a2;
  BYTE2(v47[1]) = BYTE2(a2);
  BYTE3(v47[1]) = BYTE3(a2);
  BYTE4(v47[1]) = BYTE4(a2);
  BYTE5(v47[1]) = BYTE5(a2);
  v16 = a4 >> 62;
  v46 = 0;
  if ((a4 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_37;
    }

    v32 = *(a3 + 24);
    if (!__OFSUB__(v32, *(a3 + 16)))
    {
      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_32;
  }

  if (v16)
  {
    goto LABEL_36;
  }

LABEL_37:
  sub_24AE251B0(a3, a4);
  sub_24AE251B0(a5, a6);
  sub_24AE251B0(a3, a4);
  sub_24AE251B0(a5, a6);
  if (CCKDFParametersCreateAnsiX963())
  {
    sub_24AE25204(a3, a4);
    sub_24AE25204(a5, a6);
    v23 = 4294962996;
  }

  else
  {
    sub_24AE251B0(a5, a6);
    v23 = sub_24AE2E9F4(a5, a6, a7, &v46, a5, a6, a8);
    sub_24AE25204(a5, a6);
    sub_24AE25204(a3, a4);
    sub_24AE25204(a5, a6);
  }

LABEL_59:
  sub_24AE25204(a3, a4);
  sub_24AE25204(a5, a6);
  v41 = *MEMORY[0x277D85DE8];
  return v23;
}

unint64_t sub_24AE2F338()
{
  result = qword_27EFB7988;
  if (!qword_27EFB7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7988);
  }

  return result;
}

unint64_t sub_24AE2F38C()
{
  result = qword_27EFB7990;
  if (!qword_27EFB7990)
  {
    sub_24AE3A25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7990);
  }

  return result;
}

__n128 DiversifiedRootKeys.init(intermediateKey:publicKey:privateKey:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __n128 *a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = *a2;
  *a4 = *a1;
  a4[1] = v4;
  result = *a3;
  a4[2] = *a3;
  return result;
}

uint64_t DiversifiedRootKeys.intermediateKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24AE26834(v2, v3);
}

uint64_t DiversifiedRootKeys.publicKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_24AE251B0(v2, v3);
}

uint64_t DiversifiedRootKeys.privateKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_24AE26834(v2, v3);
}

uint64_t sub_24AE2F438()
{
  v1 = 0x654B63696C627570;
  if (*v0 != 1)
  {
    v1 = 0x4B65746176697270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656D7265746E69;
  }
}

uint64_t sub_24AE2F4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AE305C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24AE2F4DC(uint64_t a1)
{
  v2 = sub_24AE30078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE2F518(uint64_t a1)
{
  v2 = sub_24AE30078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiversifiedRootKeys.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7998, &qword_24AE3BEC0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v20 = v1[3];
  v21 = v10;
  v11 = v1[4];
  v18 = v1[5];
  v19 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE26834(v8, v9);
  sub_24AE30078();
  sub_24AE3A5DC();
  v23 = v8;
  v24 = v9;
  v25 = 0;
  sub_24AE2B9B8();
  v13 = v22;
  sub_24AE3A4DC();
  sub_24AE26804(v23, v24);
  if (!v13)
  {
    v15 = v18;
    v14 = v19;
    v23 = v21;
    v24 = v20;
    v25 = 1;
    sub_24AE251B0(v21, v20);
    sub_24AE300CC();
    sub_24AE3A4EC();
    sub_24AE25204(v23, v24);
    v23 = v14;
    v24 = v15;
    v25 = 2;
    sub_24AE26834(v14, v15);
    sub_24AE30120();
    sub_24AE3A4DC();
    sub_24AE26804(v23, v24);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t DiversifiedRootKeys.hash(into:)()
{
  v2 = v0[1];
  v1 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  if (v2 >> 60 == 15)
  {
    sub_24AE3A59C();
  }

  else
  {
    v6 = *v0;
    sub_24AE3A59C();
    sub_24AE251B0(v6, v2);
    sub_24AE3A14C();
    sub_24AE26804(v6, v2);
  }

  sub_24AE251B0(v1, v4);
  sub_24AE3A14C();
  sub_24AE25204(v1, v4);
  if (v5 >> 60 == 15)
  {
    return sub_24AE3A59C();
  }

  sub_24AE3A59C();
  sub_24AE251B0(v3, v5);
  sub_24AE3A14C();

  return sub_24AE26804(v3, v5);
}

uint64_t DiversifiedRootKeys.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_24AE3A57C();
  sub_24AE3A59C();
  if (v2 >> 60 != 15)
  {
    sub_24AE251B0(v1, v2);
    sub_24AE3A14C();
    sub_24AE26804(v1, v2);
  }

  sub_24AE251B0(v3, v4);
  sub_24AE3A14C();
  sub_24AE25204(v3, v4);
  sub_24AE3A59C();
  if (v6 >> 60 != 15)
  {
    sub_24AE251B0(v5, v6);
    sub_24AE3A14C();
    sub_24AE26804(v5, v6);
  }

  return sub_24AE3A5BC();
}

uint64_t DiversifiedRootKeys.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB79B8, &qword_24AE3BEC8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE30078();
  sub_24AE3A5CC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  sub_24AE2B964();
  sub_24AE3A4AC();
  v11 = v23;
  v22 = v24;
  v25 = 1;
  sub_24AE30174();
  sub_24AE3A4BC();
  v20 = v23;
  v21 = v24;
  v25 = 2;
  sub_24AE301C8();
  sub_24AE3A4AC();
  (*(v6 + 8))(v9, v5);
  v12 = v23;
  v13 = v24;
  v14 = v11;
  *a2 = v11;
  v15 = v21;
  v16 = v22;
  v17 = v20;
  a2[1] = v22;
  a2[2] = v17;
  a2[3] = v15;
  a2[4] = v12;
  a2[5] = v13;
  sub_24AE26834(v14, v16);
  sub_24AE251B0(v17, v15);
  sub_24AE26834(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_24AE26804(v14, v16);
  sub_24AE25204(v17, v15);
  return sub_24AE26804(v12, v13);
}

uint64_t sub_24AE2FC90()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_24AE3A57C();
  DiversifiedRootKeys.hash(into:)();
  return sub_24AE3A5BC();
}

uint64_t sub_24AE2FCE8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_24AE3A57C();
  DiversifiedRootKeys.hash(into:)();
  return sub_24AE3A5BC();
}

BOOL _s12FindMyCrypto19DiversifiedRootKeysV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  if (v2 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      v20 = a2[4];
      v21 = a1[4];
      v22 = a1[5];
      sub_24AE26834(v3, v2);
      sub_24AE26834(v9, v8);
      sub_24AE26804(v3, v2);
      goto LABEL_8;
    }

LABEL_5:
    sub_24AE26834(*a1, v2);
    sub_24AE26834(v9, v8);
    sub_24AE26804(v3, v2);
    v14 = v9;
    v15 = v8;
LABEL_6:
    sub_24AE26804(v14, v15);
    return 0;
  }

  if (v8 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v20 = a2[4];
  v21 = a1[4];
  v22 = a1[5];
  sub_24AE26834(v3, v2);
  sub_24AE26834(v9, v8);
  sub_24AE26834(v3, v2);
  sub_24AE26834(v9, v8);
  v16 = sub_24AE2A27C(v3, v2, v9, v8);
  sub_24AE26804(v9, v8);
  sub_24AE26804(v3, v2);
  sub_24AE26804(v9, v8);
  sub_24AE26804(v3, v2);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  sub_24AE251B0(v4, v5);
  sub_24AE251B0(v10, v11);
  v17 = sub_24AE2A27C(v4, v5, v10, v11);
  sub_24AE25204(v10, v11);
  sub_24AE25204(v4, v5);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  if (v22 >> 60 == 15)
  {
    if (v13 >> 60 == 15)
    {
      sub_24AE26834(v21, v22);
      sub_24AE26834(v20, v13);
      sub_24AE26804(v21, v22);
      return 1;
    }

    goto LABEL_13;
  }

  if (v13 >> 60 == 15)
  {
LABEL_13:
    sub_24AE26834(v21, v22);
    sub_24AE26834(v20, v13);
    sub_24AE26804(v21, v22);
    v14 = v20;
    v15 = v13;
    goto LABEL_6;
  }

  sub_24AE26834(v21, v22);
  sub_24AE26834(v20, v13);
  sub_24AE26834(v21, v22);
  sub_24AE26834(v20, v13);
  v19 = sub_24AE2A27C(v21, v22, v20, v13);
  sub_24AE26804(v20, v13);
  sub_24AE26804(v21, v22);
  sub_24AE26804(v20, v13);
  sub_24AE26804(v21, v22);
  return (v19 & 1) != 0;
}

unint64_t sub_24AE30078()
{
  result = qword_27EFB79A0;
  if (!qword_27EFB79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79A0);
  }

  return result;
}

unint64_t sub_24AE300CC()
{
  result = qword_27EFB79A8;
  if (!qword_27EFB79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79A8);
  }

  return result;
}

unint64_t sub_24AE30120()
{
  result = qword_27EFB79B0;
  if (!qword_27EFB79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79B0);
  }

  return result;
}

unint64_t sub_24AE30174()
{
  result = qword_27EFB79C0;
  if (!qword_27EFB79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79C0);
  }

  return result;
}

unint64_t sub_24AE301C8()
{
  result = qword_27EFB79C8;
  if (!qword_27EFB79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79C8);
  }

  return result;
}

unint64_t sub_24AE30220()
{
  result = qword_27EFB79D0;
  if (!qword_27EFB79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FindMyCrypto15IntermediateKeyVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24AE302B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24AE30304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiversifiedRootKeys.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DiversifiedRootKeys.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24AE304C4()
{
  result = qword_27EFB79D8;
  if (!qword_27EFB79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79D8);
  }

  return result;
}

unint64_t sub_24AE3051C()
{
  result = qword_27EFB79E0;
  if (!qword_27EFB79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79E0);
  }

  return result;
}

unint64_t sub_24AE30574()
{
  result = qword_27EFB79E8;
  if (!qword_27EFB79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79E8);
  }

  return result;
}

uint64_t sub_24AE305C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656D7265746E69 && a2 == 0xEF79654B65746169;
  if (v4 || (sub_24AE3A51C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (sub_24AE3A51C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965)
  {

    return 2;
  }

  else
  {
    v6 = sub_24AE3A51C();

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

uint64_t sub_24AE306F8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 72)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 72)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 72)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_24AE2A708();
    swift_allocError();
    *v13 = 72;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_24AE25204(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_24AE30810@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 32)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 32)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 32)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_24AE2A708();
    swift_allocError();
    *v13 = 32;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_24AE25204(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_24AE30928@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 28)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_24AE2A708();
    swift_allocError();
    *v13 = 28;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_24AE25204(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t PublicKey.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (qword_27EFB7710 != -1)
  {
    swift_once();
  }

  if (sub_24AE2A27C(a1, a2, qword_27EFB79F0, *algn_27EFB79F8))
  {
    sub_24AE2A708();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
    swift_willThrow();
    return sub_24AE25204(a1, a2);
  }

  else
  {
    v9 = sub_24AE2D118(a1, a2);
    if (v3)
    {
      MEMORY[0x24C232880](v3);
      sub_24AE2A708();
      swift_allocError();
      *v11 = a1;
      *(v11 + 8) = a2;
      *(v11 + 16) = 1;
      return swift_willThrow();
    }

    else
    {
      sub_24AE25204(v9, v10);
      result = sub_24AE29878(a1, a2, 57, &v12);
      *a3 = v12;
    }
  }

  return result;
}

uint64_t PublicKey.data.getter()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

uint64_t PublicKey.advertisement.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  sub_24AE251B0(*v1, v3);
  v5 = sub_24AE2D118(v4, v3);
  v7 = v6;
  sub_24AE25204(v4, v3);
  return sub_24AE30928(v5, v7, a1);
}

uint64_t sub_24AE30D14()
{
  v0 = sub_24AE3A0AC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v4 = 0x3900000000;
  v5 = sub_24AE3A07C();
  result = sub_24AE39018(&v4, 0);
  qword_27EFB79F0 = v4;
  *algn_27EFB79F8 = v5 | 0x4000000000000000;
  return result;
}

uint64_t PublicKey.key.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24AE251B0(v2, v3);
}

__n128 PublicKey.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AE30DAC(uint64_t a1)
{
  v2 = sub_24AE3113C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE30DE8(uint64_t a1)
{
  v2 = sub_24AE3113C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PublicKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7A08, &qword_24AE3C278);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v8, v9);
  sub_24AE3113C();
  sub_24AE3A5DC();
  v12 = v8;
  v13 = v9;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t PublicKey.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7A18, &qword_24AE3C280);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE3113C();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AE3113C()
{
  result = qword_27EFB7A10;
  if (!qword_27EFB7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A10);
  }

  return result;
}

unint64_t sub_24AE31190(uint64_t a1)
{
  result = sub_24AE311B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE311B8()
{
  result = qword_27EFB7A20;
  if (!qword_27EFB7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A20);
  }

  return result;
}

unint64_t sub_24AE3120C(void *a1)
{
  a1[1] = sub_24AE30174();
  a1[2] = sub_24AE300CC();
  a1[3] = sub_24AE3124C();
  result = sub_24AE312A0();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE3124C()
{
  result = qword_27EFB7A28;
  if (!qword_27EFB7A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A28);
  }

  return result;
}

unint64_t sub_24AE312A0()
{
  result = qword_27EFB7A30;
  if (!qword_27EFB7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A30);
  }

  return result;
}

unint64_t sub_24AE312F8()
{
  result = qword_27EFB7A38;
  if (!qword_27EFB7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A38);
  }

  return result;
}

unint64_t sub_24AE31370()
{
  result = qword_27EFB7A40;
  if (!qword_27EFB7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A40);
  }

  return result;
}

unint64_t sub_24AE313C8()
{
  result = qword_27EFB7A48;
  if (!qword_27EFB7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A48);
  }

  return result;
}

unint64_t sub_24AE31420()
{
  result = qword_27EFB7A50;
  if (!qword_27EFB7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A50);
  }

  return result;
}

FindMyCrypto::CryptoError_optional __swiftcall CryptoError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 1;
  switch(rawValue)
  {
    case -4320:
      *v1 = 13;
      return rawValue;
    case -4319:
    case -4318:
    case -4317:
    case -4316:
    case -4315:
    case -4314:
    case -4313:
    case -4312:
      goto LABEL_6;
    case -4311:
      *v1 = 12;
      return rawValue;
    case -4310:
      *v1 = 11;
      return rawValue;
    case -4309:
      *v1 = 10;
      return rawValue;
    case -4308:
      *v1 = 9;
      return rawValue;
    case -4307:
      *v1 = 8;
      return rawValue;
    case -4306:
      *v1 = 7;
      return rawValue;
    case -4305:
      *v1 = 6;
      return rawValue;
    case -4304:
      *v1 = 5;
      return rawValue;
    case -4303:
      *v1 = 4;
      return rawValue;
    case -4302:
      *v1 = 3;
      return rawValue;
    case -4301:
      *v1 = 2;
      return rawValue;
    case -4300:
      goto LABEL_5;
    default:
      if (rawValue)
      {
LABEL_6:
        *v1 = 14;
      }

      else
      {
        v2 = 0;
LABEL_5:
        *v1 = v2;
      }

      return rawValue;
  }
}

uint64_t sub_24AE3158C()
{
  v1 = *v0;
  sub_24AE3A57C();
  MEMORY[0x24C232610](qword_24AE3C778[v1]);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE31614()
{
  v1 = *v0;
  sub_24AE3A57C();
  MEMORY[0x24C232610](qword_24AE3C778[v1]);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE31680(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AE31AB0();
  v5 = sub_24AE31B04();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t CryptoTokenError.hashValue.getter()
{
  v1 = *v0;
  sub_24AE3A57C();
  MEMORY[0x24C232610](v1);
  return sub_24AE3A5BC();
}

unint64_t sub_24AE31764()
{
  result = qword_27EFB7A58;
  if (!qword_27EFB7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A58);
  }

  return result;
}

unint64_t sub_24AE317BC()
{
  result = qword_27EFB7A60;
  if (!qword_27EFB7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptoError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CryptoError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptoTokenError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CryptoTokenError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24AE31AB0()
{
  result = qword_27EFB7A68;
  if (!qword_27EFB7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A68);
  }

  return result;
}

unint64_t sub_24AE31B04()
{
  result = qword_27EFB7A70;
  if (!qword_27EFB7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A70);
  }

  return result;
}

uint64_t sub_24AE31B74()
{
  v0 = sub_24AE3A0AC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v4 = 0x4000000000;
  v5 = sub_24AE3A07C();
  result = sub_24AE39018(&v4, 0);
  qword_27EFB7A78 = v4;
  unk_27EFB7A80 = v5 | 0x4000000000000000;
  return result;
}

uint64_t P256PublicKey.data.getter()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

uint64_t P256PublicKey.key.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24AE251B0(v2, v3);
}

__n128 P256PublicKey.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t P256PublicKey.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (qword_27EFB7718 != -1)
  {
    swift_once();
  }

  if (sub_24AE2A27C(a1, a2, qword_27EFB7A78, unk_27EFB7A80))
  {
    sub_24AE2A708();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
    swift_willThrow();
    return sub_24AE25204(a1, a2);
  }

  else
  {
    v9 = sub_24AE2D118(a1, a2);
    if (v3)
    {
      MEMORY[0x24C232880](v3);
      sub_24AE2A708();
      swift_allocError();
      *v11 = a1;
      *(v11 + 8) = a2;
      *(v11 + 16) = 1;
      return swift_willThrow();
    }

    else
    {
      sub_24AE25204(v9, v10);
      result = sub_24AE29878(a1, a2, 64, &v12);
      *a3 = v12;
    }
  }

  return result;
}

uint64_t sub_24AE31D94(uint64_t a1)
{
  v2 = sub_24AE32124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE31DD0(uint64_t a1)
{
  v2 = sub_24AE32124();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t P256PublicKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7A88, &qword_24AE3C7F0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v8, v9);
  sub_24AE32124();
  sub_24AE3A5DC();
  v12 = v8;
  v13 = v9;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t P256PublicKey.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7A98, &qword_24AE3C7F8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE32124();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AE32124()
{
  result = qword_27EFB7A90;
  if (!qword_27EFB7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A90);
  }

  return result;
}

unint64_t sub_24AE32178(uint64_t a1)
{
  result = sub_24AE321A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE321A0()
{
  result = qword_27EFB7AA0;
  if (!qword_27EFB7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AA0);
  }

  return result;
}

unint64_t sub_24AE321F4(void *a1)
{
  a1[1] = sub_24AE32234();
  a1[2] = sub_24AE32288();
  a1[3] = sub_24AE322DC();
  result = sub_24AE32330();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE32234()
{
  result = qword_27EFB7AA8;
  if (!qword_27EFB7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AA8);
  }

  return result;
}

unint64_t sub_24AE32288()
{
  result = qword_27EFB7AB0;
  if (!qword_27EFB7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AB0);
  }

  return result;
}

unint64_t sub_24AE322DC()
{
  result = qword_27EFB7AB8;
  if (!qword_27EFB7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AB8);
  }

  return result;
}

unint64_t sub_24AE32330()
{
  result = qword_27EFB7AC0;
  if (!qword_27EFB7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AC0);
  }

  return result;
}

unint64_t sub_24AE32388()
{
  result = qword_27EFB7AC8;
  if (!qword_27EFB7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AC8);
  }

  return result;
}

unint64_t sub_24AE32400()
{
  result = qword_27EFB7AD0;
  if (!qword_27EFB7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AD0);
  }

  return result;
}

unint64_t sub_24AE32458()
{
  result = qword_27EFB7AD8;
  if (!qword_27EFB7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AD8);
  }

  return result;
}

unint64_t sub_24AE324B0()
{
  result = qword_27EFB7AE0;
  if (!qword_27EFB7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AE0);
  }

  return result;
}

uint64_t SharedSecretKey.data.getter()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

uint64_t SharedSecretKey.key.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24AE251B0(v2, v3);
}

__n128 SharedSecretKey.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AE32558(uint64_t a1)
{
  v2 = sub_24AE32734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE32594(uint64_t a1)
{
  v2 = sub_24AE32734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SharedSecretKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7AE8, &qword_24AE3CAE0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v8, v9);
  sub_24AE32734();
  sub_24AE3A5DC();
  v12 = v8;
  v13 = v9;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24AE32734()
{
  result = qword_27EFB7AF0;
  if (!qword_27EFB7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AF0);
  }

  return result;
}

uint64_t SharedSecretKey.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7AF8, &qword_24AE3CAE8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE32734();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AE328F8(uint64_t a1)
{
  result = sub_24AE32920();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE32920()
{
  result = qword_281392940;
  if (!qword_281392940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392940);
  }

  return result;
}

unint64_t sub_24AE32974(void *a1)
{
  a1[1] = sub_24AE2B18C();
  a1[2] = sub_24AE2B138();
  a1[3] = sub_24AE329B4();
  result = sub_24AE32A08();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE329B4()
{
  result = qword_281392960;
  if (!qword_281392960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392960);
  }

  return result;
}

unint64_t sub_24AE32A08()
{
  result = qword_281392950;
  if (!qword_281392950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392950);
  }

  return result;
}

unint64_t sub_24AE32A90()
{
  result = qword_281392958;
  if (!qword_281392958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392958);
  }

  return result;
}

unint64_t sub_24AE32B08()
{
  result = qword_27EFB7B00;
  if (!qword_27EFB7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B00);
  }

  return result;
}

unint64_t sub_24AE32B60()
{
  result = qword_27EFB7B08;
  if (!qword_27EFB7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B08);
  }

  return result;
}

unint64_t sub_24AE32BB8()
{
  result = qword_27EFB7B10;
  if (!qword_27EFB7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B10);
  }

  return result;
}

uint64_t TimeBasedKey.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimeBasedKey() + 20);
  v4 = sub_24AE3A03C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TimeBasedKey()
{
  result = qword_27EFB7B20;
  if (!qword_27EFB7B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TimeBasedKey.keyMaterial.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TimeBasedKey() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  sub_24AE26834(v4, v5);
  sub_24AE251B0(v6, v7);

  return sub_24AE26834(v8, v9);
}

uint64_t TimeBasedKey.description.getter()
{
  v20[0] = 0x203A74766441;
  v20[1] = 0xE600000000000000;
  v1 = type metadata accessor for TimeBasedKey();
  v18 = *(v0 + *(v1 + 24) + 16);
  PublicKey.advertisement.getter(&v19);
  v2 = v19;
  sub_24AE25A84();
  v3 = sub_24AE3A01C();
  v5 = v4;
  sub_24AE25204(v2, *(&v2 + 1));
  MEMORY[0x24C232440](v3, v5);

  MEMORY[0x24C232440](8236, 0xE200000000000000);
  v7 = v20[0];
  v6 = v20[1];
  strcpy(v20, "index: ");
  v20[1] = 0xE700000000000000;
  *&v19 = *v0;
  v8 = sub_24AE3A50C();
  MEMORY[0x24C232440](v8);

  MEMORY[0x24C232440](8236, 0xE200000000000000);
  v9 = v20[0];
  v10 = v20[1];
  v20[0] = v7;
  v20[1] = v6;

  MEMORY[0x24C232440](v9, v10);

  v12 = v20[0];
  v11 = v20[1];
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_24AE3A46C();

  strcpy(v20, "dateInterval: ");
  HIBYTE(v20[1]) = -18;
  v13 = *(v1 + 20);
  sub_24AE3A03C();
  sub_24AE32F9C();
  v14 = sub_24AE3A50C();
  MEMORY[0x24C232440](v14);

  v15 = v20[0];
  v16 = v20[1];
  v20[0] = v12;
  v20[1] = v11;

  MEMORY[0x24C232440](v15, v16);

  return v20[0];
}

unint64_t sub_24AE32F9C()
{
  result = qword_27EFB7B18;
  if (!qword_27EFB7B18)
  {
    sub_24AE3A03C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B18);
  }

  return result;
}

unint64_t TimeBasedKey.debugDescription.getter()
{
  sub_24AE3A46C();

  v5 = *v0;
  v1 = sub_24AE3A50C();
  MEMORY[0x24C232440](v1);

  MEMORY[0x24C232440](0xD000000000000010, 0x800000024AE408C0);
  v2 = *(type metadata accessor for TimeBasedKey() + 20);
  sub_24AE3A03C();
  sub_24AE32F9C();
  v3 = sub_24AE3A50C();
  MEMORY[0x24C232440](v3);

  return 0xD000000000000015;
}

uint64_t sub_24AE33128()
{
  result = sub_24AE3A03C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t bucket(beaconIdentifier:baseTime:date:bucketSizeInMinutes:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_24AE3A1EC();
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  (MEMORY[0x28223BE20])();
  v69 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_24AE3A1DC();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = (MEMORY[0x28223BE20])();
  v16 = &v61[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v61[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v70 = &v61[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v61[-v22];
  v68 = v8;
  v64 = a1;
  if (a4 == 15)
  {
    LODWORD(v63) = 0;
  }

  else
  {
    if (a4 != 1440)
    {
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_24AE3A46C();

      v72 = 0xD000000000000018;
      v73 = 0x800000024AE40910;
      v71 = a4;
      v60 = sub_24AE3A50C();
      MEMORY[0x24C232440](v60);

      result = sub_24AE3A49C();
      __break(1u);
      return result;
    }

    LODWORD(v63) = 1;
  }

  sub_24AE3A18C();
  sub_24AE3A17C();
  sub_24AE33E24(&qword_27EFB7B30, MEMORY[0x277CC9578]);
  v24 = sub_24AE3A39C();
  v25 = v12[2];
  if (v24)
  {
    v26 = a2;
  }

  else
  {
    v26 = a3;
  }

  v25(v70, v26, v11);
  v66 = v23;
  sub_24AE3A1AC();
  v28 = v27 / (a4 * 60.0);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v28 <= -1.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v28 >= 1.84467441e19)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v28 == -1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v67 = v28 + 1;
  if (qword_27EFB7708 != -1)
  {
LABEL_27:
    swift_once();
  }

  v29 = sub_24AE3A21C();
  __swift_project_value_buffer(v29, qword_27EFB7E40);
  v25(v19, a2, v11);
  v25(v16, a3, v11);
  v30 = v65;
  v31 = v68;
  v32 = v69;
  (*(v65 + 16))(v69, v64, v68);
  v33 = sub_24AE3A1FC();
  v34 = sub_24AE3A41C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v62 = v34;
    v36 = v35;
    v64 = swift_slowAlloc();
    v72 = v64;
    *v36 = 136447491;
    v37 = v63 == 0;
    if (v63)
    {
      v38 = 0x61646E6F6365732ELL;
    }

    else
    {
      v38 = 0x7972616D6972702ELL;
    }

    v63 = v33;
    if (v37)
    {
      v39 = 0xE800000000000000;
    }

    else
    {
      v39 = 0xEA00000000007972;
    }

    v40 = sub_24AE33D58(v38, v39, &v72);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2048;
    *(v36 + 14) = v67;
    *(v36 + 22) = 2082;
    sub_24AE33E24(&qword_27EFB7B38, MEMORY[0x277CC9578]);
    v41 = sub_24AE3A50C();
    v43 = v42;
    v44 = v12[1];
    v44(v19, v11);
    v45 = sub_24AE33D58(v41, v43, &v72);

    *(v36 + 24) = v45;
    *(v36 + 32) = 2082;
    v46 = sub_24AE3A50C();
    v48 = v47;
    v44(v16, v11);
    v49 = sub_24AE33D58(v46, v48, &v72);

    *(v36 + 34) = v49;
    *(v36 + 42) = 2160;
    *(v36 + 44) = 1752392040;
    *(v36 + 52) = 2081;
    sub_24AE33E24(&qword_27EFB7B40, MEMORY[0x277CC95F0]);
    v51 = v68;
    v50 = v69;
    v52 = sub_24AE3A50C();
    v54 = v53;
    (*(v30 + 8))(v50, v51);
    v55 = sub_24AE33D58(v52, v54, &v72);

    *(v36 + 54) = v55;
    v56 = v63;
    _os_log_impl(&dword_24AE23000, v63, v62, "Bucket [%{public}s] calculated to ‣%llu baseTime: %{public}s date: %{public}s  beacon: %{private,mask.hash}s.", v36, 0x3Eu);
    v57 = v64;
    swift_arrayDestroy();
    MEMORY[0x24C232960](v57, -1, -1);
    MEMORY[0x24C232960](v36, -1, -1);

    v44(v70, v11);
    v44(v66, v11);
  }

  else
  {

    (*(v30 + 8))(v32, v31);
    v58 = v12[1];
    v58(v16, v11);
    v58(v19, v11);
    v58(v70, v11);
    v58(v66, v11);
  }

  return v67;
}

uint64_t dateInterval(baseTime:bucket:bucketSizeInMinutes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v7 = sub_24AE3A1DC();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v43 = &v40 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v40 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v40 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v40 - v26;
  if (!a2)
  {
    v42 = a3;
    v28 = a1;
    if (qword_27EFB7708 != -1)
    {
      swift_once();
    }

    v29 = sub_24AE3A21C();
    __swift_project_value_buffer(v29, qword_27EFB7E40);
    v30 = sub_24AE3A1FC();
    v31 = sub_24AE3A43C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = v31;
      v34 = v32;
      _os_log_impl(&dword_24AE23000, v30, v33, "Caller attempted to calculate dateInterval for bucket 0!", v32, 2u);
      MEMORY[0x24C232960](v34, -1, -1);
    }

    a2 = 1;
    a1 = v28;
  }

  v41 = a2;
  sub_24AE3A18C();
  sub_24AE3A17C();
  v35 = v8[2];
  v35(v22, a1, v7);
  sub_24AE3A19C();
  v42 = v27;
  v35(v22, v27, v7);
  sub_24AE3A19C();
  v35(v22, v19, v7);
  sub_24AE3A19C();
  sub_24AE3A1CC();
  v36 = v8[1];
  v36(v14, v7);
  v37 = v43;
  sub_24AE3A1BC();
  if (v41 == 1)
  {
    v38 = v25;
  }

  else
  {
    v38 = v19;
  }

  v35(v22, v38, v7);
  v35(v44, v37, v7);
  sub_24AE3A02C();
  v36(v37, v7);
  v36(v19, v7);
  v36(v25, v7);
  return (v36)(v42, v7);
}

uint64_t sub_24AE33D58(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AE33E6C(v11, 0, 0, 1, a1, a2);
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
    sub_24AE33F78(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_24AE33E24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24AE33E6C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24AE33FD4(a5, a6);
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
    result = sub_24AE3A47C();
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

uint64_t sub_24AE33F78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24AE33FD4(uint64_t a1, unint64_t a2)
{
  v4 = sub_24AE34020(a1, a2);
  sub_24AE34150(&unk_285E345A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24AE34020(uint64_t a1, unint64_t a2)
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

  v6 = sub_24AE3423C(v5, 0);
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

  result = sub_24AE3A47C();
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
        v10 = sub_24AE3A3CC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AE3423C(v10, 0);
        result = sub_24AE3A45C();
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

uint64_t sub_24AE34150(uint64_t result)
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

  result = sub_24AE342B0(result, v12, 1, v3);
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

void *sub_24AE3423C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7B48, &unk_24AE3CE28);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AE342B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7B48, &unk_24AE3CE28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_24AE343A4()
{
  v0 = sub_24AE3A21C();
  __swift_allocate_value_buffer(v0, qword_27EFB7E58);
  v1 = __swift_project_value_buffer(v0, qword_27EFB7E58);
  if (qword_27EFB7728 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFB7E70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TokenAsyncSequence.init(privateKey:publicKey:sharedKey:startIndex:hint:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a3;
  v7 = a3[1];
  v10 = *a5;
  v9 = a5[1];
  v11 = a5[2];
  v32 = *a2;
  if (!a4)
  {
    sub_24AE26804(*a1, *(a1 + 1));
    sub_24AE25204(v32, *(&v32 + 1));
    sub_24AE25204(v8, v7);
    sub_24AE26D34(v10, v9, v11);
    sub_24AE26D50();
    swift_allocError();
    return swift_willThrow();
  }

  v12 = v6;
  v31 = *a1;
  if (v11 >> 60 == 15)
  {
    sub_24AE251B0(v8, v7);
    v9 = v8;
    v11 = v7;
    v15 = a4;
  }

  else
  {
    v15 = a4 - v10;
    v36 = v6;
    if (a4 >= v10)
    {
      sub_24AE251B0(v9, v11);
      if (qword_27EFB7720 != -1)
      {
        swift_once();
      }

      v23 = sub_24AE3A21C();
      __swift_project_value_buffer(v23, qword_27EFB7E58);
      sub_24AE251B0(v9, v11);
      v24 = sub_24AE3A1FC();
      loga = sub_24AE3A42C();
      if (os_log_type_enabled(v24, loga))
      {
        v28 = v24;
        v25 = swift_slowAlloc();
        *v25 = 134218240;
        sub_24AE26D34(v10, v9, v11);
        *(v25 + 4) = v10;
        result = sub_24AE26D34(v10, v9, v11);
        *(v25 + 12) = 2048;
        if (a4 < v15)
        {
          __break(1u);
          return result;
        }

        *(v25 + 14) = v10;
        _os_log_impl(&dword_24AE23000, v28, loga, "KeyGenerationHint hint.index:%llu saved %llu ratchet iterations", v25, 0x16u);
        MEMORY[0x24C232960](v25, -1, -1);
      }

      else
      {
        sub_24AE26D34(v10, v9, v11);
        sub_24AE26D34(v10, v9, v11);
      }

      v12 = v36;
    }

    else
    {
      if (qword_27EFB7720 != -1)
      {
        swift_once();
      }

      v17 = sub_24AE3A21C();
      __swift_project_value_buffer(v17, qword_27EFB7E58);
      sub_24AE251B0(v9, v11);
      v18 = sub_24AE3A1FC();
      v19 = sub_24AE3A44C();
      log = v18;
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134218240;
        *(v20 + 4) = v10;
        sub_24AE26D34(v10, v9, v11);
        *(v20 + 12) = 2048;
        *(v20 + 14) = a4;
        v21 = v19;
        v22 = log;
        _os_log_impl(&dword_24AE23000, log, v21, "Ignoring KeyGenerationHint: hint.index (%llu) > initialRatchetsToSkip(%llu)", v20, 0x16u);
        MEMORY[0x24C232960](v20, -1, -1);
        v12 = v36;
      }

      else
      {
        sub_24AE26D34(v10, v9, v11);
        v12 = v36;
        v22 = log;
      }

      sub_24AE26D34(v10, v9, v11);
      v15 = a4 - 1;
      sub_24AE251B0(v8, v7);
      v9 = v8;
      v11 = v7;
    }
  }

  v33 = v9;
  v34 = v11;
  sub_24AE251B0(v9, v11);
  sub_24AE2C51C(&v33, v15, v35);
  sub_24AE25204(v33, v34);
  if (v12)
  {
    sub_24AE26804(v31, *(&v31 + 1));
    sub_24AE25204(v32, *(&v32 + 1));
    sub_24AE25204(v8, v7);
    return sub_24AE25204(v9, v11);
  }

  else
  {
    v26 = v35[0];
    v27 = v35[1];
    result = sub_24AE25204(v9, v11);
    *a6 = v31;
    *(a6 + 16) = v32;
    *(a6 + 32) = v8;
    *(a6 + 40) = v7;
    *(a6 + 48) = a4;
    *(a6 + 56) = v26;
    *(a6 + 64) = v27;
  }

  return result;
}

uint64_t TokenAsyncSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_24AE34D60(v8, v7);
}

uint64_t TokenAsyncSequence.next()@<X0>(uint64_t a1@<X8>)
{
  result = sub_24AE3A40C();
  if (result)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0xF000000000000000;
    v14 = 0uLL;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
  }

  else
  {
    v4 = v1[1];
    v5 = v1[2];
    v6 = v1[3];
    v7 = v1[5];
    v8 = (v1 + 6);
    v15 = v1[6];
    v16 = *v1;
    v10 = (v1 + 7);
    v9 = v1[7];
    v11 = v1[8];
    v12 = v1[4];
    v19[0] = v16;
    v19[1] = v4;
    v18[0] = v5;
    v18[1] = v6;
    *&v17 = v9;
    *(&v17 + 1) = v11;
    sub_24AE26834(v16, v4);
    sub_24AE251B0(v5, v6);
    sub_24AE251B0(v12, v7);
    sub_24AE251B0(v9, v11);
    sub_24AE251B0(v9, v11);
    sub_24AE251B0(v9, v11);
    sub_24AE2BC64(v19, v18, &v17, v8, v10, v20);
    sub_24AE25204(v17, *(&v17 + 1));
    sub_24AE26804(v16, v4);
    sub_24AE25204(v5, v6);
    sub_24AE25204(v12, v7);
    result = sub_24AE25204(v9, v11);
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = v11;
    v13 = v20[1];
    *(a1 + 24) = v20[0];
    *(a1 + 40) = v13;
    v14 = v20[2];
  }

  *(a1 + 56) = v14;
  return result;
}

uint64_t sub_24AE34B9C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v9[2] = v2;
  v9[3] = v3;
  v10 = *(v1 + 64);
  v4 = v10;
  v5 = *(v1 + 16);
  v9[0] = *v1;
  v6 = v9[0];
  v9[1] = v5;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v6;
  *(a1 + 16) = v5;
  v12 = v4;
  v11[2] = v2;
  v11[3] = v3;
  v11[0] = v6;
  v11[1] = v5;
  sub_24AE34D60(v9, v8);
  return sub_24AE34E74(v11);
}

uint64_t sub_24AE34C08(uint64_t a1)
{
  TokenAsyncSequence.next()(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24AE34C6C(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = sub_24AE3A3FC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return MEMORY[0x2822009F8](sub_24AE34CFC, v4, v6);
}

uint64_t sub_24AE34CFC()
{
  v1 = v0[3];
  TokenAsyncSequence.next()(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24AE34D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7758, &qword_24AE3A950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24AE34E04()
{
  result = qword_27EFB7B50;
  if (!qword_27EFB7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B50);
  }

  return result;
}

uint64_t AntiTrackingKey.data.getter()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

uint64_t AntiTrackingKey.key.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24AE251B0(v2, v3);
}

__n128 AntiTrackingKey.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AE34EF8(uint64_t a1)
{
  v2 = sub_24AE350D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE34F34(uint64_t a1)
{
  v2 = sub_24AE350D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AntiTrackingKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7B58, &qword_24AE3D0E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v8, v9);
  sub_24AE350D4();
  sub_24AE3A5DC();
  v12 = v8;
  v13 = v9;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24AE350D4()
{
  result = qword_27EFB7B60;
  if (!qword_27EFB7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B60);
  }

  return result;
}

uint64_t AntiTrackingKey.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7B68, &qword_24AE3D0F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE350D4();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AE35298(uint64_t a1)
{
  result = sub_24AE352C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE352C0()
{
  result = qword_27EFB7B70;
  if (!qword_27EFB7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B70);
  }

  return result;
}

unint64_t sub_24AE3531C(void *a1)
{
  a1[1] = sub_24AE3535C();
  a1[2] = sub_24AE353B0();
  a1[3] = sub_24AE35404();
  result = sub_24AE35458();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE3535C()
{
  result = qword_27EFB7B78;
  if (!qword_27EFB7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B78);
  }

  return result;
}

unint64_t sub_24AE353B0()
{
  result = qword_27EFB7B80;
  if (!qword_27EFB7B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B80);
  }

  return result;
}

unint64_t sub_24AE35404()
{
  result = qword_27EFB7B88;
  if (!qword_27EFB7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B88);
  }

  return result;
}

unint64_t sub_24AE35458()
{
  result = qword_27EFB7B90;
  if (!qword_27EFB7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B90);
  }

  return result;
}

unint64_t sub_24AE354E0()
{
  result = qword_27EFB7B98;
  if (!qword_27EFB7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B98);
  }

  return result;
}

unint64_t sub_24AE35564()
{
  result = qword_27EFB7BA0;
  if (!qword_27EFB7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BA0);
  }

  return result;
}

unint64_t sub_24AE355BC()
{
  result = qword_27EFB7BA8;
  if (!qword_27EFB7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BA8);
  }

  return result;
}

unint64_t sub_24AE35614()
{
  result = qword_27EFB7BB0;
  if (!qword_27EFB7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BB0);
  }

  return result;
}

uint64_t sub_24AE35668()
{
  v0 = sub_24AE3A21C();
  __swift_allocate_value_buffer(v0, qword_27EFB7E70);
  __swift_project_value_buffer(v0, qword_27EFB7E70);
  return sub_24AE3A20C();
}

__n128 NearOwnerAdvertisement.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t NearOwnerAdvertisement.data.getter()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

uint64_t NearOwnerAdvertisement.key.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24AE251B0(v2, v3);
}

uint64_t NearOwnerAdvertisement.init(macAddress:ek:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = sub_24AE39FCC();
  v8 = v4;
  sub_24AE3A12C();
  sub_24AE3A13C();
  v5 = sub_24AE39FEC();
  (*(*(v5 - 8) + 8))(a1, v5);
  *a2 = v7;
  a2[1] = v8;
  sub_24AE251B0(v7, v8);

  return sub_24AE25204(v7, v8);
}

uint64_t NearOwnerAdvertisement.description.getter()
{
  v2 = *v0;
  sub_24AE35C0C();
  return sub_24AE3A3EC();
}

uint64_t sub_24AE35838(uint64_t a1)
{
  v2 = sub_24AE35C60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE35874(uint64_t a1)
{
  v2 = sub_24AE35C60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NearOwnerAdvertisement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7BC0, &qword_24AE3D3E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v8, v9);
  sub_24AE35C60();
  sub_24AE3A5DC();
  v12 = v8;
  v13 = v9;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t NearOwnerAdvertisement.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7BD0, &qword_24AE3D3E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE35C60();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24AE35B84()
{
  v2 = *v0;
  sub_24AE35C0C();
  return sub_24AE3A3EC();
}

unint64_t sub_24AE35C0C()
{
  result = qword_27EFB7BB8;
  if (!qword_27EFB7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BB8);
  }

  return result;
}

unint64_t sub_24AE35C60()
{
  result = qword_27EFB7BC8;
  if (!qword_27EFB7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BC8);
  }

  return result;
}

unint64_t sub_24AE35CB4(uint64_t a1)
{
  result = sub_24AE35CDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE35CDC()
{
  result = qword_27EFB7BD8;
  if (!qword_27EFB7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BD8);
  }

  return result;
}

unint64_t sub_24AE35D30(void *a1)
{
  a1[1] = sub_24AE35D70();
  a1[2] = sub_24AE35DC4();
  a1[3] = sub_24AE35E18();
  result = sub_24AE35C0C();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE35D70()
{
  result = qword_27EFB7BE0;
  if (!qword_27EFB7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BE0);
  }

  return result;
}

unint64_t sub_24AE35DC4()
{
  result = qword_27EFB7BE8;
  if (!qword_27EFB7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BE8);
  }

  return result;
}

unint64_t sub_24AE35E18()
{
  result = qword_27EFB7BF0;
  if (!qword_27EFB7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BF0);
  }

  return result;
}

unint64_t sub_24AE35E70()
{
  result = qword_27EFB7BF8;
  if (!qword_27EFB7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BF8);
  }

  return result;
}

unint64_t sub_24AE35EE8()
{
  result = qword_27EFB7C00;
  if (!qword_27EFB7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7C00);
  }

  return result;
}

unint64_t sub_24AE35F40()
{
  result = qword_27EFB7C08;
  if (!qword_27EFB7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7C08);
  }

  return result;
}

unint64_t sub_24AE35F98()
{
  result = qword_27EFB7C10;
  if (!qword_27EFB7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7C10);
  }

  return result;
}

uint64_t GeneratedTokens.hint.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  return sub_24AE251B0(v2, v3);
}

uint64_t GeneratedTokens.diversifiedRootKeys.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v7 = v1[7];
  v6 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v6;
  sub_24AE26834(v2, v3);
  sub_24AE251B0(v4, v5);

  return sub_24AE26834(v7, v6);
}

unint64_t sub_24AE36068()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 1953393000;
  }

  *v0;
  return result;
}