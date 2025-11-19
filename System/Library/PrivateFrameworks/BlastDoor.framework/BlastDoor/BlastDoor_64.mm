uint64_t sub_2145AB440(uint64_t result)
{
  if (*(v1 + 16) != *(result + 16))
  {
    return 0;
  }

  v2 = *v1;
  if (*v1 != *result)
  {
    return 0;
  }

  if (!*(v1 + 8))
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = result;
  v4 = *(result + 8);
  result = sub_2144668E8(*(v1 + 8), *v1);
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  v7 = v5;
  v8 = sub_2144668E8(v4, v2);
  v10 = v9;
  v11 = sub_214466780(v6, v7, v8, v9);
  sub_213FB54FC(v8, v10);
  sub_213FB54FC(v6, v7);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = *(v1 + 24);
  if (v12 != *(v3 + 24))
  {
    return 0;
  }

  result = *(v1 + 32);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = *(v3 + 32);
  result = sub_2144668E8(result, *(v1 + 24));
  if (v13)
  {
    v15 = result;
    v16 = v14;
    v17 = sub_2144668E8(v13, v12);
    v19 = v18;
    v20 = sub_214466780(v15, v16, v17, v18);
    sub_213FB54FC(v17, v19);
    sub_213FB54FC(v15, v16);
    return (v20 & 1) != 0;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2145AB598(uint64_t a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *(v1 + 24);
  result = sub_2145AA740(*(a1 + 8), *(a1 + 16), *(v1 + 8), *(v1 + 16));
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v3)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    result = sub_2145AAE78(*v3, *(v3 + 8), *v4, *(v4 + 8));
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v6 = *(v1 + 32);
  if (!v6)
  {
    if (!*(a1 + 32))
    {
      goto LABEL_16;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v7 = *(a1 + 32);
  if (!v7)
  {
    goto LABEL_53;
  }

  v8 = *v6;
  if (*v6 != *v7)
  {
    return 0;
  }

  result = v6[1];
  if (!result)
  {
    goto LABEL_57;
  }

  v9 = v7[1];
  result = sub_2144668E8(result, *v6);
  if (!v9)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v11 = result;
  v12 = v10;
  v13 = sub_2144668E8(v9, v8);
  v15 = v14;
  v16 = sub_214466780(v11, v12, v13, v14);
  sub_213FB54FC(v13, v15);
  result = sub_213FB54FC(v11, v12);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v17 = *(v1 + 40);
  if (!v17)
  {
    if (!*(a1 + 40))
    {
      goto LABEL_25;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v18 = *(a1 + 40);
  if (!v18)
  {
    goto LABEL_56;
  }

  if (*v17 != *v18)
  {
    return 0;
  }

  v20 = *(v17 + 8);
  v19 = *(v17 + 16);
  v21 = *(v17 + 24);
  v22 = *(v18 + 8);
  v23 = *(v18 + 16);
  v24 = *(v18 + 24);
  if (v20)
  {
    if (!v22)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    result = 0;
    if (*v20 != *v22 || v19 != v23)
    {
      return result;
    }
  }

  else
  {
    if (v22)
    {
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v19 != v23)
    {
      return 0;
    }
  }

  if (!v21)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  result = sub_2144668E8(v21, v19);
  if (!v24)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v41 = result;
  v42 = v40;
  v43 = sub_2144668E8(v24, v23);
  v45 = v44;
  v46 = sub_214466780(v41, v42, v43, v44);
  sub_213FB54FC(v43, v45);
  result = sub_213FB54FC(v41, v42);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v25 = *(v1 + 64);
  if (!v25)
  {
    if (!*(a1 + 64))
    {
      goto LABEL_33;
    }

    goto LABEL_62;
  }

  v26 = *(a1 + 64);
  if (!v26)
  {
    goto LABEL_60;
  }

  v27 = *v25;
  if (*v25 != *v26)
  {
    return 0;
  }

  result = v25[1];
  if (!result)
  {
    goto LABEL_66;
  }

  v28 = v26[1];
  result = sub_2144668E8(result, *v25);
  if (!v28)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v30 = result;
  v31 = v29;
  v32 = sub_2144668E8(v28, v27);
  v34 = v33;
  v35 = sub_214466780(v30, v31, v32, v33);
  sub_213FB54FC(v32, v34);
  result = sub_213FB54FC(v30, v31);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v36 = *(v1 + 72);
  if (v36)
  {
    v37 = v36[1];
    v55 = *v36;
    v56 = v37;
    v57 = *(v36 + 4);
    v38 = *(a1 + 72);
    if (v38)
    {
      v39 = *(v38 + 16);
      v53[0] = *v38;
      v53[1] = v39;
      v54 = *(v38 + 32);
      result = sub_2145AB440(v53);
      if (result)
      {
        goto LABEL_45;
      }

      return 0;
    }

    goto LABEL_65;
  }

  if (*(a1 + 72))
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

LABEL_45:
  v47 = *(v1 + 80);
  v48 = *(a1 + 80);
  if (!v47)
  {
    if (!v48)
    {
      return 1;
    }

    goto LABEL_71;
  }

  if (!v48)
  {
    goto LABEL_69;
  }

  v49 = *(v47 + 8);
  v50 = *v47;
  v51 = *v48;
  v52 = *(v48 + 8);

  return sub_2145AAE78(v51, v52, v50, v49);
}

__n128 sub_2145AB91C@<Q0>(int a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  v10[2] = sub_214059908;
  v10[3] = 0;
  v10[4] = 0x100000;
  v10[5] = sub_21403C354;
  v10[6] = 0;
  *(v9 + 16) = sub_2143A572C;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  sub_214042CD0(inited, &v30);
  if (!a3 || a2 < 1)
  {
    v14 = v31;
    v15 = v32;
    v23 = v30;
    v25 = v31;
    v27 = v32;
    v29 = v33;

    sub_213FDCA18(v14, v15);
    sub_214032024(0, 0xC000000000000000, 2, 0xD000000000000017, 0x800000021478DB00, 0xD00000000000001CLL, 0x800000021478A360);

    v16 = v25;
    v17 = v27;
    if (!v20)
    {
      v21 = v23;
      v18 = v29;

      sub_213FDC6BC(v14, v15);
      goto LABEL_8;
    }

LABEL_6:

    sub_213FDC6BC(v14, v15);

    sub_213FDC6BC(v16, v17);
    return result;
  }

  v34 = a1;
  v11 = sub_2144668E8(a3, a2);
  v13 = v12;
  v14 = v31;
  v15 = v32;
  v22 = v30;
  v24 = v31;
  v26 = v32;
  v28 = v33;

  sub_213FDCA18(v14, v15);
  sub_214032024(v11, v13, 2, 0xD000000000000017, 0x800000021478DB00, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FB54FC(v11, v13);

  v16 = v24;
  v17 = v26;
  if (v20)
  {
    goto LABEL_6;
  }

  v21 = v22;
  v18 = v28;

  sub_213FDC6BC(v14, v15);
  a1 = v34;
LABEL_8:
  *a4 = a1;
  result = v21;
  *(a4 + 8) = v21;
  *(a4 + 24) = v16;
  *(a4 + 32) = v17;
  *(a4 + 40) = v18;
  return result;
}

uint64_t sub_2145ABC18@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_22:
    *a3 = v5;
    return result;
  }

  v4 = result;
  v5 = MEMORY[0x277D84F90];
  v6 = (a2 + 16);
  v25 = a2;
  while (a2)
  {
    sub_2145AB91C(*(v6 - 4), *(v6 - 1), *v6, &v27);
    if (v3)
    {
    }

    v7 = v27;
    v8 = v29;
    v26 = v28;
    v9 = v30;
    v10 = v31;
    v11 = v32;
LABEL_14:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_214095390(0, *(v5 + 16) + 1, 1, v5);
      v5 = result;
    }

    v20 = *(v5 + 16);
    v19 = *(v5 + 24);
    v21 = v5;
    if (v20 >= v19 >> 1)
    {
      result = sub_214095390((v19 > 1), v20 + 1, 1, v5);
      v21 = result;
    }

    *(v21 + 16) = v20 + 1;
    v5 = v21;
    v22 = v21 + 48 * v20;
    *(v22 + 32) = v7;
    v3 = 0;
    *(v22 + 40) = v26;
    *(v22 + 48) = v8;
    *(v22 + 56) = v9;
    *(v22 + 64) = v10;
    *(v22 + 72) = v11;
    v6 += 3;
    --v4;
    a2 = v25;
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v8 = swift_allocObject();
  v13 = swift_allocObject();
  v13[2] = sub_214059908;
  v13[3] = 0;
  v13[4] = 0x100000;
  v13[5] = sub_21403C354;
  v13[6] = 0;
  *(v8 + 16) = sub_2143A572C;
  *(v8 + 24) = v13;
  *(inited + 32) = v8;
  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x216054E00](0, inited);
    }

    else
    {
    }

    v14 = sub_2145B1398;
  }

  else
  {
    v15 = sub_2142E00AC(inited);
    v8 = swift_allocObject();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v8 + 16) = sub_2145B1364;
    *(v8 + 24) = v16;
    v14 = sub_2145B136C;
  }

  v17 = v14;
  v33 = xmmword_2146ECC00;
  v34 = 2;
  v27 = 0xD000000000000017;
  v28 = 0x800000021478DB00;
  v29 = 0xD00000000000001CLL;
  v30 = 0x800000021478A360;

  sub_213FDCA18(0, 0xF000000000000000);
  v18 = v17(&v33, &v34, &v27);
  if (v3)
  {

    goto LABEL_26;
  }

  if (v18)
  {
    v26 = v17;

    sub_213FDC6BC(0, 0xF000000000000000);
    v10 = *(&v33 + 1);
    v9 = v33;
    sub_21402D9F8(v33, *(&v33 + 1));

    sub_213FDC6BC(0, 0xF000000000000000);
    v7 = 0;
    v11 = 2;
    goto LABEL_14;
  }

  sub_214031C4C();
  swift_allocError();
  *v23 = 0xD000000000000017;
  v23[1] = 0x800000021478DB00;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();
LABEL_26:

  sub_213FDC6BC(0, 0xF000000000000000);

  sub_213FDC6BC(0, 0xF000000000000000);
}

uint64_t sub_2145AC034()
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  if ((*(*v0 + 16) * 24) >> 64 != (24 * *(*v0 + 16)) >> 63)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v36 = *(*v0 + 16);
  v37 = swift_slowAlloc();
  v39 = *(v1 + 16);
  if (!v39)
  {
LABEL_69:
    result = v36;
    if (!HIDWORD(v36))
    {
      v35 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
  }

  v2 = 0;
  v3 = (v37 + 8);
  v4 = (v1 + 64);
  v38 = v1;
  while (1)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
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

    v8 = *v4;
    if (*v4 >> 60 == 15)
    {
      break;
    }

    v9 = *(v4 - 8);
    v11 = *(v4 - 2);
    v10 = *(v4 - 1);
    v12 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v12 != 2)
      {
        v5 = *(v4 - 2);

        sub_213FDCA18(v10, v8);
        v6 = swift_slowAlloc();
        sub_213FDC6BC(v10, v8);
        v7 = 0;
        goto LABEL_5;
      }

      if (__OFSUB__(*(v10 + 24), *(v10 + 16)))
      {
        goto LABEL_75;
      }

      sub_21402D9F8(*(v4 - 1), *v4);

      sub_213FDCA18(v10, v8);
      __dst = swift_slowAlloc();
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      v13 = v15 - v16;
      if (__OFSUB__(v15, v16))
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (!v12)
      {
        v13 = BYTE6(v8);
        v14 = *(v4 - 2);

        sub_213FDCA18(v10, v8);
        __dst = swift_slowAlloc();
        goto LABEL_19;
      }

      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_76;
      }

      v13 = HIDWORD(v10) - v10;
      sub_21402D9F8(*(v4 - 1), *v4);

      sub_213FDCA18(v10, v8);
      __dst = swift_slowAlloc();
    }

    if (v13 < 0)
    {
      goto LABEL_72;
    }

LABEL_19:
    v40 = v9;
    if (!v13)
    {
      goto LABEL_28;
    }

    if (v12)
    {
      if (v12 == 2)
      {
        v17 = *(v10 + 16);
      }

      else
      {
        v17 = v10;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = v17 + v13;
    if (__OFADD__(v17, v13))
    {
      goto LABEL_73;
    }

    v19 = v13;
    if (v18 < v17)
    {
      goto LABEL_74;
    }

    if (v18 != v17)
    {
      if (v12 != 2)
      {
        if (v12 == 1)
        {
          v6 = __dst;
          if (v10 >> 32 < v18 || v17 < v10 || v10 >> 32 < v17 || v18 < v10)
          {
            goto LABEL_81;
          }

          v21 = sub_2146D8728();
          if (v21)
          {
            v22 = v21;
            v23 = sub_2146D8758();
            if (__OFSUB__(v17, v23))
            {
              goto LABEL_87;
            }

            v24 = (v17 - v23 + v22);
            v25 = sub_2146D8748();
            if (v24)
            {
              if (v25 >= v13)
              {
                v26 = v13;
              }

              else
              {
                v26 = v25;
              }

              memmove(__dst, v24, v26);
            }
          }

          else
          {
            sub_2146D8748();
          }

LABEL_31:
          sub_213FDC6BC(v10, v8);
          if (__OFSUB__(HIDWORD(v10), v10))
          {
            goto LABEL_78;
          }

          v7 = HIDWORD(v10) - v10;
LABEL_67:
          v1 = v38;
          v9 = v40;
          goto LABEL_5;
        }

        v6 = __dst;
        v7 = BYTE6(v8);
        if (v17 > BYTE6(v8) || v18 > BYTE6(v8))
        {
          goto LABEL_82;
        }

        v42 = v10;
        v43 = v8;
        v44 = BYTE2(v8);
        v45 = BYTE3(v8);
        v46 = BYTE4(v8);
        v47 = BYTE5(v8);
        if (v19 > 13)
        {
          v19 = 14;
        }

        else if (v19 < 1)
        {
          goto LABEL_66;
        }

        memmove(__dst, &v42 + v17, v19);
LABEL_66:
        sub_213FDC6BC(v10, v8);
        goto LABEL_67;
      }

      if (v17 < *(v10 + 16))
      {
        goto LABEL_80;
      }

      if (*(v10 + 24) < v18)
      {
        goto LABEL_83;
      }

      v27 = sub_2146D8728();
      if (v27)
      {
        v28 = sub_2146D8758();
        if (__OFSUB__(v17, v28))
        {
          goto LABEL_88;
        }

        v27 += v17 - v28;
      }

      if (__OFSUB__(v18, v17))
      {
        goto LABEL_84;
      }

      v29 = sub_2146D8748();
      if (v27)
      {
        if (v29 >= v13)
        {
          v30 = v13;
        }

        else
        {
          v30 = v29;
        }

        memmove(__dst, v27, v30);
      }
    }

    else
    {
LABEL_28:
      if (v12 != 2)
      {
        v20 = v12 == 1;
        v6 = __dst;
        if (v20)
        {
          goto LABEL_31;
        }

        sub_213FDC6BC(v10, v8);
        v7 = BYTE6(v8);
        goto LABEL_67;
      }
    }

    v32 = *(v10 + 16);
    v31 = *(v10 + 24);
    sub_213FDC6BC(v10, v8);
    v33 = __OFSUB__(v31, v32);
    v7 = v31 - v32;
    v9 = v40;
    if (v33)
    {
      goto LABEL_79;
    }

    v1 = v38;
    v6 = __dst;
LABEL_5:
    ++v2;
    *(v3 - 2) = v9;
    *v3 = v7;
    v3[1] = v6;
    v3 += 3;

    sub_213FDC6BC(v10, v8);
    v4 += 6;
    if (v39 == v2)
    {
      goto LABEL_69;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145AC558@<X0>(int a1@<W0>, int *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, _OWORD *a5@<X8>)
{
  v30 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = sub_214059908;
  v12[3] = 0;
  v12[4] = 0x100000;
  v12[5] = sub_21403C354;
  v12[6] = 0;
  *(v11 + 16) = sub_2143A572C;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  sub_214042CD0(inited, &v27);
  LODWORD(v26) = a1;
  if (a2)
  {
    v13 = *a2;
  }

  else
  {
    v13 = 0;
  }

  DWORD1(v26) = v13;
  BYTE8(v26) = a2 == 0;
  if (a4 && a3 >= 1)
  {
    v14 = sub_2144668E8(a4, a3);
    v16 = v15;
    v17 = v28;
    v22 = v27;
    v23 = v28;
    LOBYTE(v24) = v29;

    sub_213FDCA18(v17, *(&v17 + 1));
    sub_214032024(v14, v16, 2, 0xD000000000000019, 0x80000002147A51B0, 0xD00000000000001CLL, 0x800000021478A360);
    sub_213FB54FC(v14, v16);

    result = sub_213FDC6BC(v17, *(&v17 + 1));
    v27 = v22;
    v28 = v23;
    v29 = v24;
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_10:
    v22 = v26;
    v23 = v27;
    v24 = v28;
    v25 = v29;
    return sub_2142EB000(&v22);
  }

  v19 = v28;
  v22 = v27;
  v23 = v28;
  LOBYTE(v24) = v29;

  sub_213FDCA18(v19, *(&v19 + 1));
  sub_214032024(0, 0xC000000000000000, 2, 0xD000000000000019, 0x80000002147A51B0, 0xD00000000000001CLL, 0x800000021478A360);
  if (v5)
  {

    sub_213FDC6BC(v19, *(&v19 + 1));
    v27 = v22;
    v28 = v23;
    v29 = v24;
    goto LABEL_10;
  }

  result = sub_213FDC6BC(v19, *(&v19 + 1));
  v27 = v22;
  v28 = v23;
  v29 = v24;
LABEL_12:
  v20 = v27;
  v21 = v30;
  *v30 = v26;
  v21[1] = v20;
  v21[2] = v28;
  *(v21 + 48) = v29;
  return result;
}

uint64_t sub_2145AC8C8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 0x100000;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(inited + 32) = v4;
  sub_214042CD0(inited, &v23[8]);
  sub_2145AC558(0, 0, 0, 0, v18);
  if (v1)
  {
    v6 = *&v23[24];
    v7 = v24;

    return sub_213FDC6BC(v6, v7);
  }

  else
  {
    v20 = v18[0];
    v21 = v18[1];
    v22 = v18[2];
    v23[0] = v19;
    HIDWORD(v24) = 0;
    v25 = 1;
    v8 = *&v23[24];
    v9 = v24;
    v14 = *&v23[8];
    v15 = *&v23[24];
    v16 = v24;
    v17 = BYTE8(v24);

    sub_213FDCA18(v8, v9);
    sub_214032024(0, 0xC000000000000000, 2, 0xD000000000000024, 0x800000021478DB40, 0xD00000000000001CLL, 0x800000021478A360);

    result = sub_213FDC6BC(v8, v9);
    *&v23[8] = v14;
    *&v23[24] = v15;
    *&v24 = v16;
    BYTE8(v24) = v17;
    *(a1 + 96) = v25;
    v11 = v21;
    *a1 = v20;
    *(a1 + 16) = v11;
    v12 = *v23;
    *(a1 + 32) = v22;
    *(a1 + 48) = v12;
    v13 = v24;
    *(a1 + 64) = *&v23[16];
    *(a1 + 80) = v13;
  }

  return result;
}

uint64_t sub_2145ACB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  v7[2] = sub_214059908;
  v7[3] = 0;
  v7[4] = 0x100000;
  v7[5] = sub_21403C354;
  v7[6] = 0;
  *(v6 + 16) = sub_2143A572C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  sub_214042CD0(inited, &v34[8]);
  *&v34[44] = 0;
  v35 = 1;
  sub_2145AC558(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), v29);
  if (v2)
  {
    v8 = *&v34[24];
    v9 = *&v34[32];

    return sub_213FDC6BC(v8, v9);
  }

  v31 = v29[0];
  v32 = v29[1];
  v33 = v29[2];
  v34[0] = v30;
  v10 = *(a1 + 40);
  if (v10 && (v11 = *(a1 + 32), v11 >= 1))
  {
    v25 = a2;
    v12 = sub_2144668E8(v10, v11);
    v14 = v13;
    v15 = *&v34[24];
    v16 = *&v34[32];
    v26 = *&v34[8];
    v27 = *&v34[24];
    LOBYTE(v28) = v34[40];

    sub_213FDCA18(v15, v16);
    v36 = "CloudStorageSPKey.keyData";
    sub_214032024(v12, v14, 2, 0xD000000000000024, 0x800000021478DB40, 0xD00000000000001CLL, 0x800000021478A360);
    sub_213FB54FC(v12, v14);

    result = sub_213FDC6BC(v15, v16);
    *&v34[8] = v26;
    *&v34[24] = v27;
    v34[40] = v28;
    a2 = v25;
    v20 = *(a1 + 48);
    if (!v20)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v17 = *&v34[24];
    v18 = *&v34[32];
    v26 = *&v34[8];
    v27 = *&v34[24];
    LOBYTE(v28) = v34[40];

    sub_213FDCA18(v17, v18);
    sub_214032024(0, 0xC000000000000000, 2, 0xD000000000000024, 0x800000021478DB40, 0xD00000000000001CLL, 0x800000021478A360);

    result = sub_213FDC6BC(v17, v18);
    *&v34[8] = v26;
    *&v34[24] = v27;
    v34[40] = v28;
    v20 = *(a1 + 48);
    if (!v20)
    {
LABEL_9:
      v21 = 0;
      goto LABEL_10;
    }
  }

  v21 = *v20;
LABEL_10:
  *&v34[44] = v21;
  v22 = v32;
  *a2 = v31;
  *(a2 + 16) = v22;
  v23 = *v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v23;
  v24 = *&v34[32];
  *(a2 + 64) = *&v34[16];
  *(a2 + 80) = v24;
  *(a2 + 96) = v20 == 0;
  return result;
}

char *sub_2145ACF50(unsigned int a1, uint64_t a2)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = a1 - 1;
  v4 = MEMORY[0x277D84F90];
  v5 = a2;
  v36 = a2;
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = *(v5 + 16);
  v34[0] = *v5;
  v34[1] = v6;
  v34[2] = *(v5 + 32);
  v35 = *(v5 + 48);
  sub_2145ACB64(v34, &v21);
  if (v2)
  {
LABEL_14:
  }

  else
  {
    while (1)
    {
      v30 = v21;
      v31 = v22;
      v32 = v23;
      v33 = v24;
      v17 = v26;
      v18 = v25;
      v7 = v27;
      v8 = v28;
      v9 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_21409526C(0, *(v4 + 2) + 1, 1, v4);
      }

      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        v4 = sub_21409526C((v10 > 1), v11 + 1, 1, v4);
      }

      v22 = v31;
      v23 = v32;
      LOBYTE(v24) = v33;
      v12 = v30;
      v21 = v30;
      *(v4 + 2) = v11 + 1;
      v13 = &v4[104 * v11];
      v14 = v24;
      v15 = v23;
      *(v13 + 3) = v22;
      *(v13 + 4) = v15;
      *(v13 + 10) = v14;
      *(v13 + 2) = v12;
      *(v13 + 88) = v18;
      *(v13 + 104) = v17;
      v13[120] = v7;
      v13[123] = v20;
      *(v13 + 121) = v19;
      *(v13 + 31) = v8;
      v13[128] = v9;
      if (!v3)
      {
        break;
      }

      --v3;
      v5 += 56;
      if (v36)
      {
        goto LABEL_3;
      }

LABEL_5:
      sub_2145AC8C8(&v21);
      if (v2)
      {
        goto LABEL_14;
      }
    }
  }

  return v4;
}

_BYTE *sub_2145AD134@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v39 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 0x100000;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_2143A572C;
  *(v5 + 24) = v6;
  *(inited + 32) = v5;
  sub_214042CD0(inited, &v36);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2146E9BF0;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[2] = sub_214059908;
  v9[3] = 0;
  v9[4] = 0x100000;
  v9[5] = sub_21403C354;
  v9[6] = 0;
  *(v8 + 16) = sub_2143A572C;
  *(v8 + 24) = v9;
  *(v7 + 32) = v8;
  sub_214042CD0(v7, &v38[8]);
  *&v38[4] = *(a1 + 16);
  if (*a1 < 1)
  {
    v16 = v37;
    v32 = v36;
    v33 = v37;
    LOBYTE(v34) = v38[0];

    sub_213FDCA18(v16, *(&v16 + 1));
    sub_214032024(0, 0xC000000000000000, 2, 0xD00000000000001BLL, 0x800000021478DB70, 0xD00000000000001CLL, 0x800000021478A360);
    if (!v2)
    {

      v18 = v37;

      sub_213FDC6BC(v18, *(&v18 + 1));
      v36 = v32;
      v37 = v33;
      v38[0] = v34;
      goto LABEL_8;
    }

    v17 = v37;

    sub_213FDC6BC(v17, *(&v17 + 1));
    v36 = v32;
    v37 = v33;
    v38[0] = v34;
LABEL_12:
    v34 = *v38;
    v35[0] = *&v38[16];
    *(v35 + 9) = *&v38[25];
    v32 = v36;
    v33 = v37;
    return sub_2142EB868(&v32);
  }

  result = *(a1 + 8);
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_2144668E8(result, *a1);
  v13 = v12;
  v14 = v37;
  v32 = v36;
  v33 = v37;
  LOBYTE(v34) = v38[0];

  sub_213FDCA18(v14, *(&v14 + 1));
  sub_214032024(v11, v13, 2, 0xD00000000000001BLL, 0x800000021478DB70, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FB54FC(v11, v13);

  v15 = v37;

  sub_213FDC6BC(v15, *(&v15 + 1));
  v36 = v32;
  v37 = v33;
  v38[0] = v34;
  if (v2)
  {
    goto LABEL_12;
  }

LABEL_8:
  v19 = *(a1 + 24);
  if (v19 < 1)
  {
    v26 = *&v38[24];
    v25 = *&v38[32];
    v32 = *&v38[8];
    v33 = *&v38[24];
    LOBYTE(v34) = v38[40];

    sub_213FDCA18(v26, v25);
    sub_214032024(0, 0xC000000000000000, 2, 0xD00000000000001FLL, 0x800000021478DB90, 0xD00000000000001CLL, 0x800000021478A360);

    goto LABEL_13;
  }

  result = *(a1 + 32);
  if (result)
  {
    v20 = sub_2144668E8(result, v19);
    v22 = v21;
    v24 = *&v38[24];
    v23 = *&v38[32];
    v32 = *&v38[8];
    v33 = *&v38[24];
    LOBYTE(v34) = v38[40];

    sub_213FDCA18(v24, v23);
    sub_214032024(v20, v22, 2, 0xD00000000000001FLL, 0x800000021478DB90, 0xD00000000000001CLL, 0x800000021478A360);
    sub_213FB54FC(v20, v22);

LABEL_13:

    v27 = *&v38[24];
    v28 = *&v38[32];

    result = sub_213FDC6BC(v27, v28);
    *&v38[8] = v32;
    *&v38[24] = v33;
    v38[40] = v34;
    v29 = *&v38[16];
    v30 = v39;
    v39[2] = *v38;
    v30[3] = v29;
    *(v30 + 57) = *&v38[25];
    v31 = v37;
    *v30 = v36;
    v30[1] = v31;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

_BYTE *sub_2145AD6DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v81 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2146E9BF0;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 0x100000;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(v2 + 32) = v7;
  sub_214042E28(v2, &__src[1] + 8);
  memset(&__src[4], 0, 49);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  v11[2] = sub_214059908;
  v11[3] = 0;
  v11[4] = 0x100000;
  v11[5] = sub_21403C354;
  v11[6] = 0;
  *(v10 + 16) = sub_2143A572C;
  *(v10 + 24) = v11;
  *(v9 + 32) = v10;
  sub_214042CD0(v9, &__src[7] + 8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2146E9BF0;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2146E9BF0;
  v14 = v81;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  v16[2] = sub_214059908;
  v16[3] = 0;
  v16[4] = 0x100000;
  v16[5] = sub_21403C354;
  v16[6] = 0;
  *(v15 + 16) = sub_2143A572C;
  *(v15 + 24) = v16;
  *(v13 + 32) = v15;
  v17 = sub_2142E00AC(v13);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = sub_2143A5730;
  *(v18 + 24) = v19;
  *(v12 + 32) = v18;
  sub_214042E28(v12, &__src[10]);
  *(&__src[17] + 1) = 0;
  *(&__src[16] + 1) = 0u;
  *(&__src[12] + 8) = 0u;
  *(&__src[13] + 8) = 0u;
  *(&__src[14] + 8) = 0u;
  *(&__src[15] + 8) = 0u;
  v20 = *v14;
  v21 = v14[3];
  v22 = sub_2145ACF50(*(v14 + 2), v14[2]);
  if (v71)
  {

    v61 = *(&__src[2] + 8);

    sub_214032564(v61, *(&v61 + 1));
    sub_2143A2CA8(*&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1));
    v62 = *(&__src[8] + 8);

    sub_213FDC6BC(v62, *(&v62 + 1));
    v63 = __src[11];

    sub_214032564(v63, *(&v63 + 1));
    v76 = *(&__src[14] + 8);
    v77[0] = *(&__src[15] + 8);
    *(v77 + 9) = *(&__src[16] + 1);
    v74 = *(&__src[12] + 8);
    v75 = *(&__src[13] + 8);
    sub_213FB2DF4(&v74, &qword_27C906460, &qword_2146F4370);
  }

  if (v21)
  {
    v23 = v22;
    sub_2145ABC18(*v21, *(v21 + 1), &v74);
    v24 = a2;
    v21 = v74;

    v22 = v23;
  }

  else
  {
    v24 = a2;
  }

  LODWORD(__src[0]) = v20;
  *(&__src[0] + 1) = v22;
  *&__src[1] = v21;
  v25 = v14[5];
  if (v25)
  {
    sub_2145AC558(*v25, *(v25 + 8), *(v25 + 16), *(v25 + 24), &v74);
    v26 = v76;
    v27 = v77[0];
    sub_2143A2CA8(*&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1));
    __src[4] = v74;
    __src[5] = v75;
    __src[6] = v26;
    LOBYTE(__src[7]) = v27;
  }

  v28 = v14[9];
  if (v28)
  {
    v29 = *(v28 + 16);
    v79[0] = *v28;
    v79[1] = v29;
    v80 = *(v28 + 32);
    sub_2145AD134(v79, v72);
    v76 = *(&__src[14] + 8);
    v77[0] = *(&__src[15] + 8);
    *(v77 + 9) = *(&__src[16] + 1);
    v74 = *(&__src[12] + 8);
    v75 = *(&__src[13] + 8);
    sub_213FB2DF4(&v74, &qword_27C906460, &qword_2146F4370);
    *(&__src[14] + 8) = v72[2];
    *(&__src[15] + 8) = v73[0];
    *(&__src[16] + 1) = *(v73 + 9);
    *(&__src[12] + 8) = v72[0];
    *(&__src[13] + 8) = v72[1];
  }

  v30 = v14[10];
  if (v30)
  {
    sub_2145ABC18(*v30, *(v30 + 1), &v74);
    v31 = v74;

    *(&__src[17] + 1) = v31;
  }

  v32 = v14[4];
  if (v32 && *v32 >= 1)
  {
    result = v32[1];
    if (!result)
    {
      __break(1u);
      goto LABEL_28;
    }

    v34 = sub_2144668E8(result, *v32);
    v36 = v35;
    v38 = *&__src[3];
    v37 = *(&__src[2] + 1);
    v74 = *(&__src[1] + 8);
    v75 = *(&__src[2] + 8);
    LOBYTE(v76) = BYTE8(__src[3]);
    sub_21402D9F8(v34, v35);

    sub_21404F7E0(v37, v38);
    sub_214032118(v34, v36, 2, 0xD000000000000029, 0x800000021478DBB0, 0xD00000000000001CLL, 0x800000021478A360);
    sub_213FB54FC(v34, v36);

    sub_213FB54FC(v34, v36);
    v43 = v75;
    LOBYTE(v34) = v76;
    v44 = *(&__src[2] + 8);

    sub_214032564(v44, *(&v44 + 1));
    *(&__src[1] + 8) = v74;
    *(&__src[2] + 8) = v43;
    BYTE8(__src[3]) = v34;
    v24 = a2;
  }

  else
  {
    v39 = *(&__src[2] + 8);
    v74 = *(&__src[1] + 8);
    v75 = *(&__src[2] + 8);
    LOBYTE(v76) = BYTE8(__src[3]);

    sub_21404F7E0(v39, *(&v39 + 1));
    sub_214032118(0, 0xF000000000000000, 2, 0xD000000000000029, 0x800000021478DBB0, 0xD00000000000001CLL, 0x800000021478A360);

    v40 = v75;
    v41 = v76;
    v42 = *(&__src[2] + 8);

    sub_214032564(v42, *(&v42 + 1));
    *(&__src[1] + 8) = v74;
    *(&__src[2] + 8) = v40;
    BYTE8(__src[3]) = v41;
  }

  v45 = v81[7];
  if (v45 && (v46 = v81[6], v46 >= 1))
  {
    v47 = sub_2144668E8(v45, v46);
    v49 = v48;
    v50 = *(&__src[8] + 8);
    v74 = *(&__src[7] + 8);
    v75 = *(&__src[8] + 8);
    LOBYTE(v76) = BYTE8(__src[9]);

    sub_213FDCA18(v50, *(&v50 + 1));
    sub_214032024(v47, v49, 2, 0xD000000000000025, 0x800000021478DBE0, 0xD00000000000001CLL, 0x800000021478A360);
    sub_213FB54FC(v47, v49);
  }

  else
  {
    v51 = *(&__src[8] + 8);
    v74 = *(&__src[7] + 8);
    v75 = *(&__src[8] + 8);
    LOBYTE(v76) = BYTE8(__src[9]);

    sub_213FDCA18(v51, *(&v51 + 1));
    sub_214032024(0, 0xC000000000000000, 2, 0xD000000000000025, 0x800000021478DBE0, 0xD00000000000001CLL, 0x800000021478A360);
  }

  v52 = v75;
  v53 = v76;
  v54 = *(&__src[8] + 8);

  sub_213FDC6BC(v54, *(&v54 + 1));
  *(&__src[7] + 8) = v74;
  *(&__src[8] + 8) = v52;
  BYTE8(__src[9]) = v53;
  v55 = v81[8];
  if (!v55 || *v55 < 1)
  {
    v60 = __src[11];
    v74 = __src[10];
    v75 = __src[11];
    LOBYTE(v76) = __src[12];

    sub_21404F7E0(v60, *(&v60 + 1));
    sub_214032118(0, 0xF000000000000000, 2, 0xD000000000000027, 0x800000021478DC10, 0xD00000000000001CLL, 0x800000021478A360);

    v64 = v75;
    v65 = v76;
    v66 = __src[11];

    sub_214032564(v66, *(&v66 + 1));
    __src[10] = v74;
    __src[11] = v64;
    LOBYTE(__src[12]) = v65;
    return memcpy(v24, __src, 0x120uLL);
  }

  result = v55[1];
  if (result)
  {
    v56 = sub_2144668E8(result, *v55);
    v58 = v57;
    v59 = __src[11];
    v74 = __src[10];
    v75 = __src[11];
    LOBYTE(v76) = __src[12];
    sub_21402D9F8(v56, v57);

    sub_21404F7E0(v59, *(&v59 + 1));
    sub_214032118(v56, v58, 2, 0xD000000000000027, 0x800000021478DC10, 0xD00000000000001CLL, 0x800000021478A360);
    sub_213FB54FC(v56, v58);

    sub_213FB54FC(v56, v58);
    v67 = v75;
    v68 = v76;
    v69 = __src[11];

    sub_214032564(v69, *(&v69 + 1));
    __src[10] = v74;
    __src[11] = v67;
    LOBYTE(__src[12]) = v68;
    v24 = a2;
    return memcpy(v24, __src, 0x120uLL);
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2145AE29C@<X0>(uint64_t a1@<X8>)
{
  v69 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);
  v72 = *(v1 + 9);
  v74 = *(v1 + 8);
  v75 = *(v1 + 10);
  v70 = *(v1 + 11);
  v7 = *(v1 + 12);
  v8 = *(v1 + 13);
  v60 = *(v1 + 112);
  v9 = *(v1 + 18);
  v56 = *(v1 + 22);
  v62 = *(v1 + 17);
  v64 = *(v1 + 23);
  v10 = *(v1 + 50);
  v11 = *(v1 + 54);
  v12 = *(v1 + 58);
  *&v81[9] = *(v1 + 257);
  v13 = *(v1 + 62);
  v80 = v12;
  *v81 = v13;
  v78 = v10;
  v79 = v11;
  v76 = *(v1 + 35);
  if (v4)
  {
    v77[0] = v4;

    swift_bridgeObjectRetain_n();
    v14 = sub_2145AC034();
    v16 = v15;

    v68 = sub_2145AFFFC(v3);
    v67 = v17;
    v18 = swift_slowAlloc();
    *v18 = v14;
    v66 = v18;
    *(v18 + 8) = v16;
  }

  else
  {

    v68 = sub_2145AFFFC(v19);
    v67 = v20;

    v66 = 0;
  }

  v21 = v6 >> 60;
  if (v6 >> 60 == 11)
  {
    goto LABEL_38;
  }

  if (v6 >> 60 != 15)
  {
    sub_21404F7E0(v5, v6);
    v22 = sub_2145AFF24(v5, v6);
    v23 = v25;
    sub_214032564(v5, v6);
    if (v75)
    {
      goto LABEL_7;
    }

LABEL_10:
    LODWORD(v74) = 0;
    v24 = 0;
    v26 = 0;
    v58 = 0;
    goto LABEL_14;
  }

  v22 = 0;
  v23 = 0;
  if (!v75)
  {
    goto LABEL_10;
  }

LABEL_7:

  sub_213FDCA18(v7, v8);
  if (v72)
  {
    v24 = 0;
  }

  else
  {
    v24 = swift_slowAlloc();
    *v24 = HIDWORD(v74);
  }

  if (v8 >> 60 == 15)
  {
    goto LABEL_38;
  }

  sub_213FDCA18(v7, v8);
  v26 = sub_2145AFF24(v7, v8);
  v58 = v27;
  sub_213FDC6BC(v7, v8);
  sub_2143A2CA8(v74, v72, v75, v70, v7, v8);
LABEL_14:
  v61 = v24;
  v54 = v23;
  if (v9 >> 60 == 15)
  {
    goto LABEL_38;
  }

  sub_21402D9F8(v62, v9);
  v28 = sub_2145AFF24(v62, v9);
  v30 = v29;
  sub_213FDC6BC(v62, v9);
  v31 = v64 >> 60;
  if (v64 >> 60 == 11)
  {
    goto LABEL_38;
  }

  v32 = v76;
  v59 = v26;
  if (v64 >> 60 == 15)
  {
    v33 = 0;
    v52 = 0;
  }

  else
  {
    sub_21402D9F8(v56, v64);
    v33 = sub_2145AFF24(v56, v64);
    v52 = v34;
    sub_214032564(v56, v64);
  }

  v35 = v78;
  v55 = v22;
  v71 = v30;
  v73 = v28;
  v53 = v33;
  if (v78)
  {
    v36 = *(&v79 + 1);
    if (*(&v79 + 1) >> 60 != 15)
    {
      v65 = DWORD1(v80);
      v37 = *&v81[8];
      v38 = *&v81[16];
      v39 = v79;
      sub_213FB2E54(&v78, v77, &qword_27C906460, &qword_2146F4370);
      sub_213FDCA18(v39, v36);
      v63 = sub_2145AFF24(v39, v36);
      v57 = v40;
      sub_213FDC6BC(v39, v36);
      if (v38 >> 60 != 15)
      {
        sub_21402D9F8(v37, v38);
        v41 = sub_2145AFF24(v37, v38);
        v43 = v42;
        sub_213FDC6BC(v37, v38);
        sub_213FB2DF4(&v78, &qword_27C906460, &qword_2146F4370);
        v32 = v76;
        if (v76)
        {
          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }

LABEL_38:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v63 = 0;
  v57 = 0;
  v65 = 0;
  v41 = 0;
  v43 = 0;
  if (v76)
  {
LABEL_23:
    v77[0] = v32;

    v44 = sub_2145AC034();
    v46 = v45;

    if (v21 > 0xE)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_29:
  v44 = 0;
  v46 = 0;
  if (v21 > 0xE)
  {
LABEL_24:
    v47 = 0;
    if (v75)
    {
      goto LABEL_25;
    }

    goto LABEL_31;
  }

LABEL_30:
  v47 = swift_slowAlloc();
  *v47 = v55;
  v47[1] = v54;
  if (v75)
  {
LABEL_25:
    v48 = swift_slowAlloc();
    *v48 = v74;
    *(v48 + 8) = v61;
    *(v48 + 16) = v59;
    *(v48 + 24) = v58;
    if (v31 > 0xE)
    {
      goto LABEL_26;
    }

LABEL_32:
    v49 = swift_slowAlloc();
    *v49 = v53;
    v49[1] = v52;
    if (v35)
    {
      goto LABEL_27;
    }

LABEL_33:
    v50 = 0;
    goto LABEL_34;
  }

LABEL_31:
  v48 = 0;
  if (v31 <= 0xE)
  {
    goto LABEL_32;
  }

LABEL_26:
  v49 = 0;
  if (!v35)
  {
    goto LABEL_33;
  }

LABEL_27:
  v50 = swift_slowAlloc();
  *v50 = v63;
  *(v50 + 8) = v57;
  *(v50 + 16) = v65;
  *(v50 + 24) = v41;
  *(v50 + 32) = v43;
LABEL_34:
  if (v76)
  {
    result = swift_slowAlloc();
    *result = v44;
    *(result + 8) = v46;
  }

  else
  {
    result = 0;
  }

  *a1 = v69;
  *(a1 + 8) = v68;
  *(a1 + 16) = v67;
  *(a1 + 24) = v66;
  *(a1 + 32) = v47;
  *(a1 + 40) = v48;
  *(a1 + 48) = v73;
  *(a1 + 56) = v71;
  *(a1 + 64) = v49;
  *(a1 + 72) = v50;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_2145AE850(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 8);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 4) != *(a2 + 4))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (v3 >> 60 == 15 || v6 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_213FDCA18(*(a1 + 32), v3);
    sub_213FDCA18(v5, v6);
    v8 = sub_214466780(v2, v3, v5, v6);
    sub_213FDC6BC(v2, v3);
    sub_213FDC6BC(v5, v6);
    return v8 & 1;
  }

  return result;
}

uint64_t sub_2145AE968(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (v2 >> 60 == 15 || (v3 = *(a2 + 32), v3 >> 60 == 15))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a2 + 24);
    sub_213FDCA18(v4, v2);
    sub_213FDCA18(v5, v3);
    v6 = sub_214466780(v4, v2, v5, v3);
    sub_213FDC6BC(v4, v2);
    sub_213FDC6BC(v5, v3);
    return v6 & 1;
  }

  return result;
}

uint64_t sub_2145AEA64(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  v3 = *(a1 + 16);
  if ((sub_2143D74EC(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (v2)
    {
      swift_bridgeObjectRetain_n();

      v4 = sub_2143D691C(v3, v2);
      swift_bridgeObjectRelease_n();

      return v4 & 1;
    }

    goto LABEL_8;
  }

  if (v2)
  {
LABEL_8:

    return 0;
  }

  return 1;
}

uint64_t sub_2145AEB38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 >> 60 != 15)
  {
    v3 = *(a2 + 24);
    if (v3 >> 60 != 15)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 36);
      v6 = *(a1 + 64);
      v14 = *(a1 + 56);
      v7 = *(a2 + 16);
      v8 = *(a2 + 36);
      v9 = *(a2 + 56);
      v10 = *(a2 + 64);
      sub_213FDCA18(v4, v2);
      sub_213FDCA18(v7, v3);
      v11 = sub_214466780(v4, v2, v7, v3);
      sub_213FDC6BC(v4, v2);
      sub_213FDC6BC(v7, v3);
      if ((v11 & 1) == 0 || v5 != v8)
      {
        return 0;
      }

      if (v6 >> 60 != 15 && v10 >> 60 != 15)
      {
        sub_213FDCA18(v14, v6);
        sub_213FDCA18(v9, v10);
        v12 = sub_214466780(v14, v6, v9, v10);
        sub_213FDC6BC(v14, v6);
        sub_213FDC6BC(v9, v10);
        return v12 & 1;
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145AECB8(int *a1, int *a2)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = *(a1 + 6);
  v64 = *(a1 + 8);
  v56 = *(a1 + 9);
  v62 = *(a1 + 5);
  v63 = *(a1 + 10);
  v58 = *(a1 + 11);
  v59 = *(a1 + 6);
  v60 = *(a1 + 112);
  v52 = *(a1 + 18);
  v53 = *(a1 + 17);
  v48 = *(a1 + 22);
  v49 = *(a1 + 23);
  v6 = *(a1 + 50);
  v7 = *(a1 + 54);
  v8 = *(a1 + 58);
  *&v93[57] = *(a1 + 257);
  v9 = *(a1 + 62);
  *&v93[32] = v8;
  *&v93[48] = v9;
  *v93 = v6;
  *&v93[16] = v7;
  v46 = *(a1 + 35);
  v10 = *a2;
  v12 = *(a2 + 1);
  v11 = *(a2 + 2);
  v13 = *(a2 + 5);
  v14 = *(a2 + 6);
  v15 = *(a2 + 9);
  v61 = *(a2 + 8);
  v16 = *(a2 + 11);
  v55 = *(a2 + 10);
  v17 = *(a2 + 12);
  v57 = *(a2 + 13);
  v18 = *(a2 + 257);
  v19 = *(a2 + 112);
  *v76 = v2;
  LODWORD(v72) = v10;
  v50 = *(a2 + 18);
  v51 = *(a2 + 17);
  v20 = *(a2 + 54);
  v21 = *(a2 + 62);
  *&v94[32] = *(a2 + 58);
  *&v94[48] = v21;
  *&v94[57] = v18;
  *v94 = *(a2 + 50);
  *&v94[16] = v20;
  v47 = *(a2 + 22);
  v54 = *(a2 + 23);
  v45 = *(a2 + 35);
  *&v76[8] = v4;
  *&v76[16] = v3;
  *(&v72 + 1) = v12;
  *&v73 = v11;

  LOBYTE(v3) = sub_2145AEA64(v76, &v72);

  if ((v3 & 1) == 0)
  {
    goto LABEL_45;
  }

  if (v5 >> 60 == 11 || v14 >> 60 == 11)
  {
    goto LABEL_48;
  }

  if (v5 >> 60 == 15)
  {
    if (v14 >> 60 == 15)
    {
      v44 = v16;
      sub_21404F7E0(v62, v5);
      sub_21404F7E0(v13, v14);
      sub_213FDC6BC(v62, v5);
      goto LABEL_11;
    }

LABEL_8:
    sub_21404F7E0(v62, v5);
    sub_21404F7E0(v13, v14);
    sub_213FDC6BC(v62, v5);
    v22 = v13;
    v23 = v14;
    goto LABEL_9;
  }

  if (v14 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v44 = v16;
  sub_21404F7E0(v62, v5);
  sub_21404F7E0(v13, v14);
  sub_21404F7E0(v62, v5);
  sub_21404F7E0(v13, v14);
  v24 = sub_214466780(v62, v5, v13, v14);
  sub_213FDC6BC(v13, v14);
  sub_214032564(v13, v14);
  sub_214032564(v62, v5);
  sub_213FDC6BC(v62, v5);
  if ((v24 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_11:
  v43 = v17;
  if (!v63)
  {
    v25 = v56;
    v28 = v58;
    v30 = *(&v59 + 1);
    v27 = v59;
    sub_2143A2C00(v64, v56, 0, v58, v59, *(&v59 + 1));
    v26 = v55;
    if (!v55)
    {
      sub_2143A2C00(v61, v15, 0, v44, v43, v57);
      sub_2143A2CA8(v64, v56, 0, v58, v59, *(&v59 + 1));
      goto LABEL_20;
    }

    v31 = v15;
    v32 = v43;
    v42 = v15;
    v33 = v57;
    sub_2143A2C00(v61, v31, v55, v44, v43, v57);
LABEL_18:
    sub_2143A2CA8(v64, v25, v63, v28, v27, v30);
    sub_2143A2CA8(v61, v42, v26, v44, v32, v33);
    goto LABEL_45;
  }

  *v76 = v64;
  v26 = v55;
  v25 = v56;
  *&v76[8] = v56;
  *&v76[16] = v63;
  v28 = v58;
  v27 = v59;
  *&v76[24] = v58;
  *&v76[32] = v59;
  v76[48] = v60;
  v42 = v15;
  if (!v55)
  {
    v72 = *v76;
    v73 = *&v76[16];
    v74 = *&v76[32];
    LOBYTE(v75[0]) = v76[48];
    v30 = *(&v59 + 1);
    sub_2143A2C00(v64, v56, v63, v58, v59, *(&v59 + 1));
    v34 = v15;
    v32 = v43;
    v33 = v57;
    sub_2143A2C00(v61, v34, 0, v44, v43, v57);
    sub_2143A2C00(v64, v56, v63, v58, v59, *(&v59 + 1));
    sub_2142EB000(&v72);
    goto LABEL_18;
  }

  *&v67 = v61;
  *(&v67 + 1) = v15;
  *&v68 = v55;
  *(&v68 + 1) = v44;
  *&v69 = v43;
  *(&v69 + 1) = v57;
  LOBYTE(v70[0]) = v19;
  sub_2143A2C00(v64, v56, v63, v58, v59, *(&v59 + 1));
  sub_2143A2C00(v61, v15, v55, v44, v43, v57);
  sub_2143A2C00(v64, v56, v63, v58, v59, *(&v59 + 1));
  v29 = sub_2145AE850(v76, &v67);
  *v71 = v67;
  *&v71[16] = v68;
  *&v71[32] = v69;
  v71[48] = v70[0];
  sub_2142EB000(v71);
  v72 = *v76;
  v73 = *&v76[16];
  v74 = *&v76[32];
  LOBYTE(v75[0]) = v76[48];
  sub_2142EB000(&v72);
  sub_2143A2CA8(v64, v56, v63, v58, v59, *(&v59 + 1));
  if ((v29 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_20:
  if (v52 >> 60 != 15 && v50 >> 60 != 15)
  {
    sub_213FDCA18(v53, v52);
    sub_213FDCA18(v51, v50);
    v35 = sub_214466780(v53, v52, v51, v50);
    sub_213FDC6BC(v53, v52);
    sub_213FDC6BC(v51, v50);
    if ((v35 & 1) == 0)
    {
      goto LABEL_45;
    }

    if (v49 >> 60 != 11 && v54 >> 60 != 11)
    {
      if (v49 >> 60 == 15)
      {
        if (v54 >> 60 == 15)
        {
          sub_21404F7E0(v48, v49);
          sub_21404F7E0(v47, v54);
          sub_213FDC6BC(v48, v49);
          goto LABEL_31;
        }
      }

      else if (v54 >> 60 != 15)
      {
        sub_21404F7E0(v48, v49);
        sub_21404F7E0(v47, v54);
        sub_21404F7E0(v48, v49);
        sub_21404F7E0(v47, v54);
        v36 = sub_214466780(v48, v49, v47, v54);
        sub_213FDC6BC(v47, v54);
        sub_214032564(v47, v54);
        sub_214032564(v48, v49);
        sub_213FDC6BC(v48, v49);
        if ((v36 & 1) == 0)
        {
          goto LABEL_45;
        }

LABEL_31:
        v37 = *v93;
        v90 = *&v93[40];
        v91 = *&v93[56];
        v92 = v93[72];
        v88 = *&v93[8];
        v89 = *&v93[24];
        v38 = *v94;
        v85 = *&v94[40];
        v86 = *&v94[56];
        v87 = v94[72];
        v83 = *&v94[8];
        v84 = *&v94[24];
        if (*v93)
        {
          *v76 = *v93;
          *&v76[8] = *&v93[8];
          *&v76[24] = *&v93[24];
          *&v76[40] = *&v93[40];
          *&v76[56] = *&v93[56];
          v76[72] = v93[72];
          v74 = *&v76[32];
          v75[0] = *&v76[48];
          *(v75 + 9) = *&v76[57];
          v72 = *v76;
          v73 = *&v76[16];
          if (*v94)
          {
            *&v71[24] = *&v94[24];
            *&v71[40] = *&v94[40];
            *&v71[56] = *&v94[56];
            v71[72] = v94[72];
            *&v71[8] = *&v94[8];
            *v71 = *v94;
            sub_213FB2E54(v93, &v67, &qword_27C906460, &qword_2146F4370);
            sub_213FB2E54(v94, &v67, &qword_27C906460, &qword_2146F4370);
            sub_213FB2E54(v76, &v67, &qword_27C906460, &qword_2146F4370);
            v39 = sub_2145AEB38(&v72, v71);
            v65[2] = *&v71[32];
            v66[0] = *&v71[48];
            *(v66 + 9) = *&v71[57];
            v65[0] = *v71;
            v65[1] = *&v71[16];
            sub_2142EB868(v65);
            v69 = v74;
            v70[0] = v75[0];
            *(v70 + 9) = *(v75 + 9);
            v67 = v72;
            v68 = v73;
            sub_2142EB868(&v67);
            *v71 = v37;
            *&v71[24] = v89;
            *&v71[40] = v90;
            *&v71[56] = v91;
            v71[72] = v92;
            *&v71[8] = v88;
            sub_213FB2DF4(v71, &qword_27C906460, &qword_2146F4370);
            if ((v39 & 1) == 0)
            {
              goto LABEL_45;
            }

            goto LABEL_40;
          }

          *&v71[32] = *&v76[32];
          *&v71[48] = *&v76[48];
          *&v71[57] = *&v76[57];
          *v71 = *v76;
          *&v71[16] = *&v76[16];
          sub_213FB2E54(v93, &v67, &qword_27C906460, &qword_2146F4370);
          sub_213FB2E54(v94, &v67, &qword_27C906460, &qword_2146F4370);
          sub_213FB2E54(v76, &v67, &qword_27C906460, &qword_2146F4370);
          sub_2142EB868(v71);
        }

        else
        {
          if (!*v94)
          {
            *v76 = 0;
            *&v76[24] = *&v93[24];
            *&v76[40] = *&v93[40];
            *&v76[56] = *&v93[56];
            v76[72] = v93[72];
            *&v76[8] = *&v93[8];
            sub_213FB2E54(v93, &v72, &qword_27C906460, &qword_2146F4370);
            sub_213FB2E54(v94, &v72, &qword_27C906460, &qword_2146F4370);
            sub_213FB2DF4(v76, &qword_27C906460, &qword_2146F4370);
LABEL_40:
            if (v46)
            {
              if (v45)
              {
                swift_bridgeObjectRetain_n();
                swift_bridgeObjectRetain_n();
                v40 = sub_2143D691C(v46, v45);
                swift_bridgeObjectRelease_n();
                swift_bridgeObjectRelease_n();
                return v40 & 1;
              }
            }

            else if (!v45)
            {

              v40 = 1;
              return v40 & 1;
            }

LABEL_45:
            v40 = 0;
            return v40 & 1;
          }

          sub_213FB2E54(v93, v76, &qword_27C906460, &qword_2146F4370);
          sub_213FB2E54(v94, v76, &qword_27C906460, &qword_2146F4370);
        }

        *&v76[24] = v89;
        *&v76[40] = v90;
        *&v76[56] = v91;
        *&v76[8] = v88;
        v79 = v84;
        v80 = v85;
        v81 = v86;
        *v76 = v37;
        v76[72] = v92;
        v77 = v38;
        v82 = v87;
        v78 = v83;
        sub_213FB2DF4(v76, &qword_27C915C60, &unk_2147607E0);
        goto LABEL_45;
      }

      sub_21404F7E0(v48, v49);
      sub_21404F7E0(v47, v54);
      sub_213FDC6BC(v48, v49);
      v22 = v47;
      v23 = v54;
LABEL_9:
      sub_213FDC6BC(v22, v23);
      goto LABEL_45;
    }
  }

LABEL_48:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145AF7C4(uint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - v9;
  v11 = sub_2146D8958();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  memcpy(v54, a1, sizeof(v54));
  memcpy(v53, a1, sizeof(v53));
  memcpy(v55, a2, sizeof(v55));
  memcpy(v52, a2, sizeof(v52));
  sub_2142EBBC4(v54, v57);
  sub_2142EBBC4(v55, v57);
  v19 = sub_2145AECB8(v53, v52);
  memcpy(v56, v52, sizeof(v56));
  sub_2142EB96C(v56);
  memcpy(v57, v53, 0x120uLL);
  sub_2142EB96C(v57);
  if ((v19 & 1) == 0)
  {
    goto LABEL_21;
  }

  v49 = v18;
  v20 = a1[39];
  if (v20 >> 60 == 11)
  {
    goto LABEL_28;
  }

  v50 = v12;
  v51 = v8;
  v21 = a2[39];
  if (v21 >> 60 == 11)
  {
    goto LABEL_28;
  }

  v22 = a1[38];
  v23 = a2[38];
  if (v20 >> 60 == 15)
  {
    if (v21 >> 60 == 15)
    {
      sub_21404F7E0(a1[38], v20);
      sub_21404F7E0(v23, v21);
      sub_213FDC6BC(v22, v20);
      goto LABEL_10;
    }

LABEL_8:
    sub_21404F7E0(a1[38], v20);
    sub_21404F7E0(v23, v21);
    sub_213FDC6BC(v22, v20);
    sub_213FDC6BC(v23, v21);
    v24 = 0;
    return v24 & 1;
  }

  if (v21 >> 60 == 15)
  {
    goto LABEL_8;
  }

  sub_21404F7E0(a1[38], v20);
  sub_21404F7E0(v23, v21);
  sub_21404F7E0(v22, v20);
  sub_21404F7E0(v23, v21);
  LODWORD(v48) = sub_214466780(v22, v20, v23, v21);
  sub_213FDC6BC(v23, v21);
  sub_214032564(v23, v21);
  sub_214032564(v22, v20);
  sub_213FDC6BC(v22, v20);
  if ((v48 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  v48 = v16;
  v25 = type metadata accessor for CloudKitSharingToken();
  v26 = a1 + *(v25 + 24);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(&v26[*(v46 + 28)], v10, &unk_27C9131A0, &unk_2146E9D10);
  v27 = v50;
  v47 = *(v50 + 48);
  if (v47(v10, 1, v11) == 1)
  {
    v42 = v10;
LABEL_27:
    sub_213FB2DF4(v42, &unk_27C9131A0, &unk_2146E9D10);
    goto LABEL_28;
  }

  v28 = v49;
  v45 = *(v27 + 32);
  v45(v49, v10, v11);
  v44 = v25;
  v29 = a2 + *(v25 + 24) + *(v46 + 28);
  v30 = v51;
  sub_213FB2E54(v29, v51, &unk_27C9131A0, &unk_2146E9D10);
  if (v47(v30, 1, v11) == 1)
  {
    v42 = v30;
    goto LABEL_27;
  }

  v31 = v48;
  v45(v48, v30, v11);
  v32 = sub_2146D88C8();
  v33 = *(v27 + 8);
  v33(v31, v11);
  v33(v28, v11);
  if ((v32 & 1) == 0)
  {
    goto LABEL_21;
  }

  v34 = *(v44 + 28);
  v35 = a1 + v34;
  v36 = *(a1 + v34 + 24);
  if (v36 != 1)
  {
    v37 = a2 + v34;
    v38 = *(v37 + 3);
    if (v38 != 1)
    {
      v39 = *(v35 + 2);
      if (v36)
      {
        if (v38)
        {
          if (v39 != *(v37 + 2) || v36 != v38)
          {
            v40 = *(v35 + 2);
            v24 = sub_2146DA6A8();
            return v24 & 1;
          }

LABEL_24:
          v24 = 1;
          return v24 & 1;
        }
      }

      else if (!v38)
      {
        sub_213FDC9D0(*(v37 + 2), 0);
        sub_213FDC9D0(v39, 0);
        goto LABEL_24;
      }

LABEL_21:
      v24 = 0;
      return v24 & 1;
    }
  }

LABEL_28:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145AFD38(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v28[0] = *a1;
  v28[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v28[2] = a1[2];
  v5 = a2[2];
  v6 = *a2;
  v7 = *a2;
  v31 = a2[1];
  v32 = v5;
  v30 = v6;
  v24 = v4;
  v25 = v3;
  v26 = a1[2];
  v29 = *(a1 + 48);
  v8 = *(a1 + 9);
  v9 = *(a1 + 10);
  v10 = *(a1 + 23);
  v11 = *(a1 + 96);
  v33 = *(a2 + 48);
  v12 = *(a2 + 9);
  v13 = *(a2 + 10);
  v14 = *(a2 + 23);
  v15 = *(a2 + 96);
  v27 = *(a1 + 48);
  v20 = v7;
  v21 = v31;
  v22 = a2[2];
  v23 = *(a2 + 48);
  sub_2142EB0A8(v28, v36);
  sub_2142EB0A8(&v30, v36);
  v16 = sub_2145AE850(&v24, &v20);
  v34[0] = v20;
  v34[1] = v21;
  v34[2] = v22;
  v35 = v23;
  sub_2142EB000(v34);
  v36[0] = v24;
  v36[1] = v25;
  v36[2] = v26;
  v37 = v27;
  sub_2142EB000(v36);
  if ((v16 & 1) == 0)
  {
    v18 = 0;
    return v18 & 1;
  }

  if (v9 >> 60 != 15 && v13 >> 60 != 15)
  {
    sub_213FDCA18(v8, v9);
    sub_213FDCA18(v12, v13);
    v17 = sub_214466780(v8, v9, v12, v13);
    sub_213FDC6BC(v8, v9);
    sub_213FDC6BC(v12, v13);
    if (v11 & 1 | ((v17 & 1) == 0))
    {
      v18 = v17 & v15;
    }

    else
    {
      v18 = (v10 == v14) & ~v15;
    }

    return v18 & 1;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145AFF24(uint64_t result, unint64_t a2)
{
  v2 = result;
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(a2);
LABEL_13:
      swift_slowAlloc();
      sub_2146D8AA8();
      return v4;
    }

    goto LABEL_10;
  }

  if (v3 != 2)
  {
    v4 = 0;
    goto LABEL_13;
  }

  v6 = *(result + 16);
  v5 = *(result + 24);
  result = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_slowAlloc();
  if (!__OFSUB__(*(v2 + 24), *(v2 + 16)))
  {
    result = sub_2146D8AA8();
    v8 = *(v2 + 16);
    v7 = *(v2 + 24);
    v4 = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
      return v4;
    }

    __break(1u);
LABEL_10:
    if (!__OFSUB__(HIDWORD(v2), v2))
    {
      v4 = HIDWORD(v2) - v2;
      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2145AFFFC(uint64_t a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if ((v2 * 56) >> 64 != (56 * v2) >> 63)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v3 = swift_slowAlloc();
  if (!v2)
  {
    goto LABEL_139;
  }

  v4 = a1 + 32;
  v63 = v2;
  v5 = (v3 + 24);
  v6 = v2;
  while (1)
  {
    v9 = *(v4 + 48);
    v76 = *(v4 + 32);
    v77 = v9;
    v10 = *(v4 + 80);
    v78 = *(v4 + 64);
    v79 = v10;
    v80 = *(v4 + 96);
    v11 = *(v4 + 16);
    v75[0] = *v4;
    v75[1] = v11;
    v66 = v75[0];
    v13 = *(&v76 + 1);
    v12 = v76;
    if (BYTE8(v75[0]) == 1)
    {
      sub_2142EB200(v75, &v69);
      v14 = 0;
    }

    else
    {
      v15 = DWORD1(v75[0]);
      sub_2142EB200(v75, &v69);
      v14 = swift_slowAlloc();
      *v14 = v15;
    }

    if (v13 >> 60 == 15)
    {
      break;
    }

    v16 = v13 >> 62;
    v67 = v6;
    v65 = v14;
    if ((v13 >> 62) > 1)
    {
      if (v16 != 2)
      {
        __dst = swift_slowAlloc();
        sub_213FDC6BC(v12, v13);
        v21 = 0;
        goto LABEL_71;
      }

      if (__OFSUB__(*(v12 + 24), *(v12 + 16)))
      {
        goto LABEL_146;
      }

      sub_21402D9F8(v12, v13);
      __dst = swift_slowAlloc();
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      v17 = v18 - v19;
      if (__OFSUB__(v18, v19))
      {
        goto LABEL_148;
      }
    }

    else
    {
      if (!v16)
      {
        v17 = BYTE6(v13);
        __dst = swift_slowAlloc();
        goto LABEL_21;
      }

      if (__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_147;
      }

      v17 = HIDWORD(v12) - v12;
      sub_21402D9F8(v12, v13);
      __dst = swift_slowAlloc();
    }

    if (v17 < 0)
    {
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    if (!v17)
    {
      goto LABEL_31;
    }

LABEL_21:
    if (v16)
    {
      if (v16 == 2)
      {
        v20 = *(v12 + 16);
      }

      else
      {
        v20 = v12;
      }
    }

    else
    {
      v20 = 0;
    }

    v22 = v20 + v17;
    if (__OFADD__(v20, v17))
    {
      goto LABEL_142;
    }

    v23 = v17;
    if (v22 < v20)
    {
      goto LABEL_143;
    }

    if (v22 != v20)
    {
      if (v16 != 2)
      {
        if (v16 != 1)
        {
          v21 = BYTE6(v13);
          if (v20 > BYTE6(v13) || v22 > BYTE6(v13))
          {
            goto LABEL_157;
          }

          v69 = v12;
          v70 = v13;
          v71 = BYTE2(v13);
          v72 = BYTE3(v13);
          v73 = BYTE4(v13);
          v74 = BYTE5(v13);
          if (v17 > 13)
          {
            v23 = 14;
          }

          else if (v17 < 1)
          {
            goto LABEL_70;
          }

          memmove(__dst, &v69 + v20, v23);
LABEL_70:
          sub_213FDC6BC(v12, v13);
          goto LABEL_71;
        }

        if (v12 >> 32 < v22 || v20 < v12 || v12 >> 32 < v20 || v22 < v12)
        {
          goto LABEL_158;
        }

        v24 = sub_2146D8728();
        if (v24)
        {
          v25 = v24;
          v26 = sub_2146D8758();
          if (__OFSUB__(v20, v26))
          {
            goto LABEL_168;
          }

          v27 = (v20 - v26 + v25);
          v28 = sub_2146D8748();
          if (v27)
          {
            if (v28 >= v17)
            {
              v29 = v17;
            }

            else
            {
              v29 = v28;
            }

            memmove(__dst, v27, v29);
          }
        }

        else
        {
          sub_2146D8748();
        }

        goto LABEL_33;
      }

      if (v20 < *(v12 + 16))
      {
        goto LABEL_156;
      }

      if (*(v12 + 24) < v22)
      {
        goto LABEL_159;
      }

      v30 = sub_2146D8728();
      if (v30)
      {
        v31 = sub_2146D8758();
        if (__OFSUB__(v20, v31))
        {
          goto LABEL_169;
        }

        v30 += v20 - v31;
      }

      if (__OFSUB__(v22, v20))
      {
        goto LABEL_160;
      }

      v32 = sub_2146D8748();
      if (v30)
      {
        if (v32 >= v17)
        {
          v33 = v17;
        }

        else
        {
          v33 = v32;
        }

        memmove(__dst, v30, v33);
      }
    }

    else
    {
LABEL_31:
      if (v16 != 2)
      {
        if (v16 != 1)
        {
          sub_213FDC6BC(v12, v13);
          v21 = BYTE6(v13);
          goto LABEL_71;
        }

LABEL_33:
        sub_213FDC6BC(v12, v13);
        if (__OFSUB__(HIDWORD(v12), v12))
        {
          goto LABEL_151;
        }

        v21 = HIDWORD(v12) - v12;
        goto LABEL_71;
      }
    }

    v35 = *(v12 + 16);
    v34 = *(v12 + 24);
    sub_213FDC6BC(v12, v13);
    v21 = v34 - v35;
    if (__OFSUB__(v34, v35))
    {
      goto LABEL_153;
    }

LABEL_71:
    v36 = v79;
    if (v79 >> 60 == 15)
    {
      break;
    }

    v37 = *(&v78 + 1);
    v38 = v79 >> 62;
    if ((v79 >> 62) > 1)
    {
      if (v38 != 2)
      {
        v40 = swift_slowAlloc();
        sub_213FDC6BC(v37, v36);
        v45 = 0;
        goto LABEL_134;
      }

      if (__OFSUB__(*(*(&v78 + 1) + 24), *(*(&v78 + 1) + 16)))
      {
        goto LABEL_149;
      }

      sub_21402D9F8(*(&v78 + 1), v79);
      v41 = swift_slowAlloc();
      v43 = *(v37 + 16);
      v42 = *(v37 + 24);
      v39 = v42 - v43;
      if (__OFSUB__(v42, v43))
      {
        goto LABEL_152;
      }
    }

    else
    {
      if (!v38)
      {
        v39 = BYTE6(v79);
        v40 = swift_slowAlloc();
        goto LABEL_83;
      }

      if (__OFSUB__(HIDWORD(v78), DWORD2(v78)))
      {
        goto LABEL_150;
      }

      v39 = HIDWORD(v78) - DWORD2(v78);
      sub_21402D9F8(*(&v78 + 1), v79);
      v41 = swift_slowAlloc();
    }

    v40 = v41;
    if (v39 < 0)
    {
      goto LABEL_141;
    }

LABEL_83:
    v64 = v21;
    if (v39)
    {
      if (v38)
      {
        if (v38 == 2)
        {
          v44 = *(v37 + 16);
        }

        else
        {
          v44 = v37;
        }
      }

      else
      {
        v44 = 0;
      }

      v46 = v44 + v39;
      if (__OFADD__(v44, v39))
      {
        goto LABEL_144;
      }

      v47 = v39;
      if (v46 < v44)
      {
        goto LABEL_145;
      }

      if (v46 != v44)
      {
        if (v38 == 2)
        {
          if (v44 < *(v37 + 16))
          {
            goto LABEL_161;
          }

          if (*(v37 + 24) < v46)
          {
            goto LABEL_164;
          }

          v54 = sub_2146D8728();
          if (v54)
          {
            v55 = sub_2146D8758();
            if (__OFSUB__(v44, v55))
            {
              goto LABEL_171;
            }

            v54 += v44 - v55;
          }

          if (__OFSUB__(v46, v44))
          {
            goto LABEL_165;
          }

          v56 = sub_2146D8748();
          v21 = v64;
          if (v54)
          {
            if (v56 >= v39)
            {
              v57 = v39;
            }

            else
            {
              v57 = v56;
            }

            memmove(v40, v54, v57);
          }

          goto LABEL_123;
        }

        if (v38 == 1)
        {
          if (v37 >> 32 < v46 || v44 < v37 || v37 >> 32 < v44 || v46 < v37)
          {
            goto LABEL_162;
          }

          v48 = sub_2146D8728();
          if (v48)
          {
            v49 = v48;
            v50 = sub_2146D8758();
            if (__OFSUB__(v44, v50))
            {
              goto LABEL_170;
            }

            v51 = (v44 - v50 + v49);
            v52 = sub_2146D8748();
            v21 = v64;
            if (v51)
            {
              if (v52 >= v39)
              {
                v53 = v39;
              }

              else
              {
                v53 = v52;
              }

              memmove(v40, v51, v53);
            }
          }

          else
          {
            sub_2146D8748();
            v21 = v64;
          }

LABEL_95:
          sub_213FDC6BC(v37, v36);
          if (__OFSUB__(HIDWORD(v37), v37))
          {
            goto LABEL_154;
          }

          v45 = HIDWORD(v37) - v37;
          goto LABEL_134;
        }

        v45 = BYTE6(v36);
        if (v44 > BYTE6(v36) || v46 > BYTE6(v36))
        {
          goto LABEL_163;
        }

        v69 = v37;
        v70 = v36;
        v71 = BYTE2(v36);
        v72 = BYTE3(v36);
        v73 = BYTE4(v36);
        v74 = BYTE5(v36);
        if (v47 > 13)
        {
          v47 = 14;
        }

        else if (v47 < 1)
        {
          goto LABEL_133;
        }

        memmove(v40, &v69 + v44, v47);
LABEL_133:
        sub_213FDC6BC(v37, v36);
        v21 = v64;
        goto LABEL_134;
      }
    }

    if (v38 == 2)
    {
      v21 = v64;
LABEL_123:
      v59 = *(v37 + 16);
      v58 = *(v37 + 24);
      sub_213FDC6BC(v37, v36);
      v60 = __OFSUB__(v58, v59);
      v45 = v58 - v59;
      if (v60)
      {
        goto LABEL_155;
      }

      goto LABEL_134;
    }

    v21 = v64;
    if (v38 == 1)
    {
      goto LABEL_95;
    }

    sub_213FDC6BC(v37, v36);
    v45 = BYTE6(v36);
LABEL_134:
    if (v80)
    {
      v8 = 0;
    }

    else
    {
      v7 = HIDWORD(v79);
      v8 = swift_slowAlloc();
      *v8 = v7;
    }

    *(v5 - 6) = v66;
    *(v5 - 2) = v65;
    *(v5 - 1) = v21;
    *v5 = __dst;
    v5[1] = v45;
    v5[2] = v40;
    v5[3] = v8;
    sub_2142EB104(v75);
    v4 += 104;
    v5 += 7;
    v6 = v67 - 1;
    if (v67 == 1)
    {
      v2 = v63;
      if (!HIDWORD(v63))
      {
LABEL_139:
        v61 = *MEMORY[0x277D85DE8];
        return v2;
      }

LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2145B087C(unint64_t result)
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

uint64_t sub_2145B089C(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_2145B0954(uint64_t result, uint64_t a2)
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

    sub_2146D89D8();
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

  v3 = sub_2146D8728();
  if (v3)
  {
    result = sub_2146D8758();
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
  v4 = sub_2146D8748();
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

  v8 = sub_2145B089C(v3, v7);

  return v8;
}

uint64_t sub_2145B0A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8998();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2146D8988();
  if (a2)
  {
    v11 = sub_2146D8778();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = sub_2146D8708();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277CC92A8])
    {
      v15 = sub_2146D8768();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_2145B0954(v14, a2);
  }

  else
  {
    v17 = sub_2146D8988();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

id sub_2145B0C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_2146D8A38();
  v10 = sub_2146D8958();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(a3, 1, v10) != 1)
  {
    v12 = sub_2146D8898();
    (*(v11 + 8))(a3, v10);
  }

  if (a5)
  {
    v13 = sub_2146D9588();
  }

  else
  {
    v13 = 0;
  }

  v14 = [v6 initWithSharingInvitationData:v9 shareURL:v12 participantID:v13];

  return v14;
}

unint64_t sub_2145B0D94()
{
  result = qword_27C915C68;
  if (!qword_27C915C68)
  {
    type metadata accessor for PCSManateeShareInvitation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915C68);
  }

  return result;
}

uint64_t sub_2145B0DEC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v8)
    {
      v17 = a1;
      if (a1 > a1 >> 32)
      {
        __break(1u);
        goto LABEL_62;
      }

      v10 = a5;
      v19 = sub_2146D8728();
      if (v19)
      {
        v20 = v19;
        v21 = sub_2146D8758();
        if (!__OFSUB__(v17, v21))
        {
          v13 = v17 - v21 + v20;
          sub_2146D8748();
          if (v13)
          {
            v22 = a4 >> 62;
            if ((a4 >> 62) > 1)
            {
              v23 = a6;
              v24 = v10;
              if (v22 == 2)
              {
                v34 = *(a3 + 16);
                v33 = *(a3 + 24);
                v16 = v33 - v34;
                if (__OFSUB__(v33, v34))
                {
                  __break(1u);
LABEL_50:
                  v24 = v36;
                  if (!__OFSUB__(HIDWORD(a3), a3))
                  {
                    v16 = HIDWORD(a3) - a3;
LABEL_54:
                    v32 = v13;
                    v23 = v10;
                    goto LABEL_59;
                  }

                  goto LABEL_66;
                }
              }

              else
              {
                v16 = 0;
              }
            }

            else
            {
              v23 = a6;
              v24 = v10;
              if (v22)
              {
                if (__OFSUB__(HIDWORD(a3), a3))
                {
                  goto LABEL_67;
                }

                v16 = HIDWORD(a3) - a3;
              }

              else
              {
                v16 = BYTE6(a4);
              }
            }

            v32 = v13;
            goto LABEL_59;
          }

          result = -1;
          goto LABEL_60;
        }

LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
      }

LABEL_35:
      sub_2146D8748();
      result = -1;
      goto LABEL_60;
    }

    v37[0] = a1;
    LOWORD(v37[1]) = a2;
    BYTE2(v37[1]) = BYTE2(a2);
    BYTE3(v37[1]) = BYTE3(a2);
    BYTE4(v37[1]) = BYTE4(a2);
    v9 = a4 >> 62;
    BYTE5(v37[1]) = BYTE5(a2);
    if ((a4 >> 62) > 1)
    {
      if (v9 != 2)
      {
        v16 = 0;
        goto LABEL_44;
      }

      v26 = *(a3 + 16);
      v25 = *(a3 + 24);
      v16 = v25 - v26;
      if (!__OFSUB__(v25, v26))
      {
        goto LABEL_44;
      }

      __break(1u);
LABEL_31:
      v16 = 0;
      if (v25 != 2)
      {
        goto LABEL_44;
      }

      v28 = *(a3 + 16);
      v27 = *(a3 + 24);
      v16 = v27 - v28;
      if (!__OFSUB__(v27, v28))
      {
        goto LABEL_44;
      }

      __break(1u);
      goto LABEL_35;
    }

    if (!v9)
    {
      goto LABEL_26;
    }

    LODWORD(v8) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_42;
    }

    __break(1u);
  }

  if (v8 != 2)
  {
    v25 = a4 >> 62;
    memset(v37, 0, 14);
    if ((a4 >> 62) <= 1)
    {
      if (v25)
      {
LABEL_41:
        LODWORD(v8) = HIDWORD(a3) - a3;
        if (!__OFSUB__(HIDWORD(a3), a3))
        {
LABEL_42:
          v16 = v8;
          goto LABEL_44;
        }

        goto LABEL_65;
      }

LABEL_26:
      v16 = BYTE6(a4);
LABEL_44:
      v32 = v37;
      v24 = a5;
      v23 = a6;
LABEL_59:
      result = decode_PCSShareProtection(v32, v16, v24, v23);
      goto LABEL_60;
    }

    goto LABEL_31;
  }

  v36 = a5;
  v10 = a6;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_2146D8728();
  if (v13)
  {
    v14 = sub_2146D8758();
    if (__OFSUB__(v12, v14))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v13 += v12 - v14;
  }

  if (__OFSUB__(v11, v12))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  sub_2146D8748();
  if (v13)
  {
    v15 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      if (!v15)
      {
        v16 = BYTE6(a4);
LABEL_53:
        v24 = v36;
        goto LABEL_54;
      }

      goto LABEL_50;
    }

    if (v15 != 2)
    {
      v16 = 0;
      goto LABEL_53;
    }

    v31 = *(a3 + 16);
    v30 = *(a3 + 24);
    v16 = v30 - v31;
    v24 = v36;
    if (!__OFSUB__(v30, v31))
    {
      goto LABEL_54;
    }

    __break(1u);
    goto LABEL_41;
  }

  result = -1;
LABEL_60:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2145B1120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  result = type metadata accessor for PCSManateeShareInvitation();
  v5 = (a1 + *(result + 20));
  v6 = v5[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
    v8 = 0uLL;
    v9 = 1;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v17 = 0;
    v14 = *v5;
    sub_21402D9F8(*v5, v6);
    sub_213FDCA18(v14, v6);
    sub_213FDCA18(v14, v6);
    v15 = sub_2145B0DEC(v14, v6, v14, v6, &v18, &v17);
    sub_213FB54FC(v14, v6);
    sub_213FB54FC(v14, v6);
    result = sub_213FB54FC(v14, v6);
    if (v15)
    {
      v7 = 0;
      v9 = 1;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v8 = 0uLL;
    }

    else
    {
      v9 = 0;
      v8 = v18;
      v10 = v19;
      v11 = v20;
      v12 = v21;
      v13 = v22;
      v7 = v23;
    }
  }

  *a2 = v8;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  *(a2 + 80) = v7;
  *(a2 + 88) = v9;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2145B12A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2145B1300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PCSManateeShareInvitation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2145B13DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2145B1428(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145B1484()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145B150C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145B1654(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2145B16F0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

uint64_t sub_2145B1788()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_2145B17B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_2145B1870@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v9 = v1[6];
  v10 = v2;
  v11 = v1[8];
  v3 = v11;
  v4 = v1[5];
  v8[0] = v1[4];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_213FB2E54(v8, &v7, &qword_27C9087E8, &qword_2146F51D0);
}

__n128 sub_2145B18CC(uint64_t a1)
{
  v3 = v1[7];
  v7[2] = v1[6];
  v7[3] = v3;
  v7[4] = v1[8];
  v4 = v1[5];
  v7[0] = v1[4];
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C9087E8, &qword_2146F51D0);
  v5 = *(a1 + 48);
  v1[6] = *(a1 + 32);
  v1[7] = v5;
  v1[8] = *(a1 + 64);
  result = *(a1 + 16);
  v1[4] = *a1;
  v1[5] = result;
  return result;
}

uint64_t sub_2145B195C@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 144), 0x1F0uLL);
  memcpy(a1, (v1 + 144), 0x1F0uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C908800, &qword_2146F51D8);
}

void *sub_2145B19C0(const void *a1)
{
  memcpy(__dst, (v1 + 144), 0x1F0uLL);
  sub_213FB2DF4(__dst, &qword_27C908800, &qword_2146F51D8);
  return memcpy((v1 + 144), a1, 0x1F0uLL);
}

uint64_t sub_2145B1A78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9087D0, &qword_2146F51C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2145B1B08@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result + 2;
  if ((result + 2) >= 9)
  {
    v2 = 9;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2145B1B20()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1 - 2);
  return sub_2146DA9B8();
}

uint64_t sub_2145B1B98()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1 - 2);
  return sub_2146DA9B8();
}

uint64_t sub_2145B1CA4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2145B1CD4(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2145B1D6C(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_2145B1E48@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  v7 = *(v1 + 34);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 33) = v6;
  *(a1 + 34) = v7;
}

uint64_t sub_2145B1EAC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v8 = *(a1 + 34);
  v9 = *(v1 + 8);
  v10 = *(v1 + 24);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 33) = v7;
  *(v1 + 34) = v8;
  return result;
}

unint64_t sub_2145B1F7C()
{
  result = qword_27C915C70;
  if (!qword_27C915C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915C70);
  }

  return result;
}

uint64_t sub_2145B2054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145B2090()
{
  result = qword_27C915C78;
  if (!qword_27C915C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915C78);
  }

  return result;
}

unint64_t sub_2145B20E4()
{
  result = qword_27C915C80;
  if (!qword_27C915C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915C80);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor7MBDMenuVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor17MBDPersistentMenuVSg(uint64_t *a1)
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

uint64_t get_enum_tag_for_layout_string_9BlastDoor12MBDBrandInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor12MBDBrandLogoVSg(uint64_t a1)
{
  if ((*(a1 + 272) >> 1) > 0x80000000)
  {
    return -(*(a1 + 272) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2145B21AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1080))
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

uint64_t sub_2145B21F4(uint64_t result, int a2, int a3)
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
    *(result + 1064) = 0u;
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
      *(result + 1080) = 1;
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

    *(result + 1080) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2145B2394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_2145B23DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2145B2434()
{
  result = qword_27C915C88;
  if (!qword_27C915C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915C88);
  }

  return result;
}

uint64_t sub_2145B2560@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  v5 = *(v1 + 216);
  *a1 = *(v1 + 184);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145B25B8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 192);
  v7 = *(v1 + 200);
  v8 = *(v1 + 208);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 184) = *a1;
  *(v1 + 200) = v3;
  *(v1 + 208) = v4;
  *(v1 + 216) = v5;
  return result;
}

uint64_t sub_2145B2620@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 240);
  v4 = *(v1 + 248);
  v5 = *(v1 + 256);
  *a1 = *(v1 + 224);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145B2678(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[14].n128_u64[1];
  v7 = v1[15].n128_i64[0];
  v8 = v1[15].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[14] = *a1;
  v1[15].n128_u64[0] = v3;
  v1[15].n128_u64[1] = v4;
  v1[16].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145B26E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 272);
  v3 = *(v1 + 280);
  v4 = *(v1 + 288);
  v5 = *(v1 + 296);
  *a1 = *(v1 + 264);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145B2738(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 272);
  v7 = *(v1 + 280);
  v8 = *(v1 + 288);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 264) = *a1;
  *(v1 + 280) = v3;
  *(v1 + 288) = v4;
  *(v1 + 296) = v5;
  return result;
}

uint64_t sub_2145B27A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 328);
  v3 = *(v1 + 336);
  v4 = *(v1 + 344);
  v5 = *(v1 + 352);
  *a1 = *(v1 + 320);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145B27FC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[20].n128_u64[1];
  v7 = v1[21].n128_i64[0];
  v8 = v1[21].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[20] = *a1;
  v1[21].n128_u64[0] = v3;
  v1[21].n128_u64[1] = v4;
  v1[22].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145B2864()
{
  if (*(v0 + 208) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 200);

    return v1;
  }

  return result;
}

uint64_t sub_2145B28E4()
{
  if (*(v0 + 248) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 240);

    return v1;
  }

  return result;
}

uint64_t sub_2145B2964()
{
  if (*(v0 + 288) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 280);

    return v1;
  }

  return result;
}

uint64_t sub_2145B29E4()
{
  if (*(v0 + 344) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 336);

    return v1;
  }

  return result;
}

unint64_t sub_2145B2A98@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  *(v4 + 16) = sub_2145B865C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2145B2BEC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145B2C44(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 72) = *a1;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  return result;
}

uint64_t sub_2145B2CB0()
{
  if (*(v0 + 96) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 88);

    return v1;
  }

  return result;
}

uint64_t sub_2145B2D64@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145B2DBC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145B2E24()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

unint64_t sub_2145B2ED8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21405980C;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2145B2FF8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145B3050(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145B30B8()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_2145B3138()
{
  v1 = *(v0 + 9);
  v2 = MEMORY[0x277D84F98];
  v18 = MEMORY[0x277D84F98];
  v12 = *v0;
  v13 = *(v0 + 8);
  v14 = v1;
  v3 = memcpy(v15, v0 + 10, 0x66FuLL);
  v4 = sub_21453E39C(v3);
  v17 = MEMORY[0x277CC9318];
  *&v16 = v4;
  *(&v16 + 1) = v5;
  sub_213FDC730(&v16, &v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(&v12, 0xD000000000000012, 0x8000000214788260, isUniquelyReferenced_nonNull_native);
  v18 = v2;
  if (v1 == 2)
  {
    sub_2144AEF6C(0xD000000000000018, 0x80000002147882A0, &v12);
    sub_213FB2DF4(&v12, &qword_27C913170, &qword_2146EAB20);
  }

  else
  {
    *&v15[7] = MEMORY[0x277D839B0];
    LOBYTE(v12) = v1 & 1;
    sub_213FDC730(&v12, &v16);
    v7 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(&v16, 0xD000000000000018, 0x80000002147882A0, v7);
    v18 = v2;
  }

  v12 = *v0;
  v13 = *(v0 + 8);
  v14 = v1;
  memcpy(v15, v0 + 10, 0x66FuLL);
  sub_21453E2D8();
  v17 = MEMORY[0x277D83B88];
  *&v16 = v9;
  sub_213FDC730(&v16, &v12);
  v10 = v18;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(&v12, 0xD000000000000012, 0x8000000214788280, v11);
  return v10;
}

uint64_t sub_2145B3440()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_2145B344C(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2145B34AC@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), 0x201uLL);
  memcpy(a1, (v1 + 16), 0x201uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C907A70, &qword_2146F4CB0);
}

void *sub_2145B3510(const void *a1)
{
  memcpy(v4, (v1 + 16), 0x201uLL);
  sub_213FB2DF4(v4, &qword_27C907A70, &qword_2146F4CB0);
  return memcpy((v1 + 16), a1, 0x201uLL);
}

uint64_t sub_2145B3590@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 536), 0x231uLL);
  memcpy(a1, (v1 + 536), 0x231uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C907A88, &qword_2146F4CB8);
}

void *sub_2145B35F4(const void *a1)
{
  memcpy(v4, (v1 + 536), 0x231uLL);
  sub_213FB2DF4(v4, &qword_27C907A88, &qword_2146F4CB8);
  return memcpy((v1 + 536), a1, 0x231uLL);
}

uint64_t sub_2145B3674@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 1104), 0x201uLL);
  memcpy(a1, (v1 + 1104), 0x201uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C907AA0, &qword_2146F4CC0);
}

void *sub_2145B36D8(const void *a1)
{
  memcpy(v4, (v1 + 1104), 0x201uLL);
  sub_213FB2DF4(v4, &qword_27C907AA0, &qword_2146F4CC0);
  return memcpy((v1 + 1104), a1, 0x201uLL);
}

uint64_t sub_2145B3758@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1624);
  v3 = *(v1 + 1632);
  v4 = *(v1 + 1640);
  v5 = *(v1 + 1648);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 1656);
  return sub_21431326C(v2, v3, v4, v5);
}

__n128 sub_2145B377C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v1 + 1656);
  sub_214313220(*(v1 + 1624), *(v1 + 1632), *(v1 + 1640), *(v1 + 1648));
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 1624) = *a1;
  *(v1 + 1640) = v6;
  *(v1 + 1656) = v3;
  return result;
}

uint64_t sub_2145B3804()
{
  v1 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000015;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0x6552657469766E69;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2145B3888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2145B84E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2145B38B0(uint64_t a1)
{
  v2 = sub_2145B3F40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145B38EC(uint64_t a1)
{
  v2 = sub_2145B3F40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145B3928(uint64_t a1)
{
  v2 = sub_2145B3FE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145B3964(uint64_t a1)
{
  v2 = sub_2145B3FE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145B39A0(uint64_t a1)
{
  v2 = sub_2145B4090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145B39DC(uint64_t a1)
{
  v2 = sub_2145B4090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145B3A18(uint64_t a1)
{
  v2 = sub_2145B403C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145B3A54(uint64_t a1)
{
  v2 = sub_2145B403C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145B3A90(uint64_t a1)
{
  v2 = sub_2145B3F94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145B3ACC(uint64_t a1)
{
  v2 = sub_2145B3F94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145B3B08(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915C90, &qword_214761018);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915C98, &qword_214761020);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915CA0, &qword_214761028);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915CA8, &qword_214761030);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915CB0, &qword_214761038);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145B3F40();
  sub_2146DAA28();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_2145B3FE8();
      v24 = v33;
      sub_2146DA288();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_2145B3F94();
      v24 = v36;
      sub_2146DA288();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_2145B403C();
    v24 = v30;
    sub_2146DA288();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_2145B4090();
  sub_2146DA288();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_2145B3F40()
{
  result = qword_27C915CB8;
  if (!qword_27C915CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915CB8);
  }

  return result;
}

unint64_t sub_2145B3F94()
{
  result = qword_27C915CC0;
  if (!qword_27C915CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915CC0);
  }

  return result;
}

unint64_t sub_2145B3FE8()
{
  result = qword_27C915CC8;
  if (!qword_27C915CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915CC8);
  }

  return result;
}

unint64_t sub_2145B403C()
{
  result = qword_27C915CD0;
  if (!qword_27C915CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915CD0);
  }

  return result;
}

unint64_t sub_2145B4090()
{
  result = qword_27C915CD8;
  if (!qword_27C915CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915CD8);
  }

  return result;
}

uint64_t sub_2145B4110()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t sub_2145B4158@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915CE0, &qword_214761040);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915CE8, &qword_214761048);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915CF0, &qword_214761050);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915CF8, &qword_214761058);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915D00, &unk_214761060);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_2145B3F40();
  v21 = v53;
  sub_2146DAA08();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_2146DA238();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_21439DF6C();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_2146D9F58();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v34 = &type metadata for LegacyActivitySharing.ActivitySharingTransportItem;
      sub_2146DA0E8();
      sub_2146D9F28();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_2145B403C();
        v39 = v42;
        sub_2146DA0B8();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_2145B4090();
        v31 = v42;
        sub_2146DA0B8();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_2145B3FE8();
      v38 = v42;
      sub_2146DA0B8();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_2145B3F94();
      v40 = v42;
      sub_2146DA0B8();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_2145B47E4@<X0>(uint64_t a1@<X8>)
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
  return sub_213FB2E54(v8, v7, &qword_27C90A020, &qword_2146F5BE0);
}

__n128 sub_2145B4840(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C90A020, &qword_2146F5BE0);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t sub_2145B48D0()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t sub_2145B48DC(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t sub_2145B490C()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t sub_2145B4918(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t sub_2145B4948()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t sub_2145B4954(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t sub_2145B4984()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t sub_2145B4990(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t sub_2145B49C0()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t sub_2145B49CC(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t sub_2145B49FC()
{
  result = *(v0 + 152);
  v2 = *(v0 + 160);
  return result;
}

uint64_t sub_2145B4A08(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t sub_2145B4A38()
{
  result = *(v0 + 168);
  v2 = *(v0 + 176);
  return result;
}

uint64_t sub_2145B4A44(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t sub_2145B4A74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 184);
  v7 = *(v2 + 192);
  v11 = *(v3 + 216);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 200), *(v3 + 208));

    *(v3 + 200) = a1;
    *(v3 + 208) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2145B4BB8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 200);
  *(v3 + 24) = v5;
  v6 = *(v1 + 208);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21444C9B4;
  }

  return result;
}

void (*sub_2145B4C90(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 192);
  v6 = *(v1 + 200);
  v7 = *(v1 + 208);
  v8 = *(v1 + 216);
  *v4 = *(v1 + 184);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21444CD00;
}

uint64_t sub_2145B4D90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 248);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 240);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2145B4E04(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2145B4EB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 224);
  v7 = *(v2 + 232);
  v11 = *(v3 + 256);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 240), *(v3 + 248));

    *(v3 + 240) = a1;
    *(v3 + 248) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2145B4FF8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 240);
  *(v3 + 24) = v5;
  v6 = *(v1 + 248);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145B50D0;
  }

  return result;
}

void sub_2145B50D0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 224);
    v11 = *(v3 + 232);
    v16 = *(v3 + 256);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 240) = v5;
      *(v12 + 248) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 224);
  v6 = *(v3 + 232);
  v16 = *(v3 + 256);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 240) = v5;
  *(v8 + 248) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_2145B52A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 232);
  v3 = *(a1 + 240);
  v4 = *(a1 + 248);
  v5 = *(a1 + 256);
  *a2 = *(a1 + 224);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2145B52F4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 232);
  v9 = *(a2 + 240);
  v10 = *(a2 + 248);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 224) = v4;
  *(a2 + 232) = v3;
  *(a2 + 240) = v5;
  *(a2 + 248) = v6;
  *(a2 + 256) = v7;
  return result;
}

void (*sub_2145B537C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 232);
  v6 = *(v1 + 240);
  v7 = *(v1 + 248);
  v8 = *(v1 + 256);
  *v4 = *(v1 + 224);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145B541C;
}

void sub_2145B541C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 232);
  v9 = *(v3 + 240);
  v11 = *(v3 + 248);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 224) = v5;
    *(v3 + 232) = v4;
    *(v3 + 240) = v7;
    *(v3 + 248) = v6;
    *(v3 + 256) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 232);

    sub_213FDC6D0(v9, v11);
    *(v3 + 224) = v5;
    *(v3 + 232) = v4;
    *(v3 + 240) = v7;
    *(v3 + 248) = v6;
    *(v3 + 256) = v8;
  }

  free(v2);
}

uint64_t sub_2145B54FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 288);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 280);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2145B5570(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2145B5620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 264);
  v7 = *(v2 + 272);
  v11 = *(v3 + 296);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 280), *(v3 + 288));

    *(v3 + 280) = a1;
    *(v3 + 288) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2145B5764(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 280);
  *(v3 + 24) = v5;
  v6 = *(v1 + 288);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145B583C;
  }

  return result;
}

void sub_2145B583C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 264);
    v11 = *(v3 + 272);
    v16 = *(v3 + 296);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 280) = v5;
      *(v12 + 288) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 264);
  v6 = *(v3 + 272);
  v16 = *(v3 + 296);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 280) = v5;
  *(v8 + 288) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_2145B5A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 272);
  v3 = *(a1 + 280);
  v4 = *(a1 + 288);
  v5 = *(a1 + 296);
  *a2 = *(a1 + 264);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2145B5A60(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 272);
  v9 = *(a2 + 280);
  v10 = *(a2 + 288);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 264) = v4;
  *(a2 + 272) = v3;
  *(a2 + 280) = v5;
  *(a2 + 288) = v6;
  *(a2 + 296) = v7;
  return result;
}

void (*sub_2145B5AE8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 272);
  v6 = *(v1 + 280);
  v7 = *(v1 + 288);
  v8 = *(v1 + 296);
  *v4 = *(v1 + 264);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145B5B88;
}

void sub_2145B5B88(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 272);
  v9 = *(v3 + 280);
  v11 = *(v3 + 288);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 264) = v5;
    *(v3 + 272) = v4;
    *(v3 + 280) = v7;
    *(v3 + 288) = v6;
    *(v3 + 296) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 272);

    sub_213FDC6D0(v9, v11);
    *(v3 + 264) = v5;
    *(v3 + 272) = v4;
    *(v3 + 280) = v7;
    *(v3 + 288) = v6;
    *(v3 + 296) = v8;
  }

  free(v2);
}

uint64_t sub_2145B5C68()
{
  result = *(v0 + 304);
  v2 = *(v0 + 312);
  return result;
}

uint64_t sub_2145B5C74(uint64_t result, char a2)
{
  *(v2 + 304) = result;
  *(v2 + 312) = a2 & 1;
  return result;
}

uint64_t sub_2145B5CA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 344);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 336);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2145B5D18(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2145B5DC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 320);
  v7 = *(v2 + 328);
  v11 = *(v3 + 352);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 336), *(v3 + 344));

    *(v3 + 336) = a1;
    *(v3 + 344) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2145B5F0C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 336);
  *(v3 + 24) = v5;
  v6 = *(v1 + 344);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145B5FE4;
  }

  return result;
}

void sub_2145B5FE4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 320);
    v11 = *(v3 + 328);
    v16 = *(v3 + 352);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 336) = v5;
      *(v12 + 344) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 320);
  v6 = *(v3 + 328);
  v16 = *(v3 + 352);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 336) = v5;
  *(v8 + 344) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_2145B61B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 328);
  v3 = *(a1 + 336);
  v4 = *(a1 + 344);
  v5 = *(a1 + 352);
  *a2 = *(a1 + 320);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2145B6208(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 328);
  v9 = *(a2 + 336);
  v10 = *(a2 + 344);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 320) = v4;
  *(a2 + 328) = v3;
  *(a2 + 336) = v5;
  *(a2 + 344) = v6;
  *(a2 + 352) = v7;
  return result;
}

void (*sub_2145B6290(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 328);
  v6 = *(v1 + 336);
  v7 = *(v1 + 344);
  v8 = *(v1 + 352);
  *v4 = *(v1 + 320);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145B6330;
}

void sub_2145B6330(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 328);
  v9 = *(v3 + 336);
  v11 = *(v3 + 344);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 320) = v5;
    *(v3 + 328) = v4;
    *(v3 + 336) = v7;
    *(v3 + 344) = v6;
    *(v3 + 352) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 328);

    sub_213FDC6D0(v9, v11);
    *(v3 + 320) = v5;
    *(v3 + 328) = v4;
    *(v3 + 336) = v7;
    *(v3 + 344) = v6;
    *(v3 + 352) = v8;
  }

  free(v2);
}

void (*sub_2145B644C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21439BAB0;
  }

  return result;
}

void (*sub_2145B6524(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21439BB54;
}

uint64_t sub_2145B65C4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_2145B65F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_2145B664C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_2145B667C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_2145B66D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 72);
  v7 = *(v2 + 80);
  v11 = *(v3 + 104);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 88), *(v3 + 96));

    *(v3 + 88) = a1;
    *(v3 + 96) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2145B6818(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 88);
  *(v3 + 24) = v5;
  v6 = *(v1 + 96);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214031324;
  }

  return result;
}

void (*sub_2145B68F0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  *v4 = *(v1 + 72);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214031730;
}

uint64_t sub_2145B69B0(uint64_t result)
{
  *(v1 + 108) = result;
  *(v1 + 112) = BYTE4(result) & 1;
  return result;
}

void *sub_2145B69E4(const void *a1)
{
  memcpy(__dst, (v1 + 120), 0x189uLL);
  sub_213FB2DF4(__dst, &qword_27C909E50, &unk_2146F5B30);
  return memcpy((v1 + 120), a1, 0x189uLL);
}

uint64_t sub_2145B6A64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v11 = *(v3 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 16), *(v3 + 24));

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2145B6BA8(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21439DFB0;
  }

  return result;
}

void (*sub_2145B6C80(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21439DFB4;
}

uint64_t sub_2145B6D40(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2145B6D70()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_2145B6DA0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_2145B6DF8@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v9 = v1[6];
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 121);
  v3 = *(v10 + 9);
  v4 = v1[5];
  v8[0] = v1[4];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_213FB2E54(v8, &v7, &qword_27C909E68, &qword_214761070);
}

__n128 sub_2145B6E54(uint64_t a1)
{
  v3 = v1[7];
  v7[2] = v1[6];
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 121);
  v4 = v1[5];
  v7[0] = v1[4];
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C909E68, &qword_214761070);
  v5 = *(a1 + 48);
  v1[6] = *(a1 + 32);
  v1[7] = v5;
  *(v1 + 121) = *(a1 + 57);
  result = *(a1 + 16);
  v1[4] = *a1;
  v1[5] = result;
  return result;
}

uint64_t sub_2145B6EE4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t sub_2145B6F14(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152);

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t sub_2145B6F8C(uint64_t result)
{
  *(v1 + 160) = result;
  *(v1 + 164) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2145B6FBC@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 168), 0x189uLL);
  memcpy(a1, (v1 + 168), 0x189uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C909E50, &unk_2146F5B30);
}

void *sub_2145B7020(const void *a1)
{
  memcpy(__dst, (v1 + 168), 0x189uLL);
  sub_213FB2DF4(__dst, &qword_27C909E50, &unk_2146F5B30);
  return memcpy((v1 + 168), a1, 0x189uLL);
}

void (*sub_2145B70A0(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21439DFB0;
  }

  return result;
}

void (*sub_2145B7178(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21439DFB4;
}

uint64_t sub_2145B7218@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 88);
  v9 = *(v1 + 72);
  v10[0] = v3;
  *(v10 + 9) = *(v1 + 97);
  v4 = *(v10 + 9);
  v8[0] = *(v1 + 40);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  *(a1 + 57) = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_213FB2E54(v8, &v7, &qword_27C909E68, &qword_214761070);
}

__n128 sub_2145B727C(__int128 *a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 88);
  v8[2] = *(v1 + 72);
  v9[0] = v4;
  *(v9 + 9) = *(v1 + 97);
  v8[0] = *(v1 + 40);
  v8[1] = v3;
  sub_213FB2DF4(v8, &qword_27C909E68, &qword_214761070);
  v5 = *a1;
  *(v1 + 56) = a1[1];
  v6 = a1[3];
  *(v1 + 72) = a1[2];
  *(v1 + 88) = v6;
  result = *(a1 + 57);
  *(v1 + 97) = result;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_2145B731C@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 120), 0x189uLL);
  memcpy(a1, (v1 + 120), 0x189uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C909E50, &unk_2146F5B30);
}

uint64_t sub_2145B73A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v11 = *(v3 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 16), *(v3 + 24));

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2145B74E4(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21439DFB0;
  }

  return result;
}

uint64_t sub_2145B75BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);

  sub_213FDC6D0(v5, v6);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;

  return sub_213FDC9D0(v8, v9);
}

void (*sub_2145B7634(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21439DFB4;
}

uint64_t sub_2145B76D4()
{
  sub_2145B3138();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2145B7728()
{
  sub_2145B3138();
  v0 = sub_2146D9468();

  return v0;
}

unint64_t sub_2145B7780()
{
  result = qword_27C915D08;
  if (!qword_27C915D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915D08);
  }

  return result;
}

unint64_t sub_2145B7800()
{
  result = qword_27C915D10;
  if (!qword_27C915D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915D10);
  }

  return result;
}

unint64_t sub_2145B7854()
{
  result = qword_27C915D18;
  if (!qword_27C915D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915D18);
  }

  return result;
}

unint64_t sub_2145B78D4()
{
  result = qword_27C915D20;
  if (!qword_27C915D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915D20);
  }

  return result;
}

unint64_t sub_2145B7928()
{
  result = qword_27C915D28;
  if (!qword_27C915D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915D28);
  }

  return result;
}

uint64_t sub_2145B7A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor28IDSActivitySharingInvitationV08ActivitydF8SnapshotVSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor28IDSActivitySharingInvitationV19ActivityDataPreviewVSg(uint64_t a1)
{
  v1 = *(a1 + 368);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2145B7ACC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1657))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2145B7B28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 1656) = 0;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1657) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1657) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_2145B7D5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 354))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 184);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2145B7DA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 354) = 1;
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
      *(result + 184) = (a2 - 1);
      return result;
    }

    *(result + 354) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145B7E6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 561))
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

uint64_t sub_2145B7EB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 552) = 0;
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
    *(result + 560) = 0;
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
      *(result + 561) = 1;
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

    *(result + 561) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145B7F9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 513))
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

uint64_t sub_2145B7FE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 504) = 0;
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
    *(result + 512) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 513) = 1;
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

    *(result + 513) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2145B8120()
{
  result = qword_27C915D30;
  if (!qword_27C915D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915D30);
  }

  return result;
}

unint64_t sub_2145B8178()
{
  result = qword_27C915D38;
  if (!qword_27C915D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915D38);
  }

  return result;
}

unint64_t sub_2145B81D0()
{
  result = qword_27C915D40;
  if (!qword_27C915D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915D40);
  }

  return result;
}

unint64_t sub_2145B8228()
{
  result = qword_27C915D48;
  if (!qword_27C915D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915D48);
  }

  return result;
}

unint64_t sub_2145B8280()
{
  result = qword_27C915D50;
  if (!qword_27C915D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915D50);
  }

  return result;
}

unint64_t sub_2145B82D8()
{
  result = qword_27C915D58;
  if (!qword_27C915D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915D58);
  }

  return result;
}

unint64_t sub_2145B8330()
{
  result = qword_27C915D60;
  if (!qword_27C915D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915D60);
  }

  return result;
}

unint64_t sub_2145B8388()
{
  result = qword_27C915D68;
  if (!qword_27C915D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915D68);
  }

  return result;
}

unint64_t sub_2145B83E0()
{
  result = qword_27C915D70;
  if (!qword_27C915D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915D70);
  }

  return result;
}

unint64_t sub_2145B8438()
{
  result = qword_27C915D78;
  if (!qword_27C915D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915D78);
  }

  return result;
}

unint64_t sub_2145B8490()
{
  result = qword_27C915D80;
  if (!qword_27C915D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915D80);
  }

  return result;
}

uint64_t sub_2145B84E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6552657469766E69 && a2 == 0xED00007473657571;
  if (v3 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6552657469766E69 && a2 == 0xEE0065736E6F7073 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000214795060 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000214795080 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

unint64_t sub_2145B86A4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FDC8D0;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21438EDCC;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21408E9E0;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140433DC(inited, a1);
}

uint64_t sub_2145B8808@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_2145B8854(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);

  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  return result;
}

uint64_t sub_2145B88AC()
{
  if (*(v0 + 40))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145B891C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return sub_214031CA0(v2);
}

__n128 sub_2145B8930(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = v1[1];
  v4 = v1[2];
  sub_214031CE0(*v1);
  result = v6;
  *v1 = v6;
  v1[2] = v2;
  return result;
}

uint64_t sub_2145B8998@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145B8A00(uint64_t *a1)
{
  sub_2140325F8(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2145B8AA8(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v10 = *(v2 + 48);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 40);

    *(v2 + 40) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145B8BE4(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 40);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2145B8C7C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145B8C7C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v13 = *a1;
    v9 = *(v4 + 24);
    v10 = *(v4 + 32);
    v14 = *(v4 + 48);
    v15 = 0x6E776F6E6B6E753CLL;
    v16 = 0xE90000000000003ELL;
    v17 = 0xD00000000000001CLL;
    v18 = 0x800000021478A360;
    if (v9(&v13, &v14, &v15))
    {
      v11 = a1[2];

      *(v4 + 40) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v13 = *a1;
  v6 = *(v4 + 24);
  v5 = *(v4 + 32);
  v14 = *(v4 + 48);
  v15 = 0x6E776F6E6B6E753CLL;
  v16 = 0xE90000000000003ELL;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;

  if ((v6(&v13, &v14, &v15) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v12 = 0x6E776F6E6B6E753CLL;
    v12[1] = 0xE90000000000003ELL;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v7 = a1[2];

  *(v4 + 40) = v3;
}

uint64_t sub_2145B8E5C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);

  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  return result;
}

void (*sub_2145B8ED0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *v4 = *(v1 + 24);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2145B8F68;
}

void sub_2145B8F68(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v9 = *(v3 + 32);
  v8 = *(v3 + 40);
  if (a2)
  {
    v10 = (*a1)[2];

    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    *(v3 + 48) = v7;
    v11 = v2[1];
    v12 = v2[2];
  }

  else
  {
    v13 = *(v3 + 32);

    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    *(v3 + 48) = v7;
  }

  free(v2);
}

uint64_t sub_2145B9030(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

unint64_t sub_2145B907C(uint64_t a1)
{
  *(a1 + 8) = sub_214322670();
  result = sub_214322460();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2145B90C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2145B9108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145B9168(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  v5 = (a2 + 32);
  v6 = *(a2 + 16) + 1;
LABEL_3:
  if (v4 >= *(v2 + 16))
  {
    __break(1u);
LABEL_14:
    swift_once();
  }

  else
  {
    v7 = v4 + 1;
    sub_214053840(v2 + 32 + 40 * v4, v22);
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    DynamicType = swift_getDynamicType();
    v9 = v6;
    v10 = v5;
    while (--v9)
    {
      v11 = *v10;
      v10 += 2;
      if (v11 == DynamicType)
      {
        __swift_destroy_boxed_opaque_existential_1(v22);
        v4 = v7;
        if (v7 != v3)
        {
          goto LABEL_3;
        }

        return 1;
      }
    }

    if (qword_280B34F40[0] != -1)
    {
      goto LABEL_14;
    }
  }

  v13 = sub_2146D9208();
  __swift_project_value_buffer(v13, qword_280B34D98);
  v14 = sub_2146D91E8();
  v15 = sub_2146D9BA8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    v18 = sub_2146DAA78();
    v20 = sub_2144AEA38(v18, v19, &v21);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_213FAF000, v14, v15, "Attributed String contains an attribute that is not allowed: components don't match up: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x216056AC0](v17, -1, -1);
    MEMORY[0x216056AC0](v16, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return 0;
}

uint64_t sub_2145B935C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  return sub_2145B93C0(sub_2145B9F50);
}

uint64_t sub_2145B93C0(uint64_t (*a1)(void))
{
  if (!*(v1 + 8))
  {
    return a1();
  }

  MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;

  sub_2146A53EC(sub_2145B9F78, v3, v5);
}

void *sub_2145B9488@<X0>(void *result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = 0;
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_2145B9498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *(a4 - 8);
  v5[6] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *(v4 + 8);
  v5[7] = v8;
  v5[8] = v9;

  return MEMORY[0x2822009F8](sub_2145B9560, 0, 0);
}

uint64_t sub_2145B9560()
{
  if (v0[8])
  {
    sub_2146A5650();
    v9 = (v0[3] + *v0[3]);
    v4 = *(v0[3] + 4);
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_2145B9874;
    v6 = v0[7];
    v7 = v0[4];
  }

  else
  {
    v9 = (v0[3] + *v0[3]);
    v1 = *(v0[3] + 4);
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_2145B975C;
    v3 = v0[4];
    v6 = v0[2];
  }

  return v9(v6);
}

uint64_t sub_2145B975C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 56);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2145B9874()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_2145B9C34;
  }

  else
  {
    v3 = sub_2145B9988;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2145B9988()
{
  v1 = v0[8];
  if (*(v1 + 40))
  {
    sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    sub_2146D91D8();
    goto LABEL_7;
  }

  v2 = *(v1 + 32);
  v3 = sandbox_extension_release();
  if (v3 == sub_2146D93B8())
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;
LABEL_7:
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[2];

    (*(v7 + 32))(v8, v5, v6);
    v9 = v0[7];

    v10 = v0[1];
    goto LABEL_17;
  }

  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];
  v14 = MEMORY[0x2160542A0]();
  sub_21408FA04();
  v15 = swift_allocError();
  *v16 = v14;
  *(v16 + 4) = 0;
  swift_willThrow();
  (*(v12 + 8))(v11, v13);
  v17 = v0[8];
  if (*(v17 + 40))
  {
    sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    sub_2146D91D8();
  }

  else
  {
    v18 = *(v17 + 32);
    v19 = sandbox_extension_release();
    if (v19 != sub_2146D93B8())
    {
      v20 = MEMORY[0x2160542A0]();
      swift_allocError();
      *v21 = v20;
      *(v21 + 4) = 0;
      swift_willThrow();

      goto LABEL_16;
    }

    *(v17 + 32) = 0;
    *(v17 + 40) = 1;
  }

  swift_willThrow();
LABEL_16:
  v22 = v0[8];

  v23 = v0[7];

  v10 = v0[1];
LABEL_17:

  return v10();
}

uint64_t sub_2145B9C34()
{
  v1 = v0[11];
  v2 = v0[8];
  if (*(v2 + 40))
  {
    sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    sub_2146D91D8();
    goto LABEL_7;
  }

  v3 = *(v2 + 32);
  v4 = sandbox_extension_release();
  if (v4 == sub_2146D93B8())
  {
    *(v2 + 32) = 0;
    *(v2 + 40) = 1;
LABEL_7:
    swift_willThrow();
    goto LABEL_9;
  }

  v5 = MEMORY[0x2160542A0]();
  sub_21408FA04();
  swift_allocError();
  *v6 = v5;
  *(v6 + 4) = 0;
  swift_willThrow();

LABEL_9:
  v7 = v0[8];

  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2145B9DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v19 = a5;
  v18 = a3;
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 47;
  v24 = 0xE100000000000000;
  v25 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v13 = sub_2146D9558();
  v15 = v14;

  MEMORY[0x2160545D0](v13, v15);

  sub_2146D8888();

  v20 = a4;
  v21 = a2;
  v22 = v18;
  sub_2146D88D8();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2145B9F50@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_2145B9DA0(*(v1 + 24), *(v1 + 48), *(v1 + 56), *(v1 + 16), a1);
}

uint64_t sub_2145B9F78()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_2145B9FA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x80000002147884E0;
  if (v2 == 1)
  {
    v5 = 0x80000002147884E0;
  }

  else
  {
    v3 = 0x6974697257726F66;
    v5 = 0xEA0000000000676ELL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1752457584;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x6974697257726F66;
    v4 = 0xEA0000000000676ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1752457584;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2145BA09C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145BA140()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2145BA1D0()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145BA270@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2145BAD58();
  *a2 = result;
  return result;
}

void sub_2145BA2A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x80000002147884E0;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x6974697257726F66;
    v4 = 0xEA0000000000676ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1752457584;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2145BA300()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6974697257726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1752457584;
  }
}

uint64_t sub_2145BA35C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2145BAD58();
  *a1 = result;
  return result;
}

uint64_t sub_2145BA384(uint64_t a1)
{
  v2 = sub_2145BA678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145BA3C0(uint64_t a1)
{
  v2 = sub_2145BA678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145BA3FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915D88, &qword_214762A90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145BA678();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  sub_2145BA6CC();
  sub_2146DA1C8();
  v11 = v16;
  LOBYTE(v16) = 2;
  v17 = sub_2146DA178() & 1;
  type metadata accessor for SandboxExtension();
  v18 = 1;
  sub_2145BABDC(&qword_280B30528);
  sub_2146DA148();
  (*(v6 + 8))(v9, v5);
  v13 = v16;
  v14 = v17;
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2145BA678()
{
  result = qword_280B34D90;
  if (!qword_280B34D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34D90);
  }

  return result;
}

unint64_t sub_2145BA6CC()
{
  result = qword_280B2FF00;
  if (!qword_280B2FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FF00);
  }

  return result;
}

uint64_t sub_2145BA720(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915D90, &qword_214762A98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = *v1;
  v28 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145BA678();
  sub_2146DAA28();
  v25[0] = v9;
  LOBYTE(v24[0]) = 0;
  sub_2145BAB58();
  swift_bridgeObjectRetain_n();
  sub_2146DA388();
  if (v2)
  {

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v12 = v5;

    LOBYTE(v25[0]) = 2;
    v13 = v28;
    sub_2146DA338();
    sub_214053840(a1, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915D98, &qword_214762AA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915DA0, &qword_214762AA8);
    if (swift_dynamicCast())
    {
      sub_213FB77C8(&v21, v25);
      v14 = v26;
      v15 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v15 + 8))(&v21, v14, v15);
      if (*(&v22 + 1))
      {
        sub_213FB77C8(&v21, v24);
        v16 = *__swift_project_boxed_opaque_existential_1(v24, v24[3]);
        v29 = v13;
        v20 = v9;
        v17 = v16[6];
        v18 = v16[7];
        __swift_project_boxed_opaque_existential_1(v16 + 3, v17);
        (*(v18 + 8))(&v21, v17, v18);
        type metadata accessor for SandboxExtension();
        swift_allocObject();
        *&v21 = sub_2146A58F4(&v29, &v20);
        LOBYTE(v20) = 1;
        sub_2145BABDC(&qword_280B34CC0);
        sub_2146DA388();
        (*(v12 + 8))(v8, v4);

        __swift_destroy_boxed_opaque_existential_1(v24);
      }

      else
      {

        (*(v12 + 8))(v8, v4);
        sub_213FB2DF4(&v21, &unk_27C904F50, &unk_2146F08E0);
      }

      return __swift_destroy_boxed_opaque_existential_1(v25);
    }

    else
    {

      (*(v12 + 8))(v8, v4);
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      return sub_213FB2DF4(&v21, &qword_27C915DA8, &qword_214762AB0);
    }
  }
}

unint64_t sub_2145BAB58()
{
  result = qword_280B34CA8;
  if (!qword_280B34CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34CA8);
  }

  return result;
}

uint64_t sub_2145BABDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SandboxExtension();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2145BAC54()
{
  result = qword_27C915DB0[0];
  if (!qword_27C915DB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C915DB0);
  }

  return result;
}

unint64_t sub_2145BACAC()
{
  result = qword_280B34F38;
  if (!qword_280B34F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34F38);
  }

  return result;
}

unint64_t sub_2145BAD04()
{
  result = qword_280B34D88;
  if (!qword_280B34D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34D88);
  }

  return result;
}

uint64_t sub_2145BAD58()
{
  v0 = sub_2146DA098();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2145BADA4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_2145BADCC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for SessionSchemaResult();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_2145BAE60(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2145BAED8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_2145BB04C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
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

      else if (v12)
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
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

unint64_t sub_2145BB2A0()
{
  result = qword_27C915E38;
  if (!qword_27C915E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915E38);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D86D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D86D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2145BB4A8()
{
  result = sub_2146D86D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2145BB518@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for SwiftRegexValidator();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903158 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = __swift_project_value_buffer(v5, qword_27CA19DD8);
  v7 = *(*(v5 - 8) + 16);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_2144A041C(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v8 + 16) = sub_2144A066C;
  *(v8 + 24) = v10;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27CA19F60);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v5);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  sub_2144A041C(v4, v13 + v9);
  *(v12 + 16) = sub_2144A066C;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146EAEB0;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21439DF60;
  *(v15 + 24) = v8;
  *(v14 + 32) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21439DF60;
  *(v16 + 24) = v12;
  *(v14 + 40) = v16;
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v17 + 16) = sub_21439DF94;
  *(v17 + 24) = v18;
  v19 = inited;
  v20 = v24;
  *(inited + 32) = v17;
  return sub_214042B80(v19, v20);
}

uint64_t sub_2145BB854@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2145BB8A0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145BB8FC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_2145BB978@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for SwiftRegexValidator();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v28 = xmmword_2146E9BF0;
  v31 = inited;
  *(inited + 16) = xmmword_2146E9BF0;
  v29 = v5;
  v30 = swift_initStackObject();
  *(v30 + 16) = v28;
  if (qword_27C903158 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v8 = __swift_project_value_buffer(v7, qword_27CA19DD8);
  v9 = *(*(v7 - 8) + 16);
  v9(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v10 = swift_allocObject();
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  sub_2144A041C(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *(v10 + 16) = sub_2144A066C;
  *(v10 + 24) = v12;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_27CA19F60);
  v9(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v7);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  sub_2144A041C(v4, v15 + v11);
  *(v14 + 16) = sub_2144A066C;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146EAEB0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_21439DF60;
  *(v17 + 24) = v10;
  *(v16 + 32) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_21439DF60;
  *(v18 + 24) = v14;
  *(v16 + 40) = v18;
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v19 + 16) = sub_21439DF94;
  *(v19 + 24) = v20;
  v21 = v30;
  *(v30 + 32) = v19;
  v22 = sub_2142E0070(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v23 + 16) = sub_214032610;
  *(v23 + 24) = v24;
  v25 = v31;
  v26 = v32;
  *(v31 + 32) = v23;
  return sub_214042A28(v25, v26);
}

uint64_t sub_2145BBD34@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145BBD8C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145BBDF4()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

unint64_t sub_2145BBE74@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for SwiftRegexValidator();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v28 = xmmword_2146E9BF0;
  v31 = inited;
  *(inited + 16) = xmmword_2146E9BF0;
  v29 = v5;
  v30 = swift_initStackObject();
  *(v30 + 16) = v28;
  if (qword_27C903158 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v8 = __swift_project_value_buffer(v7, qword_27CA19DD8);
  v9 = *(*(v7 - 8) + 16);
  v9(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v10 = swift_allocObject();
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  sub_2144A041C(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *(v10 + 16) = sub_214302808;
  *(v10 + 24) = v12;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_27CA19F60);
  v9(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v7);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  sub_2144A041C(v4, v15 + v11);
  *(v14 + 16) = sub_2144A066C;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146EAEB0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_21439DF28;
  *(v17 + 24) = v10;
  *(v16 + 32) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_21439DF60;
  *(v18 + 24) = v14;
  *(v16 + 40) = v18;
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v19 + 16) = sub_21439DF54;
  *(v19 + 24) = v20;
  v21 = v30;
  *(v30 + 32) = v19;
  v22 = sub_2142E0070(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v23 + 16) = sub_21403254C;
  *(v23 + 24) = v24;
  v25 = v31;
  v26 = v32;
  *(v31 + 32) = v23;
  return sub_214042A28(v25, v26);
}