unint64_t sub_1D437F4A8()
{
  result = qword_1EC7CB7C8;
  if (!qword_1EC7CB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB7C8);
  }

  return result;
}

unint64_t sub_1D437F500()
{
  result = qword_1EDE33370;
  if (!qword_1EDE33370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE33370);
  }

  return result;
}

unint64_t sub_1D437F558()
{
  result = qword_1EDE33378;
  if (!qword_1EDE33378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE33378);
  }

  return result;
}

uint64_t sub_1D437F5AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D441AD84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D441AD84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_1D441AD84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D441AD84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D4451A80 == a2 || (sub_1D441AD84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E61726165707061 && a2 == 0xEA00000000006563 || (sub_1D441AD84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6572726566657270 && a2 == 0xED0000657A695364 || (sub_1D441AD84() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1D441AD84() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_1D441AD84() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676E696C616373 && a2 == 0xE700000000000000 || (sub_1D441AD84() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x697461726F636564 && a2 == 0xEA00000000006E6FLL || (sub_1D441AD84() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6564726F42736168 && a2 == 0xE900000000000072)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D441AD84();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

id ICActivityStreamDigest.init(object:)(void *a1)
{
  v2 = sub_1D4380CDC(a1);

  return v2;
}

uint64_t sub_1D437F9F8()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EC7CB7D0);
  __swift_project_value_buffer(v0, qword_1EC7CB7D0);
  return sub_1D4418124();
}

uint64_t ICActivityStreamDigest.init(object:)(void *a1)
{
  swift_getObjectType();
  v3 = objc_allocWithZone(type metadata accessor for ActivityEventResolver());
  v4 = a1;
  v5 = a1;
  v6 = v3;
  ActivityEventResolver.init(object:)(v5);
  if (!v1)
  {
    sub_1D417E038(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
    v6 = sub_1D441A524();
  }

  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_1D437FB28(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();
  v4 = objc_allocWithZone(type metadata accessor for ActivityEventResolver());
  v5 = a3;
  ActivityEventResolver.init(object:)(a3);
  sub_1D417E038(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
  v6 = sub_1D441A524();

  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t ICActivityStreamDigest.Summary.formattedString.getter()
{
  v1 = sub_1D4416F94();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D4416FA4();
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D4416FC4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_1D441A504();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v33 = v11;
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v10;
  v13 = *(v10 + 16);
  v13(v12, v0, v9);
  v14 = sub_1D441ADC4();
  swift_beginAccess();
  v15 = objc_getAssociatedObject(v14, &unk_1EC7CB7E8);
  swift_endAccess();
  swift_unknownObjectRelease();
  if (v15)
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  aBlock = v45;
  v42 = v46;
  if (*(&v46 + 1))
  {
    sub_1D41766C0(0, &qword_1EDE33A28);
    if (swift_dynamicCast())
    {
      return v40;
    }

    v31 = v13;
  }

  else
  {
    v31 = v13;
    sub_1D418D074(&aBlock);
  }

  sub_1D41766C0(0, &qword_1EC7CA488);
  sub_1D441A4F4();
  v32 = v0;
  v17 = sub_1D4417234();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  (*(v35 + 104))(v4, *MEMORY[0x1E6968750], v36);
  (*(v38 + 104))(v37, *MEMORY[0x1E6968728], v39);
  sub_1D4416FB4();
  v18 = sub_1D441A3A4();
  v39 = *MEMORY[0x1E69DB648];
  v19 = v18;
  v20 = [v19 ic_range];
  v38 = v21;
  v22 = v31;
  v31(v12, v32, v9);
  v23 = v34;
  v24 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  (*(v23 + 32))(v25 + v24, v12, v9);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1D4380D9C;
  *(v26 + 24) = v25;
  v43 = sub_1D417CF74;
  v44 = v26;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_1D417C9A0;
  *(&v42 + 1) = &block_descriptor_18;
  v27 = _Block_copy(&aBlock);
  v16 = v19;

  [v16 enumerateAttribute:v39 inRange:v20 options:v38 usingBlock:{0, v27}];
  _Block_release(v27);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if ((v20 & 1) == 0)
  {
    v22(v12, v32, v9);
    v29 = sub_1D441ADC4();
    swift_beginAccess();
    v30 = v16;
    objc_setAssociatedObject(v29, &unk_1EC7CB7E8, v30, 1);
    swift_endAccess();

    swift_unknownObjectRelease();

    return v16;
  }

  __break(1u);
  return result;
}

void sub_1D438043C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1D418CFF4(a1, v10);
  if (!v11)
  {
    sub_1D418D074(v10);
    goto LABEL_7;
  }

  sub_1D41766C0(0, &qword_1EC7CB7F8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_1D438078C();
    type metadata accessor for Key(0);
    sub_1D417E038(&qword_1EDE326C0, type metadata accessor for Key);
    v8 = sub_1D4419B54();

    [a5 addAttributes:v8 range:{a2, a3}];
    goto LABEL_8;
  }

  if (![v9 ic_hasSymbolicBoldTrait])
  {

    goto LABEL_7;
  }

  sub_1D4380610();
  type metadata accessor for Key(0);
  sub_1D417E038(&qword_1EDE326C0, type metadata accessor for Key);
  v8 = sub_1D4419B54();

  [a5 addAttributes:v8 range:{a2, a3}];

LABEL_8:
}

unint64_t sub_1D4380610()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CAE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D44364A0;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69DDD80];
  v4 = *MEMORY[0x1E69DDC30];
  v5 = v1;
  v6 = [v2 ic:v3 preferredFontForStyle:2 symbolicTraits:v4 maxContentSizeCategory:?];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB800);
  *(inited + 40) = v6;
  v8 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 labelColor];
  *(inited + 104) = sub_1D41766C0(0, &qword_1EDE32418);
  *(inited + 80) = v11;
  v12 = sub_1D42EABA8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CAE60);
  swift_arrayDestroy();
  return v12;
}

unint64_t sub_1D438078C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CAE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D44364A0;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69DDD80];
  v4 = *MEMORY[0x1E69DDC30];
  v5 = v1;
  v6 = [v2 ic:v3 preferredFontForTextStyle:v4 maxContentSizeCategory:?];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB800);
  *(inited + 40) = v6;
  v8 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 labelColor];
  *(inited + 104) = sub_1D41766C0(0, &qword_1EDE32418);
  *(inited + 80) = v11;
  v12 = sub_1D42EABA8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CAE60);
  swift_arrayDestroy();
  return v12;
}

uint64_t ICActivityStreamDigest.Summary.formattedText.getter()
{
  v0 = sub_1D4417014();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  result = ICActivityStreamDigest.Summary.formattedString.getter();
  if (result)
  {
    v11 = result;
    swift_getKeyPath();
    sub_1D4416F74();
    sub_1D417E038(&qword_1EC7CB7F0, MEMORY[0x1E69DBE88]);
    v12 = v11;
    sub_1D4417024();
    sub_1D4380E38();
    sub_1D4380E8C();
    sub_1D4416FD4();
    v13 = *(v1 + 8);
    v13(v7, v0);
    (*(v1 + 16))(v4, v9, v0);
    v14 = sub_1D4418F74();

    v13(v9, v0);
    return v14;
  }

  return result;
}

uint64_t sub_1D4380CAC@<X0>(uint64_t *a1@<X8>)
{
  sub_1D4416F84();
  result = sub_1D4416F74();
  *a1 = result;
  return result;
}

id sub_1D4380CDC(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) objc:a1 initWithObject:v5 error:?];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_1D4417104();

    swift_willThrow();
  }

  return v1;
}

void sub_1D4380D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D441A504();
  v9 = *(v4 + 16);

  sub_1D438043C(a1, a2, a3, a4, v9);
}

unint64_t sub_1D4380E38()
{
  result = qword_1EDE338E0;
  if (!qword_1EDE338E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE338E0);
  }

  return result;
}

unint64_t sub_1D4380E8C()
{
  result = qword_1EDE338D8;
  if (!qword_1EDE338D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE338D8);
  }

  return result;
}

uint64_t NotePreview.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NotePreview.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NotePreview.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NotePreview.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *NotePreview.chrome.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_1D43810C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v67 = a5;
  v78 = a4;
  v76 = a2;
  v7 = sub_1D441AA34();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB788);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v68 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v63 - v15;
  v17 = 0x1E69DC000uLL;
  v77 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  v19 = (*a3 + OBJC_IVAR___ICThumbnailKey_objectId);
  v20 = v19[1];
  v66 = *v19;
  v21 = type metadata accessor for PersistedThumbnail();
  v22 = (a3 + *(v21 + 24));
  v24 = *v22;
  v23 = v22[1];
  v65 = v24;
  v79 = v23;
  v75 = a1;
  sub_1D4381BE4(a1, v16);
  v25 = *(v21 - 8);
  v26 = *(v25 + 48);
  v72 = v25 + 48;
  v73 = v26;
  v27 = v26(v16, 1, v21);
  v74 = v20;
  if (v27 == 1)
  {

    sub_1D4381C54(v16);
  }

  else
  {
    v63 = v12;
    v64 = a3;
    v28 = *&v16[*(v21 + 28)];
    v29 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

    v30 = sub_1D4417254();
    v31 = [v29 initWithData:v30 scale:v28];

    sub_1D4381CBC(v16);
    if (v31)
    {
      v32 = v31;

      v33 = v68;
      sub_1D4381BE4(v76, v68);
      if (v73(v33, 1, v21) == 1)
      {

        sub_1D4381C54(v33);
        v77 = v32;
        v12 = v63;
        a3 = v64;
        v17 = 0x1E69DC000;
      }

      else
      {
        v34 = *(v33 + *(v21 + 28));
        v17 = 0x1E69DC000uLL;
        v35 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
        v36 = sub_1D4417254();
        v37 = [v35 &selRef:v36 SBUISA:v34systemApertureLegibleContentLayoutMarginsGuide + 5];

        sub_1D4381CBC(v33);
        v12 = v63;
        if (v37)
        {
          v38 = [v32 imageAsset];

          a3 = v64;
          if (v38)
          {
            v39 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
            [v38 registerImage:v37 withTraitCollection:v39];
          }

          v77 = v32;
        }

        else
        {

          v77 = v32;
          a3 = v64;
        }
      }
    }

    else
    {
      v12 = v63;
      a3 = v64;
      v17 = 0x1E69DC000;
    }
  }

  v40 = *(a3 + *(v21 + 28));
  v41 = objc_allocWithZone(*(v17 + 2744));
  v42 = sub_1D4417254();
  v43 = [v41 initWithData:v42 scale:v40];

  if (!v43)
  {
    v45 = v18;
LABEL_22:
    v57 = v69;
    sub_1D441AA24();
    v58 = sub_1D441AA44();
    swift_allocError();
    v60 = v59;
    v62 = v70;
    v61 = v71;
    (*(v70 + 16))(v59, v57, v71);
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69E6B00], v58);
    swift_willThrow();
    sub_1D4381C54(v78);
    sub_1D4381C54(v76);
    sub_1D4381C54(v75);
    (*(v62 + 8))(v57, v61);
    sub_1D4381CBC(a3);
  }

  v44 = v43;

  sub_1D4381BE4(v78, v12);
  if (v73(v12, 1, v21) == 1)
  {

    sub_1D4381C54(v12);
LABEL_21:
    v45 = v44;
    goto LABEL_22;
  }

  v46 = *&v12[*(v21 + 28)];
  v47 = objc_allocWithZone(*(v17 + 2744));
  v48 = sub_1D4417254();
  v49 = [v47 initWithData:v48 scale:v46];

  sub_1D4381CBC(v12);
  if (!v49)
  {

    goto LABEL_21;
  }

  v50 = [v44 imageAsset];

  v51 = v74;
  if (v50)
  {
    v52 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    [v50 registerImage:v49 withTraitCollection:v52];
  }

  sub_1D4381C54(v78);
  sub_1D4381C54(v76);
  sub_1D4381C54(v75);
  result = sub_1D4381CBC(a3);
  *&v55 = v65;
  *&v54 = v66;
  *(&v54 + 1) = v51;
  *(&v55 + 1) = v79;
  v56 = v67;
  *v67 = v54;
  v56[1] = v55;
  *(v56 + 4) = v77;
  *(v56 + 5) = v44;
  return result;
}

unint64_t sub_1D43817DC()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4435D20;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001D4451AA0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B60);
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x80000001D4451AC0;
  *(inited + 96) = v4;
  *(inited + 104) = v3;
  *(inited + 120) = v8;
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001D4451AE0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB780);
  *(inited + 144) = v6;
  *(inited + 168) = v9;
  *(inited + 176) = 0xD000000000000017;
  *(inited + 184) = 0x80000001D4451B00;
  *(inited + 216) = sub_1D41766C0(0, &qword_1EC7CB810);
  *(inited + 192) = v5;
  v10 = v6;
  v11 = v5;

  v12 = sub_1D42EA814(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CB710);
  swift_arrayDestroy();
  return v12;
}

uint64_t _s7NotesUI11NotePreviewV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  if (v3)
  {
    if (!v7 || (*a1 != *a2 || v3 != v7) && (sub_1D441AD84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v8 || v5 != v9) && (sub_1D441AD84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (v10)
    {
      sub_1D41766C0(0, &qword_1EC7CB810);
      v11 = v10;
      v12 = v6;
      v13 = sub_1D441A5E4();

      if (v13)
      {
        goto LABEL_18;
      }
    }
  }

  else if (!v10)
  {
LABEL_18:
    sub_1D41766C0(0, &qword_1EDE323E0);
    return sub_1D441A5E4() & 1;
  }

  return 0;
}

unint64_t sub_1D4381AC4()
{
  result = qword_1EC7CB808;
  if (!qword_1EC7CB808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C9B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB808);
  }

  return result;
}

uint64_t sub_1D4381B40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D4381B88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D4381BE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4381C54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4381CBC(uint64_t a1)
{
  v2 = type metadata accessor for PersistedThumbnail();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static UITraitCollection.traitsAffectingSize.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB818);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D4435D30;
  v1 = sub_1D44181E4();
  v2 = MEMORY[0x1E69DC130];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_1D44181C4();
  v4 = MEMORY[0x1E69DC0C8];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_1D44181F4();
  v6 = MEMORY[0x1E69DC2B0];
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

uint64_t sub_1D4381DA4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_1D42D73C8(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_0(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_1D419FAA8(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D43CF254(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1D43CF254((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = sub_1D419FAA8(v15, v9 + 40 * v13 + 32);
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_1D4381F1C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ActivityStream.Item(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1D43887F0(a3 + v15 + v16 * v13, v12, type metadata accessor for ActivityStream.Item);
      v17 = a1(v12);
      if (v3)
      {
        sub_1D4388858(v12, type metadata accessor for ActivityStream.Item);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_1D4388788(v12, v24, type metadata accessor for ActivityStream.Item);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D43CF294(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D43CF294(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_1D4388788(v24, v14 + v15 + v20 * v16, type metadata accessor for ActivityStream.Item);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_1D4388858(v12, type metadata accessor for ActivityStream.Item);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t ActivityStream.init(items:resolver:now:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB820);
  v8 = MEMORY[0x1EEE9AC00](v62);
  v60 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v51 - v10;
  v11 = type metadata accessor for ActivityStream.Section(0);
  v59 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = a2;
  v67 = a3;
  v14 = 0;
  v15 = sub_1D4381DA4(sub_1D4388700, v65, a1);
  KeyPath = swift_getKeyPath();
  v17 = sub_1D4382CA8(v15, KeyPath, sub_1D43888E0);
  v18 = sub_1D4383E80(v17, sub_1D4382748, 0);
  v63 = a2;
  v19 = sub_1D43882A8(v18, v63);

  v20 = *(v19 + 16);
  if (v20)
  {
    v51 = 0;
    v52 = a4;
    v53 = a3;
    v68 = MEMORY[0x1E69E7CC0];
    sub_1D43CF1F0(0, v20, 0);
    v21 = v68;
    v14 = v19 + 64;
    v22 = sub_1D441A824();
    v23 = 0;
    v56 = *(v19 + 36);
    v24 = *(v19 + 32);
    v54 = v19 + 72;
    v55 = v20;
    v57 = (v19 + 64);
    v58 = v19;
    while ((v22 & 0x8000000000000000) == 0 && v22 < 1 << v24)
    {
      v27 = v22 >> 6;
      if ((*(v14 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
      {
        goto LABEL_23;
      }

      v64 = v23;
      v28 = *(v19 + 48);
      v29 = sub_1D4417434();
      v30 = v21;
      v31 = v13;
      v32 = *(v29 - 8);
      v33 = v61;
      (*(v32 + 16))(v61, v28 + *(v32 + 72) * v22, v29);
      v34 = *(*(v19 + 56) + 8 * v22);
      v35 = v60;
      (*(v32 + 32))(v60, v33, v29);
      v13 = v31;
      v21 = v30;
      *(v35 + *(v62 + 48)) = v34;

      sub_1D438349C(v35, v34, v63, v13);
      sub_1D4388720(v35);
      v68 = v30;
      v14 = v30[2];
      v36 = v30[3];
      if (v14 >= v36 >> 1)
      {
        sub_1D43CF1F0(v36 > 1, v14 + 1, 1);
        v21 = v68;
      }

      v21[2] = v14 + 1;
      sub_1D4388788(v13, v21 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v14, type metadata accessor for ActivityStream.Section);
      v19 = v58;
      v24 = *(v58 + 32);
      v25 = 1 << v24;
      if (v22 >= 1 << v24)
      {
        goto LABEL_24;
      }

      v14 = v57;
      v37 = v57[v27];
      if ((v37 & (1 << v22)) == 0)
      {
        goto LABEL_25;
      }

      if (v56 != *(v58 + 36))
      {
        goto LABEL_26;
      }

      v38 = v37 & (-2 << (v22 & 0x3F));
      if (v38)
      {
        v25 = __clz(__rbit64(v38)) | v22 & 0x7FFFFFFFFFFFFFC0;
        v26 = v55;
      }

      else
      {
        v39 = v27 << 6;
        v40 = v27 + 1;
        v26 = v55;
        v41 = (v54 + 8 * v27);
        while (v40 < (v25 + 63) >> 6)
        {
          v43 = *v41++;
          v42 = v43;
          v39 += 64;
          ++v40;
          if (v43)
          {
            v25 = __clz(__rbit64(v42)) + v39;
            break;
          }
        }
      }

      v22 = v25;
      v23 = v64 + 1;
      if (v64 + 1 == v26)
      {

        a4 = v52;
        a3 = v53;
        v14 = v51;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v68 = v21;

    sub_1D43841E4(&v68);
    if (!v14)
    {

      v44 = v68;
      v45 = type metadata accessor for ActivityStream(0);
      v46 = *(v45 + 20);
      v47 = sub_1D4417434();
      v48 = *(v47 - 8);
      (*(v48 + 56))(a4 + v46, 1, 1, v47);
      *a4 = v44;
      v49 = (a4 + *(v45 + 24));
      *v49 = 0u;
      v49[1] = 0u;
      return (*(v48 + 8))(a3, v47);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D4382748(void *a1)
{
  v2 = sub_1D4417434();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D4417544();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4417514();
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 24))(v10, v11);
  sub_1D44174C4();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D43828FC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    v7 = *(a1 + 16);
    do
    {
      sub_1D42D73C8(v5, &v30);
      v8 = v31;
      v9 = v32;
      __swift_project_boxed_opaque_existential_1(&v30, v31);
      (*(v9 + 72))(v29, a2, v8, v9);
      if (LOBYTE(v29[0]) == 1)
      {
        sub_1D419FAA8(&v30, v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D43CF254(0, *(v6 + 16) + 1, 1);
          v6 = v33;
        }

        v12 = *(v6 + 16);
        v11 = *(v6 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1D43CF254((v11 > 1), v12 + 1, 1);
          v6 = v33;
        }

        *(v6 + 16) = v12 + 1;
        sub_1D419FAA8(v29, v6 + 40 * v12 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v30);
      }

      v5 += 40;
      --v7;
    }

    while (v7);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  KeyPath = swift_getKeyPath();
  v28 = sub_1D4382CA8(v6, KeyPath, sub_1D4388C8C);
  v14 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v15 = a1 + 32;
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D42D73C8(v15, &v30);
      v17 = v31;
      v18 = v32;
      __swift_project_boxed_opaque_existential_1(&v30, v31);
      (*(v18 + 72))(v29, a2, v17, v18);
      if (v29[0])
      {
        __swift_destroy_boxed_opaque_existential_0(&v30);
      }

      else
      {
        sub_1D419FAA8(&v30, v29);
        v19 = swift_isUniquelyReferenced_nonNull_native();
        v33 = v16;
        if ((v19 & 1) == 0)
        {
          sub_1D43CF254(0, *(v16 + 16) + 1, 1);
          v16 = v33;
        }

        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D43CF254((v20 > 1), v21 + 1, 1);
          v16 = v33;
        }

        *(v16 + 16) = v21 + 1;
        sub_1D419FAA8(v29, v16 + 40 * v21 + 32);
      }

      v15 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  *&v30 = v28;
  sub_1D42F001C(v16);
  v22 = v30;
  swift_getKeyPath();
  *&v30 = v22;

  sub_1D43842C8(sub_1D4388520, 0);

  v23 = v30;
  *&v29[0] = v14;
  v24 = *(v30 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = v30 + 32;
    while (v25 < *(v23 + 16))
    {
      sub_1D42D73C8(v26, &v30);
      sub_1D4382FC4(v29, &v30, a2, &v33);
      ++v25;
      __swift_destroy_boxed_opaque_existential_0(&v30);

      v14 = v33;
      *&v29[0] = v33;
      v26 += 40;
      if (v24 == v25)
      {
        goto LABEL_27;
      }
    }

    __break(1u);

    __swift_destroy_boxed_opaque_existential_0(&v30);

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_27:

    return v14;
  }

  return result;
}

uint64_t sub_1D4382CA8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, __int128 *))
{
  v4 = a1;
  v5 = *(a1 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  result = sub_1D43CF234(0, v5, 0);
  v7 = v36;
  if (v5)
  {
    v3 = 0;
    v30 = *(v4 + 16);
    v8 = v4 + 32;
    while (v30 != v3)
    {
      if (v3 >= *(v4 + 16))
      {
        goto LABEL_26;
      }

      v9 = v4;
      sub_1D42D73C8(v8, &v33);
      result = swift_getAtKeyPath();
      v36 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_1D43CF234((v10 > 1), v11 + 1, 1);
        v7 = v36;
      }

      v3 = (v3 + 1);
      *(v7 + 16) = v11 + 1;
      v12 = v7 + 56 * v11;
      v13 = v32;
      v14 = v33;
      v15 = v34;
      *(v12 + 80) = v35;
      *(v12 + 48) = v14;
      *(v12 + 64) = v15;
      *(v12 + 32) = v13;
      v8 += 40;
      v4 = v9;
      if (v5 == v3)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_8:
  v16 = *(v4 + 16);
  if (v5 != v16)
  {
    v3 = &v32;
    v18 = v4 + 40 * v5 + 32;
    while (v5 < v16)
    {
      sub_1D42D73C8(v18, v31);
      swift_getAtKeyPath();
      result = sub_1D419FAA8(v31, &v33);
      v36 = v7;
      v20 = *(v7 + 16);
      v19 = *(v7 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1D43CF234((v19 > 1), v20 + 1, 1);
        v7 = v36;
      }

      ++v5;
      *(v7 + 16) = v20 + 1;
      v21 = v7 + 56 * v20;
      v22 = v32;
      v23 = v33;
      v24 = v34;
      *(v21 + 80) = v35;
      *(v21 + 48) = v23;
      *(v21 + 64) = v24;
      *(v21 + 32) = v22;
      v16 = *(v4 + 16);
      v18 += 40;
      if (v5 == v16)
      {
        goto LABEL_9;
      }
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_9:

  if (*(v7 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97E8);
    v17 = sub_1D441AC24();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC8];
  }

  *&v32 = v17;
  a3(v7, 1, &v32);
  if (v28)
  {

    return v3;
  }

  v25 = v32;
  v26 = *(v32 + 16);
  if (!v26)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1D438DAEC(*(v32 + 16), 0);
  v27 = sub_1D43C189C(&v32, (v3 + 2), v26, v25);
  result = sub_1D419FA48();
  if (v27 == v26)
  {

    return v3;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D4382FC4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, unint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 72))(v36, a3, v9, v10);
  if (v36[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB830);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D4435D40;
    sub_1D42D73C8(a2, v11 + 32);
    v36[0] = v11;

    result = sub_1D42F001C(v12);
    goto LABEL_38;
  }

  v14 = *(v8 + 16);
  v34 = a4;
  if (!v14)
  {
    v4 = 0;
    v19 = v39;
    goto LABEL_14;
  }

  a4 = 0;
  v15 = v8 + 32;
  v33 = (v8 + 32);
  do
  {
    if (a4 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    sub_1D42D73C8(v15, v36);
    v4 = v37;
    v16 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    (*(v16 + 72))(v35, a3, v4, v16);
    LODWORD(v16) = LOBYTE(v35[0]);
    __swift_destroy_boxed_opaque_existential_0(v36);
    if (v16 == 1)
    {
      goto LABEL_9;
    }

    ++a4;
    v15 += 40;
  }

  while (v14 != a4);
  a4 = v14;
LABEL_9:
  v4 = *(v8 + 16);
  if (v4 < a4)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v4 != a4)
  {
    sub_1D43FCFBC(v8, v33, 0, (2 * a4) | 1);
    a3 = v17;
    v18 = *(v17 + 16);
    v4 = *(v8 + 16);
    v19 = v39;
    a4 = v34;
    goto LABEL_15;
  }

  v19 = v39;
  a4 = v34;
LABEL_14:

  v18 = v4;
  a3 = v8;
LABEL_15:
  v33 = &v31;
  if (v4 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v4;
  }

  if (v18)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v32 = v21;
  MEMORY[0x1EEE9AC00](v17);

  v22 = a3[2];
  v14 = 0;
  if (v22)
  {
    v23 = a3 + 4;
    while (1)
    {
      v24 = sub_1D43888C0(v23);
      if (v19)
      {
        break;
      }

      if (v24)
      {
        goto LABEL_27;
      }

      ++v14;
      v23 += 5;
      if (v22 == v14)
      {
        v14 = 0;
LABEL_27:
        v25 = v24 ^ 1;
        a4 = v34;
        goto LABEL_29;
      }
    }

    v39 = v19;
    a4 = v34;
  }

  else
  {
    v25 = 1;
LABEL_29:
    v39 = v19;
    LOBYTE(v22) = v25 & 1;
  }

  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB830);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D4435D40;
    sub_1D42D73C8(a2, v26 + 32);
    v36[0] = v26;

    sub_1D42F001C(v27);

    result = swift_unknownObjectRelease();
    goto LABEL_38;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
  }

  else if (v14 < a3[2])
  {
    sub_1D42D73C8(&a3[5 * v14 + 4], v36);
    v28 = v37;
    v29 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    (*(v29 + 48))(v35, a2, v28, v29);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_36;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_43:
  result = sub_1D43E7D00(a3);
  a3 = result;
LABEL_36:
  if (v14 >= a3[2])
  {
    __break(1u);
  }

  else
  {
    v30 = &a3[5 * v14];
    __swift_destroy_boxed_opaque_existential_0((v30 + 4));
    sub_1D419FAA8(v35, (v30 + 4));
    __swift_destroy_boxed_opaque_existential_0(v36);
    v36[0] = a3;
    result = sub_1D42F0164(v8, v8 + 32, v32, (2 * v4) | 1);
LABEL_38:
    *a4 = v36[0];
  }

  return result;
}

uint64_t sub_1D43833B0(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 32))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 32))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D441AD84();
  }

  return v12 & 1;
}

double sub_1D438349C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v45 = a1;
  v7 = sub_1D4417394();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActivityStream.Item(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a2 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v41 = a4;
    v52 = MEMORY[0x1E69E7CC0];
    v15 = a3;
    sub_1D43CF294(0, v13, 0);
    v16 = a2 + 32;
    v14 = v52;
    v46 = OBJC_IVAR___ActivityEventResolver_itemCache;
    do
    {
      sub_1D42D73C8(v16, v49);
      v17 = v50;
      v18 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      if ((*(v18 + 56))(v17, v18))
      {
        v20 = v50;
        v19 = v51;
        __swift_project_boxed_opaque_existential_1(v49, v50);
        v21 = (*(v19 + 8))(v20, v19);
        v22 = MEMORY[0x1EEE9AC00](v21);
        *(&v40 - 2) = v49;
        *(&v40 - 1) = v15;
        v47 = v22;
        v48 = v23;
        sub_1D4417D34();
      }

      else
      {
        v24 = v50;
        v25 = v51;
        __swift_project_boxed_opaque_existential_1(v49, v50);
        ActivityStreamItemConvertible.activityItem(resolver:)(v15, v24, v25, v12);
      }

      __swift_destroy_boxed_opaque_existential_0(v49);
      v52 = v14;
      v27 = v14[2];
      v26 = v14[3];
      if (v27 >= v26 >> 1)
      {
        sub_1D43CF294(v26 > 1, v27 + 1, 1);
        v14 = v52;
      }

      v14[2] = v27 + 1;
      sub_1D4388788(v12, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v27, type metadata accessor for ActivityStream.Item);
      v16 += 40;
      --v13;
    }

    while (v13);

    a4 = v41;
  }

  v49[0] = v14;

  sub_1D438434C(v49);

  v28 = v49[0];
  v29 = v42;
  sub_1D43838DC(v42);
  v30 = v45;
  v31 = sub_1D4417334();
  v33 = v32;
  (*(v43 + 8))(v29, v44);
  v34 = type metadata accessor for ActivityStream.Section(0);
  v35 = v34[5];
  v36 = sub_1D4417434();
  v37 = *(v36 - 8);
  (*(v37 + 16))(a4 + v35, v30, v36);
  (*(v37 + 56))(a4 + v34[8], 1, 1, v36);
  *a4 = v31;
  a4[1] = v33;
  v38 = (a4 + v34[6]);
  result = 0.0;
  *v38 = 0u;
  v38[1] = 0u;
  *(a4 + v34[7]) = 0;
  *(a4 + v34[9]) = v28;
  return result;
}

uint64_t sub_1D43838DC@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABB8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v29 = &v24 - v2;
  v28 = sub_1D44175E4();
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D4417384();
  v5 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D4417364();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D4417344();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D4417354();
  MEMORY[0x1EEE9AC00](v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6969360]);
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, *MEMORY[0x1E6969358], v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, *MEMORY[0x1E6969370], v8);
  (*(v5 + 104))(v21, *MEMORY[0x1E6969380], v27);
  sub_1D44175C4();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return sub_1D4417374();
  }

  return result;
}

uint64_t sub_1D4383CE0(void *a1, uint64_t a2)
{
  v4 = sub_1D4417434();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  if ((*(v9 + 64))(a2, v8, v9))
  {
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    (*(v11 + 24))(v10, v11);
    sub_1D438912C(&qword_1EC7CB840);
    v12 = sub_1D4419BD4();
    (*(v5 + 8))(v7, v4);
    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1D4383E80(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v41 = sub_1D4417434();
  MEMORY[0x1EEE9AC00](v41);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7CC8];
  v45 = MEMORY[0x1E69E7CC8];
  v40 = *(a1 + 16);
  if (v40)
  {
    v12 = 0;
    v13 = a1 + 32;
    v35 = v8 + 32;
    v36 = v8;
    v34 = (v8 + 8);
    v33 = xmmword_1D4435D40;
    v37 = a2;
    v38 = a3;
    v39 = a1;
    while (v12 < *(a1 + 16))
    {
      sub_1D42D73C8(v13, v44);
      a2(v44);
      if (v4)
      {
        __swift_destroy_boxed_opaque_existential_0(v44);

        goto LABEL_19;
      }

      v42 = 0;
      v14 = v10;
      v16 = sub_1D42D0424(v10);
      v17 = v11[2];
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        goto LABEL_21;
      }

      v20 = v15;
      if (v11[3] < v19)
      {
        sub_1D42D245C(v19, 1);
        v11 = v45;
        v21 = sub_1D42D0424(v14);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_23;
        }

        v16 = v21;
      }

      if (v20)
      {
        (*v34)(v14, v41);
        v23 = v11[7];
        sub_1D419FAA8(v44, v43);
        v24 = *(v23 + 8 * v16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v23 + 8 * v16) = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_1D438D3E4(0, v24[2] + 1, 1, v24);
          *(v23 + 8 * v16) = v24;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          v24 = sub_1D438D3E4((v26 > 1), v27 + 1, 1, v24);
          *(v23 + 8 * v16) = v24;
        }

        a1 = v39;
        v24[2] = v27 + 1;
        sub_1D419FAA8(v43, &v24[5 * v27 + 4]);
        a2 = v37;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB830);
        v28 = swift_allocObject();
        *(v28 + 16) = v33;
        sub_1D419FAA8(v44, v28 + 32);
        v11[(v16 >> 6) + 8] |= 1 << v16;
        (*(v36 + 32))(v11[6] + *(v36 + 72) * v16, v14, v41);
        *(v11[7] + 8 * v16) = v28;
        v29 = v11[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_22;
        }

        v11[2] = v31;
      }

      ++v12;
      v13 += 40;
      v10 = v14;
      v4 = v42;
      if (v40 == v12)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_1D441ADE4();
    __break(1u);
  }

  else
  {
LABEL_19:

    return v11;
  }

  return result;
}

uint64_t sub_1D43841E4(void **a1)
{
  v2 = *(type metadata accessor for ActivityStream.Section(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D43886C4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D4384548(v6, type metadata accessor for ActivityStream.Section, sub_1D4385044, sub_1D4384698);
  *a1 = v3;
  return result;
}

uint64_t sub_1D43842C8(uint64_t (*a1)(__int128 *, _BYTE *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D43886D8(v5);
  }

  result = sub_1D4384430(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_1D438434C(void **a1)
{
  v2 = *(type metadata accessor for ActivityStream.Item(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D43886EC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D4384548(v6, type metadata accessor for ActivityStream.Item, sub_1D438605C, sub_1D4384A0C);
  *a1 = v3;
  return result;
}

uint64_t sub_1D4384430(uint64_t (*a1)(__int128 *, _BYTE *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_1D441AD34();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B48);
        v8 = sub_1D4419EA4();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_1D4385970(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1D43848E0(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1D4384548(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1D441AD34();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1D4419EA4();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_1D4384698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for ActivityStream.Section(0);
  v8 = MEMORY[0x1EEE9AC00](v34);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_1D43887F0(v23, v17, type metadata accessor for ActivityStream.Section);
      sub_1D43887F0(v20, v13, type metadata accessor for ActivityStream.Section);
      v24 = sub_1D44173B4();
      sub_1D4388858(v13, type metadata accessor for ActivityStream.Section);
      result = sub_1D4388858(v17, type metadata accessor for ActivityStream.Section);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_1D4388788(v23, v10, type metadata accessor for ActivityStream.Section);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D4388788(v10, v20, type metadata accessor for ActivityStream.Section);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D43848E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, _BYTE *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = *v4 + 40 * a3;
    v10 = result - a3;
LABEL_4:
    v15 = v10;
    v18 = v9;
    while (1)
    {
      sub_1D42D73C8(v9, v17);
      sub_1D42D73C8(v9 - 40, v16);
      v11 = a4(v17, v16);
      __swift_destroy_boxed_opaque_existential_0(v16);
      result = __swift_destroy_boxed_opaque_existential_0(v17);
      if (v5)
      {
        break;
      }

      if (v11)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        sub_1D419FAA8(v9, v17);
        v12 = *(v9 - 24);
        *v9 = *(v9 - 40);
        *(v9 + 16) = v12;
        *(v9 + 32) = *(v9 - 8);
        result = sub_1D419FAA8(v17, v9 - 40);
        v9 -= 40;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v18 + 40;
      v10 = v15 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1D4384A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v67 = sub_1D44188B4();
  v8 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v74 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActivityStream.Item(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v70 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v56 - v15);
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v56 - v18);
  v58 = a2;
  if (a3 != a2)
  {
    v20 = result;
    v21 = *a4;
    v73 = sub_1D4417434();
    v22 = *(v11 + 72);
    v66 = (v8 + 8);
    v23 = v21 + v22 * (a3 - 1);
    v68 = -v22;
    v69 = v21;
    v24 = a1 - a3;
    v57 = v22;
    v25 = v21 + v22 * a3;
    v64 = v16;
    v65 = v20;
    v63 = v19;
LABEL_6:
    v61 = v23;
    v62 = a3;
    v59 = v25;
    v60 = v24;
    v26 = v24;
    v27 = v74;
    while (1)
    {
      v75 = v26;
      sub_1D43887F0(v25, v19, type metadata accessor for ActivityStream.Item);
      sub_1D43887F0(v23, v16, type metadata accessor for ActivityStream.Item);
      sub_1D438912C(&qword_1EC7C9800);
      if ((sub_1D4419BE4() & 1) == 0)
      {
        break;
      }

      sub_1D44188A4();
      v71 = sub_1D4418ED4();
      v72 = v28;
      v29 = *v66;
      v30 = v27;
      v31 = v67;
      (*v66)(v30, v67);
      sub_1D44188A4();
      v32 = v31;
      v27 = v74;
      v33 = sub_1D4418ED4();
      v35 = v34;
      v36 = v32;
      v37 = v71;
      v29(v27, v36);
      v38 = v37 == v33 && v72 == v35;
      if (!v38 && (sub_1D441AD84() & 1) == 0)
      {
        v51 = sub_1D441AD84();

        v16 = v64;
        v19 = v63;
        goto LABEL_26;
      }

      v19 = v63;
      v39 = v63 + *(v65 + 32);
      if (!*(v39 + 3))
      {
        goto LABEL_22;
      }

      v40 = *(v39 + 4);
      sub_1D44188A4();
      v77 = v40 & 1;
      v41 = v65;
      v42 = sub_1D4418ED4();
      v44 = v43;
      v29(v27, v67);
      v45 = v64 + *(v41 + 32);
      if (!*(v45 + 3))
      {
        goto LABEL_21;
      }

      v72 = v29;
      v46 = *(v45 + 4);
      v71 = *(v45 + 1);
      sub_1D44188A4();
      v76 = v46 & 1;
      v47 = sub_1D4418ED4();
      v49 = v48;
      v72(v27, v67);
      if (v42 == v47 && v44 == v49 || (sub_1D441AD84() & 1) != 0)
      {

LABEL_21:

LABEL_22:
        v16 = v64;
        if (*v19 == *v64 && v19[1] == v64[1])
        {
          sub_1D4388858(v64, type metadata accessor for ActivityStream.Item);
          result = sub_1D4388858(v19, type metadata accessor for ActivityStream.Item);
LABEL_5:
          a3 = v62 + 1;
          v23 = v61 + v57;
          v24 = v60 - 1;
          v25 = v59 + v57;
          if (v62 + 1 == v58)
          {
            return result;
          }

          goto LABEL_6;
        }

        v50 = sub_1D441AD84();
LABEL_25:
        v51 = v50;
        goto LABEL_26;
      }

      v51 = sub_1D441AD84();

      v16 = v64;
LABEL_26:
      sub_1D4388858(v16, type metadata accessor for ActivityStream.Item);
      result = sub_1D4388858(v19, type metadata accessor for ActivityStream.Item);
      if ((v51 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v69)
      {
        __break(1u);
        return result;
      }

      v52 = v70;
      sub_1D4388788(v25, v70, type metadata accessor for ActivityStream.Item);
      swift_arrayInitWithTakeFrontToBack();
      v53 = v52;
      v54 = v75;
      result = sub_1D4388788(v53, v23, type metadata accessor for ActivityStream.Item);
      v23 += v68;
      v25 += v68;
      v55 = __CFADD__(v54, 1);
      v26 = v54 + 1;
      if (v55)
      {
        goto LABEL_5;
      }
    }

    v50 = sub_1D44173B4();
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1D4385044(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for ActivityStream.Section(0);
  v112 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v115 = &v100 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v116 = &v100 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_1D43880A8(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_1D438724C(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1D43880A8(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_1D438801C(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_1D43887F0(v110 + v24 * v23, v18, type metadata accessor for ActivityStream.Section);
      v26 = v25 + v24 * v20;
      v27 = v116;
      sub_1D43887F0(v26, v116, type metadata accessor for ActivityStream.Section);
      LODWORD(v111) = sub_1D44173B4();
      sub_1D4388858(v27, type metadata accessor for ActivityStream.Section);
      result = sub_1D4388858(v18, type metadata accessor for ActivityStream.Section);
      v102 = v20;
      v28 = v20 + 2;
      v113 = v24;
      v29 = v110 + v24 * (v20 + 2);
      while (v19 != v28)
      {
        sub_1D43887F0(v29, v18, type metadata accessor for ActivityStream.Section);
        v30 = v116;
        sub_1D43887F0(v5, v116, type metadata accessor for ActivityStream.Section);
        v31 = sub_1D44173B4() & 1;
        sub_1D4388858(v30, type metadata accessor for ActivityStream.Section);
        result = sub_1D4388858(v18, type metadata accessor for ActivityStream.Section);
        ++v28;
        v29 += v113;
        v5 += v113;
        if ((v111 & 1) != v31)
        {
          v19 = v28 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v32 = v113 * (v19 - 1);
          v33 = v19;
          v34 = v19 * v113;
          v111 = v19;
          v35 = v102;
          v36 = v102;
          v37 = v102 * v113;
          do
          {
            if (v35 != --v33)
            {
              v38 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v38 + v37;
              sub_1D4388788(v38 + v37, v107, type metadata accessor for ActivityStream.Section);
              if (v37 < v32 || v5 >= v38 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1D4388788(v107, v38 + v32, type metadata accessor for ActivityStream.Section);
            }

            ++v35;
            v32 -= v113;
            v34 -= v113;
            v37 += v113;
          }

          while (v35 < v33);
          v6 = v101;
          a4 = v103;
          v22 = v36;
          v19 = v111;
        }
      }
    }

    v39 = v114[1];
    if (v19 < v39)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v39)
        {
          v40 = v114[1];
        }

        else
        {
          v40 = v22 + a4;
        }

        if (v40 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v40)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_1D438CD68(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v41 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      result = sub_1D438CD68((v41 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v42 = &v21[16 * a4];
    *(v42 + 4) = v22;
    *(v42 + 5) = v20;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v21 + 4);
          v46 = *(v21 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v21[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v21[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v21[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v21[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v82 = v21;
        v83 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v44 + 40];
        sub_1D438724C(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v21[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1D43880A8(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v118 = v82;
        result = sub_1D438801C(v44);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v21[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v21[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v21[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = v19;
  v86 = v22;
  v87 = *v114;
  v88 = *(v112 + 72);
  v89 = *v114 + v88 * (v19 - 1);
  v90 = -v88;
  v102 = v86;
  v91 = v86 - v19;
  v111 = v85;
  v105 = v88;
  v106 = v40;
  v5 = v87 + v85 * v88;
LABEL_85:
  v109 = v5;
  v110 = v91;
  v113 = v89;
  while (1)
  {
    a4 = type metadata accessor for ActivityStream.Section;
    sub_1D43887F0(v5, v18, type metadata accessor for ActivityStream.Section);
    v92 = v116;
    sub_1D43887F0(v89, v116, type metadata accessor for ActivityStream.Section);
    v93 = sub_1D44173B4();
    sub_1D4388858(v92, type metadata accessor for ActivityStream.Section);
    result = sub_1D4388858(v18, type metadata accessor for ActivityStream.Section);
    if ((v93 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v89 = v113 + v105;
      v91 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v87)
    {
      break;
    }

    a4 = type metadata accessor for ActivityStream.Section;
    v94 = v115;
    sub_1D4388788(v5, v115, type metadata accessor for ActivityStream.Section);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D4388788(v94, v89, type metadata accessor for ActivityStream.Section);
    v89 += v90;
    v5 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1D4385970(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(__int128 *, _BYTE *), uint64_t a5, uint64_t a6)
{
  v7 = a3;
  v101 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v8 = *v101;
    if (*v101)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_95;
    }

    goto LABEL_134;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v13 = *v7;
      sub_1D42D73C8(*v7 + 40 * v12, v106);
      sub_1D42D73C8(v13 + 40 * v11, v105);
      v14 = a4(v106, v105);
      if (v6)
      {
LABEL_105:
        __swift_destroy_boxed_opaque_existential_0(v105);
        __swift_destroy_boxed_opaque_existential_0(v106);
      }

      v15 = v14;
      __swift_destroy_boxed_opaque_existential_0(v105);
      result = __swift_destroy_boxed_opaque_existential_0(v106);
      v16 = 0;
      v17 = v11;
      v18 = v11 - v8 + 2;
      v97 = v17;
      v19 = 40 * v17;
      v20 = v13 + 40 * v17 + 80;
      do
      {
        if (!(v18 + v16))
        {
          v11 = v97;
          v22 = v8 - 1;
          if ((v15 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_13;
        }

        sub_1D42D73C8(v20, v106);
        sub_1D42D73C8(v20 - 40, v105);
        v21 = a4(v106, v105);
        __swift_destroy_boxed_opaque_existential_0(v105);
        result = __swift_destroy_boxed_opaque_existential_0(v106);
        ++v16;
        v20 += 40;
      }

      while (((v15 ^ v21) & 1) == 0);
      v11 = v97;
      v22 = v97 + v16;
      v8 = v97 + v16 + 1;
      if ((v15 & 1) == 0)
      {
LABEL_15:
        v7 = a3;
        goto LABEL_23;
      }

LABEL_13:
      if (v8 < v11)
      {
        goto LABEL_128;
      }

      if (v11 > v22)
      {
        goto LABEL_15;
      }

      v23 = 40 * v8 - 40;
      v24 = v11;
      v25 = v8;
      do
      {
        if (v24 != --v25)
        {
          v30 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          v26 = v30 + v19;
          v27 = v30 + v23;
          sub_1D419FAA8((v30 + v19), v106);
          v28 = *(v27 + 32);
          v29 = *(v27 + 16);
          *v26 = *v27;
          *(v26 + 16) = v29;
          *(v26 + 32) = v28;
          result = sub_1D419FAA8(v106, v27);
        }

        ++v24;
        v23 -= 40;
        v19 += 40;
      }

      while (v24 < v25);
      v7 = a3;
      v11 = v97;
    }

LABEL_23:
    v31 = *(v7 + 8);
    if (v8 >= v31)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v8, v11))
    {
      goto LABEL_124;
    }

    if (v8 - v11 >= a6)
    {
      goto LABEL_32;
    }

    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v11 + a6 >= v31)
    {
      v32 = *(v7 + 8);
    }

    else
    {
      v32 = v11 + a6;
    }

    if (v32 < v11)
    {
      goto LABEL_127;
    }

    if (v8 == v32)
    {
LABEL_32:
      v33 = v8;
    }

    else
    {
      v81 = *v7;
      v82 = v81 + 40 * v8;
      v98 = v11;
      v100 = v32;
      v83 = v11 - v8;
      do
      {
        v95 = v83;
        v84 = v82;
        v85 = v82;
        do
        {
          sub_1D42D73C8(v85, v106);
          sub_1D42D73C8(v85 - 40, v105);
          v86 = a4(v106, v105);
          if (v6)
          {
            goto LABEL_105;
          }

          v87 = v86;
          __swift_destroy_boxed_opaque_existential_0(v105);
          result = __swift_destroy_boxed_opaque_existential_0(v106);
          if ((v87 & 1) == 0)
          {
            break;
          }

          if (!v81)
          {
            goto LABEL_130;
          }

          sub_1D419FAA8(v85, v106);
          v88 = *(v85 - 24);
          *v85 = *(v85 - 40);
          *(v85 + 16) = v88;
          *(v85 + 32) = *(v85 - 8);
          sub_1D419FAA8(v106, v85 - 40);
          v85 -= 40;
        }

        while (!__CFADD__(v83++, 1));
        ++v8;
        v82 = v84 + 40;
        v83 = v95 - 1;
        v33 = v100;
      }

      while (v8 != v100);
      v7 = a3;
      v11 = v98;
    }

    v8 = 40;
    if (v33 < v11)
    {
      goto LABEL_123;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D438CD68(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v35 = *(v10 + 2);
    v34 = *(v10 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_1D438CD68((v34 > 1), v35 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v36;
    v37 = &v10[16 * v35];
    *(v37 + 4) = v11;
    *(v37 + 5) = v33;
    v38 = *v101;
    if (!*v101)
    {
      goto LABEL_133;
    }

    v99 = v33;
    if (v35)
    {
      break;
    }

LABEL_3:
    v8 = *(v7 + 8);
    v9 = v99;
    if (v99 >= v8)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v39 = v36 - 1;
    if (v36 >= 4)
    {
      v44 = &v10[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_110;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_111;
      }

      v51 = &v10[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_113;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_116;
      }

      if (v55 >= v47)
      {
        v73 = &v10[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_122;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

    if (v36 == 3)
    {
      v40 = *(v10 + 4);
      v41 = *(v10 + 5);
      v50 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      v43 = v50;
LABEL_53:
      if (v43)
      {
        goto LABEL_112;
      }

      v56 = &v10[16 * v36];
      v58 = *v56;
      v57 = *(v56 + 1);
      v59 = __OFSUB__(v57, v58);
      v60 = v57 - v58;
      v61 = v59;
      if (v59)
      {
        goto LABEL_115;
      }

      v62 = &v10[16 * v39 + 32];
      v64 = *v62;
      v63 = *(v62 + 1);
      v50 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v50)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v60, v65))
      {
        goto LABEL_119;
      }

      if (v60 + v65 >= v42)
      {
        if (v42 < v65)
        {
          v39 = v36 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    v66 = &v10[16 * v36];
    v68 = *v66;
    v67 = *(v66 + 1);
    v50 = __OFSUB__(v67, v68);
    v60 = v67 - v68;
    v61 = v50;
LABEL_67:
    if (v61)
    {
      goto LABEL_114;
    }

    v69 = &v10[16 * v39];
    v71 = *(v69 + 4);
    v70 = *(v69 + 5);
    v50 = __OFSUB__(v70, v71);
    v72 = v70 - v71;
    if (v50)
    {
      goto LABEL_117;
    }

    if (v72 < v60)
    {
      goto LABEL_3;
    }

LABEL_74:
    v77 = v39 - 1;
    if (v39 - 1 >= v36)
    {
      break;
    }

    if (!*v7)
    {
      goto LABEL_129;
    }

    v78 = *&v10[16 * v77 + 32];
    v79 = *&v10[16 * v39 + 40];
    sub_1D4387768((*v7 + 40 * v78), (*v7 + 40 * *&v10[16 * v39 + 32]), *v7 + 40 * v79, v38, a4, a5);
    if (v6)
    {
    }

    if (v79 < v78)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D43880A8(v10);
    }

    if (v77 >= *(v10 + 2))
    {
      goto LABEL_109;
    }

    v80 = &v10[16 * v77];
    *(v80 + 4) = v78;
    *(v80 + 5) = v79;
    v107 = v10;
    result = sub_1D438801C(v39);
    v10 = v107;
    v36 = *(v107 + 2);
    if (v36 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  result = sub_1D43880A8(v10);
  v10 = result;
LABEL_95:
  v107 = v10;
  v90 = *(v10 + 2);
  if (v90 < 2)
  {
  }

  v91 = v7;
  v7 = 40;
  while (*v91)
  {
    v92 = *&v10[16 * v90];
    v93 = *&v10[16 * v90 + 24];
    sub_1D4387768((*v91 + 40 * v92), (*v91 + 40 * *&v10[16 * v90 + 16]), *v91 + 40 * v93, v8, a4, a5);
    if (v6)
    {
    }

    if (v93 < v92)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D43880A8(v10);
    }

    if (v90 - 2 >= *(v10 + 2))
    {
      goto LABEL_121;
    }

    v94 = &v10[16 * v90];
    *v94 = v92;
    *(v94 + 1) = v93;
    v107 = v10;
    result = sub_1D438801C(v90 - 1);
    v10 = v107;
    v90 = *(v107 + 2);
    if (v90 <= 1)
    {
    }
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1D438605C(int64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v169 = a4;
  v167 = a1;
  v185 = sub_1D44188B4();
  v7 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v189 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActivityStream.Item(0);
  v177 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v171 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v188 = &v164 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v164 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v164 - v18);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v164 - v21);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v180 = (&v164 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v165 = (&v164 - v26);
  result = MEMORY[0x1EEE9AC00](v25);
  v164 = (&v164 - v28);
  v179 = a3;
  if (*(a3 + 8) < 1)
  {
    v31 = MEMORY[0x1E69E7CC0];
LABEL_141:
    v33 = *v167;
    if (!*v167)
    {
      goto LABEL_180;
    }

    a3 = v31;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
LABEL_144:
      v197 = result;
      a3 = *(result + 16);
      if (a3 >= 2)
      {
        while (*v179)
        {
          v160 = *(result + 16 * a3);
          v161 = result;
          v162 = *(result + 16 * (a3 - 1) + 40);
          sub_1D4387B1C(*v179 + *(v177 + 72) * v160, *v179 + *(v177 + 72) * *(result + 16 * (a3 - 1) + 32), *v179 + *(v177 + 72) * v162, v33);
          if (v5)
          {
          }

          if (v162 < v160)
          {
            goto LABEL_167;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v161 = sub_1D43880A8(v161);
          }

          if (a3 - 2 >= *(v161 + 2))
          {
            goto LABEL_168;
          }

          v163 = &v161[16 * a3];
          *v163 = v160;
          *(v163 + 1) = v162;
          v197 = v161;
          sub_1D438801C(a3 - 1);
          result = v197;
          a3 = *(v197 + 16);
          if (a3 <= 1)
          {
          }
        }

        goto LABEL_178;
      }
    }

LABEL_174:
    result = sub_1D43880A8(a3);
    goto LABEL_144;
  }

  v29 = *(a3 + 8);
  v30 = (v7 + 8);
  v31 = MEMORY[0x1E69E7CC0];
  v182 = v9;
  v193 = v16;
  v184 = v19;
  v178 = v22;
  v32 = v29;
  v33 = 0;
  v183 = v30;
  while (2)
  {
    v181 = v32;
    v172 = v31;
    v168 = v33;
    if (v33 + 1 >= v32)
    {
      v69 = v33 + 1;
      v70 = v169;
      goto LABEL_49;
    }

    v166 = v5;
    v34 = *(v177 + 72);
    v35 = *v179 + v34 * (v33 + 1);
    v194 = *v179;
    v195 = v35;
    v36 = v194;
    v37 = v164;
    sub_1D43887F0(v35, v164, type metadata accessor for ActivityStream.Item);
    v38 = v36 + v34 * v33;
    v39 = v165;
    sub_1D43887F0(v38, v165, type metadata accessor for ActivityStream.Item);
    LODWORD(v190) = _s7NotesUI14ActivityStreamV4ItemV1loiySbAE_AEtFZ_0(v37, v39);
    sub_1D4388858(v39, type metadata accessor for ActivityStream.Item);
    result = sub_1D4388858(v37, type metadata accessor for ActivityStream.Item);
    a3 = v33 + 2;
    v40 = v195;
    v192 = v34;
    v41 = v194 + v34 * a3;
    do
    {
      if (v181 == a3)
      {
        v69 = v181;
        goto LABEL_35;
      }

      v194 = a3;
      v45 = v180;
      sub_1D43887F0(v41, v180, type metadata accessor for ActivityStream.Item);
      v195 = v40;
      sub_1D43887F0(v40, v22, type metadata accessor for ActivityStream.Item);
      sub_1D4417434();
      sub_1D438912C(&qword_1EC7C9800);
      if ((sub_1D4419BE4() & 1) == 0)
      {
        v42 = sub_1D44173B4();
        goto LABEL_8;
      }

      v191 = v41;
      v46 = v189;
      sub_1D44188A4();
      v187 = sub_1D4418ED4();
      v48 = v47;
      v49 = *v183;
      v50 = v185;
      (*v183)(v46, v185);
      sub_1D44188A4();
      v51 = v49;
      v52 = sub_1D4418ED4();
      v54 = v53;
      v55 = v50;
      v56 = v187;
      v49(v46, v55);
      v57 = v56 == v52 && v48 == v54;
      if (v57 || (sub_1D441AD84() & 1) != 0)
      {

        v58 = v182;
        v59 = v180 + *(v182 + 32);
        v16 = v193;
        v19 = v184;
        v22 = v178;
        v41 = v191;
        if (!*(v59 + 3))
        {
          goto LABEL_26;
        }

        v60 = *(v59 + 4);
        v187 = v51;
        sub_1D44188A4();
        v196 = v60 & 1;
        v61 = v187;
        v62 = sub_1D4418ED4();
        v186 = v63;
        v61(v189, v185);
        v64 = v22 + *(v58 + 32);
        if (!*(v64 + 3))
        {
          goto LABEL_25;
        }

        v65 = *(v64 + 4);
        sub_1D44188A4();
        v196 = v65 & 1;
        v66 = sub_1D4418ED4();
        v68 = v67;
        v61(v189, v185);
        if (v62 == v66 && v186 == v68 || (sub_1D441AD84() & 1) != 0)
        {

          v19 = v184;
          v41 = v191;
LABEL_25:

LABEL_26:
          v45 = v180;
          if (*v180 == *v22 && v180[1] == v22[1])
          {
            v43 = 0;
            goto LABEL_9;
          }

          v42 = sub_1D441AD84();
LABEL_8:
          v43 = v42;
LABEL_9:
          v44 = v194;
          goto LABEL_10;
        }

        v43 = sub_1D441AD84();

        v19 = v184;
      }

      else
      {
        v43 = sub_1D441AD84();

        v16 = v193;
        v19 = v184;
        v22 = v178;
      }

      v45 = v180;
      v44 = v194;
      v41 = v191;
LABEL_10:
      sub_1D4388858(v22, type metadata accessor for ActivityStream.Item);
      result = sub_1D4388858(v45, type metadata accessor for ActivityStream.Item);
      a3 = v44 + 1;
      v41 += v192;
      v40 = v195 + v192;
    }

    while (((v190 ^ v43) & 1) == 0);
    v69 = a3 - 1;
LABEL_35:
    v5 = v166;
    v70 = v169;
    v33 = v168;
    if (v190)
    {
      if (v69 < v168)
      {
        goto LABEL_171;
      }

      if (v168 < v69)
      {
        a3 = v192 * (v69 - 1);
        v71 = v69;
        v72 = v69 * v192;
        v181 = v71;
        v73 = v168;
        v74 = v168 * v192;
        do
        {
          if (v73 != --v71)
          {
            v75 = *v179;
            if (!*v179)
            {
              goto LABEL_177;
            }

            sub_1D4388788(v75 + v74, v171, type metadata accessor for ActivityStream.Item);
            if (v74 < a3 || v75 + v74 >= v75 + v72)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v74 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_1D4388788(v171, v75 + a3, type metadata accessor for ActivityStream.Item);
            v70 = v169;
            v19 = v184;
          }

          ++v73;
          a3 -= v192;
          v72 -= v192;
          v74 += v192;
        }

        while (v73 < v71);
        v16 = v193;
        v33 = v168;
        v69 = v181;
      }
    }

LABEL_49:
    v76 = v179[1];
    if (v69 >= v76)
    {
      goto LABEL_87;
    }

    if (__OFSUB__(v69, v33))
    {
      goto LABEL_170;
    }

    if (v69 - v33 >= v70)
    {
LABEL_87:
      if (v69 < v33)
      {
        goto LABEL_169;
      }

      v173 = v69;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v31 = v172;
      }

      else
      {
        result = sub_1D438CD68(0, *(v172 + 2) + 1, 1, v172);
        v31 = result;
      }

      v115 = *(v31 + 2);
      v114 = *(v31 + 3);
      a3 = v115 + 1;
      if (v115 >= v114 >> 1)
      {
        result = sub_1D438CD68((v114 > 1), v115 + 1, 1, v31);
        v31 = result;
      }

      *(v31 + 2) = a3;
      v116 = &v31[16 * v115];
      v117 = v173;
      *(v116 + 4) = v168;
      *(v116 + 5) = v117;
      v33 = *v167;
      if (!*v167)
      {
        goto LABEL_179;
      }

      v118 = v5;
      if (!v115)
      {
        v22 = v178;
LABEL_4:
        v32 = v179[1];
        v33 = v173;
        v5 = v118;
        if (v173 >= v32)
        {
          goto LABEL_141;
        }

        continue;
      }

      v22 = v178;
      while (1)
      {
        v5 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v119 = *(v31 + 4);
          v120 = *(v31 + 5);
          v129 = __OFSUB__(v120, v119);
          v121 = v120 - v119;
          v122 = v129;
LABEL_108:
          if (v122)
          {
            goto LABEL_158;
          }

          v135 = &v31[16 * a3];
          v137 = *v135;
          v136 = *(v135 + 1);
          v138 = __OFSUB__(v136, v137);
          v139 = v136 - v137;
          v140 = v138;
          if (v138)
          {
            goto LABEL_161;
          }

          v141 = &v31[16 * v5 + 32];
          v143 = *v141;
          v142 = *(v141 + 1);
          v129 = __OFSUB__(v142, v143);
          v144 = v142 - v143;
          if (v129)
          {
            goto LABEL_164;
          }

          if (__OFADD__(v139, v144))
          {
            goto LABEL_165;
          }

          if (v139 + v144 >= v121)
          {
            if (v121 < v144)
            {
              v5 = a3 - 2;
            }

            goto LABEL_129;
          }

          goto LABEL_122;
        }

        v145 = &v31[16 * a3];
        v147 = *v145;
        v146 = *(v145 + 1);
        v129 = __OFSUB__(v146, v147);
        v139 = v146 - v147;
        v140 = v129;
LABEL_122:
        if (v140)
        {
          goto LABEL_160;
        }

        v148 = &v31[16 * v5];
        v150 = *(v148 + 4);
        v149 = *(v148 + 5);
        v129 = __OFSUB__(v149, v150);
        v151 = v149 - v150;
        if (v129)
        {
          goto LABEL_163;
        }

        if (v151 < v139)
        {
          goto LABEL_4;
        }

LABEL_129:
        v156 = v5 - 1;
        if (v5 - 1 >= a3)
        {
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
LABEL_166:
          __break(1u);
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
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        if (!*v179)
        {
          goto LABEL_176;
        }

        v157 = v31;
        a3 = *&v31[16 * v156 + 32];
        v158 = *&v31[16 * v5 + 40];
        sub_1D4387B1C(*v179 + *(v177 + 72) * a3, *v179 + *(v177 + 72) * *&v31[16 * v5 + 32], *v179 + *(v177 + 72) * v158, v33);
        if (v118)
        {
        }

        if (v158 < a3)
        {
          goto LABEL_154;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v157 = sub_1D43880A8(v157);
        }

        if (v156 >= *(v157 + 2))
        {
          goto LABEL_155;
        }

        v159 = &v157[16 * v156];
        *(v159 + 4) = a3;
        *(v159 + 5) = v158;
        v197 = v157;
        result = sub_1D438801C(v5);
        v31 = v197;
        a3 = *(v197 + 16);
        v16 = v193;
        v22 = v178;
        if (a3 <= 1)
        {
          goto LABEL_4;
        }
      }

      v123 = &v31[16 * a3 + 32];
      v124 = *(v123 - 64);
      v125 = *(v123 - 56);
      v129 = __OFSUB__(v125, v124);
      v126 = v125 - v124;
      if (v129)
      {
        goto LABEL_156;
      }

      v128 = *(v123 - 48);
      v127 = *(v123 - 40);
      v129 = __OFSUB__(v127, v128);
      v121 = v127 - v128;
      v122 = v129;
      if (v129)
      {
        goto LABEL_157;
      }

      v130 = &v31[16 * a3];
      v132 = *v130;
      v131 = *(v130 + 1);
      v129 = __OFSUB__(v131, v132);
      v133 = v131 - v132;
      if (v129)
      {
        goto LABEL_159;
      }

      v129 = __OFADD__(v121, v133);
      v134 = v121 + v133;
      if (v129)
      {
        goto LABEL_162;
      }

      if (v134 >= v126)
      {
        v152 = &v31[16 * v5 + 32];
        v154 = *v152;
        v153 = *(v152 + 1);
        v129 = __OFSUB__(v153, v154);
        v155 = v153 - v154;
        if (v129)
        {
          goto LABEL_166;
        }

        if (v121 < v155)
        {
          v5 = a3 - 2;
        }

        goto LABEL_129;
      }

      goto LABEL_108;
    }

    break;
  }

  if (__OFADD__(v33, v70))
  {
    goto LABEL_172;
  }

  if (v33 + v70 < v76)
  {
    v76 = v33 + v70;
  }

  if (v76 < v33)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v69 == v76)
  {
    goto LABEL_87;
  }

  v173 = v76;
  v166 = v5;
  v77 = *v179;
  v192 = sub_1D4417434();
  v78 = *(v177 + 72);
  v79 = v77 + v78 * (v69 - 1);
  v186 = -v78;
  v187 = v77;
  v80 = v33 - v69;
  v170 = v78;
  a3 = v77 + v69 * v78;
  while (2)
  {
    v181 = v69;
    v174 = a3;
    v175 = v80;
    v81 = v80;
    v176 = v79;
LABEL_61:
    v194 = a3;
    v195 = v81;
    sub_1D43887F0(a3, v19, type metadata accessor for ActivityStream.Item);
    sub_1D43887F0(v79, v16, type metadata accessor for ActivityStream.Item);
    sub_1D438912C(&qword_1EC7C9800);
    if ((sub_1D4419BE4() & 1) == 0)
    {
      v108 = sub_1D44173B4();
      goto LABEL_79;
    }

    v82 = v189;
    sub_1D44188A4();
    v83 = sub_1D4418ED4();
    v190 = v84;
    v191 = v83;
    v85 = *v183;
    v86 = v185;
    (*v183)(v82, v185);
    sub_1D44188A4();
    v87 = sub_1D4418ED4();
    v89 = v88;
    v90 = v82;
    v91 = v86;
    v92 = v190;
    v93 = v191;
    v85(v90, v91);
    v94 = v93 == v87 && v92 == v89;
    if (!v94 && (sub_1D441AD84() & 1) == 0)
    {
      goto LABEL_85;
    }

    v95 = v182;
    v19 = v184;
    v96 = v184 + *(v182 + 32);
    if (!*(v96 + 3))
    {
      goto LABEL_76;
    }

    v97 = *(v96 + 4);
    v98 = v189;
    sub_1D44188A4();
    v196 = v97 & 1;
    v99 = sub_1D4418ED4();
    v101 = v100;
    v102 = v185;
    v85(v98, v185);
    v103 = v193 + *(v95 + 32);
    if (!*(v103 + 3))
    {
      goto LABEL_75;
    }

    if (v104 = *(v103 + 4), v190 = *(v103 + 1), v191 = v85, sub_1D44188A4(), v196 = v104 & 1, v105 = sub_1D4418ED4(), v107 = v106, v191(v98, v102), v99 == v105) && v101 == v107 || (sub_1D441AD84())
    {

LABEL_75:

      v19 = v184;
LABEL_76:
      v16 = v193;
      if (*v19 == *v193 && v19[1] == v193[1])
      {
        sub_1D4388858(v193, type metadata accessor for ActivityStream.Item);
        sub_1D4388858(v19, type metadata accessor for ActivityStream.Item);
LABEL_59:
        v69 = v181 + 1;
        v79 = v176 + v170;
        v80 = v175 - 1;
        a3 = v174 + v170;
        if (v181 + 1 == v173)
        {
          v5 = v166;
          v33 = v168;
          v69 = v173;
          goto LABEL_87;
        }

        continue;
      }

      v108 = sub_1D441AD84();
LABEL_79:
      v109 = v108;
    }

    else
    {
LABEL_85:
      v109 = sub_1D441AD84();

      v16 = v193;
      v19 = v184;
    }

    break;
  }

  sub_1D4388858(v16, type metadata accessor for ActivityStream.Item);
  result = sub_1D4388858(v19, type metadata accessor for ActivityStream.Item);
  if ((v109 & 1) == 0)
  {
    goto LABEL_59;
  }

  v110 = v195;
  if (v187)
  {
    v111 = v194;
    v112 = v188;
    sub_1D4388788(v194, v188, type metadata accessor for ActivityStream.Item);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D4388788(v112, v79, type metadata accessor for ActivityStream.Item);
    v79 += v186;
    a3 = v111 + v186;
    v113 = __CFADD__(v110, 1);
    v81 = v110 + 1;
    if (v113)
    {
      goto LABEL_59;
    }

    goto LABEL_61;
  }

  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
  return result;
}

uint64_t sub_1D438724C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for ActivityStream.Section(0);
  v8 = MEMORY[0x1EEE9AC00](v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_1D43887F0(v30, v43, type metadata accessor for ActivityStream.Section);
          v32 = v44;
          sub_1D43887F0(v27, v44, type metadata accessor for ActivityStream.Section);
          v33 = sub_1D44173B4();
          sub_1D4388858(v32, type metadata accessor for ActivityStream.Section);
          sub_1D4388858(v31, type metadata accessor for ActivityStream.Section);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_1D43887F0(a2, v43, type metadata accessor for ActivityStream.Section);
        v21 = v44;
        sub_1D43887F0(a4, v44, type metadata accessor for ActivityStream.Section);
        v22 = sub_1D44173B4();
        sub_1D4388858(v21, type metadata accessor for ActivityStream.Section);
        sub_1D4388858(v20, type metadata accessor for ActivityStream.Section);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_1D43880BC(&v48, &v47, &v46, type metadata accessor for ActivityStream.Section);
  return 1;
}

uint64_t sub_1D4387768(char *__dst, char *__src, unint64_t a3, char *a4, uint64_t (*a5)(_BYTE *, _BYTE *), uint64_t a6)
{
  v43 = a6;
  v7 = a4;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = __src - __dst;
  v12 = (__src - __dst) / 40;
  v13 = a3 - __src;
  v14 = (a3 - __src) / 40;
  if (v12 < v14)
  {
    if (a4 != __dst || &__dst[40 * v12] <= a4)
    {
      memmove(a4, __dst, 40 * v12);
    }

    v15 = v7 + 40 * v12;
    if (v11 < 40)
    {
LABEL_6:
      v9 = v10;
      goto LABEL_42;
    }

    while (1)
    {
      if (v9 >= v8)
      {
        goto LABEL_6;
      }

      sub_1D42D73C8(v9, v42);
      sub_1D42D73C8(v7, v41);
      v20 = a5(v42, v41);
      if (v6)
      {
        __swift_destroy_boxed_opaque_existential_0(v41);
        __swift_destroy_boxed_opaque_existential_0(v42);
        v36 = (v15 - v7) / 40;
        if (v10 < v7 || v10 >= v7 + 40 * v36 || v10 != v7)
        {
          v35 = 40 * v36;
          v34 = v10;
          goto LABEL_46;
        }

        return 1;
      }

      v21 = v20;
      __swift_destroy_boxed_opaque_existential_0(v41);
      __swift_destroy_boxed_opaque_existential_0(v42);
      if (v21)
      {
        break;
      }

      v16 = v7;
      v17 = v10 == v7;
      v7 += 40;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v10 += 40;
      if (v7 >= v15)
      {
        goto LABEL_6;
      }
    }

    v16 = v9;
    v17 = v10 == v9;
    v9 += 40;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    v18 = *v16;
    v19 = *(v16 + 1);
    *(v10 + 4) = *(v16 + 4);
    *v10 = v18;
    *(v10 + 1) = v19;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[40 * v14] <= a4)
  {
    memmove(a4, __src, 40 * v14);
  }

  v15 = v7 + 40 * v14;
  if (v13 < 40 || v9 <= v10)
  {
LABEL_42:
    v37 = (v15 - v7) / 40;
    if (v9 < v7 || v9 >= v7 + 40 * v37 || v9 != v7)
    {
      v35 = 40 * v37;
      v34 = v9;
      goto LABEL_46;
    }

    return 1;
  }

  v22 = -v7;
LABEL_22:
  v39 = v9;
  v9 -= 40;
  v23 = v15 - 40;
  v24 = v22 + v15;
  v8 -= 40;
  while (1)
  {
    sub_1D42D73C8(v23, v42);
    sub_1D42D73C8(v9, v41);
    v27 = a5(v42, v41);
    if (v6)
    {
      break;
    }

    v28 = v27;
    __swift_destroy_boxed_opaque_existential_0(v41);
    __swift_destroy_boxed_opaque_existential_0(v42);
    if (v28)
    {
      if (v8 + 40 != v39)
      {
        v31 = *v9;
        v32 = *(v9 + 1);
        *(v8 + 32) = *(v9 + 4);
        *v8 = v31;
        *(v8 + 16) = v32;
      }

      v15 = v23 + 40;
      if (v23 + 40 <= v7 || (v22 = -v7, v9 <= v10))
      {
        v15 = v23 + 40;
        goto LABEL_42;
      }

      goto LABEL_22;
    }

    if (v8 + 40 != v23 + 40)
    {
      v29 = *v23;
      v30 = *(v23 + 16);
      *(v8 + 32) = *(v23 + 32);
      *v8 = v29;
      *(v8 + 16) = v30;
    }

    v25 = v23 - 40;
    v24 -= 40;
    v8 -= 40;
    v26 = v23 > v7;
    v23 -= 40;
    if (!v26)
    {
      v15 = v25 + 40;
      v9 = v39;
      goto LABEL_42;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v41);
  __swift_destroy_boxed_opaque_existential_0(v42);
  v33 = v24 / 40;
  v34 = v39;
  if (v39 < v7 || v39 >= v7 + 40 * v33 || v39 != v7)
  {
    v35 = 40 * v33;
LABEL_46:
    memmove(v34, v7, v35);
  }

  return 1;
}

uint64_t sub_1D4387B1C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v40 = type metadata accessor for ActivityStream.Item(0);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v42 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v8);
  v41 = (&v34 - v11);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v45 = a1;
  v44 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v17 < 1)
    {
      v24 = a4 + v17;
    }

    else
    {
      v22 = -v13;
      v23 = a4 + v17;
      v24 = a4 + v17;
      v37 = a1;
      v38 = a4;
      v36 = -v13;
      do
      {
        v34 = v24;
        v25 = a2 + v22;
        v39 = a2;
        v40 = a2 + v22;
        while (1)
        {
          if (a2 <= a1)
          {
            v45 = a2;
            v43 = v34;
            goto LABEL_59;
          }

          v35 = v24;
          v27 = a3 + v22;
          v28 = v23 + v22;
          v29 = v41;
          sub_1D43887F0(v28, v41, type metadata accessor for ActivityStream.Item);
          v30 = v25;
          v31 = v42;
          sub_1D43887F0(v30, v42, type metadata accessor for ActivityStream.Item);
          v32 = _s7NotesUI14ActivityStreamV4ItemV1loiySbAE_AEtFZ_0(v29, v31);
          sub_1D4388858(v31, type metadata accessor for ActivityStream.Item);
          sub_1D4388858(v29, type metadata accessor for ActivityStream.Item);
          if (v32)
          {
            break;
          }

          v24 = v28;
          if (a3 < v23 || v27 >= v23)
          {
            a3 = v27;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v37;
          }

          else
          {
            v33 = a3 == v23;
            a3 = v27;
            a1 = v37;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = v28;
          a2 = v39;
          v26 = v28 > v38;
          v25 = v40;
          v22 = v36;
          if (!v26)
          {
            goto LABEL_57;
          }
        }

        if (a3 < v39 || v27 >= v39)
        {
          a3 = v27;
          a2 = v40;
          swift_arrayInitWithTakeFrontToBack();
          v22 = v36;
          a1 = v37;
          v24 = v35;
        }

        else
        {
          v33 = a3 == v39;
          a3 = v27;
          a2 = v40;
          v22 = v36;
          a1 = v37;
          v24 = v35;
          if (!v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v23 > v38);
    }

LABEL_57:
    v45 = a2;
    v43 = v24;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = a4 + v16;
    v43 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v41;
        sub_1D43887F0(a2, v41, type metadata accessor for ActivityStream.Item);
        v20 = v42;
        sub_1D43887F0(a4, v42, type metadata accessor for ActivityStream.Item);
        v21 = _s7NotesUI14ActivityStreamV4ItemV1loiySbAE_AEtFZ_0(v19, v20);
        sub_1D4388858(v20, type metadata accessor for ActivityStream.Item);
        sub_1D4388858(v19, type metadata accessor for ActivityStream.Item);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v44 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v45 = a1;
      }

      while (a4 < v39 && a2 < a3);
    }
  }

LABEL_59:
  sub_1D43880BC(&v45, &v44, &v43, type metadata accessor for ActivityStream.Item);
  return 1;
}

uint64_t sub_1D438801C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D43880A8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D43880BC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1D43881A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB828);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1D43882A8(uint64_t a1, void *a2)
{
  v35 = a2;
  v33 = sub_1D4417434();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v31 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97F0);
  result = sub_1D441ABF4();
  v6 = result;
  v7 = 0;
  v34 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v28 = result + 64;
  v29 = v3 + 16;
  v32 = v3;
  v27[2] = v3 + 32;
  v30 = result;
  v15 = v31;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v36 = (v13 - 1) & v13;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v20 = v33;
      v21 = v32;
      v22 = *(v32 + 72) * v19;
      (*(v32 + 16))(v15, *(v34 + 48) + v22, v33);

      v37 = sub_1D43828FC(v23, v35);

      *(v28 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v6 = v30;
      result = (*(v21 + 32))(*(v30 + 48) + v22, v15, v20);
      *(*(v6 + 56) + 8 * v19) = v37;
      v24 = *(v6 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v6 + 16) = v26;
      v13 = v36;
      if (!v36)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {

        return v6;
      }

      v18 = *(v9 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D4388520(void *a1, void *a2)
{
  v4 = sub_1D4417434();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 24))(v11, v12);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 24))(v13, v14);
  LOBYTE(a1) = sub_1D44173B4();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return a1 & 1;
}

uint64_t sub_1D4388720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4388788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D43887F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D4388858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D43888E0(uint64_t a1, char a2, void *a3)
{
  v47 = sub_1D4417434();
  v6 = MEMORY[0x1EEE9AC00](v47);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v45 = &v43 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return result;
  }

  v12 = a1 + 32;
  v44 = (v9 + 8);
  while (1)
  {
    sub_1D43890BC(v12, v57);
    v27 = v57[0];
    v28 = v57[1];
    sub_1D419FAA8(v58, &v54);
    v29 = *a3;
    v31 = sub_1D418DA8C(v27, v28);
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (v29[3] >= v34)
    {
      if (a2)
      {
        v59 = v11;
        if (v30)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1D42D53FC();
        v59 = v11;
        if (v35)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1D42D2838(v34, a2 & 1);
      v36 = sub_1D418DA8C(v27, v28);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_22;
      }

      v31 = v36;
      v59 = v11;
      if (v35)
      {
LABEL_3:
        v49 = *a3;
        v13 = v49[7];
        v48 = 40 * v31;
        sub_1D42D73C8(v13 + 40 * v31, v50);
        v14 = v51;
        v15 = v52;
        __swift_project_boxed_opaque_existential_1(v50, v51);
        v16 = v45;
        (*(v15 + 24))(v14, v15);
        v17 = v55;
        v18 = v56;
        __swift_project_boxed_opaque_existential_1(&v54, v55);
        v19 = a3;
        v20 = v46;
        (*(v18 + 24))(v17, v18);
        LOBYTE(v17) = sub_1D44173B4();
        v21 = *v44;
        v22 = v20;
        a3 = v19;
        v23 = v47;
        (*v44)(v22, v47);
        v21(v16, v23);
        if (v17)
        {
          v24 = v50;
        }

        else
        {
          v24 = &v54;
        }

        sub_1D42D73C8(v24, v53);
        __swift_destroy_boxed_opaque_existential_0(v50);
        __swift_destroy_boxed_opaque_existential_0(&v54);

        v25 = v49[7];
        v26 = v48;
        __swift_destroy_boxed_opaque_existential_0(v25 + v48);
        result = sub_1D419FAA8(v53, v25 + v26);
        goto LABEL_7;
      }
    }

    v38 = *a3;
    *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
    v39 = (v38[6] + 16 * v31);
    *v39 = v27;
    v39[1] = v28;
    result = sub_1D419FAA8(&v54, v38[7] + 40 * v31);
    v40 = v38[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_21;
    }

    v38[2] = v42;
LABEL_7:
    v12 += 56;
    a2 = 1;
    v11 = v59 - 1;
    if (v59 == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1D441ADE4();
  __break(1u);
  return result;
}

uint64_t sub_1D4388C8C(uint64_t a1, char a2, void *a3)
{
  v53 = sub_1D4417434();
  v6 = MEMORY[0x1EEE9AC00](v53);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v51 = &v48 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return result;
  }

  v12 = a1 + 32;
  v49 = (v9 + 8);
  v50 = a3;
  while (1)
  {
    sub_1D43890BC(v12, v66);
    v32 = v66[0];
    v33 = v66[1];
    sub_1D419FAA8(&v67, &v63);
    v34 = *a3;
    v36 = sub_1D418DA8C(v32, v33);
    v37 = v34[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      break;
    }

    v40 = v35;
    if (v34[3] >= v39)
    {
      if (a2)
      {
        if (v35)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1D42D53FC();
        if (v40)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1D42D2838(v39, a2 & 1);
      v41 = sub_1D418DA8C(v32, v33);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_31;
      }

      v36 = v41;
      if (v40)
      {
LABEL_3:
        v68 = *a3;
        v13 = *(v68 + 56);
        v58 = 40 * v36;
        sub_1D42D73C8(v13 + 40 * v36, v59);
        v57 = &v60;
        v56 = &v61;
        v14 = v60;
        v15 = v61;
        __swift_project_boxed_opaque_existential_1(v59, v60);
        v16 = v51;
        (*(v15 + 24))(v14, v15);
        v55 = &v64;
        v54 = &v65;
        v17 = v64;
        v18 = v65;
        __swift_project_boxed_opaque_existential_1(&v63, v64);
        v19 = v52;
        (*(v18 + 24))(v17, v18);
        v20 = sub_1D44173B4();
        v21 = *v49;
        v22 = v53;
        (*v49)(v19, v53);
        v21(v16, v22);
        v23 = (v20 & 1) == 0;
        if (v20)
        {
          v24 = v59;
        }

        else
        {
          v24 = &v63;
        }

        if (v20)
        {
          v25 = &v63;
        }

        else
        {
          v25 = v59;
        }

        v26 = v57;
        if (v23)
        {
          v26 = v55;
        }

        v27 = *v26;
        v28 = v56;
        if (v23)
        {
          v28 = v54;
        }

        a3 = v50;
        v29 = *v28;
        __swift_project_boxed_opaque_existential_1(v24, v27);
        (*(v29 + 48))(v62, v25, v27, v29);
        __swift_destroy_boxed_opaque_existential_0(v59);
        __swift_destroy_boxed_opaque_existential_0(&v63);

        v30 = *(v68 + 56);
        v31 = v58;
        __swift_destroy_boxed_opaque_existential_0(v30 + v58);
        result = sub_1D419FAA8(v62, v30 + v31);
        goto LABEL_16;
      }
    }

    v43 = *a3;
    *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
    v44 = (v43[6] + 16 * v36);
    *v44 = v32;
    v44[1] = v33;
    result = sub_1D419FAA8(&v63, v43[7] + 40 * v36);
    v45 = v43[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_30;
    }

    v43[2] = v47;
LABEL_16:
    v12 += 56;
    a2 = 1;
    if (!--v11)
    {
      return result;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1D441ADE4();
  __break(1u);
  return result;
}

uint64_t sub_1D43890BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB838);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D438912C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D4417434();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Image.init(systemName:symbolConfiguration:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = sub_1D4419C14();

  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  if (!v5)
  {
    [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  v6 = _s7SwiftUI5ImageV05NotesB0EyACSo7UIImageCcfC_0();

  return v6;
}

uint64_t sub_1D4389234(uint64_t a1)
{
  v2 = sub_1D441A824();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1D4391640(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_1D43892C4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1D4419DA4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D4389320(uint64_t a1, unint64_t *a2)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1D441A864();
    v7 = v6;
    v8 = sub_1D441A914();
    v10 = v9;
    v11 = MEMORY[0x1DA6D62A0](v5, v7, v8, v9);
    sub_1D42D74FC(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_1D42D74FC(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_1D441A824();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1D4391414(v5, v7, v4 != 0, a1, a2);
  v14 = v13;
  sub_1D42D74FC(v5, v7, v4 != 0);
  return v14;
}

uint64_t sub_1D4389454(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417494();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - v9;
  v11 = *(a2 + 16);
  v12 = sub_1D4392788(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1DA6D5A90](v11, v4, v12);
  v19 = *(a2 + 16);
  v20 = result;
  if (v19)
  {
    v18[1] = a1;
    v14 = 0;
    v15 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (v14 < *(a2 + 16))
    {
      v16 = v15 + *(v5 + 72) * v14++;
      (*(v5 + 16))(v8, v16, v4);
      sub_1D417CFFC(v10, v8);
      result = (*(v5 + 8))(v10, v4);
      if (v19 == v14)
      {

        return v20;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = result;

    return v17;
  }

  return result;
}

void sub_1D4389644(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D41766C0(0, &qword_1EDE32A00);
  v4 = sub_1D4392800(&qword_1EDE329F8, &qword_1EDE32A00);
  v5 = 0;
  v12[1] = MEMORY[0x1DA6D5A90](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_1D43C5A0C(v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1D4389780(uint64_t a1)
{
  result = MEMORY[0x1DA6D5A90](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1D43C5A30(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ICCalculateAccessibilityController.setupIfNeeded()()
{
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {

    sub_1D438B610();
  }
}

Swift::Void __swiftcall ICCalculateAccessibilityController.announceMathErrorUpdates()()
{
  v1 = sub_1D4419444();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v181 = &v163 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D4419484();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v182 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D44194A4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v180 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v183 = &v163 - v11;
  v12 = sub_1D4417434();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    v16 = [v0 note];
    if (v16)
    {
      v179 = v16;
      v17 = [v16 textStorage];
      if (v17)
      {
        v167 = v1;
        v169 = v8;
        v170 = v4;
        v174 = v7;
        v171 = v15;
        v172 = v13;
        v173 = v12;
        v175 = v0;
        v176 = v17;
        v18 = [v17 textViews];
        v19 = sub_1D41766C0(0, &qword_1EDE32A00);
        v20 = sub_1D4392800(&qword_1EDE329F8, &qword_1EDE32A00);
        v21 = sub_1D441A064();

        v168 = v5;
        v166 = v2;
        v178 = v19;
        if ((v21 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_1D441A874();
          sub_1D441A0A4();
          v22 = v191;
          v23 = v192;
          v24 = v193;
          v25 = v194;
          v26 = v195;
        }

        else
        {
          v28 = -1 << *(v21 + 32);
          v23 = v21 + 56;
          v24 = ~v28;
          v29 = -v28;
          if (v29 < 64)
          {
            v30 = ~(-1 << v29);
          }

          else
          {
            v30 = -1;
          }

          v26 = v30 & *(v21 + 56);

          v25 = 0;
          v22 = v21;
        }

        v177 = v24;
        do
        {
          if (v22 < 0)
          {
            v33 = sub_1D441A8F4();
            if (!v33 || (v184 = v33, swift_dynamicCast(), (v20 = aBlock) == 0))
            {
LABEL_42:
              sub_1D419FA48();

              return;
            }
          }

          else
          {
            v31 = v25;
            v32 = v26;
            if (!v26)
            {
              while (1)
              {
                v25 = v31 + 1;
                if (__OFADD__(v31, 1))
                {
                  break;
                }

                if (v25 >= ((v24 + 64) >> 6))
                {
                  goto LABEL_42;
                }

                v32 = *(v23 + 8 * v25);
                ++v31;
                if (v32)
                {
                  goto LABEL_20;
                }
              }

              __break(1u);
              goto LABEL_118;
            }

LABEL_20:
            v26 = (v32 - 1) & v32;
            v20 = *(*(v22 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v32)))));
            if (!v20)
            {
              goto LABEL_42;
            }
          }

          v34 = [v20 isFirstResponder];
        }

        while ((v34 & 1) == 0);
        sub_1D419FA48();

        v35 = [v179 calculateDocumentController];
        if (!v35)
        {
          goto LABEL_116;
        }

        v36 = v35;
        sub_1D4189834();

        v37 = MEMORY[0x1DA6D53A0]();

        isUniquelyReferenced_nonNull_native = *&v175[OBJC_IVAR___ICCalculateAccessibilityController_stateErrorsCache];
        if (v37 >> 62)
        {
LABEL_130:
          v162 = isUniquelyReferenced_nonNull_native;
          v39 = sub_1D441A8C4();
          isUniquelyReferenced_nonNull_native = v162;
        }

        else
        {
          v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v40 = v37 & 0xC000000000000001;
        v178 = isUniquelyReferenced_nonNull_native;

        v41 = 0;
        v42 = MEMORY[0x1E69E7CC0];
        while (v39 != v41)
        {
          if (v40)
          {
            isUniquelyReferenced_nonNull_native = MEMORY[0x1DA6D6410](v41, v37);
            v43 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              goto LABEL_125;
            }
          }

          else
          {
            if (v41 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_126;
            }

            v43 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
LABEL_125:
              __break(1u);
LABEL_126:
              __break(1u);
LABEL_127:
              __break(1u);
LABEL_128:
              __break(1u);
LABEL_129:
              __break(1u);
              goto LABEL_130;
            }
          }

          v44 = sub_1D43924D4();
          v46 = v45;

          ++v41;
          if (v46)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_1D438D2B4(0, *(v42 + 16) + 1, 1, v42);
              v42 = isUniquelyReferenced_nonNull_native;
            }

            v48 = *(v42 + 16);
            v47 = *(v42 + 24);
            if (v48 >= v47 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_1D438D2B4((v47 > 1), v48 + 1, 1, v42);
              v42 = isUniquelyReferenced_nonNull_native;
            }

            *(v42 + 16) = v48 + 1;
            v49 = v42 + 16 * v48;
            *(v49 + 32) = v44;
            *(v49 + 40) = v46;
            v41 = v43;
          }
        }

        v50 = 0;
        v51 = *(v42 + 16);
        v52 = v42 + 40;
        v53 = MEMORY[0x1E69E7CC0];
LABEL_45:
        v54 = (v52 + 16 * v50);
        while (v51 != v50)
        {
          if (v50 >= *(v42 + 16))
          {
            goto LABEL_127;
          }

          ++v50;
          v56 = *(v54 - 1);
          v55 = *v54;
          v54 += 2;
          v57 = HIBYTE(v55) & 0xF;
          if ((v55 & 0x2000000000000000) == 0)
          {
            v57 = v56 & 0xFFFFFFFFFFFFLL;
          }

          if (v57)
          {
            v177 = v52;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v53;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_1D418BC38(0, *(v53 + 16) + 1, 1);
              v53 = aBlock;
            }

            v59 = *(v53 + 16);
            v58 = *(v53 + 24);
            v60 = v59 + 1;
            v52 = v177;
            if (v59 >= v58 >> 1)
            {
              v165 = v59 + 1;
              v164 = v59;
              isUniquelyReferenced_nonNull_native = sub_1D418BC38((v58 > 1), v59 + 1, 1);
              v60 = v165;
              v59 = v164;
              v52 = v177;
              v53 = aBlock;
            }

            *(v53 + 16) = v60;
            v61 = v53 + 16 * v59;
            *(v61 + 32) = v56;
            *(v61 + 40) = v55;
            goto LABEL_45;
          }
        }

        v62 = sub_1D4391694(v53);

        v63 = v178;
        if (*(v178 + 16) <= *(v62 + 16) >> 3)
        {
          aBlock = v62;

          sub_1D4390F0C(v63);
          v64 = aBlock;
        }

        else
        {

          v64 = sub_1D438F1C4(v63, v62);
        }

        v65 = v175;
        if (*(v62 + 16) <= *(v63 + 16) >> 3)
        {
          aBlock = v63;

          sub_1D4390F0C(v62);
          v177 = aBlock;
        }

        else
        {

          v177 = sub_1D438F1C4(v62, v63);
        }

        v165 = v62;
        v164 = *&v65[OBJC_IVAR___ICCalculateAccessibilityController_stateResultsCache];

        v66 = MEMORY[0x1E69E7CC0];
        if (v39)
        {
          v67 = 0;
          do
          {
            v68 = v67;
            while (1)
            {
              if (v40)
              {
                isUniquelyReferenced_nonNull_native = MEMORY[0x1DA6D6410](v68, v37);
                v67 = v68 + 1;
                if (__OFADD__(v68, 1))
                {
                  goto LABEL_128;
                }
              }

              else
              {
                if (v68 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_129;
                }

                v67 = v68 + 1;
                if (__OFADD__(v68, 1))
                {
                  goto LABEL_128;
                }
              }

              v69 = sub_1D4419874();
              if (v69)
              {
                break;
              }

              ++v68;
              if (v67 == v39)
              {
                goto LABEL_79;
              }
            }

            v70 = v64;
            v71 = v69;
            v72 = [v69 formattedResult];

            v73 = sub_1D4419C54();
            v163 = v74;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_1D438D2B4(0, *(v66 + 16) + 1, 1, v66);
              v66 = isUniquelyReferenced_nonNull_native;
            }

            v75 = v66;
            v76 = *(v66 + 16);
            v77 = v75;
            v78 = *(v75 + 24);
            v64 = v70;
            if (v76 >= v78 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_1D438D2B4((v78 > 1), v76 + 1, 1, v77);
              v77 = isUniquelyReferenced_nonNull_native;
            }

            *(v77 + 16) = v76 + 1;
            v79 = v77 + 16 * v76;
            v66 = v77;
            v80 = v163;
            *(v79 + 32) = v73;
            *(v79 + 40) = v80;
          }

          while (v67 != v39);
        }

LABEL_79:

        v20 = sub_1D4391694(v66);

        v81 = *(v178 + 16);

        if (v81)
        {
          v82 = *(v165 + 16);

          v26 = v175;
          if (!v82)
          {

            v84 = sub_1D438C38C(0, 0, 0, 0, 6);
            v85 = v83;
            v86 = v26 + OBJC_IVAR___ICCalculateAccessibilityController_lastAnnouncement;
            v87 = *(v26 + OBJC_IVAR___ICCalculateAccessibilityController_lastAnnouncement + 8);
            if (!v87 || ((v88 = *(v86 + 16), *v86 != v84) || v87 != v83) && (sub_1D441AD84() & 1) == 0 || (, v89 = v171, sub_1D4417404(), sub_1D44173D4(), v91 = v90, (*(v172 + 8))(v89, v173), , v91 - v88 >= 2.0))
            {
              sub_1D41766C0(0, &qword_1EDE33D70);
              v177 = sub_1D441A2C4();
              v92 = v180;
              sub_1D4419494();
              sub_1D44194F4();
              v178 = *(v169 + 8);
              (v178)(v92, v174);
              v93 = swift_allocObject();
              *(v93 + 16) = v84;
              *(v93 + 24) = v85;
              v189 = sub_1D4349F74;
              v190 = v93;
              aBlock = MEMORY[0x1E69E9820];
              v186 = 1107296256;
              v187 = sub_1D417BEE4;
              v188 = &block_descriptor_28;
              v94 = _Block_copy(&aBlock);

              v180 = v85;
              v95 = v182;
              sub_1D4419464();
              aBlock = MEMORY[0x1E69E7CC0];
              sub_1D4392788(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
              sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
              v96 = v181;
              v97 = v167;
              sub_1D441A814();
              v98 = v183;
              v99 = v177;
              MEMORY[0x1DA6D5C70](v183, v95, v96, v94);
              _Block_release(v94);

              (*(v166 + 8))(v96, v97);
              goto LABEL_103;
            }

LABEL_104:
            v130 = v171;
            sub_1D4417404();
            sub_1D44173D4();
            v132 = v131;
            (*(v172 + 8))(v130, v173);
            *v86 = v84;
            *(v86 + 8) = v85;
LABEL_114:
            *(v86 + 16) = v132;

            goto LABEL_115;
          }
        }

        else
        {

          v26 = v175;
        }

        v100 = *(v64 + 16);
        if (v100 >= 2)
        {

          v84 = sub_1D438C38C(0, 0, 0, 0, 3);
          v85 = v116;
          v86 = v26 + OBJC_IVAR___ICCalculateAccessibilityController_lastAnnouncement;
          v117 = *(v26 + OBJC_IVAR___ICCalculateAccessibilityController_lastAnnouncement + 8);
          if (v117)
          {
            if (v118 = *(v86 + 16), *v86 == v84) && v117 == v116 || (sub_1D441AD84())
            {

              v119 = v171;
              sub_1D4417404();
              sub_1D44173D4();
              v121 = v120;
              (*(v172 + 8))(v119, v173);

              if (v121 - v118 < 2.0)
              {
                goto LABEL_104;
              }
            }
          }

          sub_1D41766C0(0, &qword_1EDE33D70);
          v177 = sub_1D441A2C4();
          v122 = v180;
          sub_1D4419494();
          sub_1D44194F4();
          v178 = *(v169 + 8);
          (v178)(v122, v174);
          v123 = swift_allocObject();
          *(v123 + 16) = v84;
          *(v123 + 24) = v85;
          v189 = sub_1D4349E2C;
          v190 = v123;
          aBlock = MEMORY[0x1E69E9820];
          v186 = 1107296256;
          v124 = &block_descriptor_19;
          goto LABEL_102;
        }

        v101 = v177;
        if (v100)
        {

          v102 = sub_1D4389234(v64);
          v104 = v103;

          v105 = sub_1D438C38C(0, 0, v102, v104, 4);
          v107 = v106;

          v86 = v26 + OBJC_IVAR___ICCalculateAccessibilityController_lastAnnouncement;
          v108 = *(v26 + OBJC_IVAR___ICCalculateAccessibilityController_lastAnnouncement + 8);
          if (!v108 || ((v109 = *(v86 + 16), *v86 != v105) || v108 != v107) && (sub_1D441AD84() & 1) == 0 || (, v110 = v171, sub_1D4417404(), sub_1D44173D4(), v112 = v111, (*(v172 + 8))(v110, v173), , v112 - v109 >= 2.0))
          {
            sub_1D41766C0(0, &qword_1EDE33D70);
            v177 = sub_1D441A2C4();
            v113 = v180;
            sub_1D4419494();
            sub_1D44194F4();
            v178 = *(v169 + 8);
            (v178)(v113, v174);
            v114 = swift_allocObject();
            *(v114 + 16) = v105;
            *(v114 + 24) = v107;
            v189 = sub_1D4349F74;
            v190 = v114;
            aBlock = MEMORY[0x1E69E9820];
            v186 = 1107296256;
            v115 = &block_descriptor_7;
            goto LABEL_112;
          }

          goto LABEL_113;
        }

        if (*(v101 + 16))
        {

          v133 = sub_1D4389234(v101);
          v135 = v134;

          v105 = sub_1D438C38C(0, 0, v133, v135, 5);
          v107 = v136;

          v86 = v26 + OBJC_IVAR___ICCalculateAccessibilityController_lastAnnouncement;
          v137 = *(v26 + OBJC_IVAR___ICCalculateAccessibilityController_lastAnnouncement + 8);
          if (!v137 || ((v138 = *(v86 + 16), *v86 != v105) || v137 != v107) && (sub_1D441AD84() & 1) == 0 || (, v139 = v171, sub_1D4417404(), sub_1D44173D4(), v141 = v140, (*(v172 + 8))(v139, v173), , v141 - v138 >= 2.0))
          {
            sub_1D41766C0(0, &qword_1EDE33D70);
            v177 = sub_1D441A2C4();
            v142 = v180;
            sub_1D4419494();
            sub_1D44194F4();
            v178 = *(v169 + 8);
            (v178)(v142, v174);
            v143 = swift_allocObject();
            *(v143 + 16) = v105;
            *(v143 + 24) = v107;
            v189 = sub_1D4349F74;
            v190 = v143;
            aBlock = MEMORY[0x1E69E9820];
            v186 = 1107296256;
            v115 = &block_descriptor_14;
LABEL_112:
            v187 = sub_1D417BEE4;
            v188 = v115;
            v144 = _Block_copy(&aBlock);

            v180 = v105;
            v145 = v182;
            sub_1D4419464();
            aBlock = MEMORY[0x1E69E7CC0];
            sub_1D4392788(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
            sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
            v146 = v181;
            v147 = v167;
            sub_1D441A814();
            v148 = v183;
            v149 = v177;
            MEMORY[0x1DA6D5C70](v183, v145, v146, v144);
            _Block_release(v144);

            (*(v166 + 8))(v146, v147);
            v150 = v145;
            v105 = v180;
            (*(v168 + 8))(v150, v170);
            (v178)(v148, v174);
          }

LABEL_113:
          v151 = v171;
          sub_1D4417404();
          sub_1D44173D4();
          v132 = v152;
          (*(v172 + 8))(v151, v173);
          *v86 = v105;
          *(v86 + 8) = v107;
          goto LABEL_114;
        }

LABEL_118:

        v153 = sub_1D438CBB0(v164, v20);

        if ((v153 & 1) == 0)
        {
          v84 = sub_1D438C38C(0, 0, 0, 0, 2);
          v85 = v154;
          v86 = v26 + OBJC_IVAR___ICCalculateAccessibilityController_lastAnnouncement;
          v155 = *(v26 + OBJC_IVAR___ICCalculateAccessibilityController_lastAnnouncement + 8);
          if (v155)
          {
            if (v156 = *(v86 + 16), *v86 == v84) && v155 == v154 || (sub_1D441AD84())
            {

              v157 = v171;
              sub_1D4417404();
              sub_1D44173D4();
              v159 = v158;
              (*(v172 + 8))(v157, v173);

              if (v159 - v156 < 2.0)
              {
                goto LABEL_104;
              }
            }
          }

          sub_1D41766C0(0, &qword_1EDE33D70);
          v177 = sub_1D441A2C4();
          v160 = v180;
          sub_1D4419494();
          sub_1D44194F4();
          v178 = *(v169 + 8);
          (v178)(v160, v174);
          v161 = swift_allocObject();
          *(v161 + 16) = v84;
          *(v161 + 24) = v85;
          v189 = sub_1D4349F74;
          v190 = v161;
          aBlock = MEMORY[0x1E69E9820];
          v186 = 1107296256;
          v124 = &block_descriptor_21_1;
LABEL_102:
          v187 = sub_1D417BEE4;
          v188 = v124;
          v125 = _Block_copy(&aBlock);

          v180 = v85;
          v95 = v182;
          sub_1D4419464();
          aBlock = MEMORY[0x1E69E7CC0];
          sub_1D4392788(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
          sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
          v126 = v181;
          v127 = v167;
          sub_1D441A814();
          v98 = v183;
          v128 = v177;
          MEMORY[0x1DA6D5C70](v183, v95, v126, v125);
          _Block_release(v125);

          (*(v166 + 8))(v126, v127);
LABEL_103:
          v129 = v95;
          v85 = v180;
          (*(v168 + 8))(v129, v170);
          (v178)(v98, v174);
          goto LABEL_104;
        }

LABEL_115:
        sub_1D438B610();
LABEL_116:
      }

      else
      {
        v27 = v179;
      }
    }
  }
}

id sub_1D438B214()
{
  v1 = OBJC_IVAR___ICCalculateAccessibilityController_isVoiceOverEnabledObservation;
  swift_beginAccess();
  sub_1D418CFF4(v0 + v1, &v7);
  if (v8)
  {
    sub_1D417CF84(&v7, &v9);
    v2 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_1(&v9, v10);
    [v2 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v9);
  }

  else
  {
    sub_1D41769C4(&v7, &qword_1EC7C9720);
  }

  v3 = OBJC_IVAR___ICCalculateAccessibilityController_isSwitchControlEnabledObservation;
  swift_beginAccess();
  sub_1D418CFF4(v0 + v3, &v7);
  if (v8)
  {
    sub_1D417CF84(&v7, &v9);
    v4 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_1(&v9, v10);
    [v4 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v9);
  }

  else
  {
    sub_1D41769C4(&v7, &qword_1EC7C9720);
  }

  v6.receiver = v0;
  v6.super_class = ICCalculateAccessibilityController;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1D438B4B8(uint64_t a1)
{
  v2 = sub_1D4416E94();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1D4416E54();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

void sub_1D438B5AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
    {
      sub_1D438B610();
    }
  }
}

void sub_1D438B610()
{
  v1 = [v0 note];
  if (v1)
  {
    v66 = v1;
    v2 = [v1 textStorage];
    if (v2)
    {
      v62 = v2;
      v3 = [v2 textViews];
      sub_1D41766C0(0, &qword_1EDE32A00);
      sub_1D4392800(&qword_1EDE329F8, &qword_1EDE32A00);
      v4 = sub_1D441A064();

      v61 = v0;
      if ((v4 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_1D441A874();
        sub_1D441A0A4();
        v6 = v68;
        v5 = v69;
        v7 = v70;
        v8 = v71;
        v9 = v72;
      }

      else
      {
        v10 = -1 << *(v4 + 32);
        v5 = v4 + 56;
        v7 = ~v10;
        v11 = -v10;
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v9 = v12 & *(v4 + 56);

        v8 = 0;
        v6 = v4;
      }

      v13 = (v7 + 64) >> 6;
      do
      {
        v16 = v9;
        if ((v6 & 0x8000000000000000) != 0)
        {
          if (!sub_1D441A8F4() || (swift_dynamicCast(), (v14 = v67) == 0))
          {
LABEL_23:
            sub_1D419FA48();

LABEL_24:

            return;
          }
        }

        else
        {
          v17 = v8;
          v18 = v9;
          if (!v9)
          {
            while (1)
            {
              v8 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                break;
              }

              if (v8 >= v13)
              {
                goto LABEL_23;
              }

              v18 = *(v5 + 8 * v8);
              ++v17;
              if (v18)
              {
                goto LABEL_13;
              }
            }

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
            v21 = sub_1D441A8C4();
            goto LABEL_29;
          }

LABEL_13:
          v9 = (v18 - 1) & v18;
          v14 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v18)))));
          if (!v14)
          {
            goto LABEL_23;
          }
        }

        v15 = [v14 isFirstResponder];
      }

      while ((v15 & 1) == 0);
      sub_1D419FA48();

      v19 = [v66 calculateDocumentController];
      if (v19)
      {
        v20 = v19;
        sub_1D4189834();

        v4 = MEMORY[0x1DA6D53A0]();

        v16 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v4 >> 62)
        {
          goto LABEL_82;
        }

        v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:
        v22 = 0;
        v23 = v4 & 0xC000000000000001;
        v24 = MEMORY[0x1E69E7CC0];
        while (v21 != v22)
        {
          if (v23)
          {
            MEMORY[0x1DA6D6410](v22, v4);
            v25 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_77;
            }
          }

          else
          {
            if (v22 >= *(v16 + 16))
            {
              goto LABEL_78;
            }

            v25 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_77;
            }
          }

          v26 = sub_1D43924D4();
          v28 = v27;

          ++v22;
          if (v28)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_1D438D2B4(0, *(v24 + 2) + 1, 1, v24);
            }

            v30 = *(v24 + 2);
            v29 = *(v24 + 3);
            if (v30 >= v29 >> 1)
            {
              v24 = sub_1D438D2B4((v29 > 1), v30 + 1, 1, v24);
            }

            *(v24 + 2) = v30 + 1;
            v31 = &v24[16 * v30];
            *(v31 + 4) = v26;
            *(v31 + 5) = v28;
            v22 = v25;
          }
        }

        v32 = 0;
        v33 = *(v24 + 2);
        v34 = v24 + 40;
        v35 = MEMORY[0x1E69E7CC0];
LABEL_44:
        v36 = &v34[16 * v32];
        while (v33 != v32)
        {
          if (v32 >= *(v24 + 2))
          {
            goto LABEL_79;
          }

          ++v32;
          v37 = *(v36 - 1);
          v38 = *v36;
          v36 += 16;
          v39 = HIBYTE(v38) & 0xF;
          if ((v38 & 0x2000000000000000) == 0)
          {
            v39 = v37 & 0xFFFFFFFFFFFFLL;
          }

          if (v39)
          {
            v64 = v34;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1D418BC38(0, *(v35 + 16) + 1, 1);
            }

            v41 = *(v35 + 16);
            v40 = *(v35 + 24);
            v42 = v41 + 1;
            v34 = v64;
            if (v41 >= v40 >> 1)
            {
              v63 = v41 + 1;
              v60 = *(v35 + 16);
              sub_1D418BC38((v40 > 1), v41 + 1, 1);
              v42 = v63;
              v34 = v64;
              v41 = v60;
            }

            *(v35 + 16) = v42;
            v43 = v35 + 16 * v41;
            *(v43 + 32) = v37;
            *(v43 + 40) = v38;
            goto LABEL_44;
          }
        }

        v44 = sub_1D4391694(v35);

        v45 = v61;
        *&v61[OBJC_IVAR___ICCalculateAccessibilityController_stateErrorsCache] = v44;

        if (v21)
        {
          v46 = 0;
          v65 = MEMORY[0x1E69E7CC0];
          v47 = &selRef_forcesLightMode;
          do
          {
            v48 = v46;
            while (1)
            {
              if (v23)
              {
                MEMORY[0x1DA6D6410](v48, v4);
                v46 = v48 + 1;
                if (__OFADD__(v48, 1))
                {
                  goto LABEL_80;
                }
              }

              else
              {
                if (v48 >= *(v16 + 16))
                {
                  goto LABEL_81;
                }

                v46 = v48 + 1;
                if (__OFADD__(v48, 1))
                {
                  goto LABEL_80;
                }
              }

              v49 = sub_1D4419874();
              if (v49)
              {
                break;
              }

              ++v48;
              if (v46 == v21)
              {
                goto LABEL_75;
              }
            }

            v50 = v49;
            v51 = [v49 v47[8]];

            v52 = sub_1D4419C54();
            v54 = v53;

            v55 = v45;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v65 = sub_1D438D2B4(0, *(v65 + 2) + 1, 1, v65);
            }

            v57 = *(v65 + 2);
            v56 = *(v65 + 3);
            if (v57 >= v56 >> 1)
            {
              v65 = sub_1D438D2B4((v56 > 1), v57 + 1, 1, v65);
            }

            *(v65 + 2) = v57 + 1;
            v58 = &v65[16 * v57];
            *(v58 + 4) = v52;
            *(v58 + 5) = v54;
            v45 = v55;
            v47 = &selRef_forcesLightMode;
          }

          while (v46 != v21);
        }

        else
        {
          v65 = MEMORY[0x1E69E7CC0];
        }

LABEL_75:

        v59 = sub_1D4391694(v65);

        *&v45[OBJC_IVAR___ICCalculateAccessibilityController_stateResultsCache] = v59;
        goto LABEL_24;
      }
    }

    else
    {
    }
  }
}

id sub_1D438BCFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 note];
  if (result)
  {
    v7 = result;
    v8 = [result calculateDocumentController];

    if (v8)
    {
      v9 = ICCalculateDocumentController.paperKitDocument(for:)(a1, a2);
      if (v9)
      {
        if (object_getClass(v9) == _TtCE7NotesUICSo29ICCalculateDocumentController14CanvasDocument)
        {
          v10 = objc_opt_self();
          v11 = sub_1D4419C14();
          v12 = [v10 localizedFrameworkStringForKey:v11 value:0 table:0 allowSiri:1];

          v13 = sub_1D4419C54();
          v15 = v14;

          swift_beginAccess();
          swift_unknownObjectRetain();

          v17 = sub_1D4391D00(v16);

          swift_unknownObjectRelease();
          v18 = sub_1D439172C(v17);

          sub_1D4392124(v18, v13, v15);

          swift_bridgeObjectRelease_n();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9768);
          sub_1D417645C(&qword_1EDE32A60, &qword_1EC7C9768);
          v19 = sub_1D4419BB4();

          swift_unknownObjectRelease();

          return v19;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D438BF50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = sub_1D4417014();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1D41766C0(0, &qword_1EDE33A28);
  sub_1D44197E4();
  v6 = sub_1D441A3B4();
  v7 = [v6 string];

  v8 = sub_1D4419C54();
  v10 = v9;

  v11 = sub_1D4419874();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 formattedResult];

    v14 = sub_1D4419C54();
    v16 = v15;

    v17 = objc_opt_self();
    v18 = sub_1D4419C14();
    v19 = [v17 localizedFrameworkStringForKey:v18 value:0 table:0 allowSiri:1];

    sub_1D4419C54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D4435D40;
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_1D4320054();
    *(v20 + 32) = v14;
    *(v20 + 40) = v16;
    v21 = sub_1D4419C24();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v41 = v8;
  v42 = v10;
  v43 = a1;
  v44 = a2;
  v45 = v21;
  v46 = v23;

  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
LABEL_5:
  if (v25 <= 3)
  {
    v27 = 3;
  }

  else
  {
    v27 = v25;
  }

  v28 = v27 + 1;
  v29 = 16 * v25 + 40;
  while (1)
  {
    if (v25 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B60);
      swift_arrayDestroy();
      v47 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9768);
      sub_1D417645C(&qword_1EDE32A60, &qword_1EC7C9768);
      v36 = sub_1D4419BB4();
      v38 = v37;

      *a3 = v36;
      a3[1] = v38;
      return result;
    }

    if (v28 == ++v25)
    {
      break;
    }

    v30 = v29 + 16;
    v31 = *&v40[v29];
    v29 += 16;
    if (v31)
    {
      v32 = *&v40[v30 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D438D2B4(0, *(v26 + 16) + 1, 1, v26);
        v26 = result;
      }

      v34 = *(v26 + 16);
      v33 = *(v26 + 24);
      if (v34 >= v33 >> 1)
      {
        result = sub_1D438D2B4((v33 > 1), v34 + 1, 1, v26);
        v26 = result;
      }

      *(v26 + 16) = v34 + 1;
      v35 = v26 + 16 * v34;
      *(v35 + 32) = v32;
      *(v35 + 40) = v31;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D438C38C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_1D438C56C(a5);
  if ((v9 & 1) != 0 || (a2 = a4, a1 = a3, (v9 & 0x100) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D4435D40;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1D4320054();
    if (a2)
    {
      v12 = a1;
    }

    else
    {
      v12 = 0;
    }

    v13 = 0xE000000000000000;
    if (a2)
    {
      v13 = a2;
    }

    *(v11 + 32) = v12;
    *(v11 + 40) = v13;

    v10 = sub_1D4419C24();
  }

  return v10;
}

void sub_1D438C47C()
{
  v0 = *MEMORY[0x1E69DD888];
  v1 = sub_1D4419C14();
  UIAccessibilityPostNotification(v0, v1);
}

id ICCalculateAccessibilityController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1D438C56C(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 <= 1 || a1 == 2)
    {
      goto LABEL_11;
    }
  }

  else if (a1 <= 4 || a1 == 5 || a1 == 6)
  {
LABEL_11:
    v1 = objc_opt_self();
    v2 = sub_1D4419C14();
    v3 = [v1 localizedFrameworkStringForKey:v2 value:0 table:0 allowSiri:1];

    v4 = sub_1D4419C54();
    return v4;
  }

  type metadata accessor for AnnouncementType(0);
  result = sub_1D441ADB4();
  __break(1u);
  return result;
}

uint64_t sub_1D438C800(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417C84();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1D4392788(&qword_1EC7C97B8, MEMORY[0x1E69B72D8]);
      v26 = sub_1D4419B84();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1D4392788(&qword_1EC7C97C0, MEMORY[0x1E69B72D8]);
        v31 = sub_1D4419BE4();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D438CBB0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1D441AEB4();

    sub_1D4419CD4();
    v16 = sub_1D441AF04();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1D441AD84() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

char *sub_1D438CD90(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_1D438CE8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB8F8);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1D438CF8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB890);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1D438D090(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB8E0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D438D194(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB8F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D438D2B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D438D408(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1D438D5C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB8C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1D438D6EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB8A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D438D814(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB8A0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1D438D918(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB888);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D438DA40(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1D438DAEC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB830);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

size_t sub_1D438DBA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D438DCA0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1D438DD28(uint64_t a1, uint64_t a2)
{
  v62[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1D4417494();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v56 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v48 - v9;
  MEMORY[0x1EEE9AC00](v8);
  i = v48 - v11;
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v62[0] = a1;
  v12 = *(a1 + 16);

  v50 = v12;
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v52 = a1;
  v53 = a1 + ((v16 + 32) & ~v16);
  v59 = *(v14 + 56);
  v60 = v15;
  v57 = (a2 + 56);
  v58 = a2;
  v61 = v14;
  v17 = (v14 - 8);
  v49 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v54 = v13 + 1;
    v62[1] = v13 + 1;
    v60(i, v53 + v59 * v13, v4);
    v51 = sub_1D4392788(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
    v18 = sub_1D4419B84();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v54;
    if (v54 == v50)
    {
      goto LABEL_30;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v60(v10, *(v58 + 48) + v20 * v59, v4);
    sub_1D4392788(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
    v24 = sub_1D4419BE4();
    v25 = *v17;
    (*v17)(v10, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) == 0)
    {
      a2 = v58;
      goto LABEL_10;
    }
  }

  v26 = (v25)(i, v4);
  v27 = v58;
  v28 = *(v58 + 32);
  v48[0] = ((1 << v28) + 63) >> 6;
  v29 = 8 * v48[0];
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v48[1] = v48;
    MEMORY[0x1EEE9AC00](v26);
    v31 = v48 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v57, v30);
    v32 = *(v27 + 16);
    *&v31[8 * v21] &= ~v22;
    v49 = v31;
    v50 = (v32 - 1);
    v33 = *(v52 + 16);
    v34 = v54;
    for (i = v33; ; v33 = i)
    {
      if (v34 == v33)
      {
        a2 = sub_1D4180E4C(v49, v48[0], v50, v27);
        goto LABEL_30;
      }

      if (v34 >= *(v52 + 16))
      {
        break;
      }

      v54 = v34;
      v60(v56, v53 + v34 * v59, v4);
      v36 = sub_1D4419B84();
      v37 = -1 << *(v27 + 32);
      v20 = v36 & ~v37;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v57[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v60(v10, *(v58 + 48) + v20 * v59, v4);
      v38 = sub_1D4419BE4();
      v25(v10, v4);
      if ((v38 & 1) == 0)
      {
        v39 = ~v37;
        while (1)
        {
          v20 = (v20 + 1) & v39;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v57[v20 >> 6]) == 0)
          {
            break;
          }

          v60(v10, *(v58 + 48) + v20 * v59, v4);
          v40 = sub_1D4419BE4();
          v25(v10, v4);
          if (v40)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v25(v56, v4);
        v27 = v58;
LABEL_16:
        v35 = v54;
        goto LABEL_17;
      }

LABEL_25:
      v25(v56, v4);
      v41 = v49[v22];
      v49[v22] = v41 & ~v21;
      v27 = v58;
      if ((v41 & v21) == 0)
      {
        goto LABEL_16;
      }

      v42 = v50 - 1;
      v35 = v54;
      if (__OFSUB__(v50, 1))
      {
        goto LABEL_33;
      }

      --v50;
      if (!v42)
      {

        a2 = MEMORY[0x1E69E7CD0];
        goto LABEL_30;
      }

LABEL_17:
      v34 = v35 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v44 = v29;

    v45 = v44;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v46 = v58;

      v27 = v46;
      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v57, v45);
  a2 = sub_1D438FDCC(v47, v48[0], v58, v20, v62);

  MEMORY[0x1DA6D8690](v47, -1, -1);
LABEL_30:

  return a2;
}

uint64_t sub_1D438E3E8(uint64_t a1, uint64_t a2)
{
  v93 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v64 - v9);
  v11 = sub_1D4417494();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v84 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v64 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v79 = (&v64 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v65 = v10;
  v67 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v78 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v86 = (v22 & v19);
  v71 = (63 - v21) >> 6;
  v85 = v17 + 16;
  v76 = (v17 + 48);
  v77 = (v17 + 56);
  v75 = (v17 + 32);
  v81 = (a2 + 56);
  v66 = v17;
  v87 = (v17 + 8);

  v24 = 0;
  v68 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v86;
    v26 = v24;
    if (v86)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v65;
      (*(v66 + 16))(v65, *(a1 + 48) + *(v66 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v71 <= (v24 + 1) ? v24 + 1 : v71;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v71)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v65;
    }

    v73 = *v77;
    v73(v30, v31, 1, v11);
    v88 = a1;
    v89 = v20;
    v90 = v78;
    v91 = v28;
    v92 = v2;
    v72 = *v76;
    if (v72(v30, 1, v11) == 1)
    {
      sub_1D41769C4(v30, &unk_1EC7CA4F0);
      goto LABEL_52;
    }

    v70 = *v75;
    v70(v79, v30, v11);
    v69 = sub_1D4392788(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
    v32 = sub_1D4419B84();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) != 0)
    {
      break;
    }

    (*v87)(v79, v11);
LABEL_22:
    v24 = v28;
    v86 = v2;
  }

  v64 = v87 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80 = ~v33;
  v34 = *(v66 + 72);
  v82 = *(v66 + 16);
  v83 = v34;
  while (1)
  {
    v82(v16, *(a2 + 48) + v83 * v24, v11);
    v35 = sub_1D4392788(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
    v36 = sub_1D4419BE4();
    v86 = *v87;
    v86(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v80;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) == 0)
    {
      a1 = v68;
      v86(v79, v11);
      goto LABEL_22;
    }
  }

  v80 = v35;
  v37 = (v86)(v79, v11);
  v38 = *(a2 + 32);
  v64 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v64;
  a1 = v68;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v65 = &v64;
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v64 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v81, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v79 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v67;
    v44 = i;
    v45 = v71;
LABEL_26:
    v66 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v82(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v83, v11);
      v50 = 0;
LABEL_39:
      v73(v24, v50, 1, v11);
      v88 = a1;
      v89 = v44;
      v90 = v78;
      v91 = v28;
      v92 = v2;
      if (v72(v24, 1, v11) == 1)
      {
        sub_1D41769C4(v24, &unk_1EC7CA4F0);
        a2 = sub_1D4180E4C(v79, v64, v66, a2);
        goto LABEL_52;
      }

      v70(v84, v24, v11);
      v51 = sub_1D4419B84();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v81[v54 >> 6]) != 0)
      {
        v82(v16, *(v52 + 48) + v54 * v83, v11);
        v55 = sub_1D4419BE4();
        v86(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v81[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v82(v16, *(v52 + 48) + v54 * v83, v11);
            v57 = sub_1D4419BE4();
            v86(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v86(v84, v11);
        v58 = v79[v26];
        v79[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
        if ((v58 & v20) != 0)
        {
          v43 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v86(v84, v11);
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v79 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v79;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v81, v61);
  a2 = sub_1D43901C0(v63, v64, v79, v24, &v88);

  MEMORY[0x1DA6D8690](v63, -1, -1);
LABEL_52:
  sub_1D419FA48();
  return a2;
}

uint64_t sub_1D438EE4C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v31[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v31[0] = a1;
    v28 = *(a1 + 16);
    if (v28)
    {
      v4 = 0;
      v5 = a2 + 56;
      v29 = *(a2 + 40);
      v30 = a1 + 32;
      v27 = -1 << *(a2 + 32);
      v6 = ~v27;
      while (1)
      {
        v7 = *(v30 + 8 * v4++);
        v8 = sub_1D441AEA4();
        v9 = v8 & v6;
        v10 = (v8 & v6) >> 6;
        v11 = 1 << (v8 & v6);
        if ((v11 & *(v5 + 8 * v10)) != 0)
        {
          break;
        }

LABEL_4:
        if (v4 == v28)
        {
          return v2;
        }
      }

      while (*(*(v2 + 48) + 8 * v9) != v7)
      {
        v9 = (v9 + 1) & v6;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & *(v5 + 8 * (v9 >> 6))) == 0)
        {
          goto LABEL_4;
        }
      }

      v31[1] = v4;
      v12 = (63 - v27) >> 6;
      v13 = 8 * v12;
      if (v12 > 0x80)
      {
        goto LABEL_29;
      }

      {
        v28 = v12;
        v29 = &v27;
        MEMORY[0x1EEE9AC00](i);
        v9 = &v27 - v15;
        memcpy(&v27 - v15, (v2 + 56), v13);
        v16 = *(v2 + 16);
        *(v9 + 8 * v10) &= ~v11;
        v13 = v16 - 1;
        v17 = *(a1 + 16);
        if (v4 == v17)
        {
          break;
        }

        v10 = *(v2 + 40);
        v12 = ~(-1 << *(v2 + 32));
        while (v4 < v17)
        {
          v11 = *(v30 + 8 * v4);
          v19 = sub_1D441AEA4();
          v20 = v19 & v12;
          v21 = (v19 & v12) >> 6;
          v22 = 1 << (v19 & v12);
          if ((v22 & *(v5 + 8 * v21)) != 0)
          {
            while (*(*(v2 + 48) + 8 * v20) != v11)
            {
              v20 = (v20 + 1) & v12;
              v21 = v20 >> 6;
              v22 = 1 << v20;
              if (((1 << v20) & *(v5 + 8 * (v20 >> 6))) == 0)
              {
                goto LABEL_17;
              }
            }

            v23 = *(v9 + 8 * v21);
            *(v9 + 8 * v21) = v23 & ~v22;
            if ((v23 & v22) != 0)
            {
              if (__OFSUB__(v13--, 1))
              {
                goto LABEL_28;
              }

              if (!v13)
              {

                v2 = MEMORY[0x1E69E7CD0];
                goto LABEL_14;
              }
            }
          }

LABEL_17:
          ++v4;
          v17 = *(a1 + 16);
          if (v4 == v17)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v25 = swift_slowAlloc();
          memcpy(v25, (v2 + 56), v13);
          v26 = sub_1D4390694(v25, v12, v2, v9, v31);

          MEMORY[0x1DA6D8690](v25, -1, -1);

          return v26;
        }
      }

LABEL_13:
      v2 = sub_1D43744D8(v9, v28, v13, v2);
LABEL_14:
    }
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D438F1C4(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1D441AEB4();

    sub_1D4419CD4();
    v23 = sub_1D441AF04();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1D441AD84() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1D4373E9C(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1D441AEB4();

            sub_1D4419CD4();
            v41 = sub_1D441AF04();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1D441AD84() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1D4390814(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x1DA6D8690](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_1D419FA48();
    return v5;
  }

  result = MEMORY[0x1DA6D8690](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D438F734(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v83 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D441A874();
    sub_1D41766C0(0, &qword_1EC7CAF48);
    sub_1D4392800(&qword_1EC7CB8D8, &qword_1EC7CAF48);
    sub_1D441A0A4();
    v4 = v78;
    v6 = v79;
    v7 = v80;
    v8 = v81;
    v9 = v82;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v73 = v4;
  v74 = v6;
  v75 = v7;
  v76 = v8;
  v64 = v7;
  v13 = (v7 + 64) >> 6;
  v70 = (v3 + 56);
  v77 = v9;
  v67 = v6;
  v68 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = sub_1D441A8F4();
      if (!v21)
      {
        goto LABEL_62;
      }

      v71 = v21;
      sub_1D41766C0(0, &qword_1EC7CAF48);
      swift_dynamicCast();
      v19 = v72;
      v17 = v8;
      v2 = v9;
      if (!v72)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        v16 = v13 <= (v8 + 1) ? v8 + 1 : v13;
        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_66;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v73 = v4;
      v74 = v6;
      v75 = v64;
      v76 = v17;
      v77 = v2;
      if (!v19)
      {
        goto LABEL_62;
      }
    }

    v22 = v19;
    v23 = sub_1D441A5D4();
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v67;
    v4 = v68;
  }

  v25 = ~v24;
  v26 = sub_1D41766C0(0, &qword_1EC7CAF48);
  v27 = *(*(v3 + 48) + 8 * v8);
  v69 = v26;
  while (1)
  {
    v28 = sub_1D441A5E4();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(*(v3 + 48) + 8 * v8);
  }

  v30 = *(v3 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v61;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v62 = &v60;
    MEMORY[0x1EEE9AC00](v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = *(v3 + 16);
    v63 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v67;
    v35 = v68;
    v37 = i;
LABEL_33:
    v65 = v4;
    while (v35 < 0)
    {
      v38 = sub_1D441A8F4();
      if (!v38)
      {
        goto LABEL_61;
      }

      v71 = v38;
      swift_dynamicCast();
      v39 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = sub_1D441A5D4();
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v70[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(*(v45 + 48) + 8 * v47);
          v51 = sub_1D441A5E4();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v70[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v63[v48];
        v63[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
        if (!v53)
        {
          v4 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v3 = MEMORY[0x1E69E7CD0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v41;
      v17 = v41;
      v77 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_1D43746C4(v63, v61, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= v17 + 1)
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v55 = v5;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_1D4390A4C(v57, v61, v3, v8, &v73);
  v59 = v58;

  MEMORY[0x1DA6D8690](v57, -1, -1);
  v3 = v59;
LABEL_62:
  sub_1D419FA48();
  return v3;
}