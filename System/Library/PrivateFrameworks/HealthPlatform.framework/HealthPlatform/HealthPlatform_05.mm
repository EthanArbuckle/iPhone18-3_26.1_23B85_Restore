void sub_2284520B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_228451C98(255, a3, type metadata accessor for PluginFeedItem, a4);
    v5 = sub_22855CCCC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_228452130(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22842BCE4();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline();
  v17[3] = (*(v13 + 32))(a2 + *(v14 + 20), a3, v12, v13);
  v15 = MEMORY[0x277D83D88];
  sub_2284520B8(0, &qword_280DE9948, &qword_280DEE728, MEMORY[0x277D83D88]);
  sub_228452068(&qword_280DE9950, &qword_280DE9948, &qword_280DEE728, v15);
  sub_22855CEDC();

  type metadata accessor for PluginFeedItem();
  sub_228453450(&qword_280DE9B18, sub_22842BCE4);
  sub_22855CE7C();
  return (*(v8 + 8))(v11, v7);
}

id sub_22845238C(uint64_t a1)
{
  v2 = v1 + *(a1 + 24);
  v3 = *v2;
  sub_22845063C(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  return v3;
}

uint64_t sub_2284523E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2284506B8();
  *a1 = result;
  return result;
}

uint64_t sub_228452410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a1;
  v25 = a3;
  v4 = sub_22855C37C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228451ADC();
  v24 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228453070(v22, v10, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  (*(v5 + 16))(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v4);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_2284530D8(v10, v18 + v16, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  (*(v5 + 32))(v18 + v17, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_228451B70();
  sub_228453450(&qword_280DE9A68, sub_228451B70);
  sub_22855CE2C();
  sub_228453450(&qword_280DE9778, sub_228451ADC);
  v19 = v24;
  v20 = sub_22855CE6C();
  result = (*(v12 + 8))(v15, v19);
  *v25 = v20;
  return result;
}

uint64_t sub_228452740@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = v2;
}

void sub_2284527C4()
{
  type metadata accessor for GeneratorContext();
  if (v0 <= 0x3F)
  {
    sub_228452894(319, &qword_280DE9618, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2283FBB5C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_228452894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2283F9B94(255, &qword_280DEAE68);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v19 = *(*(v1 - 1) + 64);
  v21 = sub_22855C37C();
  v4 = *(v21 - 8);
  v5 = *(v4 + 80);
  v20 = *(v4 + 64);
  v22 = v0;
  v6 = v0 + v3;

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = (v0 + v3 + v1[5]);

  v10 = type metadata accessor for GeneratorContext();
  v11 = v9 + v10[5];
  sub_228450F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v12 = *(v11 + 1);

    v13 = *(type metadata accessor for CountryRetrievalRecord() + 24);
    v14 = sub_22855C16C();
    (*(*(v14 - 8) + 8))(&v11[v13], v14);
  }

  v15 = (v3 + v19 + v5) & ~v5;
  __swift_destroy_boxed_opaque_existential_0((v9 + v10[7]));
  __swift_destroy_boxed_opaque_existential_0((v9 + v10[8]));
  sub_228451F14(*(v6 + v1[6]), *(v6 + v1[6] + 8), *(v6 + v1[6] + 16), *(v6 + v1[6] + 24));
  v16 = *(v6 + v1[7]);

  v17 = *(v6 + v1[8] + 8);

  (*(v4 + 8))(v22 + v15, v21);

  return MEMORY[0x2821FE8E8](v22, v15 + v20, v2 | v5 | 7);
}

uint64_t sub_228452BB4()
{
  v1 = *(type metadata accessor for FeatureStatusFeedItemGeneratorPipeline() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_22855C37C() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_228451CFC(v0 + v2, v5);
}

uint64_t sub_228452CA8(uint64_t a1, uint64_t a2)
{
  sub_228451C98(0, &qword_280DEE728, type metadata accessor for PluginFeedItem, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228452D3C(uint64_t a1)
{
  v2 = type metadata accessor for CountryRetrievalRecord();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228450F00();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for GeneratorContext();
  sub_228453070(a1 + *(v10 + 20), v9, sub_228450F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v9;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v12 = sub_22855CABC();
    __swift_project_value_buffer(v12, qword_280DEEBF0);
    v13 = v11;
    v14 = sub_22855CA8C();
    v15 = sub_22855D68C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136446466;
      *(v16 + 4) = sub_2283F8938(0xD000000000000026, 0x8000000228561CE0, &v26);
      *(v16 + 12) = 2082;
      v25 = v11;
      v18 = v13;
      v19 = sub_22855D1BC();
      v21 = sub_2283F8938(v19, v20, &v26);

      *(v16 + 14) = v21;
      _os_log_impl(&dword_2283ED000, v14, v15, "[%{public}s] Failed to get country code: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v17, -1, -1);
      MEMORY[0x22AABAD40](v16, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    sub_2284530D8(v9, v5, type metadata accessor for CountryRetrievalRecord);
    v22 = *v5;
    v23 = v5[1];

    sub_228453140(v5, type metadata accessor for CountryRetrievalRecord);
  }

  return v22;
}

unint64_t sub_228453024()
{
  result = qword_280DE92E0;
  if (!qword_280DE92E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE92E0);
  }

  return result;
}

uint64_t sub_228453070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2284530D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228453140(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2284531A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v6 = sub_22855C37C();
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_228453210()
{
  if (!qword_280DE9D08)
  {
    sub_22845331C();
    v0 = MEMORY[0x277CBCD88];
    sub_2284531A0(255, &qword_280DE9918, MEMORY[0x277CBCD88]);
    sub_228453450(&qword_280DE99E8, sub_22845331C);
    sub_228451FE0(&qword_280DE9920, &qword_280DE9918, v0);
    v1 = sub_22855CB2C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9D08);
    }
  }
}

void sub_22845331C()
{
  if (!qword_280DE99E0)
  {
    v0 = MEMORY[0x277D11290];
    sub_228451C98(255, &qword_280DE9610, MEMORY[0x277D11290], MEMORY[0x277D83940]);
    sub_2284533EC(&qword_280DE9608, &qword_280DE9610, v0);
    v1 = sub_22855CC0C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE99E0);
    }
  }
}

uint64_t sub_2284533EC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228451C98(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228453450(unint64_t *a1, void (*a2)(uint64_t))
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

id FeedSection.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id FeedSection.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FeedSection();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id FeedSection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedSection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_228453590()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_2284535FC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_22855D1AC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_228453654(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 feedItems];
  type metadata accessor for FeedItem();
  sub_2284538F4();
  v4 = sub_22855D51C();

  *a2 = v4;
}

void sub_2284536C4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for FeedItem();
  sub_2284538F4();
  v4 = sub_22855D50C();
  [v3 setFeedItems_];
}

id MeasureIdentifierManagedObject.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id MeasureIdentifierManagedObject.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MeasureIdentifierManagedObject();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id MeasureIdentifierManagedObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MeasureIdentifierManagedObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2284538F4()
{
  result = qword_27D83F6C0[0];
  if (!qword_27D83F6C0[0])
  {
    type metadata accessor for FeedItem();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D83F6C0);
  }

  return result;
}

uint64_t Atomic.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Atomic.init(_:)(a1);
  return v5;
}

uint64_t Atomic.mutateAndReturn<A>(_:)()
{
  v2 = *(v0 + *(*v0 + 96));
  type metadata accessor for UnfairLock();
  sub_2283FD50C();

  sub_22855C3BC();
}

uint64_t sub_228453A40(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 88);
  swift_beginAccess();
  a1(a3 + v5);
  return swift_endAccess();
}

uint64_t Atomic.mutateReturningPrevious(_:)()
{
  v1 = *v0;
  v4 = *(v0 + *(*v0 + 96));
  type metadata accessor for UnfairLock();
  v2 = *(v1 + 80);
  sub_2283FD50C();

  sub_22855C3BC();
}

uint64_t sub_228453B88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(*a1 + 88);
  swift_beginAccess();
  v8 = *(v6 + 80);
  v9 = *(v8 - 8);
  (*(v9 + 16))(a3, a1 + v7, v8);
  swift_beginAccess();
  (*(v9 + 24))(a1 + v7, a2, v8);
  return swift_endAccess();
}

uint64_t sub_228453E64(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_228453ED4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_228454014(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_228454234(uint64_t a1, int a2)
{
  sub_2283F6B58();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  sub_2283F6AF4(a1, v7);
  v8 = DiskHealthExperienceStore.init(overrideStoreLocation:observeExternalChanges:)(v7, a2);

  sub_22848F750();

  sub_228454F54(a1);
  return v8;
}

id sub_2284542F4()
{
  result = [objc_opt_self() standardUserDefaults];
  word_280DECD38 = 257;
  qword_280DECD20 = 0xD00000000000002BLL;
  *algn_280DECD28 = 0x800000022856EC40;
  qword_280DECD30 = result;
  return result;
}

void sub_228454360()
{
  v1 = *v0;
  v2 = sub_22855D17C();
  v3 = [objc_opt_self() transactionWithName_];

  v4 = v0[4];
  os_unfair_lock_lock((v4 + 24));
  sub_228454EC4((v4 + 16), aBlock);
  os_unfair_lock_unlock((v4 + 24));
  v5 = aBlock[0];
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v1;
  aBlock[4] = sub_228454EE0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_4;
  v7 = _Block_copy(aBlock);
  v8 = v5;
  v9 = v3;

  [v8 performBlock_];
  _Block_release(v7);
}

id sub_228454504(void *a1, void *a2)
{
  if (qword_280DECD18 != -1)
  {
    swift_once();
  }

  v5 = qword_280DECD20;
  v4 = *algn_280DECD28;
  v6 = qword_280DECD30;
  v7 = word_280DECD38;
  if (HIBYTE(word_280DECD38) != 1)
  {

    v10 = v6;
    goto LABEL_7;
  }

  v8 = objc_opt_self();

  v9 = v6;
  if ([v8 isAppleInternalInstall])
  {
LABEL_7:
    v11 = sub_22848FB60(v5, v4, v6);

    if (v11 == 2)
    {
      v12 = v7;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if (v7)
  {
LABEL_11:
    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v13 = sub_22855CABC();
    __swift_project_value_buffer(v13, qword_280DEEBD0);
    v14 = sub_22855CA8C();
    v15 = sub_22855D6AC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2283ED000, v14, v15, "DaemonHealthExperienceStore - cleanUpManagedObjectContext - reset", v16, 2u);
      v17 = &selRef_reset;
LABEL_20:
      MEMORY[0x22AABAD40](v16, -1, -1);
      goto LABEL_23;
    }

    v17 = &selRef_reset;
    goto LABEL_23;
  }

LABEL_16:
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v18 = sub_22855CABC();
  __swift_project_value_buffer(v18, qword_280DEEBD0);
  v14 = sub_22855CA8C();
  v19 = sub_22855D6AC();
  if (os_log_type_enabled(v14, v19))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2283ED000, v14, v19, "DaemonHealthExperienceStore - cleanUpManagedObjectContext - refreshAllObjects", v16, 2u);
    v17 = &selRef_refreshAllObjects;
    goto LABEL_20;
  }

  v17 = &selRef_refreshAllObjects;
LABEL_23:

  [a1 *v17];

  return [a2 invalidate];
}

uint64_t DaemonHealthExperienceStore.deinit()
{
  sub_2284547FC();
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

void sub_2284547FC()
{
  v1 = v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEC98);
  v3 = sub_22855CA8C();
  v4 = sub_22855D66C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v12 = type metadata accessor for DaemonHealthExperienceStore();
    sub_228454FB0(0, qword_280DECB68, v7, type metadata accessor for DaemonHealthExperienceStore);
    v8 = sub_22855D1BC();
    v10 = sub_2283F8938(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v3, v4, "[%s] deregisterForDebuggingRequests()", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  v11 = [objc_opt_self() defaultCenter];
  if (qword_280DE93C0 != -1)
  {
    swift_once();
  }

  [v11 removeObserver:v1 name:qword_280DE93C8 object:{0, v12, v13}];
}

void sub_2284549F0()
{
  v1 = v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEC98);
  v3 = sub_22855CA8C();
  v4 = sub_22855D66C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v11 = type metadata accessor for DaemonHealthExperienceStoreOracle();
    sub_228454FB0(0, &unk_280DECB48, 255, type metadata accessor for DaemonHealthExperienceStoreOracle);
    v7 = sub_22855D1BC();
    v9 = sub_2283F8938(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2283ED000, v3, v4, "[%s] deregisterForDebuggingRequests()", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  v10 = [objc_opt_self() defaultCenter];
  if (qword_280DE93C0 != -1)
  {
    swift_once();
  }

  [v10 removeObserver:v1 name:qword_280DE93C8 object:{0, v11, v12}];
}

uint64_t DaemonHealthExperienceStore.__deallocating_deinit()
{
  sub_2284547FC();
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

void DaemonHealthExperienceStore.debuggingInfoRequested(note:)()
{
  v1 = *v0;
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEBD0);
  oslog = sub_22855CA8C();
  v3 = sub_22855D6AC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10[0] = v5;
    v10[1] = v1;
    *v4 = 136315138;
    swift_getMetatypeMetadata();
    v6 = sub_22855D1BC();
    v8 = sub_2283F8938(v6, v7, v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2283ED000, oslog, v3, "[%s]: debuggingInfoRequested()", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AABAD40](v5, -1, -1);
    MEMORY[0x22AABAD40](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_228454F54(uint64_t a1)
{
  sub_2283F6B58();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228454FB0(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a4(a3);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t ProxyPublisherDelegate.publisher.getter()
{
  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t Publishers.Proxy.init(delegate:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t Publishers.Proxy.receive<A>(subscriber:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v28 = a4;
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[3];
  swift_getAssociatedConformanceWitness();
  v9 = sub_22855CC8C();
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v29[0] = a2[2];
    v29[1] = v8;
    v29[2] = v7;
    v30 = a3;
    WitnessTable = v6;
    v32 = v28;
    v20 = _s5ProxyV5InnerCMa();
    (*(v14 + 16))(v17, v27, a3);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();
    v23 = sub_2284562EC(v17, v19);
    swift_unknownObjectRelease();
    v30 = v20;
    WitnessTable = swift_getWitnessTable();
    v29[0] = v23;
    sub_22855CC5C();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v29);
  }

  else
  {
    sub_22855CCEC();
    sub_22855CC5C();
    __swift_destroy_boxed_opaque_existential_0(v29);
    (*(*(v8 - 8) + 56))(v13, 1, 1, v8);
    sub_22855CC4C();
    return (*(v26 + 8))(v13, v9);
  }
}

void sub_22845536C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 144));
  os_unfair_lock_lock(*(v4 + 16));
  v5 = *(*v1 + 176);
  swift_beginAccess();
  if (*(v1 + v5) & 1) != 0 || (v6 = *(*v1 + 184), swift_beginAccess(), (*(v1 + v6)))
  {
    os_unfair_lock_unlock(*(v4 + 16));
    return;
  }

  v7 = *(*v1 + 168);
  swift_beginAccess();
  v8 = *(v1 + v7);
  sub_22855CCBC();
  if ((sub_22855CC9C() & 1) == 0)
  {
    sub_22855CCBC();
    v9 = sub_22855CC9C();
    v10 = sub_22855CCBC();
    if ((v9 & 1) == 0)
    {
      if ((sub_22855CC9C() & 1) == 0)
      {
        if ((v8 | a1) < 0)
        {
          __break(1u);
          goto LABEL_17;
        }

        v10 = v8 + a1;
        if (!__OFADD__(v8, a1))
        {
          if ((v10 & 0x8000000000000000) == 0)
          {
            goto LABEL_13;
          }

LABEL_17:
          __break(1u);
          return;
        }
      }

      v10 = sub_22855CCBC();
    }

LABEL_13:
    *(v1 + v7) = v10;
  }

  swift_endAccess();
  swift_getWitnessTable();
  PendingValuesInner.lock_sendPendingValuesIfNeeded()();
  os_unfair_lock_unlock(*(v4 + 16));
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v3 + 112);
    v12 = *(v11 + 32);
    v13 = *(v3 + 96);
    swift_retain_n();
    v12(a1, sub_228456B84, v1, sub_228456788, v1, v13, v11);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2284555C4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 104);
  v4 = sub_22855DA2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *(v0 + *(v1 + 144));
  os_unfair_lock_lock(*(v9 + 16));
  (*(*(v3 - 8) + 56))(v8, 1, 1, v3);
  v10 = *(*v0 + 136);
  swift_beginAccess();
  (*(v5 + 40))(v0 + v10, v8, v4);
  swift_endAccess();
  v11 = *(*v0 + 176);
  swift_beginAccess();
  *(v0 + v11) = 1;
  os_unfair_lock_unlock(*(v9 + 16));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(*(v2 + 112) + 40))(*(v2 + 96));
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2284557C8()
{
  v1 = *v0;
  v2 = sub_22855E2AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228456C0C(0, &qword_27D83F748, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v17 = v0;
  sub_228456C0C(0, &qword_280DED018, sub_22842D160, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_228560580;
  *(v11 + 32) = 0x65746167656C6564;
  *(v11 + 40) = 0xE800000000000000;
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = *(v1 + 96);
  *(v11 + 72) = sub_22855DA2C();
  *(v11 + 48) = Strong;
  v14 = sub_22855E29C();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);

  return sub_22855E2DC();
}

uint64_t sub_228455A50@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D84C38];
  v3 = sub_22855E2AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t *sub_228455AC4()
{
  v1 = *v0;
  MEMORY[0x22AABAE10](v0 + 2);
  v2 = *(*v0 + 136);
  v3 = *(v1 + 104);
  v4 = sub_22855DA2C();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(v0 + *(*v0 + 144));

  v6 = *(v0 + *(*v0 + 152));

  v7 = *(v0 + *(*v0 + 160));

  return v0;
}

uint64_t sub_228455BAC()
{
  v0 = *sub_228455AC4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_228455C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 136);
  swift_beginAccess();
  v6 = *(a1 + 104);
  v7 = sub_22855DA2C();
  return (*(*(v7 - 8) + 16))(a2, v2 + v5, v7);
}

uint64_t sub_228455CDC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 136);
  swift_beginAccess();
  v6 = *(a2 + 104);
  v7 = sub_22855DA2C();
  (*(*(v7 - 8) + 40))(v2 + v5, a1, v7);
  return swift_endAccess();
}

uint64_t (*sub_228455D80())()
{
  v1 = *(*v0 + 136);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_228455E08()
{
  v1 = *(*v0 + 160);
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_228455E5C(uint64_t a1)
{
  v3 = *(*v1 + 160);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*sub_228455EC0())()
{
  v1 = *(*v0 + 160);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_228455F2C()
{
  v1 = *(*v0 + 168);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_228455F7C(uint64_t a1)
{
  v3 = *(*v1 + 168);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t (*sub_228455FD8())()
{
  v1 = *(*v0 + 168);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_228456044()
{
  v1 = *(*v0 + 184);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_228456094(char a1)
{
  v3 = *(*v1 + 184);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t (*sub_2284560F0())()
{
  v1 = *(*v0 + 184);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_22845615C()
{
  v1 = *(*v0 + 176);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2284561AC(char a1)
{
  v3 = *(*v1 + 176);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t (*sub_228456208())()
{
  v1 = *(*v0 + 176);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

char *sub_2284562EC(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v22 = a1;
  v3 = *v2;
  v4 = *(*v2 + 104);
  v23 = sub_22855DA2C();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v23);
  v8 = &v22 - v7;
  swift_unknownObjectWeakInit();
  v9 = *(v4 - 8);
  v10 = *(v9 + 56);
  v10(&v2[*(*v2 + 136)], 1, 1, v4);
  v11 = *(*v2 + 144);
  type metadata accessor for UnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *(v12 + 16) = v13;
  *v13 = 0;
  *&v2[v11] = v12;
  v14 = *(*v2 + 152);
  type metadata accessor for RecursiveUnfairLock();
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *(v15 + 16) = v16;
  *&v2[v14] = v15;
  *v16 = 0;
  v17 = *(*v2 + 160);
  v18 = *(v3 + 80);
  *&v2[v17] = sub_22855D0CC();
  v19 = *(*v2 + 168);
  *&v2[v19] = sub_22855CCAC();
  v2[*(*v2 + 176)] = 0;
  v2[*(*v2 + 184)] = 0;
  (*(v9 + 32))(v8, v22, v4);
  v10(v8, 0, 1, v4);
  v20 = *(*v2 + 136);
  swift_beginAccess();
  (*(v5 + 40))(&v2[v20], v8, v23);
  swift_endAccess();
  swift_unknownObjectWeakAssign();
  return v2;
}

uint64_t sub_2284565D0(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 32;
  v3 = *(a2 + 32);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_228456610()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_228456670(uint64_t a1)
{
  v1 = *(a1 + 104);
  result = sub_22855DA2C();
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

void sub_22845678C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + *(*v0 + 144));
  os_unfair_lock_lock(*(v3 + 16));
  v4 = *(*v0 + 184);
  swift_beginAccess();
  if (*(v1 + v4))
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v5 = sub_22855CABC();
    __swift_project_value_buffer(v5, qword_280DEEC98);

    v6 = sub_22855CA8C();
    v7 = sub_22855D68C();

    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    Strong = v9;
    *v8 = 136446466;
    v10 = *(v2 + 96);
    swift_getMetatypeMetadata();
    v11 = sub_22855D1BC();
    v13 = sub_2283F8938(v11, v12, &Strong);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2082;
    v27[1] = swift_unknownObjectWeakLoadStrong();
    sub_22855DA2C();
    v14 = sub_22855D1BC();
    v16 = sub_2283F8938(v14, v15, &Strong);

    *(v8 + 14) = v16;
    v17 = "[%{public}s: Delegate called completion more than once! Delegate is %{public}s";
    goto LABEL_11;
  }

  *(v1 + v4) = 1;
  v18 = *(*v1 + 176);
  swift_beginAccess();
  if ((*(v1 + v18) & 1) == 0)
  {
    swift_getWitnessTable();
    PendingValuesInner.lock_sendPendingValuesIfNeeded()();
    goto LABEL_14;
  }

  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v19 = sub_22855CABC();
  __swift_project_value_buffer(v19, qword_280DEEBF0);

  v6 = sub_22855CA8C();
  v7 = sub_22855D6AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27[0] = v9;
    *v8 = 136446466;
    v20 = *(v2 + 96);
    Strong = v2;
    swift_getMetatypeMetadata();
    v21 = sub_22855D1BC();
    v23 = sub_2283F8938(v21, v22, v27);

    *(v8 + 4) = v23;
    *(v8 + 12) = 2082;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_22855DA2C();
    v24 = sub_22855D1BC();
    v26 = sub_2283F8938(v24, v25, v27);

    *(v8 + 14) = v26;
    v17 = "[%{public}s]: delegate called completion, but we're already cancelled. Delegate: %{public}s";
LABEL_11:
    _os_log_impl(&dword_2283ED000, v6, v7, v17, v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v9, -1, -1);
    MEMORY[0x22AABAD40](v8, -1, -1);
  }

LABEL_12:

LABEL_14:
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_228456B84(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();

  return PendingValuesInner.enqueue(_:)(a1, v3, WitnessTable);
}

void sub_228456C0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

NSOperationQueue __swiftcall NSOperationQueue.init(name:maxConcurrentOperationCount:)(Swift::String name, Swift::Int_optional maxConcurrentOperationCount)
{
  is_nil = maxConcurrentOperationCount.is_nil;
  value = maxConcurrentOperationCount.value;
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = sub_22855D17C();

  [v4 setName_];

  if (!is_nil)
  {
    [v4 setMaxConcurrentOperationCount_];
  }

  return v4;
}

id static NSOperationQueue.makeSerial(name:qos:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v5 setMaxConcurrentOperationCount_];
  if (a2)
  {
    v6 = sub_22855D17C();
  }

  else
  {
    v6 = 0;
  }

  [v5 setName_];

  [v5 setQualityOfService_];
  return v5;
}

void sub_228456DC8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v0 setQualityOfService_];
  v1 = sub_22855D17C();
  [v0 setName_];

  qword_27D83F750 = v0;
}

void sub_228456E74()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v0 setQualityOfService_];
  v1 = sub_22855D17C();
  [v0 setName_];

  qword_27D83F758 = v0;
}

uint64_t sub_228456F20()
{
  v0 = sub_22855BDCC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  sub_22855BDBC();
  sub_22845D78C();
  sub_22845CE60(&qword_27D83F788, sub_22845D78C);
  v3 = sub_22855BDAC();

  return v3;
}

uint64_t sub_2284570B0()
{
  v0 = sub_22855BDCC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  sub_22855BDBC();
  sub_22845D57C(0, &qword_280DEE668, MEMORY[0x277D83808], MEMORY[0x277D837D8], type metadata accessor for ValueJSONWrapper);
  sub_22845D5D0();
  v3 = sub_22855BDAC();

  return v3;
}

uint64_t sub_22845723C()
{
  v0 = sub_22855BDCC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_22855BDBC();
  sub_22845DDAC(0, &qword_280DEE688, sub_22845D654, sub_22845D6A8);
  sub_22845D6FC();
  v3 = sub_22855BDAC();

  return v3;
}

uint64_t sub_2284573B0()
{
  v0 = sub_22855BDCC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_22855BDBC();
  sub_22845DDAC(0, &qword_280DEE9A0, sub_22845DE28, sub_22845DE7C);
  sub_22845DED0();
  v3 = sub_22855BDAC();

  return v3;
}

uint64_t sub_228457524()
{
  v0 = sub_22855BDCC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_22855BDBC();
  sub_22845DDAC(0, &qword_27D83F7B0, sub_22845DB7C, sub_22845DBD0);
  sub_22845DC24();
  v3 = sub_22855BDAC();

  return v3;
}

uint64_t sub_228457698()
{
  v0 = sub_22855BDCC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_22855BDBC();
  sub_22845DDAC(0, &qword_27D83F790, sub_22845D8AC, sub_22845D900);
  sub_22845D954();
  v3 = sub_22855BDAC();

  return v3;
}

uint64_t sub_228457810()
{
  v0 = sub_22855BDCC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_22855BDBC();
  sub_22845DB1C();
  sub_22845CE60(&qword_280DEE660, sub_22845DB1C);
  v3 = sub_22855BDAC();

  return v3;
}

uint64_t sub_22845797C()
{
  v0 = sub_22855BDCC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_22855BDBC();
  sub_22845DDAC(0, &qword_280DEE678, sub_22845D9E4, sub_22845DA38);
  sub_22845DA8C();
  v3 = sub_22855BDAC();

  return v3;
}

uint64_t PluginFeedItem.uniqueIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PluginFeedItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PluginFeedItem.userInterface.getter()
{
  v1 = *(v0 + 16);
  sub_22840A934(v1, *(v0 + 24), *(v0 + 32));
  return v1;
}

uint64_t PluginFeedItem.userInterface.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_22842B20C(*(v3 + 16), *(v3 + 24), *(v3 + 32));
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

uint64_t PluginFeedItem.actionHandlerClassName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t PluginFeedItem.actionHandlerClassName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PluginFeedItem.actionHandlerUserData.getter()
{
  v1 = *(v0 + 56);
  sub_22843560C(v1, *(v0 + 64));
  return v1;
}

uint64_t PluginFeedItem.actionHandlerUserData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22842B378(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t PluginFeedItem.baseAutomationIdentifier.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t PluginFeedItem.baseAutomationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t PluginFeedItem.userData.getter()
{
  v1 = *(v0 + 88);
  sub_22843560C(v1, *(v0 + 96));
  return v1;
}

uint64_t PluginFeedItem.userData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22842B378(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t PluginFeedItem.relevantDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PluginFeedItem() + 44);

  return sub_228457F0C(v3, a1);
}

uint64_t type metadata accessor for PluginFeedItem()
{
  result = qword_280DEEB08;
  if (!qword_280DEEB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228457F0C(uint64_t a1, uint64_t a2)
{
  sub_22845D3E8(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PluginFeedItem.relevantDateInterval.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PluginFeedItem() + 44);

  return sub_228457FD0(a1, v3);
}

uint64_t sub_228457FD0(uint64_t a1, uint64_t a2)
{
  sub_22845D3E8(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PluginFeedItem.contentKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PluginFeedItem();
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t PluginFeedItem.contentKind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PluginFeedItem();
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t PluginFeedItem.associatedHKTypes.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginFeedItem() + 52));
}

uint64_t PluginFeedItem.associatedHKTypes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PluginFeedItem() + 52);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PluginFeedItem.associatedMeasureIdentifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginFeedItem() + 56));
}

uint64_t PluginFeedItem.associatedMeasureIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PluginFeedItem() + 56);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PluginFeedItem.associatedSharableModelReferences.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginFeedItem() + 60));
}

uint64_t PluginFeedItem.associatedSharableModelReferences.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PluginFeedItem() + 60);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PluginFeedItem.categoryIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PluginFeedItem() + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PluginFeedItem.categoryIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PluginFeedItem() + 64));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PluginFeedItem.featureTags.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginFeedItem() + 68));
}

uint64_t PluginFeedItem.featureTags.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PluginFeedItem() + 68);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PluginFeedItem.keywords.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginFeedItem() + 72));
}

uint64_t PluginFeedItem.keywords.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PluginFeedItem() + 72);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

void *PluginFeedItem.sourceProfile.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginFeedItem() + 76));
  v2 = v1;
  return v1;
}

void PluginFeedItem.sourceProfile.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PluginFeedItem() + 76);

  *(v1 + v3) = a1;
}

uint64_t PluginFeedItem.localizedCategoryName.getter()
{
  v1 = (v0 + *(type metadata accessor for PluginFeedItem() + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PluginFeedItem.localizedCategoryName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PluginFeedItem() + 80));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PluginFeedItem.localizedTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for PluginFeedItem() + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PluginFeedItem.localizedTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PluginFeedItem() + 84));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PluginFeedItem.localizedDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for PluginFeedItem() + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PluginFeedItem.localizedDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PluginFeedItem() + 88));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PluginFeedItem.sortHint.setter(uint64_t a1)
{
  result = type metadata accessor for PluginFeedItem();
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t PluginFeedItem.searchSectionHint.setter(char a1)
{
  result = type metadata accessor for PluginFeedItem();
  *(v1 + *(result + 96)) = a1;
  return result;
}

uint64_t PluginFeedItem.indexForSearch.setter(char a1)
{
  result = type metadata accessor for PluginFeedItem();
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t PluginFeedItem.hideInDiscover.setter(char a1)
{
  result = type metadata accessor for PluginFeedItem();
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t PluginFeedItem.pinnedContentIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PluginFeedItem() + 108);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

__n128 PluginFeedItem.pinnedContentIdentifier.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for PluginFeedItem() + 108));
  v4 = v3[1].n128_u64[0];

  result = v6;
  *v3 = v6;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t sub_228458C48@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PluginFeedItem() + 112));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_22845D554;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_22840FE74(v4);
}

uint64_t sub_228458CDC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22845D52C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for PluginFeedItem() + 112));
  v8 = *v7;
  v9 = v7[1];
  sub_22840FE74(v3);
  result = sub_228416CF8(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t PluginFeedItem.afterCommit.getter()
{
  v1 = (v0 + *(type metadata accessor for PluginFeedItem() + 112));
  v2 = *v1;
  v3 = v1[1];
  sub_22840FE74(*v1);
  return v2;
}

uint64_t PluginFeedItem.afterCommit.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PluginFeedItem() + 112));
  v6 = v5[1];
  result = sub_228416CF8(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PluginFeedItem.hostViewStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PluginFeedItem();
  *a1 = *(v1 + *(result + 116));
  return result;
}

uint64_t PluginFeedItem.hostViewStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PluginFeedItem();
  *(v1 + *(result + 116)) = v2;
  return result;
}

uint64_t PluginFeedItem.init(uniqueIdentifier:userInterface:userData:contentKind:sourceProfile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, unint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, void *a10)
{
  v42 = *a8;
  *(a9 + 33) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  *(a9 + 56) = 0;
  *(a9 + 64) = 0xF000000000000000;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  *(a9 + 88) = 0;
  *(a9 + 96) = 0xF000000000000000;
  v17 = type metadata accessor for PluginFeedItem();
  v18 = v17[11];
  v19 = type metadata accessor for RelevantDateInterval();
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v20 = MEMORY[0x277D84FA0];
  *(a9 + v17[13]) = MEMORY[0x277D84FA0];
  *(a9 + v17[14]) = v20;
  *(a9 + v17[15]) = v20;
  v21 = (a9 + v17[16]);
  *v21 = 0;
  v21[1] = 0;
  v22 = v17[17];
  *(a9 + v22) = MEMORY[0x277D84F98];
  *(a9 + v17[18]) = v20;
  v23 = (a9 + v17[20]);
  *v23 = 0;
  v23[1] = 0;
  v24 = (a9 + v17[21]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (a9 + v17[22]);
  *v25 = 0;
  v25[1] = 0;
  *(a9 + v17[23]) = 0;
  *(a9 + v17[24]) = 13;
  *(a9 + v17[25]) = 1;
  *(a9 + v17[26]) = 2;
  v26 = (a9 + v17[27]);
  *v26 = 0;
  v26[1] = 0;
  v26[2] = 0;
  v27 = (a9 + v17[28]);
  *v27 = 0;
  v27[1] = 0;
  *(a9 + v17[29]) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v28 = *(a9 + 88);
  v29 = *(a9 + 96);
  sub_22843560C(a6, a7);
  sub_22842B378(v28, v29);
  *(a9 + 88) = a6;
  *(a9 + 96) = a7;
  *(a9 + v17[12]) = v42;
  *(a9 + v17[19]) = a10;
  v30 = off_281860230[0];
  v31 = a10;
  v32 = v30(&type metadata for ProminenceFeatureTag, &protocol witness table for ProminenceFeatureTag);
  v34 = v33;
  v35 = sub_2284573B0();
  v37 = v36;
  v38 = *(a9 + v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(a9 + v22);
  sub_22845AF24(v35, v37, v32, v34, isUniquelyReferenced_nonNull_native);

  *(a9 + v22) = v43;

  return sub_22842B378(a6, a7);
}

uint64_t PluginFeedItem.addFeatureTag<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getDynamicType();
  v6 = (*(*(a3 + 8) + 16))(a2);
  v8 = v7;
  v9 = (*(a3 + 16))(a2, a3);
  v11 = v10;
  v12 = *(type metadata accessor for PluginFeedItem() + 68);
  v13 = *(v3 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v3 + v12);
  sub_22845AF24(v9, v11, v6, v8, isUniquelyReferenced_nonNull_native);

  *(v3 + v12) = v16;
  return result;
}

Swift::Void __swiftcall PluginFeedItem.removeAllTags()()
{
  v1 = *(type metadata accessor for PluginFeedItem() + 68);
  v2 = *(v0 + v1);

  *(v0 + v1) = MEMORY[0x277D84F98];
}

Swift::Void __swiftcall PluginFeedItem.removeTag(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = v1 + *(type metadata accessor for PluginFeedItem() + 68);
  sub_22845AA74(countAndFlagsBits, object, &v6);
  v5 = v6;

  sub_22842B378(v5, *(&v5 + 1));
}

uint64_t UserInterface.init(viewControllerClass:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  v2 = sub_22855D1AC();

  return v2;
}

uint64_t UserInterface.init(viewClass:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  v2 = sub_22855D1AC();

  return v2;
}

uint64_t UserInterface.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 2u)
  {
    if (a4 == 3)
    {
      v4 = 3;
    }

    else
    {
      if (a4 != 4)
      {
        return MEMORY[0x22AABA2B0](5);
      }

      v4 = 4;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x22AABA2B0](v4);

  return sub_22855D20C();
}

uint64_t UserInterface.hashValue.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_22855E22C();
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      v4 = 3;
    }

    else
    {
      if (a3 != 4)
      {
        MEMORY[0x22AABA2B0](5);
        return sub_22855E27C();
      }

      v4 = 4;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x22AABA2B0](v4);
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_228459588()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = 3;
    }

    else
    {
      if (v3 != 4)
      {
        return MEMORY[0x22AABA2B0](5);
      }

      v4 = 4;
    }
  }

  else if (*(v0 + 16))
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x22AABA2B0](v4);

  return sub_22855D20C();
}

uint64_t sub_228459640()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_22855E22C();
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = 3;
    }

    else
    {
      if (v3 != 4)
      {
        MEMORY[0x22AABA2B0](5);
        return sub_22855E27C();
      }

      v4 = 4;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x22AABA2B0](v4);
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t PluginFeedItem.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v46[4] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for RelevantDateInterval();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22845D3E8(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v45 - v11;
  v13 = *v1;
  v14 = v1[1];
  sub_22855D20C();
  v16 = v1[2];
  v15 = v1[3];
  v17 = *(v1 + 32);
  if (v17 <= 2)
  {
    if (*(v1 + 32))
    {
      if (v17 == 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_11;
  }

  if (v17 == 3)
  {
    v18 = 3;
    goto LABEL_11;
  }

  if (v17 == 4)
  {
    v18 = 4;
LABEL_11:
    MEMORY[0x22AABA2B0](v18);
    sub_22855D20C();
    goto LABEL_12;
  }

  MEMORY[0x22AABA2B0](5);
LABEL_12:
  v19 = v1[12];
  if (v19 >> 60 == 15)
  {
    goto LABEL_20;
  }

  v20 = v1[11];
  v21 = objc_opt_self();
  sub_22842B3E0(v20, v19);
  v22 = sub_22855C08C();
  v46[0] = 0;
  v23 = [v21 JSONObjectWithData:v22 options:0 error:v46];

  if (v23)
  {
    v24 = v46[0];
    sub_22855DA7C();
    swift_unknownObjectRelease();
    sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
    if (swift_dynamicCast())
    {
      v25 = v45[1];
      sub_22855E24C();
      sub_22855D9BC();
      sub_22842B378(v20, v19);

      goto LABEL_20;
    }

    sub_22855E24C();
  }

  else
  {
    v26 = v46[0];
    v27 = sub_22855BF3C();
    v45[0] = v4;
    v28 = v27;

    swift_willThrow();
    sub_22855C0AC();
    v29 = v28;
    v4 = v45[0];
  }

  sub_22842B378(v20, v19);
LABEL_20:
  v30 = type metadata accessor for PluginFeedItem();
  sub_228457F0C(v2 + v30[11], v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_22855E24C();
  }

  else
  {
    sub_22845CCB4(v12, v8);
    sub_22855E24C();
    RelevantDateInterval.hash(into:)();
    sub_22845CD60(v8, type metadata accessor for RelevantDateInterval);
  }

  LOBYTE(v46[0]) = *(v2 + v30[12]);
  ContentKind.rawValue.getter();
  sub_22855D20C();

  v31 = (v2 + v30[16]);
  if (v31[1])
  {
    v32 = *v31;
    sub_22855E24C();
    sub_22855D20C();
  }

  else
  {
    sub_22855E24C();
  }

  v33 = (v2 + v30[27]);
  if (*(v33 + 2))
  {
    v34 = *(v33 + 1);
    v35 = *v33;
    sub_22855E24C();

    sub_22855D20C();

    sub_22855D20C();
  }

  else
  {
    sub_22855E24C();
  }

  sub_22844A080(a1, *(v2 + v30[13]));
  sub_22845BCA0(a1, *(v2 + v30[17]));
  sub_22844A6B8(a1, *(v2 + v30[18]));
  v36 = (v2 + v30[20]);
  if (v36[1])
  {
    v37 = *v36;
    sub_22855E24C();
    sub_22855D20C();
  }

  else
  {
    sub_22855E24C();
  }

  v38 = (v2 + v30[21]);
  if (v38[1])
  {
    v39 = *v38;
    sub_22855E24C();
    sub_22855D20C();
  }

  else
  {
    sub_22855E24C();
  }

  v40 = (v2 + v30[22]);
  if (v40[1])
  {
    v41 = *v40;
    sub_22855E24C();
    sub_22855D20C();
  }

  else
  {
    sub_22855E24C();
  }

  MEMORY[0x22AABA2B0](*(v2 + v30[23]));
  v42 = *(v2 + v30[25]);
  sub_22855E24C();
  if (*(v2 + v30[26]) != 2)
  {
    sub_22855E24C();
  }

  sub_22855E24C();
  if (*(v2 + v30[24]) == 13)
  {
    sub_22855E24C();
  }

  else
  {
    sub_22855E24C();
    sub_22855E25C();
  }

  if (*(v2 + v30[19]))
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  *(v2 + v30[29]);
  *(v2 + v30[29]);
  sub_22855D20C();

  result = sub_22844A6B8(a1, *(v2 + v30[15]));
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PluginFeedItem.hashValue.getter()
{
  sub_22855E22C();
  PluginFeedItem.hash(into:)(v1);
  return sub_22855E27C();
}

uint64_t sub_228459E04()
{
  sub_22855E22C();
  PluginFeedItem.hash(into:)(v1);
  return sub_22855E27C();
}

uint64_t sub_228459E48()
{
  sub_22855E22C();
  PluginFeedItem.hash(into:)(v1);
  return sub_22855E27C();
}

uint64_t PluginFeedItem.cachedObject<A>(using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 96);
  if (v5 >> 60 == 15)
  {
    if (qword_280DEE500 != -1)
    {
      swift_once();
    }

    v6 = sub_22855CABC();
    __swift_project_value_buffer(v6, qword_280DEE508);
    v7 = sub_22855CA8C();
    v8 = sub_22855D67C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2283ED000, v7, v8, "Unable to decode cached user data because there isn't anything stored.", v9, 2u);
      MEMORY[0x22AABAD40](v9, -1, -1);
    }

    v10 = *(*(a1 - 8) + 56);

    return v10(a2, 1, 1, a1);
  }

  else
  {
    v12 = *(v2 + 88);
    sub_22842B3E0(v12, *(v2 + 96));
    sub_22855BD7C();
    (*(*(a1 - 8) + 56))(a2, 0, 1, a1);

    return sub_22842B378(v12, v5);
  }
}

uint64_t PluginFeedItem.description.getter()
{
  v33 = sub_22855E2CC();
  v32 = *(v33 - 8);
  v1 = *(v32 + 64);
  MEMORY[0x28223BE20](v33);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_228406280(&unk_283B7E788);
  swift_arrayDestroy();
  v30 = type metadata accessor for PluginFeedItem();
  v36[3] = v30;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  sub_22844BBC4(v0, boxed_opaque_existential_1);
  sub_22855E28C();
  v31 = v3;
  v29 = sub_22855E2BC();
  sub_22855DDCC();
  sub_22855DF8C();
  if (*(&v41 + 1))
  {
    v6 = v4 + 56;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v37 = v39;
      v38[0] = v40;
      v38[1] = v41;
      v8 = *(&v39 + 1);
      if (*(&v39 + 1))
      {
        v9 = v37;
        if (!*(v4 + 16) || (v10 = *(v4 + 40), sub_22855E22C(), sub_22855D20C(), v11 = sub_22855E27C(), v12 = -1 << *(v4 + 32), v13 = v11 & ~v12, ((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0))
        {
LABEL_15:
          v34 = v9;
          v35 = v8;

          MEMORY[0x22AAB92A0](8250, 0xE200000000000000);
          sub_2283F6E48(v38, v36);
          v17 = sub_22855D1BC();
          MEMORY[0x22AAB92A0](v17);

          v18 = v34;
          v19 = v35;
          sub_22845CD60(&v37, sub_22842B4D0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_2283F7678(0, *(v7 + 2) + 1, 1, v7);
          }

          v21 = *(v7 + 2);
          v20 = *(v7 + 3);
          if (v21 >= v20 >> 1)
          {
            v7 = sub_2283F7678((v20 > 1), v21 + 1, 1, v7);
          }

          *(v7 + 2) = v21 + 1;
          v22 = &v7[16 * v21];
          *(v22 + 4) = v18;
          *(v22 + 5) = v19;
          goto LABEL_4;
        }

        v14 = ~v12;
        while (1)
        {
          v15 = (*(v4 + 48) + 16 * v13);
          v16 = *v15 == v9 && v8 == v15[1];
          if (v16 || (sub_22855E15C() & 1) != 0)
          {
            break;
          }

          v13 = (v13 + 1) & v14;
          if (((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      sub_22845CD60(&v37, sub_22842B4D0);

LABEL_4:
      sub_22855DF8C();
      if (!*(&v41 + 1))
      {
        goto LABEL_21;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_21:

  v36[0] = v7;
  sub_2283F77EC(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2283F7928();
  v23 = sub_22855D15C();
  v25 = v24;

  v36[0] = 60;
  v36[1] = 0xE100000000000000;
  *&v39 = v30;
  sub_22845CD18();
  v26 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v26);

  MEMORY[0x22AAB92A0](8236, 0xE200000000000000);
  MEMORY[0x22AAB92A0](v23, v25);

  MEMORY[0x22AAB92A0](62, 0xE100000000000000);
  v27 = v36[0];
  (*(v32 + 8))(v31, v33);
  return v27;
}

uint64_t sub_22845A6D4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
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
    v10 = sub_22845BE1C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_22842B38C(a3, a4);
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
  sub_2284436A8(v14, a3, a4, &v13);
  v10 = v4;
  sub_22842B38C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

double sub_22845A864@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2283F6D18(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_228447C74();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_228400400((*(v12 + 56) + 32 * v9), a3);
    sub_2284D22FC(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_22845A908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_22844C56C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_228448204();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = sub_22855C37C();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v8, v13);
    sub_2284D2684(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_22855C37C();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_22845AA74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2283F6D18(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_228448608();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    *a3 = *(*(v12 + 56) + 16 * v9);
    sub_2284D2888(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_2285620D0;
  }

  return result;
}

uint64_t sub_22845AB24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_2283FB154(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_228448C14();
    v9 = v12;
  }

  v10 = *(*(v9 + 56) + 8 * v6);
  sub_2284D2D80(v6, v9);
  *v2 = v9;
  return v10;
}

double sub_22845ABB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2283F6D18(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_228448EF4();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_2283FAB3C((*(v12 + 56) + 40 * v9), a3);
    sub_2284D30C8(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

_OWORD *sub_22845AC64(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2283F6D18(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_228447C74();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22844445C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2283F6D18(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22855E1BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_228400400(a1, v23);
  }

  else
  {
    sub_2284C3438(v11, a2, a3, a1, v22);
  }
}

id sub_22845ADB4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_22844C56C(a2);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = *(v7 + 24);
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_228448204();
      goto LABEL_7;
    }

    sub_228444EA0(v12, a3 & 1);
    v23 = *v4;
    v24 = sub_22844C56C(a2);
    if ((v13 & 1) == (v25 & 1))
    {
      v9 = v24;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for HKFeatureIdentifier(0);
    result = sub_22855E1BC();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = sub_22855C37C();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  sub_2284C34A4(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_22845AF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2283F6D18(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_228448608();
      v13 = v21;
      goto LABEL_8;
    }

    sub_228445528(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_2283F6D18(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_22855E1BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return sub_22842B38C(v26, v27);
  }

  else
  {
    sub_2284C3550(v13, a3, a4, a1, a2, v24);
  }
}

id sub_22845B074(uint64_t a1, char a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_2283FB154(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_228448780();
      v10 = v18;
      goto LABEL_8;
    }

    sub_2284457D8(v15, a4 & 1);
    v19 = *v5;
    v10 = sub_2283FB154(a3);
    if ((v16 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
      result = sub_22855E1BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v16)
  {
    v22 = v21[7] + 16 * v10;
    v23 = *v22;
    v24 = *(v22 + 8);
    *v22 = a1;
    *(v22 + 8) = a2 & 1;

    return sub_22845D520(v23, v24);
  }

  else
  {
    sub_2284C35A0(v10, a3, a1, a2 & 1, v21);

    return a3;
  }
}

uint64_t sub_22845B1D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2283F6D18(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2284488F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_228445A5C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2283F6D18(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22855E1BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_2284C35F0(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_22845B318(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2283F6D18(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_228448A94();
      v11 = v19;
      goto LABEL_8;
    }

    sub_228445D30(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2283F6D18(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22855E1BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_2284C35F0(v11, a2, a3, a1, v22);
  }
}

id sub_22845B460(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2283FB154(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_228448C2C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_228446000(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_2283FB154(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
      sub_22855E1BC();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  sub_2284C3638(v8, a2, a1, v19);

  return a2;
}

id sub_22845B5A4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2283FB154(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_228448C14();
      v8 = v16;
      goto LABEL_8;
    }

    sub_228445FE8(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_2283FB154(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
      result = sub_22855E1BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = *(v19 + 56);
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  else
  {
    sub_2284C3940(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_22845B6EC(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2283F6D18(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_228448EF4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_228446018(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2283F6D18(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22855E1BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_2283FAB3C(a1, v23);
  }

  else
  {
    sub_2284C367C(v11, a2, a3, a1, v22);
  }
}

id sub_22845B840(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_228443DA4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_2284491F4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_22844656C(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_228443DA4(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_2283EF310(0, &qword_280DE94D8, 0x277CCD4D8);
      result = sub_22855E1BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = *(v19 + 56);
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  else
  {
    sub_2284C3940(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_22845B988(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22855C5CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_228443DF4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2284494D8();
      goto LABEL_7;
    }

    sub_228446AA0(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_228443DF4(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2284C36EC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_22855E1BC();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

_OWORD *sub_22845BB54(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_228443C14(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_228449C60();
      goto LABEL_7;
    }

    sub_2284479C8(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_228443C14(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22844BB04(a2, v22);
      return sub_2284C37A4(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_22855E1BC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_228400400(a1, v17);
}

uint64_t sub_22845BCA0(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v19 = 0;
  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = (v11 << 10) | (16 * __clz(__rbit64(v7)));
      v13 = (*(a2 + 48) + v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = (*(a2 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];

      sub_22842B3E0(v17, v18);
      if (!v14)
      {
        break;
      }

      v7 &= v7 - 1;
      v22 = a1[2];
      v23 = a1[3];
      v24 = *(a1 + 8);
      v20 = *a1;
      v21 = a1[1];
      sub_22855D20C();

      sub_22855C0AC();
      sub_22842B38C(v17, v18);
      result = sub_22855E27C();
      v19 ^= result;
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x22AABA2B0](v19);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22845BE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22855BEBC();
  v11 = result;
  if (result)
  {
    result = sub_22855BEDC();
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

  sub_22855BECC();
  sub_2284436A8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_22845BED4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_22842B3E0(a3, a4);
          return sub_22845A6D4(v13, a2, a3, a4) & 1;
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

uint64_t _s14HealthPlatform13UserInterfaceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      if (a6 == 3)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_22855E15C();
      }
    }

    else if (a3 == 4)
    {
      if (a6 == 4)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_22855E15C();
      }
    }

    else if (a6 == 5 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_22855E15C();
      }
    }

    else if (a6 == 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_22855E15C();
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_22855E15C();
  }

  return 0;
}

uint64_t sub_22845C148(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v24[4] = *MEMORY[0x277D85DE8];
  if (a2 >> 60 == 15)
  {
    if (a4 >> 60 == 15)
    {
LABEL_3:
      LOBYTE(v5) = 1;
      goto LABEL_21;
    }

LABEL_5:
    LOBYTE(v5) = 0;
    goto LABEL_21;
  }

  if (a4 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v9 = objc_opt_self();
  sub_22843560C(a1, a2);
  sub_22843560C(a3, a4);
  v10 = sub_22855C08C();
  v24[0] = 0;
  v11 = [v9 JSONObjectWithData:v10 options:0 error:v24];

  if (!v11)
  {
    v18 = v24[0];
    v19 = sub_22855BF3C();

    swift_willThrow();
LABEL_20:
    sub_22843560C(a1, a2);
    sub_22843560C(a3, a4);
    LOBYTE(v5) = sub_22845BED4(a1, a2, a3, a4);
    sub_22842B378(a3, a4);
    sub_22842B378(a1, a2);
    sub_22842B378(a3, a4);

    sub_22842B378(a1, a2);
    goto LABEL_21;
  }

  v12 = v24[0];
  sub_22855DA7C();
  swift_unknownObjectRelease();
  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  if (swift_dynamicCast())
  {
    v13 = v23;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_22855C08C();
  v24[0] = 0;
  v15 = [v9 JSONObjectWithData:v14 options:0 error:v24];

  if (!v15)
  {
    v20 = v24[0];
    v19 = sub_22855BF3C();

    swift_willThrow();
    goto LABEL_20;
  }

  v16 = v24[0];
  sub_22855DA7C();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v5 = v23;
  }

  else
  {
    v5 = 0;
  }

  if (!v13)
  {
    sub_22842B378(a1, a2);
    sub_22842B378(a3, a4);
    if (!v5)
    {
      goto LABEL_3;
    }

    goto LABEL_5;
  }

  if (v5)
  {
    v17 = v5;
    LOBYTE(v5) = sub_22855D9AC();
  }

  sub_22842B378(a1, a2);
  sub_22842B378(a3, a4);

LABEL_21:
  v21 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

uint64_t _s14HealthPlatform14PluginFeedItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelevantDateInterval();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22845D3E8(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v83[-v11];
  sub_22845DCB4();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v83[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_22855E15C() & 1) == 0 || (_s14HealthPlatform13UserInterfaceO2eeoiySbAC_ACtFZ_0(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a2 + 16), *(a2 + 24), *(a2 + 32)) & 1) == 0 || (sub_22845C148(*(a1 + 88), *(a1 + 96), *(a2 + 88), *(a2 + 96)) & 1) == 0)
  {
    goto LABEL_76;
  }

  v18 = type metadata accessor for PluginFeedItem();
  v19 = v18[11];
  v20 = *(v14 + 48);
  sub_228457F0C(a1 + v19, v17);
  sub_228457F0C(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_22845DD34(v17);
      goto LABEL_9;
    }

LABEL_14:
    sub_22845CD60(v17, sub_22845DCB4);
    goto LABEL_76;
  }

  sub_228457F0C(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_22845CD60(v12, type metadata accessor for RelevantDateInterval);
    goto LABEL_14;
  }

  sub_22845CCB4(&v17[v20], v8);
  if ((sub_22855BDDC() & 1) == 0 || *&v12[*(v4 + 20)] != *&v8[*(v4 + 20)])
  {
    sub_22845CD60(v8, type metadata accessor for RelevantDateInterval);
    sub_22845CD60(v12, type metadata accessor for RelevantDateInterval);
    sub_22845DD34(v17);
    goto LABEL_76;
  }

  v28 = *(v4 + 24);
  v29 = *&v12[v28];
  v30 = *&v8[v28];
  sub_22845CD60(v8, type metadata accessor for RelevantDateInterval);
  sub_22845CD60(v12, type metadata accessor for RelevantDateInterval);
  sub_22845DD34(v17);
  if (v29 != v30)
  {
    goto LABEL_76;
  }

LABEL_9:
  v22 = v18[12];
  v23 = *(a1 + v22);
  LOBYTE(v22) = *(a2 + v22);
  v83[15] = v23;
  v83[14] = v22;
  v24 = ContentKind.rawValue.getter();
  v26 = v25;
  if (v24 == ContentKind.rawValue.getter() && v26 == v27)
  {
  }

  else
  {
    v31 = sub_22855E15C();

    if ((v31 & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  v32 = v18[16];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_22855E15C() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v36)
  {
    goto LABEL_76;
  }

  v37 = v18[27];
  v38 = a1 + v37;
  v39 = *(a1 + v37 + 16);
  v40 = (a2 + v37);
  v41 = v40[2];
  if (!v39)
  {
    if (!v41)
    {
LABEL_48:

      goto LABEL_49;
    }

    v47 = v40[2];
    goto LABEL_40;
  }

  if (!v41)
  {
LABEL_40:

    goto LABEL_41;
  }

  v42 = *(v38 + 8);
  v43 = v40[1];
  if (*v38)
  {
    v44 = ".pinnedContent.summary";
  }

  else
  {
    v44 = "espiratory";
  }

  v45 = v44 | 0x8000000000000000;
  if (*v40)
  {
    v46 = ".pinnedContent.summary";
  }

  else
  {
    v46 = "espiratory";
  }

  if (v45 != (v46 | 0x8000000000000000))
  {
    v48 = sub_22855E15C();
    swift_bridgeObjectRetain_n();

    if (v48)
    {
      goto LABEL_43;
    }

    swift_bridgeObjectRelease_n();
LABEL_41:

    goto LABEL_76;
  }

  swift_bridgeObjectRetain_n();

LABEL_43:
  if (v42 == v43 && v39 == v41)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_48;
  }

  v49 = sub_22855E15C();
  swift_bridgeObjectRelease_n();

  if ((v49 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_49:
  if ((sub_2284424C4(*(a1 + v18[13]), *(a2 + v18[13])) & 1) == 0 || !sub_22843FF48(*(a1 + v18[17]), *(a2 + v18[17])) || (sub_22844230C(*(a1 + v18[18]), *(a2 + v18[18])) & 1) == 0)
  {
    goto LABEL_76;
  }

  v50 = v18[20];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 8);
  v53 = (a2 + v50);
  v54 = v53[1];
  if (v52)
  {
    if (!v54 || (*v51 != *v53 || v52 != v54) && (sub_22855E15C() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v54)
  {
    goto LABEL_76;
  }

  v55 = v18[21];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 8);
  v58 = (a2 + v55);
  v59 = v58[1];
  if (v57)
  {
    if (!v59 || (*v56 != *v58 || v57 != v59) && (sub_22855E15C() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v59)
  {
    goto LABEL_76;
  }

  v60 = v18[22];
  v61 = (a1 + v60);
  v62 = *(a1 + v60 + 8);
  v63 = (a2 + v60);
  v64 = v63[1];
  if (v62)
  {
    if (!v64 || (*v61 != *v63 || v62 != v64) && (sub_22855E15C() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v64)
  {
    goto LABEL_76;
  }

  if (*(a1 + v18[23]) != *(a2 + v18[23]) || *(a1 + v18[25]) != *(a2 + v18[25]))
  {
    goto LABEL_76;
  }

  v67 = v18[26];
  v68 = *(a1 + v67);
  v69 = *(a2 + v67);
  if (v68 == 2)
  {
    if (v69 != 2)
    {
      goto LABEL_76;
    }

    goto LABEL_83;
  }

  v65 = 0;
  if (v69 != 2 && ((v69 ^ v68) & 1) == 0)
  {
LABEL_83:
    v70 = v18[24];
    v71 = *(a1 + v70);
    v72 = *(a2 + v70);
    if (v71 == 13)
    {
      if (v72 != 13)
      {
        goto LABEL_76;
      }
    }

    else if (v71 != v72)
    {
      goto LABEL_76;
    }

    v73 = v18[19];
    v74 = *(a2 + v73);
    if (*(a1 + v73))
    {
      if (!v74)
      {
        goto LABEL_76;
      }

      sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
      if ((sub_22855D9AC() & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else if (v74)
    {
      goto LABEL_76;
    }

    v75 = v18[29];
    v76 = *(a1 + v75);
    v77 = *(a2 + v75);
    if (v76)
    {
      v78 = 0x656D6F7268436F6ELL;
    }

    else
    {
      v78 = 0x656D6F726863;
    }

    if (v76)
    {
      v79 = 0xE800000000000000;
    }

    else
    {
      v79 = 0xE600000000000000;
    }

    if (v77)
    {
      v80 = 0x656D6F7268436F6ELL;
    }

    else
    {
      v80 = 0x656D6F726863;
    }

    if (v77)
    {
      v81 = 0xE800000000000000;
    }

    else
    {
      v81 = 0xE600000000000000;
    }

    if (v78 == v80 && v79 == v81)
    {

      goto LABEL_108;
    }

    v82 = sub_22855E15C();

    if (v82)
    {
LABEL_108:
      if (sub_22844230C(*(a1 + v18[15]), *(a2 + v18[15])))
      {
        v65 = sub_228442728(*(a1 + v18[14]), *(a2 + v18[14]));
        return v65 & 1;
      }
    }

LABEL_76:
    v65 = 0;
  }

  return v65 & 1;
}

uint64_t sub_22845CCB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelevantDateInterval();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22845CD18()
{
  result = qword_280DEE720;
  if (!qword_280DEE720)
  {
    type metadata accessor for PluginFeedItem();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEE720);
  }

  return result;
}

uint64_t sub_22845CD60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22845CDC4()
{
  result = qword_27D83F760;
  if (!qword_27D83F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F760);
  }

  return result;
}

uint64_t sub_22845CE60(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22845CED0()
{
  v0 = MEMORY[0x277D839B0];
  sub_2283F77EC(319, &qword_280DEE7D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2283F77EC(319, &qword_280DEE388, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22845D3E8(319, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
      if (v3 <= 0x3F)
      {
        sub_22845D1C4();
        if (v4 <= 0x3F)
        {
          sub_22845D2A0();
          if (v5 <= 0x3F)
          {
            sub_22845D334();
            if (v6 <= 0x3F)
            {
              sub_22845D57C(319, &qword_280DED2A0, MEMORY[0x277CC9318], MEMORY[0x277D837E0], MEMORY[0x277D834F8]);
              if (v7 <= 0x3F)
              {
                sub_22845D390();
                if (v8 <= 0x3F)
                {
                  sub_2283F77EC(319, qword_280DEDAD0, &type metadata for SearchSection, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_2283F77EC(319, &unk_280DED228, v0, MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      sub_2283F77EC(319, &qword_280DED6B0, &type metadata for PinnedContentIdentifier, MEMORY[0x277D83D88]);
                      if (v11 <= 0x3F)
                      {
                        sub_22845D3E8(319, &qword_280DECFC0, sub_2283FBB5C);
                        if (v12 <= 0x3F)
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
      }
    }
  }
}

void sub_22845D1C4()
{
  if (!qword_280DED1F0)
  {
    sub_2283EF310(255, &qword_280DEE7B8, 0x277CCD720);
    sub_22845D238();
    v0 = sub_22855D57C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED1F0);
    }
  }
}

unint64_t sub_22845D238()
{
  result = qword_280DED1D8;
  if (!qword_280DED1D8)
  {
    sub_2283EF310(255, &qword_280DEE7B8, 0x277CCD720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED1D8);
  }

  return result;
}

void sub_22845D2A0()
{
  if (!qword_280DED208)
  {
    sub_22855C33C();
    sub_22845CE60(&qword_280DEE360, MEMORY[0x277D10C20]);
    v0 = sub_22855D57C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED208);
    }
  }
}

void sub_22845D334()
{
  if (!qword_280DED200)
  {
    sub_22842BE70();
    v0 = sub_22855D57C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED200);
    }
  }
}

void sub_22845D390()
{
  if (!qword_280DED1F8)
  {
    v0 = sub_22855D57C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED1F8);
    }
  }
}

void sub_22845D3E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform13UserInterfaceO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22845D46C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22845D4B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_22845D4F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22845D520(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_22845D52C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22845D554()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_22845D57C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (!*a2)
  {
    v6 = a5(0, MEMORY[0x277D837D0]);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_22845D5D0()
{
  result = qword_280DEE670;
  if (!qword_280DEE670)
  {
    sub_22845D57C(255, &qword_280DEE668, MEMORY[0x277D83808], MEMORY[0x277D837D8], type metadata accessor for ValueJSONWrapper);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE670);
  }

  return result;
}

unint64_t sub_22845D654()
{
  result = qword_280DEE5B0;
  if (!qword_280DEE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE5B0);
  }

  return result;
}

unint64_t sub_22845D6A8()
{
  result = qword_280DEE5C0[0];
  if (!qword_280DEE5C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEE5C0);
  }

  return result;
}

unint64_t sub_22845D6FC()
{
  result = qword_280DEE690;
  if (!qword_280DEE690)
  {
    sub_22845DDAC(255, &qword_280DEE688, sub_22845D654, sub_22845D6A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE690);
  }

  return result;
}

void sub_22845D78C()
{
  if (!qword_27D83F770)
  {
    sub_22845D390();
    sub_22845D84C(&qword_27D83F778);
    sub_22845D84C(&qword_27D83F780);
    v0 = type metadata accessor for ValueJSONWrapper();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F770);
    }
  }
}

uint64_t sub_22845D84C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22845D390();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22845D8AC()
{
  result = qword_27D83F798;
  if (!qword_27D83F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F798);
  }

  return result;
}

unint64_t sub_22845D900()
{
  result = qword_27D83F7A0;
  if (!qword_27D83F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F7A0);
  }

  return result;
}

unint64_t sub_22845D954()
{
  result = qword_27D83F7A8;
  if (!qword_27D83F7A8)
  {
    sub_22845DDAC(255, &qword_27D83F790, sub_22845D8AC, sub_22845D900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F7A8);
  }

  return result;
}

unint64_t sub_22845D9E4()
{
  result = qword_280DEE520;
  if (!qword_280DEE520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE520);
  }

  return result;
}

unint64_t sub_22845DA38()
{
  result = qword_280DEE530;
  if (!qword_280DEE530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE530);
  }

  return result;
}

unint64_t sub_22845DA8C()
{
  result = qword_280DEE680;
  if (!qword_280DEE680)
  {
    sub_22845DDAC(255, &qword_280DEE678, sub_22845D9E4, sub_22845DA38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE680);
  }

  return result;
}

void sub_22845DB1C()
{
  if (!qword_280DEE658)
  {
    v0 = type metadata accessor for ValueJSONWrapper();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE658);
    }
  }
}

unint64_t sub_22845DB7C()
{
  result = qword_27D83F7B8;
  if (!qword_27D83F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F7B8);
  }

  return result;
}

unint64_t sub_22845DBD0()
{
  result = qword_27D83F7C0;
  if (!qword_27D83F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F7C0);
  }

  return result;
}

unint64_t sub_22845DC24()
{
  result = qword_27D83F7C8;
  if (!qword_27D83F7C8)
  {
    sub_22845DDAC(255, &qword_27D83F7B0, sub_22845DB7C, sub_22845DBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F7C8);
  }

  return result;
}

void sub_22845DCB4()
{
  if (!qword_280DEE540[0])
  {
    sub_22845D3E8(255, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280DEE540);
    }
  }
}

uint64_t sub_22845DD34(uint64_t a1)
{
  sub_22845D3E8(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22845DDAC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = type metadata accessor for ValueJSONWrapper();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_22845DE28()
{
  result = qword_280DEE988;
  if (!qword_280DEE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE988);
  }

  return result;
}

unint64_t sub_22845DE7C()
{
  result = qword_280DEE998;
  if (!qword_280DEE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE998);
  }

  return result;
}

unint64_t sub_22845DED0()
{
  result = qword_280DEE9A8[0];
  if (!qword_280DEE9A8[0])
  {
    sub_22845DDAC(255, &qword_280DEE9A0, sub_22845DE28, sub_22845DE7C);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEE9A8);
  }

  return result;
}

uint64_t sub_22845DF84()
{
  v0 = *MEMORY[0x277CCE380];
  result = sub_22855D1AC();
  qword_280DEBDC8 = result;
  *algn_280DEBDD0 = v2;
  return result;
}

uint64_t static UserDefaultsKeys.appLastOpenedDateKey.getter()
{
  if (qword_280DEBDC0 != -1)
  {
    swift_once();
  }

  v0 = qword_280DEBDC8;

  return v0;
}

uint64_t sub_22845E064(void *a1)
{
  v2 = sub_22855C1DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0x636974736F6E6761;
  }

  [a1 type];
  v7 = HKStringFromProfileType();
  v8 = sub_22855D1AC();
  v10 = v9;

  v16[0] = v8;
  v16[1] = v10;
  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  v11 = [a1 identifier];
  sub_22855C1BC();

  v12 = sub_22855C17C();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x22AAB92A0](v12, v14);

  return v16[0];
}

Swift::Void __swiftcall NSManagedObjectContext.queue_deleteDataForInvalidProfiles(existingProfiles:)(Swift::OpaquePointer existingProfiles)
{
  ObjectType = swift_getObjectType();
  v2 = sub_22855C1DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(existingProfiles._rawValue + 2);
  if (v7)
  {
    v8 = (existingProfiles._rawValue + 32);
    v9 = MEMORY[0x277D84F90];
    do
    {
      v11 = *v8++;
      v10 = v11;
      if (v11)
      {
        v12 = v10;
        v13 = [v12 identifier];
        sub_22855C1BC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22842678C(0, v9[2] + 1, 1, v9);
        }

        v15 = v9[2];
        v14 = v9[3];
        if (v15 >= v14 >> 1)
        {
          v9 = sub_22842678C(v14 > 1, v15 + 1, 1, v9);
        }

        v9[2] = v15 + 1;
        (*(v3 + 32))(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v6, v2);
      }

      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v16 = sub_22855CABC();
  __swift_project_value_buffer(v16, qword_280DEEC98);

  v17 = sub_22855CA8C();
  v18 = sub_22855D6AC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32[0] = v20;
    *v19 = 136446466;
    v32[1] = ObjectType;
    swift_getMetatypeMetadata();
    v21 = sub_22855D1BC();
    v23 = sub_2283F8938(v21, v22, v32);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = MEMORY[0x22AAB9430](v9, v2);
    v26 = sub_2283F8938(v24, v25, v32);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_2283ED000, v17, v18, "[%{public}s]: Deleting feedItems not associated with these sourceProfiles: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v20, -1, -1);
    MEMORY[0x22AABAD40](v19, -1, -1);
  }

  type metadata accessor for Profile();
  v27 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_228560570;
  sub_22845F344(0, &qword_280DE9658, MEMORY[0x277CC95F0], MEMORY[0x277D83940]);
  *(v28 + 56) = v29;
  *(v28 + 64) = sub_22845F3A8();
  *(v28 + 32) = v9;
  *(v28 + 96) = MEMORY[0x277D837D0];
  *(v28 + 104) = sub_22840A7C8();
  *(v28 + 72) = 0xD000000000000010;
  *(v28 + 80) = 0x800000022856DA90;
  v30 = sub_22855D62C();
  [v27 setPredicate_];
  sub_22845E644(v30);
}

void sub_22845E644(uint64_t a1)
{
  type metadata accessor for Profile();
  v10 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v10 setPredicate_];
  [v10 setIncludesPropertyValues_];
  v3 = sub_22855D97C();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAB9D20](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v1 deleteObject_];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

Swift::Void __swiftcall NSManagedObjectContext.queue_createProfiles(for:)(Swift::OpaquePointer a1)
{
  ObjectType = swift_getObjectType();
  v88 = sub_22855C1DC();
  v2 = *(v88 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UserProfile();
  v92 = *(v5 - 8);
  v93 = v5;
  v6 = *(v92 + 64);
  MEMORY[0x28223BE20](v5);
  v96 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *(a1._rawValue + 2);
  if (!v79)
  {
    return;
  }

  v9 = 0;
  v80 = a1._rawValue + 32;
  v85 = 0x800000022856DA90;
  v86 = (v2 + 8);
  *&v7 = 136446722;
  v76 = v7;
  v84 = xmmword_228560570;
  v78 = xmmword_228560580;
  while (1)
  {
    v10 = *&v80[8 * v9];
    v82 = v10;
    if (!v10)
    {
      break;
    }

    sub_22845F344(0, &qword_280DED028, type metadata accessor for UserProfile, MEMORY[0x277D84560]);
    v11 = *(v92 + 72);
    v12 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v78;
    v14 = v13 + v12;
    v15 = v10;
    v16 = [v15 identifier];
    sub_22855C1BC();

    *(v14 + *(v93 + 20)) = v15;
    v17 = sub_22845F998(v13);
    swift_setDeallocating();
    sub_22845FC38(v14);
    swift_deallocClassInstance();
    v18 = *(v17 + 16);
    if (v18)
    {
      goto LABEL_7;
    }

LABEL_27:

    v45 = MEMORY[0x277D84F90];
LABEL_28:
    sub_228429908(v45);

    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v46 = sub_22855CABC();
    __swift_project_value_buffer(v46, qword_280DEEBF0);
    v47 = v82;
    v48 = v82;

    v49 = sub_22855CA8C();
    v50 = sub_22855D6AC();

    if (os_log_type_enabled(v49, v50))
    {
      LODWORD(v97) = v50;
      v51 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v101[0] = v95;
      *v51 = v76;
      v99 = ObjectType;
      swift_getMetatypeMetadata();
      v52 = sub_22855D1BC();
      v54 = sub_2283F8938(v52, v53, v101);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2080;
      if (v47)
      {
        v55 = v48;
        v91 = v48;
        v56 = v55;
        [v55 type];
        v57 = HKStringFromProfileType();
        v58 = sub_22855D1AC();
        v60 = v59;

        v99 = v58;
        v100 = v60;
        MEMORY[0x22AAB92A0](32, 0xE100000000000000);
        v61 = [v56 identifier];
        v62 = v9;
        v63 = v87;
        sub_22855C1BC();

        v64 = sub_22855C17C();
        v66 = v65;
        v67 = v63;
        v9 = v62;
        (*v86)(v67, v88);
        MEMORY[0x22AAB92A0](v64, v66);

        v48 = v91;

        v68 = v99;
        v69 = v100;
      }

      else
      {
        v69 = 0xE800000000000000;
        v68 = 0x636974736F6E6761;
      }

      v70 = sub_2283F8938(v68, v69, v101);

      *(v51 + 14) = v70;
      *(v51 + 22) = 2080;
      type metadata accessor for Profile();
      sub_2284602B0(&qword_280DED540, type metadata accessor for Profile);
      v71 = sub_22855D52C();
      v73 = v72;

      v74 = sub_2283F8938(v71, v73, v101);

      *(v51 + 24) = v74;
      _os_log_impl(&dword_2283ED000, v49, v97, "[%{public}s]: Updating profiles in cache for sourceProfile <%s>; profiles: <%s>", v51, 0x20u);
      v75 = v95;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v75, -1, -1);
      MEMORY[0x22AABAD40](v51, -1, -1);
    }

    else
    {
    }

    if (++v9 == v79)
    {
      return;
    }
  }

  v17 = MEMORY[0x277D84FA0];
  v18 = *(MEMORY[0x277D84FA0] + 16);
  if (!v18)
  {
    goto LABEL_27;
  }

LABEL_7:
  v81 = v9;
  v101[0] = MEMORY[0x277D84F90];
  sub_22855DD4C();
  v19 = -1 << *(v17 + 32);
  v97 = v17 + 56;
  v20 = sub_22855DAAC();
  v90 = sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  v21 = 0;
  v83 = v17 + 64;
  v91 = v17;
  v89 = v18;
  while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(v17 + 32))
  {
    v23 = v20 >> 6;
    if ((*(v97 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
    {
      goto LABEL_37;
    }

    v95 = *(v17 + 36);
    v24 = v96;
    sub_22842BF58(*(v17 + 48) + *(v92 + 72) * v20, v96);
    v25 = *(v24 + *(v93 + 20));
    sub_22840A70C();
    v26 = swift_allocObject();
    *(v26 + 16) = v84;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = sub_22840A7C8();
    *(v26 + 32) = 0xD000000000000010;
    *(v26 + 40) = v85;
    v27 = [v25 identifier];
    if (!v27)
    {
      goto LABEL_41;
    }

    v28 = v27;
    *(v26 + 96) = sub_2283EF310(0, &unk_280DED0C0, 0x277CCAD78);
    *(v26 + 104) = sub_22842B880(&qword_280DED0B8, &unk_280DED0C0, 0x277CCAD78);
    *(v26 + 72) = v28;
    v29 = sub_22855D62C();
    v30 = sub_22843B984(v94, v29, 1u);
    if (!v30)
    {
      v31 = objc_opt_self();
      v32 = sub_22855D17C();
      v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v94];

      type metadata accessor for Profile();
      v30 = swift_dynamicCastClassUnconditional();
    }

    v34 = [v25 identifier];
    v35 = v87;
    sub_22855C1BC();

    v36 = sub_22855C19C();
    (*v86)(v35, v88);
    [v30 setUniqueIdentifier_];

    Profile.hkProfileIdentifier.setter(v25);
    sub_22845FC38(v96);
    sub_22855DD1C();
    v37 = *(v101[0] + 16);
    sub_22855DD5C();
    sub_22855DD6C();
    sub_22855DD2C();
    v17 = v91;
    v22 = 1 << *(v91 + 32);
    if (v20 >= v22)
    {
      goto LABEL_38;
    }

    v38 = *(v97 + 8 * v23);
    if ((v38 & (1 << v20)) == 0)
    {
      goto LABEL_39;
    }

    if (v95 != *(v91 + 9))
    {
      goto LABEL_40;
    }

    v39 = v38 & (-2 << (v20 & 0x3F));
    if (v39)
    {
      v22 = __clz(__rbit64(v39)) | v20 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v40 = v23 << 6;
      v41 = v23 + 1;
      v42 = (v83 + 8 * v23);
      while (v41 < (v22 + 63) >> 6)
      {
        v44 = *v42++;
        v43 = v44;
        v40 += 64;
        ++v41;
        if (v44)
        {
          sub_228416CB8(v20, v95, 0);
          v22 = __clz(__rbit64(v43)) + v40;
          goto LABEL_9;
        }
      }

      sub_228416CB8(v20, v95, 0);
    }

LABEL_9:
    ++v21;
    v20 = v22;
    if (v21 == v89)
    {

      v45 = v101[0];
      v9 = v81;
      goto LABEL_28;
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
LABEL_41:
  __break(1u);
  v99 = 0;
  v100 = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD00000000000001CLL, 0x800000022856DD10);
  v98 = 0;
  sub_2283F9B94(0, &qword_280DECFE0);
  sub_22855DDDC();
  sub_22855DEDC();
  __break(1u);
}

void sub_22845F344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22845F3A8()
{
  result = qword_280DE9650;
  if (!qword_280DE9650)
  {
    sub_22845F344(255, &qword_280DE9658, MEMORY[0x277CC95F0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9650);
  }

  return result;
}

void sub_22845F45C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AAB9BE0](a1, a2, v11);
      sub_2283EF310(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_2283EF310(0, a5, a6);
    if (sub_22855DB2C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22855DB3C();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_22855D99C();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_22855D9AC();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

void sub_22845F68C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void))
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AAB9BE0](a1, a2, v9);
      a5(0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    a5(0);
    if (sub_22855DB2C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22855DB3C();
    swift_dynamicCast();
    v5 = v18;
    v10 = *(a4 + 40);
    v11 = sub_22855D99C();
    v12 = -1 << *(a4 + 32);
    v8 = v11 & ~v12;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * v8);
        v15 = sub_22855D9AC();

        if (v15)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v13;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v16 = *(*(a4 + 48) + 8 * v8);

  v17 = v16;
}

uint64_t sub_22845F8B0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 48);
  v6 = v5 + *(*(type metadata accessor for UserProfile() - 8) + 72) * result;

  return sub_22842BF58(v6, a4);
}

uint64_t sub_22845F998(uint64_t a1)
{
  v31 = type metadata accessor for UserProfile();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v31);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_22846021C();
    v10 = sub_22855DC2C();
    v11 = 0;
    v12 = v10 + 56;
    v13 = *(v2 + 80);
    v29 = v9;
    v30 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v2 + 72);
    while (1)
    {
      sub_22842BF58(v30 + v14 * v11, v8);
      v15 = *(v10 + 40);
      sub_22855E22C();
      sub_22855C1DC();
      sub_2284602B0(&qword_280DEE378, MEMORY[0x277CC95F0]);
      sub_22855D14C();
      v16 = sub_22855E27C();
      v17 = ~(-1 << *(v10 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v12 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          sub_22842BF58(*(v10 + 48) + v18 * v14, v6);
          if (sub_22855C1AC())
          {
            sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
            v26 = *(v31 + 20);
            v27 = *&v6[v26];
            v28 = *&v8[v26];
            if (sub_22855D9AC())
            {
              break;
            }
          }

          sub_22845FC38(v6);
          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v12 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if ((v20 & (1 << v18)) == 0)
          {
            goto LABEL_5;
          }
        }

        sub_22845FC38(v6);
        sub_22845FC38(v8);
      }

      else
      {
LABEL_5:
        *(v12 + 8 * v19) = v20 | v21;
        result = sub_2284602F8(v8, *(v10 + 48) + v18 * v14);
        v23 = *(v10 + 16);
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v25;
      }

      if (++v11 == v29)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22845FC38(uint64_t a1)
{
  v2 = type metadata accessor for UserProfile();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22845FCDC(unint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a5;
    v11 = a2;
    v12 = sub_22855DB4C();
    a2 = v11;
    a5 = v10;
    if (v12)
    {
LABEL_3:
      sub_22846017C(0, a2, a3, a4, a5);
      v7 = sub_22855DC2C();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_22855DB4C();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x277D84FA0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v48 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v44 = v5;
    while (1)
    {
      v15 = MEMORY[0x22AAB9D20](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = *(v7 + 40);
      v19 = sub_22855D99C();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = *(v13 + 8 * (v21 >> 6));
      v24 = 1 << v21;
      if (((1 << v21) & v23) != 0)
      {
        v25 = ~v20;
        sub_2283EF310(0, a3, a4);
        while (1)
        {
          v26 = *(*(v7 + 48) + 8 * v21);
          v27 = sub_22855D9AC();

          if (v27)
          {
            break;
          }

          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = *(v13 + 8 * (v21 >> 6));
          v24 = 1 << v21;
          if (((1 << v21) & v23) == 0)
          {
            v9 = v48;
            v5 = v44;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v48;
        v5 = v44;
        if (v14 == v48)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v22) = v24 | v23;
        *(*(v7 + 48) + 8 * v21) = v17;
        v28 = *(v7 + 16);
        v16 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v29;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v30 = 0;
    v45 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v30 != v45)
    {
      v31 = *(v7 + 40);
      v32 = *(v5 + 32 + 8 * v30);
      v33 = sub_22855D99C();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      v37 = *(v13 + 8 * (v35 >> 6));
      v38 = 1 << v35;
      if (((1 << v35) & v37) != 0)
      {
        v39 = ~v34;
        sub_2283EF310(0, a3, a4);
        while (1)
        {
          v40 = *(*(v7 + 48) + 8 * v35);
          v41 = sub_22855D9AC();

          if (v41)
          {
            break;
          }

          v35 = (v35 + 1) & v39;
          v36 = v35 >> 6;
          v37 = *(v13 + 8 * (v35 >> 6));
          v38 = 1 << v35;
          if (((1 << v35) & v37) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v36) = v38 | v37;
        *(*(v7 + 48) + 8 * v35) = v32;
        v42 = *(v7 + 16);
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v43;
      }

      if (++v30 == v48)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_22845FFC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_228460124();
    v3 = sub_22855DC2C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_22855E22C();

      sub_22855D20C();
      result = sub_22855E27C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_22855E15C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
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
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_228460124()
{
  if (!qword_280DEE3D0)
  {
    v0 = sub_22855DC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE3D0);
    }
  }
}

void sub_22846017C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_2283EF310(255, a3, a4);
    sub_22842B880(a5, a3, a4);
    v9 = sub_22855DC3C();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22846021C()
{
  if (!qword_280DE9220)
  {
    type metadata accessor for UserProfile();
    sub_2284602B0(qword_280DEDB78, type metadata accessor for UserProfile);
    v0 = sub_22855DC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9220);
    }
  }
}

uint64_t sub_2284602B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2284602F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserProfile();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HealthAppPluginInfo.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HealthAppPluginInfo.bundleIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t HealthAppPluginInfo.init(name:bundleIdentifier:bundle:principalObject:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a5;
  a7[3] = a3;
  a7[4] = a4;
  a7[5] = a6;
  return result;
}

uint64_t HealthAppPluginInfo.LoadError.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_22855C06C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Error = type metadata accessor for HealthAppPluginInfo.LoadError(0);
  v8 = *(*(Error - 8) + 64);
  MEMORY[0x28223BE20](Error);
  v10 = (v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  strcpy(v32, "[LoadError]: ");
  HIWORD(v32[1]) = -4864;
  sub_228408514(v1, v10, type metadata accessor for HealthAppPluginInfo.LoadError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v28 = *v10;
        v30 = 0;
        v31 = 0xE000000000000000;
        sub_22855DC6C();
        MEMORY[0x22AAB92A0](0xD00000000000001CLL, 0x800000022856F060);
        v29[1] = v28;
        sub_228418D44();
        sub_22855DDDC();
        MEMORY[0x22AAB92A0](v30, v31);

        return v32[0];
      }

      v12 = *v10;
      v13 = v10[1];
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_22855DC6C();

      v14 = 0x800000022856F080;
      v15 = 0xD000000000000017;
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v18 = *v10;
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_22855DC6C();
      MEMORY[0x22AAB92A0](0xD000000000000068, 0x800000022856EFF0);
      v19 = MEMORY[0x22AAB9430](v18, MEMORY[0x277D837D0]);
      v21 = v20;

      MEMORY[0x22AAB92A0](v19, v21);
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 8)
    {
      v12 = *v10;
      v13 = v10[1];
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_22855DC6C();
      MEMORY[0x22AAB92A0](0xD00000000000004DLL, 0x800000022856EF80);
      goto LABEL_16;
    }

    v16 = *v10;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_22855DC6C();

    v30 = 0xD00000000000001FLL;
    v31 = 0x800000022856EFD0;
    v17 = [v16 description];
LABEL_20:
    v22 = v17;
    v23 = sub_22855D1AC();
    v25 = v24;

    MEMORY[0x22AAB92A0](v23, v25);

    MEMORY[0x22AAB92A0](v30, v31);

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v6, v10, v2);
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_22855DC6C();

      v30 = 0xD000000000000023;
      v31 = 0x800000022856F130;
      v27 = sub_22855C02C();
      MEMORY[0x22AAB92A0](v27);

      MEMORY[0x22AAB92A0](v30, v31);

      (*(v3 + 8))(v6, v2);
      return v32[0];
    }

    v12 = *v10;
    v13 = v10[1];
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_22855DC6C();

    v14 = 0x800000022856F160;
    v15 = 0xD000000000000020;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v12 = *v10;
    v13 = v10[1];
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_22855DC6C();

    v14 = 0x800000022856F100;
    v15 = 0xD000000000000021;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v16 = *v10;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_22855DC6C();

    v30 = 0xD000000000000020;
    v31 = 0x800000022856F0A0;
    v17 = [v16 description];
    goto LABEL_20;
  }

  v12 = *v10;
  v13 = v10[1];
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_22855DC6C();

  v14 = 0x800000022856F0D0;
  v15 = 0xD00000000000002DLL;
LABEL_15:
  v30 = v15;
  v31 = v14;
LABEL_16:
  MEMORY[0x22AAB92A0](v12, v13);
LABEL_17:

  MEMORY[0x22AAB92A0](v30, v31);
LABEL_21:

  return v32[0];
}

uint64_t HealthAppPluginSource.__allocating_init(bundleProvider:knownBundles:disabledBundleIdentifiers:allowedBundleIdentifiers:)(void (**(*a1)())(char *, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  HealthAppPluginSource.init(bundleProvider:knownBundles:disabledBundleIdentifiers:allowedBundleIdentifiers:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t static HealthAppPluginSource.shared.getter()
{
  if (qword_280DEDF08 != -1)
  {
    swift_once();
  }
}

void (**sub_228460A9C())(char *, char *, uint64_t)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22855C06C();
  v50 = *(v1 - 8);
  v2 = *(v50 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v52 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v49 = &v42 - v6;
  MEMORY[0x28223BE20](v5);
  v53 = &v42 - v7;
  v8 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v9 = sub_22855BFBC();
  type metadata accessor for URLResourceKey(0);
  v10 = sub_22855D39C();
  v54[0] = 0;
  v11 = [v8 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:v10 options:0 error:v54];

  v12 = v54[0];
  if (v11)
  {
    v44 = v0;
    v13 = sub_22855D3AC();
    v14 = v12;

    v15 = *(v13 + 16);
    v16 = MEMORY[0x277D84F90];
    v17 = v1;
    v46 = v1;
    v48 = v15;
    v43 = v8;
    if (v15)
    {
      v18 = 0;
      v47 = v50 + 16;
      v45 = (v50 + 8);
      v51 = (v50 + 32);
      while (1)
      {
        if (v18 >= *(v13 + 16))
        {
          __break(1u);
        }

        v19 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v20 = *(v50 + 72);
        (*(v50 + 16))(v53, v13 + v19 + v20 * v18, v17);
        if (sub_22855BF6C() == 0x6C7068746C616568 && v21 == 0xEC0000006E696775)
        {
          break;
        }

        v22 = sub_22855E15C();

        if (v22)
        {
          goto LABEL_11;
        }

        (*v45)(v53, v17);
LABEL_5:
        if (v48 == ++v18)
        {
          goto LABEL_16;
        }
      }

LABEL_11:
      v23 = v13;
      v24 = *v51;
      (*v51)(v52, v53, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54[0] = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2284274B0(0, v16[2] + 1, 1);
        v16 = v54[0];
      }

      v27 = v16[2];
      v26 = v16[3];
      if (v27 >= v26 >> 1)
      {
        sub_2284274B0(v26 > 1, v27 + 1, 1);
        v16 = v54[0];
      }

      v16[2] = v27 + 1;
      v28 = v16 + v19 + v27 * v20;
      v17 = v46;
      v24(v28, v52, v46);
      v13 = v23;
      goto LABEL_5;
    }

LABEL_16:

    v54[0] = MEMORY[0x277D84F90];
    v29 = v16[2];
    if (v29)
    {
      v30 = *(v50 + 16);
      v31 = v16 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v52 = *(v50 + 72);
      v53 = v30;
      v32 = (v50 + 8);
      v51 = MEMORY[0x277D84F90];
      do
      {
        v33 = v49;
        (v53)(v49, v31, v17);
        v34 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
        v35 = sub_22855BFBC();
        v36 = [v34 initWithURL_];

        v37 = (*v32)(v33, v17);
        if (v36)
        {
          MEMORY[0x22AAB9400](v37);
          if (*((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v38 = *((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_22855D3EC();
            v17 = v46;
          }

          sub_22855D43C();
          v51 = v54[0];
        }

        v31 = &v52[v31];
        --v29;
      }

      while (v29);

      v39 = v51;
    }

    else
    {

      v39 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v39 = v54[0];
    sub_22855BF3C();

    swift_willThrow();
  }

  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

Swift::Void __swiftcall HealthAppPluginSource.install(plugins:)(Swift::OpaquePointer plugins)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 7);
  sub_228462B1C();
  os_unfair_lock_unlock(v2 + 7);
}

unint64_t HealthAppPluginSource.providedBundleIdentifiers()()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  result = v2();
  if (!v1)
  {
    v5 = result;
    v6 = 0;
    v7 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_22:
      v8 = sub_22855DB4C();
      if (v8)
      {
LABEL_4:
        v9 = 0;
        v23 = MEMORY[0x277D84F90];
        do
        {
          v10 = v9;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x22AAB9D20](v10, v5);
            }

            else
            {
              if (v10 >= *(v7 + 16))
              {
                goto LABEL_21;
              }

              v11 = *(v5 + 8 * v10 + 32);
            }

            v12 = v11;
            v9 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

            v13 = [v11 bundleIdentifier];
            if (v13)
            {
              break;
            }

            ++v10;
            if (v9 == v8)
            {
              goto LABEL_24;
            }
          }

          v22 = v6;
          v14 = v13;
          v15 = sub_22855D1AC();
          v21 = v16;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_2283F7678(0, *(v23 + 2) + 1, 1, v23);
          }

          v18 = *(v23 + 2);
          v17 = *(v23 + 3);
          if (v18 >= v17 >> 1)
          {
            v23 = sub_2283F7678((v17 > 1), v18 + 1, 1, v23);
          }

          *(v23 + 2) = v18 + 1;
          v19 = &v23[16 * v18];
          v6 = v22;
          *(v19 + 4) = v15;
          *(v19 + 5) = v21;
        }

        while (v9 != v8);
        goto LABEL_24;
      }
    }

    else
    {
      v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }
    }

    v23 = MEMORY[0x277D84F90];
LABEL_24:

    v20 = sub_228406280(v23);

    return v20;
  }

  return result;
}

uint64_t HealthAppPluginSource.knownBundleIdentifiers()()
{
  v1 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2284272C0(0, v7, 0);
    v8 = v19;
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_228408514(v9, v5, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v12 = *(v5 + 2);
      v11 = *(v5 + 3);

      sub_228408700(v5);
      v19 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2284272C0((v13 > 1), v14 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  v16 = sub_228406280(v8);

  return v16;
}

uint64_t HealthAppPluginSource.loadedPlugins()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 28));
  return v2;
}

unint64_t sub_22846140C(char **a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  result = v4();
  if (!v2)
  {
    v7 = result;
    if (result >> 62)
    {
      result = sub_22855DB4C();
      v8 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_4:
        if (v8 < 1)
        {
          __break(1u);
          return result;
        }

        v9 = 0;
        v16 = v7 & 0xC000000000000001;
        v13 = v8;
        v14 = a1;
        do
        {
          if (v16)
          {
            v11 = MEMORY[0x22AAB9D20](v9, v7);
          }

          else
          {
            v11 = *(v7 + 8 * v9 + 32);
          }

          v12 = v11;
          sub_228408938(v11, a1, v15);
          v10 = v15[2];

          a1 = v14;
          swift_unknownObjectRelease();

          ++v9;
        }

        while (v13 != v9);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HealthAppPluginSource.loadPluginsFromDisk()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 7);
  sub_228462B54(&v1[4]);
  os_unfair_lock_unlock(v1 + 7);
}

void *HealthAppPluginSource.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return v0;
}

uint64_t HealthAppPluginSource.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t HealthAppPluginSource.launchGenerationPlugins()()
{
  v44 = *v0;
  sub_228405990(0, qword_280DEDF70, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  *&v46 = &v40 - v4;
  v5 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v54 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v41 = &v40 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v45 = v0;
  v14 = v0[5];
  v15 = *(v14 + 16);
  v48 = v1;
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    *&v47 = v5;
    while (v17 < *(v14 + 16))
    {
      v19 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v20 = *(v49 + 72);
      sub_228408514(v14 + v19 + v20 * v17, v13, type metadata accessor for HealthAppPluginSource.KnownBundle);
      if (v13[*(v5 + 28)] == 1)
      {
        sub_22840875C(v13, v54);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22840B0EC(0, *(v18 + 16) + 1, 1);
          v18 = v50;
        }

        v23 = *(v18 + 16);
        v22 = *(v18 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_22840B0EC(v22 > 1, v23 + 1, 1);
          v18 = v50;
        }

        *(v18 + 16) = v23 + 1;
        result = sub_22840875C(v54, v18 + v19 + v23 * v20);
        v5 = v47;
      }

      else
      {
        result = sub_228408700(v13);
      }

      if (v16 == ++v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_13:
  v43 = *(v18 + 16);
  if (v43)
  {
    v24 = 0;
    v54 = MEMORY[0x277D84F90];
    v25 = v46;
    v26 = v41;
    v42 = v18;
    while (v24 < *(v18 + 16))
    {
      sub_228408514(v18 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v24, v26, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v27 = *(v26 + 16);
      v28 = *(v26 + 24);
      v29 = v45;
      v30 = sub_22840B13C(v27, v28, v25);
      v31 = v29[2];
      MEMORY[0x28223BE20](v30);
      *(&v40 - 6) = v27;
      *(&v40 - 5) = v28;
      *(&v40 - 4) = v25;
      *(&v40 - 3) = v29;
      *(&v40 - 16) = 1;
      *(&v40 - 1) = v44;
      os_unfair_lock_lock((v31 + 28));
      v32 = v48;
      sub_22840B2D8((v31 + 16), &v50);
      if (v32)
      {
        os_unfair_lock_unlock((v31 + 28));

        sub_22840BD38(v25);
        sub_228408700(v26);

        return v54;
      }

      v48 = 0;
      os_unfair_lock_unlock((v31 + 28));
      sub_22840BD38(v25);
      v33 = v50;
      v34 = v52;
      v46 = v53;
      v47 = v51;
      sub_228408700(v26);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_228409BF8(0, *(v54 + 2) + 1, 1, v54);
        v54 = result;
      }

      v36 = *(v54 + 2);
      v35 = *(v54 + 3);
      if (v36 >= v35 >> 1)
      {
        result = sub_228409BF8((v35 > 1), v36 + 1, 1, v54);
        v54 = result;
      }

      v37 = v54;
      *(v54 + 2) = v36 + 1;
      v38 = &v37[48 * v36];
      *(v38 + 4) = v33;
      ++v24;
      v39 = v46;
      *(v38 + 40) = v47;
      *(v38 + 7) = v34;
      *(v38 + 4) = v39;
      v18 = v42;
      if (v43 == v24)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    __break(1u);
    return result;
  }

  v54 = MEMORY[0x277D84F90];
LABEL_24:

  return v54;
}

uint64_t HealthAppPluginSource.notificationCenterDelegateProvidingPlugins()()
{
  v44 = *v0;
  sub_228405990(0, qword_280DEDF70, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  *&v46 = &v40 - v4;
  v5 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v54 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v41 = &v40 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v45 = v0;
  v14 = v0[5];
  v15 = *(v14 + 16);
  v48 = v1;
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    *&v47 = v5;
    while (v17 < *(v14 + 16))
    {
      v19 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v20 = *(v49 + 72);
      sub_228408514(v14 + v19 + v20 * v17, v13, type metadata accessor for HealthAppPluginSource.KnownBundle);
      if (v13[*(v5 + 32)] == 1)
      {
        sub_22840875C(v13, v54);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22840B0EC(0, *(v18 + 16) + 1, 1);
          v18 = v50;
        }

        v23 = *(v18 + 16);
        v22 = *(v18 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_22840B0EC(v22 > 1, v23 + 1, 1);
          v18 = v50;
        }

        *(v18 + 16) = v23 + 1;
        result = sub_22840875C(v54, v18 + v19 + v23 * v20);
        v5 = v47;
      }

      else
      {
        result = sub_228408700(v13);
      }

      if (v16 == ++v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_13:
  v43 = *(v18 + 16);
  if (v43)
  {
    v24 = 0;
    v54 = MEMORY[0x277D84F90];
    v25 = v46;
    v26 = v41;
    v42 = v18;
    while (v24 < *(v18 + 16))
    {
      sub_228408514(v18 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v24, v26, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v27 = *(v26 + 16);
      v28 = *(v26 + 24);
      v29 = v45;
      v30 = sub_22840B13C(v27, v28, v25);
      v31 = v29[2];
      MEMORY[0x28223BE20](v30);
      *(&v40 - 6) = v27;
      *(&v40 - 5) = v28;
      *(&v40 - 4) = v25;
      *(&v40 - 3) = v29;
      *(&v40 - 16) = 1;
      *(&v40 - 1) = v44;
      os_unfair_lock_lock((v31 + 28));
      v32 = v48;
      sub_22840B2D8((v31 + 16), &v50);
      if (v32)
      {
        os_unfair_lock_unlock((v31 + 28));

        sub_22840BD38(v25);
        sub_228408700(v26);

        return v54;
      }

      v48 = 0;
      os_unfair_lock_unlock((v31 + 28));
      sub_22840BD38(v25);
      v33 = v50;
      v34 = v52;
      v46 = v53;
      v47 = v51;
      sub_228408700(v26);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_228409BF8(0, *(v54 + 2) + 1, 1, v54);
        v54 = result;
      }

      v36 = *(v54 + 2);
      v35 = *(v54 + 3);
      if (v36 >= v35 >> 1)
      {
        result = sub_228409BF8((v35 > 1), v36 + 1, 1, v54);
        v54 = result;
      }

      v37 = v54;
      *(v54 + 2) = v36 + 1;
      v38 = &v37[48 * v36];
      *(v38 + 4) = v33;
      ++v24;
      v39 = v46;
      *(v38 + 40) = v47;
      *(v38 + 7) = v34;
      *(v38 + 4) = v39;
      v18 = v42;
      if (v43 == v24)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    __break(1u);
    return result;
  }

  v54 = MEMORY[0x277D84F90];
LABEL_24:

  return v54;
}

uint64_t HealthAppPluginSource.conformingPlugins<A>(_:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 28));
  sub_2283F783C(0, &qword_280DE9648, &type metadata for HealthAppPluginInfo, MEMORY[0x277D83940]);
  sub_228407900(&qword_280DE9640, &qword_280DE9648, &type metadata for HealthAppPluginInfo);
  v3 = sub_22855D2CC();

  return v3;
}

uint64_t sub_228462260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 + 40);
  swift_unknownObjectRetain();
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t HealthAppPluginSource.pluginObject<A>(name:_:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  result = HealthAppPluginSource.plugin(name:allowDynamicFallback:)(v8);
  if (!v2)
  {
    v6 = v8[2];

    v7 = swift_dynamicCast();
    return (*(*(a1 - 8) + 56))(a2, v7 ^ 1u, 1, a1);
  }

  return result;
}

void *sub_2284623E0(uint64_t a1, uint64_t a2)
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

  sub_2283F783C(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
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

void *sub_228462484(uint64_t a1, uint64_t a2)
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

  sub_2283F783C(0, &qword_27D83F400, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_228462534(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t *sub_2284626C0(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_22855DAFC();
  sub_2283EF310(0, a5, a6);
  sub_22844B928(a7, a5, a6);
  result = sub_22855D56C();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_22855DB8C())
      {
        goto LABEL_30;
      }

      sub_2283EF310(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

void *sub_2284628F0(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v9 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v27 = result;
    v28 = a3;
    result = 0;
    v9 = 0;
    v26 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = a4;
      v15 = *(a4 + 48) + 56 * (__clz(__rbit64(v7)) | (v9 << 6));
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      v7 &= v7 - 1;
      v19 = *(v15 + 32);
      v18 = *(v15 + 40);
      v20 = *(v15 + 48);
      v21 = *v15;
      *v8 = *v15;
      *(v8 + 16) = v17;
      *(v8 + 24) = v16;
      *(v8 + 32) = v19;
      *(v8 + 40) = v18;
      *(v8 + 48) = v20;
      if (v11 == v28)
      {
        v25 = v21;

        a4 = v14;
        v5 = v26;
        result = v27;
        a3 = v28;
        goto LABEL_24;
      }

      v8 += 56;
      v22 = v21;

      result = v11;
      v23 = __OFADD__(v11++, 1);
      a4 = v14;
      if (v23)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v24 = v9 + 1;
    }

    else
    {
      v24 = v10;
    }

    v9 = v24 - 1;
    a3 = result;
    v5 = v26;
    result = v27;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_228462B1C()
{
  v1 = *(v0 + 16);

  return sub_2284A781C(v2);
}

unint64_t sub_228462B54(unint64_t result)
{
  if ((*(result + 8) & 1) == 0)
  {
    return sub_22846140C(result);
  }

  return result;
}

uint64_t sub_228462BA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_228462BEC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_228462C98()
{
  sub_228462DCC();
  if (v0 <= 0x3F)
  {
    sub_228462EB4(319, &qword_280DEE398, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      sub_228462DFC();
      if (v2 <= 0x3F)
      {
        sub_228462E2C();
        if (v3 <= 0x3F)
        {
          sub_228462E5C();
          if (v4 <= 0x3F)
          {
            sub_228462EB4(319, &qword_280DECFE8, sub_228418D44);
            if (v5 <= 0x3F)
            {
              sub_228462F00();
              if (v6 <= 0x3F)
              {
                sub_228462F6C();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_228462DCC()
{
  result = qword_280DED288;
  if (!qword_280DED288)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280DED288);
  }

  return result;
}

uint64_t sub_228462DFC()
{
  result = qword_280DED290;
  if (!qword_280DED290)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280DED290);
  }

  return result;
}

uint64_t sub_228462E2C()
{
  result = qword_280DED298;
  if (!qword_280DED298)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280DED298);
  }

  return result;
}

void sub_228462E5C()
{
  if (!qword_280DED0A0)
  {
    v0 = sub_2283EF310(0, &qword_280DED098, 0x277CCA8D8);
    if (!v1)
    {
      atomic_store(v0, &qword_280DED0A0);
    }
  }
}

void sub_228462EB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_228462F00()
{
  if (!qword_280DED258)
  {
    sub_2283F783C(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_280DED258);
    }
  }
}

uint64_t sub_228462F6C()
{
  result = qword_280DED280;
  if (!qword_280DED280)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280DED280);
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

uint64_t sub_228462FDC(uint64_t *a1, int a2)
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

uint64_t sub_228463024(uint64_t result, int a2, int a3)
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

uint64_t sub_228463074(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_228463284()
{
  result = qword_280DEBD18;
  if (!qword_280DEBD18)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEBD18);
  }

  return result;
}

unint64_t sub_2284632CC()
{
  result = qword_27D83F7E0;
  if (!qword_27D83F7E0)
  {
    type metadata accessor for DateRangeFeatureTag();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D83F7E0);
  }

  return result;
}

unint64_t sub_228463314()
{
  result = qword_280DEE840;
  if (!qword_280DEE840)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEE840);
  }

  return result;
}

unint64_t sub_22846335C()
{
  result = qword_280DEEC30;
  if (!qword_280DEEC30)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEEC30);
  }

  return result;
}

unint64_t sub_2284633A4()
{
  result = qword_27D83F7E8;
  if (!qword_27D83F7E8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D83F7E8);
  }

  return result;
}

unint64_t sub_2284633EC()
{
  result = qword_27D83F7F0;
  if (!qword_27D83F7F0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D83F7F0);
  }

  return result;
}

unint64_t sub_228463434()
{
  result = qword_27D83F7F8;
  if (!qword_27D83F7F8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D83F7F8);
  }

  return result;
}

unint64_t sub_22846347C()
{
  result = qword_280DEE820;
  if (!qword_280DEE820)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEE820);
  }

  return result;
}

unint64_t sub_2284634C4()
{
  result = qword_280DEE828;
  if (!qword_280DEE828)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEE828);
  }

  return result;
}

unint64_t sub_22846350C()
{
  result = qword_280DEE838;
  if (!qword_280DEE838)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEE838);
  }

  return result;
}

unint64_t sub_228463554()
{
  result = qword_280DEE830;
  if (!qword_280DEE830)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEE830);
  }

  return result;
}

id static Keyword.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t UserDefault.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_228463ACC(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  UserDefault.wrappedValue.getter(a2, v11);
  return sub_2284637B4;
}

void sub_2284637B4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_228463ACC(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_228463ACC((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_2284638A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = sub_22855DA2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = sub_22855DA1C();
  v12 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];

  swift_unknownObjectRelease();
  v13 = v2[2];
  if (v11 == v12)
  {
    v16 = *v3;
    v17 = v3[1];
    v23 = sub_22855D17C();
    [v13 setURL:0 forKey:v23];
    v18 = v23;
  }

  else
  {
    (*(v7 + 16))(v10, a1, v6);
    v14 = *(v5 - 8);
    if ((*(v14 + 48))(v10, 1, v5) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_22855E14C();
      (*(v14 + 8))(v10, v5);
    }

    v19 = *v3;
    v20 = v3[1];
    v21 = sub_22855D17C();
    [v13 setObject:v15 forKey:v21];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_228463ACC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_22855DA2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 - 8);
  (*(v10 + 16))(&v12 - v8, a1, v4);
  (*(v10 + 56))(v9, 0, 1, v4);
  sub_2284638A0(v9, a2);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_228463C14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_228463DA4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 24) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 24) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

id Profile.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id Profile.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for Profile();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id Profile.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Profile();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2284641F8()
{
  if (qword_280DEE228 != -1)
  {
    swift_once();
  }

  xmmword_280DE92A0 = xmmword_280DEE230;
}

uint64_t static HKSharedSummaryTransaction.currentHealthappdManagedTransactionVersionMetadata.getter()
{
  if (qword_280DE9298 != -1)
  {
    swift_once();
  }

  v0 = xmmword_280DE92A0;

  return v0;
}

uint64_t HKSharedSummaryTransaction.dateCommitted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 metadata];
  v4 = sub_22855D0EC();

  if (*(v4 + 16) && (v5 = sub_2283F6D18(0xD000000000000032, 0x800000022856F950), (v6 & 1) != 0))
  {
    sub_2283F6E48(*(v4 + 56) + 32 * v5, &v12);

    v7 = sub_22855C16C();
    v8 = swift_dynamicCast();
    return (*(*(v7 - 8) + 56))(a1, v8 ^ 1u, 1, v7);
  }

  else
  {

    v10 = sub_22855C16C();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

BOOL HKSharedSummaryTransaction.isCommitted.getter()
{
  sub_22843609C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  HKSharedSummaryTransaction.dateCommitted.getter(v3);
  v4 = sub_22855C16C();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_2284648E4(v3);
  return v5;
}

uint64_t HKSharedSummaryTransaction.bundleVersion.getter()
{
  v1 = [v0 metadata];
  v2 = sub_22855D0EC();

  if (*(v2 + 16) && (v3 = sub_2283F6D18(0xD000000000000032, 0x800000022856F990), (v4 & 1) != 0))
  {
    sub_2283F6E48(*(v2 + 56) + 32 * v3, v7);

    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t HKSharedSummaryTransaction.hasPairedDeviceData.getter()
{
  v1 = [v0 metadata];
  v2 = sub_22855D0EC();

  if (*(v2 + 16) && (v3 = sub_2283F6D18(0xD000000000000038, 0x800000022856FA10), (v4 & 1) != 0))
  {
    sub_2283F6E48(*(v2 + 56) + 32 * v3, v7);

    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_2284646E4()
{
  v1 = [v0 metadata];
  v2 = sub_22855D0EC();

  if (*(v2 + 16) && (v3 = sub_2283F6D18(0xD000000000000048, 0x800000022856FA50), (v4 & 1) != 0))
  {
    sub_2283F6E48(*(v2 + 56) + 32 * v3, v7);

    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t HKSharedSummaryTransaction.isUsableHealthappdManagedTransaction.getter()
{
  v0 = sub_2284646E4();
  if (qword_280DE9298 != -1)
  {
    v4 = v0;
    v5 = v1;
    swift_once();
    v0 = v4;
    v1 = v5;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:
    v3 = 0;
    return v3 & 1;
  }

  if (!v1)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v0 == xmmword_280DE92A0 && v1 == *(&xmmword_280DE92A0 + 1))
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_22855E15C();
  }

  return v3 & 1;
}

id Collection<>.selectPreferredTransaction()(uint64_t a1, uint64_t a2)
{
  v3 = PreferredSummaryTransactionSelector.selectTransaction<A>(from:)(v2, a1, a2);

  return v3;
}

uint64_t sub_2284648E4(uint64_t a1)
{
  sub_22843609C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228464940(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_2284272C0(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2283F6E48(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2284272C0((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_228464A54(unint64_t a1)
{
  v9 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_15:
    sub_22855DB4C();
    sub_22855DD4C();
    v3 = sub_22855DB4C();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22855DD4C();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x22AAB9D20](v4, a1);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a1 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_22855DD1C();
        v7 = *(v9 + 16);
        sub_22855DD5C();
        sub_22855DD6C();
        sub_22855DD2C();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  return v9;
}

id sub_228464BC8()
{
  v1 = v0[3];
  v5 = *v0;
  os_unfair_lock_lock((v1 + 24));
  sub_228464EF4((v1 + 16), &v6);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v6;
  v3 = [v6 viewContext];

  return v3;
}

uint64_t sub_228464C6C()
{
  v1 = v0[2];
  v3 = *v0;
  os_unfair_lock_lock((v1 + 24));
  sub_228464F10((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  return v4;
}

id sub_228464CEC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v6 = sub_228464E14();
    v7 = [v6 newBackgroundContext];

    [v7 setAutomaticallyMergesChangesFromParent_];
    v8 = [objc_allocWithZone(MEMORY[0x277CBE460]) initWithMergeType_];
    [v7 setMergePolicy_];

    *a1 = v7;
    v4 = v7;
    v3 = 0;
  }

  *a2 = v4;
  return v3;
}

void sub_228464DB8(uint64_t *a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  v3 = *a1;
  os_unfair_lock_lock((v2 + 24));
  sub_228466248((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_228464E14()
{
  v1 = v0[3];
  v3 = *v0;
  os_unfair_lock_lock((v1 + 24));
  sub_228466264((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  return v4;
}

id sub_228464E94@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *a1;
  }

  else
  {
    v7 = sub_228465DC0(*(a2 + 32));
    *a1 = v7;
    v5 = v7;
    v4 = 0;
  }

  *a3 = v5;
  return v4;
}

id sub_228464F10@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_228464CEC(a1, a2);
}

void sub_228464F2C(void *a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 24));
  sub_228464F88((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
}

id sub_228464F88(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

void (*sub_228464FCC(void *a1))(uint64_t a1, char a2)
{
  v3 = *v1;
  v4 = v1[3];
  a1[1] = v4;
  os_unfair_lock_lock((v4 + 24));
  sub_228466264((v4 + 16), &v6);
  a1[2] = 0;
  os_unfair_lock_unlock((v4 + 24));
  *a1 = v6;
  return sub_228465078;
}

void sub_228465078(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    v2 = v2;
    os_unfair_lock_lock((v3 + 24));
    sub_228466248((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    os_unfair_lock_lock((v3 + 24));
    sub_228466248((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }
}

id sub_228465120()
{
  v1 = v0[3];
  v5 = *v0;
  os_unfair_lock_lock((v1 + 24));
  sub_228466264((v1 + 16), &v6);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v6;
  v3 = [v6 persistentStoreCoordinator];

  return v3;
}

uint64_t sub_2284651C4()
{
  v0 = sub_22855C1DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_22855DC6C();

  v9 = 0x6C756E2F7665642FLL;
  v10 = 0xEA00000000002F6CLL;
  sub_22855C1CC();
  v5 = sub_22855C17C();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  MEMORY[0x22AAB92A0](v5, v7);

  MEMORY[0x22AAB92A0](0x6574696C71732ELL, 0xE700000000000000);
  sub_22855BF9C();
}

uint64_t MemoryHealthExperienceStore.__allocating_init()()
{
  v0 = swift_allocObject();
  MemoryHealthExperienceStore.init()();
  return v0;
}

void *MemoryHealthExperienceStore.init()()
{
  v1 = v0;
  v2 = sub_22855C06C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284654EC(0, &qword_27D83F800, &unk_27D83F808, &qword_280DED110, 0x277CBE440);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  v1[2] = v7;
  sub_2284654EC(0, &qword_27D83F818, &qword_27D83F820, &qword_27D83F828, 0x277CBE4A0);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = 0;
  v1[3] = v8;
  sub_2284651C4();
  v9 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
  v10 = sub_22855BFBC();
  v11 = [v9 initWithURL_];

  (*(v3 + 8))(v6, v2);
  v1[4] = v11;
  return v1;
}

void sub_2284654EC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_228465560(255, a3, a4, a5);
    type metadata accessor for os_unfair_lock_s(255);
    v6 = sub_22855DCFC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_228465560(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2283EF310(255, a3, a4);
    v5 = sub_22855DA2C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2284655B8()
{
  v2 = sub_228465DC0(*(v0 + 32));
  v3 = *(v0 + 24);
  os_unfair_lock_lock((v3 + 24));
  sub_228466248((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  if (v1)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_228465638(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_22855BF2C();
    sub_22855DC6C();

    v3 = [v2 description];
    v4 = sub_22855D1AC();
    v6 = v5;

    MEMORY[0x22AAB92A0](v4, v6);

    MEMORY[0x22AAB92A0](8236, 0xE200000000000000);
    v7 = [v2 userInfo];
    sub_22855D0EC();

    v8 = sub_22855D0FC();
    v10 = v9;

    MEMORY[0x22AAB92A0](v8, v10);

    sub_22855DEDC();
    __break(1u);
  }
}

uint64_t sub_2284657B4()
{
  v1 = v0;
  v2 = *v0;
  aBlock[0] = type metadata accessor for FeedItem();
  sub_22842B488();
  sub_22855D1BC();
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_22855D17C();

  v5 = [v3 initWithEntityName_];

  [v5 setIncludesPropertyValues_];
  v6 = v1[2];
  os_unfair_lock_lock((v6 + 24));
  sub_22846627C((v6 + 16), aBlock);
  os_unfair_lock_unlock((v6 + 24));
  v7 = aBlock[0];
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_228465FF8;
  *(v9 + 24) = v8;
  aBlock[4] = sub_228466000;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228417B68;
  aBlock[3] = &block_descriptor_5;
  v10 = _Block_copy(aBlock);

  v11 = v5;

  [v7 performBlockAndWait_];

  _Block_release(v10);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

id sub_2284659FC()
{
  v16[2] = *MEMORY[0x277D85DE8];
  v0 = sub_228464C6C();
  sub_22846618C();
  v1 = sub_22855D97C();

  v2 = sub_228464A54(v1);

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v3 >> 62)
  {
    v4 = sub_22855DB4C();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  v5 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x22AAB9D20](v5, v3);
    }

    else
    {
      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    v8 = sub_228464C6C();
    [v8 deleteObject_];
  }

  while (v4 != v5);
LABEL_13:

  v9 = sub_228464C6C();
  v16[0] = 0;
  v10 = [v9 save_];

  v11 = v16[0];
  if (v10)
  {
    v12 = *MEMORY[0x277D85DE8];

    return v11;
  }

  else
  {
    v14 = v16[0];
    v15 = sub_22855BF3C();

    swift_willThrow();
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t MemoryHealthExperienceStore.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t MemoryHealthExperienceStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_228465D3C()
{
  v2 = *v0;
  v3 = sub_228465DC0(*(v2 + 32));
  v4 = *(v2 + 24);
  os_unfair_lock_lock((v4 + 24));
  sub_228466248((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
  if (v1)
  {
    __break(1u);
  }

  else
  {
  }
}

id sub_228465DC0(void *a1)
{
  if (qword_280DEDE38 != -1)
  {
    swift_once();
  }

  v2 = qword_280DF6A98;
  v3 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v4 = sub_22855D17C();
  v5 = [v3 initWithName:v4 managedObjectModel:v2];

  sub_2284661F0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228560690;
  *(v6 + 32) = a1;
  sub_2283EF310(0, &unk_280DED0D8, 0x277CBE4E0);
  v7 = a1;
  v8 = sub_22855D39C();

  [v5 setPersistentStoreDescriptions_];

  v14[4] = sub_228465638;
  v14[5] = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2283F83B0;
  v14[3] = &block_descriptor_17;
  v9 = _Block_copy(v14);
  [v5 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v9);
  v10 = [v5 viewContext];
  [v10 setAutomaticallyMergesChangesFromParent_];

  v11 = [v5 viewContext];
  v12 = [objc_allocWithZone(MEMORY[0x277CBE460]) initWithMergeType_];
  [v11 setMergePolicy_];

  return v5;
}

id sub_228465FF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2284659FC();
}

unint64_t sub_22846618C()
{
  result = qword_27D840260;
  if (!qword_27D840260)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D840260);
  }

  return result;
}

void sub_2284661F0()
{
  if (!qword_280DED000)
  {
    v0 = sub_22855E12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED000);
    }
  }
}

uint64_t (*MockSharableModelReadableStorage.fetchHandler.getter())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228466408(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v10 - v5;
  v7 = *(v0 + 16);
  v8 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  swift_beginAccess();
  (*(v3 + 16))(v6, v7 + v8, v2);
  sub_22855C94C();
  (*(v3 + 8))(v6, v2);
  *(swift_allocObject() + 16) = v10;
  return sub_2284196B0;
}