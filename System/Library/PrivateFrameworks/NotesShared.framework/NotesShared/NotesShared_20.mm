void __swiftcall ActivityEventParticipant.init(participant:)(NotesShared::ActivityEventParticipant_optional *__return_ptr retstr, CKShareParticipant participant)
{
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [(objc_class *)participant.super.isa userIdentity];
  v9 = [v8 userRecordID];

  if (!v9)
  {
LABEL_12:
    if (qword_280C242E0 != -1)
    {
      swift_once();
    }

    v18 = sub_2150A3F30();
    __swift_project_value_buffer(v18, qword_280C242E8);
    v19 = participant.super.isa;
    v20 = sub_2150A3F10();
    v21 = sub_2150A5550();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136315138;
      v24 = sub_2150A55F0();
      v26 = sub_214F7723C(v24, v25, &v33);

      *(v22 + 4) = v26;
      v27 = "Participant must have a user ID — returning nil {participantID: %s}";
LABEL_21:
      _os_log_impl(&dword_214D51000, v20, v21, v27, v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x216064AF0](v23, -1, -1);
      MEMORY[0x216064AF0](v22, -1, -1);

LABEL_23:
      retstr->value.recordName = 0u;
      retstr->value.mentionRecordName = 0u;
      return;
    }

LABEL_22:

    goto LABEL_23;
  }

  v10 = [v9 recordName];

  v11 = sub_2150A4AD0();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    goto LABEL_12;
  }

  if (v11 == sub_2150A4AD0() && v13 == v15)
  {

    goto LABEL_17;
  }

  v17 = sub_2150A6270();

  if (v17)
  {
LABEL_17:

    if (qword_280C242E0 != -1)
    {
      swift_once();
    }

    v28 = sub_2150A3F30();
    __swift_project_value_buffer(v28, qword_280C242E8);
    v19 = participant.super.isa;
    v20 = sub_2150A3F10();
    v21 = sub_2150A5550();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136315138;
      v29 = sub_2150A55F0();
      v31 = sub_214F7723C(v29, v30, &v33);

      *(v22 + 4) = v31;
      v27 = "Participant must not have the default current user ID — returning nil {participantID: %s}";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  sub_2150A3990();

  (*(v5 + 8))(v7, v4);

  retstr->value.recordName._countAndFlagsBits = v11;
  retstr->value.recordName._object = v13;
  retstr->value.mentionRecordName.value._countAndFlagsBits = 0;
  retstr->value.mentionRecordName.value._object = 0;
}

uint64_t sub_215063698()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_280C242E8);
  v1 = __swift_project_value_buffer(v0, qword_280C242E8);
  if (qword_280C24278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C24280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ActivityEventParticipant.recordName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActivityEventParticipant.recordName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ActivityEventParticipant.mentionRecordName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ActivityEventParticipant.mentionRecordName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_215063878()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x614E64726F636572;
  }
}

uint64_t sub_2150638BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E64726F636572 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_2150A6270() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002150E81A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2150A6270();

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

uint64_t sub_2150639A8(uint64_t a1)
{
  v2 = sub_2150645F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2150639E4(uint64_t a1)
{
  v2 = sub_2150645F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityEventParticipant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44970);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2150645F4();
  sub_2150A65B0();
  v12 = 0;
  v8 = v10[3];
  sub_2150A6060();
  if (!v8)
  {
    v11 = 1;
    sub_2150A6030();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ActivityEventParticipant.hashValue.getter()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t ActivityEventParticipant.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44980);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = sub_2150A3A00();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  sub_2150A3990();
  (*(v9 + 8))(v11, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2150645F4();
  sub_2150A6590();
  if (!v2)
  {
    v12 = v21;
    v23 = 0;
    v13 = sub_2150A5F80();
    v15 = v14;
    v20 = v13;

    v22 = 1;
    v17 = sub_2150A5F30();
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    *v12 = v20;
    v12[1] = v15;
    v12[2] = v17;
    v12[3] = v19;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

void __swiftcall ActivityEventParticipant.init(mentionAttachment:)(NotesShared::ActivityEventParticipant_optional *__return_ptr retstr, ICInlineAttachment *mentionAttachment)
{
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([(ICInlineAttachment *)mentionAttachment isMentionAttachment])
  {
    v8 = [(ICInlineAttachment *)mentionAttachment tokenContentIdentifier];
    if (v8)
    {
      v9 = v8;
      v10 = sub_2150A4AD0();
      v12 = v11;

      v13 = [(ICInlineAttachment *)mentionAttachment identifier];
      if (v13)
      {
        v14 = v13;
        v15 = sub_2150A4AD0();
        v17 = v16;

        _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
        sub_2150A3990();

        (*(v5 + 8))(v7, v4);

        retstr->value.recordName._countAndFlagsBits = v10;
        retstr->value.recordName._object = v12;
        retstr->value.mentionRecordName.value._countAndFlagsBits = v15;
        retstr->value.mentionRecordName.value._object = v17;
        return;
      }
    }
  }

  if (qword_280C242E0 != -1)
  {
    swift_once();
  }

  v18 = sub_2150A3F30();
  __swift_project_value_buffer(v18, qword_280C242E8);
  v19 = mentionAttachment;
  v20 = sub_2150A3F10();
  v21 = sub_2150A5550();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = [(ICInlineAttachment *)v19 objectID];
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&dword_214D51000, v20, v21, "Inline attachment is not a valid mention — returning nil {objectID: %@}", v22, 0xCu);
    sub_214FA9D98(v23);
    MEMORY[0x216064AF0](v23, -1, -1);
    MEMORY[0x216064AF0](v22, -1, -1);
    v25 = v20;
  }

  else
  {
    v25 = v19;
    v19 = v20;
  }

  retstr->value.recordName = 0u;
  retstr->value.mentionRecordName = 0u;
}

uint64_t ActivityEventParticipant.Names.hash(into:)()
{
  v1 = *(v0 + 8);
  switch(v1)
  {
    case 0:
      v2 = 0;
      return MEMORY[0x216063080](v2);
    case 1:
      v2 = 1;
      return MEMORY[0x216063080](v2);
    case 2:
      v2 = 3;
      return MEMORY[0x216063080](v2);
  }

  MEMORY[0x216063080](2);

  return sub_2150A4BB0();
}

uint64_t ActivityEventParticipant.Names.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_2150A64B0();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x216063080](2);
        sub_2150A4BB0();
        return sub_2150A64E0();
      }

      v2 = 3;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x216063080](v2);
  return sub_2150A64E0();
}

uint64_t sub_2150642B4()
{
  v1 = *(v0 + 8);
  sub_2150A64B0();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x216063080](2);
        sub_2150A4BB0();
        return sub_2150A64E0();
      }

      v2 = 3;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x216063080](v2);
  return sub_2150A64E0();
}

uint64_t sub_215064344()
{
  v1 = *(v0 + 8);
  switch(v1)
  {
    case 0:
      v2 = 0;
      return MEMORY[0x216063080](v2);
    case 1:
      v2 = 1;
      return MEMORY[0x216063080](v2);
    case 2:
      v2 = 3;
      return MEMORY[0x216063080](v2);
  }

  MEMORY[0x216063080](2);

  return sub_2150A4BB0();
}

uint64_t sub_2150643DC()
{
  v1 = *(v0 + 8);
  sub_2150A64B0();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x216063080](2);
        sub_2150A4BB0();
        return sub_2150A64E0();
      }

      v2 = 3;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x216063080](v2);
  return sub_2150A64E0();
}

uint64_t _s11NotesShared24ActivityEventParticipantV5NamesO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (!v5)
      {
        sub_214F736A0(*a1, 0);
        v6 = v4;
        v7 = 0;
        goto LABEL_15;
      }

      goto LABEL_11;
    case 1uLL:
      if (v5 == 1)
      {
        v8 = 1;
        sub_214F736A0(*a1, 1uLL);
        sub_214F736A0(v4, 1uLL);
        return v8;
      }

      goto LABEL_11;
    case 2uLL:
      if (v5 == 2)
      {
        sub_214F736A0(*a1, 2uLL);
        v6 = v4;
        v7 = 2;
LABEL_15:
        sub_214F736A0(v6, v7);
        return 1;
      }

      goto LABEL_11;
  }

  if (v5 < 3)
  {
LABEL_11:
    sub_2150648F4(*a2, *(a2 + 8));
    sub_2150648F4(v2, v3);
    sub_214F736A0(v2, v3);
    sub_214F736A0(v4, v5);
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_2150648F4(*a1, v3);
    sub_2150648F4(v2, v3);
    sub_214F736A0(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_15;
  }

  v10 = sub_2150A6270();
  sub_2150648F4(v4, v5);
  sub_2150648F4(v2, v3);
  sub_214F736A0(v2, v3);
  sub_214F736A0(v4, v5);
  return v10 & 1;
}

unint64_t sub_2150645F4()
{
  result = qword_27CA44978;
  if (!qword_27CA44978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44978);
  }

  return result;
}

unint64_t sub_21506464C()
{
  result = qword_280C23840;
  if (!qword_280C23840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C23840);
  }

  return result;
}

unint64_t sub_2150646A4()
{
  result = qword_27CA44988;
  if (!qword_27CA44988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44988);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11NotesShared24ActivityEventParticipantV5NamesO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_215064720(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21506477C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_2150647F0()
{
  result = qword_27CA44990;
  if (!qword_27CA44990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44990);
  }

  return result;
}

unint64_t sub_215064848()
{
  result = qword_27CA44998;
  if (!qword_27CA44998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44998);
  }

  return result;
}

unint64_t sub_2150648A0()
{
  result = qword_27CA449A0;
  if (!qword_27CA449A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA449A0);
  }

  return result;
}

uint64_t sub_2150648F4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t Data.init(hexString:)()
{
  v0 = sub_2150A4A90();

  v1 = [objc_opt_self() ic:v0 dataFromHexString:?];

  v2 = sub_2150A37B0();
  return v2;
}

Swift::Bool __swiftcall CharacterSet.contains(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = sub_2150A3050();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, v5);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  (*(v6 + 32))(v9 + v8, &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v5);
  LOBYTE(object) = sub_215064BD4(countAndFlagsBits, object, sub_215064AEC);

  return object & 1;
}

void sub_215064B6C(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  sub_2150A3020();
}

uint64_t sub_215064BD4(uint64_t a1, unint64_t a2, unsigned int (*a3)(uint64_t))
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v8 = 0;
    v9 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v13 = sub_2150A5B10();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = v9;
          v12 = v18 + v8;
        }

        else
        {
          v11 = v10;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_2150A5C80();
          }

          v12 = (v11 + v8);
        }

        v13 = *v12;
        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v17 = (__clz(v13 ^ 0xFF) - 24);
        if (v17 > 2)
        {
          if (v17 == 3)
          {
            v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
            v15 = 3;
          }

          else
          {
            v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
            v15 = 4;
          }

          goto LABEL_15;
        }

        if (v17 == 1)
        {
LABEL_14:
          v15 = 1;
        }

        else
        {
          v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
          v15 = 2;
        }
      }

LABEL_15:
      result = (v3 == 0) & a3(v13);
      if (result == 1)
      {
        v8 += v15;
        if (v8 < v4)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

uint64_t FallbackActivityEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3960();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FallbackActivityEvent.timestamp.setter(uint64_t a1)
{
  v3 = sub_2150A3960();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FallbackActivityEvent.object.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FallbackActivityEvent() + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t type metadata accessor for FallbackActivityEvent()
{
  result = qword_280C23AF8;
  if (!qword_280C23AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FallbackActivityEvent.object.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = v1 + *(type metadata accessor for FallbackActivityEvent() + 20);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t FallbackActivityEvent.participant.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FallbackActivityEvent() + 24));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

__n128 FallbackActivityEvent.participant.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = (v1 + *(type metadata accessor for FallbackActivityEvent() + 24));

  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u64[1] = v3;
  return result;
}

uint64_t FallbackActivityEvent.minimumSupportedNotesVersion.setter(uint64_t a1)
{
  result = type metadata accessor for FallbackActivityEvent();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t FallbackActivityEvent.typeName.getter()
{
  v1 = *(v0 + *(type metadata accessor for FallbackActivityEvent() + 32));

  return v1;
}

uint64_t FallbackActivityEvent.typeName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FallbackActivityEvent() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FallbackActivityEvent.localizedFallbackTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for FallbackActivityEvent() + 36));

  return v1;
}

uint64_t FallbackActivityEvent.localizedFallbackTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FallbackActivityEvent() + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 FallbackActivityEvent.init(timestamp:object:participant:minimumSupportedNotesVersion:typeName:localizedFallbackTitle:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v12 = *a2;
  v14 = *(a2 + 1);
  v13 = *(a2 + 2);
  v25 = *a3;
  v15 = a3[1].n128_u64[0];
  v16 = a3[1].n128_u64[1];
  _s10Foundation4DateV11NotesSharedE15defaultArgumentACvgZ_0();
  v17 = type metadata accessor for FallbackActivityEvent();
  v18 = v17[7];
  [objc_opt_self() currentNotesVersion];
  v19 = sub_2150A3960();
  (*(*(v19 - 8) + 40))(a9, a1, v19);
  v20 = a9 + v17[5];
  *v20 = v12;
  *(v20 + 8) = v14;
  *(v20 + 16) = v13;
  v21 = (a9 + v17[6]);
  result = v25;
  *v21 = v25;
  v21[1].n128_u64[0] = v15;
  v21[1].n128_u64[1] = v16;
  *(a9 + v18) = a4;
  v23 = (a9 + v17[8]);
  *v23 = a5;
  v23[1] = a6;
  v24 = (a9 + v17[9]);
  *v24 = a7;
  v24[1] = a8;
  return result;
}

unint64_t sub_2150653F4()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0xD00000000000001CLL;
  v4 = 0x656D614E65707974;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7463656A626FLL;
  if (v1 != 1)
  {
    v5 = 0x7069636974726170;
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

uint64_t sub_2150654C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_215066760(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2150654EC(uint64_t a1)
{
  v2 = sub_215066414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_215065528(uint64_t a1)
{
  v2 = sub_215066414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FallbackActivityEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA449A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_215066414();
  sub_2150A65B0();
  LOBYTE(v19) = 0;
  sub_2150A3960();
  sub_215066468(&qword_27CA424A0, MEMORY[0x277CC9578]);
  sub_2150A60A0();
  if (!v2)
  {
    v9 = type metadata accessor for FallbackActivityEvent();
    v10 = v3 + v9[5];
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    LOBYTE(v19) = *v10;
    v20 = v11;
    v21 = v12;
    v23 = 1;
    sub_214F847EC();

    sub_2150A60A0();

    v13 = (v3 + v9[6]);
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[3];
    v19 = *v13;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = 2;
    sub_214F84840();

    sub_2150A60A0();

    v19 = *(v3 + v9[7]);
    v23 = 3;
    type metadata accessor for NotesVersion(0);
    sub_215066468(&qword_27CA449B8, type metadata accessor for NotesVersion);
    sub_2150A60A0();
    LOBYTE(v19) = 4;
    sub_2150A6060();
    LOBYTE(v19) = 5;
    sub_2150A6060();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FallbackActivityEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_2150A3960();
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA449C0);
  v7 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = &v29 - v8;
  v33 = type metadata accessor for FallbackActivityEvent();
  MEMORY[0x28223BE20](v33);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateV11NotesSharedE15defaultArgumentACvgZ_0();
  [objc_opt_self() currentNotesVersion];
  v12 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_215066414();
  sub_2150A6590();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v32);
    return (*(v34 + 8))(v11, v4);
  }

  else
  {
    v13 = v7;
    LOBYTE(v35) = 0;
    sub_215066468(&qword_27CA424D0, MEMORY[0x277CC9578]);
    v14 = v31;
    sub_2150A5FC0();
    (*(v34 + 40))(v11, v6, v4);
    v38 = 1;
    sub_214F848DC();
    sub_2150A5FC0();
    v15 = v36;
    v16 = v37;
    v17 = v33;
    v18 = &v11[*(v33 + 20)];
    *v18 = v35;
    *(v18 + 1) = v15;
    *(v18 + 2) = v16;
    v38 = 2;
    sub_214F84930();
    sub_2150A5FC0();
    v19 = v36;
    v20 = &v11[v17[6]];
    *v20 = v35;
    *(v20 + 1) = v19;
    *(v20 + 1) = v37;
    type metadata accessor for NotesVersion(0);
    v38 = 3;
    sub_215066468(&qword_27CA44180, type metadata accessor for NotesVersion);
    sub_2150A5FC0();
    *&v11[v17[7]] = v35;
    LOBYTE(v35) = 4;
    v21 = sub_2150A5F80();
    v22 = &v11[v17[8]];
    *v22 = v21;
    v22[1] = v23;
    LOBYTE(v35) = 5;
    v24 = sub_2150A5F80();
    v26 = v25;
    (*(v13 + 8))(v9, v14);
    v27 = &v11[v17[9]];
    *v27 = v24;
    v27[1] = v26;
    sub_2150664B0(v11, v30);
    __swift_destroy_boxed_opaque_existential_0(v32);
    return sub_215066514(v11, type metadata accessor for FallbackActivityEvent);
  }
}

uint64_t FallbackActivityEvent.init(activityEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = type metadata accessor for PersistedActivityEvent();
  v9 = *(v8 + 24);
  v10 = (a1 + *(v8 + 20));
  v35 = *v10;
  v11 = *(v10 + 1);
  v12 = *(v10 + 2);
  v14 = *(a1 + v9);
  v13 = *(a1 + v9 + 8);
  v15 = *(a1 + v9 + 24);
  v33 = *(a1 + v9 + 16);
  v34 = v11;

  PersistedActivityEvent.Activities.type.getter(&v40);
  v38 = v14;
  v39 = v13;
  v36 = v15;
  v37 = v12;
  if (v40 <= 3u)
  {
    if (v40 > 1u)
    {
      if (v40 == 2)
      {
        v32 = 0xE400000000000000;
        v16 = 2037411683;
      }

      else
      {
        v32 = 0xE600000000000000;
        v16 = 0x656D616E6572;
      }
    }

    else if (v40)
    {
      v32 = 0xE400000000000000;
      v16 = 1702260589;
    }

    else
    {
      v32 = 0xE600000000000000;
      v16 = 0x657461657263;
    }
  }

  else if (v40 <= 5u)
  {
    if (v40 == 4)
    {
      v32 = 0xE600000000000000;
      v16 = 0x6574656C6564;
    }

    else
    {
      v32 = 0xEE00746E61706963;
      v16 = 0x6974726150646461;
    }
  }

  else if (v40 == 6)
  {
    v16 = 0xD000000000000011;
    v32 = 0x80000002150E19E0;
  }

  else if (v40 == 7)
  {
    v32 = 0x80000002150E1A00;
    v16 = 0xD000000000000013;
  }

  else
  {
    v32 = 0xE700000000000000;
    v16 = 0x6E6F69746E656DLL;
  }

  v17 = sub_214F822B0();
  v19 = v18;
  _s10Foundation4DateV11NotesSharedE15defaultArgumentACvgZ_0();
  v20 = type metadata accessor for FallbackActivityEvent();
  v21 = v20[7];
  [objc_opt_self() currentNotesVersion];
  sub_215066514(a1, type metadata accessor for PersistedActivityEvent);
  result = (*(v5 + 40))(a2, v7, v4);
  v23 = a2 + v20[5];
  *v23 = v35;
  v25 = v37;
  v24 = v38;
  *(v23 + 8) = v34;
  *(v23 + 16) = v25;
  v26 = (a2 + v20[6]);
  *v26 = v24;
  v27 = v33;
  v26[1] = v39;
  v26[2] = v27;
  v26[3] = v36;
  *(a2 + v21) = 6;
  v28 = (a2 + v20[8]);
  v29 = v32;
  *v28 = v16;
  v28[1] = v29;
  v30 = (a2 + v20[9]);
  *v30 = v17;
  v30[1] = v19;
  return result;
}

uint64_t _s11NotesShared21FallbackActivityEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2150A3920() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FallbackActivityEvent();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v8 = *(a1 + v5 + 8);
  v7 = *(a1 + v5 + 16);
  v9 = a2 + v5;
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v6)
  {
    v12 = 1702129518;
  }

  else
  {
    v12 = 0x7265646C6F66;
  }

  if (v6)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (*v9)
  {
    v14 = 1702129518;
  }

  else
  {
    v14 = 0x7265646C6F66;
  }

  if (*v9)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE600000000000000;
  }

  if (v12 == v14 && v13 == v15)
  {
  }

  else
  {
    v17 = sub_2150A6270();

    if ((v17 & 1) == 0)
    {

      return 0;
    }
  }

  if (v8 == v11 && v7 == v10)
  {
  }

  else
  {
    v19 = sub_2150A6270();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = v4[6];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v24 = v4[8];
  v25 = *(a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  if ((v25 != *v27 || v26 != v27[1]) && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  v28 = v4[9];
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  if (v29 == *v31 && v30 == v31[1])
  {
    return 1;
  }

  return sub_2150A6270();
}

unint64_t sub_215066414()
{
  result = qword_27CA449B0;
  if (!qword_27CA449B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA449B0);
  }

  return result;
}

uint64_t sub_215066468(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2150664B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FallbackActivityEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_215066514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21506659C()
{
  sub_2150A3960();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NotesVersion(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21506665C()
{
  result = qword_27CA449C8;
  if (!qword_27CA449C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA449C8);
  }

  return result;
}

unint64_t sub_2150666B4()
{
  result = qword_27CA449D0;
  if (!qword_27CA449D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA449D0);
  }

  return result;
}

unint64_t sub_21506670C()
{
  result = qword_27CA449D8;
  if (!qword_27CA449D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA449D8);
  }

  return result;
}

uint64_t sub_215066760(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_2150A6270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61 || (sub_2150A6270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002150E81C0 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D614E65707974 && a2 == 0xE800000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002150E81E0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_2150A6270();

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

void *sub_215066970(void *(*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return 0;
  }

  v7[0] = a3;
  v7[1] = a4;
  result = a1(&v8, v7);
  if (!v5)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t StringProtocol.replacing(pattern:in:options:matchingOptions:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36 = a7;
  v37 = a5;
  v38 = a3;
  v39 = a4;
  v16 = *(a10 - 8);
  MEMORY[0x28223BE20](a1);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(type metadata accessor for CustomReplacementRegularExpression());

  v19 = sub_21506780C(a1, a2, a8, a9, a6);
  v20 = v11;

  if (!v11)
  {
    v35 = v16;
    v22 = v36;
    MEMORY[0x28223BE20](v21);
    *(&v34 - 4) = a10;
    *(&v34 - 3) = a11;
    *(&v34 - 2) = v40;
    v23 = sub_215066970(sub_215067A04, (&v34 - 6), v38, v39, v37 & 1);
    v39 = 0;
    if (v25)
    {
      v26 = v40;
      v27 = sub_2150A53E0();
      v28 = 0;
      v29 = v26;
    }

    else
    {
      v28 = v23;
      v27 = v24;
      v29 = v40;
    }

    (*(v35 + 16))(v18, v29, a10);
    sub_2150A4D30();
    v30 = sub_2150A4A90();

    v31 = sub_2150A4A90();
    v32 = [v19 stringByReplacingMatchesInString:v30 options:v22 range:v28 withTemplate:{v27, v31}];

    v20 = sub_2150A4AD0();
  }

  return v20;
}

uint64_t StringProtocol.replacing(pattern:in:withTemplate:options:matchingOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = a5;
  v34 = a3;
  v35 = a4;
  v16 = *(a10 - 8);
  MEMORY[0x28223BE20](a1);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(MEMORY[0x277CCAC68]);

  v19 = sub_215067730(a1, a2, a8);
  if (!v11)
  {
    v20 = v19;
    v31 = a9;
    v32 = a6;
    MEMORY[0x28223BE20](v19);
    *(&v30 - 4) = a10;
    *(&v30 - 3) = a11;
    *(&v30 - 2) = v36;
    v21 = sub_215066970(sub_21506792C, (&v30 - 6), v34, v35, v33 & 1);
    v35 = 0;
    if (v23)
    {
      v24 = sub_2150A53E0();
      v25 = 0;
    }

    else
    {
      v25 = v21;
      v24 = v22;
    }

    (*(v16 + 16))(v18, v36, a10);
    sub_2150A4D30();
    v26 = sub_2150A4A90();

    v27 = sub_2150A4A90();
    v28 = [v20 stringByReplacingMatchesInString:v26 options:v31 range:v25 withTemplate:{v24, v27}];

    a6 = sub_2150A4AD0();
  }

  return a6;
}

uint64_t sub_215066F3C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ([a1 numberOfRanges] < 1)
  {
    goto LABEL_24;
  }

  [a1 range];
  v42 = a2;
  v8 = sub_2150A54C0();
  if (v10)
  {
    goto LABEL_24;
  }

  v11 = v8;
  v12 = v9;

  v13 = [a1 numberOfRanges];
  v14 = v13 - 1;
  if (v13 < 1)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    result = sub_2150A5E10();
    __break(1u);
    return result;
  }

  v39 = v12;
  v40 = v11;
  v15 = MEMORY[0x277D84F90];
  v41 = a1;
  if (v13 != 1)
  {
    v16 = v13;
    v38 = a4;
    v43 = MEMORY[0x277D84F90];
    v17 = a1;
    sub_214F86ECC(0, v14, 0);
    v18 = 1;
    v15 = v43;
    while (1)
    {
      v19 = [v17 rangeAtIndex_];
      v21 = v20;
      v23 = *(v43 + 16);
      v22 = *(v43 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_214F86ECC((v22 > 1), v23 + 1, 1);
      }

      *(v43 + 16) = v23 + 1;
      v24 = v43 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      if (v16 == v18)
      {
        break;
      }

      if (v16 == ++v18)
      {

        a4 = v38;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_11:
  v25 = *(v15 + 16);
  v26 = v42;
  if (v25)
  {
    v27 = v15 + 40;
    v28 = MEMORY[0x277D84F90];
    do
    {
      v30 = sub_2150A54C0();
      if ((v32 & 1) == 0)
      {
        v33 = v30;
        v34 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_215060620(0, *(v28 + 2) + 1, 1, v28);
        }

        v36 = *(v28 + 2);
        v35 = *(v28 + 3);
        if (v36 >= v35 >> 1)
        {
          v28 = sub_215060620((v35 > 1), v36 + 1, 1, v28);
        }

        *(v28 + 2) = v36 + 1;
        v29 = &v28[16 * v36];
        *(v29 + 4) = v33;
        *(v29 + 5) = v34;
        v26 = v42;
      }

      v27 += 16;
      --v25;
    }

    while (v25);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  *a4 = v26;
  a4[1] = a3;
  a4[2] = v40;
  a4[3] = v39;
  a4[4] = v28;
  return result;
}

uint64_t String.Match.string.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t String.removingCharacters(notContainedIn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2150A3050();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = a2;
  v12[1] = a3;
  sub_2150A3040();
  sub_214D6E6C4();
  v9 = sub_2150A5860();
  (*(v6 + 8))(v8, v5);
  v12[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
  sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0);
  v10 = sub_2150A4A20();

  return v10;
}

uint64_t String.removingCharacters(containedIn:)()
{
  sub_214D6E6C4();
  sub_2150A5860();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
  sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0);
  v0 = sub_2150A4A20();

  return v0;
}

uint64_t sub_2150675F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA449E8);
  sub_214F43BCC(&qword_27CA449F0, &qword_27CA449E8);
  result = sub_2150A57C0();
  *a2 = result;
  a2[1] = v6;
  return result;
}

id sub_215067730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2150A4A90();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2150A35D0();

    swift_willThrow();
  }

  return v6;
}

id sub_21506780C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v10 = &v5[OBJC_IVAR____TtC11NotesSharedP33_452BF3924CAE69326F83BAE5FEEBFB4234CustomReplacementRegularExpression_replaceBlock];
  *v10 = a3;
  *(v10 + 1) = a4;

  v11 = sub_2150A4A90();

  v16.super_class = ObjectType;
  v17[0] = 0;
  v16.receiver = v5;
  v12 = objc_msgSendSuper2(&v16, sel_initWithPattern_options_error_, v11, a5, v17);

  if (v12)
  {
    v13 = v17[0];
  }

  else
  {
    v14 = v17[0];
    sub_2150A35D0();

    swift_willThrow();
  }

  return v12;
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

uint64_t sub_215067964(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2150679AC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_215067A1C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2150A59D0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_214F86A20(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x216062780](0, a1);
    }

    else
    {
      v4 = *(a1 + 32);
    }

    result = sub_2150A4AB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_215067B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_214F86CBC(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42668);
      swift_dynamicCast();
      v5 = v11;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_214F86CBC((v6 > 1), v7 + 1, 1);
        v5 = v11;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 24 * v7;
      *(v8 + 32) = v10;
      *(v8 + 40) = v5;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_215067CAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_214F86D40(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B40);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_214F86D40((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_215067DDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_214F86E04(0, v1, 0);
    v2 = v10;
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44BB0);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_214F86E04((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_215067F3C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v21 = a5;
  v8 = a2(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v25 = MEMORY[0x277D84F90];
    sub_214F86DA0(0, v12, 0);
    v13 = v25;
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    do
    {
      sub_21507423C(v14, v11, a3);
      v25 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_214F86DA0((v16 > 1), v17 + 1, 1);
        v13 = v25;
      }

      v23 = v8;
      v24 = a4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
      sub_21507423C(v11, boxed_opaque_existential_1, a3);
      *(v13 + 16) = v17 + 1;
      sub_214D7A458(&v22, v13 + 40 * v17 + 32);
      sub_2150742A4(v11, v21);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t sub_2150680E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_214F86F6C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_214F86F6C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_214D72488(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2150681E0(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_215068290(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_2150648F4(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_214F736A0(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_215068340(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = v5 - 1;
    v8 = (a3 + 56);
    do
    {
      v9 = v7;
      v11 = *(v8 - 1);
      v10 = *v8;
      v12 = *(v8 - 2);
      v15[0] = *(v8 - 3);
      v15[1] = v12;
      v15[2] = v11;
      v15[3] = v10;

      v13 = a1(v15);

      LOBYTE(v5) = (v4 != 0) | v13;
      if ((v4 != 0) | v13 & 1)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 4;
    }

    while (v9);
  }

  return v5 & 1;
}

uint64_t sub_215068408(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_2150684B4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x216062780](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_2150A59D0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void *sub_215068638(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21505FABC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44BB0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_215068790(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21505FC18(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2150688AC(uint64_t result, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_215068A10(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_2150A59D0();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_2150A59D0();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_215072D00(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_215068B08(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_215060214(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426C8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_215068C38(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_215068D7C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21505F4D0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_215068E70(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2150600E0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_215068F64(void (*a1)(void *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2150A5980();
    sub_214D55670(0, &qword_27CA44A30);
    sub_214F737A4();
    sub_2150A5320();
    v3 = v31[1];
    v4 = v31[2];
    v5 = v31[3];
    v6 = v31[4];
    v7 = v31[5];
  }

  else
  {
    v8 = -1 << *(a3 + 32);
    v4 = a3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a3 + 56);

    v6 = 0;
  }

  v11 = MEMORY[0x277D84F90];
  v29 = v3;
  while (v3 < 0)
  {
    v17 = sub_2150A5A10();
    if (!v17 || (v31[0] = v17, sub_214D55670(0, &qword_27CA44A30), swift_dynamicCast(), v16 = v32, v14 = v6, v15 = v7, !v32))
    {
LABEL_33:
      sub_214F420F4();
      return;
    }

LABEL_19:
    v32 = v16;
    a1(v31, &v32);
    if (v30)
    {
      sub_214F420F4();

      return;
    }

    v18 = v31[0];
    v19 = *(v31[0] + 16);
    v20 = v11[2];
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_37;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v21 <= v11[3] >> 1)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      v11 = sub_21505FBF0(isUniquelyReferenced_nonNull_native, v23, 1, v11);
      if (!*(v18 + 16))
      {
LABEL_8:

        v3 = v29;
        if (v19)
        {
          goto LABEL_38;
        }

        goto LABEL_9;
      }
    }

    v24 = (v11[3] >> 1) - v11[2];
    type metadata accessor for NoteEditActivityEvent(0);
    if (v24 < v19)
    {
      goto LABEL_39;
    }

    swift_arrayInitWithCopy();

    v3 = v29;
    if (v19)
    {
      v25 = v11[2];
      v26 = __OFADD__(v25, v19);
      v27 = v25 + v19;
      if (v26)
      {
        goto LABEL_40;
      }

      v11[2] = v27;
    }

LABEL_9:
    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_15:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v5 + 64) >> 6))
    {
      goto LABEL_33;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t ICCloudSyncingObject.sharedRootActivityEvents.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PersistedActivityEvent.Activities();
  v3 = MEMORY[0x28223BE20](v2);
  v98 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v94 = &v87 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42270);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v87 - v7;
  v100 = type metadata accessor for PersistedActivityEvent();
  v9 = *(v100 - 8);
  v10 = MEMORY[0x28223BE20](v100);
  v95 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v87 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v91 = &v87 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v99 = (&v87 - v18);
  MEMORY[0x28223BE20](v17);
  v96 = &v87 - v19;
  if (![v1 isSharedViaICloud])
  {
    return MEMORY[0x277D84F90];
  }

  if ([v1 isSharedRootObject])
  {
    return MEMORY[0x277D84F90];
  }

  v20 = [v1 sharedRootObject];
  if (!v20)
  {
    return MEMORY[0x277D84F90];
  }

  v21 = v20;
  v90 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C29C0;
  v22 = &selRef_hidesCallNotesInCustomFolders;
  v23 = [v1 identifier];
  if (v23)
  {
    v24 = v23;
    v25 = sub_2150A4AD0();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v29 = inited;
  *(inited + 32) = v25;
  *(v29 + 40) = v27;
  v30 = [v21 identifier];
  if (v30)
  {
    v31 = v30;
    v32 = sub_2150A4AD0();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v88 = v21;
  v97 = v14;
  v35 = inited;
  *(inited + 48) = v32;
  *(v35 + 56) = v34;
  v36 = [v1 allChildCloudObjects];
  sub_214D55670(0, &qword_27CA43240);
  v37 = sub_2150A4ED0();

  v38 = v37 & 0xFFFFFFFFFFFFFF8;
  if (v37 >> 62)
  {
    goto LABEL_97;
  }

  for (i = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2150A59D0())
  {
    v93 = v9;
    if (i)
    {
      v9 = 0;
      v89 = MEMORY[0x277D84F90];
      while (2)
      {
        v40 = v9;
        while (1)
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v41 = MEMORY[0x216062780](v40, v37);
            v9 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_93;
            }
          }

          else
          {
            if (v40 >= *(v38 + 16))
            {
              goto LABEL_94;
            }

            v41 = *(v37 + 8 * v40 + 32);
            v9 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
              goto LABEL_96;
            }
          }

          v42 = v41;
          v43 = [v42 *(v22 + 234)];
          if (v43)
          {
            break;
          }

          ++v40;
          if (v9 == i)
          {
            goto LABEL_32;
          }
        }

        v44 = v43;
        v45 = sub_2150A4AD0();
        v87 = v46;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_21505F4D0(0, *(v89 + 2) + 1, 1, v89);
        }

        v48 = *(v89 + 2);
        v47 = *(v89 + 3);
        if (v48 >= v47 >> 1)
        {
          v89 = sub_21505F4D0((v47 > 1), v48 + 1, 1, v89);
        }

        v49 = v89;
        *(v89 + 2) = v48 + 1;
        v50 = &v49[16 * v48];
        v51 = v87;
        *(v50 + 4) = v45;
        *(v50 + 5) = v51;
        if (v9 != i)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v89 = MEMORY[0x277D84F90];
    }

LABEL_32:

    v22 = v89;
    v52 = sub_215067DDC(v89);

    *&v102[0] = inited;
    sub_215068638(v52);
    inited = *&v102[0];
    v53 = ICCloudSyncingObject.persistedActivityEvents.getter();
    v54 = *(v53 + 16);
    if (v54)
    {
      v89 = v53;
      v55 = v53 + 32;
      v56 = v93;
      v57 = (v93 + 56);
      v58 = (v93 + 48);
      v37 = MEMORY[0x277D84F90];
      v9 = v94;
      do
      {
        sub_214F6163C(v55, v102);
        sub_214D7A458(v102, v101);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10);
        v22 = v100;
        v59 = swift_dynamicCast();
        (*v57)(v8, v59 ^ 1u, 1, v22);
        if ((*v58)(v8, 1, v22) == 1)
        {
          sub_214F302D4(v8, &qword_27CA42270);
        }

        else
        {
          sub_215074144(v8, v96, type metadata accessor for PersistedActivityEvent);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_21505F8B8(0, *(v37 + 16) + 1, 1, v37);
          }

          v61 = *(v37 + 16);
          v60 = *(v37 + 24);
          if (v61 >= v60 >> 1)
          {
            v37 = sub_21505F8B8(v60 > 1, v61 + 1, 1, v37);
          }

          *(v37 + 16) = v61 + 1;
          sub_215074144(v96, v37 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v61, type metadata accessor for PersistedActivityEvent);
          v9 = v94;
        }

        v55 += 40;
        --v54;
      }

      while (v54);
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
      v56 = v93;
      v9 = v94;
    }

    v38 = v97;
    v96 = *(v37 + 16);
    if (v96)
    {
      v62 = 0;
      v8 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v62 >= *(v37 + 16))
        {
          goto LABEL_95;
        }

        v64 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v65 = *(v56 + 72);
        v22 = v99;
        sub_21507423C(v37 + v64 + v65 * v62, v99, type metadata accessor for PersistedActivityEvent);
        v66 = *(v100 + 28);
        sub_21507423C(v22 + v66, v9, type metadata accessor for PersistedActivityEvent.Activities);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 3)
        {
          goto LABEL_56;
        }

        if (EnumCaseMultiPayload > 6)
        {
          break;
        }

        v68 = v9;
        if ((EnumCaseMultiPayload - 4) < 2)
        {
          goto LABEL_68;
        }

        v69 = sub_2150A3A00();
        (*(*(v69 - 8) + 8))(v9, v69);
LABEL_57:
        sub_21507423C(v99 + v66, v98, type metadata accessor for PersistedActivityEvent.Activities);
        v70 = swift_getEnumCaseMultiPayload();
        if (v70 <= 3)
        {
          if (v70 > 1)
          {
            v68 = v98;
            if (v70 != 2)
            {
LABEL_68:
              sub_2150742A4(v68, type metadata accessor for PersistedActivityEvent.Activities);
LABEL_69:
              sub_215074144(v99, v91, type metadata accessor for PersistedActivityEvent);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v102[0] = v8;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_214F86DC0(0, *(v8 + 2) + 1, 1);
                v8 = *&v102[0];
              }

              v74 = *(v8 + 2);
              v73 = *(v8 + 3);
              if (v74 >= v73 >> 1)
              {
                sub_214F86DC0(v73 > 1, v74 + 1, 1);
                v8 = *&v102[0];
              }

              *(v8 + 2) = v74 + 1;
              sub_215074144(v91, &v8[v64 + v74 * v65], type metadata accessor for PersistedActivityEvent);
              v38 = v97;
              v9 = v94;
              goto LABEL_48;
            }

            v71 = *(v98 + 64);

            if (!v71)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (!v70)
            {
              sub_2150742A4(v98, type metadata accessor for PersistedActivityEvent.Activities);
LABEL_78:
              v38 = v97;
              goto LABEL_47;
            }

            v75 = *(v98 + 40);

            if (!v75)
            {
              goto LABEL_69;
            }
          }

          goto LABEL_78;
        }

        if (v70 <= 5)
        {
          v38 = v97;
LABEL_75:
          sub_2150742A4(v98, type metadata accessor for PersistedActivityEvent.Activities);
          goto LABEL_47;
        }

        v38 = v97;
        if (v70 == 6)
        {
          v63 = sub_2150A3A00();
          (*(*(v63 - 8) + 8))(v98, v63);
        }

        else if (v70 == 7)
        {
          goto LABEL_75;
        }

LABEL_47:
        sub_2150742A4(v99, type metadata accessor for PersistedActivityEvent);
LABEL_48:
        if (v96 == ++v62)
        {
          goto LABEL_80;
        }
      }

      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_57;
      }

LABEL_56:
      sub_2150742A4(v9, type metadata accessor for PersistedActivityEvent.Activities);
      goto LABEL_57;
    }

    v8 = MEMORY[0x277D84F90];
LABEL_80:

    v76 = *(v8 + 2);
    if (!v76)
    {
      break;
    }

    v77 = 0;
    v78 = MEMORY[0x277D84F90];
    v22 = v102;
    while (v77 < *(v8 + 2))
    {
      v9 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v37 = *(v56 + 72);
      v79 = sub_21507423C(&v8[v9 + v37 * v77], v38, type metadata accessor for PersistedActivityEvent);
      v80 = v38 + *(v100 + 20);
      v82 = *(v80 + 8);
      v81 = *(v80 + 16);
      *&v102[0] = v82;
      *(&v102[0] + 1) = v81;
      MEMORY[0x28223BE20](v79);
      *(&v87 - 2) = v102;
      if (sub_2150681E0(sub_2150737C4, (&v87 - 4), inited))
      {
        sub_215074144(v38, v95, type metadata accessor for PersistedActivityEvent);
        v83 = swift_isUniquelyReferenced_nonNull_native();
        v101[0] = v78;
        if ((v83 & 1) == 0)
        {
          sub_214F86DC0(0, *(v78 + 16) + 1, 1);
          v78 = v101[0];
        }

        v85 = *(v78 + 16);
        v84 = *(v78 + 24);
        if (v85 >= v84 >> 1)
        {
          sub_214F86DC0(v84 > 1, v85 + 1, 1);
          v78 = v101[0];
        }

        *(v78 + 16) = v85 + 1;
        sub_215074144(v95, v78 + v9 + v85 * v37, type metadata accessor for PersistedActivityEvent);
        v38 = v97;
      }

      else
      {
        sub_2150742A4(v38, type metadata accessor for PersistedActivityEvent);
      }

      ++v77;
      v56 = v93;
      if (v76 == v77)
      {
        goto LABEL_92;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
    ;
  }

  v78 = MEMORY[0x277D84F90];
LABEL_92:

  v86 = sub_215067F3C(v78, type metadata accessor for PersistedActivityEvent, type metadata accessor for PersistedActivityEvent, &protocol witness table for PersistedActivityEvent, type metadata accessor for PersistedActivityEvent);

  return v86;
}

uint64_t ICCloudSyncingObject.persistedActivityEvents.getter()
{
  swift_getObjectType();
  if ([swift_getObjCClassFromMetadata() supportsActivityEvents] && objc_msgSend(v0, sel_isSharedViaICloud))
  {
    if ([v0 persistedActivityEventsStorage])
    {
      sub_2150A58F0();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    v7[0] = v5;
    v7[1] = v6;
    if (*(&v6 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A20);
      if (swift_dynamicCast())
      {
        v1 = v4;
LABEL_12:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10);
        v2 = sub_2150A4EB0();
        [v0 setPersistedActivityEventsStorage_];

        return v1;
      }
    }

    else
    {
      sub_214F302D4(v7, &qword_27CA42178);
    }

    v1 = sub_21506BC6C();
    goto LABEL_12;
  }

  return MEMORY[0x277D84F90];
}

uint64_t ICCloudSyncingObject.activityEvents.getter()
{
  v1 = ICCloudSyncingObject.shareActivityEvents.getter();
  v2 = sub_215067F3C(v1, type metadata accessor for ShareActivityEvent, type metadata accessor for ShareActivityEvent, &protocol witness table for ShareActivityEvent, type metadata accessor for ShareActivityEvent);

  v3 = ICCloudSyncingObject.persistedActivityEvents.getter();
  sub_2150688AC(v3, sub_21505F894, &unk_27CA44A10);
  v4 = ICCloudSyncingObject.editActivityEvents.getter();
  v5 = sub_215067F3C(v4, type metadata accessor for NoteEditActivityEvent, type metadata accessor for NoteEditActivityEvent, &protocol witness table for NoteEditActivityEvent, type metadata accessor for NoteEditActivityEvent);

  sub_2150688AC(v5, sub_21505F894, &unk_27CA44A10);
  v24 = v2;
  v6 = [v0 allChildCloudObjects];
  sub_214D55670(0, &qword_27CA43240);
  v7 = sub_2150A4ED0();

  if (v7 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2150A59D0())
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x216062780](v9, v7);
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v13 = v11;
      v14 = ICCloudSyncingObject.activityEvents.getter();

      v15 = *(v14 + 16);
      v16 = v10[2];
      v17 = v16 + v15;
      if (__OFADD__(v16, v15))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v17 <= v10[3] >> 1)
      {
        if (*(v14 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v19 = v16 + v15;
        }

        else
        {
          v19 = v16;
        }

        v10 = sub_21505F894(isUniquelyReferenced_nonNull_native, v19, 1, v10);
        if (*(v14 + 16))
        {
LABEL_18:
          if ((v10[3] >> 1) - v10[2] < v15)
          {
            goto LABEL_28;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10);
          swift_arrayInitWithCopy();

          if (v15)
          {
            v20 = v10[2];
            v21 = __OFADD__(v20, v15);
            v22 = v20 + v15;
            if (v21)
            {
              goto LABEL_29;
            }

            v10[2] = v22;
          }

          goto LABEL_5;
        }
      }

      if (v15)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v9;
      if (v12 == i)
      {
        goto LABEL_32;
      }
    }

    if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v11 = *(v7 + 8 * v9 + 32);
    v12 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_32:

  sub_2150688AC(v10, sub_21505F894, &unk_27CA44A10);
  swift_getKeyPath();

  sub_214F6E2FC(sub_215074310, 0);

  return v24;
}

uint64_t sub_21506A584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2150A3A00();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  sub_2150A39C0();
  v11(v10, a3, a4);
  return (*(v8 + 8))(v10, v7);
}

size_t ICCloudSyncingObject.editActivityEvents.getter()
{
  v1 = v0;
  v59 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  MEMORY[0x28223BE20](v59);
  v3 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v55 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v55 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v60 = &v55 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - v16;
  v18 = sub_2150A3960();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v55 - v23;
  if (![v1 isSharedViaICloud])
  {
    return MEMORY[0x277D84F90];
  }

  v58 = v24;
  objc_opt_self();
  v56 = v1;
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
    return MEMORY[0x277D84F90];
  }

  v26 = v25;
  v55 = v3;
  v27 = [v25 objc_shareTimestamp];
  v57 = v19;
  if (v27)
  {
    v28 = v27;
    sub_2150A3930();

    v29 = v19;
    v30 = *(v19 + 32);
    v30(v17, v22, v18);
    v31 = *(v29 + 56);
    v31(v17, 0, 1, v18);
    v30(v58, v17, v18);
  }

  else
  {
    v31 = *(v19 + 56);
    v31(v17, 1, 1, v18);
    sub_2150A37F0();
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      sub_214F302D4(v17, &qword_27CA41DD0);
    }
  }

  v33 = [v26 recentUpdatesGenerationDate];
  if (v33)
  {
    v34 = v33;
    sub_2150A3930();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = v57;
  v31(v10, v35, 1, v18);
  sub_214FB6CE4(v10, v13, &qword_27CA41DD0);
  if ((*(v36 + 48))(v13, 1, v18))
  {
    sub_214F302D4(v13, &qword_27CA41DD0);
    v37 = 1;
    v38 = v60;
  }

  else
  {
    (*(v36 + 16))(v22, v13, v18);
    sub_214F302D4(v13, &qword_27CA41DD0);
    v38 = v60;
    sub_2150A3840();
    (*(v36 + 8))(v22, v18);
    v37 = 0;
  }

  v31(v38, v37, 1, v18);
  v31(v7, 1, 1, v18);
  v39 = [v26 mergeableString];
  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  if (v40)
  {
    v41 = v40;
    v42 = v55;
    *v55 = v26;
    swift_storeEnumTagMultiPayload();
    v43 = v56;
    v44 = _s11NotesShared21NoteEditActivityEventV6events3for2in14afterTimestamp06recentK0SayACGSo29ICTTMergeableAttributedStringC_AC7ParentsO10Foundation4DateVSgAQtFZ_0(v41, v42, v7, v38);

    sub_2150742A4(v42, type metadata accessor for NoteEditActivityEvent.Parents);
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  sub_214F302D4(v7, &qword_27CA41DD0);
  v45 = [v26 visibleAttachments];
  sub_214D55670(0, &qword_27CA44A30);
  sub_214F737A4();
  v46 = sub_2150A52E0();

  MEMORY[0x28223BE20](v47);
  *(&v55 - 2) = v38;
  sub_215068F64(sub_2150737E4, (&v55 - 4), v46);
  v49 = v48;

  v61 = v44;
  v50 = sub_215068C38(v49, sub_21505FBF0, type metadata accessor for NoteEditActivityEvent);
  MEMORY[0x28223BE20](v50);
  v51 = v58;
  *(&v55 - 2) = v58;
  v53 = sub_214F60048(sub_215073800, (&v55 - 4), v52);
  swift_getKeyPath();
  v61 = v53;

  sub_214F6E33C(sub_215072F30, 0);

  v54 = v61;
  sub_214F302D4(v38, &qword_27CA41DD0);
  (*(v57 + 8))(v51, v18);
  return v54;
}

Swift::Void __swiftcall ICCloudSyncingObject.remove(cloudSyncingObjectActivityEvent:)(ICCloudSyncingObjectActivityEvent cloudSyncingObjectActivityEvent)
{
  isa = cloudSyncingObjectActivityEvent.super.isa;
  v3 = [v1 activityEventsDocument];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 orderedSet];

    [v5 removeObject_];
  }

  v6 = [v1 activityEventsDocument];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 serialize];

    v9 = sub_2150A37B0();
    v11 = v10;

    v12 = sub_2150A3790();
    sub_214F7EDE4(v9, v11);
  }

  else
  {
    v12 = 0;
  }

  [v1 setActivityEventsData_];

  v13 = sub_2150A4A90();
  [v1 updateChangeCountWithReason_];
}

uint64_t sub_21506AF10()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_280C23380);
  v1 = __swift_project_value_buffer(v0, qword_280C23380);
  if (qword_280C24278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C24280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ICCloudSyncingObject.shareActivityEvents.getter()
{
  v1 = v0;
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44A40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for ShareActivityEvent();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([swift_getObjCClassFromMetadata() supportsActivityEvents] && objc_msgSend(v1, sel_isSharedViaICloud))
  {
    ShareActivityEvent.init(cloudSyncingObject:)(v1, v4);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      sub_215074144(v4, v8, type metadata accessor for ShareActivityEvent);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44A48);
      v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_2150C25D0;
      sub_215074144(v8, v11 + v10, type metadata accessor for ShareActivityEvent);
      return v11;
    }

    sub_214F302D4(v4, &qword_27CA44A40);
  }

  return MEMORY[0x277D84F90];
}

uint64_t ICCloudSyncingObject.activityEventsPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44A50);
  v1 = *(v0 - 8);
  v55 = v0;
  v56 = v1;
  MEMORY[0x28223BE20](v0);
  v52 = &v43 - v2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44A58);
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v53 = &v43 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44A60);
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44A68);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v9 = sub_2150A5670();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44A70);
  v48 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v47 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v46 = &v43 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v45 = &v43 - v19;
  MEMORY[0x28223BE20](v18);
  v44 = &v43 - v20;
  v21 = objc_opt_self();
  v22 = [v21 defaultCenter];
  sub_2150A5680();

  sub_214D55670(0, &qword_27CA43240);
  sub_215073820(&qword_27CA44A78, MEMORY[0x277CC9DB0]);
  sub_2150A43C0();
  v23 = *(v10 + 8);
  v23(v12, v9);
  v24 = [v21 defaultCenter];
  sub_2150A5680();

  sub_214D55670(0, &qword_27CA44A80);
  sub_2150A43C0();
  v23(v12, v9);
  v25 = swift_allocObject();
  v26 = v51;
  *(v25 + 16) = v51;
  v27 = v26;
  v28 = v45;
  v29 = v49;
  sub_2150A4380();

  (*(v50 + 8))(v8, v29);
  v30 = v48;
  v31 = *(v48 + 16);
  v32 = v44;
  v31(v46, v44, v13);
  v31(v47, v28, v13);
  sub_214F43BCC(&qword_27CA44A88, &qword_27CA44A70);
  v33 = v52;
  sub_2150A4390();
  *(swift_allocObject() + 16) = v27;
  sub_214F43BCC(&qword_27CA44A90, &qword_27CA44A50);
  v34 = v27;
  v35 = v53;
  v36 = v55;
  sub_2150A43E0();

  (*(v56 + 8))(v33, v36);
  sub_214F43BCC(&qword_27CA44A98, &qword_27CA44A58);
  v37 = v54;
  v38 = v58;
  sub_2150A43D0();
  (*(v60 + 8))(v35, v38);
  sub_214F43BCC(&qword_27CA44AA0, &qword_27CA44A60);
  v39 = v57;
  v40 = sub_2150A43B0();
  (*(v59 + 8))(v37, v39);
  v41 = *(v30 + 8);
  v41(v28, v13);
  v41(v32, v13);
  return v40;
}

uint64_t sub_21506BA18@<X0>(unint64_t *a1@<X1>, void *a2@<X8>)
{
  sub_2150A30C0();
  if (!v5[3])
  {
    result = sub_214F302D4(v5, &qword_27CA42178);
    goto LABEL_5;
  }

  sub_214D55670(0, a1);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    *a2 = 0;
  }

  return result;
}

void sub_21506BAB8(id a1@<X1>, uint64_t *a2@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  v5 = [a1 managedObjectContext];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 objectWithID_];

    if (v7)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        *a3 = v8;
        return;
      }
    }
  }

  *a3 = 0;
}

uint64_t sub_21506BB58(void **a1, uint64_t a2)
{
  v3 = *a1;
  sub_214D55670(0, &qword_280C24220);
  if (sub_2150A5780())
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 ancestorCloudObjects];
    sub_214D55670(0, &qword_27CA43240);
    v6 = sub_2150A4ED0();

    v10 = a2;
    MEMORY[0x28223BE20](v7);
    v9[2] = &v10;
    v4 = sub_2150684B4(sub_2150741AC, v9, v6);
  }

  return v4 & 1;
}

uint64_t sub_21506BC6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v21 - v4;
  v6 = ICCloudSyncingObject.cloudSyncingObjectActivityEvents.getter();
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2150A59D0())
  {
    v9 = 0;
    v21[0] = v7 & 0xC000000000000001;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v21[0])
      {
        v11 = MEMORY[0x216062780](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      static ICCloudSyncingObject.persistedActivityEvent(for:)(v11, v5);
      v14 = type metadata accessor for PersistedActivityEvent();
      if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
      {
        sub_214F302D4(v5, &qword_27CA42270);
        v25 = 0u;
        v26 = 0u;
        v27 = 0;
        static ICCloudSyncingObject.fallbackActivityEvent(for:)(v12, v2);
        v15 = type metadata accessor for FallbackActivityEvent();
        if ((*(*(v15 - 8) + 48))(v2, 1, v15) == 1)
        {

          sub_214F302D4(v2, &qword_27CA44AB0);
          v22 = 0u;
          v23 = 0u;
          v24 = 0;
          if (!*(&v26 + 1))
          {
            goto LABEL_17;
          }

LABEL_16:
          sub_214F302D4(&v25, &qword_27CA44AB8);
          goto LABEL_17;
        }

        *(&v23 + 1) = v15;
        v24 = &protocol witness table for FallbackActivityEvent;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
        sub_215074144(v2, boxed_opaque_existential_1, type metadata accessor for FallbackActivityEvent);

        if (*(&v26 + 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        *(&v26 + 1) = v14;
        v27 = &protocol witness table for PersistedActivityEvent;
        v16 = __swift_allocate_boxed_opaque_existential_1(&v25);
        sub_215074144(v5, v16, type metadata accessor for PersistedActivityEvent);

        sub_214D7A458(&v25, &v22);
      }

LABEL_17:
      if (*(&v23 + 1))
      {
        sub_214D7A458(&v22, &v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_21505F894(0, v10[2] + 1, 1, v10);
        }

        v19 = v10[2];
        v18 = v10[3];
        if (v19 >= v18 >> 1)
        {
          v10 = sub_21505F894((v18 > 1), v19 + 1, 1, v10);
        }

        v10[2] = v19 + 1;
        sub_214D7A458(&v25, &v10[5 * v19 + 4]);
      }

      else
      {
        sub_214F302D4(&v22, &qword_27CA44AB8);
      }

      ++v9;
      if (v13 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_28:

  swift_getKeyPath();
  *&v25 = v10;

  sub_214F6E2FC(sub_215074310, 0);

  return v25;
}

uint64_t ICCloudSyncingObject.cloudSyncingObjectActivityEvents.getter()
{
  v1 = [v0 activityEventsDocument];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    v4 = [v1 orderedSet];

    v5 = [v4 allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AA8);
    v6 = sub_2150A4ED0();

    v11 = v2;
    if (v6 >> 62)
    {
LABEL_21:
      v7 = sub_2150A59D0();
      if (v7)
      {
LABEL_4:
        v8 = 0;
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              MEMORY[0x216062780](v9, v6);
              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                goto LABEL_19;
              }
            }

            else
            {
              if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              swift_unknownObjectRetain();
              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
LABEL_19:
                __break(1u);
LABEL_20:
                __break(1u);
                goto LABEL_21;
              }
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            swift_unknownObjectRelease();
            ++v9;
            if (v8 == v7)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x216061A60]();
          if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2150A4F10();
          }

          sub_2150A4F70();
          v2 = v11;
        }

        while (v8 != v7);
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

LABEL_22:
  }

  return v2;
}

uint64_t static ICCloudSyncingObject.activityEvent(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42270);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  static ICCloudSyncingObject.persistedActivityEvent(for:)(a1, &v15 - v8);
  v10 = type metadata accessor for PersistedActivityEvent();
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) != 1)
  {
    *(&v16 + 1) = v10;
    v17 = &protocol witness table for PersistedActivityEvent;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
    sub_215074144(v9, boxed_opaque_existential_1, type metadata accessor for PersistedActivityEvent);
    return sub_214D7A458(&v15, a2);
  }

  sub_214F302D4(v9, &qword_27CA42270);
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  static ICCloudSyncingObject.fallbackActivityEvent(for:)(a1, v6);
  v11 = type metadata accessor for FallbackActivityEvent();
  if ((*(*(v11 - 8) + 48))(v6, 1, v11) != 1)
  {
    *(a2 + 24) = v11;
    *(a2 + 32) = &protocol witness table for FallbackActivityEvent;
    v14 = __swift_allocate_boxed_opaque_existential_1(a2);
    result = sub_215074144(v6, v14, type metadata accessor for FallbackActivityEvent);
    if (!*(&v16 + 1))
    {
      return result;
    }

    return sub_214F302D4(&v15, &qword_27CA44AB8);
  }

  result = sub_214F302D4(v6, &qword_27CA44AB0);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  if (*(&v16 + 1))
  {
    return sub_214F302D4(&v15, &qword_27CA44AB8);
  }

  return result;
}

uint64_t ICCloudSyncingObject.persistedActivityEventsPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AC0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AC8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  swift_getKeyPath();
  sub_2150A3610();

  sub_214F43BCC(&qword_27CA44AD0, &qword_27CA44AC0);
  sub_2150A43D0();
  (*(v1 + 8))(v3, v0);
  sub_214F43BCC(&qword_27CA44AD8, &qword_27CA44AC8);
  v8 = sub_2150A43B0();
  (*(v5 + 8))(v7, v4);
  return v8;
}

void sub_21506C758(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 activityEventsData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2150A37B0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_21506C7C0(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_2150A3790();
  }

  v4 = v3;
  [v2 setActivityEventsData_];
}

uint64_t sub_21506C838@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v36 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = *a1;
  v17 = sub_2150A3960();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = [v16 attachmentModel];
  objc_opt_self();
  v37 = v18;
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {

    v31 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v20 = v19;
  v33 = a3;
  v34 = v3;
  v39 = MEMORY[0x277D84F90];
  v35 = [v19 table];
  v32 = v15;
  sub_214F43C14(v15, v13, &qword_27CA41DD0);
  sub_214F43C14(v36, v10, &qword_27CA41DD0);
  v21 = *(v7 + 80);
  v22 = (v21 + 40) & ~v21;
  v23 = (v8 + v21 + v22) & ~v21;
  v24 = swift_allocObject();
  v24[2] = v20;
  v24[3] = v16;
  v24[4] = &v39;
  sub_214FB6CE4(v13, v24 + v22, &qword_27CA41DD0);
  sub_214FB6CE4(v10, v24 + v23, &qword_27CA41DD0);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_214FB6C1C;
  *(v25 + 24) = v24;
  aBlock[4] = sub_215074214;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21506A584;
  aBlock[3] = &block_descriptor_43_0;
  v26 = _Block_copy(aBlock);
  v27 = v37;
  v28 = v16;

  v29 = v35;
  [v35 enumerateColumnsWithBlock_];

  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if ((v26 & 1) == 0)
  {
    v31 = v39;

    a3 = v33;
    v15 = v32;
LABEL_5:
    result = sub_214F302D4(v15, &qword_27CA41DD0);
    *a3 = v31;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_21506CBF8(uint64_t a1)
{
  v2 = type metadata accessor for NoteEditActivityEvent(0);
  if (*(a1 + *(v2 + 28)) && *(a1 + *(v2 + 28)) != 1)
  {

    goto LABEL_6;
  }

  v3 = sub_2150A6270();

  if (v3)
  {
LABEL_6:
    v4 = 1;
    return v4 & 1;
  }

  sub_2150A3960();
  sub_215073820(&qword_27CA44B10, MEMORY[0x277CC9578]);
  v4 = sub_2150A4A30() ^ 1;
  return v4 & 1;
}

uint64_t ICCloudSyncingObject.editActivityEventsPublisher.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AE0);
  v20 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - v3;
  v5 = sub_2150A5670();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AE8);
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AF0);
  v22 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v15 = [objc_opt_self() defaultCenter];
    sub_2150A5680();

    *(swift_allocObject() + 16) = v1;
    sub_215073820(&qword_27CA44A78, MEMORY[0x277CC9DB0]);
    v16 = v1;
    sub_2150A43E0();

    (*(v6 + 8))(v8, v5);
    sub_214F43BCC(&qword_27CA44B00, &qword_27CA44AE8);
    sub_2150A43D0();
    (*(v21 + 8))(v11, v9);
    sub_214F43BCC(&qword_27CA44B08, &qword_27CA44AF0);
    v17 = sub_2150A43B0();
    (*(v22 + 8))(v14, v12);
  }

  else
  {
    sub_2150A43A0();
    sub_214F43BCC(&qword_27CA44AF8, &qword_27CA44AE0);
    v17 = sub_2150A43B0();
    (*(v20 + 8))(v4, v2);
  }

  return v17;
}

uint64_t sub_21506D1B8(uint64_t a1, void *a2)
{
  sub_2150A30C0();
  if (v10)
  {
    sub_214D55670(0, &qword_27CA44A80);
    if (swift_dynamicCast())
    {
      v3 = v8;
      goto LABEL_6;
    }
  }

  else
  {
    sub_214F302D4(v9, &qword_27CA42178);
  }

  v3 = 0;
LABEL_6:
  v4 = [a2 objectID];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      sub_214D55670(0, &qword_27CA44A80);
      v6 = sub_2150A5780();
    }

    else
    {
      v6 = 0;
    }

    v5 = v3;
  }

  else
  {
    if (!v4)
    {
      v6 = 1;
      return v6 & 1;
    }

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t ICCloudSyncingObject.sharedRootActivityEventsPublisher.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AC8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  if ([v1 isSharedViaICloud] && (objc_msgSend(v1, sel_isSharedRootObject) & 1) == 0 && (v14 = objc_msgSend(v1, sel_sharedRootObject)) != 0)
  {
    v15 = v14;
    swift_getKeyPath();
    sub_2150A3610();

    sub_214F43BCC(&qword_27CA44AD0, &qword_27CA44AC0);
    sub_2150A43D0();
    (*(v7 + 8))(v9, v6);
    sub_214F43BCC(&qword_27CA44AD8, &qword_27CA44AC8);
    v16 = sub_2150A43B0();

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_2150A43A0();
    sub_214F43BCC(&qword_27CA44AF8, &qword_27CA44AE0);
    v16 = sub_2150A43B0();
    (*(v3 + 8))(v5, v2);
  }

  return v16;
}

uint64_t ICCloudSyncingObject.shareTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v56 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v56 - v12;
  MEMORY[0x28223BE20](v11);
  v62 = &v56 - v14;
  v15 = sub_2150A3960();
  v64 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v59 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v60 = &v56 - v19;
  MEMORY[0x28223BE20](v18);
  v61 = &v56 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42270);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v56 - v22;
  v24 = type metadata accessor for PersistedActivityEvent();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v2 isSharedViaICloud])
  {
    v33 = *(v64 + 56);

    return v33(a1, 1, 1, v15);
  }

  v57 = v15;
  v58 = a1;
  if (([v2 isSharedRootObject] & 1) == 0)
  {
    v35 = ICCloudSyncingObject.persistedActivityEvents.getter();
    if (*(v35 + 16))
    {
      sub_214F6163C(v35 + 32, v65);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10);
      v36 = swift_dynamicCast();
      (*(v25 + 56))(v23, v36 ^ 1u, 1, v24);
      if ((*(v25 + 48))(v23, 1, v24) != 1)
      {
        sub_215074144(v23, v27, type metadata accessor for PersistedActivityEvent);
        if (PersistedActivityEvent.Activities.isAddActivity.getter())
        {
          v38 = v57;
          v37 = v58;
          (*(v64 + 16))(v58, v27, v57);
          sub_2150742A4(v27, type metadata accessor for PersistedActivityEvent);
          return (*(v64 + 56))(v37, 0, 1, v38);
        }

        sub_2150742A4(v27, type metadata accessor for PersistedActivityEvent);
LABEL_16:
        v40 = [v2 serverShareCheckingParent];
        if (v40)
        {
          v41 = v40;
          v42 = [v40 creationDate];

          if (v42)
          {
            sub_2150A3930();

            v43 = 0;
          }

          else
          {
            v43 = 1;
          }

          v46 = *(v64 + 56);
          v47 = v57;
          v46(v13, v43, 1, v57);
          v44 = v62;
          sub_214FB6CE4(v13, v62, &qword_27CA41DD0);
          if ((*(v64 + 48))(v44, 1, v47) != 1)
          {
            v48 = *(v64 + 32);
            v49 = v61;
            v48(v61, v44, v47);
            v50 = [v2 parentCloudObjectModificationDate];
            if (v50)
            {
              v51 = v59;
              v52 = v50;
              sub_2150A3930();

              v53 = v60;
              v48(v60, v51, v47);
              sub_215073820(&qword_27CA44B10, MEMORY[0x277CC9578]);
              LOBYTE(v52) = sub_2150A4A30();
              v54 = *(v64 + 8);
              v64 += 8;
              v54(v53, v47);
              if ((v52 & 1) == 0)
              {
                v55 = v58;
                v48(v58, v49, v47);
                return (v46)(v55, 0, 1, v47);
              }

              v54(v49, v47);
            }

            else
            {
              (*(v64 + 8))(v49, v47);
            }

            return sub_21506EA3C(v2, ObjectType, v58);
          }
        }

        else
        {
          v44 = v62;
          (*(v64 + 56))(v62, 1, 1, v57);
        }

        sub_214F302D4(v44, &qword_27CA41DD0);
        return sub_21506EA3C(v2, ObjectType, v58);
      }
    }

    else
    {

      (*(v25 + 56))(v23, 1, 1, v24);
    }

    sub_214F302D4(v23, &qword_27CA42270);
    goto LABEL_16;
  }

  v28 = [v2 serverShare];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 creationDate];

    v31 = v57;
    if (v30)
    {
      sub_2150A3930();

      v32 = *(v64 + 56);
      v32(v7, 0, 1, v31);
    }

    else
    {
      v32 = *(v64 + 56);
      v32(v7, 1, 1, v57);
    }

    v39 = v58;
    sub_214FB6CE4(v7, v10, &qword_27CA41DD0);
    if ((*(v64 + 48))(v10, 1, v31) != 1)
    {
      v45 = *(v64 + 32);
      v64 += 32;
      v45(v39, v10, v31);
      return (v32)(v39, 0, 1, v31);
    }
  }

  else
  {
    v31 = v57;
    (*(v64 + 56))(v10, 1, 1, v57);
    v39 = v58;
  }

  sub_21506EA3C(v2, ObjectType, v39);
  result = (*(v64 + 48))(v10, 1, v31);
  if (result != 1)
  {
    return sub_214F302D4(v10, &qword_27CA41DD0);
  }

  return result;
}

unint64_t sub_21506E05C@<X0>(uint64_t a1@<X8>)
{
  result = ICCloudSyncingObject.cloudSyncingObjectActivityEvents.getter();
  if (result >> 62)
  {
    v9 = result;
    v10 = sub_2150A59D0();
    result = v9;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_9:

    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    goto LABEL_10;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216062780](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(result + 32);
  }

  v4 = v3;

  v5 = v4;
  static ICCloudSyncingObject.activityEvent(for:)(v5, &v12);

  v6 = *(&v13 + 1);
  if (*(&v13 + 1))
  {
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    (*(v7 + 8))(v6, v7);
    v8 = sub_2150A3960();
    (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_0(&v12);
  }

LABEL_10:
  sub_214F302D4(&v12, &qword_27CA44AB8);
  v11 = sub_2150A3960();
  return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

void sub_21506E220(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = sub_2150A3960();
  v4 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for NoteEditActivityEvent(0);
  v7 = *(v75 - 8);
  v8 = MEMORY[0x28223BE20](v75);
  v80 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v76 = &v70 - v11;
  MEMORY[0x28223BE20](v10);
  v82 = &v70 - v12;
  v13 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v70 - v20;
  objc_opt_self();
  v22 = a1;
  v23 = swift_dynamicCastObjCClass();
  v73 = v4;
  v24 = v4 + 56;
  v25 = *(v4 + 56);
  if (v23)
  {
    v70 = a2;
    v26 = v15;
    v27 = v23;
    v28 = v81;
    v78 = v25;
    v79 = v24;
    v25(v21, 1, 1, v81);
    v78(v19, 1, 1, v28);
    v29 = v22;
    v30 = [v27 mergeableString];
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    v74 = v27;
    if (v31)
    {
      v32 = v31;
      *v26 = v27;
      swift_storeEnumTagMultiPayload();
      v33 = v29;
      v34 = _s11NotesShared21NoteEditActivityEventV6events3for2in14afterTimestamp06recentK0SayACGSo29ICTTMergeableAttributedStringC_AC7ParentsO10Foundation4DateVSgAQtFZ_0(v32, v26, v21, v19);

      sub_2150742A4(v26, type metadata accessor for NoteEditActivityEvent.Parents);
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    sub_214F302D4(v19, &qword_27CA41DD0);
    sub_214F302D4(v21, &qword_27CA41DD0);
    v36 = *(v34 + 16);
    v71 = v7;
    v72 = v29;
    v37 = v34;
    v79 = v36;
    if (v36)
    {
      v38 = 0;
      v77 = MEMORY[0x277D84F90];
      v78 = v34;
      v39 = v73;
      v40 = v75;
      while (1)
      {
        if (v38 >= v37[2])
        {
          __break(1u);
          return;
        }

        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v42 = *(v7 + 72);
        v43 = v82;
        sub_21507423C(v37 + v41 + v42 * v38, v82, type metadata accessor for NoteEditActivityEvent);
        if (!*(v43 + *(v40 + 28)))
        {
          break;
        }

        v44 = sub_2150A6270();

        if (v44)
        {
          goto LABEL_17;
        }

        sub_2150742A4(v82, type metadata accessor for NoteEditActivityEvent);
LABEL_11:
        v37 = v78;
        if (v79 == ++v38)
        {
          goto LABEL_34;
        }
      }

LABEL_17:
      v45 = (v82 + *(v40 + 24));
      v47 = *v45;
      v46 = v45[1];

      v48 = [v74 cloudAccount];
      if (v48)
      {
        v49 = v6;
        v50 = v48;
        v51 = [v48 userRecordName];

        v52 = sub_2150A4AD0();
        v54 = v53;

        if (v47 == v52 && v46 == v54)
        {

          v29 = v72;
          v39 = v73;
          v6 = v49;
          v7 = v71;
LABEL_31:
          sub_2150742A4(v82, type metadata accessor for NoteEditActivityEvent);
LABEL_32:
          v40 = v75;
          goto LABEL_11;
        }

        v56 = sub_2150A6270();

        v29 = v72;
        v39 = v73;
        v6 = v49;
        v7 = v71;
        if (v56)
        {
          goto LABEL_31;
        }
      }

      else
      {
      }

      sub_215074144(v82, v76, type metadata accessor for NoteEditActivityEvent);
      v57 = v77;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_214F86E88(0, *(v57 + 16) + 1, 1);
        v57 = v83;
      }

      v60 = *(v57 + 16);
      v59 = *(v57 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_214F86E88(v59 > 1, v60 + 1, 1);
        v57 = v83;
      }

      *(v57 + 16) = v60 + 1;
      v77 = v57;
      sub_215074144(v76, v57 + v41 + v60 * v42, type metadata accessor for NoteEditActivityEvent);
      goto LABEL_32;
    }

    v77 = MEMORY[0x277D84F90];
    v39 = v73;
LABEL_34:

    v61 = v77;
    v62 = *(v77 + 16);
    if (v62)
    {
      v83 = MEMORY[0x277D84F90];
      sub_214F87010(0, v62, 0);
      v63 = v83;
      v64 = v61 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v65 = *(v71 + 72);
      do
      {
        v66 = v80;
        sub_21507423C(v64, v80, type metadata accessor for NoteEditActivityEvent);
        (*(v39 + 16))(v6, v66, v81);
        sub_2150742A4(v66, type metadata accessor for NoteEditActivityEvent);
        v83 = v63;
        v67 = v6;
        v69 = *(v63 + 16);
        v68 = *(v63 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_214F87010(v68 > 1, v69 + 1, 1);
          v63 = v83;
        }

        *(v63 + 16) = v69 + 1;
        (*(v39 + 32))(v63 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v69, v67, v81);
        v64 += v65;
        --v62;
        v6 = v67;
      }

      while (v62);

      v29 = v72;
    }

    else
    {

      v63 = MEMORY[0x277D84F90];
    }

    sub_214FAD11C(v63, v70);
  }

  else
  {
    v35 = v81;

    v25(a2, 1, 1, v35);
  }
}

uint64_t sub_21506EA3C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v38 = a3;
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v8 = *(v37 - 8);
  v9 = v8;
  v10 = MEMORY[0x28223BE20](v37);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B88);
  v15 = *(v8 + 72);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v34 = swift_allocObject();
  v17 = v34 + v16;
  sub_21506E05C(v34 + v16);
  sub_21506E220(a1, v17 + v15);
  sub_214F43C14(v17, v14, &qword_27CA41DD0);
  sub_214FB6CE4(v14, v12, &qword_27CA41DD0);
  v36 = v5;
  v18 = *(v5 + 48);
  v19 = v18(v12, 1, v4);
  v35 = v7;
  v33 = (v5 + 32);
  if (v19 == 1)
  {
    sub_214F302D4(v12, &qword_27CA41DD0);
    v20 = MEMORY[0x277D84F90];
    v21 = v4;
  }

  else
  {
    v32 = *(v5 + 32);
    v32(v7, v12, v4);
    v20 = MEMORY[0x277D84F90];
    v21 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_2150601EC(0, *(v20 + 2) + 1, 1, v20);
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_2150601EC(v22 > 1, v23 + 1, 1, v20);
    }

    *(v20 + 2) = v23 + 1;
    v32(&v20[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v23], v35, v21);
  }

  sub_214F43C14(v17 + v15, v14, &qword_27CA41DD0);
  sub_214FB6CE4(v14, v12, &qword_27CA41DD0);
  if (v18(v12, 1, v21) == 1)
  {
    sub_214F302D4(v12, &qword_27CA41DD0);
  }

  else
  {
    v24 = *v33;
    v25 = v21;
    v26 = v35;
    v27 = v25;
    (*v33)(v35, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_2150601EC(0, *(v20 + 2) + 1, 1, v20);
    }

    v29 = *(v20 + 2);
    v28 = *(v20 + 3);
    if (v29 >= v28 >> 1)
    {
      v20 = sub_2150601EC(v28 > 1, v29 + 1, 1, v20);
    }

    *(v20 + 2) = v29 + 1;
    (v24)(&v20[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v29], v26, v27);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_214FAD11C(v20, v38);
}

unint64_t sub_21506EEC8()
{
  if ([v0 checklistItemToActivityEventsStorage])
  {
    sub_2150A58F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_214F302D4(v7, &qword_27CA42178);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44B70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v1 = sub_21506EFF4();
    goto LABEL_9;
  }

  v1 = v4;
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10);
  v2 = sub_2150A4910();
  [v0 setChecklistItemToActivityEventsStorage_];

  return v1;
}

unint64_t sub_21506EFF4()
{
  v0 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v0);
  v2 = v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2150A3A00();
  v3 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42270);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v41 - v6;
  v8 = type metadata accessor for PersistedActivityEvent();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44928);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v49 = (v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v16 = v41 - v15;
  v17 = ICCloudSyncingObject.persistedActivityEvents.getter();
  v18 = *(v17 + 16);
  if (v18)
  {
    v41[1] = v17;
    v19 = v3;
    v20 = v17 + 32;
    v21 = (v9 + 56);
    v43 = (v19 + 32);
    v42 = (v19 + 8);
    v22 = MEMORY[0x277D84F90];
    v47 = v0;
    v48 = v2;
    v45 = v7;
    v46 = v8;
    v44 = v21;
    do
    {
      sub_214F6163C(v20, v55);
      sub_214F6163C(v55, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10);
      v23 = swift_dynamicCast();
      v24 = *v21;
      if (v23)
      {
        v24(v7, 0, 1, v8);
        sub_215074144(v7, v11, type metadata accessor for PersistedActivityEvent);
        sub_21507423C(&v11[*(v8 + 28)], v2, type metadata accessor for PersistedActivityEvent.Activities);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v25 = v52;
          v26 = v11;
          v27 = v53;
          (*v43)(v52, v2, v53);
          v28 = *(v51 + 48);
          v29 = v16;
          v30 = v22;
          v31 = sub_2150A3990();
          v33 = v32;
          v34 = v27;
          v11 = v26;
          (*v42)(v25, v34);
          __swift_destroy_boxed_opaque_existential_0(v55);
          v35 = v49;
          *v49 = v31;
          *(v35 + 8) = v33;
          v22 = v30;
          v16 = v29;
          sub_215074144(v11, v35 + v28, type metadata accessor for PersistedActivityEvent);
          sub_214FB6CE4(v35, v29, &qword_27CA44928);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_215060724(0, v22[2] + 1, 1, v22);
          }

          v37 = v22[2];
          v36 = v22[3];
          v8 = v46;
          v7 = v45;
          if (v37 >= v36 >> 1)
          {
            v22 = sub_215060724(v36 > 1, v37 + 1, 1, v22);
          }

          v22[2] = v37 + 1;
          sub_214FB6CE4(v16, v22 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v37, &qword_27CA44928);
          v2 = v48;
          v21 = v44;
        }

        else
        {
          sub_2150742A4(v11, type metadata accessor for PersistedActivityEvent);
          __swift_destroy_boxed_opaque_existential_0(v55);
          sub_2150742A4(v2, type metadata accessor for PersistedActivityEvent.Activities);
        }
      }

      else
      {
        v24(v7, 1, 1, v8);
        __swift_destroy_boxed_opaque_existential_0(v55);
        sub_214F302D4(v7, &qword_27CA42270);
      }

      v20 += 40;
      --v18;
    }

    while (v18);

    if (v22[2])
    {
      goto LABEL_14;
    }

LABEL_16:
    v38 = MEMORY[0x277D84F98];
    goto LABEL_17;
  }

  v22 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_16;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B80);
  v38 = sub_2150A5EA0();
LABEL_17:
  v55[0] = v38;
  sub_2150738D0(v22, 1, v55);

  v39 = sub_214FE0954(v55[0]);

  return v39;
}

uint64_t ICCloudSyncingObject.timestampForChecklistItem(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21506EEC8();
  if (*(v6 + 16) && (v7 = sub_214F30094(a1, a2), (v8 & 1) != 0))
  {
    sub_214F6163C(*(v6 + 56) + 40 * v7, v15);

    v9 = v16;
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v10 + 8))(v9, v10);
    v11 = sub_2150A3960();
    (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {

    v13 = sub_2150A3960();
    v14 = *(*(v13 - 8) + 56);

    return v14(a3, 1, 1, v13);
  }
}

Swift::String_optional __swiftcall ICCloudSyncingObject.userIdForChecklistItem(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v3 = sub_21506EEC8();
  if (*(v3 + 16) && (v4 = sub_214F30094(countAndFlagsBits, object), (v5 & 1) != 0))
  {
    sub_214F6163C(*(v3 + 56) + 40 * v4, v14);

    v6 = v15;
    v7 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v7 + 48))(v13, v6, v7);
    v8 = v13[0];
    v9 = v13[1];

    __swift_destroy_boxed_opaque_existential_0(v14);
    v10 = v9;
    v11 = v8;
  }

  else
  {

    v11 = 0;
    v10 = 0;
  }

  result.value._object = v10;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t ICCloudSyncingObject.supports(_:)(uint64_t a1)
{
  v3 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v3);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [v1 isSharedViaICloud];
  if (v6)
  {
    v7 = type metadata accessor for PersistedActivityEvent();
    sub_21507423C(a1 + *(v7 + 28), v5, type metadata accessor for PersistedActivityEvent.Activities);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload < 6)
      {
        sub_2150742A4(v5, type metadata accessor for PersistedActivityEvent.Activities);
LABEL_5:
        LOBYTE(v6) = [v1 isSharedRootObject];
        return v6 & 1;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v23 = sub_2150A3A00();
        (*(*(v23 - 8) + 8))(v5, v23);
      }

      else
      {
        if (EnumCaseMultiPayload != 7)
        {
          if (*(a1 + *(v7 + 20)))
          {
LABEL_39:
            v24 = sub_2150A6270();

            LOBYTE(v6) = v24;
            return v6 & 1;
          }

LABEL_40:

          LOBYTE(v6) = 1;
          return v6 & 1;
        }

        sub_2150742A4(v5, type metadata accessor for PersistedActivityEvent.Activities);
      }

      if (*(a1 + *(v7 + 20)) != 1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_2150742A4(v5, type metadata accessor for PersistedActivityEvent.Activities);
LABEL_47:
      LOBYTE(v6) = [v1 isSharedRootObject] ^ 1;
      return v6 & 1;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v9 = v5[2];
      v10 = v5[5];
      if (v9 | v10)
      {
        if (v9)
        {
          if (v10)
          {
            v11 = *v5;
            v12 = v5[1];
            v13 = v5[3];
            v14 = v5[4];
            if (v11)
            {
              v15 = 1702129518;
            }

            else
            {
              v15 = 0x7265646C6F66;
            }

            if (v11)
            {
              v16 = 0xE400000000000000;
            }

            else
            {
              v16 = 0xE600000000000000;
            }

            if (v13)
            {
              v17 = 1702129518;
            }

            else
            {
              v17 = 0x7265646C6F66;
            }

            if (v13)
            {
              v18 = 0xE400000000000000;
            }

            else
            {
              v18 = 0xE600000000000000;
            }

            if (v15 == v17 && v16 == v18)
            {

              swift_bridgeObjectRetain_n();
            }

            else
            {
              v20 = sub_2150A6270();

              swift_bridgeObjectRetain_n();

              if ((v20 & 1) == 0)
              {

                swift_bridgeObjectRelease_n();
LABEL_46:

                goto LABEL_47;
              }
            }

            if (v12 == v14 && v9 == v10)
            {

              swift_bridgeObjectRelease_n();
            }

            else
            {
              v27 = sub_2150A6270();

              swift_bridgeObjectRelease_n();
              if ((v27 & 1) == 0)
              {
                goto LABEL_46;
              }
            }

LABEL_57:

            LOBYTE(v6) = 0;
            return v6 & 1;
          }
        }

        else
        {
          if (!v10)
          {
            goto LABEL_57;
          }
        }

        if (!v10)
        {
          goto LABEL_5;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v21 = v5[5];
      v22 = v5[8];

      if (v21)
      {

        goto LABEL_46;
      }

      if (v22)
      {
        goto LABEL_46;
      }
    }

    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

objc_class *ICCloudSyncingObject.persist(activity:for:timestamp:)(uint64_t a1, ICCloudSyncingObject *a2, uint64_t a3)
{
  v30 = a3;
  v31 = a1;
  v5 = sub_2150A3960();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PersistedActivityEvent();
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2;
  if (!a2)
  {
    v12 = v3;
  }

  v13 = a2;
  ActivityEventParticipant.init(cloudSyncingObject:)(&v32, v12);
  object = v32.value.recordName._object;
  if (v32.value.recordName._object)
  {
    countAndFlagsBits = v32.value.recordName._countAndFlagsBits;
    v28 = v32.value.mentionRecordName.value._countAndFlagsBits;
    v29 = v3;
    v16 = v13;
    v27 = v32.value.mentionRecordName.value._object;
    if (!a2)
    {
      v16 = v29;
    }

    v17 = v13;
    v33 = ActivityEventObject.init(cloudSyncingObject:)(v16);
    v18 = v32.value.mentionRecordName.value._countAndFlagsBits;
    if (v32.value.mentionRecordName.value._countAndFlagsBits)
    {
      v19 = v32.value.recordName._object;
      v20 = v32.value.recordName._countAndFlagsBits;
      (*(v6 + 16))(v8, v30, v5, *&v33.is_nil);
      sub_21507423C(v31, &v11[v9[7]], type metadata accessor for PersistedActivityEvent.Activities);
      _s10Foundation4DateV11NotesSharedE15defaultArgumentACvgZ_0();
      (*(v6 + 40))(v11, v8, v5);
      v21 = &v11[v9[5]];
      *v21 = v20 & 1;
      *(v21 + 1) = v19;
      *(v21 + 2) = v18;
      v22 = &v11[v9[6]];
      *v22 = countAndFlagsBits;
      v22[1] = object;
      v23 = v27;
      v22[2] = v28;
      v22[3] = v23;
      v24 = ICCloudSyncingObject.persist(activityEvent:)(v11);
      sub_2150742A4(v11, type metadata accessor for PersistedActivityEvent);
      return v24;
    }

    sub_21507388C(countAndFlagsBits, object);
  }

  return 0;
}

objc_class *ICCloudSyncingObject.persist(activityEvent:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for PersistedActivityEvent();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FallbackActivityEvent();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (ICCloudSyncingObject.supports(_:)(a1))
  {
    sub_21507423C(a1, v8, type metadata accessor for PersistedActivityEvent);
    FallbackActivityEvent.init(activityEvent:)(v8, v12);
    sub_21507423C(v12, v5, type metadata accessor for FallbackActivityEvent);
    (*(v10 + 56))(v5, 0, 1, v9);
    v13 = _sSo20ICCloudSyncingObjectC11NotesSharedE05cloudbC13ActivityEvent3for8fallbackSo0abcgH0CSgAC09PersistedgH0V_AC08FallbackgH0VSgtFZ_0();
    sub_214F302D4(v5, &qword_27CA44AB0);
    if (v13)
    {
      v14.super.isa = v13;
      ICCloudSyncingObject.add(cloudSyncingObjectActivityEvent:)(v14);
    }

    sub_2150742A4(v12, type metadata accessor for FallbackActivityEvent);
  }

  else
  {
    if (qword_280C23378 != -1)
    {
      swift_once();
    }

    v15 = sub_2150A3F30();
    __swift_project_value_buffer(v15, qword_280C23380);
    v16 = v1;
    v17 = sub_2150A3F10();
    v18 = sub_2150A5550();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = [v16 objectID];
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&dword_214D51000, v17, v18, "Activity is not supported — skipping {objectID: %@}", v19, 0xCu);
      sub_214F302D4(v20, &qword_27CA41DF0);
      MEMORY[0x216064AF0](v20, -1, -1);
      MEMORY[0x216064AF0](v19, -1, -1);
    }

    return 0;
  }

  return v13;
}

Swift::Void __swiftcall ICCloudSyncingObject.add(cloudSyncingObjectActivityEvent:)(ICCloudSyncingObjectActivityEvent cloudSyncingObjectActivityEvent)
{
  isa = cloudSyncingObjectActivityEvent.super.isa;
  v3 = [v1 activityEventsDocument];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 orderedSet];

    [v5 addObject_];
  }

  v6 = [v1 activityEventsDocument];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 serialize];

    v9 = sub_2150A37B0();
    v11 = v10;

    v12 = sub_2150A3790();
    sub_214F7EDE4(v9, v11);
  }

  else
  {
    v12 = 0;
  }

  [v1 setActivityEventsData_];

  v13 = sub_2150A4A90();
  [v1 updateChangeCountWithReason_];
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistCreateActivityEvent(forObject:inParentObject:)(ICCloudSyncingObject *forObject, ICCloudSyncingObject_optional *inParentObject)
{
  v5 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2150A3960();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v17 = v23 - v16;
  if (inParentObject && (*&(&v13)[-1] = ActivityEventObject.init(cloudSyncingObject:)(inParentObject), (v18 = v27) != 0))
  {
    v23[0] = v26;
    v24 = forObject;
    v19 = v25;
    sub_2150A3950();
    v23[1] = v2;
    sub_2150A38E0();
    v20 = *(v9 + 8);
    v20(v12, v8);
    *v7 = v19 & 1;
    *(v7 + 1) = v23[0];
    *(v7 + 2) = v18;
    swift_storeEnumTagMultiPayload();
    v21 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v7, v24, v17);
    sub_2150742A4(v7, type metadata accessor for PersistedActivityEvent.Activities);
    v20(v17, v8);
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  result.value._fallbackData = v14;
  result.value._data = v13;
  result.value.super.isa = v22;
  result.is_nil = v15;
  return result;
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistMoveActivityEvent(forObject:fromParentObject:toParentObject:)(ICCloudSyncingObject *forObject, ICCloudSyncingObject_optional *fromParentObject, ICCloudSyncingObject_optional *toParentObject)
{
  v6 = sub_2150A3960();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!fromParentObject)
  {
    v13 = 0uLL;
    if (toParentObject)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    v14 = 0uLL;
    goto LABEL_6;
  }

  ActivityEventObject.init(cloudSyncingObject:)(fromParentObject);
  v13 = v22;
  fromParentObject = v23;
  if (!toParentObject)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21 = v13;
  ActivityEventObject.init(cloudSyncingObject:)(toParentObject);
  v13 = v21;
  v14 = v22;
  v15 = v23;
LABEL_6:
  *v12 = v13;
  *(v12 + 2) = fromParentObject;
  *(v12 + 24) = v14;
  *(v12 + 5) = v15;
  swift_storeEnumTagMultiPayload();
  sub_2150A3950();
  v16 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v12, forObject, v9);
  (*(v7 + 8))(v9, v6);
  sub_2150742A4(v12, type metadata accessor for PersistedActivityEvent.Activities);
  v20 = v16;
  result.value._fallbackData = v18;
  result.value._data = v17;
  result.value.super.isa = v20;
  result.is_nil = v19;
  return result;
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistCopyActivityEvent(forObject:originalObject:fromParentObject:toParentObject:)(ICCloudSyncingObject *forObject, ICCloudSyncingObject *originalObject, ICCloudSyncingObject_optional *fromParentObject, ICCloudSyncingObject_optional *toParentObject)
{
  v9 = sub_2150A3960();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = ActivityEventObject.init(cloudSyncingObject:)(originalObject);
  v16 = v27;
  if (v27)
  {
    v24 = forObject;
    v25 = v4;
    v17 = v26;
    if (fromParentObject)
    {
      ActivityEventObject.init(cloudSyncingObject:)(fromParentObject);
      v18 = v26;
      fromParentObject = v27;
      if (toParentObject)
      {
LABEL_4:
        v23 = v18;
        ActivityEventObject.init(cloudSyncingObject:)(toParentObject);
        v18 = v23;
        v19 = v26;
        v20 = v27;
LABEL_8:
        *v15 = v17 & 1;
        *(v15 + 1) = *(&v17 + 1);
        *(v15 + 2) = v16;
        *(v15 + 24) = v18;
        *(v15 + 5) = fromParentObject;
        *(v15 + 3) = v19;
        *(v15 + 8) = v20;
        swift_storeEnumTagMultiPayload();
        sub_2150A3950();
        v21 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v15, v24, v12);
        (*(v10 + 8))(v12, v9);
        sub_2150742A4(v15, type metadata accessor for PersistedActivityEvent.Activities);
        goto LABEL_9;
      }
    }

    else
    {
      v18 = 0uLL;
      if (toParentObject)
      {
        goto LABEL_4;
      }
    }

    v20 = 0;
    v27 = 0;
    v19 = 0uLL;
    v26 = 0u;
    goto LABEL_8;
  }

  v21 = 0;
LABEL_9:
  v22 = v21;
  result.is_nil = v29.is_nil;
  result.value._fallbackData = v29.value.recordName._object;
  result.value._data = v29.value.recordName._countAndFlagsBits;
  result.value.super.isa = v22;
  return result;
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistRenameActivityEvent(forObject:)(ICCloudSyncingObject *forObject)
{
  v2 = sub_2150A3960();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_2150A3950();
  v9 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v8, forObject, v5);
  (*(v3 + 8))(v5, v2);
  sub_2150742A4(v8, type metadata accessor for PersistedActivityEvent.Activities);
  v13 = v9;
  result.value._fallbackData = v11;
  result.value._data = v10;
  result.value.super.isa = v13;
  result.is_nil = v12;
  return result;
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistDeleteActivityEvent(forObject:fromParentObject:)(ICCloudSyncingObject *forObject, ICCloudSyncingObject_optional *fromParentObject)
{
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v8);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (fromParentObject && (*&(&v9)[-1] = ActivityEventObject.init(cloudSyncingObject:)(fromParentObject), (v14 = v20) != 0))
  {
    v15 = v19;
    *v13 = v18[8] & 1;
    *(v13 + 1) = v15;
    *(v13 + 2) = v14;
    swift_storeEnumTagMultiPayload();
    sub_2150A3950();
    v16 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v13, forObject, v7);
    (*(v5 + 8))(v7, v4);
    sub_2150742A4(v13, type metadata accessor for PersistedActivityEvent.Activities);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  result.value._fallbackData = v10;
  result.value._data = v9;
  result.value.super.isa = v17;
  result.is_nil = v11;
  return result;
}

id sub_215071124(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(id, void *))
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = a5(v8, a4);

  return v11;
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistAddParticipantActivityEvent(forObject:participant:)(ICCloudSyncingObject *forObject, CKShareParticipant participant)
{
  v2 = sub_215071230(forObject, participant.super.isa);
  result.value._fallbackData = v4;
  result.value._data = v3;
  result.value.super.isa = v2;
  result.is_nil = v5;
  return result;
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistRemoveParticipantActivityEvent(forObject:participant:)(ICCloudSyncingObject *forObject, CKShareParticipant participant)
{
  v2 = sub_215071230(forObject, participant.super.isa);
  result.value._fallbackData = v4;
  result.value._data = v3;
  result.value.super.isa = v2;
  result.is_nil = v5;
  return result;
}

objc_class *sub_215071230(ICCloudSyncingObject *a1, void *a2)
{
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  ActivityEventParticipant.init(participant:)(&v15, a2);
  object = v15.value.recordName._object;
  if (!v15.value.recordName._object)
  {
    return 0;
  }

  mentionRecordName = v15.value.mentionRecordName;
  v10->value._countAndFlagsBits = v15.value.recordName._countAndFlagsBits;
  v10->value._object = object;
  v10[1] = mentionRecordName;
  swift_storeEnumTagMultiPayload();
  sub_2150A3950();
  v13 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v10, a1, v7);
  (*(v5 + 8))(v7, v4);
  sub_2150742A4(v10, type metadata accessor for PersistedActivityEvent.Activities);
  return v13;
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistToggleChecklistItemActivityEvent(forObject:todo:)(ICCloudSyncingObject *forObject, ICTTTodo todo)
{
  isa = todo.super.isa;
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B20) + 48);
  v12 = [(objc_class *)isa uuid];
  sub_2150A39C0();

  v10[v11] = [(objc_class *)isa done];
  swift_storeEnumTagMultiPayload();
  sub_2150A3950();
  v13 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v10, forObject, v7);
  (*(v5 + 8))(v7, v4);
  sub_2150742A4(v10, type metadata accessor for PersistedActivityEvent.Activities);
  v17 = v13;
  result.value._fallbackData = v15;
  result.value._data = v14;
  result.value.super.isa = v17;
  result.is_nil = v16;
  return result;
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistMentionActivityEvent(forObject:mentionAttachments:)(ICCloudSyncingObject *forObject, Swift::OpaquePointer mentionAttachments)
{
  v38 = forObject;
  v4 = sub_2150A3960();
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v34);
  v35 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!(mentionAttachments._rawValue >> 62))
  {
    v7 = *((mentionAttachments._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_24:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v7 = sub_2150A59D0();
  if (!v7)
  {
    goto LABEL_24;
  }

LABEL_3:
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = v8;
    while (1)
    {
      if ((mentionAttachments._rawValue & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x216062780](v10, mentionAttachments._rawValue);
        v8 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v10 >= *((mentionAttachments._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v11 = *(mentionAttachments._rawValue + v10 + 4);
        v8 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      ActivityEventParticipant.init(mentionAttachment:)(&v39, v11);
      object = v39.value.recordName._object;
      if (v39.value.recordName._object)
      {
        break;
      }

      sub_21507388C(v39.value.recordName._countAndFlagsBits, 0);
      ++v10;
      if (v8 == v7)
      {
        goto LABEL_25;
      }
    }

    v30 = v2;
    v32 = v39.value.mentionRecordName.value._object;
    countAndFlagsBits = v39.value.recordName._countAndFlagsBits;
    v13 = v39.value.mentionRecordName.value._countAndFlagsBits;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_21505FC18(0, *(v9 + 2) + 1, 1, v9);
    }

    v16 = *(v9 + 2);
    v15 = *(v9 + 3);
    v17 = v32;
    v18 = countAndFlagsBits;
    if (v16 >= v15 >> 1)
    {
      v21 = sub_21505FC18((v15 > 1), v16 + 1, 1, v9);
      v19 = v13;
      v17 = v32;
      v18 = countAndFlagsBits;
      v9 = v21;
    }

    else
    {
      v19 = v13;
    }

    *(v9 + 2) = v16 + 1;
    v20 = &v9[32 * v16];
    *(v20 + 4) = v18;
    *(v20 + 5) = object;
    *(v20 + 6) = v19;
    *(v20 + 7) = v17;
    v2 = v30;
    v4 = v31;
  }

  while (v8 != v7);
LABEL_25:
  if (*(v9 + 2))
  {
    v22 = v35;
    *v35 = v9;
    swift_storeEnumTagMultiPayload();
    v23 = v36;
    sub_2150A3950();
    v24 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v22, v38, v23);
    (*(v37 + 8))(v23, v4);
    sub_2150742A4(v22, type metadata accessor for PersistedActivityEvent.Activities);
  }

  else
  {

    v24 = 0;
  }

  v28 = v24;
  result.value._fallbackData = v26;
  result.value._data = v25;
  result.value.super.isa = v28;
  result.is_nil = v27;
  return result;
}

uint64_t sub_215071C00(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t static ICCloudSyncingObject.persistedActivityEvent(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27CA417E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for PersistedActivityEvent();
  v5 = [a1 data];
  v6 = sub_2150A37B0();
  v8 = v7;

  sub_215073820(&qword_27CA44B28, type metadata accessor for PersistedActivityEvent);
  sub_2150A2F60();
  sub_214F7EDE4(v6, v8);
  v9 = *(*(v4 - 8) + 56);

  return v9(a2, 0, 1, v4);
}

uint64_t static ICCloudSyncingObject.fallbackActivityEvent(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 fallbackData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2150A37B0();
    v7 = v6;

    if (qword_27CA417E8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for FallbackActivityEvent();
    sub_215073820(&unk_27CA44B30, type metadata accessor for FallbackActivityEvent);
    sub_2150A2F60();
    sub_214F7EDE4(v5, v7);
    v14 = *(*(v8 - 8) + 56);
    v15 = a2;
    v16 = 0;
    v17 = v8;
  }

  else
  {
    if (qword_280C23378 != -1)
    {
      swift_once();
    }

    v9 = sub_2150A3F30();
    __swift_project_value_buffer(v9, qword_280C23380);
    v10 = sub_2150A3F10();
    v11 = sub_2150A5550();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_214D51000, v10, v11, "Cloud syncing activity event doesn't have fallback data — returning nil", v12, 2u);
      MEMORY[0x216064AF0](v12, -1, -1);
    }

    v13 = type metadata accessor for FallbackActivityEvent();
    v14 = *(*(v13 - 8) + 56);
    v17 = v13;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void ICCloudSyncingObject.cloudSyncingObjectActivityEvents.setter(unint64_t a1)
{
  v2 = v1;
  v4 = [v1 activityEventsDocument];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 orderedSet];

    [v6 removeAllObjects];
  }

  v7 = [v2 activityEventsDocument];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 orderedSet];

    if (a1 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AA8);
      sub_2150A5E20();
    }

    else
    {
      sub_2150A62D0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AA8);
    v10 = sub_2150A4EB0();

    [v9 addObjectsFromArray_];
  }

  else
  {
  }

  v11 = [v2 activityEventsDocument];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 serialize];

    v14 = sub_2150A37B0();
    v16 = v15;

    v17 = sub_2150A3790();
    sub_214F7EDE4(v14, v16);
  }

  else
  {
    v17 = 0;
  }

  [v2 setActivityEventsData_];

  v18 = sub_2150A4A90();
  [v2 updateChangeCountWithReason_];
}

void (*ICCloudSyncingObject.cloudSyncingObjectActivityEvents.modify(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ICCloudSyncingObject.cloudSyncingObjectActivityEvents.getter();
  return sub_2150725E4;
}

void sub_2150725E4(unint64_t *a1, char a2)
{
  if (a2)
  {

    ICCloudSyncingObject.cloudSyncingObjectActivityEvents.setter(v2);
  }

  else
  {
    ICCloudSyncingObject.cloudSyncingObjectActivityEvents.setter(*a1);
  }
}

Swift::Void __swiftcall ICCloudSyncingObject.removeAllCloudSyncingObjectActivityEvents()()
{
  v1 = [v0 activityEventsDocument];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 orderedSet];

    [v3 removeAllObjects];
  }

  v4 = [v0 activityEventsData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2150A37B0();
    v8 = v7;

    sub_214F7EDE4(v6, v8);
    v9 = [v0 activityEventsDocument];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 serialize];

      v12 = sub_2150A37B0();
      v14 = v13;

      v15 = sub_2150A3790();
      sub_214F7EDE4(v12, v14);
    }

    else
    {
      v15 = 0;
    }

    [v0 setActivityEventsData_];

    v16 = sub_2150A4A90();
    [v0 updateChangeCountWithReason_];
  }
}

uint64_t static ICCloudSyncingObject.removeAllCloudSyncingObjectActivityEventsForUnsharedObjects(in:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_215074024;
  *(v3 + 24) = v2;
  v7[4] = sub_214F3FBD0;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_214F34100;
  v7[3] = &block_descriptor_22;
  v4 = _Block_copy(v7);
  v5 = a1;

  [v5 performBlockAndWait_];
  _Block_release(v4);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_215072984(uint64_t a1)
{
  sub_214D55670(0, &qword_27CA43240);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_214D55670(0, &qword_280C23140);
  v3 = sub_2150A5500();
  v4 = sub_2150A4EB0();
  aBlock[4] = sub_215072B08;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2150017E0;
  aBlock[3] = &block_descriptor_34;
  v5 = _Block_copy(aBlock);

  [ObjCClassFromMetadata ic:v3 enumerateObjectsMatchingPredicate:0 sortDescriptors:v4 relationshipKeyPathsForPrefetching:a1 context:16 batchSize:0 saveAfterBatch:v5 usingBlock:?];

  _Block_release(v5);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

void sub_215072B08(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    if (([v3 isSharedViaICloud] & 1) == 0)
    {
      [v3 objc_removeAllCloudSyncingObjectActivityEvents];
    }
  }
}

uint64_t sub_215072D00(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2150A59D0();
LABEL_9:
  result = sub_2150A5BD0();
  *v1 = result;
  return result;
}

uint64_t sub_215072DA0(void *a1, void *a2)
{
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 8))(v11, v12);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 8))(v13, v14);
  LOBYTE(a1) = sub_2150A3900();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return a1 & 1;
}

uint64_t sub_215072F30(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - v9;
  v11 = *(v5 + 16);
  v11(v14 - v9, a1, v4);
  v11(v8, a2, v4);
  LOBYTE(a2) = sub_2150A3900();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  return a2 & 1;
}

uint64_t sub_215073090(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2150A59D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2150A59D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_214F43BCC(&unk_27CA44BF0, &qword_27CA44BE8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44BE8);
            v9 = sub_214F47F8C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_214D55670(0, &qword_280C24240);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_215073244(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2150A59D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2150A59D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_214F43BCC(&unk_27CA44BD8, &qword_27CA44BD0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44BD0);
            v9 = sub_214F4800C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_214D55670(0, &qword_280C24888);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2150733F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2150A59D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2150A59D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_214F43BCC(&unk_27CA44BC0, &qword_27CA44BB8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44BB8);
            v9 = sub_214F47F8C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ICTTAudioRecording.Fragment();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21507359C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2150A59D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2150A59D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_214F43BCC(&unk_27CA44BA0, &qword_27CA44B98);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B98);
            v9 = sub_214F47F8C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_214D55670(0, &qword_27CA44B90);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_215073750(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_2150A6270() & 1;
    }
  }

  return result;
}

uint64_t sub_215073820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21507388C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2150738D0(uint64_t a1, char a2, void *a3)
{
  v48 = a3;
  v5 = type metadata accessor for PersistedActivityEvent();
  v45 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v41 = &v40 - v9;
  MEMORY[0x28223BE20](v8);
  v47 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44928);
  result = MEMORY[0x28223BE20](v11);
  v46 = (&v40 - v14);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *(result + 48);
    v17 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v43 = *(v13 + 72);
    v44 = v16;
    while (1)
    {
      v23 = v46;
      sub_214F43C14(v17, v46, &qword_27CA44928);
      v25 = *v23;
      v24 = v23[1];
      sub_215074144(v23 + v44, v47, type metadata accessor for PersistedActivityEvent);
      v26 = *v48;
      v28 = sub_214F30094(v25, v24);
      v29 = v26[2];
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        break;
      }

      v32 = v27;
      if (v26[3] >= v31)
      {
        if ((a2 & 1) == 0)
        {
          sub_214FEE69C();
        }
      }

      else
      {
        sub_214FEB820(v31, a2 & 1);
        v33 = sub_214F30094(v25, v24);
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_20;
        }

        v28 = v33;
      }

      v35 = *v48;
      if (v32)
      {
        v18 = *(v45 + 72) * v28;
        v19 = v42;
        sub_21507423C(v35[7] + v18, v42, type metadata accessor for PersistedActivityEvent);
        v20 = v47;
        if (sub_2150A3900())
        {
          v21 = v19;
        }

        else
        {
          v21 = v20;
        }

        v22 = v41;
        sub_21507423C(v21, v41, type metadata accessor for PersistedActivityEvent);
        sub_2150742A4(v19, type metadata accessor for PersistedActivityEvent);
        sub_2150742A4(v20, type metadata accessor for PersistedActivityEvent);

        result = sub_2150740E0(v22, v35[7] + v18);
      }

      else
      {
        v35[(v28 >> 6) + 8] |= 1 << v28;
        v36 = (v35[6] + 16 * v28);
        *v36 = v25;
        v36[1] = v24;
        result = sub_215074144(v47, v35[7] + *(v45 + 72) * v28, type metadata accessor for PersistedActivityEvent);
        v37 = v35[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_19;
        }

        v35[2] = v39;
      }

      v17 += v43;
      a2 = 1;
      if (!--v15)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_2150A63E0();
    __break(1u);
  }

  return result;
}

id _sSo20ICCloudSyncingObjectC11NotesSharedE05cloudbC13ActivityEvent7forData8fallbackSo0abcgH0C10Foundation0J0V_AC08FallbackgH0VSgtFZ_0()
{
  if (qword_27CA417E0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AB0);
  sub_21507402C();
  v0 = sub_2150A2FC0();
  v2 = v1;
  v3 = v0;
  v4 = sub_2150A3790();
  if (v2 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_2150A3790();
    sub_214FE1228(v3, v2);
  }

  v6 = [objc_allocWithZone(ICCloudSyncingObjectActivityEvent) initWithData:v4 fallbackData:v5];

  return v6;
}

id _sSo20ICCloudSyncingObjectC11NotesSharedE05cloudbC13ActivityEvent3for8fallbackSo0abcgH0CSgAC09PersistedgH0V_AC08FallbackgH0VSgtFZ_0()
{
  if (qword_27CA417E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for PersistedActivityEvent();
  sub_215073820(&qword_27CA44B68, type metadata accessor for PersistedActivityEvent);
  v0 = sub_2150A2FC0();
  v2 = v1;
  v3 = _sSo20ICCloudSyncingObjectC11NotesSharedE05cloudbC13ActivityEvent7forData8fallbackSo0abcgH0C10Foundation0J0V_AC08FallbackgH0VSgtFZ_0();
  sub_214F7EDE4(v0, v2);
  return v3;
}

unint64_t sub_21507402C()
{
  result = qword_27CA44B58;
  if (!qword_27CA44B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44AB0);
    sub_215073820(&qword_27CA44B60, type metadata accessor for FallbackActivityEvent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44B58);
  }

  return result;
}

uint64_t sub_2150740E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistedActivityEvent();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_215074144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21507423C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2150742A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_215074380(uint64_t a1)
{
  v2 = sub_21507443C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2150743BC(uint64_t a1)
{
  v2 = sub_21507443C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21507443C()
{
  result = qword_27CA44C08;
  if (!qword_27CA44C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C08);
  }

  return result;
}

void ICTTMergeableString.location(for:affinity:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  [v4 generateIdsForLocalChanges];
  v8 = [objc_opt_self() valueWithRange_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42680);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2150C25D0;
  *(v9 + 56) = sub_215075208();
  *(v9 + 32) = v8;
  v10 = v8;
  v11 = sub_2150A4EB0();

  v12 = [v4 selectionForCharacterRanges:v11 selectionAffinity:a2];

  *a3 = v12;
}

void ICTTMergeableString.canResolveCharacterLocation(for:)(void *a1)
{
  v2 = [v1 characterRangesForSelection_];
  sub_215075208();
  v3 = sub_2150A4ED0();

  if (v3 >> 62)
  {
    if (sub_2150A59D0())
    {
      goto LABEL_3;
    }

LABEL_8:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x216062780](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
LABEL_6:
    v5 = v4;

    [v5 rangeValue];

    return;
  }

  __break(1u);
}

void ICTTMergeableString.characterLocation(for:)(void *a1)
{
  v2 = [v1 characterRangesForSelection_];
  sub_215075208();
  v3 = sub_2150A4ED0();

  if (v3 >> 62)
  {
    if (sub_2150A59D0())
    {
      goto LABEL_3;
    }

LABEL_8:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x216062780](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
LABEL_6:
    v5 = v4;

    [v5 rangeValue];

    return;
  }

  __break(1u);
}

uint64_t sub_215074858()
{
  sub_2150A64B0();
  MEMORY[0x216063080](0);
  return sub_2150A64E0();
}

uint64_t sub_21507489C()
{
  sub_2150A64B0();
  MEMORY[0x216063080](0);
  return sub_2150A64E0();
}

uint64_t sub_2150748DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F697463656C6573 && a2 == 0xE90000000000006ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2150A6270();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21507496C(uint64_t a1)
{
  v2 = sub_215075254();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2150749A8(uint64_t a1)
{
  v2 = sub_215075254();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_215074A28@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X3>, void *a4@<X8>)
{
  v19 = a4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3();
  sub_2150A6590();
  if (!v4)
  {
    v10 = v7;
    sub_214FEED84();
    v11 = v22;
    sub_2150A5FC0();
    v12 = v20;
    v13 = v21;
    v14 = objc_allocWithZone(ICTTMergeableStringSelection);
    v15 = sub_2150A3790();
    v16 = [v14 initWithData_];

    sub_214F7EDE4(v12, v13);
    (*(v10 + 8))(v9, v11);
    *v19 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_215074C4C(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v17 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_2150A65B0();
  v11 = [v10 serialize];
  v12 = sub_2150A37B0();
  v14 = v13;

  v18 = v12;
  v19 = v14;
  sub_214FEED30();
  sub_2150A60A0();
  sub_214F7EDE4(v18, v19);
  return (*(v7 + 8))(v9, v6);
}

id ICTTMergeableString.Selection.location.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 locationOnlySelection];
  *a1 = result;
  return result;
}

uint64_t _sSo19ICTTMergeableStringC11NotesSharedE8LocationV9hashValueSivg_0()
{
  sub_2150A64B0();
  sub_2150A5790();
  return sub_2150A64E0();
}

uint64_t sub_215074E84()
{
  sub_2150A64B0();
  sub_2150A5790();
  return sub_2150A64E0();
}

void ICTTMergeableString.selection(for:affinity:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  [v3 generateIdsForLocalChanges];
  v8 = *(a1 + 16);
  if (v8)
  {
    v19 = MEMORY[0x277D84F90];
    sub_214F86F6C(0, v8, 0);
    v9 = v19;
    v10 = objc_opt_self();
    v11 = (a1 + 40);
    do
    {
      v12 = [v10 valueWithRange_];
      v18 = sub_215075208();
      v19 = v9;
      *&v17 = v12;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_214F86F6C((v13 > 1), v14 + 1, 1);
        v9 = v19;
      }

      v11 += 2;
      *(v9 + 16) = v14 + 1;
      sub_214D72488(&v17, (v9 + 32 * v14 + 32));
      --v8;
    }

    while (v8);
  }

  v15 = sub_2150A4EB0();

  v16 = [v4 selectionForCharacterRanges:v15 selectionAffinity:a2];

  *a3 = v16;
}

BOOL ICTTMergeableString.canResolveCharacterRanges(for:)(uint64_t *a1)
{
  v3 = *a1;
  v1 = *(ICTTMergeableString.characterRanges(for:)(&v3) + 2);

  return v1 != 0;
}

char *ICTTMergeableString.characterRanges(for:)(void *a1)
{
  v2 = [v1 characterRangesForSelection_];
  sub_215075208();
  v3 = sub_2150A4ED0();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v4 = sub_2150A59D0();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  result = sub_214F86ECC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v16;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x216062780](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 rangeValue];
      v12 = v11;

      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_214F86ECC((v13 > 1), v14 + 1, 1);
      }

      ++v6;
      *(v16 + 16) = v14 + 1;
      v15 = v16 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_215075208()
{
  result = qword_27CA44C18;
  if (!qword_27CA44C18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA44C18);
  }

  return result;
}

unint64_t sub_215075254()
{
  result = qword_27CA44C28;
  if (!qword_27CA44C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C28);
  }

  return result;
}

unint64_t sub_2150752A8()
{
  result = qword_27CA44C38;
  if (!qword_27CA44C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C38);
  }

  return result;
}

unint64_t sub_2150752FC()
{
  result = qword_27CA44C40;
  if (!qword_27CA44C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C40);
  }

  return result;
}

unint64_t sub_215075394()
{
  result = qword_27CA44C48;
  if (!qword_27CA44C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C48);
  }

  return result;
}

unint64_t sub_2150753EC()
{
  result = qword_27CA44C50;
  if (!qword_27CA44C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C50);
  }

  return result;
}

unint64_t sub_215075444()
{
  result = qword_27CA44C58;
  if (!qword_27CA44C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C58);
  }

  return result;
}

unint64_t sub_21507549C()
{
  result = qword_27CA44C60;
  if (!qword_27CA44C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C60);
  }

  return result;
}

unint64_t sub_2150754F4()
{
  result = qword_27CA44C68;
  if (!qword_27CA44C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C68);
  }

  return result;
}

unint64_t sub_21507554C()
{
  result = qword_27CA44C70;
  if (!qword_27CA44C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C70);
  }

  return result;
}

uint64_t sub_2150755E8(char a1, char a2)
{
  if (qword_2150CE1C8[a1] == qword_2150CE1C8[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2150A6270();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_215075650(char a1, char a2)
{
  if (qword_2150CE1E8[a1] == qword_2150CE1E8[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2150A6270();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2150756B8(char a1, char a2)
{
  if (qword_2150CE208[a1] == qword_2150CE208[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2150A6270();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_215075720(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x64656C696166;
  v6 = 0x697263736E617274;
  v7 = 0xEC000000676E6962;
  if (a1 != 4)
  {
    v6 = 0x7974706D65;
    v7 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x64616F6C6E776F64;
  v9 = 0xEB00000000676E69;
  if (a1 != 1)
  {
    v8 = 0x656E696C66666FLL;
    v9 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x676E69646E6570;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x64656C696166)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC000000676E6962;
      if (v10 != 0x697263736E617274)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7974706D65)
      {
LABEL_34:
        v13 = sub_2150A6270();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEB00000000676E69;
      if (v10 != 0x64616F6C6E776F64)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x656E696C66666FLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x676E69646E6570)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_215075918(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0xE400000000000000;
    v13 = 2037411683;
    if (a1 != 2)
    {
      v13 = 0x656D616E6572;
      v12 = 0xE600000000000000;
    }

    v14 = 1702260589;
    if (a1)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v14 = 0x657461657263;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000002150E19E0;
    v5 = 0x80000002150E1A00;
    v6 = 0xD000000000000013;
    if (a1 != 7)
    {
      v6 = 0x6E6F69746E656DLL;
      v5 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6574656C6564;
    if (a1 != 4)
    {
      v8 = 0x6974726150646461;
      v7 = 0xEE00746E61706963;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE400000000000000;
        if (v9 != 2037411683)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x656D616E6572)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE400000000000000;
      if (v9 != 1702260589)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x657461657263)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x6574656C6564)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEE00746E61706963;
      if (v9 != 0x6974726150646461)
      {
LABEL_52:
        v16 = sub_2150A6270();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0x80000002150E19E0;
    if (v9 != 0xD000000000000011)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0x80000002150E1A00;
    if (v9 != 0xD000000000000013)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE700000000000000;
    if (v9 != 0x6E6F69746E656DLL)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_215075BCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xEB00000000646574;
  v5 = 0x6C6F686563616C70;
  if (a1 == 2)
  {
    v5 = 0x726F707075736E75;
  }

  else
  {
    v4 = 0xEB00000000726564;
  }

  v6 = 0xD000000000000011;
  if (a1)
  {
    v6 = 0x6C61636F6CLL;
  }

  else
  {
    v3 = 0x80000002150E1960;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    v11 = a2 == 2;
    v10 = 0xEB00000000646574;
    v9 = 0xEB00000000726564;
    if (a2 == 2)
    {
      v12 = 0x726F707075736E75;
    }

    else
    {
      v12 = 0x6C6F686563616C70;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
    v10 = 0x80000002150E1960;
    v11 = a2 == 0;
    if (a2)
    {
      v12 = 0x6C61636F6CLL;
    }

    else
    {
      v12 = 0xD000000000000011;
    }
  }

  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v7 == v12 && v8 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_2150A6270();
  }

  return v14 & 1;
}

uint64_t EditNoteActivity.accountID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EditNoteActivity.replicaID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EditNoteActivity() + 24);
  v4 = sub_2150A3A00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EditNoteActivity.noteTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for EditNoteActivity() + 28));

  return v1;
}

uint64_t EditNoteActivity.noteTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EditNoteActivity() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

NotesShared::EditNoteActivity::NoteAttributes_optional __swiftcall EditNoteActivity.NoteAttributes.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2150A5EE0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_215075F08()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_215075FDC()
{
  sub_2150A4BB0();
}

uint64_t sub_21507609C()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

void sub_215076178(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6C61636F6CLL;
  v4 = 0xEB00000000646574;
  v5 = 0x726F707075736E75;
  if (*v1 != 2)
  {
    v5 = 0x6C6F686563616C70;
    v4 = 0xEB00000000726564;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000002150E1960;
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

uint64_t EditNoteActivity.noteAttributes.getter()
{
  type metadata accessor for EditNoteActivity();
}

uint64_t EditNoteActivity.noteAttributes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EditNoteActivity() + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t EditNoteActivity.init(noteID:accountID:replicaID:noteTitle:noteAttributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v18 = type metadata accessor for EditNoteActivity();
  v19 = &a9[v18[7]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *v19 = a6;
  *(v19 + 1) = a7;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v20 = v18[6];
  v21 = sub_2150A3A00();
  result = (*(*(v21 - 8) + 32))(&a9[v20], a5, v21);
  *&a9[v18[8]] = a8;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EditNoteActivity.validate()()
{
  v1 = v0;
  v2 = sub_214F81088(&unk_28270E800);
  v3 = *(v1 + *(type metadata accessor for EditNoteActivity() + 32));

  v4 = sub_21507A1A0(v2, v3);

  if (*(v4 + 16))
  {
    sub_2150A5B20();
    MEMORY[0x2160617E0](0x2065746F4ELL, 0xE500000000000000);
    MEMORY[0x2160617E0](*v1, v1[1]);
    MEMORY[0x2160617E0](0xD000000000000011, 0x80000002150E8490);
    sub_214D5A634();
    v5 = sub_2150A52F0();
    v7 = v6;

    MEMORY[0x2160617E0](v5, v7);

    MEMORY[0x2160617E0](0xD00000000000001FLL, 0x80000002150E84B0);
    sub_215003804();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 3;
    swift_willThrow();
  }

  else
  {
  }
}

uint64_t EditNoteActivity.withNote<A>(in:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_2150765FC, 0, 0);
}

uint64_t sub_2150765FC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v5;
  *(v6 + 32) = v4;
  v7 = *(v0 + 24);
  *(v6 + 40) = v7;
  *(v6 + 56) = v3;
  v8 = v7;

  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_21507671C;
  v10 = *(v0 + 48);
  v11 = *(v0 + 16);

  return NSManagedObjectContext.perform<A>(_:)(v11, sub_21507ABF4, v6, v10);
}

uint64_t sub_21507671C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_21507689C;
  }

  else
  {

    v2 = sub_215076838;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_215076838()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21507689C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

void sub_215076908(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  v8 = sub_2150A4A90();
  v9 = [objc_opt_self() noteWithIdentifier:v8 context:a3];

  if (v9)
  {
    a4(v9);
  }

  else
  {
    type metadata accessor for ICError(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    *(inited + 32) = sub_2150A4AD0();
    *(inited + 40) = v11;
    sub_2150A5B20();

    MEMORY[0x2160617E0](a1, a2);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x80000002150E8520;
    sub_214FA4BBC(inited);
    swift_setDeallocating();
    sub_214F88894(inited + 32);
    sub_21507B118(&qword_27CA419D8, type metadata accessor for ICError);
    sub_2150A35B0();
    swift_willThrow();
  }
}

uint64_t sub_215076AF0()
{
  v1 = *v0;
  v2 = 0x444965746F6ELL;
  v3 = 0x496163696C706572;
  v4 = 0x6C74695465746F6ELL;
  if (v1 != 3)
  {
    v4 = 0x7274744165746F6ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x49746E756F636361;
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

uint64_t sub_215076BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21507AA34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_215076BC8(uint64_t a1)
{
  v2 = sub_21507AC18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_215076C04(uint64_t a1)
{
  v2 = sub_21507AC18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditNoteActivity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44C78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21507AC18();
  sub_2150A65B0();
  v16 = 0;
  sub_2150A6060();
  if (!v2)
  {
    v15 = 1;
    sub_2150A6060();
    v10 = type metadata accessor for EditNoteActivity();
    v14 = 2;
    sub_2150A3A00();
    sub_21507B118(&qword_280C241B8, MEMORY[0x277CC95F0]);
    sub_2150A60A0();
    v13 = 3;
    sub_2150A6030();
    v12 = *(v3 + *(v10 + 32));
    v11[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44C80);
    sub_21507ACC0(&qword_280C23158, sub_21507AC6C);
    sub_2150A60A0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t EditNoteActivity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_2150A3A00();
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44C88);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = type metadata accessor for EditNoteActivity();
  MEMORY[0x28223BE20](v9);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21507AC18();
  v27 = v8;
  v12 = v28;
  sub_2150A6590();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = v25;
  v34 = 0;
  *v11 = sub_2150A5F80();
  v11[1] = v14;
  v28 = v14;
  v33 = 1;
  v11[2] = sub_2150A5F80();
  v11[3] = v15;
  v32 = 2;
  sub_21507B118(&qword_27CA43008, MEMORY[0x277CC95F0]);
  v21[1] = 0;
  v22 = v11;
  sub_2150A5FC0();
  (*(v24 + 32))(v22 + v9[6], v5, v3);
  v31 = 3;
  v16 = sub_2150A5F30();
  v17 = v22;
  v18 = (v22 + v9[7]);
  *v18 = v16;
  v18[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44C80);
  v30 = 4;
  sub_21507ACC0(&qword_27CA44C90, sub_21507AD38);
  sub_2150A5FC0();
  (*(v13 + 8))(v27, v26);
  *(v17 + v9[8]) = v29;
  sub_214FD1A98(v17, v23);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_21507AD8C(v17);
}

uint64_t EditNoteActivity.init(note:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 identifier];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  v10 = sub_2150A4AD0();
  v12 = v11;

  v13 = [a1 account];
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v13;
  v15 = [v13 identifier];
  if (!v15)
  {

LABEL_16:
    v31 = type metadata accessor for EditNoteActivity();
    v32 = *(*(v31 - 8) + 56);

    return v32(a2, 1, 1, v31);
  }

  v16 = v15;
  v62 = sub_2150A4AD0();
  v18 = v17;

  v19 = [a1 title];
  if (!v19)
  {

LABEL_15:

    goto LABEL_16;
  }

  v57 = v12;
  v58 = v5;
  v59 = v4;
  v20 = v19;
  v21 = sub_2150A4AD0();
  v54 = v22;
  v55 = v21;

  v23 = MEMORY[0x277D84FA0];
  v64 = MEMORY[0x277D84FA0];
  v24 = a1;
  v25 = [v24 needsInitialFetchFromCloud];
  v60 = v24;
  v61 = v10;
  if (v25)
  {
    sub_2150A64B0();
    sub_2150A4BB0();
    v26 = sub_2150A64E0();
    v27 = -1 << *(v23 + 32);
    v28 = v26 & ~v27;
    if ((*(v23 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v28))
    {
      v29 = ~v27;
      while (*(*(v23 + 48) + v28) <= 2u)
      {
        v30 = sub_2150A6270();

        if (v30)
        {
          goto LABEL_21;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v23 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v28) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v23 = MEMORY[0x277D84FA0];
    }

    else
    {
LABEL_20:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v23;
      sub_215078CC0(3, v28, isUniquelyReferenced_nonNull_native);
      v23 = v63[0];
      v64 = v63[0];
    }

LABEL_21:
    v24 = v60;
    v10 = v61;
  }

  if ([v24 isPasswordProtected])
  {
    sub_214FC0588(v63, 0);
    v23 = v64;
  }

  v35 = [v24 isUnsupported];
  v56 = v18;
  if (v35)
  {
    sub_2150A64B0();
    sub_2150A4BB0();
    v36 = sub_2150A64E0();
    v37 = -1 << *(v23 + 32);
    v38 = v36 & ~v37;
    if ((*(v23 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
    {
      v39 = ~v37;
      while (*(*(v23 + 48) + v38) <= 1u || *(*(v23 + 48) + v38) == 3)
      {
        v40 = sub_2150A6270();

        if (v40)
        {
          goto LABEL_32;
        }

        v38 = (v38 + 1) & v39;
        if (((*(v23 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
LABEL_31:
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v23;
      sub_215078CC0(2, v38, v41);
      v23 = v63[0];
      v64 = v63[0];
    }

LABEL_32:
    v24 = v60;
    v10 = v61;
    v18 = v56;
  }

  if ([v14 isLocalAccount])
  {
    sub_2150A64B0();
    sub_2150A4BB0();
    v42 = sub_2150A64E0();
    v43 = -1 << *(v23 + 32);
    v44 = v42 & ~v43;
    if ((*(v23 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
    {
      v45 = ~v43;
      while (*(*(v23 + 48) + v44) > 1u || !*(*(v23 + 48) + v44))
      {
        v46 = sub_2150A6270();

        if (v46)
        {
          goto LABEL_41;
        }

        v44 = (v44 + 1) & v45;
        if (((*(v23 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_40:
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v23;
      sub_215078CC0(1, v44, v47);
      v23 = v63[0];
      v64 = v63[0];
    }

LABEL_41:
    v24 = v60;
    v10 = v61;
    v18 = v56;
  }

  v48 = [v24 currentReplicaID];

  sub_2150A39C0();
  v49 = type metadata accessor for EditNoteActivity();
  v50 = (a2 + v49[7]);
  v51 = v57;
  v52 = v58;
  *a2 = v10;
  a2[1] = v51;
  v53 = v54;
  *v50 = v55;
  v50[1] = v53;
  a2[2] = v62;
  a2[3] = v18;
  (*(v52 + 32))(a2 + v49[6], v7, v59);
  *(a2 + v49[8]) = v23;
  return (*(*(v49 - 1) + 56))(a2, 0, 1, v49);
}

uint64_t EditNoteActivity.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_215077BD0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t static EditNoteActivity.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for EditNoteActivity();

  return sub_2150A39B0();
}

uint64_t sub_215077C78(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  return sub_2150A39B0();
}

uint64_t EditNoteActivity.hash(into:)()
{
  sub_2150A4BB0();
  sub_2150A4BB0();
  type metadata accessor for EditNoteActivity();
  sub_2150A3A00();
  sub_21507B118(&qword_280C241B0, MEMORY[0x277CC95F0]);
  return sub_2150A49B0();
}

uint64_t EditNoteActivity.hashValue.getter()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  sub_2150A4BB0();
  type metadata accessor for EditNoteActivity();
  sub_2150A3A00();
  sub_21507B118(&qword_280C241B0, MEMORY[0x277CC95F0]);
  sub_2150A49B0();
  return sub_2150A64E0();
}

uint64_t sub_215077E70()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  sub_2150A4BB0();
  sub_2150A3A00();
  sub_21507B118(&qword_280C241B0, MEMORY[0x277CC95F0]);
  sub_2150A49B0();
  return sub_2150A64E0();
}

uint64_t sub_215077F24()
{
  sub_2150A4BB0();
  sub_2150A4BB0();
  sub_2150A3A00();
  sub_21507B118(&qword_280C241B0, MEMORY[0x277CC95F0]);
  return sub_2150A49B0();
}

uint64_t sub_215077FBC()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  sub_2150A4BB0();
  sub_2150A3A00();
  sub_21507B118(&qword_280C241B0, MEMORY[0x277CC95F0]);
  sub_2150A49B0();
  return sub_2150A64E0();
}

unint64_t EditNoteActivity.description.getter()
{
  sub_2150A5B20();

  MEMORY[0x2160617E0](*v0, v0[1]);
  MEMORY[0x2160617E0](93, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_2150780EC()
{
  sub_2150A5B20();

  MEMORY[0x2160617E0](*v0, v0[1]);
  MEMORY[0x2160617E0](93, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t EditNoteActivity.metadata.getter()
{
  v0 = sub_2150A3C70();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2150A3C90();
  sub_2150A3C60();
  return sub_2150A3C80();
}

uint64_t sub_215078224()
{
  sub_2150A3C70();
  swift_task_alloc();
  sub_2150A3C90();
  sub_2150A3C60();
  sub_2150A3C80();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t EditNoteActivity.NoteAttributes.description.getter()
{
  v1 = 0x6C61636F6CLL;
  v2 = 0x726F707075736E75;
  if (*v0 != 2)
  {
    v2 = 0x6C6F686563616C70;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

unint64_t sub_215078360()
{
  v1 = 0x6C61636F6CLL;
  v2 = 0x726F707075736E75;
  if (*v0 != 2)
  {
    v2 = 0x6C6F686563616C70;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

void sub_2150783EC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_214FC3A2C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_215079488(&qword_27CA43208);
      goto LABEL_12;
    }

    sub_215079C5C(v6 + 1, &qword_27CA43208);
  }

  v8 = *v3;
  v9 = sub_2150A5770();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_214D55670(0, &qword_280C24528);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_2150A5780();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2150A63D0();
  __break(1u);
}

void sub_21507857C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_214FC3A40(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_215079488(&qword_27CA43200);
      goto LABEL_12;
    }

    sub_215079C5C(v6 + 1, &qword_27CA43200);
  }

  v8 = *v3;
  v9 = sub_2150A5770();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_214D55670(0, &qword_280C24888);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_2150A5780();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2150A63D0();
  __break(1u);
}

uint64_t sub_21507870C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_2150A3A00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_214FC3A54();
  }

  else
  {
    if (v11 > v10)
    {
      sub_215078FB4();
      goto LABEL_12;
    }

    sub_215079708();
  }

  v12 = *v3;
  sub_21507B118(&qword_280C241B0, MEMORY[0x277CC95F0]);
  v13 = sub_2150A49A0();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_21507B118(&qword_280C241A8, MEMORY[0x277CC95F0]);
      v21 = sub_2150A4A80();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2150A63D0();
  __break(1u);
  return result;
}

uint64_t sub_2150789B0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_214FC3D80();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2150791EC();
      goto LABEL_16;
    }

    sub_215079A24();
  }

  v10 = *v4;
  sub_2150A64B0();
  sub_2150A4BB0();
  result = sub_2150A64E0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2150A6270();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2150A63D0();
  __break(1u);
  return result;
}

void sub_215078B30(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_214FC3FE0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_215079488(&qword_27CA42458);
      goto LABEL_12;
    }

    sub_215079C5C(v6 + 1, &qword_27CA42458);
  }

  v8 = *v3;
  v9 = sub_2150A5770();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_214D55670(0, &qword_27CA44A80);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_2150A5780();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2150A63D0();
  __break(1u);
}

uint64_t sub_215078CC0(uint64_t result, unint64_t a2, char a3)
{
  v31 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    sub_214FC4214();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_2150795C8();
      goto LABEL_50;
    }

    sub_215079E68();
  }

  v7 = *v3;
  sub_2150A64B0();
  sub_2150A4BB0();

  result = sub_2150A64E0();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v30 = ~v8;
    v9 = 0x6C6F686563616C70;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      v11 = v10 == 2 ? 0x726F707075736E75 : v9;
      v12 = v10 == 2 ? 0xEB00000000646574 : 0xEB00000000726564;
      v13 = *(*(v7 + 48) + a2) ? 0x6C61636F6CLL : 0xD000000000000011;
      v14 = *(*(v7 + 48) + a2) ? 0xE500000000000000 : 0x80000002150E1960;
      v15 = *(*(v7 + 48) + a2) <= 1u ? v13 : v11;
      v16 = *(*(v7 + 48) + a2) <= 1u ? v14 : v12;
      v17 = v31 == 2 ? 0x726F707075736E75 : v9;
      v18 = v31 == 2 ? 0xEB00000000646574 : 0xEB00000000726564;
      v19 = v31 ? 0x6C61636F6CLL : 0xD000000000000011;
      v20 = v31 ? 0xE500000000000000 : 0x80000002150E1960;
      v21 = v31 <= 1u ? v19 : v17;
      v22 = v31 <= 1u ? v20 : v18;
      v23 = v9;
      if (v15 == v21 && v16 == v22)
      {
        goto LABEL_53;
      }

      v24 = sub_2150A6270();

      if (v24)
      {
        goto LABEL_54;
      }

      a2 = (a2 + 1) & v30;
      v9 = v23;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_50:
  v25 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + a2) = v31;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_53:

LABEL_54:
  result = sub_2150A63D0();
  __break(1u);
  return result;
}

void *sub_215078FB4()
{
  v1 = v0;
  v2 = sub_2150A3A00();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43238);
  v6 = *v0;
  v7 = sub_2150A5A90();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_2150791EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42468);
  v2 = *v0;
  v3 = sub_2150A5A90();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_215079348()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43250);
  v2 = *v0;
  v3 = sub_2150A5A90();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_215079488(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_2150A5A90();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_2150795C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42420);
  v2 = *v0;
  v3 = sub_2150A5A90();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_215079708()
{
  v1 = v0;
  v32 = sub_2150A3A00();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43238);
  v6 = sub_2150A5AA0();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_21507B118(&qword_280C241B0, MEMORY[0x277CC95F0]);
      result = sub_2150A49A0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_215079A24()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42468);
  result = sub_2150A5AA0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_2150A64B0();

      sub_2150A4BB0();
      result = sub_2150A64E0();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_215079C5C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_2150A5AA0();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_2150A5770();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_215079E68()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42420);
  result = sub_2150A5AA0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_2150A64B0();
      sub_2150A4BB0();

      result = sub_2150A64E0();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

void *sub_21507A110(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_21507A364(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_21507A1A0(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_21507A364(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_21507A110(v11, v6, a2, a1);

    MEMORY[0x216064AF0](v11, -1, -1);
  }

  return v9;
}

uint64_t sub_21507A364(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v57 = result;
  v6 = 0;
  v7 = 0;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_50;
  }

  v54 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v58 = v9 & *(a4 + 56);
  v53 = (v8 + 63) >> 6;
  v62 = a3 + 56;
  do
  {
LABEL_6:
    if (v58)
    {
      v10 = __clz(__rbit64(v58));
      v11 = (v58 - 1) & v58;
    }

    else
    {
      v12 = v7;
      do
      {
        v7 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_100;
        }

        if (v7 >= v53)
        {
LABEL_98:

          return sub_214FC48DC(v57, a2, v6, v5);
        }

        v13 = *(v54 + 8 * v7);
        ++v12;
      }

      while (!v13);
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
    }

    v14 = *(*(v4 + 48) + (v10 | (v7 << 6)));
    sub_2150A64B0();
    v58 = v11;
    sub_2150A4BB0();

    result = sub_2150A64E0();
    v15 = -1 << *(v5 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    v18 = 1 << v16;
  }

  while (((1 << v16) & *(v62 + 8 * (v16 >> 6))) == 0);
  v60 = v6;
  v19 = ~v15;
  while (1)
  {
    v20 = *(*(v5 + 48) + v16);
    v21 = 0x726F707075736E75;
    if (v20 != 2)
    {
      v21 = 0x6C6F686563616C70;
    }

    v22 = 0xEB00000000726564;
    if (v20 == 2)
    {
      v22 = 0xEB00000000646574;
    }

    v23 = 0xD000000000000011;
    if (*(*(v5 + 48) + v16))
    {
      v23 = 0x6C61636F6CLL;
    }

    v24 = 0x80000002150E1960;
    if (*(*(v5 + 48) + v16))
    {
      v24 = 0xE500000000000000;
    }

    if (*(*(v5 + 48) + v16) <= 1u)
    {
      v25 = v23;
    }

    else
    {
      v25 = v21;
    }

    if (*(*(v5 + 48) + v16) <= 1u)
    {
      v26 = v24;
    }

    else
    {
      v26 = v22;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v28 = 0x726F707075736E75;
      }

      else
      {
        v28 = 0x6C6F686563616C70;
      }

      if (v14 == 2)
      {
        v27 = 0xEB00000000646574;
      }

      else
      {
        v27 = 0xEB00000000726564;
      }

      if (v25 != v28)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (!v14)
    {
      break;
    }

    v27 = 0xE500000000000000;
    if (v25 == 0x6C61636F6CLL)
    {
      goto LABEL_42;
    }

LABEL_43:
    v29 = sub_2150A6270();

    if (v29)
    {
      goto LABEL_47;
    }

    v16 = (v16 + 1) & v19;
    v17 = v16 >> 6;
    v18 = 1 << v16;
    v5 = a3;
    if ((*(v62 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      v6 = v60;
      v4 = a4;
      goto LABEL_6;
    }
  }

  v27 = 0x80000002150E1960;
  if (v25 != 0xD000000000000011)
  {
    goto LABEL_43;
  }

LABEL_42:
  if (v26 != v27)
  {
    goto LABEL_43;
  }

LABEL_47:
  v57[v17] |= v18;
  v6 = v60 + 1;
  v4 = a4;
  v5 = a3;
  if (!__OFADD__(v60, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
LABEL_50:
  v30 = v5 + 56;
  v31 = 1 << *(v5 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v63 = v32 & *(v5 + 56);
  v55 = (v31 + 63) >> 6;
  v33 = v4 + 56;
  while (2)
  {
    if (v63)
    {
      v34 = __clz(__rbit64(v63));
      v35 = (v63 - 1) & v63;
LABEL_61:
      v38 = v34 | (v7 << 6);
      v39 = *(*(v5 + 48) + v38);
      sub_2150A64B0();
      v63 = v35;
      v59 = v38;
      sub_2150A4BB0();

      result = sub_2150A64E0();
      v40 = -1 << *(v4 + 32);
      v41 = result & ~v40;
      if (((*(v33 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
      {
        continue;
      }

      v61 = v6;
      v42 = ~v40;
LABEL_63:
      v43 = *(*(v4 + 48) + v41);
      v44 = 0x726F707075736E75;
      if (v43 != 2)
      {
        v44 = 0x6C6F686563616C70;
      }

      v45 = 0xEB00000000726564;
      if (v43 == 2)
      {
        v45 = 0xEB00000000646574;
      }

      v46 = 0xD000000000000011;
      if (*(*(v4 + 48) + v41))
      {
        v46 = 0x6C61636F6CLL;
      }

      v47 = 0x80000002150E1960;
      if (*(*(v4 + 48) + v41))
      {
        v47 = 0xE500000000000000;
      }

      if (*(*(v4 + 48) + v41) <= 1u)
      {
        v48 = v46;
      }

      else
      {
        v48 = v44;
      }

      if (*(*(v4 + 48) + v41) <= 1u)
      {
        v49 = v47;
      }

      else
      {
        v49 = v45;
      }

      if (v39 > 1)
      {
        if (v39 == 2)
        {
          v51 = 0x726F707075736E75;
        }

        else
        {
          v51 = 0x6C6F686563616C70;
        }

        if (v39 == 2)
        {
          v50 = 0xEB00000000646574;
        }

        else
        {
          v50 = 0xEB00000000726564;
        }

        if (v48 != v51)
        {
          goto LABEL_91;
        }
      }

      else if (v39)
      {
        v50 = 0xE500000000000000;
        if (v48 != 0x6C61636F6CLL)
        {
LABEL_91:
          v52 = sub_2150A6270();

          if (v52)
          {
            goto LABEL_95;
          }

          v41 = (v41 + 1) & v42;
          v4 = a4;
          if (((*(v33 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            v5 = a3;
            v6 = v61;
            continue;
          }

          goto LABEL_63;
        }
      }

      else
      {
        v50 = 0x80000002150E1960;
        if (v48 != 0xD000000000000011)
        {
          goto LABEL_91;
        }
      }

      if (v49 == v50)
      {

LABEL_95:
        *(v57 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
        v6 = v61 + 1;
        v4 = a4;
        v5 = a3;
        if (__OFADD__(v61, 1))
        {
          __break(1u);
          goto LABEL_98;
        }

        continue;
      }

      goto LABEL_91;
    }

    break;
  }

  v36 = v7;
  while (1)
  {
    v7 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v7 >= v55)
    {
      goto LABEL_98;
    }

    v37 = *(v30 + 8 * v7);
    ++v36;
    if (v37)
    {
      v34 = __clz(__rbit64(v37));
      v35 = (v37 - 1) & v37;
      goto LABEL_61;
    }
  }

LABEL_100:
  __break(1u);
  return result;
}

uint64_t sub_21507AA34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965746F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_2150A6270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496163696C706572 && a2 == 0xE900000000000044 || (sub_2150A6270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C74695465746F6ELL && a2 == 0xE900000000000065 || (sub_2150A6270() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7274744165746F6ELL && a2 == 0xEE00736574756269)
  {

    return 4;
  }

  else
  {
    v6 = sub_2150A6270();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_21507AC18()
{
  result = qword_280C23E60;
  if (!qword_280C23E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C23E60);
  }

  return result;
}

unint64_t sub_21507AC6C()
{
  result = qword_280C23E78[0];
  if (!qword_280C23E78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C23E78);
  }

  return result;
}

uint64_t sub_21507ACC0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44C80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21507AD38()
{
  result = qword_27CA44C98;
  if (!qword_27CA44C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C98);
  }

  return result;
}

uint64_t sub_21507AD8C(uint64_t a1)
{
  v2 = type metadata accessor for EditNoteActivity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21507AFC0()
{
  result = qword_27CA44CA8;
  if (!qword_27CA44CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44CA8);
  }

  return result;
}

unint64_t sub_21507B018()
{
  result = qword_280C23E50;
  if (!qword_280C23E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C23E50);
  }

  return result;
}

unint64_t sub_21507B070()
{
  result = qword_280C23E58;
  if (!qword_280C23E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C23E58);
  }

  return result;
}

unint64_t sub_21507B0C4()
{
  result = qword_27CA44CB0;
  if (!qword_27CA44CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44CB0);
  }

  return result;
}

uint64_t sub_21507B118(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ICCloudConfiguration.overridableValue<A>(for:in:defaults:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *a1;
  sub_2150A5900();
  if (v7)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = sub_2150A4A90();

    v10 = sub_2150A4910();
    v11 = [ObjCClassFromMetadata overridableValueForKey:v9 inConfigurationDictionary:v10 userDefaults:a2];

    if (v11)
    {
      sub_2150A58F0();
      swift_unknownObjectRelease();
      sub_214D72488(v25, v26);
    }

    else
    {
      memset(v26, 0, sizeof(v26));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178);
    v23 = *(v6 + *MEMORY[0x277D84DE8] + 8);
    v24 = swift_dynamicCast();
    return (*(*(v23 - 8) + 56))(a3, v24 ^ 1u, 1);
  }

  else
  {
    v12 = qword_280C24598;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_2150A3F30();
    __swift_project_value_buffer(v13, qword_280C245A0);
    v14 = sub_2150A5570();
    v15 = sub_2150A3F10();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v25[0] = v17;
      *v16 = 136315650;
      v18 = sub_2150A5B70();
      v20 = sub_214F7723C(v18, v19, v25);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2048;
      *(v16 + 14) = 35;
      *(v16 + 22) = 2080;
      *&v26[0] = 0;
      *(&v26[0] + 1) = 0xE000000000000000;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000025, 0x80000002150E8580);
      v27 = a1;
      sub_2150A65C0();
      sub_2150A6250();
      v21 = sub_214F7723C(*&v26[0], *(&v26[0] + 1), v25);

      *(v16 + 24) = v21;
      _os_log_impl(&dword_214D51000, v15, v14, "Failed assertion at %s:%lu: %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v17, -1, -1);
      MEMORY[0x216064AF0](v16, -1, -1);
    }

    return (*(*(*(v6 + *MEMORY[0x277D84DE8] + 8) - 8) + 56))(a3, 1, 1);
  }
}

uint64_t static ICCloudConfiguration.loadSharedConfiguration(priority:)(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = sub_2150A4420();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v4 = sub_2150A4490();
  v2[41] = v4;
  v2[42] = *(v4 - 8);
  v2[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  v2[44] = swift_task_alloc();
  v5 = sub_2150A5120();
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21507B6F4, 0, 0);
}

uint64_t sub_21507B6F4()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[44];
  sub_214F54918(v0[36], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_215017A58(v0[44]);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_21507BB90;
    v5 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44CB8);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_21507BD10;
    v0[21] = &block_descriptor_23;
    v0[22] = v5;
    [ObjCClassFromMetadata loadSharedConfigurationWithCompletionHandler_];
    v6 = v0 + 2;
  }

  else
  {
    v8 = v0[47];
    v7 = v0[48];
    v10 = v0[45];
    v9 = v0[46];
    v11 = v0[43];
    v12 = v0[42];
    v13 = v0[39];
    v14 = v0[40];
    v18 = v0[41];
    v19 = v0[38];
    (*(v9 + 32))(v7, v0[44], v10);
    v20 = swift_getObjCClassFromMetadata();
    (*(v9 + 16))(v8, v7, v10);
    DispatchQoS.init(_:)(v8);
    sub_2150A4480();
    (*(v12 + 8))(v11, v18);
    v15 = sub_2150A4410();
    (*(v13 + 8))(v14, v19);
    v0[10] = v0;
    v0[15] = v0 + 35;
    v0[11] = sub_21507B9F8;
    v16 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44CB8);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_21507BD10;
    v0[29] = &block_descriptor_3;
    v0[30] = v16;
    [v20 loadSharedConfigurationWithQoSClass:v15 completionHandler:?];
    v6 = v0 + 10;
  }

  return MEMORY[0x282200938](v6);
}

uint64_t sub_21507B9F8()
{

  return MEMORY[0x2822009F8](sub_21507BAD8, 0, 0);
}

uint64_t sub_21507BAD8()
{
  (*(v0[46] + 8))(v0[48], v0[45]);
  v1 = v0[35];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_21507BB90()
{

  return MEMORY[0x2822009F8](sub_21507BC70, 0, 0);
}

uint64_t sub_21507BC70()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21507BD10(uint64_t a1, void *a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t ICCloudConfiguration.overridableValue<A>(for:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  sub_2150A5900();
  if (v6)
  {
    v7 = sub_2150A4A90();

    v8 = sub_2150A4910();
    v9 = [v2 overridableValueForKey:v7 inConfigurationDictionary:v8];

    if (v9)
    {
      sub_2150A58F0();
      swift_unknownObjectRelease();
      sub_214D72488(v23, v24);
    }

    else
    {
      memset(v24, 0, sizeof(v24));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178);
    v21 = *(v5 + *MEMORY[0x277D84DE8] + 8);
    v22 = swift_dynamicCast();
    return (*(*(v21 - 8) + 56))(a2, v22 ^ 1u, 1);
  }

  else
  {
    v10 = qword_280C24598;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_2150A3F30();
    __swift_project_value_buffer(v11, qword_280C245A0);
    v12 = sub_2150A5570();
    v13 = sub_2150A3F10();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v23[0] = v15;
      *v14 = 136315650;
      v16 = sub_2150A5B70();
      v18 = sub_214F7723C(v16, v17, v23);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 47;
      *(v14 + 22) = 2080;
      *&v24[0] = 0;
      *(&v24[0] + 1) = 0xE000000000000000;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000025, 0x80000002150E8580);
      v25 = a1;
      sub_2150A65C0();
      sub_2150A6250();
      v19 = sub_214F7723C(*&v24[0], *(&v24[0] + 1), v23);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_214D51000, v13, v12, "Failed assertion at %s:%lu: %s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v15, -1, -1);
      MEMORY[0x216064AF0](v14, -1, -1);
    }

    return (*(*(*(v5 + *MEMORY[0x277D84DE8] + 8) - 8) + 56))(a2, 1, 1);
  }
}

uint64_t related decl e for ICPaperDocumentErrorCode.init(_:attachment:)(uint64_t a1, void *a2)
{
  v3 = sub_21507C17C(a1, a2);

  return v3;
}

uint64_t sub_21507C17C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  *(inited + 32) = sub_2150A4AD0();
  *(inited + 40) = v5;
  ObjectType = swift_getObjectType();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44CC0);
  *(inited + 48) = ObjectType;
  sub_214FA4BBC(inited);
  swift_setDeallocating();
  sub_214F88894(inited + 32);
  v7 = [a2 identifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2150A4AD0();
    v11 = v10;

    v12 = sub_2150A4AD0();
    v14 = v13;
    v19 = MEMORY[0x277D837D0];
    *&v18 = v9;
    *(&v18 + 1) = v11;
    sub_214D72488(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_214FEC880(v17, v12, v14, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for ICPaperDocumentError(0);
  *&v17[0] = a1;
  sub_21507C30C();
  sub_2150A35B0();
  return v18;
}

unint64_t sub_21507C30C()
{
  result = qword_27CA41B88;
  if (!qword_27CA41B88)
  {
    type metadata accessor for ICPaperDocumentError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA41B88);
  }

  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x282111360](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

uint64_t NLSearchParseCandidateCopyAttributedInput_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_NLP))
  {
    dlopenHelper_NLP(a1);
  }

  return MEMORY[0x28218AC50]();
}

uint64_t NLSearchParseCandidateCopyDescription_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_NLP))
  {
    dlopenHelper_NLP(a1);
  }

  return MEMORY[0x28218AC58]();
}

uint64_t NLSearchParseCandidateCopyRankTerms_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_NLP))
  {
    dlopenHelper_NLP(a1);
  }

  return MEMORY[0x28218AC60]();
}

uint64_t NLSearchParseGetConfidence_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_NLP))
  {
    dlopenHelper_NLP(a1);
  }

  return MEMORY[0x28218AC68]();
}

uint64_t NLSearchParserCopyParseWithOptions_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_NLP))
  {
    dlopenHelper_NLP(a1);
  }

  return MEMORY[0x28218AC70]();
}

uint64_t NLSearchParserCreate_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_NLP))
  {
    dlopenHelper_NLP(a1);
  }

  return MEMORY[0x28218AC78]();
}

uint64_t NLSearchParserSetString_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_NLP))
  {
    dlopenHelper_NLP(a1);
  }

  return MEMORY[0x28218AC90]();
}

uint64_t ct_green_tea_logger_create_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libCTGreenTeaLogger_dylib))
  {
    dlopenHelper_libCTGreenTeaLogger_dylib(a1);
  }

  return MEMORY[0x2821F0CE0]();
}

uint64_t getCTGreenTeaOsLogHandle_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libCTGreenTeaLogger_dylib))
  {
    dlopenHelper_libCTGreenTeaLogger_dylib(a1);
  }

  return MEMORY[0x2821F0D10]();
}

double gotLoadHelper_x8__NLLanguageEnglish(double result)
{
  if (!atomic_load(&dlopenHelperFlag_NaturalLanguage))
  {
    return dlopenHelper_NaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___AppleSpell(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ProofReader))
  {
    return dlopenHelper_ProofReader(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(double result)
{
  if (!atomic_load(&dlopenHelperFlag_LinkPresentation))
  {
    return dlopenHelper_LinkPresentation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___MKMapItem(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MapKit))
  {
    return dlopenHelper_MapKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___MarkupViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MarkupUI))
  {
    return dlopenHelper_MarkupUI(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___NLEmbedding(double result)
{
  if (!atomic_load(&dlopenHelperFlag_NaturalLanguage))
  {
    return dlopenHelper_NaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___NLTokenizer(double result)
{
  if (!atomic_load(&dlopenHelperFlag_NaturalLanguage))
  {
    return dlopenHelper_NaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___VNImageRequestHandler(double result)
{
  if (!atomic_load(&dlopenHelperFlag_Vision))
  {
    return dlopenHelper_Vision(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___VNRecognizeTextRequest(double result)
{
  if (!atomic_load(&dlopenHelperFlag_Vision))
  {
    return dlopenHelper_Vision(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___VNSession(double result)
{
  if (!atomic_load(&dlopenHelperFlag_Vision))
  {
    return dlopenHelper_Vision(result);
  }

  return result;
}

double gotLoadHelper_x8__PRAppIdentifierKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ProofReader))
  {
    return dlopenHelper_ProofReader(result);
  }

  return result;
}

double gotLoadHelper_x8__PRGuessKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ProofReader))
  {
    return dlopenHelper_ProofReader(result);
  }

  return result;
}

double gotLoadHelper_x9__PRScoreKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ProofReader))
  {
    return dlopenHelper_ProofReader(result);
  }

  return result;
}

double gotLoadHelper_x8__kNLSearchParserContextIdentifierKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_NLP))
  {
    return dlopenHelper_NLP(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_LinkPresentation(double a1)
{
  dlopen("/System/Library/Frameworks/LinkPresentation.framework/LinkPresentation", 0);
  atomic_store(1u, &dlopenHelperFlag_LinkPresentation);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_MapKit(double a1)
{
  dlopen("/System/Library/Frameworks/MapKit.framework/MapKit", 0);
  atomic_store(1u, &dlopenHelperFlag_MapKit);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_NaturalLanguage(double a1)
{
  dlopen("/System/Library/Frameworks/NaturalLanguage.framework/NaturalLanguage", 0);
  atomic_store(1u, &dlopenHelperFlag_NaturalLanguage);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_Vision(double a1)
{
  dlopen("/System/Library/Frameworks/Vision.framework/Vision", 0);
  atomic_store(1u, &dlopenHelperFlag_Vision);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_MarkupUI(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/MarkupUI.framework/MarkupUI", 0);
  atomic_store(1u, &dlopenHelperFlag_MarkupUI);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_NLP(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/NLP.framework/NLP", 0);
  atomic_store(1u, &dlopenHelperFlag_NLP);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_ProofReader(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/ProofReader.framework/ProofReader", 0);
  atomic_store(1u, &dlopenHelperFlag_ProofReader);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_libCTGreenTeaLogger_dylib(double a1)
{
  dlopen("/usr/lib/libCTGreenTeaLogger.dylib", 0);
  atomic_store(1u, &dlopenHelperFlag_libCTGreenTeaLogger_dylib);
  return a1;
}