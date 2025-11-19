_BYTE *(*Icon.Element.hasLightingEffects.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 25);
  return sub_1B15F45A0;
}

__n128 Icon.Element.init(contents:bounds:fill:opacity:blendMode:participatesInGlass:appearance:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a3 + 96);
  v11 = *a4;
  *a7 = a8;
  *(a7 + 8) = v11;
  *(a7 + 16) = v8;
  *(a7 + 24) = v9;
  *(a7 + 25) = a5;
  *(a7 + 32) = a6;
  v12 = *(a2 + 16);
  *(a7 + 40) = *a2;
  *(a7 + 56) = v12;
  *(a7 + 72) = *(a2 + 32);
  v13 = *(a3 + 16);
  *(a7 + 80) = *a3;
  *(a7 + 96) = v13;
  v14 = *(a3 + 48);
  *(a7 + 112) = *(a3 + 32);
  *(a7 + 128) = v14;
  result = *(a3 + 64);
  v16 = *(a3 + 80);
  *(a7 + 144) = result;
  *(a7 + 160) = v16;
  *(a7 + 176) = v10;
  *(a7 + 177) = 2;
  return result;
}

id static Icon.Element.path(_:fill:opacity:hasLightingEffects:appearance:)@<X0>(id a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = *(a2 + 96);
  *a5 = a6;
  *(a5 + 8) = 0;
  *(a5 + 16) = a1;
  *(a5 + 24) = 0;
  *(a5 + 25) = a3;
  *(a5 + 32) = a4;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 1;
  v7 = *(a2 + 16);
  *(a5 + 80) = *a2;
  *(a5 + 96) = v7;
  v8 = *(a2 + 48);
  *(a5 + 112) = *(a2 + 32);
  *(a5 + 128) = v8;
  v9 = *(a2 + 80);
  *(a5 + 144) = *(a2 + 64);
  *(a5 + 160) = v9;
  *(a5 + 176) = v6;
  *(a5 + 177) = 2;
  return a1;
}

id static Icon.Element.Contents.path(_:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  return a1;
}

id sub_1B15F4694@<X0>(id a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v8 = *(a3 + 96);
  *a7 = a8;
  *(a7 + 8) = 0;
  *(a7 + 16) = a1;
  *(a7 + 24) = a6;
  *(a7 + 25) = a4;
  *(a7 + 32) = a5;
  v9 = *(a2 + 16);
  *(a7 + 40) = *a2;
  *(a7 + 56) = v9;
  *(a7 + 72) = *(a2 + 32);
  v10 = *(a3 + 16);
  *(a7 + 80) = *a3;
  *(a7 + 96) = v10;
  v11 = *(a3 + 48);
  *(a7 + 112) = *(a3 + 32);
  *(a7 + 128) = v11;
  v12 = *(a3 + 80);
  *(a7 + 144) = *(a3 + 64);
  *(a7 + 160) = v12;
  *(a7 + 176) = v8;
  *(a7 + 177) = 2;
  return a1;
}

uint64_t static Icon.Element.Contents.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v11 = *a1;
  v12 = v2;
  v9 = v3;
  v10 = v4;
  v5 = v3;
  v6 = v11;
  v7 = _s13IconRendering0A0V7ElementV15ContentsStorageO2eeoiySbAG_AGtFZ_0(&v11, &v9);

  return v7 & 1;
}

uint64_t sub_1B15F4760(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v11 = *a1;
  v12 = v2;
  v9 = v3;
  v10 = v4;
  v5 = v3;
  v6 = v11;
  v7 = _s13IconRendering0A0V7ElementV15ContentsStorageO2eeoiySbAG_AGtFZ_0(&v11, &v9);

  return v7 & 1;
}

__n128 Icon.Fill.contents.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 96);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  result = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

__n128 Icon.Fill.contents.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v2;
  *(v1 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

double static Icon.Fill.automaticGradient(of:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1;
  *(a2 + 96) = 64;
  return result;
}

double static Icon.Fill.gradient(start:end:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v3;
  v4 = a2[1];
  *(a3 + 32) = *a2;
  *(a3 + 48) = v4;
  result = 0.0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = -127;
  return result;
}

double static Icon.Fill.systemLightChicletGradient.getter@<D0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.2D, #1.0 }

  return sub_1B15F48D0(a1, _Q0, _Q0, vdupq_n_s64(0x3FED99999999999AuLL), xmmword_1B161E2D0);
}

double sub_1B15F48D0@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = a4;
  *(a1 + 48) = a5;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = -127;
  return result;
}

double static Icon.Fill.systemMonoChicletGradient.getter@<D0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.2D, #0.5 }

  *a1 = _Q0;
  *(a1 + 16) = xmmword_1B161E2E0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 96) = 64;
  return result;
}

uint64_t sub_1B15F4940(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v10 = *(a2 + 96);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  return _s13IconRendering0A0V4FillV8ContentsO2eeoiySbAG_AGtFZ_0(v11, v9) & 1;
}

void sub_1B15F49AC()
{
  xmmword_1EDB2F438 = 0uLL;
  qword_1EDB2F448 = 0;
  unk_1EDB2F450 = 0x3FF0000000000000;
}

double static Icon.GradientPlacement.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EDB2F430 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&xmmword_1EDB2F438;
  v2 = *&qword_1EDB2F448;
  *a1 = xmmword_1EDB2F438;
  a1[1] = v2;
  return result;
}

IconRendering::Icon::GlassMaterial __swiftcall Icon.GlassMaterial.init(hasSpecular:hasShadow:shadowInfusesGlyphColor:translucency:blurStrength:)(Swift::Bool hasSpecular, Swift::Bool hasShadow, Swift::Bool shadowInfusesGlyphColor, Swift::Double translucency, Swift::Double blurStrength)
{
  *v5 = hasSpecular;
  *(v5 + 1) = !hasShadow;
  *(v5 + 8) = 0x3FF0000000000000;
  *(v5 + 16) = translucency;
  *(v5 + 24) = blurStrength;
  result.translucency = blurStrength;
  result.shadowOpacity = translucency;
  result.hasSpecular = hasSpecular;
  return result;
}

_BYTE *(*Icon.GlassMaterial.hasShadow.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 1) != 1;
  return sub_1B15F4C44;
}

uint64_t Icon.GlassMaterial.shadowInfusesGlyphColor.setter(uint64_t result)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  *(v1 + 1) = v2;
  return result;
}

_BYTE *(*Icon.GlassMaterial.shadowInfusesGlyphColor.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 1) == 2;
  return sub_1B15F4CB4;
}

_BYTE *sub_1B15F4CB4(_BYTE *result)
{
  if (result[8])
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  *(*result + 1) = v1;
  return result;
}

uint64_t sub_1B15F4CF0()
{
  if (*v0)
  {
    return 0x4C6F547468676972;
  }

  else
  {
    return 0x69526F547466656CLL;
  }
}

uint64_t sub_1B15F4D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x69526F547466656CLL && a2 == 0xEB00000000746867 || (sub_1B161A448() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4C6F547468676972 && a2 == 0xEB00000000746665)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B161A448();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1B15F4E18(uint64_t a1)
{
  v2 = sub_1B15F5E14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B15F4E54(uint64_t a1)
{
  v2 = sub_1B15F5E14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B15F4E9C(uint64_t a1)
{
  v2 = sub_1B15F5EBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B15F4ED8(uint64_t a1)
{
  v2 = sub_1B15F5EBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B15F4F14(uint64_t a1)
{
  v2 = sub_1B15F5E68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B15F4F50(uint64_t a1)
{
  v2 = sub_1B15F5E68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Icon.LayoutDirection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752CB0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752CB8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752CC0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B15F5E14();
  sub_1B161A518();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1B15F5E68();
    v14 = v18;
    sub_1B161A3B8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1B15F5EBC();
    sub_1B161A3B8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t Icon.LayoutDirection.hashValue.getter()
{
  v1 = *v0;
  sub_1B161A4B8();
  MEMORY[0x1B272FFF0](v1);
  return sub_1B161A4F8();
}

uint64_t Icon.LayoutDirection.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752CD0);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752CD8);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752CE0);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B15F5E14();
  v13 = v31;
  sub_1B161A508();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1B161A3A8();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1B161A1E8();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752CE8);
    *v21 = &type metadata for Icon.LayoutDirection;
    sub_1B161A358();
    sub_1B161A1D8();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1B15F5E68();
    sub_1B161A348();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1B15F5EBC();
    sub_1B161A348();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_1B15F5704()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s13IconRendering0A0V4FillV8ContentsO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  v4 = *a1;
  v3 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 16);
  v7 = *(a2 + 96);
  if (v2 >> 6)
  {
    v8 = *(a1 + 64);
    v10 = *(a1 + 32);
    v9 = *(a1 + 48);
    v12 = *(a2 + 32);
    v11 = *(a2 + 48);
    v13 = *(a2 + 64);
    if (v2 >> 6 == 1)
    {
      if (v7 & 0xC0) == 0x40 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, v6), vceqq_f64(v3, v5)))))
      {
        if (v8)
        {
          if (LOBYTE(v13))
          {
            return 1;
          }
        }

        else if ((LOBYTE(v13) & 1) == 0 && v10.f64[0] == v12.f64[0] && v10.f64[1] == v12.f64[1] && v9.f64[0] == v11.f64[0] && v9.f64[1] == v11.f64[1])
        {
          return 1;
        }
      }

      return 0;
    }

    if ((v7 & 0xC0) == 0x80)
    {
      v15 = 0;
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, v6), vceqq_f64(v3, v5)))))
      {
        if ((~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v10, v12), vceqq_f64(v9, v11)), xmmword_1B161E2F0)) & 0xF) != 0)
        {
          return v15 & 1;
        }

        if (v2)
        {
          if (v7)
          {
LABEL_16:
            v15 = 1;
            return v15 & 1;
          }
        }

        else if ((v7 & 1) == 0)
        {
          v16 = COERCE_DOUBLE(v8 | ((*(a1 + 65) | ((*(a1 + 69) | (*(a1 + 71) << 16)) << 32)) << 8)) == v13 && *(a1 + 72) == *(a2 + 72);
          v17 = v16 && *(a1 + 80) == *(a2 + 80);
          if (v17 && *(a1 + 88) == *(a2 + 88))
          {
            goto LABEL_16;
          }
        }

        v15 = 0;
        return v15 & 1;
      }

      return v15 & 1;
    }
  }

  else if (v7 <= 0x3F)
  {
    v15 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, v6), vceqq_f64(v3, v5))));
    return v15 & 1;
  }

  return 0;
}

uint64_t _s13IconRendering0A0V7ElementV15ContentsStorageO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      type metadata accessor for CGPath(0);
      v5 = &qword_1EDB2F350;
      v6 = type metadata accessor for CGPath;
      goto LABEL_9;
    }

LABEL_10:
    v9 = 0;
    return v9 & 1;
  }

  if (*(a1 + 8) != 1)
  {
    if (v4 == 2)
    {
      type metadata accessor for CGSVGDocument(0);
      v5 = &unk_1EB752D30;
      v6 = type metadata accessor for CGSVGDocument;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v4 != 1)
  {
    goto LABEL_10;
  }

  type metadata accessor for CGImage(0);
  v5 = &unk_1EB752D38;
  v6 = type metadata accessor for CGImage;
LABEL_9:
  sub_1B15C2B78(v5, v6);
  v7 = v3;
  v8 = v2;
  v9 = sub_1B1619C08();

  return v9 & 1;
}

BOOL _s13IconRendering0A0V7ElementV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v33 = *(a1 + 177);
    v34 = *(a1 + 176);
    v10 = *(a2 + 40);
    v11 = *(a2 + 48);
    v12 = *(a2 + 56);
    v13 = *(a2 + 64);
    v14 = *(a2 + 72);
    v15 = *(a2 + 176);
    v32 = *(a2 + 177);
    v16 = *(a2 + 32);
    v17 = *(a2 + 25);
    v18 = *(a2 + 24);
    v19 = *(a2 + 16);
    v20 = *(a1 + 32);
    v21 = *(a1 + 25);
    v22 = *(a1 + 24);
    *&v37[0] = *(a1 + 16);
    BYTE8(v37[0]) = v22;
    *&v35[0] = v19;
    BYTE8(v35[0]) = v18;
    v23 = v19;
    v24 = *&v37[0];
    v25 = _s13IconRendering0A0V7ElementV15ContentsStorageO2eeoiySbAG_AGtFZ_0(v37, v35);

    result = 0;
    if ((v25 & 1) != 0 && ((v21 ^ v17) & 1) == 0 && v20 == v16)
    {
      if (v9)
      {
        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v14)
        {
          return 0;
        }

        v39.origin.x = v5;
        v39.origin.y = v6;
        v39.size.width = v7;
        v39.size.height = v8;
        v40.origin.x = v10;
        v40.origin.y = v11;
        v40.size.width = v12;
        v40.size.height = v13;
        result = CGRectEqualToRect(v39, v40);
        if (!result)
        {
          return result;
        }
      }

      if (v34 <= 0xFD)
      {
        if (v15 > 0xFD)
        {
          return 0;
        }

        v26 = *(a2 + 128);
        v35[2] = *(a2 + 112);
        v35[3] = v26;
        v27 = *(a2 + 160);
        v35[4] = *(a2 + 144);
        v35[5] = v27;
        v28 = *(a2 + 96);
        v35[0] = *(a2 + 80);
        v35[1] = v28;
        v29 = *(a1 + 128);
        v37[2] = *(a1 + 112);
        v37[3] = v29;
        v30 = *(a1 + 160);
        v37[4] = *(a1 + 144);
        v37[5] = v30;
        v31 = *(a1 + 96);
        v37[0] = *(a1 + 80);
        v37[1] = v31;
        v38 = v34;
        v36 = v15;
        if ((_s13IconRendering0A0V4FillV8ContentsO2eeoiySbAG_AGtFZ_0(v37, v35) & 1) == 0)
        {
          return 0;
        }
      }

      else if (v15 <= 0xFD)
      {
        return 0;
      }

      if (v33 == 2)
      {
        if (v32 != 2)
        {
          return 0;
        }
      }

      else if (v32 == 2 || ((v32 ^ v33) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }
  }

  return result;
}

BOOL _s13IconRendering0A0V13GlassMaterialV2eeoiySbAE_AEtFZ_0(double *a1, double *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && *(a1 + 1) == *(a2 + 1) && a1[1] == a2[1] && a1[2] == a2[2])
  {
    return a1[3] == a2[3];
  }

  return result;
}

BOOL _s13IconRendering0A0V17GradientPlacementV2eeoiySbAE_AEtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[3] == a2[3])
  {
    return a1[2] == a2[2];
  }

  return 0;
}

BOOL _s13IconRendering0A0V5LayerV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 25);
  v15 = *(a2 + 32);
  v14 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  v19 = sub_1B15CE9F4(*a1, *a2);
  result = 0;
  if ((v19 & 1) != 0 && v2 == v10 && v3 == v11)
  {
    if (v4 == 2)
    {
      result = 0;
      if (v12 != 2)
      {
        return result;
      }

LABEL_6:
      if (((v8 ^ v17) & 1) == 0)
      {
        return v9 == v18;
      }

      return result;
    }

    if (v12 == 2)
    {
      return 0;
    }

    result = 0;
    if (((v4 ^ v12) & 1) == 0 && v13 == BYTE1(v4) && v6 == v15 && v5 == v14)
    {
      result = 0;
      if (v7 == v16)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

unint64_t sub_1B15F5E14()
{
  result = qword_1EDB2F720;
  if (!qword_1EDB2F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F720);
  }

  return result;
}

unint64_t sub_1B15F5E68()
{
  result = qword_1EB752CC8;
  if (!qword_1EB752CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752CC8);
  }

  return result;
}

unint64_t sub_1B15F5EBC()
{
  result = qword_1EDB2F708;
  if (!qword_1EDB2F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F708);
  }

  return result;
}

unint64_t sub_1B15F5F14()
{
  result = qword_1EB752CF0;
  if (!qword_1EB752CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752CF0);
  }

  return result;
}

unint64_t sub_1B15F5F9C()
{
  result = qword_1EB752D08;
  if (!qword_1EB752D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752D08);
  }

  return result;
}

uint64_t sub_1B15F6020(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_1B15F6078()
{
  result = qword_1EB752D20;
  if (!qword_1EB752D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752D20);
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1B15F60F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B15F6140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Icon.BlendMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Icon.BlendMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
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

uint64_t sub_1B15F632C(uint64_t *a1, int a2)
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

uint64_t sub_1B15F6374(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy178_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1B15F6400(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 178))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B15F6454(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 178) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 178) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
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

uint64_t sub_1B15F64EC(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B15F6534(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Icon.Fill.Contents(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_1B15F65FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 97))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 96) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 96) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B15F6650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 96) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1B15F671C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B15F6770(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t _s9SizeClassOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9SizeClassOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B15F6958()
{
  result = qword_1EB752D28;
  if (!qword_1EB752D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752D28);
  }

  return result;
}

unint64_t sub_1B15F69B0()
{
  result = qword_1EDB2F6F8;
  if (!qword_1EDB2F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F6F8);
  }

  return result;
}

unint64_t sub_1B15F6A08()
{
  result = qword_1EDB2F700;
  if (!qword_1EDB2F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F700);
  }

  return result;
}

unint64_t sub_1B15F6A60()
{
  result = qword_1EDB2F6E8;
  if (!qword_1EDB2F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F6E8);
  }

  return result;
}

unint64_t sub_1B15F6AB8()
{
  result = qword_1EDB2F6F0;
  if (!qword_1EDB2F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F6F0);
  }

  return result;
}

unint64_t sub_1B15F6B10()
{
  result = qword_1EDB2F710;
  if (!qword_1EDB2F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F710);
  }

  return result;
}

unint64_t sub_1B15F6B68()
{
  result = qword_1EDB2F718;
  if (!qword_1EDB2F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F718);
  }

  return result;
}

uint64_t sub_1B15F6C10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6579570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1702194274;
    }

    else
    {
      v4 = 0x6168706C61;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E65657267;
    }

    else
    {
      v4 = 6579570;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1702194274;
  if (a2 != 2)
  {
    v8 = 0x6168706C61;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6E65657267;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B161A448();
  }

  return v11 & 1;
}

IconRendering::IconColor __swiftcall IconColor.withAlpha(_:)(Swift::Double a1)
{
  v3 = v2[2];
  v4 = *v2;
  *v1 = *v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = a1;
  result.blue = *&v4;
  result.green = v3;
  result.red = a1;
  return result;
}

void sub_1B15F6D3C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 > v2)
  {
    v4 = *v0;
  }

  else
  {
    v4 = v0[1];
  }

  if (v4 > v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = v0[2];
  }

  if (v2 >= v1)
  {
    v6 = *v0;
  }

  else
  {
    v6 = v0[1];
  }

  if (v3 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v0[2];
  }

  if (v5 - v7 != 0.0 && v5 == v1)
  {
    fmod((v2 - v3) / (v5 - v7), 6.0);
  }
}

IconRendering::IconColor __swiftcall IconColor.init(_:)(CGColorRef a1)
{
  v3 = v1;
  RBColorFromCGColor2();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v13 = v7;
  v14 = v9;
  *v3 = v5;
  v3[1] = v7;
  v15 = v11;
  v3[2] = v9;
  v3[3] = v11;
  result.alpha = v12;
  result.blue = v14;
  result.green = v13;
  result.red = v15;
  return result;
}

IconRendering::IconColor __swiftcall IconColor.init(red:green:blue:alpha:)(Swift::Double red, Swift::Double green, Swift::Double blue, Swift::Double alpha)
{
  *v4 = red;
  v4[1] = green;
  v4[2] = blue;
  v4[3] = alpha;
  result.alpha = alpha;
  result.blue = blue;
  result.green = green;
  result.red = red;
  return result;
}

CGColorRef IconColor.cgColor.getter()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v3[0] = *v0;
  v3[1] = v1;
  if (qword_1EDB2FB28 != -1)
  {
    swift_once();
  }

  result = CGColorCreate(qword_1EDB32780, v3);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

IconRendering::IconColor __swiftcall IconColor.init(brightness:alpha:)(Swift::Double brightness, Swift::Double alpha)
{
  *v2 = brightness;
  v2[1] = brightness;
  v2[2] = brightness;
  v2[3] = alpha;
  result.green = alpha;
  result.red = brightness;
  return result;
}

void sub_1B15F6F80()
{
  xmmword_1EDB30340 = 0uLL;
  qword_1EDB30350 = 0;
  unk_1EDB30358 = 0x3FF0000000000000;
}

double sub_1B15F6FC0()
{
  result = 0.0;
  xmmword_1EB752D40 = 0u;
  *algn_1EB752D50 = 0u;
  return result;
}

__n128 sub_1B15F6FFC@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    v8 = a4;
    swift_once();
    a2 = v6;
    a4 = v8;
    a3 = v7;
  }

  result = *a2;
  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
  return result;
}

CGColorRef sub_1B15F7120@<X0>(_OWORD *a1@<X0>, CGColorRef *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  if (qword_1EDB2FB28 != -1)
  {
    swift_once();
  }

  result = CGColorCreate(qword_1EDB32780, v5);
  if (!result)
  {
    __break(1u);
  }

  *a2 = result;
  return result;
}

double IconColor.cgColor.setter(void *a1)
{
  RBColorFromCGColor2();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *v1 = v4;
  v1[1] = v6;
  result = v10;
  v1[2] = v8;
  v1[3] = v10;
  return result;
}

void (*IconColor.cgColor.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
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
  v5 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v5;
  if (qword_1EDB2FB28 != -1)
  {
    swift_once();
  }

  v6 = CGColorCreate(qword_1EDB32780, v4);
  if (!v6)
  {
    __break(1u);
  }

  *(v4 + 32) = v6;
  return sub_1B15F7324;
}

void sub_1B15F7324(void **a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 4);
  v4 = *v5;
  RBColorFromCGColor2();
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v3[5];
  if (a2)
  {
    *v14 = v6;
    v14[1] = v7;
    v14[2] = v8;
    v14[3] = v9;
  }

  else
  {

    *v14 = v10;
    v14[1] = v11;
    v14[2] = v12;
    v14[3] = v13;
  }

  free(v3);
}

double sub_1B15F73E8(double result, double a2, double a3)
{
  if (a3 < 0.0)
  {
    a3 = a3 + 1.0;
  }

  if (a3 > 1.0)
  {
    a3 = a3 + -1.0;
  }

  if (a3 < 0.166666667)
  {
    v3 = (a2 - result) * 6.0;
    return v3 * a3 + result;
  }

  if (a3 < 0.5)
  {
    return a2;
  }

  if (a3 < 0.666666667)
  {
    v3 = (a2 - result) * (0.666666667 - a3);
    a3 = 6.0;
    return v3 * a3 + result;
  }

  return result;
}

uint64_t sub_1B15F7488()
{
  sub_1B161A4B8();
  sub_1B1619DF8();

  return sub_1B161A4F8();
}

uint64_t sub_1B15F7530()
{
  sub_1B1619DF8();
}

uint64_t sub_1B15F75C4()
{
  sub_1B161A4B8();
  sub_1B1619DF8();

  return sub_1B161A4F8();
}

uint64_t sub_1B15F7668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B15F7F68();
  *a1 = result;
  return result;
}

void sub_1B15F7698(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6579570;
  v4 = 0xE400000000000000;
  v5 = 1702194274;
  if (*v1 != 2)
  {
    v5 = 0x6168706C61;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E65657267;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1B15F76FC()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B15F775C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B15F7F68();
  *a1 = result;
  return result;
}

uint64_t sub_1B15F7790(uint64_t a1)
{
  v2 = sub_1B15F7DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B15F77CC(uint64_t a1)
{
  v2 = sub_1B15F7DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IconColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752D60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B15F7DA4();
  sub_1B161A518();
  v8[15] = 0;
  sub_1B161A3E8();
  if (!v1)
  {
    v8[14] = 1;
    sub_1B161A3E8();
    v8[13] = 2;
    sub_1B161A3E8();
    v8[12] = 3;
    sub_1B161A3E8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t IconColor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1B2730010](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1B2730010](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1B2730010](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x1B2730010](*&v7);
}

uint64_t IconColor.hashValue.getter()
{
  sub_1B161A4B8();
  IconColor.hash(into:)();
  return sub_1B161A4F8();
}

uint64_t IconColor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752D68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B15F7DA4();
  sub_1B161A508();
  if (!v2)
  {
    v22 = 0;
    sub_1B161A388();
    v10 = v9;
    v21 = 1;
    sub_1B161A388();
    v12 = v11;
    v20 = 2;
    sub_1B161A388();
    v15 = v14;
    v19 = 3;
    sub_1B161A388();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
    a2[2] = v15;
    a2[3] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1B15F7CA0()
{
  sub_1B161A4B8();
  IconColor.hash(into:)();
  return sub_1B161A4F8();
}

uint64_t sub_1B15F7CF0()
{
  sub_1B161A4B8();
  IconColor.hash(into:)();
  return sub_1B161A4F8();
}

unint64_t sub_1B15F7DA4()
{
  result = qword_1EDB2F6E0;
  if (!qword_1EDB2F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F6E0);
  }

  return result;
}

unint64_t sub_1B15F7DFC()
{
  result = qword_1EB752D70;
  if (!qword_1EB752D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752D70);
  }

  return result;
}

unint64_t sub_1B15F7E64()
{
  result = qword_1EB752D78;
  if (!qword_1EB752D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752D78);
  }

  return result;
}

unint64_t sub_1B15F7EBC()
{
  result = qword_1EDB2F6D0;
  if (!qword_1EDB2F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F6D0);
  }

  return result;
}

unint64_t sub_1B15F7F14()
{
  result = qword_1EDB2F6D8;
  if (!qword_1EDB2F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F6D8);
  }

  return result;
}

uint64_t sub_1B15F7F68()
{
  v0 = sub_1B161A328();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

id sub_1B15F7FB4(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = *(a1 + 32);

  v12 = a2;
  v13 = v11(a3, a4, a5, a6);

  return v13;
}

uint64_t icr_shouldInsetOnMac.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB752D80 = a1;
  return result;
}

uint64_t FinalizedIcon.render(to:in:rasterizationScale:configuration:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  v5 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  memcpy(__dst, (v1 + 240), 0x653uLL);
  memcpy(__src, (v1 + 240), sizeof(__src));
  v6 = v3;
  sub_1B15CC740(__dst, v10);
  sub_1B15F8270(v6);

  memcpy(v10, __src, 0x653uLL);
  return sub_1B15F8D0C(v10);
}

uint64_t sub_1B15F8270(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1).n128_u64[0];
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = *&v2;
  v18 = v17;
  v20 = v19;
  v22 = v21[3];
  v119 = v21[2];
  v120 = v22;
  v121 = v21[4];
  v23 = *v21;
  v118 = v21[1];
  v117 = v23;
  memcpy(v122, v4, 0x653uLL);
  memcpy(v123, v5, 0x653uLL);
  if (sub_1B15C3B5C(v123) == 1)
  {
    if (qword_1EDB2FBF8 != -1)
    {
      swift_once();
    }

    memcpy(v107, &unk_1EDB2FC00, 0x653uLL);
    sub_1B15C51D0(v107, v100);
    v24 = v107;
  }

  else
  {
    v24 = v122;
  }

  memcpy(v116, v24, 0x653uLL);
  v25 = v116[45];
  if (*(v116[45] + 16) && (v26 = sub_1B15C522C(*(v3 + 184)), (v27 & 1) != 0))
  {
    v28 = *(*(v25 + 56) + 888 * v26 + 25);
    sub_1B15CC740(v122, v107);
    sub_1B15C5664(v116);
    v29 = 0.0;
    if (v28 != 2 && (v28 & 1) != 0)
    {
      if ((v116[202] & 0x10000) != 0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = 0.5 / v9;
      }
    }
  }

  else
  {
    sub_1B15CC740(v122, v107);
    sub_1B15C5664(v116);
    v29 = 0.0;
  }

  if (BYTE8(v120))
  {
    v30 = 0.0;
  }

  else
  {
    v30 = *&v120;
  }

  v124.origin.x = v16;
  v124.origin.y = v15;
  v124.size.width = v13;
  v124.size.height = v11;
  v31 = v29 + floor(v30 * CGRectGetWidth(v124));
  v125.origin.x = v16;
  v125.origin.y = v15;
  v125.size.width = v13;
  v125.size.height = v11;
  v32 = v29 + floor(v30 * CGRectGetHeight(v125));
  v126.origin.x = v16;
  v126.origin.y = v15;
  v126.size.width = v13;
  v126.size.height = v11;
  v127 = CGRectInset(v126, v31, v32);
  x = v127.origin.x;
  y = v127.origin.y;
  width = v127.size.width;
  height = v127.size.height;
  sub_1B15C283C(v3, &v101);
  sub_1B15CC740(v122, v107);
  sub_1B15F354C(&v117, v107);
  sub_1B1618C8C(v107);
  v100[333] = *&v107[1];
  v97 = v117;
  v98 = v118;
  v95 = v120;
  v96 = v121;
  BYTE8(v100[332]) = v107[0];
  v99 = v119;
  v36 = *(&v119 + 1) & v107[2];
  v109[1] = v118;
  v109[0] = v117;
  *&v110 = v119;
  *(&v110 + 1) = *(&v119 + 1) & v107[2];
  v112 = v121;
  v111 = v120;
  v100[4] = v121;
  v100[3] = v120;
  v100[2] = v110;
  v100[0] = v117;
  v100[1] = v118;
  memcpy(&v100[5], v122, 0x653uLL);
  memcpy(v113, v122, 0x653uLL);
  v37 = v9;
  if (sub_1B15C3B5C(v113) == 1)
  {
    sub_1B15F354C(v109, v107);
    sub_1B15F354C(v109, v107);
    if (qword_1EDB2FBF8 != -1)
    {
      swift_once();
    }

    memcpy(v107, &unk_1EDB2FC00, 0x653uLL);
    sub_1B15C51D0(v107, __dst);
    memcpy(v108, v107, sizeof(v108));
    v38 = v107[41];
    v39 = *&v107[42];
    v40 = *&v107[43];
    v41 = *&v107[44];
    v42 = v107[45];
    memcpy(__dst, &v107[46], 0x4E3uLL);
  }

  else
  {
    memcpy(v108, v122, sizeof(v108));
    v38 = v122[41];
    v39 = *&v122[42];
    v40 = *&v122[43];
    v41 = *&v122[44];
    v42 = v122[45];
    memcpy(__dst, &v122[46], 0x4E3uLL);
    sub_1B15F354C(v109, v107);
    sub_1B15F354C(v109, v107);
  }

  memcpy(&v100[106] + 8, v108, 0x148uLL);
  *&v100[127] = v38;
  v85 = v39;
  *(&v100[127] + 1) = v39;
  *&v100[128] = v40;
  *(&v100[128] + 1) = v41;
  *&v100[129] = v42;
  memcpy(&v100[129] + 8, __dst, 0x4E3uLL);
  sub_1B15C283C(&v101, &v100[208]);
  *(&v100[327] + 8) = v103;
  *(&v100[328] + 8) = v104;
  *(&v100[329] + 8) = v105;
  WORD4(v100[330]) = v106;
  *(&v100[340] + 1) = x;
  *&v100[341] = y;
  *(&v100[341] + 1) = width;
  *&v100[342] = height;
  *&v100[343] = v37;
  *&v100[331] = v20;
  *(&v100[331] + 1) = v18;
  *&v100[332] = v7;
  v44 = *(&v112 + 1);
  v43 = v112;
  v100[334] = 0u;
  v45 = vdivq_f64(vcvtq_f64_s64(v101), vdupq_lane_s64(COERCE__INT64(v102), 0));
  v46 = *&v45.f64[1];
  v47 = vdupq_n_s64(0x4090000000000000uLL);
  if (v45.f64[1] >= v45.f64[0])
  {
    v46 = *&v45.f64[0];
  }

  rect = vdivq_f64(vmulq_f64(v45, v47), vdupq_lane_s64(v46, 0));
  v100[335] = rect;
  if (v112)
  {
    sub_1B15CC740(v122, v107);
    v48 = v20;
    v49 = v18;
    v50 = v7;
  }

  else
  {
    if (*(v42 + 16))
    {
      v51 = sub_1B15C522C(BYTE8(v100[327]));
      if (v52)
      {
        v53 = *(v42 + 56) + 888 * v51;
        if (!*(v53 + 8))
        {
          v38 = *v53;
        }
      }
    }

    v54 = type metadata accessor for DefaultIconShape();
    v55 = objc_allocWithZone(v54);
    *&v55[OBJC_IVAR____TtC13IconRendering16DefaultIconShape_cornerRadius] = v38;
    sub_1B15CC740(v122, v107);
    v93.receiver = v55;
    v93.super_class = v54;
    v56 = v20;
    v57 = v18;
    v58 = v7;
    v43 = objc_msgSendSuper2(&v93, sel_init);
    v44 = &off_1F285B790;
  }

  *&v100[336] = v43;
  *(&v100[336] + 1) = v44;
  ObjectType = swift_getObjectType();
  v60 = v44[1];
  v61 = v43;
  v60(v114, ObjectType, v44, 0.0, 0.0);

  LOBYTE(v100[340]) = v115;
  v100[337] = v114[0];
  v100[338] = v114[1];
  v100[339] = v114[2];
  memcpy(v92, &v100[129] + 8, sizeof(v92));
  v86 = height;
  if (*(v42 + 16))
  {
    v62 = sub_1B15C522C(BYTE8(v100[327]));
    if ((v63 & 1) != 0 && (v64 = *(v42 + 56) + 888 * v62, memcpy(__src, (v64 + 32), sizeof(__src)), memmove(v107, (v64 + 32), 0x358uLL), sub_1B15FA564(v107) != 1))
    {
      v65 = __src;
    }

    else
    {
      v65 = v92;
    }
  }

  else
  {
    v65 = &v100[129] + 8;
  }

  memcpy(v91, v65, sizeof(v91));
  v83 = v41;
  memcpy(&v100[343] + 8, v91, 0x358uLL);
  v66 = *(&v100[187] + 1);
  v67 = v100[188];
  v87 = v37;
  v84 = v40;
  if (BYTE8(v100[330]) != 1)
  {
    v68 = x;
    goto LABEL_43;
  }

  v68 = x;
  if (*(&v100[329] + 1) | *&v100[330] | *&v100[328] | *&v100[329] | *(&v100[328] + 1))
  {
LABEL_43:
    v70 = *(&v100[187] + 1);
    v71 = *(&v100[188] + 1);
    v69 = *&v100[188];
    goto LABEL_44;
  }

  v69 = *(&v100[186] + 1);
  v70 = *&v100[186];
  v71 = *&v100[187];
  if (BYTE9(v100[327]))
  {
    v72 = sub_1B161A448();

    if ((v72 & 1) == 0)
    {
      v70 = v66;
      v69 = *&v67;
      v71 = *(&v67 + 1);
    }
  }

  else
  {
  }

LABEL_44:
  *&v100[397] = v70;
  *(&v100[397] + 1) = v69;
  *&v100[398] = v71;
  *(&v100[398] + 8) = v100[189];
  *(&v100[399] + 8) = v100[190];
  *(&v100[400] + 8) = v100[191];
  *(&v100[401] + 1) = *(&v100[191] + 9);
  v128.origin.x = v68;
  v128.origin.y = y;
  v128.size.width = width;
  v128.size.height = v86;
  v73 = CGRectGetWidth(v128);
  v129.origin.x = 0.0;
  v129.origin.y = 0.0;
  v129.size = rect;
  v74 = v73 / CGRectGetWidth(v129);
  v130.origin.x = v68;
  v130.origin.y = y;
  v130.size.width = width;
  v130.size.height = v86;
  v75 = CGRectGetHeight(v130);
  v131.origin.x = 0.0;
  v131.origin.y = 0.0;
  v131.size = rect;
  v76 = v75 / CGRectGetHeight(v131);
  if (v76 >= v74)
  {
    v76 = v74;
  }

  *(&v100[342] + 1) = v76;
  *(&v100[402] + 1) = 1.0 / v76;
  *&v100[403] = 1.0 / v76 / v87;
  v132.origin.x = v68;
  v132.origin.y = y;
  v132.size.width = width;
  v132.size.height = v86;
  v77 = CGRectGetWidth(v132);
  v133.origin.x = v68;
  v133.origin.y = y;
  v133.size.width = width;
  v133.size.height = v86;
  v78 = CGRectGetHeight(v133);
  *__src = v97;
  *&__src[16] = v98;
  *&__src[32] = v99;
  *&__src[40] = v36;
  *&__src[48] = v95;
  *&__src[64] = v96;
  sub_1B15FA510(__src);
  sub_1B15C2874(&v101);
  if (v78 >= v77)
  {
    v79 = v77;
  }

  else
  {
    v79 = v78;
  }

  if (v79 >= v85)
  {
    if (v79 >= v84)
    {
      if (v79 >= v83)
      {
        v80 = 3;
      }

      else
      {
        v80 = 2;
      }
    }

    else
    {
      v80 = 1;
    }
  }

  else
  {
    v80 = 0;
  }

  BYTE1(v100[402]) = v80;
  memcpy(v107, v100, sizeof(v107));
  v81 = v107[662];
  sub_1B15C5C3C([v107[662] save]);
  [v81 restore];
  return sub_1B15CE4FC(v107);
}

uint64_t sub_1B15F8D0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752A78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FinalizedIcon.renderAtBakedSize(to:configuration:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  v5 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  memcpy(__dst, (v1 + 240), 0x653uLL);
  memcpy(__src, (v1 + 240), sizeof(__src));
  v6 = v3;
  sub_1B15CC740(__dst, v10);
  sub_1B15F8270(v6);

  memcpy(v10, __src, 0x653uLL);
  return sub_1B15F8D0C(v10);
}

uint64_t sub_1B15F8EB0()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_1B1619D38();
  if (*(v2 + 16))
  {
    sub_1B15D0F7C(0xD000000000000012, 0x80000001B1621DE0);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  byte_1EB752D81 = v4 & 1;
  return result;
}

void sub_1B15F8F7C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  if (*(v1 + 33) == 1)
  {
    v3 = *(v1 + 5288);
    v4 = *(v1 + 5264) | *(v1 + 5256) | *(v1 + 5248) | *(v1 + 5272) | *(v1 + 5280);
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 ^ 1;
    }

    if (v3 != 1 || v4 != 0)
    {
      v7 = (v1 + 5240);
      memcpy(__dst, (v1 + 1704), 0x653uLL);
      memcpy(__src, (v2 + 1704), sizeof(__src));
      v8 = *(v2 + 5256);
      v31 = *v7;
      v32 = v8;
      v33 = *(v2 + 5272);
      LOWORD(v34) = *(v2 + 5288);
      sub_1B15C51D0(__dst, v39);
      sub_1B1607EEC(&v31, v36);
      memcpy(v39, __src, 0x653uLL);
      sub_1B15C5664(v39);
      v9 = *(v2 + 5296);
      if ((v37 & 1) == 0)
      {
        v10 = *(v2 + 5304);
        v11 = *(v2 + 5312);
        v12 = v36[0];
        v13 = v36[1];
        v14 = v36[2];
        v15 = v36[3];
        [v11 setRect_];
        *&v16 = v12;
        *&v17 = v13;
        *&v18 = v14;
        *&v19 = v15;
        [v10 setColor:3 colorSpace:{v16, v17, v18, v19}];
        LODWORD(v20) = 1.0;
        [v9 drawShape:v11 fill:v10 alpha:0 blendMode:v20];
        [v11 setRenderingMode_];
      }

      [v9 beginLayerWithFlags_];
    }
  }

  else
  {
    v5 = 0;
  }

  sub_1B15CB734();
  v22 = *(v2 + 3352);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 160);
    v39[7] = *(v22 + 144);
    v39[8] = v24;
    v25 = *(v22 + 192);
    v39[9] = *(v22 + 176);
    v39[10] = v25;
    v26 = *(v22 + 96);
    v39[3] = *(v22 + 80);
    v39[4] = v26;
    v27 = *(v22 + 128);
    v39[5] = *(v22 + 112);
    v39[6] = v27;
    v28 = *(v22 + 48);
    v39[0] = *(v22 + 32);
    v39[1] = v28;
    v39[2] = *(v22 + 64);
    sub_1B15CD308(v39);
    v29 = v23 - 1;
    if (v29)
    {
      v30 = (v22 + 208);
      do
      {
        v39[7] = v30[7];
        v39[8] = v30[8];
        v39[9] = v30[9];
        v39[10] = v30[10];
        v39[3] = v30[3];
        v39[4] = v30[4];
        v39[5] = v30[5];
        v39[6] = v30[6];
        v39[0] = *v30;
        v39[1] = v30[1];
        v39[2] = v30[2];
        sub_1B15CD308(v39);
        v30 += 11;
        --v29;
      }

      while (v29);
    }
  }

  if (v5)
  {
    LODWORD(v21) = 1.0;
    [*(v2 + 5296) drawLayerWithAlpha:2 blendMode:v21];
  }
}

uint64_t ICRIconStyle.drawsChiclet.getter()
{
  v1 = vorrq_s8(*(v0 + 8), *(v0 + 24));
  if (*&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | *(v0 + 40))
  {
    return 0;
  }

  else
  {
    return *(v0 + 48);
  }
}

void sub_1B15F92A0()
{
  v1 = *(v0 + 3288);
  v12[4] = *(v0 + 3272);
  v12[5] = v1;
  v12[6] = *(v0 + 3304);
  v13 = *(v0 + 3320);
  v2 = *(v0 + 3224);
  v12[0] = *(v0 + 3208);
  v12[1] = v2;
  v3 = *(v0 + 3256);
  v12[2] = *(v0 + 3240);
  v12[3] = v3;
  if (*(v0 + 32) != 1 || (*(v0 + 41) & 4) == 0 || *(v0 + 5288) != 1 || *(v0 + 5272) | *(v0 + 5280) | *(v0 + 5248) | *(v0 + 5264) | *(v0 + 5256))
  {
    return;
  }

  v4 = *(v0 + 5192);
  if (*v12 >= v4)
  {
    if (v4 >= *(v12 + 1))
    {
      return;
    }

    if (qword_1EDB30310 != -1)
    {
      swift_once();
    }

    v7 = *(&xmmword_1EDB30318 + 1);
    v6 = *&xmmword_1EDB30318;
    v8 = qword_1EDB30328;
    v9 = unk_1EDB30330;
    v10 = (&v12[6] - *(v0 + 6433))[1];
    goto LABEL_21;
  }

  v5 = *(v0 + 57);
  if (v5 == 2)
  {
    if ((*(v0 + 56) & 1) != 0 || *(v0 + 48) <= 0.0 || !*(v0 + 33))
    {
      goto LABEL_18;
    }

LABEL_17:
    if ((v13 & 1) == 0)
    {
      return;
    }

    goto LABEL_18;
  }

  if (v5)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (qword_1EDB30338 != -1)
  {
    swift_once();
  }

  v7 = *(&xmmword_1EDB30340 + 1);
  v6 = *&xmmword_1EDB30340;
  v8 = qword_1EDB30350;
  v9 = unk_1EDB30358;
  v10 = (&v12[4] - *(v0 + 6433))[1];
LABEL_21:
  v11 = *(v0 + 5296);
  [v11 save];
  sub_1B15F9F64(v0, v12, v6, v7, *&v8, v9, v10);

  [v11 restore];
}

id sub_1B15F94E8(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 32) == 1 && (*(a1 + 41) & 1) != 0)
  {
    v4 = *a2;
    if (v4 != 2)
    {
      v5 = *(a2 + 18);
      if (a2[144] != 0xFF)
      {
        v6 = *(a2 + 2);
        if (v6 > 0.0)
        {
          LODWORD(rect.origin.y) = a2[1];
          v7 = *(a2 + 1);
          v8 = *(a2 + 17);
          v9 = *(a2 + 19);
          *&rect.origin.x = a2;
          if (a2[128])
          {
            v10 = 1.0;
            v11 = 0.0;
            v12 = 0.0;
            v13 = 1.0;
          }

          else
          {
            v10 = *(a2 + 14);
            v13 = *(a2 + 15);
            v11 = *(a2 + 12);
            v12 = *(a2 + 13);
          }

          v14 = *(a1 + 5296);
          sub_1B15CB4C4(v8, v5 & 1);
          [v14 beginLayer];
          LOBYTE(v68.a) = v5 & 1;
          sub_1B15DCCF0(v8, v5 & 0xFFFFFFFF00000001, v11, v12, v10, v13, v9, v7, v6, v4 & 1u | (LODWORD(rect.origin.y) << 8), a1);
          if (v2)
          {

            LODWORD(v57) = 1.0;
            result = [v14 clipLayerWithAlpha:0 mode:v57];
            __break(1u);
            return result;
          }

          LODWORD(v15) = 1.0;
          [v14 clipLayerWithAlpha:0 mode:v15];
          sub_1B15C26A4(v8, v5);
          a2 = *&rect.origin.x;
        }
      }
    }
  }

  v16 = a2[32];
  rect.origin.y = *(a2 + 5);
  v17 = *(a2 + 8);
  v18 = *(a2 + 9);
  v19 = *(a2 + 10);
  v20 = *(a2 + 11);
  v21 = *(a1 + 5296);
  v22 = *(a1 + 5304);
  v23 = *(a1 + 5312);
  v24 = *(a1 + 5360);
  v25 = *(a1 + 5368);
  v70.origin.x = v17;
  v70.origin.y = v18;
  v70.size.width = v19;
  v70.size.height = v20;
  rect.origin.x = v24 * CGRectGetMinX(v70);
  v71.origin.x = v17;
  v71.origin.y = v18;
  v71.size.width = v19;
  v71.size.height = v20;
  v26 = v25 * CGRectGetMinY(v71);
  v72.origin.x = v17;
  v72.origin.y = v18;
  v72.size.width = v19;
  v72.size.height = v20;
  v27 = v24 * CGRectGetWidth(v72);
  v73.origin.x = v17;
  v73.origin.y = v18;
  v73.size.width = v19;
  v73.size.height = v20;
  v28 = v25 * CGRectGetHeight(v73);
  v29 = *(a1 + 5344);
  v30 = *(a1 + 5352);
  v74.origin.x = v29;
  v74.origin.y = v30;
  v74.size.width = v24;
  v74.size.height = v25;
  MinX = CGRectGetMinX(v74);
  v75.origin.x = v29;
  v75.origin.y = v30;
  v75.size.width = v24;
  v75.size.height = v25;
  MinY = CGRectGetMinY(v75);
  v76.origin.x = rect.origin.x;
  v76.origin.y = v26;
  v76.size.width = v27;
  v76.size.height = v28;
  v77 = CGRectOffset(v76, MinX, MinY);
  x = v77.origin.x;
  y = v77.origin.y;
  width = v77.size.width;
  height = v77.size.height;
  v69 = v16;
  v37 = sub_1B15CC72C();
  if (qword_1EDB30310 != -1)
  {
    swift_once();
  }

  v63 = *(&xmmword_1EDB30318 + 1);
  *&rect.origin.x = xmmword_1EDB30318;
  v38 = *&qword_1EDB30328;
  v61 = unk_1EDB30330;
  v78.origin.x = x;
  v78.origin.y = y;
  v78.size.width = width;
  v78.size.height = height;
  v39 = CGRectGetMinX(v78);
  v79.origin.x = x;
  v79.origin.y = y;
  v79.size.width = width;
  v79.size.height = height;
  v40 = CGRectGetMinY(v79);
  v68.a = 1.0;
  v68.b = 0.0;
  v68.c = 0.0;
  v68.d = 1.0;
  v68.tx = 0.0;
  v68.ty = 0.0;
  CGAffineTransformTranslate(&rect.size, &v68, v39, v40);
  v41 = v66;
  v42 = v67;
  v58 = v65;
  size = rect.size;
  v80.origin.x = x;
  v80.origin.y = y;
  v80.size.width = width;
  v80.size.height = height;
  v43 = CGRectGetWidth(v80);
  v81.origin.x = x;
  v81.origin.y = y;
  v81.size.width = width;
  v81.size.height = height;
  v44 = CGRectGetHeight(v81);
  *&v68.c = v58;
  *&v68.a = size;
  v68.tx = v41;
  v68.ty = v42;
  CGAffineTransformScale(&rect.size, &v68, v43, v44);
  v45 = v66;
  v46 = v67;
  v47 = rect.origin.x;
  *&rect.origin.x = v47;
  v48 = v63;
  *&v63 = v48;
  *&v42 = v38;
  *&v38 = v61;
  v60 = v65;
  v62 = rect.size;
  CGImage = RBImageMakeCGImage();
  v51 = v50;
  [v23 setRect_];
  *&v68.c = v60;
  *&v68.a = v62;
  v68.tx = v45;
  v68.ty = v46;
  LODWORD(v52) = LODWORD(v63);
  LODWORD(v53) = LODWORD(v42);
  LODWORD(v54) = LODWORD(v38);
  [v22 setRBImage:CGImage transform:v51 interpolation:&v68 tintColor:1 colorSpace:3 flags:{0, COERCE_DOUBLE(__PAIR64__(HIDWORD(v62.width), LODWORD(rect.origin.x))), v52, v53, v54}];
  HIDWORD(v55) = HIDWORD(rect.origin.y);
  *&v55 = rect.origin.y;
  [v21 drawShape:v23 fill:v22 alpha:v37 blendMode:v55];
  return [v23 setRenderingMode_];
}

void sub_1B15F997C(double *a1)
{
  if (*(v1 + 32) != 1)
  {
    return;
  }

  v2 = *(a1 + 18);
  if (v2 == 255)
  {
    return;
  }

  if ((*(v1 + 40) & 0x40) == 0)
  {
    return;
  }

  v3 = *a1;
  v4 = *(a1 + 17);
  v5 = a1[19];
  if (v3 != 2 && (v3 & 1) == 0)
  {
    return;
  }

  v83 = a1[5];
  v64 = *(v1 + 742);
  v74 = *(v1 + 760);
  v75 = *(v1 + 759);
  v86 = *(v1 + 761);
  v76 = *(v1 + 762);
  v71 = *(v1 + 764);
  v72 = *(v1 + 763);
  v88 = *(v1 + 765);
  v73 = *(v1 + 766);
  v85 = *(v1 + 767);
  v78 = *(v1 + 6024);
  v79 = *(v1 + 6056);
  v77 = *(v1 + 6008);
  v81 = *(v1 + 5992);
  v69 = *(v1 + 5960);
  v70 = *(v1 + 6040);
  v66 = *(v1 + 5976);
  v68 = *(v1 + 5944);
  v54 = v1[391];
  v55 = v1[390];
  v56 = v1[389];
  v57 = v1[388];
  v58 = v1[387];
  v59 = v1[386];
  v60 = v1[385];
  v62 = v1[384];
  v6 = *(v1 + 784);
  v7 = *(v1 + 785);
  v8 = *(v1 + 786);
  v9 = *(v1 + 787);
  v53 = *(v1 + 788);
  v10 = *(v1 + 789);
  v11 = *(v1 + 790);
  v12 = *(v1 + 791);
  v13 = *(v1 + 792);
  if ((*(v1 + 3513) & 1) == 0)
  {
    sub_1B15CB4C4(v4, v2 & 1);

    goto LABEL_10;
  }

  v14 = sub_1B161A448();
  sub_1B15CB4C4(v4, v2 & 1);

  if (v14)
  {
LABEL_10:
    if (*(v1 + 3560) == 1 && !(*(v1 + 443) | *(v1 + 444) | *(v1 + 440) | *(v1 + 442) | *(v1 + 441)))
    {
      v15 = vdup_n_s32(v64 < *(v1 + 649));
      v16.i64[0] = v15.u32[0];
      v16.i64[1] = v15.u32[1];
      v17 = vcltzq_s64(vshlq_n_s64(v16, 0x3FuLL));
      v79 = vbslq_s8(v17, v54, v79);
      v70 = vbslq_s8(v17, v55, v70);
      v78 = vbslq_s8(v17, v56, v78);
      v77 = vbslq_s8(v17, v57, v77);
      v81 = vbslq_s8(v17, v58, v81);
      v66 = vbslq_s8(v17, v59, v66);
      v69 = vbslq_s8(v17, v60, v69);
      v68 = vbslq_s8(v17, v62, v68);
      if (v64 >= *(v1 + 649))
      {
        v18 = v75;
      }

      else
      {
        v18 = v6;
      }

      v19 = v74;
      if (v64 < *(v1 + 649))
      {
        v19 = v7;
      }

      v74 = v19;
      v75 = v18;
      v20 = v86;
      if (v64 < *(v1 + 649))
      {
        v20 = v8;
      }

      v86 = v20;
      v21 = v76;
      if (v64 < *(v1 + 649))
      {
        v21 = v9;
      }

      v76 = v21;
      if (v64 >= *(v1 + 649))
      {
        v22 = v72;
      }

      else
      {
        v22 = v53;
      }

      v23 = v71;
      if (v64 < *(v1 + 649))
      {
        v23 = v10;
      }

      v71 = v23;
      v72 = v22;
      v24 = v88;
      if (v64 < *(v1 + 649))
      {
        v24 = v11;
      }

      v88 = v24;
      v25 = v73;
      if (v64 < *(v1 + 649))
      {
        v25 = v12;
      }

      v73 = v25;
      v26 = v85;
      if (v64 < *(v1 + 649))
      {
        v26 = v13;
      }

      v85 = v26;
    }
  }

  v27 = *(v1 + 6433);
  v28 = *(v1 + 688);
  v29 = *(v1 + 689);
  v30 = *(v1 + 690);
  v65 = v30;
  v63 = *(v1 + 687);
  if (v27 > 1)
  {
    if (v27 == 2)
    {
      v31 = v66.i64[1];
      v32 = v71;
      v33 = v74;
      v30 = *(v1 + 688);
    }

    else
    {
      v32 = v72;
      v31 = v66.i64[0];
      v33 = v75;
      v30 = *(v1 + 687);
    }
  }

  else if (*(v1 + 6433))
  {
    v32 = v88;
    v33 = v86;
    v30 = *(v1 + 689);
    v31 = v81.i64[0];
  }

  else
  {
    v31 = v81.i64[1];
    v32 = v73;
    v33 = v76;
  }

  v34 = *(v1 + 5544);
  v35 = *(v1 + 5560);
  v36 = *(v1 + 736);
  v37 = *(v1 + 692);
  if (qword_1EDB30310 != -1)
  {
    v82 = v31;
    v67 = *(v1 + 5544);
    v61 = *(v1 + 5560);
    swift_once();
    v35 = v61;
    v34 = v67;
    v31 = v82;
    v27 = *(v1 + 6433);
  }

  v89 = v34;
  v90 = v35;
  v91 = v36;
  v92 = v37;
  v93 = *&v31;
  v94 = v33;
  v95 = v32;
  v96 = v30;
  v97 = xmmword_1EDB30318;
  v98 = *&qword_1EDB30328;
  if (v27 > 1)
  {
    v38 = v83;
    v39 = v86;
    if (v27 == 2)
    {
      v40 = *&v68.i64[1];
    }

    else
    {
      v40 = *v68.i64;
    }
  }

  else
  {
    v38 = v83;
    v39 = v86;
    if (v27)
    {
      v40 = *v69.i64;
    }

    else
    {
      v40 = *&v69.i64[1];
    }
  }

  sub_1B15CDD04(v4, v2 & 0xFFFFFFFF00000001, &v89, v5, v38 * v40);
  sub_1B16193C8();
  v42 = *(v1 + 6433);
  if (v42 > 1)
  {
    if (v42 == 2)
    {
      v43 = *&v70.i64[1];
      v88 = v71;
      v39 = v74;
      v29 = v28;
    }

    else
    {
      v88 = v72;
      v43 = *v70.i64;
      v39 = v75;
      v29 = v63;
    }
  }

  else
  {
    v43 = *v79.i64;
    if (!*(v1 + 6433))
    {
      v43 = *&v79.i64[1];
      v88 = v73;
      v39 = v76;
      v29 = v65;
    }
  }

  v44 = v41 * *(v1 + 666);
  v45 = *v1;
  v46 = v1[1];
  v47 = *(v1 + 793);
  if (*(v1 + 5320) == 1)
  {
    if (qword_1EB7525E8 != -1)
    {
      v80 = v43;
      v87 = *v1;
      v84 = v1[1];
      swift_once();
      v46 = v84;
      v45 = v87;
      v43 = v80;
      v42 = *(v1 + 6433);
    }

    v48 = &xmmword_1EB752D88;
  }

  else
  {
    v48 = &xmmword_1EDB30318;
  }

  v50 = *(v48 + 2);
  v49 = *(v48 + 3);
  v51 = *v48;
  v89 = v45;
  v90 = v46;
  v91 = v85;
  v92 = v47;
  v93 = v44 * v43;
  v94 = v39;
  v95 = v88;
  v96 = v29;
  v97 = v51;
  *&v98 = v50;
  *(&v98 + 1) = v49;
  if (v42 > 1)
  {
    if (v42 == 2)
    {
      v52 = *&v77.i64[1];
    }

    else
    {
      v52 = *v77.i64;
    }
  }

  else if (v42)
  {
    v52 = *v78.i64;
  }

  else
  {
    v52 = *&v78.i64[1];
  }

  sub_1B15CDD04(v4, v2 & 0xFFFFFFFF00000001, &v89, v5, v44 * (v38 * v52));
  sub_1B15C26A4(v4, v2);
}

void sub_1B15F9F64(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v81 = a1 + 4096;
  v8 = *(a1 + 3352);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      v28 = *v10;
      v29 = v10[2];
      v97 = v10[1];
      v98 = v29;
      v96 = v28;
      v30 = v10[3];
      v31 = v10[4];
      v32 = v10[6];
      v101 = v10[5];
      v102 = v32;
      v99 = v30;
      v100 = v31;
      v33 = v10[7];
      v34 = v10[8];
      v35 = v10[10];
      v105 = v10[9];
      v106 = v35;
      v103 = v33;
      v104 = v34;
      if (v99)
      {
        v36 = v100;
        v37 = v101;
        v38 = v98;
        v39 = *(a1 + 5296);
        sub_1B15CE470(&v96, &v95);
        [v39 beginLayer];
        v40 = *(a1 + 5304);
        v41 = *(a1 + 5312);
        v42 = *(a1 + 5360);
        v43 = *(a1 + 5368);
        v112.origin = v36;
        v112.size = v37;
        rect[0] = v42 * CGRectGetMinX(v112);
        v113.origin = v36;
        v113.size = v37;
        v44 = v43 * CGRectGetMinY(v113);
        v114.origin = v36;
        v114.size = v37;
        v45 = v42 * CGRectGetWidth(v114);
        v115.origin = v36;
        v115.size = v37;
        v46 = v43 * CGRectGetHeight(v115);
        v47 = *(a1 + 5344);
        v48 = *(a1 + 5352);
        v116.origin.x = v47;
        v116.origin.y = v48;
        v116.size.width = v42;
        v116.size.height = v43;
        MinX = CGRectGetMinX(v116);
        v117.origin.x = v47;
        v117.origin.y = v48;
        v117.size.width = v42;
        v117.size.height = v43;
        MinY = CGRectGetMinY(v117);
        v118.origin.x = rect[0];
        v118.origin.y = v44;
        v118.size.width = v45;
        v118.size.height = v46;
        v119 = CGRectOffset(v118, MinX, MinY);
        x = v119.origin.x;
        y = v119.origin.y;
        width = v119.size.width;
        height = v119.size.height;
        v55 = dword_1B161F0A8[v38];
        rect[0] = *(&v98 + 1);
        if (qword_1EDB30310 != -1)
        {
          swift_once();
        }

        v92 = *(&xmmword_1EDB30318 + 1);
        *&v93 = xmmword_1EDB30318;
        v11 = *&qword_1EDB30328;
        v90 = unk_1EDB30330;
        v108.origin.x = x;
        v108.origin.y = y;
        v108.size.width = width;
        v108.size.height = height;
        v12 = CGRectGetMinX(v108);
        v109.origin.x = x;
        v109.origin.y = y;
        v109.size.width = width;
        v109.size.height = height;
        v13 = CGRectGetMinY(v109);
        v95.b = 0.0;
        v95.c = 0.0;
        v95.a = 1.0;
        v95.d = 1.0;
        v95.tx = 0.0;
        v95.ty = 0.0;
        CGAffineTransformTranslate(&rect[1], &v95, v12, v13);
        v14 = rect[5];
        v15 = rect[6];
        v87 = *&rect[3];
        v88 = *&rect[1];
        v110.origin.x = x;
        v110.origin.y = y;
        v110.size.width = width;
        v110.size.height = height;
        v16 = CGRectGetWidth(v110);
        v111.origin.x = x;
        v111.origin.y = y;
        v111.size.width = width;
        v111.size.height = height;
        v17 = CGRectGetHeight(v111);
        *&v95.a = v88;
        *&v95.c = v87;
        v95.tx = v14;
        v95.ty = v15;
        CGAffineTransformScale(&rect[1], &v95, v16, v17);
        v18 = rect[5];
        v19 = rect[6];
        v20 = v93;
        *&v93 = v20;
        v21 = v92;
        *&v92 = v21;
        *&v15 = v11;
        *&v11 = v90;
        v89 = *&rect[3];
        v91 = *&rect[1];
        CGImage = RBImageMakeCGImage();
        [v41 setRect_];
        *&v95.a = v91;
        *&v95.c = v89;
        v95.tx = v18;
        v95.ty = v19;
        v107 = v107 & 0xFFFFFFFF00000000 | CGImage;
        LODWORD(v23) = LODWORD(v92);
        LODWORD(v24) = LODWORD(v15);
        LODWORD(v25) = LODWORD(v11);
        [v40 setRBImage:COERCE_DOUBLE(__PAIR64__(DWORD1(v91) transform:LODWORD(v93))) interpolation:v23 tintColor:v24 colorSpace:v25 flags:?];
        HIDWORD(v26) = HIDWORD(rect[0]);
        *&v26 = rect[0];
        [v39 drawShape:v41 fill:v40 alpha:v55 blendMode:v26];
        [v41 setRenderingMode_];
        LODWORD(v27) = 1.0;
        [v39 clipLayerWithAlpha:1 mode:v27];
        sub_1B15CE4CC(&v96);
      }

      v10 += 11;
      --v9;
    }

    while (v9);
  }

  v56 = *(a2 - 8 * *(v81 + 2337) + 40);
  if (*(a2 + 113) > 1u)
  {
    if (*(a2 + 113) == 2)
    {
      v56 = round(v56 * *(a1 + 6440) * *(a1 + 5488)) / *(a1 + 5488);
      goto LABEL_15;
    }

    v57 = *(a1 + 6448);
  }

  else
  {
    if (!*(a2 + 113))
    {
      goto LABEL_15;
    }

    v57 = *(a1 + 6440);
  }

  v56 = v56 * v57;
LABEL_15:
  v58 = *(a1 + 5392);
  v59 = *(a1 + 5400);
  v60 = *(a1 + 5408);
  v61 = *(a1 + 5416);
  v62 = *(a1 + 5424);
  v63 = v56 + v56;
  v64 = *(v81 + 1344);
  if (((1 << v64) & 3) != 0)
  {
    v65 = 0;
    v62 = *&v63;
    v66 = 1;
  }

  else if (((1 << v64) & 0xC) != 0)
  {
    v65 = *&v63;
    v66 = 3;
  }

  else
  {
    v67 = *&v63;
    sub_1B15FA578(*(a1 + 5392), *(a1 + 5400), *(a1 + 5408), *(a1 + 5416), *(a1 + 5424), *(a1 + 5432), v64);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v65 = 0;
    v66 = 5;
    v59 = v67;
  }

  LOBYTE(rect[0]) = v66;
  *&v96 = v58;
  *(&v96 + 1) = v59;
  *&v97 = v60;
  *(&v97 + 1) = v61;
  *&v98 = v62;
  *(&v98 + 1) = v65;
  LOBYTE(v99) = v66;
  v68 = *(a1 + 5296);
  v69 = a3;
  v70 = a4;
  v107 = v58;
  v71 = *(a1 + 5304);
  v72 = a5;
  v73 = a6;
  v74 = *(a1 + 5312);
  sub_1B160E3D0(v74, a6);
  *&v75 = v69;
  *&v76 = v70;
  *&v77 = v72;
  *&v78 = v73;
  [v71 setColor:3 colorSpace:{v75, v76, v77, v78}];
  HIDWORD(v79) = HIDWORD(a7);
  *&v79 = a7;
  [v68 drawShape:v74 fill:v71 alpha:0 blendMode:v79];
  [v74 setRenderingMode_];
  sub_1B15DE770(v107, v59, v60, v61, v62, v65, SLOBYTE(rect[0]));
}

double sub_1B15FA4F4()
{
  result = 1.0;
  __asm { FMOV            V1.2D, #1.0 }

  xmmword_1EB752D88 = xmmword_1B161EF40;
  *&qword_1EB752D98 = _Q1;
  return result;
}

uint64_t sub_1B15FA564(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0x12)
  {
    return v1 - 17;
  }

  else
  {
    return 0;
  }
}

id sub_1B15FA578(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 0xFE) == 4)
  {
    return result;
  }

  return result;
}

uint64_t sub_1B15FA5D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 6456))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 2064);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B15FA61C(uint64_t result, int a2, int a3)
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
    *(result + 4344) = 0u;
    *(result + 4328) = 0u;
    *(result + 4312) = 0u;
    *(result + 4296) = 0u;
    *(result + 4280) = 0u;
    *(result + 4264) = 0u;
    *(result + 4248) = 0u;
    *(result + 4232) = 0u;
    *(result + 4216) = 0u;
    *(result + 4200) = 0u;
    *(result + 4184) = 0u;
    *(result + 4168) = 0u;
    *(result + 4152) = 0u;
    *(result + 4136) = 0u;
    *(result + 4120) = 0u;
    *(result + 4104) = 0u;
    *(result + 4088) = 0u;
    *(result + 4072) = 0u;
    *(result + 4056) = 0u;
    *(result + 4040) = 0u;
    *(result + 4024) = 0u;
    *(result + 4008) = 0u;
    *(result + 3992) = 0u;
    *(result + 3976) = 0u;
    *(result + 3960) = 0u;
    *(result + 3944) = 0u;
    *(result + 3928) = 0u;
    *(result + 3912) = 0u;
    *(result + 3896) = 0u;
    *(result + 3880) = 0u;
    *(result + 3864) = 0u;
    *(result + 3848) = 0u;
    *(result + 3832) = 0u;
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
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
    *(result + 6440) = 0u;
    *(result + 6424) = 0u;
    *(result + 6408) = 0u;
    *(result + 6392) = 0u;
    *(result + 6376) = 0u;
    *(result + 6360) = 0u;
    *(result + 6344) = 0u;
    *(result + 6328) = 0u;
    *(result + 6312) = 0u;
    *(result + 6296) = 0u;
    *(result + 6280) = 0u;
    *(result + 6264) = 0u;
    *(result + 6248) = 0u;
    *(result + 6232) = 0u;
    *(result + 6216) = 0u;
    *(result + 6200) = 0u;
    *(result + 6184) = 0u;
    *(result + 6168) = 0u;
    *(result + 6152) = 0u;
    *(result + 6136) = 0u;
    *(result + 6120) = 0u;
    *(result + 6104) = 0u;
    *(result + 6088) = 0u;
    *(result + 6072) = 0u;
    *(result + 6056) = 0u;
    *(result + 6040) = 0u;
    *(result + 6024) = 0u;
    *(result + 6008) = 0u;
    *(result + 5992) = 0u;
    *(result + 5976) = 0u;
    *(result + 5960) = 0u;
    *(result + 5944) = 0u;
    *(result + 5928) = 0u;
    *(result + 5912) = 0u;
    *(result + 5896) = 0u;
    *(result + 5880) = 0u;
    *(result + 5864) = 0u;
    *(result + 5848) = 0u;
    *(result + 5832) = 0u;
    *(result + 5816) = 0u;
    *(result + 5800) = 0u;
    *(result + 5784) = 0u;
    *(result + 5768) = 0u;
    *(result + 5752) = 0u;
    *(result + 5736) = 0u;
    *(result + 5720) = 0u;
    *(result + 5704) = 0u;
    *(result + 5688) = 0u;
    *(result + 5672) = 0u;
    *(result + 5656) = 0u;
    *(result + 5640) = 0u;
    *(result + 5624) = 0u;
    *(result + 5608) = 0u;
    *(result + 5592) = 0u;
    *(result + 5576) = 0u;
    *(result + 5560) = 0u;
    *(result + 5544) = 0u;
    *(result + 5528) = 0u;
    *(result + 5512) = 0u;
    *(result + 5496) = 0u;
    *(result + 5480) = 0u;
    *(result + 5464) = 0u;
    *(result + 5448) = 0u;
    *(result + 5432) = 0u;
    *(result + 5416) = 0u;
    *(result + 5400) = 0u;
    *(result + 5384) = 0u;
    *(result + 5368) = 0u;
    *(result + 5352) = 0u;
    *(result + 5336) = 0u;
    *(result + 5320) = 0u;
    *(result + 5304) = 0u;
    *(result + 5288) = 0u;
    *(result + 5272) = 0u;
    *(result + 5256) = 0u;
    *(result + 5240) = 0u;
    *(result + 5224) = 0u;
    *(result + 5208) = 0u;
    *(result + 5192) = 0u;
    *(result + 5176) = 0u;
    *(result + 5160) = 0u;
    *(result + 5144) = 0u;
    *(result + 5128) = 0u;
    *(result + 5112) = 0u;
    *(result + 5096) = 0u;
    *(result + 5080) = 0u;
    *(result + 5064) = 0u;
    *(result + 5048) = 0u;
    *(result + 5032) = 0u;
    *(result + 5016) = 0u;
    *(result + 5000) = 0u;
    *(result + 4984) = 0u;
    *(result + 4968) = 0u;
    *(result + 4952) = 0u;
    *(result + 4936) = 0u;
    *(result + 4920) = 0u;
    *(result + 4904) = 0u;
    *(result + 4888) = 0u;
    *(result + 4872) = 0u;
    *(result + 4856) = 0u;
    *(result + 4840) = 0u;
    *(result + 4824) = 0u;
    *(result + 4808) = 0u;
    *(result + 4792) = 0u;
    *(result + 4776) = 0u;
    *(result + 4760) = 0u;
    *(result + 4744) = 0u;
    *(result + 4728) = 0u;
    *(result + 4712) = 0u;
    *(result + 4696) = 0u;
    *(result + 4680) = 0u;
    *(result + 4664) = 0u;
    *(result + 4648) = 0u;
    *(result + 4632) = 0u;
    *(result + 4616) = 0u;
    *(result + 4600) = 0u;
    *(result + 4584) = 0u;
    *(result + 4568) = 0u;
    *(result + 4552) = 0u;
    *(result + 4536) = 0u;
    *(result + 4520) = 0u;
    *(result + 4504) = 0u;
    *(result + 4488) = 0u;
    *(result + 4472) = 0u;
    *(result + 4456) = 0u;
    *(result + 4440) = 0u;
    *(result + 4424) = 0u;
    *(result + 4408) = 0u;
    *(result + 4392) = 0u;
    *(result + 4376) = 0u;
    *(result + 4360) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 6456) = 1;
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
      *(result + 2064) = (a2 - 1);
      return result;
    }

    *(result + 6456) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1B15FAD74()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1B15FADAC@<D0>(uint64_t a1@<X8>, double a2@<D0>, CGFloat a3@<D4>)
{
  v9 = *(v6 + OBJC_IVAR____TtC13IconRendering16DefaultIconShape_cornerRadius);
  *a1 = CGRectInset(*&a2, a3, a3);
  result = v9 - a3;
  *(a1 + 32) = v9 - a3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
  return result;
}

double sub_1B15FAE08@<D0>(uint64_t a1@<X8>)
{
  *a1 = [v1 pathInRect_inset_];
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 4;
  return result;
}

void sub_1B15FAE80()
{
  if (([v0 hasLoggedInfo] & 1) == 0)
  {
    [v0 setHasLoggedInfo_];
    v1 = [v0 infoString];
    v2 = sub_1B1619D98();
    v4 = v3;

    if (qword_1EB7525F0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B1619D18();
    __swift_project_value_buffer(v5, qword_1EB752DB0);

    oslog = sub_1B1619CF8();
    v6 = sub_1B161A078();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      v9 = sub_1B15E4764(v2, v4, &v11);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_1B15BF000, oslog, v6, "%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B2730CA0](v8, -1, -1);
      MEMORY[0x1B2730CA0](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1B15FB058()
{
  v0 = sub_1B1619D18();
  __swift_allocate_value_buffer(v0, qword_1EB752DB0);
  __swift_project_value_buffer(v0, qword_1EB752DB0);
  return sub_1B1619D08();
}

id sub_1B15FB0E8()
{
  result = [objc_allocWithZone(ICREnvironment) init];
  qword_1EB752DC8 = result;
  return result;
}

id static ICREnvironment.current.getter()
{
  if (qword_1EB7525F8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB752DC8;

  return v1;
}

uint64_t ICREnvironment.projectVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICREnvironment_projectVersion);

  return v1;
}

id sub_1B15FB248()
{

  v0 = sub_1B1619D68();

  return v0;
}

uint64_t ICREnvironment.infoString.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICREnvironment_infoString);

  return v1;
}

id sub_1B15FB2F0()
{
  v1 = v0;
  swift_getObjectType();
  v0[OBJC_IVAR___ICREnvironment_hasLoggedInfo] = 0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = [v3 infoDictionary];

  if (v4)
  {
    v5 = sub_1B1619D38();

    if (*(v5 + 16) && (v6 = sub_1B15D0F7C(0x656C646E75424643, 0xEF6E6F6973726556), (v7 & 1) != 0))
    {
      sub_1B15C10F0(*(v5 + 56) + 32 * v6, v31);

      if (swift_dynamicCast())
      {
        v9 = v28;
        v8 = v29;
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  if (qword_1EB7525F0 != -1)
  {
    swift_once();
  }

  v10 = sub_1B1619D18();
  __swift_project_value_buffer(v10, qword_1EB752DB0);
  v11 = sub_1B1619CF8();
  v12 = sub_1B161A088();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B15BF000, v11, v12, "Could not retrieve bundle version for IconRendering!", v13, 2u);
    MEMORY[0x1B2730CA0](v13, -1, -1);
  }

  v8 = 0xE100000000000000;
  v9 = 48;
LABEL_12:
  v14 = &v1[OBJC_IVAR___ICREnvironment_projectVersion];
  *v14 = v9;
  v14[1] = v8;
  if (qword_1EDB2FBE8 != -1)
  {
    swift_once();
  }

  v15 = OBJC_IVAR___ICREnvironment_isUsingSoftwareRenderer;
  v1[OBJC_IVAR___ICREnvironment_isUsingSoftwareRenderer] = qword_1EDB32798 == 0;
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_1B161A188();

  strcpy(v31, "IconRendering-");
  HIBYTE(v31[1]) = -18;
  v16 = &v1[OBJC_IVAR___ICREnvironment_projectVersion];
  v17 = *&v1[OBJC_IVAR___ICREnvironment_projectVersion];
  v18 = *&v1[OBJC_IVAR___ICREnvironment_projectVersion + 8];

  MEMORY[0x1B272F930](v17, v18);

  MEMORY[0x1B272F930](0x20676E69737520, 0xE700000000000000);
  if (v1[v15])
  {
    v19 = 0x6572617774666F73;
  }

  else
  {
    v19 = 0x6572617764726168;
  }

  MEMORY[0x1B272F930](v19, 0xE800000000000000);

  MEMORY[0x1B272F930](0x657265646E657220, 0xE900000000000072);
  v20 = v31[1];
  v21 = &v1[OBJC_IVAR___ICREnvironment_infoString];
  *v21 = v31[0];
  v21[1] = v20;
  v31[0] = 2970185;
  v31[1] = 0xE300000000000000;
  v22 = *v16;
  v23 = v16[1];

  MEMORY[0x1B272F930](v22, v23);

  MEMORY[0x1B272F930](40, 0xE100000000000000);
  if (v1[v15])
  {
    v24 = 30579;
  }

  else
  {
    v24 = 30568;
  }

  MEMORY[0x1B272F930](v24, 0xE200000000000000);

  MEMORY[0x1B272F930](41, 0xE100000000000000);
  v25 = sub_1B1619DE8();

  v26 = strdup((v25 + 32));

  if (v26)
  {
    *&v1[OBJC_IVAR___ICREnvironment__shortInfoString] = v26;
    v30.receiver = v1;
    v30.super_class = ICREnvironment;
    return objc_msgSendSuper2(&v30, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for ICREnvironment()
{
  result = qword_1EB752DF8;
  if (!qword_1EB752DF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB752DF8);
  }

  return result;
}

uint64_t sub_1B15FB878()
{
  v0 = sub_1B1619D18();
  __swift_allocate_value_buffer(v0, qword_1EB752E00);
  __swift_project_value_buffer(v0, qword_1EB752E00);
  return sub_1B1619D08();
}

id sub_1B15FB900(uint64_t a1, id a2, void *a3)
{
  ObjCClassFromObject = swift_getObjCClassFromObject();
  sub_1B15C0D30(a1, a2);
  v8 = a3;
  sub_1B15C114C(a1, a2, a3, v12);
  if (v3)
  {

    sub_1B15C27E4(a1, a2);
  }

  else
  {
    memcpy(__dst, v12, sizeof(__dst));
    v9 = [objc_allocWithZone(ObjCClassFromObject) init];

    sub_1B15C27E4(a1, a2);
    v10 = OBJC_IVAR___ICRFinalizedIcon_finalizedIcon;
    swift_beginAccess();
    a2 = v9;
    sub_1B15DA08C(__dst, v9 + v10);
    swift_endAccess();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return a2;
}

uint64_t sub_1B15FBC80(const void *a1, void *a2)
{
  *(v2 + 1952) = a2;
  *(v2 + 1960) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B15FBCF8, 0, 0);
}

uint64_t sub_1B15FBCF8()
{
  v1 = *(v0 + 1952);
  v2 = OBJC_IVAR___ICRFinalizedIcon_finalizedIcon;
  swift_beginAccess();
  sub_1B15C283C(v1 + v2, v0 + 16);
  v3 = FinalizedIcon.serializeV2Sync()();
  v5 = v4;
  v6 = *(v0 + 1960);

  sub_1B15C2874(v0 + 16);
  if (v6)
  {
    v7 = *(v0 + 1960);
    v8 = sub_1B1619BC8();
    sub_1B15C27E4(v3, v5);
    (v7)[2](v7, v8, 0);
    _Block_release(v7);
  }

  else
  {
    sub_1B15C27E4(v3, v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B15FBEBC(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR___ICRFinalizedIcon_finalizedIcon;
  swift_beginAccess();
  sub_1B15C283C(v2 + v5, &v16);
  v6 = (a1 + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration);
  swift_beginAccess();
  v7 = v6[3];
  v18[2] = v6[2];
  v18[3] = v7;
  v8 = v6[4];
  v9 = v6[1];
  v18[0] = *v6;
  v18[1] = v9;
  v18[4] = v8;
  v19[0] = v18[0];
  v19[1] = v9;
  v20[0] = *(v6 + 32);
  *&v20[32] = v8;
  *&v20[18] = *(v6 + 50);
  *&v20[2] = *(v6 + 34);
  v20[1] = a2;
  v15 = v17;
  v13[2] = *v20;
  v13[3] = *&v20[16];
  v13[4] = *&v20[32];
  v14 = v16;
  v13[0] = v18[0];
  v13[1] = v9;
  sub_1B15F354C(v18, &v12);
  v10 = FinalizedIcon.renderedIcon(at:with:)(&v14, v13);
  sub_1B15C2874(&v16);
  sub_1B15FA510(v19);
  return v10;
}

uint64_t sub_1B15FC07C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ICRRenderingParameters.init()(v92);
  v10 = v9 + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  v11 = *(v10 + 48);
  v94 = *(v10 + 32);
  v95 = v11;
  v96 = *(v10 + 64);
  v12 = *(v10 + 16);
  v93[0] = *v10;
  v93[1] = v12;
  v89 = v93[0];
  v90 = v12;
  v91 = *(v10 + 32);
  v13 = *(&v94 + 1);
  v87 = *(v10 + 48);
  v88 = *(v10 + 56);
  *v86 = *(v10 + 58);
  *&v86[14] = *(v10 + 72);
  if (v7 == 7)
  {
    v14 = 1;
  }

  else
  {
    v14 = BYTE9(v11);
  }

  if (v7 != 7 && (v5 & 1) == 0)
  {
    v92[1618] = 1;
    v14 = BYTE9(v11);
  }

  sub_1B15F354C(v93, v80);
  v15 = *&v92[360];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v80[0] = v15;
  v18 = sub_1B15C522C(0);
  v19 = *(v15 + 2);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
LABEL_30:
    sub_1B15FD840();
    v15 = *&v80[0];
LABEL_12:
    *&v92[360] = v15;
    if ((v10 & 1) == 0)
    {
      v24 = 1;
      v81[0] = 1;
      v75[0] = 1;
      sub_1B15FD9C8(v80);
      memcpy(&v85[6], v80, 0x358uLL);
      v25 = v81[0];
      *(v15 + (v18 >> 6) + 8) |= 1 << v18;
      *(*(v15 + 6) + v18) = 0;
      v26 = *(v15 + 7) + 888 * v18;
      *v26 = 0;
      *(v26 + 8) = v25;
      *(v26 + 16) = 0;
      *(v26 + 24) = 1;
      *(v26 + 25) = 2;
      memcpy((v26 + 26), v85, 0x35EuLL);
      v27 = *(v15 + 2);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        __break(1u);
        goto LABEL_32;
      }

      *(v15 + 2) = v29;
    }

    v30 = *(v15 + 7) + 888 * v18;
    *v30 = 0x406CCCCCCCCCCCCDLL;
    *(v30 + 8) = 0;
    v3 += OBJC_IVAR___ICRFinalizedIcon_finalizedIcon;
    swift_beginAccess();
    v51 = *(v3 + 232);
    v52 = v14;
    if (v51 == 1)
    {
      if (*(v3 + 216) | *(v3 + 224) | *(v3 + 192) | *(v3 + 208) | *(v3 + 200))
      {
        if (qword_1EB752600 != -1)
        {
          swift_once();
        }

        v31 = sub_1B1619D18();
        __swift_project_value_buffer(v31, qword_1EB752E00);
        v32 = sub_1B1619CF8();
        v33 = sub_1B161A088();
        isUniquelyReferenced_nonNull_native = v13;
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_1B15BF000, v32, v33, "Attempting to render icon for legacy backward deployment using clear rendering style", v34, 2u);
          MEMORY[0x1B2730CA0](v34, -1, -1);
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v13;
      }
    }

    else
    {
      *&v92[1440] = 0u;
      isUniquelyReferenced_nonNull_native = 473;
    }

    v18 = v56;
    v15 = __src;
    sub_1B15C283C(v3, v80);
    memcpy(v81, &v80[2], sizeof(v81));
    v79 = v80[2];
    v43 = *&v81[16];
    v44 = *&v81[32];
    v45 = *&v81[96];
    v46 = *&v81[48];
    v35 = v81[112];
    v78[0] = *(&v80[9] + 1);
    *(v78 + 15) = v80[10];
    v36 = v81[144];
    v77[0] = *(&v80[11] + 1);
    *(v77 + 7) = *(&v80[11] + 1);
    v47 = *&v81[80];
    v48 = *&v81[176];
    v49 = *&v81[160];
    v50 = *&v81[64];
    v24 = *&v81[192];
    LOBYTE(v3) = v81[200];
    memcpy(__dst, &v80[14] + 9, sizeof(__dst));
    memcpy(v82, v92, 0x653uLL);
    memcpy(v83, v92, 0x653uLL);
    nullsub_1(v83);
    memcpy(v84, &__dst[7], 0x653uLL);
    memcpy(&__dst[7], v83, 0x653uLL);
    sub_1B15C3828(v81, v75);
    sub_1B15C51D0(v82, v75);
    sub_1B15C1750(v84, &qword_1EB752A78);
    if (v3)
    {
      v13 = v86;
      v2 = v52;
      v38 = v43;
      v37 = v44;
LABEL_28:
      __src[0] = v79;
      __src[1] = v38;
      __src[2] = v37;
      __src[3] = v46;
      __src[4] = v50;
      __src[5] = v47;
      __src[6] = v45;
      LOBYTE(__src[7]) = v35;
      *(v15 + 113) = v78[0];
      __src[8] = *(v78 + 15);
      LOBYTE(__src[9]) = v36;
      *(v15 + 145) = v77[0];
      *(&__src[9] + 1) = *(v77 + 7);
      __src[10] = v49;
      __src[11] = v48;
      *&__src[12] = v24;
      BYTE8(__src[12]) = v3;
      memcpy(&__src[12] + 9, __dst, 0x65AuLL);
      v68[0] = v80[0];
      FinalizedIcon.update(from:pixelSize:)(__src);
      memcpy(v75, __src, 0x723uLL);
      sub_1B15C5328(v75);
      v39 = v89;
      v40 = v90;
      v56[0] = v89;
      v56[1] = v90;
      *(v18 + 58) = *v86;
      v57 = v91;
      v58 = isUniquelyReferenced_nonNull_native;
      v59 = v87;
      v60 = v13[40];
      v61 = v2;
      *(&v62 + 1) = *(v13 + 14);
      v63 = v39;
      v64 = v40;
      LOBYTE(v65) = v13[80];
      *(v18 + 114) = *(v18 + 34);
      *(v18 + 130) = *(v18 + 50);
      v67 = v62;
      BYTE1(v65) = v51;
      v53 = v80[0];
      v54 = *&v80[1];
      __src[2] = v65;
      __src[3] = v66;
      __src[4] = v62;
      __src[0] = v63;
      __src[1] = v64;
      sub_1B15F354C(v56, v68);
      v41 = FinalizedIcon.renderedIcon(at:with:)(&v53, __src);
      sub_1B15C2874(v80);
      v68[0] = v89;
      v68[1] = v90;
      v69 = v91;
      v70 = isUniquelyReferenced_nonNull_native;
      v71 = v87;
      v72 = v13[40];
      v73 = v2;
      *(v18 + 218) = *v86;
      v74 = *(v13 + 14);
      sub_1B15FA510(v68);
      sub_1B15FA510(&v63);
      memcpy(__src, v92, 0x653uLL);
      sub_1B15C5664(__src);
      return v41;
    }

    v13 = v86;
    v2 = v52;
    if (qword_1EDB30338 == -1)
    {
LABEL_27:
      v35 = 0;
      v38 = xmmword_1EDB30340;
      v37 = *&qword_1EDB30350;
      v36 = 1;
      goto LABEL_28;
    }

LABEL_32:
    swift_once();
    goto LABEL_27;
  }

  LOBYTE(v10) = v17;
  if (*(v15 + 3) >= v21)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

  sub_1B15FD3B8(v21, isUniquelyReferenced_nonNull_native);
  v15 = *&v80[0];
  v22 = sub_1B15C522C(0);
  if ((v10 & 1) == (v23 & 1))
  {
    v18 = v22;
    goto LABEL_12;
  }

  result = sub_1B161A468();
  __break(1u);
  return result;
}

uint64_t sub_1B15FC89C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  ICRRenderingParameters.init()(v39);
  v39[1618] = 1;
  v6 = OBJC_IVAR___ICRFinalizedIcon_finalizedIcon;
  swift_beginAccess();
  sub_1B15C283C(v1 + v6, &v36);
  memcpy(v40, v38, 0x723uLL);
  memcpy(__dst, v38, 0x723uLL);
  memcpy(v41, v39, 0x653uLL);
  memcpy(v42, v39, 0x653uLL);
  nullsub_1(v42);
  memcpy(v43, &__dst[208], 0x653uLL);
  sub_1B15C3828(v40, v44);
  sub_1B15C51D0(v41, v44);
  sub_1B15C1750(v43, &qword_1EB752A78);
  memcpy(&__dst[208], v42, 0x653uLL);
  *v29 = v36;
  FinalizedIcon.update(from:pixelSize:)(__dst);
  memcpy(v44, __dst, 0x723uLL);
  sub_1B15C5328(v44);
  v7 = (v5 + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration);
  swift_beginAccess();
  v8 = v7[3];
  v46 = v7[2];
  v47 = v8;
  v9 = v7[1];
  v10 = *v7;
  v45[0] = *v7;
  v45[1] = v9;
  v32 = v45[0];
  v33 = v9;
  v11 = v7[3];
  v48 = v7[4];
  v34 = *(v7 + 4);
  v31 = v48;
  v30 = v8;
  if (v3)
  {
    v12 = *(&v46 + 1) & 0xFFFFFFFFFFFFFFF9;
  }

  else
  {
    v12 = *(&v46 + 1);
  }

  v17 = v36;
  v18 = v37;
  v13 = *(v7 + 4);
  v19[0] = v10;
  v19[1] = v9;
  *&v20 = v13;
  *(&v20 + 1) = v12;
  v14 = v7[4];
  v21 = v11;
  v22 = v14;
  *&v29[32] = v20;
  *&v29[48] = v11;
  *&v29[64] = v14;
  *v29 = v10;
  *&v29[16] = v9;
  sub_1B15F354C(v45, v24);
  sub_1B15F354C(v19, v24);
  v15 = FinalizedIcon.renderedIcon(at:with:)(&v17, v29);
  v23[2] = *&v29[32];
  v23[3] = *&v29[48];
  v23[4] = *&v29[64];
  v23[0] = *v29;
  v23[1] = *&v29[16];
  sub_1B15FA510(v23);
  v24[0] = v32;
  v24[1] = v33;
  v25 = v34;
  v26 = v12;
  v27 = v30;
  v28 = v31;
  sub_1B15FA510(v24);
  sub_1B15C2874(&v36);
  memcpy(v29, v39, sizeof(v29));
  sub_1B15C5664(v29);
  return v15;
}

unint64_t type metadata accessor for ICRFinalizedIcon()
{
  result = qword_1EB752E20;
  if (!qword_1EB752E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB752E20);
  }

  return result;
}

uint64_t sub_1B15FCC2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1B15DFB94;

  return v6();
}

uint64_t sub_1B15FCD14(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1B15DEE14;

  return v7();
}

uint64_t sub_1B15FCDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB753190);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1B15DF1DC(a3, v23 - v10);
  v12 = sub_1B1619FC8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B15C1750(v11, &unk_1EB753190);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B1619FB8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1B1619F98();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1B1619DE8() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1B15C1750(a3, &unk_1EB753190);

    return v21;
  }

LABEL_8:
  sub_1B15C1750(a3, &unk_1EB753190);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1B15FD0E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B98);
  v35 = a2;
  result = sub_1B161A2F8();
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
        sub_1B15C2260(v22, v36);
      }

      else
      {
        sub_1B15C10F0(v22, v36);
        v23 = v21;
      }

      sub_1B1619D98();
      sub_1B161A4B8();
      sub_1B1619DF8();
      v24 = sub_1B161A4F8();

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
      result = sub_1B15C2260(v36, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_1B15FD3B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B78);
  result = sub_1B161A2F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = a2;
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
      memcpy(__src, (*(v5 + 56) + 888 * v19), sizeof(__src));
      sub_1B161A4B8();
      MEMORY[0x1B272FFF0](v20);
      result = sub_1B161A4F8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = memcpy((*(v7 + 56) + 888 * v15), __src, 0x378uLL);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v29 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

_OWORD *sub_1B15FD658(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1B15C2260(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

id sub_1B15FD6C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B98);
  v2 = *v0;
  v3 = sub_1B161A2E8();
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
        sub_1B15C10F0(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1B15C2260(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_1B15FD840()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B78);
  v2 = *v0;
  v3 = sub_1B161A2E8();
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
    for (i = (v9 + 63) >> 6; v11; result = memcpy((*(v4 + 56) + 888 * v16), v18, 0x378uLL))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + v16);
      memcpy(v18, (*(v2 + 56) + 888 * v16), sizeof(v18));
      *(*(v4 + 48) + v16) = v17;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void sub_1B15FD9C8(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 18;
  bzero((a1 + 40), 0x330uLL);
}

uint64_t sub_1B15FD9E4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B15DFB94;

  return sub_1B15FBC80(v2, v3);
}

uint64_t sub_1B15FDA90()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B15DFB94;

  return sub_1B15FCC2C(v2, v3, v4);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B15FDB90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B15DEE14;

  return sub_1B15FCD14(a1, v4, v5, v6);
}

uint64_t sub_1B15FDC5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B15DFB94;

  return sub_1B15DF574(a1, v4);
}

uint64_t sub_1B15FDD14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B15DEE14;

  return sub_1B15DF574(a1, v4);
}

double sub_1B15FDDCC()
{
  v0 = [objc_allocWithZone(ICRRenderingMode) init];
  v1 = &v0[OBJC_IVAR___ICRRenderingMode_renderingMode];
  *v1 = 1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  v1[40] = 1;
  qword_1EDB32750 = v0;
  return result;
}

void __swiftcall ICRGlobalConfiguration.init()(ICRGlobalConfiguration *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id ICRGlobalConfiguration.init()()
{
  v1 = OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  if (qword_1EDB2FB50 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDB2FB68;
  v3 = &v0[v1];
  v4 = xmmword_1EDB2FB58;
  *(v3 + 16) = 1;
  v3[34] = 0;
  *(v3 + 40) = xmmword_1B161E0A0;
  *(v3 + 28) = 513;
  *(v3 + 8) = 0;
  *(v3 + 9) = 0;
  *v3 = 0x3FF0000000000000;
  *(v3 + 8) = v4;
  *(v3 + 3) = v2;
  v6.receiver = v0;
  v6.super_class = ICRGlobalConfiguration;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t ICRAppearance.description.getter(uint64_t a1)
{
  v1 = 0x656C6261746E6974;
  v2 = 0xD000000000000017;
  if (a1 == 1)
  {
    v2 = 1802658148;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_1B15FE6E4()
{
  v1 = *v0;
  v2 = 0x656C6261746E6974;
  v3 = 0xD000000000000017;
  if (*v0 == 1)
  {
    v3 = 1802658148;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x746867696CLL;
  }
}

char *sub_1B15FE780(double a1, double a2, double a3, double a4)
{
  result = [objc_allocWithZone(ICRRenderingMode) init];
  v9 = &result[OBJC_IVAR___ICRRenderingMode_renderingMode];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = 1.0;
  v9[4] = a4;
  *(v9 + 40) = 0;
  return result;
}

__n128 ICRIconStyle.init(platform:appearance:renderingMode:layoutDirection:)@<Q0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  result = *a3;
  v6 = *(a3 + 16);
  *(a5 + 8) = *a3;
  v7 = *a2;
  v8 = *(a3 + 32);
  v10 = *a4;
  v9 = *(a3 + 40);
  *a5 = *a1;
  *(a5 + 1) = v7;
  *(a5 + 24) = v6;
  *(a5 + 40) = v8;
  *(a5 + 48) = v9;
  *(a5 + 49) = v10;
  return result;
}

__n128 ICRIconStyle.init(platform:appearance:renderingMode:)@<Q0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 8) = *a3;
  v6 = *a2;
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  *a4 = *a1;
  *(a4 + 1) = v6;
  *(a4 + 24) = v5;
  *(a4 + 40) = v7;
  *(a4 + 48) = v8;
  *(a4 + 49) = 2;
  return result;
}

double static RenderingMode.color.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;
  return result;
}

uint64_t static RenderingMode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = *a1;
  v3 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 16);
  v7 = *(a2 + 32);
  if (*(a1 + 40) == 1)
  {
    if (*&v3.f64[0] | *&v4.f64[0] | *&v4.f64[1] | *&v3.f64[1] | *&v2)
    {
      if ((*(a2 + 40) & 1) == 0 || !(*&v5.f64[0] | *&v6.f64[0] | *&v6.f64[1] | *&v5.f64[1] | *&v7))
      {
        return 0;
      }
    }

    else if (!*(a2 + 40) || *&v6.f64[0] | *&v5.f64[1] | *&v5.f64[0] | *&v6.f64[1] | *&v7)
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, v6), vceqq_f64(v3, v5)))) & 1) == 0 || v2 != v7)
  {
    return 0;
  }

  return 1;
}

__n128 static RenderingMode.tinted(with:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u64[1] = 0x3FF0000000000000;
  a2[2].n128_u64[0] = v3;
  a2[2].n128_u8[8] = 0;
  return result;
}

uint64_t sub_1B15FE990()
{
  v0 = sub_1B1619D18();
  __swift_allocate_value_buffer(v0, qword_1EB752E48);
  __swift_project_value_buffer(v0, qword_1EB752E48);
  return sub_1B1619D08();
}

double sub_1B15FEA1C()
{
  LOWORD(xmmword_1EB757AF0) = 0;
  result = 0.0;
  *(&xmmword_1EB757AF0 + 8) = 0u;
  *(&xmmword_1EB757B00 + 8) = 0u;
  *(&xmmword_1EB757B10 + 1) = 0;
  word_1EB757B20 = 513;
  return result;
}

__n128 ICRIconStyle.renderingMode.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  result = *(v1 + 8);
  v5 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

__n128 ICRIconStyle.renderingMode.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v5;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

__n128 ICRIconStyle.init(platform:appearance:renderingMode:)@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  sub_1B15CB0E4(a2, &v11);
  v9 = v11;
  *a4 = v6;
  *(a4 + 1) = v9;
  result = *a3;
  *(a4 + 24) = *(a3 + 16);
  *(a4 + 8) = result;
  *(a4 + 40) = v7;
  *(a4 + 48) = v8;
  *(a4 + 49) = 2;
  return result;
}

IconRendering::ICRIconStyle::SystemAppearance_optional __swiftcall ICRIconStyle.SystemAppearance.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B161A328();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ICRIconStyle.SystemAppearance.rawValue.getter()
{
  if (*v0)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_1B15FEC64(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1802658148;
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1802658148;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B161A448();
  }

  return v8 & 1;
}

uint64_t sub_1B15FED00@<X0>(char *a1@<X8>)
{
  v2 = sub_1B161A328();

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

void sub_1B15FED60(uint64_t *a1@<X8>)
{
  v2 = 1802658148;
  if (!*v1)
  {
    v2 = 0x746867696CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B15FED94()
{
  sub_1B161A4B8();
  sub_1B1619DF8();

  return sub_1B161A4F8();
}

uint64_t sub_1B15FEE0C()
{
  sub_1B1619DF8();
}

uint64_t sub_1B15FEE70()
{
  sub_1B161A4B8();
  sub_1B1619DF8();

  return sub_1B161A4F8();
}

uint64_t sub_1B15FEF94()
{
  v1 = 0x6D726F6674616C70;
  v2 = 0x6E697265646E6572;
  if (*v0 != 2)
  {
    v2 = 0x694474756F79616CLL;
  }

  if (*v0)
  {
    v1 = 0x6E61726165707061;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B15FF02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1601F6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B15FF054(uint64_t a1)
{
  v2 = sub_1B1601068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B15FF090(uint64_t a1)
{
  v2 = sub_1B1601068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ICRIconStyle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752E60);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v24 = v1[1];
  v9 = *(v1 + 8);
  v15 = *(v1 + 24);
  v16 = v9;
  v19 = *(v1 + 5);
  v10 = v1[48];
  v17 = v1[49];
  v18 = v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1601068();
  sub_1B161A518();
  LOBYTE(v20) = v8;
  v25 = 0;
  sub_1B16010BC();
  sub_1B161A3F8();
  if (!v2)
  {
    v11 = v17;
    v12 = v18;
    v13 = v19;
    LOBYTE(v20) = v24;
    v25 = 1;
    sub_1B1601110();
    sub_1B161A3F8();
    v20 = v16;
    v21 = v15;
    v22 = v13;
    v23 = v12;
    v25 = 2;
    sub_1B1601164();
    sub_1B161A3F8();
    LOBYTE(v20) = v11;
    v25 = 3;
    sub_1B16011B8();
    sub_1B161A3C8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ICRIconStyle.hash(into:)()
{
  v2 = *(v0 + 1);
  v1 = *(v0 + 2);
  v4 = *(v0 + 3);
  v3 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = v0[48];
  v7 = v0[49];
  MEMORY[0x1B272FFF0](*v0);
  sub_1B1619DF8();

  if (v6 != 1)
  {
    MEMORY[0x1B272FFF0](1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v2;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1B2730010](v9);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v1;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x1B2730010](v10);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1B2730010](v11);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v3;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x1B2730010](v12);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = v5;
    }

    else
    {
      v13 = 0;
    }

    MEMORY[0x1B2730010](v13);
    if (v7 == 2)
    {
      return sub_1B161A4D8();
    }

LABEL_20:
    sub_1B161A4D8();
    return MEMORY[0x1B272FFF0](v7 & 1);
  }

  if (v4 | v1 | v2 | v3 | v5)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1B272FFF0](v8);
  if (v7 != 2)
  {
    goto LABEL_20;
  }

  return sub_1B161A4D8();
}

uint64_t ICRIconStyle.hashValue.getter()
{
  sub_1B161A4B8();
  ICRIconStyle.hash(into:)();
  return sub_1B161A4F8();
}

uint64_t ICRIconStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752E68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1601068();
  sub_1B161A508();
  if (!v2)
  {
    v22 = 0;
    sub_1B160120C();
    sub_1B161A398();
    v9 = v17;
    v22 = 1;
    sub_1B1601260();
    sub_1B161A398();
    v10 = v17;
    v22 = 2;
    sub_1B16012B4();
    sub_1B161A398();
    v16 = v18;
    v14 = v17;
    v15 = v19;
    v21 = v20;
    v22 = 3;
    sub_1B1601308();
    sub_1B161A368();
    (*(v6 + 8))(v8, v5);
    v12 = v17;
    v13 = v21;
    *a2 = v9;
    *(a2 + 1) = v10;
    *(a2 + 8) = v14;
    *(a2 + 24) = v16;
    *(a2 + 40) = v15;
    *(a2 + 48) = v13;
    *(a2 + 49) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1B15FF728()
{
  sub_1B161A4B8();
  ICRIconStyle.hash(into:)();
  return sub_1B161A4F8();
}

uint64_t sub_1B15FF76C()
{
  sub_1B161A4B8();
  ICRIconStyle.hash(into:)();
  return sub_1B161A4F8();
}

uint64_t ICRIconStyle.isStandard.getter()
{
  if (*(v0 + 48) != 1 || *(v0 + 32) | *(v0 + 40) | *(v0 + 8) | *(v0 + 24) | *(v0 + 16))
  {
    return 0;
  }

  if (*(v0 + 1))
  {
    v2 = sub_1B161A448();

    return v2 & 1;
  }

  else
  {

    return 1;
  }
}

__n128 RenderingMode.contents.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

__n128 RenderingMode.contents.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

double static RenderingMode.clear.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_1B15FF8F0(uint64_t a1)
{
  v2 = sub_1B16013B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B15FF92C(uint64_t a1)
{
  v2 = sub_1B16013B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B15FF968()
{
  v1 = 0x6465746E6974;
  if (*v0 != 1)
  {
    v1 = 0x7261656C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t sub_1B15FF9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B16020E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B15FF9E0(uint64_t a1)
{
  v2 = sub_1B160135C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B15FFA1C(uint64_t a1)
{
  v2 = sub_1B160135C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B15FFA58(uint64_t a1)
{
  v2 = sub_1B16014AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B15FFA94(uint64_t a1)
{
  v2 = sub_1B16014AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B15FFAD0()
{
  if (*v0)
  {
    return 0x6974617275746173;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B15FFB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B161A448() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974617275746173 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B161A448();

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

uint64_t sub_1B15FFBE0(uint64_t a1)
{
  v2 = sub_1B1601404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B15FFC1C(uint64_t a1)
{
  v2 = sub_1B1601404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RenderingMode.Contents.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752E70);
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752E78);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752E80);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v22 = &v22 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752E88);
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = v1[1];
  v30 = *v1;
  v31 = v13;
  v14 = *(v1 + 4);
  v15 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B160135C();
  sub_1B161A518();
  if (v15 == 1)
  {
    if (v31 | v30 | *(&v31 + 1) | v14)
    {
      LOBYTE(v34) = 2;
      sub_1B16013B0();
      v16 = v25;
      sub_1B161A3B8();
      v18 = v26;
      v17 = v27;
    }

    else
    {
      LOBYTE(v34) = 0;
      sub_1B16014AC();
      v16 = v22;
      sub_1B161A3B8();
      v18 = v23;
      v17 = v24;
    }

    (*(v18 + 8))(v16, v17);
  }

  else
  {
    LOBYTE(v34) = 1;
    sub_1B1601404();
    sub_1B161A3B8();
    v34 = v30;
    v35 = v31;
    v36 = 0;
    sub_1B1601458();
    v19 = v29;
    v20 = v32;
    sub_1B161A3F8();
    if (!v20)
    {
      LOBYTE(v34) = 1;
      sub_1B161A3E8();
    }

    (*(v28 + 8))(v7, v19);
  }

  return (*(v33 + 8))(v12, v10);
}

uint64_t RenderingMode.Contents.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_1B161A4B8();
  RenderingMode.hash(into:)(v5);
  return sub_1B161A4F8();
}

uint64_t RenderingMode.Contents.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  *&v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752E90);
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v34 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752E98);
  v39 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752EA0);
  *&v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752EA8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v13);
  sub_1B160135C();
  v14 = v43;
  sub_1B161A508();
  if (!v14)
  {
    v15 = v40;
    v35 = v6;
    v43 = v10;
    v17 = v41;
    v16 = v42;
    v18 = sub_1B161A3A8();
    v19 = (2 * *(v18 + 16)) | 1;
    v48 = v18;
    v49 = v18 + 32;
    v50 = 0;
    v51 = v19;
    v20 = sub_1B15F5704();
    v21 = v12;
    if (v20 == 3 || v50 != v51 >> 1)
    {
      v25 = sub_1B161A1E8();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752CE8);
      *v27 = &type metadata for RenderingMode.Contents;
      sub_1B161A358();
      sub_1B161A1D8();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v43 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v20)
      {
        if (v20 == 1)
        {
          LOBYTE(v46) = 1;
          sub_1B1601404();
          sub_1B161A348();
          v22 = v16;
          v41 = v21;
          v45 = 0;
          sub_1B1601500();
          v23 = v36;
          sub_1B161A398();
          v24 = v43;
          v40 = v46;
          v38 = v47;
          v45 = 1;
          sub_1B161A388();
          v30 = v29;
          (*(v39 + 8))(v5, v23);
          (*(v24 + 8))(v41, v9);
          swift_unknownObjectRelease();
          v31 = 0;
          v32 = v40;
          v33 = v38;
        }

        else
        {
          LOBYTE(v46) = 2;
          sub_1B16013B0();
          sub_1B161A348();
          v22 = v16;
          (*(v37 + 8))(v17, v38);
          (*(v43 + 8))(v21, v9);
          swift_unknownObjectRelease();
          v32 = xmmword_1B161F1D0;
          v33 = 0uLL;
          v31 = 1;
          v30 = 0;
        }
      }

      else
      {
        LOBYTE(v46) = 0;
        sub_1B16014AC();
        sub_1B161A348();
        (*(v15 + 8))(v8, v35);
        (*(v43 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v32 = 0uLL;
        v31 = 1;
        v30 = 0;
        v33 = 0uLL;
        v22 = v16;
      }

      *v22 = v32;
      *(v22 + 16) = v33;
      *(v22 + 32) = v30;
      *(v22 + 40) = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v44);
}

uint64_t sub_1B1600750()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_1B161A4B8();
  RenderingMode.hash(into:)(v5);
  return sub_1B161A4F8();
}

uint64_t sub_1B16007AC()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_1B161A4B8();
  RenderingMode.hash(into:)(v5);
  return sub_1B161A4F8();
}

uint64_t sub_1B160084C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B161A448();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B16008D4(uint64_t a1)
{
  v2 = sub_1B1601554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1600910(uint64_t a1)
{
  v2 = sub_1B1601554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RenderingMode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752EB0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1601554();
  sub_1B161A518();
  v10 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v10;
  v13 = v8;
  v14 = v9;
  sub_1B16015A8();
  sub_1B161A3F8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B1600AB4()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  if (*(v0 + 40) == 1)
  {
    if (v4 | v1 | v2 | v3 | v5)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    return MEMORY[0x1B272FFF0](v6);
  }

  else
  {
    MEMORY[0x1B272FFF0](1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x1B2730010](v7);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v1;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1B2730010](v8);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1B2730010](v9);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x1B2730010](v10);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    return MEMORY[0x1B2730010](v11);
  }
}

uint64_t RenderingMode.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_1B161A4B8();
  RenderingMode.hash(into:)(v5);
  return sub_1B161A4F8();
}

uint64_t RenderingMode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752EB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1601554();
  sub_1B161A508();
  if (!v2)
  {
    sub_1B16015FC();
    sub_1B161A398();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v10 = v15;
    v11 = v13[1];
    *a2 = v13[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

BOOL _s13IconRendering0B4ModeV8ContentsO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = *a1;
  v3 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 16);
  v7 = *(a2 + 32);
  if (*(a1 + 40) == 1)
  {
    if (*&v3.f64[0] | *&v4.f64[0] | *&v4.f64[1] | *&v3.f64[1] | *&v2)
    {
      if (*(a2 + 40))
      {
        return (*&v5.f64[0] | *&v6.f64[0] | *&v6.f64[1] | *&v5.f64[1] | *&v7) != 0;
      }
    }

    else if (*(a2 + 40))
    {
      return (*&v5.f64[0] | *&v6.f64[0] | *&v6.f64[1] | *&v5.f64[1] | *&v7) == 0;
    }
  }

  else if (*(a2 + 40) & 1) == 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, v6), vceqq_f64(v3, v5)))))
  {
    return v2 == v7;
  }

  return 0;
}

uint64_t _s13IconRendering12ICRIconStyleV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 5);
  v3 = a1[48];
  v4 = a1[49];
  v18 = *(a1 + 8);
  v19 = *(a1 + 24);
  v16 = *(a2 + 8);
  v17 = *(a2 + 24);
  v5 = *(a2 + 5);
  v6 = a2[48];
  v7 = a2[49];
  v8 = a1[1] == 0;
  if (a1[1])
  {
    v9 = 1802658148;
  }

  else
  {
    v9 = 0x746867696CLL;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (a2[1])
  {
    v11 = 1802658148;
  }

  else
  {
    v11 = 0x746867696CLL;
  }

  if (a2[1])
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {

    if (v3)
    {
LABEL_20:
      if (*&v19.f64[0] | *&v18.f64[0] | *&v18.f64[1] | *&v19.f64[1] | *&v2)
      {
        if ((v6 & 1) == 0 || !(*&v17.f64[0] | *&v16.f64[0] | *&v16.f64[1] | *&v17.f64[1] | *&v5))
        {
          return 0;
        }
      }

      else if (!v6 || *&v17.f64[0] | *&v16.f64[0] | *&v16.f64[1] | *&v17.f64[1] | *&v5)
      {
        return 0;
      }

LABEL_32:
      if (v4 == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else if (v7 == 2 || ((v7 ^ v4) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }
  }

  else
  {
    v14 = sub_1B161A448();

    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (v3)
    {
      goto LABEL_20;
    }
  }

  if (v6)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v18, v16), vceqq_f64(v19, v17)))) & 1) != 0 && v2 == v5)
  {
    goto LABEL_32;
  }

  return result;
}

unint64_t sub_1B1601068()
{
  result = qword_1EDB2F638;
  if (!qword_1EDB2F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F638);
  }

  return result;
}

unint64_t sub_1B16010BC()
{
  result = qword_1EDB2F3C0;
  if (!qword_1EDB2F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F3C0);
  }

  return result;
}

unint64_t sub_1B1601110()
{
  result = qword_1EDB2F3D0;
  if (!qword_1EDB2F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F3D0);
  }

  return result;
}

unint64_t sub_1B1601164()
{
  result = qword_1EDB2F400;
  if (!qword_1EDB2F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F400);
  }

  return result;
}

unint64_t sub_1B16011B8()
{
  result = qword_1EDB2F458;
  if (!qword_1EDB2F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F458);
  }

  return result;
}

unint64_t sub_1B160120C()
{
  result = qword_1EDB2F4D8;
  if (!qword_1EDB2F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F4D8);
  }

  return result;
}

unint64_t sub_1B1601260()
{
  result = qword_1EDB2F4E8;
  if (!qword_1EDB2F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F4E8);
  }

  return result;
}

unint64_t sub_1B16012B4()
{
  result = qword_1EDB2F4F0;
  if (!qword_1EDB2F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F4F0);
  }

  return result;
}

unint64_t sub_1B1601308()
{
  result = qword_1EDB2F510;
  if (!qword_1EDB2F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F510);
  }

  return result;
}

unint64_t sub_1B160135C()
{
  result = qword_1EDB2F6B0;
  if (!qword_1EDB2F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F6B0);
  }

  return result;
}

unint64_t sub_1B16013B0()
{
  result = qword_1EDB2F500;
  if (!qword_1EDB2F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F500);
  }

  return result;
}

unint64_t sub_1B1601404()
{
  result = qword_1EDB2F670;
  if (!qword_1EDB2F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F670);
  }

  return result;
}

unint64_t sub_1B1601458()
{
  result = qword_1EDB2F410;
  if (!qword_1EDB2F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F410);
  }

  return result;
}

unint64_t sub_1B16014AC()
{
  result = qword_1EDB2F688;
  if (!qword_1EDB2F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F688);
  }

  return result;
}

unint64_t sub_1B1601500()
{
  result = qword_1EDB2F508;
  if (!qword_1EDB2F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F508);
  }

  return result;
}

unint64_t sub_1B1601554()
{
  result = qword_1EDB2F6C8;
  if (!qword_1EDB2F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F6C8);
  }

  return result;
}

unint64_t sub_1B16015A8()
{
  result = qword_1EDB2F408;
  if (!qword_1EDB2F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F408);
  }

  return result;
}

unint64_t sub_1B16015FC()
{
  result = qword_1EDB2F4F8;
  if (!qword_1EDB2F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F4F8);
  }

  return result;
}

unint64_t sub_1B1601654()
{
  result = qword_1EB752EC0;
  if (!qword_1EB752EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752EC0);
  }

  return result;
}

unint64_t sub_1B16016AC()
{
  result = qword_1EB752EC8;
  if (!qword_1EB752EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752EC8);
  }

  return result;
}

unint64_t sub_1B1601704()
{
  result = qword_1EB752ED0;
  if (!qword_1EB752ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752ED0);
  }

  return result;
}

unint64_t sub_1B160175C()
{
  result = qword_1EB752ED8;
  if (!qword_1EB752ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752ED8);
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B16017CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B1601810(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RenderingMode.Contents(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B16018B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 41) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for RenderingMode.Contents(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 25) = 0u;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1B1601934(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1601950(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    *(result + 40) = 1;
  }

  else
  {
    *(result + 40) = 0;
  }

  return result;
}

unint64_t sub_1B16019F0()
{
  result = qword_1EB752EE0;
  if (!qword_1EB752EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752EE0);
  }

  return result;
}

unint64_t sub_1B1601A48()
{
  result = qword_1EB752EE8;
  if (!qword_1EB752EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752EE8);
  }

  return result;
}

unint64_t sub_1B1601AA0()
{
  result = qword_1EB752EF0;
  if (!qword_1EB752EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752EF0);
  }

  return result;
}

unint64_t sub_1B1601AF8()
{
  result = qword_1EB752EF8;
  if (!qword_1EB752EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752EF8);
  }

  return result;
}

unint64_t sub_1B1601B50()
{
  result = qword_1EDB2F6B8;
  if (!qword_1EDB2F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F6B8);
  }

  return result;
}

unint64_t sub_1B1601BA8()
{
  result = qword_1EDB2F6C0;
  if (!qword_1EDB2F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F6C0);
  }

  return result;
}

unint64_t sub_1B1601C00()
{
  result = qword_1EDB2F678;
  if (!qword_1EDB2F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F678);
  }

  return result;
}

unint64_t sub_1B1601C58()
{
  result = qword_1EDB2F680;
  if (!qword_1EDB2F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F680);
  }

  return result;
}

unint64_t sub_1B1601CB0()
{
  result = qword_1EDB2F660;
  if (!qword_1EDB2F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F660);
  }

  return result;
}

unint64_t sub_1B1601D08()
{
  result = qword_1EDB2F668;
  if (!qword_1EDB2F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F668);
  }

  return result;
}

unint64_t sub_1B1601D60()
{
  result = qword_1EDB2F690;
  if (!qword_1EDB2F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F690);
  }

  return result;
}

unint64_t sub_1B1601DB8()
{
  result = qword_1EDB2F698;
  if (!qword_1EDB2F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F698);
  }

  return result;
}

unint64_t sub_1B1601E10()
{
  result = qword_1EDB2F6A0;
  if (!qword_1EDB2F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F6A0);
  }

  return result;
}

unint64_t sub_1B1601E68()
{
  result = qword_1EDB2F6A8;
  if (!qword_1EDB2F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F6A8);
  }

  return result;
}

unint64_t sub_1B1601EC0()
{
  result = qword_1EDB2F628;
  if (!qword_1EDB2F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F628);
  }

  return result;
}

unint64_t sub_1B1601F18()
{
  result = qword_1EDB2F630;
  if (!qword_1EDB2F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F630);
  }

  return result;
}

uint64_t sub_1B1601F6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B161A448() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E61726165707061 && a2 == 0xEA00000000006563 || (sub_1B161A448() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E697265646E6572 && a2 == 0xED000065646F4D67 || (sub_1B161A448() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x694474756F79616CLL && a2 == 0xEF6E6F6974636572)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B161A448();

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

uint64_t sub_1B16020E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B161A448() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465746E6974 && a2 == 0xE600000000000000 || (sub_1B161A448() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261656C63 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B161A448();

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

unint64_t sub_1B16021F4()
{
  result = qword_1EDB2F620;
  if (!qword_1EDB2F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F620);
  }

  return result;
}

uint64_t sub_1B1602250()
{
  v0 = sub_1B1619D18();
  __swift_allocate_value_buffer(v0, qword_1EB752F00);
  __swift_project_value_buffer(v0, qword_1EB752F00);
  return sub_1B1619D08();
}

void ICRIconLayer.icon.setter(void *a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v22[0] = 0;
    v2 = a1;
    if ([v1 displayIcon:v2 error:v22])
    {
      v3 = v22[0];
    }

    else
    {
      v4 = v22[0];
      v5 = sub_1B1619B38();

      swift_willThrow();
      if (qword_1EB752618 != -1)
      {
        swift_once();
      }

      v6 = sub_1B1619D18();
      __swift_project_value_buffer(v6, qword_1EB752F00);
      v7 = v2;
      v8 = v5;
      v9 = sub_1B1619CF8();
      v10 = sub_1B161A088();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v22[0] = v13;
        *v11 = 136315394;
        v14 = [v7 name];
        if (v14)
        {
          v15 = v14;
          v16 = sub_1B1619D98();
          v18 = v17;
        }

        else
        {
          v18 = 0xE90000000000003ELL;
          v16 = 0x64656D616E6E753CLL;
        }

        v19 = sub_1B15E4764(v16, v18, v22);

        *(v11 + 4) = v19;
        *(v11 + 12) = 2112;
        v20 = v5;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 14) = v21;
        *v12 = v21;
        _os_log_impl(&dword_1B15BF000, v9, v10, "Could not load icon '%s' set on layer: %@", v11, 0x16u);
        sub_1B15C1750(v12, &qword_1EB752A70);
        MEMORY[0x1B2730CA0](v12, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x1B2730CA0](v13, -1, -1);
        MEMORY[0x1B2730CA0](v11, -1, -1);
      }

      else
      {
      }
    }
  }
}

double ICRIconLayer.iconModel.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = OBJC_IVAR___ICRIconLayer_displayedIcon;
  swift_beginAccess();
  sub_1B15C37C0(v1 + v3, v20, &qword_1EB752F20);
  if (v21 == 255)
  {
    sub_1B15C1750(v20, &qword_1EB752F20);
LABEL_6:
    sub_1B16067DC(&v22);
    goto LABEL_7;
  }

  if ((v21 & 1) == 0)
  {
    sub_1B16067F8(v20);
    goto LABEL_6;
  }

  v16 = v20[6];
  v17 = v20[7];
  v18 = v20[8];
  v19 = v20[9];
  v12 = v20[2];
  v13 = v20[3];
  v14 = v20[4];
  v15 = v20[5];
  v10 = v20[0];
  v11 = v20[1];
  nullsub_1(&v10);
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v22 = v10;
  v23 = v11;
LABEL_7:
  v4 = v29;
  a1[6] = v28;
  a1[7] = v4;
  v5 = v31;
  a1[8] = v30;
  a1[9] = v5;
  v6 = v25;
  a1[2] = v24;
  a1[3] = v6;
  v7 = v27;
  a1[4] = v26;
  a1[5] = v7;
  result = *&v22;
  v9 = v23;
  *a1 = v22;
  a1[1] = v9;
  return result;
}

uint64_t ICRIconLayer.iconModel.setter(_OWORD *a1)
{
  v3 = a1[7];
  v19[6] = a1[6];
  v19[7] = v3;
  v4 = a1[9];
  v19[8] = a1[8];
  v19[9] = v4;
  v5 = a1[3];
  v19[2] = a1[2];
  v19[3] = v5;
  v6 = a1[5];
  v19[4] = a1[4];
  v19[5] = v6;
  v7 = a1[1];
  v19[0] = *a1;
  v19[1] = v7;
  if (sub_1B1606828(v19) == 1)
  {
    bzero(v17, 0x778uLL);
    v8 = -1;
  }

  else
  {
    v9 = a1[6];
    v10 = a1[8];
    v11 = a1[9];
    v17[7] = a1[7];
    v17[8] = v10;
    v17[9] = v11;
    v12 = a1[3];
    v17[2] = a1[2];
    v17[3] = v12;
    v13 = a1[5];
    v17[4] = a1[4];
    v17[5] = v13;
    v17[6] = v9;
    v14 = a1[1];
    v17[0] = *a1;
    v17[1] = v14;
    v8 = 1;
  }

  v18 = v8;
  v15 = OBJC_IVAR___ICRIconLayer_displayedIcon;
  swift_beginAccess();
  sub_1B1606F64(v17, v1 + v15, &qword_1EB752F20);
  swift_endAccess();
  sub_1B15C2EEC();
  return sub_1B15C1750(v17, &qword_1EB752F20);
}

void (*ICRIconLayer.iconModel.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB80uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 1920);
  v6 = (v3 + 2080);
  *(v3 + 2928) = v1;
  v7 = OBJC_IVAR___ICRIconLayer_displayedIcon;
  *(v3 + 2936) = OBJC_IVAR___ICRIconLayer_displayedIcon;
  swift_beginAccess();
  sub_1B15C37C0(v1 + v7, v4, &qword_1EB752F20);
  v8 = *(v4 + 1912);
  if (v8 == 255)
  {
    sub_1B15C1750(v4, &qword_1EB752F20);
LABEL_9:
    sub_1B16067DC(v5);
    goto LABEL_10;
  }

  if ((v8 & 1) == 0)
  {
    sub_1B16067F8(v4);
    goto LABEL_9;
  }

  v9 = *(v4 + 112);
  *(v4 + 2336) = *(v4 + 96);
  *(v4 + 2352) = v9;
  v10 = *(v4 + 144);
  *(v4 + 2368) = *(v4 + 128);
  *(v4 + 2384) = v10;
  v11 = *(v4 + 48);
  *(v4 + 2272) = *(v4 + 32);
  *(v4 + 2288) = v11;
  v12 = *(v4 + 80);
  *(v4 + 2304) = *(v4 + 64);
  *(v4 + 2320) = v12;
  v13 = *(v4 + 16);
  *(v4 + 2240) = *v4;
  *(v4 + 2256) = v13;
  nullsub_1(v4 + 2240);
  v14 = *(v4 + 2352);
  v5[6] = *(v4 + 2336);
  v5[7] = v14;
  v15 = *(v4 + 2384);
  v5[8] = *(v4 + 2368);
  v5[9] = v15;
  v16 = *(v4 + 2288);
  v5[2] = *(v4 + 2272);
  v5[3] = v16;
  v17 = *(v4 + 2320);
  v5[4] = *(v4 + 2304);
  v5[5] = v17;
  v18 = *(v4 + 2256);
  *v5 = *(v4 + 2240);
  v5[1] = v18;
LABEL_10:
  v19 = v5[7];
  v6[6] = v5[6];
  v6[7] = v19;
  v20 = v5[9];
  v6[8] = v5[8];
  v6[9] = v20;
  v21 = v5[3];
  v6[2] = v5[2];
  v6[3] = v21;
  v22 = v5[5];
  v6[4] = v5[4];
  v6[5] = v22;
  v23 = v5[1];
  *v6 = *v5;
  v6[1] = v23;
  return sub_1B16029D0;
}

void sub_1B16029D0(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 130;
  v4 = *a1 + 140;
  v5 = v2 + 150;
  if (a2)
  {
    v7 = v3[6];
    v6 = v3[7];
    v8 = v3[5];
    v2[156] = v7;
    v2[157] = v6;
    v9 = v3[7];
    v11 = v3[8];
    v10 = v3[9];
    v2[158] = v11;
    v2[159] = v10;
    v13 = v3[2];
    v12 = v3[3];
    v14 = v3[1];
    v2[152] = v13;
    v2[153] = v12;
    v15 = v3[3];
    v17 = v3[4];
    v16 = v3[5];
    v2[154] = v17;
    v2[155] = v16;
    v18 = v3[1];
    v19 = *v3;
    *v5 = *v3;
    v2[151] = v18;
    v4[6] = v7;
    v4[7] = v9;
    v20 = v3[9];
    v4[8] = v11;
    v4[9] = v20;
    v4[2] = v13;
    v4[3] = v15;
    v4[4] = v17;
    v4[5] = v8;
    *v4 = v19;
    v4[1] = v14;
    if (sub_1B1606828(v4) == 1)
    {
      bzero(v2, 0x778uLL);
      v21 = -1;
    }

    else
    {
      v27 = v2[157];
      v2[6] = v2[156];
      v2[7] = v27;
      v28 = v2[159];
      v2[8] = v2[158];
      v2[9] = v28;
      v29 = v2[153];
      v2[2] = v2[152];
      v2[3] = v29;
      v30 = v2[155];
      v2[4] = v2[154];
      v2[5] = v30;
      v31 = v2[151];
      *v2 = *v5;
      v2[1] = v31;
      v21 = 1;
    }

    *(v2 + 1912) = v21;
    v32 = *(v2 + 367);
    v33 = *(v2 + 366);
    swift_beginAccess();
    sub_1B15C37C0((v2 + 150), (v2 + 170), &qword_1EB752F28);
    sub_1B1606F64(v2, v33 + v32, &qword_1EB752F20);
    swift_endAccess();
    sub_1B15C2EEC();
    sub_1B15C1750(v2, &qword_1EB752F20);
    v34 = v3[7];
    v2[166] = v3[6];
    v2[167] = v34;
    v35 = v3[9];
    v2[168] = v3[8];
    v2[169] = v35;
    v36 = v3[3];
    v2[162] = v3[2];
    v2[163] = v36;
    v37 = v3[5];
    v2[164] = v3[4];
    v2[165] = v37;
    v38 = v3[1];
    v2[160] = *v3;
    v2[161] = v38;
    v39 = (v2 + 160);
    v40 = &qword_1EB752F28;
  }

  else
  {
    v22 = v3[5];
    v49 = v3[6];
    v50 = v3[7];
    v51 = v3[8];
    v52 = v3[9];
    v23 = v3[1];
    v45 = v3[2];
    v46 = v3[3];
    v47 = v3[4];
    v48 = v22;
    v43 = *v3;
    v24 = *v3;
    v44 = v23;
    v4[6] = v49;
    v4[7] = v50;
    v25 = v3[9];
    v4[8] = v51;
    v4[9] = v25;
    v4[2] = v45;
    v4[3] = v46;
    v4[4] = v47;
    v4[5] = v22;
    *v4 = v24;
    v4[1] = v23;
    if (sub_1B1606828(v4) == 1)
    {
      bzero(v2, 0x778uLL);
      v26 = -1;
    }

    else
    {
      v2[6] = v49;
      v2[7] = v50;
      v2[8] = v51;
      v2[9] = v52;
      v2[2] = v45;
      v2[3] = v46;
      v2[4] = v47;
      v2[5] = v48;
      *v2 = v43;
      v2[1] = v44;
      v26 = 1;
    }

    *(v2 + 1912) = v26;
    v41 = *(v2 + 367);
    v42 = *(v2 + 366);
    swift_beginAccess();
    sub_1B1606F64(v2, v42 + v41, &qword_1EB752F20);
    swift_endAccess();
    sub_1B15C2EEC();
    v39 = v2;
    v40 = &qword_1EB752F20;
  }

  sub_1B15C1750(v39, v40);

  free(v2);
}

void ICRIconLayer.finalizedIcon.getter(void *a1@<X8>)
{
  v3 = OBJC_IVAR___ICRIconLayer_displayedIcon;
  swift_beginAccess();
  sub_1B15C37C0(v1 + v3, __src, &qword_1EB752F20);
  if (v5 == 255)
  {
    sub_1B15C1750(__src, &qword_1EB752F20);
    goto LABEL_5;
  }

  if (v5)
  {
    sub_1B16067F8(__src);
LABEL_5:
    bzero(a1, 0x778uLL);
    return;
  }

  memcpy(a1, __src, 0x778uLL);
}

uint64_t ICRIconLayer.finalizedIcon.setter(uint64_t a1)
{
  sub_1B15C37C0(a1, __src, &qword_1EB752B28);
  if (__src[3])
  {
    memcpy(__dst, __src, sizeof(__dst));
    v7 = 0;
  }

  else
  {
    bzero(__dst, 0x778uLL);
    v7 = -1;
  }

  v3 = OBJC_IVAR___ICRIconLayer_displayedIcon;
  swift_beginAccess();
  sub_1B1606F64(__dst, v1 + v3, &qword_1EB752F20);
  swift_endAccess();
  sub_1B15C2EEC();
  sub_1B15C1750(a1, &qword_1EB752B28);
  return sub_1B15C1750(__dst, &qword_1EB752F20);
}

void (*ICRIconLayer.finalizedIcon.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xF18uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 3856) = v1;
  v5 = OBJC_IVAR___ICRIconLayer_displayedIcon;
  swift_beginAccess();
  sub_1B15C37C0(v1 + v5, v4, &qword_1EB752F20);
  v6 = *(v4 + 1912);
  if (v6 == 255)
  {
    sub_1B15C1750(v4, &qword_1EB752F20);
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      v126 = *(v4 + 16);
      v127 = *v4;
      v124 = *(v4 + 48);
      v125 = *(v4 + 32);
      v122 = *(v4 + 80);
      v123 = *(v4 + 64);
      v120 = *(v4 + 112);
      v121 = *(v4 + 96);
      v119 = *(v4 + 128);
      v118 = *(v4 + 144);
      v117 = *(v4 + 160);
      v116 = *(v4 + 176);
      v115 = *(v4 + 192);
      v114 = *(v4 + 208);
      v113 = *(v4 + 224);
      v112 = *(v4 + 240);
      v111 = *(v4 + 256);
      v110 = *(v4 + 272);
      v109 = *(v4 + 288);
      v108 = *(v4 + 304);
      v107 = *(v4 + 320);
      v106 = *(v4 + 336);
      v105 = *(v4 + 352);
      v103 = *(v4 + 384);
      v104 = *(v4 + 368);
      v101 = *(v4 + 416);
      v102 = *(v4 + 400);
      v99 = *(v4 + 448);
      v100 = *(v4 + 432);
      v97 = *(v4 + 480);
      v98 = *(v4 + 464);
      v7 = *(v4 + 1904);
      v95 = *(v4 + 512);
      v96 = *(v4 + 496);
      v93 = *(v4 + 544);
      v94 = *(v4 + 528);
      v91 = *(v4 + 576);
      v92 = *(v4 + 560);
      v89 = *(v4 + 608);
      v90 = *(v4 + 592);
      v87 = *(v4 + 640);
      v88 = *(v4 + 624);
      v85 = *(v4 + 672);
      v86 = *(v4 + 656);
      v83 = *(v4 + 704);
      v84 = *(v4 + 688);
      v81 = *(v4 + 736);
      v82 = *(v4 + 720);
      v79 = *(v4 + 768);
      v80 = *(v4 + 752);
      v77 = *(v4 + 800);
      v78 = *(v4 + 784);
      v75 = *(v4 + 832);
      v76 = *(v4 + 816);
      v73 = *(v4 + 864);
      v74 = *(v4 + 848);
      v71 = *(v4 + 896);
      v72 = *(v4 + 880);
      v69 = *(v4 + 928);
      v70 = *(v4 + 912);
      v67 = *(v4 + 960);
      v68 = *(v4 + 944);
      v65 = *(v4 + 992);
      v66 = *(v4 + 976);
      v63 = *(v4 + 1024);
      v64 = *(v4 + 1008);
      v61 = *(v4 + 1056);
      v62 = *(v4 + 1040);
      v59 = *(v4 + 1088);
      v60 = *(v4 + 1072);
      v57 = *(v4 + 1120);
      v58 = *(v4 + 1104);
      v55 = *(v4 + 1152);
      v56 = *(v4 + 1136);
      v53 = *(v4 + 1184);
      v54 = *(v4 + 1168);
      v51 = *(v4 + 1216);
      v52 = *(v4 + 1200);
      v49 = *(v4 + 1248);
      v50 = *(v4 + 1232);
      v47 = *(v4 + 1280);
      v48 = *(v4 + 1264);
      v45 = *(v4 + 1312);
      v46 = *(v4 + 1296);
      v43 = *(v4 + 1344);
      v44 = *(v4 + 1328);
      v41 = *(v4 + 1376);
      v42 = *(v4 + 1360);
      v40 = *(v4 + 1392);
      v9 = *(v4 + 1408);
      v10 = *(v4 + 1424);
      v11 = *(v4 + 1440);
      v12 = *(v4 + 1456);
      v13 = *(v4 + 1472);
      v14 = *(v4 + 1488);
      v15 = *(v4 + 1504);
      v16 = *(v4 + 1520);
      v8 = *(v4 + 1536);
      v17 = *(v4 + 1552);
      v18 = *(v4 + 1568);
      v19 = *(v4 + 1584);
      v20 = *(v4 + 1600);
      v21 = *(v4 + 1616);
      v22 = *(v4 + 1632);
      v23 = *(v4 + 1648);
      v24 = *(v4 + 1664);
      v25 = *(v4 + 1680);
      v26 = *(v4 + 1696);
      v27 = *(v4 + 1712);
      v28 = *(v4 + 1728);
      v29 = *(v4 + 1744);
      v30 = *(v4 + 1760);
      v31 = *(v4 + 1776);
      v32 = *(v4 + 1792);
      v33 = *(v4 + 1808);
      v34 = *(v4 + 1824);
      v35 = *(v4 + 1840);
      v36 = *(v4 + 1856);
      v37 = *(v4 + 1872);
      v38 = *(v4 + 1888);
      goto LABEL_10;
    }

    sub_1B16067F8(v4);
  }

  v7 = 0;
  v8 = 0uLL;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v119 = 0u;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
  v33 = 0uLL;
  v34 = 0uLL;
  v35 = 0uLL;
  v36 = 0uLL;
  v37 = 0uLL;
  v38 = 0uLL;
LABEL_10:
  *(v4 + 1920) = v127;
  *(v4 + 1936) = v126;
  *(v4 + 1952) = v125;
  *(v4 + 1968) = v124;
  *(v4 + 1984) = v123;
  *(v4 + 2000) = v122;
  *(v4 + 2016) = v121;
  *(v4 + 2032) = v120;
  *(v4 + 2048) = v119;
  *(v4 + 2064) = v118;
  *(v4 + 2080) = v117;
  *(v4 + 2096) = v116;
  *(v4 + 2112) = v115;
  *(v4 + 2128) = v114;
  *(v4 + 2144) = v113;
  *(v4 + 2160) = v112;
  *(v4 + 2176) = v111;
  *(v4 + 2192) = v110;
  *(v4 + 2208) = v109;
  *(v4 + 2224) = v108;
  *(v4 + 2240) = v107;
  *(v4 + 2256) = v106;
  *(v4 + 2272) = v105;
  *(v4 + 2288) = v104;
  *(v4 + 2304) = v103;
  *(v4 + 2320) = v102;
  *(v4 + 2336) = v101;
  *(v4 + 2352) = v100;
  *(v4 + 2368) = v99;
  *(v4 + 2384) = v98;
  *(v4 + 2400) = v97;
  *(v4 + 2416) = v96;
  *(v4 + 2432) = v95;
  *(v4 + 2448) = v94;
  *(v4 + 2464) = v93;
  *(v4 + 2480) = v92;
  *(v4 + 2496) = v91;
  *(v4 + 2512) = v90;
  *(v4 + 2528) = v89;
  *(v4 + 2544) = v88;
  *(v4 + 2560) = v87;
  *(v4 + 2576) = v86;
  *(v4 + 2592) = v85;
  *(v4 + 2608) = v84;
  *(v4 + 2624) = v83;
  *(v4 + 2640) = v82;
  *(v4 + 2656) = v81;
  *(v4 + 2672) = v80;
  *(v4 + 2688) = v79;
  *(v4 + 2704) = v78;
  *(v4 + 2720) = v77;
  *(v4 + 2736) = v76;
  *(v4 + 2752) = v75;
  *(v4 + 2768) = v74;
  *(v4 + 2784) = v73;
  *(v4 + 2800) = v72;
  *(v4 + 2816) = v71;
  *(v4 + 2832) = v70;
  *(v4 + 2848) = v69;
  *(v4 + 2864) = v68;
  *(v4 + 2880) = v67;
  *(v4 + 2896) = v66;
  *(v4 + 2912) = v65;
  *(v4 + 2928) = v64;
  *(v4 + 2944) = v63;
  *(v4 + 2960) = v62;
  *(v4 + 2976) = v61;
  *(v4 + 2992) = v60;
  *(v4 + 3008) = v59;
  *(v4 + 3024) = v58;
  *(v4 + 3040) = v57;
  *(v4 + 3056) = v56;
  *(v4 + 3072) = v55;
  *(v4 + 3088) = v54;
  *(v4 + 3104) = v53;
  *(v4 + 3120) = v52;
  *(v4 + 3136) = v51;
  *(v4 + 3152) = v50;
  *(v4 + 3168) = v49;
  *(v4 + 3184) = v48;
  *(v4 + 3200) = v47;
  *(v4 + 3216) = v46;
  *(v4 + 3232) = v45;
  *(v4 + 3248) = v44;
  *(v4 + 3264) = v43;
  *(v4 + 3280) = v42;
  *(v4 + 3296) = v41;
  *(v4 + 3312) = v40;
  *(v4 + 3328) = v9;
  *(v4 + 3344) = v10;
  *(v4 + 3360) = v11;
  *(v4 + 3376) = v12;
  *(v4 + 3392) = v13;
  *(v4 + 3408) = v14;
  *(v4 + 3424) = v15;
  *(v4 + 3440) = v16;
  *(v4 + 3456) = v8;
  *(v4 + 3472) = v17;
  *(v4 + 3488) = v18;
  *(v4 + 3504) = v19;
  *(v4 + 3520) = v20;
  *(v4 + 3536) = v21;
  *(v4 + 3552) = v22;
  *(v4 + 3568) = v23;
  *(v4 + 3584) = v24;
  *(v4 + 3600) = v25;
  *(v4 + 3616) = v26;
  *(v4 + 3632) = v27;
  *(v4 + 3648) = v28;
  *(v4 + 3664) = v29;
  *(v4 + 3680) = v30;
  *(v4 + 3696) = v31;
  *(v4 + 3712) = v32;
  *(v4 + 3728) = v33;
  *(v4 + 3744) = v34;
  *(v4 + 3760) = v35;
  *(v4 + 3776) = v36;
  *(v4 + 3792) = v37;
  *(v4 + 3808) = v38;
  *(v4 + 3824) = v7;
  return sub_1B1603618;
}

void sub_1B1603618(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1B15C37C0(v2 + 1920, v2, &qword_1EB752B28);
    ICRIconLayer.finalizedIcon.setter(v2);
    sub_1B15C1750(v2 + 1920, &qword_1EB752B28);
  }

  else
  {
    ICRIconLayer.finalizedIcon.setter(v2 + 1920);
  }

  free(v2);
}

uint64_t ICRIconLayer.iconAppearance.getter()
{
  v1 = OBJC_IVAR___ICRIconLayer_iconAppearance;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ICRIconLayer.iconAppearance.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ICRIconLayer_iconAppearance;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double ICRIconLayer.lightAngle.getter()
{
  v1 = (*(v0 + OBJC_IVAR___ICRIconLayer_iconLayer) + OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig);
  v12[0] = *v1;
  v2 = v1[4];
  v4 = v1[1];
  v3 = v1[2];
  v12[3] = v1[3];
  v12[4] = v2;
  v12[1] = v4;
  v12[2] = v3;
  v10 = v1[3];
  v11 = v1[4];
  v8 = v1[1];
  v9 = v1[2];
  v7 = *v1;
  sub_1B15F354C(v12, v13);
  v5 = GlobalConfiguration.lightAngle.getter();
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v11;
  v13[0] = v7;
  v13[1] = v8;
  sub_1B15FA510(v13);
  return v5;
}

void ICRIconLayer.lightAngle.setter(double a1)
{
  v2 = *(v1 + OBJC_IVAR___ICRIconLayer_iconLayer);
  v3 = &v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v14[0] = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v4 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 64];
  v6 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 16];
  v5 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 32];
  v14[3] = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 48];
  v14[4] = v4;
  v14[1] = v6;
  v14[2] = v5;
  v11 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 32];
  v12 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 64];
  v16 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 48];
  v17 = v12;
  v15 = v11;
  v7 = __sincos_stret(a1);
  v8 = *(v3 + 1);
  v18[2] = v11;
  v18[3] = v16;
  v18[4] = v12;
  v18[0] = *v3;
  v18[1] = v8;
  *v3 = *&v14[0];
  *(v3 + 8) = v7;
  *(v3 + 3) = 0;
  v9 = v17;
  *(v3 + 3) = v16;
  *(v3 + 4) = v9;
  *(v3 + 2) = v15;
  sub_1B15F354C(v14, v13);
  v10 = v2;
  sub_1B15FA510(v18);
  [v10 setNeedsDisplay];
}

uint64_t ICRIconLayer.globalConfig.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = (*(v1 + OBJC_IVAR___ICRIconLayer_iconLayer) + OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig);
  v12[0] = *v2;
  v3 = v2[4];
  v5 = v2[1];
  v4 = v2[2];
  v12[3] = v2[3];
  v12[4] = v3;
  v12[1] = v5;
  v12[2] = v4;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[4];
  a1[3] = v2[3];
  a1[4] = v8;
  v9 = v2[2];
  a1[1] = v7;
  a1[2] = v9;
  *a1 = v6;
  return sub_1B15F354C(v12, &v11);
}

void ICRIconLayer.globalConfig.setter(_OWORD *a1)
{
  v2 = *(v1 + OBJC_IVAR___ICRIconLayer_iconLayer);
  v3 = &v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v10 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v4 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 64];
  v6 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 16];
  v5 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 32];
  v13 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 48];
  v14 = v4;
  v11 = v6;
  v12 = v5;
  v7 = a1[4];
  *(v3 + 3) = a1[3];
  *(v3 + 4) = v7;
  v8 = a1[2];
  *(v3 + 1) = a1[1];
  *(v3 + 2) = v8;
  *v3 = *a1;
  v9 = v2;
  sub_1B15FA510(&v10);
  [v9 setNeedsDisplay];
}

double ICRIconLayer.lightAngles.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICRIconLayer_iconLayer) + OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig;
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = asin(*(v1 + 24));
  atan2(v2, v3);
  return v4;
}

void ICRIconLayer.lightAngles.setter(double a1, double a2)
{
  v4 = *(v2 + OBJC_IVAR___ICRIconLayer_iconLayer);
  v5 = &v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v17[0] = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v6 = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 64];
  v8 = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 16];
  v7 = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 32];
  v17[3] = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 48];
  v17[4] = v6;
  v17[1] = v8;
  v17[2] = v7;
  v14 = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 32];
  v15 = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 64];
  v19 = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 48];
  v20 = v15;
  v18 = v14;
  v9 = __sincos_stret(a2);
  v10 = __sincos_stret(a1);
  v11 = *(v5 + 1);
  v21[2] = v14;
  v21[3] = v19;
  v21[4] = v15;
  v21[0] = *v5;
  v21[1] = v11;
  *v5 = *&v17[0];
  *(v5 + 1) = v10.__cosval * v9.__sinval;
  *(v5 + 2) = v10.__cosval * v9.__cosval;
  *(v5 + 3) = *&v10.__sinval;
  v12 = v20;
  *(v5 + 3) = v19;
  *(v5 + 4) = v12;
  *(v5 + 2) = v18;
  sub_1B15F354C(v17, v16);
  v13 = v4;
  sub_1B15FA510(v21);
  [v13 setNeedsDisplay];
}

void ICRIconLayer.lightIntensity.setter(double a1)
{
  v2 = *(v1 + OBJC_IVAR___ICRIconLayer_iconLayer);
  v3 = &v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v18[0] = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v4 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 64];
  v6 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 16];
  v5 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 32];
  v18[3] = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 48];
  v18[4] = v4;
  v18[1] = v6;
  v18[2] = v5;
  v7 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 8];
  v8 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 24];
  v9 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 40];
  v10 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 56];
  v23 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 72];
  v21 = v9;
  v22 = v10;
  v19 = v7;
  v20 = v8;
  v24[0] = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v11 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 16];
  v12 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 32];
  v13 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 64];
  v24[3] = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 48];
  v24[4] = v13;
  v24[1] = v11;
  v24[2] = v12;
  *v3 = a1;
  v14 = v20;
  *(v3 + 8) = v19;
  v15 = v21;
  *(v3 + 56) = v22;
  *(v3 + 40) = v15;
  *(v3 + 24) = v14;
  *(v3 + 9) = v23;
  sub_1B15F354C(v18, &v17);
  v16 = v2;
  sub_1B15FA510(v24);
  [v16 setNeedsDisplay];
}

void ICRIconLayer.lightDirection.setter(double a1, double a2, double a3)
{
  v4 = *(v3 + OBJC_IVAR___ICRIconLayer_iconLayer);
  v5 = &v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v14[0] = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v6 = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 64];
  v8 = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 16];
  v7 = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 32];
  v14[3] = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 48];
  v14[4] = v6;
  v14[1] = v8;
  v14[2] = v7;
  v9 = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 64];
  v16 = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 48];
  v17 = v9;
  v10 = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 16];
  v15 = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 32];
  v18[2] = v15;
  v18[3] = v16;
  v18[4] = v9;
  v18[0] = *&v4[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v18[1] = v10;
  *v5 = *v14;
  v5[1] = a1;
  v5[2] = a2;
  v5[3] = a3;
  v11 = v17;
  *(v5 + 3) = v16;
  *(v5 + 4) = v11;
  *(v5 + 2) = v15;
  sub_1B15F354C(v14, &v13);
  v12 = v4;
  sub_1B15FA510(v18);
  [v12 setNeedsDisplay];
}

void ICRIconLayer.drawMitigatedVersion.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR___ICRIconLayer_iconLayer);
  v3 = &v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v19[0] = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v4 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 64];
  v6 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 16];
  v5 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 32];
  v19[3] = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 48];
  v19[4] = v4;
  v19[1] = v6;
  v19[2] = v5;
  v7 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v8 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 16];
  v24 = v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 32];
  v9 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v22 = v7;
  v23 = v8;
  v10 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 34];
  v11 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 50];
  *(v21 + 14) = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 64];
  v20 = v10;
  v21[0] = v11;
  v25[0] = v9;
  v12 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 16];
  v13 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 32];
  v14 = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 64];
  v25[3] = *&v2[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 48];
  v25[4] = v14;
  v25[1] = v12;
  v25[2] = v13;
  v3[32] = v24;
  v15 = v23;
  *v3 = v22;
  *(v3 + 1) = v15;
  v3[33] = a1;
  v16 = v20;
  *(v3 + 50) = v21[0];
  *(v3 + 34) = v16;
  *(v3 + 4) = *(v21 + 14);
  sub_1B15F354C(v19, &v18);
  v17 = v2;
  sub_1B15FA510(v25);
  [v17 setNeedsDisplay];
}

void sub_1B1604148(__int128 *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[4];
  v5 = a1[2];
  v17 = a1[3];
  v18 = v4;
  v7 = *a1;
  v6 = a1[1];
  v16[0] = v2;
  v16[1] = v6;
  v16[2] = v5;
  v8 = *(*a2 + OBJC_IVAR___ICRIconLayer_iconLayer);
  v9 = &v8[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v19[0] = *&v8[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v10 = *&v8[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 64];
  v12 = *&v8[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 16];
  v11 = *&v8[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 32];
  v19[3] = *&v8[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 48];
  v19[4] = v10;
  v19[1] = v12;
  v19[2] = v11;
  v13 = a1[4];
  *(v9 + 3) = v17;
  *(v9 + 4) = v13;
  *(v9 + 1) = v3;
  *(v9 + 2) = v5;
  *v9 = v7;
  sub_1B15F354C(v16, &v15);
  v14 = v8;
  sub_1B15FA510(v19);
  [v14 setNeedsDisplay];
}

void (*ICRIconLayer.globalConfig.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1F0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___ICRIconLayer_iconLayer;
  *(v3 + 480) = v1;
  *(v3 + 488) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig);
  *v3 = *v6;
  v7 = v6[1];
  v8 = v6[2];
  v9 = v6[4];
  *(v3 + 48) = v6[3];
  *(v3 + 64) = v9;
  *(v3 + 16) = v7;
  *(v3 + 32) = v8;
  memmove((v3 + 80), v6, 0x50uLL);
  sub_1B15F354C(v4, v4 + 160);
  return sub_1B16042B8;
}

void sub_1B16042B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 480);
    v3 = *(v2 + 488);
    v5 = *(v2 + 128);
    *(v2 + 352) = *(v2 + 112);
    *(v2 + 368) = v5;
    *(v2 + 384) = *(v2 + 144);
    v6 = *(v2 + 96);
    *(v2 + 320) = *(v2 + 80);
    *(v2 + 336) = v6;
    v7 = *(v4 + v3);
    v8 = &v7[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
    v10 = *&v7[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 48];
    v9 = *&v7[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 64];
    v11 = *&v7[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 32];
    *(v2 + 256) = *&v7[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 16];
    *(v2 + 272) = v11;
    *(v2 + 288) = v10;
    *(v2 + 304) = v9;
    *(v2 + 240) = *v8;
    memmove(v8, (v2 + 80), 0x50uLL);
    sub_1B15F354C(v2 + 320, v2 + 400);
    v12 = v7;
    sub_1B15FA510(v2 + 240);
    [v12 setNeedsDisplay];

    v13 = *(v2 + 128);
    *(v2 + 192) = *(v2 + 112);
    *(v2 + 208) = v13;
    *(v2 + 224) = *(v2 + 144);
    v14 = *(v2 + 96);
    *(v2 + 160) = *(v2 + 80);
    *(v2 + 176) = v14;
    sub_1B15FA510(v2 + 160);
  }

  else
  {
    v15 = *(*(v2 + 480) + *(v2 + 488));
    v16 = &v15[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
    *(v2 + 160) = *&v15[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
    v17 = *(v16 + 4);
    v19 = *(v16 + 1);
    v18 = *(v16 + 2);
    *(v2 + 208) = *(v16 + 3);
    *(v2 + 224) = v17;
    *(v2 + 176) = v19;
    *(v2 + 192) = v18;
    memmove(v16, (v2 + 80), 0x50uLL);
    v20 = v15;
    sub_1B15FA510(v2 + 160);
    [v20 setNeedsDisplay];
  }

  free(v2);
}

uint64_t ICRIconLayer.renderingParameters.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___ICRIconLayer_iconLayer);
  memcpy(__dst, (v3 + OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters), 0x653uLL);
  memcpy(a1, (v3 + OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters), 0x653uLL);
  return sub_1B15C37C0(__dst, &v5, &qword_1EB752A78);
}

uint64_t sub_1B1604470(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  memcpy(__dst, v3, 0x653uLL);
  v5 = *(*v2 + OBJC_IVAR___ICRIconLayer_iconLayer);
  memcpy(v10, &v5[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters], 0x653uLL);
  memcpy(&v5[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters], v4, 0x653uLL);
  sub_1B15C37C0(__dst, v8, &qword_1EB752A78);
  v6 = v5;
  sub_1B15C1750(v10, &qword_1EB752A78);
  [v6 setNeedsDisplay];

  return sub_1B15C2EEC();
}

uint64_t ICRIconLayer.renderingParameters.setter(const void *a1)
{
  v3 = *(v1 + OBJC_IVAR___ICRIconLayer_iconLayer);
  memcpy(v6, &v3[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters], 0x653uLL);
  memcpy(&v3[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters], a1, 0x653uLL);
  v4 = v3;
  sub_1B15C1750(v6, &qword_1EB752A78);
  [v4 setNeedsDisplay];

  return sub_1B15C2EEC();
}

void (*ICRIconLayer.renderingParameters.modify(void *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x2620uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[1218] = v1;
  v5 = OBJC_IVAR___ICRIconLayer_iconLayer;
  v3[1219] = OBJC_IVAR___ICRIconLayer_iconLayer;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters;
  memcpy(v3, (v6 + OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters), 0x653uLL);
  memmove((v4 + 1624), (v6 + v7), 0x653uLL);
  sub_1B15C37C0(v4, v4 + 3248, &qword_1EB752A78);
  return sub_1B16046C0;
}

void sub_1B16046C0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[1219];
    v4 = v2[1218];
    memcpy(v2 + 812, v2 + 203, 0x653uLL);
    v5 = *(v4 + v3);
    v6 = OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters;
    memcpy(v2 + 609, &v5[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters], 0x653uLL);
    memmove(&v5[v6], v2 + 203, 0x653uLL);
    sub_1B15C37C0((v2 + 812), (v2 + 1015), &qword_1EB752A78);
    v7 = v5;
    sub_1B15C1750((v2 + 609), &qword_1EB752A78);
    [v7 setNeedsDisplay];

    sub_1B15C2EEC();
    memcpy(v2 + 406, v2 + 203, 0x653uLL);
    sub_1B15C1750((v2 + 406), &qword_1EB752A78);
  }

  else
  {
    v8 = *(v2[1218] + v2[1219]);
    v9 = OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters;
    memcpy(v2 + 406, &v8[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters], 0x653uLL);
    memmove(&v8[v9], v2 + 203, 0x653uLL);
    v10 = v8;
    sub_1B15C1750((v2 + 406), &qword_1EB752A78);
    [v10 setNeedsDisplay];

    sub_1B15C2EEC();
  }

  free(v2);
}

__n128 ICRIconLayer.iconStyle.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR___ICRIconLayer__iconStyle);
  v3 = *(v1 + OBJC_IVAR___ICRIconLayer__iconStyle + 16);
  *a1 = *(v1 + OBJC_IVAR___ICRIconLayer__iconStyle);
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  *(a1 + 48) = v2[3].n128_u16[0];
  return result;
}

uint64_t ICRIconLayer.iconStyle.setter(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR___ICRIconLayer__iconStyle;
  v3 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v3;
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 48) = *(a1 + 48);
  return sub_1B15C2EEC();
}

void (*ICRIconLayer.iconStyle.modify(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___ICRIconLayer__iconStyle;
  *(v3 + 56) = v1;
  *(v3 + 64) = v4;
  v5 = (v1 + v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *(v3 + 48) = *(v5 + 24);
  *(v3 + 16) = v7;
  *(v3 + 32) = v8;
  *v3 = v6;
  return sub_1B160491C;
}

void sub_1B160491C(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 7) + *(*a1 + 8);
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  *(v2 + 48) = *(*a1 + 24);
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  *v2 = v5;
  sub_1B15C2EEC();

  free(v1);
}

uint64_t ICRIconLayer.displayScaleOverride.getter()
{
  v1 = v0 + OBJC_IVAR___ICRIconLayer_displayScaleOverride;
  swift_beginAccess();
  return *v1;
}

id ICRIconLayer.displayScaleOverride.setter(uint64_t a1, char a2)
{
  v5 = &v2[OBJC_IVAR___ICRIconLayer_displayScaleOverride];
  swift_beginAccess();
  *v5 = a1;
  v5[8] = a2 & 1;
  return [v2 setNeedsLayout];
}

id (*ICRIconLayer.displayScaleOverride.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B1604A94;
}

id sub_1B1604A94(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

id sub_1B1604AE8@<X0>(void *a1@<X8>)
{
  v3 = &v1[OBJC_IVAR___ICRIconLayer_displayScaleOverride];
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[8];
  [v1 bounds];
  if (v5)
  {
    v10 = v8;
    v11 = v9;
    result = [v1 contentsScale];
    v14 = ceil(v13);
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v14 > -9.22337204e18)
      {
        if (v14 < 9.22337204e18)
        {
          return FinalizedIcon.ScaledSize.init(points:scale:)(__PAIR128__(v11, v10), v14);
        }

        goto LABEL_17;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  Width = CGRectGetWidth(*&v6);
  result = [v1 contentsScale];
  v17 = Width * v16;
  if (COERCE__INT64(fabs(Width * v16)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v1 bounds];
  Height = CGRectGetHeight(v21);
  result = [v1 contentsScale];
  v20 = Height * v19;
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v20 < 9.22337204e18)
  {
    *a1 = v17;
    a1[1] = v20;
    a1[2] = v4;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

void *ICRIconLayer.device.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICRIconLayer__device);
  v2 = v1;
  return v1;
}

uint64_t sub_1B1604CE4(void **a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR___ICRIconLayer__device);
  *(*a2 + OBJC_IVAR___ICRIconLayer__device) = *a1;
  v4 = v2;

  return sub_1B15C2EEC();
}

void ICRIconLayer.device.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___ICRIconLayer__device);
  *(v1 + OBJC_IVAR___ICRIconLayer__device) = a1;
  v3 = a1;

  sub_1B15C2EEC();
}

void (*ICRIconLayer.device.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR___ICRIconLayer__device;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_1B1604DD4;
}

void sub_1B1604DD4(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *a1;
  v6 = *(v4 + v3);
  *(v4 + v3) = *a1;
  v7 = v5;
  v9 = v7;
  if (a2)
  {
    v8 = v7;

    sub_1B15C2EEC();
  }

  else
  {

    sub_1B15C2EEC();
  }
}

id ICRIconLayer.init(icon:deviceClass:appearance:renderingMode:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIcon:a1 deviceClass:a2 appearance:a3 renderingMode:a4];

  return v6;
}

{
  v7 = [v4 initWithDeviceClass:a2 appearance:a3 renderingMode:a4];
  [v7 setIcon_];

  return v7;
}

id ICRIconLayer.init(deviceClass:appearance:renderingMode:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDeviceClass:a1 appearance:a2 renderingMode:a3];

  return v4;
}

{
  v4 = sub_1B16069CC(a1, a2, a3);

  return v4;
}

id ICRIconLayer.init(icon:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIcon_];

  return v2;
}

{
  *&v1[OBJC_IVAR___ICRIconLayer_iconAppearance] = 0;
  v3 = &v1[OBJC_IVAR___ICRIconLayer_displayScaleOverride];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR___ICRIconLayer_displayedIcon];
  bzero(&v1[OBJC_IVAR___ICRIconLayer_displayedIcon], 0x778uLL);
  v4[1912] = -1;
  v5 = OBJC_IVAR___ICRIconLayer_iconLayer;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for ICRIconRenderingLayer()) init];
  v6 = OBJC_IVAR___ICRIconLayer__device;
  *&v1[v6] = [objc_opt_self() sharedDefaultDevice];
  if (qword_1EB752610 != -1)
  {
    swift_once();
  }

  v7 = &v1[OBJC_IVAR___ICRIconLayer__iconStyle];
  v9 = xmmword_1EB757B00;
  v8 = xmmword_1EB757B10;
  v10 = xmmword_1EB757AF0;
  *(v7 + 24) = word_1EB757B20;
  *(v7 + 1) = v9;
  *(v7 + 2) = v8;
  *v7 = v10;
  v13.receiver = v1;
  v13.super_class = ICRIconLayer;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v11 setIcon_];

  return v11;
}

id ICRIconLayer.init(finalizedIcon:)(void *a1)
{
  v2 = sub_1B1606B20(a1);

  return v2;
}

id ICRIconLayer.init(layer:)(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = [v2 initWithLayer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t ICRIconLayer.init(layer:)(void *a1)
{
  *&v1[OBJC_IVAR___ICRIconLayer_iconAppearance] = 0;
  v3 = &v1[OBJC_IVAR___ICRIconLayer_displayScaleOverride];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR___ICRIconLayer_displayedIcon];
  bzero(&v1[OBJC_IVAR___ICRIconLayer_displayedIcon], 0x778uLL);
  *(v4 + 1912) = -1;
  v5 = OBJC_IVAR___ICRIconLayer_iconLayer;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for ICRIconRenderingLayer()) init];
  v6 = OBJC_IVAR___ICRIconLayer__device;
  *&v1[v6] = [objc_opt_self() sharedDefaultDevice];
  v7 = sub_1B15C10F0(a1, v20);
  type metadata accessor for ICRIconLayer(v7);
  if (swift_dynamicCast())
  {
    v8 = v19;
    v9 = OBJC_IVAR___ICRIconLayer_displayedIcon;
    swift_beginAccess();
    sub_1B15C37C0(&v19[v9], v18, &qword_1EB752F20);
    swift_beginAccess();
    sub_1B1606EFC(v18, v4, &qword_1EB752F20);
    swift_endAccess();
    v10 = &v1[OBJC_IVAR___ICRIconLayer__iconStyle];
    v12 = *&v8[OBJC_IVAR___ICRIconLayer__iconStyle + 16];
    v11 = *&v8[OBJC_IVAR___ICRIconLayer__iconStyle + 32];
    v13 = *&v8[OBJC_IVAR___ICRIconLayer__iconStyle];
    *(v10 + 24) = *&v8[OBJC_IVAR___ICRIconLayer__iconStyle + 48];
    *(v10 + 1) = v12;
    *(v10 + 2) = v11;
    *v10 = v13;
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v14 = sub_1B161A438();
    v17.receiver = v1;
    v17.super_class = ICRIconLayer;
    v15 = objc_msgSendSuper2(&v17, sel_initWithLayer_, v14);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v15;
  }

  else
  {
    result = sub_1B161A288();
    __break(1u);
  }

  return result;
}