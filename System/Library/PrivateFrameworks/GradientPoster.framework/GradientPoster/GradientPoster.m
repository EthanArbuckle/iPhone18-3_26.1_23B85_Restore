uint64_t _s14GradientPoster4LookV15GradientOptionsVwet_0(uint64_t a1, int a2)
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

uint64_t _s14GradientPoster4LookV15GradientOptionsVwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_250114470()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2501144A8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

double Look.GradientOptions.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 1.0;
  *a1 = xmmword_25011CA10;
  return result;
}

uint64_t sub_25011459C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F28);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_25011CA20;
      v14 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
      LODWORD(v15) = 995211031;
      LODWORD(v16) = 1003599639;
      LODWORD(v17) = 1054578888;
      LODWORD(v18) = 1065245842;
      *(v2 + 32) = [v14 initWithControlPoints__:v15 :{v16, v17, v18}];
      v19 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
      LODWORD(v20) = 1054280253;
      LODWORD(v21) = 1058556766;
      LODWORD(v22) = 1065245842;
      v13 = [v19 initWithControlPoints__:v20 :{0.0, v22, v21}];
      goto LABEL_7;
    }

LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F28);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_25011CA20;
    v23 = *MEMORY[0x277CDA7C0];
    v24 = objc_opt_self();
    *(v2 + 32) = [v24 functionWithName_];
    v13 = [v24 functionWithName_];
    goto LABEL_7;
  }

  if (v1 - 1 < 3)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F28);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25011CA20;
  v3 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v4) = 1007263783;
  LODWORD(v5) = 1053458170;
  LODWORD(v6) = 1057444436;
  LODWORD(v7) = 1.0;
  *(v2 + 32) = [v3 initWithControlPoints__:v4 :{v5, v6, v7}];
  v8 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v9) = 1058912443;
  LODWORD(v10) = -1152272617;
  LODWORD(v11) = 1.0;
  LODWORD(v12) = 1.0;
  v13 = [v8 initWithControlPoints__:v9 :{v10, v11, v12}];
LABEL_7:
  *(v2 + 40) = v13;
  return v2;
}

uint64_t sub_2501147D4()
{
  v1 = *(&off_27969CA00 + *v0);
  v2 = *(v1 + 16);
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_250115F98(0, v2, 0);
    v3 = v9;
    v4 = *(v9 + 16);
    v5 = 32;
    do
    {
      v6 = *(v1 + v5);
      v7 = *(v9 + 24);
      if (v4 >= v7 >> 1)
      {
        sub_250115F98((v7 > 1), v4 + 1, 1);
      }

      *(v9 + 16) = v4 + 1;
      *(v9 + 8 * v4 + 32) = v6 + (0.5 - v6) * 0.0;
      v5 += 8;
      ++v4;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

GradientPoster::Look::Variant_optional __swiftcall Look.Variant.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25011C4A8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25011497C(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 << 48 == a2 << 48)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25011C4B8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2501149FC()
{
  sub_25011C4C8();
  sub_25011C398();

  return sub_25011C4E8();
}

uint64_t sub_250114A64()
{
  sub_25011C398();
}

uint64_t sub_250114AB4()
{
  sub_25011C4C8();
  sub_25011C398();

  return sub_25011C4E8();
}

id static Look.load(userInfo:bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25011C408();
  if (!*(a1 + 16) || (v6 = sub_2501161EC(v17), (v7 & 1) == 0))
  {
    sub_250116230(v17);
    goto LABEL_7;
  }

  sub_250116398(*(a1 + 56) + 32 * v6, v18);
  sub_250116230(v17);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    LOBYTE(v9) = 0;
    goto LABEL_8;
  }

  v8._countAndFlagsBits = 0x746E6169726176;
  v8._object = 0xE700000000000000;
  Look.Variant.init(rawValue:)(v8);
  LOBYTE(v9) = v17[0];
  if (v17[0] == 6)
  {
    v9 = 0x40302010005uLL >> (8 * sub_25011634C());
  }

  else
  {
  }

LABEL_8:
  sub_25011C408();
  if (*(a1 + 16) && (v10 = sub_2501161EC(v17), (v11 & 1) != 0))
  {
    sub_250116398(*(a1 + 56) + 32 * v10, v18);
    sub_250116230(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F10);
    if (swift_dynamicCast())
    {
      v12 = _sSo7UIColorC14GradientPosterE4load8userInfoABSgSDys11AnyHashableVypG_tFZ_0(0x6F6C6F4365736162);

      if (!v12)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else
  {
    sub_250116230(v17);
  }

  sub_25011C408();
  if (*(a1 + 16) && (v13 = sub_2501161EC(v17), (v14 & 1) != 0))
  {
    sub_250116398(*(a1 + 56) + 32 * v13, v18);
    sub_250116230(v17);
    if (swift_dynamicCast())
    {
      v15 = sub_25011C388();

      v12 = [objc_opt_self() colorNamed:v15 inBundle:a2 compatibleWithTraitCollection:0];

      if (v12)
      {
LABEL_18:
        result = v12;
        goto LABEL_22;
      }
    }
  }

  else
  {
    sub_250116230(v17);
  }

  result = _sSo7UIColorC14GradientPosterE4load8userInfoABSgSDys11AnyHashableVypG_tFZ_0(a1);
  if (!result)
  {
LABEL_21:
    result = 0;
    LOBYTE(v9) = 0;
  }

LABEL_22:
  *a3 = result;
  *(a3 + 8) = v9;
  return result;
}

GradientPoster::Look __swiftcall Look.init(baseColor:variant:)(GradientPoster::Look baseColor, GradientPoster::Look::Variant variant)
{
  v3 = *variant;
  *v2 = baseColor.baseColor.super.isa;
  *(v2 + 8) = v3;
  baseColor.variant = variant;
  return baseColor;
}

unint64_t Look.userInfo.getter()
{
  v1 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25011CA30;
  v3 = MEMORY[0x277D837D0];
  sub_25011C408();
  v4 = UIColor.userInfo.getter();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F10);
  *(inited + 72) = v4;
  sub_25011C408();
  *(inited + 168) = v3;
  *(inited + 144) = (v1 << 48) + 0x31746573657270;
  *(inited + 152) = 0xE700000000000000;
  v5 = sub_25011643C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F20);
  swift_arrayDestroy();
  return v5;
}

id Look.upperColor.getter()
{
  v1 = *(v0 + 8);
  v2 = sub_250116BFC(1.0);
  sub_250116D38();
  v3 = *(&off_27969CA30 + v1);
  v4 = *(v3 + 16);
  if (v4 >= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = *(v3 + 16);
  }

  v33 = MEMORY[0x277D84F90];
  sub_250115F98(0, v5, 0);
  v6 = v33;
  if (v4)
  {
    v7 = *(v3 + 32);
    v9 = *(v33 + 16);
    v8 = *(v33 + 24);
    v10 = v9 + 1;
    if (v9 >= v8 >> 1)
    {
      sub_250115F98((v8 > 1), v9 + 1, 1);
      v6 = v33;
    }

    *(v6 + 16) = v10;
    *(v6 + 8 * v9 + 32) = v7 + (0.5 - v7) * 0.0;
    if (v4 != 1)
    {
      v11 = *(v3 + 40);
      v12 = *(v6 + 24);
      v13 = v9 + 2;
      if (v10 >= v12 >> 1)
      {
        sub_250115F98((v12 > 1), v13, 1);
      }

      *(v6 + 16) = v13;
      *(v6 + 8 * v10 + 32) = v11 + (0.5 - v11) * 0.0;
      if (v4 != 2)
      {
        v14 = *(v3 + 48);
        v16 = *(v6 + 16);
        v15 = *(v6 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_250115F98((v15 > 1), v16 + 1, 1);
        }

        *(v6 + 16) = v16 + 1;
        *(v6 + 8 * v16 + 32) = v14 + (0.5 - v14) * 0.0;
      }
    }
  }

  v17 = sub_2501179D8(v6);

  sub_250116DDC(v17);
  v32 = v18;

  v19.f64[0] = sub_250115E24(0, 0.0, v32);
  v20 = v19;
  __asm { FMOV            V0.2D, #1.0 }

  v26 = sub_250115ED8(_Q0, _Q0.f64[0], v20);
  v30 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v26 green:v27 blue:v28 alpha:v29];

  return v30;
}

uint64_t Look.gradientIn(bounds:options:)@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v6 = *(v2 + 8);
  v7 = *(v2 + 8);
  v8 = sub_250116BFC(*a1);
  v9.f64[0] = sub_250116D38();
  v97 = v10;
  v98 = v9;
  if (v7 > 4)
  {

    v13 = v97;
    v12 = v98;
  }

  else
  {
    v11 = sub_25011C4B8();

    v13 = v97;
    v12 = v98;
    if ((v11 & 1) == 0)
    {
      sub_250116DDC(byte_286299018);
      v95 = v15;
      v96 = v14;
      pow(*&v14, 10.0);
      pow(1.0 - *&v96, 10.0);
      sub_250116DDC(qword_286299370);
    }
  }

  v91 = v13;
  v92 = v12;
  v16 = 1.0 - v5;
  if (v5 < 0.5)
  {
    v16 = v5;
  }

  v17 = v16 + v16;
  v18 = 0.0;
  if (v16 + v16 >= 0.0)
  {
    v18 = 1.0;
    if (v17 <= 1.0)
    {
      v18 = v17 * (v17 * v17) * (v17 * (v17 * 6.0 + -15.0) + 10.0);
    }
  }

  v89 = v8;
  v90 = a2;
  *&v94 = v6;
  v19 = *(&off_27969CA00 + v6);
  v88 = v7;
  LOBYTE(v99) = v7;
  v20 = sub_2501147D4();
  v21 = *&v20;
  v93 = &v87;
  v22 = *(v19 + 16);
  v23 = *(v20 + 16);
  if (v23 >= v22)
  {
    v24 = *(v19 + 16);
  }

  else
  {
    v24 = *(v20 + 16);
  }

  v99 = MEMORY[0x277D84F90];
  sub_250115F98(0, v24, 0);
  v26 = v99;
  *&v96 = v19;
  v95.f64[0] = v21;
  if (v24)
  {
    v27 = (v19 + 32);
    v3 = (*&v21 + 32);
    v28 = v24;
    v29 = v22;
    v30 = v23;
    v31 = v22;
    v32 = v23;
    while (v29)
    {
      if (!v30)
      {
        goto LABEL_52;
      }

      v33 = *v27;
      v34 = *v3;
      v99 = v26;
      v23 = *(v26 + 16);
      v35 = *(v26 + 24);
      if (v23 >= v35 >> 1)
      {
        v87 = v31;
        v36 = v32;
        sub_250115F98((v35 > 1), v23 + 1, 1);
        v32 = v36;
        v31 = v87;
        v26 = v99;
      }

      v25 = v26 + 8 * v23;
      --v30;
      *(v26 + 16) = v23 + 1;
      *(v25 + 32) = v33 + v18 * (v34 - v33);
      --v29;
      ++v3;
      ++v27;
      if (!--v28)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v31 = v22;
  v32 = v23;
LABEL_22:
  if (v31 > v32)
  {
    v30 = v96 + 32;
    v37 = *&v95.f64[0] + 32;
    while (v24 < v31)
    {
      v38 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_54;
      }

      if (v32 != v24)
      {
        if (v24 >= v32)
        {
          goto LABEL_55;
        }

        v39 = *(v30 + 8 * v24);
        v40 = *(v37 + 8 * v24);
        v99 = v26;
        v23 = *(v26 + 16);
        v41 = *(v26 + 24);
        if (v23 >= v41 >> 1)
        {
          v3 = v31;
          v42 = v32;
          sub_250115F98((v41 > 1), v23 + 1, 1);
          v32 = v42;
          v31 = v3;
          v26 = v99;
        }

        *(v26 + 16) = v23 + 1;
        v25 = v26 + 8 * v23;
        *(v25 + 32) = v39 + v18 * (v40 - v39);
        ++v24;
        if (v38 != v31)
        {
          continue;
        }
      }

      goto LABEL_31;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    sub_250115F98((v25 > 1), v23, 1);
    v44 = v99;
    goto LABEL_39;
  }

LABEL_31:

  v18 = 0.0;
  if (v17 >= 0.0)
  {
    v18 = 1.0;
    if (v17 <= 1.0)
    {
      v18 = v17 * (v17 * v17) * (v17 * (v17 * 6.0 + -15.0) + 10.0);
    }
  }

  v24 = *(&off_27969CA30 + v94);
  v3 = *(v24 + 16);
  if (v3 >= 3)
  {
    v43 = 3;
  }

  else
  {
    v43 = *(v24 + 16);
  }

  v99 = MEMORY[0x277D84F90];
  sub_250115F98(0, v43, 0);
  v44 = v99;
  if (!v3)
  {
    goto LABEL_47;
  }

  v17 = *(v24 + 32);
  v30 = *(v99 + 16);
  v25 = *(v99 + 24);
  v23 = v30 + 1;
  if (v30 >= v25 >> 1)
  {
    goto LABEL_56;
  }

LABEL_39:
  *(v44 + 16) = v23;
  *(v44 + 8 * v30 + 32) = v17 + v18 * (0.5 - v17);
  if (v3 != 1)
  {
    v45 = *(v24 + 40);
    v99 = v44;
    v46 = *(v44 + 24);
    v47 = v30 + 2;
    if (v23 >= v46 >> 1)
    {
      goto LABEL_58;
    }

    while (1)
    {
      *(v44 + 16) = v47;
      *(v44 + 8 * v23 + 32) = v45 + v18 * (0.5 - v45);
      if (v3 == 2)
      {
        break;
      }

      v45 = *(v24 + 48);
      v99 = v44;
      v49 = *(v44 + 16);
      v48 = *(v44 + 24);
      v23 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        sub_250115F98((v48 > 1), v49 + 1, 1);
        v44 = v99;
      }

      *(v44 + 16) = v23;
      *(v44 + 8 * v49 + 32) = v45 + v18 * (0.5 - v45);
      v46 = 1;
      v47 = 3;
      if (v3 > 2)
      {
        break;
      }

      __break(1u);
LABEL_58:
      sub_250115F98((v46 > 1), v47, 1);
      v44 = v99;
    }
  }

LABEL_47:
  v51 = v89;
  v50 = v90;
  v52 = v88;

  v53 = sub_2501179D8(v26);

  v54 = sub_2501179D8(v44);

  sub_250116DDC(v54);
  v94 = v56;
  v95 = v55;

  sub_250116DDC(v53);
  v96 = v58;
  v97 = v57;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F28);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_25011CA40;
  v60.f64[0] = sub_250115E24(0, 0.0, v95);
  v61 = v60;
  __asm { FMOV            V0.2D, #1.0 }

  v98 = _Q0;
  *&v67 = sub_250115ED8(_Q0, _Q0.f64[0], v61);
  v94 = v67;
  v95 = v68;
  v69 = *(&v67 + 1);
  v70 = v68.f64[1];
  v71 = objc_allocWithZone(MEMORY[0x277D75348]);
  *(v59 + 32) = [v71 initWithRed:*&v94 green:v69 blue:v95.f64[0] alpha:v70];
  v72.f64[0] = sub_250115E24(0, 0.0, v92);
  *&v73 = sub_250115ED8(v98, v98.f64[0], v72);
  v94 = v73;
  v95 = v74;
  v75 = *(&v73 + 1);
  v76 = v74.f64[1];
  v77 = objc_allocWithZone(MEMORY[0x277D75348]);
  *(v59 + 40) = [v77 initWithRed:*&v94 green:v75 blue:v95.f64[0] alpha:v76];
  v78.f64[0] = sub_250115E24(0, 0.0, v97);
  v79.f64[0] = sub_250115ED8(v98, v98.f64[0], v78);
  v97 = v79;
  v98 = v80;
  v81 = v79.f64[1];
  v82 = v80.f64[1];
  v83 = objc_allocWithZone(MEMORY[0x277D75348]);
  *(v59 + 48) = [v83 initWithRed:v97.f64[0] green:v81 blue:v98.f64[0] alpha:v82];
  sub_250119ECC(v59, v50);
  *(v50 + 24) = xmmword_25011CA50;
  *(v50 + 40) = xmmword_25011CA60;
  if (v52 == 2)
  {
    v84 = &qword_286299458;
  }

  else
  {
    v84 = &unk_286299490;
  }

  *(v50 + 16) = v84;
  LOBYTE(v99) = v52;
  v85 = sub_25011459C();

  *(v50 + 64) = v85;
  return result;
}

void *sub_250115E08@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

float64_t sub_250115E24(float64x2_t a1, double a2, float64x2_t a3)
{
  v3 = a1.f64[0];
  v4 = vmovn_s64(vcgtq_f64(a1, a3)).u8[0];
  if ((*&a3.f64[0] & 0xFFFFFFFFFFFFFLL) == 0)
  {
    a1.f64[0] = a3.f64[0];
  }

  if ((~*&a3.f64[0] & 0x7FF0000000000000) != 0)
  {
    a1.f64[0] = a3.f64[0];
  }

  if (v4)
  {
    a1.f64[0] = v3;
  }

  return a1.f64[0];
}

float64_t sub_250115ED8(float64x2_t a1, double a2, float64x2_t a3)
{
  v3 = a1.f64[0];
  v4 = vmovn_s64(vmvnq_s8(vcgeq_f64(a3, a1))).u8[0];
  if ((*&a3.f64[0] & 0xFFFFFFFFFFFFFLL) == 0)
  {
    a1.f64[0] = a3.f64[0];
  }

  if ((~*&a3.f64[0] & 0x7FF0000000000000) != 0)
  {
    a1.f64[0] = a3.f64[0];
  }

  if ((v4 & 1) == 0)
  {
    a1.f64[0] = v3;
  }

  return a1.f64[0];
}

char *sub_250115F98(char *a1, int64_t a2, char a3)
{
  result = sub_250115FD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_250115FB8(char *a1, int64_t a2, char a3)
{
  result = sub_2501160DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_250115FD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2501160DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2501161EC(uint64_t a1)
{
  v2 = sub_25011C3E8();

  return sub_250116284(a1, v2);
}

unint64_t sub_250116284(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_250116944(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25305EE50](v9, a1);
      sub_250116230(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_25011634C()
{
  v0 = sub_25011C4A8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_250116398(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25011643C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F60);
    v3 = sub_25011C498();
    v4 = a1 + 32;

    while (1)
    {
      sub_2501168C4(v4, v13);
      result = sub_2501161EC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_250116934(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25011655C()
{
  result = qword_28110FC70;
  if (!qword_28110FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110FC70);
  }

  return result;
}

unint64_t sub_2501165B4()
{
  result = qword_27F3C0F30;
  if (!qword_27F3C0F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3C0F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3C0F30);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
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

uint64_t sub_250116674(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_2501166BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Look.Variant(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Look.Variant(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2501168C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_250116934(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_2501169C8(uint64_t a1, unint64_t *a2)
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

unint64_t UIColor.userInfo.getter()
{
  v12[41] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12[0] = 0;
  v9 = 0;
  v10 = 0;
  if (([v0 getRed:v12 green:&v11 blue:&v10 alpha:&v9] & 1) == 0)
  {
    v11 = 0x3FF0000000000000;
    v12[0] = 0x3FF0000000000000;
    v9 = 0x3FF0000000000000;
    v10 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25011CD10;
  sub_25011C408();
  v2 = v12[0];
  v3 = MEMORY[0x277D85048];
  *(inited + 96) = MEMORY[0x277D85048];
  *(inited + 72) = v2;
  sub_25011C408();
  v4 = v11;
  *(inited + 168) = v3;
  *(inited + 144) = v4;
  sub_25011C408();
  v5 = v10;
  *(inited + 240) = v3;
  *(inited + 216) = v5;
  sub_25011C408();
  v6 = v9;
  *(inited + 312) = v3;
  *(inited + 288) = v6;
  v7 = sub_25011643C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F20);
  swift_arrayDestroy();
  return v7;
}

id sub_250116BFC(double a1)
{
  v2 = v1;
  v8[1] = *MEMORY[0x277D85DE8];
  if (a1 < 1.0)
  {
    v7 = 0.0;
    v8[0] = 0.0;
    v5 = 1.0;
    v6 = 0.0;
    if ([v1 getHue:v8 saturation:&v7 brightness:&v6 alpha:&v5])
    {
      return [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:v8[0] saturation:v7 brightness:v6 * 0.5 + (v6 - v6 * 0.5) * a1 alpha:v5];
    }

    v2 = v1;
  }

  return v2;
}

double sub_250116D38()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v3 = 0;
  v4 = 0;
  v2 = 0;
  if ([v0 getRed:v5 green:&v4 blue:&v3 alpha:&v2])
  {
    return *v5;
  }

  else
  {
    return 1.0;
  }
}

uint64_t sub_250116DDC(void *a1)
{
  result = sub_250117AB0(a1);
  if (*(result + 16) >= 4uLL)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_250116EA4(char *a1, double a2)
{
  v3 = __sincos_stret(a2 * 3.14159265 + a2 * 3.14159265 + -3.14159265);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25011CD10;
  *(inited + 32) = &unk_286299058;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F58);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_25011CD20;
  *(v5 + 32) = 0;
  *(v5 + 40) = v3.__cosval + -1.0 + 1.0;
  *(v5 + 48) = -v3.__sinval;
  *(v5 + 56) = 0;
  v6 = (v3.__cosval + -1.0) * 0.5;
  *(v5 + 64) = v3.__sinval * 0.5 - v6;
  *(inited + 40) = v5;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_25011CD20;
  *(v7 + 32) = 0;
  *(v7 + 40) = v3.__sinval;
  *(v7 + 48) = v3.__cosval + -1.0 + 1.0;
  *(v7 + 56) = 0;
  *(v7 + 64) = v3.__sinval * -0.5 - v6;
  *(inited + 48) = v7;
  *(inited + 56) = &unk_2862990A0;
  v8 = sub_2501175DC(inited, a1);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F70);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_250117030(char *a1, double a2)
{
  v3 = a2 + a2;
  v4 = 0.5 - (a2 + a2) * 0.5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25011CD10;
  *(inited + 32) = &unk_2862990E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F58);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_25011CD20;
  *(v6 + 32) = 0;
  *(v6 + 40) = v3;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = v4;
  *(inited + 40) = v6;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_25011CD20;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = v3;
  *(v7 + 56) = 0;
  *(v7 + 64) = v4;
  *(inited + 48) = v7;
  *(inited + 56) = &unk_286299130;
  v8 = sub_2501175DC(inited, a1);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F70);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_250117170(char *a1, double a2)
{
  v3 = a2 + a2 + -1.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25011CD10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F58);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_25011CD20;
  *(v5 + 32) = 1.0 - fabs(v3);
  v6 = 0.0;
  if (v3 >= 0.0)
  {
    v6 = v3;
  }

  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 40) = 0;
  *(v5 + 64) = v6;
  *(inited + 32) = v5;
  *(inited + 40) = &unk_286299178;
  *(inited + 48) = &unk_2862991C0;
  *(inited + 56) = &unk_286299208;
  v7 = sub_2501175DC(inited, a1);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F70);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_250117298()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v4 = 0;
  v1 = [v0 getRed:v7 green:&v6 blue:&v5 alpha:&v4];
  v2 = 0.0;
  if (v1)
  {
    v2 = v7[0] * 0.299 + v6 * 0.587 + v5 * 0.114;
  }

  return *&v2;
}

id _sSo7UIColorC14GradientPosterE4load8userInfoABSgSDys11AnyHashableVypG_tFZ_0(uint64_t a1)
{
  sub_25011C408();
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v2 = sub_2501161EC(v11);
  if ((v3 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_250116398(*(a1 + 56) + 32 * v2, v12);
  sub_250116230(v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_25011C408();
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v4 = sub_2501161EC(v11);
  if ((v5 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_250116398(*(a1 + 56) + 32 * v4, v12);
  sub_250116230(v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_25011C408();
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v6 = sub_2501161EC(v11);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_250116398(*(a1 + 56) + 32 * v6, v12);
  sub_250116230(v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_25011C408();
  if (!*(a1 + 16) || (v8 = sub_2501161EC(v11), (v9 & 1) == 0))
  {
LABEL_14:
    sub_250116230(v11);
    return 0;
  }

  sub_250116398(*(a1 + 56) + 32 * v8, v12);
  sub_250116230(v11);
  if (swift_dynamicCast())
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:COERCE_DOUBLE(6579570) green:COERCE_DOUBLE(0x6E65657267) blue:COERCE_DOUBLE(1702194274) alpha:COERCE_DOUBLE(0x6168706C61)];
  }

  return 0;
}

uint64_t sub_2501175DC(uint64_t a1, char *a2)
{
  v6 = sub_25011C3C8();
  *(v6 + 16) = 5;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F70);
  v7 = sub_25011C3C8();
  v7[2] = 4;
  v7[4] = v6;
  v7[5] = v6;
  v7[6] = v6;
  v7[7] = v6;
  if (*(a1 + 16) < 4uLL)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (*(a2 + 2) < 4uLL)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v2 = v7;
  v30 = a1;
  v32 = *(a2 + 7);
  v33 = a1 + 32;
  v8 = *(a2 + 6);
  v10 = *(a2 + 4);
  v9 = *(a2 + 5);
  a1 = v9 + 32;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  while (2)
  {
    v12 = 0;
    v31 = v11 + 1;
    do
    {
      v13 = *(v33 + 8 * v12);
      if (*(v13 + 16) < 4uLL)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v11 >= *(v32 + 16))
      {
        goto LABEL_35;
      }

      if (v11 >= *(v8 + 16))
      {
        goto LABEL_36;
      }

      if (v11 >= *(v9 + 16))
      {
        goto LABEL_37;
      }

      if (v11 >= *(v10 + 16))
      {
        goto LABEL_38;
      }

      if (v12 >= v2[2])
      {
        goto LABEL_39;
      }

      v3 = *(v32 + 32 + 8 * v11);
      v15 = *(v13 + 48);
      v14 = *(v13 + 56);
      v16 = *(v8 + 32 + 8 * v11);
      v17 = *(a1 + 8 * v11);
      v18 = *(v13 + 32);
      v19 = *(v13 + 40);
      v20 = *(v10 + 32 + 8 * v11);
      v21 = v2;
      v2 += v12;
      a2 = v2[4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[4] = a2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a2 = sub_250117358(a2);
        v2[4] = a2;
      }

      if (v11 >= *(a2 + 2))
      {
        goto LABEL_40;
      }

      v2 = v21;
      ++v12;
      *&a2[8 * v11 + 32] = v14 * v3 + v15 * v16 + v19 * v17 + v18 * v20;
    }

    while (v12 != 4);
    ++v11;
    if (v31 != 5)
    {
      continue;
    }

    break;
  }

  if (*(*v33 + 16) < 5uLL)
  {
    goto LABEL_43;
  }

  if (!v21[2])
  {
    goto LABEL_44;
  }

  v3 = *(*v33 + 64);
  a2 = v21[4];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v21[4] = a2;
  if ((v23 & 1) == 0)
  {
LABEL_45:
    a2 = sub_250117358(a2);
  }

  if (*(a2 + 2) < 5uLL)
  {
    __break(1u);
    goto LABEL_47;
  }

  *(a2 + 8) = v3 + *(a2 + 8);
  v2[4] = a2;
  v24 = v30[5];
  if (*(v24 + 16) < 5uLL)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v2[2] >= 2uLL)
  {
    v3 = *(v24 + 64);
    a2 = v2[5];
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v2[5] = a2;
    if (v25)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  a2 = sub_250117358(a2);
LABEL_24:
  if (*(a2 + 2) < 5uLL)
  {
    __break(1u);
    goto LABEL_51;
  }

  *(a2 + 8) = v3 + *(a2 + 8);
  v2[5] = a2;
  v26 = v30[6];
  if (*(v26 + 16) < 5uLL)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v2[2] >= 3uLL)
  {
    v3 = *(v26 + 64);
    a2 = v2[6];
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v2[6] = a2;
    if (v27)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  a2 = sub_250117358(a2);
LABEL_28:
  if (*(a2 + 2) < 5uLL)
  {
    __break(1u);
    goto LABEL_55;
  }

  *(a2 + 8) = v3 + *(a2 + 8);
  v2[6] = a2;
  v28 = v30[7];
  if (*(v28 + 16) < 5uLL)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v2[2] >= 4uLL)
  {
    v3 = *(v28 + 64);
    a1 = v2[7];
    result = swift_isUniquelyReferenced_nonNull_native();
    v2[7] = a1;
    if (result)
    {
      goto LABEL_32;
    }

    goto LABEL_57;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  result = sub_250117358(a1);
  a1 = result;
LABEL_32:
  if (*(a1 + 16) < 5uLL)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 64) = v3 + *(a1 + 64);
    v2[7] = a1;
    return v2;
  }

  return result;
}

uint64_t sub_2501179D8(uint64_t a1)
{
  if (*(a1 + 16) == 3)
  {
    v2 = sub_250116EA4(byte_286299018, *(a1 + 32));
    v3 = sub_250117030(v2, *(a1 + 40));

    v4 = sub_250117170(v3, *(a1 + 48));

    v5 = sub_2501175DC(&unk_286299370, v4);

    return v5;
  }

  else
  {
    result = sub_25011C478();
    __break(1u);
  }

  return result;
}

uint64_t sub_250117AB0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F68);
  result = sub_25011C3C8();
  *(result + 16) = 4;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 208) = 0;
  if (a1[2] < 4uLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = a1[4];
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v4 == 1)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 < 3)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4 == 3)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v4 < 5)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = *(v3 + 48);
  v6 = *(v3 + 64);
  *(result + 32) = *(v3 + 32);
  *(result + 48) = v5;
  *(result + 64) = v6;
  v7 = a1[5];
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v8 == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v8 < 3)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v8 == 3)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v8 < 5)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v9 = *(v7 + 48);
  v10 = *(v7 + 64);
  *(result + 80) = *(v7 + 32);
  *(result + 96) = v9;
  *(result + 112) = v10;
  v11 = a1[6];
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v12 == 1)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v12 < 3)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v12 == 3)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v12 < 5)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v13 = *(v11 + 48);
  v14 = *(v11 + 64);
  *(result + 128) = *(v11 + 32);
  *(result + 144) = v13;
  *(result + 160) = v14;
  v15 = a1[7];
  v16 = *(v15 + 16);
  if (!v16)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v16 == 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v16 < 3)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v16 == 3)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v16 >= 5)
  {
    v17 = *(v15 + 48);
    v18 = *(v15 + 64);
    *(result + 176) = *(v15 + 32);
    *(result + 192) = v17;
    *(result + 208) = v18;
    return result;
  }

LABEL_43:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UIView.applyFullscreenConstraints(forView:)(UIView *forView)
{
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F28);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25011CD80;
  v5 = [v1 leadingAnchor];
  v6 = [(UIView *)forView leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 trailingAnchor];
  v9 = [(UIView *)forView trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v1 topAnchor];
  v12 = [(UIView *)forView topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [(UIView *)forView bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_250119E78(0, &qword_28110FC58);
  v17 = sub_25011C3B8();

  [v3 activateConstraints_];
}

double sub_250117FFC()
{
  v1 = OBJC_IVAR____TtC14GradientPoster12GradientView_rollingAnimProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_250118040(double a1)
{
  v3 = OBJC_IVAR____TtC14GradientPoster12GradientView_rollingAnimProgress;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_2501180F0()
{
  v1 = OBJC_IVAR____TtC14GradientPoster12GradientView_wakeProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_250118134(double a1)
{
  v3 = OBJC_IVAR____TtC14GradientPoster12GradientView_wakeProgress;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_2501181E8()
{
  v1 = OBJC_IVAR____TtC14GradientPoster12GradientView_rotationAngle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_25011822C(double a1)
{
  v3 = OBJC_IVAR____TtC14GradientPoster12GradientView_rotationAngle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_2501182DC()
{
  v1 = OBJC_IVAR____TtC14GradientPoster12GradientView____lazy_storage___gradientLayerView;
  v2 = *(v0 + OBJC_IVAR____TtC14GradientPoster12GradientView____lazy_storage___gradientLayerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14GradientPoster12GradientView____lazy_storage___gradientLayerView);
  }

  else
  {
    type metadata accessor for GradientLayerView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_250118350()
{
  v1 = OBJC_IVAR____TtC14GradientPoster12GradientView____lazy_storage___gradientLayer;
  v2 = *(v0 + OBJC_IVAR____TtC14GradientPoster12GradientView____lazy_storage___gradientLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14GradientPoster12GradientView____lazy_storage___gradientLayer);
  }

  else
  {
    v4 = sub_2501182DC();
    v5 = [v4 layer];

    objc_opt_self();
    v3 = swift_dynamicCastObjCClassUnconditional();
    v6 = *(v0 + v1);
    *(v0 + v1) = v3;
    v7 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_2501183FC(void *a1, uint64_t a2)
{
  sub_25011A010(&v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F28);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25011CA40;
  v6 = objc_opt_self();
  *(v5 + 32) = [v6 whiteColor];
  *(v5 + 40) = a1;
  *(v5 + 48) = a1;
  v7 = a1;

  *&v17 = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25011CA40;
  *(v8 + 32) = [v6 blackColor];
  *(v8 + 40) = v7;
  *(v8 + 48) = v7;
  v9 = v7;

  *(&v17 + 1) = v8;
  v10 = v20;
  v22[2] = v19;
  v22[3] = v20;
  v11 = v17;
  v12 = v18;
  v22[0] = v17;
  v22[1] = v18;
  v13 = v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient;
  v14 = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 48);
  v24[2] = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 32);
  v24[3] = v14;
  v15 = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 16);
  v24[0] = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient);
  v24[1] = v15;
  *(v13 + 32) = v19;
  *(v13 + 48) = v10;
  v23 = v21;
  v25 = *(v13 + 64);
  *(v13 + 64) = v21;
  *v13 = v11;
  *(v13 + 16) = v12;
  sub_2501185D4(v22, v26);
  sub_250118630(v24);
  *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_currentStyle) = a2;
  sub_2501195E8(1);
  v26[2] = v19;
  v26[3] = v20;
  v27 = v21;
  v26[0] = v17;
  v26[1] = v18;
  return sub_250118630(v26);
}

void sub_250118684(uint64_t a1, char a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v14 = *(a1 + 32);
  v15 = v4;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v7 = v13[0];
  v13[1] = v6;
  v8 = v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient;
  v9 = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 48);
  v17[2] = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 32);
  v17[3] = v9;
  v10 = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 16);
  v17[0] = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient);
  v17[1] = v10;
  v11 = *(a1 + 48);
  *(v8 + 32) = v14;
  *(v8 + 48) = v11;
  v16 = *(a1 + 64);
  v18 = *(v8 + 64);
  *(v8 + 64) = *(a1 + 64);
  *v8 = v7;
  *(v8 + 16) = v5;
  sub_2501185D4(v13, v12);
  sub_250118630(v17);
  sub_2501195E8(a2);
}

void sub_250118724(CGFloat a1, double a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14GradientPoster12GradientView_transitionView;
  v7 = *&v2[OBJC_IVAR____TtC14GradientPoster12GradientView_transitionView];
  if (v7)
  {
    [v7 removeFromSuperview];
    v8 = *&v2[v6];
    *&v2[v6] = 0;
  }

  v9 = OBJC_IVAR____TtC14GradientPoster12GradientView_rollingAnimProgress;
  swift_beginAccess();
  v10 = *&v3[v9];
  v11 = OBJC_IVAR____TtC14GradientPoster12GradientView_wakeProgress;
  swift_beginAccess();
  v12 = *&v3[v11];
  v13 = OBJC_IVAR____TtC14GradientPoster12GradientView_rotationAngle;
  swift_beginAccess();
  v14 = *&v3[v13];
  *&v3[v13] = a1;
  v15 = &v3[OBJC_IVAR____TtC14GradientPoster12GradientView_gradient];
  v16 = *&v3[OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 16];
  v17 = *&v3[OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 48];
  v56 = *&v3[OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 32];
  v57 = v17;
  v18 = *&v3[OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 16];
  v55[0] = *&v3[OBJC_IVAR____TtC14GradientPoster12GradientView_gradient];
  v55[1] = v18;
  v19 = *&v3[OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 48];
  v52 = v56;
  v53 = v19;
  v58 = *&v3[OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 64];
  v54 = *&v3[OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 64];
  v50 = v55[0];
  v51 = v16;
  sub_2501185D4(v55, v59);
  v20 = sub_250118350();
  v21 = OBJC_IVAR____TtC14GradientPoster12GradientView_currentStyle;
  sub_25011A17C(v20, *&v3[OBJC_IVAR____TtC14GradientPoster12GradientView_currentStyle], 0, a1, v10, v12);

  v59[2] = v52;
  v59[3] = v53;
  v60 = v54;
  v59[0] = v50;
  v59[1] = v51;
  sub_250118630(v59);
  if (a2 > 0.0)
  {
    *&v3[OBJC_IVAR____TtC14GradientPoster12GradientView_transitionViewEndTimestamp] = CACurrentMediaTime() + a2;
    *&v3[OBJC_IVAR____TtC14GradientPoster12GradientView_transitionViewRotationAngle] = v14;
    v22 = *&v3[v6];
    if (v22 || ([v3 bounds], v27 = objc_msgSend(objc_allocWithZone(type metadata accessor for GradientLayerView()), sel_initWithFrame_, v23, v24, v25, v26), objc_msgSend(v3, sel_addSubview_, v27), v28 = *&v3[v6], *&v3[v6] = v27, v28, (v22 = *&v3[v6]) != 0))
    {
      v29 = [v22 layer];
      if (v29)
      {
        v30 = v29;
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          v32 = v31;
          v33 = *(v15 + 1);
          v34 = *(v15 + 3);
          v47 = *(v15 + 2);
          v48 = v34;
          v35 = *(v15 + 1);
          v46[0] = *v15;
          v46[1] = v35;
          v36 = *(v15 + 3);
          v43 = v47;
          v44 = v36;
          v49 = *(v15 + 8);
          v45 = *(v15 + 8);
          v41 = v46[0];
          v42 = v33;
          v37 = *&v3[v21];
          sub_2501185D4(v46, v40);
          sub_25011A17C(v32, v37, 0, v14, v10, v12);
          v52 = v43;
          v53 = v44;
          v54 = v45;
          v50 = v41;
          v51 = v42;
          sub_250118630(&v50);
          v38 = *&v3[v6];
          if (v38)
          {
            v39 = v38;
            [v39 setAlpha_];
          }
        }
      }
    }
  }
}

void sub_250118A4C(__int128 *a1, __int128 *a2, double a3)
{
  v4 = v3;
  v28 = a1[2];
  v29 = a1[3];
  v30 = *(a1 + 8);
  v26 = *a1;
  v27 = a1[1];
  v33 = a2[2];
  v34 = a2[3];
  v35 = *(a2 + 8);
  v31 = *a2;
  v32 = a2[1];
  v6 = sub_250118350();
  v7 = OBJC_IVAR____TtC14GradientPoster12GradientView_currentStyle;
  v8 = *&v3[OBJC_IVAR____TtC14GradientPoster12GradientView_currentStyle];
  v9 = OBJC_IVAR____TtC14GradientPoster12GradientView_rotationAngle;
  swift_beginAccess();
  sub_25011A17C(v6, v8, 0, *&v3[v9], 0.0, 1.0);

  v10 = OBJC_IVAR____TtC14GradientPoster12GradientView_transitionView;
  v11 = *&v3[OBJC_IVAR____TtC14GradientPoster12GradientView_transitionView];
  if (v11 || ([v3 bounds], v16 = objc_msgSend(objc_allocWithZone(type metadata accessor for GradientLayerView()), sel_initWithFrame_, v12, v13, v14, v15), objc_msgSend(v4, sel_addSubview_, v16), v17 = *&v4[v10], *&v4[v10] = v16, v17, (v11 = *&v4[v10]) != 0))
  {
    v18 = [v11 layer];
    if (v18)
    {
      v19 = v18;
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v21 = *&v4[v9];
        *&v4[OBJC_IVAR____TtC14GradientPoster12GradientView_transitionViewRotationAngle] = v21;
        v22 = *&v4[v7];
        v23 = v20;
        sub_25011A17C(v20, v22, 0, v21, 0.0, 1.0);
        v24 = objc_opt_self();
        [v24 begin];
        [v24 setDisableActions_];
        *&v25 = a3;
        [v23 setOpacity_];
        [v24 commit];
      }
    }
  }
}

void sub_250118C80(uint64_t a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_currentStyle) != a1)
  {
    *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_currentStyle) = a1;
    sub_2501195E8(a2 & 1);
  }
}

void sub_250118CA4(double a1)
{
  v2 = OBJC_IVAR____TtC14GradientPoster12GradientView_animTimer;
  if (!*&v1[OBJC_IVAR____TtC14GradientPoster12GradientView_animTimer])
  {
    v4 = CACurrentMediaTime();
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v4;
    *(v6 + 32) = a1;
    v11[4] = sub_2501199A4;
    v11[5] = v6;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_250118E90;
    v11[3] = &block_descriptor;
    v7 = _Block_copy(v11);
    v8 = v1;

    v9 = [v5 scheduledTimerWithTimeInterval:1 repeats:v7 block:0.0166666667];
    _Block_release(v7);
    v10 = *&v1[v2];
    *&v1[v2] = v9;
  }
}

void sub_250118DE0(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = CACurrentMediaTime();
  v9 = OBJC_IVAR____TtC14GradientPoster12GradientView_rollingAnimProgress;
  v10 = (v8 - a3) / a4;
  swift_beginAccess();
  *(a2 + v9) = v10;
  sub_2501195E8(0);
  if (*(a2 + v9) > 1.0)
  {
    [a1 invalidate];
    v11 = *(a2 + OBJC_IVAR____TtC14GradientPoster12GradientView_animTimer);
    *(a2 + OBJC_IVAR____TtC14GradientPoster12GradientView_animTimer) = 0;

    *(a2 + v9) = 0;
  }
}

void sub_250118E90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_250118EF8(double a1)
{
  v2 = OBJC_IVAR____TtC14GradientPoster12GradientView_wakeTimer;
  if (!*&v1[OBJC_IVAR____TtC14GradientPoster12GradientView_wakeTimer])
  {
    v4 = OBJC_IVAR____TtC14GradientPoster12GradientView_wakeProgress;
    swift_beginAccess();
    v5 = *&v1[v4];
    if (v5 <= 0.5)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    v7 = CACurrentMediaTime();
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = a1;
    *(v9 + 32) = v1;
    *(v9 + 40) = v5;
    *(v9 + 48) = v6;
    aBlock[4] = sub_2501199C8;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_250118E90;
    aBlock[3] = &block_descriptor_8;
    v10 = _Block_copy(aBlock);
    v11 = v1;

    v12 = [v8 scheduledTimerWithTimeInterval:1 repeats:v10 block:0.0166666667];
    _Block_release(v10);
    v13 = *&v1[v2];
    *&v1[v2] = v12;
  }
}

void sub_250119074(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v10 = (CACurrentMediaTime() - a3) / a4;
  v11 = OBJC_IVAR____TtC14GradientPoster12GradientView_wakeProgress;
  swift_beginAccess();
  *(a2 + v11) = (a6 - a5) * v10 + a5;
  sub_2501195E8(0);
  if (v10 > 1.0)
  {
    [a1 invalidate];
    v12 = *(a2 + OBJC_IVAR____TtC14GradientPoster12GradientView_wakeTimer);
    *(a2 + OBJC_IVAR____TtC14GradientPoster12GradientView_wakeTimer) = 0;

    *(a2 + v11) = a6;
  }
}

id GradientView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *GradientView.init(frame:)(double a1, double a2, double a3, double a4)
{
  sub_25011A010(&v4[OBJC_IVAR____TtC14GradientPoster12GradientView_gradient]);
  *&v4[OBJC_IVAR____TtC14GradientPoster12GradientView_currentStyle] = 1;
  *&v4[OBJC_IVAR____TtC14GradientPoster12GradientView_animTimer] = 0;
  *&v4[OBJC_IVAR____TtC14GradientPoster12GradientView_wakeTimer] = 0;
  *&v4[OBJC_IVAR____TtC14GradientPoster12GradientView_rollingAnimProgress] = 0;
  *&v4[OBJC_IVAR____TtC14GradientPoster12GradientView_wakeProgress] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC14GradientPoster12GradientView_rotationAngle] = 0;
  *&v4[OBJC_IVAR____TtC14GradientPoster12GradientView____lazy_storage___gradientLayerView] = 0;
  *&v4[OBJC_IVAR____TtC14GradientPoster12GradientView____lazy_storage___gradientLayer] = 0;
  *&v4[OBJC_IVAR____TtC14GradientPoster12GradientView_transitionViewRotationAngle] = 0;
  *&v4[OBJC_IVAR____TtC14GradientPoster12GradientView_transitionViewEndTimestamp] = 0;
  *&v4[OBJC_IVAR____TtC14GradientPoster12GradientView_transitionView] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for GradientView();
  v9 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = sub_2501182DC();
  [v9 bounds];
  [v10 setFrame_];

  [v9 addSubview_];
  sub_2501195E8(0);

  return v9;
}

id GradientView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t GradientView.init(coder:)(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient);
  sub_25011A010(v1 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient);

  *(v1 + OBJC_IVAR____TtC14GradientPoster12GradientView_currentStyle) = 1;
  v4 = OBJC_IVAR____TtC14GradientPoster12GradientView_animTimer;
  *(v1 + OBJC_IVAR____TtC14GradientPoster12GradientView_animTimer) = 0;
  v5 = OBJC_IVAR____TtC14GradientPoster12GradientView_wakeTimer;
  *(v1 + OBJC_IVAR____TtC14GradientPoster12GradientView_wakeTimer) = 0;
  *(v1 + OBJC_IVAR____TtC14GradientPoster12GradientView_rollingAnimProgress) = 0;
  *(v1 + OBJC_IVAR____TtC14GradientPoster12GradientView_wakeProgress) = 0x3FF0000000000000;
  *(v1 + OBJC_IVAR____TtC14GradientPoster12GradientView_rotationAngle) = 0;
  v6 = OBJC_IVAR____TtC14GradientPoster12GradientView____lazy_storage___gradientLayerView;
  *(v1 + OBJC_IVAR____TtC14GradientPoster12GradientView____lazy_storage___gradientLayerView) = 0;
  v7 = OBJC_IVAR____TtC14GradientPoster12GradientView____lazy_storage___gradientLayer;
  *(v1 + OBJC_IVAR____TtC14GradientPoster12GradientView____lazy_storage___gradientLayer) = 0;
  *(v1 + OBJC_IVAR____TtC14GradientPoster12GradientView_transitionViewRotationAngle) = 0;
  *(v1 + OBJC_IVAR____TtC14GradientPoster12GradientView_transitionViewEndTimestamp) = 0;
  v8 = OBJC_IVAR____TtC14GradientPoster12GradientView_transitionView;
  *(v1 + OBJC_IVAR____TtC14GradientPoster12GradientView_transitionView) = 0;
  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];
  v12 = v3[3];
  v15 = *(v3 + 8);
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v9;
  v14[1] = v10;
  sub_250118630(v14);

  type metadata accessor for GradientView();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_2501194FC()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for GradientView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = sub_2501182DC();
  [v0 bounds];
  [v1 setFrame_];

  v2 = *&v0[OBJC_IVAR____TtC14GradientPoster12GradientView_transitionView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }
}

void sub_2501195E8(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14GradientPoster12GradientView_transitionView;
  v5 = *(v1 + OBJC_IVAR____TtC14GradientPoster12GradientView_transitionView);
  if (v5)
  {
    v6 = v5;
    if (*(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_transitionViewEndTimestamp) <= CACurrentMediaTime())
    {
      [v6 removeFromSuperview];

      v6 = *(v2 + v4);
      *(v2 + v4) = 0;
    }
  }

  v7 = OBJC_IVAR____TtC14GradientPoster12GradientView_rollingAnimProgress;
  swift_beginAccess();
  v8 = *(v2 + v7);
  v9 = OBJC_IVAR____TtC14GradientPoster12GradientView_wakeProgress;
  swift_beginAccess();
  v10 = v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient;
  v11 = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 16);
  v12 = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 48);
  v45 = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 32);
  v46 = v12;
  v13 = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 16);
  v44[0] = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient);
  v44[1] = v13;
  v14 = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 48);
  v41 = v45;
  v42 = v14;
  v15 = *(v2 + v9);
  v47 = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 64);
  v43 = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_gradient + 64);
  v39 = v44[0];
  v40 = v11;
  sub_2501185D4(v44, v48);
  v16 = sub_250118350();
  v17 = OBJC_IVAR____TtC14GradientPoster12GradientView_currentStyle;
  v18 = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_currentStyle);
  v19 = OBJC_IVAR____TtC14GradientPoster12GradientView_rotationAngle;
  swift_beginAccess();
  sub_25011A17C(v16, v18, a1 & 1, *(v2 + v19), v8, v15);

  v48[2] = v41;
  v48[3] = v42;
  v49 = v43;
  v48[0] = v39;
  v48[1] = v40;
  sub_250118630(v48);
  v20 = *(v2 + v4);
  if (v20)
  {
    v21 = [v20 layer];
    if (v21)
    {
      v22 = v21;
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v24 = v23;
        v25 = *(v10 + 16);
        v26 = *(v10 + 48);
        v36 = *(v10 + 32);
        v37 = v26;
        v27 = *(v10 + 16);
        v35[0] = *v10;
        v35[1] = v27;
        v32 = v36;
        v33 = *(v10 + 48);
        v38 = *(v10 + 64);
        v34 = *(v10 + 64);
        v30 = v35[0];
        v31 = v25;
        v28 = *(v2 + v17);
        v29 = *(v2 + OBJC_IVAR____TtC14GradientPoster12GradientView_transitionViewRotationAngle);
        sub_2501185D4(v35, &v39);
        sub_25011A17C(v24, v28, a1 & 1, v29, v8, v15);

        v41 = v32;
        v42 = v33;
        v43 = v34;
        v39 = v30;
        v40 = v31;
        sub_250118630(&v39);
      }

      else
      {
      }
    }
  }
}

id sub_2501198B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double keypath_getTm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_250119E78(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_250119ECC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v4 systemBlueColor];
  v7 = [v4 whiteColor];
  v8 = [v4 blackColor];
  v9 = [v4 systemBlueColor];
  v10 = [v4 blackColor];
  *(a2 + 16) = &qword_2862993E8;
  *(a2 + 24) = xmmword_25011CA50;
  *(a2 + 40) = xmmword_25011CA60;
  *(a2 + 56) = 0;
  *(a2 + 64) = MEMORY[0x277D84F90];

  *a2 = a1;
  *(a2 + 8) = a1;
}

double sub_25011A010@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F28);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25011CA40;
  v3 = objc_opt_self();
  *(v2 + 32) = [v3 whiteColor];
  *(v2 + 40) = [v3 systemBlueColor];
  *(v2 + 48) = [v3 whiteColor];
  *a1 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25011CA40;
  *(v4 + 32) = [v3 blackColor];
  *(v4 + 40) = [v3 systemBlueColor];
  *(v4 + 48) = [v3 blackColor];
  *(a1 + 8) = v4;
  *(a1 + 16) = &unk_2862994C8;
  *(a1 + 24) = xmmword_25011CA50;
  result = 0.5;
  *(a1 + 40) = xmmword_25011CA60;
  *(a1 + 56) = 0;
  *(a1 + 64) = MEMORY[0x277D84F90];
  return result;
}

void sub_25011A17C(void *a1, uint64_t a2, char a3, CGFloat a4, double a5, double a6)
{
  v122 = *MEMORY[0x277D85DE8];
  v10 = *v6;
  v11 = *(v6 + 1);
  v12 = *(v6 + 2);
  v112 = v6[3];
  point = v6[4];
  v109 = v6[6];
  v110 = v6[5];
  v111 = *(v6 + 56);
  v13 = v6[8];
  if ((a3 & 1) == 0)
  {
    v14 = objc_opt_self();
    [v14 begin];
    [v14 setDisableActions_];
  }

  v15 = 0.0;
  if (a5 >= 0.0)
  {
    v15 = a5;
  }

  if (a5 >= 1.0)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = v15;
  }

  if (a2 == 2)
  {
    v17 = v11;
  }

  else
  {
    v17 = *&v10;
  }

  if (v17 >> 62)
  {
    v18 = sub_25011C488();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v113 = v13;
  if (v18 != 3)
  {
    sub_25011C478();
    __break(1u);
    return;
  }

  v19 = v16 * v16 * (3.0 - (v16 + v16));
  *&t1.a = MEMORY[0x277D84F90];
  sub_25011C448();
  v20 = 0;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x25305EE70](v20, v17);
    }

    else
    {
      v21 = *(v17 + 8 * v20 + 32);
    }

    v22 = v21;
    if (a6 < 1.0)
    {
      t2.a = 0.0;
      v118 = 0.0;
      v119.a = 0.0;
      v117 = 1.0;
      if ([v21 getHue:&t2 saturation:&v119 brightness:&v118 alpha:&v117])
      {
        [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:t2.a saturation:v119.a brightness:v118 * 0.5 + (v118 - v118 * 0.5) * a6 alpha:v117];
      }
    }

    ++v20;
    sub_25011C428();
    sub_25011C458();
    sub_25011C468();
    sub_25011C438();
  }

  while (v20 != 3);

  a = t1.a;
  if (v12[2] == 3)
  {
  }

  else
  {
    v12 = &unk_286299500;
  }

  v24 = *&v13;
  if (*&v13 >> 62)
  {
    v25 = sub_25011C488();
  }

  else
  {
    v25 = *((*&v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v25 == 2)
  {

    v26 = v12[2];
    if (v26)
    {
      goto LABEL_29;
    }

LABEL_35:

    v27 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F28);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_25011CA20;
  v32 = *MEMORY[0x277CDA7C0];
  v33 = objc_opt_self();
  *(v24 + 32) = [v33 functionWithName_];
  *(v24 + 40) = [v33 functionWithName_];
  v26 = v12[2];
  if (!v26)
  {
    goto LABEL_35;
  }

LABEL_29:
  *&t1.a = MEMORY[0x277D84F90];
  sub_250115F98(0, v26, 0);
  v27 = t1.a;
  v28 = *(*&t1.a + 16);
  v29 = 4;
  do
  {
    v30 = *&v12[v29];
    t1.a = v27;
    v31 = *(*&v27 + 24);
    if (v28 >= v31 >> 1)
    {
      sub_250115F98((v31 > 1), v28 + 1, 1);
      v27 = t1.a;
    }

    *(*&v27 + 16) = v28 + 1;
    *(*&v27 + 8 * v28 + 32) = v30 / 3.0;
    ++v29;
    ++v28;
    --v26;
  }

  while (v26);

LABEL_36:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F28);
  inited = swift_initStackObject();
  v35 = inited;
  *(inited + 16) = xmmword_25011CDF0;
  if ((*&a & 0xC000000000000001) != 0)
  {
    *(inited + 32) = MEMORY[0x25305EE70](0, *&a);
    *(v35 + 40) = MEMORY[0x25305EE70](1, *&a);
    *(v35 + 48) = MEMORY[0x25305EE70](2, *&a);
    *(v35 + 56) = MEMORY[0x25305EE70](1, *&a);
    *(v35 + 64) = MEMORY[0x25305EE70](0, *&a);
    *(v35 + 72) = MEMORY[0x25305EE70](1, *&a);
    v48 = MEMORY[0x25305EE70](2, *&a);
    goto LABEL_41;
  }

  v36 = *((*&a & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
    __break(1u);
    goto LABEL_64;
  }

  v37 = *(*&a + 32);
  *(inited + 32) = v37;
  if (v36 == 1)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v12 = *(*&a + 40);
  *(inited + 40) = v12;
  if (v36 < 3)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v38 = *(*&a + 48);
  *(inited + 48) = v38;
  v39 = *(*&a + 40);
  *(inited + 56) = v39;
  v40 = v24;
  v41 = *(*&a + 32);
  *(inited + 64) = v41;
  *(inited + 72) = v39;
  v42 = *(*&a + 48);
  v43 = v39;
  v44 = v37;
  v45 = v12;
  v46 = v38;
  v47 = v41;
  v24 = v40;
  v48 = v42;
LABEL_41:
  v49 = v48;

  *(v35 + 80) = v49;
  v12 = *MEMORY[0x277CDA7B8];
  v50 = [objc_opt_self() functionWithName_];
  v51 = *(*&v27 + 16);
  if (!v51)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v51 == 1)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v51 < 3)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v12 = v50;
  v52 = *(*&v27 + 32);
  v113 = *(*&v27 + 40);
  v53 = *(*&v27 + 48);

  *&v54 = COERCE_DOUBLE(swift_allocObject());
  a = *&v54;
  *(v54 + 16) = xmmword_25011CE00;
  v104 = v53;
  v105 = v19;
  v103 = v52;
  if ((v24 & 0xC000000000000001) != 0)
  {
LABEL_69:
    *(*&a + 32) = MEMORY[0x25305EE70](0, v24);
    *(*&a + 40) = MEMORY[0x25305EE70](1, v24);
    *(*&a + 48) = v12;
    *(*&a + 56) = v12;
    v100 = v12;
    *(*&a + 64) = MEMORY[0x25305EE70](0, v24);
    v62 = MEMORY[0x25305EE70](1, v24);
    goto LABEL_48;
  }

  v55 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v55)
  {
    __break(1u);
    goto LABEL_71;
  }

  v56 = *(v24 + 32);
  *(v54 + 32) = v56;
  if (v55 == 1)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v57 = *(v24 + 40);
  *(v54 + 40) = v57;
  *(v54 + 48) = v12;
  *(v54 + 56) = v12;
  *(v54 + 64) = v56;
  v58 = v12;
  v59 = v56;
  v60 = v57;
  v61 = v59;
  v62 = v60;
LABEL_48:
  v63 = v62;

  *(*&a + 72) = v63;
  CGAffineTransformMakeTranslation(&t1, -0.5, -0.5);
  v64 = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  tx = t1.tx;
  ty = t1.ty;
  CGAffineTransformMakeRotation(&t1, a4);
  v70 = *&t1.a;
  v71 = *&t1.c;
  v72 = *&t1.tx;
  t1.a = v64;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v70;
  *&t2.c = v71;
  *&t2.tx = v72;
  CGAffineTransformConcat(&v119, &t1, &t2);
  v73 = v119.tx;
  v74 = v119.ty;
  v101 = *&v119.c;
  v102 = *&v119.a;
  t1.a = v64;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = tx;
  t1.ty = ty;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v102;
  *&t1.c = v101;
  t1.tx = v73;
  t1.ty = v74;
  CGAffineTransformConcat(&v119, &t1, &t2);
  t1 = v119;
  v123.x = v112;
  v123.y = point;
  v75 = CGPointApplyAffineTransform(v123, &t1);
  CGAffineTransformMakeTranslation(&t1, -0.5, -0.5);
  v76 = *&t1.a;
  v77 = t1.c;
  v78 = t1.d;
  v79 = *&t1.tx;
  CGAffineTransformMakeRotation(&t1, a4);
  v80 = *&t1.a;
  v81 = *&t1.c;
  v82 = *&t1.tx;
  *&t1.a = v76;
  t1.c = v77;
  t1.d = v78;
  *&t1.tx = v79;
  *&t2.a = v80;
  *&t2.c = v81;
  *&t2.tx = v82;
  CGAffineTransformConcat(&v119, &t1, &t2);
  v83 = v119.tx;
  v84 = v119.ty;
  *anglea = *&v119.a;
  pointa = *&v119.c;
  *&t1.a = v76;
  t1.c = v77;
  t1.d = v78;
  *&t1.tx = v79;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = *anglea;
  *&t1.c = pointa;
  t1.tx = v83;
  t1.ty = v84;
  CGAffineTransformConcat(&v119, &t1, &t2);
  t1 = v119;
  v124.y = v109;
  v124.x = v110;
  v85 = CGPointApplyAffineTransform(v124, &t1);
  v86 = **(&unk_27969CA90 + v111);
  [a1 setType_];

  *&t2.a = MEMORY[0x277D84F90];
  sub_250115FB8(0, 7, 0);
  v87 = t2.a;
  if ((v35 & 0xC000000000000001) == 0 && *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) < 7uLL)
  {
LABEL_72:
    __break(1u);
  }

  v88 = 0;
  v89 = v85.x - v75.x;
  v90 = v85.y - v75.y;
  do
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v91 = MEMORY[0x25305EE70](v88, v35);
    }

    else
    {
      v91 = *(v35 + 8 * v88 + 32);
    }

    v92 = v91;
    v93 = [v91 CGColor];
    type metadata accessor for CGColor(0);
    t1.d = v94;

    *&t1.a = v93;
    t2.a = v87;
    v96 = *(*&v87 + 16);
    v95 = *(*&v87 + 24);
    if (v96 >= v95 >> 1)
    {
      sub_250115FB8((v95 > 1), v96 + 1, 1);
      v87 = t2.a;
    }

    ++v88;
    *(*&v87 + 16) = v96 + 1;
    sub_250116934(&t1, (*&v87 + 32 * v96 + 32));
  }

  while (v88 != 7);

  v97 = sub_25011C3B8();

  [a1 setColors_];

  sub_250119E78(0, &qword_28110FC50);
  v98 = sub_25011C3B8();

  [a1 setInterpolations_];

  *&t1.a = MEMORY[0x277D84F90];
  sub_25011C448();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_25011C428();
  sub_25011C458();
  sub_25011C468();
  sub_25011C438();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_25011C428();
  sub_25011C458();
  sub_25011C468();
  sub_25011C438();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_25011C428();
  sub_25011C458();
  sub_25011C468();
  sub_25011C438();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_25011C428();
  sub_25011C458();
  sub_25011C468();
  sub_25011C438();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_25011C428();
  sub_25011C458();
  sub_25011C468();
  sub_25011C438();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_25011C428();
  sub_25011C458();
  sub_25011C468();
  sub_25011C438();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_25011C428();
  sub_25011C458();
  sub_25011C468();
  sub_25011C438();
  sub_250119E78(0, &qword_28110FC38);
  v99 = sub_25011C3B8();

  [a1 setLocations_];

  [a1 setStartPoint_];
  [a1 setEndPoint_];
  if ((a3 & 1) == 0)
  {
    [objc_opt_self() commit];
  }
}

uint64_t GradientType.hashValue.getter()
{
  v1 = *v0;
  sub_25011C4C8();
  MEMORY[0x25305EF30](v1);
  return sub_25011C4E8();
}

uint64_t sub_25011AF90()
{
  v1 = *v0;
  sub_25011C4C8();
  MEMORY[0x25305EF30](v1);
  return sub_25011C4E8();
}

uint64_t sub_25011B004()
{
  v1 = *v0;
  sub_25011C4C8();
  MEMORY[0x25305EF30](v1);
  return sub_25011C4E8();
}

uint64_t sub_25011B04C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25011B0A8(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_250119E78(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x25305EE70](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x25305EE70](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_25011C3D8();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_25011C3D8();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_25011C488();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_25011C488();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t static Gradient.defaultGradientColors.getter()
{
  type metadata accessor for GradientView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  v2 = result;
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v17 = v4;
  v5 = 9;
  if (v3 > 9)
  {
    v5 = v3;
  }

  v6 = -v5;
  v7 = &unk_286299538 + 24 * v3++;
  v8 = (v7 + 48);
  while (v6 + v3 != 1)
  {
    v9 = *(v8 - 2);
    v10 = *(v8 - 1);
    v11 = *v8;

    v12 = sub_25011C388();
    v13 = [objc_opt_self() colorNamed:v12 inBundle:v2 compatibleWithTraitCollection:0];

    if (v13)
    {

      MEMORY[0x25305EE00](46, 0xE100000000000000);

      MEMORY[0x25305EE00]((v11 << 48) + 0x31746573657270, 0xE700000000000000);

      v4 = v17;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25011BE60(0, v17[2] + 1, 1, v17);
        v4 = result;
      }

      v15 = v4[2];
      v14 = v4[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_25011BE60((v14 > 1), v15 + 1, 1, v4);
        v4 = result;
      }

      v4[2] = v15 + 1;
      v16 = &v4[5 * v15];
      v16[4] = v9;
      v16[5] = v10;
      v16[6] = v13;
      *(v16 + 56) = v11;
      v16[8] = 0;
      if (v3 == 9)
      {
        goto LABEL_14;
      }

      goto LABEL_2;
    }

    ++v3;
    v8 += 24;
    if (v3 == 10)
    {
      v4 = v17;
LABEL_14:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0FE0);
      swift_arrayDestroy();
      return v4;
    }
  }

  __break(1u);
  return result;
}

void Gradient.luminance(for:in:)(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v13 = *v8;
  if (*v8 >> 62)
  {
    v25 = a4;
    v26 = a3;
    v27 = a2;
    v28 = a1;
    v29 = sub_25011C488();
    a1 = v28;
    a2 = v27;
    a3 = v26;
    a4 = v25;
    if (v29 != 3)
    {
      return;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) != 3)
  {
    return;
  }

  MidY = CGRectGetMidY(*&a1);
  v30.origin.x = a5;
  v30.origin.y = a6;
  v30.size.width = a7;
  v30.size.height = a8;
  if (MidY / CGRectGetMaxY(v30) >= 0.5)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x25305EE70](1, v13);
    }

    else
    {
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_27;
      }

      v20 = *(v13 + 40);
    }

    v21 = v20;
    sub_250117298();
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25305EE70](2, v13);
        goto LABEL_19;
      }

      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v19 = *(v13 + 48);
        goto LABEL_19;
      }

      goto LABEL_29;
    }

    return;
  }

  if ((v13 & 0xC000000000000001) == 0)
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v13 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v15 = MEMORY[0x25305EE70](0, v13);
LABEL_7:
  v16 = v15;
  sub_250117298();
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x25305EE70](1, v13);
LABEL_19:
      v24 = v19;
      sub_250117298();

      return;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v19 = *(v13 + 40);
      goto LABEL_19;
    }

    goto LABEL_28;
  }
}

id sub_25011B7D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0FF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25011CE10;
  *(v0 + 32) = 0x6C616E6F73726570;
  *(v0 + 40) = 0xE800000000000000;
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.0611111111 saturation:0.421501706 brightness:0.9376 alpha:1.0];
  *(v0 + 56) = 0;
  *(v0 + 64) = xmmword_25011CE20;
  *(v0 + 80) = 0xE400000000000000;
  *(v0 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.552777778 saturation:0.779134295 brightness:0.901 alpha:1.0];
  *(v0 + 96) = 0;
  *(v0 + 104) = xmmword_25011CE30;
  *(v0 + 120) = 0xE500000000000000;
  *(v0 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.597222222 saturation:0.907103825 brightness:0.2928 alpha:1.0];
  *(v0 + 136) = 1;
  *(v0 + 144) = xmmword_25011CE40;
  *(v0 + 160) = 0xE700000000000000;
  *(v0 + 168) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.375 saturation:0.742138365 brightness:0.7791 alpha:1.0];
  *(v0 + 176) = 0;
  *(v0 + 184) = xmmword_25011CE50;
  *(v0 + 200) = 0xE600000000000000;
  *(v0 + 208) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.583333333 saturation:0.72 brightness:1.0 alpha:1.0];
  *(v0 + 216) = 4;
  *(v0 + 224) = xmmword_25011CE60;
  *(v0 + 240) = 0xEB00000000737365;
  *(v0 + 248) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.491666667 saturation:1.0 brightness:0.78 alpha:1.0];
  *(v0 + 256) = 4;
  *(v0 + 264) = 9;
  *(v0 + 272) = 0x676E6964616572;
  *(v0 + 280) = 0xE700000000000000;
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.0972222222 saturation:0.66 brightness:1.0 alpha:1.0];
  *(v0 + 288) = result;
  *(v0 + 296) = 0;
  *(v0 + 304) = 7;
  qword_28110FC80 = v0;
  return result;
}

id UIColor.init(h:s:l:)(double a1, double a2, double a3)
{
  v4 = 1.0 - a3;
  if (1.0 - a3 >= a3)
  {
    v4 = a3;
  }

  v5 = v4 * a2 + a3;
  v6 = 0.0;
  if (v5 > 0.0)
  {
    v6 = 1.0 - a3 / v5 + 1.0 - a3 / v5;
  }

  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v7 initWithHue:a1 / 360.0 saturation:v6 brightness:v5 alpha:1.0];
}

uint64_t static Gradient.focusConfigs.getter()
{
  if (qword_28110FC78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Gradient.focusConfigs.setter(uint64_t a1)
{
  if (qword_28110FC78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_28110FC80 = a1;
}

uint64_t (*static Gradient.focusConfigs.modify())()
{
  if (qword_28110FC78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

UIColor __swiftcall UIColor.init(r:g:b:)(Swift::Int r, Swift::Int g, Swift::Int b)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v6 initWithRed:r / 255.0 green:g / 255.0 blue:b / 255.0 alpha:1.0];
}

UIColor __swiftcall UIColor.init(packedRGB:)(Swift::UInt32 packedRGB)
{
  v1 = BYTE2(packedRGB);
  v2 = BYTE1(packedRGB);
  v3 = packedRGB;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithRed:v1 / 255.0 green:v2 / 255.0 blue:v3 / 255.0 alpha:1.0];
}

char *sub_25011BD5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0F58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_25011BE60(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0FF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3C0FF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s14GradientPoster0A0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v16 = *(a1 + 24);
  v17 = *(a1 + 40);
  v14 = *(a2 + 24);
  v15 = *(a2 + 40);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  if (sub_25011B0A8(*a1, *a2, &qword_28110FC40) & 1) != 0 && (sub_25011B0A8(v2, v6, &qword_28110FC40))
  {
    v10 = sub_25011B04C(v3, v7);
    v11 = 0;
    if ((v10 & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v16, v14), vceqq_f64(v17, v15)), xmmword_25011CE70)) & 0xF) == 0 && v4 == v8)
    {
      v11 = sub_25011B0A8(v5, v9, &qword_28110FC50);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

unint64_t sub_25011C0E4()
{
  result = qword_27F3C0FE8;
  if (!qword_27F3C0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3C0FE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GradientType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GradientType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25011C2AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_25011C2F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x282111538](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}