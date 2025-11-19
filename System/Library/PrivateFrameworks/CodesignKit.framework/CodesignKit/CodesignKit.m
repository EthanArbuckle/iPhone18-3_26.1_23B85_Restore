unint64_t CSKHostError.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_243B8743C()
{
  v2 = *v0;
  sub_243B8ECA8();
  sub_243B8EAD8();
  return sub_243B8ECC8();
}

uint64_t sub_243B874A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_243B8AB34();

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_243B874EC()
{
  v2 = *v0;
  sub_243B8ECA8();
  sub_243B8EAD8();
  return sub_243B8ECC8();
}

uint64_t *sub_243B8754C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_243B87574(uint64_t a1)
{
  v2 = sub_243B8AB34();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_243B875B0(uint64_t a1)
{
  v2 = sub_243B8AB34();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_243B87610(uint64_t a1, uint64_t a2)
{
  v4 = sub_243B8AB34();

  return MEMORY[0x28211C008](a1, a2, v4);
}

uint64_t sub_243B87664@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11CodesignKit13CSKHostSource_source;
  swift_beginAccess();
  v5 = sub_243B8EA88();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_243B876F0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_243B8EA88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC11CodesignKit13CSKHostSource_source;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_243B87808@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11CodesignKit13CSKHostSource_source;
  swift_beginAccess();
  v4 = sub_243B8EA88();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_243B87890(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11CodesignKit13CSKHostSource_source;
  swift_beginAccess();
  v4 = sub_243B8EA88();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void (*CSKHostSource.init(source:)(uint64_t a1))(uint64_t, uint64_t)
{
  v2 = sub_243B8EA68();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  (MEMORY[0x28223BE20])();
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_243B8EA88();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  (MEMORY[0x28223BE20])();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_243B8EA38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = (MEMORY[0x28223BE20])();
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v34 = v6;
  v18 = *(v6 + 16);
  v31 = OBJC_IVAR____TtC11CodesignKit13CSKHostSource_source;
  v18(&v37[OBJC_IVAR____TtC11CodesignKit13CSKHostSource_source], a1, v5);
  v35 = a1;
  v18(v9, a1, v5);
  v19 = v32;
  sub_243B8EA28();
  (*(v11 + 16))(v15, v17, v10);
  v20 = v33;
  sub_243B8EA48();
  if (v20)
  {
    v21 = *(v34 + 8);
    v21(v35, v5);
    (*(v11 + 8))(v17, v10);
    v22 = v37;
    v21(&v37[v31], v5);
    type metadata accessor for CSKHostSource();
    v23 = *((*MEMORY[0x277D85000] & *v22) + 0x30);
    v24 = *((*MEMORY[0x277D85000] & *v22) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v11 + 8))(v17, v10);
    v25 = v37;
    (*(v29 + 32))(&v37[OBJC_IVAR____TtC11CodesignKit13CSKHostSource_process], v19, v30);
    v26 = type metadata accessor for CSKHostSource();
    v36.receiver = v25;
    v36.super_class = v26;
    v21 = objc_msgSendSuper2(&v36, sel_init);
    (*(v34 + 8))(v35, v5);
  }

  return v21;
}

uint64_t sub_243B87D6C()
{
  v2 = sub_243B8EA68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v0 + OBJC_IVAR____TtC11CodesignKit13CSKHostSource_process, v2);
  v7 = sub_243B8EA58();
  if (v1)
  {
    return (*(v3 + 8))(v6, v2);
  }

  v9 = v7;
  (*(v3 + 8))(v6, v2);
  v10 = [objc_opt_self() interfaceWithProtocol_];
  [v9 setRemoteObjectInterface_];

  [v9 resume];
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243B87FCC;
  aBlock[3] = &block_descriptor_42;
  v11 = _Block_copy(aBlock);
  v12 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v11);
  sub_243B8EBC8();

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA5128, &unk_243B8F4E0);
  swift_dynamicCast();
  return aBlock[7];
}

void sub_243B87FCC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_243B88034()
{
  v2 = sub_243B8EA68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v0 + OBJC_IVAR____TtC11CodesignKit13CSKHostSource_process, v2);
  v7 = sub_243B8EA58();
  if (v1)
  {
    return (*(v3 + 8))(v6, v2);
  }

  v9 = v7;
  (*(v3 + 8))(v6, v2);
  v10 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA52A0, &unk_243B8F670);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_243B8F2E0;
  v12 = sub_243B8AC10(0, &qword_27EDA5108, 0x277CBEA60);
  *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA52B0, &unk_243B8F4C0);
  *(v11 + 32) = v12;
  v13 = type metadata accessor for CSKSignerIdentity();
  *(v11 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA5110, &qword_243B8F680);
  *(v11 + 64) = v13;
  sub_243B8AC10(0, &unk_27EDA52C0, 0x277CBEB98);
  v14 = MEMORY[0x245D4A870](v11);
  sub_243B8AC10(0, &qword_27EDA5118, 0x277D82BB8);
  sub_243B8AC58();
  v15 = sub_243B8EB48();

  sub_243B8AE70(v15);

  v16 = sub_243B8EB38();

  [v10 setClasses:v16 forSelector:sel_signersWithReply_ argumentIndex:0 ofReply:1];

  [v9 setRemoteObjectInterface_];
  [v9 resume];
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243B87FCC;
  aBlock[3] = &block_descriptor_39;
  v17 = _Block_copy(aBlock);
  v18 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_243B8EBC8();

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA5120, &unk_243B8F4D0);
  swift_dynamicCast();
  return v19[1];
}

uint64_t sub_243B883E4()
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = sub_243B87D6C();
  if (v1)
  {
  }

  else
  {
    v7[4] = sub_243B89CB4;
    v7[5] = v2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_243B88520;
    v7[3] = &block_descriptor;
    v4 = v3;
    v5 = _Block_copy(v7);

    [v4 APIVersionWithReply_];
    swift_unknownObjectRelease();
    _Block_release(v5);
    swift_beginAccess();
    v0 = *(v2 + 16);
  }

  return v0;
}

uint64_t sub_243B88520(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_243B88574()
{
  v2 = sub_243B87D6C();
  if (!v1)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = 0xD00000000000001CLL;
    *(v4 + 24) = 0x8000000243B8F9B0;
    v8[4] = sub_243B89D44;
    v8[5] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_243B88734;
    v8[3] = &block_descriptor_6;
    v5 = _Block_copy(v8);

    [v3 nameWithReply_];
    swift_unknownObjectRelease();
    _Block_release(v5);
    swift_beginAccess();
    v0 = *(v4 + 16);
    v6 = *(v4 + 24);
  }

  return v0;
}

uint64_t sub_243B886D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 24);
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
}

uint64_t sub_243B88734(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_243B8EAF8();
  v5 = v4;

  v2(v3, v5);
}

void *sub_243B887A0()
{
  v2 = sub_243B88034();
  if (!v0)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = MEMORY[0x277D84F90];
    v1 = (v4 + 16);
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    aBlock[4] = sub_243B89DC0;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B88A44;
    aBlock[3] = &block_descriptor_18;
    v7 = _Block_copy(aBlock);

    [v3 signersWithReply_];
    _Block_release(v7);
    swift_beginAccess();
    v8 = *(v5 + 16);
    if (v8)
    {
      swift_willThrow();
      v9 = v8;
    }

    else
    {
      swift_beginAccess();
      v1 = *v1;
      if (v1)
      {

        swift_unknownObjectRelease();

        return v1;
      }

      sub_243B89DC8();
      swift_allocError();
      *v11 = 0;
      swift_willThrow();
    }

    swift_unknownObjectRelease();
  }

  return v1;
}

void sub_243B889A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a1;

  swift_beginAccess();
  v9 = *(a4 + 16);
  *(a4 + 16) = a2;
  v10 = a2;
}

uint64_t sub_243B88A44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for CSKSignerIdentity();
    v4 = sub_243B8EB28();
  }

  v7 = a3;
  v6(v4, a3);
}

unint64_t sub_243B88AD8(void (*a1)(void))
{
  result = sub_243B887A0();
  if (!v1)
  {
    v4 = result;
    if (result >> 62)
    {
      result = sub_243B8EBE8();
      v5 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        if (v5 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x245D4A910](i, v4);
          }

          else
          {
            v7 = *(v4 + 8 * i + 32);
          }

          v8 = v7;
          a1();
        }
      }
    }
  }

  return result;
}

uint64_t sub_243B88BBC()
{
  v1 = sub_243B8EA88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC11CodesignKit13CSKHostSource_source;
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v6, v1);
  v7 = sub_243B8EA78();
  (*(v2 + 8))(v5, v1);
  return v7;
}

void *sub_243B88CD4(void *a1)
{
  v3 = sub_243B88034();
  if (!v1)
  {
    v4 = v3;
    v19 = 0;
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_243B8F2F0;
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    v7 = type metadata accessor for CSKSignatureAlgorithmWrapper();
    v18.receiver = objc_allocWithZone(v7);
    v18.super_class = v7;
    v8 = objc_msgSendSuper2(&v18, sel_init);
    v9 = sub_243B8EAE8();
    v10 = swift_allocObject();
    *(v10 + 16) = v5;
    *(v10 + 24) = v6;
    aBlock[4] = sub_243B89EF8;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B89008;
    aBlock[3] = &block_descriptor_28;
    v11 = _Block_copy(aBlock);

    [v4 signMessageDigest:a1 withSigner:v9 usingAlgorithm:v8 reply:v11];
    _Block_release(v11);

    swift_beginAccess();
    a1 = *(v6 + 16);
    if (a1)
    {
      v12 = *(v6 + 16);
      swift_willThrow();
      v13 = a1;
    }

    else
    {
      swift_beginAccess();
      if (*(v5 + 24) >> 60 != 15)
      {
        a1 = *(v5 + 16);
        sub_243B89F00(a1, *(v5 + 24));
        swift_unknownObjectRelease();

        return a1;
      }

      sub_243B89DC8();
      v14 = swift_allocError();
      *v15 = 1;
      a1 = v14;
      swift_willThrow();
    }

    swift_unknownObjectRelease();
  }

  return a1;
}

void sub_243B88F58(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_243B8ABFC(a1, a2);
  sub_243B8ABE8(v10, v11);
  swift_beginAccess();
  v12 = *(a5 + 16);
  *(a5 + 16) = a3;
  v13 = a3;
}

uint64_t sub_243B89008(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_243B8EA18();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_243B8ABE8(v4, v9);
}

id CSKHostSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static CSKHost.enumerateSources(_:)(void (*a1)(id), uint64_t a2)
{
  v72 = a2;
  v71 = a1;
  v75 = sub_243B8EAC8();
  v94 = *(v75 - 8);
  v2 = *(v94 + 64);
  MEMORY[0x28223BE20](v75);
  v90 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_243B8EA68();
  v4 = *(v70 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v70);
  v88 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243B8EA38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v87 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v86 = &v66 - v12;
  v13 = sub_243B8EA88();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v85 = &v66 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v66 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v66 - v24;
  v26 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v27 = sub_243B8EAE8();
  v28 = [v26 initWithExtensionPointIdentifier_];

  v29 = objc_opt_self();
  v67 = v28;
  v30 = [v29 executeQuery_];
  sub_243B8AC10(0, &qword_27EDA50B0, 0x277CC5DD8);
  v31 = sub_243B8EB28();

  v33 = v31;
  if (v31 >> 62)
  {
    result = sub_243B8EBE8();
    v33 = v31;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v35 = 0;
        v95 = 0;
        v81 = v33 & 0xC000000000000001;
        v36 = (v14 + 16);
        v79 = (v8 + 16);
        v78 = (v8 + 8);
        v77 = (v14 + 8);
        v73 = (v94 + 8);
        v69 = (v4 + 32);
        *&v32 = 136315394;
        v68 = v32;
        v83 = v33;
        v84 = v7;
        v89 = v18;
        v80 = (v14 + 16);
        v74 = v23;
        v82 = result;
        v91 = v25;
        v76 = v13;
        do
        {
          v94 = v35;
          v39 = v7;
          if (v81)
          {
            v40 = MEMORY[0x245D4A910](v35);
          }

          else
          {
            v40 = *(v33 + 8 * v35 + 32);
          }

          v93 = v40;
          sub_243B8EA98();
          v41 = *v36;
          (*v36)(v23, v25, v13);
          v92 = type metadata accessor for CSKHostSource();
          v42 = objc_allocWithZone(v92);
          v43 = OBJC_IVAR____TtC11CodesignKit13CSKHostSource_source;
          v41(&v42[OBJC_IVAR____TtC11CodesignKit13CSKHostSource_source], v23, v13);
          v41(v85, v23, v13);
          v44 = v86;
          sub_243B8EA28();
          (*v79)(v87);
          v45 = v88;
          v46 = v95;
          sub_243B8EA48();
          if (v46)
          {
            (*v78)(v44, v39);
            v47 = *v77;
            v48 = v76;
            (*v77)(v23, v76);
            v95 = v47;
            v47(&v42[v43], v48);
            v49 = *((*MEMORY[0x277D85000] & *v42) + 0x30);
            v50 = *((*MEMORY[0x277D85000] & *v42) + 0x34);
            swift_deallocPartialClassInstance();
            sub_243B8EAB8();
            v51 = v89;
            v41(v89, v91, v48);
            v52 = v46;
            v53 = sub_243B8EAA8();
            v54 = sub_243B8EB88();

            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              v97 = v92;
              *v55 = v68;
              v57 = sub_243B8EA78();
              v59 = v58;
              v60 = v95;
              v95(v89, v48);
              v61 = sub_243B89F54(v57, v59, &v97);

              *(v55 + 4) = v61;
              *(v55 + 12) = 2112;
              v62 = v46;
              v63 = _swift_stdlib_bridgeErrorToNSError();
              *(v55 + 14) = v63;
              *v56 = v63;
              _os_log_impl(&dword_243B86000, v53, v54, "Failed to communicate with %s: %@", v55, 0x16u);
              sub_243B8A4FC(v56);
              MEMORY[0x245D4AD20](v56, -1, -1);
              v64 = v92;
              __swift_destroy_boxed_opaque_existential_0(v92);
              MEMORY[0x245D4AD20](v64, -1, -1);
              MEMORY[0x245D4AD20](v55, -1, -1);

              (*v73)(v90, v75);
              v25 = v91;
              v60(v91, v48);
            }

            else
            {

              v65 = v95;
              v95(v51, v48);
              (*v73)(v90, v75);
              v25 = v91;
              v65(v91, v48);
            }

            v95 = 0;
            v13 = v48;
            v23 = v74;
          }

          else
          {
            v95 = 0;
            (*v78)(v44, v39);
            (*v69)(&v42[OBJC_IVAR____TtC11CodesignKit13CSKHostSource_process], v45, v70);
            v96.receiver = v42;
            v96.super_class = v92;
            v37 = objc_msgSendSuper2(&v96, sel_init);
            v38 = *v77;
            v13 = v76;
            (*v77)(v23, v76);
            v71(v37);

            v25 = v91;
            v38(v91, v13);
          }

          v35 = v94 + 1;
          v33 = v83;
          v7 = v84;
          v36 = v80;
        }

        while (v82 != v94 + 1);
      }

      return result;
    }
  }

  else
  {
    result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }
}

id CSKHost.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSKHost();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_243B89C20(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for CSKHostSource()
{
  result = qword_27EDA50E8;
  if (!qword_27EDA50E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243B89CB4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243B89D0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243B89D4C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243B89D84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_243B89DC8()
{
  result = qword_27EDA50A8;
  if (!qword_27EDA50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA50A8);
  }

  return result;
}

uint64_t sub_243B89E1C()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_243B89E64(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243B89E64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243B89F00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_243B89F54(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_243B8A020(v11, 0, 0, 1, a1, a2);
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
    sub_243B8AB88(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_243B8A020(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_243B8A12C(a5, a6);
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
    result = sub_243B8EC48();
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

uint64_t sub_243B8A12C(uint64_t a1, unint64_t a2)
{
  v4 = sub_243B8A178(a1, a2);
  sub_243B8A2A8(&unk_2856C9D70);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_243B8A178(uint64_t a1, unint64_t a2)
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

  v6 = sub_243B8A394(v5, 0);
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

  result = sub_243B8EC48();
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
        v10 = sub_243B8EB08();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_243B8A394(v10, 0);
        result = sub_243B8EC28();
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

uint64_t sub_243B8A2A8(uint64_t result)
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

  result = sub_243B8A408(result, v12, 1, v3);
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

void *sub_243B8A394(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA5100, &qword_243B8F4B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_243B8A408(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA5100, &qword_243B8F4B8);
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

uint64_t sub_243B8A4FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA50B8, &qword_243B8F300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_243B8A620()
{
  result = qword_27EDA50C0;
  if (!qword_27EDA50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA50C0);
  }

  return result;
}

unint64_t sub_243B8A678()
{
  result = qword_27EDA50C8;
  if (!qword_27EDA50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA50C8);
  }

  return result;
}

unint64_t sub_243B8A6D0()
{
  result = qword_27EDA50D0;
  if (!qword_27EDA50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA50D0);
  }

  return result;
}

unint64_t sub_243B8A728()
{
  result = qword_27EDA50D8;
  if (!qword_27EDA50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA50D8);
  }

  return result;
}

unint64_t sub_243B8A780()
{
  result = qword_27EDA50E0;
  if (!qword_27EDA50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA50E0);
  }

  return result;
}

uint64_t sub_243B8A7F0()
{
  result = sub_243B8EA88();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_243B8EA68();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_243B8AB34()
{
  result = qword_27EDA50F8;
  if (!qword_27EDA50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA50F8);
  }

  return result;
}

uint64_t sub_243B8AB88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243B8ABE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243B89E64(a1, a2);
  }

  return a1;
}

uint64_t sub_243B8ABFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243B89F00(a1, a2);
  }

  return a1;
}

uint64_t sub_243B8AC10(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_243B8AC58()
{
  result = qword_27EDA52D0;
  if (!qword_27EDA52D0)
  {
    sub_243B8AC10(255, &qword_27EDA5118, 0x277D82BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA52D0);
  }

  return result;
}

id SignerSourceBase.configuration.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for _SignerSourceConfigurationBase();
  result = sub_243B8C45C(v1);
  *a1 = result;
  return result;
}

id SignerSource_v1.configuration.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for _SignerSourceConfiguration_v1();
  result = sub_243B8C498(v1);
  *a1 = result;
  return result;
}

uint64_t get_witness_table_11CodesignKit16SignerSourceBaseRzlAA01_cd13ConfigurationE0CyxGAA0cdF0HPyHCTm(void *a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *a1, a1[1]);

  return swift_getWitnessTable();
}

uint64_t sub_243B8AE70(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_243B8EBE8())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x277D84FA0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA52D8, &qword_243B8F688);
  v3 = sub_243B8EC18();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_243B8EBD8();
  sub_243B8AC10(0, &qword_27EDA5118, 0x277D82BB8);
  sub_243B8AC58();
  result = sub_243B8EB58();
  v1 = v31;
  v5 = v32;
  v6 = v33;
  v7 = v34;
  v8 = v35;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_243B8EBF8();
    if (!v16)
    {
LABEL_34:
      sub_243B8C340();

      return v3;
    }

    *&v28 = v16;
    sub_243B8AC10(0, &qword_27EDA5118, 0x277D82BB8);
    swift_dynamicCast();
LABEL_25:
    sub_243B8AC10(0, &qword_27EDA5118, 0x277D82BB8);
    swift_dynamicCast();
    v20 = *(v3 + 40);
    result = sub_243B8EC08();
    v21 = -1 << *(v3 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = 0;
      v25 = (63 - v21) >> 6;
      do
      {
        if (++v23 == v25 && (v24 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v26 = v23 == v25;
        if (v23 == v25)
        {
          v23 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v23);
      }

      while (v27 == -1);
      v13 = __clz(__rbit64(~v27)) + (v23 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v30;
    *v14 = v28;
    *(v14 + 16) = v29;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

id CSKSignatureAlgorithmWrapper.__allocating_init(algorithm:)()
{
  v2.receiver = objc_allocWithZone(v0);
  v2.super_class = v0;
  return objc_msgSendSuper2(&v2, sel_init);
}

id CSKSignatureAlgorithmWrapper.init(algorithm:)()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSKSignatureAlgorithmWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t CSKSignatureAlgorithmWrapper.init(coder:)(void *a1)
{
  v2 = v1;
  sub_243B8AC10(0, &unk_27EDA5130, 0x277CCABB0);
  result = sub_243B8EBA8();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  v9 = 0;
  v10 = 1;
  result = MEMORY[0x245D4A840](result, &v9);
  if (v10)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = v9;

  if (v6)
  {

    type metadata accessor for CSKSignatureAlgorithmWrapper();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v8.receiver = v2;
    v8.super_class = type metadata accessor for CSKSignatureAlgorithmWrapper();
    v7 = objc_msgSendSuper2(&v8, sel_init);

    return v7;
  }
}

void sub_243B8B3F0(void *a1)
{
  v2 = sub_243B8EAE8();
  [a1 encodeInteger:0 forKey:v2];
}

id CSKSignatureAlgorithmWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CSKSignatureAlgorithmWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSKSignatureAlgorithmWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243B8B6C0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_243B8B754(uint64_t (*a1)(uint64_t))
{
  v3 = *(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 16);
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v6 = v3(v4);
  return a1(v6);
}

uint64_t sub_243B8B824(void (*a1)(uint64_t))
{
  v3 = *(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 24);
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v6 = v3(v4);
  a1(v6);
}

uint64_t sub_243B8B90C(void *a1)
{
  [a1 setExportedObject_];
  v3 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 resume];
  return 1;
}

void sub_243B8B998(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_243B8C4D4();
}

id sub_243B8B9D8()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _SignerSourceConfigurationBase();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_243B8BB58(void (*a1)(uint64_t, void))
{
  v3 = *(*((*MEMORY[0x277D85000] & *v1) + 0x90) + 16);
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v5 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v6 = v3(v4);
  a1(v6, 0);
}

uint64_t sub_243B8BCA0(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

void sub_243B8BD34(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    type metadata accessor for CSKSignerIdentity();
    v5 = sub_243B8EB18();
  }

  if (a2)
  {
    v6 = sub_243B8E9F8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_243B8BDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t, void))
{
  v7 = *(*((*MEMORY[0x277D85000] & *v5) + 0x90) + 24);
  v8 = *((*MEMORY[0x277D85000] & *v5) + 0x88);
  v9 = v5 + *((*MEMORY[0x277D85000] & *v5) + 0x60);
  v10 = v7(a1, a2, a3, a4, v8);
  v12 = v11;
  sub_243B89F00(v10, v11);
  a5(v10, v12, 0);
  sub_243B89E64(v10, v12);

  return sub_243B89E64(v10, v12);
}

uint64_t sub_243B8BF14(void *a1, int a2, void *a3, int a4, void *a5, void *aBlock)
{
  v9 = _Block_copy(aBlock);
  v10 = sub_243B8EAF8();
  v12 = v11;
  *(swift_allocObject() + 16) = v9;
  v13 = a3;
  v14 = a5;
  v15 = a1;
  sub_243B8BDD0(v13, v10, v12, v16, sub_243B8C380);
}

void sub_243B8BFFC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_243B8E9F8();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_243B8EA08();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_243B8C094(void *a1)
{
  [a1 setExportedObject_];
  v3 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA52A0, &unk_243B8F670);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_243B8F2E0;
  v5 = sub_243B8AC10(0, &qword_27EDA5108, 0x277CBEA60);
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA52B0, &unk_243B8F4C0);
  *(v4 + 32) = v5;
  v6 = type metadata accessor for CSKSignerIdentity();
  *(v4 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA5110, &qword_243B8F680);
  *(v4 + 64) = v6;
  sub_243B8AC10(0, &unk_27EDA52C0, 0x277CBEB98);
  v7 = MEMORY[0x245D4A870](v4);
  sub_243B8AC10(0, &qword_27EDA5118, 0x277D82BB8);
  sub_243B8AC58();
  v8 = sub_243B8EB48();

  sub_243B8AE70(v8);

  v9 = sub_243B8EB38();

  [v3 setClasses:v9 forSelector:sel_signersWithReply_ argumentIndex:0 ofReply:1];

  [a1 setExportedInterface_];
  [a1 resume];

  return 1;
}

id sub_243B8C27C()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x90);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _SignerSourceConfiguration_v1();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_243B8C304(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_243B8C348()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_243B8C390(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  v4 = *((v3 & v2) + 0x58);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _SignerSourceConfigurationBase();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_243B8C45C(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = objc_allocWithZone(type metadata accessor for _SignerSourceConfigurationBase());
  return sub_243B8C390(a1);
}

id sub_243B8C498(uint64_t a1)
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = objc_allocWithZone(type metadata accessor for _SignerSourceConfiguration_v1());
  return sub_243B8C390(a1);
}

void sub_243B8C504()
{
  v1 = *(v0 + 16);
  v2 = sub_243B8EAE8();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_243B8C5DC()
{
  sub_243B8ECA8();
  MEMORY[0x245D4A990](0);
  return sub_243B8ECC8();
}

uint64_t sub_243B8C64C()
{
  sub_243B8ECA8();
  MEMORY[0x245D4A990](0);
  return sub_243B8ECC8();
}

uint64_t CSKSignerError.hashValue.getter()
{
  v1 = *v0;
  sub_243B8ECA8();
  MEMORY[0x245D4A990](v1);
  return sub_243B8ECC8();
}

uint64_t sub_243B8C744()
{
  v1 = *v0;
  sub_243B8ECA8();
  MEMORY[0x245D4A990](v1);
  return sub_243B8ECC8();
}

uint64_t sub_243B8C7B8()
{
  v1 = *v0;
  sub_243B8ECA8();
  MEMORY[0x245D4A990](v1);
  return sub_243B8ECC8();
}

unint64_t CSKSignerError.description.getter()
{
  v1 = 0xD00000000000002CLL;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000018;
  }

  v2 = 0xD000000000000023;
  if (!*v0)
  {
    v2 = 0xD000000000000024;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

unint64_t sub_243B8C878()
{
  v1 = 0xD00000000000002CLL;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000018;
  }

  v2 = 0xD000000000000023;
  if (!*v0)
  {
    v2 = 0xD000000000000024;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_243B8C8EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11CodesignKit16CSKMessageDigest_digest);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_243B89F00(v4, v5);
}

uint64_t sub_243B8C944(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11CodesignKit16CSKMessageDigest_digest);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_243B89F00(v2, v3);
  return sub_243B89E64(v5, v6);
}

uint64_t sub_243B8C9C0()
{
  v1 = v0 + OBJC_IVAR____TtC11CodesignKit16CSKMessageDigest_digest;
  swift_beginAccess();
  v2 = *v1;
  sub_243B89F00(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_243B8CA1C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11CodesignKit16CSKMessageDigest_digest);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_243B89E64(v6, v7);
}

id CSKMessageDigest.__allocating_init(digest:algorithm:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC11CodesignKit16CSKMessageDigest_digest];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id CSKMessageDigest.init(digest:algorithm:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC11CodesignKit16CSKMessageDigest_digest];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for CSKMessageDigest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t CSKMessageDigest.init(coder:)(void *a1)
{
  v2 = v1;
  sub_243B8AC10(0, &unk_27EDA5348, 0x277CBEA90);
  v4 = sub_243B8EBA8();
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_243B8EA18();
  v8 = v7;

  sub_243B8AC10(0, &unk_27EDA5130, 0x277CCABB0);
  result = sub_243B8EBA8();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;
  v15 = 0;
  v16 = 1;
  result = MEMORY[0x245D4A840](result, &v15);
  if (v16)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v11 = v15;

  if (v11)
  {
    sub_243B89E64(v6, v8);
LABEL_6:

    type metadata accessor for CSKMessageDigest();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v12 = &v2[OBJC_IVAR____TtC11CodesignKit16CSKMessageDigest_digest];
  *v12 = v6;
  v12[1] = v8;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for CSKMessageDigest();
  v13 = objc_msgSendSuper2(&v14, sel_init);

  return v13;
}

void sub_243B8CD68(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11CodesignKit16CSKMessageDigest_digest);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  sub_243B89F00(v5, v4);
  v6 = sub_243B8EA08();
  sub_243B89E64(v5, v4);
  v7 = sub_243B8EAE8();
  [a1 encodeObject:v6 forKey:v7];

  v8 = sub_243B8EAE8();
  [a1 encodeInteger:0 forKey:v8];
}

id CSKMessageDigest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_243B8CFF8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_243B8D06C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_243B8D0CC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_243B8D200(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t sub_243B8D270(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_243B8D2C0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id CSKSignerIdentity.__allocating_init(id:name:certificateChain:supportedSignatureAlgorithms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC11CodesignKit17CSKSignerIdentity_id];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC11CodesignKit17CSKSignerIdentity_name];
  *v15 = a3;
  *(v15 + 1) = a4;
  *&v13[OBJC_IVAR____TtC11CodesignKit17CSKSignerIdentity_certificateChain] = a5;
  *&v13[OBJC_IVAR____TtC11CodesignKit17CSKSignerIdentity_supportedSignatureAlgorithms] = a6;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, sel_init);
}

id CSKSignerIdentity.init(id:name:certificateChain:supportedSignatureAlgorithms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR____TtC11CodesignKit17CSKSignerIdentity_id];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = &v6[OBJC_IVAR____TtC11CodesignKit17CSKSignerIdentity_name];
  *v8 = a3;
  *(v8 + 1) = a4;
  *&v6[OBJC_IVAR____TtC11CodesignKit17CSKSignerIdentity_certificateChain] = a5;
  *&v6[OBJC_IVAR____TtC11CodesignKit17CSKSignerIdentity_supportedSignatureAlgorithms] = a6;
  v10.receiver = v6;
  v10.super_class = type metadata accessor for CSKSignerIdentity();
  return objc_msgSendSuper2(&v10, sel_init);
}

char *CSKSignerIdentity.init(coder:)(void *a1)
{
  v2 = v1;
  sub_243B8AC10(0, &qword_27EDA5378, 0x277CCACA8);
  v4 = sub_243B8EBA8();
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v4;
  v6 = sub_243B8EAF8();
  v8 = v7;

  v9 = sub_243B8EBA8();
  if (!v9)
  {

LABEL_16:

LABEL_19:
    type metadata accessor for CSKSignerIdentity();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v10 = v9;
  v11 = sub_243B8EAF8();
  v13 = v12;

  sub_243B8AC10(0, &unk_27EDA5348, 0x277CBEA90);
  v14 = sub_243B8EBB8();
  if (!v14 || (v31 = v14, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA5380, &qword_243B8F6A0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA5388, &qword_243B8F6A8), (swift_dynamicCast() & 1) == 0))
  {

LABEL_18:

    goto LABEL_19;
  }

  sub_243B8AC10(0, &unk_27EDA5130, 0x277CCABB0);
  v15 = sub_243B8EBB8();
  if (!v15 || (v16 = sub_243B8D7FC(v15), , !v16))
  {

    goto LABEL_18;
  }

  v28 = v30;
  v17 = *(v16 + 16);
  if (v17)
  {
    v27 = v11;
    v31 = MEMORY[0x277D84F90];
    result = sub_243B8DDE4(0, v17, 0);
    v19 = 32;
    v20 = v31;
    while (!*(v16 + v19))
    {
      v31 = v20;
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        result = sub_243B8DDE4((v21 > 1), v22 + 1, 1);
        v20 = v31;
      }

      *(v20 + 16) = v23;
      v19 += 8;
      if (!--v17)
      {

        v11 = v27;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
LABEL_21:
    v24 = &v2[OBJC_IVAR____TtC11CodesignKit17CSKSignerIdentity_id];
    *v24 = v6;
    v24[1] = v8;
    v25 = &v2[OBJC_IVAR____TtC11CodesignKit17CSKSignerIdentity_name];
    *v25 = v11;
    v25[1] = v13;
    *&v2[OBJC_IVAR____TtC11CodesignKit17CSKSignerIdentity_certificateChain] = v28;
    *&v2[OBJC_IVAR____TtC11CodesignKit17CSKSignerIdentity_supportedSignatureAlgorithms] = v20;
    v29.receiver = v2;
    v29.super_class = type metadata accessor for CSKSignerIdentity();
    v26 = objc_msgSendSuper2(&v29, sel_init);

    return v26;
  }

  return result;
}

uint64_t sub_243B8D7FC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_243B8EBE8())
  {
    v8 = MEMORY[0x277D84F90];
    sub_243B8DE04(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_243B8EBE8();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = MEMORY[0x245D4A910](0, a1);
LABEL_10:
  v6 = v5;
  sub_243B8EB78();

  return 0;
}

void sub_243B8D9AC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11CodesignKit17CSKSignerIdentity_supportedSignatureAlgorithms;
  swift_beginAccess();
  v5 = *(*(v2 + v4) + 16);
  if (v5)
  {
    v24 = MEMORY[0x277D84F90];

    sub_243B8DE04(0, v5, 0);
    v6 = *(v24 + 16);
    do
    {
      v7 = *(v24 + 24);
      if (v6 >= v7 >> 1)
      {
        sub_243B8DE04((v7 > 1), v6 + 1, 1);
      }

      *(v24 + 16) = v6 + 1;
      *(v24 + 8 * v6++ + 32) = 0;
      --v5;
    }

    while (v5);
  }

  v8 = (v2 + OBJC_IVAR____TtC11CodesignKit17CSKSignerIdentity_id);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];

  v11 = sub_243B8EAE8();

  v12 = sub_243B8EAE8();
  [a1 encodeObject:v11 forKey:v12];

  v13 = (v2 + OBJC_IVAR____TtC11CodesignKit17CSKSignerIdentity_name);
  swift_beginAccess();
  v15 = *v13;
  v14 = v13[1];

  v16 = sub_243B8EAE8();

  v17 = sub_243B8EAE8();
  [a1 encodeObject:v16 forKey:v17];

  v18 = OBJC_IVAR____TtC11CodesignKit17CSKSignerIdentity_certificateChain;
  swift_beginAccess();
  v19 = *(v2 + v18);

  v20 = sub_243B8EB18();

  v21 = sub_243B8EAE8();
  [a1 encodeObject:v20 forKey:v21];

  v22 = sub_243B8EB18();

  v23 = sub_243B8EAE8();
  [a1 encodeObject:v22 forKey:v23];
}

id sub_243B8DD38(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_243B8DDE4(char *a1, int64_t a2, char a3)
{
  result = sub_243B8E798(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243B8DE04(char *a1, int64_t a2, char a3)
{
  result = sub_243B8E88C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_243B8DE28()
{
  result = qword_27EDA5390;
  if (!qword_27EDA5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA5390);
  }

  return result;
}

unint64_t sub_243B8DE80()
{
  result = qword_27EDA5398;
  if (!qword_27EDA5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA5398);
  }

  return result;
}

unint64_t sub_243B8DED8()
{
  result = qword_27EDA53A0;
  if (!qword_27EDA53A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA53A0);
  }

  return result;
}

uint64_t keypath_get_4Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t keypath_get_8Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t sub_243B8E0BC(unsigned int *a1, int a2)
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

_WORD *sub_243B8E110(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CSKSignerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CSKSignerError(uint64_t result, unsigned int a2, unsigned int a3)
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

char *sub_243B8E798(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA53B0, &unk_243B8F990);
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

char *sub_243B8E88C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA53A8, &qword_243B8F988);
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