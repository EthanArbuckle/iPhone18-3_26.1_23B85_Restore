uint64_t sub_1C6437E60(uint64_t a1)
{
  v2 = sub_1C645C6C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C645C3B4();
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - v12;
  v14 = sub_1C645C674();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  sub_1C6423890(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1C6423A18(v13);
    return 0;
  }

  else
  {
    v23 = *(v15 + 32);
    v43 = v21;
    v23(v21, v13, v14);
    sub_1C645C6A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4520, &qword_1C64739D0);
    v24 = sub_1C645C6B4();
    v25 = *(v24 - 8);
    v41 = v2;
    v26 = v25;
    v27 = *(v25 + 72);
    v28 = *(v26 + 80);
    v42 = v7;
    v40 = v3;
    v29 = (v28 + 32) & ~v28;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1C6472810;
    (*(v26 + 104))(v30 + v29, *MEMORY[0x1E6969A48], v24);
    sub_1C6437B40(v30);
    v39 = v6;
    v31 = v44;
    swift_setDeallocating();
    (*(v26 + 8))(v30 + v29, v24);
    swift_deallocClassInstance();
    sub_1C645C664();
    v32 = v45;
    v33 = v43;
    v34 = v39;
    sub_1C645C694();

    v35 = *(v15 + 8);
    v35(v19, v14);
    (*(v40 + 8))(v34, v41);
    v36 = sub_1C645C3A4();
    LOBYTE(v34) = v37;
    (*(v31 + 8))(v32, v42);
    v35(v33, v14);
    if (v34)
    {
      return 0;
    }

    else
    {
      return v36 & ~(v36 >> 63);
    }
  }
}

uint64_t sub_1C64382A8(unint64_t *a1, void (*a2)(uint64_t))
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

void __swiftcall MailMessageEntityID.init(using:uniqueIdentifier:)(EmailDaemon::MailMessageEntityID *__return_ptr retstr, CSSearchableItemAttributeSet using, Swift::String uniqueIdentifier)
{
  object = uniqueIdentifier._object;
  countAndFlagsBits = uniqueIdentifier._countAndFlagsBits;
  v6 = [(objc_class *)using.super.isa protectionClass];
  if (!v6)
  {
    v6 = *MEMORY[0x1E696A388];
  }

  v7 = v6;
  isa = using.super.isa;
  v8 = [(objc_class *)using.super.isa mailMessageID];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1C645C874();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C64737A0;
  *(v13 + 32) = 49;
  *(v13 + 40) = 0xE100000000000000;
  *(v13 + 48) = 51;
  *(v13 + 56) = 0xE100000000000000;
  v14 = sub_1C645C874();
  v16 = v15;

  *(v13 + 64) = v14;
  *(v13 + 72) = v16;
  *(v13 + 80) = v10;
  *(v13 + 88) = v12;
  *(v13 + 96) = countAndFlagsBits;
  *(v13 + 104) = object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C3FB0, &unk_1C6473850);
  sub_1C6431A68();
  v17 = sub_1C645C824();
  v19 = v18;

  retstr->version._countAndFlagsBits = 49;
  retstr->version._object = 0xE100000000000000;
  retstr->bundleID._countAndFlagsBits = 0xD000000000000014;
  retstr->bundleID._object = 0x80000001C64E5570;
  retstr->protectionClass._rawValue = v7;
  retstr->mailMessageID._countAndFlagsBits = v10;
  retstr->mailMessageID._object = v12;
  retstr->uniqueIdentifier._countAndFlagsBits = countAndFlagsBits;
  retstr->uniqueIdentifier._object = object;
  retstr->encodedID._countAndFlagsBits = v17;
  retstr->encodedID._object = v19;
}

void __swiftcall MailMessageEntityID.init(using:uniqueIdentifier:version:)(EmailDaemon::MailMessageEntityID *__return_ptr retstr, CSSearchableItemAttributeSet using, Swift::String uniqueIdentifier, Swift::String version)
{
  object = version._object;
  countAndFlagsBits = version._countAndFlagsBits;
  v6 = uniqueIdentifier._object;
  v25 = uniqueIdentifier._countAndFlagsBits;

  v9 = [(objc_class *)using.super.isa protectionClass];
  if (!v9)
  {
    v9 = *MEMORY[0x1E696A388];
  }

  v10 = v9;
  isa = using.super.isa;
  v11 = [(objc_class *)using.super.isa mailMessageID];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1C645C874();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C64737A0;
  *(v16 + 32) = countAndFlagsBits;
  *(v16 + 40) = object;
  *(v16 + 48) = 51;
  *(v16 + 56) = 0xE100000000000000;
  v17 = sub_1C645C874();
  v23 = countAndFlagsBits;
  v19 = v18;

  *(v16 + 64) = v17;
  *(v16 + 72) = v19;
  *(v16 + 80) = v13;
  *(v16 + 88) = v15;
  *(v16 + 96) = v25;
  *(v16 + 104) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C3FB0, &unk_1C6473850);
  sub_1C6431A68();
  v20 = sub_1C645C824();
  v22 = v21;

  retstr->version._countAndFlagsBits = v23;
  retstr->version._object = object;
  retstr->bundleID._countAndFlagsBits = 0xD000000000000014;
  retstr->bundleID._object = 0x80000001C64E5570;
  retstr->protectionClass._rawValue = v10;
  retstr->mailMessageID._countAndFlagsBits = v13;
  retstr->mailMessageID._object = v15;
  retstr->uniqueIdentifier._countAndFlagsBits = v25;
  retstr->uniqueIdentifier._object = v6;
  retstr->encodedID._countAndFlagsBits = v20;
  retstr->encodedID._object = v22;
}

void MailMessageEntityID.init(using:)(void *a1@<X0>, void *a2@<X8>)
{
  v23 = *MEMORY[0x1E696A388];
  v4 = [a1 objectID];
  v5 = [v4 globalMessageID];

  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v7 = [v6 stringValue];

  v8 = sub_1C645C874();
  v10 = v9;

  v24 = a1;
  v11 = [a1 searchableMessageID];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 stringValue];

    v14 = sub_1C645C874();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C64737A0;
  *(v17 + 32) = 49;
  *(v17 + 40) = 0xE100000000000000;
  *(v17 + 48) = 51;
  *(v17 + 56) = 0xE100000000000000;
  *(v17 + 64) = sub_1C645C874();
  *(v17 + 72) = v18;
  v19 = v8;
  *(v17 + 80) = v8;
  *(v17 + 88) = v10;
  *(v17 + 96) = v14;
  *(v17 + 104) = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C3FB0, &unk_1C6473850);
  sub_1C6431A68();
  v20 = sub_1C645C824();
  v22 = v21;

  *a2 = 49;
  a2[1] = 0xE100000000000000;
  a2[2] = 0xD000000000000014;
  a2[3] = 0x80000001C64E5570;
  a2[4] = v23;
  a2[5] = v19;
  a2[6] = v10;
  a2[7] = v14;
  a2[8] = v16;
  a2[9] = v20;
  a2[10] = v22;
}

void __swiftcall MailMessageEntityID.init(mailMessageID:uniqueIdentifier:fileProtectionType:)(EmailDaemon::MailMessageEntityID *__return_ptr retstr, Swift::String mailMessageID, Swift::String uniqueIdentifier, NSFileProtectionType fileProtectionType)
{
  object = uniqueIdentifier._object;
  countAndFlagsBits = uniqueIdentifier._countAndFlagsBits;
  v7 = mailMessageID._object;
  v8 = mailMessageID._countAndFlagsBits;
  retstr->version._countAndFlagsBits = 49;
  retstr->version._object = 0xE100000000000000;
  retstr->bundleID._countAndFlagsBits = 0xD000000000000014;
  retstr->bundleID._object = 0x80000001C64E5570;
  retstr->protectionClass._rawValue = fileProtectionType;
  retstr->mailMessageID = mailMessageID;
  retstr->uniqueIdentifier = uniqueIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C64737A0;
  *(v10 + 32) = 49;
  *(v10 + 40) = 0xE100000000000000;
  *(v10 + 48) = 51;
  *(v10 + 56) = 0xE100000000000000;
  *(v10 + 64) = sub_1C645C874();
  *(v10 + 72) = v11;
  *(v10 + 80) = v8;
  *(v10 + 88) = v7;
  *(v10 + 96) = countAndFlagsBits;
  *(v10 + 104) = object;
  v12 = fileProtectionType;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C3FB0, &unk_1C6473850);
  sub_1C6431A68();
  v13 = sub_1C645C824();
  v15 = v14;

  retstr->encodedID._countAndFlagsBits = v13;
  retstr->encodedID._object = v15;
}

void __swiftcall MailMessageEntityID.init(with:)(EmailDaemon::MailMessageEntityID_optional *__return_ptr retstr, Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  sub_1C640DAC0();
  v5 = sub_1C645CBE4();
  v6 = v5;
  if (v5[2] == 5)
  {
    v8 = v5[4];
    v7 = v5[5];
    v9 = v5[7];
    v21 = v5[6];
    v10 = v5[8];
    v11 = v5[9];

    v12 = sub_1C645C844();

    v13 = v6[2];
    if (v13 < 4)
    {
      __break(1u);
    }

    else
    {
      v19 = v7;
      v20 = v9;
      v14 = v6[10];
      v15 = v6[11];

      if (v13 != 4)
      {
        v16 = countAndFlagsBits;
        v17 = v6[12];
        v18 = v6[13];

        retstr->value.version._countAndFlagsBits = v8;
        retstr->value.version._object = v19;
        retstr->value.bundleID._countAndFlagsBits = v21;
        retstr->value.bundleID._object = v20;
        retstr->value.protectionClass._rawValue = v12;
        retstr->value.mailMessageID._countAndFlagsBits = v14;
        retstr->value.mailMessageID._object = v15;
        retstr->value.uniqueIdentifier._countAndFlagsBits = v17;
        retstr->value.uniqueIdentifier._object = v18;
        retstr->value.encodedID._countAndFlagsBits = v16;
        retstr->value.encodedID._object = object;
        return;
      }
    }

    __break(1u);
  }

  else
  {

    retstr->value.encodedID._object = 0;
    *&retstr->value.mailMessageID._object = 0u;
    *&retstr->value.uniqueIdentifier._object = 0u;
    retstr->value.bundleID = 0u;
    *&retstr->value.protectionClass._rawValue = 0u;
    retstr->value.version = 0u;
  }
}

uint64_t MailMessageEntityID.version.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MailMessageEntityID.bundleID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MailMessageEntityID.mailMessageID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t MailMessageEntityID.mailMessageID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t MailMessageEntityID.uniqueIdentifier.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t MailMessageEntityID.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t MailMessageEntityID.encodedID.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t MailMessageEntityID.encodedID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C6438DC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1C6438E0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C6438E80(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v87 - v6;
  v91 = sub_1C645C674();
  v8 = *(v91 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6401D00(0, &qword_1EDC93590, 0x1E696AD98);
  v12 = sub_1C645CB44();
  [a1 setRequiresImport_];

  v13 = type metadata accessor for SearchableAttachment();
  v14 = (v2 + v13[6]);
  v15 = *v14;
  v16 = v14[1];
  v17 = sub_1C645C844();
  [a1 setDisplayName_];

  v18 = (v2 + v13[9]);
  v19 = *v18;
  v20 = v18[1];
  v21 = sub_1C645C844();
  [a1 setRelatedUniqueIdentifier_];

  v22 = sub_1C645C444();
  [a1 setContentURL_];

  v23 = (v2 + v13[7]);
  if (v23[1])
  {
    v24 = *v23;
    v25 = sub_1C645C844();
  }

  else
  {
    v25 = 0;
  }

  [a1 setAccountIdentifier_];

  v26 = (v2 + v13[10]);
  v27 = *v26;
  v28 = v26[1];
  v29 = sub_1C645C844();
  [a1 setMailMessageID_];

  v90 = *(v2 + v13[8]);
  v30 = sub_1C645CA04();
  [a1 setMailboxIdentifiers_];

  v31 = (v2 + v13[13]);
  v32 = v31[3];
  v89 = v31;
  if (v32)
  {
    v34 = v31[1];
    v33 = v31[2];
    v35 = *v31;
    sub_1C6401D00(0, &qword_1EDC93598, 0x1E6964E50);
    v88 = v13;
    v92 = v35;
    v93 = v34;
    v94 = v33;
    v95 = v32;

    v36 = sub_1C643C098(&v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C3D18, &qword_1C6472530);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1C6472520;
    *(v37 + 32) = v36;
    v13 = v88;
    v32 = sub_1C645CA04();
  }

  [a1 setAuthors_];

  sub_1C6423890(v2 + v13[15], v7);
  if ((*(v8 + 48))(v7, 1, v91) == 1)
  {
    sub_1C640D570(v7, &qword_1EC1C4050, &unk_1C6472830);
  }

  else
  {
    (*(v8 + 32))(v11, v7, v91);
    v38 = sub_1C645C614();
    if (qword_1EDC93E38 != -1)
    {
      swift_once();
    }

    v39 = sub_1C645C844();
    [a1 markAsDownloaded:v38 userHandle:v39];

    (*(v8 + 8))(v11, v91);
  }

  v92 = sub_1C645C874();
  v93 = v40;
  MEMORY[0x1EEE9AC00](v92);
  *(&v87 - 2) = &v92;
  v41 = v90;
  v42 = sub_1C6444358(sub_1C6439C90, (&v87 - 4), v90);

  if ((v42 & 1) == 0)
  {
    v43 = *MEMORY[0x1E6963B48];
    v92 = sub_1C645C874();
    v93 = v44;
    MEMORY[0x1EEE9AC00](v92);
    *(&v87 - 2) = &v92;
    v45 = sub_1C6444358(sub_1C643A748, (&v87 - 4), v41);

    if ((v45 & 1) == 0)
    {
      v88 = 0;
      v46 = v13[14];
      v91 = v2;
      v47 = *(v2 + v46);
      v48 = v47[2];
      if (v48)
      {
        v87 = a1;
        v92 = MEMORY[0x1E69E7CC0];
        sub_1C6440AD0(0, v48, 0);
        v49 = v92;
        v50 = (v47 + 5);
        v51 = (v47 + 5);
        do
        {
          v53 = *v51;
          v51 += 4;
          v52 = v53;
          if (v53)
          {
            v54 = *(v50 - 1);
            v55 = v52;
          }

          else
          {
            v54 = 0;
            v55 = 0xE000000000000000;
          }

          v92 = v49;
          v57 = *(v49 + 16);
          v56 = *(v49 + 24);

          if (v57 >= v56 >> 1)
          {
            sub_1C6440AD0((v56 > 1), v57 + 1, 1);
            v49 = v92;
          }

          *(v49 + 16) = v57 + 1;
          v58 = v49 + 16 * v57;
          *(v58 + 32) = v54;
          *(v58 + 40) = v55;
          v50 = v51;
          --v48;
        }

        while (v48);
        v59 = v47[2];
        if (v59)
        {
          v92 = MEMORY[0x1E69E7CC0];
          sub_1C6440AD0(0, v59, 0);
          v60 = v92;
          v61 = v47 + 7;
          do
          {
            v62 = *(v61 - 1);
            v63 = *v61;
            v92 = v60;
            v65 = *(v60 + 16);
            v64 = *(v60 + 24);

            if (v65 >= v64 >> 1)
            {
              sub_1C6440AD0((v64 > 1), v65 + 1, 1);
              v60 = v92;
            }

            *(v60 + 16) = v65 + 1;
            v66 = v60 + 16 * v65;
            *(v66 + 32) = v62;
            *(v66 + 40) = v63;
            v61 += 4;
            --v59;
          }

          while (v59);
        }

        a1 = v87;
        v41 = v90;
      }

      v67 = *MEMORY[0x1E6963B60];
      v92 = sub_1C645C874();
      v93 = v68;
      MEMORY[0x1EEE9AC00](v92);
      *(&v87 - 2) = &v92;
      v69 = sub_1C6444358(sub_1C643A748, (&v87 - 4), v41);

      if (v69)
      {
        v70 = v91 + v13[11];
        v71 = sub_1C645C614();
        v72 = v89;
        if (v89[3] && v89[1])
        {
          v73 = *v89;
          v74 = v89[1];
        }

        else
        {
        }

        v79 = sub_1C645C844();

        if (v72[3])
        {
          v80 = v72[2];
          v81 = v72[3];
        }

        v84 = sub_1C645C844();

        v85 = sub_1C645CA04();

        v86 = sub_1C645CA04();

        [a1 markAsSent:v71 sender:v79 senderHandle:v84 recipients:v85 recipientHandles:v86 transport:@"com.apple.mail"];
      }

      else
      {
        v75 = v91 + v13[12];
        v71 = sub_1C645C614();
        v76 = v89;
        if (v89[3] && v89[1])
        {
          v77 = *v89;
          v78 = v89[1];
        }

        else
        {
        }

        v79 = sub_1C645C844();

        if (v76[3])
        {
          v82 = v76[2];
          v83 = v76[3];
        }

        v84 = sub_1C645C844();

        v85 = sub_1C645CA04();

        v86 = sub_1C645CA04();

        [a1 markAsReceived:v71 sender:v79 senderHandle:v84 recipients:v85 recipientHandles:v86 transport:@"com.apple.mail"];
      }
    }
  }
}

uint64_t type metadata accessor for SearchableAttachment()
{
  result = qword_1EDC93CA0;
  if (!qword_1EDC93CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C64397D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C645C674();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = &v39 - v10;
  sub_1C645C514();
  sub_1C643A700(&qword_1EC1C4560, MEMORY[0x1E6968FB0]);
  sub_1C645C814();
  v11 = type metadata accessor for SearchableAttachment();
  v12 = v11[5];
  sub_1C645C794();
  sub_1C643A700(&qword_1EC1C4568, MEMORY[0x1E69E8450]);
  sub_1C645C814();
  v13 = (v2 + v11[6]);
  v14 = *v13;
  v15 = v13[1];
  sub_1C645C8E4();
  v16 = (v2 + v11[7]);
  if (v16[1])
  {
    v17 = *v16;
    sub_1C645D004();
    sub_1C645C8E4();
  }

  else
  {
    sub_1C645D004();
  }

  v18 = *(v2 + v11[8]);
  MEMORY[0x1C6958D60](*(v18 + 16));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = (v18 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;

      sub_1C645C8E4();

      v20 += 2;
      --v19;
    }

    while (v19);
  }

  v23 = (v2 + v11[9]);
  v24 = *v23;
  v25 = v23[1];
  sub_1C645C8E4();
  v26 = (v2 + v11[10]);
  v27 = *v26;
  v28 = v26[1];
  sub_1C645C8E4();
  v29 = v11[11];
  sub_1C643A700(&qword_1EC1C4570, MEMORY[0x1E6969530]);
  sub_1C645C814();
  v30 = v2 + v11[12];
  sub_1C645C814();
  v31 = (v2 + v11[13]);
  if (v31[3])
  {
    v40 = v4;
    v32 = v5;
    v33 = *v31;
    v34 = v31[1];
    v35 = v31[2];
    sub_1C645D004();
    sub_1C645D004();
    if (v34)
    {
      sub_1C645C8E4();
    }

    sub_1C645C8E4();
    v5 = v32;
    v4 = v40;
  }

  else
  {
    sub_1C645D004();
  }

  v36 = v42;
  sub_1C6442FD8(a1, *(v2 + v11[14]));
  sub_1C6423890(v2 + v11[15], v36);
  if ((*(v5 + 48))(v36, 1, v4) == 1)
  {
    return sub_1C645D004();
  }

  v38 = v41;
  (*(v5 + 32))(v41, v36, v4);
  sub_1C645D004();
  sub_1C645C814();
  return (*(v5 + 8))(v38, v4);
}

uint64_t sub_1C6439C0C()
{
  sub_1C645CFE4();
  sub_1C64397D0(v1);
  return sub_1C645D024();
}

uint64_t sub_1C6439C50()
{
  sub_1C645CFE4();
  sub_1C64397D0(v1);
  return sub_1C645D024();
}

void sub_1C6439CD8()
{
  sub_1C645C514();
  if (v0 <= 0x3F)
  {
    sub_1C645C794();
    if (v1 <= 0x3F)
    {
      sub_1C6439E90(319, &qword_1EDC939A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C6439E90(319, &qword_1EDC93980, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1C645C674();
          if (v4 <= 0x3F)
          {
            sub_1C6439E90(319, &qword_1EDC93E40, &type metadata for SearchableMessage.EmailAddress, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1C6439E90(319, &qword_1EDC93988, &type metadata for SearchableMessage.EmailAddress, MEMORY[0x1E69E62F8]);
              if (v6 <= 0x3F)
              {
                sub_1C64167FC();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C6439E90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

BOOL sub_1C6439F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C645C674();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v75 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C40D0, &unk_1C6472D20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v75 - v15;
  if ((sub_1C645C464() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for SearchableAttachment();
  v18 = v17[5];
  if ((sub_1C645C774() & 1) == 0)
  {
    return 0;
  }

  v19 = v17[6];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v20 == *v22 && v21 == v22[1];
  if (!v23 && (sub_1C645CF24() & 1) == 0)
  {
    return 0;
  }

  v24 = v17[7];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_1C645CF24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  if ((sub_1C6441FF4(*(a1 + v17[8]), *(a2 + v17[8])) & 1) == 0)
  {
    return 0;
  }

  v29 = v17[9];
  v30 = *(a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  if ((v30 != *v32 || v31 != v32[1]) && (sub_1C645CF24() & 1) == 0)
  {
    return 0;
  }

  v33 = v17[10];
  v34 = *(a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  if ((v34 != *v36 || v35 != v36[1]) && (sub_1C645CF24() & 1) == 0)
  {
    return 0;
  }

  v37 = v17[11];
  if ((sub_1C645C644() & 1) == 0)
  {
    return 0;
  }

  v38 = v17[12];
  if ((sub_1C645C644() & 1) == 0)
  {
    return 0;
  }

  v39 = v17[13];
  v41 = *(a1 + v39);
  v40 = *(a1 + v39 + 8);
  v42 = *(a1 + v39 + 16);
  v43 = *(a1 + v39 + 24);
  v44 = (a2 + v39);
  v81 = *v44;
  v82 = v44[1];
  v80 = v44[2];
  v45 = v44[3];
  if (!v43)
  {
    v75 = 0;
    v77 = v41;
    v78 = v42;
    v79 = v40;
    v43 = v45;
    sub_1C643A6BC(v41, v40, v42, 0);
    if (!v43)
    {
      sub_1C643A6BC(v81, v82, v80, 0);
      v62 = v78;
      v63 = v79;
      v61 = v77;
      goto LABEL_43;
    }

    v49 = v81;
    v48 = v82;
    v50 = v80;
    v51 = v43;
    sub_1C643A6BC(v81, v82, v80, v43);
    v52 = v78;
    v53 = v79;
    v54 = v77;
    v43 = v75;
LABEL_35:
    sub_1C6423964(v54, v53, v52, v43);
    v55 = v49;
    v56 = v48;
    v57 = v50;
    v58 = v51;
LABEL_50:
    sub_1C6423964(v55, v56, v57, v58);
    return 0;
  }

  if (!v45)
  {
    v53 = v40;
    v52 = v42;
    v51 = 0;
    v54 = v41;
    sub_1C643A6BC(v41, v40, v42, v43);
    v49 = v81;
    v48 = v82;
    v50 = v80;
    sub_1C643A6BC(v81, v82, v80, 0);
    sub_1C643A6BC(v54, v53, v52, v43);

    goto LABEL_35;
  }

  if (v40)
  {
    if (!v82)
    {
      v76 = v44[3];
      v60 = 0;
      v47 = v40;
      v59 = v40;
      goto LABEL_49;
    }

    if (v41 != v81 || v40 != v82)
    {
      v78 = v42;
      v79 = v40;
      v76 = v45;
      v77 = v41;
      v46 = sub_1C645CF24();
      v45 = v76;
      v41 = v77;
      v42 = v78;
      v40 = v79;
      if ((v46 & 1) == 0)
      {
        v47 = v79;
LABEL_38:
        v59 = v40;
        v60 = v82;
LABEL_49:
        v67 = v42;
        v68 = v41;
        sub_1C643A6BC(v41, v47, v42, v43);
        v70 = v80;
        v69 = v81;
        v71 = v76;
        sub_1C643A6BC(v81, v60, v80, v76);
        sub_1C643A6BC(v68, v47, v67, v43);
        sub_1C6423964(v69, v60, v70, v71);

        v55 = v68;
        v56 = v59;
        v57 = v67;
        v58 = v43;
        goto LABEL_50;
      }
    }
  }

  else if (v82)
  {
    v76 = v44[3];
    v47 = 0;
    goto LABEL_38;
  }

  v78 = v42;
  v79 = v40;
  v77 = v41;
  if (v42 == v80 && v43 == v45)
  {
    sub_1C643A6BC(v41, v40, v42, v43);
    sub_1C643A6BC(v81, v82, v78, v43);
    sub_1C643A6BC(v77, v79, v78, v43);
    sub_1C6423964(v81, v82, v78, v43);

    v61 = v77;
    v62 = v78;
    v63 = v79;
LABEL_43:
    sub_1C6423964(v61, v63, v62, v43);
    goto LABEL_44;
  }

  v76 = v45;
  LODWORD(v75) = sub_1C645CF24();
  sub_1C643A6BC(v77, v79, v78, v43);
  sub_1C643A6BC(v81, v82, v80, v76);
  sub_1C643A6BC(v77, v79, v78, v43);
  sub_1C6423964(v81, v82, v80, v76);

  sub_1C6423964(v77, v79, v78, v43);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_44:
  if (sub_1C64422C4(*(a1 + v17[14]), *(a2 + v17[14])))
  {
    v64 = v17[15];
    v65 = *(v13 + 48);
    sub_1C6423890(a1 + v64, v16);
    sub_1C6423890(a2 + v64, &v16[v65]);
    v66 = *(v5 + 48);
    if (v66(v16, 1, v4) == 1)
    {
      if (v66(&v16[v65], 1, v4) == 1)
      {
        sub_1C640D570(v16, &qword_1EC1C4050, &unk_1C6472830);
        return 1;
      }
    }

    else
    {
      sub_1C6423890(v16, v12);
      if (v66(&v16[v65], 1, v4) != 1)
      {
        (*(v5 + 32))(v8, &v16[v65], v4);
        sub_1C643A700(&qword_1EC1C40D8, MEMORY[0x1E6969530]);
        v73 = sub_1C645C834();
        v74 = *(v5 + 8);
        v74(v8, v4);
        v74(v12, v4);
        sub_1C640D570(v16, &qword_1EC1C4050, &unk_1C6472830);
        return (v73 & 1) != 0;
      }

      (*(v5 + 8))(v12, v4);
    }

    sub_1C640D570(v16, &qword_1EC1C40D0, &unk_1C6472D20);
  }

  return 0;
}

uint64_t sub_1C643A6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1C643A700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SearchableIndexMetric.init(name:unit:value:healthy:warning:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (a5 < a7 || a8 < a6)
  {
    __break(1u);
  }

  else
  {
    if (a8 < a4 || a4 < a7)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v11 = a6 < a4 || a4 < a5;
    *a9 = result;
    *(a9 + 8) = a2;
    if (!v11)
    {
      v10 = 0;
    }

    *(a9 + 16) = *a3;
    *(a9 + 32) = a4;
    *(a9 + 40) = v10;
  }

  return result;
}

uint64_t SearchableIndexMetric.Unit.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v1);
  return MEMORY[0x1C6958D60](v2);
}

uint64_t SearchableIndexMetric.Unit.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  return sub_1C645D024();
}

uint64_t sub_1C643A888()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  return sub_1C645D024();
}

uint64_t sub_1C643A8F0()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v1);
  return MEMORY[0x1C6958D60](v2);
}

uint64_t sub_1C643A938()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  return sub_1C645D024();
}

uint64_t SearchableIndexMetric.Level.hashValue.getter()
{
  v1 = *v0;
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  return sub_1C645D024();
}

uint64_t SearchableIndexMetric.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchableIndexMetric.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 SearchableIndexMetric.unit.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 SearchableIndexMetric.unit.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

__n128 SearchableIndexMetric.init(name:unit:value:level:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, unsigned __int8 *a5@<X4>, __n128 *a6@<X8>)
{
  v6 = *a5;
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  result = *a3;
  a6[1] = *a3;
  a6[2].n128_u64[0] = a4;
  a6[2].n128_u8[8] = v6;
  return result;
}

uint64_t sub_1C643AB98()
{
  v1 = *v0;
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  return sub_1C645D024();
}

uint64_t sub_1C643ABE0()
{
  v1 = *v0;
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  return sub_1C645D024();
}

uint64_t sub_1C643AC24()
{
  v1 = 1701667182;
  v2 = 0x65756C6176;
  if (*v0 != 2)
  {
    v2 = 0x6C6576656CLL;
  }

  if (*v0)
  {
    v1 = 1953066613;
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

uint64_t sub_1C643AC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C643BB1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C643ACBC(uint64_t a1)
{
  v2 = sub_1C643B460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C643ACF8(uint64_t a1)
{
  v2 = sub_1C643B460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchableIndexMetric.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1C645C8E4();
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  return MEMORY[0x1C6958D60](v6);
}

uint64_t SearchableIndexMetric.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1C645CFE4();
  sub_1C645C8E4();
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  MEMORY[0x1C6958D60](v6);
  return sub_1C645D024();
}

uint64_t sub_1C643AE50()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1C645CFE4();
  sub_1C645C8E4();
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  MEMORY[0x1C6958D60](v6);
  return sub_1C645D024();
}

uint64_t sub_1C643AEFC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1C645C8E4();
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  return MEMORY[0x1C6958D60](v6);
}

uint64_t sub_1C643AF6C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1C645CFE4();
  sub_1C645C8E4();
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  MEMORY[0x1C6958D60](v6);
  return sub_1C645D024();
}

uint64_t SearchableIndexMetric.Level.encode(to:)()
{
  *v0;
  sub_1C645C944();
}

uint64_t sub_1C643B104()
{
  *v0;
  sub_1C645C944();
}

uint64_t SearchableIndexMetric.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4578, &qword_1C6473B10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v16 = v1[3];
  v17 = v10;
  v15 = v1[4];
  v21 = *(v1 + 40);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C643B460();
  sub_1C645D064();
  LOBYTE(v19) = 0;
  v12 = v18;
  sub_1C645CEC4();
  if (!v12)
  {
    v13 = v21;
    v19 = v17;
    v20 = v16;
    v22 = 1;
    sub_1C643B4B4();
    sub_1C645CEE4();
    LOBYTE(v19) = 2;
    sub_1C645CED4();
    LOBYTE(v19) = v13;
    v22 = 3;
    sub_1C643B508();
    sub_1C645CEE4();
  }

  return (*(v4 + 8))(v7, v3);
}

BOOL _s11EmailDaemon21SearchableIndexMetricV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
  }

  else
  {
    v11 = sub_1C645CF24();
    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v7 && v4 == v6 && v3 == v8)
  {
    return v5 == v9;
  }

  return result;
}

unint64_t sub_1C643B460()
{
  result = qword_1EC1C4580;
  if (!qword_1EC1C4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4580);
  }

  return result;
}

unint64_t sub_1C643B4B4()
{
  result = qword_1EC1C4588;
  if (!qword_1EC1C4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4588);
  }

  return result;
}

unint64_t sub_1C643B508()
{
  result = qword_1EC1C4590;
  if (!qword_1EC1C4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4590);
  }

  return result;
}

unint64_t sub_1C643B560()
{
  result = qword_1EC1C4598;
  if (!qword_1EC1C4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4598);
  }

  return result;
}

unint64_t sub_1C643B5B8()
{
  result = qword_1EC1C45A0;
  if (!qword_1EC1C45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45A0);
  }

  return result;
}

unint64_t sub_1C643B610()
{
  result = qword_1EC1C45A8;
  if (!qword_1EC1C45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45A8);
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

uint64_t sub_1C643B678(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1C643B6C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchableIndexMetric.Unit(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SearchableIndexMetric.Unit(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ItemKind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ItemKind(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SearchableIndexMetric.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SearchableIndexMetric.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C643BA18()
{
  result = qword_1EC1C45B0;
  if (!qword_1EC1C45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45B0);
  }

  return result;
}

unint64_t sub_1C643BA70()
{
  result = qword_1EC1C45B8;
  if (!qword_1EC1C45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45B8);
  }

  return result;
}

unint64_t sub_1C643BAC8()
{
  result = qword_1EC1C45C0;
  if (!qword_1EC1C45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45C0);
  }

  return result;
}

uint64_t sub_1C643BB1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C645CF24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (sub_1C645CF24() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1C645CF24() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6576656CLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C645CF24();

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

uint64_t sub_1C643BC88(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1C645C9C4();
  }

  else
  {
    return 0;
  }
}

EmailDaemon::SearchableMessage::EmailAddress __swiftcall SearchableMessage.EmailAddress.init(displayName:address:)(Swift::String_optional displayName, Swift::String address)
{
  *v2 = displayName;
  v2[1].value = address;
  result.address = address;
  result.displayName = displayName;
  return result;
}

void __swiftcall SearchableMessage.EmailAddress.init(commentedAddress:)(EmailDaemon::SearchableMessage::EmailAddress_optional *__return_ptr retstr, Swift::String commentedAddress)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C45C8, &unk_1C6473E50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v41 - v5;
  v7 = sub_1C645C844();
  v8 = [v7 emailAddressValue];
  v9 = [v8 displayName];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v7 stringValue];
  }

  v12 = v11;

  v13 = v12;
  v14 = sub_1C645C874();
  v16 = v15;

  v17 = sub_1C645C844();

  v18 = v17;
  v19 = [v18 emailAddressValue];
  v20 = [v19 simpleAddress];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = [v18 stringValue];
  }

  v23 = v22;

  v24 = v23;
  v25 = sub_1C645C874();
  v27 = v26;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {

    retstr->value.displayName = 0u;
    retstr->value.address = 0u;
    return;
  }

  v29 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v29 = v14;
  }

  v30 = 7;
  if (((v16 >> 60) & ((v14 & 0x800000000000000) == 0)) != 0)
  {
    v30 = 11;
  }

  v31 = v30 | (v29 << 16);
  if (sub_1C645C8F4() < 3)
  {
    goto LABEL_27;
  }

  v32 = sub_1C643BC88(v14, v16);
  if (!v33)
  {
    goto LABEL_27;
  }

  if (v32 == 60 && v33 == 0xE100000000000000)
  {
  }

  else
  {
    v34 = sub_1C645CF24();

    if ((v34 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v35 = sub_1C643D3FC(v14, v16);
  if (v36)
  {
    if (v35 == 62 && v36 == 0xE100000000000000)
    {

LABEL_26:
      v38 = sub_1C645C904();
      v31 = sub_1C645C914();
      goto LABEL_28;
    }

    v37 = sub_1C645CF24();

    if (v37)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v38 = 15;
LABEL_28:
  v41[2] = v14;
  v41[3] = v16;
  v41[0] = v25;
  v41[1] = v27;
  if (v31 >> 14 < v38 >> 14)
  {
    __break(1u);
  }

  else
  {
    v39 = sub_1C645C684();
    (*(*(v39 - 8) + 56))(v6, 1, 1, v39);
    sub_1C640DAC0();
    v40 = sub_1C645CC04();
    sub_1C640D570(v6, &qword_1EC1C45C8, &unk_1C6473E50);
    if (!v40)
    {

      v14 = 0;
      v16 = 0;
    }

    retstr->value.displayName.value._countAndFlagsBits = v14;
    retstr->value.displayName.value._object = v16;
    retstr->value.address._countAndFlagsBits = v25;
    retstr->value.address._object = v27;
  }
}

id sub_1C643C098(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  if (a1[1])
  {
    v3 = *a1;
    v4 = a1[1];

    v5 = sub_1C645C844();
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6472810;
  *(v7 + 32) = v1;
  *(v7 + 40) = v2;

  v8 = sub_1C645CA04();

  v9 = [v6 initWithDisplayName:v5 handles:v8 handleIdentifier:*MEMORY[0x1E695C208]];

  return v9;
}

EmailDaemon::SearchableMessage::Priority_optional __swiftcall SearchableMessage.Priority.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x40302010005uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SearchableMessage.init(subjectWithoutPrefix:dateSent:dateReceived:isEncrypted:priority:senders:to:cc:bcc:allHeaders:htmlContent:summary:messageID:notificationID:isPartOfExistingThread:hasCompleteData:accountIdentifier:accountOwner:accountType:accountEmailAddresses:update:attachments:category:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, unsigned __int8 *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 *a30, uint64_t a31)
{
  v87 = a8;
  v86 = a7;
  v103 = a5;
  v101 = a4;
  v78 = a3;
  v83 = a2;
  v81 = a1;
  v108 = a31;
  v109 = a16;
  v102 = a27;
  v98 = a23;
  v99 = a24;
  v96 = a21;
  v97 = a22;
  v93 = a20;
  v104 = a28;
  v105 = a18;
  v90 = a19;
  v106 = a15;
  v107 = a17;
  v85 = a14;
  v94 = a12;
  v82 = a13;
  v80 = a11;
  v79 = a10;
  v100 = a29;
  v95 = a26;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v76 - v35;
  v37 = type metadata accessor for SearchableMessage.InfoFromEMLX(0);
  v38 = (v37 - 8);
  v39 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v76 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a6;
  v84 = *a25;
  v43 = *(a30 + 4);
  v91 = *(a30 + 5);
  v92 = v43;
  v44 = sub_1C645C674();
  v45 = *(v44 - 8);
  v77 = *(v45 + 32);
  v46 = a30[1];
  v89 = *a30;
  v88 = v46;
  v77(v36, v78, v44);
  v47 = *(v45 + 56);
  v47(v36, 0, 1, v44);
  v48 = v38[7];
  v47(&v41[v48], 1, 1, v44);
  v49 = v38[8];
  v41[v49] = 5;
  v50 = &v41[v38[13]];
  *v50 = xmmword_1C64738F0;
  v51 = v83;
  *v41 = v81;
  *(v41 + 1) = v51;
  sub_1C64239A8(v36, &v41[v48]);
  v41[v49] = v42;
  *&v41[v38[9]] = v86;
  *&v41[v38[10]] = v87;
  *&v41[v38[11]] = v79;
  *&v41[v38[12]] = v80;
  sub_1C641711C(*v50, *(v50 + 1));
  v52 = v85;
  *v50 = v82;
  *(v50 + 1) = v52;
  sub_1C643F0C0(v41, a9, type metadata accessor for SearchableMessage.InfoFromEMLX);
  v53 = type metadata accessor for SearchableMessage(0);
  v54 = (a9 + v53[5]);
  v55 = v53[8];
  v56 = (a9 + v53[11]);
  v57 = a9 + v53[16];
  *(v57 + 16) = 0u;
  *(v57 + 32) = 0u;
  *v57 = 0u;
  v58 = v53[17];
  v87 = v53[18];
  v59 = (a9 + v58);
  v60 = (a9 + v53[19]);
  v61 = v93;
  *v54 = v90;
  v54[1] = v61;
  v77((a9 + v53[6]), v101, v44);
  *(a9 + v53[7]) = v103;
  *(a9 + v55) = v94;
  v62 = v97;
  *(a9 + v53[9]) = v96;
  *(a9 + v53[10]) = v62;
  v63 = v99;
  *v56 = v98;
  v56[1] = v63;
  *(a9 + v53[12]) = v84;
  v64 = (a9 + v53[13]);
  v65 = v102;
  *v64 = v95;
  v64[1] = v65;
  *(a9 + v53[14]) = v104;
  sub_1C643F210(v100, a9 + v53[15], type metadata accessor for SearchableMessageUpdate);
  v66 = *(v57 + 8);
  v67 = *(v57 + 16);
  v68 = *(v57 + 24);
  v69 = *(v57 + 32);
  v70 = *(v57 + 40);
  sub_1C64340F4(*v57);
  v71 = v88;
  *v57 = v89;
  *(v57 + 16) = v71;
  v72 = v91;
  *(v57 + 32) = v92;
  *(v57 + 40) = v72;
  v73 = v105;
  *v59 = v107;
  v59[1] = v73;
  *(a9 + v87) = v108;
  v74 = v109;
  *v60 = v106;
  v60[1] = v74;
  return sub_1C643F064(v41);
}

void sub_1C643C638(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v128 = a2;
  v129 = a3;
  v6 = sub_1C645C734();
  v132 = *(v6 - 8);
  v133 = v6;
  v7 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v131 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v128 - v11;
  v13 = *v4;
  v14 = v4[1];
  v15 = sub_1C645C844();
  [a1 setSubject_];

  v16 = type metadata accessor for SearchableMessage.InfoFromEMLX(0);
  sub_1C6423890(v4 + v16[5], v12);
  v17 = sub_1C645C674();
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v12, 1, v17) != 1)
  {
    v19 = sub_1C645C614();
    (*(v18 + 8))(v12, v17);
  }

  [a1 setContentCreationDate_];

  v130 = type metadata accessor for SearchableMessage(0);
  v20 = v4 + *(v130 + 24);
  v21 = sub_1C645C614();
  [a1 setMailDateReceived_];

  v22 = *(v4 + v16[7]);
  v23 = *(v22 + 16);
  v24 = MEMORY[0x1E695C208];
  v136 = v4;
  v137 = a1;
  v135 = v16;
  if (v23)
  {
    v139 = MEMORY[0x1E69E7CC0];
    sub_1C645CDA4();
    v25 = *v24;
    v26 = (v22 + 56);
    v138 = xmmword_1C6472810;
    do
    {
      v34 = *(v26 - 1);
      v35 = *v26;
      if (*(v26 - 2))
      {
        v36 = *(v26 - 3);
        v37 = *(v26 - 2);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v28 = sub_1C645C844();
      }

      else
      {
        v27 = *v26;
        swift_bridgeObjectRetain_n();
        v28 = 0;
      }

      v29 = objc_allocWithZone(MEMORY[0x1E6964E50]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
      v30 = swift_allocObject();
      *(v30 + 16) = v138;
      *(v30 + 32) = v34;
      *(v30 + 40) = v35;

      v31 = sub_1C645CA04();

      v32 = v25;
      [v29 initWithDisplayName:v28 handles:v31 handleIdentifier:v32];

      sub_1C645CD84();
      v33 = *(v139 + 16);
      sub_1C645CDB4();
      sub_1C645CDC4();
      sub_1C645CD94();
      v26 += 4;
      --v23;
    }

    while (v23);
    v4 = v136;
    a1 = v137;
    v16 = v135;
    v24 = MEMORY[0x1E695C208];
  }

  v38 = sub_1C6401D00(0, &qword_1EDC93598, 0x1E6964E50);
  v39 = sub_1C645CA04();

  [a1 setAuthors_];

  v40 = *(v4 + v16[8]);
  v41 = *(v40 + 16);
  v134 = v38;
  if (v41)
  {
    v139 = MEMORY[0x1E69E7CC0];
    sub_1C645CDA4();
    v42 = *v24;
    v43 = (v40 + 56);
    v138 = xmmword_1C6472810;
    do
    {
      v51 = *(v43 - 1);
      v52 = *v43;
      if (*(v43 - 2))
      {
        v53 = *(v43 - 3);
        v54 = *(v43 - 2);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v45 = sub_1C645C844();
      }

      else
      {
        v44 = *v43;
        swift_bridgeObjectRetain_n();
        v45 = 0;
      }

      v46 = objc_allocWithZone(MEMORY[0x1E6964E50]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
      v47 = swift_allocObject();
      *(v47 + 16) = v138;
      *(v47 + 32) = v51;
      *(v47 + 40) = v52;

      v48 = sub_1C645CA04();

      v49 = v42;
      [v46 initWithDisplayName:v45 handles:v48 handleIdentifier:v49];

      sub_1C645CD84();
      v50 = *(v139 + 16);
      sub_1C645CDB4();
      sub_1C645CDC4();
      sub_1C645CD94();
      v43 += 4;
      --v41;
    }

    while (v41);
    v4 = v136;
    a1 = v137;
    v16 = v135;
    v24 = MEMORY[0x1E695C208];
  }

  v55 = sub_1C645CA04();

  [a1 setPrimaryRecipients_];

  v56 = *(v4 + v16[9]);
  v57 = *(v56 + 16);
  if (v57)
  {
    v139 = MEMORY[0x1E69E7CC0];
    sub_1C645CDA4();
    v58 = *v24;
    v59 = (v56 + 56);
    v138 = xmmword_1C6472810;
    do
    {
      v67 = *(v59 - 1);
      v68 = *v59;
      if (*(v59 - 2))
      {
        v69 = *(v59 - 3);
        v70 = *(v59 - 2);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v61 = sub_1C645C844();
      }

      else
      {
        v60 = *v59;
        swift_bridgeObjectRetain_n();
        v61 = 0;
      }

      v62 = objc_allocWithZone(MEMORY[0x1E6964E50]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
      v63 = swift_allocObject();
      *(v63 + 16) = v138;
      *(v63 + 32) = v67;
      *(v63 + 40) = v68;

      v64 = sub_1C645CA04();

      v65 = v58;
      [v62 initWithDisplayName:v61 handles:v64 handleIdentifier:v65];

      sub_1C645CD84();
      v66 = *(v139 + 16);
      sub_1C645CDB4();
      sub_1C645CDC4();
      sub_1C645CD94();
      v59 += 4;
      --v57;
    }

    while (v57);
    v4 = v136;
    a1 = v137;
    v16 = v135;
    v24 = MEMORY[0x1E695C208];
  }

  v71 = sub_1C645CA04();

  [a1 setAdditionalRecipients_];

  v72 = *(v4 + v16[10]);
  v73 = *(v72 + 16);
  if (v73)
  {
    v139 = MEMORY[0x1E69E7CC0];
    sub_1C645CDA4();
    v74 = *v24;
    v75 = (v72 + 56);
    v138 = xmmword_1C6472810;
    do
    {
      v83 = *(v75 - 1);
      v84 = *v75;
      if (*(v75 - 2))
      {
        v85 = *(v75 - 3);
        v86 = *(v75 - 2);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v77 = sub_1C645C844();
      }

      else
      {
        v76 = *v75;
        swift_bridgeObjectRetain_n();
        v77 = 0;
      }

      v78 = objc_allocWithZone(MEMORY[0x1E6964E50]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
      v79 = swift_allocObject();
      *(v79 + 16) = v138;
      *(v79 + 32) = v83;
      *(v79 + 40) = v84;

      v80 = sub_1C645CA04();

      v81 = v74;
      [v78 initWithDisplayName:v77 handles:v80 handleIdentifier:v81];

      sub_1C645CD84();
      v82 = *(v139 + 16);
      sub_1C645CDB4();
      sub_1C645CDC4();
      sub_1C645CD94();
      v75 += 4;
      --v73;
    }

    while (v73);
    v4 = v136;
    a1 = v137;
    v16 = v135;
  }

  v87 = sub_1C645CA04();

  [a1 setHiddenAdditionalRecipients_];

  v88 = v130;
  v89 = v4 + *(v130 + 60);
  sub_1C6441998(a1, v128, v129);
  if (*(v4 + v88[7]))
  {
    v90 = sub_1C645C844();
    [a1 setSecurityMethod_];
  }

  v91 = *(v4 + v16[6]);
  if (v91 != 5)
  {
    v92 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [a1 setMailPriority_];
  }

  v93 = v4 + v16[11];
  v94 = *(v93 + 1);
  if (v94 >> 60 != 15)
  {
    v95 = *v93;
    sub_1C6416234(*v93, *(v93 + 1));
    v96 = sub_1C645C584();
    [a1 setHTMLContentData_];

    sub_1C641711C(v95, v94);
  }

  v97 = *(v4 + v88[8]);
  if (v97)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4450, &qword_1C6473900);
    v97 = sub_1C645C7D4();
  }

  [a1 setEmailHeaders_];

  v98 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [a1 setExistingThread_];

  v99 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [a1 setPartiallyDownloaded_];

  v100 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [a1 setDataOwnerType_];

  v101 = (v4 + v88[11]);
  if (v101[1])
  {
    v102 = *v101;
    v103 = sub_1C645C844();
  }

  else
  {
    v103 = 0;
  }

  [a1 setAccountIdentifier_];

  v104 = (v4 + v88[13]);
  v105 = *v104;
  v106 = v104[1];
  v107 = sub_1C645C844();
  [a1 setAccountType_];

  v108 = *(v4 + v88[14]);
  v109 = sub_1C645CA04();
  [a1 setAccountHandles_];

  v110 = (v4 + v88[16]);
  if (*v110)
  {
    v112 = v110[4];
    v111 = v110[5];
    v114 = v110[2];
    v113 = v110[3];
    v115 = v110[1];
    v139 = *v110;
    v140 = v115;
    v141 = v114;
    v142 = v113;
    v143 = v112;
    v144 = v111;

    SearchableMessageAttachments.addTo(_:)(a1);
  }

  v116 = (v4 + v88[5]);
  if (v116[1])
  {
    v117 = *v116;
    v118 = sub_1C645C844();
    if (qword_1EDC93D88 != -1)
    {
      swift_once();
    }

    if (qword_1EDC954D8)
    {
      [a1 setValue:v118 forCustomKey:?];
    }
  }

  v119 = *(v4 + v88[18]);
  if (v119)
  {
    v120 = v119;
    [a1 setMailCategories_];
  }

  v121 = v131;
  v122 = v132;
  v123 = v133;
  (*(v132 + 104))(v131, *MEMORY[0x1E69ADAF8], v133);
  v124 = sub_1C645C724();
  (*(v122 + 8))(v121, v123);
  if (v124)
  {
    v125 = (v4 + v88[19]);
    if (v125[1])
    {
      v126 = *v125;
      v127 = sub_1C645C844();
      if (qword_1EC1C3AC0 != -1)
      {
        swift_once();
      }

      if (qword_1EC1C9000)
      {
        [a1 setValue:v127 forCustomKey:?];
      }
    }
  }
}

uint64_t sub_1C643D3FC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1C645C914();
  return sub_1C645C9C4();
}

void sub_1C643D47C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v1 = sub_1C645C844();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:0 unique:0 multiValued:0];

  qword_1EDC954D8 = v2;
}

void sub_1C643D4FC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v1 = sub_1C645C844();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:0 unique:0 multiValued:0];

  qword_1EC1C9000 = v2;
}

EmailDaemon::SearchableMessage::AccountOwner_optional __swiftcall SearchableMessage.AccountOwner.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C643D5BC()
{
  v1 = *v0;
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1 + 1);
  return sub_1C645D024();
}

uint64_t sub_1C643D604()
{
  v1 = *v0;
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1 + 1);
  return sub_1C645D024();
}

uint64_t sub_1C643D648()
{
  getuid();
  result = sub_1C645CF14();
  qword_1EDC954E0 = result;
  *algn_1EDC954E8 = v1;
  return result;
}

uint64_t SearchableMessage.notificationID.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchableMessage(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchableMessage.notificationID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchableMessage(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SearchableMessage.dateReceived.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchableMessage(0) + 24);
  v4 = sub_1C645C674();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchableMessage.dateReceived.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchableMessage(0) + 24);
  v4 = sub_1C645C674();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchableMessage.isEncrypted.setter(char a1)
{
  result = type metadata accessor for SearchableMessage(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t SearchableMessage.allHeaders.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchableMessage(0) + 32));
}

uint64_t SearchableMessage.allHeaders.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchableMessage(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SearchableMessage.isPartOfExistingThread.setter(char a1)
{
  result = type metadata accessor for SearchableMessage(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t SearchableMessage.hasCompleteData.setter(char a1)
{
  result = type metadata accessor for SearchableMessage(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t SearchableMessage.accountIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchableMessage(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchableMessage.accountIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchableMessage(0) + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SearchableMessage.accountOwner.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SearchableMessage(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t SearchableMessage.accountOwner.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SearchableMessage(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t SearchableMessage.accountType.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchableMessage(0) + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchableMessage.accountType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchableMessage(0) + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SearchableMessage.accountEmailAddresses.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchableMessage(0) + 56));
}

uint64_t SearchableMessage.accountEmailAddresses.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchableMessage(0) + 56);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SearchableMessage.attachments.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchableMessage(0) + 64));
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

  return sub_1C643F190(v4);
}

__n128 SearchableMessage.attachments.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = (v1 + *(type metadata accessor for SearchableMessage(0) + 64));
  v6 = v5[1];
  v7 = v5[2];
  v8 = v5[3];
  v9 = v5[4];
  v10 = v5[5];
  sub_1C64340F4(*v5);
  result = *a1;
  v12 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v12;
  v5[4] = v3;
  v5[5] = v4;
  return result;
}

uint64_t SearchableMessage.messageID.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchableMessage(0) + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchableMessage.messageID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchableMessage(0) + 68));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void *SearchableMessage.category.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchableMessage(0) + 72));
  v2 = v1;
  return v1;
}

void SearchableMessage.category.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchableMessage(0) + 72);

  *(v1 + v3) = a1;
}

uint64_t SearchableMessage.summary.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchableMessage(0) + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchableMessage.summary.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchableMessage(0) + 76));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.init(subjectWithoutPrefix:dateSent:priority:senders:to:cc:bcc:htmlContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *a4;
  v17 = type metadata accessor for SearchableMessage.InfoFromEMLX(0);
  v18 = v17[5];
  v19 = sub_1C645C674();
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = v17[6];
  a9[v20] = 5;
  v21 = &a9[v17[11]];
  *v21 = xmmword_1C64738F0;
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_1C64239A8(a3, &a9[v18]);
  a9[v20] = v16;
  *&a9[v17[7]] = a5;
  *&a9[v17[8]] = a6;
  *&a9[v17[9]] = a7;
  *&a9[v17[10]] = a8;
  result = sub_1C641711C(*v21, *(v21 + 1));
  *v21 = a10;
  *(v21 + 1) = a11;
  return result;
}

__n128 SearchableMessage.init(infoFromEMLX:notificationID:dateReceived:isEncrypted:allHeaders:isPartOfExistingThread:hasCompleteData:accountIdentifier:accountOwner:accountType:accountEmailAddresses:update:attachments:messageID:category:summary:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v44 = *a12;
  v52 = *(a17 + 32);
  v51 = *(a17 + 40);
  v24 = type metadata accessor for SearchableMessage(0);
  v25 = (a9 + v24[5]);
  v26 = v24[8];
  v27 = (a9 + v24[11]);
  v28 = a9 + v24[16];
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *v28 = 0u;
  v49 = v24[18];
  v29 = (a9 + v24[17]);
  v30 = (a9 + v24[19]);
  sub_1C643F210(a1, a9, type metadata accessor for SearchableMessage.InfoFromEMLX);
  *v25 = a2;
  v25[1] = a3;
  v31 = v24[6];
  v32 = sub_1C645C674();
  v41 = *(a17 + 16);
  v43 = *a17;
  (*(*(v32 - 8) + 32))(a9 + v31, a4, v32);
  *(a9 + v24[7]) = a5;
  *(a9 + v26) = a6;
  *(a9 + v24[9]) = a7;
  *(a9 + v24[10]) = a8;
  *v27 = a10;
  v27[1] = a11;
  *(a9 + v24[12]) = v44;
  v33 = (a9 + v24[13]);
  *v33 = a13;
  v33[1] = a14;
  *(a9 + v24[14]) = a15;
  sub_1C643F210(a16, a9 + v24[15], type metadata accessor for SearchableMessageUpdate);
  v34 = *(v28 + 8);
  v35 = *(v28 + 16);
  v36 = *(v28 + 24);
  v37 = *(v28 + 32);
  v38 = *(v28 + 40);
  sub_1C64340F4(*v28);
  result = v43;
  *v28 = v43;
  *(v28 + 16) = v41;
  *(v28 + 32) = v52;
  *(v28 + 40) = v51;
  *v29 = a18;
  v29[1] = a19;
  *(a9 + v49) = a20;
  *v30 = a21;
  v30[1] = a22;
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.subjectWithoutPrefix.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchableMessage.InfoFromEMLX.subjectWithoutPrefix.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.dateSent.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 20);

  return sub_1C64239A8(a1, v3);
}

uint64_t SearchableMessage.InfoFromEMLX.priority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SearchableMessage.InfoFromEMLX(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.priority.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SearchableMessage.InfoFromEMLX(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.senders.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.to.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.cc.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.bcc.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.htmlContent.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 44);
  result = sub_1C641711C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t _s11EmailDaemon17SearchableMessageV12InfoFromEMLXV8dateSent10Foundation4DateVSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 20);

  return sub_1C6423890(v3, a1);
}

uint64_t _s11EmailDaemon17SearchableMessageV12InfoFromEMLXV7sendersSayAC0A7AddressVGvg_0()
{
  v1 = *(v0 + *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 28));
}

uint64_t _s11EmailDaemon17SearchableMessageV12InfoFromEMLXV2toSayAC0A7AddressVGvg_0()
{
  v1 = *(v0 + *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 32));
}

uint64_t _s11EmailDaemon17SearchableMessageV12InfoFromEMLXV2ccSayAC0A7AddressVGvg_0()
{
  v1 = *(v0 + *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 36));
}

uint64_t _s11EmailDaemon17SearchableMessageV12InfoFromEMLXV3bccSayAC0A7AddressVGvg_0()
{
  v1 = *(v0 + *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 40));
}

uint64_t sub_1C643EC18()
{
  v1 = v0 + *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 44);
  v2 = *v1;
  sub_1C6434018(*v1, *(v1 + 8));
  return v2;
}

uint64_t SearchableMessage.EmailAddress.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchableMessage.EmailAddress.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SearchableMessage.EmailAddress.address.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SearchableMessage.EmailAddress.address.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SearchableMessage.EmailAddress.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v0[1])
  {
    v3 = *v0;
    sub_1C645D004();
    sub_1C645C8E4();
  }

  else
  {
    sub_1C645D004();
  }

  return sub_1C645C8E4();
}

uint64_t SearchableMessage.EmailAddress.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C645CFE4();
  sub_1C645D004();
  if (v2)
  {
    sub_1C645C8E4();
  }

  sub_1C645C8E4();
  return sub_1C645D024();
}

uint64_t sub_1C643EE84()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C645CFE4();
  sub_1C645D004();
  if (v2)
  {
    sub_1C645C8E4();
  }

  sub_1C645C8E4();
  return sub_1C645D024();
}

uint64_t sub_1C643EF10()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v0[1])
  {
    v3 = *v0;
    sub_1C645D004();
    sub_1C645C8E4();
  }

  else
  {
    sub_1C645D004();
  }

  return sub_1C645C8E4();
}

uint64_t sub_1C643EF98()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C645CFE4();
  sub_1C645D004();
  if (v2)
  {
    sub_1C645C8E4();
  }

  sub_1C645C8E4();
  return sub_1C645D024();
}

uint64_t sub_1C643F064(uint64_t a1)
{
  v2 = type metadata accessor for SearchableMessage.InfoFromEMLX(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C643F0C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C643F128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C643F190(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C643F210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C643F278@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
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
    v10 = sub_1C645C354();
    if (v10)
    {
      v11 = sub_1C645C384();
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
      result = sub_1C645C374();
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
      v19 = *MEMORY[0x1E69E9840];
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
  v10 = sub_1C645C354();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1C645C384();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1C645C374();
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

uint64_t sub_1C643F4A8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
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
    v10 = sub_1C643F638(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1C6414FE8(a3, a4);
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
  sub_1C643F278(v14, a3, a4, &v13);
  v10 = v4;
  sub_1C6414FE8(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1C643F638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1C645C354();
  v11 = result;
  if (result)
  {
    result = sub_1C645C384();
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

  sub_1C645C374();
  sub_1C643F278(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1C643F6F0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_1C6416234(a3, a4);
          return sub_1C643F4A8(v13, a2, a3, a4) & 1;
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

uint64_t _s11EmailDaemon17SearchableMessageV0A7AddressV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_1C645CF24() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_1C645CF24();
}

BOOL _s11EmailDaemon17SearchableMessageV12InfoFromEMLXV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1C645C674();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C40D0, &unk_1C6472D20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C645CF24() & 1) == 0)
  {
    return 0;
  }

  v36 = type metadata accessor for SearchableMessage.InfoFromEMLX(0);
  v17 = v36[5];
  v18 = *(v13 + 48);
  sub_1C6423890(a1 + v17, v16);
  sub_1C6423890(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C640D570(v16, &qword_1EC1C4050, &unk_1C6472830);
      goto LABEL_12;
    }

LABEL_9:
    sub_1C640D570(v16, &qword_1EC1C40D0, &unk_1C6472D20);
    return 0;
  }

  sub_1C6423890(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_1C6440380();
  v21 = sub_1C645C834();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_1C640D570(v16, &qword_1EC1C4050, &unk_1C6472830);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v23 = v36;
  v24 = v36[6];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 == 5)
  {
    if (v26 == 5)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v25 != v26)
  {
    return 0;
  }

LABEL_16:
  if ((sub_1C64422C4(*(a1 + v36[7]), *(a2 + v36[7])) & 1) == 0 || (sub_1C64422C4(*(a1 + v23[8]), *(a2 + v23[8])) & 1) == 0 || (sub_1C64422C4(*(a1 + v23[9]), *(a2 + v23[9])) & 1) == 0 || (sub_1C64422C4(*(a1 + v23[10]), *(a2 + v23[10])) & 1) == 0)
  {
    return 0;
  }

  v27 = v23[11];
  v28 = a1 + v27;
  v30 = *(a1 + v27);
  v29 = *(v28 + 1);
  v31 = (a2 + v27);
  v33 = *v31;
  v32 = v31[1];
  if (v29 >> 60 == 15)
  {
    if (v32 >> 60 == 15)
    {
      sub_1C6434018(v30, *(v28 + 1));
      sub_1C6434018(v33, v32);
      sub_1C641711C(v30, v29);
      return 1;
    }

    goto LABEL_24;
  }

  if (v32 >> 60 == 15)
  {
LABEL_24:
    sub_1C6434018(v30, *(v28 + 1));
    sub_1C6434018(v33, v32);
    sub_1C641711C(v30, v29);
    sub_1C641711C(v33, v32);
    return 0;
  }

  sub_1C6434018(v30, *(v28 + 1));
  sub_1C6434018(v33, v32);
  v34 = sub_1C643F6F0(v30, v29, v33, v32);
  sub_1C641711C(v33, v32);
  sub_1C641711C(v30, v29);
  return (v34 & 1) != 0;
}

unint64_t sub_1C643FD70()
{
  result = qword_1EC1C45D0;
  if (!qword_1EC1C45D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45D0);
  }

  return result;
}

unint64_t sub_1C643FDC8()
{
  result = qword_1EC1C45D8;
  if (!qword_1EC1C45D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45D8);
  }

  return result;
}

unint64_t sub_1C643FE20()
{
  result = qword_1EC1C45E0;
  if (!qword_1EC1C45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45E0);
  }

  return result;
}

void sub_1C643FE9C()
{
  type metadata accessor for SearchableMessage.InfoFromEMLX(319);
  if (v0 <= 0x3F)
  {
    v1 = MEMORY[0x1E69E6158];
    sub_1C644028C(319, &qword_1EDC939A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C645C674();
      if (v3 <= 0x3F)
      {
        sub_1C6440044();
        if (v4 <= 0x3F)
        {
          sub_1C644028C(319, &qword_1EDC93980, v1, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for SearchableMessageUpdate();
            if (v6 <= 0x3F)
            {
              sub_1C644028C(319, &qword_1EDC93B30, &type metadata for SearchableMessageAttachments, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1C64400A8();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C6440044()
{
  if (!qword_1EDC939C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1C45E8, "4;\t");
    v0 = sub_1C645CBA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC939C0);
    }
  }
}

void sub_1C64400A8()
{
  if (!qword_1EDC93960)
  {
    sub_1C6401D00(255, &qword_1EDC93968, 0x1E699AC48);
    v0 = sub_1C645CBA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC93960);
    }
  }
}

void sub_1C6440158()
{
  sub_1C64167FC();
  if (v0 <= 0x3F)
  {
    sub_1C644028C(319, &unk_1EDC93D78, &type metadata for SearchableMessage.Priority, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C644028C(319, &qword_1EDC93988, &type metadata for SearchableMessage.EmailAddress, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1C644028C(319, &qword_1EDC93E50, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C644028C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C64402E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C6440330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C6440380()
{
  result = qword_1EC1C40D8;
  if (!qword_1EC1C40D8)
  {
    sub_1C645C674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C40D8);
  }

  return result;
}

unint64_t sub_1C64403EC()
{
  result = qword_1EC1C45F0;
  if (!qword_1EC1C45F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45F0);
  }

  return result;
}

uint64_t SearchableMessageAttachments.init(names:paths:utis:specificUTIs:mimeTypes:kinds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

Swift::Void __swiftcall SearchableMessageAttachments.addTo(_:)(CSSearchableItemAttributeSet a1)
{
  v37 = sub_1C645C794();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  if (*(*v1 + 16))
  {
    v12 = sub_1C645CA04();
    [(objc_class *)a1.super.isa setAttachmentNames:v12];
  }

  if (*(v7 + 16))
  {
    v13 = sub_1C645CA04();
    [(objc_class *)a1.super.isa setAttachmentPaths:v13];
  }

  if (*(v8 + 16))
  {
    v14 = sub_1C645CA04();
    [(objc_class *)a1.super.isa setMailAttachmentTypes:v14];
  }

  if (*(v10 + 16))
  {
    v15 = sub_1C645CA04();
    [(objc_class *)a1.super.isa setAttachmentTypes:v15];
  }

  v16 = *(v9 + 16);
  if (v16)
  {
    v32 = v11;
    isa = a1.super.isa;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C6440AD0(0, v16, 0);
    v17 = v38;
    v19 = *(v3 + 16);
    v18 = v3 + 16;
    v20 = v9 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v34 = *(v18 + 56);
    v35 = v19;
    v36 = v18;
    v21 = (v18 - 8);
    do
    {
      v22 = v37;
      v35(v6, v20, v37);
      v23 = sub_1C645C744();
      v25 = v24;
      (*v21)(v6, v22);
      v38 = v17;
      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1C6440AD0((v26 > 1), v27 + 1, 1);
        v17 = v38;
      }

      *(v17 + 16) = v27 + 1;
      v28 = v17 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v20 += v34;
      --v16;
    }

    while (v16);
    v29 = sub_1C645CA04();

    if (qword_1EC1C3AD0 != -1)
    {
      swift_once();
    }

    a1.super.isa = isa;
    [(objc_class *)isa setValue:v29 forCustomKey:qword_1EC1C45F8];

    v11 = v32;
  }

  if (*(v11 + 16))
  {
    v30 = sub_1C645CA04();
    [(objc_class *)a1.super.isa setMailAttachmentKinds:v30];
  }
}

void sub_1C64407B4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v1 = sub_1C645C844();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:0 unique:1 multiValued:1];

  if (v2)
  {
    qword_1EC1C45F8 = v2;
  }

  else
  {
    __break(1u);
  }
}

id static SearchableMessageAttachments.specificUTIsAttribute.getter()
{
  if (qword_1EC1C3AD0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC1C45F8;

  return v1;
}

uint64_t SearchableMessageAttachments.names.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SearchableMessageAttachments.paths.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SearchableMessageAttachments.utis.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SearchableMessageAttachments.specificUTIs.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t SearchableMessageAttachments.mimeTypes.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t SearchableMessageAttachments.kinds.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

char *sub_1C6440A90(char *a1, int64_t a2, char a3)
{
  result = sub_1C6440BC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6440AB0(char *a1, int64_t a2, char a3)
{
  result = sub_1C6440CCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6440AD0(char *a1, int64_t a2, char a3)
{
  result = sub_1C6440DD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
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

uint64_t sub_1C6440B04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C6440B4C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

char *sub_1C6440BA8(char *a1, int64_t a2, char a3)
{
  result = sub_1C6440EE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6440BC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4600, &unk_1C64742F0);
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

char *sub_1C6440CCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4458, &unk_1C64742E0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C6440DD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
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

char *sub_1C6440EE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4398, &qword_1C6473848);
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
  v15 = 16 * v8;
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

void sub_1C6440FEC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v1 = sub_1C645C844();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:0 unique:0 multiValued:0];

  qword_1EDC954B0 = v2;
}

uint64_t SearchableMessageAuthenticationState.hashValue.getter()
{
  v1 = *v0;
  sub_1C645CFE4();
  MEMORY[0x1C6958D80](v1);
  return sub_1C645D024();
}

unint64_t sub_1C6441128()
{
  result = qword_1EC1C4608;
  if (!qword_1EC1C4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4608);
  }

  return result;
}

uint64_t sub_1C644118C(void *a1)
{
  if ([a1 isUserCategorized])
  {
    v2 = [a1 type];
    if ((v2 - 1) < 3)
    {
      v3 = &unk_1C6474404 + 4 * (v2 - 1);
LABEL_6:
      v5 = *v3;
      goto LABEL_8;
    }
  }

  v4 = [a1 subtype];
  if (v4 < 9)
  {
    v3 = &unk_1C6474410 + 4 * v4;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_8:
  if ([a1 isHighImpact])
  {
    return v5 | 0x20;
  }

  else
  {
    return v5;
  }
}

void sub_1C6441258(void *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [a1 setMailRead_];

  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [a1 setMailFlagged_];

  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [a1 setMailRepliedTo_];

  if (v3 != 7)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [a1 setMailFlagColor_];
  }
}

EmailDaemon::SearchableMessageFlags::Color_optional __swiftcall SearchableMessageFlags.Color.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SearchableMessageFlags.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645D004();
  sub_1C645D004();
  if (v2 != 7)
  {
    MEMORY[0x1C6958D60](v2);
  }

  return sub_1C645D004();
}

uint64_t SearchableMessageFlags.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645CFE4();
  sub_1C645D004();
  sub_1C645D004();
  if (v2 != 7)
  {
    MEMORY[0x1C6958D60](v2);
  }

  sub_1C645D004();
  return sub_1C645D024();
}

uint64_t sub_1C6441578()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645CFE4();
  sub_1C645D004();
  sub_1C645D004();
  if (v2 != 7)
  {
    MEMORY[0x1C6958D60](v2);
  }

  sub_1C645D004();
  return sub_1C645D024();
}

uint64_t _s11EmailDaemon22SearchableMessageFlagsV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 == 7)
  {
    if (v4 != 7)
    {
      return 0;
    }
  }

  else if (v4 == 7 || v3 != v4)
  {
    return 0;
  }

  return a1[2] ^ a2[2] ^ 1u;
}

unint64_t sub_1C644166C()
{
  result = qword_1EC1C4610;
  if (!qword_1EC1C4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4610);
  }

  return result;
}

unint64_t sub_1C64416C4()
{
  result = qword_1EC1C4618;
  if (!qword_1EC1C4618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4618);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchableMessageFlags(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchableMessageFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchableMessageFlags.Color(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchableMessageFlags.Color(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C6441998(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v61 = a2;
  v62 = a3;
  v6 = *v3;
  v7 = v3[1];
  v8 = sub_1C645C844();
  [a1 setMailConversationID_];

  v9 = v4[2];
  v10 = sub_1C645CA04();
  [a1 setMailboxIdentifiers_];

  v11 = v4[3];
  sub_1C6443814();
  v12 = sub_1C645CA04();
  [a1 setMailGMailLabels_];

  v13 = type metadata accessor for SearchableMessageUpdate();
  v14 = v4 + *(v13 + 36);
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v14) = v14[2];
  LOBYTE(v66.version._countAndFlagsBits) = v15;
  BYTE1(v66.version._countAndFlagsBits) = v16;
  BYTE2(v66.version._countAndFlagsBits) = v14;
  sub_1C6441258(a1);
  v17 = *(v4 + 32);
  if (v17 != 2)
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    [a1 setLikelyJunk_];
  }

  v64 = a1;
  v19 = sub_1C645C674();
  v63 = &v61;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v13;
  v24 = *(v13 + 32);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v61 - v27;
  sub_1C6401820(v4 + v24, &v61 - v27, &qword_1EC1C4050, &unk_1C6472830);
  if ((*(v20 + 48))(v28, 1, v19) == 1)
  {
    sub_1C640D570(v28, &qword_1EC1C4050, &unk_1C6472830);
    v29 = v64;
  }

  else
  {
    (*(v20 + 32))(v23, v28, v19);
    v30 = sub_1C645C614();
    v29 = v64;
    [v64 setMailDateLastViewed_];

    v31 = sub_1C645C614();
    [v29 setLastUsedDate_];

    (*(v20 + 8))(v23, v19);
  }

  v32 = v65;
  v33 = v4 + v65[10];
  if (v33[8])
  {
    goto LABEL_18;
  }

  v34 = *v33;
  if (qword_1EDC93A08 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    if (!qword_1EDC954B0)
    {
      goto LABEL_18;
    }

    v35 = qword_1EDC954B0;
    if ((v34 & 0xE08) == 0x408)
    {
      if ((v34 & 0x10) != 0)
      {
        v36 = 0;
        if ((v34 & 0x20) == 0 || (v34 & 0x1C0) == 0xC0 || (v34 & 3) == 1)
        {
          goto LABEL_17;
        }

LABEL_16:
        v36 = 1;
        goto LABEL_17;
      }

      if ((v34 & 0x1C2) == 0x82)
      {
        goto LABEL_16;
      }
    }

    v36 = 0;
LABEL_17:
    v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    [v29 setValue:v37 forCustomKey:v35];

LABEL_18:
    v38 = (v4 + v32[12]);
    if (v38[1])
    {
      v39 = *v38;
      v40 = sub_1C645C844();
    }

    else
    {
      v40 = 0;
    }

    [v29 setMailMessageHeader_];

    v41 = (v4 + v32[11]);
    if (!v41[1])
    {
      return;
    }

    v42 = *v41;
    v43 = sub_1C645C844();
    [v29 setMailMessageID_];

    if (!MEMORY[0x1E695A838])
    {
      return;
    }

    v44 = [v29 mailboxIdentifiers];
    v45 = "com_apple_mail_is_authenticated";
    if (!v44)
    {
      break;
    }

    v46 = v44;
    v47 = sub_1C645CA14();

    v48 = *MEMORY[0x1E6963B48];
    v34 = (v47 + 40);
    v32 = -*(v47 + 16);
    v49 = -1;
    while (1)
    {
      if ((v32 + v49) == -1)
      {
LABEL_32:

LABEL_35:
        v29 = v64;
        v32 = v65;
        goto LABEL_36;
      }

      if (++v49 >= *(v47 + 16))
      {
        break;
      }

      v29 = v45;
      v51 = *(v34 - 1);
      v50 = *v34;
      if (v51 == sub_1C645C874() && v50 == v52)
      {

        goto LABEL_35;
      }

      v34 += 2;
      v54 = sub_1C645CF24();

      v45 = v29;
      if (v54)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

LABEL_36:
  v55 = v29;
  v56 = v62;

  v57._countAndFlagsBits = v61;
  v57._object = v56;
  MailMessageEntityID.init(using:uniqueIdentifier:)(&v66, v55, v57);

  sub_1C6443914(&v66);
  v58 = (v4 + v32[13]);
  v59 = *v58;
  v60 = v58[1];
  sub_1C6443968(MEMORY[0x1E69E7CC0]);
  sub_1C645CB24();
}

uint64_t sub_1C6441FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C645CF24() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1C6442084(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1C6443814();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1C6958AC0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1C6958AC0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1C645CB64();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1C645CB64();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1C645CC74();
  }

  result = sub_1C645CC74();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1C64422C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v5)
      {
        if (!v8)
        {
          return 0;
        }

        v11 = *(v3 - 3) == *(v4 - 3) && v5 == v8;
        if (!v11 && (sub_1C645CF24() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      v12 = v6 == v9 && v7 == v10;
      if (!v12 && (sub_1C645CF24() & 1) == 0)
      {
        return 0;
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t SearchableMessageUpdate.conversationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchableMessageUpdate.conversationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SearchableMessageUpdate.mailboxIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SearchableMessageUpdate.gmailLabels.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t type metadata accessor for SearchableMessageUpdate()
{
  result = qword_1EDC93BE8;
  if (!qword_1EDC93BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchableMessageUpdate.dateLastViewed.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SearchableMessageUpdate() + 32);

  return sub_1C64239A8(a1, v3);
}

uint64_t SearchableMessageUpdate.flags.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SearchableMessageUpdate();
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = v4[2];
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v4;
  return result;
}

uint64_t SearchableMessageUpdate.flags.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  result = type metadata accessor for SearchableMessageUpdate();
  v6 = (v1 + *(result + 36));
  *v6 = v2;
  v6[1] = v3;
  v6[2] = v4;
  return result;
}

uint64_t SearchableMessageUpdate.authenticationState.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for SearchableMessageUpdate();
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t SearchableMessageUpdate.authenticationState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for SearchableMessageUpdate();
  v5 = v1 + *(result + 40);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t SearchableMessageUpdate.messageID.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchableMessageUpdate() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchableMessageUpdate.messageID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchableMessageUpdate() + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SearchableMessageUpdate.messageIDHeader.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchableMessageUpdate() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchableMessageUpdate.messageIDHeader.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchableMessageUpdate() + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SearchableMessageUpdate.subjectWithoutPrefix.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchableMessageUpdate() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchableMessageUpdate.subjectWithoutPrefix.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchableMessageUpdate() + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SearchableMessageUpdate.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C645C674();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - v11;
  v13 = *v1;
  v14 = v1[1];
  sub_1C645C8E4();
  v15 = v1[2];
  MEMORY[0x1C6958D60](*(v15 + 16));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (v15 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;

      sub_1C645C8E4();

      v17 += 2;
      --v16;
    }

    while (v16);
  }

  sub_1C6442EE8(a1, v2[3]);
  if (*(v2 + 32) != 2)
  {
    sub_1C645D004();
  }

  sub_1C645D004();
  v20 = type metadata accessor for SearchableMessageUpdate();
  sub_1C6401820(v2 + v20[8], v12, &qword_1EC1C4050, &unk_1C6472830);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1C645D004();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1C645D004();
    sub_1C6443A98(&qword_1EC1C4570, MEMORY[0x1E6969530]);
    sub_1C645C814();
    (*(v5 + 8))(v8, v4);
  }

  v21 = v2 + v20[9];
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  sub_1C645D004();
  sub_1C645D004();
  if (v23 != 7)
  {
    MEMORY[0x1C6958D60](v23);
  }

  sub_1C645D004();
  v25 = v2 + v20[10];
  if (v25[8] == 1)
  {
    sub_1C645D004();
  }

  else
  {
    v26 = *v25;
    sub_1C645D004();
    MEMORY[0x1C6958D80](v26);
  }

  v27 = (v2 + v20[11]);
  if (v27[1])
  {
    v28 = *v27;
    sub_1C645D004();
    sub_1C645C8E4();
  }

  else
  {
    sub_1C645D004();
  }

  v29 = (v2 + v20[12]);
  if (v29[1])
  {
    v30 = *v29;
    sub_1C645D004();
    sub_1C645C8E4();
  }

  else
  {
    sub_1C645D004();
  }

  v31 = (v2 + v20[13]);
  if (!v31[1])
  {
    return sub_1C645D004();
  }

  v32 = *v31;
  sub_1C645D004();
  return sub_1C645C8E4();
}

uint64_t SearchableMessageUpdate.hashValue.getter()
{
  sub_1C645CFE4();
  SearchableMessageUpdate.hash(into:)(v1);
  return sub_1C645D024();
}

uint64_t sub_1C6442E64()
{
  sub_1C645CFE4();
  SearchableMessageUpdate.hash(into:)(v1);
  return sub_1C645D024();
}

uint64_t sub_1C6442EA8()
{
  sub_1C645CFE4();
  SearchableMessageUpdate.hash(into:)(v1);
  return sub_1C645D024();
}

void sub_1C6442EE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1C645CC74();
    MEMORY[0x1C6958D60](v8);
    v3 = sub_1C645CC74();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1C6958D60](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x1C6958AC0](i, a2);
      sub_1C645CB74();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1C645CB74();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1C6442FD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C6958D60](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      if (*(v5 - 2))
      {
        v6 = *(v5 - 3);
        sub_1C645D004();

        sub_1C645C8E4();
      }

      else
      {
        sub_1C645D004();
      }

      sub_1C645C8E4();

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _s11EmailDaemon23SearchableMessageUpdateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C645C674();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v53[-v11 - 6];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C40D0, &unk_1C6472D20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v53[-v15 - 6];
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1C645CF24() & 1) == 0 || (sub_1C6441FF4(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_1C6442084(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 32);
  v18 = *(a2 + 32);
  if (v17 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }

LABEL_11:
    v52 = type metadata accessor for SearchableMessageUpdate();
    v20 = *(v52 + 32);
    v21 = *(v13 + 48);
    sub_1C6401820(a1 + v20, v16, &qword_1EC1C4050, &unk_1C6472830);
    sub_1C6401820(a2 + v20, &v16[v21], &qword_1EC1C4050, &unk_1C6472830);
    v22 = *(v5 + 48);
    if (v22(v16, 1, v4) == 1)
    {
      if (v22(&v16[v21], 1, v4) == 1)
      {
        sub_1C640D570(v16, &qword_1EC1C4050, &unk_1C6472830);
LABEL_18:
        v25 = v52;
        v26 = *(v52 + 36);
        v27 = *(a1 + v26 + 1);
        v28 = *(a1 + v26 + 2);
        v54[0] = *(a1 + v26);
        v54[1] = v27;
        v54[2] = v28;
        v29 = (a2 + v26);
        v30 = *v29;
        v31 = v29[1];
        LOBYTE(v29) = v29[2];
        v53[0] = v30;
        v53[1] = v31;
        v53[2] = v29;
        if (_s11EmailDaemon22SearchableMessageFlagsV2eeoiySbAC_ACtFZ_0(v54, v53))
        {
          v32 = v25[10];
          v33 = (a1 + v32);
          v34 = *(a1 + v32 + 8);
          v35 = (a2 + v32);
          v36 = *(a2 + v32 + 8);
          if (v34)
          {
            if (!v36)
            {
              return 0;
            }
          }

          else
          {
            if (*v33 != *v35)
            {
              LOBYTE(v36) = 1;
            }

            if (v36)
            {
              return 0;
            }
          }

          v37 = v25[11];
          v38 = (a1 + v37);
          v39 = *(a1 + v37 + 8);
          v40 = (a2 + v37);
          v41 = v40[1];
          if (v39)
          {
            if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_1C645CF24() & 1) == 0)
            {
              return 0;
            }
          }

          else if (v41)
          {
            return 0;
          }

          v42 = v25[12];
          v43 = (a1 + v42);
          v44 = *(a1 + v42 + 8);
          v45 = (a2 + v42);
          v46 = v45[1];
          if (v44)
          {
            if (!v46 || (*v43 != *v45 || v44 != v46) && (sub_1C645CF24() & 1) == 0)
            {
              return 0;
            }
          }

          else if (v46)
          {
            return 0;
          }

          v47 = v25[13];
          v48 = (a1 + v47);
          v49 = *(a1 + v47 + 8);
          v50 = (a2 + v47);
          v51 = v50[1];
          if (v49)
          {
            return v51 && (*v48 == *v50 && v49 == v51 || (sub_1C645CF24() & 1) != 0);
          }

          if (!v51)
          {
            return 1;
          }
        }

        return 0;
      }
    }

    else
    {
      sub_1C6401820(v16, v12, &qword_1EC1C4050, &unk_1C6472830);
      if (v22(&v16[v21], 1, v4) != 1)
      {
        (*(v5 + 32))(v8, &v16[v21], v4);
        sub_1C6443A98(&qword_1EC1C40D8, MEMORY[0x1E6969530]);
        v23 = sub_1C645C834();
        v24 = *(v5 + 8);
        v24(v8, v4);
        v24(v12, v4);
        sub_1C640D570(v16, &qword_1EC1C4050, &unk_1C6472830);
        if ((v23 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_18;
      }

      (*(v5 + 8))(v12, v4);
    }

    sub_1C640D570(v16, &qword_1EC1C40D0, &unk_1C6472D20);
    return 0;
  }

  result = 0;
  if (v18 != 2 && ((v18 ^ v17) & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_1C6443628()
{
  sub_1C64438C4(319, &qword_1EDC93980, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6443860(319, &qword_1EDC93978, sub_1C6443814, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C64438C4(319, &qword_1EDC93970, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C6443860(319, &qword_1EDC93E48, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C64438C4(319, &unk_1EDC939F8, &type metadata for SearchableMessageAuthenticationState, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C64438C4(319, &qword_1EDC939A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
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

unint64_t sub_1C6443814()
{
  result = qword_1EDC93590;
  if (!qword_1EDC93590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC93590);
  }

  return result;
}

void sub_1C6443860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C64438C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1C6443968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4628, &qword_1C6474688);
    v3 = sub_1C645CE24();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C6401820(v4, &v13, &qword_1EC1C4630, &unk_1C6474690);
      v5 = v13;
      v6 = v14;
      result = sub_1C63FDE68(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C641ECF0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C6443A98(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6443AE0(void *a1)
{
  v2 = v1;
  if (v1[1])
  {
    v4 = *v1;
    v5 = sub_1C645C844();
  }

  else
  {
    v5 = 0;
  }

  [a1 setAccountIdentifier_];

  v6 = v2[2];
  v7 = sub_1C645CA04();
  [a1 setMailboxIdentifiers_];

  v8 = v2[3];
  v9 = v2[4];
  v10 = sub_1C645C844();
  [a1 setRelatedUniqueIdentifier_];

  if (v2[8])
  {
    v11 = v2[7];
    v12 = sub_1C645C844();
    v13 = sub_1C645C844();
    [a1 setAttribute:v12 forKey:v13];
  }

  v14 = v2[5];
  v15 = v2[6];
  v16 = sub_1C645C844();
  v17 = sub_1C645C844();
  [a1 setAttribute:v16 forKey:v17];

  v18 = v2[9];
  v19 = v2[10];
  v20 = sub_1C645C844();
  v21 = sub_1C645C844();
  [a1 setAttribute:v20 forKey:v21];

  v22 = type metadata accessor for SearchableRichLink();
  v23 = v22;
  v24 = *(v22 + 48);
  v25 = (v2 + v24);
  v26 = *(v2 + v24 + 24);
  if (v26)
  {
    v91 = v6;
    v92 = v22;
    v27 = *v25;
    v28 = v25[1];
    v29 = v25[2];
    v30 = (v2 + v24);
    if (v28)
    {
      sub_1C643A6BC(*v25, v25[1], v25[2], v26);

      v31 = sub_1C645C844();
    }

    else
    {

      v31 = 0;
    }

    v32 = objc_allocWithZone(MEMORY[0x1E6964E50]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1C6472810;
    *(v33 + 32) = v29;
    *(v33 + 40) = v26;

    sub_1C6423964(v27, v28, v29, v26);
    v34 = sub_1C645CA04();

    v35 = [v32 initWithDisplayName:v31 handles:v34 handleIdentifier:*MEMORY[0x1E695C208]];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C3D18, &qword_1C6472530);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1C6472520;
    *(v36 + 32) = v35;
    sub_1C6444780();
    v26 = sub_1C645CA04();

    v6 = v91;
    v23 = v92;
    v25 = v30;
  }

  [a1 setAuthors_];

  v37 = *(v23 + 40);
  v38 = sub_1C645C614();
  v90 = a1;
  [a1 setContentCreationDate_];

  v93 = sub_1C645C874();
  v94 = v39;
  MEMORY[0x1EEE9AC00](v93);
  v85 = &v93;
  v40 = sub_1C6444358(sub_1C644470C, v84, v6);

  if ((v40 & 1) == 0)
  {
    v41 = *MEMORY[0x1E6963B48];
    v93 = sub_1C645C874();
    v94 = v42;
    MEMORY[0x1EEE9AC00](v93);
    v85 = &v93;
    v43 = sub_1C6444358(sub_1C6444EAC, v84, v6);

    if ((v43 & 1) == 0)
    {
      v89 = v37;
      v92 = v23;
      v44 = *(v2 + *(v23 + 52));
      v45 = *(v44 + 16);
      if (v45)
      {
        v87 = 0;
        v88 = v25;
        v91 = v6;
        v93 = MEMORY[0x1E69E7CC0];
        sub_1C6440AD0(0, v45, 0);
        v46 = v93;
        v86 = v44;
        v47 = (v44 + 40);
        v48 = (v44 + 40);
        do
        {
          v50 = *v48;
          v48 += 4;
          v49 = v50;
          if (v50)
          {
            v51 = *(v47 - 1);
            v52 = v49;
          }

          else
          {
            v51 = 0;
            v52 = 0xE000000000000000;
          }

          v93 = v46;
          v54 = *(v46 + 16);
          v53 = *(v46 + 24);

          if (v54 >= v53 >> 1)
          {
            sub_1C6440AD0((v53 > 1), v54 + 1, 1);
            v46 = v93;
          }

          *(v46 + 16) = v54 + 1;
          v55 = v46 + 16 * v54;
          *(v55 + 32) = v51;
          *(v55 + 40) = v52;
          v47 = v48;
          --v45;
        }

        while (v45);
        v56 = v86;
        v57 = *(v86 + 16);
        if (v57)
        {
          v93 = MEMORY[0x1E69E7CC0];
          sub_1C6440AD0(0, v57, 0);
          v58 = v93;
          v59 = (v56 + 56);
          do
          {
            v60 = *(v59 - 1);
            v61 = *v59;
            v93 = v58;
            v62 = *(v58 + 16);
            v63 = *(v58 + 24);

            if (v62 >= v63 >> 1)
            {
              sub_1C6440AD0((v63 > 1), v62 + 1, 1);
              v58 = v93;
            }

            *(v58 + 16) = v62 + 1;
            v64 = v58 + 16 * v62;
            *(v64 + 32) = v60;
            *(v64 + 40) = v61;
            v59 += 4;
            --v57;
          }

          while (v57);
        }

        v6 = v91;
        v25 = v88;
      }

      v65 = *MEMORY[0x1E6963B60];
      v93 = sub_1C645C874();
      v94 = v66;
      MEMORY[0x1EEE9AC00](v93);
      v85 = &v93;
      v67 = sub_1C6444358(sub_1C6444EAC, v84, v6);

      if (v67)
      {
        v68 = sub_1C645C614();
        v69 = v90;
        if (v25[3] && v25[1])
        {
          v70 = *v25;
          v71 = v25[1];
        }

        else
        {
        }

        v76 = sub_1C645C844();

        if (v25[3])
        {
          v77 = v25[2];
          v78 = v25[3];
        }

        v81 = sub_1C645C844();

        v82 = sub_1C645CA04();

        v83 = sub_1C645CA04();

        [v69 markAsSent:v68 sender:v76 senderHandle:v81 recipients:v82 recipientHandles:v83 transport:{@"com.apple.mail", v86}];
      }

      else
      {
        v72 = v2 + *(v92 + 44);
        v68 = sub_1C645C614();
        v73 = v90;
        if (v25[3] && v25[1])
        {
          v74 = *v25;
          v75 = v25[1];
        }

        else
        {
        }

        v76 = sub_1C645C844();

        if (v25[3])
        {
          v79 = v25[2];
          v80 = v25[3];
        }

        v81 = sub_1C645C844();

        v82 = sub_1C645CA04();

        v83 = sub_1C645CA04();

        [v73 markAsReceived:v68 sender:v76 senderHandle:v81 recipients:v82 recipientHandles:v83 transport:{@"com.apple.mail", v86}];
      }
    }
  }
}

uint64_t type metadata accessor for SearchableRichLink()
{
  result = qword_1EC1C4638;
  if (!qword_1EC1C4638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6444358(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1C6444404(uint64_t a1)
{
  v2 = v1;
  if (v1[1])
  {
    v4 = *v1;
    sub_1C645D004();
    sub_1C645C8E4();
  }

  else
  {
    sub_1C645D004();
  }

  v5 = v1[2];
  MEMORY[0x1C6958D60](*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      sub_1C645C8E4();

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  v10 = v2[3];
  v11 = v2[4];
  sub_1C645C8E4();
  v12 = v2[5];
  v13 = v2[6];
  sub_1C645C8E4();
  if (v2[8])
  {
    v14 = v2[7];
    sub_1C645D004();
    sub_1C645C8E4();
  }

  else
  {
    sub_1C645D004();
  }

  v15 = v2[9];
  v16 = v2[10];
  sub_1C645C8E4();
  v17 = type metadata accessor for SearchableRichLink();
  v18 = v17[10];
  sub_1C645C674();
  sub_1C64449BC(&qword_1EC1C4570, MEMORY[0x1E6969530]);
  sub_1C645C814();
  v19 = v2 + v17[11];
  sub_1C645C814();
  v20 = (v2 + v17[12]);
  if (v20[3])
  {
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    sub_1C645D004();
    sub_1C645D004();
    if (v22)
    {
      sub_1C645C8E4();
    }

    sub_1C645C8E4();
  }

  else
  {
    sub_1C645D004();
  }

  v24 = *(v2 + v17[13]);

  return sub_1C6442FD8(a1, v24);
}

uint64_t sub_1C6444630()
{
  sub_1C645CFE4();
  sub_1C6444404(v1);
  return sub_1C645D024();
}

uint64_t sub_1C6444674()
{
  sub_1C645CFE4();
  sub_1C6444404(v1);
  return sub_1C645D024();
}

uint64_t sub_1C64446B4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C645CF24() & 1;
  }
}

uint64_t sub_1C6444728(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C645CF24() & 1;
  }
}

unint64_t sub_1C6444780()
{
  result = qword_1EDC93598;
  if (!qword_1EDC93598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC93598);
  }

  return result;
}

void sub_1C64447F4()
{
  sub_1C6439E90(319, &qword_1EDC939A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C6439E90(319, &qword_1EDC93980, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C645C674();
      if (v2 <= 0x3F)
      {
        sub_1C6439E90(319, &qword_1EDC93E40, &type metadata for SearchableMessage.EmailAddress, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C6439E90(319, &qword_1EDC93988, &type metadata for SearchableMessage.EmailAddress, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C64449BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6444A04(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_1C645CF24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((sub_1C6441FF4(a1[2], a2[2]) & 1) == 0 || (a1[3] != a2[3] || a1[4] != a2[4]) && (sub_1C645CF24() & 1) == 0 || (a1[5] != a2[5] || a1[6] != a2[6]) && (sub_1C645CF24() & 1) == 0)
  {
    return 0;
  }

  v8 = a1[8];
  v9 = a2[8];
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (!v9 || (a1[7] != a2[7] || v8 != v9) && (sub_1C645CF24() & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  if ((a1[9] != a2[9] || a1[10] != a2[10]) && (sub_1C645CF24() & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for SearchableRichLink();
  v11 = v10[10];
  if ((sub_1C645C644() & 1) == 0)
  {
    return 0;
  }

  v12 = v10[11];
  if ((sub_1C645C644() & 1) == 0)
  {
    return 0;
  }

  v13 = v10[12];
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = *(a1 + v13 + 16);
  v17 = *(a1 + v13 + 24);
  v18 = (a2 + v13);
  v20 = *v18;
  v19 = v18[1];
  v22 = v18[2];
  v21 = v18[3];
  if (!v17)
  {
    v42 = v14;
    sub_1C643A6BC(v14, v15, v16, 0);
    if (!v21)
    {
      sub_1C643A6BC(v20, v19, v22, 0);
      v17 = 0;
      v36 = v42;
      goto LABEL_50;
    }

    sub_1C643A6BC(v20, v19, v22, v21);
    v29 = v42;
LABEL_40:
    sub_1C6423964(v29, v15, v16, v17);
    v30 = v20;
    v31 = v19;
    v32 = v22;
    v33 = v21;
LABEL_44:
    sub_1C6423964(v30, v31, v32, v33);
    return 0;
  }

  if (!v21)
  {
    v29 = v14;
    sub_1C643A6BC(v14, v15, v16, v17);
    sub_1C643A6BC(v20, v19, v22, 0);
    sub_1C643A6BC(v29, v15, v16, v17);

    goto LABEL_40;
  }

  if (v15)
  {
    if (!v19)
    {
      goto LABEL_36;
    }

    if (v14 != v20 || v15 != v19)
    {
      v23 = v18[1];
      v41 = v18[2];
      v24 = v16;
      v25 = *v18;
      v26 = v14;
      v27 = sub_1C645CF24();
      v14 = v26;
      v20 = v25;
      v16 = v24;
      v22 = v41;
      if ((v27 & 1) == 0)
      {
LABEL_36:
        v28 = v15;
LABEL_43:
        v34 = v14;
        sub_1C643A6BC(v14, v28, v16, v17);
        sub_1C643A6BC(v20, v19, v22, v21);
        sub_1C643A6BC(v34, v28, v16, v17);
        sub_1C6423964(v20, v19, v22, v21);

        v30 = v34;
        v31 = v15;
        v32 = v16;
        v33 = v17;
        goto LABEL_44;
      }
    }
  }

  else if (v19)
  {
    v28 = 0;
    goto LABEL_43;
  }

  if (v16 == v22 && v17 == v21)
  {
    v36 = v14;
    sub_1C643A6BC(v14, v15, v16, v17);
    sub_1C643A6BC(v20, v19, v16, v17);
    sub_1C643A6BC(v36, v15, v16, v17);
    sub_1C6423964(v20, v19, v16, v17);

LABEL_50:
    sub_1C6423964(v36, v15, v16, v17);
    goto LABEL_51;
  }

  v43 = v14;
  v40 = sub_1C645CF24();
  sub_1C643A6BC(v43, v15, v16, v17);
  sub_1C643A6BC(v20, v19, v22, v21);
  sub_1C643A6BC(v43, v15, v16, v17);
  sub_1C6423964(v20, v19, v22, v21);

  sub_1C6423964(v43, v15, v16, v17);
  if ((v40 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  v37 = v10[13];
  v38 = *(a1 + v37);
  v39 = *(a2 + v37);

  return sub_1C64422C4(v38, v39);
}

void __swiftcall BatchCounts.init(batchesAttempted:batchesLost:batchesSuccessful:batchesErrored:totalRuntime:)(IndexingAnalytics::BatchCounts *__return_ptr retstr, Swift::Int batchesAttempted, Swift::Int batchesLost, Swift::Int batchesSuccessful, Swift::Int batchesErrored, Swift::Int totalRuntime)
{
  retstr->batchesAttempted = batchesAttempted;
  retstr->batchesLost = batchesLost;
  retstr->batchesSuccessful = batchesSuccessful;
  retstr->batchesErrored = batchesErrored;
  retstr->totalRuntime = totalRuntime;
}

uint64_t BatchCounts.batchesFailed.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

uint64_t BatchCounts.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  return MEMORY[0x1C6958D60](v4);
}

uint64_t BatchCounts.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  return sub_1C645D024();
}

uint64_t sub_1C64450D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  return sub_1C645D024();
}

uint64_t sub_1C6445168()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  return MEMORY[0x1C6958D60](v4);
}

uint64_t sub_1C64451CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  return sub_1C645D024();
}

unint64_t sub_1C64452A0()
{
  result = qword_1EC1C4650;
  if (!qword_1EC1C4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4650);
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

uint64_t sub_1C6445308(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6445328(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

void __swiftcall ItemCounts.init(donationsIdentified:donationsLost:donationsAttempted:donationsSuccessful:retriesAttempted:retriesSuccessful:donationsEvictedFromQueue:)(IndexingAnalytics::ItemCounts *__return_ptr retstr, Swift::Int donationsIdentified, Swift::Int donationsLost, Swift::Int donationsAttempted, Swift::Int donationsSuccessful, Swift::Int retriesAttempted, Swift::Int retriesSuccessful, Swift::Int donationsEvictedFromQueue)
{
  retstr->donationsIdentified = donationsIdentified;
  retstr->donationsLost = donationsLost;
  retstr->donationsAttempted = donationsAttempted;
  retstr->donationsSuccessful = donationsSuccessful;
  retstr->retriesAttempted = retriesAttempted;
  retstr->retriesSuccessful = retriesSuccessful;
  retstr->donationsEvictedFromQueue = donationsEvictedFromQueue;
}

uint64_t ItemCounts.donationsFailed.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

uint64_t ItemCounts.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  return MEMORY[0x1C6958D60](v6);
}

uint64_t ItemCounts.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  MEMORY[0x1C6958D60](v6);
  MEMORY[0x1C6958D60](v7);
  return sub_1C645D024();
}

uint64_t sub_1C6445620()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  return MEMORY[0x1C6958D60](v6);
}

uint64_t sub_1C64456A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  MEMORY[0x1C6958D60](v6);
  MEMORY[0x1C6958D60](v7);
  return sub_1C645D024();
}

void __swiftcall ItemCounts.init()(IndexingAnalytics::ItemCounts *__return_ptr retstr)
{
  retstr->donationsEvictedFromQueue = 0;
  *&retstr->donationsAttempted = 0u;
  *&retstr->retriesAttempted = 0u;
  *&retstr->donationsIdentified = 0u;
}

void *static ItemCounts.+ infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = a2[1];
  v4 = result[1];
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result[2];
  v8 = a2[2];
  v5 = __OFADD__(v7, v8);
  v9 = v7 + v8;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result[3];
  v11 = a2[3];
  v5 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result[4];
  v14 = a2[4];
  v5 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = result[5];
  v17 = a2[5];
  v5 = __OFADD__(v16, v17);
  v18 = v16 + v17;
  if (v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = result[6];
  v20 = a2[6];
  v5 = __OFADD__(v19, v20);
  v21 = v19 + v20;
  if (!v5)
  {
    *a3 = *result + *a2;
    a3[1] = v6;
    a3[2] = v9;
    a3[3] = v12;
    a3[4] = v15;
    a3[5] = v18;
    a3[6] = v21;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

BOOL _s17IndexingAnalytics10ItemCountsV2eeoiySbAC_ACtFZ_0(int64x2_t *a1, int64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))) & 1) != 0 && a1[2].i64[0] == a2[2].i64[0] && a1[2].i64[1] == a2[2].i64[1])
  {
    return a1[3].i64[0] == a2[3].i64[0];
  }

  return result;
}

unint64_t sub_1C6445870()
{
  result = qword_1EC1C4658;
  if (!qword_1EC1C4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4658);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C64458E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6445900(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

IndexingAnalytics::TimeValues __swiftcall TimeValues.init(mean:median:p95:)(Swift::Int mean, Swift::Int median, Swift::Int p95)
{
  *v3 = mean;
  v3[1] = median;
  v3[2] = p95;
  result.p95 = p95;
  result.median = median;
  result.mean = mean;
  return result;
}

uint64_t TimeValues.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  return MEMORY[0x1C6958D60](v2);
}

uint64_t TimeValues.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  return sub_1C645D024();
}

uint64_t sub_1C6445AC8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  return sub_1C645D024();
}

uint64_t sub_1C6445B34()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  return MEMORY[0x1C6958D60](v2);
}

uint64_t sub_1C6445B7C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  return sub_1C645D024();
}

__n128 ItemTimes.timeToPartialDonation.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.timeToPartialDonation.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.partialDonationsInQueueAge.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.partialDonationsInQueueAge.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  return result;
}

__n128 ItemTimes.timeToFullDonation.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[4].n128_u64[0];
  result = v1[3];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.timeToFullDonation.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.fullDonationsInQueueAge.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 88);
  result = *(v1 + 72);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.fullDonationsInQueueAge.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *(v1 + 72) = *a1;
  *(v1 + 88) = v2;
  return result;
}

__n128 ItemTimes.timeToDroppedDonation.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[7].n128_u64[0];
  result = v1[6];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.timeToDroppedDonation.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  v1[6] = *a1;
  v1[7].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.droppedDonationsInQueueAge.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 136);
  result = *(v1 + 120);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.droppedDonationsInQueueAge.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v2;
  return result;
}

__n128 ItemTimes.timeToUpdate.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[10].n128_u64[0];
  result = v1[9];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.timeToUpdate.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  v1[9] = *a1;
  v1[10].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.updatesInQueueAge.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 184);
  result = *(v1 + 168);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.updatesInQueueAge.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *(v1 + 168) = *a1;
  *(v1 + 184) = v2;
  return result;
}

__n128 ItemTimes.timeToRedonation.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[13].n128_u64[0];
  result = v1[12];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.timeToRedonation.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  v1[12] = *a1;
  v1[13].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.redonationsInQueueAge.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 232);
  result = *(v1 + 216);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.redonationsInQueueAge.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *(v1 + 216) = *a1;
  *(v1 + 232) = v2;
  return result;
}

uint64_t ItemTimes.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[15];
  v17 = v0[16];
  v18 = v0[17];
  v19 = v0[18];
  v20 = v0[19];
  v21 = v0[20];
  v22 = v0[21];
  v23 = v0[22];
  v24 = v0[23];
  v25 = v0[24];
  v26 = v0[25];
  v27 = v0[26];
  v28 = v0[27];
  v29 = v0[28];
  v30 = v0[29];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v5);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v6);
  MEMORY[0x1C6958D60](v7);
  MEMORY[0x1C6958D60](v9);
  MEMORY[0x1C6958D60](v8);
  MEMORY[0x1C6958D60](v11);
  MEMORY[0x1C6958D60](v12);
  MEMORY[0x1C6958D60](v13);
  MEMORY[0x1C6958D60](v14);
  MEMORY[0x1C6958D60](v15);
  MEMORY[0x1C6958D60](v16);
  MEMORY[0x1C6958D60](v17);
  MEMORY[0x1C6958D60](v18);
  MEMORY[0x1C6958D60](v19);
  MEMORY[0x1C6958D60](v20);
  MEMORY[0x1C6958D60](v21);
  MEMORY[0x1C6958D60](v22);
  MEMORY[0x1C6958D60](v23);
  MEMORY[0x1C6958D60](v24);
  MEMORY[0x1C6958D60](v25);
  MEMORY[0x1C6958D60](v26);
  MEMORY[0x1C6958D60](v27);
  MEMORY[0x1C6958D60](v28);
  MEMORY[0x1C6958D60](v29);
  return MEMORY[0x1C6958D60](v30);
}

uint64_t ItemTimes.hashValue.getter()
{
  sub_1C645CFE4();
  ItemTimes.hash(into:)();
  return sub_1C645D024();
}

uint64_t sub_1C644617C()
{
  sub_1C645CFE4();
  ItemTimes.hash(into:)();
  return sub_1C645D024();
}

uint64_t sub_1C64461C0()
{
  sub_1C645CFE4();
  ItemTimes.hash(into:)();
  return sub_1C645D024();
}

BOOL _s17IndexingAnalytics9ItemTimesV2eeoiySbAC_ACtFZ_0(int64x2_t *a1, int64x2_t *a2)
{
  result = 0;
  if (vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])), vuzp1q_s32(vceqq_s64(a1[2], a2[2]), vceqq_s64(a1[3], a2[3]))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(a1[4], a2[4]), vceqq_s64(a1[5], a2[5])), vuzp1q_s32(vceqq_s64(a1[6], a2[6]), vceqq_s64(a1[7], a2[7]))))))
  {
    v4 = vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(a1[8], a2[8]), vceqq_s64(a1[9], a2[9])), vuzp1q_s32(vceqq_s64(a1[10], a2[10]), vceqq_s64(a1[11], a2[11]))), xmmword_1C6474890)) != 255 || a1[12].i64[0] != a2[12].i64[0];
    v5 = v4 || a1[12].i64[1] != a2[12].i64[1];
    if (!v5 && a1[13].i64[0] == a2[13].i64[0])
    {
      return a1[13].i64[1] == a2[13].i64[1] && a1[14].i64[0] == a2[14].i64[0] && a1[14].i64[1] == a2[14].i64[1];
    }
  }

  return result;
}

unint64_t sub_1C6446318()
{
  result = qword_1EC1C4660;
  if (!qword_1EC1C4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4660);
  }

  return result;
}

unint64_t sub_1C6446370()
{
  result = qword_1EC1C4668;
  if (!qword_1EC1C4668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4668);
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

uint64_t getEnumTagSinglePayload for TimeValues(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimeValues(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1C6446478(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 240))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6446498(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 232) = 0;
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

  *(result + 240) = v3;
  return result;
}

uint64_t Batch.ID.hashValue.getter()
{
  v1 = *v0;
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  return sub_1C645D024();
}

uint64_t sub_1C64465D0()
{
  v1 = *v0;
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  return sub_1C645D024();
}

uint64_t sub_1C6446644()
{
  v1 = *v0;
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  return sub_1C645D024();
}

uint64_t Batch.Error.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Batch.Error.domain.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

IndexingAnalytics::Batch::Error __swiftcall Batch.Error.init(domain:code:)(Swift::String domain, Swift::Int code)
{
  *v2 = domain;
  v2[1]._countAndFlagsBits = code;
  result.domain = domain;
  result.code = code;
  return result;
}

BOOL static Batch.Error.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1C645CF24();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t Batch.Error.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645C8E4();
  return MEMORY[0x1C6958D60](v3);
}

uint64_t Batch.Error.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645CFE4();
  sub_1C645C8E4();
  MEMORY[0x1C6958D60](v3);
  return sub_1C645D024();
}

uint64_t sub_1C6446844()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645CFE4();
  sub_1C645C8E4();
  MEMORY[0x1C6958D60](v3);
  return sub_1C645D024();
}

uint64_t sub_1C64468A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645C8E4();
  return MEMORY[0x1C6958D60](v3);
}

uint64_t sub_1C64468E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645CFE4();
  sub_1C645C8E4();
  MEMORY[0x1C6958D60](v3);
  return sub_1C645D024();
}

BOOL sub_1C6446940(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1C645CF24();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

IndexingAnalytics::Batch::FailureReason_optional __swiftcall Batch.FailureReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C645CE64();

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

uint64_t Batch.FailureReason.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6E776F6E6B6E75;
  }

  else
  {
    result = 1953722220;
  }

  *v0;
  return result;
}

uint64_t sub_1C6446A34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  else
  {
    v4 = 1953722220;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x6E776F6E6B6E75;
  }

  else
  {
    v6 = 1953722220;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C645CF24();
  }

  return v9 & 1;
}

uint64_t sub_1C6446AD4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C645CE64();

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

void sub_1C6446B34(uint64_t *a1@<X8>)
{
  v2 = 1953722220;
  if (*v1)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6446B6C()
{
  v1 = *v0;
  sub_1C645CFE4();
  sub_1C645C8E4();

  return sub_1C645D024();
}

uint64_t sub_1C6446BE8()
{
  *v0;
  sub_1C645C8E4();
}

uint64_t sub_1C6446C50()
{
  v1 = *v0;
  sub_1C645CFE4();
  sub_1C645C8E4();

  return sub_1C645D024();
}

uint64_t Batch.Outcome.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Batch.Outcome(0) + 20);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
}

__n128 Batch.Outcome.error.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for Batch.Outcome(0) + 20));
  v4 = v3->n128_u64[1];

  result = v6;
  *v3 = v6;
  v3[1].n128_u64[0] = v2;
  return result;
}

__n128 Batch.Outcome.init(timestamp:error:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *a2;
  v5 = a2[1].n128_u64[0];
  v6 = (a3 + *(type metadata accessor for Batch.Outcome(0) + 20));
  v7 = sub_1C645C674();
  v6->n128_u64[1] = 0;
  v6[1].n128_u64[0] = 0;
  v6->n128_u64[0] = 0;
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  v8 = v6->n128_u64[1];

  result = v10;
  *v6 = v10;
  v6[1].n128_u64[0] = v5;
  return result;
}

uint64_t Batch.Outcome.hash(into:)()
{
  sub_1C645C674();
  sub_1C6448A9C(&qword_1EC1C4570, MEMORY[0x1E6969530]);
  sub_1C645C814();
  v1 = (v0 + *(type metadata accessor for Batch.Outcome(0) + 20));
  if (!v1[1])
  {
    return sub_1C645D004();
  }

  v2 = v1[2];
  v3 = *v1;
  sub_1C645D004();
  sub_1C645C8E4();
  return MEMORY[0x1C6958D60](v2);
}

uint64_t Batch.Outcome.hashValue.getter()
{
  sub_1C645CFE4();
  sub_1C645C674();
  sub_1C6448A9C(&qword_1EC1C4570, MEMORY[0x1E6969530]);
  sub_1C645C814();
  v1 = (v0 + *(type metadata accessor for Batch.Outcome(0) + 20));
  if (v1[1])
  {
    v2 = v1[2];
    v3 = *v1;
    sub_1C645D004();
    sub_1C645C8E4();
    MEMORY[0x1C6958D60](v2);
  }

  else
  {
    sub_1C645D004();
  }

  return sub_1C645D024();
}

uint64_t sub_1C6447068(uint64_t a1)
{
  sub_1C645CFE4();
  sub_1C645C674();
  sub_1C6448A9C(&qword_1EC1C4570, MEMORY[0x1E6969530]);
  sub_1C645C814();
  v3 = (v1 + *(a1 + 20));
  if (v3[1])
  {
    v4 = v3[2];
    v5 = *v3;
    sub_1C645D004();
    sub_1C645C8E4();
    MEMORY[0x1C6958D60](v4);
  }

  else
  {
    sub_1C645D004();
  }

  return sub_1C645D024();
}

uint64_t sub_1C644714C(uint64_t a1, uint64_t a2)
{
  sub_1C645C674();
  sub_1C6448A9C(&qword_1EC1C4570, MEMORY[0x1E6969530]);
  sub_1C645C814();
  v4 = (v2 + *(a2 + 20));
  if (!v4[1])
  {
    return sub_1C645D004();
  }

  v5 = v4[2];
  v6 = *v4;
  sub_1C645D004();
  sub_1C645C8E4();
  return MEMORY[0x1C6958D60](v5);
}

uint64_t sub_1C644721C(uint64_t a1, uint64_t a2)
{
  sub_1C645CFE4();
  sub_1C645C674();
  sub_1C6448A9C(&qword_1EC1C4570, MEMORY[0x1E6969530]);
  sub_1C645C814();
  v4 = (v2 + *(a2 + 20));
  if (v4[1])
  {
    v5 = v4[2];
    v6 = *v4;
    sub_1C645D004();
    sub_1C645C8E4();
    MEMORY[0x1C6958D60](v5);
  }

  else
  {
    sub_1C645D004();
  }

  return sub_1C645D024();
}

IndexingAnalytics::Batch::Counts __swiftcall Batch.Counts.init()()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
  return result;
}

IndexingAnalytics::Batch::Counts __swiftcall Batch.Counts.init(messages:attachments:richLinks:)(Swift::Int messages, Swift::Int attachments, Swift::Int richLinks)
{
  *v3 = messages;
  v3[1] = attachments;
  v3[2] = richLinks;
  result.richLinks = richLinks;
  result.attachments = attachments;
  result.messages = messages;
  return result;
}

uint64_t Batch.Counts.items.getter()
{
  v1 = v0[1];
  v2 = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = v0[2];
  result = v2 + v3;
  if (__OFADD__(v2, v3))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t Batch.Counts.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  return MEMORY[0x1C6958D60](v2);
}

uint64_t Batch.Counts.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  return sub_1C645D024();
}

uint64_t _s17IndexingAnalytics5BatchV7OutcomeV9timestamp10Foundation4DateVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C645C674();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s17IndexingAnalytics5BatchV7OutcomeV9timestamp10Foundation4DateVvs_0(uint64_t a1)
{
  v3 = sub_1C645C674();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

__n128 Batch.counts.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Batch(0) + 20));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  return result;
}

__n128 Batch.counts.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for Batch(0) + 20));
  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t Batch.outcome.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Batch(0) + 24);

  return sub_1C64484E8(v3, a1);
}

uint64_t Batch.outcome.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Batch(0) + 24);

  return sub_1C6448558(a1, v3);
}

uint64_t Batch.init(startedAt:counts:outcome:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = *a2;
  v7 = *(a2 + 2);
  v8 = type metadata accessor for Batch(0);
  v9 = *(v8 + 24);
  v10 = type metadata accessor for Batch.Outcome(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = sub_1C645C674();
  (*(*(v11 - 8) + 32))(a4, a1, v11);
  v12 = a4 + *(v8 + 20);
  *v12 = v14;
  *(v12 + 16) = v7;

  return sub_1C6448558(a3, a4 + v9);
}

uint64_t Batch.runtime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4670, "~3\t");
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15 - v3;
  v5 = sub_1C645C674();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Batch(0);
  sub_1C64484E8(v0 + *(v10 + 24), v4);
  v11 = type metadata accessor for Batch.Outcome(0);
  if ((*(*(v11 - 8) + 48))(v4, 1, v11) == 1)
  {
    sub_1C640D570(v4, &qword_1EC1C4670, "~3\t");
    return 0;
  }

  else
  {
    (*(v6 + 16))(v9, v4, v5);
    sub_1C64485C8(v4);
    sub_1C645C5F4();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    return v14;
  }
}

uint64_t Batch.endedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4670, "~3\t");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Batch(0);
  sub_1C64484E8(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Batch.Outcome(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1C640D570(v6, &qword_1EC1C4670, "~3\t");
    v9 = sub_1C645C674();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    v11 = sub_1C645C674();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a1, v6, v11);
    sub_1C64485C8(v6);
    return (*(v12 + 56))(a1, 0, 1, v11);
  }
}

uint64_t Batch.failureReason.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4670, "~3\t");
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - v12;
  v14 = *(type metadata accessor for Batch(0) + 24);
  sub_1C64484E8(v1 + v14, v9);
  v15 = type metadata accessor for Batch.Outcome(0);
  v16 = *(*(v15 - 8) + 48);
  if (v16(v9, 1, v15) != 1)
  {
    v24 = a1;
    v20 = sub_1C645C674();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v13, v9, v20);
    sub_1C64485C8(v9);
    (*(v21 + 56))(v13, 0, 1, v20);
    sub_1C640D570(v13, &qword_1EC1C4050, &unk_1C6472830);
    sub_1C64484E8(v1 + v14, v7);
    if (v16(v7, 1, v15) == 1)
    {
      result = sub_1C640D570(v7, &qword_1EC1C4670, "~3\t");
    }

    else
    {
      v22 = *&v7[*(v15 + 20) + 8];

      result = sub_1C64485C8(v7);
      if (v22)
      {

        v19 = 1;
LABEL_8:
        a1 = v24;
        goto LABEL_9;
      }
    }

    v19 = 2;
    goto LABEL_8;
  }

  sub_1C640D570(v9, &qword_1EC1C4670, "~3\t");
  v17 = sub_1C645C674();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  result = sub_1C640D570(v13, &qword_1EC1C4050, &unk_1C6472830);
  v19 = 0;
LABEL_9:
  *a1 = v19;
  return result;
}

uint64_t Batch.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4670, "~3\t");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Batch(0);
  sub_1C64484E8(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Batch.Outcome(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    result = sub_1C640D570(v6, &qword_1EC1C4670, "~3\t");
    v10 = 0;
    v11 = 0uLL;
  }

  else
  {
    v12 = &v6[*(v8 + 20)];
    v10 = *v12;
    v13 = *(v12 + 8);

    result = sub_1C64485C8(v6);
    v11 = v13;
  }

  *a1 = v10;
  *(a1 + 8) = v11;
  return result;
}

uint64_t Batch.hash(into:)()
{
  v1 = type metadata accessor for Batch.Outcome(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4670, "~3\t");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v20 - v8;
  v10 = sub_1C645C674();
  v20[0] = sub_1C6448A9C(&qword_1EC1C4570, MEMORY[0x1E6969530]);
  v20[1] = v10;
  sub_1C645C814();
  v11 = type metadata accessor for Batch(0);
  v12 = (v0 + *(v11 + 20));
  v13 = v12[1];
  v14 = v12[2];
  MEMORY[0x1C6958D60](*v12);
  MEMORY[0x1C6958D60](v13);
  MEMORY[0x1C6958D60](v14);
  sub_1C64484E8(v0 + *(v11 + 24), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_1C645D004();
  }

  sub_1C64488E8(v9, v5);
  sub_1C645D004();
  sub_1C645C814();
  v16 = &v5[*(v1 + 20)];
  v17 = v5;
  if (*(v16 + 1))
  {
    v18 = *(v16 + 2);
    v19 = *v16;
    sub_1C645D004();
    sub_1C645C8E4();
    MEMORY[0x1C6958D60](v18);
  }

  else
  {
    sub_1C645D004();
  }

  return sub_1C64485C8(v17);
}

uint64_t Batch.hashValue.getter()
{
  sub_1C645CFE4();
  Batch.hash(into:)();
  return sub_1C645D024();
}

uint64_t sub_1C64482B4()
{
  sub_1C645CFE4();
  Batch.hash(into:)();
  return sub_1C645D024();
}

uint64_t sub_1C64482F8()
{
  sub_1C645CFE4();
  Batch.hash(into:)();
  return sub_1C645D024();
}

IndexingAnalytics::Batch::Error __swiftcall Batch.Error.init(_:)(NSError *a1)
{
  v3 = v1;
  v4 = [(NSError *)a1 domain];
  v5 = sub_1C645C874();
  v7 = v6;

  *v3 = v5;
  v3[1] = v7;
  v8 = [(NSError *)a1 code];

  v3[2] = v8;
  result.code = v11;
  result.domain._object = v10;
  result.domain._countAndFlagsBits = v9;
  return result;
}

BOOL _s17IndexingAnalytics5BatchV7OutcomeV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1C645C644() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Batch.Outcome(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = v5[2];
      v10 = v7[2];
      if (*v5 == *v7 && v6 == v8)
      {
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v12 = v7[1];
        v13 = sub_1C645CF24();
        swift_bridgeObjectRetain_n();
        if ((v13 & 1) == 0)
        {
          swift_bridgeObjectRelease_n();
          return 0;
        }
      }

      swift_bridgeObjectRelease_n();
      return v9 == v10;
    }

LABEL_12:

    return 0;
  }

  if (v8)
  {
    v14 = v7[1];
    goto LABEL_12;
  }

  return 1;
}

uint64_t sub_1C64484E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4670, "~3\t");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6448558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4670, "~3\t");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C64485C8(uint64_t a1)
{
  v2 = type metadata accessor for Batch.Outcome(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL _s17IndexingAnalytics5BatchV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Batch.Outcome(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4670, "~3\t");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C46D8, "J0\t");
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  if ((sub_1C645C644() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for Batch(0);
  v18 = *(v17 + 20);
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = *(a1 + v18 + 16);
  v22 = (a2 + v18);
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = v19 == v23 && v20 == v24;
  if (!v26 || v21 != v25)
  {
    return 0;
  }

  v28 = *(v17 + 24);
  v29 = *(v13 + 48);
  sub_1C64484E8(a1 + v28, v16);
  sub_1C64484E8(a2 + v28, &v16[v29]);
  v30 = *(v5 + 48);
  if (v30(v16, 1, v4) == 1)
  {
    if (v30(&v16[v29], 1, v4) == 1)
    {
      sub_1C640D570(v16, &qword_1EC1C4670, "~3\t");
      return 1;
    }

    goto LABEL_15;
  }

  sub_1C64484E8(v16, v12);
  if (v30(&v16[v29], 1, v4) == 1)
  {
    sub_1C64485C8(v12);
LABEL_15:
    sub_1C640D570(v16, &qword_1EC1C46D8, "J0\t");
    return 0;
  }

  sub_1C64488E8(&v16[v29], v8);
  v32 = _s17IndexingAnalytics5BatchV7OutcomeV2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_1C64485C8(v8);
  sub_1C64485C8(v12);
  sub_1C640D570(v16, &qword_1EC1C4670, "~3\t");
  return v32;
}

uint64_t sub_1C64488E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Batch.Outcome(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C6448950()
{
  result = qword_1EC1C4678;
  if (!qword_1EC1C4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4678);
  }

  return result;
}

unint64_t sub_1C64489A8()
{
  result = qword_1EC1C4680;
  if (!qword_1EC1C4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4680);
  }

  return result;
}

unint64_t sub_1C6448A00()
{
  result = qword_1EC1C4688;
  if (!qword_1EC1C4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4688);
  }

  return result;
}

uint64_t sub_1C6448A9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C6448AE8()
{
  result = qword_1EC1C4698;
  if (!qword_1EC1C4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4698);
  }

  return result;
}

void sub_1C6448BAC()
{
  sub_1C645C674();
  if (v0 <= 0x3F)
  {
    sub_1C6448C38();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6448C38()
{
  if (!qword_1EC1C46B8)
  {
    type metadata accessor for Batch.Outcome(255);
    v0 = sub_1C645CBA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1C46B8);
    }
  }
}

uint64_t sub_1C6448CA0(uint64_t a1, int a2)
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

uint64_t sub_1C6448CE8(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Batch.FailureReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Batch.FailureReason(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1C6448EB0()
{
  sub_1C645C674();
  if (v0 <= 0x3F)
  {
    sub_1C6448F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6448F34()
{
  if (!qword_1EC1C46D0)
  {
    v0 = sub_1C645CBA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1C46D0);
    }
  }
}

BOOL static ItemEvent.DonationReason.== infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

uint64_t ItemEvent.DonationReason.hash(into:)(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else if (a2 == 3)
  {
    v2 = 2;
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    v2 = a2 & 1;
  }

  return MEMORY[0x1C6958D60](v2);
}

uint64_t ItemEvent.DonationReason.hashValue.getter(char a1)
{
  sub_1C645CFE4();
  if (a1 == 2)
  {
    v2 = 1;
  }

  else if (a1 == 3)
  {
    v2 = 2;
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    v2 = a1 & 1;
  }

  MEMORY[0x1C6958D60](v2);
  return sub_1C645D024();
}

uint64_t sub_1C644910C()
{
  v1 = *v0;
  sub_1C645CFE4();
  if (v1 == 2)
  {
    v2 = 1;
  }

  else if (v1 == 3)
  {
    v2 = 2;
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    v2 = v1 & 1;
  }

  MEMORY[0x1C6958D60](v2);
  return sub_1C645D024();
}

uint64_t sub_1C6449180()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 1;
  }

  else if (v1 == 3)
  {
    v2 = 2;
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    v2 = v1 & 1;
  }

  return MEMORY[0x1C6958D60](v2);
}

uint64_t sub_1C64491D8()
{
  v1 = *v0;
  sub_1C645CFE4();
  if (v1 == 2)
  {
    v2 = 1;
  }

  else if (v1 == 3)
  {
    v2 = 2;
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    v2 = v1 & 1;
  }

  MEMORY[0x1C6958D60](v2);
  return sub_1C645D024();
}

BOOL sub_1C6449248(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 2;
  v5 = v3 == 3;
  v6 = v3 & 0xFE;
  v7 = ((v3 ^ v2) & 1) == 0;
  if (v6 == 2)
  {
    v7 = 0;
  }

  if (v2 == 3)
  {
    v7 = v5;
  }

  if (v2 == 2)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t _s17IndexingAnalytics9ItemEventO12AvailabilityO9hashValueSivg_0(char a1)
{
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](a1 & 1);
  return sub_1C645D024();
}

uint64_t ItemEvent.hash(into:)(uint64_t a1, __int16 a2)
{
  v2 = a2;
  v3 = a2;
  if (HIBYTE(a2) <= 1u)
  {
    if (HIBYTE(a2))
    {
      MEMORY[0x1C6958D60](2);
LABEL_15:
      v4 = v2 & 1;
      return MEMORY[0x1C6958D60](v4);
    }

    MEMORY[0x1C6958D60](0);
    if (v3 == 2)
    {
      v4 = 1;
      return MEMORY[0x1C6958D60](v4);
    }

    if (v3 == 3)
    {
      v4 = 2;
      return MEMORY[0x1C6958D60](v4);
    }

    v5 = 0;
LABEL_14:
    MEMORY[0x1C6958D60](v5);
    goto LABEL_15;
  }

  if (HIBYTE(a2) == 2)
  {
    v5 = 3;
    goto LABEL_14;
  }

  if (a2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return MEMORY[0x1C6958D60](v4);
}

uint64_t ItemEvent.hashValue.getter(__int16 a1)
{
  sub_1C645CFE4();
  ItemEvent.hash(into:)(v3, a1);
  return sub_1C645D024();
}

uint64_t sub_1C64493C4()
{
  v1 = *v0;
  sub_1C645CFE4();
  ItemEvent.hash(into:)(v3, v1);
  return sub_1C645D024();
}

uint64_t sub_1C6449414()
{
  v1 = *v0;
  sub_1C645CFE4();
  ItemEvent.hash(into:)(v3, v1);
  return sub_1C645D024();
}

uint64_t Int.init(_:)(char a1)
{
  v1 = 4;
  if (a1 != 3)
  {
    v1 = (a1 & 1u) + 1;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

BOOL _s17IndexingAnalytics9ItemEventO2eeoiySbAC_ACtFZ_0(int a1, int a2)
{
  if (BYTE1(a1) <= 1u)
  {
    if (!BYTE1(a1))
    {
      if (!BYTE1(a2))
      {
        if (a1 == 2)
        {
          if (a2 == 2)
          {
            return 1;
          }
        }

        else if (a1 == 3)
        {
          if (a2 == 3)
          {
            return 1;
          }
        }

        else if ((a2 & 0xFE) != 2 && ((a2 ^ a1) & 1) == 0)
        {
          return 1;
        }
      }

      return 0;
    }

    if (BYTE1(a2) != 1)
    {
      return 0;
    }

    return ((a2 ^ a1) & 1) == 0;
  }

  if (BYTE1(a1) != 2)
  {
    if (a1)
    {
      if (BYTE1(a2) == 3 && a2 == 1)
      {
        return 1;
      }
    }

    else if (BYTE1(a2) == 3 && !a2)
    {
      return 1;
    }

    return 0;
  }

  if (BYTE1(a2) == 2)
  {
    return ((a2 ^ a1) & 1) == 0;
  }

  return 0;
}

unint64_t sub_1C6449568()
{
  result = qword_1EC1C46E0;
  if (!qword_1EC1C46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C46E0);
  }

  return result;
}

unint64_t sub_1C64495C0()
{
  result = qword_1EC1C46E8;
  if (!qword_1EC1C46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C46E8);
  }

  return result;
}

unint64_t sub_1C6449618()
{
  result = qword_1EC1C46F0;
  if (!qword_1EC1C46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C46F0);
  }

  return result;
}

unint64_t sub_1C6449670()
{
  result = qword_1EC1C46F8;
  if (!qword_1EC1C46F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C46F8);
  }

  return result;
}

unint64_t sub_1C64496C8()
{
  result = qword_1EC1C4700;
  if (!qword_1EC1C4700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4700);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemEvent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 3)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for ItemEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
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
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C6449870(unsigned __int8 *a1)
{
  if (a1[1] <= 2u)
  {
    return a1[1];
  }

  else
  {
    return *a1 + 3;
  }
}

_BYTE *sub_1C6449888(_BYTE *result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  result[1] = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ItemEvent.DonationReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ItemEvent.DonationReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1C6449A18(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C6449A2C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void __swiftcall BatchRates.init(batchSuccessRate:batchFailureRate:batchAverageRuntime:batchLossRate:batchErrorRate:)(IndexingAnalytics::BatchRates *__return_ptr retstr, Swift::Int batchSuccessRate, Swift::Int batchFailureRate, Swift::Int batchAverageRuntime, Swift::Int batchLossRate, Swift::Int batchErrorRate)
{
  retstr->batchSuccessRate = batchSuccessRate;
  retstr->batchFailureRate = batchFailureRate;
  retstr->batchAverageRuntime = batchAverageRuntime;
  retstr->batchLossRate = batchLossRate;
  retstr->batchErrorRate = batchErrorRate;
}

uint64_t BatchRates.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  return MEMORY[0x1C6958D60](v4);
}

uint64_t BatchRates.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  return sub_1C645D024();
}

void __swiftcall BatchRates.init(_:)(IndexingAnalytics::BatchRates *__return_ptr retstr, IndexingAnalytics::BatchCounts *a2)
{
  v3 = *&a2->batchesSuccessful;
  v31[0] = *&a2->batchesAttempted;
  v31[1] = v3;
  totalRuntime = a2->totalRuntime;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = sub_1C6449E70(KeyPath, v5, v31);
  v8 = v7;

  if (v8)
  {
    v9 = 100;
  }

  else
  {
    v9 = v6;
  }

  v10 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = sub_1C6449E70(v10, v11, v31);
  v14 = v13;

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v16 = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v18 = sub_1C6449F60(v16, v17, v31);

  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v21 = sub_1C6449E70(v19, v20, v31);
  v23 = v22;

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v21;
  }

  v25 = swift_getKeyPath();
  v26 = swift_getKeyPath();
  v27 = sub_1C6449E70(v25, v26, v31);
  v29 = v28;

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  retstr->batchSuccessRate = v9;
  retstr->batchFailureRate = v15;
  retstr->batchAverageRuntime = v18;
  retstr->batchLossRate = v24;
  retstr->batchErrorRate = v30;
}

uint64_t sub_1C6449E70(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *a3;
  v9 = a3[1];
  v11 = *(a3 + 4);
  swift_getAtKeyPath();
  if (v6 >= 1)
  {
    v8 = *a3;
    v10 = a3[1];
    v12 = *(a3 + 4);
    result = swift_getAtKeyPath();
    v5 = v6 / v6 * 100.0;
    if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        return v5;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_1C6449F60(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *a3;
  v9 = a3[1];
  v11 = *(a3 + 4);
  swift_getAtKeyPath();
  if (v6 >= 1)
  {
    v8 = *a3;
    v10 = a3[1];
    v12 = *(a3 + 4);
    result = swift_getAtKeyPath();
    v5 = round(v6 / v6);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        return v5;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  return 0;
}

unint64_t sub_1C644A044()
{
  result = qword_1EC1C4708;
  if (!qword_1EC1C4708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4708);
  }

  return result;
}

void __swiftcall ItemRates.init(donationRetryRate:retrySuccessRate:donationSuccessRate:donationFailureRate:donationLossRate:donationQueueEvictionRate:)(IndexingAnalytics::ItemRates *__return_ptr retstr, Swift::Int donationRetryRate, Swift::Int retrySuccessRate, Swift::Int donationSuccessRate, Swift::Int donationFailureRate, Swift::Int donationLossRate, Swift::Int donationQueueEvictionRate)
{
  retstr->donationRetryRate = donationRetryRate;
  retstr->retrySuccessRate = retrySuccessRate;
  retstr->donationSuccessRate = donationSuccessRate;
  retstr->donationFailureRate = donationFailureRate;
  retstr->donationLossRate = donationLossRate;
  retstr->donationQueueEvictionRate = donationQueueEvictionRate;
}

uint64_t ItemRates.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  return MEMORY[0x1C6958D60](v5);
}

uint64_t ItemRates.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  MEMORY[0x1C6958D60](v6);
  return sub_1C645D024();
}

uint64_t sub_1C644A2F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  MEMORY[0x1C6958D60](v6);
  return sub_1C645D024();
}

uint64_t sub_1C644A398()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  return MEMORY[0x1C6958D60](v5);
}

uint64_t sub_1C644A40C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  MEMORY[0x1C6958D60](v6);
  return sub_1C645D024();
}

void __swiftcall ItemRates.init(_:)(IndexingAnalytics::ItemRates *__return_ptr retstr, IndexingAnalytics::ItemCounts *a2)
{
  v3 = *&a2->donationsAttempted;
  v40[0] = *&a2->donationsIdentified;
  v40[1] = v3;
  v40[2] = *&a2->retriesAttempted;
  donationsEvictedFromQueue = a2->donationsEvictedFromQueue;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = sub_1C644A6F8(KeyPath, v5, v40);
  v8 = v7;

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  v10 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = sub_1C644A6F8(v10, v11, v40);
  v14 = v13;

  v15 = 100;
  if (v14)
  {
    v16 = 100;
  }

  else
  {
    v16 = v12;
  }

  v17 = swift_getKeyPath();
  v18 = swift_getKeyPath();
  v19 = sub_1C644A6F8(v17, v18, v40);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    v15 = v19;
  }

  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = sub_1C644A6F8(v22, v23, v40);
  v26 = v25;

  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v24;
  }

  v28 = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v30 = sub_1C644A6F8(v28, v29, v40);
  v32 = v31;

  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = v30;
  }

  v34 = swift_getKeyPath();
  v35 = swift_getKeyPath();
  v36 = sub_1C644A6F8(v34, v35, v40);
  v38 = v37;

  if (v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = v36;
  }

  retstr->donationRetryRate = v9;
  retstr->retrySuccessRate = v16;
  retstr->donationSuccessRate = v15;
  retstr->donationFailureRate = v27;
  retstr->donationLossRate = v33;
  retstr->donationQueueEvictionRate = v39;
}

uint64_t sub_1C644A6F8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *a3;
  v9 = a3[1];
  v11 = a3[2];
  v13 = *(a3 + 6);
  swift_getAtKeyPath();
  if (v6 >= 1)
  {
    v8 = *a3;
    v10 = a3[1];
    v12 = a3[2];
    v14 = *(a3 + 6);
    result = swift_getAtKeyPath();
    v5 = round(v6 / v6 * 100.0);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        return v5;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  return 0;
}

BOOL _s17IndexingAnalytics9ItemRatesV2eeoiySbAC_ACtFZ_0(int64x2_t *a1, int64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))) & 1) != 0 && a1[2].i64[0] == a2[2].i64[0])
  {
    return a1[2].i64[1] == a2[2].i64[1];
  }

  return result;
}

unint64_t sub_1C644A850()
{
  result = qword_1EC1C4710;
  if (!qword_1EC1C4710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4710);
  }

  return result;
}

uint64_t sub_1C644A8A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C644A8C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t Event.Value.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    MEMORY[0x1C6958D60](1);

    return sub_1C645C8E4();
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    return MEMORY[0x1C6958D60](v1);
  }
}

uint64_t Event.Value.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C645CFE4();
  if (v3 == 1)
  {
    MEMORY[0x1C6958D60](1);
    sub_1C645C8E4();
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    MEMORY[0x1C6958D60](v1);
  }

  return sub_1C645D024();
}

uint64_t sub_1C644AA20()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C645CFE4();
  if (v3 == 1)
  {
    MEMORY[0x1C6958D60](1);
    sub_1C645C8E4();
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    MEMORY[0x1C6958D60](v1);
  }

  return sub_1C645D024();
}

uint64_t sub_1C644AAA8()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    MEMORY[0x1C6958D60](1);

    return sub_1C645C8E4();
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    return MEMORY[0x1C6958D60](v1);
  }
}

uint64_t sub_1C644AB30()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C645CFE4();
  if (v3 == 1)
  {
    MEMORY[0x1C6958D60](1);
    sub_1C645C8E4();
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    MEMORY[0x1C6958D60](v1);
  }

  return sub_1C645D024();
}

uint64_t Event.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Event.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Event.data.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

IndexingAnalytics::Event __swiftcall Event.init(name:data:)(Swift::String name, Swift::OpaquePointer data)
{
  *v2 = name;
  *(v2 + 16) = data;
  result.name = name;
  result.data = data;
  return result;
}

uint64_t static Event.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C645CF24() & 1) == 0)
  {
    return 0;
  }

  return sub_1C644AD14(v2, v3);
}

uint64_t sub_1C644AD14(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v33 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v32 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v9 = (v7 - 1) & v7;
LABEL_13:
    v12 = v8 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v3 + 56) + 24 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);

    sub_1C644DB9C(v17, v18, v19);
    v20 = v14 == 0;
    if (!v14)
    {
      return v20;
    }

    v34 = v9;
    v21 = v3;
    v22 = sub_1C63FDE68(v15, v14);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_30;
    }

    v25 = *(a2 + 56) + 24 * v22;
    v27 = *v25;
    v26 = *(v25 + 8);
    if (*(v25 + 16) == 1)
    {
      if ((v19 & 1) == 0)
      {
        v31 = *(v25 + 8);

        sub_1C644DBAC(v27, v31, 1);
        v19 = 0;
        goto LABEL_30;
      }

      v3 = v21;
      if (v27 == v17 && v26 == v18)
      {

        sub_1C644DBAC(v17, v18, 1);
        result = sub_1C644DBAC(v17, v18, 1);
        v7 = v34;
      }

      else
      {
        v29 = *(v25 + 8);
        v30 = sub_1C645CF24();

        sub_1C644DBAC(v27, v29, 1);
        result = sub_1C644DBAC(v17, v18, 1);
        v7 = v34;
        if ((v30 & 1) == 0)
        {
          return v20;
        }
      }
    }

    else
    {
      sub_1C644DBAC(v27, v26, 0);
      if (v19)
      {
        v19 = 1;
LABEL_30:
        sub_1C644DBAC(v17, v18, v19);
        return 0;
      }

      v3 = v21;
      result = sub_1C644DBAC(v17, v18, 0);
      v7 = v34;
      if (v27 != v17)
      {
        return v20;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v32)
    {
      return 1;
    }

    v11 = *(v33 + 8 * v4);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t Event.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1C645C8E4();

  return sub_1C644D584(a1, v5);
}

uint64_t Event.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645CFE4();
  sub_1C645C8E4();
  sub_1C644D584(v5, v3);
  return sub_1C645D024();
}

uint64_t sub_1C644B044()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645CFE4();
  sub_1C645C8E4();
  sub_1C644D584(v5, v3);
  return sub_1C645D024();
}

uint64_t sub_1C644B0A8(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1C645C8E4();

  return sub_1C644D584(a1, v5);
}

uint64_t sub_1C644B0EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645CFE4();
  sub_1C645C8E4();
  sub_1C644D584(v5, v3);
  return sub_1C645D024();
}

uint64_t sub_1C644B14C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C645CF24() & 1) == 0)
  {
    return 0;
  }

  return sub_1C644AD14(v2, v3);
}

void *sub_1C644B1C0()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C3DF0, &qword_1C64725F0);
  result = sub_1C645CE04();
  v3 = result;
  v4 = 0;
  v5 = v1 + 64;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v1 + 64);
  v9 = (v6 + 63) >> 6;
  v26 = v1;
  v27 = (result + 8);
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(v1 + 48) + 16 * v13);
      v15 = v14[1];
      v28 = *v14;
      v16 = *(v1 + 56) + 24 * v13;
      v17 = *v16;
      if (*(v16 + 16) == 1)
      {
        v18 = *(v16 + 8);

        sub_1C644DB9C(v17, v18, 1);
        v19 = sub_1C645C844();
        v20 = v18;
        v1 = v26;
        result = sub_1C644DBAC(v17, v20, 1);
      }

      else
      {
        v21 = objc_allocWithZone(MEMORY[0x1E696AD98]);

        result = [v21 initWithInteger_];
        v19 = result;
      }

      *&v27[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
      v22 = (v3[6] + 16 * v13);
      *v22 = v28;
      v22[1] = v15;
      *(v3[7] + 8 * v13) = v19;
      v23 = v3[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v3[2] = v25;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return v3;
      }

      v12 = *(v5 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void static Event.send(_:)(uint64_t *a1)
{
  v1 = *a1;
  *v3 = *(a1 + 1);
  v2 = sub_1C645C844();
  sub_1C644B1C0();
  sub_1C644D8A4();
  v4 = sub_1C645C7D4();

  AnalyticsSendEvent();
}

char *Event.debugDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v7[0] = sub_1C644B574(*(v0 + 16));

  sub_1C644C9A8(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C3FB0, &unk_1C6473850);
  sub_1C6431A68();
  v3 = sub_1C645C824();
  v5 = v4;

  v7[0] = v2;
  v7[1] = v1;

  MEMORY[0x1C69586A0](10, 0xE100000000000000);

  MEMORY[0x1C69586A0](v3, v5);

  return v7[0];
}

uint64_t sub_1C644B574(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v39 = MEMORY[0x1E69E7CC0];
  sub_1C6440AD0(0, v1, 0);
  v2 = v39;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_1C645CC34();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v32 = v3 + 72;
  v33 = v1;
  v34 = v9;
  v35 = v3 + 64;
  v36 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v37 = v8;
    v38 = v2;
    v12 = *(v3 + 56);
    v13 = (*(v3 + 48) + 16 * v7);
    v15 = *v13;
    v14 = v13[1];
    v16 = v12 + 24 * v7;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    swift_bridgeObjectRetain_n();
    sub_1C644DB9C(v18, v17, v19);
    sub_1C644DB9C(v18, v17, v19);

    sub_1C644DBAC(v18, v17, v19);
    MEMORY[0x1C69586A0](v15, v14);
    MEMORY[0x1C69586A0](8250, 0xE200000000000000);
    sub_1C644DB9C(v18, v17, v19);
    v20 = sub_1C645C894();
    MEMORY[0x1C69586A0](v20);

    v21 = v18;
    v2 = v38;
    result = sub_1C644DBAC(v21, v17, v19);
    v23 = *(v38 + 16);
    v22 = *(v38 + 24);
    if (v23 >= v22 >> 1)
    {
      result = sub_1C6440AD0((v22 > 1), v23 + 1, 1);
      v2 = v38;
    }

    *(v2 + 16) = v23 + 1;
    v24 = v2 + 16 * v23;
    *(v24 + 32) = 8237;
    *(v24 + 40) = 0xE200000000000000;
    v3 = v36;
    v10 = 1 << *(v36 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = v35;
    v25 = *(v35 + 8 * v11);
    if ((v25 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v34;
    if (v34 != *(v36 + 36))
    {
      goto LABEL_26;
    }

    v26 = v25 & (-2 << (v7 & 0x3F));
    if (v26)
    {
      v10 = __clz(__rbit64(v26)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v11 << 6;
      v28 = v11 + 1;
      v29 = (v32 + 8 * v11);
      while (v28 < (v10 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_1C644DBBC(v7, v34, 0);
          v10 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_1C644DBBC(v7, v34, 0);
    }

LABEL_4:
    v8 = v37 + 1;
    v7 = v10;
    if (v37 + 1 == v33)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t Event.Value.debugDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    v3 = *v0;

    return v3;
  }

  else
  {
    v5 = *v0;
    return sub_1C645CF14();
  }
}

uint64_t sub_1C644B8FC()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    v3 = *v0;

    return v3;
  }

  else
  {
    v5 = *v0;
    return sub_1C645CF14();
  }
}

uint64_t static Event.daily(itemCounts:batchCounts:)@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X1>, void *a3@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v17 = *a1;
  v18 = a1[1];
  v32.donationsIdentified = *a1;
  v32.donationsLost = v18;
  v32.donationsAttempted = v4;
  v32.donationsSuccessful = v3;
  v21 = v6;
  v22 = v5;
  v32.retriesAttempted = v6;
  v32.retriesSuccessful = v5;
  v31 = v7;
  v32.donationsEvictedFromQueue = v7;
  ItemRates.init(_:)(&v33, &v32);
  donationRetryRate = v33.donationRetryRate;
  retrySuccessRate = v33.retrySuccessRate;
  donationFailureRate = v33.donationFailureRate;
  donationLossRate = v33.donationLossRate;
  donationSuccessRate = v33.donationSuccessRate;
  donationQueueEvictionRate = v33.donationQueueEvictionRate;
  v33.donationRetryRate = v8;
  v33.retrySuccessRate = v9;
  v33.donationSuccessRate = v10;
  v33.donationFailureRate = v11;
  v33.donationLossRate = v12;
  BatchRates.init(_:)(&v32, &v33);
  donationsLost = v32.donationsLost;
  donationsAttempted = v32.donationsAttempted;
  donationsSuccessful = v32.donationsSuccessful;
  donationsIdentified = v32.donationsIdentified;
  retriesAttempted = v32.retriesAttempted;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4718, &qword_1C6475338);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C6475310;
  *(result + 32) = 0xD000000000000015;
  *(result + 40) = 0x80000001C64EB3D0;
  *(result + 48) = v8;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0xD000000000000011;
  *(result + 80) = 0x80000001C64EB3F0;
  *(result + 88) = v11;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0xD000000000000012;
  *(result + 120) = 0x80000001C64EB410;
  if (__OFADD__(v9, v11))
  {
    __break(1u);
  }

  else
  {
    *(result + 128) = v9 + v11;
    *(result + 136) = 0;
    *(result + 144) = 0;
    *(result + 152) = 0xD000000000000010;
    *(result + 160) = 0x80000001C64EB430;
    *(result + 168) = v9;
    *(result + 176) = 0;
    *(result + 184) = 0;
    strcpy((result + 192), "batchesRuntime");
    *(result + 207) = -18;
    *(result + 208) = v12;
    *(result + 216) = 0;
    *(result + 224) = 0;
    *(result + 232) = 0xD000000000000016;
    *(result + 240) = 0x80000001C64EB450;
    *(result + 248) = v10;
    *(result + 256) = 0;
    *(result + 264) = 0;
    *(result + 272) = 0xD000000000000013;
    *(result + 280) = 0x80000001C64EB470;
    *(result + 288) = donationsAttempted;
    *(result + 296) = 0;
    *(result + 304) = 0;
    strcpy((result + 312), "batchErrorRate");
    *(result + 327) = -18;
    *(result + 328) = retriesAttempted;
    *(result + 336) = 0;
    *(result + 344) = 0;
    *(result + 352) = 0xD000000000000010;
    *(result + 360) = 0x80000001C64EB490;
    *(result + 368) = donationsLost;
    *(result + 376) = 0;
    *(result + 384) = 0;
    strcpy((result + 392), "batchLossRate");
    *(result + 406) = -4864;
    *(result + 408) = donationsSuccessful;
    *(result + 416) = 0;
    *(result + 424) = 0;
    *(result + 432) = 0xD000000000000010;
    *(result + 440) = 0x80000001C64EB4B0;
    *(result + 448) = donationsIdentified;
    *(result + 456) = 0;
    *(result + 464) = 0;
    *(result + 472) = 0xD000000000000017;
    *(result + 480) = 0x80000001C64EB4D0;
    *(result + 488) = v4;
    *(result + 496) = 0;
    *(result + 504) = 0;
    *(result + 512) = 0xD00000000000001ELL;
    *(result + 520) = 0x80000001C64EB4F0;
    *(result + 528) = v31;
    *(result + 536) = 0;
    *(result + 544) = 0;
    *(result + 552) = 0xD000000000000014;
    *(result + 560) = 0x80000001C64EB510;
    if (!__OFSUB__(v4, v3))
    {
      *(result + 568) = v4 - v3;
      *(result + 576) = 0;
      *(result + 584) = 0;
      *(result + 592) = 0xD000000000000018;
      *(result + 600) = 0x80000001C64EB530;
      *(result + 608) = v17;
      *(result + 616) = 0;
      *(result + 624) = 0;
      *(result + 632) = 0xD000000000000012;
      *(result + 640) = 0x80000001C64EB550;
      *(result + 648) = v18;
      *(result + 656) = 0;
      *(result + 664) = 0;
      *(result + 672) = 0xD000000000000018;
      *(result + 680) = 0x80000001C64EB570;
      *(result + 688) = v3;
      *(result + 696) = 0;
      *(result + 704) = 0;
      *(result + 712) = 0xD000000000000015;
      *(result + 720) = 0x80000001C64EB590;
      *(result + 728) = v21;
      *(result + 736) = 0;
      *(result + 744) = 0;
      *(result + 752) = 0xD000000000000016;
      *(result + 760) = 0x80000001C64EB5B0;
      *(result + 768) = v22;
      *(result + 776) = 0;
      *(result + 784) = 0;
      *(result + 792) = 0xD000000000000013;
      *(result + 800) = 0x80000001C64EB5D0;
      *(result + 808) = donationFailureRate;
      *(result + 816) = 0;
      *(result + 824) = 0;
      *(result + 832) = 0xD000000000000010;
      *(result + 840) = 0x80000001C64EB5F0;
      *(result + 848) = donationLossRate;
      *(result + 856) = 0;
      *(result + 864) = 0;
      *(result + 872) = 0xD000000000000013;
      *(result + 880) = 0x80000001C64EB610;
      *(result + 888) = donationSuccessRate;
      *(result + 896) = 0;
      *(result + 904) = 0;
      *(result + 912) = 0xD000000000000019;
      *(result + 920) = 0x80000001C64EB630;
      *(result + 928) = donationQueueEvictionRate;
      *(result + 936) = 0;
      *(result + 944) = 0;
      *(result + 952) = 0xD000000000000011;
      *(result + 960) = 0x80000001C64EB650;
      *(result + 968) = donationRetryRate;
      *(result + 976) = 0;
      *(result + 984) = 0;
      *(result + 992) = 0xD000000000000010;
      *(result + 1000) = 0x80000001C64EB670;
      *(result + 1008) = retrySuccessRate;
      *(result + 1016) = 0;
      *(result + 1024) = 0;
      v16 = sub_1C644D8F0(result);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4720, &qword_1C6475340);
      swift_arrayDestroy();
      result = swift_deallocClassInstance();
      *a3 = 0xD000000000000024;
      a3[1] = 0x80000001C64EB3A0;
      a3[2] = v16;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Event.weekly(itemCounts:batchCounts:itemTimes:)@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v34 = *a3;
  v35 = a3[1];
  v37 = a3[2];
  v53 = a3[3];
  v55 = a3[4];
  v57 = a3[5];
  v27 = a3[6];
  v32 = a3[7];
  v33 = a3[8];
  v49 = a3[9];
  v50 = a3[10];
  v51 = a3[11];
  v26 = a3[12];
  v25 = a3[13];
  v24 = a3[14];
  v46 = a3[15];
  v47 = a3[16];
  v48 = a3[17];
  v40 = a3[18];
  v41 = a3[19];
  v42 = a3[20];
  v43 = a3[21];
  v44 = a3[22];
  v45 = a3[23];
  v36 = a3[24];
  v38 = a3[25];
  v39 = a3[26];
  v52 = a3[27];
  v54 = a3[28];
  v56 = a3[29];
  v30 = a1[1];
  v31 = *a1;
  v63.donationsIdentified = *a1;
  v63.donationsLost = v30;
  v63.donationsAttempted = v5;
  v63.donationsSuccessful = v4;
  v28 = v7;
  v29 = v6;
  v63.retriesAttempted = v6;
  v63.retriesSuccessful = v7;
  v62 = v8;
  v63.donationsEvictedFromQueue = v8;
  ItemRates.init(_:)(&v64, &v63);
  retrySuccessRate = v64.retrySuccessRate;
  donationRetryRate = v64.donationRetryRate;
  donationLossRate = v64.donationLossRate;
  donationFailureRate = v64.donationFailureRate;
  donationQueueEvictionRate = v64.donationQueueEvictionRate;
  donationSuccessRate = v64.donationSuccessRate;
  v64.donationRetryRate = v9;
  v64.retrySuccessRate = v10;
  v64.donationSuccessRate = v11;
  v64.donationFailureRate = v12;
  v64.donationLossRate = v13;
  BatchRates.init(_:)(&v63, &v64);
  donationsLost = v63.donationsLost;
  donationsAttempted = v63.donationsAttempted;
  donationsSuccessful = v63.donationsSuccessful;
  donationsIdentified = v63.donationsIdentified;
  retriesAttempted = v63.retriesAttempted;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4718, &qword_1C6475338);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C6475320;
  *(result + 32) = 0xD000000000000015;
  *(result + 40) = 0x80000001C64EB3D0;
  *(result + 48) = v9;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0xD000000000000011;
  *(result + 80) = 0x80000001C64EB3F0;
  *(result + 88) = v12;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0xD000000000000012;
  *(result + 120) = 0x80000001C64EB410;
  if (__OFADD__(v10, v12))
  {
    __break(1u);
  }

  else
  {
    *(result + 128) = v10 + v12;
    *(result + 136) = 0;
    *(result + 144) = 0;
    *(result + 152) = 0xD000000000000010;
    *(result + 160) = 0x80000001C64EB430;
    *(result + 168) = v10;
    *(result + 176) = 0;
    *(result + 184) = 0;
    strcpy((result + 192), "batchesRuntime");
    *(result + 207) = -18;
    *(result + 208) = v13;
    *(result + 216) = 0;
    *(result + 224) = 0;
    *(result + 232) = 0xD000000000000016;
    *(result + 240) = 0x80000001C64EB450;
    *(result + 248) = v11;
    *(result + 256) = 0;
    *(result + 264) = 0;
    *(result + 272) = 0xD000000000000013;
    *(result + 280) = 0x80000001C64EB470;
    *(result + 288) = donationsAttempted;
    *(result + 296) = 0;
    *(result + 304) = 0;
    strcpy((result + 312), "batchErrorRate");
    *(result + 327) = -18;
    *(result + 328) = retriesAttempted;
    *(result + 336) = 0;
    *(result + 344) = 0;
    *(result + 352) = 0xD000000000000010;
    *(result + 360) = 0x80000001C64EB490;
    *(result + 368) = donationsLost;
    *(result + 376) = 0;
    *(result + 384) = 0;
    strcpy((result + 392), "batchLossRate");
    *(result + 406) = -4864;
    *(result + 408) = donationsSuccessful;
    *(result + 416) = 0;
    *(result + 424) = 0;
    *(result + 432) = 0xD000000000000010;
    *(result + 440) = 0x80000001C64EB4B0;
    *(result + 448) = donationsIdentified;
    *(result + 456) = 0;
    *(result + 464) = 0;
    *(result + 472) = 0xD000000000000017;
    *(result + 480) = 0x80000001C64EB4D0;
    *(result + 488) = v5;
    *(result + 496) = 0;
    *(result + 504) = 0;
    *(result + 512) = 0xD00000000000001ELL;
    *(result + 520) = 0x80000001C64EB4F0;
    *(result + 528) = v62;
    *(result + 536) = 0;
    *(result + 544) = 0;
    *(result + 552) = 0xD000000000000014;
    *(result + 560) = 0x80000001C64EB510;
    if (!__OFSUB__(v5, v4))
    {
      *(result + 568) = v5 - v4;
      *(result + 608) = v31;
      *(result + 648) = v30;
      *(result + 688) = v4;
      *(result + 728) = v29;
      *(result + 768) = v28;
      *(result + 808) = donationFailureRate;
      *(result + 848) = donationLossRate;
      *(result + 888) = donationSuccessRate;
      *(result + 928) = donationQueueEvictionRate;
      *(result + 968) = donationRetryRate;
      *(result + 1008) = retrySuccessRate;
      *(result + 1048) = v26;
      *(result + 1088) = v25;
      *(result + 1128) = v24;
      *(result + 1168) = v27;
      *(result + 600) = 0x80000001C64EB530;
      *(result + 632) = 0xD000000000000012;
      *(result + 640) = 0x80000001C64EB550;
      *(result + 680) = 0x80000001C64EB570;
      *(result + 720) = 0x80000001C64EB590;
      *(result + 760) = 0x80000001C64EB5B0;
      *(result + 800) = 0x80000001C64EB5D0;
      *(result + 840) = 0x80000001C64EB5F0;
      *(result + 880) = 0x80000001C64EB610;
      *(result + 920) = 0x80000001C64EB630;
      *(result + 960) = 0x80000001C64EB650;
      *(result + 1000) = 0x80000001C64EB670;
      *(result + 1040) = 0x80000001C64EB6C0;
      *(result + 1080) = 0x80000001C64EB6E0;
      *(result + 1120) = 0x80000001C64EB700;
      *(result + 1160) = 0x80000001C64EB720;
      *(result + 1200) = 0x80000001C64EB740;
      *(result + 1208) = v32;
      *(result + 1240) = 0x80000001C64EB760;
      *(result + 576) = 0;
      *(result + 584) = 0;
      *(result + 1248) = v33;
      *(result + 1280) = 0x80000001C64EB780;
      *(result + 592) = 0xD000000000000018;
      *(result + 616) = 0;
      *(result + 624) = 0;
      *(result + 656) = 0;
      *(result + 664) = 0;
      *(result + 672) = 0xD000000000000018;
      *(result + 696) = 0;
      *(result + 704) = 0;
      *(result + 1288) = v34;
      *(result + 1320) = 0x80000001C64EB7A0;
      *(result + 712) = 0xD000000000000015;
      *(result + 736) = 0;
      *(result + 744) = 0;
      *(result + 752) = 0xD000000000000016;
      *(result + 776) = 0;
      *(result + 784) = 0;
      *(result + 792) = 0xD000000000000013;
      *(result + 816) = 0;
      *(result + 824) = 0;
      *(result + 832) = 0xD000000000000010;
      *(result + 856) = 0;
      *(result + 864) = 0;
      *(result + 872) = 0xD000000000000013;
      *(result + 896) = 0;
      *(result + 904) = 0;
      *(result + 1328) = v35;
      *(result + 1360) = 0x80000001C64EB7C0;
      *(result + 912) = 0xD000000000000019;
      *(result + 936) = 0;
      *(result + 944) = 0;
      *(result + 1368) = v37;
      *(result + 1400) = 0x80000001C64EB7E0;
      *(result + 952) = 0xD000000000000011;
      *(result + 976) = 0;
      *(result + 984) = 0;
      *(result + 992) = 0xD000000000000010;
      *(result + 1016) = 0;
      *(result + 1024) = 0;
      *(result + 1408) = v36;
      *(result + 1032) = 0xD00000000000001ALL;
      *(result + 1056) = 0;
      *(result + 1064) = 0;
      *(result + 1152) = 0xD000000000000017;
      *(result + 1432) = 0xD000000000000017;
      *(result + 1440) = 0x80000001C64EB800;
      *(result + 1072) = 0xD00000000000001CLL;
      *(result + 1096) = 0;
      *(result + 1104) = 0;
      *(result + 1112) = 0xD000000000000019;
      *(result + 1136) = 0;
      *(result + 1144) = 0;
      *(result + 1176) = 0;
      *(result + 1184) = 0;
      *(result + 1192) = 0xD000000000000019;
      *(result + 1216) = 0;
      *(result + 1224) = 0;
      *(result + 1232) = 0xD000000000000016;
      *(result + 1256) = 0;
      *(result + 1264) = 0;
      *(result + 1272) = 0xD00000000000001ALL;
      *(result + 1296) = 0;
      *(result + 1304) = 0;
      *(result + 1312) = 0xD00000000000001CLL;
      *(result + 1336) = 0;
      *(result + 1344) = 0;
      *(result + 1352) = 0xD000000000000019;
      *(result + 1376) = 0;
      *(result + 1384) = 0;
      *(result + 1392) = 0xD000000000000015;
      *(result + 1416) = 0;
      *(result + 1424) = 0;
      *(result + 1448) = v38;
      *(result + 1456) = 0;
      *(result + 1464) = 0;
      *(result + 1472) = 0xD000000000000014;
      *(result + 1480) = 0x80000001C64EB820;
      *(result + 1488) = v39;
      *(result + 1496) = 0;
      *(result + 1504) = 0;
      *(result + 1512) = 0xD000000000000011;
      *(result + 1520) = 0x80000001C64EB840;
      *(result + 1528) = v40;
      *(result + 1536) = 0;
      *(result + 1544) = 0;
      *(result + 1552) = 0xD000000000000013;
      *(result + 1560) = 0x80000001C64EB860;
      *(result + 1568) = v41;
      *(result + 1576) = 0;
      *(result + 1584) = 0;
      *(result + 1592) = 0xD000000000000010;
      *(result + 1600) = 0x80000001C64EB880;
      *(result + 1608) = v42;
      *(result + 1616) = 0;
      *(result + 1624) = 0;
      *(result + 1632) = 0xD000000000000016;
      *(result + 1640) = 0x80000001C64EB8A0;
      *(result + 1648) = v43;
      *(result + 1656) = 0;
      *(result + 1664) = 0;
      *(result + 1672) = 0xD000000000000018;
      *(result + 1680) = 0x80000001C64EB8C0;
      *(result + 1688) = v44;
      *(result + 1696) = 0;
      *(result + 1704) = 0;
      *(result + 1712) = 0xD000000000000015;
      *(result + 1720) = 0x80000001C64EB8E0;
      *(result + 1728) = v45;
      *(result + 1736) = 0;
      *(result + 1744) = 0;
      *(result + 1752) = 0xD00000000000001FLL;
      *(result + 1760) = 0x80000001C64EB900;
      *(result + 1768) = v46;
      *(result + 1776) = 0;
      *(result + 1784) = 0;
      *(result + 1792) = 0xD000000000000021;
      *(result + 1800) = 0x80000001C64EB920;
      *(result + 1808) = v47;
      *(result + 1816) = 0;
      *(result + 1824) = 0;
      *(result + 1832) = 0xD00000000000001ELL;
      *(result + 1840) = 0x80000001C64EB950;
      *(result + 1848) = v48;
      *(result + 1856) = 0;
      *(result + 1864) = 0;
      *(result + 1872) = 0xD00000000000001CLL;
      *(result + 1880) = 0x80000001C64EB970;
      *(result + 1888) = v49;
      *(result + 1896) = 0;
      *(result + 1904) = 0;
      *(result + 1912) = 0xD00000000000001ELL;
      *(result + 1920) = 0x80000001C64EB990;
      *(result + 1928) = v50;
      *(result + 1936) = 0;
      *(result + 1944) = 0;
      *(result + 1952) = 0xD00000000000001BLL;
      *(result + 1960) = 0x80000001C64EB9B0;
      *(result + 1968) = v51;
      *(result + 1976) = 0;
      *(result + 1984) = 0;
      *(result + 1992) = 0xD00000000000001FLL;
      *(result + 2000) = 0x80000001C64EB9D0;
      *(result + 2008) = v53;
      *(result + 2016) = 0;
      *(result + 2024) = 0;
      *(result + 2032) = 0xD000000000000021;
      *(result + 2040) = 0x80000001C64EB9F0;
      *(result + 2048) = v55;
      *(result + 2056) = 0;
      *(result + 2064) = 0;
      *(result + 2072) = 0xD00000000000001ELL;
      *(result + 2080) = 0x80000001C64EBA20;
      *(result + 2088) = v57;
      *(result + 2096) = 0;
      *(result + 2104) = 0;
      *(result + 2112) = 0xD00000000000001ALL;
      *(result + 2120) = 0x80000001C64EBA40;
      *(result + 2128) = v52;
      *(result + 2136) = 0;
      *(result + 2144) = 0;
      *(result + 2152) = 0xD00000000000001CLL;
      *(result + 2160) = 0x80000001C64EBA60;
      *(result + 2168) = v54;
      *(result + 2176) = 0;
      *(result + 2184) = 0;
      *(result + 2192) = 0xD000000000000019;
      *(result + 2200) = 0x80000001C64EBA80;
      *(result + 2208) = v56;
      *(result + 2216) = 0;
      *(result + 2224) = 0;
      v17 = sub_1C644D8F0(result);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4720, &qword_1C6475340);
      swift_arrayDestroy();
      result = swift_deallocClassInstance();
      *a4 = 0xD000000000000025;
      a4[1] = 0x80000001C64EB690;
      a4[2] = v17;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C644C9A8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C644D72C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1C644CA14(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1C644CA14(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C645CF04();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1C645CA34();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C644CBDC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C644CB0C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C644CB0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1C645CF24(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C644CBDC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1C644D46C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1C644D1B8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1C645CF24();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1C645CF24();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C644D480(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1C644D480((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1C644D1B8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C644D46C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1C644D3E0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1C645CF24(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1C644D1B8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1C645CF24() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1C645CF24() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1C644D3E0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C644D46C(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1C644D480(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4740, &qword_1C6475528);
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

uint64_t sub_1C644D584(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v20 = 0;
  v9 = 0;
  while (v6)
  {
LABEL_11:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(a2 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(a2 + 56) + 24 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);

    sub_1C644DB9C(v16, v17, v18);
    if (!v13)
    {
LABEL_14:

      return MEMORY[0x1C6958D60](v20);
    }

    v23 = a1[2];
    v24 = a1[3];
    v25 = *(a1 + 8);
    v21 = *a1;
    v22 = a1[1];
    sub_1C645C8E4();

    if (v18)
    {
      MEMORY[0x1C6958D60](1);
      sub_1C645C8E4();
      sub_1C644DBAC(v16, v17, 1);
    }

    else
    {
      MEMORY[0x1C6958D60](0);
      MEMORY[0x1C6958D60](v16);
    }

    v6 &= v6 - 1;
    result = sub_1C645D024();
    v20 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      goto LABEL_14;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL _s17IndexingAnalytics5EventV5ValueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 != 1)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      sub_1C644DBAC(*a1, v3, 0);
      sub_1C644DBAC(v5, v6, 0);
      return v2 == v5;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    v12 = *(a1 + 8);

LABEL_11:
    sub_1C644DB9C(v5, v6, v7);
    sub_1C644DBAC(v2, v3, v4);
    sub_1C644DBAC(v5, v6, v7);
    return 0;
  }

  v8 = *a1;
  if (v2 == v5 && v3 == v6)
  {
    sub_1C644DB9C(v8, v3, 1);
    sub_1C644DB9C(v2, v3, 1);
    sub_1C644DBAC(v2, v3, 1);
    sub_1C644DBAC(v2, v3, 1);
    return 1;
  }

  else
  {
    v10 = sub_1C645CF24();
    sub_1C644DB9C(v5, v6, 1);
    sub_1C644DB9C(v2, v3, 1);
    sub_1C644DBAC(v2, v3, 1);
    sub_1C644DBAC(v5, v6, 1);
    return v10 & 1;
  }
}

unint64_t sub_1C644D8A4()
{
  result = qword_1EC1C3E28;
  if (!qword_1EC1C3E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1C3E28);
  }

  return result;
}

unint64_t sub_1C644D8F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4738, &qword_1C6475520);
    v3 = sub_1C645CE24();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_1C644DB9C(v7, v8, v9);
      result = sub_1C63FDE68(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C644DA18()
{
  result = qword_1EC1C4728;
  if (!qword_1EC1C4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4728);
  }

  return result;
}

unint64_t sub_1C644DA70()
{
  result = qword_1EC1C4730;
  if (!qword_1EC1C4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4730);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C644DAF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C644DB3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1C644DB9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C644DBAC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C644DBBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t ItemKind.hashValue.getter(unsigned __int8 a1)
{
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](a1);
  return sub_1C645D024();
}

unint64_t sub_1C644DC58()
{
  result = qword_1EC1C4748;
  if (!qword_1EC1C4748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4748);
  }

  return result;
}

unint64_t sub_1C644DCB0()
{
  result = qword_1EC1C4750;
  if (!qword_1EC1C4750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1C4758, &qword_1C6475598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4750);
  }

  return result;
}

void __checkOutScheduler_block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(*(*(a1 + 32) + 8) + 40);
  *&v4[12] = 2048;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, a2, a3, "Using existing scheduler %@ with count %lu", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void __checkOutScheduler_block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(*(*a1 + 8) + 40);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, a2, a3, "Created new scheduler %@ %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void _expandForCompoundPredicate_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _expandPredicate_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void cachedMetadataArgumentsAreValid_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void cachedMetadataArgumentsAreValid_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void and64_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "wrong number of arguments (%d) to and64", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x1EEDC70A0](aString);
  result.length = v2;
  result.location = v1;
  return result;
}