unint64_t sub_214650EB4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 64;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21407B7AC;
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

unint64_t sub_214651068@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 3;
  *(v5 + 24) = 0;
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

unint64_t sub_2146511B4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 64;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21407B7AC;
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

uint64_t CSDMHandle.$genericHandle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 CSDMHandle.$genericHandle.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t CSDMHandle.$phoneNumber.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 CSDMHandle.$phoneNumber.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[3].n128_u64[1];
  v7 = v1[4].n128_i64[0];
  v8 = v1[4].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

uint64_t CSDMHandle.$emailAddress.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 CSDMHandle.$emailAddress.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 88) = *a1;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  return result;
}

uint64_t CSDMHandle.$isoCountryCode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 CSDMHandle.$isoCountryCode.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[8].n128_u64[1];
  v7 = v1[9].n128_i64[0];
  v8 = v1[9].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[8] = *a1;
  v1[9].n128_u64[0] = v3;
  v1[9].n128_u64[1] = v4;
  v1[10].n128_u8[0] = v5;
  return result;
}

uint64_t CSDMHandle.$siriDisplayName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  *a1 = *(v1 + 168);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 CSDMHandle.$siriDisplayName.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 176);
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 168) = *a1;
  *(v1 + 184) = v3;
  *(v1 + 192) = v4;
  *(v1 + 200) = v5;
  return result;
}

uint64_t CSDMHandle.genericHandle.getter()
{
  if (*(v0 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);

    return v1;
  }

  return result;
}

uint64_t CSDMHandle.phoneNumber.getter()
{
  if (*(v0 + 72) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 64);

    return v1;
  }

  return result;
}

uint64_t CSDMHandle.emailAddress.getter()
{
  if (*(v0 + 112) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 104);

    return v1;
  }

  return result;
}

uint64_t CSDMHandle.isoCountryCode.getter()
{
  if (*(v0 + 152) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 144);

    return v1;
  }

  return result;
}

uint64_t CSDMHandle.siriDisplayName.getter()
{
  if (*(v0 + 192) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 184);

    return v1;
  }

  return result;
}

unint64_t sub_214651940@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 64;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
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

uint64_t sub_214651A8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  v4 = *(v1 + 240);
  v5 = *(v1 + 248);
  *a1 = *(v1 + 216);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214651AE4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 224);
  v7 = *(v1 + 232);
  v8 = *(v1 + 240);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 216) = *a1;
  *(v1 + 232) = v3;
  *(v1 + 240) = v4;
  *(v1 + 248) = v5;
  return result;
}

uint64_t sub_214651B4C()
{
  if (*(v0 + 240) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 232);

    return v1;
  }

  return result;
}

uint64_t sub_214651C34@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214651C8C(__n128 *a1)
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

uint64_t sub_214651CF4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214651D4C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_214651DB4()
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

uint64_t sub_214651E34()
{
  if (*(v0 + 80) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 72);

    return v1;
  }

  return result;
}

uint64_t sub_214651EE8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 336);
  v3 = *(v1 + 344);
  v4 = *(v1 + 352);
  v5 = *(v1 + 360);
  *a1 = *(v1 + 328);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214651F40(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 336);
  v7 = *(v1 + 344);
  v8 = *(v1 + 352);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 328) = *a1;
  *(v1 + 344) = v3;
  *(v1 + 352) = v4;
  *(v1 + 360) = v5;
  return result;
}

uint64_t sub_214651FAC()
{
  if (*(v0 + 352) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 344);

    return v1;
  }

  return result;
}

unint64_t sub_21465202C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 256;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21407B7AC;
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

unint64_t sub_214652178@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 256;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
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

uint64_t sub_2146522C4@<X0>(uint64_t a1@<X8>)
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

__n128 sub_21465231C(__n128 *a1)
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

uint64_t sub_214652384@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2146523DC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_214652444()
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

uint64_t sub_2146524C4()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

unint64_t sub_214652544@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 256;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
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

unint64_t sub_214652690@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 256;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
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

uint64_t sub_2146527DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214652834(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  return result;
}

uint64_t sub_21465289C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2146528F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[4].n128_u64[1];
  v7 = v1[5].n128_i64[0];
  v8 = v1[5].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u64[0] = v3;
  v1[5].n128_u64[1] = v4;
  v1[6].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21465295C()
{
  if (*(v0 + 48) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 40);

    return v1;
  }

  return result;
}

uint64_t sub_2146529DC()
{
  if (*(v0 + 88) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 80);

    return v1;
  }

  return result;
}

unint64_t sub_214652A5C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 256;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21407B7AC;
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
  sub_214042A28(inited, a1);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2146E9BF0;
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = 256;
  *(v12 + 24) = 0;
  *(v11 + 16) = sub_21438F518;
  *(v11 + 24) = v12;
  *(v10 + 32) = v11;
  v13 = sub_2142E0070(v10);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v14 + 16) = sub_214032610;
  *(v14 + 24) = v15;
  *(v9 + 32) = v14;
  sub_214042A28(v9, a1 + 40);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = 256;
  *(v19 + 24) = 0;
  *(v18 + 16) = sub_21438F518;
  *(v18 + 24) = v19;
  *(v17 + 32) = v18;
  v20 = sub_2142E0070(v17);
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v21 + 16) = sub_214032610;
  *(v21 + 24) = v22;
  *(v16 + 32) = v21;
  sub_214042A28(v16, a1 + 80);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_2146E9BF0;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_2146E9BF0;
  v25 = swift_allocObject();
  v26 = swift_allocObject();
  *(v26 + 16) = 256;
  *(v26 + 24) = 0;
  *(v25 + 16) = sub_21438F518;
  *(v25 + 24) = v26;
  *(v24 + 32) = v25;
  v27 = sub_2142E0070(v24);
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v28 + 16) = sub_214032610;
  *(v28 + 24) = v29;
  *(v23 + 32) = v28;
  return sub_214042A28(v23, a1 + 120);
}

uint64_t sub_214652E5C@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214652EB4(__n128 *a1)
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

uint64_t sub_214652F1C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214652F74(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_214652FDC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214653034(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[5].n128_u64[1];
  v7 = v1[6].n128_i64[0];
  v8 = v1[6].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21465309C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2146530F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = *(v1 + 144);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_21465315C()
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

uint64_t sub_2146531DC()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

uint64_t sub_21465325C()
{
  if (*(v0 + 104) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 96);

    return v1;
  }

  return result;
}

uint64_t sub_2146532DC()
{
  if (*(v0 + 144) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 136);

    return v1;
  }

  return result;
}

unint64_t sub_2146533CC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 128;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21407B7AC;
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

unint64_t sub_214653518@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 128;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21407B588;
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

unint64_t sub_2146536A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 4096;
  *(v8 + 16) = a1;
  *(v8 + 24) = v9;
  *(v7 + 32) = v8;
  v10 = sub_2142E00AC(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = a2;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_214042E28(inited, a3);
}

unint64_t sub_2146537D8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 128;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
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

uint64_t sub_214653924@<X0>(uint64_t a1@<X8>)
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

__n128 sub_21465397C(__n128 *a1)
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

uint64_t sub_2146539E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_214653A3C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_214032564(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_214653AA4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214653AFC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[5].n128_u64[1];
  v7 = v1[6].n128_i64[0];
  v8 = v1[6].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214653B64@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214653BBC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = *(v1 + 144);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_214653C24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v5 = *(v1 + 192);
  *a1 = *(v1 + 160);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_214653C7C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[10].n128_u64[1];
  v7 = v1[11].n128_i64[0];
  v8 = v1[11].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  v1[10] = *a1;
  v1[11].n128_u64[0] = v3;
  v1[11].n128_u64[1] = v4;
  v1[12].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214653CE4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 592);
  v3 = *(v1 + 600);
  v4 = *(v1 + 608);
  v5 = *(v1 + 616);
  *a1 = *(v1 + 584);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214653D44(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 592);
  v7 = *(v1 + 600);
  v8 = *(v1 + 608);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 584) = *a1;
  *(v1 + 600) = v3;
  *(v1 + 608) = v4;
  *(v1 + 616) = v5;
  return result;
}

uint64_t sub_214653DB8()
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

uint64_t sub_214653E38()
{
  v1 = *(v0 + 64);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 56);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_214653EC0()
{
  if (*(v0 + 104) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 96);

    return v1;
  }

  return result;
}

uint64_t sub_214653F40()
{
  if (*(v0 + 144) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 136);

    return v1;
  }

  return result;
}

uint64_t sub_214653FC0()
{
  v1 = *(v0 + 184);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 176);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_214654048()
{
  if (*(v0 + 608) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 600);

    return v1;
  }

  return result;
}

uint64_t sub_2146540FC@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214654154(__n128 *a1)
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

uint64_t sub_2146541BC()
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

unint64_t sub_2146542AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 1024;
  *(v8 + 16) = a1;
  *(v8 + 24) = v9;
  *(v7 + 32) = v8;
  v10 = sub_2142E00AC(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = a2;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_214042E28(inited, a3);
}

uint64_t sub_214654454@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2146544AC(__n128 *a1)
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

uint64_t sub_214654514@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_21465456C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_214032564(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2146545D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_21465462C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[5].n128_u64[1];
  v7 = v1[6].n128_i64[0];
  v8 = v1[6].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214654694@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(v1 + 176);
  *a1 = *(v1 + 144);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2146546EC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[9].n128_u64[1];
  v7 = v1[10].n128_i64[0];
  v8 = v1[10].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[9] = *a1;
  v1[10].n128_u64[0] = v3;
  v1[10].n128_u64[1] = v4;
  v1[11].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214654754()
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

uint64_t sub_2146547D4()
{
  v1 = *(v0 + 64);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 56);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21465485C()
{
  v1 = *(v0 + 104);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 96);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146548E4()
{
  if (*(v0 + 168) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 160);

    return v1;
  }

  return result;
}

unint64_t sub_2146549CC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 64;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
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

unint64_t sub_214654B18@<X0>(uint64_t a1@<X8>)
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
  *(v4 + 16) = sub_21438EDCC;
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

uint64_t sub_214654C88@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214654CE0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_u64[1];
  v7 = v1[2].n128_i64[0];
  v8 = v1[2].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u64[1] = v4;
  v1[3].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214654D48@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214654DA0(__n128 *a1)
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

uint64_t sub_214654E08@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214654E60(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = *(v1 + 144);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_214654EC8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 736);
  v3 = *(v1 + 744);
  v4 = *(v1 + 752);
  v5 = *(v1 + 760);
  *a1 = *(v1 + 728);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214654F28(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 736);
  v7 = *(v1 + 744);
  v8 = *(v1 + 752);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 728) = *a1;
  *(v1 + 744) = v3;
  *(v1 + 752) = v4;
  *(v1 + 760) = v5;
  return result;
}

uint64_t sub_214654F9C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 776);
  v3 = *(v1 + 784);
  v4 = *(v1 + 792);
  v5 = *(v1 + 800);
  *a1 = *(v1 + 768);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214654FFC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[48].n128_u64[1];
  v7 = v1[49].n128_i64[0];
  v8 = v1[49].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[48] = *a1;
  v1[49].n128_u64[0] = v3;
  v1[49].n128_u64[1] = v4;
  v1[50].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21465506C()
{
  if (*(v0 + 40) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 32);

    return v1;
  }

  return result;
}

uint64_t sub_2146550EC()
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

uint64_t sub_21465516C()
{
  if (*(v0 + 144) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 136);

    return v1;
  }

  return result;
}

uint64_t sub_2146551EC()
{
  if (*(v0 + 752) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 744);

    return v1;
  }

  return result;
}

uint64_t sub_21465526C()
{
  if (*(v0 + 792) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 784);

    return v1;
  }

  return result;
}

unint64_t sub_214655320@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 128;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21406418C;
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

uint64_t sub_2146554D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1808);
  v3 = *(v1 + 1816);
  v4 = *(v1 + 1824);
  v5 = *(v1 + 1832);
  *a1 = *(v1 + 1800);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214655534(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 1808);
  v7 = *(v1 + 1816);
  v8 = *(v1 + 1824);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 1800) = *a1;
  *(v1 + 1816) = v3;
  *(v1 + 1824) = v4;
  *(v1 + 1832) = v5;
  return result;
}

uint64_t sub_2146555A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1848);
  v3 = *(v1 + 1856);
  v4 = *(v1 + 1864);
  v5 = *(v1 + 1872);
  *a1 = *(v1 + 1840);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214655608(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[115].n128_u64[1];
  v7 = v1[116].n128_i64[0];
  v8 = v1[116].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[115] = *a1;
  v1[116].n128_u64[0] = v3;
  v1[116].n128_u64[1] = v4;
  v1[117].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214655678@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2856);
  v3 = *(v1 + 2864);
  v4 = *(v1 + 2872);
  v5 = *(v1 + 2880);
  *a1 = *(v1 + 2848);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2146556D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[178].n128_u64[1];
  v7 = v1[179].n128_i64[0];
  v8 = v1[179].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[178] = *a1;
  v1[179].n128_u64[0] = v3;
  v1[179].n128_u64[1] = v4;
  v1[180].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214655748@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2912);
  v3 = *(v1 + 2920);
  v4 = *(v1 + 2928);
  v5 = *(v1 + 2936);
  *a1 = *(v1 + 2904);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2146557A8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 2912);
  v7 = *(v1 + 2920);
  v8 = *(v1 + 2928);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 2904) = *a1;
  *(v1 + 2920) = v3;
  *(v1 + 2928) = v4;
  *(v1 + 2936) = v5;
  return result;
}

uint64_t sub_21465581C()
{
  if (*(v0 + 1824) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 1816);

    return v1;
  }

  return result;
}

uint64_t sub_21465589C()
{
  if (*(v0 + 1864) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 1856);

    return v1;
  }

  return result;
}

uint64_t sub_21465591C()
{
  if (*(v0 + 2872) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 2864);

    return v1;
  }

  return result;
}

uint64_t sub_21465599C()
{
  if (*(v0 + 2928) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 2920);

    return v1;
  }

  return result;
}

uint64_t sub_214655A50@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214655AA8(__n128 *a1)
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

uint64_t sub_214655B10()
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

BlastDoor::CSDMHandle::HandleType_optional __swiftcall CSDMHandle.HandleType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_214655BAC@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 16;
  switch(result)
  {
    case 0:
      goto LABEL_31;
    case 1:
      v2 = 1;
      goto LABEL_31;
    case 2:
      v2 = 2;
      goto LABEL_31;
    case 3:
      v2 = 3;
      goto LABEL_31;
    case 4:
      v2 = 4;
      goto LABEL_31;
    case 5:
      v2 = 5;
      goto LABEL_31;
    case 6:
      v2 = 6;
      goto LABEL_31;
    case 8:
      v2 = 7;
      goto LABEL_31;
    case 9:
      v2 = 8;
      goto LABEL_31;
    case 10:
      v2 = 9;
      goto LABEL_31;
    case 11:
      v2 = 10;
      goto LABEL_31;
    case 12:
      v2 = 11;
      goto LABEL_31;
    case 13:
      v2 = 12;
      goto LABEL_31;
    case 14:
      v2 = 13;
      goto LABEL_31;
    case 15:
      v2 = 14;
      goto LABEL_31;
    case 16:
      v2 = 15;
LABEL_31:
      v3 = v2;
      goto LABEL_32;
    case 19:
LABEL_32:
      *a2 = v3;
      break;
    case 21:
      *a2 = 17;
      break;
    case 22:
      *a2 = 18;
      break;
    case 23:
      *a2 = 19;
      break;
    case 24:
      *a2 = 20;
      break;
    case 25:
      *a2 = 21;
      break;
    case 26:
      *a2 = 22;
      break;
    case 27:
      *a2 = 23;
      break;
    case 28:
      *a2 = 24;
      break;
    case 29:
      *a2 = 25;
      break;
    case 30:
      *a2 = 26;
      break;
    case 31:
      *a2 = 27;
      break;
    case 32:
      *a2 = 28;
      break;
    case 33:
      *a2 = 29;
      break;
    case 34:
      *a2 = 30;
      break;
    case 35:
      *a2 = 31;
      break;
    case 36:
      *a2 = 32;
      break;
    case 37:
      *a2 = 33;
      break;
    default:
      *a2 = 34;
      break;
  }

  return result;
}

unint64_t sub_214655D4C@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t CSDMHandle.genericHandle.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v11 = *(v3 + 40);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 24), *(v3 + 32));

    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
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

void (*CSDMHandle.genericHandle.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  v6 = *(v1 + 32);
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

    return sub_214053CC4;
  }

  return result;
}

void (*CSDMHandle.$genericHandle.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2140540D0;
}

uint64_t CSDMHandle.phoneNumber.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v11 = *(v3 + 80);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 64), *(v3 + 72));

    *(v3 + 64) = a1;
    *(v3 + 72) = a2;
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

void (*CSDMHandle.phoneNumber.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 64);
  *(v3 + 24) = v5;
  v6 = *(v1 + 72);
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

    return sub_214054570;
  }

  return result;
}

void (*CSDMHandle.$phoneNumber.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21405497C;
}

uint64_t CSDMHandle.emailAddress.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 88);
  v7 = *(v2 + 96);
  v11 = *(v3 + 120);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 104), *(v3 + 112));

    *(v3 + 104) = a1;
    *(v3 + 112) = a2;
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

void (*CSDMHandle.emailAddress.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 104);
  *(v3 + 24) = v5;
  v6 = *(v1 + 112);
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

    return sub_214054E1C;
  }

  return result;
}

void (*CSDMHandle.$emailAddress.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  *v4 = *(v1 + 88);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214055228;
}

uint64_t CSDMHandle.isoCountryCode.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 128);
  v7 = *(v2 + 136);
  v11 = *(v3 + 160);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 144), *(v3 + 152));

    *(v3 + 144) = a1;
    *(v3 + 152) = a2;
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

void (*CSDMHandle.isoCountryCode.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 144);
  *(v3 + 24) = v5;
  v6 = *(v1 + 152);
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

    return sub_2140556C8;
  }

  return result;
}

void (*CSDMHandle.$isoCountryCode.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  *v4 = *(v1 + 128);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214055AD4;
}

uint64_t CSDMHandle.siriDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 168);
  v7 = *(v2 + 176);
  v11 = *(v3 + 200);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 184), *(v3 + 192));

    *(v3 + 184) = a1;
    *(v3 + 192) = a2;
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

void (*CSDMHandle.siriDisplayName.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 184);
  *(v3 + 24) = v5;
  v6 = *(v1 + 192);
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

    return sub_2143DF7BC;
  }

  return result;
}

void (*CSDMHandle.$siriDisplayName.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 176);
  v6 = *(v1 + 184);
  v7 = *(v1 + 192);
  v8 = *(v1 + 200);
  *v4 = *(v1 + 168);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2143DFB08;
}

uint64_t sub_214656D74(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_214656DA4@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 184);
  v16[10] = *(v1 + 168);
  v17[0] = v3;
  *(v17 + 9) = *(v1 + 193);
  v4 = *(v1 + 88);
  v5 = *(v1 + 120);
  v16[6] = *(v1 + 104);
  v16[7] = v5;
  v16[8] = *(v1 + 136);
  v16[9] = v2;
  v6 = *(v1 + 24);
  v7 = *(v1 + 56);
  v16[2] = *(v1 + 40);
  v16[3] = v7;
  v16[4] = *(v1 + 72);
  v16[5] = v4;
  v16[0] = *(v1 + 8);
  v16[1] = v6;
  v8 = *(v1 + 152);
  v9 = *(v1 + 184);
  a1[10] = *(v1 + 168);
  a1[11] = v9;
  *(a1 + 185) = *(v1 + 193);
  v10 = *(v1 + 88);
  v11 = *(v1 + 120);
  a1[6] = *(v1 + 104);
  a1[7] = v11;
  a1[8] = *(v1 + 136);
  a1[9] = v8;
  v12 = *(v1 + 24);
  v13 = *(v1 + 56);
  a1[2] = *(v1 + 40);
  a1[3] = v13;
  a1[4] = *(v1 + 72);
  a1[5] = v10;
  *a1 = *(v1 + 8);
  a1[1] = v12;
  return sub_213FB2E54(v16, &v15, &qword_27C905AD0, &unk_214759900);
}

__n128 sub_214656E88(__int128 *a1)
{
  v3 = *(v1 + 152);
  v4 = *(v1 + 184);
  v16[10] = *(v1 + 168);
  v17[0] = v4;
  *(v17 + 9) = *(v1 + 193);
  v5 = *(v1 + 88);
  v6 = *(v1 + 120);
  v16[6] = *(v1 + 104);
  v16[7] = v6;
  v16[8] = *(v1 + 136);
  v16[9] = v3;
  v7 = *(v1 + 24);
  v8 = *(v1 + 56);
  v16[2] = *(v1 + 40);
  v16[3] = v8;
  v16[4] = *(v1 + 72);
  v16[5] = v5;
  v16[0] = *(v1 + 8);
  v16[1] = v7;
  sub_213FB2DF4(v16, &qword_27C905AD0, &unk_214759900);
  v9 = a1[8];
  *(v1 + 152) = a1[9];
  v10 = a1[11];
  *(v1 + 168) = a1[10];
  *(v1 + 184) = v10;
  *(v1 + 193) = *(a1 + 185);
  v11 = a1[4];
  *(v1 + 88) = a1[5];
  v12 = a1[7];
  *(v1 + 104) = a1[6];
  *(v1 + 120) = v12;
  *(v1 + 136) = v9;
  v13 = *a1;
  *(v1 + 24) = a1[1];
  result = a1[2];
  v15 = a1[3];
  *(v1 + 40) = result;
  *(v1 + 56) = v15;
  *(v1 + 72) = v11;
  *(v1 + 8) = v13;
  return result;
}

uint64_t sub_214656F88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 240);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 232);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214656FFC(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146570AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 216);
  v7 = *(v2 + 224);
  v11 = *(v3 + 248);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 232), *(v3 + 240));

    *(v3 + 232) = a1;
    *(v3 + 240) = a2;
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

void (*sub_2146571F0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 232);
  *(v3 + 24) = v5;
  v6 = *(v1 + 240);
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

    return sub_2146572C8;
  }

  return result;
}

void sub_2146572C8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 216);
    v11 = *(v3 + 224);
    v16 = *(v3 + 248);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 232) = v5;
      *(v12 + 240) = v4;
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
  v7 = *(v3 + 216);
  v6 = *(v3 + 224);
  v16 = *(v3 + 248);
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

  *(v8 + 232) = v5;
  *(v8 + 240) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_214657498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 224);
  v3 = *(a1 + 232);
  v4 = *(a1 + 240);
  v5 = *(a1 + 248);
  *a2 = *(a1 + 216);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2146574EC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 224);
  v9 = *(a2 + 232);
  v10 = *(a2 + 240);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 216) = v4;
  *(a2 + 224) = v3;
  *(a2 + 232) = v5;
  *(a2 + 240) = v6;
  *(a2 + 248) = v7;
  return result;
}

void (*sub_214657574(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 224);
  v6 = *(v1 + 232);
  v7 = *(v1 + 240);
  v8 = *(v1 + 248);
  *v4 = *(v1 + 216);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214657614;
}

void sub_214657614(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 224);
  v9 = *(v3 + 232);
  v11 = *(v3 + 240);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 216) = v5;
    *(v3 + 224) = v4;
    *(v3 + 232) = v7;
    *(v3 + 240) = v6;
    *(v3 + 248) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 224);

    sub_213FDC6D0(v9, v11);
    *(v3 + 216) = v5;
    *(v3 + 224) = v4;
    *(v3 + 232) = v7;
    *(v3 + 240) = v6;
    *(v3 + 248) = v8;
  }

  free(v2);
}

uint64_t sub_2146576F4@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[25];
  v3 = v1[27];
  v30 = v1[26];
  v31[0] = v3;
  v4 = v1[21];
  v5 = v1[23];
  v26 = v1[22];
  v6 = v26;
  v27 = v5;
  v7 = v1[23];
  v8 = v1[25];
  v28 = v1[24];
  v9 = v28;
  v29 = v8;
  v10 = v1[17];
  v11 = v1[19];
  v22 = v1[18];
  v12 = v22;
  v23 = v11;
  v13 = v1[19];
  v14 = v1[21];
  v24 = v1[20];
  v15 = v24;
  v25 = v14;
  v16 = v1[17];
  v21[0] = v1[16];
  v17 = v21[0];
  v21[1] = v16;
  *(v31 + 9) = *(v1 + 441);
  v18 = v1[27];
  a1[10] = v30;
  a1[11] = v18;
  *(a1 + 185) = *(v1 + 441);
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v9;
  a1[9] = v2;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = v15;
  a1[5] = v4;
  *a1 = v17;
  a1[1] = v10;
  return sub_213FB2E54(v21, &v20, &qword_27C905AD0, &unk_214759900);
}

__n128 sub_2146577B0(uint64_t a1)
{
  v3 = v1[27];
  v15[10] = v1[26];
  v16[0] = v3;
  v4 = v1[23];
  v15[6] = v1[22];
  v15[7] = v4;
  v5 = v1[25];
  v15[8] = v1[24];
  v15[9] = v5;
  v6 = v1[19];
  v15[2] = v1[18];
  v15[3] = v6;
  v7 = v1[21];
  v15[4] = v1[20];
  v15[5] = v7;
  v8 = v1[17];
  v15[0] = v1[16];
  v15[1] = v8;
  *(v16 + 9) = *(v1 + 441);
  sub_213FB2DF4(v15, &qword_27C905AD0, &unk_214759900);
  v9 = *(a1 + 176);
  v1[26] = *(a1 + 160);
  v1[27] = v9;
  *(v1 + 441) = *(a1 + 185);
  v10 = *(a1 + 112);
  v1[22] = *(a1 + 96);
  v1[23] = v10;
  v11 = *(a1 + 144);
  v1[24] = *(a1 + 128);
  v1[25] = v11;
  v12 = *(a1 + 48);
  v1[18] = *(a1 + 32);
  v1[19] = v12;
  v13 = *(a1 + 80);
  v1[20] = *(a1 + 64);
  v1[21] = v13;
  result = *(a1 + 16);
  v1[16] = *a1;
  v1[17] = result;
  return result;
}

uint64_t sub_21465788C()
{
  result = *(v0 + 464);
  v2 = *(v0 + 472);
  return result;
}

uint64_t sub_214657898(uint64_t result, char a2)
{
  *(v2 + 464) = result;
  *(v2 + 472) = a2 & 1;
  return result;
}

uint64_t sub_2146578C8()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);

  return v1;
}

uint64_t sub_2146578F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 488);

  *(v2 + 480) = a1;
  *(v2 + 488) = a2;
  return result;
}

uint64_t sub_214657950(uint64_t a1, uint64_t a2)
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

void (*sub_214657A94(uint64_t *a1))(uint64_t **, char)
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

void (*sub_214657B6C(uint64_t *a1))(uint64_t **, char)
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

uint64_t sub_214657C0C()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_214657C18(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_214657C48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v11 = *(v3 + 88);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 72), *(v3 + 80));

    *(v3 + 72) = a1;
    *(v3 + 80) = a2;
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

void (*sub_214657D8C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 72);
  *(v3 + 24) = v5;
  v6 = *(v1 + 80);
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

    return sub_21447871C;
  }

  return result;
}

void (*sub_214657E64(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214478A68;
}

uint64_t sub_214657F24(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_214657F54()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t sub_214657F60(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t sub_214657F90@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 200);
  v16[10] = *(v1 + 184);
  v17[0] = v3;
  *(v17 + 9) = *(v1 + 209);
  v4 = *(v1 + 104);
  v5 = *(v1 + 136);
  v16[6] = *(v1 + 120);
  v16[7] = v5;
  v16[8] = *(v1 + 152);
  v16[9] = v2;
  v6 = *(v1 + 40);
  v7 = *(v1 + 72);
  v16[2] = *(v1 + 56);
  v16[3] = v7;
  v16[4] = *(v1 + 88);
  v16[5] = v4;
  v16[0] = *(v1 + 24);
  v16[1] = v6;
  v8 = *(v1 + 168);
  v9 = *(v1 + 200);
  a1[10] = *(v1 + 184);
  a1[11] = v9;
  *(a1 + 185) = *(v1 + 209);
  v10 = *(v1 + 104);
  v11 = *(v1 + 136);
  a1[6] = *(v1 + 120);
  a1[7] = v11;
  a1[8] = *(v1 + 152);
  a1[9] = v8;
  v12 = *(v1 + 40);
  v13 = *(v1 + 72);
  a1[2] = *(v1 + 56);
  a1[3] = v13;
  a1[4] = *(v1 + 88);
  a1[5] = v10;
  *a1 = *(v1 + 24);
  a1[1] = v12;
  return sub_213FB2E54(v16, &v15, &qword_27C905AD0, &unk_214759900);
}

__n128 sub_214658074(__int128 *a1)
{
  v3 = *(v1 + 168);
  v4 = *(v1 + 200);
  v16[10] = *(v1 + 184);
  v17[0] = v4;
  *(v17 + 9) = *(v1 + 209);
  v5 = *(v1 + 104);
  v6 = *(v1 + 136);
  v16[6] = *(v1 + 120);
  v16[7] = v6;
  v16[8] = *(v1 + 152);
  v16[9] = v3;
  v7 = *(v1 + 40);
  v8 = *(v1 + 72);
  v16[2] = *(v1 + 56);
  v16[3] = v8;
  v16[4] = *(v1 + 88);
  v16[5] = v5;
  v16[0] = *(v1 + 24);
  v16[1] = v7;
  sub_213FB2DF4(v16, &qword_27C905AD0, &unk_214759900);
  v9 = a1[8];
  *(v1 + 168) = a1[9];
  v10 = a1[11];
  *(v1 + 184) = a1[10];
  *(v1 + 200) = v10;
  *(v1 + 209) = *(a1 + 185);
  v11 = a1[4];
  *(v1 + 104) = a1[5];
  v12 = a1[7];
  *(v1 + 120) = a1[6];
  *(v1 + 136) = v12;
  *(v1 + 152) = v9;
  v13 = *a1;
  *(v1 + 40) = a1[1];
  result = a1[2];
  v15 = a1[3];
  *(v1 + 56) = result;
  *(v1 + 72) = v15;
  *(v1 + 88) = v11;
  *(v1 + 24) = v13;
  return result;
}

uint64_t sub_214658174()
{
  v1 = *(v0 + 232);
  sub_213FDCA18(v1, *(v0 + 240));
  return v1;
}

uint64_t sub_2146581A8(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 232), *(v2 + 240));
  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
  return result;
}

uint64_t sub_214658310(uint64_t result)
{
  *(v1 + 256) = result;
  *(v1 + 260) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_214658360(uint64_t result)
{
  *(v1 + 264) = result;
  *(v1 + 268) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2146584B8()
{
  v1 = *(v0 + 280);
  sub_213FDCA18(v1, *(v0 + 288));
  return v1;
}

uint64_t sub_2146584EC(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 280), *(v2 + 288));
  *(v2 + 280) = a1;
  *(v2 + 288) = a2;
  return result;
}

uint64_t sub_2146585C4(uint64_t result)
{
  *(v1 + 300) = result;
  *(v1 + 304) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_214658614(uint64_t result)
{
  *(v1 + 308) = result;
  *(v1 + 312) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2146586C4(uint64_t result)
{
  *(v1 + 316) = result;
  *(v1 + 320) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_21465875C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 328);
  v7 = *(v2 + 336);
  v11 = *(v3 + 360);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 344), *(v3 + 352));

    *(v3 + 344) = a1;
    *(v3 + 352) = a2;
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

void (*sub_2146588A0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 344);
  *(v3 + 24) = v5;
  v6 = *(v1 + 352);
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

    return sub_214492CD4;
  }

  return result;
}

void (*sub_214658978(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 336);
  v6 = *(v1 + 344);
  v7 = *(v1 + 352);
  v8 = *(v1 + 360);
  *v4 = *(v1 + 328);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214493020;
}

uint64_t sub_214658A48(uint64_t a1, uint64_t a2)
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

void (*sub_214658B8C(uint64_t *a1))(uint64_t **, char)
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

void (*sub_214658C64(uint64_t *a1))(uint64_t **, char)
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

uint64_t sub_214658D34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v11 = *(v3 + 72);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 56), *(v3 + 64));

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
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

void (*sub_214658E78(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
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

    return sub_2145DF56C;
  }

  return result;
}

uint64_t (*sub_214658F50(uint64_t *a1))()
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
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21466431C;
}

uint64_t sub_214658FF0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214659020(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2146590A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v11 = *(v3 + 56);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 40), *(v3 + 48));

    *(v3 + 40) = a1;
    *(v3 + 48) = a2;
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

void (*sub_2146591EC(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 40);
  *(v3 + 24) = v5;
  v6 = *(v1 + 48);
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

    return sub_21447C324;
  }

  return result;
}

void (*sub_2146592C4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  *v4 = *(v1 + 24);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21447C670;
}

uint64_t sub_214659364(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 64);
  v7 = *(v2 + 72);
  v11 = *(v3 + 96);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 80), *(v3 + 88));

    *(v3 + 80) = a1;
    *(v3 + 88) = a2;
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

void (*sub_2146594A8(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 80);
  *(v3 + 24) = v5;
  v6 = *(v1 + 88);
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

    return sub_2145CF55C;
  }

  return result;
}

void (*sub_214659580(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);
  *v4 = *(v1 + 64);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145CF8A8;
}

uint64_t sub_214659620()
{
  v1 = *(v0 + 104);
  sub_213FDCA18(v1, *(v0 + 112));
  return v1;
}

uint64_t sub_214659654(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 104), *(v2 + 112));
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t sub_2146596CC(uint64_t result)
{
  *(v1 + 120) = result;
  *(v1 + 124) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2146596FC@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v9 = v1[10];
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 185);
  v3 = *(v10 + 9);
  v4 = v1[9];
  v8[0] = v1[8];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_213FB2E54(v8, &v7, &qword_27C905BB0, &qword_2146F3FF0);
}

__n128 sub_214659758(uint64_t a1)
{
  v3 = v1[11];
  v7[2] = v1[10];
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 185);
  v4 = v1[9];
  v7[0] = v1[8];
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C905BB0, &qword_2146F3FF0);
  v5 = *(a1 + 48);
  v1[10] = *(a1 + 32);
  v1[11] = v5;
  *(v1 + 185) = *(a1 + 57);
  result = *(a1 + 16);
  v1[8] = *a1;
  v1[9] = result;
  return result;
}

uint64_t sub_214659838(uint64_t result)
{
  *(v1 + 204) = result;
  *(v1 + 208) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_214659868(uint64_t a1, uint64_t a2)
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

void (*sub_2146599AC(uint64_t *a1))(uint64_t **, char)
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

void (*sub_214659A84(uint64_t *a1))(uint64_t **, char)
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

uint64_t sub_214659B24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v11 = *(v3 + 72);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 56), *(v3 + 64));

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
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

void (*sub_214659C68(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
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

    return sub_2144F652C;
  }

  return result;
}

void (*sub_214659D40(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214659DE0;
}

uint64_t sub_214659E0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v11 = *(v3 + 112);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 96), *(v3 + 104));

    *(v3 + 96) = a1;
    *(v3 + 104) = a2;
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

void (*sub_214659F50(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 96);
  *(v3 + 24) = v5;
  v6 = *(v1 + 104);
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

    return sub_214664320;
  }

  return result;
}

uint64_t (*sub_21465A028(uint64_t *a1))()
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
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214664324;
}

uint64_t sub_21465A0C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 120);
  v7 = *(v2 + 128);
  v11 = *(v3 + 152);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 136), *(v3 + 144));

    *(v3 + 136) = a1;
    *(v3 + 144) = a2;
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

void (*sub_21465A20C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 136);
  *(v3 + 24) = v5;
  v6 = *(v1 + 144);
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

    return sub_214664328;
  }

  return result;
}

void (*sub_21465A2E4(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21466432C;
}

uint64_t sub_21465A384(uint64_t a1, uint64_t a2)
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

void (*sub_21465A4C8(uint64_t *a1))(uint64_t **, char)
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

void (*sub_21465A5A0(uint64_t *a1))(uint64_t **, char)
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

uint64_t sub_21465A640@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 64);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 56);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_21465A6B4(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21465A764(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_21465A830(uint64_t *a1))()
{
  a1[2] = v1;
  v2 = *(v1 + 64);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 56);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_214664330;
  }

  return result;
}

uint64_t sub_21465A8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_21465A924(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 72) = v7;
  return result;
}

uint64_t (*sub_21465A9AC(uint64_t *a1))()
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
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_214664334;
}

uint64_t sub_21465AA4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v11 = *(v3 + 112);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 96), *(v3 + 104));

    *(v3 + 96) = a1;
    *(v3 + 104) = a2;
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

void (*sub_21465AB90(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 96);
  *(v3 + 24) = v5;
  v6 = *(v1 + 104);
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

    return sub_21465AC68;
  }

  return result;
}

void (*sub_21465AC6C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21465AD0C;
}

uint64_t sub_21465AD38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 120);
  v7 = *(v2 + 128);
  v11 = *(v3 + 152);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 136), *(v3 + 144));

    *(v3 + 136) = a1;
    *(v3 + 144) = a2;
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

void (*sub_21465AE7C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 136);
  *(v3 + 24) = v5;
  v6 = *(v1 + 144);
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

    return sub_214664328;
  }

  return result;
}

void (*sub_21465AF54(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21466432C;
}

uint64_t sub_21465AFF4(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_21465B0C0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 184);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 176);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143A35D0;
  }

  return result;
}

void (*sub_21465B160(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 168);
  v6 = *(v1 + 176);
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);
  *v4 = *(v1 + 160);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143A388C;
}

uint64_t sub_21465B200@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 248);
  v13[2] = *(v1 + 232);
  v13[3] = v2;
  v3 = *(v1 + 216);
  v13[0] = *(v1 + 200);
  v13[1] = v3;
  v4 = *(v1 + 312);
  v5 = *(v1 + 280);
  v16 = *(v1 + 296);
  v17 = v4;
  v6 = *(v1 + 312);
  v18[0] = *(v1 + 328);
  *(v18 + 9) = *(v1 + 337);
  v7 = *(v1 + 280);
  v14 = *(v1 + 264);
  v8 = v14;
  v15 = v7;
  a1[6] = v16;
  a1[7] = v6;
  a1[8] = *(v1 + 328);
  *(a1 + 137) = *(v1 + 337);
  v9 = *(v1 + 248);
  a1[2] = *(v1 + 232);
  a1[3] = v9;
  a1[4] = v8;
  a1[5] = v5;
  v10 = *(v1 + 216);
  *a1 = *(v1 + 200);
  a1[1] = v10;
  return sub_213FB2E54(v13, &v12, &qword_27C905C08, &unk_2147738C0);
}

__n128 sub_21465B2B8(uint64_t a1)
{
  v3 = *(v1 + 248);
  v12[2] = *(v1 + 232);
  v12[3] = v3;
  v4 = *(v1 + 216);
  v12[0] = *(v1 + 200);
  v12[1] = v4;
  v5 = *(v1 + 312);
  v12[6] = *(v1 + 296);
  v12[7] = v5;
  v13[0] = *(v1 + 328);
  *(v13 + 9) = *(v1 + 337);
  v6 = *(v1 + 280);
  v12[4] = *(v1 + 264);
  v12[5] = v6;
  sub_213FB2DF4(v12, &qword_27C905C08, &unk_2147738C0);
  v7 = *(a1 + 112);
  *(v1 + 296) = *(a1 + 96);
  *(v1 + 312) = v7;
  *(v1 + 328) = *(a1 + 128);
  *(v1 + 337) = *(a1 + 137);
  v8 = *(a1 + 48);
  *(v1 + 232) = *(a1 + 32);
  *(v1 + 248) = v8;
  v9 = *(a1 + 80);
  *(v1 + 264) = *(a1 + 64);
  *(v1 + 280) = v9;
  result = *a1;
  v11 = *(a1 + 16);
  *(v1 + 200) = *a1;
  *(v1 + 216) = v11;
  return result;
}

uint64_t sub_21465B394@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 504);
  v3 = *(v1 + 536);
  v30 = *(v1 + 520);
  v31[0] = v3;
  *(v31 + 9) = *(v1 + 545);
  v4 = *(v1 + 440);
  v5 = *(v1 + 472);
  v26 = *(v1 + 456);
  v6 = v26;
  v27 = v5;
  v7 = *(v1 + 472);
  v8 = *(v1 + 504);
  v28 = *(v1 + 488);
  v9 = v28;
  v29 = v8;
  v10 = *(v1 + 376);
  v11 = *(v1 + 408);
  v22 = *(v1 + 392);
  v12 = v22;
  v23 = v11;
  v13 = *(v1 + 408);
  v14 = *(v1 + 440);
  v24 = *(v1 + 424);
  v15 = v24;
  v25 = v14;
  v16 = *(v1 + 376);
  v21[0] = *(v1 + 360);
  v17 = v21[0];
  v21[1] = v16;
  v18 = *(v1 + 536);
  a1[10] = v30;
  a1[11] = v18;
  *(a1 + 185) = *(v1 + 545);
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v9;
  a1[9] = v2;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = v15;
  a1[5] = v4;
  *a1 = v17;
  a1[1] = v10;
  return sub_213FB2E54(v21, &v20, &qword_27C905AD0, &unk_214759900);
}

__n128 sub_21465B450(uint64_t a1)
{
  v3 = (v1 + 360);
  v4 = v3[11];
  v16[10] = v3[10];
  v17[0] = v4;
  *(v17 + 9) = *(v3 + 185);
  v5 = v3[7];
  v16[6] = v3[6];
  v16[7] = v5;
  v6 = v3[9];
  v16[8] = v3[8];
  v16[9] = v6;
  v7 = v3[3];
  v16[2] = v3[2];
  v16[3] = v7;
  v8 = v3[5];
  v16[4] = v3[4];
  v16[5] = v8;
  v9 = v3[1];
  v16[0] = *v3;
  v16[1] = v9;
  sub_213FB2DF4(v16, &qword_27C905AD0, &unk_214759900);
  v10 = *(a1 + 176);
  v3[10] = *(a1 + 160);
  v3[11] = v10;
  *(v3 + 185) = *(a1 + 185);
  v11 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v11;
  v12 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v12;
  v13 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v13;
  v14 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v14;
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t sub_21465B524()
{
  result = *(v0 + 568);
  v2 = *(v0 + 576);
  return result;
}

uint64_t sub_21465B530(uint64_t result, char a2)
{
  *(v2 + 568) = result;
  *(v2 + 576) = a2 & 1;
  return result;
}

uint64_t sub_21465B560@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 608);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 600);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21465B5D4(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21465B684(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 584);
  v7 = *(v2 + 592);
  v11 = *(v3 + 616);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 600), *(v3 + 608));

    *(v3 + 600) = a1;
    *(v3 + 608) = a2;
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

void (*sub_21465B7D4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 600);
  *(v3 + 24) = v5;
  v6 = *(v1 + 608);
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

    return sub_21465B8AC;
  }

  return result;
}

void sub_21465B8AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 584);
    v11 = *(v3 + 592);
    v16 = *(v3 + 616);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 600) = v5;
      *(v12 + 608) = v4;
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
  v6 = *(v3 + 584);
  v7 = *(v3 + 592);
  v16 = *(v3 + 616);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v6(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 600) = v5;
  *(v8 + 608) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_21465BA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 592);
  v3 = *(a1 + 600);
  v4 = *(a1 + 608);
  v5 = *(a1 + 616);
  *a2 = *(a1 + 584);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21465BAE8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 592);
  v9 = *(a2 + 600);
  v10 = *(a2 + 608);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 584) = v4;
  *(a2 + 592) = v3;
  *(a2 + 600) = v5;
  *(a2 + 608) = v6;
  *(a2 + 616) = v7;
  return result;
}

void (*sub_21465BB7C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 592);
  v6 = *(v1 + 600);
  v7 = *(v1 + 608);
  v8 = *(v1 + 616);
  *v4 = *(v1 + 584);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21465BC24;
}

void sub_21465BC24(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 592);
  v10 = *(v3 + 600);
  v11 = *(v3 + 608);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v10, v11);
    *(v3 + 584) = v5;
    *(v3 + 592) = v4;
    *(v3 + 600) = v7;
    *(v3 + 608) = v6;
    *(v3 + 616) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 592);

    sub_213FDC6D0(v10, v11);
    *(v3 + 584) = v5;
    *(v3 + 592) = v4;
    *(v3 + 600) = v7;
    *(v3 + 608) = v6;
    *(v3 + 616) = v8;
  }

  free(v2);
}

uint64_t sub_21465BD18@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 800);
  v3 = *(v1 + 768);
  v30 = *(v1 + 784);
  v31 = v2;
  v4 = *(v1 + 800);
  v32 = *(v1 + 816);
  v5 = *(v1 + 736);
  v7 = *(v1 + 704);
  v26 = *(v1 + 720);
  v6 = v26;
  v27 = v5;
  v8 = *(v1 + 736);
  v9 = *(v1 + 768);
  v28 = *(v1 + 752);
  v10 = v28;
  v29 = v9;
  v11 = *(v1 + 672);
  v13 = *(v1 + 640);
  v22 = *(v1 + 656);
  v12 = v22;
  v23 = v11;
  v14 = *(v1 + 672);
  v15 = *(v1 + 704);
  v24 = *(v1 + 688);
  v16 = v24;
  v25 = v15;
  v17 = *(v1 + 640);
  v21[0] = *(v1 + 624);
  v18 = v21[0];
  v21[1] = v17;
  *(a1 + 160) = v30;
  *(a1 + 176) = v4;
  *(a1 + 192) = *(v1 + 816);
  *(a1 + 96) = v6;
  *(a1 + 112) = v8;
  *(a1 + 128) = v10;
  *(a1 + 144) = v3;
  *(a1 + 32) = v12;
  *(a1 + 48) = v14;
  *(a1 + 64) = v16;
  *(a1 + 80) = v7;
  v33 = *(v1 + 832);
  *(a1 + 208) = *(v1 + 832);
  *a1 = v18;
  *(a1 + 16) = v13;
  return sub_213FB2E54(v21, v20, &qword_27C905C20, &qword_2146F4020);
}

__n128 sub_21465BDDC(uint64_t a1)
{
  v3 = *(v1 + 800);
  v16[10] = *(v1 + 784);
  v16[11] = v3;
  v16[12] = *(v1 + 816);
  v17 = *(v1 + 832);
  v4 = *(v1 + 736);
  v16[6] = *(v1 + 720);
  v16[7] = v4;
  v5 = *(v1 + 768);
  v16[8] = *(v1 + 752);
  v16[9] = v5;
  v6 = *(v1 + 672);
  v16[2] = *(v1 + 656);
  v16[3] = v6;
  v7 = *(v1 + 704);
  v16[4] = *(v1 + 688);
  v16[5] = v7;
  v8 = *(v1 + 640);
  v16[0] = *(v1 + 624);
  v16[1] = v8;
  sub_213FB2DF4(v16, &qword_27C905C20, &qword_2146F4020);
  v9 = *(a1 + 176);
  *(v1 + 784) = *(a1 + 160);
  *(v1 + 800) = v9;
  *(v1 + 816) = *(a1 + 192);
  *(v1 + 832) = *(a1 + 208);
  v10 = *(a1 + 112);
  *(v1 + 720) = *(a1 + 96);
  *(v1 + 736) = v10;
  v11 = *(a1 + 144);
  *(v1 + 752) = *(a1 + 128);
  *(v1 + 768) = v11;
  v12 = *(a1 + 48);
  *(v1 + 656) = *(a1 + 32);
  *(v1 + 672) = v12;
  v13 = *(a1 + 80);
  *(v1 + 688) = *(a1 + 64);
  *(v1 + 704) = v13;
  result = *a1;
  v15 = *(a1 + 16);
  *(v1 + 624) = *a1;
  *(v1 + 640) = v15;
  return result;
}

uint64_t sub_21465BEEC()
{
  result = *(v0 + 840);
  v2 = *(v0 + 848);
  return result;
}

uint64_t sub_21465BEF8(uint64_t result, char a2)
{
  *(v2 + 840) = result;
  *(v2 + 848) = a2 & 1;
  return result;
}

uint64_t sub_21465BF28(uint64_t a1, uint64_t a2)
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

void (*sub_21465C06C(uint64_t *a1))(uint64_t **, char)
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

void (*sub_21465C144(uint64_t *a1))(uint64_t **, char)
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

uint64_t sub_21465C1E4@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 40), 0x351uLL);
  memcpy(a1, (v1 + 40), 0x351uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C905C70, &unk_214759910);
}

void *sub_21465C248(const void *a1)
{
  memcpy(v4, (v1 + 40), 0x351uLL);
  sub_213FB2DF4(v4, &qword_27C905C70, &unk_214759910);
  return memcpy((v1 + 40), a1, 0x351uLL);
}

uint64_t sub_21465C2C8()
{
  result = *(v0 + 896);
  v2 = *(v0 + 904);
  return result;
}

uint64_t sub_21465C2D4(uint64_t result, char a2)
{
  *(v2 + 896) = result;
  *(v2 + 904) = a2 & 1;
  return result;
}

uint64_t sub_21465C304(uint64_t a1, uint64_t a2)
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

void (*sub_21465C448(uint64_t *a1))(uint64_t **, char)
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

void (*sub_21465C520(uint64_t *a1))(uint64_t **, char)
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

uint64_t sub_21465C5C0(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_21465C68C(uint64_t *a1))()
{
  a1[2] = v1;
  v2 = *(v1 + 64);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 56);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_21465C72C;
  }

  return result;
}

uint64_t sub_21465C730(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

void (*sub_21465C870(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_21465C910;
}

void sub_21465C93C(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = (*a1)[5];
  v8 = **a1;
  v7 = (*a1)[1];
  v10 = (*a1)[2];
  v9 = (*a1)[3];
  v20 = *(*a1 + 32);
  v12 = *(v6 + 48);
  v11 = *(v6 + 56);
  v13 = *(v6 + 64);
  if (a2)
  {

    a4(v10, v9);

    a3(v11, v13);
    *(v6 + 40) = v8;
    *(v6 + 48) = v7;
    *(v6 + 56) = v10;
    *(v6 + 64) = v9;
    *(v6 + 72) = v20;
    v15 = v5[1];
    v16 = v5[2];
    v17 = v5[3];

    a3(v16, v17);
  }

  else
  {
    v18 = *(v6 + 48);

    a3(v11, v13);
    *(v6 + 40) = v8;
    *(v6 + 48) = v7;
    *(v6 + 56) = v10;
    *(v6 + 64) = v9;
    *(v6 + 72) = v20;
  }

  free(v5);
}

uint64_t sub_21465CA50(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_21465CB1C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 104);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 96);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146264B8;
  }

  return result;
}

void (*sub_21465CBBC(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_21465CC5C;
}

void sub_21465CC88(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = (*a1)[5];
  v8 = **a1;
  v7 = (*a1)[1];
  v10 = (*a1)[2];
  v9 = (*a1)[3];
  v20 = *(*a1 + 32);
  v12 = *(v6 + 88);
  v11 = *(v6 + 96);
  v13 = *(v6 + 104);
  if (a2)
  {

    a4(v10, v9);

    a3(v11, v13);
    *(v6 + 80) = v8;
    *(v6 + 88) = v7;
    *(v6 + 96) = v10;
    *(v6 + 104) = v9;
    *(v6 + 112) = v20;
    v15 = v5[1];
    v16 = v5[2];
    v17 = v5[3];

    a3(v16, v17);
  }

  else
  {
    v18 = *(v6 + 88);

    a3(v11, v13);
    *(v6 + 80) = v8;
    *(v6 + 88) = v7;
    *(v6 + 96) = v10;
    *(v6 + 104) = v9;
    *(v6 + 112) = v20;
  }

  free(v5);
}

uint64_t sub_21465CDA4(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_21465CDF0()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t sub_21465CDFC(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t sub_21465CE2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 144);
  v7 = *(v2 + 152);
  v11 = *(v3 + 176);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 160), *(v3 + 168));

    *(v3 + 160) = a1;
    *(v3 + 168) = a2;
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

void (*sub_21465CF70(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 160);
  *(v3 + 24) = v5;
  v6 = *(v1 + 168);
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

    return sub_2145C8E5C;
  }

  return result;
}

void (*sub_21465D048(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 152);
  v6 = *(v1 + 160);
  v7 = *(v1 + 168);
  v8 = *(v1 + 176);
  *v4 = *(v1 + 144);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145C91A8;
}

uint64_t sub_21465D0E8@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 232);
  v20[2] = *(v1 + 216);
  v20[3] = v3;
  v4 = *(v1 + 248);
  v20[0] = *(v1 + 184);
  v20[1] = v2;
  v5 = *(v1 + 328);
  v6 = *(v1 + 360);
  v21 = *(v1 + 344);
  v22[0] = v6;
  *(v22 + 9) = *(v1 + 369);
  v8 = *(v1 + 264);
  v7 = *(v1 + 280);
  v20[4] = v4;
  v20[5] = v8;
  v9 = *(v1 + 264);
  v10 = *(v1 + 280);
  v11 = *(v1 + 296);
  v12 = *(v1 + 312);
  v20[6] = v7;
  v20[7] = v11;
  v13 = *(v1 + 296);
  v14 = *(v1 + 328);
  v20[8] = *(v1 + 312);
  v20[9] = v14;
  v15 = *(v1 + 360);
  a1[10] = v21;
  a1[11] = v15;
  *(a1 + 185) = *(v1 + 369);
  a1[6] = v10;
  a1[7] = v13;
  a1[8] = v12;
  a1[9] = v5;
  v16 = *(v1 + 200);
  v17 = *(v1 + 232);
  a1[2] = *(v1 + 216);
  a1[3] = v17;
  a1[4] = *(v1 + 248);
  a1[5] = v9;
  *a1 = *(v1 + 184);
  a1[1] = v16;
  return sub_213FB2E54(v20, &v19, &qword_27C905AD0, &unk_214759900);
}

__n128 sub_21465D1B8(__int128 *a1)
{
  v3 = *(v1 + 200);
  v4 = *(v1 + 232);
  v21[2] = *(v1 + 216);
  v21[3] = v4;
  v5 = *(v1 + 248);
  v21[0] = *(v1 + 184);
  v21[1] = v3;
  v6 = *(v1 + 328);
  v7 = *(v1 + 360);
  v21[10] = *(v1 + 344);
  v22[0] = v7;
  *(v22 + 9) = *(v1 + 369);
  v8 = *(v1 + 264);
  v9 = *(v1 + 280);
  v21[4] = v5;
  v21[5] = v8;
  v10 = *(v1 + 296);
  v11 = *(v1 + 312);
  v21[6] = v9;
  v21[7] = v10;
  v21[8] = v11;
  v21[9] = v6;
  sub_213FB2DF4(v21, &qword_27C905AD0, &unk_214759900);
  v12 = a1[10];
  v13 = a1[11];
  v14 = a1[8];
  *(v1 + 328) = a1[9];
  *(v1 + 344) = v12;
  *(v1 + 360) = v13;
  *(v1 + 369) = *(a1 + 185);
  v15 = a1[6];
  v16 = a1[7];
  v17 = a1[4];
  *(v1 + 264) = a1[5];
  *(v1 + 280) = v15;
  *(v1 + 296) = v16;
  *(v1 + 312) = v14;
  v18 = *a1;
  *(v1 + 200) = a1[1];
  result = a1[2];
  v20 = a1[3];
  *(v1 + 216) = result;
  *(v1 + 232) = v20;
  *(v1 + 248) = v17;
  *(v1 + 184) = v18;
  return result;
}

uint64_t sub_21465D2AC()
{
  result = *(v0 + 392);
  v2 = *(v0 + 400);
  return result;
}

uint64_t sub_21465D2B8(uint64_t result, char a2)
{
  *(v2 + 392) = result;
  *(v2 + 400) = a2 & 1;
  return result;
}

uint64_t sub_21465D318()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);

  return v1;
}

uint64_t sub_21465D348(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 416);

  *(v2 + 408) = a1;
  *(v2 + 416) = a2;
  return result;
}

uint64_t sub_21465D3A0()
{
  result = *(v0 + 424);
  v2 = *(v0 + 432);
  return result;
}

uint64_t sub_21465D3AC(uint64_t result, char a2)
{
  *(v2 + 424) = result;
  *(v2 + 432) = a2 & 1;
  return result;
}

uint64_t sub_21465D3FC(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_21465D42C()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t sub_21465D438(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t sub_21465D488(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_21465D4DC()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214778410[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_21465D564()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214778410[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_21465D6A0(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_21465D740(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_21465D78C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v11 = *(v3 + 48);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 32), *(v3 + 40));

    *(v3 + 32) = a1;
    *(v3 + 40) = a2;
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

void (*sub_21465D8D0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 32);
  *(v3 + 24) = v5;
  v6 = *(v1 + 40);
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

    return sub_2145F81C8;
  }

  return result;
}

void (*sub_21465D9A8(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145F843C;
}

uint64_t sub_21465DA50(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_21465DABC(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 68) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_21465DAEC(uint64_t a1, uint64_t a2)
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

void (*sub_21465DC30(uint64_t *a1))(uint64_t **, char)
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

    return sub_214664338;
  }

  return result;
}

void (*sub_21465DD08(uint64_t *a1))(uint64_t **, char)
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
  return sub_21466433C;
}

uint64_t sub_21465DDB0(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t sub_21465DDFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 120);
  v7 = *(v2 + 128);
  v11 = *(v3 + 152);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 136), *(v3 + 144));

    *(v3 + 136) = a1;
    *(v3 + 144) = a2;
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

void (*sub_21465DF40(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 136);
  *(v3 + 24) = v5;
  v6 = *(v1 + 144);
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

    return sub_21465E018;
  }

  return result;
}

void (*sub_21465E01C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21465E0BC;
}

uint64_t sub_21465E0C0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 160), 0x1B1uLL);
  memcpy(a1, (v1 + 160), 0x1B1uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C905D58, &qword_2146F4098);
}

void *sub_21465E124(const void *a1)
{
  memcpy(v4, (v1 + 160), 0x1B1uLL);
  sub_213FB2DF4(v4, &qword_27C905D58, &qword_2146F4098);
  return memcpy((v1 + 160), a1, 0x1B1uLL);
}

uint64_t sub_21465E1A4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 648);
  v10 = *(v1 + 632);
  v2 = v10;
  v11 = v3;
  v12[0] = *(v1 + 664);
  v4 = v12[0];
  *(v12 + 9) = *(v1 + 673);
  v6 = *(v1 + 616);
  v9[0] = *(v1 + 600);
  v5 = v9[0];
  v9[1] = v6;
  *(a1 + 73) = *(v12 + 9);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_213FB2E54(v9, &v8, &qword_27C905D70, &qword_2146F40A0);
}

__n128 sub_21465E210(uint64_t a1)
{
  v3 = (v1 + 600);
  v4 = v3[3];
  v9[2] = v3[2];
  v9[3] = v4;
  v10[0] = v3[4];
  *(v10 + 9) = *(v3 + 73);
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  sub_213FB2DF4(v9, &qword_27C905D70, &qword_2146F40A0);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  *(v3 + 73) = *(a1 + 73);
  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v8;
  return result;
}

void sub_21465E2E4(uint64_t *a1@<X8>)
{
  v2 = v1[87];
  v3 = v1[88];
  v4 = v1[89];
  v5 = v1[90];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_21465E384(v2, v3, v4, v5, sub_213FDCA18);
}

__n128 sub_21465E328(uint64_t a1)
{
  sub_21465E384(*(v1 + 696), *(v1 + 704), *(v1 + 712), *(v1 + 720), sub_213FDC6BC);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 696) = *a1;
  *(v1 + 712) = v4;
  return result;
}

void sub_21465E384(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (a2 >> 60 != 11)
  {
    a5();

    (a5)(a3, a4);
  }
}

uint64_t sub_21465E410@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 752);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 744);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21465E484(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21465E534(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 728);
  v7 = *(v2 + 736);
  v11 = *(v3 + 760);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 744), *(v3 + 752));

    *(v3 + 744) = a1;
    *(v3 + 752) = a2;
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

void (*sub_21465E684(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 744);
  *(v3 + 24) = v5;
  v6 = *(v1 + 752);
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

    return sub_21465E75C;
  }

  return result;
}

void sub_21465E75C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 728);
    v11 = *(v3 + 736);
    v16 = *(v3 + 760);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 744) = v5;
      *(v12 + 752) = v4;
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
  v6 = *(v3 + 728);
  v7 = *(v3 + 736);
  v16 = *(v3 + 760);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v6(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 744) = v5;
  *(v8 + 752) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_21465E93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 736);
  v3 = *(a1 + 744);
  v4 = *(a1 + 752);
  v5 = *(a1 + 760);
  *a2 = *(a1 + 728);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21465E998(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 736);
  v9 = *(a2 + 744);
  v10 = *(a2 + 752);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 728) = v4;
  *(a2 + 736) = v3;
  *(a2 + 744) = v5;
  *(a2 + 752) = v6;
  *(a2 + 760) = v7;
  return result;
}

void (*sub_21465EA2C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 736);
  v6 = *(v1 + 744);
  v7 = *(v1 + 752);
  v8 = *(v1 + 760);
  *v4 = *(v1 + 728);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21465EAD4;
}

void sub_21465EAD4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 736);
  v10 = *(v3 + 744);
  v11 = *(v3 + 752);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v10, v11);
    *(v3 + 728) = v5;
    *(v3 + 736) = v4;
    *(v3 + 744) = v7;
    *(v3 + 752) = v6;
    *(v3 + 760) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 736);

    sub_213FDC6D0(v10, v11);
    *(v3 + 728) = v5;
    *(v3 + 736) = v4;
    *(v3 + 744) = v7;
    *(v3 + 752) = v6;
    *(v3 + 760) = v8;
  }

  free(v2);
}

uint64_t sub_21465EBC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 792);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 784);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21465EC3C(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21465ECEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 768);
  v7 = *(v2 + 776);
  v11 = *(v3 + 800);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 784), *(v3 + 792));

    *(v3 + 784) = a1;
    *(v3 + 792) = a2;
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

void (*sub_21465EE3C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 784);
  *(v3 + 24) = v5;
  v6 = *(v1 + 792);
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

    return sub_21465EF14;
  }

  return result;
}

void sub_21465EF14(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 768);
    v11 = *(v3 + 776);
    v16 = *(v3 + 800);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 784) = v5;
      *(v12 + 792) = v4;
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
  v6 = *(v3 + 768);
  v7 = *(v3 + 776);
  v16 = *(v3 + 800);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v6(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 784) = v5;
  *(v8 + 792) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_21465F0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 776);
  v3 = *(a1 + 784);
  v4 = *(a1 + 792);
  v5 = *(a1 + 800);
  *a2 = *(a1 + 768);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21465F150(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 776);
  v9 = *(a2 + 784);
  v10 = *(a2 + 792);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 768) = v4;
  *(a2 + 776) = v3;
  *(a2 + 784) = v5;
  *(a2 + 792) = v6;
  *(a2 + 800) = v7;
  return result;
}

void (*sub_21465F1E4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 776);
  v6 = *(v1 + 784);
  v7 = *(v1 + 792);
  v8 = *(v1 + 800);
  *v4 = *(v1 + 768);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21465F28C;
}

void sub_21465F28C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 776);
  v10 = *(v3 + 784);
  v11 = *(v3 + 792);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v10, v11);
    *(v3 + 768) = v5;
    *(v3 + 776) = v4;
    *(v3 + 784) = v7;
    *(v3 + 792) = v6;
    *(v3 + 800) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 776);

    sub_213FDC6D0(v10, v11);
    *(v3 + 768) = v5;
    *(v3 + 776) = v4;
    *(v3 + 784) = v7;
    *(v3 + 792) = v6;
    *(v3 + 800) = v8;
  }

  free(v2);
}

uint64_t sub_21465F3C0(uint64_t a1)
{
  v3 = *(v1 + 808);

  *(v1 + 808) = a1;
  return result;
}

uint64_t sub_21465F414(uint64_t a1)
{
  v3 = *(v1 + 816);

  *(v1 + 816) = a1;
  return result;
}

uint64_t sub_21465F468(uint64_t a1)
{
  v3 = *(v1 + 824);

  *(v1 + 824) = a1;
  return result;
}

uint64_t sub_21465F4BC(uint64_t a1)
{
  v3 = *(v1 + 832);

  *(v1 + 832) = a1;
  return result;
}

uint64_t sub_21465F538()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 856);

  return v1;
}

uint64_t sub_21465F56C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 856);

  *(v2 + 848) = a1;
  *(v2 + 856) = a2;
  return result;
}

uint64_t sub_21465F5C8@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 864), 0x389uLL);
  memcpy(a1, (v1 + 864), 0x389uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C905DB8, &unk_2147598E0);
}

void *sub_21465F62C(const void *a1)
{
  memcpy(__dst, (v1 + 864), 0x389uLL);
  sub_213FB2DF4(__dst, &qword_27C905DB8, &unk_2147598E0);
  return memcpy((v1 + 864), a1, 0x389uLL);
}

uint64_t sub_21465F704(uint64_t result)
{
  *(v1 + 1772) = result;
  *(v1 + 1776) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_21465F79C()
{
  v1 = *v0;
  sub_213FDCA18(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_21465F7D0(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_21465F828()
{
  v1 = *(v0 + 16);
  sub_213FDCA18(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_21465F85C(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_21465F8D4(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_21465F90C(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_21465F958@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), 0x6F3uLL);
  memcpy(a1, (v1 + 16), 0x6F3uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C905E98, &qword_2147738D0);
}

void *sub_21465F9BC(const void *a1)
{
  memcpy(v4, (v1 + 16), 0x6F3uLL);
  sub_213FB2DF4(v4, &qword_27C905E98, &qword_2147738D0);
  return memcpy((v1 + 16), a1, 0x6F3uLL);
}

uint64_t sub_21465FA3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 1824);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 1816);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21465FAB0(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21465FB60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 1800);
  v7 = *(v2 + 1808);
  v11 = *(v3 + 1832);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 1816), *(v3 + 1824));

    *(v3 + 1816) = a1;
    *(v3 + 1824) = a2;
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

void (*sub_21465FCB0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 1816);
  *(v3 + 24) = v5;
  v6 = *(v1 + 1824);
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

    return sub_21465FD88;
  }

  return result;
}

void sub_21465FD88(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 1800);
    v11 = *(v3 + 1808);
    v16 = *(v3 + 1832);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 1816) = v5;
      *(v12 + 1824) = v4;
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
  v6 = *(v3 + 1800);
  v7 = *(v3 + 1808);
  v16 = *(v3 + 1832);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v6(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 1816) = v5;
  *(v8 + 1824) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_21465FF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1808);
  v3 = *(a1 + 1816);
  v4 = *(a1 + 1824);
  v5 = *(a1 + 1832);
  *a2 = *(a1 + 1800);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21465FFC4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 1808);
  v9 = *(a2 + 1816);
  v10 = *(a2 + 1824);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 1800) = v4;
  *(a2 + 1808) = v3;
  *(a2 + 1816) = v5;
  *(a2 + 1824) = v6;
  *(a2 + 1832) = v7;
  return result;
}

void (*sub_214660058(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 1808);
  v6 = *(v1 + 1816);
  v7 = *(v1 + 1824);
  v8 = *(v1 + 1832);
  *v4 = *(v1 + 1800);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214660100;
}

void sub_214660100(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 1808);
  v10 = *(v3 + 1816);
  v11 = *(v3 + 1824);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v10, v11);
    *(v3 + 1800) = v5;
    *(v3 + 1808) = v4;
    *(v3 + 1816) = v7;
    *(v3 + 1824) = v6;
    *(v3 + 1832) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 1808);

    sub_213FDC6D0(v10, v11);
    *(v3 + 1800) = v5;
    *(v3 + 1808) = v4;
    *(v3 + 1816) = v7;
    *(v3 + 1824) = v6;
    *(v3 + 1832) = v8;
  }

  free(v2);
}

uint64_t sub_2146601F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 1864);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 1856);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214660268(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214660318(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 1840);
  v7 = *(v2 + 1848);
  v11 = *(v3 + 1872);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 1856), *(v3 + 1864));

    *(v3 + 1856) = a1;
    *(v3 + 1864) = a2;
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

void (*sub_214660468(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 1856);
  *(v3 + 24) = v5;
  v6 = *(v1 + 1864);
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

    return sub_214660540;
  }

  return result;
}

void sub_214660540(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 1840);
    v11 = *(v3 + 1848);
    v16 = *(v3 + 1872);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 1856) = v5;
      *(v12 + 1864) = v4;
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
  v6 = *(v3 + 1840);
  v7 = *(v3 + 1848);
  v16 = *(v3 + 1872);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v6(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 1856) = v5;
  *(v8 + 1864) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_214660720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1848);
  v3 = *(a1 + 1856);
  v4 = *(a1 + 1864);
  v5 = *(a1 + 1872);
  *a2 = *(a1 + 1840);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21466077C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 1848);
  v9 = *(a2 + 1856);
  v10 = *(a2 + 1864);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 1840) = v4;
  *(a2 + 1848) = v3;
  *(a2 + 1856) = v5;
  *(a2 + 1864) = v6;
  *(a2 + 1872) = v7;
  return result;
}

void (*sub_214660810(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 1848);
  v6 = *(v1 + 1856);
  v7 = *(v1 + 1864);
  v8 = *(v1 + 1872);
  *v4 = *(v1 + 1840);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2146608B8;
}

void sub_2146608B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 1848);
  v10 = *(v3 + 1856);
  v11 = *(v3 + 1864);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v10, v11);
    *(v3 + 1840) = v5;
    *(v3 + 1848) = v4;
    *(v3 + 1856) = v7;
    *(v3 + 1864) = v6;
    *(v3 + 1872) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 1848);

    sub_213FDC6D0(v10, v11);
    *(v3 + 1840) = v5;
    *(v3 + 1848) = v4;
    *(v3 + 1856) = v7;
    *(v3 + 1864) = v6;
    *(v3 + 1872) = v8;
  }

  free(v2);
}

uint64_t sub_2146609DC@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 1880), 0x389uLL);
  memcpy(a1, (v1 + 1880), 0x389uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C905DB8, &unk_2147598E0);
}

void *sub_214660A40(const void *a1)
{
  memcpy(__dst, (v1 + 1880), 0x389uLL);
  sub_213FB2DF4(__dst, &qword_27C905DB8, &unk_2147598E0);
  return memcpy((v1 + 1880), a1, 0x389uLL);
}

uint64_t sub_214660B20()
{
  v1 = *(v0 + 2792);
  v2 = *(v0 + 2800);

  return v1;
}

uint64_t sub_214660B54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 2800);

  *(v2 + 2792) = a1;
  *(v2 + 2800) = a2;
  return result;
}

uint64_t sub_214660BB8(uint64_t a1)
{
  v3 = *(v1 + 2808);

  *(v1 + 2808) = a1;
  return result;
}

uint64_t sub_214660C3C(uint64_t a1)
{
  v3 = *(v1 + 2824);

  *(v1 + 2824) = a1;
  return result;
}

uint64_t sub_214660D38(uint64_t result)
{
  *(v1 + 2836) = result;
  *(v1 + 2840) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_214660DC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 2872);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 2864);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214660E3C(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214660EEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 2848);
  v7 = *(v2 + 2856);
  v11 = *(v3 + 2880);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 2864), *(v3 + 2872));

    *(v3 + 2864) = a1;
    *(v3 + 2872) = a2;
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

void (*sub_21466103C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 2864);
  *(v3 + 24) = v5;
  v6 = *(v1 + 2872);
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

    return sub_214661114;
  }

  return result;
}

void sub_214661114(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 2848);
    v11 = *(v3 + 2856);
    v16 = *(v3 + 2880);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 2864) = v5;
      *(v12 + 2872) = v4;
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
  v6 = *(v3 + 2848);
  v7 = *(v3 + 2856);
  v16 = *(v3 + 2880);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v6(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 2864) = v5;
  *(v8 + 2872) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_2146612F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2856);
  v3 = *(a1 + 2864);
  v4 = *(a1 + 2872);
  v5 = *(a1 + 2880);
  *a2 = *(a1 + 2848);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214661350(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 2856);
  v9 = *(a2 + 2864);
  v10 = *(a2 + 2872);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 2848) = v4;
  *(a2 + 2856) = v3;
  *(a2 + 2864) = v5;
  *(a2 + 2872) = v6;
  *(a2 + 2880) = v7;
  return result;
}

void (*sub_2146613E4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 2856);
  v6 = *(v1 + 2864);
  v7 = *(v1 + 2872);
  v8 = *(v1 + 2880);
  *v4 = *(v1 + 2848);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21466148C;
}

void sub_21466148C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 2856);
  v10 = *(v3 + 2864);
  v11 = *(v3 + 2872);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v10, v11);
    *(v3 + 2848) = v5;
    *(v3 + 2856) = v4;
    *(v3 + 2864) = v7;
    *(v3 + 2872) = v6;
    *(v3 + 2880) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 2856);

    sub_213FDC6D0(v10, v11);
    *(v3 + 2848) = v5;
    *(v3 + 2856) = v4;
    *(v3 + 2864) = v7;
    *(v3 + 2872) = v6;
    *(v3 + 2880) = v8;
  }

  free(v2);
}

uint64_t sub_214661660(uint64_t result)
{
  *(v1 + 2888) = result;
  *(v1 + 2892) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2146616B0(uint64_t result)
{
  *(v1 + 2896) = result;
  *(v1 + 2900) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_214661770@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 2928);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 2920);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2146617E4(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214661894(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 2904);
  v7 = *(v2 + 2912);
  v11 = *(v3 + 2936);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 2920), *(v3 + 2928));

    *(v3 + 2920) = a1;
    *(v3 + 2928) = a2;
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

void (*sub_2146619E4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 2920);
  *(v3 + 24) = v5;
  v6 = *(v1 + 2928);
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

    return sub_214661ABC;
  }

  return result;
}

void sub_214661ABC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 2904);
    v11 = *(v3 + 2912);
    v16 = *(v3 + 2936);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 2920) = v5;
      *(v12 + 2928) = v4;
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
  v6 = *(v3 + 2904);
  v7 = *(v3 + 2912);
  v16 = *(v3 + 2936);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v6(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 2920) = v5;
  *(v8 + 2928) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_214661C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2912);
  v3 = *(a1 + 2920);
  v4 = *(a1 + 2928);
  v5 = *(a1 + 2936);
  *a2 = *(a1 + 2904);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214661CF8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 2912);
  v9 = *(a2 + 2920);
  v10 = *(a2 + 2928);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 2904) = v4;
  *(a2 + 2912) = v3;
  *(a2 + 2920) = v5;
  *(a2 + 2928) = v6;
  *(a2 + 2936) = v7;
  return result;
}

void (*sub_214661D8C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 2912);
  v6 = *(v1 + 2920);
  v7 = *(v1 + 2928);
  v8 = *(v1 + 2936);
  *v4 = *(v1 + 2904);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214661E34;
}

void sub_214661E34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 2912);
  v10 = *(v3 + 2920);
  v11 = *(v3 + 2928);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v10, v11);
    *(v3 + 2904) = v5;
    *(v3 + 2912) = v4;
    *(v3 + 2920) = v7;
    *(v3 + 2928) = v6;
    *(v3 + 2936) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 2912);

    sub_213FDC6D0(v10, v11);
    *(v3 + 2904) = v5;
    *(v3 + 2912) = v4;
    *(v3 + 2920) = v7;
    *(v3 + 2928) = v6;
    *(v3 + 2936) = v8;
  }

  free(v2);
}

uint64_t sub_214661FD8(uint64_t result)
{
  *(v1 + 2940) = result;
  *(v1 + 2944) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2146620D8(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_214662248(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

void sub_2146622A8(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_214534D70(v2, v3, v4, v5, v6, v7, sub_213FDCA18);
}

__n128 sub_2146622EC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_214534D70(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), sub_213FDC6BC);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return result;
}

uint64_t sub_2146623F8(uint64_t a1, uint64_t a2)
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

void (*sub_21466253C(uint64_t *a1))(uint64_t **, char)
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

    return sub_214662614;
  }

  return result;
}

void (*sub_214662618(uint64_t *a1))(uint64_t **, char)
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
  return sub_2146626B8;
}

uint64_t sub_2146626BC()
{
  v1 = *v0;
  sub_213FDCA18(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_2146626F0(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_214662748()
{
  v1 = *(v0 + 16);
  sub_213FDCA18(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_21466277C(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2146627D4()
{
  v1 = *(v0 + 32);
  sub_213FDCA18(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_214662808(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

unint64_t sub_214662864()
{
  result = qword_27C917708;
  if (!qword_27C917708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917708);
  }

  return result;
}

unint64_t sub_2146628E8()
{
  result = qword_27C917710;
  if (!qword_27C917710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917710);
  }

  return result;
}

unint64_t sub_21466296C()
{
  result = qword_27C917718;
  if (!qword_27C917718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917718);
  }

  return result;
}

unint64_t sub_214662BD4()
{
  result = qword_27C917720;
  if (!qword_27C917720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917720);
  }

  return result;
}

unint64_t sub_214662CDC()
{
  result = qword_27C917728;
  if (!qword_27C917728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917728);
  }

  return result;
}

unint64_t sub_214662D8C()
{
  result = qword_27C917730;
  if (!qword_27C917730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917730);
  }

  return result;
}

unint64_t sub_214662E38()
{
  result = qword_27C917738;
  if (!qword_27C917738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917738);
  }

  return result;
}

unint64_t sub_214662E8C()
{
  result = qword_27C917740;
  if (!qword_27C917740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917740);
  }

  return result;
}

uint64_t sub_214662F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214662F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 496))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 216);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214662FD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 488) = 0;
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
      *(result + 496) = 1;
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
      *(result + 216) = (a2 - 1);
      return result;
    }

    *(result + 496) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2146630A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_2146630E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214663158(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 362))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 328);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2146631A0(uint64_t result, int a2, int a3)
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
    *(result + 360) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 362) = 1;
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
      *(result + 328) = (a2 - 1);
      return result;
    }

    *(result + 362) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214663260(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
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

uint64_t sub_2146632A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214663348(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 849))
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

uint64_t sub_214663390(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 840) = 0;
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
    *(result + 848) = 0;
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
      *(result + 849) = 1;
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

    *(result + 849) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2146634CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 905))
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

uint64_t sub_214663514(uint64_t result, int a2, int a3)
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
    *(result + 904) = 0;
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
      *(result + 905) = 1;
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

    *(result + 905) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21466365C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 433))
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

uint64_t sub_2146636A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
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
    *(result + 432) = 0;
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
      *(result + 433) = 1;
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

    *(result + 433) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214663768(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_214663788(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}