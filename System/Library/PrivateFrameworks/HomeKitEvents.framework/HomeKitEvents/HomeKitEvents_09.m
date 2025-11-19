char *sub_2541EFB70(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_25424D268();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_25424D298();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_25424D288();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2541EFC24(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
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

  result = sub_2541EFD5C(v7, v8, a1);
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2541EFD5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_25424D268();
  v7 = result;
  if (result)
  {
    result = sub_25424D298();
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

  v10 = sub_25424D288();
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

uint64_t sub_2541EFE04(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    a1 = sub_25424D268();
    if (a1)
    {
      a1 = sub_25424D298();
      if (__OFSUB__(v3, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v4, v3))
    {
LABEL_13:
      sub_25424D288();
      goto LABEL_14;
    }

    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_25424D268() || !__OFSUB__(v5, sub_25424D298()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_14:
  result = sub_25424D488();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2541EFFDC(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      v2 = sub_25424D2B8();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_25424D2A8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25424D468();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2541F0080(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  return sub_2541EE740(a1, a2, *(v2 + 32));
}

size_t sub_2541F00A8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = *(v2 + 24);
  return sub_2541EE7F4(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64));
}

HomeKitEvents::EnergyKit::LoadLevel __swiftcall EnergyKit.LoadLevel.init(_:)(HomeKitEvents::EnergyKit::LoadLevel result)
{
  if (result.rawValue > 0x64)
  {
    __break(1u);
  }

  else
  {
    v1->rawValue = result.rawValue;
  }

  return result;
}

HomeKitEvents::EnergyKit::Milliwatts __swiftcall EnergyKit.Milliwatts.init(_:)(HomeKitEvents::EnergyKit::Milliwatts result)
{
  if (result.rawValue < 0)
  {
    __break(1u);
  }

  else
  {
    v1->rawValue = result.rawValue;
  }

  return result;
}

unint64_t sub_2541F0108@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if (result > 0x64)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t *sub_2541F011C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result < 0)
  {
    goto LABEL_4;
  }

  v3 = *result;
  if (v2 > 0x64)
  {
    __break(1u);
LABEL_4:
    v3 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v2 < 0;
  return result;
}

uint64_t EnergyKit.RawRepresentablePositiveInt.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1 < 0)
  {
    v6 = 1;
  }

  else
  {
    (*(a3 + 32))(a4);
    v6 = 0;
  }

  v7 = *(*(a2 - 8) + 56);

  return v7(a4, v6, 1, a2);
}

uint64_t sub_2541F0204@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EC48();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(&v11, v13);
    v6 = sub_25424EAC8();
    __swift_destroy_boxed_opaque_existential_1(&v11);
    if (v6 < 0)
    {
      v7 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_25424E688();

      v11 = 0xD000000000000034;
      v12 = 0x80000002542514B0;
      v14 = v6;
      v8 = sub_25424EA58();
      MEMORY[0x259C05CA0](v8);

      sub_25424E6F8();
      swift_allocError();
      static DecodingError.dataCorruptedError<A>(_:_:)(v9);

      swift_willThrow();
    }

    else
    {
      *a2 = v6;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2541F0394@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EC48();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(&v11, v13);
    v6 = sub_25424EAC8();
    __swift_destroy_boxed_opaque_existential_1(&v11);
    if (v6 < 0)
    {
      v7 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_25424E688();

      v11 = 0xD000000000000038;
      v12 = 0x8000000254251470;
      v14 = v6;
      v8 = sub_25424EA58();
      MEMORY[0x259C05CA0](v8);

      sub_25424E6F8();
      swift_allocError();
      static DecodingError.dataCorruptedError<A>(_:_:)(v9);

      swift_willThrow();
    }

    else
    {
      *a2 = v6;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2541F0524@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EC48();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(&v11, v13);
    v6 = sub_25424EAC8();
    __swift_destroy_boxed_opaque_existential_1(&v11);
    if (v6 < 0)
    {
      v7 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_25424E688();

      v11 = 0xD000000000000031;
      v12 = 0x8000000254251430;
      v14 = v6;
      v8 = sub_25424EA58();
      MEMORY[0x259C05CA0](v8);

      sub_25424E6F8();
      swift_allocError();
      static DecodingError.dataCorruptedError<A>(_:_:)(v9);

      swift_willThrow();
    }

    else
    {
      *a2 = v6;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EnergyKit.RawRepresentablePositiveInt.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v27 = a3;
  v7 = sub_25424E598();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = a1[4];
  v13 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EC48();
  if (!v4)
  {
    v24 = v8;
    v25 = v11;
    v23 = v7;
    __swift_project_boxed_opaque_existential_1(&v28, v30);
    v14 = sub_25424EAC8();
    __swift_destroy_boxed_opaque_existential_1(&v28);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v28 = v14;
      v15 = *(v27 + 24);
      v16 = v25;
      sub_25424DEE8();
      v17 = *(a2 - 8);
      if ((*(v17 + 48))(v16, 1, a2) != 1)
      {
        (*(v17 + 32))(v26, v16, a2);
        return __swift_destroy_boxed_opaque_existential_1(v13);
      }

      (*(v24 + 8))(v16, v23);
    }

    v18 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_25424E688();

    v28 = 0xD000000000000012;
    v29 = 0x80000002542503A0;
    v19 = sub_25424ECB8();
    MEMORY[0x259C05CA0](v19);

    MEMORY[0x259C05CA0](0x6E69206D6F726620, 0xEE002064696C6176);
    MEMORY[0x259C05CA0](7630409, 0xE300000000000000);
    MEMORY[0x259C05CA0](0x2065756C617620, 0xE700000000000000);
    v31 = v14;
    v20 = sub_25424EA58();
    MEMORY[0x259C05CA0](v20);

    sub_25424E6F8();
    swift_allocError();
    static DecodingError.dataCorruptedError<A>(_:_:)(v21);

    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_2541F0AA4()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  return sub_25424EC28();
}

uint64_t sub_2541F0AEC()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  return sub_25424EC28();
}

uint64_t EnergyKit.GridCleanliness.init(clean:reduce:avoid:unknown:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = sub_25424E598();
  v9 = *(*(v8 - 8) + 32);
  v9(a5, a1, v8);
  v10 = type metadata accessor for EnergyKit.GridCleanliness();
  v9(a5 + v10[13], a2, v8);
  v9(a5 + v10[14], a3, v8);
  return (v9)(a5 + v10[15], a4, v8);
}

BOOL static EnergyKit.GridCleanliness.== infix(_:_:)(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v100 = a6;
  v93 = a4;
  v94 = a5;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v99 = &v83[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_25424E598();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v87 = &v83[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v90 = &v83[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v92 = &v83[-v20];
  MEMORY[0x28223BE20](v19);
  v22 = &v83[-v21];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v101 = *(TupleTypeMetadata2 - 8);
  v24 = *(v101 + 64);
  v25 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v88 = &v83[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v91 = &v83[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v95 = &v83[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v83[-v32];
  v102 = v13;
  v103 = v31;
  v34 = *(v31 + 48);
  v35 = *(v13 + 16);
  v97 = a1;
  v36 = a1;
  v37 = v35;
  v35(&v83[-v32], v36, v12);
  v98 = a2;
  v35(&v33[v34], a2, v12);
  v38 = *(v9 + 48);
  v39 = v38(v33, 1, a3);
  v96 = v38;
  if (v39 == 1)
  {
    if (v38(&v33[v34], 1, a3) == 1)
    {
      v86 = v9;
      v85 = *(v102 + 8);
      v85(v33, v12);
      v40 = v100;
      goto LABEL_8;
    }

LABEL_6:
    (*(v101 + 8))(v33, v103);
    return 0;
  }

  v37(v22, v33, v12);
  if (v38(&v33[v34], 1, a3) == 1)
  {
    (*(v9 + 8))(v22, a3);
    goto LABEL_6;
  }

  v41 = &v33[v34];
  v42 = v99;
  (*(v9 + 32))(v99, v41, a3);
  v89 = v37;
  v40 = v100;
  v43 = *(v100 + 8);
  v84 = sub_25424DC98();
  v86 = v9;
  v44 = *(v9 + 8);
  v37 = v89;
  v44(v42, a3);
  v44(v22, a3);
  v85 = *(v102 + 8);
  v85(v33, v12);
  if ((v84 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v104 = a3;
  v105 = v93;
  v106 = v94;
  v107 = v40;
  v94 = type metadata accessor for EnergyKit.GridCleanliness();
  v45 = v94[13];
  v46 = *(v103 + 48);
  v47 = v95;
  v37(v95, &v97[v45], v12);
  v37(&v47[v46], &v98[v45], v12);
  v48 = v96;
  v49 = v96(v47, 1, a3);
  v89 = v37;
  if (v49 == 1)
  {
    v50 = v48(&v47[v46], 1, a3);
    v51 = v99;
    if (v50 != 1)
    {
      goto LABEL_19;
    }

    v85(v47, v12);
  }

  else
  {
    v52 = v92;
    v37(v92, v47, v12);
    v53 = v48(&v47[v46], 1, a3);
    v54 = v86;
    v51 = v99;
    if (v53 == 1)
    {
      (*(v86 + 8))(v52, a3);
      goto LABEL_19;
    }

    (*(v86 + 32))(v99, &v47[v46], a3);
    v55 = *(v100 + 8);
    LODWORD(v93) = sub_25424DC98();
    v56 = *(v54 + 8);
    v56(v51, a3);
    v56(v52, a3);
    v85(v47, v12);
    if ((v93 & 1) == 0)
    {
      return 0;
    }
  }

  v57 = v94[14];
  v58 = *(v103 + 48);
  v47 = v91;
  v59 = v89;
  v89(v91, &v97[v57], v12);
  v59(&v47[v58], &v98[v57], v12);
  if (v48(v47, 1, a3) != 1)
  {
    v60 = v47;
    v61 = v48;
    v62 = v90;
    v59(v90, v60, v12);
    v63 = v60;
    v64 = v61(&v60[v58], 1, a3);
    v65 = v86;
    if (v64 != 1)
    {
      (*(v86 + 32))(v51, &v63[v58], a3);
      v67 = *(v100 + 8);
      v68 = sub_25424DC98();
      v69 = *(v65 + 8);
      v69(v51, a3);
      v69(v62, a3);
      v85(v63, v12);
      v48 = v96;
      if ((v68 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_23;
    }

    (*(v86 + 8))(v62, a3);
    v47 = v63;
LABEL_19:
    (*(v101 + 8))(v47, v103);
    return 0;
  }

  if (v48(&v47[v58], 1, a3) != 1)
  {
    goto LABEL_19;
  }

  v85(v47, v12);
LABEL_23:
  v70 = v94[15];
  v71 = *(v103 + 48);
  v73 = v88;
  v72 = v89;
  v89(v88, &v97[v70], v12);
  v72(&v73[v71], &v98[v70], v12);
  if (v48(v73, 1, a3) == 1)
  {
    if (v48(&v73[v71], 1, a3) == 1)
    {
      v85(v73, v12);
      return 1;
    }

    goto LABEL_28;
  }

  v74 = v87;
  v72(v87, v73, v12);
  if (v48(&v73[v71], 1, a3) == 1)
  {
    (*(v86 + 8))(v74, a3);
LABEL_28:
    (*(v101 + 8))(v73, v103);
    return 0;
  }

  v75 = v74;
  v76 = v86;
  v77 = &v73[v71];
  v78 = v73;
  v79 = v99;
  (*(v86 + 32))(v99, v77, a3);
  v80 = *(v100 + 8);
  v81 = sub_25424DC98();
  v82 = *(v76 + 8);
  v82(v79, a3);
  v82(v75, a3);
  v85(v78, v12);
  return (v81 & 1) != 0;
}

uint64_t EnergyKit.GridCleanliness.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  sub_25424E598();
  v6 = *(a2 + 40);
  sub_25424E5A8();
  v7 = v2 + *(a2 + 52);
  sub_25424E5A8();
  v8 = v3 + *(a2 + 56);
  sub_25424E5A8();
  v9 = v3 + *(a2 + 60);
  return sub_25424E5A8();
}

uint64_t sub_2541F17B8(uint64_t a1)
{
  v2 = sub_2541F77EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541F17F4(uint64_t a1)
{
  v2 = sub_2541F77EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541F1830(uint64_t a1)
{
  v2 = sub_2541F7744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541F186C(uint64_t a1)
{
  v2 = sub_2541F7744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541F18A8(uint64_t a1)
{
  v2 = sub_2541F7798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541F18E4(uint64_t a1)
{
  v2 = sub_2541F7798();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyKit.GuidanceBehavior.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return MEMORY[0x259C06AA0](1);
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x259C06AA0](v3);

  return sub_25424DD88();
}

uint64_t EnergyKit.GuidanceBehavior.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_25424EBD8();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x259C06AA0](1);
      return sub_25424EC28();
    }

    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x259C06AA0](v4);
  sub_25424DD88();
  return sub_25424EC28();
}

uint64_t sub_2541F1A34()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_25424EBD8();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x259C06AA0](1);
      return sub_25424EC28();
    }

    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x259C06AA0](v4);
  sub_25424DD88();
  return sub_25424EC28();
}

uint64_t sub_2541F1AC0()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return MEMORY[0x259C06AA0](1);
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x259C06AA0](v3);

  return sub_25424DD88();
}

uint64_t sub_2541F1B48()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_25424EBD8();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x259C06AA0](1);
      return sub_25424EC28();
    }

    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x259C06AA0](v4);
  sub_25424DD88();
  return sub_25424EC28();
}

HomeKitEvents::EnergyKit::LoadType_optional __swiftcall EnergyKit.LoadType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25424E8E8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EnergyKit.LoadType.rawValue.getter()
{
  v1 = 1667331688;
  if (*v0 != 1)
  {
    v1 = 0x6369727463656C65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726568746FLL;
  }
}

uint64_t sub_2541F1C8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1667331688;
  if (v2 != 1)
  {
    v4 = 0x6369727463656C65;
    v3 = 0xEF656C6369686556;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x726568746FLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1667331688;
  if (*a2 != 1)
  {
    v8 = 0x6369727463656C65;
    v7 = 0xEF656C6369686556;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x726568746FLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25424EAB8();
  }

  return v11 & 1;
}

void sub_2541F1DA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1667331688;
  if (v2 != 1)
  {
    v5 = 0x6369727463656C65;
    v4 = 0xEF656C6369686556;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x726568746FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2541F1E00()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2541F1EA4()
{
  *v0;
  *v0;
  sub_25424DD88();
}

uint64_t sub_2541F1F34()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2541F1FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_25424E598();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t sub_2541F2048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = *(a1 + 16);
  v6 = sub_25424E598();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t sub_2541F20C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 16);
  v6 = sub_25424E598();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t sub_2541F2140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = *(a1 + 16);
  v6 = sub_25424E598();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t EnergyKit.TariffPeak.criticalPeak.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 16);
  v6 = sub_25424E598();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t EnergyKit.TariffPeak.unknown.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = *(a1 + 16);
  v6 = sub_25424E598();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t EnergyKit.TariffPeak.init(superOffPeak:offPeak:partialPeak:onPeak:criticalPeak:unknown:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = sub_25424E598();
  v11 = *(*(v10 - 8) + 32);
  v11(a7, a1, v10);
  v12 = type metadata accessor for EnergyKit.TariffPeak();
  v11(a7 + v12[13], a2, v10);
  v11(a7 + v12[14], a3, v10);
  v11(a7 + v12[15], a4, v10);
  v11(a7 + v12[16], a5, v10);
  return (v11)(a7 + v12[17], a6, v10);
}

BOOL static EnergyKit.TariffPeak.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v159 = a6;
  v154 = a4;
  v155 = a5;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v156 = &v139[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_25424E598();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v142 = &v139[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v144 = &v139[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v146 = &v139[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v148 = &v139[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v151 = &v139[-v24];
  MEMORY[0x28223BE20](v23);
  v26 = &v139[-v25];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v162 = *(TupleTypeMetadata2 - 8);
  v28 = *(v162 + 64);
  v29 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v143 = &v139[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v145 = &v139[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v147 = &v139[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v150 = &v139[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v139[-v38];
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v139[-v41];
  v163 = v40;
  v43 = *(v40 + 48);
  v160 = v13;
  v44 = v13 + 16;
  v45 = *(v13 + 16);
  v158 = a1;
  v46 = a1;
  v47 = v44;
  v45(&v139[-v41], v46, v12);
  v157 = a2;
  v164 = v12;
  v45(&v42[v43], a2, v12);
  v161 = v9;
  v48 = v9 + 48;
  v49 = *(v9 + 48);
  v50 = a3;
  if (v49(v42, 1, a3) == 1)
  {
    if (v49(&v42[v43], 1, a3) == 1)
    {
      v152 = v49;
      v153 = v48;
      v149 = v45;
      v141 = *(v160 + 8);
      v141(v42, v164);
      goto LABEL_9;
    }

LABEL_6:
    v51 = *(v162 + 8);
    v52 = v42;
LABEL_7:
    v53 = v163;
LABEL_15:
    v51(v52, v53);
    return 0;
  }

  v45(v26, v42, v164);
  if (v49(&v42[v43], 1, a3) == 1)
  {
    (*(v161 + 8))(v26, a3);
    goto LABEL_6;
  }

  v152 = v49;
  v153 = v48;
  v149 = v45;
  v54 = v161;
  v55 = &v42[v43];
  v56 = v47;
  v57 = v156;
  (*(v161 + 32))(v156, v55, a3);
  v58 = *(v159 + 8);
  v140 = sub_25424DC98();
  v59 = v57;
  v47 = v56;
  v60 = *(v54 + 8);
  v60(v59, a3);
  v60(v26, a3);
  v50 = a3;
  v141 = *(v160 + 8);
  v141(v42, v164);
  if ((v140 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v165 = v50;
  v166 = v154;
  v167 = v155;
  v168 = v159;
  v155 = type metadata accessor for EnergyKit.TariffPeak();
  v61 = v155[13];
  v62 = v164;
  v63 = v163;
  v64 = *(v163 + 48);
  v65 = v149;
  v149(v39, v158 + v61, v164);
  v65(&v39[v64], v157 + v61, v62);
  v66 = v152;
  v67 = v153;
  if (v152(v39, 1, v50) == 1)
  {
    if (v66(&v39[v64], 1, v50) == 1)
    {
      v152 = v66;
      v153 = v67;
      v141(v39, v164);
      v68 = v158;
      goto LABEL_19;
    }

LABEL_14:
    v51 = *(v162 + 8);
    v52 = v39;
    v53 = v63;
    goto LABEL_15;
  }

  v69 = v151;
  v65(v151, v39, v164);
  if (v66(&v39[v64], 1, v50) == 1)
  {
    (*(v161 + 8))(v69, v50);
    goto LABEL_14;
  }

  v152 = v66;
  v153 = v67;
  v71 = v161;
  v72 = v47;
  v73 = v156;
  (*(v161 + 32))(v156, &v39[v64], v50);
  v74 = *(v159 + 8);
  v75 = sub_25424DC98();
  v76 = *(v71 + 8);
  v77 = v73;
  v47 = v72;
  v76(v77, v50);
  v76(v69, v50);
  v68 = v158;
  v63 = v163;
  v141(v39, v164);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v78 = v155[14];
  v79 = *(v63 + 48);
  v80 = v150;
  v81 = v164;
  v65(v150, v68 + v78, v164);
  v82 = v157 + v78;
  v83 = v80;
  v65(&v80[v79], v82, v81);
  v84 = v80;
  v85 = v152;
  v86 = v152(v84, 1, v50);
  v149 = v65;
  if (v86 == 1)
  {
    v87 = v68;
    v88 = v85;
    if (v85(&v83[v79], 1, v50) != 1)
    {
      goto LABEL_30;
    }

    v141(v83, v164);
    v89 = v163;
  }

  else
  {
    v90 = v148;
    v65(v148, v83, v164);
    if (v85(&v83[v79], 1, v50) == 1)
    {
      (*(v161 + 8))(v90, v50);
      goto LABEL_30;
    }

    v88 = v85;
    v91 = v83;
    v92 = v161;
    v93 = &v91[v79];
    v94 = v47;
    v95 = v156;
    (*(v161 + 32))(v156, v93, v50);
    v96 = *(v159 + 8);
    v97 = sub_25424DC98();
    v98 = *(v92 + 8);
    v99 = v95;
    v47 = v94;
    v98(v99, v50);
    v98(v90, v50);
    v141(v91, v164);
    v89 = v163;
    v87 = v158;
    if ((v97 & 1) == 0)
    {
      return 0;
    }
  }

  v100 = v155[15];
  v101 = *(v89 + 48);
  v102 = v147;
  v103 = v164;
  v104 = v149;
  v149(v147, v87 + v100, v164);
  v105 = v157 + v100;
  v83 = v102;
  v104(&v102[v101], v105, v103);
  if (v88(v102, 1, v50) == 1)
  {
    if (v88(&v102[v101], 1, v50) == 1)
    {
      v154 = v47;
      v141(v102, v164);
      v106 = v163;
      goto LABEL_32;
    }

LABEL_30:
    v51 = *(v162 + 8);
    v52 = v83;
    goto LABEL_7;
  }

  v107 = v146;
  v104(v146, v102, v164);
  if (v88(&v102[v101], 1, v50) == 1)
  {
    (*(v161 + 8))(v107, v50);
    goto LABEL_30;
  }

  v154 = v47;
  v108 = v161;
  v109 = v156;
  (*(v161 + 32))(v156, &v102[v101], v50);
  v110 = *(v159 + 8);
  v111 = sub_25424DC98();
  v112 = *(v108 + 8);
  v112(v109, v50);
  v112(v107, v50);
  v141(v102, v164);
  v106 = v163;
  if ((v111 & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  v113 = v155[16];
  v114 = *(v106 + 48);
  v115 = v145;
  v116 = v164;
  v117 = v149;
  v149(v145, v87 + v113, v164);
  v151 = v114;
  v117(&v114[v115], v157 + v113, v116);
  if (v88(v115, 1, v50) != 1)
  {
    v119 = v144;
    v117(v144, v115, v164);
    v120 = v151;
    if (v88(&v151[v115], 1, v50) != 1)
    {
      v152 = v88;
      v121 = v161;
      v122 = &v120[v115];
      v123 = v115;
      v124 = v156;
      (*(v161 + 32))(v156, v122, v50);
      v125 = *(v159 + 8);
      LODWORD(v151) = sub_25424DC98();
      v126 = *(v121 + 8);
      v126(v124, v50);
      v118 = v163;
      v126(v119, v50);
      v141(v123, v164);
      if ((v151 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_39;
    }

    (*(v161 + 8))(v119, v50);
LABEL_37:
    v51 = *(v162 + 8);
    v52 = v115;
    goto LABEL_7;
  }

  v152 = v88;
  if (v88(&v151[v115], 1, v50) != 1)
  {
    goto LABEL_37;
  }

  v141(v115, v164);
  v118 = v163;
LABEL_39:
  v127 = v155[17];
  v128 = *(v118 + 48);
  v129 = v87 + v127;
  v42 = v143;
  v130 = v164;
  v131 = v149;
  v149(v143, v129, v164);
  v131(&v42[v128], v157 + v127, v130);
  v132 = v152;
  if (v152(v42, 1, v50) == 1)
  {
    if (v132(&v42[v128], 1, v50) == 1)
    {
      v141(v42, v164);
      return 1;
    }

    goto LABEL_6;
  }

  v133 = v142;
  v131(v142, v42, v164);
  if (v132(&v42[v128], 1, v50) == 1)
  {
    (*(v161 + 8))(v133, v50);
    goto LABEL_6;
  }

  v134 = v161;
  v135 = v156;
  (*(v161 + 32))(v156, &v42[v128], v50);
  v136 = *(v159 + 8);
  v137 = sub_25424DC98();
  v138 = *(v134 + 8);
  v138(v135, v50);
  v138(v133, v50);
  v141(v42, v164);
  return (v137 & 1) != 0;
}

uint64_t EnergyKit.TariffPeak.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  sub_25424E598();
  v6 = *(a2 + 40);
  sub_25424E5A8();
  v7 = v2 + *(a2 + 52);
  sub_25424E5A8();
  v8 = v3 + *(a2 + 56);
  sub_25424E5A8();
  v9 = v3 + *(a2 + 60);
  sub_25424E5A8();
  v10 = v3 + *(a2 + 64);
  sub_25424E5A8();
  v11 = v3 + *(a2 + 68);
  return sub_25424E5A8();
}

uint64_t sub_2541F3374(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_25424EBD8();
  a2(v5, a1);
  return sub_25424EC28();
}

uint64_t sub_2541F33EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  sub_25424EBD8();
  a4(v7, a2);
  return sub_25424EC28();
}

uint64_t sub_2541F3450(int *a1)
{
  v3 = v1;
  sub_25424EBD8();
  sub_25424D8B8();
  sub_2541F96D4(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v4 = type metadata accessor for EventBase(0);
  v5 = *(v4 + 20);
  sub_25424D948();
  sub_2541F96D4(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_25425FB58[*(v3 + *(v4 + 24))]);
  v6 = v3 + a1[5];
  sub_25424DC28();
  v7 = (v3 + a1[6]);
  v8 = *v7;
  v9 = v7[1];
  sub_25424DD88();
  v10 = (v3 + a1[7]);
  v11 = *v10;
  v12 = v10[1];
  sub_25424DD88();
  return sub_25424EC28();
}

uint64_t sub_2541F35B4(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_25424D8B8();
  sub_2541F96D4(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v5 = type metadata accessor for EventBase(0);
  v6 = *(v5 + 20);
  sub_25424D948();
  sub_2541F96D4(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_25425FB58[*(v4 + *(v5 + 24))]);
  v7 = v4 + a2[5];
  sub_25424DC28();
  v8 = (v4 + a2[6]);
  v9 = *v8;
  v10 = v8[1];
  sub_25424DD88();
  v11 = (v4 + a2[7]);
  v12 = *v11;
  v13 = v11[1];

  return sub_25424DD88();
}

uint64_t sub_2541F3714(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_25424EBD8();
  sub_25424D8B8();
  sub_2541F96D4(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v5 = type metadata accessor for EventBase(0);
  v6 = *(v5 + 20);
  sub_25424D948();
  sub_2541F96D4(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_25425FB58[*(v4 + *(v5 + 24))]);
  v7 = v4 + a2[5];
  sub_25424DC28();
  v8 = (v4 + a2[6]);
  v9 = *v8;
  v10 = v8[1];
  sub_25424DD88();
  v11 = (v4 + a2[7]);
  v12 = *v11;
  v13 = v11[1];
  sub_25424DD88();
  return sub_25424EC28();
}

uint64_t sub_2541F3874(uint64_t a1, uint64_t a2, int *a3)
{
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for EventBase(0);
  v7 = *(v6 + 20);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  if (qword_25425FB58[*(a1 + *(v6 + 24))] != qword_25425FB58[*(a2 + *(v6 + 24))])
  {
    return 0;
  }

  v8 = a3[5];
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v9 = a3[6];
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = v10 == *v12 && v11 == v12[1];
  if (!v13 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v14 = a3[7];
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  if (v15 == *v17 && v16 == v17[1])
  {
    return 1;
  }

  return sub_25424EAB8();
}

uint64_t sub_2541F3980(void *a1, int *a2)
{
  v25 = a2;
  v3 = v2;
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  v24[0] = *(a2 + 4);
  v24[1] = v6;
  type metadata accessor for EnergyKit.EventBase.DocumentLayout.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_25424EA28();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EC78();
  v34 = 0;
  sub_25424D8B8();
  sub_2541F96D4(&qword_27F5B8C78, MEMORY[0x277CC9578]);
  v13 = v26;
  sub_25424EA18();
  if (v13)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v15 = v25[11];
  v33 = 1;
  sub_25424D948();
  sub_2541F96D4(&qword_27F5B89D8, MEMORY[0x277CC95F0]);
  sub_25424EA18();
  v32 = *(v3 + v25[12]);
  v31 = 2;
  sub_2541406B4();
  sub_25424EA18();
  v16 = v25[13];
  v30 = 3;
  sub_25424EA18();
  v17 = (v3 + v25[14]);
  v18 = *v17;
  v19 = v17[1];
  v29 = 4;
  sub_25424E9D8();
  v20 = (v3 + v25[15]);
  v21 = *v20;
  v22 = v20[1];
  v28 = 5;
  sub_25424E9D8();
  v23 = v25[16];
  v27 = 6;
  sub_25424EA18();
  return (*(v8 + 8))(v11, 0);
}

uint64_t sub_2541F3D0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  v47 = *(a2 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](a1);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_25424D948();
  v53 = *(v58 - 8);
  v9 = *(v53 + 64);
  v10 = MEMORY[0x28223BE20](v58);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v45 - v12;
  v59 = sub_25424D8B8();
  v54 = *(v59 - 8);
  v13 = *(v54 + 64);
  MEMORY[0x28223BE20](v59);
  v57 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EnergyKit.EventBase.DocumentLayout.CodingKeys();
  swift_getWitnessTable();
  v61 = sub_25424E998();
  v55 = *(v61 - 8);
  v15 = *(v55 + 64);
  MEMORY[0x28223BE20](v61);
  v17 = &v45 - v16;
  v50 = a3;
  v51 = a2;
  v18 = type metadata accessor for EnergyKit.EventBase.DocumentLayout();
  v46 = *(v18 - 8);
  v19 = *(v46 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v60 = v17;
  v23 = v62;
  sub_25424EC68();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v55;
  v24 = v56;
  v62 = v18;
  v26 = v58;
  v70 = 0;
  sub_2541F96D4(&qword_27F5B8CA8, MEMORY[0x277CC9578]);
  v27 = v57;
  v28 = v59;
  sub_25424E978();
  v29 = *(v54 + 32);
  v45 = v21;
  v29(v21, v27, v28);
  v69 = 1;
  sub_2541F96D4(&qword_27F5B89F0, MEMORY[0x277CC95F0]);
  sub_25424E978();
  v30 = v24;
  v31 = *(v53 + 32);
  v31(&v45[v62[11]], v30, v26);
  v67 = 2;
  sub_2541407C8();
  v57 = 0;
  sub_25424E978();
  v56 = v31;
  v32 = v45;
  v45[v62[12]] = v68;
  v66 = 3;
  sub_25424E978();
  (v56)(&v32[v62[13]], v52, v26);
  v65 = 4;
  v33 = sub_25424E938();
  v34 = &v45[v62[14]];
  *v34 = v33;
  v34[1] = v35;
  v64 = 5;
  v36 = sub_25424E938();
  v37 = &v45[v62[15]];
  *v37 = v36;
  v37[1] = v38;
  v63 = 6;
  v39 = v49;
  v40 = v51;
  sub_25424E978();
  (*(v25 + 8))(v60, v61);
  v41 = v62;
  v42 = v45;
  (*(v47 + 32))(&v45[v62[16]], v39, v40);
  v43 = v46;
  (*(v46 + 16))(v48, v42, v41);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v43 + 8))(v42, v41);
}

uint64_t sub_2541F4514()
{
  v0 = sub_25424E8E8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2541F4564(unsigned __int8 a1)
{
  v1 = 1702125924;
  v2 = 0x656369766564;
  if (a1 != 5)
  {
    v2 = 0x6574617473;
  }

  v3 = 1702127987;
  if (a1 != 3)
  {
    v3 = 0x656372756F73;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 1701670760;
  if (a1 != 1)
  {
    v4 = 0x79726F6765746163;
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

uint64_t sub_2541F461C()
{
  v0 = sub_25424E8E8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2541F467C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2541F46F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2541F475C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2541F47CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2541F483C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  result = sub_2541F4514();
  *a3 = result;
  return result;
}

uint64_t sub_2541F4878@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  result = sub_2541F4564(*v2);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_2541F48AC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_2541F4618(*v1);
}

uint64_t sub_2541F48BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_2541F4560(a1, a2, a3[2], a3[3], a3[4]);
  *a4 = result;
  return result;
}

uint64_t sub_2541F48F0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_2541F96A4();
  *a2 = result;
  return result;
}

uint64_t sub_2541F4924(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2541F4978(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2541F4A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2541F4A7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2541F4AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2541F4B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2541F4C40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2541F4C94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t EnergyKit.GridCleanliness.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v16[0] = *(a2 + 32);
  v16[1] = v4;
  v17 = v4;
  v18 = v16[0];
  type metadata accessor for EnergyKit.GridCleanliness.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_25424EA28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EC78();
  LOBYTE(v17) = 0;
  v11 = v19;
  sub_25424E9C8();
  if (!v11)
  {
    v12 = *(a2 + 52);
    LOBYTE(v17) = 1;
    sub_25424E9C8();
    v13 = *(a2 + 56);
    LOBYTE(v17) = 2;
    sub_25424E9C8();
    v14 = *(a2 + 60);
    LOBYTE(v17) = 3;
    sub_25424E9C8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t EnergyKit.GridCleanliness.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a6;
  v50 = sub_25424E598();
  v44 = *(v50 - 8);
  v11 = *(v44 + 64);
  v12 = MEMORY[0x28223BE20](v50);
  v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v43 = &v39 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v45 = (&v39 - v17);
  MEMORY[0x28223BE20](v16);
  v49 = &v39 - v18;
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  type metadata accessor for EnergyKit.GridCleanliness.CodingKeys();
  swift_getWitnessTable();
  v48 = sub_25424E998();
  v46 = *(v48 - 8);
  v19 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v21 = &v39 - v20;
  v47 = a2;
  v53 = a2;
  v54 = a3;
  v51 = a3;
  v55 = a4;
  v56 = a5;
  v22 = type metadata accessor for EnergyKit.GridCleanliness();
  v40 = *(v22 - 1);
  v23 = *(v40 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v39 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v52 = v21;
  v27 = v57;
  sub_25424EC68();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v45;
  v57 = v25;
  v29 = a1;
  v30 = v50;
  LOBYTE(v53) = 0;
  v31 = v48;
  sub_25424E928();
  v32 = v49;
  v49 = *(v44 + 32);
  (v49)(v57, v32, v30);
  LOBYTE(v53) = 1;
  v33 = v28;
  sub_25424E928();
  v34 = v57;
  (v49)(&v57[v22[13]], v33, v50);
  LOBYTE(v53) = 2;
  v35 = v43;
  v39 = 0;
  sub_25424E928();
  v45 = v29;
  (v49)(&v34[v22[14]], v35, v50);
  LOBYTE(v53) = 3;
  v36 = v42;
  sub_25424E928();
  (*(v46 + 8))(v52, v31);
  (v49)(&v34[v22[15]], v36, v50);
  v37 = v40;
  (*(v40 + 16))(v41, v34, v22);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return (*(v37 + 8))(v34, v22);
}

uint64_t sub_2541F54C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F6C6C6F46746F6ELL;
  v4 = 0xEC000000676E6977;
  if (v2 != 1)
  {
    v3 = 0x6465726F6E6769;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E69776F6C6C6F66;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  v7 = 0x6F6C6C6F46746F6ELL;
  v8 = 0xEC000000676E6977;
  if (*a2 != 1)
  {
    v7 = 0x6465726F6E6769;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E69776F6C6C6F66;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25424EAB8();
  }

  return v11 & 1;
}

uint64_t sub_2541F55DC()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2541F568C()
{
  *v0;
  *v0;
  sub_25424DD88();
}

uint64_t sub_2541F5728()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2541F57D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2541F9658();
  *a2 = result;
  return result;
}

void sub_2541F5804(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0xEC000000676E6977;
  v5 = 0x6F6C6C6F46746F6ELL;
  if (v2 != 1)
  {
    v5 = 0x6465726F6E6769;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E69776F6C6C6F66;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2541F5870()
{
  v1 = 0x6F6C6C6F46746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6465726F6E6769;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69776F6C6C6F66;
  }
}

uint64_t sub_2541F58D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2541F9658();
  *a1 = result;
  return result;
}

uint64_t sub_2541F5900(uint64_t a1)
{
  v2 = sub_2541F76F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541F593C(uint64_t a1)
{
  v2 = sub_2541F76F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyKit.GuidanceBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB558, &qword_25425E830);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB560, &qword_25425E838);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB568, &qword_25425E840);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB570, &qword_25425E848);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = *v1;
  v35 = v1[1];
  v36 = v18;
  v19 = *(v1 + 16);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541F76F0();
  sub_25424EC78();
  if (!v19)
  {
    v37 = 0;
    sub_2541F77EC();
    sub_25424E9A8();
    v23 = v28;
    sub_25424E9D8();
    (*(v27 + 8))(v12, v23);
    return (*(v14 + 8))(v17, v13);
  }

  if (v19 == 1)
  {
    v39 = 2;
    sub_2541F7744();
    v21 = v32;
    sub_25424E9A8();
    v22 = v34;
    sub_25424E9D8();
    (*(v33 + 8))(v21, v22);
    return (*(v14 + 8))(v17, v13);
  }

  v38 = 1;
  sub_2541F7798();
  v25 = v29;
  sub_25424E9A8();
  (*(v30 + 8))(v25, v31);
  return (*(v14 + 8))(v17, v13);
}

uint64_t EnergyKit.GuidanceBehavior.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB598, &qword_25425E850);
  v46 = *(v42 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v42);
  v47 = &v41 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB5A0, &qword_25425E858);
  v45 = *(v43 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB5A8, &qword_25425E860);
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB5B0, &unk_25425E868);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_2541F76F0();
  v19 = v49;
  sub_25424EC68();
  if (!v19)
  {
    v41 = 0;
    v49 = v13;
    v20 = v47;
    v21 = v48;
    v22 = sub_25424E988();
    v23 = (2 * *(v22 + 16)) | 1;
    v51 = v22;
    v52 = v22 + 32;
    v53 = 0;
    v54 = v23;
    v24 = sub_254140884();
    if (v24 != 3 && v53 == v54 >> 1)
    {
      if (v24)
      {
        if (v24 == 1)
        {
          v55 = 1;
          sub_2541F7798();
          v25 = v16;
          v26 = v41;
          sub_25424E8F8();
          v27 = v49;
          if (!v26)
          {
            (*(v45 + 8))(v7, v43);
            (*(v27 + 8))(v16, v12);
            swift_unknownObjectRelease();
            v45 = 0;
            v28 = 0;
            v29 = 2;
LABEL_18:
            *v21 = v45;
            *(v21 + 8) = v28;
            *(v21 + 16) = v29;
            return __swift_destroy_boxed_opaque_existential_1(v50);
          }

          goto LABEL_9;
        }

        v55 = 2;
        sub_2541F7744();
        v36 = v41;
        sub_25424E8F8();
        v37 = v49;
        if (!v36)
        {
          v38 = v42;
          v45 = sub_25424E938();
          v28 = v40;
          (*(v46 + 8))(v20, v38);
          (*(v37 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v29 = 1;
          goto LABEL_18;
        }
      }

      else
      {
        v55 = 0;
        sub_2541F77EC();
        v35 = v41;
        sub_25424E8F8();
        if (!v35)
        {
          v45 = sub_25424E938();
          v28 = v39;
          (*(v44 + 8))(v11, v8);
          (*(v49 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v29 = 0;
          goto LABEL_18;
        }
      }

      (*(v49 + 8))(v16, v12);
      goto LABEL_10;
    }

    v30 = sub_25424E6F8();
    swift_allocError();
    v32 = v31;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
    *v32 = &type metadata for EnergyKit.GuidanceBehavior;
    v25 = v16;
    sub_25424E908();
    sub_25424E6E8();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
    swift_willThrow();
    v27 = v49;
LABEL_9:
    (*(v27 + 8))(v25, v12);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t EnergyKit.LoadLevel.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EC48();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(&v11, v13);
    v6 = sub_25424EAC8();
    __swift_destroy_boxed_opaque_existential_1(&v11);
    if (v6 <= 0x64)
    {
      *a2 = v6;
    }

    else
    {
      v7 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_25424E688();

      v11 = 0xD000000000000033;
      v12 = 0x80000002542513F0;
      v14 = v6;
      v8 = sub_25424EA58();
      MEMORY[0x259C05CA0](v8);

      sub_25424E6F8();
      swift_allocError();
      static DecodingError.dataCorruptedError<A>(_:_:)(v9);

      swift_willThrow();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2541F657C()
{
  v0 = sub_25424E8E8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2541F66E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2541F6758(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2541F67C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2541F6834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2541F68BC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void, void, void, void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(*a1, a1[1], a2[2], a2[3], a2[4], a2[5]);
  *a4 = result;
  return result;
}

uint64_t sub_2541F6918@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_2541F699C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_2541F69F0@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_2541F6A2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2541F6A80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t EnergyKit.TariffPeak.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v20 = *(a2 + 32);
  v21 = v3;
  v19 = a2;
  v22 = v3;
  v23 = v20;
  type metadata accessor for EnergyKit.TariffPeak.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_25424EA28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EC78();
  LOBYTE(v22) = 0;
  v10 = v24;
  sub_25424E9C8();
  if (!v10)
  {
    v11 = v19;
    v12 = v19[13];
    LOBYTE(v22) = 1;
    sub_25424E9C8();
    v13 = v11[14];
    LOBYTE(v22) = 2;
    sub_25424E9C8();
    v14 = v11[15];
    LOBYTE(v22) = 3;
    sub_25424E9C8();
    v15 = v11[16];
    LOBYTE(v22) = 4;
    sub_25424E9C8();
    v16 = v11[17];
    LOBYTE(v22) = 5;
    sub_25424E9C8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t EnergyKit.TariffPeak.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a6;
  v64 = sub_25424E598();
  v57 = *(v64 - 8);
  v11 = *(v57 + 64);
  v12 = MEMORY[0x28223BE20](v64);
  v54 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v55 = &v50 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v50 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v60 = &v50 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v59 = &v50 - v21;
  MEMORY[0x28223BE20](v20);
  v62 = &v50 - v22;
  v67 = a2;
  v68 = a3;
  v69 = a4;
  v70 = a5;
  type metadata accessor for EnergyKit.TariffPeak.CodingKeys();
  swift_getWitnessTable();
  v66 = sub_25424E998();
  v58 = *(v66 - 8);
  v23 = *(v58 + 64);
  MEMORY[0x28223BE20](v66);
  v25 = &v50 - v24;
  v63 = a2;
  v67 = a2;
  v68 = a3;
  v61 = a3;
  v69 = a4;
  v70 = a5;
  v26 = type metadata accessor for EnergyKit.TariffPeak();
  v52 = *(v26 - 8);
  v27 = *(v52 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v50 - v28;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v65 = v25;
  v31 = v71;
  sub_25424EC68();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = v59;
  v33 = v60;
  v34 = v58;
  v71 = v29;
  v35 = a1;
  v36 = v64;
  LOBYTE(v67) = 0;
  sub_25424E928();
  v37 = *(v57 + 32);
  v38 = v62;
  v62 = (v57 + 32);
  v51 = v37;
  v37(v71, v38, v36);
  LOBYTE(v67) = 1;
  v39 = v32;
  sub_25424E928();
  v50 = v26;
  v40 = v71;
  v41 = &v71[*(v26 + 52)];
  v42 = v64;
  v51(v41, v39, v64);
  LOBYTE(v67) = 2;
  v59 = 0;
  sub_25424E928();
  v51(&v40[*(v50 + 56)], v33, v42);
  LOBYTE(v67) = 3;
  v43 = v56;
  sub_25424E928();
  v44 = v50;
  v51(&v40[*(v50 + 60)], v43, v64);
  LOBYTE(v67) = 4;
  v45 = v55;
  sub_25424E928();
  v51(&v40[*(v44 + 64)], v45, v64);
  LOBYTE(v67) = 5;
  v46 = v54;
  sub_25424E928();
  (*(v34 + 8))(v65, v66);
  v51(&v40[*(v44 + 68)], v46, v64);
  v47 = v40;
  v48 = v52;
  (*(v52 + 16))(v53, v47, v44);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return (*(v48 + 8))(v47, v44);
}

uint64_t _s13HomeKitEvents06EnergyB0O16GuidanceBehaviorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
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
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_25424EAB8();
        sub_25413E94C(v6, v5, 0);
        sub_25413E94C(v3, v2, 0);
        sub_25413F08C(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_15;
      }

      sub_25413E94C(v14, v2, 0);
      sub_25413E94C(v3, v2, 0);
      sub_25413F08C(v3, v2, 0);
      v18 = v3;
      v19 = v2;
      v20 = 0;
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_25424EAB8();
        sub_25413E94C(v6, v5, 1u);
        sub_25413E94C(v3, v2, 1u);
        sub_25413F08C(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
LABEL_15:
        sub_25413F08C(v11, v12, v13);
        return v10 & 1;
      }

      sub_25413E94C(v8, v2, 1u);
      sub_25413E94C(v3, v2, 1u);
      sub_25413F08C(v3, v2, 1u);
      v18 = v3;
      v19 = v2;
      v20 = 1;
      goto LABEL_24;
    }

LABEL_20:
    sub_25413E94C(*a2, *(a2 + 8), v7);
    sub_25413E94C(v3, v2, v4);
    sub_25413F08C(v3, v2, v4);
    sub_25413F08C(v6, v5, v7);
    return 0;
  }

  if (v7 != 2 || (v5 | v6) != 0)
  {
    goto LABEL_20;
  }

  sub_25413F08C(*a1, v2, 2u);
  v18 = 0;
  v19 = 0;
  v20 = 2;
LABEL_24:
  sub_25413F08C(v18, v19, v20);
  return 1;
}

unint64_t sub_2541F76F0()
{
  result = qword_27F5BB578;
  if (!qword_27F5BB578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB578);
  }

  return result;
}

unint64_t sub_2541F7744()
{
  result = qword_27F5BB580;
  if (!qword_27F5BB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB580);
  }

  return result;
}

unint64_t sub_2541F7798()
{
  result = qword_27F5BB588;
  if (!qword_27F5BB588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB588);
  }

  return result;
}

unint64_t sub_2541F77EC()
{
  result = qword_27F5BB590;
  if (!qword_27F5BB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB590);
  }

  return result;
}

unint64_t sub_2541F785C()
{
  result = qword_27F5BB5B8;
  if (!qword_27F5BB5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5B8);
  }

  return result;
}

unint64_t sub_2541F78F0()
{
  result = qword_27F5BB5C0;
  if (!qword_27F5BB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5C0);
  }

  return result;
}

unint64_t sub_2541F7948()
{
  result = qword_27F5BB5C8;
  if (!qword_27F5BB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5C8);
  }

  return result;
}

unint64_t sub_2541F79DC()
{
  result = qword_27F5BB5D0;
  if (!qword_27F5BB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5D0);
  }

  return result;
}

unint64_t sub_2541F7A34()
{
  result = qword_27F5BB5D8;
  if (!qword_27F5BB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5D8);
  }

  return result;
}

unint64_t sub_2541F7AC8()
{
  result = qword_27F5BB5E0;
  if (!qword_27F5BB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5E0);
  }

  return result;
}

unint64_t sub_2541F7B20()
{
  result = qword_27F5BB5E8;
  if (!qword_27F5BB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5E8);
  }

  return result;
}

uint64_t sub_2541F7BB4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2541F7C08()
{
  result = qword_27F5BB5F0;
  if (!qword_27F5BB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5F0);
  }

  return result;
}

unint64_t sub_2541F7C5C()
{
  result = qword_27F5BB5F8;
  if (!qword_27F5BB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5F8);
  }

  return result;
}

unint64_t sub_2541F7CB0()
{
  result = qword_27F5BB600;
  if (!qword_27F5BB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB600);
  }

  return result;
}

unint64_t sub_2541F7D24()
{
  result = qword_27F5BB608;
  if (!qword_27F5BB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB608);
  }

  return result;
}

unint64_t sub_2541F7D7C()
{
  result = qword_27F5BB610;
  if (!qword_27F5BB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB610);
  }

  return result;
}

unint64_t sub_2541F7DF0()
{
  result = qword_27F5BB618;
  if (!qword_27F5BB618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F5BB620, &qword_25425EE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB618);
  }

  return result;
}

uint64_t sub_2541F7EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_25424E598();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2541F7F38(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = *(v4 + 80);
    v10 = ((v7 + v9 + ((v7 + v9 + ((v7 + v9) & ~v9)) & ~v9)) & ~v9) + v7;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_2541F80D0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = *(v6 + 80);
  v11 = ((v8 + v10 + ((v8 + v10 + ((v8 + v10) & ~v10)) & ~v10)) & ~v10) + v8;
  v12 = a3 >= v9;
  v13 = a3 - v9;
  if (v13 == 0 || !v12)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v11 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
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
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v18 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v16 & ~(-1 << (8 * v11));
        v20 = result;
        bzero(result, v11);
        result = v20;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v20 = v19;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v11] = v18;
              }

              else
              {
                *&result[v11] = v18;
              }

              return result;
            }
          }

          else
          {
            *v20 = v16;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v17 = result;
      bzero(result, v11);
      result = v17;
      *v17 = v16;
      v18 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v11] = v18;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v11] = 0;
  }

  else if (v5)
  {
    result[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v21 = *(v6 + 56);

    return v21();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeKitEvents06EnergyB0O16GuidanceBehaviorO(uint64_t a1)
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

uint64_t sub_2541F8338(uint64_t result, unsigned int a2)
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

uint64_t sub_2541F8370(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_25424E598();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2541F83EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = *(v4 + 80);
    v10 = ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9) & ~v9)) & ~v9)) & ~v9)) & ~v9)) & ~v9) + v7;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_2541F8594(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = *(v6 + 80);
  v11 = ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10) + v8;
  v12 = a3 >= v9;
  v13 = a3 - v9;
  if (v13 == 0 || !v12)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v11 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
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
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v18 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v16 & ~(-1 << (8 * v11));
        v20 = result;
        bzero(result, v11);
        result = v20;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v20 = v19;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v11] = v18;
              }

              else
              {
                *&result[v11] = v18;
              }

              return result;
            }
          }

          else
          {
            *v20 = v16;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v17 = result;
      bzero(result, v11);
      result = v17;
      *v17 = v16;
      v18 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v11] = v18;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v11] = 0;
  }

  else if (v5)
  {
    result[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v21 = *(v6 + 56);

    return v21();
  }

  return result;
}

uint64_t sub_2541F886C(uint64_t a1)
{
  result = sub_25424D8B8();
  if (v3 <= 0x3F)
  {
    result = sub_25424D948();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2541F8928(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_25424D8B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = sub_25424D948();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(*(a3 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v10 + 80);
  v16 = *(*(v9 - 8) + 64);
  v17 = *(v13 + 80);
  if (v12 <= v14)
  {
    v12 = *(v13 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v7 + 64) + v15;
  v20 = v16 + v15 + 1;
  v21 = v16 + 7;
  v22 = v17 + 16;
  if (a2 <= v18)
  {
    goto LABEL_33;
  }

  v23 = ((v22 + ((((v21 + ((v20 + (v19 & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + *(v13 + 64);
  v24 = 8 * v23;
  if (v23 > 3)
  {
    goto LABEL_12;
  }

  v27 = ((a2 - v18 + ~(-1 << v24)) >> v24) + 1;
  if (HIWORD(v27))
  {
    v25 = *(a1 + v23);
    if (v25)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v27 <= 0xFF)
    {
      if (v27 < 2)
      {
        goto LABEL_33;
      }

LABEL_12:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_33;
      }

LABEL_20:
      v28 = (v25 - 1) << v24;
      if (v23 > 3)
      {
        v28 = 0;
      }

      if (v23)
      {
        if (v23 <= 3)
        {
          v29 = ((v22 + ((((v21 + ((v20 + (v19 & ~v15)) & ~v15)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v17) + *(v13 + 64);
        }

        else
        {
          v29 = 4;
        }

        if (v29 > 2)
        {
          if (v29 == 3)
          {
            v30 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v30 = *a1;
          }
        }

        else if (v29 == 1)
        {
          v30 = *a1;
        }

        else
        {
          v30 = *a1;
        }
      }

      else
      {
        v30 = 0;
      }

      return v18 + (v30 | v28) + 1;
    }

    v25 = *(a1 + v23);
    if (*(a1 + v23))
    {
      goto LABEL_20;
    }
  }

LABEL_33:
  if (v8 == v18)
  {
    v31 = *(v7 + 48);
    v32 = a1;
    v11 = v8;
    v33 = v6;
LABEL_37:

    return v31(v32, v11, v33);
  }

  v34 = ~v15;
  v35 = (a1 + v19) & v34;
  if (v11 == v18)
  {
    v31 = *(v10 + 48);
    v33 = v9;
    v32 = v35;
    goto LABEL_37;
  }

  v36 = (v21 + ((v20 + v35) & v34)) & 0xFFFFFFFFFFFFFFF8;
  if ((v12 & 0x80000000) != 0)
  {
    v38 = *(v13 + 48);

    return v38((v22 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17, v14);
  }

  else
  {
    v37 = *(v36 + 8);
    if (v37 >= 0xFFFFFFFF)
    {
      LODWORD(v37) = -1;
    }

    return (v37 + 1);
  }
}

void sub_2541F8C90(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_25424D8B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = sub_25424D948();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(*(a4 + 16) - 8);
  v16 = *(v15 + 84);
  v17 = *(v9 + 64);
  v18 = *(v12 + 80);
  v19 = *(*(v11 - 8) + 64);
  v20 = *(v15 + 80);
  if (v14 <= v16)
  {
    v21 = *(v15 + 84);
  }

  else
  {
    v21 = v14;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  v23 = v17 + v18;
  v24 = (v17 + v18) & ~v18;
  v25 = v19 + v18 + 1;
  v26 = v19 + 7;
  v27 = ((v20 + 16 + ((((v19 + 7 + ((v25 + v24) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v20) + *(v15 + 64);
  if (a3 <= v22)
  {
    v28 = 0;
  }

  else if (v27 <= 3)
  {
    v31 = ((a3 - v22 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
    if (HIWORD(v31))
    {
      v28 = 4;
    }

    else
    {
      if (v31 < 0x100)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      if (v31 >= 2)
      {
        v28 = v32;
      }

      else
      {
        v28 = 0;
      }
    }
  }

  else
  {
    v28 = 1;
  }

  if (v22 < a2)
  {
    v29 = ~v22 + a2;
    if (v27 < 4)
    {
      v30 = (v29 >> (8 * v27)) + 1;
      if (v27)
      {
        v33 = v29 & ~(-1 << (8 * v27));
        bzero(a1, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v33;
            if (v28 > 1)
            {
LABEL_55:
              if (v28 == 2)
              {
                *&a1[v27] = v30;
              }

              else
              {
                *&a1[v27] = v30;
              }

              return;
            }
          }

          else
          {
            *a1 = v29;
            if (v28 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v33;
        a1[2] = BYTE2(v33);
      }

      if (v28 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v27);
      *a1 = v29;
      v30 = 1;
      if (v28 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v28)
    {
      a1[v27] = v30;
    }

    return;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v27] = 0;
  }

  else if (v28)
  {
    a1[v27] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v10 == v22)
  {
    v34 = *(v9 + 56);
    v35 = a1;
    v36 = a2;
    v13 = v10;
    v37 = v8;
LABEL_41:

    v34(v35, v36, v13, v37);
    return;
  }

  v38 = ~v18;
  v39 = &a1[v23] & v38;
  if (v13 == v22)
  {
    v34 = *(v12 + 56);
    v37 = v11;
    v35 = v39;
    v36 = a2;
    goto LABEL_41;
  }

  v40 = ((v26 + ((v25 + v39) & v38)) & 0xFFFFFFFFFFFFFFF8);
  if ((v21 & 0x80000000) != 0)
  {
    v41 = *(v15 + 56);

    v41((v20 + 16 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v20, a2, v16);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *v40 = a2 & 0x7FFFFFFF;
    v40[1] = 0;
  }

  else
  {
    v40[1] = (a2 - 1);
  }
}

uint64_t type metadata accessor for EnergyKit.EventBase()
{
  result = qword_27F5BB8A8;
  if (!qword_27F5BB8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2541F910C()
{
  result = type metadata accessor for EventBase(319);
  if (v1 <= 0x3F)
  {
    result = sub_25424D948();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2541F9208()
{
  result = qword_27F5BB8C0;
  if (!qword_27F5BB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB8C0);
  }

  return result;
}

unint64_t sub_2541F9260()
{
  result = qword_27F5BB8C8;
  if (!qword_27F5BB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB8C8);
  }

  return result;
}

unint64_t sub_2541F92B8()
{
  result = qword_27F5BB8D0;
  if (!qword_27F5BB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB8D0);
  }

  return result;
}

unint64_t sub_2541F9364()
{
  result = qword_27F5BB8D8;
  if (!qword_27F5BB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB8D8);
  }

  return result;
}

unint64_t sub_2541F93BC()
{
  result = qword_27F5BB8E0;
  if (!qword_27F5BB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB8E0);
  }

  return result;
}

unint64_t sub_2541F9414()
{
  result = qword_27F5BB8E8;
  if (!qword_27F5BB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB8E8);
  }

  return result;
}

unint64_t sub_2541F946C()
{
  result = qword_27F5BB8F0;
  if (!qword_27F5BB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB8F0);
  }

  return result;
}

unint64_t sub_2541F94C4()
{
  result = qword_27F5BB8F8;
  if (!qword_27F5BB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB8F8);
  }

  return result;
}

unint64_t sub_2541F951C()
{
  result = qword_27F5BB900;
  if (!qword_27F5BB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB900);
  }

  return result;
}

unint64_t sub_2541F9574()
{
  result = qword_27F5BB908;
  if (!qword_27F5BB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB908);
  }

  return result;
}

unint64_t sub_2541F95CC()
{
  result = qword_27F5BB910;
  if (!qword_27F5BB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB910);
  }

  return result;
}

uint64_t sub_2541F9658()
{
  v0 = sub_25424E8E8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2541F96D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2541F971C()
{
  result = qword_27F5BB918[0];
  if (!qword_27F5BB918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5BB918);
  }

  return result;
}

uint64_t sub_2541F98A8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(void))
{
  v9 = v4;
  v10 = sub_25424D8B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_254254360;
  *(v19 + 32) = a2(v9);
  *(v19 + 40) = v20;
  v21 = type metadata accessor for EventBase(0);
  if (sub_2541DA534(*(v9 + *(v21 + 24)), a3))
  {
    sub_2541FA24C(v9, v18, a4);
    (*(v11 + 16))(v14, v18, v10);
    sub_2541FA2B4(v18, a4);
    v22 = sub_2541DE894();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2542542D0;
    *(v23 + 32) = v22;
    *(v23 + 33) = -1;
    v24 = sub_2541B1AC4(v23);
    v26 = v25;

    (*(v11 + 8))(v14, v10);
    v19 = sub_2541B09E0(1, 2, 1, v19);
    *(v19 + 16) = 2;
    *(v19 + 48) = v24;
    *(v19 + 56) = v26;
  }

  return v19;
}

char *sub_2541F9AEC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(void))
{
  v9 = v4;
  v33[7] = *MEMORY[0x277D85DE8];
  v10 = sub_25424D8B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v33 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254254360;
  *(inited + 32) = a2(v9);
  *(inited + 40) = v20;
  v21 = sub_2541B09E0(1, 2, 1, inited);
  *(v21 + 2) = 2;
  *(v21 + 3) = xmmword_254252DC0;
  v22 = type metadata accessor for EventBase(0);
  if (sub_2541DA534(*(v9 + *(v22 + 24)), a3))
  {
    sub_2541FA24C(v9, v18, a4);
    (*(v11 + 16))(v14, v18, v10);
    sub_2541FA2B4(v18, a4);
    v23 = sub_2541DE894();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_2542542D0;
    *(v24 + 32) = v23;
    *(v24 + 33) = -1;
    v25 = sub_2541B1AC4(v24);
    v27 = v26;

    (*(v11 + 8))(v14, v10);
    v29 = *(v21 + 2);
    v28 = *(v21 + 3);
    if (v29 >= v28 >> 1)
    {
      v21 = sub_2541B09E0((v28 > 1), v29 + 1, 1, v21);
    }

    *(v21 + 2) = v29 + 1;
    v30 = &v21[16 * v29];
    *(v30 + 4) = v25;
    *(v30 + 5) = v27;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t sub_2541FA24C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541FA2B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2541FA344(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_25424DA48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25424D9E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v7 + 16))(v10, a3, v6);
  v17 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(a2);
      goto LABEL_10;
    }

LABEL_8:
    LODWORD(v18) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_15;
    }

    v18 = v18;
LABEL_10:
    if ((v18 - 0x1000000000000000) >> 61 == 7)
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v17 == 2)
  {
    v20 = *(a1 + 16);
    v19 = *(a1 + 24);
    v21 = __OFSUB__(v19, v20);
    v18 = v19 - v20;
    if (!v21)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_11:
  v22 = v23[1];
  sub_25424D9C8();
  if (!v22)
  {
    a2 = sub_25424D9D8();
    (*(v12 + 8))(v15, v11);
  }

  return a2;
}

unint64_t sub_2541FA580()
{
  result = qword_27F5BB9A0;
  if (!qword_27F5BB9A0)
  {
    type metadata accessor for LubyRackoffEncryptionKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB9A0);
  }

  return result;
}

uint64_t sub_2541FA5E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_254147FD8(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8FD8, &qword_254254310);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_254147FD8((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_25412DCA8(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2541FA6F8(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90F8, &unk_25425CBB0);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v19 = MEMORY[0x277D84F90];
    sub_254148218(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_2541FBE9C(v13, v5);
      swift_dynamicCast();
      v19 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_254148218(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      *(v12 + 16) = v16 + 1;
      sub_2541FBF0C(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_2541FA910(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2541FA978(uint64_t a1, uint64_t a2)
{
  v3 = sub_25424DAA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LoggedObject.logger.getter(a2, &off_28663A688, v7);
  v8 = sub_25424DA88();
  v9 = sub_25424E408();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_254124000, v8, v9, "Connection invalidated", v10, 2u);
    MEMORY[0x259C07330](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + 24);
    sub_25412DCB8(v12);

    if (v12)
    {
      v12(result);
      return sub_25412DC98(v12);
    }
  }

  return result;
}

uint64_t sub_2541FAB24(uint64_t a1, uint64_t a2)
{
  v3 = sub_25424DAA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LoggedObject.logger.getter(a2, &off_28663A688, v7);
  v8 = sub_25424DA88();
  v9 = sub_25424E428();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_254124000, v8, v9, "Connection interrupted", v10, 2u);
    MEMORY[0x259C07330](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + 40);
    sub_25412DCB8(v12);

    if (v12)
    {
      v12(result);
      return sub_25412DC98(v12);
    }
  }

  return result;
}

void sub_2541FACD0()
{
  if (!v0[2])
  {
    v1 = *v0;
    v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v3 = sub_25424DCA8();
    v4 = [v2 initWithMachServiceName:v3 options:0];

    v5 = objc_opt_self();
    v6 = [v5 interfaceWithProtocol_];
    [v4 setExportedInterface_];

    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v1;
    v19 = sub_2541FBFA0;
    v20 = v8;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_2541FA910;
    v18 = &block_descriptor_112;
    v9 = _Block_copy(&v15);

    [v4 setInvalidationHandler_];
    _Block_release(v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v1;
    v19 = sub_2541FBFA4;
    v20 = v11;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_2541FA910;
    v18 = &block_descriptor_120;
    v12 = _Block_copy(&v15);

    [v4 setInterruptionHandler_];
    _Block_release(v12);
    v13 = [v5 interfaceWithProtocol_];
    [v4 setRemoteObjectInterface_];

    [v4 resume];
    v14 = v0[2];
    v0[2] = v4;
  }
}

void sub_2541FAFB4()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = *v0;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v11 = sub_2541FBE80;
    v12 = v3;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v9 = sub_2541FB128;
    v10 = &block_descriptor_104;
    v4 = _Block_copy(&aBlock);
    v5 = v1;

    v6 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);

    sub_25424E5D8();
    swift_unknownObjectRelease();
    sub_25412DCA8(&aBlock, &v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB9D8, &unk_25425FCD0);
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

void sub_2541FB128(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2541FB1B8()
{
  if (!v0[2])
  {
    v1 = *v0;
    v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v3 = sub_25424DCA8();
    v4 = [v2 initWithMachServiceName:v3 options:0];

    v5 = objc_opt_self();
    v6 = [v5 interfaceWithProtocol_];
    [v4 setExportedInterface_];

    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v1;
    v24 = sub_2541FBFA0;
    v25 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_2541FA910;
    v23 = &block_descriptor_90;
    v9 = _Block_copy(&aBlock);

    [v4 setInvalidationHandler_];
    _Block_release(v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v1;
    v24 = sub_2541FBFA4;
    v25 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_2541FA910;
    v23 = &block_descriptor_98;
    v12 = _Block_copy(&aBlock);

    [v4 setInterruptionHandler_];
    _Block_release(v12);
    v13 = [v5 interfaceWithProtocol_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8FD0, &qword_254254308);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25425CD20;
    *(inited + 32) = sub_254148D7C(0, &qword_27F5BB9B8, 0x277CBEAC0);
    *(inited + 40) = sub_254148D7C(0, &qword_27F5BB9C0, 0x277CCAD78);
    *(inited + 48) = sub_254148D7C(0, &qword_27F5BB9C8, 0x277CBEA60);
    *(inited + 56) = sub_254148D7C(0, &qword_27F5BB9D0, 0x277CCABB0);
    *(inited + 64) = sub_254148D7C(0, &qword_27F5B9238, 0x277CBEA90);
    sub_2541FA5E8(inited);
    v15 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v16 = sub_25424DF88();

    v17 = [v15 initWithArray_];

    aBlock = 0;
    sub_25424E2B8();
    if (aBlock)
    {
      swift_setDeallocating();

      v18 = sub_25424E2A8();

      [v13 setClasses:v18 forSelector:sel_hmvutilDumpLocalDatabaseWithReply_ argumentIndex:0 ofReply:1];

      [v4 setRemoteObjectInterface_];
      [v4 resume];

      v19 = v0[2];
      v0[2] = v4;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2541FB634()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = *v0;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v11 = sub_2541FBFC8;
    v12 = v3;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v9 = sub_2541FB128;
    v10 = &block_descriptor_82;
    v4 = _Block_copy(&aBlock);
    v5 = v1;

    v6 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);

    sub_25424E5D8();
    swift_unknownObjectRelease();
    sub_25412DCA8(&aBlock, &v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB9B0, &unk_25425FCC0);
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

void sub_2541FB7CC()
{
  if (!v0[2])
  {
    v1 = *v0;
    v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v3 = sub_25424DCA8();
    v4 = [v2 initWithMachServiceName:v3 options:0];

    v5 = objc_opt_self();
    v6 = [v5 interfaceWithProtocol_];
    [v4 setExportedInterface_];

    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v1;
    v19 = sub_2541FBE70;
    v20 = v8;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_2541FA910;
    v18 = &block_descriptor_69;
    v9 = _Block_copy(&v15);

    [v4 setInvalidationHandler_];
    _Block_release(v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v1;
    v19 = sub_2541FBE78;
    v20 = v11;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_2541FA910;
    v18 = &block_descriptor_76;
    v12 = _Block_copy(&v15);

    [v4 setInterruptionHandler_];
    _Block_release(v12);
    v13 = [v5 interfaceWithProtocol_];
    [v4 setRemoteObjectInterface_];

    [v4 resume];
    v14 = v0[2];
    v0[2] = v4;
  }
}

void sub_2541FBAB0()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = *v0;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v11 = sub_2541FBFC8;
    v12 = v3;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v9 = sub_2541FB128;
    v10 = &block_descriptor_14;
    v4 = _Block_copy(&aBlock);
    v5 = v1;

    v6 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);

    sub_25424E5D8();
    swift_unknownObjectRelease();
    sub_25412DCA8(&aBlock, &v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB9A8, qword_25425FCA8);
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2541FBC24(void *a1, uint64_t a2)
{
  v4 = sub_25424DAA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LoggedObject.logger.getter(a2, &off_28663A688, v8);
  v9 = a1;
  v10 = sub_25424DA88();
  v11 = sub_25424E428();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_254124000, v10, v11, "Failed to construct proxy: %{public}@", v12, 0xCu);
    sub_2541A4278(v13);
    MEMORY[0x259C07330](v13, -1, -1);
    MEMORY[0x259C07330](v12, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2541FBDD0()
{
  v1 = v0[2];
  if (v1)
  {
    [v1 invalidate];
    v2 = v0[2];
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[4];
  sub_25412DC98(v0[3]);
  v4 = v0[6];
  sub_25412DC98(v0[5]);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2541FBE9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90F8, &unk_25425CBB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2541FBF0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DatabaseConfiguration.configure<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = *v4;
  *(v5 + 64) = *(v4 + 16);
  return MEMORY[0x2822009F8](sub_2541FC000, 0, 0);
}

uint64_t sub_2541FC000()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  if (v1 < 0)
  {
    v8 = *(v0 + 64);
    if (v1)
    {
      v9 = &selRef_sharedCloudDatabase;
    }

    else
    {
      v9 = &selRef_privateCloudDatabase;
    }

    *(v0 + 80) = [*(v0 + 48) *v9];
    if (v8)
    {
      v10 = *(v0 + 64);
      v11 = v10;
    }

    else
    {
      v11 = _s13HomeKitEvents21DatabaseConfigurationO21defaultOperationGroup9containerSo011CKOperationH0CSo11CKContainerC_tFZ_0(v2);
      v10 = 0;
    }

    *(v0 + 88) = v11;
    v12 = *(v0 + 40);
    v13 = swift_task_alloc();
    *(v0 + 96) = v13;
    v14 = *(v0 + 24);
    *(v13 + 16) = v12;
    *(v13 + 24) = v14;
    v15 = *(MEMORY[0x277CBBE68] + 4);
    v16 = v10;
    v17 = v11;
    v18 = swift_task_alloc();
    *(v0 + 104) = v18;
    *v18 = v0;
    v18[1] = sub_2541FC328;
    v19 = *(v0 + 40);
    v20 = *(v0 + 16);

    return MEMORY[0x28210DEC0](v20, 0, v11, &unk_25425FCF0, v13, v19);
  }

  else
  {
    v21 = (*(v0 + 24) + **(v0 + 24));
    v3 = *(*(v0 + 24) + 4);
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_2541FC234;
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);

    return v21(v6, v2);
  }
}

uint64_t sub_2541FC234()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2541FC328()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_25414CF48;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_2541FC44C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2541FC44C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

void DatabaseConfiguration.scope.getter(char *a1@<X8>)
{
  v3 = *(v1 + 8);
  if (v3 < 0)
  {
    v6 = v3 & 1;
    goto LABEL_7;
  }

  v4 = *v1;
  v5 = [*v1 scope];
  if (v5 == 2)
  {
    v6 = 0;
LABEL_7:
    *a1 = v6;
    return;
  }

  if (v5 == 3)
  {
    v6 = 1;
    goto LABEL_7;
  }

  sub_25424E688();

  [v4 0x279771478];
  v7 = sub_25424E468();
  MEMORY[0x259C05CA0](v7);

  sub_25424E858();
  __break(1u);
}

uint64_t DatabaseConfiguration.configure<A, B>(isolatedTo:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  *(v8 + 72) = *v7;
  *(v8 + 88) = *(v7 + 16);
  v10 = sub_25424E058();
  *(v8 + 96) = v10;
  *(v8 + 104) = v9;

  return MEMORY[0x2822009F8](sub_2541FC65C, v10, v9);
}

uint64_t sub_2541FC65C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  if (v1 < 0)
  {
    v9 = *(v0 + 88);
    if (v1)
    {
      v10 = &selRef_sharedCloudDatabase;
    }

    else
    {
      v10 = &selRef_privateCloudDatabase;
    }

    *(v0 + 120) = [*(v0 + 72) *v10];
    if (v9)
    {
      v11 = *(v0 + 88);
      v12 = v11;
    }

    else
    {
      v12 = _s13HomeKitEvents21DatabaseConfigurationO21defaultOperationGroup9containerSo011CKOperationH0CSo11CKContainerC_tFZ_0(v2);
      v11 = 0;
    }

    *(v0 + 128) = v12;
    v13 = *(v0 + 64);
    v14 = *(v0 + 24);
    v15 = swift_task_alloc();
    *(v0 + 136) = v15;
    v16 = *(v0 + 32);
    *(v15 + 16) = *(v0 + 48);
    *(v15 + 32) = v13;
    *(v15 + 40) = v16;
    *(v15 + 56) = v14;
    v17 = *(MEMORY[0x277CBBE68] + 4);
    v18 = v11;
    v19 = v12;
    v20 = swift_task_alloc();
    *(v0 + 144) = v20;
    *v20 = v0;
    v20[1] = sub_2541FC998;
    v21 = *(v0 + 56);
    v22 = *(v0 + 16);

    return MEMORY[0x28210DEC0](v22, 0, v12, &unk_25425FD08, v15, v21);
  }

  else
  {
    v23 = (*(v0 + 32) + **(v0 + 32));
    v3 = *(*(v0 + 32) + 4);
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_2541FC8A4;
    v5 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);

    return v23(v6, v7, v2);
  }
}

uint64_t sub_2541FC8A4()
{
  v1 = *(*v0 + 112);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2541FC998()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = *(v2 + 104);
    v6 = sub_2541FCB24;
  }

  else
  {
    v7 = *(v2 + 136);

    v4 = *(v2 + 96);
    v5 = *(v2 + 104);
    v6 = sub_2541FCABC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2541FCABC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2541FCB24()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];

  v4 = v0[19];
  v5 = v0[1];

  return v5();
}

uint64_t sub_2541FCBA4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v12 = (a3 + *a3);
  v9 = a3[1];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_25412F724;

  return v12(a1, a5, a2);
}

uint64_t DatabaseConfiguration.description.getter()
{
  v1 = *v0;
  if ((*(v0 + 8) & 0x8000000000000000) != 0)
  {
    v3 = *(v0 + 16);
    v10 = 0;
    v11 = 0xE000000000000000;
    sub_25424E688();
    MEMORY[0x259C05CA0](0xD000000000000018, 0x8000000254251610);
    v4 = sub_2541FCF50(v1);
    MEMORY[0x259C05CA0](v4);

    MEMORY[0x259C05CA0](0x3D65706F6373202CLL, 0xE800000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB9E0, &qword_25425FD10);
    v5 = sub_25424DD08();
    MEMORY[0x259C05CA0](v5);

    MEMORY[0x259C05CA0](3022906, 0xE300000000000000);
    v6 = sub_25424DD08();
    MEMORY[0x259C05CA0](v6);

    MEMORY[0x259C05CA0](62, 0xE100000000000000);
    MEMORY[0x259C05CA0](60, 0xE100000000000000);

    MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251630);
    v7 = sub_2541FD2B8(v3);
    MEMORY[0x259C05CA0](v7);

    MEMORY[0x259C05CA0](41, 0xE100000000000000);
  }

  else
  {
    sub_25424E688();

    v10 = 0xD000000000000015;
    v11 = 0x8000000254251650;
    v2 = sub_2541FD140(v1);
    MEMORY[0x259C05CA0](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB9E8, &qword_25425FD18);
  v8 = sub_25424DD08();
  MEMORY[0x259C05CA0](v8);

  MEMORY[0x259C05CA0](8250, 0xE200000000000000);
  MEMORY[0x259C05CA0](v10, v11);

  MEMORY[0x259C05CA0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_2541FCF50(void *a1)
{
  if (!a1)
  {
    return 7104878;
  }

  v1 = a1;
  sub_25424E688();

  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA00, &qword_25425FE00);
  v2 = sub_25424DD08();
  MEMORY[0x259C05CA0](v2);

  MEMORY[0x259C05CA0](0x69746E656469203ALL, 0xEE00223D72656966);
  v3 = [v1 containerID];
  v4 = [v3 containerIdentifier];

  v5 = sub_25424DCB8();
  v7 = v6;

  MEMORY[0x259C05CA0](v5, v7);

  MEMORY[0x259C05CA0](0x7269766E65202C22, 0xEF3D746E656D6E6FLL);
  v8 = [v1 containerID];
  [v8 environment];

  v9 = CKContainerEnvironmentString();
  v10 = sub_25424DCB8();
  v12 = v11;

  MEMORY[0x259C05CA0](v10, v12);

  MEMORY[0x259C05CA0](62, 0xE100000000000000);

  return 60;
}

uint64_t sub_2541FD140(void *a1)
{
  sub_25424E688();

  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB9F0, &qword_25425FDF0);
  v2 = sub_25424DD08();
  MEMORY[0x259C05CA0](v2);

  MEMORY[0x259C05CA0](0x3D65706F6373203ALL, 0xE800000000000000);
  [a1 scope];
  v3 = CKDatabaseScopeString();
  v4 = sub_25424DCB8();
  v6 = v5;

  MEMORY[0x259C05CA0](v4, v6);

  MEMORY[0x259C05CA0](0x6961746E6F63202CLL, 0xEC0000003D72656ELL);
  v7 = [a1 container];
  v8 = sub_2541FCF50(v7);
  v10 = v9;

  MEMORY[0x259C05CA0](v8, v10);

  MEMORY[0x259C05CA0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_2541FD2B8(void *a1)
{
  if (!a1)
  {
    return 7104878;
  }

  v1 = 0xE000000000000000;
  v2 = a1;
  sub_25424E688();

  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB9F8, &qword_25425FDF8);
  v3 = sub_25424DD08();
  MEMORY[0x259C05CA0](v3);

  MEMORY[0x259C05CA0](0x3D6469203ALL, 0xE500000000000000);
  v4 = [v2 operationGroupID];
  v5 = sub_25424DCB8();
  v7 = v6;

  MEMORY[0x259C05CA0](v5, v7);

  MEMORY[0x259C05CA0](0x223D656D616E202CLL, 0xE800000000000000);
  v8 = [v2 name];
  if (v8)
  {
    v9 = v8;
    v10 = sub_25424DCB8();
    v1 = v11;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x259C05CA0](v10, v1);

  MEMORY[0x259C05CA0](15906, 0xE200000000000000);

  return 60;
}

id _s13HomeKitEvents21DatabaseConfigurationO21defaultOperationGroup9containerSo011CKOperationH0CSo11CKContainerC_tFZ_0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBC4F8]) init];
  v15[2] = 0;
  v15[3] = 0xE000000000000000;
  v15[0] = 47;
  v15[1] = 0xE100000000000000;
  v14[2] = v15;
  v3 = sub_2541D870C(0x7FFFFFFFFFFFFFFFLL, 1, sub_254148F24, v14, 0xD000000000000029, 0x8000000254250550, "eryMetricsObserver");
  if (v3[2])
  {
    v4 = v3[4];
    v5 = v3[5];
    v6 = v3[6];
    v7 = v3[7];

    v8 = MEMORY[0x259C05BF0](v4, v5, v6, v7);
    v10 = v9;

    MEMORY[0x259C05CA0](v8, v10);

    v11 = sub_25424DCA8();

    [v2 setName_];

    result = [v2 defaultConfiguration];
    if (result)
    {
      v13 = result;
      [result setContainer_];

      return v2;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2541FD5E0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25412F818;

  return sub_254168384(a1, a2, v7);
}

uint64_t sub_2541FD6A4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25412F724;

  return sub_2541FCBA4(a1, a2, v9, v11, v10);
}

uint64_t sub_2541FD78C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
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

uint64_t sub_2541FD7DC(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
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

uint64_t static HMVCommands.createEvent(eventData:scope:uploadOnly:saveOnly:skipZoneCreation:)(uint64_t a1, uint64_t a2, _BYTE *a3, char a4, char a5, char a6)
{
  *(v6 + 66) = a6;
  *(v6 + 65) = a5;
  *(v6 + 64) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 67) = *a3;
  return MEMORY[0x2822009F8](sub_2541FD88C, 0, 0);
}

uint64_t sub_2541FD88C()
{
  v1 = *(v0 + 67);
  v2 = *(v0 + 66);
  v3 = *(v0 + 65);
  v4 = *(v0 + 64);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
  v7 = swift_allocObject();
  *(v0 + 32) = v7;
  *(v7 + 16) = xmmword_254254360;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  sub_254140660(v5, v6);
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  *(v8 + 25) = v4;
  *(v8 + 26) = v3;
  *(v8 + 27) = v2;
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_2541FD9D8;

  return sub_25412FDA0(sub_25412FDA0, sub_2541FDDC4, v8);
}

uint64_t sub_2541FD9D8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_2541FDAFC;
  }

  else
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);

    v4 = sub_2541B2DAC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2541FDAFC()
{
  v1 = v0[4];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t static HMVCommands.createEvents(eventsData:scope:uploadOnly:saveOnly:skipZoneCreation:)(uint64_t a1, _BYTE *a2, char a3, char a4, char a5)
{
  *(v5 + 50) = a5;
  *(v5 + 49) = a4;
  *(v5 + 48) = a3;
  *(v5 + 16) = a1;
  *(v5 + 51) = *a2;
  return MEMORY[0x2822009F8](sub_2541FDB9C, 0, 0);
}

uint64_t sub_2541FDB9C()
{
  v1 = *(v0 + 51);
  v2 = *(v0 + 50);
  v3 = *(v0 + 49);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  *(v6 + 25) = v4;
  *(v6 + 26) = v3;
  *(v6 + 27) = v2;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_25412F910;

  return (sub_25412FDA0)();
}

void sub_2541FDCA0(void *a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, char a7)
{
  v13 = sub_25424DF88();
  v15[4] = sub_2541FDFD8;
  v15[5] = a2;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_2541ED26C;
  v15[3] = &block_descriptor_15;
  v14 = _Block_copy(v15);

  [a1 hmvutilCreateEventsWithEventsData:v13 scope:(a4 & 1u) + 1 uploadOnly:a5 & 1 saveOnly:a6 & 1 skipZoneCreation:a7 & 1 reply:v14];

  _Block_release(v14);
}

uint64_t sub_2541FDDE0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = sub_25424E128();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = sub_25412F60C;
    v10[6] = v8;

    v11 = a1;
    v12 = &unk_25425FE18;
    v13 = v7;
    v14 = v10;
  }

  else
  {
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = sub_25412F540;
    v16[6] = 0;

    v12 = &unk_254252CB0;
    v13 = v7;
    v14 = v16;
  }

  sub_25419CC1C(0, 0, v13, v12, v14);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2541FE020()
{
  result = qword_27F5BBA08;
  if (!qword_27F5BBA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBA08);
  }

  return result;
}

uint64_t static HMVCommands.uploadEvents(batchCount:)(uint64_t a1, char a2)
{
  *(v2 + 48) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2541FE098, 0, 0);
}

void sub_2541FE098()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  if ((v1 & 1) != 0 || v2 >= 1)
  {
    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1 & 1;
    v4 = swift_task_alloc();
    *(v0 + 32) = v4;
    *v4 = v0;
    v4[1] = sub_25412F910;

    sub_25412FDA0(sub_25412FDA0, sub_2541FE27C, v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_2541FE18C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_25424E308();
  }

  v8[4] = sub_2541FE480;
  v8[5] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2541ED26C;
  v8[3] = &block_descriptor_16;
  v7 = _Block_copy(v8);

  [a1 hmvutilUploadEventsWithBatchCount:v6 reply:v7];
  _Block_release(v7);
}

uint64_t sub_2541FE288(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = sub_25424E128();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = sub_25412F60C;
    v10[6] = v8;

    v11 = a1;
    v12 = &unk_254254328;
    v13 = v7;
    v14 = v10;
  }

  else
  {
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = sub_25412F540;
    v16[6] = 0;

    v12 = &unk_254252CB0;
    v13 = v7;
    v14 = v16;
  }

  sub_25419CC1C(0, 0, v13, v12, v14);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2541FE4A0(void *a1, uint64_t a2, void *a3, char a4)
{
  v5 = a3;
  if (a3)
  {
    sub_25424D948();
    v5 = sub_25424DF88();
  }

  v9[4] = sub_2541FF498;
  v9[5] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2541ED26C;
  v9[3] = &block_descriptor_10;
  v8 = _Block_copy(v9);

  [a1 clearEventsWithHomes:v5 deleteCloudZones:a4 & 1 reply:v8];
  _Block_release(v8);
}

uint64_t sub_2541FE5A0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = sub_25424E128();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = sub_25412F60C;
    v10[6] = v8;

    v11 = a1;
    v12 = &unk_25425FF10;
    v13 = v7;
    v14 = v10;
  }

  else
  {
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = sub_25412F540;
    v16[6] = 0;

    v12 = &unk_254252CB0;
    v13 = v7;
    v14 = v16;
  }

  sub_25419CC1C(0, 0, v13, v12, v14);
}

void sub_2541FE798(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_25424D948();
  sub_25414BDD4();
  v10 = sub_25424E2A8();
  v11 = sub_25424E2A8();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a2;
  v14[4] = sub_2541FF090;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2541FF2B8;
  v14[3] = &block_descriptor_17;
  v13 = _Block_copy(v14);

  [a1 clearEnergyKitDataWithPrivateHomeIdentifiers:v10 sharedHomeIdentifiers:v11 deletePrivateCloudZones:a5 & 1 reply:v13];
  _Block_release(v13);
}

uint64_t sub_2541FE900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v92 - v10;
  v12 = sub_25424D948();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v98 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v106 = &v92 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v104 = &v92 - v20;
  MEMORY[0x28223BE20](v19);
  v102 = &v92 - v21;
  v22 = *(a2 + 16);
  v23 = *(a3 + 16);
  v24 = v22 + v23;
  if (!__OFADD__(v22, v23))
  {
    v93 = v11;
    v94 = a4;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA10, &qword_25425FF00);
    v26 = sub_25414BDD4();
    v27 = MEMORY[0x259C05A50](v24, v12, v25, v26);

    v29 = sub_2541FF09C(v28, a2);
    v30 = 0;
    v32 = v29 + 56;
    v31 = *(v29 + 56);
    v103 = v29;
    v33 = 1 << *(v29 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & v31;
    v36 = (v33 + 63) >> 6;
    v108 = v13 + 16;
    v100 = (v13 + 8);
    v101 = v13 + 32;
    v37 = v104;
    v95 = a1;
    v96 = v12;
    v99 = v13;
    v97 = v29 + 56;
    while (v35)
    {
      v42 = v30;
LABEL_11:
      v43 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v44 = v102;
      v45 = *(v103 + 48);
      v105 = *(v13 + 72);
      v107 = *(v13 + 16);
      v107(v102, v45 + v105 * (v43 | (v42 << 6)), v12);
      (*(v13 + 32))(v37, v44, v12);
      if (*(a1 + 16) && (v46 = sub_2542209D4(v37), (v47 & 1) != 0))
      {
        v48 = *(*(a1 + 56) + 8 * v46);
        v49 = v98;
        v107(v98, v37, v12);
        v50 = v48;
        v51 = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = v27;
        v54 = sub_2542209D4(v49);
        v55 = v27[2];
        v56 = (v53 & 1) == 0;
        v57 = v55 + v56;
        if (__OFADD__(v55, v56))
        {
          goto LABEL_37;
        }

        v58 = v53;
        if (v27[3] >= v57)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_254223284();
          }
        }

        else
        {
          sub_254221E34(v57, isUniquelyReferenced_nonNull_native);
          v59 = sub_2542209D4(v98);
          if ((v58 & 1) != (v60 & 1))
          {
            goto LABEL_41;
          }

          v54 = v59;
        }

        v12 = v96;
        v27 = v109;
        if (v58)
        {
          v77 = v109[7] + 16 * v54;
          v78 = *v77;
          v79 = *(v77 + 8);
          *v77 = v48;
          *(v77 + 8) = 1;
          sub_2541A1114(v78, v79);

          v80 = *v100;
          (*v100)(v98, v12);
          v37 = v104;
          v80(v104, v12);
        }

        else
        {
          v109[(v54 >> 6) + 8] |= 1 << v54;
          v81 = v98;
          v107((v27[6] + v54 * v105), v98, v12);
          v82 = v27[7] + 16 * v54;
          *v82 = v48;
          *(v82 + 8) = 1;

          v83 = *v100;
          (*v100)(v81, v12);
          v37 = v104;
          v83(v104, v12);
          v84 = v27[2];
          v67 = __OFADD__(v84, 1);
          v85 = v84 + 1;
          if (v67)
          {
            goto LABEL_39;
          }

          v27[2] = v85;
        }

        v30 = v42;
        a1 = v95;
        v13 = v99;
      }

      else
      {
        v61 = v106;
        v107(v106, v37, v12);
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v109 = v27;
        v63 = sub_2542209D4(v61);
        v65 = v27[2];
        v66 = (v64 & 1) == 0;
        v67 = __OFADD__(v65, v66);
        v68 = v65 + v66;
        if (v67)
        {
          goto LABEL_35;
        }

        v69 = v64;
        if (v27[3] >= v68)
        {
          if ((v62 & 1) == 0)
          {
            v86 = v63;
            sub_254223284();
            v63 = v86;
          }
        }

        else
        {
          sub_254221E34(v68, v62);
          v63 = sub_2542209D4(v106);
          if ((v69 & 1) != (v70 & 1))
          {
            goto LABEL_40;
          }
        }

        v37 = v104;
        v27 = v109;
        if (v69)
        {
          v38 = v109[7] + 16 * v63;
          v39 = *v38;
          v40 = *(v38 + 8);
          *v38 = 0;
          *(v38 + 8) = 0;
          sub_2541A1114(v39, v40);
          v41 = *v100;
          (*v100)(v106, v12);
          v41(v37, v12);
          v30 = v42;
          v13 = v99;
        }

        else
        {
          v109[(v63 >> 6) + 8] |= 1 << v63;
          v71 = v106;
          v72 = v63;
          v107((v27[6] + v63 * v105), v106, v12);
          v73 = v27[7] + 16 * v72;
          *v73 = 0;
          *(v73 + 8) = 0;
          v74 = *v100;
          (*v100)(v71, v12);
          v74(v37, v12);
          v75 = v27[2];
          v67 = __OFADD__(v75, 1);
          v76 = v75 + 1;
          if (v67)
          {
            goto LABEL_36;
          }

          v27[2] = v76;
          v30 = v42;
          v13 = v99;
          v32 = v97;
        }
      }
    }

    while (1)
    {
      v42 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v42 >= v36)
      {

        v87 = swift_allocObject();
        *(v87 + 16) = v27;
        v88 = sub_25424E128();
        v89 = v93;
        (*(*(v88 - 8) + 56))(v93, 1, 1, v88);
        v90 = swift_allocObject();
        v90[2] = 0;
        v90[3] = 0;
        v90[4] = v94;
        v90[5] = sub_2541FF3C8;
        v90[6] = v87;

        sub_25419CC1C(0, 0, v89, &unk_25425FF08, v90);
      }

      v35 = *(v32 + 8 * v42);
      ++v30;
      if (v35)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_25424EB38();
  __break(1u);
LABEL_41:
  result = sub_25424EB38();
  __break(1u);
  return result;
}

uint64_t sub_2541FF09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v26 - v11;
  result = MEMORY[0x28223BE20](v10);
  v15 = v26 - v14;
  v16 = 0;
  v27 = a1;
  v28 = a2;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v5 + 32;
  v26[3] = v5 + 16;
  v26[1] = v5 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v5 + 16))(v15, *(v27 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v4);
      (*(v5 + 32))(v9, v15, v4);
      sub_2541695FC(v12, v9);
      result = (*(v5 + 8))(v12, v4);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2541FF2B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_25424D948();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  sub_25414BDD4();
  v3 = sub_25424DB78();

  v2(v3);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2541FF374(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8858, &qword_254252D30);
  return sub_25424E088();
}

uint64_t sub_2541FF3D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F724;

  return sub_2541315F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2541FF4A8(uint64_t a1)
{
  v2 = sub_2541FF884();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2541FF4E4(uint64_t a1)
{
  v2 = sub_2541FF884();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t HomeKitEventsError.errorCode.getter()
{
  if (*(v0 + 8))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2541FF56C()
{
  if (*(v0 + 8))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t HomeKitEventsError.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x20636972656E6547;
  }

  v2 = *v0;
  sub_25424E688();

  MEMORY[0x259C05CA0](v2, v1);
  return 0xD000000000000012;
}

uint64_t sub_2541FF62C()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x20636972656E6547;
  }

  v2 = *v0;
  sub_25424E688();

  MEMORY[0x259C05CA0](v2, v1);
  return 0xD000000000000012;
}

uint64_t HomeKitEventsError.localizedDescription.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x20636972656E6547;
  }

  v2 = *v0;
  sub_25424E688();

  MEMORY[0x259C05CA0](v2, v1);
  return 0xD000000000000012;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2541FF798(uint64_t a1, unsigned int a2)
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

uint64_t sub_2541FF7E8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2541FF83C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2541FF854(void *result, int a2)
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

unint64_t sub_2541FF884()
{
  result = qword_27F5BBA18;
  if (!qword_27F5BBA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBA18);
  }

  return result;
}

uint64_t sub_2541FF8DC(uint64_t a1, char a2)
{
  v2 = qword_254260878[a2];
  sub_25424DD88();
}

uint64_t sub_2541FF91C()
{
  sub_25424DD88();
}

uint64_t sub_2541FFA7C()
{
  if (*(v0 + 8) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v1 = *v0;
    sub_25424EBF8();
    MEMORY[0x259C06AA0](v1);
  }

  if (*(v0 + 24) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v2 = v0[2];
    sub_25424EBF8();
    MEMORY[0x259C06AA0](v2);
  }

  if (*(v0 + 40) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v3 = v0[4];
    sub_25424EBF8();
    MEMORY[0x259C06AA0](v3);
  }

  if (*(v0 + 56) == 1)
  {
    return sub_25424EBF8();
  }

  v5 = v0[6];
  sub_25424EBF8();
  return MEMORY[0x259C06AA0](v5);
}

uint64_t sub_2541FFB58()
{
  if (*(v0 + 8) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v1 = *v0;
    sub_25424EBF8();
    MEMORY[0x259C06AA0](v1);
  }

  if (*(v0 + 24) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v2 = v0[2];
    sub_25424EBF8();
    MEMORY[0x259C06AA0](v2);
  }

  if (*(v0 + 40) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v3 = v0[4];
    sub_25424EBF8();
    MEMORY[0x259C06AA0](v3);
  }

  if (*(v0 + 56) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v4 = v0[6];
    sub_25424EBF8();
    MEMORY[0x259C06AA0](v4);
  }

  if (*(v0 + 72) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v5 = v0[8];
    sub_25424EBF8();
    MEMORY[0x259C06AA0](v5);
  }

  if (*(v0 + 88) == 1)
  {
    return sub_25424EBF8();
  }

  v7 = v0[10];
  sub_25424EBF8();
  return MEMORY[0x259C06AA0](v7);
}

void *EnergyKit.LoadSessionEvent.LevelRange.init(start:end:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t EnergyKit.LoadSessionEvent.LevelRange.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x259C06AA0](*v0);
  return MEMORY[0x259C06AA0](v1);
}

uint64_t EnergyKit.LoadSessionEvent.LevelRange.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t sub_2541FFDD0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t sub_2541FFE2C()
{
  v1 = v0[1];
  MEMORY[0x259C06AA0](*v0);
  return MEMORY[0x259C06AA0](v1);
}

uint64_t sub_2541FFE68()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

__n128 EnergyKit.LoadSessionEvent.Block.tariffByEnergy.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 73) = *(v1 + 97);
  result = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 EnergyKit.LoadSessionEvent.Block.tariffByDuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  *(a1 + 32) = *(v1 + 152);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 184);
  *(a1 + 73) = *(v1 + 193);
  result = *(v1 + 120);
  v4 = *(v1 + 136);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 EnergyKit.LoadSessionEvent.Block.cleanlinessByEnergy.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  *a1 = *(v1 + 216);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 248);
  result = *(v1 + 257);
  *(a1 + 41) = result;
  return result;
}

__n128 EnergyKit.LoadSessionEvent.Block.cleanlinessByDuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 296);
  *a1 = *(v1 + 280);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 312);
  result = *(v1 + 321);
  *(a1 + 41) = result;
  return result;
}

__n128 EnergyKit.LoadSessionEvent.Block.level.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 344);
  *a1 = result;
  return result;
}

__n128 EnergyKit.LoadSessionEvent.Block.init(offsetFromStart:energy:duration:tariffByEnergy:tariffByDuration:cleanlinessByEnergy:cleanlinessByDuration:level:didFollowGuidance:)@<Q0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, _OWORD *a6@<X5>, _OWORD *a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v10 = *a2;
  v11 = *a3;
  *&v19[39] = a5[2];
  *&v19[55] = a5[3];
  *&v19[71] = a5[4];
  *&v19[80] = *(a5 + 73);
  *&v19[7] = *a5;
  *&v19[23] = a5[1];
  *&v18[48] = *(a6 + 41);
  *&v18[39] = a6[2];
  *&v18[23] = a6[1];
  *&v18[7] = *a6;
  *&v17[48] = *(a7 + 41);
  *&v17[39] = a7[2];
  *&v17[23] = a7[1];
  *&v17[7] = *a7;
  *a9 = *a1;
  *(a9 + 8) = v10;
  *(a9 + 16) = v11;
  v12 = *a4;
  *(a9 + 40) = a4[1];
  *(a9 + 24) = v12;
  v13 = a4[2];
  v14 = a4[3];
  v15 = a4[4];
  *(a9 + 97) = *(a4 + 73);
  *(a9 + 88) = v15;
  *(a9 + 72) = v14;
  *(a9 + 56) = v13;
  *(a9 + 129) = *&v19[16];
  *(a9 + 113) = *v19;
  *(a9 + 193) = *&v19[80];
  *(a9 + 177) = *&v19[64];
  *(a9 + 161) = *&v19[48];
  *(a9 + 145) = *&v19[32];
  *(a9 + 257) = *&v18[48];
  *(a9 + 241) = *&v18[32];
  *(a9 + 225) = *&v18[16];
  *(a9 + 209) = *v18;
  *(a9 + 305) = *&v17[32];
  *(a9 + 321) = *&v17[48];
  *(a9 + 273) = *v17;
  *(a9 + 289) = *&v17[16];
  result = *a8;
  *(a9 + 344) = *a8;
  *(a9 + 360) = a10;
  return result;
}

uint64_t EnergyKit.LoadSessionEvent.Block.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v20 = *(v0 + 56);
  v21 = *(v0 + 72);
  *v22 = *(v0 + 88);
  *&v22[9] = *(v0 + 97);
  v18 = *(v0 + 24);
  v19 = *(v0 + 40);
  v13 = *(v0 + 120);
  v14 = *(v0 + 136);
  *&v17[9] = *(v0 + 193);
  v16 = *(v0 + 168);
  *v17 = *(v0 + 184);
  v15 = *(v0 + 152);
  *&v12[9] = *(v0 + 257);
  v11 = *(v0 + 232);
  *v12 = *(v0 + 248);
  v10 = *(v0 + 216);
  *&v9[9] = *(v0 + 321);
  v8 = *(v0 + 296);
  *v9 = *(v0 + 312);
  v7 = *(v0 + 280);
  v3 = *(v0 + 344);
  v4 = *(v0 + 352);
  v5 = *(v0 + 360);
  MEMORY[0x259C06AA0](*v0);
  MEMORY[0x259C06AA0](v1);
  MEMORY[0x259C06AA0](v2);
  sub_2541FFB58();
  sub_2541FFB58();
  sub_2541FFA7C();
  sub_2541FFA7C();
  MEMORY[0x259C06AA0](v3);
  MEMORY[0x259C06AA0](v4);
  return sub_25424EBF8();
}

uint64_t EnergyKit.LoadSessionEvent.Block.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v21 = *(v0 + 7);
  v22 = *(v0 + 9);
  *v23 = *(v0 + 11);
  *&v23[9] = *(v0 + 97);
  v19 = *(v0 + 3);
  v20 = *(v0 + 5);
  v14 = *(v0 + 15);
  v15 = *(v0 + 17);
  *&v18[9] = *(v0 + 193);
  v17 = *(v0 + 21);
  *v18 = *(v0 + 23);
  v16 = *(v0 + 19);
  *&v13[9] = *(v0 + 257);
  v12 = *(v0 + 29);
  *v13 = *(v0 + 31);
  v11 = *(v0 + 27);
  *&v10[9] = *(v0 + 321);
  v9 = *(v0 + 37);
  *v10 = *(v0 + 39);
  v8 = *(v0 + 35);
  v5 = v0[43];
  v4 = v0[44];
  v6 = *(v0 + 360);
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v2);
  MEMORY[0x259C06AA0](v1);
  MEMORY[0x259C06AA0](v3);
  sub_2541FFB58();
  sub_2541FFB58();
  sub_2541FFA7C();
  sub_2541FFA7C();
  MEMORY[0x259C06AA0](v5);
  MEMORY[0x259C06AA0](v4);
  sub_25424EBF8();
  return sub_25424EC28();
}

uint64_t sub_254200390()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v21 = *(v0 + 7);
  v22 = *(v0 + 9);
  *v23 = *(v0 + 11);
  *&v23[9] = *(v0 + 97);
  v19 = *(v0 + 3);
  v20 = *(v0 + 5);
  v14 = *(v0 + 15);
  v15 = *(v0 + 17);
  *&v18[9] = *(v0 + 193);
  v17 = *(v0 + 21);
  *v18 = *(v0 + 23);
  v16 = *(v0 + 19);
  *&v13[9] = *(v0 + 257);
  v12 = *(v0 + 29);
  *v13 = *(v0 + 31);
  v11 = *(v0 + 27);
  *&v10[9] = *(v0 + 321);
  v9 = *(v0 + 37);
  *v10 = *(v0 + 39);
  v8 = *(v0 + 35);
  v5 = v0[43];
  v4 = v0[44];
  v6 = *(v0 + 360);
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v2);
  MEMORY[0x259C06AA0](v1);
  MEMORY[0x259C06AA0](v3);
  sub_2541FFB58();
  sub_2541FFB58();
  sub_2541FFA7C();
  sub_2541FFA7C();
  MEMORY[0x259C06AA0](v5);
  MEMORY[0x259C06AA0](v4);
  sub_25424EBF8();
  return sub_25424EC28();
}

uint64_t EnergyKit.LoadSessionEvent.init(dateInterval:homeIdentifier:siteIdentifier:sourceIdentifier:deviceIdentifier:sessionIdentifier:loadType:consumptionBlocks:productionBlocks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12)
{
  v34 = *a10;
  sub_25424D1D8();
  v16 = type metadata accessor for EventBase(0);
  v17 = v16[5];
  v18 = sub_25424D948();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(a9 + v17, a2, v18);
  v21 = type metadata accessor for EnergyKit.EventBase();
  v20(a9 + v21[5], a3, v18);
  *(a9 + v16[6]) = 5;
  v22 = (a9 + v16[7]);
  v22[1] = 0;
  v22[2] = 0;
  *v22 = 15;
  v23 = (a9 + v21[6]);
  *v23 = a4;
  v23[1] = a5;
  v24 = (a9 + v21[7]);
  *v24 = a6;
  v24[1] = a7;
  v25 = a9 + *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);
  sub_25424D1F8();
  v26 = *(v19 + 8);
  v26(a3, v18);
  v26(a2, v18);
  v27 = sub_25424D218();
  (*(*(v27 - 8) + 8))(a1, v27);
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  result = (*(v19 + 32))(v25 + SessionEventV5StateVMa[5], a8, v18);
  *(v25 + SessionEventV5StateVMa[6]) = v34;
  *(v25 + SessionEventV5StateVMa[7]) = a11;
  *(v25 + SessionEventV5StateVMa[8]) = a12;
  return result;
}

uint64_t EnergyKit.LoadSessionEvent.init(dateInterval:homeIdentifier:siteIdentifier:sourceIdentifier:deviceIdentifier:sessionIdentifier:loadType:consumptionBlocks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 *a10, uint64_t a11)
{
  v53 = a3;
  v54 = a8;
  v50 = a6;
  v51 = a7;
  v48 = a4;
  v49 = a5;
  v42 = a2;
  v45 = a1;
  v52 = a11;
  v14 = sub_25424D948();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v44 = sub_25424D218();
  v46 = *(v44 - 8);
  v22 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a10;
  (*(v25 + 16))(v24, a1);
  v26 = v15[2];
  v41 = v21;
  v26(v21, a2, v14);
  v27 = v19;
  v26(v19, v53, v14);
  v28 = a9 + *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  v26((v28 + *(SessionEventV5StateVMa + 20)), v54, v14);
  sub_25424D1D8();
  v29 = type metadata accessor for EventBase(0);
  v26((a9 + v29[5]), v21, v14);
  v30 = type metadata accessor for EnergyKit.EventBase();
  v26((a9 + v30[5]), v27, v14);
  *(a9 + v29[6]) = 5;
  v31 = (a9 + v29[7]);
  v31[1] = 0;
  v31[2] = 0;
  *v31 = 15;
  v32 = (a9 + v30[6]);
  v33 = v49;
  *v32 = v48;
  v32[1] = v33;
  v34 = (a9 + v30[7]);
  v35 = v51;
  *v34 = v50;
  v34[1] = v35;
  sub_25424D1F8();
  v36 = v15[1];
  v36(v54, v14);
  v36(v53, v14);
  v36(v42, v14);
  v37 = *(v46 + 8);
  v38 = v44;
  v37(v45, v44);
  v36(v27, v14);
  v36(v41, v14);
  result = (v37)(v24, v38);
  v40 = SessionEventV5StateVMa;
  *(v28 + *(SessionEventV5StateVMa + 24)) = v47;
  *(v28 + *(v40 + 28)) = v52;
  *(v28 + *(v40 + 32)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t EnergyKit.LoadSessionEvent.init(dateInterval:homeIdentifier:siteIdentifier:sourceIdentifier:deviceIdentifier:sessionIdentifier:loadType:productionBlocks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 *a10, uint64_t a11)
{
  v53 = a3;
  v54 = a8;
  v50 = a6;
  v51 = a7;
  v48 = a4;
  v49 = a5;
  v42 = a2;
  v45 = a1;
  v52 = a11;
  v14 = sub_25424D948();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v44 = sub_25424D218();
  v46 = *(v44 - 8);
  v22 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a10;
  (*(v25 + 16))(v24, a1);
  v26 = v15[2];
  v41 = v21;
  v26(v21, a2, v14);
  v27 = v19;
  v26(v19, v53, v14);
  v28 = a9 + *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  v26((v28 + *(SessionEventV5StateVMa + 20)), v54, v14);
  sub_25424D1D8();
  v29 = type metadata accessor for EventBase(0);
  v26((a9 + v29[5]), v21, v14);
  v30 = type metadata accessor for EnergyKit.EventBase();
  v26((a9 + v30[5]), v27, v14);
  *(a9 + v29[6]) = 5;
  v31 = (a9 + v29[7]);
  v31[1] = 0;
  v31[2] = 0;
  *v31 = 15;
  v32 = (a9 + v30[6]);
  v33 = v49;
  *v32 = v48;
  v32[1] = v33;
  v34 = (a9 + v30[7]);
  v35 = v51;
  *v34 = v50;
  v34[1] = v35;
  sub_25424D1F8();
  v36 = v15[1];
  v36(v54, v14);
  v36(v53, v14);
  v36(v42, v14);
  v37 = *(v46 + 8);
  v38 = v44;
  v37(v45, v44);
  v36(v27, v14);
  v36(v41, v14);
  result = (v37)(v24, v38);
  v40 = SessionEventV5StateVMa;
  *(v28 + *(SessionEventV5StateVMa + 24)) = v47;
  *(v28 + *(v40 + 28)) = MEMORY[0x277D84F90];
  *(v28 + *(v40 + 32)) = v52;
  return result;
}

uint64_t EnergyKit.LoadSessionEvent.sessionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);
  v4 = *(_s16LoadSessionEventV5StateVMa(0) + 20);
  v5 = sub_25424D948();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t EnergyKit.LoadSessionEvent.loadType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);
  result = _s16LoadSessionEventV5StateVMa(0);
  *a1 = *(v3 + *(result + 24));
  return result;
}

uint64_t EnergyKit.LoadSessionEvent.consumptionBlocks.getter()
{
  v1 = v0 + *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);
  v2 = *(v1 + *(_s16LoadSessionEventV5StateVMa(0) + 28));
}

uint64_t EnergyKit.LoadSessionEvent.productionBlocks.getter()
{
  v1 = v0 + *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);
  v2 = *(v1 + *(_s16LoadSessionEventV5StateVMa(0) + 32));
}

uint64_t EnergyKit.LoadSessionEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  v6 = *(*(SessionEventV5StateVMa - 8) + 64);
  v7 = MEMORY[0x28223BE20](SessionEventV5StateVMa);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = type metadata accessor for EnergyKit.EventBase();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  sub_254137E94(v16, v9, a1);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_254204E6C(v16, v18, type metadata accessor for EnergyKit.EventBase);
  sub_254204E6C(v9, v11, _s16LoadSessionEventV5StateVMa);
  v19 = *(type metadata accessor for EventBase(0) + 24);
  if (v18[v19] != 5)
  {
    v25 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_25424E688();
    MEMORY[0x259C05CA0](0xD000000000000012, 0x80000002542503A0);
    MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254260040);
    MEMORY[0x259C05CA0](0xD000000000000020, 0x80000002542503C0);
    LOBYTE(v32) = v18[v19];
LABEL_10:
    sub_25424E7D8();
    goto LABEL_11;
  }

  if (!*(*&v11[*(SessionEventV5StateVMa + 28)] + 16) && !*(*&v11[*(SessionEventV5StateVMa + 32)] + 16))
  {
    v29 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_25424E688();
    MEMORY[0x259C05CA0](0xD000000000000012, 0x80000002542503A0);
    MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254260040);
    MEMORY[0x259C05CA0](0xD000000000000029, 0x8000000254251720);
LABEL_11:
    sub_25424E6F8();
    swift_allocError();
    static DecodingError.dataCorruptedError<A>(_:_:)(v26);

    swift_willThrow();
    sub_254204ED4(v18, type metadata accessor for EnergyKit.EventBase);
    sub_254204ED4(v11, _s16LoadSessionEventV5StateVMa);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = *&v11[*(SessionEventV5StateVMa + 28)];

  sub_2542046AC(v20);
  v21 = *(v30 + 16) + 1;
  v22 = 32;
  while (--v21)
  {
    v23 = *(v30 + v22);
    v22 += 368;
    if (v23 < 0)
    {

      v24 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000012, 0x80000002542503A0);
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254260040);
      MEMORY[0x259C05CA0](0xD000000000000040, 0x80000002542516D0);
      v32 = v23;
      goto LABEL_10;
    }
  }

  sub_254204E6C(v18, a2, type metadata accessor for EnergyKit.EventBase);
  SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
  sub_254204E6C(v11, a2 + *(SessionEvent + 20), _s16LoadSessionEventV5StateVMa);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EnergyKit.LoadSessionEvent.encode(to:)(void *a1)
{
  v2 = v1;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CD8, &qword_254253D10);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v24 = *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);
  v8 = sub_25424D8B8();
  (*(*(v8 - 8) + 16))(v7, v1, v8);
  v9 = type metadata accessor for EventBase(0);
  v10 = *(v9 + 20);
  v11 = v4[13];
  v12 = sub_25424D948();
  v13 = *(*(v12 - 8) + 16);
  v13(&v7[v11], v2 + v10, v12);
  LOBYTE(v11) = *(v2 + *(v9 + 24));
  v14 = type metadata accessor for EnergyKit.EventBase();
  v13(&v7[v4[15]], v2 + v14[5], v12);
  v15 = v14[7];
  v16 = (v2 + v14[6]);
  v17 = *v16;
  v18 = v16[1];
  v20 = *(v2 + v15);
  v19 = *(v2 + v15 + 8);
  sub_254204F34(v2 + v24, &v7[v4[18]]);
  v7[v4[14]] = v11;
  v21 = &v7[v4[16]];
  *v21 = v17;
  *(v21 + 1) = v18;
  v22 = &v7[v4[17]];
  *v22 = v20;
  *(v22 + 1) = v19;

  sub_25413C298(v25);
  return sub_254204F98(v7);
}

uint64_t sub_25420165C(void *a1, uint64_t a2)
{
  v4 = v2;
  v27 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CD8, &qword_254253D10);
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v26 = *(a2 + 20);
  v10 = sub_25424D8B8();
  (*(*(v10 - 8) + 16))(v9, v2, v10);
  v11 = type metadata accessor for EventBase(0);
  v12 = *(v11 + 20);
  v13 = v6[13];
  v14 = sub_25424D948();
  v15 = *(*(v14 - 8) + 16);
  v15(&v9[v13], v4 + v12, v14);
  LOBYTE(v13) = *(v4 + *(v11 + 24));
  v16 = type metadata accessor for EnergyKit.EventBase();
  v15(&v9[v6[15]], v4 + v16[5], v14);
  v17 = v16[7];
  v18 = (v4 + v16[6]);
  v19 = *v18;
  v20 = v18[1];
  v22 = *(v4 + v17);
  v21 = *(v4 + v17 + 8);
  sub_254204F34(v4 + v26, &v9[v6[18]]);
  v9[v6[14]] = v13;
  v23 = &v9[v6[16]];
  *v23 = v19;
  *(v23 + 1) = v20;
  v24 = &v9[v6[17]];
  *v24 = v22;
  *(v24 + 1) = v21;

  sub_25413C298(v27);
  return sub_254204F98(v9);
}

uint64_t sub_254201870@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t EnergyKit.LoadSessionEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t static EnergyKit.LoadSessionEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EventBase(0);
  v5 = *(v4 + 20);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  if (qword_2542608B8[*(a1 + *(v4 + 24))] != qword_2542608B8[*(a2 + *(v4 + 24))])
  {
    return 0;
  }

  v6 = type metadata accessor for EnergyKit.EventBase();
  v7 = v6[5];
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v8 = v6[6];
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v9 == *v11 && v10 == v11[1];
  if (!v12 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v13 = v6[7];
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v14 == *v16 && v15 == v16[1];
  if (!v17 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);

  return sub_254204A80(a1 + v18, a2 + v18);
}

uint64_t EnergyKit.LoadSessionEvent.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_25424D8B8();
  sub_254205000(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v4 = type metadata accessor for EventBase(0);
  v5 = *(v4 + 20);
  sub_25424D948();
  sub_254205000(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_2542608B8[*(v2 + *(v4 + 24))]);
  v6 = type metadata accessor for EnergyKit.EventBase();
  v7 = v2 + v6[5];
  sub_25424DC28();
  v8 = (v2 + v6[6]);
  v9 = *v8;
  v10 = v8[1];
  sub_25424DD88();
  v11 = (v2 + v6[7]);
  v12 = *v11;
  v13 = v11[1];
  sub_25424DD88();
  v14 = v2 + *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);
  sub_25424DC28();
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  v16 = v14 + SessionEventV5StateVMa[5];
  sub_25424DC28();
  *(v14 + SessionEventV5StateVMa[6]);
  sub_25424DD88();

  sub_25420479C(a1, *(v14 + SessionEventV5StateVMa[7]));
  v17 = *(v14 + SessionEventV5StateVMa[8]);

  return sub_25420479C(a1, v17);
}

uint64_t EnergyKit.LoadSessionEvent.hashValue.getter()
{
  sub_25424EBD8();
  EnergyKit.LoadSessionEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_254201CDC()
{
  sub_25424EBD8();
  EnergyKit.LoadSessionEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_254201D20()
{
  sub_25424EBD8();
  EnergyKit.LoadSessionEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_254201D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for EventBase(0);
  v7 = *(v6 + 20);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  if (qword_2542608B8[*(a1 + *(v6 + 24))] != qword_2542608B8[*(a2 + *(v6 + 24))])
  {
    return 0;
  }

  v8 = type metadata accessor for EnergyKit.EventBase();
  v9 = v8[5];
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v10 = v8[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v15 = v8[7];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v20 = *(a3 + 20);

  return sub_254204A80(a1 + v20, a2 + v20);
}

uint64_t EnergyKit.LoadSessionEvent.sourceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for EnergyKit.EventBase() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t EnergyKit.LoadSessionEvent.deviceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for EnergyKit.EventBase() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_254201F2C()
{
  v1 = v0;
  sub_25424EBD8();
  sub_25424D8B8();
  sub_254205000(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  v3 = SessionEventV5StateVMa[5];
  sub_25424D948();
  sub_254205000(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  if (*(v1 + SessionEventV5StateVMa[6]))
  {
    v4 = *(v1 + SessionEventV5StateVMa[6]) == 1;
  }

  sub_25424DD88();

  sub_25420479C(v6, *(v1 + SessionEventV5StateVMa[7]));
  sub_25420479C(v6, *(v1 + SessionEventV5StateVMa[8]));
  return sub_25424EC28();
}

uint64_t sub_2542020B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBB80, &qword_254260728);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254205AF4();
  sub_25424EC78();
  LOBYTE(v15) = 0;
  sub_25424D8B8();
  sub_254205000(&qword_27F5B8C78, MEMORY[0x277CC9578]);
  sub_25424EA18();
  if (!v2)
  {
    SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
    v12 = SessionEventV5StateVMa[5];
    LOBYTE(v15) = 1;
    sub_25424D948();
    sub_254205000(&qword_27F5B89D8, MEMORY[0x277CC95F0]);
    sub_25424EA18();
    LOBYTE(v15) = *(v3 + SessionEventV5StateVMa[6]);
    v16 = 2;
    sub_25413EF3C();
    sub_25424EA18();
    v15 = *(v3 + SessionEventV5StateVMa[7]);
    v16 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBB68, &qword_254260720);
    sub_254205B9C(&qword_27F5BBB88, sub_254205C14);
    sub_25424EA18();
    v15 = *(v3 + SessionEventV5StateVMa[8]);
    v16 = 4;
    sub_25424EA18();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2542023C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_25424D948();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25424D8B8();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v30 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBB58, &qword_254260718);
  v29 = *(v32 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v32);
  v12 = &v25 - v11;
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  v14 = *(*(SessionEventV5StateVMa - 1) + 64);
  MEMORY[0x28223BE20](SessionEventV5StateVMa);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254205AF4();
  v31 = v12;
  v18 = v33;
  sub_25424EC68();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v6;
  v20 = v27;
  v21 = v28;
  LOBYTE(v34) = 0;
  sub_254205000(&qword_27F5B8CA8, MEMORY[0x277CC9578]);
  sub_25424E978();
  v22 = *(v26 + 32);
  v33 = v7;
  v22(v16, v30);
  LOBYTE(v34) = 1;
  sub_254205000(&qword_27F5B89F0, MEMORY[0x277CC95F0]);
  sub_25424E978();
  (*(v20 + 32))(&v16[SessionEventV5StateVMa[5]], v19, v21);
  v35 = 2;
  sub_25413F0F8();
  sub_25424E978();
  v16[SessionEventV5StateVMa[6]] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBB68, &qword_254260720);
  v35 = 3;
  sub_254205B9C(&qword_27F5BBB70, sub_254205B48);
  v30 = v16;
  sub_25424E978();
  *&v30[SessionEventV5StateVMa[7]] = v34;
  v35 = 4;
  sub_25424E978();
  (*(v29 + 8))(v31, v32);
  v23 = v30;
  *&v30[SessionEventV5StateVMa[8]] = v34;
  sub_254204F34(v23, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_254204ED4(v23, _s16LoadSessionEventV5StateVMa);
}

unint64_t sub_25420299C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74657366666FLL;
    v6 = 0x6E6F697461727564;
    if (a1 != 2)
    {
      v6 = 0x7942666669726174;
    }

    if (a1)
    {
      v5 = 0x796772656E65;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    v2 = 0x6C6576656CLL;
    if (a1 != 7)
    {
      v2 = 0x65636E6164697567;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_254202ACC(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_25424D8B8();
  sub_254205000(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v6 = a2[5];
  sub_25424D948();
  sub_254205000(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  if (*(v4 + a2[6]))
  {
    v7 = *(v4 + a2[6]) == 1;
  }

  sub_25424DD88();

  sub_25420479C(a1, *(v4 + a2[7]));
  v8 = *(v4 + a2[8]);

  return sub_25420479C(a1, v8);
}

uint64_t sub_254202C44(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_25424EBD8();
  sub_25424D8B8();
  sub_254205000(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v5 = a2[5];
  sub_25424D948();
  sub_254205000(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  if (*(v4 + a2[6]))
  {
    v6 = *(v4 + a2[6]) == 1;
  }

  sub_25424DD88();

  sub_25420479C(v8, *(v4 + a2[7]));
  sub_25420479C(v8, *(v4 + a2[8]));
  return sub_25424EC28();
}

uint64_t sub_254202DCC()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254202EB0()
{
  *v0;
  *v0;
  *v0;
  sub_25424DD88();
}

uint64_t sub_254202F80()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254203060@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_254205D80();
  *a2 = result;
  return result;
}

void sub_254203090(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  v5 = 0xE400000000000000;
  v6 = 1701869940;
  v7 = 0xEB000000006E6F69;
  v8 = 0x74706D75736E6F63;
  if (v2 != 3)
  {
    v8 = 0x69746375646F7270;
    v7 = 0xEA00000000006E6FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E6F6973736573;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_254203130()
{
  v1 = *v0;
  v2 = 0x7472617473;
  v3 = 1701869940;
  v4 = 0x74706D75736E6F63;
  if (v1 != 3)
  {
    v4 = 0x69746375646F7270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F6973736573;
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

uint64_t sub_2542031CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254205D80();
  *a1 = result;
  return result;
}

uint64_t sub_2542031F4(uint64_t a1)
{
  v2 = sub_254205AF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254203230(uint64_t a1)
{
  v2 = sub_254205AF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2542032A8()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_2541FF91C();
  return sub_25424EC28();
}

uint64_t sub_2542032F8()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_2541FF91C();
  return sub_25424EC28();
}

uint64_t sub_25420333C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_254205AA8();
  *a2 = result;
  return result;
}

unint64_t sub_25420336C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25420299C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2542033B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254205AA8();
  *a1 = result;
  return result;
}

uint64_t sub_2542033E8(uint64_t a1)
{
  v2 = sub_254205048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254203424(uint64_t a1)
{
  v2 = sub_254205048();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyKit.LoadSessionEvent.Block.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA20, "Ʃ");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v11 = *v3;
  v10 = v3[1];
  v24 = v3[2];
  v25 = v10;
  v12 = v3[43];
  v22 = v3[44];
  v23 = v12;
  v30 = *(v3 + 360);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254205048();
  sub_25424EC78();
  *&v26 = v11;
  v31 = 0;
  sub_2541F7C5C();
  sub_25424EA18();
  if (!v2)
  {
    v14 = v24;
    *&v26 = v25;
    v31 = 1;
    sub_25413ECF0();
    sub_25424EA18();
    *&v26 = v14;
    v31 = 2;
    sub_25424EA18();
    v15 = *(v3 + 9);
    *v28 = *(v3 + 7);
    *&v28[16] = v15;
    v29[0] = *(v3 + 11);
    *(v29 + 9) = *(v3 + 97);
    v16 = *(v3 + 5);
    v26 = *(v3 + 3);
    v27 = v16;
    v31 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA30, &qword_254260088);
    sub_25414081C(&qword_27F5BBA38, &qword_27F5BBA30, &qword_254260088);
    sub_25424EA18();
    v17 = *(v3 + 21);
    *v28 = *(v3 + 19);
    *&v28[16] = v17;
    v29[0] = *(v3 + 23);
    *(v29 + 9) = *(v3 + 193);
    v18 = *(v3 + 17);
    v26 = *(v3 + 15);
    v27 = v18;
    v31 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA40, &qword_254260090);
    sub_25414081C(&qword_27F5BBA48, &qword_27F5BBA40, &qword_254260090);
    sub_25424EA18();
    v19 = *(v3 + 29);
    v26 = *(v3 + 27);
    v27 = v19;
    *v28 = *(v3 + 31);
    *&v28[9] = *(v3 + 257);
    v31 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA50, &qword_254260098);
    sub_25414081C(&qword_27F5BBA58, &qword_27F5BBA50, &qword_254260098);
    sub_25424EA18();
    v20 = *(v3 + 37);
    v26 = *(v3 + 35);
    v27 = v20;
    *v28 = *(v3 + 39);
    *&v28[9] = *(v3 + 321);
    v31 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA60, &qword_2542600A0);
    sub_25414081C(&qword_27F5BBA68, &qword_27F5BBA60, &qword_2542600A0);
    sub_25424EA18();
    *&v26 = v23;
    *(&v26 + 1) = v22;
    v31 = 7;
    sub_25420509C();
    sub_25424EA18();
    LOBYTE(v26) = 8;
    sub_25424E9E8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t EnergyKit.LoadSessionEvent.Block.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA78, &qword_2542600A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_254205048();
  sub_25424EC68();
  if (!v2)
  {
    v36 = a2;
    v37 = v6;
    LOBYTE(v50) = 0;
    sub_2541F7C08();
    v12 = v5;
    sub_25424E978();
    v13 = v56;
    LOBYTE(v50) = 1;
    sub_25413EE40();
    sub_25424E978();
    v35 = v13;
    v14 = v56;
    LOBYTE(v50) = 2;
    sub_25424E978();
    v16 = v14;
    v17 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA30, &qword_254260088);
    v55 = 3;
    sub_25414081C(&qword_27F5BBA80, &qword_27F5BBA30, &qword_254260088);
    sub_25424E978();
    v34 = v17;
    v66 = v58;
    v67 = v59;
    v68[0] = v60[0];
    *(v68 + 9) = *(v60 + 9);
    v64 = v56;
    v65 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA40, &qword_254260090);
    v49 = 4;
    sub_25414081C(&qword_27F5BBA88, &qword_27F5BBA40, &qword_254260090);
    sub_25424E978();
    *(&v63[2] + 7) = v52;
    *(&v63[3] + 7) = v53;
    *(&v63[4] + 7) = *v54;
    v63[5] = *&v54[9];
    *(v63 + 7) = v50;
    *(&v63[1] + 7) = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA50, &qword_254260098);
    v45 = 5;
    sub_25414081C(&qword_27F5BBA90, &qword_27F5BBA50, &qword_254260098);
    sub_25424E978();
    *(v62 + 7) = v46;
    *(&v62[1] + 7) = v47;
    *(&v62[2] + 7) = *v48;
    v62[3] = *&v48[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA60, &qword_2542600A0);
    v41 = 6;
    sub_25414081C(&qword_27F5BBA98, &qword_27F5BBA60, &qword_2542600A0);
    sub_25424E978();
    *(v61 + 7) = v42;
    *(&v61[1] + 7) = v43;
    *(&v61[2] + 7) = *v44;
    v61[3] = *&v44[9];
    v38 = 7;
    sub_2542050F0();
    sub_25424E978();
    v19 = v39;
    v18 = v40;
    LOBYTE(v39) = 8;
    v20 = sub_25424E948();
    (*(v37 + 8))(v9, v12);
    v21 = v36;
    *v36 = v35;
    v21[1] = v16;
    v21[2] = v34;
    v22 = v67;
    *(v21 + 7) = v66;
    *(v21 + 9) = v22;
    *(v21 + 11) = v68[0];
    *(v21 + 97) = *(v68 + 9);
    v23 = v65;
    *(v21 + 3) = v64;
    *(v21 + 5) = v23;
    v24 = v63[0];
    *(v21 + 129) = v63[1];
    *(v21 + 113) = v24;
    v25 = v63[2];
    v26 = v63[3];
    v27 = v63[4];
    *(v21 + 193) = v63[5];
    *(v21 + 177) = v27;
    *(v21 + 161) = v26;
    *(v21 + 145) = v25;
    v28 = v62[0];
    v29 = v62[1];
    v30 = v62[2];
    *(v21 + 257) = v62[3];
    *(v21 + 241) = v30;
    *(v21 + 225) = v29;
    *(v21 + 209) = v28;
    v31 = v61[0];
    v32 = v61[1];
    v33 = v61[3];
    *(v21 + 305) = v61[2];
    *(v21 + 321) = v33;
    *(v21 + 273) = v31;
    *(v21 + 289) = v32;
    v21[43] = v19;
    v21[44] = v18;
    *(v21 + 360) = v20 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t sub_254203F64(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 6581861;
  }

  else
  {
    v4 = 0x7472617473;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 6581861;
  }

  else
  {
    v6 = 0x7472617473;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();
  }

  return v9 & 1;
}

uint64_t sub_254204000()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254204078()
{
  *v0;
  sub_25424DD88();
}

uint64_t sub_2542040DC()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254204150@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25424E8E8();

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

void sub_2542041B0(uint64_t *a1@<X8>)
{
  v2 = 6581861;
  if (!*v1)
  {
    v2 = 0x7472617473;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2542041E4()
{
  if (*v0)
  {
    result = 6581861;
  }

  else
  {
    result = 0x7472617473;
  }

  *v0;
  return result;
}

uint64_t sub_254204214@<X0>(char *a1@<X8>)
{
  v2 = sub_25424E8E8();

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

uint64_t sub_254204278(uint64_t a1)
{
  v2 = sub_254205144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2542042B4(uint64_t a1)
{
  v2 = sub_254205144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyKit.LoadSessionEvent.LevelRange.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBAA8, &qword_2542600B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254205144();
  sub_25424EC78();
  v14 = v9;
  v13 = 0;
  sub_25413EFE4();
  sub_25424EA18();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_25424EA18();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t EnergyKit.LoadSessionEvent.LevelRange.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBAB8, &qword_2542600B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254205144();
  sub_25424EC68();
  if (!v2)
  {
    v15 = 0;
    sub_25413F1A0();
    sub_25424E978();
    v11 = v16;
    v15 = 1;
    sub_25424E978();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2542046AC(uint64_t result)
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

  result = sub_2541B116C(result, v12, 1, v3);
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

  memcpy((v3 + 368 * v8 + 32), (v6 + 32), 368 * v2);

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

uint64_t sub_25420479C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x259C06AA0](v3);
  if (v3)
  {
    v5 = (a2 + 248);
    do
    {
      v6 = *(v5 - 26);
      v7 = *(v5 - 25);
      v34 = *(v5 - 10);
      v35 = *(v5 - 9);
      *v36 = *(v5 - 8);
      *&v36[9] = *(v5 - 119);
      v32 = *(v5 - 12);
      v33 = *(v5 - 11);
      v27 = *(v5 - 6);
      v28 = *(v5 - 5);
      *&v31[9] = *(v5 - 23);
      v30 = *(v5 - 3);
      *v31 = *(v5 - 2);
      v29 = *(v5 - 4);
      v8 = *v5;
      v9 = *(v5 + 8);
      v10 = *(v5 + 24);
      v12 = v5[2];
      v13 = v5[4];
      v11 = *(v5 + 40);
      v14 = v5[6];
      v15 = v5[8];
      v19 = *(v5 + 56);
      v20 = *(v5 + 72);
      v16 = v5[10];
      v17 = v5[12];
      v21 = *(v5 + 88);
      v22 = *(v5 + 104);
      v18 = v5[14];
      v23 = *(v5 + 120);
      v24 = v5[16];
      v25 = v5[17];
      v26 = *(v5 + 144);
      MEMORY[0x259C06AA0](*(v5 - 27));
      MEMORY[0x259C06AA0](v6);
      MEMORY[0x259C06AA0](v7);
      sub_2541FFB58();
      sub_2541FFB58();
      if (v9 == 1)
      {
        sub_25424EBF8();
        if (v10)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_25424EBF8();
        MEMORY[0x259C06AA0](v8);
        if (v10)
        {
LABEL_7:
          sub_25424EBF8();
          if (v11)
          {
            goto LABEL_8;
          }

          goto LABEL_16;
        }
      }

      sub_25424EBF8();
      MEMORY[0x259C06AA0](v12);
      if (v11)
      {
LABEL_8:
        sub_25424EBF8();
        if (v19)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
      }

LABEL_16:
      sub_25424EBF8();
      MEMORY[0x259C06AA0](v13);
      if (v19)
      {
LABEL_9:
        sub_25424EBF8();
        if (v20)
        {
          goto LABEL_10;
        }

        goto LABEL_18;
      }

LABEL_17:
      sub_25424EBF8();
      MEMORY[0x259C06AA0](v14);
      if (v20)
      {
LABEL_10:
        sub_25424EBF8();
        if (v21)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }

LABEL_18:
      sub_25424EBF8();
      MEMORY[0x259C06AA0](v15);
      if (v21)
      {
LABEL_11:
        sub_25424EBF8();
        if (v22)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_25424EBF8();
      MEMORY[0x259C06AA0](v16);
      if (v22)
      {
LABEL_12:
        sub_25424EBF8();
        if (!v23)
        {
          goto LABEL_21;
        }

        goto LABEL_3;
      }

LABEL_20:
      sub_25424EBF8();
      MEMORY[0x259C06AA0](v17);
      if (!v23)
      {
LABEL_21:
        sub_25424EBF8();
        MEMORY[0x259C06AA0](v18);
        goto LABEL_4;
      }

LABEL_3:
      sub_25424EBF8();
LABEL_4:
      MEMORY[0x259C06AA0](v24);
      MEMORY[0x259C06AA0](v25);
      result = sub_25424EBF8();
      v5 += 46;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_254204A80(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  v5 = SessionEventV5StateVMa[5];
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v6 = SessionEventV5StateVMa[6];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7)
  {
    if (v7 == 1)
    {
      v9 = 0xE400000000000000;
      v10 = 1667331688;
      if (!v8)
      {
LABEL_12:
        v11 = 0xE500000000000000;
        if (v10 != 0x726568746FLL)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v10 = 0x6369727463656C65;
      v9 = 0xEF656C6369686556;
      if (!v8)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v9 = 0xE500000000000000;
    v10 = 0x726568746FLL;
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  if (v8 == 1)
  {
    v11 = 0xE400000000000000;
    if (v10 != 1667331688)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = 0xEF656C6369686556;
    if (v10 != 0x6369727463656C65)
    {
      goto LABEL_17;
    }
  }

LABEL_15:
  if (v9 == v11)
  {

    goto LABEL_18;
  }

LABEL_17:
  v12 = sub_25424EAB8();

  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  if ((sub_25420DDB0(*(a1 + SessionEventV5StateVMa[7]), *(a2 + SessionEventV5StateVMa[7])) & 1) == 0)
  {
    return 0;
  }

  v13 = SessionEventV5StateVMa[8];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);

  return sub_25420DDB0(v14, v15);
}

uint64_t _s13HomeKitEvents06EnergyB0O16LoadSessionEventV5BlockV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  result = 0;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 9);
  v55[2] = *(a1 + 7);
  v55[3] = v7;
  v56[0] = *(a1 + 11);
  *(v56 + 9) = *(a1 + 97);
  v8 = *(a1 + 5);
  v55[0] = *(a1 + 3);
  v55[1] = v8;
  v9 = *(a1 + 17);
  v51[0] = *(a1 + 15);
  v51[1] = v9;
  v10 = *(a1 + 19);
  v11 = *(a1 + 21);
  v12 = *(a1 + 23);
  *(v52 + 9) = *(a1 + 193);
  v51[3] = v11;
  v52[0] = v12;
  v51[2] = v10;
  v13 = *(a1 + 27);
  v14 = *(a1 + 29);
  v15 = *(a1 + 31);
  *(v48 + 9) = *(a1 + 257);
  v47[1] = v14;
  v48[0] = v15;
  v47[0] = v13;
  v16 = *(a1 + 35);
  v17 = *(a1 + 37);
  v18 = *(a1 + 39);
  *&v44[9] = *(a1 + 321);
  v43[1] = v17;
  *v44 = v18;
  v43[0] = v16;
  v20 = a1[43];
  v19 = a1[44];
  v21 = *(a1 + 360);
  v23 = *a2;
  v22 = a2[1];
  *(v54 + 9) = *(a2 + 193);
  v24 = *(a2 + 257);
  v25 = a2[2];
  v26 = *(a2 + 5);
  v57[0] = *(a2 + 3);
  v57[1] = v26;
  v27 = *(a2 + 7);
  v28 = *(a2 + 9);
  *&v58[9] = *(a2 + 97);
  v29 = *(a2 + 11);
  v57[3] = v28;
  *v58 = v29;
  v57[2] = v27;
  v30 = *(a2 + 17);
  v53[0] = *(a2 + 15);
  v53[1] = v30;
  v31 = *(a2 + 19);
  v32 = *(a2 + 23);
  v53[3] = *(a2 + 21);
  v54[0] = v32;
  v53[2] = v31;
  v33 = *(a2 + 27);
  v34 = *(a2 + 29);
  v35 = *(a2 + 31);
  *(v50 + 9) = v24;
  v49[1] = v34;
  v50[0] = v35;
  v49[0] = v33;
  v36 = *(a2 + 35);
  v37 = *(a2 + 37);
  v38 = *(a2 + 39);
  *&v46[9] = *(a2 + 321);
  v45[1] = v37;
  *v46 = v38;
  v45[0] = v36;
  if (v5 == v23 && v4 == v22 && v6 == v25)
  {
    v40 = a2[43];
    v39 = a2[44];
    v41 = *(a2 + 360);
    if (sub_254226694(v55, v57) & 1) != 0 && (sub_254226694(v51, v53) & 1) != 0 && (sub_2542265D0(v47, v49))
    {
      v42 = sub_2542265D0(v43, v45);
      result = 0;
      if ((v42 & 1) != 0 && v20 == v40 && v19 == v39)
      {
        return v21 ^ v41 ^ 1u;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_254204E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_254204ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_254204F34(uint64_t a1, uint64_t a2)
{
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  (*(*(SessionEventV5StateVMa - 8) + 16))(a2, a1, SessionEventV5StateVMa);
  return a2;
}

uint64_t sub_254204F98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CD8, &qword_254253D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254205000(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_254205048()
{
  result = qword_27F5BBA28;
  if (!qword_27F5BBA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBA28);
  }

  return result;
}

unint64_t sub_25420509C()
{
  result = qword_27F5BBA70;
  if (!qword_27F5BBA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBA70);
  }

  return result;
}

unint64_t sub_2542050F0()
{
  result = qword_27F5BBAA0;
  if (!qword_27F5BBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBAA0);
  }

  return result;
}

unint64_t sub_254205144()
{
  result = qword_27F5BBAB0;
  if (!qword_27F5BBAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBAB0);
  }

  return result;
}

unint64_t sub_25420519C()
{
  result = qword_27F5BBAC0;
  if (!qword_27F5BBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBAC0);
  }

  return result;
}

unint64_t sub_2542051F4()
{
  result = qword_27F5BBAC8;
  if (!qword_27F5BBAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBAC8);
  }

  return result;
}

uint64_t sub_254205248(void *a1)
{
  a1[1] = sub_254205000(&qword_27F5BA360, type metadata accessor for EnergyKit.LoadSessionEvent);
  a1[2] = sub_254205000(&qword_27F5BA328, type metadata accessor for EnergyKit.LoadSessionEvent);
  result = sub_254205000(&qword_27F5BBAD0, type metadata accessor for EnergyKit.LoadSessionEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_25420533C(uint64_t a1)
{
  *(a1 + 8) = sub_254205000(&qword_27F5BBAE8, type metadata accessor for EnergyKit.LoadSessionEvent);
  result = sub_254205000(&qword_27F5BBAF0, type metadata accessor for EnergyKit.LoadSessionEvent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2542053E8()
{
  result = type metadata accessor for EnergyKit.EventBase();
  if (v1 <= 0x3F)
  {
    result = _s16LoadSessionEventV5StateVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t _s16LoadSessionEventV10LevelRangeVwet(uint64_t a1, int a2)
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

uint64_t _s16LoadSessionEventV10LevelRangeVwst(uint64_t result, int a2, int a3)
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

uint64_t sub_2542054CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 361))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 360);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_254205520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *(result + 360) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 361) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 361) = 0;
    }

    if (a2)
    {
      *(result + 360) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s16LoadSessionEventV5BlockV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16LoadSessionEventV5BlockV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_25420575C()
{
  sub_25424D8B8();
  if (v0 <= 0x3F)
  {
    sub_25424D948();
    if (v1 <= 0x3F)
    {
      sub_254205800();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_254205800()
{
  if (!qword_27F5BBB18)
  {
    v0 = sub_25424E048();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5BBB18);
    }
  }
}

unint64_t sub_25420589C()
{
  result = qword_27F5BBB28;
  if (!qword_27F5BBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB28);
  }

  return result;
}

unint64_t sub_2542058F4()
{
  result = qword_27F5BBB30;
  if (!qword_27F5BBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB30);
  }

  return result;
}

unint64_t sub_25420594C()
{
  result = qword_27F5BBB38;
  if (!qword_27F5BBB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB38);
  }

  return result;
}

unint64_t sub_2542059A4()
{
  result = qword_27F5BBB40;
  if (!qword_27F5BBB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB40);
  }

  return result;
}

unint64_t sub_2542059FC()
{
  result = qword_27F5BBB48;
  if (!qword_27F5BBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB48);
  }

  return result;
}

unint64_t sub_254205A54()
{
  result = qword_27F5BBB50;
  if (!qword_27F5BBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB50);
  }

  return result;
}

uint64_t sub_254205AA8()
{
  v0 = sub_25424E8E8();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_254205AF4()
{
  result = qword_27F5BBB60;
  if (!qword_27F5BBB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB60);
  }

  return result;
}

unint64_t sub_254205B48()
{
  result = qword_27F5BBB78;
  if (!qword_27F5BBB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB78);
  }

  return result;
}

uint64_t sub_254205B9C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BBB68, &qword_254260720);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_254205C14()
{
  result = qword_27F5BBB90;
  if (!qword_27F5BBB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB90);
  }

  return result;
}

unint64_t sub_254205C7C()
{
  result = qword_27F5BBB98;
  if (!qword_27F5BBB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB98);
  }

  return result;
}

unint64_t sub_254205CD4()
{
  result = qword_27F5BBBA0;
  if (!qword_27F5BBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBBA0);
  }

  return result;
}

unint64_t sub_254205D2C()
{
  result = qword_27F5BBBA8;
  if (!qword_27F5BBBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBBA8);
  }

  return result;
}

uint64_t sub_254205D80()
{
  v0 = sub_25424E8E8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t static HMVCommands.ensureDigests(homeIdentifier:customCreationDate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_254205DFC, 0, 0);
}

uint64_t sub_254205DFC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_2541B244C;

  return sub_25412FDA0(sub_25412FDA0, sub_2542060A0, v1);
}

void sub_254205ECC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = aBlock - v9;
  v11 = sub_25424D8E8();
  sub_2542060A8(a4, v10);
  v12 = sub_25424D8B8();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_25424D818();
    (*(v13 + 8))(v10, v12);
  }

  aBlock[4] = sub_254206310;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2541ED26C;
  aBlock[3] = &block_descriptor_18;
  v15 = _Block_copy(aBlock);

  [a1 hmvutilEnsureDigestsWithHomeIdentifier:v11 customCreationDate:v14 reply:v15];
  _Block_release(v15);
}

uint64_t sub_2542060A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254206118(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = sub_25424E128();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = sub_25412F60C;
    v10[6] = v8;

    v11 = a1;
    v12 = &unk_254254328;
    v13 = v7;
    v14 = v10;
  }

  else
  {
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = sub_25412F540;
    v16[6] = 0;

    v12 = &unk_254252CB0;
    v13 = v7;
    v14 = v16;
  }

  sub_25419CC1C(0, 0, v13, v12, v14);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

HomeKitEvents::GarageDoorEvent::State_optional __swiftcall GarageDoorEvent.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t GarageDoorEvent.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GarageDoorEvent();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for GarageDoorEvent()
{
  result = qword_27F5BBC20;
  if (!qword_27F5BBC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}