void sub_1BAD25220(uint64_t *a1, void *a2, unint64_t a3)
{
  v5 = *a1;
  v6 = sub_1BAD9CF38();
  [a2 replaceCharactersInRange:v5 withString:{1, v6}];

  if (a3 >> 62)
  {
LABEL_25:
    v7 = sub_1BAD9D8D8();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1BFB02E80](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    v10 = v9;
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    [v9 juDirectionalRangeValue];
    if (v5 >= v17)
    {
      if (__OFSUB__(v5, v17))
      {
        goto LABEL_24;
      }

      if (v5 - v17 < v18)
      {
        break;
      }
    }

    if (v11 == v7)
    {
      return;
    }
  }

  [v10 juDirectionalRangeValue];
  v12 = [a2 juParagraphStyleAtIndex:v17 effectiveRange:0];
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  [v12 paragraphSpacing];
  if (v14 == 0.0)
  {

LABEL_19:
    return;
  }

  [v13 mutableCopy];
  sub_1BAD9D628();
  swift_unknownObjectRelease();
  sub_1BAD053C8(0, &qword_1EDBA5BB8);
  if (swift_dynamicCast())
  {
    [v19 setParagraphSpacing_];
    v15 = *MEMORY[0x1E69DB688];
    v16 = v19;
    [a2 addAttribute:v15 value:v16 range:{v17, v18}];

    goto LABEL_19;
  }
}

Swift::Void __swiftcall NSMutableString.convertLineSeparatorsIntoLineFeeds(at:)(Swift::OpaquePointer at)
{
  v2 = *(at._rawValue + 2);
  if (v2)
  {
    v3 = (at._rawValue + 32);
    do
    {
      v4 = *v3++;
      v5 = sub_1BAD9CF38();
      [v1 replaceCharactersInRange:v4 withString:{1, v5}];

      --v2;
    }

    while (v2);
  }
}

id NSParagraphStyle.juWithBaseWritingDirection(_:)(uint64_t a1)
{
  [v1 mutableCopy];
  sub_1BAD9D628();
  swift_unknownObjectRelease();
  sub_1BAD053C8(0, &qword_1EDBA5BB8);
  swift_dynamicCast();
  [v4 setBaseWritingDirection_];
  [v4 copy];
  sub_1BAD9D628();

  swift_unknownObjectRelease();
  sub_1BAD053C8(0, &qword_1EBC29A00);
  swift_dynamicCast();
  return v4;
}

id sub_1BAD25610(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = NSParagraphStyle.juWithBaseWritingDirection(_:)(a3);

  return v5;
}

uint64_t UIUserInterfaceLayoutDirection.textAlignment(whenLeftToRight:rightToLeft:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    return a2;
  }

  return result;
}

CGSize __swiftcall Models.Artwork.Crop.scale(_:toFit:)(CGSize _, CGSize toFit)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = 0.0;
  if (_.width == 0.0 && _.height == 0.0)
  {
    v6 = 0.0;
    goto LABEL_41;
  }

  if (toFit.width != 0.0 || (v6 = 0.0, toFit.height != 0.0))
  {
    if (toFit.width == 0.0)
    {
      v7 = 0.0;
      v8 = 0.0;
      if (toFit.height == 0.0)
      {
LABEL_9:
        width = toFit.width;
        height = toFit.height;
        if (v3 == 25443 && v4 == 0xE200000000000000)
        {
          if (_.width != _.height)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v11 = _.height;
          v12 = _.width;
          v13 = sub_1BAD9DA98();
          _.width = v12;
          _.height = v11;
          v15 = v3 == 29299 && v4 == 0xE200000000000000;
          if ((v13 & (v12 == v11)) == 0 && !v15)
          {
LABEL_21:
            v16 = _.width;
            v17 = _.height;
            if (sub_1BAD9DA98())
            {
              _.height = v17;
              _.width = v16;
            }

            else
            {
              v18 = v8 * width;
              v19 = v7 * height;
              if (v3 == 25186 && v4 == 0xE200000000000000 || (sub_1BAD9DA98() & 1) != 0)
              {
                if (v7 >= v8)
                {
                  _.height = v17;
                }

                else
                {
                  _.height = v19;
                }

                if (v7 >= v8)
                {
                  _.width = v18;
                }

                else
                {
                  _.width = v16;
                }
              }

              else
              {
                if (v7 >= v8)
                {
                  _.height = v19;
                }

                else
                {
                  _.height = v17;
                }

                if (v7 >= v8)
                {
                  _.width = v16;
                }

                else
                {
                  _.width = v18;
                }
              }
            }
          }
        }

        v5 = floor(_.width);
        v6 = floor(_.height);
        goto LABEL_41;
      }
    }

    else
    {
      v8 = 0.0;
      v7 = _.width / toFit.width;
      if (toFit.height == 0.0)
      {
        goto LABEL_9;
      }
    }

    v8 = _.height / toFit.height;
    goto LABEL_9;
  }

LABEL_41:
  v20 = v5;
  v21 = v6;
  result.height = v21;
  result.width = v20;
  return result;
}

uint64_t Models.Artwork.URLTemplate.Key.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Models.Artwork.URLTemplate.Key.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Models.Artwork.URLTemplate.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1BAD9C7B8();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_1BAD9C8F8();
    (*(*(v10 - 8) + 8))(a2, v10);
    v11 = sub_1BAD9C7C8();
    result = (*(*(v11 - 8) + 8))(a1, v11);
    *a3 = v8;
    a3[1] = v9;
  }

  else
  {
    v13 = sub_1BAD9CE08();
    sub_1BAD25BD0();
    swift_allocError();
    v14 = MEMORY[0x1E69E7CC0];
    *v15 = &type metadata for Models.Artwork.URLTemplate;
    v15[1] = v14;
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69AB698], v13);
    swift_willThrow();
    v16 = sub_1BAD9C8F8();
    (*(*(v16 - 8) + 8))(a2, v16);
    v17 = sub_1BAD9C7C8();
    return (*(*(v17 - 8) + 8))(a1, v17);
  }

  return result;
}

unint64_t sub_1BAD25BD0()
{
  result = qword_1EBC2A488;
  if (!qword_1EBC2A488)
  {
    sub_1BAD9CE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A488);
  }

  return result;
}

uint64_t Models.Artwork.URLTemplate.makeURL(withSubstitutions:)(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      sub_1BAD9C2B8();
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_9:
        v4 &= v4 - 1;
        sub_1BAD13DE8();

        sub_1BAD9D618();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall Models.Artwork.URLTemplate.makeString(withSubstitutions:)(Swift::OpaquePointer withSubstitutions)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = withSubstitutions._rawValue + 64;
  v5 = 1 << *(withSubstitutions._rawValue + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(withSubstitutions._rawValue + 8);
  v8 = (v5 + 63) >> 6;

  v11 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      v9 = v3;
      v10 = v2;
      goto LABEL_13;
    }

    v7 = *&v4[8 * v12];
    ++v11;
    if (v7)
    {
      v11 = v12;
      do
      {
LABEL_9:
        v7 &= v7 - 1;
        sub_1BAD13DE8();

        v3 = sub_1BAD9D618();
        v14 = v13;

        v2 = v14;
      }

      while (v7);
      continue;
    }
  }

  __break(1u);
LABEL_13:
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_1BAD25F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_1BAD9C7B8();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_1BAD9C8F8();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_1BAD9C7C8();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v10;
    a3[1] = v11;
  }

  else
  {
    v15 = sub_1BAD9CE08();
    sub_1BAD25BD0();
    swift_allocError();
    v16 = MEMORY[0x1E69E7CC0];
    *v17 = v4;
    v17[1] = v16;
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69AB698], v15);
    swift_willThrow();
    v18 = sub_1BAD9C8F8();
    (*(*(v18 - 8) + 8))(a2, v18);
    v19 = sub_1BAD9C7C8();
    return (*(*(v19 - 8) + 8))(a1, v19);
  }

  return result;
}

uint64_t sub_1BAD260E4()
{
  sub_1BAD9DB48();
  sub_1BAD9D018();
  return sub_1BAD9DB88();
}

uint64_t sub_1BAD26130()
{
  sub_1BAD9DB48();
  sub_1BAD9D018();
  return sub_1BAD9DB88();
}

uint64_t sub_1BAD26178(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BAD9DA98();
  }
}

void *Models.Artwork.init(template:size:style:crop:format:quality:supportsWideGamut:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v10 = result[1];
  v11 = *a2;
  v12 = a2[1];
  v13 = *a3;
  v14 = a3[1];
  v15 = *a4;
  v16 = a4[1];
  *a8 = *result;
  *(a8 + 8) = v10;
  *(a8 + 16) = a9;
  *(a8 + 24) = a10;
  *(a8 + 48) = v13;
  *(a8 + 56) = v14;
  *(a8 + 32) = v11;
  *(a8 + 40) = v12;
  *(a8 + 64) = v15;
  *(a8 + 72) = v16;
  *(a8 + 80) = a5;
  *(a8 + 88) = a6 & 1;
  *(a8 + 89) = a7;
  return result;
}

uint64_t Models.Artwork.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v55 = a3;
  v5 = sub_1BAD9C7C8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v57 = &v46 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  v59 = a1;
  sub_1BAD9C7D8();
  sub_1BAD268F0();
  sub_1BAD9C748();
  v19 = *(v6 + 8);
  v19(v18, v5);
  v20 = v61;
  if (!v61)
  {
    v26 = sub_1BAD9CE08();
    sub_1BAD25BD0();
    swift_allocError();
    *v27 = 0x6574616C706D6574;
    v27[1] = 0xE800000000000000;
    v27[2] = &type metadata for Models.Artwork;
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x1E69AB690], v26);
    swift_willThrow();
    v28 = sub_1BAD9C8F8();
    (*(*(v28 - 8) + 8))(a2, v28);
LABEL_8:
    v32 = v59;
    return (v19)(v32, v5);
  }

  v58 = a2;
  v53 = v60;
  sub_1BAD9C7D8();
  v52 = sub_1BAD9C798();
  v22 = v21;
  v19(v16, v5);
  if (v22)
  {

    v23 = sub_1BAD9CE08();
    sub_1BAD25BD0();
    swift_allocError();
    v25 = v24;
    *v24 = 0x6874646977;
    v24[1] = 0xE500000000000000;
LABEL_7:
    v24[2] = &type metadata for Models.Artwork;
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69AB690], v23);
    swift_willThrow();
    v31 = sub_1BAD9C8F8();
    (*(*(v31 - 8) + 8))(v58, v31);
    goto LABEL_8;
  }

  sub_1BAD9C7D8();
  v51 = sub_1BAD9C798();
  v30 = v29;
  v19(v13, v5);
  if (v30)
  {

    v23 = sub_1BAD9CE08();
    sub_1BAD25BD0();
    swift_allocError();
    v25 = v24;
    *v24 = 0x746867696568;
    v24[1] = 0xE600000000000000;
    goto LABEL_7;
  }

  sub_1BAD9C7D8();
  sub_1BAD26968();
  sub_1BAD9C728();
  v19(v18, v5);
  v34 = v61;
  v49 = v60;
  sub_1BAD9C7D8();
  sub_1BAD269CC();
  sub_1BAD9C728();
  v19(v18, v5);
  v48 = v60;
  v50 = v61;
  v35 = v57;
  sub_1BAD9C7D8();
  sub_1BAD26A20();
  v36 = v56;
  sub_1BAD9C738();
  if (!v36)
  {
    v19(v35, v5);
    v56 = v61;
    v57 = v60;
    v38 = v59;
    sub_1BAD9C7D8();
    v39 = sub_1BAD9C758();
    v46 = v34;
    v47 = v39;
    v41 = v40;
    v19(v18, v5);
    v42 = v54;
    sub_1BAD9C7D8();
    v43 = sub_1BAD9C778();
    v44 = sub_1BAD9C8F8();
    (*(*(v44 - 8) + 8))(v58, v44);
    v19(v38, v5);
    result = (v19)(v42, v5);
    v45 = v55;
    *v55 = v53;
    v45[1] = v20;
    v45[2] = v52;
    v45[3] = v51;
    v45[4] = v49;
    v45[5] = v46;
    v45[6] = v48;
    v45[7] = v50;
    v45[8] = v57;
    v45[9] = v56;
    v45[10] = v47;
    *(v45 + 88) = v41 & 1;
    *(v45 + 89) = v43 & 1;
    return result;
  }

  v37 = sub_1BAD9C8F8();
  (*(*(v37 - 8) + 8))(v58, v37);
  v19(v59, v5);
  v32 = v35;
  return (v19)(v32, v5);
}

unint64_t sub_1BAD268F0()
{
  result = qword_1EBC2A490;
  if (!qword_1EBC2A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A490);
  }

  return result;
}

unint64_t sub_1BAD26968()
{
  result = qword_1EBC2A498;
  if (!qword_1EBC2A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A498);
  }

  return result;
}

unint64_t sub_1BAD269CC()
{
  result = qword_1EBC2A4A0;
  if (!qword_1EBC2A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A4A0);
  }

  return result;
}

unint64_t sub_1BAD26A20()
{
  result = qword_1EBC2A4A8;
  if (!qword_1EBC2A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A4A8);
  }

  return result;
}

uint64_t Models.Artwork.template.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Models.Artwork.style.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t Models.Artwork.crop.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t Models.Artwork.format.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
}

uint64_t Models.Artwork.removingStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 89);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 32) = 0x6669636570736E75;
  *(a1 + 40) = 0xEB00000000646569;
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  *(a1 + 88) = v8;
  *(a1 + 89) = v9;
}

JSValue __swiftcall Models.Artwork.makeValue(in:)(JSContext in)
{
  v30 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BADA1DD0;
  *(inited + 32) = 0x6574616C706D6574;
  *(inited + 40) = 0xE800000000000000;

  v3 = sub_1BAD1F8C8(MEMORY[0x1E69E7CC0]);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      do
      {
LABEL_9:
        v7 &= v7 - 1;
        v12 = sub_1BAD13DE8();

        v28 = v12;
        v29 = v12;
        v27 = v12;
        v26 = MEMORY[0x1E69E6158];
        sub_1BAD9D618();
      }

      while (v7);
      continue;
    }
  }

  v13 = sub_1BAD9DAC8();
  v14 = objc_opt_self();
  v15 = [v14 valueWithObject:v13 inContext:in.super.isa];
  swift_unknownObjectRelease();
  *(inited + 48) = v15;
  *(inited + 56) = 0x6874646977;
  *(inited + 64) = 0xE500000000000000;
  v16 = [v14 valueWithObject:sub_1BAD9DAC8() inContext:in.super.isa];
  swift_unknownObjectRelease();
  *(inited + 72) = v16;
  *(inited + 80) = 0x746867696568;
  *(inited + 88) = 0xE600000000000000;
  v17 = [v14 valueWithObject:sub_1BAD9DAC8() inContext:in.super.isa];
  swift_unknownObjectRelease();
  *(inited + 96) = v17;
  *(inited + 104) = 0x656C797473;
  *(inited + 112) = 0xE500000000000000;
  v18 = [v14 valueWithObject:sub_1BAD9DAC8() inContext:in.super.isa];
  swift_unknownObjectRelease();
  *(inited + 120) = v18;
  *(inited + 128) = 1886351971;
  *(inited + 136) = 0xE400000000000000;
  v19 = [v14 valueWithObject:sub_1BAD9DAC8() inContext:in.super.isa];
  swift_unknownObjectRelease();
  *(inited + 144) = v19;
  *(inited + 152) = 0x74616D726F66;
  *(inited + 160) = 0xE600000000000000;
  v20 = [v14 valueWithObject:sub_1BAD9DAC8() inContext:in.super.isa];
  swift_unknownObjectRelease();
  *(inited + 168) = v20;
  *(inited + 176) = 0x7974696C617571;
  *(inited + 184) = 0xE700000000000000;
  v21 = in.super.isa;
  if (v30)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_1BAD9DA88();
  }

  v23 = [v14 valueWithObject:v22 inContext:{in.super.isa, v26, v27, v28, v29}];
  swift_unknownObjectRelease();

  *(inited + 192) = v23;
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x80000001BADA9DC0;
  v24 = [v14 valueWithObject:sub_1BAD9DAC8() inContext:in.super.isa];
  swift_unknownObjectRelease();
  *(inited + 216) = v24;
  sub_1BAD1F9DC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A4B8);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A4C0);
  v25 = [v14 valueWithObject:sub_1BAD9DAC8() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v25)
  {
    return v25;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1BAD27418()
{
  v1 = *v0;
  v2 = 0x6574616C706D6574;
  v3 = 0x7974696C617571;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 1886351971;
  if (v1 != 4)
  {
    v4 = 0x74616D726F66;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x746867696568;
  if (v1 != 2)
  {
    v5 = 0x656C797473;
  }

  if (*v0)
  {
    v2 = 0x6874646977;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BAD274FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BAD289E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BAD27530(uint64_t a1)
{
  v2 = sub_1BAD27F30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAD2756C(uint64_t a1)
{
  v2 = sub_1BAD27F30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.Artwork.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A4C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAD27F30();
  sub_1BAD9DBB8();
  if (!v2)
  {
    v36 = 0;
    sub_1BAD27F84();
    sub_1BAD9D9C8();
    v10 = v34;
    v9 = v35;
    LOBYTE(v34) = 1;
    sub_1BAD9D9A8();
    v12 = v11;
    LOBYTE(v34) = 2;
    sub_1BAD9D9A8();
    v32 = v10;
    v33 = v9;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A4E0);
    v36 = 3;
    sub_1BAD28308(&qword_1EBC2A4E8, &qword_1EBC2A4E0, &unk_1BADA1E00, sub_1BAD27FD8);
    sub_1BAD9D988();
    v16 = v34;
    v17 = v35;
    if (v35 < 2)
    {
      sub_1BAD0801C(v34, v35);
      v17 = 0xEB00000000646569;
      v16 = 0x6669636570736E75;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A508);
    v36 = 4;
    sub_1BAD280B0();
    sub_1BAD9D988();
    if (v35 >= 2)
    {
      v30 = v34;
      v31 = v35;
    }

    else
    {
      sub_1BAD0801C(v34, v35);
      v30 = 25186;
      v31 = 0xE200000000000000;
    }

    v36 = 5;
    sub_1BAD2820C();
    sub_1BAD9D9C8();
    v28 = v34;
    v29 = v16;
    v18 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A538);
    v36 = 6;
    sub_1BAD28260();
    sub_1BAD9D988();
    v26 = v34;
    v27 = v18;
    v24 = BYTE1(v35);
    v25 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A558);
    v36 = 7;
    sub_1BAD28308(&qword_1EBC2A560, &qword_1EBC2A558, &unk_1BADA1E28, sub_1BAD28384);
    sub_1BAD9D988();
    (*(v6 + 8))(v8, v5);
    v19 = v24 | v25;
    v20 = v34;
    v21 = v26;
    if (v24)
    {
      v21 = 0;
    }

    v22 = v33;
    *a2 = v32;
    *(a2 + 8) = v22;
    *(a2 + 16) = v12;
    *(a2 + 24) = v15;
    *(a2 + 32) = v29;
    *(a2 + 40) = v17;
    *(a2 + 48) = v30;
    *(a2 + 56) = v31;
    *(a2 + 64) = v28;
    *(a2 + 72) = v27;
    *(a2 + 80) = v21;
    *(a2 + 88) = v19 & 1;
    *(a2 + 89) = (v20 != 3) & v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Models.Artwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A578);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - v5;
  v8 = *v1;
  v7 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  v11 = v1[4];
  v25 = v1[5];
  v26 = v11;
  v12 = v1[6];
  v23 = v1[7];
  v24 = v12;
  v13 = v1[9];
  v21 = v1[8];
  v22 = v13;
  v20 = v1[10];
  v30 = *(v1 + 88);
  v19[3] = *(v1 + 89);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAD27F30();

  sub_1BAD9DBD8();
  v28 = v8;
  v29 = v7;
  v31 = 0;
  sub_1BAD28400();
  v14 = v27;
  sub_1BAD9DA28();
  if (v14)
  {
  }

  else
  {
    v16 = v25;
    v15 = v26;
    v17 = v24;

    v28 = v10;
    v31 = 1;
    sub_1BAD0D790();
    sub_1BAD9DA28();
    v28 = v9;
    v31 = 2;
    sub_1BAD9DA28();
    v28 = v15;
    v29 = v16;
    v31 = 3;
    sub_1BAD28454();

    sub_1BAD9DA28();

    v28 = v17;
    v29 = v23;
    v31 = 4;
    sub_1BAD284A8();

    sub_1BAD9DA28();

    v28 = v21;
    v29 = v22;
    v31 = 5;
    sub_1BAD284FC();

    sub_1BAD9DA28();

    v28 = v20;
    LOBYTE(v29) = v30;
    v31 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A550);
    sub_1BAD28550(&qword_1EBC2A5A0);
    sub_1BAD9DA28();
    LOBYTE(v28) = 7;
    sub_1BAD9DA08();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BAD27F30()
{
  result = qword_1EBC2A4D0;
  if (!qword_1EBC2A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A4D0);
  }

  return result;
}

unint64_t sub_1BAD27F84()
{
  result = qword_1EBC2A4D8;
  if (!qword_1EBC2A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A4D8);
  }

  return result;
}

unint64_t sub_1BAD27FD8()
{
  result = qword_1EBC2A4F0;
  if (!qword_1EBC2A4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A4F8);
    sub_1BAD2805C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A4F0);
  }

  return result;
}

unint64_t sub_1BAD2805C()
{
  result = qword_1EBC2A500;
  if (!qword_1EBC2A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A500);
  }

  return result;
}

unint64_t sub_1BAD280B0()
{
  result = qword_1EBC2A510;
  if (!qword_1EBC2A510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A508);
    sub_1BAD28134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A510);
  }

  return result;
}

unint64_t sub_1BAD28134()
{
  result = qword_1EBC2A518;
  if (!qword_1EBC2A518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A520);
    sub_1BAD281B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A518);
  }

  return result;
}

unint64_t sub_1BAD281B8()
{
  result = qword_1EBC2A528;
  if (!qword_1EBC2A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A528);
  }

  return result;
}

unint64_t sub_1BAD2820C()
{
  result = qword_1EBC2A530;
  if (!qword_1EBC2A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A530);
  }

  return result;
}

unint64_t sub_1BAD28260()
{
  result = qword_1EBC2A540;
  if (!qword_1EBC2A540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A538);
    sub_1BAD28550(&qword_1EBC2A548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A540);
  }

  return result;
}

uint64_t sub_1BAD28308(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BAD28384()
{
  result = qword_1EBC2A568;
  if (!qword_1EBC2A568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A568);
  }

  return result;
}

unint64_t sub_1BAD28400()
{
  result = qword_1EBC2A580;
  if (!qword_1EBC2A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A580);
  }

  return result;
}

unint64_t sub_1BAD28454()
{
  result = qword_1EBC2A588;
  if (!qword_1EBC2A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A588);
  }

  return result;
}

unint64_t sub_1BAD284A8()
{
  result = qword_1EBC2A590;
  if (!qword_1EBC2A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A590);
  }

  return result;
}

unint64_t sub_1BAD284FC()
{
  result = qword_1EBC2A598;
  if (!qword_1EBC2A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A598);
  }

  return result;
}

uint64_t sub_1BAD28550(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A550);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BAD285C0()
{
  result = qword_1EBC2A5A8;
  if (!qword_1EBC2A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A5A8);
  }

  return result;
}

unint64_t sub_1BAD28618()
{
  result = qword_1EBC2A5B0;
  if (!qword_1EBC2A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A5B0);
  }

  return result;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BAD28690(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
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

uint64_t sub_1BAD286D8(uint64_t result, int a2, int a3)
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
      *(result + 90) = 1;
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

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s7ArtworkV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7ArtworkV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BAD288E4()
{
  result = qword_1EBC2A5B8;
  if (!qword_1EBC2A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A5B8);
  }

  return result;
}

unint64_t sub_1BAD2893C()
{
  result = qword_1EBC2A5C0;
  if (!qword_1EBC2A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A5C0);
  }

  return result;
}

unint64_t sub_1BAD28994()
{
  result = qword_1EBC2A5C8[0];
  if (!qword_1EBC2A5C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBC2A5C8);
  }

  return result;
}

uint64_t sub_1BAD289E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1886351971 && a2 == 0xE400000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7974696C617571 && a2 == 0xE700000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BADA9DC0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1BAD9DA98();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1BAD28CD0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAD28DDC()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

id JUComponentCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *JUComponentCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *(v4 + qword_1EBC2A650) = (*(*((*MEMORY[0x1E69E7D40] & *v4) + 0x70) + 56))(*((*MEMORY[0x1E69E7D40] & *v4) + 0x68), *((*MEMORY[0x1E69E7D40] & *v4) + 0x70));
  *(v4 + qword_1EBC2A658) = MEMORY[0x1E69E7CD0];
  v12.receiver = v4;
  v12.super_class = type metadata accessor for JUComponentCollectionViewCell();
  v9 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 contentView];
  [v10 addSubview_];

  return v9;
}

id JUComponentCollectionViewCell.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall JUComponentCollectionViewCell.prepareForReuse()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for JUComponentCollectionViewCell();
  objc_msgSendSuper2(&v3, sel_prepareForReuse);
  (*(v2 + 64))(*(v0 + qword_1EBC2A650), v1, v2);
}

void sub_1BAD291F0(void *a1)
{
  v1 = a1;
  JUComponentCollectionViewCell.prepareForReuse()();
}

void *sub_1BAD29264(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  [a1 copy];
  sub_1BAD9D628();
  swift_unknownObjectRelease();
  sub_1BAD29448();
  swift_dynamicCast();
  v4 = (*((*v3 & *v1) + 0x88))(a1);
  v6 = v5;
  v7 = *(v1 + qword_1EBC2A650);
  v8 = [v7 traitCollection];
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 8);
  v11 = v7;
  v12 = swift_checkMetadataState();
  v13 = v10(v8, v12, AssociatedConformanceWitness, v4, v6);
  v15 = v14;

  [v17 setSize_];
  return v17;
}

unint64_t sub_1BAD29448()
{
  result = qword_1EBC2A660;
  if (!qword_1EBC2A660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC2A660);
  }

  return result;
}

id sub_1BAD29494(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1BAD29264(v4);

  return v6;
}

id sub_1BAD294F4()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for JUComponentCollectionViewCell();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[qword_1EBC2A650];
  [v0 frame];
  return [v1 setFrame_];
}

void sub_1BAD295A0(void *a1)
{
  v1 = a1;
  sub_1BAD294F4();
}

uint64_t JUComponentCollectionViewCell.apply(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v50 = sub_1BAD9CA18();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((v5 & v4) + 0x70);
  v8 = *((v5 & v4) + 0x68);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v41 - v10;
  v49 = sub_1BAD9CBC8();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A668);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v41 - v13;
  v15 = sub_1BAD9CB28();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 72))(a1, *&v2[qword_1EBC2A650], v8, v7);
  v18 = (*(v7 + 80))(a1, v8, v7);
  v19 = qword_1EBC2A658;
  swift_beginAccess();
  *&v2[v19] = v18;

  v42 = v2;
  [v2 setIsAccessibilityElement_];
  v20 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v52[0] = AssociatedTypeWitness;
  v52[1] = v20;
  v23 = a1;
  v52[2] = AssociatedConformanceWitness;
  v53 = v22;
  v24 = *(type metadata accessor for JUComponentConfiguration() + 52);
  sub_1BAD9CE48();
  v25 = v15;
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1BAD1A420(v14, &qword_1EBC2A668);
    v27 = v43;
    v26 = v44;
    (*(v44 + 16))(v43, v23 + v24, AssociatedTypeWitness);
    swift_getDynamicType();
    (*(v26 + 8))(v27, AssociatedTypeWitness);
    sub_1BAD9DC88();
    v53 = MEMORY[0x1E69E69B8];
    v52[0] = swift_allocObject();
    sub_1BAD9CA48();
    memset(v51, 0, sizeof(v51));
    v28 = v45;
    sub_1BAD9CBB8();

    sub_1BAD1A420(v51, &qword_1EBC2A120);
    sub_1BAD1A420(v52, &qword_1EBC2A120);
    v29 = v46;
    sub_1BAD9CB98();
    sub_1BAD9CA08();
    (*(v48 + 8))(v29, v50);
    v30 = sub_1BAD9CF38();

    [v42 setAccessibilityIdentifier_];

    return (*(v47 + 8))(v28, v49);
  }

  else
  {
    v32 = v41;
    v33 = v14;
    v34 = v25;
    (*(v16 + 32))(v41, v33, v25);
    v35 = v44;
    v36 = v23 + v24;
    v37 = v43;
    (*(v44 + 16))(v43, v36, AssociatedTypeWitness);
    swift_getDynamicType();
    (*(v35 + 8))(v37, AssociatedTypeWitness);
    sub_1BAD9DC88();
    v38 = v45;
    sub_1BAD9CBA8();

    v39 = v46;
    sub_1BAD9CB98();
    sub_1BAD9CA08();
    (*(v48 + 8))(v39, v50);
    v40 = sub_1BAD9CF38();

    [v42 setAccessibilityIdentifier_];

    (*(v47 + 8))(v38, v49);
    return (*(v16 + 8))(v32, v34);
  }
}

uint64_t JUComponentCollectionViewCell.apply(contentsOf:with:asPartOf:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v39 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A670);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v32 - v5;
  v44 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1BAD9CB58();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v32 - v8;
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v45 = v9;
  v46 = AssociatedTypeWitness;
  v35 = v11;
  v36 = AssociatedConformanceWitness;
  v47 = AssociatedConformanceWitness;
  v48 = v11;
  v34 = type metadata accessor for JUComponentConfiguration();
  v12 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v14 = (&v32 - v13);
  v15 = sub_1BAD9D598();
  v32 = *(v15 - 8);
  v33 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  v19 = *(v9 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v32 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A678);
  sub_1BAD9C948();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A680);
  v25 = swift_dynamicCast();
  v26 = *(v19 + 56);
  if (v25)
  {
    v26(v18, 0, 1, v9);
    (*(v19 + 32))(v24, v18, v9);
    (*(v19 + 16))(v22, v24, v9);
    (*(v40 + 16))(v38, v42, v41);
    v27 = v37;
    sub_1BAD9CB68();
    v28 = v43;

    JUComponentConfiguration.init(contentsOf:with:asPartOf:)(v22, v27, v28, v9, v14);
    JUComponentCollectionViewCell.apply(_:)(v14);
    (*(v12 + 8))(v14, v34);
    return (*(v19 + 8))(v24, v9);
  }

  else
  {
    v26(v18, 1, 1, v9);
    (*(v32 + 8))(v18, v33);
    sub_1BAD2A264();
    v45 = sub_1BAD9DA48();
    v46 = v30;
    MEMORY[0x1BFB026B0](0x20746F6E20736920, 0xE800000000000000);
    v31 = sub_1BAD9DC88();
    MEMORY[0x1BFB026B0](v31);

    result = sub_1BAD9D8B8();
    __break(1u);
  }

  return result;
}

unint64_t sub_1BAD2A264()
{
  result = qword_1EBC2A688;
  if (!qword_1EBC2A688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A688);
  }

  return result;
}

uint64_t JUComponentCollectionViewCell.automaticReloadTriggers.getter()
{
  sub_1BAD2B724();
}

uint64_t JUComponentCollectionViewCell.shouldSelect(contentsOf:with:asPartOf:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v45 = a2;
  v46 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A670);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v34 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1BAD9CB58();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v41 = &v34 - v9;
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v47 = v10;
  v48 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v49 = AssociatedConformanceWitness;
  v50 = v12;
  v37 = v12;
  v13 = type metadata accessor for JUComponentConfiguration();
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v34 - v14);
  v16 = sub_1BAD9D598();
  v35 = *(v16 - 8);
  v36 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  v20 = *(v10 - 8);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v34 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A678);
  sub_1BAD9C948();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A680);
  v26 = swift_dynamicCast();
  v27 = *(v20 + 56);
  if (v26)
  {
    v27(v19, 0, 1, v10);
    (*(v20 + 32))(v25, v19, v10);
    (*(v20 + 16))(v23, v25, v10);
    (*(v43 + 16))(v42, v45, v44);
    v28 = v41;
    sub_1BAD9CB68();
    v29 = v46;

    JUComponentConfiguration.init(contentsOf:with:asPartOf:)(v23, v28, v29, v10, v15);
    v30 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x90))(v15);
    (*(v38 + 8))(v15, v39);
    (*(v20 + 8))(v25, v10);
    return v30 & 1;
  }

  else
  {
    v27(v19, 1, 1, v10);
    (*(v35 + 8))(v19, v36);
    sub_1BAD2A264();
    v47 = sub_1BAD9DA48();
    v48 = v32;
    MEMORY[0x1BFB026B0](0x20746F6E20736920, 0xE800000000000000);
    v33 = sub_1BAD9DC88();
    MEMORY[0x1BFB026B0](v33);

    result = sub_1BAD9D8B8();
    __break(1u);
  }

  return result;
}

BOOL sub_1BAD2A90C()
{
  v2[0] = swift_getAssociatedTypeWitness();
  v2[1] = swift_getAssociatedTypeWitness();
  v2[2] = swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for JUComponentConfiguration();
  sub_1BAD9CA58();
  v0 = AssociatedConformanceWitness != 0;
  sub_1BAD1A420(v2, &qword_1EBC2A690);
  return v0;
}

uint64_t JUComponentCollectionViewCell.didSelect(contentsOf:with:withMetrics:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v45 = a4;
  v46 = a3;
  v44 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A670);
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v34 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1BAD9CB58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v40 = &v34 - v10;
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v47 = v11;
  v48 = AssociatedTypeWitness;
  v39 = AssociatedConformanceWitness;
  v49 = AssociatedConformanceWitness;
  v50 = v13;
  v36 = v13;
  v14 = type metadata accessor for JUComponentConfiguration();
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v34 - v15);
  v17 = sub_1BAD9D598();
  v34 = *(v17 - 8);
  v35 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  v21 = *(v11 - 8);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v34 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A678);
  sub_1BAD9C948();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A680);
  v27 = swift_dynamicCast();
  v28 = *(v21 + 56);
  if (v27)
  {
    v28(v20, 0, 1, v11);
    (*(v21 + 32))(v26, v20, v11);
    (*(v21 + 16))(v24, v26, v11);
    (*(v42 + 16))(v41, v44, v43);
    v29 = v40;
    sub_1BAD9CB68();
    v30 = v45;

    JUComponentConfiguration.init(contentsOf:with:asPartOf:)(v24, v29, v30, v11, v16);
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x98))(v16, v46);
    (*(v37 + 8))(v16, v38);
    return (*(v21 + 8))(v26, v11);
  }

  else
  {
    v28(v20, 1, 1, v11);
    (*(v34 + 8))(v20, v35);
    sub_1BAD2A264();
    v47 = sub_1BAD9DA48();
    v48 = v32;
    MEMORY[0x1BFB026B0](0x20746F6E20736920, 0xE800000000000000);
    v33 = sub_1BAD9DC88();
    MEMORY[0x1BFB026B0](v33);

    result = sub_1BAD9D8B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAD2AFFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2A698);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v17[0] = AssociatedTypeWitness;
  v17[1] = v8;
  v17[2] = AssociatedConformanceWitness;
  v17[3] = v10;
  v11 = type metadata accessor for JUComponentConfiguration();
  sub_1BAD9CA58();
  if (!v16)
  {
    return sub_1BAD1A420(&v15, &qword_1EBC2A690);
  }

  sub_1BAD0B40C(&v15, v17);
  sub_1BAD14A3C(v17, &v15);
  sub_1BAD2B768(a2, v6);
  v12 = *(a1 + *(v11 + 60));
  type metadata accessor for JUActionPerformer();
  v13 = swift_allocObject();
  sub_1BAD0B40C(&v15, v13 + 16);
  sub_1BAD2B7D8(v6, v13 + OBJC_IVAR____TtC5JetUI17JUActionPerformer_metricsContext);
  *(v13 + OBJC_IVAR____TtC5JetUI17JUActionPerformer_objectGraph) = v12;

  sub_1BAD58820();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v13 + 16);
  sub_1BAD1A420(v13 + OBJC_IVAR____TtC5JetUI17JUActionPerformer_metricsContext, qword_1EBC2A698);

  swift_deallocClassInstance();
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1BAD2B290()
{
}

id JUComponentCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JUComponentCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BAD2B340(uint64_t a1)
{
}

uint64_t sub_1BAD2B38C()
{
  sub_1BAD2B724();
}

id JUAnyComponentCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id JUAnyComponentCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JUAnyComponentCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BAD2B724()
{
  v1 = qword_1EBC2A658;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BAD2B768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2A698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAD2B7D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2A698);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAD2BA28@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = a1[3];
  v13 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  Measurable.placeable.getter(v12, v13, v16);
  sub_1BAD14A3C(v16, a2);
  v14 = MEMORY[0x1E69E7DE0];
  *(a2 + 64) = MEMORY[0x1E69E7DE0];
  *(a2 + 72) = &protocol witness table for CGFloat;
  *(a2 + 40) = a3;
  *(a2 + 104) = v14;
  *(a2 + 112) = &protocol witness table for CGFloat;
  *(a2 + 80) = a4;
  *(a2 + 144) = v14;
  *(a2 + 152) = &protocol witness table for CGFloat;
  *(a2 + 120) = a5;
  *(a2 + 184) = v14;
  *(a2 + 192) = &protocol witness table for CGFloat;
  *(a2 + 160) = a6;
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Margins.init(_:top:leading:bottom:trailing:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  v12 = a1[3];
  v13 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  Measurable.placeable.getter(v12, v13, a6);
  sub_1BAD0B40C(a2, (a6 + 5));
  sub_1BAD0B40C(a3, (a6 + 10));
  sub_1BAD0B40C(a4, (a6 + 15));
  sub_1BAD0B40C(a5, (a6 + 20));
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

id ObjCFunctions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BAD2BC70(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v6 = a1[1];
  v7 = a2[1];
  v8 = sub_1BAD08078(*a1, *a2, a4);
  v9 = sub_1BAD08078(v6, v7, a4);
  *a3 = v8;
  a3[1] = v9;
}

double static CGRect.interpolateLinearly(between:and:forInput:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  MinX = CGRectGetMinX(*&a1);
  v29.origin.x = a5;
  v29.origin.y = a6;
  v29.size.width = a7;
  v29.size.height = a8;
  v24 = (1.0 - a9) * MinX + CGRectGetMinX(v29) * a9;
  v30.origin.x = a1;
  v30.origin.y = a2;
  v30.size.width = a3;
  v30.size.height = a4;
  CGRectGetMinY(v30);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v31.size.height = a8;
  CGRectGetMinY(v31);
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  CGRectGetWidth(v32);
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  CGRectGetWidth(v33);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  CGRectGetHeight(v34);
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = a7;
  v35.size.height = a8;
  CGRectGetHeight(v35);
  return v24;
}

void sub_1BAD2BE38(CGFloat *a1@<X0>, CGFloat *a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v5 = *a1;
  v30.origin.y = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v9 = a2[1];
  rect = v30.origin.y;
  v29 = *a2;
  v23 = v9;
  v11 = a2[2];
  v10 = a2[3];
  v30.origin.x = *a1;
  v30.size.width = v6;
  v30.size.height = v7;
  MinX = CGRectGetMinX(v30);
  v31.origin.x = v8;
  v31.origin.y = v9;
  v13 = v11;
  v31.size.width = v11;
  v31.size.height = v10;
  v14 = CGRectGetMinX(v31);
  v27 = sub_1BAD08078(MinX, v14, a4);
  v32.origin.x = v5;
  v32.origin.y = rect;
  v32.size.width = v6;
  v32.size.height = v7;
  MinY = CGRectGetMinY(v32);
  v33.origin.x = v29;
  v33.origin.y = v23;
  v33.size.width = v11;
  v33.size.height = v10;
  v15 = CGRectGetMinY(v33);
  v26 = sub_1BAD08078(MinY, v15, a4);
  v34.origin.x = v5;
  v34.origin.y = rect;
  v34.size.width = v6;
  v34.size.height = v7;
  Width = CGRectGetWidth(v34);
  v35.origin.x = v29;
  v35.origin.y = v23;
  v35.size.width = v11;
  v35.size.height = v10;
  v17 = v10;
  v18 = CGRectGetWidth(v35);
  v19 = sub_1BAD08078(Width, v18, a4);
  v36.origin.x = v5;
  v36.origin.y = rect;
  v36.size.width = v6;
  v36.size.height = v7;
  Height = CGRectGetHeight(v36);
  v37.origin.x = v29;
  v37.origin.y = v23;
  v37.size.width = v13;
  v37.size.height = v17;
  v21 = CGRectGetHeight(v37);
  v22 = sub_1BAD08078(Height, v21, a4);
  *a3 = v27;
  a3[1] = v26;
  a3[2] = v19;
  a3[3] = v22;
}

BOOL sub_1BAD2BFCC(void *a1)
{
  v1 = a1;
  v2 = [v1 contents];
  if (v2)
  {
    sub_1BAD9D628();
    swift_unknownObjectRelease();
  }

  else
  {

    memset(v4, 0, sizeof(v4));
  }

  sub_1BAD05470(v4);
  return v2 != 0;
}

BOOL CALayer.hasContent.getter()
{
  v1 = [v0 contents];
  if (v1)
  {
    sub_1BAD9D628();
    swift_unknownObjectRelease();
    sub_1BAD11FA4(&v3, v4);
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  sub_1BAD05470(v4);
  return v1 != 0;
}

void (*sub_1BAD2C154(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v4[4] = *v1;
  [v5 frame];
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  return sub_1BAD1B28C;
}

uint64_t ApplicationStatePresenter.__allocating_init(isEnabled:)(char a1)
{
  v2 = swift_allocObject();
  ApplicationStatePresenter.init(isEnabled:)(a1);
  return v2;
}

uint64_t ApplicationStatePresenter.init(isEnabled:)(char a1)
{
  v2 = v1;
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2A720);
  swift_allocObject();
  *(v2 + 40) = sub_1BAD9CE38();
  v4 = [objc_opt_self() defaultCenter];
  v5 = qword_1EBC29C00;

  if (v5 != -1)
  {
    swift_once();
  }

  [v4 addObserver:v2 selector:sel_applicationDidBecomeActive name:qword_1EBC357C0 object:0];

  v6 = qword_1EBC29C08;

  if (v6 != -1)
  {
    swift_once();
  }

  [v4 addObserver:v2 selector:sel_applicationDidResignActive name:qword_1EBC357C8 object:0];

  return v2;
}

uint64_t ApplicationStatePresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  sub_1BAD2C43C(v0 + 24);

  return v0;
}

uint64_t ApplicationStatePresenter.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  sub_1BAD2C43C(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t ApplicationStatePresenter.isEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t ApplicationStatePresenter.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ApplicationStatePresenter.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1BAD2C6D8;
}

void sub_1BAD2C6D8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1BAD2C78C()
{
  result = swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v0 + 32);
      ObjectType = swift_getObjectType();
      (*(v2 + 8))(ObjectType, v2);
      swift_unknownObjectRelease();
    }

    return sub_1BAD9CE28();
  }

  return result;
}

uint64_t sub_1BAD2C85C()
{
  result = swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v0 + 32);
      ObjectType = swift_getObjectType();
      (*(v2 + 16))(ObjectType, v2);
      swift_unknownObjectRelease();
    }

    return sub_1BAD9CE28();
  }

  return result;
}

uint64_t sub_1BAD2C928(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t JUComponentShelfLayoutConfiguration.init(forContentsOf:with:at:in:asPartOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  *a7 = sub_1BAD1F2A0(MEMORY[0x1E69E7CC0]);
  v14 = type metadata accessor for JUComponentShelfLayoutConfiguration();
  (*(*(a6 - 8) + 32))(a7 + v14[9], a1, a6);
  v15 = v14[10];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2A730);
  (*(*(v16 - 8) + 32))(a7 + v15, a2, v16);
  v17 = v14[11];
  v18 = sub_1BAD9C408();
  result = (*(*(v18 - 8) + 32))(a7 + v17, a3, v18);
  *(a7 + v14[12]) = a4;
  *(a7 + v14[13]) = a5;
  return result;
}

uint64_t JUComponentShelfLayoutConfiguration.state.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2A730);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t JUComponentShelfLayoutConfiguration.state.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2A730);
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t JUComponentShelfLayoutConfiguration.indexPath.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1BAD9C408();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t JUComponentShelfLayoutConfiguration.indexPath.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_1BAD9C408();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t JUComponentShelfLayoutConfiguration.layoutEnvironment.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  result = swift_unknownObjectRelease();
  *(v2 + v4) = a1;
  return result;
}

uint64_t JUComponentShelfLayoutConfiguration.objectGraph.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);

  *(v2 + v4) = a1;
  return result;
}

uint64_t JUComponentShelfLayoutConfiguration.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a2;
  v29 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1BAD9D598();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = sub_1BAD9CA78();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v5;
  sub_1BAD9CA88();
  if (*(v17 + 16) && (v18 = sub_1BAD2D6FC(v16), (v19 & 1) != 0))
  {
    sub_1BAD149E0(*(v17 + 56) + 32 * v18, v30);
    (*(v14 + 8))(v16, v13);
    sub_1BAD11FA4(v30, v31);
    sub_1BAD149E0(v31, v30);
    v20 = swift_dynamicCast();
    v21 = *(*(AssociatedTypeWitness - 8) + 56);
    if (v20)
    {
      v22 = *(AssociatedTypeWitness - 8);
      v21(v12, 0, 1, AssociatedTypeWitness);
      (*(v22 + 32))(v29, v12, AssociatedTypeWitness);
    }

    else
    {
      v21(v12, 1, 1, AssociatedTypeWitness);
      v24 = (*(v27 + 8))(v12, v10);
      MEMORY[0x1EEE9AC00](v24);
      v25 = *(v28 + 24);
      *(&v26 - 6) = *(v28 + 16);
      *(&v26 - 5) = a3;
      *(&v26 - 4) = v25;
      *(&v26 - 3) = a4;
      *(&v26 - 2) = v31;
      *(&v26 - 1) = a1;
      sub_1BAD9CB88();
      (*(a4 + 16))(a3, a4);
    }

    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    (*(v14 + 8))(v16, v13);
    return (*(a4 + 16))(a3, a4);
  }
}

uint64_t sub_1BAD2D204()
{
  sub_1BAD9D7E8();
  MEMORY[0x1BFB026B0](0x2065756C6156, 0xE600000000000000);
  sub_1BAD9D8A8();
  MEMORY[0x1BFB026B0](0x20726F6620, 0xE500000000000000);
  v0 = sub_1BAD9DC88();
  MEMORY[0x1BFB026B0](v0);

  MEMORY[0x1BFB026B0](0xD000000000000011, 0x80000001BADAA040);
  swift_getAssociatedTypeWitness();
  v1 = sub_1BAD9DC88();
  MEMORY[0x1BFB026B0](v1);

  return 0;
}

uint64_t JUComponentShelfLayoutConfiguration.subscript.setter(uint64_t a1)
{
  sub_1BAD2DD04(a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

void (*JUComponentShelfLayoutConfiguration.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  JUComponentShelfLayoutConfiguration.subscript.getter(a2, a3, a4, a5, v17);
  return sub_1BAD2D51C;
}

void sub_1BAD2D51C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 56), v4, v5);
    sub_1BAD2DD04(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1BAD2DD04(*(*a1 + 64));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

id JUComponentShelfLayoutConfiguration.traitCollection.getter(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 48)) traitCollection];

  return v2;
}

unint64_t sub_1BAD2D66C(uint64_t a1)
{
  sub_1BAD9CF68();
  sub_1BAD9DB48();
  sub_1BAD9D018();
  v2 = sub_1BAD9DB88();

  return sub_1BAD2DBD8(a1, v2);
}

unint64_t sub_1BAD2D6FC(uint64_t a1)
{
  sub_1BAD9CA78();
  sub_1BAD2E73C(&qword_1EBC2A7C0);
  v2 = sub_1BAD9CED8();

  return sub_1BAD2D8B0(a1, v2);
}

unint64_t sub_1BAD2D780(uint64_t a1)
{
  v2 = sub_1BAD9D558();

  return sub_1BAD2DA5C(a1, v2);
}

unint64_t sub_1BAD2D7C4(uint64_t a1, uint64_t a2)
{
  sub_1BAD9DB48();
  sub_1BAD9D018();
  v4 = sub_1BAD9DB88();

  return sub_1BAD2DB20(a1, a2, v4);
}

unint64_t sub_1BAD2D83C(uint64_t a1, uint64_t a2)
{
  sub_1BAD9DB48();
  sub_1BAD9D018();
  v4 = sub_1BAD9DB88();
  return sub_1BAD2DB20(a1, a2, v4);
}

unint64_t sub_1BAD2D8B0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1BAD9CA78();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1BAD2E73C(&unk_1EBC2A7E0);
      v15 = sub_1BAD9CF28();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1BAD2DA5C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1BAD22A20();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1BAD9D568();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BAD2DB20(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1BAD9DA98())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1BAD2DBD8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1BAD9CF68();
      v8 = v7;
      if (v6 == sub_1BAD9CF68() && v8 == v9)
      {
        break;
      }

      v11 = sub_1BAD9DA98();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1BAD2DD04(uint64_t a1)
{
  v2 = sub_1BAD9CA78();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAD9CA88();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  return sub_1BAD20C24(v8, v4);
}

void sub_1BAD2DE20()
{
  sub_1BAD1F5F4();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1BAD2E610();
      if (v2 <= 0x3F)
      {
        sub_1BAD9C408();
        if (v3 <= 0x3F)
        {
          sub_1BAD2E660();
          if (v4 <= 0x3F)
          {
            sub_1BAD9CAB8();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BAD2DF08(int *a1, unsigned int a2, uint64_t a3)
{
  v36 = *(a3 + 16);
  v5 = *(v36 - 8);
  v6 = *(v5 + 84);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2A730);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v6 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = v6;
  }

  v11 = sub_1BAD9C408();
  v12 = *(v11 - 8);
  v13 = *(v5 + 80);
  v14 = *(v5 + 64);
  v15 = *(v8 + 80);
  v16 = *(v12 + 80);
  if (v10 <= *(v12 + 84))
  {
    v17 = *(v12 + 84);
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v8 + 64) + v16;
  if (v18 >= a2)
  {
    goto LABEL_33;
  }

  v20 = ((((*(*(v11 - 8) + 64) + ((v19 + ((v14 + v15 + ((v13 + 8) & ~v13)) & ~v15)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v18 + 1;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 <= 1)
  {
    if (!v24)
    {
      goto LABEL_33;
    }

    v25 = *(a1 + v20);
    if (!v25)
    {
      goto LABEL_33;
    }

LABEL_30:
    v27 = v25 - 1;
    if (v21)
    {
      v27 = 0;
      v28 = *a1;
    }

    else
    {
      v28 = 0;
    }

    return v18 + (v28 | v27) + 1;
  }

  if (v24 == 2)
  {
    v25 = *(a1 + v20);
    if (v25)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v25 = *(a1 + v20);
    if (v25)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if ((v17 & 0x80000000) == 0)
  {
    v29 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v29) = -1;
    }

    return (v29 + 1);
  }

  v30 = (a1 + v13 + 8) & ~v13;
  if (v6 == v18)
  {
    v31 = *(v5 + 48);
    v32 = v6;
    v33 = v36;

    return v31(v30, v32, v33);
  }

  v30 = (v30 + v14 + v15) & ~v15;
  if (v9 == v18)
  {
    v31 = *(v8 + 48);
    v32 = v9;
    v33 = v7;

    return v31(v30, v32, v33);
  }

  v34 = *(v12 + 48);
  v35 = (v19 + v30) & ~v16;

  return v34(v35);
}

void sub_1BAD2E26C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v37 = *(a4 + 16);
  v7 = *(v37 - 8);
  v38 = v7;
  v8 = *(v7 + 84);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2A730);
  v9 = *(v36 - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v8;
  }

  v12 = *(sub_1BAD9C408() - 8);
  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v12 + 80);
  if (v11 <= *(v12 + 84))
  {
    v18 = *(v12 + 84);
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = v16 + v17;
  v21 = ((((*(v12 + 64) + ((v16 + v17 + ((v14 + v15 + ((v13 + 8) & ~v13)) & ~v15)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v19 >= a3)
  {
    v24 = 0;
    v25 = a2 - v19;
    if (a2 <= v19)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (v21)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    if (v21)
    {
      v27 = ~v19 + a2;
      bzero(a1, v21);
      *a1 = v27;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(a1 + v21) = v26;
      }

      else
      {
        *(a1 + v21) = v26;
      }
    }

    else if (v24)
    {
      *(a1 + v21) = v26;
    }

    return;
  }

  if (((((*(v12 + 64) + ((v16 + v17 + ((v14 + v15 + ((v13 + 8) & ~v13)) & ~v15)) & ~v17) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v22 = a3 - v19 + 1;
  }

  else
  {
    v22 = 2;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = a2 - v19;
  if (a2 > v19)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v21) = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v24)
  {
    goto LABEL_38;
  }

  *(a1 + v21) = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if ((v18 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v28 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v28 = (a2 - 1);
    }

    *a1 = v28;
    return;
  }

  v29 = (a1 + v13 + 8) & ~v13;
  if (v8 == v19)
  {
    v30 = *(v38 + 56);
    v31 = a2;
    v32 = v8;
    v33 = v37;

LABEL_50:
    v30(v29, v31, v32, v33);
    return;
  }

  v29 = (v29 + v14 + v15) & ~v15;
  if (v10 == v19)
  {
    v30 = *(v9 + 56);
    v31 = a2;
    v32 = v10;
    v33 = v36;

    goto LABEL_50;
  }

  v34 = *(v12 + 56);
  v35 = (v20 + v29) & ~v17;

  v34(v35, a2);
}

void sub_1BAD2E610()
{
  if (!qword_1EDBA5D98)
  {
    v0 = sub_1BAD9C9E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBA5D98);
    }
  }
}

unint64_t sub_1BAD2E660()
{
  result = qword_1EBC2A7D0;
  if (!qword_1EBC2A7D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBC2A7D0);
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

uint64_t sub_1BAD2E73C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BAD9CA78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

UIColor __swiftcall UIColor.init(light:lightHighContrast:dark:darkHighContrast:)(UIColor light, UIColor lightHighContrast, UIColor dark, UIColor darkHighContrast)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = swift_allocObject();
  v9[2].super.isa = darkHighContrast.super.isa;
  v9[3].super.isa = dark.super.isa;
  v9[4].super.isa = lightHighContrast.super.isa;
  v9[5].super.isa = light.super.isa;
  v17[4] = sub_1BAD2E978;
  v17[5] = v9;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1BAD2E984;
  v17[3] = &block_descriptor_2;
  v10 = _Block_copy(v17);
  v11 = darkHighContrast.super.isa;
  v12 = dark.super.isa;
  v13 = lightHighContrast.super.isa;
  v14 = light.super.isa;

  v15 = [v8 initWithDynamicProvider_];

  _Block_release(v10);
  return v15;
}

id sub_1BAD2E8C4(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = [a1 userInterfaceStyle];
  v10 = [a1 accessibilityContrast];
  if (v9 == 1)
  {
    if (v10 == 1)
    {
      v12 = a4;
    }

    else
    {
      v12 = a5;
    }
  }

  else if (v9 == 2)
  {
    v11 = v10 == -1 || v10 == 0;
    v12 = a3;
    if (!v11)
    {
      if (v10 == 1)
      {
        v12 = a2;
      }

      else
      {
        v12 = a5;
      }
    }
  }

  else
  {
    v12 = a5;
  }

  return v12;
}

id sub_1BAD2E984(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t LayoutAttributedTextViewPlaceholder.__allocating_init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 96) = 0;
  *(v12 + 40) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0;
  if (!a1)
  {
    v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v14 = sub_1BAD9CF38();
    a1 = [v13 initWithString_];
  }

  *(v12 + 16) = a1;
  swift_beginAccess();
  *(v12 + 88) = a4;
  *(v12 + 96) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a5;
  *(v12 + 80) = a6;
  return v12;
}

uint64_t LayoutAttributedTextViewPlaceholder.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 96) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0;
  if (!a1)
  {
    v12 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v13 = sub_1BAD9CF38();
    v14 = [v12 initWithString_];

    a1 = v14;
  }

  *(v6 + 16) = a1;
  swift_beginAccess();
  v15 = *(v6 + 96);
  *(v6 + 96) = a2;

  *(v6 + 24) = a3;
  *(v6 + 32) = a5;
  *(v6 + 80) = a6;
  *(v6 + 88) = a4;
  return v6;
}

id LayoutAttributedTextViewPlaceholder.attributedText.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void LayoutAttributedTextViewPlaceholder.attributedText.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t LayoutAttributedTextViewPlaceholder.textAlignment.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t LayoutAttributedTextViewPlaceholder.lineSpacing.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

void LayoutAttributedTextViewPlaceholder.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  swift_beginAccess();
  v7 = v3[2];
  swift_beginAccess();
  v8 = v3[12];
  if (v8)
  {
    v33 = a1;
    swift_beginAccess();
    v9 = v3[3];
    swift_beginAccess();
    v10 = v3[11];
    swift_beginAccess();
    v11 = v3[4];
    swift_beginAccess();
    v12 = v3[10];
    v13 = *MEMORY[0x1E69DB648];
    v36 = sub_1BAD053C8(0, &qword_1EDBA58E0);
    *&aBlock = v8;
    sub_1BAD11FA4(&aBlock, v40);
    v14 = v8;
    v15 = v7;
    v16 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v16;
    sub_1BAD13C60(v40, v13, isUniquelyReferenced_nonNull_native);
    v18 = v39;
    v19 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
    [v19 setAlignment_];
    [v19 setLineBreakMode_];
    [v19 setLineBreakStrategy_];
    if (v11)
    {
      [v19 setMinimumLineHeight_];
      [v19 setMaximumLineHeight_];
    }

    v20 = *MEMORY[0x1E69DB688];
    v36 = sub_1BAD053C8(0, &qword_1EDBA5BB8);
    *&aBlock = v19;
    sub_1BAD11FA4(&aBlock, v40);
    v21 = v19;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v18;
    sub_1BAD13C60(v40, v20, v22);
    v23 = [v15 string];
    if (!v23)
    {
      sub_1BAD9CF68();
      v23 = sub_1BAD9CF38();
    }

    v24 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    type metadata accessor for Key(0);
    sub_1BAD30308();
    v25 = sub_1BAD9CE88();

    v26 = [v24 initWithString:v23 attributes:v25];

    v27 = [v15 length];
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1BAD13DA0;
    *(v29 + 24) = v28;
    v37 = sub_1BAD30360;
    v38 = v29;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v35 = sub_1BAD12750;
    v36 = &block_descriptor_3;
    v30 = _Block_copy(&aBlock);
    v31 = v26;

    [v15 enumerateAttributesInRange:0 options:v27 usingBlock:{0, v30}];
    _Block_release(v30);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      v32 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];

      *&aBlock = v32;
      *(&aBlock + 1) = v12;
      LOBYTE(v35) = 0;
      TextMeasurable.measurements(fitting:in:)(v33, a2, a3);

      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t LayoutAttributedTextViewPlaceholder.description.getter()
{
  v1 = v0;
  sub_1BAD9D7E8();
  v2 = sub_1BAD9DC88();

  v14 = v2;
  MEMORY[0x1BFB026B0](0x203A7478657428, 0xE700000000000000);
  swift_beginAccess();
  v3 = [*(v0 + 16) string];
  v4 = sub_1BAD9CF68();
  v6 = v5;

  MEMORY[0x1BFB026B0](v4, v6);

  MEMORY[0x1BFB026B0](0x203A746E6F66202CLL, 0xE800000000000000);
  result = swift_beginAccess();
  v8 = *(v1 + 96);
  if (v8)
  {
    v9 = v8;
    v10 = [v9 description];
    v11 = sub_1BAD9CF68();
    v13 = v12;

    MEMORY[0x1BFB026B0](v11, v13);

    MEMORY[0x1BFB026B0](41, 0xE100000000000000);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL LayoutAttributedTextViewPlaceholder.hasContent.getter()
{
  swift_beginAccess();
  v1 = [*(v0 + 16) string];
  v2 = sub_1BAD9CF68();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v5 != 0;
}

uint64_t LayoutAttributedTextViewPlaceholder.frame.setter(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return result;
}

uint64_t LayoutAttributedTextViewPlaceholder.isHidden.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t LayoutAttributedTextViewPlaceholder.numberOfLines.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t LayoutAttributedTextViewPlaceholder.lineBreakMode.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

void *LayoutAttributedTextViewPlaceholder.font.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

void LayoutAttributedTextViewPlaceholder.font.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

BOOL LayoutAttributedTextViewPlaceholder.isTextExtraTall.getter()
{
  swift_beginAccess();
  v1 = [*(v0 + 16) string];
  sub_1BAD9CF68();

  if (qword_1EDBA61E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAD9C248();
  __swift_project_value_buffer(v2, qword_1EDBA61F0);
  sub_1BAD13DE8();
  sub_1BAD9D5F8();
  v4 = v3;

  return (v4 & 1) == 0;
}

void LayoutAttributedTextViewPlaceholder.languageAwareOutsets.getter()
{
  swift_beginAccess();
  v1 = [*(v0 + 16) string];
  sub_1BAD9CF68();
  swift_beginAccess();
  v2 = *(v0 + 96);
  if (v2)
  {
    v3 = v2;

    if (qword_1EDBA61E8 != -1)
    {
      swift_once();
    }

    v4 = sub_1BAD9C248();
    __swift_project_value_buffer(v4, qword_1EDBA61F0);
    sub_1BAD13DE8();
    sub_1BAD9D5F8();
    v6 = v5;

    if ((v6 & 1) == 0)
    {
      UIFont.languageAwareOutsets.getter();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t LayoutAttributedTextViewPlaceholder.textLength.getter()
{
  swift_beginAccess();
  v1 = [*(v0 + 16) string];
  sub_1BAD9CF68();

  v2 = sub_1BAD9D028();

  return v2;
}

uint64_t LayoutAttributedTextViewPlaceholder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BAD2FC80()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 80);
}

uint64_t sub_1BAD2FCC0(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 80) = a1;
  return result;
}

uint64_t sub_1BAD2FD58()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 88);
}

uint64_t sub_1BAD2FD98(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 88) = a1;
  return result;
}

void *sub_1BAD2FE30()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 96);
  v3 = v2;
  return v2;
}

void sub_1BAD2FE78(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  *(v3 + 96) = a1;
}

BOOL sub_1BAD2FF18()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = [*(v1 + 16) string];
  sub_1BAD9CF68();

  if (qword_1EDBA61E8 != -1)
  {
    swift_once();
  }

  v3 = sub_1BAD9C248();
  __swift_project_value_buffer(v3, qword_1EDBA61F0);
  sub_1BAD13DE8();
  sub_1BAD9D5F8();
  v5 = v4;

  return (v5 & 1) == 0;
}

uint64_t sub_1BAD30038()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = [*(v1 + 16) string];
  sub_1BAD9CF68();

  v3 = sub_1BAD9D028();

  return v3;
}

uint64_t sub_1BAD300E8(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  result = swift_beginAccess();
  v9[5] = a1;
  v9[6] = a2;
  v9[7] = a3;
  v9[8] = a4;
  return result;
}

uint64_t sub_1BAD301A0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 72);
}

uint64_t sub_1BAD301E0(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 72) = a1;
  return result;
}

double sub_1BAD302A0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 40);
}

unint64_t sub_1BAD30308()
{
  result = qword_1EDBA5D40;
  if (!qword_1EDBA5D40)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA5D40);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

UIEdgeInsets __swiftcall CGFloat.languageAwareOutsets(compatibleWith:)(UITraitCollection compatibleWith)
{
  v1 = *MEMORY[0x1E69DDCE0];
  v2 = *(MEMORY[0x1E69DDCE0] + 8);
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  v4 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v4;
  result.bottom = v3;
  result.left = v2;
  result.top = v1;
  return result;
}

UIEdgeInsets __swiftcall Float.languageAwareOutsets(compatibleWith:)(UITraitCollection compatibleWith)
{
  v1 = *MEMORY[0x1E69DDCE0];
  v2 = *(MEMORY[0x1E69DDCE0] + 8);
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  v4 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v4;
  result.bottom = v3;
  result.left = v2;
  result.top = v1;
  return result;
}

float64x2_t Baselines.toNearestPixel.getter@<Q0>(float64x2_t *a1@<X8>)
{
  result = vrndmq_f64(*v1);
  *a1 = result;
  return result;
}

float64x2_t LayoutRect.toNearestPixel.getter@<Q0>(float64x2_t *a1@<X8>)
{
  v2 = vrndpq_f64(v1[1]);
  *a1 = vrndmq_f64(*v1);
  a1[1] = v2;
  result = vrndmq_f64(v1[2]);
  a1[2] = result;
  return result;
}

double ZStack.EdgePosition.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BAD30518(a1, &v6);
  v4 = v7;
  sub_1BAD30574(a1);
  if (v4)
  {
    sub_1BAD0B40C(&v6, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double ZStack.EdgePosition.base.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1BAD30620(v1, &v4);
  if (v5)
  {
    sub_1BAD0B40C(&v4, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double ZStack.Properties.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t ZStack.Properties.init(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  a2[5] = 0u;
  v4 = (a2 + 5);
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  sub_1BAD30518(a1, v13);
  sub_1BAD30518(v13, &v14);
  v5 = *(&v15 + 1);
  sub_1BAD30574(v13);
  if (v5)
  {
    sub_1BAD0B40C(&v14, &v10);
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_1BAD30854(&v14, a2);
  sub_1BAD30518(a1 + 40, v13);
  sub_1BAD30518(v13, &v14);
  v6 = *(&v15 + 1);
  sub_1BAD30574(v13);
  if (v6)
  {
    sub_1BAD0B40C(&v14, &v10);
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_1BAD30854(&v14, a2 + 40);
  sub_1BAD30518(a1 + 80, v13);
  sub_1BAD30518(v13, &v14);
  v7 = *(&v15 + 1);
  sub_1BAD30574(v13);
  if (v7)
  {
    sub_1BAD0B40C(&v14, &v10);
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_1BAD30854(&v14, v4);
  sub_1BAD30518(a1 + 120, v13);
  sub_1BAD30518(v13, &v14);
  v8 = *(&v15 + 1);
  sub_1BAD30574(v13);
  if (v8)
  {
    sub_1BAD0B40C(&v14, &v10);
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_1BAD30854(&v14, a2 + 120);
  return sub_1BAD308A4(a1);
}

uint64_t ZStack.Properties.base.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 80) = 0u;
  v3 = a1 + 80;
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_1BAD30620(v1, v14);
  sub_1BAD30620(v14, &v9);
  v4 = v10;
  sub_1BAD30B3C(v14);
  if (v4)
  {
    sub_1BAD0B40C(&v9, &v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  sub_1BAD30B6C(&v11, a1);
  sub_1BAD30620(v1 + 40, v14);
  sub_1BAD30620(v14, &v9);
  v5 = v10;
  sub_1BAD30B3C(v14);
  if (v5)
  {
    sub_1BAD0B40C(&v9, &v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  sub_1BAD30B6C(&v11, a1 + 40);
  sub_1BAD30620(v1 + 80, v14);
  sub_1BAD30620(v14, &v9);
  v6 = v10;
  sub_1BAD30B3C(v14);
  if (v6)
  {
    sub_1BAD0B40C(&v9, &v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  sub_1BAD30B6C(&v11, v3);
  sub_1BAD30620(v1 + 120, v14);
  sub_1BAD30620(v14, &v9);
  v7 = v10;
  sub_1BAD30B3C(v14);
  if (v7)
  {
    sub_1BAD0B40C(&v9, &v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  return sub_1BAD30B6C(&v11, a1 + 120);
}

double ZStack.Placements.measure.getter()
{
  v1 = v0[5];
  v10 = v0[4];
  v11 = v1;
  v12 = *(v0 + 96);
  v2 = v0[1];
  v6 = *v0;
  v7 = v2;
  v3 = v0[3];
  v8 = v0[2];
  v9 = v3;
  DisjointStack.Placements.union.getter(v5);
  return ceil(v5[2]);
}

__n128 sub_1BAD30CD0@<Q0>(uint64_t a1@<X8>)
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

uint64_t sub_1BAD30CF4()
{
  v1 = *(v0 + 80);
  v7[4] = *(v0 + 64);
  v7[5] = v1;
  v8 = *(v0 + 96);
  v2 = *(v0 + 16);
  v7[0] = *v0;
  v7[1] = v2;
  v3 = *(v0 + 48);
  v7[2] = *(v0 + 32);
  v7[3] = v3;
  sub_1BAD83C68(v7);
  v5 = v4;
  sub_1BAD31ACC(v7);
  return v5;
}

uint64_t sub_1BAD30D9C(uint64_t a1, void (*a2)(_OWORD *))
{
  v4 = *(a1 + 144);
  v10[8] = *(a1 + 128);
  v10[9] = v4;
  v11 = *(a1 + 160);
  v5 = *(a1 + 80);
  v10[4] = *(a1 + 64);
  v10[5] = v5;
  v6 = *(a1 + 112);
  v10[6] = *(a1 + 96);
  v10[7] = v6;
  v7 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  v8 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v8;
  ZStack.Properties.init(_:)(v10, v12);
  a2(v12);
  ZStack.Properties.base.getter(a1);
  return sub_1BAD31AFC(v12);
}

__n128 ZStack.init(with:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = sub_1BAD3157C;
  }

  else
  {
    v7 = 0;
  }

  v14 = 0;
  memset(v13, 0, sizeof(v13));
  if (a1)
  {
    v7(v13);
  }

  sub_1BAD31520(v13, v15);
  sub_1BAD17DC0(v7);
  sub_1BAD308A4(v13);
  *(&v16 + 1) = MEMORY[0x1E69E7CC0];
  v8 = v15[9];
  *(a3 + 128) = v15[8];
  *(a3 + 144) = v8;
  *(a3 + 160) = v16;
  v9 = v15[5];
  *(a3 + 64) = v15[4];
  *(a3 + 80) = v9;
  v10 = v15[7];
  *(a3 + 96) = v15[6];
  *(a3 + 112) = v10;
  v11 = v15[1];
  *a3 = v15[0];
  *(a3 + 16) = v11;
  result = v15[3];
  *(a3 + 32) = v15[2];
  *(a3 + 48) = result;
  return result;
}

__n128 ZStack.add(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    sub_1BAD31520(v3, v25);
    sub_1BAD31584(a2);
    sub_1BAD30D9C(v25, *(v7 + 16));
    v8 = sub_1BAD31B2C;
  }

  else
  {
    sub_1BAD31520(v3, v25);
    sub_1BAD31584(0);
    v8 = 0;
  }

  sub_1BAD14A3C(a1, v22);
  sub_1BAD31520(v25, v23 + 8);
  v9 = *(v3 + 168);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1BAD1850C(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1BAD1850C((v10 > 1), v11 + 1, 1, v9);
  }

  sub_1BAD17DC0(v8);
  sub_1BAD308A4(v25);
  v9[2] = v11 + 1;
  v12 = &v9[26 * v11];
  *(v12 + 2) = v22[0];
  v13 = v23[2];
  v15 = v22[1];
  v14 = v23[0];
  *(v12 + 5) = v23[1];
  *(v12 + 6) = v13;
  *(v12 + 3) = v15;
  *(v12 + 4) = v14;
  v16 = v23[6];
  v18 = v23[3];
  v17 = v23[4];
  *(v12 + 9) = v23[5];
  *(v12 + 10) = v16;
  *(v12 + 7) = v18;
  *(v12 + 8) = v17;
  v20 = v23[8];
  result = v24[0];
  v21 = v23[7];
  *(v12 + 218) = *(v24 + 10);
  *(v12 + 12) = v20;
  *(v12 + 13) = result;
  *(v12 + 11) = v21;
  *(v3 + 168) = v9;
  return result;
}

double ZStack.adding(_:with:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1BAD31594(v4, a4);
  *&result = ZStack.add(_:with:)(a1, a2, a3).n128_u64[0];
  return result;
}

uint64_t ZStack.insert(_:at:with:)(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    sub_1BAD31520(v4, v17);
    sub_1BAD31584(a3);
    sub_1BAD30D9C(v17, *(v9 + 16));
    v10 = sub_1BAD31B2C;
  }

  else
  {
    sub_1BAD31520(v4, v17);
    sub_1BAD31584(0);
    v10 = 0;
  }

  sub_1BAD14A3C(a1, v14);
  result = sub_1BAD31520(v17, v15 + 8);
  if (*(*(v4 + 168) + 16) < a2)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    v12[10] = v15[8];
    v13[0] = v16[0];
    *(v13 + 10) = *(v16 + 10);
    v12[6] = v15[4];
    v12[7] = v15[5];
    v12[8] = v15[6];
    v12[9] = v15[7];
    v12[2] = v15[0];
    v12[3] = v15[1];
    v12[4] = v15[2];
    v12[5] = v15[3];
    v12[0] = v14[0];
    v12[1] = v14[1];
    sub_1BAD1984C(a2, a2, v12);
    sub_1BAD17DC0(v10);
    return sub_1BAD308A4(v17);
  }

  __break(1u);
  return result;
}

void __swiftcall ZStack.layout(relativeTo:with:)(JetUI::ZStack::Placements *__return_ptr retstr, __C::CGRect relativeTo, UITraitCollection with)
{
  height = relativeTo.size.height;
  width = relativeTo.size.width;
  y = relativeTo.origin.y;
  x = relativeTo.origin.x;
  v9 = *(v3 + 168);
  v10 = v9[2];
  v11 = with.super.isa;

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A7F0);
    v12 = sub_1BAD9D1D8();
    v12[2] = v10;
    v13 = 4;
    do
    {
      v14 = &v12[v13];
      *v14 = 0uLL;
      *(v14 + 1) = 0uLL;
      *(v14 + 32) = 1;
      v13 += 5;
      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  retstr->base.boundingRect.origin.x = x;
  retstr->base.boundingRect.origin.y = y;
  retstr->base.boundingRect.size.width = width;
  retstr->base.boundingRect.size.height = height;
  retstr->base.traits.super.isa = v11;
  retstr->base.children._rawValue = v9;
  retstr->base.measurements._rawValue = v12;
  *&retstr->base.walkingChildIndex = 0u;
  *&retstr->base.$__lazy_storage_$_contentBoundingRect.value.origin.y = 0u;
  retstr->base.$__lazy_storage_$_contentBoundingRect.value.size.height = 0.0;
  retstr->base.$__lazy_storage_$_contentBoundingRect.is_nil = 1;
}

double sub_1BAD313EC@<D0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = *(v6 + 168);
  memset(v17, 0, sizeof(v17));
  v18 = 1;
  v13 = *(v12 + 16);
  v14 = a1;

  v15 = sub_1BAD3149C(v17, v13);
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = v14;
  *(a2 + 40) = v12;
  *(a2 + 48) = v15;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  return result;
}

uint64_t sub_1BAD3149C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    if (a2)
    {
      v3 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A7F0);
      result = sub_1BAD9D1D8();
      *(result + 16) = v2;
      v4 = 32;
      do
      {
        v5 = result + v4;
        v6 = *(v3 + 16);
        *v5 = *v3;
        *(v5 + 16) = v6;
        *(v5 + 32) = *(v3 + 32);
        v4 += 40;
        --v2;
      }

      while (v2);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1BAD31584(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1BAD315CC(uint64_t a1)
{
  result = sub_1BAD315F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BAD315F4()
{
  result = qword_1EBC2A7F8;
  if (!qword_1EBC2A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A7F8);
  }

  return result;
}

unint64_t sub_1BAD3164C()
{
  result = qword_1EBC2A800;
  if (!qword_1EBC2A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A800);
  }

  return result;
}

unint64_t sub_1BAD316A4()
{
  result = qword_1EBC2A808;
  if (!qword_1EBC2A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A808);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5JetUI13DisjointStackV12EdgePositionO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
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
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1BAD31744(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 168);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD3178C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BAD3181C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1BAD3186C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1BAD318C8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
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

uint64_t sub_1BAD31930(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1BAD3198C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1BAD31A18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD31A60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id DynamicLabel.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DynamicLabel.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC5JetUI12DynamicLabel_customTextStyle];
  v10 = type metadata accessor for DynamicLabel();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v13.receiver = v4;
  v13.super_class = v10;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 setAdjustsFontForContentSizeCategory_];
  return v11;
}

id DynamicLabel.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DynamicLabel.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC5JetUI12DynamicLabel_customTextStyle;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_1BAD9D8B8();
  __break(1u);
}

void *DynamicLabel.__allocating_init(with:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) initWithFrame_];
  sub_1BAD31ED4(a1, v7);
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x78);
  v5 = v3;
  v4(v7);

  sub_1BAD31F30(a1);
  return v5;
}

uint64_t sub_1BAD31F84@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5JetUI12DynamicLabel_customTextStyle;
  swift_beginAccess();
  return sub_1BAD31FDC(v1 + v3, a1);
}

uint64_t sub_1BAD31FDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A818);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAD3204C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5JetUI12DynamicLabel_customTextStyle;
  swift_beginAccess();
  sub_1BAD320B8(a1, v1 + v3);
  swift_endAccess();
  sub_1BAD32854();
  return sub_1BAD32128(a1);
}

uint64_t sub_1BAD320B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A818);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAD32128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_1BAD32190(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BAD321F4;
}

uint64_t sub_1BAD321F4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BAD32854();
  }

  return result;
}

id sub_1BAD32280()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DynamicLabel();
  v1 = objc_msgSendSuper2(&v3, sel_font);

  return v1;
}

void sub_1BAD32378(void *a1)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))(v4);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DynamicLabel();
  objc_msgSendSuper2(&v3, sel_setFont_, a1);
}

id sub_1BAD32404@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x1E69DDCF8];
  a1[3] = &type metadata for FontSource;
  a1[4] = &protocol witness table for FontSource;
  v4 = swift_allocObject();
  *a1 = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(&v6, v3);
  if (v7)
  {
    sub_1BAD0B40C(&v6, &v8);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1BAD0B40C(&v8, a1);
    a1[5] = [v1 textAlignment];
    a1[6] = [v1 lineBreakMode];
    a1[7] = [v1 numberOfLines];
    result = [v1 lineSpacing];
    a1[8] = result;
    return result;
  }

  sub_1BAD32128(&v6);
  result = [v1 font];
  if (result)
  {
    v9 = &type metadata for DynamicLabel.StubTextStyle;
    v10 = &off_1F38E8948;
    *&v8 = result;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1BAD32580(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 < 0)
  {
    sub_1BAD11750(a1, a2, a3, a4, a5, a6 & 0x7F);
  }

  else
  {
  }
}

uint64_t sub_1BAD32590(void *a1)
{
  sub_1BAD14A3C(a1, v4);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))(v4);
  [v1 setTextAlignment_];
  [v1 setLineBreakMode_];
  [v1 setNumberOfLines_];
  [v1 setLineSpacing_];
  return sub_1BAD31F30(a1);
}

void (*sub_1BAD32650(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC0uLL);
  }

  *a1 = v3;
  v3[23] = v1;
  sub_1BAD32404(v3);
  return sub_1BAD326C8;
}

void sub_1BAD326C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 184);
  if (a2)
  {
    sub_1BAD31ED4(*a1, (v2 + 9));
    sub_1BAD14A3C((v2 + 9), (v2 + 18));
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x60))(v2 + 18);
    [v3 setTextAlignment_];
    [v3 setLineBreakMode_];
    [v3 setNumberOfLines_];
    [v3 setLineSpacing_];
    sub_1BAD31F30((v2 + 9));
  }

  else
  {
    sub_1BAD14A3C(*a1, (v2 + 9));
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x60))(v2 + 9);
    [v3 setTextAlignment_];
    [v3 setLineBreakMode_];
    [v3 setNumberOfLines_];
    [v3 setLineSpacing_];
  }

  sub_1BAD31F30(v2);

  free(v2);
}

uint64_t sub_1BAD32854()
{
  v1 = v0;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(&v7);
  if (!v8)
  {
    return sub_1BAD32128(&v7);
  }

  sub_1BAD0B40C(&v7, v9);
  v2 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v3 = [v0 traitCollection];
  v4 = (*(v2 + 8))();

  v6.receiver = v1;
  v6.super_class = type metadata accessor for DynamicLabel();
  objc_msgSendSuper2(&v6, sel_setFont_, v4);

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

void sub_1BAD32960(id a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DynamicLabel();
  objc_msgSendSuper2(&v11, sel_traitCollectionDidChange_, a1);
  if ([v1 adjustsFontForContentSizeCategory])
  {
    if (a1)
    {
      a1 = [a1 preferredContentSizeCategory];
    }

    v3 = [v1 traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    if (!a1)
    {
      goto LABEL_10;
    }

    v5 = sub_1BAD9CF68();
    v7 = v6;
    if (v5 == sub_1BAD9CF68() && v7 == v8)
    {

      goto LABEL_12;
    }

    v10 = sub_1BAD9DA98();

    if ((v10 & 1) == 0)
    {
LABEL_10:
      sub_1BAD32850();
    }

LABEL_12:
  }
}

id DynamicLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t VerticalStackLayout.init(alignment:spacing:children:)@<X0>(_BYTE *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2A180);
  v7 = swift_allocObject();
  result = sub_1BAD0B40C(a2, v7 + 16);
  *(a4 + 8) = v7;
  *(a4 + 16) = a3;
  return result;
}

uint64_t VerticalStackLayout.spacing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 16, a1);
}

uint64_t sub_1BAD32DA8(uint64_t a1, uint64_t a2)
{
  sub_1BAD14A3C(a1, v6);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v3 = *(a2 + 8);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1(v3 + 16);
    sub_1BAD0B40C(v6, v3 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2A180);
    v5 = swift_allocObject();
    sub_1BAD0B40C(v6, v5 + 16);

    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t VerticalStackLayout.spacing.setter(__int128 *a1)
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v3 = *(v1 + 8);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1(v3 + 16);
    sub_1BAD0B40C(a1, v3 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2A180);
    v5 = swift_allocObject();
    sub_1BAD0B40C(a1, v5 + 16);

    *(v1 + 8) = v5;
  }

  return result;
}

void (*VerticalStackLayout.spacing.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  v5 = *(v1 + 8);
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 16, v4);
  return sub_1BAD32F9C;
}

void sub_1BAD32F9C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1BAD14A3C(*a1, v2 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v2 + 128);
    if (isUniquelyReferenced_nonNull_native)
    {
      v5 = *(v4 + 8);
      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_1(v5 + 16);
      sub_1BAD0B40C((v2 + 40), v5 + 16);
      swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2A180);
      v9 = swift_allocObject();
      sub_1BAD0B40C((v2 + 40), v9 + 16);

      *(v4 + 8) = v9;
    }

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v2 + 128);
    if (v6)
    {
      v8 = *(v7 + 8);
      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_1(v8 + 16);
      sub_1BAD0B40C(v2, v8 + 16);
      swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2A180);
      v10 = swift_allocObject();
      sub_1BAD0B40C(v2, v10 + 16);

      *(v7 + 8) = v10;
    }
  }

  free(v2);
}

uint64_t static VerticalStackLayout.Child.make(forView:space:spaceMultiplier:alignment:excludeWhen:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v9 = *a3;
  v10 = *a4;
  sub_1BAD14A3C(a1, a5);
  result = sub_1BAD14A3C(a2, a5 + 40);
  *(a5 + 80) = a6;
  *(a5 + 96) = v9;
  *(a5 + 88) = v10;
  return result;
}

void *static VerticalStackLayout.Child.make(forView:withMeasurementsFitting:in:alignment:excludeWhen:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v12 = *a3;
  v13 = *a4;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(*(v15 + 8) + 8))(a2, v14, a6, a7);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  result = LayoutView.withMeasurements(_:)(v23, v24, a5, v16, v18, v20, v22);
  *(a5 + 64) = MEMORY[0x1E69E7DE0];
  *(a5 + 72) = &protocol witness table for CGFloat;
  *(a5 + 40) = v18;
  *(a5 + 96) = v12;
  *(a5 + 80) = 0x3FF0000000000000;
  *(a5 + 88) = v13;
  return result;
}

__n128 VerticalStackLayout.addChild(_:)(uint64_t a1)
{
  sub_1BAD1A35C(a1, v11);
  v2 = *(v1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BAD18658(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1BAD18658((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[104 * v4];
  v6 = v11[0];
  v7 = v11[2];
  *(v5 + 3) = v11[1];
  *(v5 + 4) = v7;
  *(v5 + 2) = v6;
  result = v11[3];
  v9 = v11[4];
  v10 = v11[5];
  v5[128] = v12;
  *(v5 + 6) = v9;
  *(v5 + 7) = v10;
  *(v5 + 5) = result;
  *(v1 + 16) = v2;
  return result;
}

unint64_t VerticalStackLayout.insertChild(_:at:)(unint64_t result, int64_t a2)
{
  if (*(*(v2 + 16) + 16) < a2)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    sub_1BAD1A35C(result, v4);
    return sub_1BAD19920(a2, a2, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAD334A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BAD93330(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 104 * a1;
    v9 = *(v8 + 112);
    v10 = v7 - 1;
    *(a2 + 64) = *(v8 + 96);
    *(a2 + 80) = v9;
    *(a2 + 96) = *(v8 + 128);
    v11 = *(v8 + 48);
    *a2 = *(v8 + 32);
    *(a2 + 16) = v11;
    v12 = *(v8 + 80);
    *(a2 + 32) = *(v8 + 64);
    *(a2 + 48) = v12;
    result = memmove((v8 + 32), (v8 + 136), 104 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BAD33550@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BAD93344(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    sub_1BAD0B40C(v9 + 2, a2);
    result = memmove(v9 + 2, v9 + 72, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BAD335EC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BAD9336C(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1BAD33678@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BAD93380(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 136 * a1;
    v9 = *(v8 + 144);
    v10 = v7 - 1;
    *(a2 + 96) = *(v8 + 128);
    *(a2 + 112) = v9;
    *(a2 + 128) = *(v8 + 160);
    v11 = *(v8 + 80);
    *(a2 + 32) = *(v8 + 64);
    *(a2 + 48) = v11;
    v12 = *(v8 + 112);
    *(a2 + 64) = *(v8 + 96);
    *(a2 + 80) = v12;
    v13 = *(v8 + 48);
    *a2 = *(v8 + 32);
    *(a2 + 16) = v13;
    result = memmove((v8 + 32), (v8 + 168), 136 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t VerticalStackLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v7 = sub_1BAD9DA68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = *(v3 + 1);
  v13 = *(v3 + 2);
  swift_beginAccess();
  sub_1BAD14A3C(v12 + 16, v74);
  v14 = v75;
  v15 = v76;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  sub_1BAD6EE7C(v10);
  v73 = a1;
  AnyDimension.value(in:rounded:)(a1, v10, v14, v15);
  v17 = v16;
  v18 = *(v8 + 8);
  v72 = v7;
  v71 = v8 + 8;
  v70 = v18;
  v18(v10, v7);
  result = __swift_destroy_boxed_opaque_existential_1(v74);
  v20 = *(v13 + 16);
  if (v11 != 3)
  {
    v21 = 0;
    if (!v20)
    {
      goto LABEL_39;
    }

    v50 = 0;
    v51 = 0;
    v67 = v20 - 1;
    v52 = v13 + 32;
    v53 = 0.0;
    v66 = v13 + 32;
    while (1)
    {
      v69 = v50;
      v54 = v52 + 104 * v51;
      while (1)
      {
        if (v51 >= *(v13 + 16))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          return result;
        }

        result = sub_1BAD1A35C(v54, v74);
        v55 = v81;
        if (v81 & 2) == 0 || (v56 = v75, v57 = v76, __swift_project_boxed_opaque_existential_1(v74, v75), result = (*(v57 + 64))(v56, v57), (result))
        {
          if ((v55 & 1) == 0)
          {
            break;
          }

          v58 = v75;
          v59 = v76;
          __swift_project_boxed_opaque_existential_1(v74, v75);
          result = (*(v59 + 40))(v58, v59);
          if ((result & 1) == 0)
          {
            break;
          }
        }

        ++v51;
        result = sub_1BAD34A5C(v74);
        v54 += 104;
        if (v20 == v51)
        {
          goto LABEL_39;
        }
      }

      v34 = __OFADD__(v21++, 1);
      if (v34)
      {
        goto LABEL_44;
      }

      v60 = v78;
      v61 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      sub_1BAD6EE7C(v10);
      AnyDimension.value(in:rounded:)(v73, v10, v60, v61);
      v63 = v62;
      v70(v10, v72);
      v53 = v53 + v63 * v80;
      result = sub_1BAD34A5C(v74);
      v50 = 1;
      v64 = v67 == v51++;
      v52 = v66;
      if (v64)
      {
        goto LABEL_39;
      }
    }
  }

  v21 = 0;
  if (!v20)
  {
    return result;
  }

  v22 = 0;
  v23 = 0;
  v67 = v20 - 1;
  v24 = v13 + 32;
  v25 = 0.0;
  v26 = a2;
  v68 = a2;
  v66 = v13 + 32;
  do
  {
    v69 = v22;
    v27 = v24 + 104 * v23;
    v28 = v23;
    while (1)
    {
      if (v28 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      result = sub_1BAD1A35C(v27, v74);
      v29 = v81;
      if (v81 & 2) == 0 || (v30 = v75, v31 = v76, __swift_project_boxed_opaque_existential_1(v74, v75), result = (*(v31 + 64))(v30, v31), (result))
      {
        if ((v29 & 1) == 0)
        {
          break;
        }

        v32 = v75;
        v33 = v76;
        __swift_project_boxed_opaque_existential_1(v74, v75);
        result = (*(v33 + 40))(v32, v33);
        if ((result & 1) == 0)
        {
          break;
        }
      }

      ++v28;
      result = sub_1BAD34A5C(v74);
      v27 += 104;
      if (v20 == v28)
      {
        goto LABEL_35;
      }
    }

    v34 = __OFADD__(v21++, 1);
    if (v34)
    {
      goto LABEL_45;
    }

    v35 = v17;
    v37 = v75;
    v36 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    v38 = *(*(v36 + 8) + 8);
    v39 = a2;
    v40 = a3;
    v41 = v73;
    v42 = v38(v73, v37, v39, a3);
    v44 = v43;
    v45 = v78;
    v46 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    sub_1BAD6EE7C(v10);
    AnyDimension.value(in:rounded:)(v41, v10, v45, v46);
    v48 = v47;
    v70(v10, v72);
    v49 = v48 * v80;
    if (v69)
    {
      if (v42 > v26)
      {
        v26 = v42;
      }

      v17 = v35;
      v24 = v66;
    }

    else
    {
      v17 = v35;
      v24 = v66;
      if (v42 > v26)
      {
        goto LABEL_18;
      }
    }

    v42 = v26;
LABEL_18:
    v23 = v28 + 1;
    if (v49 >= v44)
    {
      v49 = v44;
    }

    v25 = v25 + v49;
    result = sub_1BAD34A5C(v74);
    v22 = 1;
    v26 = v42;
    a3 = v40;
    a2 = v68;
  }

  while (v67 != v28);
LABEL_35:
  if (!__OFSUB__(v21, 1))
  {
    return result;
  }

  __break(1u);
LABEL_39:
  if (__OFSUB__(v21, 1))
  {
    goto LABEL_43;
  }

  return result;
}

uint64_t VerticalStackLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, double *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v134 = a2;
  v12 = sub_1BAD9DA68();
  v13 = *(v12 - 8);
  v14 = (MEMORY[0x1EEE9AC00])(v12);
  v121 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (MEMORY[0x1EEE9AC00])(v14);
  v123 = &v111 - v17;
  v18 = (MEMORY[0x1EEE9AC00])(v16);
  v131 = &v111 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v111 - v20;
  v126 = *v6;
  v22 = *(v6 + 1);
  v23 = *(v6 + 2);
  v155.origin.x = a3;
  v155.origin.y = a4;
  v141 = a5;
  v155.size.width = a5;
  v142 = a6;
  v155.size.height = a6;
  MinY = CGRectGetMinY(v155);
  swift_beginAccess();
  sub_1BAD14A3C(v22 + 16, &v146);
  v25 = v147;
  v26 = v148;
  __swift_project_boxed_opaque_existential_1(&v146, v147);
  sub_1BAD6EE7C(v21);
  v137 = a1;
  AnyDimension.value(in:rounded:)(a1, v21, v25, v26);
  v138 = v27;
  v28 = *(v13 + 8);
  v132 = v12;
  v140 = v13 + 8;
  v139 = v28;
  v28(v21, v12);
  result = __swift_destroy_boxed_opaque_existential_1(&v146);
  v30 = *(v23 + 16);
  if (!v30)
  {
    v31 = 0;
    v143 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    goto LABEL_65;
  }

  v31 = 0;
  v133 = 0;
  v129 = 0;
  v32 = 0;
  v117 = *MEMORY[0x1E69E7040];
  v124 = (v13 + 104);
  v114 = *MEMORY[0x1E69E7048];
  v128 = v30 - 1;
  v143 = 0.0;
  v33 = v23 + 32;
  v34 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
  v127 = v23 + 32;
  while (2)
  {
    v37 = v33 + 104 * v32;
    v38 = v32;
    while (1)
    {
      if (v38 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_68;
      }

      result = sub_1BAD1A35C(v37, &v146);
      v39 = v153;
      if (v153 & 2) == 0 || (v40 = v147, v41 = v148, __swift_project_boxed_opaque_existential_1(&v146, v147), result = (*(v41 + 64))(v40, v41), (result))
      {
        if ((v39 & 1) == 0)
        {
          break;
        }

        v42 = v147;
        v43 = v148;
        __swift_project_boxed_opaque_existential_1(&v146, v147);
        result = (*(v43 + 40))(v42, v43);
        if ((result & 1) == 0)
        {
          break;
        }
      }

      ++v38;
      result = sub_1BAD34A5C(&v146);
      v37 += 104;
      if (v30 == v38)
      {
        goto LABEL_65;
      }
    }

    if (__OFADD__(v31++, 1))
    {
      goto LABEL_69;
    }

    v135 = v34;
    v130 = v35;
    v45 = MinY;
    v46 = v150;
    v47 = v151;
    __swift_project_boxed_opaque_existential_1(&v149, v150);
    sub_1BAD6EE7C(v21);
    v48 = v137;
    AnyDimension.value(in:rounded:)(v137, v21, v46, v47);
    v50 = v49;
    v51 = v132;
    v139(v21, v132);
    v52 = v152;
    v136 = v50 * v152;
    v53 = v147;
    v54 = v148;
    __swift_project_boxed_opaque_existential_1(&v146, v147);
    v55 = (*(*(v54 + 8) + 8))(v48, v53, v141, v142);
    v122 = v56;
    v143 = v57;
    v59 = v58;
    v60 = fabs(v58);
    if (fabs(v55) >= COERCE_DOUBLE(1) && v60 >= COERCE_DOUBLE(1))
    {
      v64 = *v124;
      (*v124)(v131, v117, v51);
      v65 = [v48 traitCollection];
      [v65 displayScale];
      if (v66 <= 0.0)
      {
        v66 = ForJetUIOnly_MainScreenScale();
      }

      v67 = v131;
      v125 = sub_1BAD794F8(v131, v66, v55);

      v139(v67, v51);
      if (v154)
      {
        v68 = v59;
        v69 = a3;
        v70 = a4;
        if (v154 == 1)
        {
          v71 = v141;
          v72 = v142;
          MidX = CGRectGetMidX(*&v69);
          v64(v123, v114, v51);
          v74 = [v48 traitCollection];
          [v74 displayScale];
          if (v75 <= 0.0)
          {
            v75 = ForJetUIOnly_MainScreenScale();
          }

          v76 = v123;
          MinX = sub_1BAD794F8(v123, v75, MidX + v125 * -0.5);

          v139(v76, v51);
        }

        else
        {
          v82 = v141;
          v83 = v142;
          MinX = CGRectGetMaxX(*&v69) - v125;
        }

        v77 = v126;
        if (v126 <= 2)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v157.origin.x = a3;
        v157.origin.y = a4;
        v157.size.width = v141;
        v157.size.height = v142;
        MinX = CGRectGetMinX(v157);
        v77 = v126;
        v68 = v59;
        if (v126 <= 2)
        {
LABEL_33:
          if (v77)
          {
            v84 = v136;
            v80 = v125;
            if (v77 == 1)
            {
              if (v136 < v68)
              {
                v68 = v136;
              }

              v64(v121, v114, v51);
              v85 = [v48 traitCollection];
              [v85 displayScale];
              if (v86 <= 0.0)
              {
                v86 = ForJetUIOnly_MainScreenScale();
              }

              v87 = v121;
              v88 = sub_1BAD794F8(v121, v86, v45 + v84 * 0.5 - v68 * 0.5);

              v139(v87, v51);
              v115 = v45 + v138 + v84;
              v78 = v88;
            }

            else
            {
              if (v136 < v68)
              {
                v68 = v136;
              }

              v115 = v45 + v138 + v136;
              v78 = v45 + v136 - v68;
            }

            goto LABEL_53;
          }

          if (v136 < v68)
          {
            v68 = v136;
          }

          v78 = v45;
          v115 = v45 + v138 + v136;
LABEL_52:
          v80 = v125;
LABEL_53:
          v79 = MinX;
          goto LABEL_54;
        }
      }

      if (v77 == 3)
      {
        if (v136 < v68)
        {
          v68 = v136;
        }

        v79 = MinX;
        v159.origin.x = MinX;
        v78 = v45;
        v159.origin.y = v45;
        v80 = v125;
        v159.size.width = v125;
        v159.size.height = v68;
        MaxY = CGRectGetMaxY(v159);
      }

      else if (v77 == 4)
      {
        if (v52 != 1.0)
        {
          v115 = v45 + v138 + v136 - v143;
          v78 = v45 + v136 / v52 - v122;
          goto LABEL_52;
        }

        v78 = v45 + v136 - v122;
        v79 = MinX;
        v158.origin.x = MinX;
        v158.origin.y = v78;
        v80 = v125;
        v158.size.width = v125;
        v158.size.height = v68;
        MaxY = CGRectGetMaxY(v158) - v143;
      }

      else
      {
        v89 = v143;
        v78 = v45 + v136 - (v59 - v143);
        v79 = MinX;
        v160.origin.x = MinX;
        v160.origin.y = v78;
        v90 = v125;
        v160.size.width = v125;
        v160.size.height = v59;
        MaxY = CGRectGetMaxY(v160) - v89;
        v68 = v59;
        v80 = v90;
      }

      v115 = v138 + MaxY;
LABEL_54:
      v119 = a3;
      v120 = a4;
      v92 = v147;
      v91 = v148;
      __swift_project_boxed_opaque_existential_1(&v146, v147);
      v93 = [v137 traitCollection];
      v94 = [v93 layoutDirection];

      v95.n128_f64[0] = v79;
      v96.n128_f64[0] = v78;
      v97.n128_f64[0] = v80;
      v116 = v68;
      v98.n128_f64[0] = v68;
      if (v94 == 1)
      {
        CGAffineTransformMakeScale(&v145, -1.0, 1.0);
        tx = v145.tx;
        ty = v145.ty;
        v112 = *&v145.a;
        v111 = *&v145.c;
        v100 = v141;
        v101 = v142;
        v102 = v119;
        v161.origin.x = v119;
        v103 = v120;
        v161.origin.y = v120;
        v161.size.width = v141;
        v161.size.height = v142;
        v104 = v78;
        v105 = CGRectGetMinX(v161);
        v162.origin.x = v102;
        v80 = v125;
        v162.origin.y = v103;
        v162.size.width = v100;
        v162.size.height = v101;
        v106 = v105 + CGRectGetMaxX(v162);
        v78 = v104;
        v79 = MinX;
        *&v145.c = v111;
        *&v145.a = v112;
        v145.tx = tx;
        v145.ty = ty;
        CGAffineTransformTranslate(&v144, &v145, -v106, 0.0);
        v145 = v144;
        v163.origin.x = v79;
        v163.origin.y = v104;
        v163.size.width = v80;
        v163.size.height = v116;
        *v95.n128_u64 = CGRectApplyAffineTransform(v163, &v145);
      }

      (*(v91 + 24))(v92, v91, v95, v96, v97, v98);
      v35 = v130;
      if (v80 > v130)
      {
        v35 = v80;
      }

      v34 = v135;
      if (v133)
      {
        a4 = v120;
        a3 = v119;
      }

      else
      {
        v164.origin.x = v79;
        v164.origin.y = v78;
        v164.size.width = v80;
        v164.size.height = v116;
        v107 = CGRectGetMinY(v164);
        a3 = v119;
        v165.origin.x = v119;
        a4 = v120;
        v165.origin.y = v120;
        v165.size.width = v141;
        v165.size.height = v142;
        v34 = v122 + v107 - CGRectGetMinY(v165);
        v129 = 1;
      }

      v33 = v127;
      v62 = v136;
      v63 = v115;
      goto LABEL_62;
    }

    v62 = v136;
    if ((v129 & 1) == 0)
    {
      v156.origin.x = a3;
      v156.origin.y = a4;
      v156.size.width = v141;
      v156.size.height = v142;
      v135 = v62 + v45 - CGRectGetMinY(v156);
    }

    v63 = v62 + v45;
    v129 = 1;
    v143 = 0.0;
    v35 = v130;
    v33 = v127;
    v34 = v135;
LABEL_62:
    v32 = v38 + 1;
    v36 = v36 + v62;
    result = sub_1BAD34A5C(&v146);
    v133 = 1;
    MinY = v63;
    if (v128 != v38)
    {
      continue;
    }

    break;
  }

LABEL_65:
  if (__OFSUB__(v31, 1))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  else
  {
    v108 = v36 + v138 * ((v31 - 1) & ~((v31 - 1) >> 63));
    v109 = v134;
    *v134 = a3;
    v109[1] = a4;
    v109[2] = v35;
    v109[3] = v108;
    v110 = v143;
    v109[4] = v34;
    v109[5] = v110;
  }

  return result;
}

unint64_t sub_1BAD34A90()
{
  result = qword_1EBC2A820;
  if (!qword_1EBC2A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A820);
  }

  return result;
}

unint64_t sub_1BAD34AE8()
{
  result = qword_1EBC2A828;
  if (!qword_1EBC2A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A828);
  }

  return result;
}

unint64_t sub_1BAD34B40()
{
  result = qword_1EBC2A830;
  if (!qword_1EBC2A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A830);
  }

  return result;
}

unint64_t sub_1BAD34B98()
{
  result = qword_1EDBA5750;
  if (!qword_1EDBA5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA5750);
  }

  return result;
}

unint64_t sub_1BAD34BF0()
{
  result = qword_1EDBA5748;
  if (!qword_1EDBA5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA5748);
  }

  return result;
}

unint64_t sub_1BAD34C48()
{
  result = qword_1EBC2A838;
  if (!qword_1EBC2A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A838);
  }

  return result;
}

uint64_t sub_1BAD34C9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BAD34CE4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for VerticalStackLayout.Alignment(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VerticalStackLayout.Alignment(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for VerticalStackLayout.ExclusionCondition(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VerticalStackLayout.ExclusionCondition(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for VerticalStackLayout.Child.Alignment(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VerticalStackLayout.Child.Alignment(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *StackMeasurable.init(axis:skipEmptyChildren:children:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 16) = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t StackMeasurable.Axis.hashValue.getter()
{
  v1 = *v0;
  sub_1BAD9DB48();
  MEMORY[0x1BFB031C0](v1);
  return sub_1BAD9DB88();
}

uint64_t StackMeasurable.addChild(_:)(uint64_t a1)
{
  sub_1BAD14A3C(a1, v6);
  v2 = *(v1 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BAD1877C(0, v2[2] + 1, 1, v2);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1BAD1877C((v3 > 1), v4 + 1, 1, v2);
  }

  v2[2] = v4 + 1;
  result = sub_1BAD1A480(v6, &v2[5 * v4 + 4]);
  *(v1 + 8) = v2;
  return result;
}

unint64_t StackMeasurable.insertChild(_:at:)(unint64_t result, int64_t a2)
{
  if (*(*(v2 + 8) + 16) < a2)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    sub_1BAD14A3C(result, v4);
    return sub_1BAD199F4(a2, a2, v4);
  }

  __break(1u);
  return result;
}

double sub_1BAD352C4(uint64_t a1, double a2, double a3)
{
  v4 = *(v3 + 8);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0.0;
  }

  v9 = v4 + 32;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    sub_1BAD14A3C(v9, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v14 = (*(v13 + 8))(a1, v12, v13, a2, a3);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v18);
    v11 = v11 + v14;
    if (v10 <= v16)
    {
      v10 = v16;
    }

    v9 += 40;
    --v5;
  }

  while (v5);
  return v11;
}

uint64_t sub_1BAD353C0(uint64_t result, double a2, double a3)
{
  v4 = *(v3 + 8);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = result;
    v9 = 0;
    v10 = 0;
    v11 = *(v3 + 16);
    v12 = v4 + 32;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    do
    {
      v27 = v9;
      v28 = v13;
      v16 = v12 + 40 * v10;
      for (i = v10; ; ++i)
      {
        if (i >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1BAD14A3C(v16, v29);
        v10 = i + 1;
        v18 = v30;
        v19 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        v20 = (*(v19 + 8))(v6, v18, v19, a2, a3);
        v22 = v21;
        v24 = v23;
        result = __swift_destroy_boxed_opaque_existential_1(v29);
        if (!v11)
        {
          break;
        }

        v25 = fabs(v22);
        if (fabs(v20) >= COERCE_DOUBLE(1) && v25 >= COERCE_DOUBLE(1))
        {
          break;
        }

        v16 += 40;
        if (v5 == v10)
        {
          return result;
        }
      }

      if (v15 <= v20)
      {
        v15 = v20;
      }

      v13 = v28;
      if ((v27 & 1) == 0)
      {
        v13 = v24;
      }

      v14 = v14 + v22;
      v9 = 1;
      v12 = v4 + 32;
    }

    while (v5 - 1 != i);
  }

  return result;
}

double StackMeasurable.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v7 = *(v3 + 8);
  if (*v3)
  {
    v8 = *(v3 + 16);
    LOBYTE(v20[0]) = 1;
    v20[1] = v7;
    v21 = v8;
    sub_1BAD353C0(a1, a2, a3);
    return v9;
  }

  else
  {
    v11 = *(v7 + 16);
    v10 = 0.0;
    v12 = 0.0;
    if (v11)
    {
      v13 = v7 + 32;
      do
      {
        sub_1BAD14A3C(v13, v20);
        v14 = v22;
        v15 = v23;
        __swift_project_boxed_opaque_existential_1(v20, v22);
        v16 = (*(v15 + 8))(a1, v14, v15, a2, a3);
        v18 = v17;
        __swift_destroy_boxed_opaque_existential_1(v20);
        v10 = v10 + v16;
        if (v12 <= v18)
        {
          v12 = v18;
        }

        v13 += 40;
        --v11;
      }

      while (v11);
    }
  }

  return v10;
}

double sub_1BAD356A8(uint64_t a1, double a2, double a3)
{
  if ((*v3 & 1) == 0)
  {
    return sub_1BAD352C4(a1, a2, a3);
  }

  sub_1BAD353C0(a1, a2, a3);
  return result;
}

unint64_t sub_1BAD35710()
{
  result = qword_1EBC2A840;
  if (!qword_1EBC2A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A840);
  }

  return result;
}

uint64_t sub_1BAD35764(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1BAD357AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HorizontalStack.add(_:with:)(void *a1, void (*a2)(_OWORD *))
{
  v3 = a1[3];
  v4 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  Measurable.placeable.getter(v3, v4, v6);
  HorizontalStack.add(_:with:)(v6, a2);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t HorizontalStack.adding(_:with:)@<X0>(void *a1@<X0>, void (*a2)(_OWORD *)@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = a1[3];
  v8 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  Measurable.placeable.getter(v7, v8, v10);
  sub_1BAD183C8(v4, a3);
  HorizontalStack.add(_:with:)(v10, a2);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t HorizontalStack.insert(_:at:with:)(void *a1, int64_t a2, void (*a3)(_BYTE *))
{
  v5 = a1[3];
  v6 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  Measurable.placeable.getter(v5, v6, v8);
  HorizontalStack.insert(_:at:with:)(v8, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t HorizontalStack.inserting(_:at:with:)@<X0>(void *a1@<X0>, int64_t a2@<X1>, void (*a3)(_BYTE *)@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = a1[3];
  v10 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Measurable.placeable.getter(v9, v10, v12);
  sub_1BAD183C8(v5, a4);
  HorizontalStack.insert(_:at:with:)(v12, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

void NSAttributedString.languageAwareOutsets.getter()
{
  v1 = v0;
  v2 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:0];
  v3 = [v0 string];
  v4 = sub_1BAD9CF68();
  v6 = v5;

  aBlock = v4;
  v24 = v6;
  if (qword_1EDBA61E8 != -1)
  {
    swift_once();
  }

  v7 = sub_1BAD9C248();
  __swift_project_value_buffer(v7, qword_1EDBA61F0);
  sub_1BAD13DE8();
  sub_1BAD9D5F8();
  v9 = v8;

  if (v9)
  {
  }

  else
  {
    v10 = *(MEMORY[0x1E69DDCE0] + 16);
    v30 = *MEMORY[0x1E69DDCE0];
    v31 = v10;
    v29 = 0;
    v11 = [v1 length];
    v12 = *MEMORY[0x1E69DB648];
    v13 = swift_allocObject();
    *(v13 + 16) = &v30;
    *(v13 + 24) = &v29;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1BAD13E3C;
    *(v14 + 24) = v13;
    v27 = sub_1BAD25198;
    v28 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1BAD1268C;
    v26 = &block_descriptor_4;
    v15 = _Block_copy(&aBlock);

    [v1 enumerateAttribute:v12 inRange:0 options:v11 usingBlock:{0x100000, v15}];
    _Block_release(v15);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else
    {
      if (v29)
      {
      }

      else
      {
        v16 = UIFont.languageAwareOutsets.getter();
        v18 = v17;
        v20 = v19;
        v22 = v21;

        *&v30 = v16;
        *(&v30 + 1) = v18;
        *&v31 = v20;
        *(&v31 + 1) = v22;
      }
    }
  }
}

UIEdgeInsets __swiftcall String.languageAwareOutsets(whenUsedWith:)(UIFont whenUsedWith)
{
  if (qword_1EDBA61E8 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAD9C248();
  __swift_project_value_buffer(v1, qword_1EDBA61F0);
  sub_1BAD13DE8();
  sub_1BAD9D5F8();
  if (v2)
  {
    v3 = *MEMORY[0x1E69DDCE0];
    v4 = *(MEMORY[0x1E69DDCE0] + 8);
    v5 = *(MEMORY[0x1E69DDCE0] + 16);
    v6 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v3 = UIFont.languageAwareOutsets.getter();
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

uint64_t sub_1BAD35E14()
{
  v0 = sub_1BAD369C8(&unk_1F38E60C8);
  result = swift_arrayDestroy();
  off_1EDBA5868 = v0;
  return result;
}

uint64_t Locale.hasExtraTallWritingSystem.getter()
{
  v1 = v0;
  v2 = sub_1BAD9C858();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BAD9C378();
  if (!v4)
  {
    if (qword_1EBC29C50 != -1)
    {
      swift_once();
    }

    v7 = sub_1BAD9CDF8();
    __swift_project_value_buffer(v7, qword_1EBC357E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC29FF0);
    sub_1BAD9C898();
    *(swift_allocObject() + 16) = xmmword_1BAD9F5A0;
    sub_1BAD9C848();
    sub_1BAD9C838();
    v8 = sub_1BAD9C3B8();
    v20[3] = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v1, v8);
    sub_1BAD9C808();
    sub_1BAD05470(v20);
    sub_1BAD9C838();
    sub_1BAD9C868();
    sub_1BAD9CCA8();

    sub_1BAD9C368();
    if (qword_1EDBA5860 != -1)
    {
      swift_once();
    }

    v10 = off_1EDBA5868 + 56;
    v11 = 1 << *(off_1EDBA5868 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(off_1EDBA5868 + 7);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    while (v13)
    {
LABEL_16:
      v13 &= v13 - 1;

      v17 = sub_1BAD9D0B8();

      if (v17)
      {

        return 1;
      }
    }

    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        return 0;
      }

      v13 = *&v10[8 * v16];
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (qword_1EDBA5860 != -1)
  {
LABEL_20:
    v18 = v3;
    v19 = v4;
    swift_once();
    v3 = v18;
    v4 = v19;
  }

  v5 = sub_1BAD36228(v3, v4, off_1EDBA5868);

  return v5 & 1;
}

uint64_t sub_1BAD36228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1BAD9DB48();
  sub_1BAD9D018();
  v6 = sub_1BAD9DB88();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1BAD9DA98() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1BAD36320(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A848);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  if (*(a2 + 16) && (sub_1BAD3695C(&qword_1EBC2A850), v7 = sub_1BAD9CED8(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1BAD3695C(&qword_1EBC2A858);
      v15 = sub_1BAD9CF28();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

double UIFont.languageAwareOutsets.getter()
{
  LanguageAwareOutsets = CTFontGetLanguageAwareOutsets();
  result = 0.0;
  if (!LanguageAwareOutsets)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  return result;
}

UIEdgeInsets __swiftcall NSAttributedString.languageAwareOutsets(whenUsedWith:)(UIFont whenUsedWith)
{
  v2 = v1;
  v3 = [v1 string];
  v4 = sub_1BAD9CF68();
  v6 = v5;

  aBlock = v4;
  v28 = v6;
  if (qword_1EDBA61E8 != -1)
  {
    swift_once();
  }

  v7 = sub_1BAD9C248();
  __swift_project_value_buffer(v7, qword_1EDBA61F0);
  sub_1BAD13DE8();
  sub_1BAD9D5F8();
  v9 = v8;

  if (v9)
  {
    v10 = *MEMORY[0x1E69DDCE0];
    v11 = *(MEMORY[0x1E69DDCE0] + 8);
    v12 = *(MEMORY[0x1E69DDCE0] + 16);
    v13 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v14 = *(MEMORY[0x1E69DDCE0] + 16);
    v34 = *MEMORY[0x1E69DDCE0];
    v35 = v14;
    v33 = 0;
    v15 = [v2 length];
    v16 = *MEMORY[0x1E69DB648];
    v17 = swift_allocObject();
    *(v17 + 16) = &v34;
    *(v17 + 24) = &v33;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1BAD36B80;
    *(v18 + 24) = v17;
    v31 = sub_1BAD36B84;
    v32 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_1BAD1268C;
    v30 = &block_descriptor_14;
    v19 = _Block_copy(&aBlock);

    [v2 enumerateAttribute:v16 inRange:0 options:v15 usingBlock:{0x100000, v19}];
    _Block_release(v19);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
      goto LABEL_12;
    }

    if (v33 == 1)
    {
      v11 = *(&v34 + 1);
      v10 = *&v34;
      v13 = *(&v35 + 1);
      v12 = *&v35;
    }

    else
    {
      v10 = UIFont.languageAwareOutsets.getter();
      v11 = v24;
      v12 = v25;
      v13 = v26;
      *&v34 = v10;
      *(&v34 + 1) = v24;
      *&v35 = v25;
      *(&v35 + 1) = v26;
    }
  }

  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
LABEL_12:
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

void sub_1BAD36884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float64x2_t *a5, _BYTE *a6)
{
  sub_1BAD116E0(a1, v20);
  if (v21)
  {
    sub_1BAD36B30();
    if (swift_dynamicCast())
    {
      v8 = UIFont.languageAwareOutsets.getter();
      v15 = v9;
      v16 = v8;
      v17 = v11;
      v18 = v10;

      v12.f64[0] = v16;
      v12.f64[1] = v15;
      v13 = vbslq_s8(vcgeq_f64(v12, *a5), v12, *a5);
      v12.f64[0] = v18;
      v12.f64[1] = v17;
      v14 = vbslq_s8(vcgeq_f64(v12, a5[1]), v12, a5[1]);
      *a5 = v13;
      a5[1] = v14;
      *a6 = 1;
    }
  }

  else
  {
    sub_1BAD05470(v20);
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAD3695C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A848);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAD369C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A860);
    v3 = sub_1BAD9D798();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1BAD9DB48();

      sub_1BAD9D018();
      result = sub_1BAD9DB88();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1BAD9DA98();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1BAD36B30()
{
  result = qword_1EDBA58E0;
  if (!qword_1EDBA58E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBA58E0);
  }

  return result;
}

void Layout.withMeasurements(providedBy:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAD14A3C(v11, v14);
  (*(v8 + 16))(v10, v4, a2);
  sub_1BAD7782C(v14, v10, a2, a3);
  a4[3] = &type metadata for PartialMeasurableLayout;
  a4[4] = &off_1F38EC7B8;
  a4[5] = &off_1F38EC7A8;
  *a4 = v12;
}

uint64_t _s9ParagraphV5StyleOwet(unsigned int *a1, int a2)
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

_WORD *_s9ParagraphV5StyleOwst(_WORD *result, int a2, int a3)
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

uint64_t sub_1BAD36E04()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x5474736575716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1BAD36E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BAD37D4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BAD36E90(uint64_t a1)
{
  v2 = sub_1BAD37124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAD36ECC(uint64_t a1)
{
  v2 = sub_1BAD37124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DSLocalizationInfoLog.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A880);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAD37124();
  sub_1BAD9DBD8();
  v8[15] = 0;
  sub_1BAD9D9F8();
  if (!v1)
  {
    v8[14] = 1;
    sub_1BAD9D9F8();
    type metadata accessor for DSLocalizationInfoLog();
    v8[13] = 2;
    sub_1BAD9C328();
    sub_1BAD37890(&qword_1EBC2A890, MEMORY[0x1E6969530]);
    sub_1BAD9DA28();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BAD37124()
{
  result = qword_1EBC2A888;
  if (!qword_1EBC2A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A888);
  }

  return result;
}

uint64_t type metadata accessor for DSLocalizationInfoLog()
{
  result = qword_1EBC2A8C0;
  if (!qword_1EBC2A8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DSLocalizationInfoLog.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_1BAD9C328();
  v18 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A898);
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = v16 - v6;
  v8 = type metadata accessor for DSLocalizationInfoLog();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAD37124();
  sub_1BAD9DBB8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = a1;
  v12 = v20;
  v11 = v21;
  v25 = 0;
  *v10 = sub_1BAD9D998();
  v10[1] = v13;
  v16[1] = v13;
  v24 = 1;
  v10[2] = sub_1BAD9D998();
  v10[3] = v14;
  v23 = 2;
  sub_1BAD37890(&qword_1EBC2A8A0, MEMORY[0x1E6969530]);
  sub_1BAD9D9C8();
  (*(v12 + 8))(v7, v22);
  (*(v18 + 32))(v10 + *(v8 + 24), v5, v11);
  sub_1BAD3754C(v10, v19);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_1BAD375B0(v10);
}

uint64_t sub_1BAD3754C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DSLocalizationInfoLog();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAD375B0(uint64_t a1)
{
  v2 = type metadata accessor for DSLocalizationInfoLog();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BAD3763C()
{
  qword_1EBC2A868 = MEMORY[0x1E69E7CC0];
  unk_1EBC2A870 = 0xD000000000000022;
  qword_1EBC2A878 = 0x80000001BADA32D0;
}

uint64_t static DSLocalizationDiagnosticsCollector.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBC29C18 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1EBC2A870;
  v2 = qword_1EBC2A878;
  *a1 = qword_1EBC2A868;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t DSLocalizationDiagnosticsCollector.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t DSLocalizationDiagnosticsCollector.getDiagnosticInfo()()
{
  sub_1BAD9C1D8();
  swift_allocObject();

  sub_1BAD9C1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A8A8);
  sub_1BAD377DC();
  v0 = sub_1BAD9C1B8();

  return v0;
}

unint64_t sub_1BAD377DC()
{
  result = qword_1EBC2A8B0;
  if (!qword_1EBC2A8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A8A8);
    sub_1BAD37890(&qword_1EBC2A8B8, type metadata accessor for DSLocalizationInfoLog);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A8B0);
  }

  return result;
}

uint64_t sub_1BAD37890(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall DSLocalizationDiagnosticsCollector.addLocalizationLog(by:and:)(Swift::String by, Swift::String and)
{
  object = and._object;
  countAndFlagsBits = and._countAndFlagsBits;
  v5 = by._object;
  v6 = by._countAndFlagsBits;
  v7 = type metadata accessor for DSLocalizationInfoLog();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_1BAD9C318();
  *v10 = v6;
  v10[1] = v5;
  v10[2] = countAndFlagsBits;
  v10[3] = object;
  v11 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1BAD188C4(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1BAD188C4(v12 > 1, v13 + 1, 1, v11);
  }

  v11[2] = v13 + 1;
  sub_1BAD37B1C(v10, v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13);
  *v2 = v11;
}

uint64_t sub_1BAD37A64()
{
  sub_1BAD9C1D8();
  swift_allocObject();

  sub_1BAD9C1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A8A8);
  sub_1BAD377DC();
  v0 = sub_1BAD9C1B8();

  return v0;
}

uint64_t sub_1BAD37B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DSLocalizationInfoLog();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAD37BA8()
{
  result = sub_1BAD9C328();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BAD37C48()
{
  result = qword_1EBC2A8D0;
  if (!qword_1EBC2A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A8D0);
  }

  return result;
}

unint64_t sub_1BAD37CA0()
{
  result = qword_1EBC2A8D8;
  if (!qword_1EBC2A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A8D8);
  }

  return result;
}

unint64_t sub_1BAD37CF8()
{
  result = qword_1EBC2A8E0;
  if (!qword_1EBC2A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A8E0);
  }

  return result;
}

uint64_t sub_1BAD37D4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5474736575716572 && a2 == 0xEB00000000656D69)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BAD9DA98();

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

id sub_1BAD37E64()
{
  if (qword_1EDBA5BD0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBA5BD8;
  qword_1EBC2A8E8 = qword_1EDBA5BD8;

  return v1;
}

uint64_t Models.Paragraph.Alignment.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1BAD9D978();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Models.Paragraph.Alignment.rawValue.getter()
{
  v1 = *v0;
  v2 = 1952867692;
  v3 = 0x7468676972;
  v4 = 0x656966697473756ALL;
  if (v1 != 3)
  {
    v4 = 0x657A696C61636F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265746E6563;
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

uint64_t sub_1BAD37FD0()
{
  sub_1BAD9DB48();
  sub_1BAD9D018();

  return sub_1BAD9DB88();
}

uint64_t sub_1BAD380AC()
{
  sub_1BAD9D018();
}

uint64_t sub_1BAD38174()
{
  sub_1BAD9DB48();
  sub_1BAD9D018();

  return sub_1BAD9DB88();
}

void sub_1BAD38258(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1952867692;
  v5 = 0xE500000000000000;
  v6 = 0x7468676972;
  v7 = 0x656966697473756ALL;
  if (v2 != 3)
  {
    v7 = 0x657A696C61636F6CLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE900000000000064;
  }

  if (*v1)
  {
    v4 = 0x7265746E6563;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t Models.Paragraph.Style.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1BAD9D978();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1BAD38384()
{
  sub_1BAD9DB48();
  sub_1BAD9D018();
  return sub_1BAD9DB88();
}

uint64_t sub_1BAD383F0()
{
  sub_1BAD9DB48();
  sub_1BAD9D018();
  return sub_1BAD9DB88();
}

uint64_t sub_1BAD38440@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1BAD9D978();

  *a1 = v2 != 0;
  return result;
}

uint64_t Models.Paragraph.init(text:style:alignment:isCollapsed:wantsCollapsedNewlines:impressionMetrics:)@<X0>(uint64_t a1@<X0>, char *a2@<X2>, char a3@<W3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *a2;
  v14 = type metadata accessor for Models.Paragraph();
  v15 = a6 + v14[5];
  *v15 = v10;
  *(v15 + 8) = v11;
  *(v15 + 16) = v12;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  sub_1BAD39BA4(v10, v11, v12);
  v16 = sub_1BAD3970C(&v24);
  sub_1BAD39BB4(v24, v25, v26);
  *(a6 + v14[6]) = v16;
  if (a4)
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v18 = [v17 length];
    v19 = [v17 mutableString];

    v20 = sub_1BAD9CF38();
    v21 = sub_1BAD9CF38();
    [v19 replaceOccurrencesOfString:v20 withString:v21 options:1024 range:{0, v18}];

    *(a6 + v14[7]) = v17;
  }

  else
  {
    *(a6 + v14[7]) = v16;
    v22 = v16;
  }

  *(a6 + v14[8]) = v13;
  *(a6 + v14[10]) = a3 & 1;

  return sub_1BAD39BDC(a5, a6);
}

uint64_t type metadata accessor for Models.Paragraph()
{
  result = qword_1EBC2A9A0;
  if (!qword_1EBC2A9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Models.Paragraph.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A668);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = &v46 - v6;
  v7 = sub_1BAD9C8F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  v58 = sub_1BAD9C7C8();
  v13 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v53 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  sub_1BAD9C7D8();
  v23 = *(v8 + 16);
  v59 = v7;
  v60 = a2;
  v52 = v23;
  v23(v12, a2, v7);
  v24 = v57;
  Models.ProgrammedText.init(deserializing:using:)(v22, v12, v64);
  if (v24)
  {
    (*(v8 + 8))(v60, v59);
    return (*(v13 + 8))(a1, v58);
  }

  else
  {
    v50 = 0;
    v57 = v8;
    v26 = v64[1];
    v48 = v64[0];
    v47 = v65;
    v27 = a1;
    sub_1BAD9C7D8();
    sub_1BAD39C4C();
    sub_1BAD9C728();
    v28 = *(v13 + 8);
    v29 = v58;
    v28(v19, v58);
    sub_1BAD9C7D8();
    sub_1BAD39CA0();
    sub_1BAD9C728();
    v28(v19, v29);
    v66 = v67;
    v30 = v51;
    sub_1BAD9C7D8();
    v49 = sub_1BAD9C778();
    v28(v30, v29);
    v31 = v53;
    sub_1BAD9C7D8();
    v46 = sub_1BAD9C778();
    v53 = (v13 + 8);
    v51 = v28;
    v28(v31, v29);
    sub_1BAD9CB28();
    sub_1BAD9C7D8();
    v52(v54, v60, v59);
    v32 = v55;
    sub_1BAD9CB08();
    v33 = type metadata accessor for Models.Paragraph();
    v34 = v56;
    v35 = v56 + v33[5];
    v36 = v48;
    *v35 = v48;
    *(v35 + 8) = v26;
    v37 = v47;
    *(v35 + 16) = v47;
    v61 = v36;
    v62 = v26;
    v63 = v37;
    sub_1BAD39BA4(v36, v26, v37);
    v38 = sub_1BAD3970C(&v61);
    sub_1BAD39BB4(v61, v62, v63);
    *(v34 + v33[6]) = v38;
    if (v46)
    {
      v39 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
      v40 = [v39 length];
      v41 = [v39 mutableString];

      v42 = sub_1BAD9CF38();
      v43 = v32;
      v44 = sub_1BAD9CF38();
      [v41 replaceOccurrencesOfString:v42 withString:v44 options:1024 range:{0, v40}];

      v32 = v43;
      (*(v57 + 8))(v60, v59);
    }

    else
    {
      v45 = *(v57 + 8);
      v39 = v38;
      v45(v60, v59);
    }

    (v51)(v27, v58);
    *(v34 + v33[7]) = v39;
    *(v34 + v33[8]) = v66;
    *(v34 + v33[10]) = v49 & 1;
    return sub_1BAD39BDC(v32, v34);
  }
}

id Models.Paragraph.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Models.Paragraph() + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;

  return sub_1BAD39BA4(v4, v5, v6);
}

id Models.Paragraph.attributedText.getter()
{
  v1 = *(v0 + *(type metadata accessor for Models.Paragraph() + 24));

  return v1;
}

id Models.Paragraph.collapsedAttributedText.getter()
{
  v1 = *(v0 + *(type metadata accessor for Models.Paragraph() + 28));

  return v1;
}

uint64_t Models.Paragraph.alignment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Models.Paragraph();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_1BAD38F1C()
{
  v1 = *v0;
  v2 = 1954047348;
  v3 = 0x70616C6C6F437369;
  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C797473;
  if (v1 != 1)
  {
    v5 = 0x6E656D6E67696C61;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BAD38FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BAD3A6A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BAD39018(uint64_t a1)
{
  v2 = sub_1BAD39D64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAD39054(uint64_t a1)
{
  v2 = sub_1BAD39D64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.Paragraph.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v45 = type metadata accessor for Models.Paragraph();
  MEMORY[0x1EEE9AC00](v45);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A668);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A900);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  v15 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1BAD39D64();
  v16 = v47;
  sub_1BAD9DBB8();
  if (!v16)
  {
    v47 = v10;
    v43 = v4;
    v44 = v7;
    v53 = 0;
    sub_1BAD39DB8();
    sub_1BAD9D9C8();
    v17 = v50;
    v42 = v49;
    v18 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A918);
    v53 = 1;
    sub_1BAD3A040(&qword_1EBC2A920, &qword_1EBC2A918, &unk_1BADA3430, sub_1BAD39E0C);
    sub_1BAD9D988();
    v19 = v12;
    v20 = v42;
    v52 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A940);
    v53 = 2;
    sub_1BAD39EE4();
    sub_1BAD9D988();
    v21 = v49;
    if (v49 - 5 < 2)
    {
      v21 = 4;
    }

    v41 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A558);
    v53 = 3;
    sub_1BAD3A040(&qword_1EBC2A560, &qword_1EBC2A558, &unk_1BADA1E28, sub_1BAD28384);
    sub_1BAD9D988();
    v39 = v49;
    v40 = v49 != 3;
    v53 = 4;
    sub_1BAD9D988();
    v38 = v49;
    sub_1BAD9CB28();
    LOBYTE(v49) = 5;
    sub_1BAD3A97C(&qword_1EBC2A968, MEMORY[0x1E69AB1E8]);
    v22 = v47;
    sub_1BAD9D988();
    v36 = v11;
    v37 = v14;
    v40 &= v39;
    sub_1BAD39CF4(v22, v44);
    v24 = v45;
    v25 = v43;
    v26 = &v43[*(v45 + 20)];
    *v26 = v20;
    *(v26 + 1) = v17;
    v27 = v52;
    v26[16] = v52;
    v49 = v20;
    v50 = v17;
    v51 = v27;
    sub_1BAD39BA4(v20, v17, v27);
    v28 = sub_1BAD3970C(&v49);
    sub_1BAD39BB4(v49, v50, v51);
    *(v25 + v24[6]) = v28;
    if (v38 == 3 || (v38 & 1) == 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
      v30 = [v29 length];
      v31 = [v29 mutableString];

      v32 = sub_1BAD9CF38();
      v33 = sub_1BAD9CF38();
      [v31 replaceOccurrencesOfString:v32 withString:v33 options:1024 range:{0, v30}];
    }

    v34 = v46;
    sub_1BAD3A0BC(v47);
    (*(v19 + 8))(v37, v36);
    *(v25 + v24[7]) = v29;
    v35 = v40;
    *(v25 + v24[8]) = v41;
    *(v25 + v24[10]) = v35;
    sub_1BAD39BDC(v44, v25);
    sub_1BAD3A124(v25, v34);
  }

  return __swift_destroy_boxed_opaque_existential_1(v48);
}

id sub_1BAD3970C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 255)
  {
    v22 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    return [v22 init];
  }

  else
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    v4 = objc_opt_self();
    v5 = *MEMORY[0x1E69DDD80];
    sub_1BAD39BA4(v2, v3, v1 & 1);
    if (qword_1EBC29C20 != -1)
    {
      swift_once();
    }

    v6 = [v4 preferredFontForTextStyle:v5 compatibleWithTraitCollection:qword_1EBC2A8E8];
    v7 = sub_1BAD56160();
    v8 = sub_1BAD56568();
    v9 = sub_1BAD56568();

    *&v41 = 10;
    *(&v41 + 1) = 0xE100000000000000;
    *&v42 = v6;
    *(&v42 + 1) = v7;
    *&v43 = 161644770;
    *(&v43 + 1) = 0xA400000000000000;
    *&v44 = v8;
    *(&v44 + 1) = 606245;
    *&v45 = 0xE300000000000000;
    *(&v45 + 1) = v9;
    v46 = 0;
    if (v1)
    {
      v10 = [v2 string];
      v11 = sub_1BAD9CF68();
      v13 = v12;

      v39[2] = v43;
      v39[3] = v44;
      v39[4] = v45;
      v40 = v46;
      v39[0] = v41;
      v39[1] = v42;
      v14 = objc_allocWithZone(type metadata accessor for NQMLStringGenerator());
      sub_1BAD3A8B4(&v41, v38);
      v15 = sub_1BAD91DF8(v11, v13, v39);
      [*&v15[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_parser] parse];
      v16 = OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_accumulator;
      v17 = [*&v15[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_accumulator] mutableString];
      if (qword_1EBC29C88 != -1)
      {
        swift_once();
      }

      sub_1BAD51BA4(qword_1EBC2B5A8);

      v18 = *&v15[v16];
      v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v20 = v18;
      v21 = [v19 initWithAttributedString_];
      sub_1BAD39BB4(v2, v3, v1);
      sub_1BAD3A910(&v41);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A9D0);
      inited = swift_initStackObject();
      v25 = MEMORY[0x1E69DB688];
      *(inited + 16) = xmmword_1BADA1240;
      v26 = *v25;
      *(inited + 32) = *v25;
      v27 = *(&v42 + 1);
      v28 = sub_1BAD053C8(0, &qword_1EBC29A00);
      *(inited + 40) = *(&v42 + 1);
      v29 = *MEMORY[0x1E69DB648];
      *(inited + 64) = v28;
      *(inited + 72) = v29;
      v30 = v42;
      *(inited + 104) = sub_1BAD053C8(0, &qword_1EDBA58E0);
      *(inited + 80) = v30;
      sub_1BAD3A964(v2, v3, v1);
      v31 = v26;
      v32 = v27;
      v33 = v29;
      v34 = v30;
      sub_1BAD1FADC(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A3E0);
      swift_arrayDestroy();
      v35 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v36 = sub_1BAD9CF38();
      sub_1BAD39BB4(v2, v3, v1);
      type metadata accessor for Key(0);
      sub_1BAD3A97C(&qword_1EDBA5D40, type metadata accessor for Key);
      v37 = sub_1BAD9CE88();

      v21 = [v35 initWithString:v36 attributes:v37];

      sub_1BAD39BB4(v2, v3, v1);
      sub_1BAD3A910(&v41);
    }

    return v21;
  }
}

id sub_1BAD39BA4(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1BAD39BB4(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1BAD39BCC(a1, a2, a3 & 1);
  }
}

void sub_1BAD39BCC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1BAD39BDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A668);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BAD39C4C()
{
  result = qword_1EBC2A8F0;
  if (!qword_1EBC2A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A8F0);
  }

  return result;
}

unint64_t sub_1BAD39CA0()
{
  result = qword_1EBC2A8F8;
  if (!qword_1EBC2A8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A8F8);
  }

  return result;
}

uint64_t sub_1BAD39CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BAD39D64()
{
  result = qword_1EBC2A908;
  if (!qword_1EBC2A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A908);
  }

  return result;
}

unint64_t sub_1BAD39DB8()
{
  result = qword_1EBC2A910;
  if (!qword_1EBC2A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A910);
  }

  return result;
}

unint64_t sub_1BAD39E0C()
{
  result = qword_1EBC2A928;
  if (!qword_1EBC2A928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A930);
    sub_1BAD39E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A928);
  }

  return result;
}

unint64_t sub_1BAD39E90()
{
  result = qword_1EBC2A938;
  if (!qword_1EBC2A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A938);
  }

  return result;
}

unint64_t sub_1BAD39EE4()
{
  result = qword_1EBC2A948;
  if (!qword_1EBC2A948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A940);
    sub_1BAD39F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A948);
  }

  return result;
}

unint64_t sub_1BAD39F68()
{
  result = qword_1EBC2A950;
  if (!qword_1EBC2A950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A958);
    sub_1BAD39FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A950);
  }

  return result;
}

unint64_t sub_1BAD39FEC()
{
  result = qword_1EBC2A960;
  if (!qword_1EBC2A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A960);
  }

  return result;
}

uint64_t sub_1BAD3A040(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAD3A0BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A668);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAD3A124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Models.Paragraph();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BAD3A18C()
{
  result = qword_1EBC2A970;
  if (!qword_1EBC2A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A970);
  }

  return result;
}

unint64_t sub_1BAD3A214()
{
  result = qword_1EBC2A988;
  if (!qword_1EBC2A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A988);
  }

  return result;
}

uint64_t sub_1BAD3A298(unint64_t *a1, uint64_t *a2)
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

void sub_1BAD3A314()
{
  sub_1BAD3A3D4();
  if (v0 <= 0x3F)
  {
    sub_1BAD053C8(319, &qword_1EDBA5BC0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BAD3A3D4()
{
  if (!qword_1EBC2A9B0)
  {
    sub_1BAD9CB28();
    v0 = sub_1BAD9D598();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC2A9B0);
    }
  }
}

uint64_t _s9ParagraphV9AlignmentOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9ParagraphV9AlignmentOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BAD3A5A0()
{
  result = qword_1EBC2A9B8;
  if (!qword_1EBC2A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A9B8);
  }

  return result;
}

unint64_t sub_1BAD3A5F8()
{
  result = qword_1EBC2A9C0;
  if (!qword_1EBC2A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A9C0);
  }

  return result;
}

unint64_t sub_1BAD3A650()
{
  result = qword_1EBC2A9C8;
  if (!qword_1EBC2A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A9C8);
  }

  return result;
}

uint64_t sub_1BAD3A6A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70616C6C6F437369 && a2 == 0xEB00000000646573 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BADAA1C0 == a2 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BADAA1E0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1BAD9DA98();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

id sub_1BAD3A964(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1BAD39BA4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BAD3A97C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BAD3A9C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  a2[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_0, v2, v3);
}

uint64_t sub_1BAD3AA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v19 - v16;
  (*(v13 + 40))(a1, v14, v13, a4, a5, a6, a7);
  swift_getAssociatedConformanceWitness();
  return AnyPlacementSequence.init<A>(_:)(v17, AssociatedTypeWitness, a3);
}

uint64_t AnyPrimitiveLayout.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = type metadata accessor for _ConcretePrimitiveLayoutBox();
  a3[4] = &off_1F38E9288;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_0, a1, a2);
}

uint64_t AnyPrimitiveLayout.base.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t AnyPrimitiveLayout.layout(relativeTo:with:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v11);
  return (*(v12 + 16))(a1, v11, v12, a2, a3, a4, a5);
}

unint64_t sub_1BAD3ACFC()
{
  result = qword_1EBC2A9D8;
  if (!qword_1EBC2A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A9D8);
  }

  return result;
}

uint64_t sub_1BAD3AD50(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v11);
  return (*(v12 + 16))(a1, v11, v12, a2, a3, a4, a5);
}

uint64_t sub_1BAD3ADEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BAD3AE34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BAD3AE8C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BAD3AEFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1BAD3B03C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
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
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}