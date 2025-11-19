Swift::Bool __swiftcall FeatureFlagsKey.isEnabled()()
{
  v3 = v0;
  v9 = v0;
  v10 = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  v5 = sub_24AE08558();
  __swift_destroy_boxed_opaque_existential_0(v8);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_24AD8AFD4();
  }

  return v6 & 1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

const char *sub_24AD8AF0C()
{
  v1 = *v0;
  v2 = "New_Contact_Picker";
  v3 = "People_Embedded_Revamp";
  v4 = "People_Embedded_Revamp_Beam";
  if (v1 != 3)
  {
    v4 = "People_Embedded_Revamp_Extra";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "New_People_List_Rows";
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_24AD8AFD4()
{
  sub_24AE08988();
  v0 = sub_24AE09518();
  MEMORY[0x24C230FB0](v0);

  MEMORY[0x24C230FB0](95, 0xE100000000000000);
  sub_24AE08998();
  v1 = sub_24AE09518();
  MEMORY[0x24C230FB0](v1);

  if (qword_27EFA8620 != -1)
  {
    swift_once();
  }

  if (byte_27EFA8CF0 == 1)
  {
    v2 = qword_27EFA8CE8;
    v3 = sub_24AE08F88();
    v4 = [v2 BOOLForKey_];

    return v4;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_24AD8B114()
{
  qword_27EFA8CD8 = 0;
  unk_27EFA8CE0 = 0;
  qword_27EFA8CE8 = [objc_opt_self() standardUserDefaults];
  result = sub_24AE08538();
  byte_27EFA8CF0 = result & 1;
  return result;
}

uint64_t type metadata accessor for FindMyRelativeDate()
{
  result = qword_281519E60;
  if (!qword_281519E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AD8B1B8()
{
  result = sub_24AE088E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void __swiftcall PublishedLocation.Label.init(customLabel:coarseLabel:streetLabel:smallLabel:mediumLabel:largeLabel:poiLabel:)(FindMyCore::PublishedLocation::Label *__return_ptr retstr, Swift::String_optional customLabel, Swift::String_optional coarseLabel, Swift::String_optional streetLabel, Swift::String_optional smallLabel, Swift::String_optional mediumLabel, Swift::String_optional largeLabel, Swift::String_optional poiLabel)
{
  object = smallLabel.value._object;
  countAndFlagsBits = smallLabel.value._countAndFlagsBits;
  v10 = streetLabel.value._object;
  v11 = streetLabel.value._countAndFlagsBits;
  v12 = coarseLabel.value._object;
  v13 = coarseLabel.value._countAndFlagsBits;
  v14 = customLabel.value._object;
  v15 = customLabel.value._countAndFlagsBits;
  if (!customLabel.value._object)
  {
    goto LABEL_5;
  }

  v17 = HIBYTE(customLabel.value._object) & 0xF;
  if ((customLabel.value._object & 0x2000000000000000) == 0)
  {
    v17 = customLabel.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    v15 = 0;
    v14 = 0;
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_5:
    if (!coarseLabel.value._object)
    {
      goto LABEL_9;
    }
  }

  v18 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v18 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
LABEL_9:
    v19 = mediumLabel.value._object;
    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v13 = 0;
  v12 = 0;
  v19 = mediumLabel.value._object;
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_10:
  v20 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v20 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    v34 = 0;
    v10 = 0;
    goto LABEL_19;
  }

LABEL_13:
  v34 = v11;
LABEL_19:
  v21 = largeLabel.value._object;
  v22 = mediumLabel.value._countAndFlagsBits;
  v32 = v15;
  if (!object)
  {
    goto LABEL_23;
  }

  v23 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v23 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {

    v22 = mediumLabel.value._countAndFlagsBits;
    v35 = 0;
    object = 0;
  }

  else
  {
LABEL_23:
    v35 = countAndFlagsBits;
  }

  v24 = poiLabel.value._object;
  v25 = largeLabel.value._countAndFlagsBits;
  v33 = v13;
  if (v19)
  {
    v26 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v26 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v26)
    {

      v22 = 0;
      v19 = 0;
    }
  }

  v27 = poiLabel.value._countAndFlagsBits;
  if (largeLabel.value._object)
  {
    v28 = (largeLabel.value._object >> 56) & 0xF;
    if ((largeLabel.value._object & 0x2000000000000000) == 0)
    {
      v28 = largeLabel.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v28)
    {
      v29 = v22;

      v22 = v29;
      v25 = 0;
      v21 = 0;
    }
  }

  if (poiLabel.value._object)
  {
    v30 = (poiLabel.value._object >> 56) & 0xF;
    if ((poiLabel.value._object & 0x2000000000000000) == 0)
    {
      v30 = poiLabel.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v30)
    {
      v31 = v22;

      v22 = v31;
      v27 = 0;
      v24 = 0;
    }
  }

  retstr->customLabel.value._countAndFlagsBits = v32;
  retstr->customLabel.value._object = v14;
  retstr->coarseLabel.value._countAndFlagsBits = v33;
  retstr->coarseLabel.value._object = v12;
  retstr->streetLabel.value._countAndFlagsBits = v34;
  retstr->streetLabel.value._object = v10;
  retstr->smallLabel.value._countAndFlagsBits = v35;
  retstr->smallLabel.value._object = object;
  retstr->mediumLabel.value._countAndFlagsBits = v22;
  retstr->mediumLabel.value._object = v19;
  retstr->largeLabel.value._countAndFlagsBits = v25;
  retstr->largeLabel.value._object = v21;
  retstr->poiLabel.value._countAndFlagsBits = v27;
  retstr->poiLabel.value._object = v24;
}

uint64_t sub_24AD8B564(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AE088E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 56) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AD8B638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AE088E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 56);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24AD8B6F8()
{
  v1 = sub_24AE08E08();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24AD8B7D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_24AE08FB8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_24AD8B810()
{
  v1 = sub_24AE08E08();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24AD8B8E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24AE089A8();
  *a1 = result;
  return result;
}

uint64_t sub_24AD8B918()
{
  v14 = *(v0 + 32);
  v15 = *(v0 + 48);
  v1 = *(type metadata accessor for DataCache.CacheType() - 8);
  v2 = *(v1 + 64);
  v3 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v4 = *(v14 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFA8B20, &qword_24AE0A8B0);
  if (!(*(*(v8 - 8) + 48))(v0 + v3, 1, v8))
  {
    v9 = sub_24AE08818();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  v10 = (v3 + v2 + v5) & ~v5;
  v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v10, v14);
  v12 = *(v0 + v11);

  return swift_deallocObject();
}

uint64_t sub_24AD8BAE0()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B18, &qword_24AE0A7F8) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 8);

  (*(v2 + 8))(&v0[v3], v1);
  v10 = sub_24AE092D8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(&v0[v6], 1, v10))
  {
    (*(v11 + 8))(&v0[v6], v10);
  }

  return swift_deallocObject();
}

uint64_t sub_24AD8BC84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24AD8BCBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFA8B20, &qword_24AE0A8B0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AD8BD34(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFA8B20, &qword_24AE0A8B0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24AD8BDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AE08718();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24AD8BE80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AE08718();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AD8BF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24AE086E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AD8BFE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24AE086E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD8C09C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_24AE08398();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_24AD8C0DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_24AE08398();
  *a2 = v5;
  return result;
}

double sub_24AD8C144@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *(a1 + 24);
  sub_24AE08398();
  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_24AD8C1AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_24AE08398();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_24AD8C1EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_24AE08398();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_24AD8C22C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24AE08E08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24AD8C2D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24AE08E08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD8C380@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

BOOL sub_24AD8C454(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_24AD8C484@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24AD8C4B0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_24AD8C588@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24AD8C5B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24ADB4BB4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24AD8C664(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24AE08E08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24AD8C710(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24AE08E08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD8C7E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_24AE08398();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_24AD8C828@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_24AE08398();
  *a2 = v5;
  return result;
}

double sub_24AD8C890@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *(a1 + 24);
  sub_24AE08398();
  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_24AD8C8F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_24AE08398();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_24AD8C938@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_24AE08398();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_24AD8C978()
{
  v1 = sub_24AE08E08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24AD8CA04()
{
  v1 = sub_24AE08E08();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24AD8CAD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24AE08E08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24AD8CB84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24AE08E08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD8CD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PersonModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24AD8CDCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PersonModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AD8CE84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonEntity.PayloadV1.Relationship(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AD8CEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonEntity.PayloadV1.Relationship(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AD8CFA4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_24AD8D060(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD8D114()
{
  v1 = sub_24AE08E08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24AD8D1A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24AE08E08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24AD8D24C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24AE08E08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD8D2F8()
{
  v1 = sub_24AE08E08();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24AD8D3C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BE8, &qword_24AE0F340);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24AD8D47C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BE8, &qword_24AE0F340);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD8D52C()
{
  v1 = sub_24AE08E08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24AD8D5B4()
{
  v1 = sub_24AE08E08();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24AD8D688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24AD8D760(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

id sub_24AD8D828@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 coordinate];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

id sub_24AD8D884@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 horizontalAccuracy];
  *a2 = v4;
  return result;
}

__n128 sub_24AD8D8F8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_24AD8D93C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AE08928();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AD8D9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AE08928();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AD8DA28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  return sub_24AE08288();
}

uint64_t sub_24AD8DA34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
  return sub_24AE08288();
}

uint64_t sub_24AD8DA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PersonModel.Relationship(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AD8DB3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PersonModel.Relationship(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD8DBF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  return sub_24AE08288();
}

uint64_t sub_24AD8DC00@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  *a2 = v2;
  a2[1] = v3;
  return sub_24AE08288();
}

uint64_t sub_24AD8DC10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = type metadata accessor for PersonModel();
  v5 = a1 + *(result + 36);
  v6 = *v5;
  v7 = *(v5 + 8) == 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7)
  {
    v8 = v6;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_24AD8DC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PersonModel.Relationship.Following(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PersonModel.Relationship.Follower(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 <= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = *(a1 + *(a3 + 24));
  }

  v16 = v15 - 2;
  if (v14 >= 2)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AD8DD74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PersonModel.Relationship.Following(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for PersonModel.Relationship.Follower(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t get_enum_tag_for_layout_string_10FindMyCore10ItemEntityVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t Session.fetchPeople(logger:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_24AE08E08();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD8DFDC, 0, 0);
}

uint64_t sub_24AD8DFDC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  (*(v3 + 16))(v1, v0[3], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = *(MEMORY[0x277D08920] + 4);

  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8808, &qword_24AE0A2A8);
  *v8 = v0;
  v8[1] = sub_24AD8E140;

  return MEMORY[0x28215EB08](v0 + 2, 0xD02AB486CEDC0000, 0, &unk_24AE0A2A0, v6, v9);
}

uint64_t sub_24AD8E140()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_24AD8E2C8;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_24AD8E25C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AD8E25C()
{
  v1 = v0[8];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_24AD8E2C8()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_24AD8E334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_24AD8E3D4;

  return sub_24AD8E764(a3);
}

uint64_t sub_24AD8E3D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_24AD8E520, 0, 0);
  }
}

uint64_t sub_24AD8E544(uint64_t a1)
{
  v4 = *(sub_24AE08E08() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AD8E628;

  return sub_24AD8E334(a1, v6, v1 + v5);
}

uint64_t sub_24AD8E628()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
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

uint64_t sub_24AD8E764(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for PersonModel();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v4 = type metadata accessor for PersonModel.Relationship.Follower(0);
  v1[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for PersonModel.Relationship.Following(0);
  v1[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = sub_24AE088E8();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8870, &unk_24AE0A2C0);
  v1[15] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8880, &qword_24AE0A2D0) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v15 = sub_24AE089D8();
  v1[24] = v15;
  v16 = *(v15 - 8);
  v1[25] = v16;
  v17 = *(v16 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v18 = sub_24AE08BA8();
  v1[28] = v18;
  v19 = *(v18 - 8);
  v1[29] = v19;
  v20 = *(v19 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v21 = sub_24AE08B38();
  v1[32] = v21;
  v22 = *(v21 - 8);
  v1[33] = v22;
  v23 = *(v22 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v24 = sub_24AE08A48();
  v1[44] = v24;
  v25 = *(v24 - 8);
  v1[45] = v25;
  v26 = *(v25 + 64) + 15;
  v27 = swift_task_alloc();
  v1[46] = v27;
  v28 = *(MEMORY[0x277D09350] + 4);
  v29 = swift_task_alloc();
  v1[47] = v29;
  *v29 = v1;
  v29[1] = sub_24AD8EBF0;

  return MEMORY[0x28215FA68](v27);
}

uint64_t sub_24AD8EBF0()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_24AD9103C;
  }

  else
  {
    v3 = sub_24AD8ED04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_24AD8ED04()
{
  v405 = v0;
  v1 = v0[48];
  v2 = v0[46];
  v3 = v0[33];
  v4 = v0[29];
  v5 = v0[25];
  v317 = v0[15];
  v6 = v0[13];
  v314 = v0[3];
  v315 = v0[5];
  v7 = sub_24AE08A38();
  v8 = sub_24AD92744(v7);

  v331 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v330 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v330 setStyle_];
  v332 = sub_24ADC2030(MEMORY[0x277D84F90]);
  v9 = v8;
  v10 = 0;
  v11 = v9 + 64;
  v12 = -1;
  v13 = -1 << *(v9 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v9 + 64);
  v15 = (63 - v13) >> 6;
  v367 = (v4 + 8);
  v397 = (v3 + 8);
  v339 = *MEMORY[0x277D09030];
  v376 = (v5 + 8);
  v378 = (v5 + 104);
  v337 = *MEMORY[0x277D09020];
  v341 = *MEMORY[0x277D09028];
  v316 = (v3 + 56);
  v319 = (v3 + 48);
  v320 = (v6 + 56);
  v318 = (v6 + 48);
  v311 = (v6 + 32);
  v312 = (v6 + 8);
  v313 = (v3 + 32);
  v335 = *MEMORY[0x277D09018];
  v333 = *MEMORY[0x277D09010];
  v322 = v1;
  v380 = v0;
  v350 = v9;
LABEL_5:
  if (v14)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v15)
    {
      v279 = v0[43];
      v281 = v0[41];
      v280 = v0[42];
      v282 = v0[39];
      v283 = v0[40];
      v284 = v0[37];
      v285 = v0[38];
      v327 = v0[36];
      v328 = v0[35];
      v329 = v0[34];
      v334 = v0[31];
      v336 = v0[30];
      v338 = v0[27];
      v340 = v0[26];
      v342 = v0[23];
      v349 = v0[22];
      v353 = v0[21];
      v357 = v0[20];
      v366 = v0[19];
      v368 = v0[18];
      v371 = v0[17];
      v375 = v0[16];
      v377 = v0[14];
      v379 = v0[11];
      v386 = v0[10];
      v392 = v0[8];
      v395 = v0[7];
      v396 = v0[5];
      v398 = v0[4];
      (*(v0[45] + 8))(v0[46], v0[44]);

      v286 = v0[1];

      v286(v332);
      return;
    }

    v14 = *(v11 + 8 * v16);
    ++v10;
    if (v14)
    {
      v10 = v16;
LABEL_10:
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v18 = v17 | (v10 << 6);
      v19 = (*(v9 + 48) + 16 * v18);
      v20 = v19[1];
      v21 = *(*(v9 + 56) + 8 * v18);
      if (v20)
      {
        if (*(v21 + 16))
        {
          v372 = *(v21 + 16);
          v352 = v14;
          v300 = *v19;
          v34 = v0[31];
          v33 = v0[32];
          v35 = v0[28];
          v310 = v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
          v393 = *(v3 + 16);
          (v393)(v0[43]);
          sub_24AE08288();
          v306 = v20;
          sub_24AE08288();
          sub_24AE08B28();
          sub_24AD91240(&v399);
          v354 = *v367;
          (*v367)(v34, v35);
          v36 = v399;
          v304 = v400;
          v298 = v401;
          v294 = v402;
          v37 = v403;
          v38 = *(v21 + 16);
          v369 = v21;
          v326 = v3;
          v292 = v15;
          v293 = v11;
          v296 = v399;
          if (v38)
          {
            v404[0] = MEMORY[0x277D84F90];
            sub_24ADFB078(0, v38, 0);
            v39 = v404[0];
            v343 = *(v3 + 72);
            v40 = v310;
            do
            {
              v41 = v380[42];
              v43 = v380[31];
              v42 = v380[32];
              v44 = v380[28];
              v393(v41, v40, v42);
              sub_24AE08B28();
              sub_24AD91240(&v399);
              v46 = v399;
              v45 = v400;
              v381 = v401;
              v358 = v402;
              v387 = v403;
              v354(v43, v44);
              (*v397)(v41, v42);
              v404[0] = v39;
              v48 = *(v39 + 16);
              v47 = *(v39 + 24);
              v49 = v48 + 1;
              if (v48 >= v47 >> 1)
              {
                sub_24ADFB078((v47 > 1), v48 + 1, 1);
                v39 = v404[0];
              }

              *(v39 + 16) = v49;
              v50 = v39 + 48 * v48;
              *(v50 + 32) = v46;
              *(v50 + 40) = v45;
              *(v50 + 48) = v381;
              *(v50 + 56) = v358;
              *(v50 + 64) = v387;
              v40 += v343;
              --v38;
            }

            while (v38);
            v51 = MEMORY[0x277D84F90];
          }

          else
          {
            v51 = MEMORY[0x277D84F90];
            v49 = *(MEMORY[0x277D84F90] + 16);
            if (!v49)
            {
              v52 = MEMORY[0x277D84F90];

              goto LABEL_28;
            }

            v39 = MEMORY[0x277D84F90];
          }

          v404[0] = v51;
          sub_24ADFB038(0, v49, 0);
          v52 = v404[0];
          v53 = *(v404[0] + 16);
          v54 = 40 * v53 + 64;
          v55 = (v39 + 64);
          do
          {
            v56 = *(v55 - 3);
            v359 = *(v55 - 16);
            v57 = *v55;
            v382 = *(v55 - 4);
            v388 = *(v55 - 1);
            v404[0] = v52;
            v58 = *(v52 + 24);
            sub_24AE08288();
            sub_24AE08288();
            if (v53 >= v58 >> 1)
            {
              sub_24ADFB038((v58 > 1), v53 + 1, 1);
              v52 = v404[0];
            }

            *(v52 + 16) = v53 + 1;
            v59 = (v52 + v54);
            *(v59 - 4) = v382;
            *(v59 - 3) = v56;
            *(v59 - 16) = v359;
            v54 += 40;
            v55 += 6;
            ++v53;
            *(v59 - 1) = v388;
            *v59 = v57;
            --v49;
          }

          while (v49);

          v0 = v380;
          v36 = v296;
LABEL_28:
          PersonModel.AssociatedHandles.init(allHandles:)(v52, &v399);
          v60 = v400;
          if (v400)
          {
            v61 = *(&v403 + 1);
            v309 = v403;
            v302 = v402;
            v303 = v401;
            v62 = v399;
          }

          else
          {
            sub_24AE08288();
            sub_24AE08288();
            v61 = sub_24AE08288();
            v62 = v36;
            v60 = v304;
            v303 = v298;
            v302 = v294;
            v309 = v37;
          }

          v307 = v61;
          v308 = v60;
          v301 = v62;
          if ((v36 != v62 || v304 != v60) && (sub_24AE097C8() & 1) == 0 || v298 != v303 || (v294 != v302 || v37 != v309) && (sub_24AE097C8() & 1) == 0)
          {
            v63 = v0[2];
            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            v389 = sub_24AE08DE8();
            v64 = sub_24AE093F8();

            if (os_log_type_enabled(v389, v64))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              v399 = v66;
              *v65 = 136315394;
              sub_24AE08288();
              v67 = sub_24AD9F840(v296, v304, &v399);

              *(v65 + 4) = v67;
              *(v65 + 12) = 2080;
              sub_24AE08288();
              v68 = sub_24AD9F840(v301, v60, &v399);

              *(v65 + 14) = v68;
              _os_log_impl(&dword_24AD89000, v389, v64, "Main Handle mismatch detected: SingleHandle: %s, cleanHandle: %s", v65, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C231F80](v66, -1, -1);
              MEMORY[0x24C231F80](v65, -1, -1);
            }
          }

          v69 = *(&v37 + 1);
          v70 = sub_24AE08288();
          v71 = sub_24ADADF80(v70);

          v72 = v307;
          v73 = sub_24AE08288();
          v74 = sub_24ADADF80(v73);

          v75 = sub_24AE0040C(v71, v74);

          if ((v75 & 1) == 0)
          {
            v76 = v0[2];
            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            v390 = sub_24AE08DE8();
            LOBYTE(v76) = sub_24AE093F8();

            v383 = v76;
            if (os_log_type_enabled(v390, v76))
            {
              v77 = swift_slowAlloc();
              v344 = swift_slowAlloc();
              v404[0] = v344;
              *v77 = 136315394;
              v78 = *(*(&v37 + 1) + 16);
              v360 = v77;
              if (v78)
              {
                v399 = MEMORY[0x277D84F90];
                sub_24ADFB058(0, v78, 0);
                v79 = 0;
                v80 = v399;
                v81 = *(v399 + 16);
                v82 = 16 * v81;
                do
                {
                  v83 = *(v69 + v79 + 32);
                  v84 = *(v69 + v79 + 40);
                  v399 = v80;
                  v85 = *(v80 + 24);
                  sub_24AE08288();
                  if (v81 >= v85 >> 1)
                  {
                    sub_24ADFB058((v85 > 1), v81 + 1, 1);
                    v80 = v399;
                  }

                  *(v80 + 16) = v81 + 1;
                  v86 = v80 + v82;
                  *(v86 + 32) = v83;
                  *(v86 + 40) = v84;
                  v82 += 16;
                  v79 += 40;
                  ++v81;
                  --v78;
                  v69 = *(&v37 + 1);
                }

                while (v78);

                v88 = v301;
                v77 = v360;
              }

              else
              {

                v80 = MEMORY[0x277D84F90];
                v88 = v301;
              }

              v89 = MEMORY[0x24C231100](v80, MEMORY[0x277D837D0]);
              v91 = v90;

              v92 = sub_24AD9F840(v89, v91, v404);

              *(v77 + 4) = v92;
              *(v77 + 12) = 2080;
              v93 = *(v307 + 16);
              if (v93)
              {
                v399 = MEMORY[0x277D84F90];
                sub_24ADFB058(0, v93, 0);
                v94 = v399;
                v95 = *(v399 + 16);
                v96 = 16 * v95;
                v97 = (v307 + 40);
                do
                {
                  v98 = *(v97 - 1);
                  v99 = *v97;
                  v399 = v94;
                  v100 = *(v94 + 24);
                  sub_24AE08288();
                  if (v95 >= v100 >> 1)
                  {
                    sub_24ADFB058((v100 > 1), v95 + 1, 1);
                    v94 = v399;
                  }

                  *(v94 + 16) = v95 + 1;
                  v101 = v94 + v96;
                  *(v101 + 32) = v98;
                  *(v101 + 40) = v99;
                  v96 += 16;
                  v97 += 5;
                  ++v95;
                  --v93;
                }

                while (v93);
                v88 = v301;
                v77 = v360;
              }

              else
              {
                v94 = MEMORY[0x277D84F90];
              }

              v102 = MEMORY[0x24C231100](v94, MEMORY[0x277D837D0]);
              v104 = v103;

              v105 = sub_24AD9F840(v102, v104, v404);

              *(v77 + 14) = v105;
              _os_log_impl(&dword_24AD89000, v390, v383, "Other Handles mismatch detected: SingleHandle: %s, cleanHandle: %s", v77, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C231F80](v344, -1, -1);
              MEMORY[0x24C231F80](v77, -1, -1);

              v0 = v380;
              v72 = v307;
              v87 = v322;
LABEL_61:
              v399 = v88;
              v400 = v308;
              v401 = v303;
              v402 = v302;
              *&v403 = v309;
              *(&v403 + 1) = v72;
              v106 = sub_24ADFD714(&v399, v331);
              if (v87)
              {
                v107 = v0[2];
                sub_24AE08288();
                v108 = sub_24AE08DE8();
                v109 = sub_24AE093F8();

                if (os_log_type_enabled(v108, v109))
                {
                  v110 = swift_slowAlloc();
                  v111 = swift_slowAlloc();
                  v399 = v111;
                  *v110 = 136315394;
                  *(v110 + 4) = sub_24AD9F840(0xD00000000000001BLL, 0x800000024AE12EC0, &v399);
                  *(v110 + 12) = 2082;
                  sub_24AE08288();
                  v112 = sub_24AD9F840(v300, v306, &v399);

                  *(v110 + 14) = v112;
                  _os_log_impl(&dword_24AD89000, v108, v109, "%s - Couldn't fetch CNContact for %{public}s", v110, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x24C231F80](v111, -1, -1);
                  MEMORY[0x24C231F80](v110, -1, -1);
                }

                v305 = 0;
                v113 = v326;
              }

              else
              {
                v113 = v326;
                if (v106)
                {
                  v139 = v106;
                  v140 = [v330 stringFromContact_];
                  v305 = v139;
                  if (v140)
                  {
                    v141 = v140;
                    v142 = sub_24AE08FB8();
                    v295 = v143;
                    v297 = v142;

                    v119 = v354;
                    goto LABEL_66;
                  }
                }

                else
                {
                  v305 = 0;
                }
              }

              v114 = v0[43];
              v115 = v0[31];
              v116 = v0[28];
              sub_24AE08B28();
              v117 = sub_24AE08B48();
              v295 = v118;
              v297 = v117;
              v119 = v354;
              v354(v115, v116);
LABEL_66:
              sub_24AE08288();
              v384 = *(v113 + 72);
              v120 = v310;
              v121 = v372;
              v122 = MEMORY[0x277D84F90];
              do
              {
                v123 = v0[30];
                v124 = v0[28];
                v393(v0[41], v120, v0[32]);
                sub_24AE08B28();
                v125 = sub_24AE08B58();
                v127 = v126;
                v119(v123, v124);
                v128 = v0[41];
                v129 = v0[32];
                if (v127)
                {
                  v130 = sub_24AD9158C(v125, v127);
                  v132 = v131;
                  v391 = *v397;
                  (*v397)(v128, v129);
                  if ((v132 & 1) == 0)
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v122 = sub_24ADAAB10(0, *(v122 + 2) + 1, 1, v122);
                    }

                    v134 = *(v122 + 2);
                    v133 = *(v122 + 3);
                    if (v134 >= v133 >> 1)
                    {
                      v122 = sub_24ADAAB10((v133 > 1), v134 + 1, 1, v122);
                    }

                    *(v122 + 2) = v134 + 1;
                    *&v122[8 * v134 + 32] = v130;
                  }
                }

                else
                {
                  v391 = *v397;
                  (*v397)(v0[41], v0[32]);
                }

                v120 += v384;
                --v121;
              }

              while (v121);
              v135 = *(v122 + 2);
              if (v135)
              {
                v136 = *(v122 + 4);
                v137 = v135 - 1;
                if (v135 != 1)
                {
                  if (v135 < 5)
                  {
                    v138 = 1;
                    goto LABEL_87;
                  }

                  v138 = v137 & 0xFFFFFFFFFFFFFFFCLL | 1;
                  v144 = vdupq_n_s64(v136);
                  v145 = (v122 + 56);
                  v146 = v137 & 0xFFFFFFFFFFFFFFFCLL;
                  v147 = v144;
                  do
                  {
                    v144 = vbslq_s8(vcgtq_s64(v144, v145[-1]), v145[-1], v144);
                    v147 = vbslq_s8(vcgtq_s64(v147, *v145), *v145, v147);
                    v145 += 2;
                    v146 -= 4;
                  }

                  while (v146);
                  v148 = vbslq_s8(vcgtq_s64(v147, v144), v144, v147);
                  v149 = vextq_s8(v148, v148, 8uLL).u64[0];
                  v136 = vbsl_s8(vcgtd_s64(v149, v148.i64[0]), *v148.i8, v149);
                  if (v137 != (v137 & 0xFFFFFFFFFFFFFFFCLL))
                  {
LABEL_87:
                    v150 = v135 - v138;
                    v151 = &v122[8 * v138 + 32];
                    do
                    {
                      v153 = *v151;
                      v151 += 8;
                      v152 = v153;
                      if (v153 < v136)
                      {
                        v136 = v152;
                      }

                      --v150;
                    }

                    while (v150);
                  }
                }
              }

              else
              {
                v136 = 0;
              }

              v290 = *(v122 + 2);
              v291 = v136;

              v154 = 0;
              v155 = v310;
              v156 = v369;
              do
              {
                v323 = v154;
                if (v372 == v154)
                {
                  break;
                }

                if (v154 >= *(v156 + 16))
                {
                  goto LABEL_172;
                }

                v361 = v155 + v384;
                ++v154;
                v157 = v0[40];
                v158 = v0[32];
                v160 = v0[26];
                v159 = v0[27];
                v161 = v0[24];
                (v393)(v157);
                sub_24AE08B08();
                (*v378)(v160, v339, v161);
                v162 = sub_24AE089C8();
                v163 = *v376;
                (*v376)(v160, v161);
                v163(v159, v161);
                v156 = v369;
                v0 = v380;
                v391(v157, v158);
                v155 = v361;
              }

              while ((v162 & 1) == 0);
              v164 = 0;
              v165 = v310;
              do
              {
                v321 = v164;
                if (v372 == v164)
                {
                  break;
                }

                if (v164 >= *(v156 + 16))
                {
                  goto LABEL_173;
                }

                v362 = v165 + v384;
                ++v164;
                v166 = v0[39];
                v167 = v0[32];
                v169 = v0[26];
                v168 = v0[27];
                v170 = v0[24];
                (v393)(v166);
                sub_24AE08B08();
                (*v378)(v169, v337, v170);
                v171 = sub_24AE089C8();
                v172 = *v376;
                (*v376)(v169, v170);
                v172(v168, v170);
                v156 = v369;
                v0 = v380;
                v391(v166, v167);
                v165 = v362;
              }

              while ((v171 & 1) == 0);
              v173 = 0;
              v174 = v310;
              while (1)
              {
                if (v173 >= *(v369 + 16))
                {
                  goto LABEL_171;
                }

                v176 = v0[26];
                v175 = v0[27];
                v177 = v0[24];
                v393(v0[38], v174, v0[32]);
                sub_24AE08B08();
                v363 = *v378;
                (*v378)(v176, v341, v177);
                v178 = sub_24AE089C8();
                v179 = *v376;
                (*v376)(v176, v177);
                v355 = v179;
                v179(v175, v177);
                if (v178)
                {
                  break;
                }

                ++v173;
                v391(v0[38], v0[32]);
                v174 += v384;
                if (v372 == v173)
                {
                  v180 = 1;
                  goto LABEL_105;
                }
              }

              (*v313)(v0[23], v0[38], v0[32]);
              v180 = 0;
LABEL_105:
              v181 = v0[32];
              v183 = v0[22];
              v182 = v0[23];
              (*v316)(v182, v180, 1, v181);
              sub_24AD92B7C(v182, v183, &qword_27EFA8880, &qword_24AE0A2D0);
              v345 = *v319;
              if ((*v319)(v183, 1, v181) == 1)
              {
                v184 = v0[19];
                v185 = v0[12];
                sub_24AD92BE4(v0[22], &qword_27EFA8880, &qword_24AE0A2D0);
                (*v320)(v184, 1, 1, v185);
              }

              else
              {
                v186 = v0[32];
                v187 = v0[22];
                v188 = v0[19];
                sub_24AE08B18();
                v391(v187, v186);
              }

              v190 = v0[18];
              v189 = v0[19];
              v191 = v0[16];
              v192 = v0[12];
              sub_24AE08868();
              v193 = *v320;
              (*v320)(v190, 0, 1, v192);
              v194 = *(v317 + 48);
              sub_24AD92B7C(v189, v191, &qword_27EFA8878, &qword_24AE0E6E0);
              sub_24AD92B7C(v190, v191 + v194, &qword_27EFA8878, &qword_24AE0E6E0);
              v195 = *v318;
              v196 = (*v318)(v191, 1, v192);
              v197 = v0[12];
              v299 = v193;
              if (v196 == 1)
              {
                v198 = v0[19];
                sub_24AD92BE4(v0[18], &qword_27EFA8878, &qword_24AE0E6E0);
                sub_24AD92BE4(v198, &qword_27EFA8878, &qword_24AE0E6E0);
                if (v195(v191 + v194, 1, v197) == 1)
                {
                  sub_24AD92BE4(v0[16], &qword_27EFA8878, &qword_24AE0E6E0);
LABEL_118:
                  v208 = v0[20];
                  v209 = v0[12];
                  goto LABEL_119;
                }
              }

              else
              {
                sub_24AD92B7C(v0[16], v0[17], &qword_27EFA8878, &qword_24AE0E6E0);
                v199 = v195(v191 + v194, 1, v197);
                v200 = v0[18];
                v201 = v0[19];
                v202 = v0[17];
                if (v199 != 1)
                {
                  v288 = v0[16];
                  v213 = v0[14];
                  v214 = v0[12];
                  (*v311)(v213, v191 + v194, v214);
                  sub_24AD92ED0(&qword_27EFA8890, MEMORY[0x277CC9578]);
                  v287 = sub_24AE08EF8();
                  v215 = *v312;
                  (*v312)(v213, v214);
                  sub_24AD92BE4(v200, &qword_27EFA8878, &qword_24AE0E6E0);
                  sub_24AD92BE4(v201, &qword_27EFA8878, &qword_24AE0E6E0);
                  v216 = v214;
                  v193 = v299;
                  v215(v202, v216);
                  sub_24AD92BE4(v288, &qword_27EFA8878, &qword_24AE0E6E0);
                  if (v287)
                  {
                    goto LABEL_118;
                  }

LABEL_114:
                  v204 = v0[32];
                  v205 = v0[21];
                  sub_24AD92B7C(v0[23], v205, &qword_27EFA8880, &qword_24AE0A2D0);
                  if (v345(v205, 1, v204) != 1)
                  {
                    v210 = v0[32];
                    v211 = v0[20];
                    v212 = v0[21];
                    sub_24AE08B18();
                    v391(v212, v210);
LABEL_120:
                    v289 = v345(v0[23], 1, v0[32]);
                    v217 = 0;
                    v218 = v310;
                    do
                    {
                      v219 = v217;
                      if (v372 == v217)
                      {
                        break;
                      }

                      if (v217 >= *(v369 + 16))
                      {
                        goto LABEL_174;
                      }

                      v346 = v218 + v384;
                      ++v217;
                      v220 = v380[37];
                      v221 = v380[32];
                      v223 = v380[26];
                      v222 = v380[27];
                      v224 = v380[24];
                      (v393)(v220);
                      sub_24AE08B08();
                      v363(v223, v335, v224);
                      v225 = sub_24AE089C8();
                      v355(v223, v224);
                      v355(v222, v224);
                      v391(v220, v221);
                      v218 = v346;
                    }

                    while ((v225 & 1) == 0);
                    v226 = 0;
                    v227 = v310;
                    do
                    {
                      v228 = v226;
                      if (v372 == v226)
                      {
                        break;
                      }

                      if (v226 >= *(v369 + 16))
                      {
                        goto LABEL_175;
                      }

                      v347 = v227 + v384;
                      ++v226;
                      v229 = v380[36];
                      v230 = v380[32];
                      v232 = v380[26];
                      v231 = v380[27];
                      v233 = v380[24];
                      (v393)(v229);
                      sub_24AE08B08();
                      v363(v232, v333, v233);
                      v234 = sub_24AE089C8();
                      v355(v232, v233);
                      v355(v231, v233);
                      v391(v229, v230);
                      v227 = v347;
                    }

                    while ((v234 & 1) == 0);
                    v235 = v380[2];
                    sub_24AE08288();
                    sub_24AE08288();
                    v236 = sub_24AE08DE8();
                    v237 = sub_24AE093E8();

                    if (os_log_type_enabled(v236, v237))
                    {
                      v364 = v380[32];
                      v238 = swift_slowAlloc();
                      v239 = swift_slowAlloc();
                      v399 = v239;
                      *v238 = 136315650;
                      *(v238 + 4) = sub_24AD9F840(0xD00000000000001BLL, 0x800000024AE12EC0, &v399);
                      *(v238 + 12) = 2080;
                      v240 = sub_24AD9F840(v300, v306, &v399);

                      *(v238 + 14) = v240;
                      *(v238 + 22) = 2080;
                      v241 = MEMORY[0x24C231100](v369, v364);
                      v243 = sub_24AD9F840(v241, v242, &v399);

                      *(v238 + 24) = v243;
                      _os_log_impl(&dword_24AD89000, v236, v237, "%s - compactMap %s - %s", v238, 0x20u);
                      swift_arrayDestroy();
                      MEMORY[0x24C231F80](v239, -1, -1);
                      MEMORY[0x24C231F80](v238, -1, -1);
                    }

                    else
                    {
                    }

                    if (v372 == v323)
                    {
                      if (v372 == v321)
                      {
                        v244 = v380;
                        goto LABEL_137;
                      }

                      v244 = v380;
                      v247 = v380[10];
                    }

                    else
                    {
                      v244 = v380;
                      v245 = v380[12];
                      v246 = v380[10];
                      v247 = v246 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
                      v299(v246, 1, 1, v245);
                    }

                    v299(v247, 1, 1, v244[12]);
LABEL_137:
                    v249 = v244[10];
                    v248 = v244[11];
                    v250 = v244[9];
                    swift_storeEnumTagMultiPayload();
                    sub_24AD92C44(v249, v248, type metadata accessor for PersonModel.Relationship.Following);
                    if (v289 == 1)
                    {
                      if (v372 == v219 && v372 == v228)
                      {
                        v244 = v380;
                        v251 = v369;
                        v252 = v372;
LABEL_144:
                        v257 = v244[7];
                        v256 = v244[8];
                        v258 = v244[6];
                        swift_storeEnumTagMultiPayload();
                        sub_24AD92C44(v257, v256, type metadata accessor for PersonModel.Relationship.Follower);
                        v259 = 0;
                        v260 = v310;
                        while (1)
                        {
                          if (v259 >= *(v251 + 16))
                          {
                            goto LABEL_169;
                          }

                          v261 = v244[35];
                          v262 = v244[32];
                          v393(v261, v260, v262);
                          v263 = sub_24AE08AF8();
                          v391(v261, v262);
                          if (v263 != 2 && (v263 & 1) != 0)
                          {
                            break;
                          }

                          ++v259;
                          v260 += v384;
                          if (v252 == v259)
                          {
                            v373 = 0;
                            goto LABEL_151;
                          }
                        }

                        v373 = 1;
LABEL_151:
                        v264 = v310;
                        v265 = 0;
                        while (1)
                        {
                          if (v265 >= *(v251 + 16))
                          {
                            goto LABEL_170;
                          }

                          v266 = v244[34];
                          v267 = v244[32];
                          v393(v266, v264, v267);
                          v268 = sub_24AE08AF8();
                          v391(v266, v267);
                          if (v268 != 2 && (v268 & 1) == 0)
                          {
                            break;
                          }

                          ++v265;
                          v264 += v384;
                          if (v252 == v265)
                          {

                            if (v373)
                            {
                              v269 = 0;
                            }

                            else
                            {
                              v269 = 2;
                            }

LABEL_160:
                            v394 = v269;
                            sub_24AE08288();
                            if (v305)
                            {
                              v270 = [v305 identifier];

                              v348 = sub_24AE08FB8();
                              v324 = v271;
                            }

                            else
                            {
                              v305 = 0;
                              v348 = 0;
                              v324 = 0;
                            }

                            v0 = v380;
                            v370 = v380[32];
                            v374 = v380[43];
                            v385 = v380[23];
                            v365 = v380[20];
                            v356 = v380[11];
                            v272 = v380[8];
                            v273 = v380[4];
                            v274 = v380[5];
                            v275 = v274 + *(v314 + 32);
                            sub_24AD92CAC(v356, v275, type metadata accessor for PersonModel.Relationship.Following);
                            v276 = type metadata accessor for PersonModel.Relationship(0);
                            sub_24AD92CAC(v272, v275 + *(v276 + 20), type metadata accessor for PersonModel.Relationship.Follower);
                            *(v275 + *(v276 + 24)) = v394;
                            *v274 = v300;
                            *(v315 + 8) = v306;
                            *(v315 + 16) = v301;
                            *(v315 + 24) = v308;
                            *(v315 + 32) = v303;
                            *(v315 + 40) = v302;
                            *(v315 + 48) = v309;
                            *(v315 + 56) = v307;
                            *(v315 + 64) = v297;
                            *(v315 + 72) = v295;
                            *(v315 + 80) = v348;
                            *(v315 + 88) = v324;
                            v277 = v274 + *(v314 + 36);
                            *v277 = v291;
                            v277[8] = v290 == 0;
                            sub_24AD92CAC(v274, v273, type metadata accessor for PersonModel);
                            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                            v399 = v332;
                            sub_24ADBEF5C(v273, v300, v306, isUniquelyReferenced_nonNull_native);

                            sub_24AD92D14(v272, type metadata accessor for PersonModel.Relationship.Follower);
                            sub_24AD92D14(v356, type metadata accessor for PersonModel.Relationship.Following);
                            sub_24AD92BE4(v365, &qword_27EFA8878, &qword_24AE0E6E0);
                            v391(v374, v370);
                            v332 = v399;
                            sub_24AD92D14(v274, type metadata accessor for PersonModel);
                            sub_24AD92BE4(v385, &qword_27EFA8880, &qword_24AE0A2D0);
                            v322 = 0;
                            v9 = v350;
                            v14 = v352;
                            v3 = v326;
                            v15 = v292;
                            v11 = v293;
                            goto LABEL_5;
                          }
                        }

                        v269 = v373 ^ 1;
                        goto LABEL_160;
                      }

                      v244 = v380;
                      v255 = v380[7];
                      v252 = v372;
                    }

                    else
                    {
                      v253 = v244[20];
                      v254 = v244[7];
                      v255 = v254 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
                      sub_24AD92B7C(v253, v254, &qword_27EFA8878, &qword_24AE0E6E0);
                      v252 = v372;
                    }

                    v299(v255, 1, 1, v244[12]);
                    v251 = v369;
                    goto LABEL_144;
                  }

                  v206 = v0[20];
                  v207 = v0[12];
                  sub_24AD92BE4(v0[21], &qword_27EFA8880, &qword_24AE0A2D0);
                  v208 = v206;
                  v209 = v207;
LABEL_119:
                  v193(v208, 1, 1, v209);
                  goto LABEL_120;
                }

                v203 = v0[12];
                sub_24AD92BE4(v0[18], &qword_27EFA8878, &qword_24AE0E6E0);
                sub_24AD92BE4(v201, &qword_27EFA8878, &qword_24AE0E6E0);
                (*v312)(v202, v203);
              }

              sub_24AD92BE4(v0[16], &qword_27EFA8870, &unk_24AE0A2C0);
              goto LABEL_114;
            }
          }

          v87 = v322;
          v88 = v301;
          goto LABEL_61;
        }
      }

      else
      {
        v351 = v14;
        v22 = v0[2];
        sub_24AE08288();
        v23 = sub_24AE08DE8();
        v24 = sub_24AE093F8();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = v0[32];
          v26 = swift_slowAlloc();
          v325 = v3;
          v27 = swift_slowAlloc();
          v399 = v27;
          *v26 = 136315394;
          *(v26 + 4) = sub_24AD9F840(0xD00000000000001BLL, 0x800000024AE12EC0, &v399);
          *(v26 + 12) = 2080;
          v28 = MEMORY[0x24C231100](v21, v25);
          v30 = v29;

          v31 = sub_24AD9F840(v28, v30, &v399);

          *(v26 + 14) = v31;
          _os_log_impl(&dword_24AD89000, v23, v24, "%s - compactMap: Found NIL key with values: %s", v26, 0x16u);
          swift_arrayDestroy();
          v32 = v27;
          v3 = v325;
          MEMORY[0x24C231F80](v32, -1, -1);
          MEMORY[0x24C231F80](v26, -1, -1);
        }

        else
        {
        }

        v9 = v350;
        v14 = v351;
      }

      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
}

uint64_t sub_24AD9103C()
{
  v1 = v0[46];
  v3 = v0[42];
  v2 = v0[43];
  v5 = v0[40];
  v4 = v0[41];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[36];
  v9 = v0[37];
  v10 = v0[35];
  v14 = v0[34];
  v15 = v0[31];
  v16 = v0[30];
  v17 = v0[27];
  v18 = v0[26];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[21];
  v22 = v0[20];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[16];
  v27 = v0[14];
  v28 = v0[11];
  v29 = v0[10];
  v30 = v0[8];
  v31 = v0[7];
  v32 = v0[5];
  v33 = v0[4];

  v11 = v0[1];
  v12 = v0[48];

  return v11();
}

uint64_t Handle.fmuiPersonServerIdentifier.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24AE08B98();
  if (v3)
  {
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AD91240@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24AE08B48();
  PersonModel.Handle.init(rawValue:)(v2, v3, v39);
  v35[0] = v39[0];
  v35[1] = v39[1];
  v36 = v40;
  v37 = v41;
  v38 = v42;
  v4 = sub_24AE08B78();
  v5 = *(v4 + 16);
  if (!v5)
  {

    return PersonModel.AssociatedHandles.init(mainHandle:otherHandles:)(v35, a1);
  }

  v31 = a1;
  v34 = MEMORY[0x277D84F90];
  sub_24ADFB038(0, v5, 0);
  v32 = *MEMORY[0x277CBECE8];
  v6 = (v4 + 40);
  do
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    v9 = sub_24AE09008();
    v10 = v9;
    v12 = v11;
    v13 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v13 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13)
    {
      sub_24AE08288();
      v18 = 2;
      goto LABEL_17;
    }

    v33 = v9;
    sub_24AD92D74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88A0, &unk_24AE0A2E0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_24AE0A280;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_24AD92DC0();
    *(v14 + 32) = 0xD000000000000029;
    *(v14 + 40) = 0x800000024AE12EE0;
    sub_24AE08288();
    v15 = sub_24AE093C8();
    v16 = sub_24AE08F88();
    v17 = [v15 evaluateWithObject_];

    if (v17)
    {
      v18 = 1;
    }

    else if (sub_24ADFEF04(v7, v8))
    {
      sub_24ADA4B88();
      v19 = sub_24AE08F88();
      v20 = sub_24AE08F88();

      v21 = CFPhoneNumberCreate();

      if (!v21)
      {
        goto LABEL_15;
      }

      v22 = v21;
      String = CFPhoneNumberCreateString();
      if (!String)
      {

LABEL_15:
        v18 = 0;
        goto LABEL_16;
      }

      v24 = String;
      v7 = sub_24AE08FB8();
      v26 = v25;

      v18 = 0;
      v8 = v26;
    }

    else
    {
      v18 = 2;
    }

LABEL_16:
    v10 = v33;
LABEL_17:
    v28 = *(v34 + 16);
    v27 = *(v34 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_24ADFB038((v27 > 1), v28 + 1, 1);
    }

    *(v34 + 16) = v28 + 1;
    v29 = v34 + 40 * v28;
    *(v29 + 32) = v10;
    *(v29 + 40) = v12;
    *(v29 + 48) = v18;
    *(v29 + 56) = v7;
    *(v29 + 64) = v8;
    v6 += 2;
    --v5;
  }

  while (v5);

  a1 = v31;
  return PersonModel.AssociatedHandles.init(mainHandle:otherHandles:)(v35, a1);
}

uint64_t sub_24AD9158C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_24AE09568();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_24AD91D44(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t Handle.fmuiPersonUniqueIdentifier.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24AE08B98();
  if (v3)
  {
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AD918BC(uint64_t a1, id *a2)
{
  result = sub_24AE08F98();
  *a2 = 0;
  return result;
}

uint64_t sub_24AD91934(uint64_t a1, id *a2)
{
  v3 = sub_24AE08FA8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24AD919B4@<X0>(uint64_t *a1@<X8>)
{
  sub_24AE08FB8();
  v2 = sub_24AE08F88();

  *a1 = v2;
  return result;
}

uint64_t sub_24AD919F8(uint64_t a1)
{
  v2 = sub_24AD92ED0(&qword_27EFA8910, type metadata accessor for SPBeaconType);
  v3 = sub_24AD92ED0(&qword_27EFA8918, type metadata accessor for SPBeaconType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24AD91AB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24AE08F88();

  *a2 = v5;
  return result;
}

uint64_t sub_24AD91AFC(uint64_t a1)
{
  v2 = sub_24AD92ED0(&qword_27EFA8900, type metadata accessor for SPBeaconLocationSource);
  v3 = sub_24AD92ED0(&qword_27EFA8908, type metadata accessor for SPBeaconLocationSource);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24AD91BB8()
{
  v1 = *v0;
  v2 = sub_24AE08FB8();
  v3 = MEMORY[0x24C231020](v2);

  return v3;
}

uint64_t sub_24AD91BF4()
{
  v1 = *v0;
  sub_24AE08FB8();
  sub_24AE09048();
}

uint64_t sub_24AD91C48()
{
  v1 = *v0;
  sub_24AE08FB8();
  sub_24AE09838();
  sub_24AE09048();
  v2 = sub_24AE09868();

  return v2;
}

uint64_t sub_24AD91CBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24AE08FB8();
  v6 = v5;
  if (v4 == sub_24AE08FB8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24AE097C8();
  }

  return v9 & 1;
}

unsigned __int8 *sub_24AD91D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_24AE08288();
  result = sub_24AE090F8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24AD922D0();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24AE09568();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_24AD922D0()
{
  v0 = sub_24AE09108();
  v4 = sub_24AD92350(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_24AD92350(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_24AE09038();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_24AE09448();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_24AD9FC80(v9, 0);
  v12 = sub_24AD924A8(v15, (v11 + 4), v10, a1, a2, a3, a4);
  sub_24AE08288();

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_24AE09038();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_24AE09568();
LABEL_4:

  return sub_24AE09038();
}

unint64_t sub_24AD924A8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_24AD926C8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24AE090B8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_24AE09568();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_24AD926C8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_24AE09098();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_24AD926C8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24AE090C8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C230FE0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_24AD92744(uint64_t a1)
{
  v2 = sub_24AE08BA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_24AE08B38();
  v7 = *(*(v63 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v63);
  v59 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v49 - v11;
  v12 = MEMORY[0x277D84F98];
  v64 = MEMORY[0x277D84F98];
  v13 = *(a1 + 16);
  if (!v13)
  {
    return v12;
  }

  v15 = *(v10 + 16);
  v14 = v10 + 16;
  v51 = *(v14 + 64);
  v16 = *(v14 + 56);
  v56 = (v51 + 32) & ~v51;
  v17 = a1 + v56;
  v57 = (v3 + 8);
  v58 = v15;
  v60 = (v14 + 16);
  v50 = xmmword_24AE0A280;
  v52 = v6;
  v53 = v2;
  v54 = v16;
  v55 = v14;
  while (1)
  {
    v61 = v13;
    v58(v62, v17, v63);
    sub_24AE08B28();
    v21 = sub_24AE08B98();
    v23 = v22;
    v24 = v22 ? v21 : 0;
    v25 = v6;
    (*v57)(v6, v2);
    v27 = sub_24ADD69DC(v24, v23);
    v28 = v12[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v12[3] < v30)
    {
      sub_24ADBDA64(v30, 1);
      v12 = v64;
      v32 = sub_24ADD69DC(v24, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_22;
      }

      v27 = v32;
    }

    if (v31)
    {

      v34 = v12[7];
      v35 = *v60;
      (*v60)(v59, v62, v63);
      v36 = *(v34 + 8 * v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v34 + 8 * v27) = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_24ADAAC14(0, v36[2] + 1, 1, v36);
        *(v34 + 8 * v27) = v36;
      }

      v38 = v61;
      v40 = v36[2];
      v39 = v36[3];
      if (v40 >= v39 >> 1)
      {
        v36 = sub_24ADAAC14(v39 > 1, v40 + 1, 1, v36);
        *(v34 + 8 * v27) = v36;
      }

      v2 = v53;
      v18 = v54;
      v36[2] = v40 + 1;
      v19 = v36 + v56 + v40 * v18;
      v20 = v18;
      v35(v19, v59, v63);
      v6 = v52;
    }

    else
    {
      v41 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88B0, &unk_24AE0BA00);
      v42 = v56;
      v43 = swift_allocObject();
      *(v43 + 16) = v50;
      (*v60)((v43 + v42), v62, v63);
      v12[(v27 >> 6) + 8] |= 1 << v27;
      v44 = (v12[6] + 16 * v27);
      *v44 = v24;
      v44[1] = v23;
      *(v12[7] + 8 * v27) = v43;
      v45 = v12[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_21;
      }

      v12[2] = v47;
      v2 = v41;
      v20 = v54;
      v6 = v25;
      v38 = v61;
    }

    v17 += v20;
    v13 = v38 - 1;
    if (!v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88B8, &qword_24AE0A2F0);
  result = sub_24AE097E8();
  __break(1u);
  return result;
}

uint64_t sub_24AD92B7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AD92BE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AD92C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AD92CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AD92D14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24AD92D74()
{
  result = qword_27EFA8898;
  if (!qword_27EFA8898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFA8898);
  }

  return result;
}

unint64_t sub_24AD92DC0()
{
  result = qword_27EFA88A8;
  if (!qword_27EFA88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA88A8);
  }

  return result;
}

void sub_24AD92E3C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_24AD92ED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AD930A8(uint64_t a1)
{
  v53 = sub_24AE089B8();
  v2 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v54 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0;
  v6 = MEMORY[0x277D84F98];
  v55 = MEMORY[0x277D84F98];
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v51 = *MEMORY[0x277D08FD8];
  v50 = (v3 + 104);
  v49 = *MEMORY[0x277D08FE0];
  v45 = v3 + 32;
  v46 = v3;
  v44 = (v3 + 8);
  v43 = xmmword_24AE0A280;
  v47 = a1;
  v48 = v11;
  while (v10)
  {
LABEL_9:
    v13 = *(a1 + 48) + 24 * (__clz(__rbit64(v10)) | (v5 << 6));
    v14 = *(v13 + 8);
    v52 = *v13;
    v15 = *(v13 + 16);
    if (v15)
    {
      v16 = v49;
    }

    else
    {
      v16 = v51;
    }

    v17 = v54;
    (*v50)(v54, v16, v53);
    sub_24AE08288();
    v19 = sub_24ADD6A80(v17);
    v20 = v6[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_26;
    }

    v23 = v18;
    if (v6[3] < v22)
    {
      sub_24ADBE0E8(v22, 1);
      v6 = v55;
      v24 = sub_24ADD6A80(v54);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_28;
      }

      v19 = v24;
    }

    v10 &= v10 - 1;
    if (v23)
    {
      (*v44)(v54, v53);
      v26 = v6[7];
      v27 = *(v26 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 8 * v19) = v27;
      v42 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_24ADAAC64(0, *(v27 + 2) + 1, 1, v27);
        *(v26 + 8 * v19) = v27;
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v41 = v30 + 1;
        v38 = sub_24ADAAC64((v29 > 1), v30 + 1, 1, v27);
        v31 = v41;
        v27 = v38;
        *(v42 + 8 * v19) = v38;
      }

      *(v27 + 2) = v31;
      v32 = &v27[24 * v30];
      *(v32 + 4) = v52;
      *(v32 + 5) = v14;
      v32[48] = v15;
      a1 = v47;
      v11 = v48;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AE8, &qword_24AE0A768);
      v33 = swift_allocObject();
      *(v33 + 16) = v43;
      v34 = v53;
      *(v33 + 32) = v52;
      *(v33 + 40) = v14;
      *(v33 + 48) = v15;
      v6[(v19 >> 6) + 8] |= 1 << v19;
      (*(v46 + 32))(v6[6] + *(v46 + 72) * v19, v54, v34);
      *(v6[7] + 8 * v19) = v33;
      v35 = v6[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_27;
      }

      v6[2] = v37;
      v11 = v48;
    }
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return v6;
    }

    v10 = *(v7 + 8 * v12);
    ++v5;
    if (v10)
    {
      v5 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_24AE097E8();
  __break(1u);
  return result;
}

uint64_t Session.fetchPeopleLocations(_:logger:)(uint64_t *a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v5 = sub_24AE08E08();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v3[7] = *(v6 + 64);
  v7 = swift_task_alloc();
  v8 = *a1;
  v3[8] = v7;
  v3[9] = v8;

  return MEMORY[0x2822009F8](sub_24AD93528, 0, 0);
}

uint64_t sub_24AD93528()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  (*(v3 + 16))(v2, v0[3], v4);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[10] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v1;
  (*(v3 + 32))(v7 + v6, v2, v4);
  v8 = *(MEMORY[0x277D08920] + 4);

  sub_24AE08288();
  v9 = swift_task_alloc();
  v0[11] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AA0, &qword_24AE0A628);
  *v9 = v0;
  v9[1] = sub_24AD936A0;

  return MEMORY[0x28215EB08](v0 + 2, 0xD02AB486CEDC0000, 0, &unk_24AE0A620, v7, v10);
}

uint64_t sub_24AD936A0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_24AD937BC;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_24AD8E25C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AD937BC()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_24AD9382C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[2] = a3;
  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_24AD938E0;

  return sub_24AD93B34(v3 + 2);
}

uint64_t sub_24AD938E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_24AD93A2C;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_24AD93A08;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24AD93A44(uint64_t a1)
{
  v4 = *(sub_24AE08E08() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AD9B61C;

  return sub_24AD9382C(a1, v6, v7);
}

uint64_t sub_24AD93B34(uint64_t *a1)
{
  v2[18] = v1;
  v4 = sub_24AE08AC8();
  v2[19] = v4;
  v5 = *(v4 - 8);
  v2[20] = v5;
  v6 = *(v5 + 64) + 15;
  v2[21] = swift_task_alloc();
  v7 = sub_24AE089F8();
  v2[22] = v7;
  v8 = *(v7 - 8);
  v2[23] = v8;
  v9 = *(v8 + 64) + 15;
  v2[24] = swift_task_alloc();
  v10 = sub_24AE088E8();
  v2[25] = v10;
  v11 = *(v10 - 8);
  v2[26] = v11;
  v12 = *(v11 + 64) + 15;
  v2[27] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B00, &qword_24AE0A7A0);
  v2[28] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v15 = sub_24AE08BA8();
  v2[32] = v15;
  v16 = *(v15 - 8);
  v2[33] = v16;
  v17 = *(v16 + 64) + 15;
  v2[34] = swift_task_alloc();
  v18 = sub_24AE08A48();
  v2[35] = v18;
  v19 = *(v18 - 8);
  v2[36] = v19;
  v20 = *(v19 + 64) + 15;
  v21 = swift_task_alloc();
  v22 = *a1;
  v2[37] = v21;
  v2[38] = v22;

  return MEMORY[0x2822009F8](sub_24AD93DC0, 0, 0);
}

uint64_t sub_24AD93DC0()
{
  if (v0[38])
  {
    v1 = *(MEMORY[0x277D09350] + 4);
    v2 = swift_task_alloc();
    v0[39] = v2;
    *v2 = v0;
    v2[1] = sub_24AD93F28;
    v3 = v0[37];
    v4 = v0[18];

    return MEMORY[0x28215FA68](v3);
  }

  else
  {
    v5 = sub_24ADC2DB0(MEMORY[0x277D84F90]);
    v6 = v0[37];
    v7 = v0[34];
    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[29];
    v11 = v0[27];
    v12 = v0[24];
    v13 = v0[21];

    v14 = v0[1];

    return v14(v5);
  }
}

uint64_t sub_24AD93F28()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_24AD94DA0;
  }

  else
  {
    v3 = sub_24AD9403C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD9403C()
{
  v1 = v0;
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[35];
  v5 = sub_24AE08A28();
  v6 = (*(v2 + 8))(v3, v4);
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v0[38];
    v11 = v0[33];
    v29 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v35 = v5 + v29;
    v37 = v10 + 56;
    v28 = (v11 + 32);
    v34 = (v11 + 8);
    v12 = MEMORY[0x277D84F90];
    v31 = *(v5 + 16);
    v32 = v5;
    v30 = v11;
    v38 = v10;
    while (v9 < *(v5 + 16))
    {
      v36 = *(v11 + 72);
      (*(v11 + 16))(v1[34], v35 + v36 * v9, v1[32]);
      v39 = sub_24AE08B98();
      if (v13)
      {
        v14 = v13;
        if (*(v10 + 16))
        {
          v33 = v12;
          v15 = *(v10 + 40);
          sub_24AE09838();
          MEMORY[0x24C230FB0](v39, v14);
          sub_24AE09048();

          v16 = sub_24AE09868() & ~(-1 << *(v10 + 32));
          if ((*(v37 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
          {
            v17 = (*(v38 + 48) + 16 * v16);
            v19 = *v17;
            v18 = v17[1];
            sub_24AE08288();
            MEMORY[0x24C230FB0](v19, v18);
            MEMORY[0x24C230FB0](v39, v14);

            v12 = v33;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_24ADAAC3C(0, v33[2] + 1, 1, v33);
            }

            v1 = v0;
            v8 = v31;
            v5 = v32;
            v10 = v38;
            v21 = v12[2];
            v20 = v12[3];
            if (v21 >= v20 >> 1)
            {
              v12 = sub_24ADAAC3C(v20 > 1, v21 + 1, 1, v12);
            }

            v22 = v0[34];
            v23 = v0[32];
            v12[2] = v21 + 1;
            v6 = (*v28)(v12 + v29 + v21 * v36, v22, v23);
          }

          else
          {
            v1 = v0;
            (*v34)(v0[34], v0[32]);

            v5 = v32;
            v8 = v31;
            v10 = v38;
          }

          v11 = v30;
        }

        else
        {
          (*v34)(v1[34], v1[32]);
        }
      }

      else
      {
        v6 = (*v34)(v1[34], v1[32]);
      }

      if (++v9 == v8)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
LABEL_20:
    v1[41] = v12;
    v24 = *(MEMORY[0x277D09468] + 4);
    v25 = swift_task_alloc();
    v1[42] = v25;
    *v25 = v1;
    v25[1] = sub_24AD94484;
    v26 = v1[18];
    v6 = v12;
    v7 = 1;
  }

  return MEMORY[0x28215FBA0](v6, v7);
}

uint64_t sub_24AD94484(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v8 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    v5 = sub_24AD94E6C;
  }

  else
  {
    v6 = v3[41];

    v5 = sub_24AD945A0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AD945A0()
{
  v100 = v0;
  v1 = v0[43];
  v2 = v0[33];
  v95 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[20];
  v89 = sub_24ADC2DB0(MEMORY[0x277D84F90]);
  v6 = v1 + 64;
  v7 = -1;
  v8 = -1 << *(v1 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v1 + 64);
  v10 = (63 - v8) >> 6;
  v92 = v2;
  v94 = (v2 + 8);
  v87 = (v4 + 88);
  v88 = (v3 + 8);
  v86 = *MEMORY[0x277D09088];
  v83 = *MEMORY[0x277D09078];
  v81 = *MEMORY[0x277D09080];
  v79 = *MEMORY[0x277D09090];
  v77 = (v4 + 8);
  v85 = (v5 + 88);
  v84 = *MEMORY[0x277D090F8];
  v82 = *MEMORY[0x277D090E0];
  v80 = *MEMORY[0x277D09100];
  v78 = *MEMORY[0x277D090F0];
  v76 = *MEMORY[0x277D090E8];
  v74 = (v5 + 8);
  v75 = *MEMORY[0x277D090D8];
  v93 = v1;
  result = sub_24AE08288();
  v12 = 0;
  v90 = v10;
  v91 = v1 + 64;
LABEL_4:
  v13 = v12;
  if (!v9)
  {
    goto LABEL_6;
  }

  do
  {
    v12 = v13;
LABEL_9:
    v14 = *(v96 + 248);
    v15 = *(v96 + 240);
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = v16 | (v12 << 6);
    (*(v92 + 16))(v14, *(v93 + 48) + *(v92 + 72) * v17, *(v96 + 256));
    v18 = *(v93 + 56);
    v19 = sub_24AE08D28();
    v20 = *(v19 - 8);
    v21 = v19;
    (*(v20 + 16))(v14 + *(v95 + 48), v18 + *(v20 + 72) * v17);
    sub_24AD92B7C(v14, v15, &qword_27EFA8B00, &qword_24AE0A7A0);
    v22 = *(v95 + 48);
    v23 = sub_24AE08B98();
    v26 = *(v96 + 248);
    v25 = *(v96 + 256);
    v27 = *(v96 + 240);
    if (v24)
    {
      v72 = v24;
      v73 = v23;
      v62 = *(v96 + 232);
      v63 = *(v96 + 216);
      v64 = *(v96 + 200);
      v65 = *(v96 + 192);
      v67 = *(v96 + 176);
      v71 = *v94;
      (*v94)(v27, v25);
      v70 = *(v20 + 8);
      v70(v15 + v22, v21);
      sub_24AD92B7C(v26, v62, &qword_27EFA8B00, &qword_24AE0A7A0);
      v28 = *(v95 + 48);
      sub_24AE08CF8();
      v30 = v29;
      sub_24AE08D08();
      v32 = v31;
      sub_24AE08CD8();
      v34 = v33;
      sub_24AE08C88();
      v36 = v35;
      sub_24AE08C78();
      v38 = v37;
      sub_24AE08CA8();
      v40 = v39;
      sub_24AE08D18();
      sub_24AE088B8();
      v41 = objc_allocWithZone(MEMORY[0x277CE41F8]);
      v42 = sub_24AE08898();
      v43 = [v41 initWithCoordinate:v42 altitude:v30 horizontalAccuracy:v32 verticalAccuracy:v34 course:v36 courseAccuracy:v38 speed:0.0 speedAccuracy:0.0 timestamp:{v40, 0}];

      (*v88)(v63, v64);
      sub_24AE08C68();
      v44 = (*v87)(v65, v67);
      if (v44 == v86)
      {
        v68 = 0;
      }

      else
      {
        if (v44 == v83)
        {
          v45 = 1;
        }

        else if (v44 == v81)
        {
          v45 = 2;
        }

        else if (v44 == v79)
        {
          v45 = 3;
        }

        else
        {
          (*v77)(*(v96 + 192), *(v96 + 176));
          v45 = 5;
        }

        v68 = v45;
      }

      v46 = *(v96 + 168);
      v47 = *(v96 + 152);
      sub_24AE08C98();
      v48 = (*v85)(v46, v47);
      if (v48 != v84)
      {
        if (v48 == v82)
        {
          v49 = 1;
          goto LABEL_34;
        }

        if (v48 == v80)
        {
          v49 = 2;
          goto LABEL_34;
        }

        if (v48 == v78)
        {
          v49 = 3;
          goto LABEL_34;
        }

        if (v48 == v76)
        {
          v49 = 4;
          goto LABEL_34;
        }

        if (v48 == v75)
        {
          v49 = 5;
          goto LABEL_34;
        }

        (*v74)(*(v96 + 168), *(v96 + 152));
      }

      v49 = 0;
LABEL_34:
      v50 = *(v96 + 248);
      v69 = *(v96 + 256);
      v66 = *(v96 + 232);
      sub_24AD9A428(v98);
      *&v97[38] = v98[2];
      *&v97[22] = v98[1];
      *&v97[6] = v98[0];
      *&v97[102] = v98[6];
      *&v97[86] = v98[5];
      *&v97[70] = v98[4];
      *&v97[54] = v98[3];
      *(v96 + 16) = v43;
      *(v96 + 24) = v68;
      *(v96 + 25) = v49;
      *(v96 + 74) = *&v97[48];
      *(v96 + 58) = *&v97[32];
      *(v96 + 42) = *&v97[16];
      *(v96 + 26) = *v97;
      *(v96 + 136) = *&v97[110];
      *(v96 + 122) = *&v97[96];
      *(v96 + 106) = *&v97[80];
      *(v96 + 90) = *&v97[64];
      v70(v62 + v28, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = v89;
      sub_24ADBF0C0((v96 + 16), v73, v72, isUniquelyReferenced_nonNull_native);

      sub_24AD92BE4(v50, &qword_27EFA8B00, &qword_24AE0A7A0);
      v89 = v99;
      result = (v71)(v66, v69);
      v10 = v90;
      v6 = v91;
      goto LABEL_4;
    }

    sub_24AD92BE4(v26, &qword_27EFA8B00, &qword_24AE0A7A0);
    (*v94)(v27, v25);
    result = (*(v20 + 8))(v15 + v22, v21);
    v13 = v12;
    v10 = v90;
    v6 = v91;
  }

  while (v9);
  while (1)
  {
LABEL_6:
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  v52 = *(v96 + 344);

  v53 = *(v96 + 296);
  v54 = *(v96 + 272);
  v56 = *(v96 + 240);
  v55 = *(v96 + 248);
  v57 = *(v96 + 232);
  v58 = *(v96 + 216);
  v59 = *(v96 + 192);
  v60 = *(v96 + 168);

  v61 = *(v96 + 8);

  return v61(v89);
}

uint64_t sub_24AD94DA0()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[34];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[21];

  v10 = v0[1];

  return v10();
}

uint64_t sub_24AD94E6C()
{
  v1 = v0[41];

  v2 = v0[44];
  v3 = v0[37];
  v4 = v0[34];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[21];

  v11 = v0[1];

  return v11();
}

__n128 Location.fmuiPublishedLocation.getter@<Q0>(uint64_t a1@<X8>)
{
  v41 = sub_24AE08AC8();
  v40 = *(v41 - 8);
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v41);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24AE089F8();
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24AE088E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE08CF8();
  v15 = v14;
  sub_24AE08D08();
  v17 = v16;
  sub_24AE08CD8();
  v19 = v18;
  sub_24AE08C88();
  v21 = v20;
  sub_24AE08C78();
  v23 = v22;
  sub_24AE08CA8();
  v25 = v24;
  sub_24AE08D18();
  sub_24AE088B8();
  v26 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v27 = sub_24AE08898();
  v28 = [v26 initWithCoordinate:v27 altitude:v15 horizontalAccuracy:v17 verticalAccuracy:v19 course:v21 courseAccuracy:v23 speed:0.0 speedAccuracy:0.0 timestamp:{v25, 0}];

  (*(v10 + 8))(v13, v9);
  sub_24AE08C68();
  v29 = v39;
  v30 = (*(v39 + 88))(v8, v5);
  if (v30 == *MEMORY[0x277D09088])
  {
    v31 = 0;
  }

  else if (v30 == *MEMORY[0x277D09078])
  {
    v31 = 1;
  }

  else if (v30 == *MEMORY[0x277D09080])
  {
    v31 = 2;
  }

  else if (v30 == *MEMORY[0x277D09090])
  {
    v31 = 3;
  }

  else
  {
    (*(v29 + 8))(v8, v5);
    v31 = 5;
  }

  sub_24AE08C98();
  v32 = v40;
  v33 = v41;
  v34 = (*(v40 + 88))(v4, v41);
  if (v34 != *MEMORY[0x277D090F8])
  {
    if (v34 == *MEMORY[0x277D090E0])
    {
      v35 = 1;
      goto LABEL_22;
    }

    if (v34 == *MEMORY[0x277D09100])
    {
      v35 = 2;
      goto LABEL_22;
    }

    if (v34 == *MEMORY[0x277D090F0])
    {
      v35 = 3;
      goto LABEL_22;
    }

    if (v34 == *MEMORY[0x277D090E8])
    {
      v35 = 4;
      goto LABEL_22;
    }

    if (v34 == *MEMORY[0x277D090D8])
    {
      v35 = 5;
      goto LABEL_22;
    }

    (*(v32 + 8))(v4, v33);
  }

  v35 = 0;
LABEL_22:
  sub_24AD9A428(v42);
  *a1 = v28;
  *(a1 + 8) = v31;
  *(a1 + 9) = v35;
  v36 = v42[5];
  *(a1 + 80) = v42[4];
  *(a1 + 96) = v36;
  *(a1 + 112) = v42[6];
  v37 = v42[1];
  *(a1 + 16) = v42[0];
  *(a1 + 32) = v37;
  result = v42[3];
  *(a1 + 48) = v42[2];
  *(a1 + 64) = result;
  return result;
}

uint64_t Session.addSubscriptions(subscriptions:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AD953DC, 0, 0);
}

uint64_t sub_24AD953DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D08920] + 4);

  sub_24AE08288();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_24AD954E0;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28215EB08](v5, 0xD02AB486CEDC0000, 0, &unk_24AE0A640, v3, v6);
}

uint64_t sub_24AD954E0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_24AD95614;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_24AD955FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AD95614()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_24AD95678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24AD8E628;

  return sub_24AD95714(a3);
}

uint64_t sub_24AD95714(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_24AE08C48();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_24AE08C58();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_24AE089B8();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB0, &qword_24AE0A708) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB8, &qword_24AE0A710);
  v2[16] = v13;
  v14 = *(v13 - 8);
  v2[17] = v14;
  v15 = *(v14 + 64) + 15;
  v2[18] = swift_task_alloc();
  v16 = sub_24AE08A48();
  v2[19] = v16;
  v17 = *(v16 - 8);
  v2[20] = v17;
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  v2[21] = v19;
  v20 = *(MEMORY[0x277D09350] + 4);
  v21 = swift_task_alloc();
  v2[22] = v21;
  *v21 = v2;
  v21[1] = sub_24AD959D0;

  return MEMORY[0x28215FA68](v19);
}

uint64_t sub_24AD959D0()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_24AD96544;
  }

  else
  {
    v3 = sub_24AD95AE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD95AE4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 24);
  v7 = sub_24AE08288();
  v8 = sub_24AD930A8(v7);
  v9 = swift_task_alloc();
  *(v9 + 16) = v2;
  v10 = sub_24AD9B058(sub_24AD9B600, v9, v8);

  *(v0 + 16) = v10;
  swift_getKeyPath();
  sub_24AE086B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AC0, &qword_24AE0A750);
  sub_24AD9B548(&qword_27EFA8AC8, &qword_27EFA8AC0, &qword_24AE0A750);
  sub_24AD9B548(&qword_27EFA8AD0, &qword_27EFA8AB8, &qword_24AE0A710);
  v11 = sub_24AE09118();
  *(v0 + 192) = v11;
  (*(v4 + 8))(v3, v5);

  v16 = *(v11 + 16);
  *(v0 + 200) = v16;
  *(v0 + 240) = *MEMORY[0x277D094A8];
  if (v16)
  {
    v17 = *(v0 + 192);
    if (!*(v17 + 16))
    {
      __break(1u);
      return MEMORY[0x28215FB30](v12, v13, v14, v15);
    }

    v18 = *(v0 + 112);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    v20 = *(v19 - 8);
    sub_24AD92B7C(v17 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v18, &qword_27EFA8AD8, &qword_24AE0A758);
    v21 = 1;
    (*(v20 + 56))(v18, 0, 1, v19);
  }

  else
  {
    v22 = *(v0 + 112);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
    v21 = *(v0 + 200);
  }

  *(v0 + 208) = v21;
  v24 = *(v0 + 120);
  sub_24AD9B590(*(v0 + 112), v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  if ((*(*(v25 - 8) + 48))(v24, 1, v25) != 1)
  {
    v39 = *(v0 + 96);
    v38 = *(v0 + 104);
    v40 = *(v0 + 88);
    v41 = *(*(v0 + 120) + *(v25 + 48));
    *(v0 + 216) = v41;
    (*(v39 + 32))(v38);
    v42 = [objc_opt_self() mainBundle];
    v43 = [v42 bundleIdentifier];

    if (v43)
    {
      sub_24AE08FB8();
    }

    v44 = *(v0 + 80);
    (*(*(v0 + 48) + 104))(*(v0 + 56), *(v0 + 240), *(v0 + 40));
    sub_24AE08C38();
    v45 = *(MEMORY[0x277D09408] + 4);
    v46 = swift_task_alloc();
    *(v0 + 224) = v46;
    *v46 = v0;
    v46[1] = sub_24AD95FE0;
    v13 = *(v0 + 104);
    v15 = *(v0 + 80);
    v47 = *(v0 + 32);
    v12 = v41;
    v14 = 1;

    return MEMORY[0x28215FB30](v12, v13, v14, v15);
  }

  v26 = *(v0 + 192);
  v28 = *(v0 + 160);
  v27 = *(v0 + 168);
  v30 = *(v0 + 144);
  v29 = *(v0 + 152);
  v32 = *(v0 + 112);
  v31 = *(v0 + 120);
  v33 = *(v0 + 104);
  v34 = *(v0 + 80);
  v35 = *(v0 + 56);

  (*(v28 + 8))(v27, v29);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_24AD95FE0()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  v2[29] = v0;

  v5 = v2[27];
  if (v0)
  {
    v6 = v2[24];
    (*(v2[9] + 8))(v2[10], v2[8]);

    v7 = sub_24AD96604;
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v7 = sub_24AD9615C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24AD9615C()
{
  v1 = (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v5 = *(v0 + 208);
  if (v5 == *(v0 + 200))
  {
    v6 = *(v0 + 112);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = *(v0 + 200);
    goto LABEL_6;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v0 + 192);
  if (v5 >= *(v9 + 16))
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x28215FB30](v1, v2, v3, v4);
  }

  v10 = *(v0 + 112);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  v12 = *(v11 - 8);
  sub_24AD92B7C(v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v5, v10, &qword_27EFA8AD8, &qword_24AE0A758);
  v8 = v5 + 1;
  (*(v12 + 56))(v10, 0, 1, v11);
LABEL_6:
  *(v0 + 208) = v8;
  v13 = *(v0 + 120);
  sub_24AD9B590(*(v0 + 112), v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) != 1)
  {
    v28 = *(v0 + 96);
    v27 = *(v0 + 104);
    v29 = *(v0 + 88);
    v30 = *(*(v0 + 120) + *(v14 + 48));
    *(v0 + 216) = v30;
    (*(v28 + 32))(v27);
    v31 = [objc_opt_self() mainBundle];
    v32 = [v31 bundleIdentifier];

    if (v32)
    {
      sub_24AE08FB8();
    }

    v33 = *(v0 + 80);
    (*(*(v0 + 48) + 104))(*(v0 + 56), *(v0 + 240), *(v0 + 40));
    sub_24AE08C38();
    v34 = *(MEMORY[0x277D09408] + 4);
    v35 = swift_task_alloc();
    *(v0 + 224) = v35;
    *v35 = v0;
    v35[1] = sub_24AD95FE0;
    v2 = *(v0 + 104);
    v4 = *(v0 + 80);
    v36 = *(v0 + 32);
    v1 = v30;
    v3 = 1;

    return MEMORY[0x28215FB30](v1, v2, v3, v4);
  }

  v15 = *(v0 + 192);
  v17 = *(v0 + 160);
  v16 = *(v0 + 168);
  v19 = *(v0 + 144);
  v18 = *(v0 + 152);
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v22 = *(v0 + 104);
  v23 = *(v0 + 80);
  v24 = *(v0 + 56);

  (*(v17 + 8))(v16, v18);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_24AD96544()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AD96604()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[29];
  v5 = v0[21];
  v6 = v0[18];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_24AD966FC(uint64_t a1)
{
  v2 = sub_24AE08BA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  result = sub_24AE08A28();
  v10 = result;
  v43 = *(result + 16);
  if (v43)
  {
    v11 = 0;
    v42 = v3 + 16;
    v45 = a1 + 56;
    v32 = (v3 + 32);
    v41 = (v3 + 8);
    v34 = MEMORY[0x277D84F90];
    v38 = v2;
    v37 = v3;
    v36 = result;
    v35 = v8;
    while (1)
    {
      if (v11 >= *(v10 + 16))
      {
        __break(1u);
        return result;
      }

      v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v13 = *(v3 + 72);
      (*(v3 + 16))(v8, v10 + v12 + v13 * v11, v2);
      v46 = sub_24AE08B68();
      if (v14)
      {
        v15 = v14;
        v39 = v13;
        v40 = v12;
        if (*(a1 + 16))
        {
          v16 = *(a1 + 40);
          sub_24AE09838();
          v47 = 0x3A3156444953;
          v48 = 0xE600000000000000;
          MEMORY[0x24C230FB0](v46, v15);
          sub_24AE09048();

          v17 = sub_24AE09868();
          v18 = -1 << *(a1 + 32);
          v19 = v17 & ~v18;
          if ((*(v45 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
          {
            v44 = ~v18;
            while (1)
            {
              v20 = (*(a1 + 48) + 16 * v19);
              v21 = *v20;
              v22 = v20[1];
              v49 = 0x3A3156444953;
              v50 = 0xE600000000000000;
              sub_24AE08288();
              MEMORY[0x24C230FB0](v21, v22);
              v23 = v49;
              v24 = v50;
              v49 = 0x3A3156444953;
              v50 = 0xE600000000000000;
              MEMORY[0x24C230FB0](v46, v15);
              if (v23 == v49 && v24 == v50)
              {
                break;
              }

              v25 = sub_24AE097C8();

              if (v25)
              {
                goto LABEL_17;
              }

              v19 = (v19 + 1) & v44;
              if (((*(v45 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
              {
                goto LABEL_3;
              }
            }

LABEL_17:

            v26 = *v32;
            v8 = v35;
            v2 = v38;
            (*v32)(v33, v35, v38);
            v27 = v34;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v51 = v27;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_24ADFB098(0, *(v27 + 16) + 1, 1);
              v27 = v51;
            }

            v30 = *(v27 + 16);
            v29 = *(v27 + 24);
            v31 = v39;
            if (v30 >= v29 >> 1)
            {
              sub_24ADFB098(v29 > 1, v30 + 1, 1);
              v27 = v51;
            }

            *(v27 + 16) = v30 + 1;
            v34 = v27;
            result = v26((v27 + v40 + v30 * v31), v33, v2);
            v3 = v37;
            v10 = v36;
            goto LABEL_5;
          }
        }

LABEL_3:

        v2 = v38;
        v3 = v37;
        v10 = v36;
        v8 = v35;
      }

      result = (*v41)(v8, v2);
LABEL_5:
      if (++v11 == v43)
      {
        goto LABEL_23;
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_23:

  return v34;
}

uint64_t Session.stopSubscriptions(subscriptions:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AD96B9C, 0, 0);
}

uint64_t sub_24AD96B9C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D08920] + 4);

  sub_24AE08288();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_24AD96CA0;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28215EB08](v5, 0xD02AB486CEDC0000, 0, &unk_24AE0A658, v3, v6);
}

uint64_t sub_24AD96CA0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_24AD9B650;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_24AD9B63C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AD96DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24AD9B61C;

  return sub_24AD96E58(a3);
}

uint64_t sub_24AD96E58(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_24AE08C48();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_24AE08C58();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_24AE089B8();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB0, &qword_24AE0A708) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB8, &qword_24AE0A710);
  v2[16] = v13;
  v14 = *(v13 - 8);
  v2[17] = v14;
  v15 = *(v14 + 64) + 15;
  v2[18] = swift_task_alloc();
  v16 = sub_24AE08A48();
  v2[19] = v16;
  v17 = *(v16 - 8);
  v2[20] = v17;
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  v2[21] = v19;
  v20 = *(MEMORY[0x277D09350] + 4);
  v21 = swift_task_alloc();
  v2[22] = v21;
  *v21 = v2;
  v21[1] = sub_24AD97114;

  return MEMORY[0x28215FA68](v19);
}

uint64_t sub_24AD97114()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_24AD9B648;
  }

  else
  {
    v3 = sub_24AD97228;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD97228()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 24);
  v7 = sub_24AE08288();
  v8 = sub_24AD930A8(v7);
  v9 = swift_task_alloc();
  *(v9 + 16) = v2;
  v10 = sub_24AD9B058(sub_24AD9B620, v9, v8);

  *(v0 + 16) = v10;
  swift_getKeyPath();
  sub_24AE086B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AC0, &qword_24AE0A750);
  sub_24AD9B548(&qword_27EFA8AC8, &qword_27EFA8AC0, &qword_24AE0A750);
  sub_24AD9B548(&qword_27EFA8AD0, &qword_27EFA8AB8, &qword_24AE0A710);
  v11 = sub_24AE09118();
  *(v0 + 192) = v11;
  (*(v4 + 8))(v3, v5);

  v15 = *(v11 + 16);
  *(v0 + 200) = v15;
  *(v0 + 240) = *MEMORY[0x277D094A8];
  if (v15)
  {
    v16 = *(v0 + 192);
    if (!*(v16 + 16))
    {
      __break(1u);
      return MEMORY[0x28215FAF8](v12, v13, v14);
    }

    v17 = *(v0 + 112);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    v19 = *(v18 - 8);
    sub_24AD92B7C(v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v17, &qword_27EFA8AD8, &qword_24AE0A758);
    v20 = 1;
    (*(v19 + 56))(v17, 0, 1, v18);
  }

  else
  {
    v21 = *(v0 + 112);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
    v20 = *(v0 + 200);
  }

  *(v0 + 208) = v20;
  v23 = *(v0 + 120);
  sub_24AD9B590(*(v0 + 112), v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  if ((*(*(v24 - 8) + 48))(v23, 1, v24) != 1)
  {
    v38 = *(v0 + 96);
    v37 = *(v0 + 104);
    v39 = *(v0 + 88);
    v40 = *(*(v0 + 120) + *(v24 + 48));
    *(v0 + 216) = v40;
    (*(v38 + 32))(v37);
    v41 = [objc_opt_self() mainBundle];
    v42 = [v41 bundleIdentifier];

    if (v42)
    {
      sub_24AE08FB8();
    }

    v43 = *(v0 + 80);
    (*(*(v0 + 48) + 104))(*(v0 + 56), *(v0 + 240), *(v0 + 40));
    sub_24AE08C38();
    v44 = *(MEMORY[0x277D093D0] + 4);
    v45 = swift_task_alloc();
    *(v0 + 224) = v45;
    *v45 = v0;
    v45[1] = sub_24AD97720;
    v13 = *(v0 + 104);
    v14 = *(v0 + 80);
    v46 = *(v0 + 32);
    v12 = v40;

    return MEMORY[0x28215FAF8](v12, v13, v14);
  }

  v25 = *(v0 + 192);
  v27 = *(v0 + 160);
  v26 = *(v0 + 168);
  v29 = *(v0 + 144);
  v28 = *(v0 + 152);
  v31 = *(v0 + 112);
  v30 = *(v0 + 120);
  v32 = *(v0 + 104);
  v33 = *(v0 + 80);
  v34 = *(v0 + 56);

  (*(v27 + 8))(v26, v28);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_24AD97720()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  v2[29] = v0;

  v5 = v2[27];
  if (v0)
  {
    v6 = v2[24];
    (*(v2[9] + 8))(v2[10], v2[8]);

    v7 = sub_24AD9B640;
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v7 = sub_24AD9789C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24AD9789C()
{
  v1 = (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v4 = *(v0 + 208);
  if (v4 == *(v0 + 200))
  {
    v5 = *(v0 + 112);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = *(v0 + 200);
    goto LABEL_6;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = *(v0 + 192);
  if (v4 >= *(v8 + 16))
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x28215FAF8](v1, v2, v3);
  }

  v9 = *(v0 + 112);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  v11 = *(v10 - 8);
  sub_24AD92B7C(v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v4, v9, &qword_27EFA8AD8, &qword_24AE0A758);
  v7 = v4 + 1;
  (*(v11 + 56))(v9, 0, 1, v10);
LABEL_6:
  *(v0 + 208) = v7;
  v12 = *(v0 + 120);
  sub_24AD9B590(*(v0 + 112), v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) != 1)
  {
    v27 = *(v0 + 96);
    v26 = *(v0 + 104);
    v28 = *(v0 + 88);
    v29 = *(*(v0 + 120) + *(v13 + 48));
    *(v0 + 216) = v29;
    (*(v27 + 32))(v26);
    v30 = [objc_opt_self() mainBundle];
    v31 = [v30 bundleIdentifier];

    if (v31)
    {
      sub_24AE08FB8();
    }

    v32 = *(v0 + 80);
    (*(*(v0 + 48) + 104))(*(v0 + 56), *(v0 + 240), *(v0 + 40));
    sub_24AE08C38();
    v33 = *(MEMORY[0x277D093D0] + 4);
    v34 = swift_task_alloc();
    *(v0 + 224) = v34;
    *v34 = v0;
    v34[1] = sub_24AD97720;
    v2 = *(v0 + 104);
    v3 = *(v0 + 80);
    v35 = *(v0 + 32);
    v1 = v29;

    return MEMORY[0x28215FAF8](v1, v2, v3);
  }

  v14 = *(v0 + 192);
  v16 = *(v0 + 160);
  v15 = *(v0 + 168);
  v18 = *(v0 + 144);
  v17 = *(v0 + 152);
  v20 = *(v0 + 112);
  v19 = *(v0 + 120);
  v21 = *(v0 + 104);
  v22 = *(v0 + 80);
  v23 = *(v0 + 56);

  (*(v16 + 8))(v15, v17);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t Session.renewSubscriptions(subscriptions:clientID:)(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x2822009F8](sub_24AD97CA8, 0, 0);
}

uint64_t sub_24AD97CA8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v0[6] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;
  v6 = *(MEMORY[0x277D08920] + 4);

  sub_24AE08288();
  sub_24AE08288();
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_24AD97DC4;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28215EB08](v7, 0xD02AB486CEDC0000, 0, &unk_24AE0A670, v5, v8);
}

uint64_t sub_24AD97DC4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_24AD9B654;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_24AD9B63C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AD97EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_24AD97F94;

  return sub_24AD980C8(a3, v5 + 2);
}

uint64_t sub_24AD97F94()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AD9B638, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_24AD980C8(uint64_t a1, uint64_t *a2)
{
  v3[3] = a1;
  v3[4] = v2;
  v5 = sub_24AE08C48();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = sub_24AE08C58();
  v3[8] = v8;
  v9 = *(v8 - 8);
  v3[9] = v9;
  v10 = *(v9 + 64) + 15;
  v3[10] = swift_task_alloc();
  v11 = sub_24AE089B8();
  v3[11] = v11;
  v12 = *(v11 - 8);
  v3[12] = v12;
  v13 = *(v12 + 64) + 15;
  v3[13] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB0, &qword_24AE0A708) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB8, &qword_24AE0A710);
  v3[16] = v15;
  v16 = *(v15 - 8);
  v3[17] = v16;
  v17 = *(v16 + 64) + 15;
  v3[18] = swift_task_alloc();
  v18 = sub_24AE08A48();
  v3[19] = v18;
  v19 = *(v18 - 8);
  v3[20] = v19;
  v20 = *(v19 + 64) + 15;
  v21 = swift_task_alloc();
  v22 = *a2;
  v23 = a2[1];
  v3[21] = v21;
  v3[22] = v22;
  v3[23] = v23;
  v24 = *(MEMORY[0x277D09350] + 4);
  v25 = swift_task_alloc();
  v3[24] = v25;
  *v25 = v3;
  v25[1] = sub_24AD98398;

  return MEMORY[0x28215FA68](v21);
}

uint64_t sub_24AD98398()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_24AD9B64C;
  }

  else
  {
    v3 = sub_24AD984AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD984AC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 24);
  v7 = sub_24AE08288();
  v8 = sub_24AD930A8(v7);
  v9 = swift_task_alloc();
  *(v9 + 16) = v2;
  v10 = sub_24AD9B058(sub_24AD9B620, v9, v8);

  *(v0 + 16) = v10;
  swift_getKeyPath();
  sub_24AE086B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AC0, &qword_24AE0A750);
  sub_24AD9B548(&qword_27EFA8AC8, &qword_27EFA8AC0, &qword_24AE0A750);
  sub_24AD9B548(&qword_27EFA8AD0, &qword_27EFA8AB8, &qword_24AE0A710);
  v11 = sub_24AE09118();
  *(v0 + 208) = v11;
  (*(v4 + 8))(v3, v5);

  v16 = *(v11 + 16);
  *(v0 + 216) = v16;
  *(v0 + 256) = *MEMORY[0x277D094A0];
  if (v16)
  {
    v17 = *(v0 + 208);
    if (!*(v17 + 16))
    {
      __break(1u);
      return MEMORY[0x28215FB10](v12, v13, v14, v15);
    }

    v18 = *(v0 + 112);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    v20 = *(v19 - 8);
    sub_24AD92B7C(v17 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v18, &qword_27EFA8AD8, &qword_24AE0A758);
    v21 = 1;
    (*(v20 + 56))(v18, 0, 1, v19);
  }

  else
  {
    v22 = *(v0 + 112);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
    v21 = *(v0 + 216);
  }

  *(v0 + 224) = v21;
  v24 = *(v0 + 120);
  sub_24AD9B590(*(v0 + 112), v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  v26 = (*(*(v25 - 8) + 48))(v24, 1, v25);
  v27 = *(v0 + 120);
  if (v26 != 1)
  {
    v39 = *(v0 + 256);
    v41 = *(v0 + 176);
    v40 = *(v0 + 184);
    v43 = *(v0 + 96);
    v42 = *(v0 + 104);
    v45 = *(v0 + 80);
    v44 = *(v0 + 88);
    v47 = *(v0 + 48);
    v46 = *(v0 + 56);
    v48 = *(v0 + 40);
    v49 = *(v27 + *(v25 + 48));
    *(v0 + 232) = v49;
    (*(v43 + 32))(v42, v27, v44);
    (*(v47 + 104))(v46, v39, v48);
    sub_24AE08288();
    sub_24AE08C38();
    v50 = *(MEMORY[0x277D093E8] + 4);
    v51 = swift_task_alloc();
    *(v0 + 240) = v51;
    *v51 = v0;
    v51[1] = sub_24AD98954;
    v13 = *(v0 + 104);
    v15 = *(v0 + 80);
    v52 = *(v0 + 32);
    v12 = v49;
    v14 = 1;

    return MEMORY[0x28215FB10](v12, v13, v14, v15);
  }

  v28 = *(v0 + 208);
  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v32 = *(v0 + 144);
  v31 = *(v0 + 152);
  v34 = *(v0 + 104);
  v33 = *(v0 + 112);
  v35 = *(v0 + 80);
  v36 = *(v0 + 56);

  (*(v30 + 8))(v29, v31);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_24AD98954()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  v2[31] = v0;

  v5 = v2[29];
  if (v0)
  {
    v6 = v2[26];
    (*(v2[9] + 8))(v2[10], v2[8]);

    v7 = sub_24AD9B644;
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v7 = sub_24AD98AD0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24AD98AD0()
{
  v1 = (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v5 = *(v0 + 224);
  if (v5 == *(v0 + 216))
  {
    v6 = *(v0 + 112);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = *(v0 + 216);
    goto LABEL_6;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(v0 + 208);
  if (v5 >= *(v9 + 16))
  {
LABEL_14:
    __break(1u);
    return MEMORY[0x28215FB10](v1, v2, v3, v4);
  }

  v10 = *(v0 + 112);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  v12 = *(v11 - 8);
  sub_24AD92B7C(v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v5, v10, &qword_27EFA8AD8, &qword_24AE0A758);
  v8 = v5 + 1;
  (*(v12 + 56))(v10, 0, 1, v11);
LABEL_6:
  *(v0 + 224) = v8;
  v13 = *(v0 + 120);
  sub_24AD9B590(*(v0 + 112), v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) != 1)
  {
    v27 = *(v0 + 256);
    v29 = *(v0 + 176);
    v28 = *(v0 + 184);
    v31 = *(v0 + 96);
    v30 = *(v0 + 104);
    v33 = *(v0 + 80);
    v32 = *(v0 + 88);
    v35 = *(v0 + 48);
    v34 = *(v0 + 56);
    v36 = *(v0 + 40);
    v37 = *(*(v0 + 120) + *(v14 + 48));
    *(v0 + 232) = v37;
    (*(v31 + 32))(v30);
    (*(v35 + 104))(v34, v27, v36);
    sub_24AE08288();
    sub_24AE08C38();
    v38 = *(MEMORY[0x277D093E8] + 4);
    v39 = swift_task_alloc();
    *(v0 + 240) = v39;
    *v39 = v0;
    v39[1] = sub_24AD98954;
    v2 = *(v0 + 104);
    v4 = *(v0 + 80);
    v40 = *(v0 + 32);
    v1 = v37;
    v3 = 1;

    return MEMORY[0x28215FB10](v1, v2, v3, v4);
  }

  v15 = *(v0 + 208);
  v17 = *(v0 + 160);
  v16 = *(v0 + 168);
  v19 = *(v0 + 144);
  v18 = *(v0 + 152);
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v22 = *(v0 + 104);
  v23 = *(v0 + 80);
  v24 = *(v0 + 56);

  (*(v17 + 8))(v16, v18);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t Session.stopSubscriptions(subscriptions:clientID:)(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x2822009F8](sub_24AD98E8C, 0, 0);
}

uint64_t sub_24AD98E8C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v0[6] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;
  v6 = *(MEMORY[0x277D08920] + 4);

  sub_24AE08288();
  sub_24AE08288();
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_24AD98FA8;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28215EB08](v7, 0xD02AB486CEDC0000, 0, &unk_24AE0A688, v5, v8);
}

uint64_t sub_24AD98FA8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_24AD990C4;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_24AD9B63C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AD990C4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_24AD99128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_24AD991DC;

  return sub_24AD99310(a3, v5 + 2);
}

uint64_t sub_24AD991DC()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AD93A2C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_24AD99310(uint64_t a1, uint64_t *a2)
{
  v3[3] = a1;
  v3[4] = v2;
  v5 = sub_24AE08C48();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = sub_24AE08C58();
  v3[8] = v8;
  v9 = *(v8 - 8);
  v3[9] = v9;
  v10 = *(v9 + 64) + 15;
  v3[10] = swift_task_alloc();
  v11 = sub_24AE089B8();
  v3[11] = v11;
  v12 = *(v11 - 8);
  v3[12] = v12;
  v13 = *(v12 + 64) + 15;
  v3[13] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB0, &qword_24AE0A708) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB8, &qword_24AE0A710);
  v3[16] = v15;
  v16 = *(v15 - 8);
  v3[17] = v16;
  v17 = *(v16 + 64) + 15;
  v3[18] = swift_task_alloc();
  v18 = sub_24AE08A48();
  v3[19] = v18;
  v19 = *(v18 - 8);
  v3[20] = v19;
  v20 = *(v19 + 64) + 15;
  v21 = swift_task_alloc();
  v22 = *a2;
  v23 = a2[1];
  v3[21] = v21;
  v3[22] = v22;
  v3[23] = v23;
  v24 = *(MEMORY[0x277D09350] + 4);
  v25 = swift_task_alloc();
  v3[24] = v25;
  *v25 = v3;
  v25[1] = sub_24AD995E0;

  return MEMORY[0x28215FA68](v21);
}

uint64_t sub_24AD995E0()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_24AD9A0A4;
  }

  else
  {
    v3 = sub_24AD996F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD996F4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 24);
  v7 = sub_24AE08288();
  v8 = sub_24AD930A8(v7);
  v9 = swift_task_alloc();
  *(v9 + 16) = v2;
  v10 = sub_24AD9B058(sub_24AD9B620, v9, v8);

  *(v0 + 16) = v10;
  swift_getKeyPath();
  sub_24AE086B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AC0, &qword_24AE0A750);
  sub_24AD9B548(&qword_27EFA8AC8, &qword_27EFA8AC0, &qword_24AE0A750);
  sub_24AD9B548(&qword_27EFA8AD0, &qword_27EFA8AB8, &qword_24AE0A710);
  v11 = sub_24AE09118();
  *(v0 + 208) = v11;
  (*(v4 + 8))(v3, v5);

  v15 = *(v11 + 16);
  *(v0 + 216) = v15;
  *(v0 + 256) = *MEMORY[0x277D094A0];
  if (v15)
  {
    v16 = *(v0 + 208);
    if (!*(v16 + 16))
    {
      __break(1u);
      return MEMORY[0x28215FAF8](v12, v13, v14);
    }

    v17 = *(v0 + 112);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    v19 = *(v18 - 8);
    sub_24AD92B7C(v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v17, &qword_27EFA8AD8, &qword_24AE0A758);
    v20 = 1;
    (*(v19 + 56))(v17, 0, 1, v18);
  }

  else
  {
    v21 = *(v0 + 112);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
    v20 = *(v0 + 216);
  }

  *(v0 + 224) = v20;
  v23 = *(v0 + 120);
  sub_24AD9B590(*(v0 + 112), v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  v25 = (*(*(v24 - 8) + 48))(v23, 1, v24);
  v26 = *(v0 + 120);
  if (v25 != 1)
  {
    v38 = *(v0 + 256);
    v40 = *(v0 + 176);
    v39 = *(v0 + 184);
    v42 = *(v0 + 96);
    v41 = *(v0 + 104);
    v44 = *(v0 + 80);
    v43 = *(v0 + 88);
    v46 = *(v0 + 48);
    v45 = *(v0 + 56);
    v47 = *(v0 + 40);
    v48 = *(v26 + *(v24 + 48));
    *(v0 + 232) = v48;
    (*(v42 + 32))(v41, v26, v43);
    (*(v46 + 104))(v45, v38, v47);
    sub_24AE08288();
    sub_24AE08C38();
    v49 = *(MEMORY[0x277D093D0] + 4);
    v50 = swift_task_alloc();
    *(v0 + 240) = v50;
    *v50 = v0;
    v50[1] = sub_24AD99B98;
    v13 = *(v0 + 104);
    v14 = *(v0 + 80);
    v51 = *(v0 + 32);
    v12 = v48;

    return MEMORY[0x28215FAF8](v12, v13, v14);
  }

  v27 = *(v0 + 208);
  v29 = *(v0 + 160);
  v28 = *(v0 + 168);
  v31 = *(v0 + 144);
  v30 = *(v0 + 152);
  v33 = *(v0 + 104);
  v32 = *(v0 + 112);
  v34 = *(v0 + 80);
  v35 = *(v0 + 56);

  (*(v29 + 8))(v28, v30);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_24AD99B98()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  v2[31] = v0;

  v5 = v2[29];
  if (v0)
  {
    v6 = v2[26];
    (*(v2[9] + 8))(v2[10], v2[8]);

    v7 = sub_24AD9A164;
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v7 = sub_24AD99D14;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24AD99D14()
{
  v1 = (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v4 = *(v0 + 224);
  if (v4 == *(v0 + 216))
  {
    v5 = *(v0 + 112);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = *(v0 + 216);
    goto LABEL_6;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(v0 + 208);
  if (v4 >= *(v8 + 16))
  {
LABEL_14:
    __break(1u);
    return MEMORY[0x28215FAF8](v1, v2, v3);
  }

  v9 = *(v0 + 112);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  v11 = *(v10 - 8);
  sub_24AD92B7C(v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v4, v9, &qword_27EFA8AD8, &qword_24AE0A758);
  v7 = v4 + 1;
  (*(v11 + 56))(v9, 0, 1, v10);
LABEL_6:
  *(v0 + 224) = v7;
  v12 = *(v0 + 120);
  sub_24AD9B590(*(v0 + 112), v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) != 1)
  {
    v26 = *(v0 + 256);
    v28 = *(v0 + 176);
    v27 = *(v0 + 184);
    v30 = *(v0 + 96);
    v29 = *(v0 + 104);
    v32 = *(v0 + 80);
    v31 = *(v0 + 88);
    v34 = *(v0 + 48);
    v33 = *(v0 + 56);
    v35 = *(v0 + 40);
    v36 = *(*(v0 + 120) + *(v13 + 48));
    *(v0 + 232) = v36;
    (*(v30 + 32))(v29);
    (*(v34 + 104))(v33, v26, v35);
    sub_24AE08288();
    sub_24AE08C38();
    v37 = *(MEMORY[0x277D093D0] + 4);
    v38 = swift_task_alloc();
    *(v0 + 240) = v38;
    *v38 = v0;
    v38[1] = sub_24AD99B98;
    v2 = *(v0 + 104);
    v3 = *(v0 + 80);
    v39 = *(v0 + 32);
    v1 = v36;

    return MEMORY[0x28215FAF8](v1, v2, v3);
  }

  v14 = *(v0 + 208);
  v16 = *(v0 + 160);
  v15 = *(v0 + 168);
  v18 = *(v0 + 144);
  v17 = *(v0 + 152);
  v20 = *(v0 + 112);
  v19 = *(v0 + 120);
  v21 = *(v0 + 104);
  v22 = *(v0 + 80);
  v23 = *(v0 + 56);

  (*(v16 + 8))(v15, v17);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_24AD9A0A4()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AD9A164()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[31];
  v5 = v0[21];
  v6 = v0[18];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_24AD9A25C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v15 = MEMORY[0x277D84F90];
    sub_24ADFB0DC(0, v4, 0);
    v5 = v15;
    v6 = (v3 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = *(v15 + 16);
      v10 = *(v15 + 24);
      sub_24AE08288();
      if (v9 >= v10 >> 1)
      {
        sub_24ADFB0DC((v10 > 1), v9 + 1, 1);
      }

      *(v15 + 16) = v9 + 1;
      v11 = v15 + 16 * v9;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v6 += 3;
      --v4;
    }

    while (v4);
  }

  v12 = sub_24ADAE028(v5);

  v13 = sub_24AD966FC(v12);

  *a2 = v13;
  return result;
}

uint64_t PeopleLocationSubscriptionClientID.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE08288();
  return v1;
}

uint64_t PersonModel.Handle.fmlHandle.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_24AE08288();
  sub_24AD9B35C(MEMORY[0x277D84F90]);
  return sub_24AE08B88();
}

uint64_t sub_24AD9A428@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AF0, &qword_24AE0A788);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v62 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v61 = &v60 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v60 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v60 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v60 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v60 - v17;
  v19 = sub_24AD9ADB0();
  v64 = v20;
  v65 = v19;
  sub_24AE08CC8();
  v21 = sub_24AE08DA8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = v23(v18, 1, v21);
  v71 = v22;
  if (v24 == 1)
  {
    sub_24AD92BE4(v18, &qword_27EFA8AF0, &qword_24AE0A788);
    v63 = 0;
    v66 = 0;
  }

  else
  {
    v70 = v13;
    v63 = sub_24AE08D78();
    v66 = v25;
    v13 = v70;
    (*(v22 + 8))(v18, v21);
  }

  sub_24AE08CC8();
  if (v23(v16, 1, v21) == 1)
  {
    sub_24AD92BE4(v16, &qword_27EFA8AF0, &qword_24AE0A788);
    v70 = 0;
    v26 = 0;
  }

  else
  {
    v70 = sub_24AE08D48();
    v26 = v27;
    (*(v71 + 8))(v16, v21);
  }

  sub_24AE08CC8();
  if (v23(v13, 1, v21) == 1)
  {
    sub_24AD92BE4(v13, &qword_27EFA8AF0, &qword_24AE0A788);
    v69 = 0;
    v28 = 0;
  }

  else
  {
    v69 = sub_24AE08D68();
    v28 = v29;
    (*(v71 + 8))(v13, v21);
  }

  sub_24AE08CC8();
  if (v23(v10, 1, v21) == 1)
  {
    sub_24AD92BE4(v10, &qword_27EFA8AF0, &qword_24AE0A788);
    v68 = 0;
    v30 = 0;
  }

  else
  {
    v68 = sub_24AE08D88();
    v30 = v31;
    (*(v71 + 8))(v10, v21);
  }

  v32 = v61;
  sub_24AE08CC8();
  if (v23(v32, 1, v21) == 1)
  {
    sub_24AD92BE4(v32, &qword_27EFA8AF0, &qword_24AE0A788);
    v67 = 0;
    v33 = 0;
  }

  else
  {
    v67 = sub_24AE08D58();
    v34 = v32;
    v33 = v35;
    (*(v71 + 8))(v34, v21);
  }

  v36 = v62;
  sub_24AE08CC8();
  if (v23(v36, 1, v21) == 1)
  {
    result = sub_24AD92BE4(v36, &qword_27EFA8AF0, &qword_24AE0A788);
    v38 = 0;
    v39 = 0;
  }

  else
  {
    v38 = sub_24AE08D38();
    v40 = v36;
    v39 = v41;
    result = (*(v71 + 8))(v40, v21);
  }

  v43 = v64;
  v42 = v65;
  v44 = v63;
  v45 = v66;
  if (v64)
  {
    v46 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v46 = v65 & 0xFFFFFFFFFFFFLL;
    }

    if (!v46)
    {

      v45 = v66;
      v42 = 0;
      v43 = 0;
    }
  }

  if (v45)
  {
    v47 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v47 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (!v47)
    {

      v44 = 0;
      v45 = 0;
    }
  }

  if (v26)
  {
    v48 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v48 = v70 & 0xFFFFFFFFFFFFLL;
    }

    if (!v48)
    {
      v49 = v45;

      v45 = v49;
      v70 = 0;
      v26 = 0;
    }
  }

  if (v28)
  {
    v50 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v50 = v69 & 0xFFFFFFFFFFFFLL;
    }

    if (!v50)
    {
      v51 = v45;

      v45 = v51;
      v69 = 0;
      v28 = 0;
    }
  }

  if (v30)
  {
    v52 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v52 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (!v52)
    {
      v53 = v45;

      v45 = v53;
      v68 = 0;
      v30 = 0;
    }
  }

  if (v33)
  {
    v54 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v54 = v67 & 0xFFFFFFFFFFFFLL;
    }

    if (!v54)
    {
      v55 = v45;

      v45 = v55;
      v67 = 0;
      v33 = 0;
    }
  }

  if (v39)
  {
    v56 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v56 = v38 & 0xFFFFFFFFFFFFLL;
    }

    if (!v56)
    {
      v57 = v45;

      v45 = v57;
      v38 = 0;
      v39 = 0;
    }
  }

  *a1 = v42;
  a1[1] = v43;
  a1[2] = v44;
  a1[3] = v45;
  v58 = v69;
  a1[4] = v70;
  a1[5] = v26;
  a1[6] = v58;
  a1[7] = v28;
  v59 = v67;
  a1[8] = v68;
  a1[9] = v30;
  a1[10] = v59;
  a1[11] = v33;
  a1[12] = v38;
  a1[13] = v39;
  return result;
}

uint64_t sub_24AD9AA50(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AD8E628;

  return sub_24AD95678(a1, v5, v4);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24AD9AB3C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AD9B61C;

  return sub_24AD96DBC(a1, v5, v4);
}

uint64_t sub_24AD9ABE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AD9B61C;

  return sub_24AD97EE0(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_17Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_24AD9ACF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AD9B61C;

  return sub_24AD99128(a1, v4, v5, v7, v6);
}

uint64_t sub_24AD9ADB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AF8, &qword_24AE0A790);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_24AE08CB8();
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    swift_bridgeObjectRetain_n();

    sub_24AE08AA8();
    v7 = sub_24AE08AB8();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v3, 1, v7) == 1)
    {
      sub_24AD92BE4(v3, &qword_27EFA8AF8, &qword_24AE0A790);
    }

    else
    {
      v5 = sub_24AE08A98();
      (*(v8 + 8))(v3, v7);
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

unint64_t sub_24AD9AF28(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24AE09838();
  sub_24AE09048();
  v6 = sub_24AE09868();

  return sub_24AD9AFA0(a1, a2, v6);
}

unint64_t sub_24AD9AFA0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24AE097C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24AD9B058(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v45 = a2;
  v4 = sub_24AE089B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AE0, &qword_24AE0A760);
  result = sub_24AE09608();
  v12 = v4;
  v13 = result;
  v14 = 0;
  v46 = a3;
  v47 = v5;
  v17 = *(a3 + 64);
  v16 = a3 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v37 = (v18 + 63) >> 6;
  v38 = v16;
  v39 = result + 64;
  v43 = result;
  v40 = v5 + 32;
  v41 = v5 + 16;
  if (v20)
  {
    while (1)
    {
      v21 = v9;
      v22 = __clz(__rbit64(v20));
      v48 = (v20 - 1) & v20;
LABEL_10:
      v25 = v22 | (v14 << 6);
      v26 = v46;
      v27 = v47;
      v28 = *(v47 + 72) * v25;
      v29 = v42;
      v30 = v12;
      (*(v47 + 16))(v42, *(v46 + 48) + v28, v12);
      v51 = *(*(v26 + 56) + 8 * v25);
      v31 = *(v27 + 32);
      v31(v21, v29, v30);
      sub_24AE08288();
      v32 = v49;
      v44(&v50, &v51);
      v49 = v32;
      if (v32)
      {
        break;
      }

      *(v39 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v33 = *(v43 + 48) + v28;
      v13 = v43;
      result = (v31)(v33, v21, v30);
      *(*(v13 + 56) + 8 * v25) = v50;
      v34 = *(v13 + 16);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_17;
      }

      v12 = v30;
      v9 = v21;
      *(v13 + 16) = v36;
      v20 = v48;
      if (!v48)
      {
        goto LABEL_5;
      }
    }

    v13 = v43;

    (*(v47 + 8))(v21, v30);

    return v13;
  }

  else
  {
LABEL_5:
    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v37)
      {
        return v13;
      }

      v24 = *(v38 + 8 * v14);
      ++v23;
      if (v24)
      {
        v21 = v9;
        v22 = __clz(__rbit64(v24));
        v48 = (v24 - 1) & v24;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_24AD9B35C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AA8, &qword_24AE0A6F8);
    v3 = sub_24AE09628();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_24AE08288();
      result = sub_24AD9AF28(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24AD9B46C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24AD9B4B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_24AD9B548(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AD9B590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB0, &qword_24AE0A708);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SPBeaconLocation.fmuiPublishedLocation(label:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_24AE088E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a1[5];
  v33 = a1[4];
  v34 = v11;
  v35 = a1[6];
  v12 = a1[1];
  v29 = *a1;
  v30 = v12;
  v13 = a1[3];
  v31 = a1[2];
  v32 = v13;
  [v3 latitude];
  v15 = v14;
  [v3 longitude];
  v17 = v16;
  [v3 horizontalAccuracy];
  v19 = v18;
  v20 = [v3 timestamp];
  sub_24AE088D8();

  v21 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v22 = sub_24AE08898();
  v23 = [v21 initWithCoordinate:v22 altitude:v15 horizontalAccuracy:v17 verticalAccuracy:0.0 course:v19 courseAccuracy:0.0 speed:0.0 speedAccuracy:0.0 timestamp:{0.0, 0}];

  (*(v7 + 8))(v10, v6);
  *a2 = v23;
  *(a2 + 8) = 5;
  v24 = v34;
  *(a2 + 80) = v33;
  *(a2 + 96) = v24;
  *(a2 + 112) = v35;
  v25 = v30;
  *(a2 + 16) = v29;
  *(a2 + 32) = v25;
  v26 = v32;
  *(a2 + 48) = v31;
  *(a2 + 64) = v26;
  return sub_24AD9B858(&v29, v28);
}

uint64_t DataCache.__allocating_init(cacheType:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  DataCache.init(cacheType:)(a1);
  return v5;
}

char *DataCache.init(cacheType:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B08, &qword_24AE0A7C8);
  v6 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v37 - v7;
  v9 = *(v4 + 88);
  v42[0] = *(v4 + 80);
  v8 = v42[0];
  v42[1] = v9;
  v41 = *(v5 + 96);
  v43 = v41;
  v10 = type metadata accessor for DataCache.CacheType();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  swift_defaultActor_initialize();
  v15 = &v2[*(*v2 + 128)];
  sub_24AE08DF8();
  v16 = *(*v2 + 136);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA8B10, &unk_24AE0A7D0);
  v17 = sub_24AE092F8();
  swift_getTupleTypeMetadata2();
  v18 = sub_24AE091F8();
  v19 = sub_24AD9FFCC(v18, v8, v17, *(v41 + 8));

  *&v2[v16] = v19;
  v20 = v11[2];
  v20(&v2[*(*v2 + 120)], a1, v10);
  v21 = *(*v2 + 128);
  v20(v14, a1, v10);

  v22 = sub_24AE08DE8();
  v23 = sub_24AE09408();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *&v41 = a1;
    v25 = v24;
    v38 = swift_slowAlloc();
    v42[0] = v38;
    *v25 = 136446466;
    v26 = sub_24AD9F380(0xD000000000000010, 0x800000024AE12F10);
    v28 = sub_24AD9F840(v26, v27, v42);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    sub_24ADA0DF0(v10, v39);
    v29 = sub_24AE08FF8();
    v31 = v30;
    v32 = v11[1];
    v32(v14, v10);
    v33 = sub_24AD9F840(v29, v31, v42);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_24AD89000, v22, v23, "%{public}s: DataCache created for path: %s", v25, 0x16u);
    v34 = v38;
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v34, -1, -1);
    MEMORY[0x24C231F80](v25, -1, -1);

    v32(v41, v10);
  }

  else
  {

    v35 = v11[1];
    v35(a1, v10);
    v35(v14, v10);
  }

  return v2;
}

uint64_t sub_24AD9BD78(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v3[9] = *v2;
  return MEMORY[0x2822009F8](sub_24AD9BDC4, v2, 0);
}

uint64_t sub_24AD9BDC4()
{
  v18 = v0;
  v1 = *(**(v0 + 64) + 128);

  v2 = sub_24AE08DE8();
  v3 = sub_24AE09408();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 64);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v7 = sub_24AD9F380(0xD00000000000001FLL, 0x800000024AE12F30);
    v9 = sub_24AD9F840(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24AD89000, v2, v3, "%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C231F80](v6, -1, -1);
    MEMORY[0x24C231F80](v5, -1, -1);
  }

  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v12 = *(v10 + 96);
  *(v0 + 16) = *(v10 + 80);
  *(v0 + 32) = v12;
  type metadata accessor for DataCache();
  swift_getWitnessTable();
  v13 = swift_task_alloc();
  *(v0 + 80) = v13;
  *(v13 + 16) = *(v0 + 48);
  *(v13 + 32) = v11;
  v14 = *(MEMORY[0x277D859E8] + 4);
  v15 = swift_task_alloc();
  *(v0 + 88) = v15;
  *v15 = v0;
  v15[1] = sub_24AD9BFFC;

  return MEMORY[0x2822007C0]();
}

uint64_t sub_24AD9BFFC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24AD9C128, v3, 0);
}

uint64_t sub_24AD9C13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v7 = *a5;
  v5[14] = *a5;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B18, &qword_24AE0A7F8) - 8);
  v5[15] = v8;
  v5[16] = *(v8 + 64);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v9 = *(v7 + 80);
  v5[19] = v9;
  v10 = *(v9 - 8);
  v5[20] = v10;
  v5[21] = *(v10 + 64);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD9C2D0, a5, 0);
}

uint64_t sub_24AD9C2D0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 88);
  if (sub_24AE09228())
  {
    v3 = 0;
    v4 = *(v0 + 160);
    v43 = *(v0 + 168);
    v45 = *(v0 + 112);
    v46 = *(v0 + 120);
    v47 = v4;
    v48 = (v4 + 16);
    v44 = **(v0 + 80);
    do
    {
      v7 = *(v0 + 152);
      v8 = *(v0 + 88);
      v9 = sub_24AE09218();
      sub_24AE091D8();
      if (v9)
      {
        (*(v4 + 16))(*(v0 + 184), *(v0 + 88) + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, *(v0 + 152));
        v10 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v33 = *(v0 + 152);
        v34 = *(v0 + 88);
        result = sub_24AE09528();
        if (v43 != 8)
        {
          __break(1u);
          return result;
        }

        v36 = *(v0 + 184);
        v37 = *(v0 + 152);
        *(v0 + 72) = result;
        (*v48)(v36, v0 + 72, v37);
        swift_unknownObjectRelease();
        v10 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      v52 = v10;
      v53 = v3;
      v11 = *(v0 + 176);
      v12 = *(v0 + 168);
      v13 = *(v0 + 144);
      v14 = *(v0 + 152);
      v15 = *(v0 + 128);
      v49 = v13;
      v17 = *(v0 + 96);
      v16 = *(v0 + 104);
      v50 = v17;
      v51 = *(v0 + 136);
      v18 = *(v4 + 32);
      v18(v11, *(v0 + 184), v14);
      sub_24ADA0394(v17, v13);
      v19 = (*(v4 + 80) + 72) & ~*(v4 + 80);
      v20 = (v12 + *(v46 + 80) + v19) & ~*(v46 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      v22 = (v21 + 16);
      *(v21 + 24) = 0;
      *(v21 + 32) = v14;
      *(v21 + 40) = *(v45 + 88);
      *(v21 + 56) = *(v45 + 104);
      *(v21 + 64) = v16;
      v18(v21 + v19, v11, v14);
      sub_24ADA0B24(v49, v21 + v20);
      sub_24ADA0394(v50, v51);
      v23 = sub_24AE092D8();
      v24 = *(v23 - 8);
      v25 = (*(v24 + 48))(v51, 1, v23);

      v26 = *(v0 + 136);
      if (v25 == 1)
      {
        sub_24AD92BE4(*(v0 + 136), &qword_27EFA8B18, &qword_24AE0A7F8);
        if (!*v22)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_24AE092C8();
        (*(v24 + 8))(v26, v23);
        if (!*v22)
        {
LABEL_10:
          v28 = 0;
          v30 = 0;
          goto LABEL_11;
        }
      }

      v27 = *(v21 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = sub_24AE09288();
      v30 = v29;
      swift_unknownObjectRelease();
LABEL_11:
      v31 = swift_allocObject();
      *(v31 + 16) = &unk_24AE0A898;
      *(v31 + 24) = v21;
      v32 = v30 | v28;
      if (v30 | v28)
      {
        v32 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v28;
        *(v0 + 40) = v30;
      }

      v5 = *(v0 + 152);
      v6 = *(v0 + 88);
      *(v0 + 48) = 1;
      *(v0 + 56) = v32;
      *(v0 + 64) = v44;
      swift_task_create();

      v3 = v53 + 1;
      v4 = v47;
    }

    while (v52 != sub_24AE09228());
  }

  v39 = *(v0 + 176);
  v38 = *(v0 + 184);
  v41 = *(v0 + 136);
  v40 = *(v0 + 144);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_24AD9C704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a3;
  v8 = *(*a3 + 88);
  v5[7] = v8;
  v9 = *(v8 - 8);
  v5[8] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[9] = v11;
  v12 = swift_task_alloc();
  v5[10] = v12;
  *v12 = v5;
  v12[1] = sub_24AD9C828;

  return sub_24AD9CC1C(v11, a4, a5);
}

uint64_t sub_24AD9C828()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_24AD9C9B4;
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);
    v4 = sub_24AD9C954;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AD9C954()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD9C9B4()
{
  v21 = v0;
  v1 = *(v0 + 88);
  v2 = *(**(v0 + 48) + 128);
  v3 = v1;
  v4 = sub_24AE08DE8();
  v5 = sub_24AE093F8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AD9F840(0xD00000000000001FLL, 0x800000024AE12F30, &v20);
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v9 = *(v0 + 16);
    v10 = *(*(v0 + 24) - 8);
    v11 = *(v10 + 64) + 15;
    swift_task_alloc();
    (*(v10 + 16))();
    v12 = sub_24AE08FF8();
    v14 = v13;

    v15 = sub_24AD9F840(v12, v14, &v20);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_24AD89000, v4, v5, "%s<uuid.>: Failed to preload data %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v8, -1, -1);
    MEMORY[0x24C231F80](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 88);
  }

  v17 = *(v0 + 72);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24AD9CC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 160) = a3;
  *(v4 + 168) = v3;
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;
  v5 = *v3;
  v6 = *(*v3 + 80);
  *(v4 + 176) = v6;
  v7 = *(v6 - 8);
  *(v4 + 184) = v7;
  *(v4 + 192) = *(v7 + 64);
  *(v4 + 200) = swift_task_alloc();
  v8 = v5[11];
  *(v4 + 208) = v8;
  v9 = v5[12];
  *(v4 + 216) = v9;
  v10 = v5[13];
  *(v4 + 224) = v10;
  *&v11 = v6;
  *(&v11 + 1) = v8;
  *&v12 = v9;
  *(&v12 + 1) = v10;
  *(v4 + 32) = v12;
  *(v4 + 16) = v11;
  v13 = type metadata accessor for DataCache.CacheType();
  *(v4 + 232) = v13;
  v14 = *(v13 - 8);
  *(v4 + 240) = v14;
  *(v4 + 248) = *(v14 + 64);
  *(v4 + 256) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B18, &qword_24AE0A7F8) - 8) + 64) + 15;
  *(v4 + 264) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B08, &qword_24AE0A7C8) - 8) + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  v17 = sub_24AE08818();
  *(v4 + 280) = v17;
  v18 = *(v17 - 8);
  *(v4 + 288) = v18;
  v19 = *(v18 + 64) + 15;
  *(v4 + 296) = swift_task_alloc();
  v20 = *(v8 - 8);
  *(v4 + 304) = v20;
  v21 = *(v20 + 64) + 15;
  *(v4 + 312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD9CEE4, v3, 0);
}

uint64_t sub_24AD9CEE4()
{
  v57 = v0;
  v1 = *(**(v0 + 168) + 128);

  v2 = sub_24AE08DE8();
  v3 = sub_24AE09408();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 168);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v56 = v6;
    *v5 = 136446210;
    v7 = sub_24AD9F380(0xD000000000000015, 0x800000024AE12F50);
    v9 = sub_24AD9F840(v7, v8, &v56);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24AD89000, v2, v3, "%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C231F80](v6, -1, -1);
    MEMORY[0x24C231F80](v5, -1, -1);
  }

  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  v12 = *(v0 + 168);
  v13 = *(v0 + 176);
  v14 = *(v0 + 152);
  v15 = *(*v12 + 136);
  swift_beginAccess();
  v16 = *(v12 + v15);
  sub_24AE08288();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA8B10, &unk_24AE0A7D0);
  sub_24AE092F8();
  v18 = *(v10 + 8);
  sub_24AE08E88();

  v19 = *(v0 + 128);
  *(v0 + 320) = v19;
  if (v19)
  {
    v20 = *(MEMORY[0x277D857C8] + 4);
    v21 = swift_task_alloc();
    *(v0 + 328) = v21;
    *v21 = v0;
    v21[1] = sub_24AD9D41C;
    v22 = *(v0 + 312);
    v23 = *(v0 + 208);
    v24 = MEMORY[0x277D84950];
    v25 = v19;
    v26 = v17;
  }

  else
  {
    v27 = *(v0 + 256);
    v28 = *(v0 + 240);
    v50 = *(v0 + 264);
    v51 = *(v0 + 248);
    v29 = *(v0 + 232);
    v47 = v29;
    v54 = *(v0 + 216);
    v55 = *(v0 + 224);
    v30 = *(v0 + 200);
    v48 = v30;
    v45 = *(v0 + 208);
    v46 = *(v0 + 192);
    v31 = *(v0 + 184);
    v53 = *(v0 + 176);
    v32 = *(v0 + 168);
    v33 = *(v0 + 152);
    sub_24ADA0394(*(v0 + 160), v50);
    (*(v28 + 16))(v27, v32 + *(*v32 + 120), v29);
    v49 = *(v31 + 16);
    v49(v30, v33, v53);
    *(v0 + 48) = v53;
    *(v0 + 56) = v45;
    *(v0 + 64) = v54;
    *(v0 + 72) = v55;
    type metadata accessor for DataCache();
    WitnessTable = swift_getWitnessTable();
    v35 = (*(v28 + 80) + 64) & ~*(v28 + 80);
    v36 = *(v31 + 80);
    v37 = v51 + v36 + v35;
    v52 = v17;
    v38 = v37 & ~v36;
    v39 = swift_allocObject();
    *(v39 + 2) = v32;
    *(v39 + 3) = WitnessTable;
    *(v39 + 4) = v53;
    *(v39 + 5) = v45;
    *(v39 + 6) = v54;
    *(v39 + 7) = v55;
    (*(v28 + 32))(&v39[v35], v27, v47);
    (*(v31 + 32))(&v39[v38], v48, v53);
    *&v39[(v46 + v38 + 7) & 0xFFFFFFFFFFFFFFF8] = v32;
    swift_retain_n();
    v40 = sub_24AD9F10C(0, 0, v50, &unk_24AE0A808, v39);
    *(v0 + 344) = v40;
    v49(v48, v33, v53);
    *(v0 + 136) = v40;
    v41 = *(*v32 + 136);
    swift_beginAccess();
    sub_24AE08E58();

    sub_24AE08E98();
    swift_endAccess();
    v42 = *(MEMORY[0x277D857C8] + 4);
    v43 = swift_task_alloc();
    *(v0 + 352) = v43;
    *v43 = v0;
    v43[1] = sub_24AD9D7C4;
    v23 = *(v0 + 208);
    v22 = *(v0 + 144);
    v24 = MEMORY[0x277D84950];
    v25 = v40;
    v26 = v52;
  }

  return MEMORY[0x282200430](v22, v25, v23, v26, v24);
}

uint64_t sub_24AD9D41C()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = sub_24AD9D9A4;
  }

  else
  {
    v6 = sub_24AD9D548;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD9D548()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[21] + *(*v0[21] + 120);
  sub_24ADA0DF0(v0[29], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[40];
    v6 = v0[34];

    sub_24AD92BE4(v6, &qword_27EFA8B08, &qword_24AE0A7C8);
    goto LABEL_7;
  }

  v7 = v0[37];
  v8 = v0[27];
  v9 = v0[22];
  v10 = v0[19];
  (*(v0[36] + 32))(v7, v0[34], v0[35]);
  if ((sub_24ADA0F7C(v7, v9, v8) & 1) != 0 || (v11 = v0[39], v12 = (*(v0[28] + 24))(v0[26]), v13 >> 60 == 15))
  {
    v14 = v0[40];
    (*(v0[36] + 8))(v0[37], v0[35]);
LABEL_6:

    goto LABEL_7;
  }

  v23 = v0[42];
  v24 = v0[19];
  v25 = v12;
  v26 = v13;
  sub_24ADA10F4(v12, v13, v0[37], v0[22], v0[27]);
  v27 = v23;
  v28 = v0[40];
  v30 = v0[36];
  v29 = v0[37];
  v31 = v0[35];
  if (!v27)
  {
    (*(v30 + 8))(v0[37], v0[35]);
    sub_24ADA0690(v25, v26);
    goto LABEL_6;
  }

  sub_24ADA0690(v25, v26);
  (*(v30 + 8))(v29, v31);
LABEL_7:
  (*(v0[38] + 32))(v0[18], v0[39], v0[26]);
  v15 = v0[39];
  v16 = v0[37];
  v18 = v0[33];
  v17 = v0[34];
  v19 = v0[32];
  v20 = v0[25];

  v21 = v0[1];

  return v21();
}

uint64_t sub_24AD9D7C4()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = sub_24AD9DA58;
  }

  else
  {
    v6 = sub_24AD9D8F0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD9D8F0()
{
  v1 = v0[43];

  v2 = v0[39];
  v3 = v0[37];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v7 = v0[25];

  v8 = v0[1];

  return v8();
}

uint64_t sub_24AD9D9A4()
{
  v1 = v0[40];

  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[37];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  v8 = v0[25];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AD9DA58()
{
  v1 = v0[43];

  v2 = v0[45];
  v3 = v0[39];
  v4 = v0[37];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  v8 = v0[25];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AD9DB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a1;
  v6[11] = a4;
  v8 = *a6;
  v6[14] = *a6;
  v9 = *(v8 + 88);
  v6[15] = v9;
  v10 = sub_24AE09438();
  v6[16] = v10;
  v11 = *(v10 - 8);
  v6[17] = v11;
  v12 = *(v11 + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v13 = *(v9 - 8);
  v6[21] = v13;
  v14 = *(v13 + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B08, &qword_24AE0A7C8) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v16 = sub_24AE08818();
  v6[25] = v16;
  v17 = *(v16 - 8);
  v6[26] = v17;
  v18 = *(v17 + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD9DD5C, a6, 0);
}

uint64_t sub_24AD9DD5C()
{
  v1 = v0[14];
  v2 = v1[10];
  v0[2] = v2;
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[15];
  v7 = v0[11];
  v0[32] = v2;
  v8 = v1[12];
  v0[33] = v8;
  v9 = v1[13];
  v0[34] = v9;
  v0[3] = v6;
  v0[4] = v8;
  v0[5] = v9;
  v10 = type metadata accessor for DataCache.CacheType();
  sub_24ADA0DF0(v10, v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_24AD92BE4(v0[24], &qword_27EFA8B08, &qword_24AE0A7C8);
    v11 = *(v8 + 24);
    v47 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[35] = v13;
    *v13 = v0;
    v14 = sub_24AD9E428;
LABEL_8:
    v13[1] = v14;
    v46 = v0[12];

    return v47(v2, v8);
  }

  v15 = v0[31];
  v16 = v0[12];
  (*(v0[26] + 32))(v15, v0[24], v0[25]);
  if ((sub_24ADA0F7C(v15, v2, v8) & 1) == 0)
  {
    v44 = *(v8 + 24);
    v47 = (v44 + *v44);
    v45 = v44[1];
    v13 = swift_task_alloc();
    v0[39] = v13;
    *v13 = v0;
    v14 = sub_24AD9E604;
    goto LABEL_8;
  }

  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[25];
  v20 = v0[26];
  v48 = v0[20];
  v21 = v0[15];
  v22 = v0[12];
  sub_24ADA12F4(v0[31], v2, v8);
  (*(v20 + 16))(v18, v17, v19);
  (*(v9 + 16))(v18);
  v23 = v0[31];
  v24 = v0[25];
  v25 = v0[23];
  v26 = v0[20];
  v27 = v0[21];
  v28 = v0[15];
  v29 = v0[10];
  v30 = *(v0[26] + 8);
  v30(v0[30], v24);
  v30(v23, v24);
  (*(v27 + 56))(v26, 0, 1, v28);
  v31 = *(v27 + 32);
  v31(v25, v26, v28);
  v31(v29, v25, v28);
  v33 = v0[30];
  v32 = v0[31];
  v35 = v0[28];
  v34 = v0[29];
  v36 = v0[27];
  v38 = v0[23];
  v37 = v0[24];
  v39 = v0[22];
  v41 = v0[19];
  v40 = v0[20];
  v49 = v0[18];

  v42 = v0[1];

  return v42();
}

uint64_t sub_24AD9E428(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 280);
  v5 = *v3;
  v5[36] = a1;
  v5[37] = a2;
  v5[38] = v2;

  if (v2)
  {
    v7 = v5[30];
    v6 = v5[31];
    v9 = v5[28];
    v8 = v5[29];
    v10 = v5[27];
    v12 = v5[23];
    v11 = v5[24];
    v13 = v5[22];
    v18 = v5[20];
    v19 = v5[19];
    v14 = v5[18];

    v15 = v5[1];

    return v15();
  }

  else
  {
    v17 = v5[13];

    return MEMORY[0x2822009F8](sub_24AD9EE00, v17, 0);
  }
}

uint64_t sub_24AD9E604(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 312);
  v7 = *v3;
  v5[40] = a1;
  v5[41] = a2;
  v5[42] = v2;

  v8 = v4[13];
  if (v2)
  {
    v9 = sub_24AD9F000;
  }

  else
  {
    v9 = sub_24AD9E73C;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24AD9E73C()
{
  v55 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 96);
  sub_24ADA10F4(*(v0 + 320), *(v0 + 328), *(v0 + 248), *(v0 + 256), *(v0 + 264));
  v3 = v1;
  if (v1)
  {
    v4 = *(**(v0 + 104) + 128);
    v5 = v3;
    v6 = sub_24AE08DE8();
    v7 = sub_24AE093F8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v54[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE12F50, v54);
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      v10 = *(v0 + 48);
      v11 = *(*(v0 + 56) - 8);
      v12 = *(v11 + 64) + 15;
      swift_task_alloc();
      (*(v11 + 16))();
      v13 = sub_24AE08FF8();
      v15 = v14;

      v16 = sub_24AD9F840(v13, v15, v54);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_24AD89000, v6, v7, "%s: Failed to save data %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C231F80](v9, -1, -1);
      MEMORY[0x24C231F80](v8, -1, -1);
    }

    v18 = *(v0 + 320);
    v17 = *(v0 + 328);
    v19 = *(v0 + 120);
    v20 = *(v0 + 80);
    v21 = *(*(v0 + 272) + 8);
    sub_24ADA0A7C(v18, v17);
    v21(v18, v17);
    v22 = *(v0 + 320);
    v23 = *(v0 + 328);
    (*(*(v0 + 208) + 8))(*(v0 + 248), *(v0 + 200));
    sub_24ADA06A4(v22, v23);
  }

  else
  {
    v24 = *(v0 + 272);
    v26 = *(v0 + 216);
    v25 = *(v0 + 224);
    v27 = *(v0 + 200);
    v28 = *(v0 + 208);
    v29 = *(v0 + 144);
    v30 = *(v0 + 120);
    v31 = *(v0 + 96);
    sub_24ADA12F4(*(v0 + 248), *(v0 + 256), *(v0 + 264));
    (*(v28 + 16))(v26, v25, v27);
    (*(v24 + 16))(v26);
    v32 = *(v0 + 248);
    v33 = *(v0 + 224);
    v34 = *(v0 + 200);
    v35 = *(v0 + 208);
    v36 = *(v0 + 168);
    v37 = *(v0 + 144);
    v38 = *(v0 + 120);
    v52 = *(v0 + 80);
    sub_24ADA06A4(*(v0 + 320), *(v0 + 328));
    v39 = *(v35 + 8);
    v39(v33, v34);
    v39(v32, v34);
    (*(v36 + 56))(v37, 0, 1, v38);
    (*(v36 + 32))(v52, v37, v38);
  }

  v41 = *(v0 + 240);
  v40 = *(v0 + 248);
  v43 = *(v0 + 224);
  v42 = *(v0 + 232);
  v44 = *(v0 + 216);
  v46 = *(v0 + 184);
  v45 = *(v0 + 192);
  v47 = *(v0 + 176);
  v49 = *(v0 + 152);
  v48 = *(v0 + 160);
  v53 = *(v0 + 144);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_24AD9EE00()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[15];
  v5 = v0[10];
  v6 = *(v0[34] + 8);
  sub_24ADA0A7C(v3, v1);
  v6(v3, v1);
  v8 = v0[36];
  v7 = v0[37];
  if (v2)
  {
    sub_24ADA0AD0();
    swift_allocError();
    sub_24ADA06A4(v8, v7);
    v10 = v0[30];
    v9 = v0[31];
    v12 = v0[28];
    v11 = v0[29];
    v13 = v0[27];
    v15 = v0[23];
    v14 = v0[24];
    v16 = v0[22];
    v17 = v0[19];
    v18 = v0[20];
    v31 = v0[18];
  }

  else
  {
    sub_24ADA06A4(v0[36], v0[37]);
    v21 = v0[30];
    v20 = v0[31];
    v23 = v0[28];
    v22 = v0[29];
    v24 = v0[27];
    v26 = v0[23];
    v25 = v0[24];
    v27 = v0[22];
    v29 = v0[19];
    v28 = v0[20];
    v32 = v0[18];
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_24AD9F000()
{
  (*(v0[26] + 8))(v0[31], v0[25]);
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v9 = v0[19];
  v10 = v0[20];
  v13 = v0[18];
  v14 = v0[42];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24AD9F10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B18, &qword_24AE0A7F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  sub_24ADA0394(a3, &v26[-1] - v11);
  v13 = sub_24AE092D8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24AD92BE4(v12, &qword_27EFA8B18, &qword_24AE0A7F8);
  }

  else
  {
    sub_24AE092C8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24AE09288();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24AE09018();
      v22 = *(v21 + 16);
      sub_24AD9F784(v21 + 32, v27, v26);

      v23 = v26[0];
      sub_24AD92BE4(a3, &qword_27EFA8B18, &qword_24AE0A7F8);

      return v23;
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

  sub_24AD92BE4(a3, &qword_27EFA8B18, &qword_24AE0A7F8);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_24AD9F380(uint64_t a1, uint64_t a2)
{
  sub_24AE094E8();

  v4 = sub_24AE08EE8();
  MEMORY[0x24C230FB0](v4);

  MEMORY[0x24C230FB0](2108704, 0xE300000000000000);
  MEMORY[0x24C230FB0](a1, a2);
  return 0x6863614361746144;
}

uint64_t DataCache.deinit()
{
  v1 = *(*v0 + 120);
  v7 = *(*v0 + 80);
  v8 = *(*v0 + 96);
  v2 = type metadata accessor for DataCache.CacheType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 128);
  v4 = sub_24AE08E08();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + *(*v0 + 136));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DataCache.__deallocating_deinit()
{
  DataCache.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AD9F5A4(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AD9F68C;

  return v5();
}

uint64_t sub_24AD9F68C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AD9F784@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AD9F840(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_24AE08288();
  v6 = sub_24AD9F90C(v11, 0, 0, 1, a1, a2);
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
    sub_24ADA0D90(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24AD9F90C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24AD9FA18(a5, a6);
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
    result = sub_24AE09568();
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

uint64_t sub_24AD9FA18(uint64_t a1, unint64_t a2)
{
  v4 = sub_24AD9FA64(a1, a2);
  sub_24AD9FB94(&unk_285E2F3A8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24AD9FA64(uint64_t a1, unint64_t a2)
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

  v6 = sub_24AD9FC80(v5, 0);
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

  result = sub_24AE09568();
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
        v10 = sub_24AE09088();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AD9FC80(v10, 0);
        result = sub_24AE094D8();
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

uint64_t sub_24AD9FB94(uint64_t result)
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

  result = sub_24AD9FCF4(result, v12, 1, v3);
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

void *sub_24AD9FC80(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8BB0, &qword_24AE0A8A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AD9FCF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8BB0, &qword_24AE0A8A8);
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

unint64_t sub_24AD9FDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_24AE08EA8();

  return sub_24AD9FE44(a1, v9, a2, a3);
}

unint64_t sub_24AD9FE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_24AE08EF8();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_24AD9FFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24AE09228())
  {
    sub_24AE09638();
    v13 = sub_24AE09628();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24AE09228();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_24AE09218())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24AE09528();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_24AD9FDE8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_24ADA02D0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AD9B61C;

  return sub_24AD9C13C(a1, a2, v6, v7, v8);
}

uint64_t sub_24ADA0394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B18, &qword_24AE0A7F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADA0404(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 48);
  v14 = *(v1 + 32);
  *(v3 + 16) = v14;
  *(v3 + 32) = v5;
  v6 = *(type metadata accessor for DataCache.CacheType() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v14 - 8) + 80)) & ~*(*(v14 - 8) + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + ((*(*(v14 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 48) = v12;
  *v12 = v3;
  v12[1] = sub_24ADA059C;

  return sub_24AD9DB0C(a1, v9, v10, v1 + v7, v1 + v8, v11);
}

uint64_t sub_24ADA059C()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24ADA0690(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24ADA06A4(a1, a2);
  }

  return a1;
}

uint64_t sub_24ADA06A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24ADA06FC(uint64_t a1)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 96);
  result = type metadata accessor for DataCache.CacheType();
  if (v2 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = sub_24AE08E08();
    if (v3 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of DataCache.preload(requests:taskPriority:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 176);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD8E628;

  return v10(a1, a2);
}

uint64_t dispatch thunk of DataCache.load(_:taskPriority:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 184);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24AD8E628;

  return v12(a1, a2, a3);
}

uint64_t sub_24ADA0A7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24ADA0AD0()
{
  result = qword_27EFA8BA8;
  if (!qword_27EFA8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8BA8);
  }

  return result;
}

uint64_t sub_24ADA0B24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B18, &qword_24AE0A7F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADA0B94()
{
  v2 = (*(*(v0[4] - 8) + 80) + 72) & ~*(*(v0[4] - 8) + 80);
  v3 = *(*(v0[4] - 8) + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B18, &qword_24AE0A7F8) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_24AD9B61C;

  return sub_24AD9C704(v6, v7, v8, v0 + v2, v0 + v5);
}