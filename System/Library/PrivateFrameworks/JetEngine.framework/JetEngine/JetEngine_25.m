uint64_t sub_1AB1F39C0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1AB1F3A30()
{
  result = qword_1EB438660;
  if (!qword_1EB438660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438660);
  }

  return result;
}

unint64_t sub_1AB1F3A88()
{
  result = qword_1EB438668;
  if (!qword_1EB438668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438668);
  }

  return result;
}

unint64_t sub_1AB1F3AE0()
{
  result = qword_1EB438670;
  if (!qword_1EB438670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438670);
  }

  return result;
}

unint64_t sub_1AB1F3B34()
{
  result = qword_1EB432768[0];
  if (!qword_1EB432768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB432768);
  }

  return result;
}

uint64_t Bag.Profile.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Bag.Profile.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Bag.Profile.version.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Bag.Profile.version.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void sub_1AB1F3C9C(uint64_t a1)
{
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB019150((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ED4D3EA8 = v2;
}

void Bag.profile.getter(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 profile];
  v5 = sub_1AB460544();
  v7 = v6;

  v8 = [v3 profileVersion];
  v9 = sub_1AB460544();
  v11 = v10;

  *a1 = v5;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v11;
}

uint64_t sub_1AB1F3EC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[3] = &type metadata for AMSKitBagFromJetEngineBag;
  a2[4] = sub_1AB1F4168();
  *a2 = v3;

  return swift_unknownObjectRetain();
}

void sub_1AB1F3F14()
{
  qword_1EB432E70 = 0x65726F7453707041;
  *algn_1EB432E78 = 0xE800000000000000;
  qword_1EB432E80 = 49;
  unk_1EB432E88 = 0xE100000000000000;
}

uint64_t static Bag.Profile.iosAppStore.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EB432E60 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_1EB432E78;
  v2 = qword_1EB432E80;
  v3 = unk_1EB432E88;
  *a1 = qword_1EB432E70;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_1AB1F3FC8()
{
  qword_1EB438680 = 0x745370704163614DLL;
  *algn_1EB438688 = 0xEB0000000065726FLL;
  qword_1EB438690 = 49;
  unk_1EB438698 = 0xE100000000000000;
}

uint64_t static Bag.Profile.macAppStore.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EB435CB8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_1EB438688;
  v2 = qword_1EB438690;
  v3 = unk_1EB438698;
  *a1 = qword_1EB438680;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_1AB1F4084()
{
  qword_1EB4386A0 = 0x7374736163646F50;
  *algn_1EB4386A8 = 0xE800000000000000;
  qword_1EB4386B0 = 49;
  unk_1EB4386B8 = 0xE100000000000000;
}

uint64_t static Bag.Profile.podcasts.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EB435CC0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_1EB4386A8;
  v2 = qword_1EB4386B0;
  v3 = unk_1EB4386B8;
  *a1 = qword_1EB4386A0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

unint64_t sub_1AB1F4168()
{
  result = qword_1EB4386E8;
  if (!qword_1EB4386E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4386E8);
  }

  return result;
}

JetEngine::JSStrongReference __swiftcall JSStrongReference.init(_:)(JSValue a1)
{
  v1->super.isa = a1.super.isa;
  result.referent.value = a1;
  return result;
}

id JSStrongReference.referent.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t JetPackAssetDiskCacheSQLiteMetadataStore.__allocating_init(database:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_1AB1F4244()
{
  qword_1EB434200 = 0xD0000000000000C3;
  *algn_1EB434208 = 0x80000001AB5030B0;
  qword_1EB434210 = MEMORY[0x1E69E7CC0];
}

void JetPackAssetDiskCacheSQLiteMetadataStore.findFirst(id:)(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  sub_1AB2EC200(v5, a1, a2);
}

uint64_t sub_1AB1F42C4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;
  MEMORY[0x1AC59B990](64);
  v21 = v22;
  MEMORY[0x1AC59BA20](0xD000000000000027, 0x80000001AB5032C0);
  *(&v23 + 1) = MEMORY[0x1E69E72F0];
  *&v24 = &off_1F2000A30;
  LODWORD(v22) = a2;
  sub_1AB014A58(&v22, v26, &qword_1EB439C50);
  v7 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB05A334((v8 > 1), v9 + 1, 1, v7);
  }

  v7[2] = v9 + 1;
  v10 = &v7[5 * v9];
  v11 = v26[0];
  v12 = v26[1];
  v10[8] = v27;
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB05A47C(&v22);
  MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB503260);
  *&v26[0] = 0;

  sub_1AB3620A8(v21, *(&v21 + 1), a1, v26, &v22);

  if (v3)
  {
  }

  v14 = *&v26[0];
  if (!*&v26[0])
  {
    __break(1u);
    return result;
  }

  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();
  *(inited + 16) = v14;
  *(inited + 24) = 0;
  sub_1AB02E720(v7);

  v16 = *(inited + 16);
  v17 = sqlite3_step(v16);
  if (qword_1ED4D0C30 != -1)
  {
    swift_once();
  }

  if (!sub_1AB15AA44(v17, qword_1ED4D3ED8))
  {
    sub_1AB1F60B4();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v16);
  }

  if (v17 == 100)
  {
    sub_1AB05A938(inited, &v22);
    swift_setDeallocating();
    sqlite3_finalize(*(inited + 16));

    v18 = v25;
    v19 = v23;
    *a3 = v22;
    *(a3 + 16) = v19;
    *(a3 + 32) = v24;
    *(a3 + 48) = v18;
  }

  else
  {
    swift_setDeallocating();
    sqlite3_finalize(v16);

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
  }

  return result;
}

void JetPackAssetDiskCacheSQLiteMetadataStore.findFirst(cacheKey:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);

  sub_1AB02F9B8(v7, a1, a2, a3);
}

uint64_t JetPackAssetDiskCacheSQLiteMetadataStore.findAll()()
{
  v1 = *(v0 + 16);

  sub_1AB2EE4AC(v1);
  v3 = v2;

  return v3;
}

uint64_t sub_1AB1F46BC@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v26[0] = 0;

  result = sub_1AB3620A8(0xD000000000000034, 0x80000001AB503280, a1, v26, v24);
  if (!v2)
  {
    v6 = v26[0];
    if (v26[0])
    {
      type metadata accessor for SQLiteStatement();
      inited = swift_initStackObject();
      *(inited + 16) = v6;
      *(inited + 24) = 0;
      sub_1AB02E720(MEMORY[0x1E69E7CC0]);
      v8 = MEMORY[0x1E69E7CC0];
      for (i = &xmmword_1ED4D0000; ; i = &xmmword_1ED4D0000)
      {
        v10 = *(inited + 16);
        v11 = sqlite3_step(v10);
        if (*(i + 390) != -1)
        {
          swift_once();
        }

        v12 = qword_1ED4D3ED8;
        if (!*(qword_1ED4D3ED8 + 16) || (sub_1AB4620A4(), sub_1AB4620D4(), v13 = sub_1AB462104(), v14 = -1 << *(v12 + 32), v15 = v13 & ~v14, ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0))
        {
LABEL_18:
          sub_1AB1F60B4();
          swift_allocError();
          *v23 = v11;
          *(v23 + 8) = 0;
          *(v23 + 16) = 0;
          swift_willThrow();
          swift_setDeallocating();
          sqlite3_finalize(v10);
        }

        v16 = ~v14;
        while (*(*(v12 + 48) + 4 * v15) != v11)
        {
          v15 = (v15 + 1) & v16;
          if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        if (v11 != 100)
        {
          break;
        }

        sub_1AB05A938(inited, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1AB2B0D78(0, *(v8 + 2) + 1, 1, v8);
        }

        v18 = *(v8 + 2);
        v17 = *(v8 + 3);
        if (v18 >= v17 >> 1)
        {
          v8 = sub_1AB2B0D78((v17 > 1), v18 + 1, 1, v8);
        }

        *(v8 + 2) = v18 + 1;
        v19 = &v8[56 * v18];
        v20 = v24[0];
        v21 = v24[1];
        v22 = v24[2];
        *(v19 + 10) = v25;
        *(v19 + 3) = v21;
        *(v19 + 4) = v22;
        *(v19 + 2) = v20;
      }

      swift_setDeallocating();
      sqlite3_finalize(v10);

      *a2 = v8;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t JetPackAssetDiskCacheSQLiteMetadataStore.findAll(cacheKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  sub_1AB2EE67C(v5, a1, a2);
  v7 = v6;

  return v7;
}

uint64_t sub_1AB1F4A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v38 = 0;
  *(&v38 + 1) = 0xE000000000000000;
  MEMORY[0x1AC59B990](71);
  v37 = v38;
  MEMORY[0x1AC59BA20](0xD00000000000002ELL, 0x80000001AB503230);
  *(&v39 + 1) = MEMORY[0x1E69E6158];
  *&v40 = &off_1F2000A10;
  *&v38 = a2;
  *(&v38 + 1) = a3;
  sub_1AB014A58(&v38, v42, &qword_1EB439C50);

  v9 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1AB05A334((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  v12 = &v9[5 * v11];
  v13 = v42[0];
  v14 = v42[1];
  v12[8] = v43;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB05A47C(&v38);
  MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB503260);
  *&v42[0] = 0;

  sub_1AB3620A8(v37, *(&v37 + 1), a1, v42, &v38);

  if (v4)
  {
  }

  v16 = *&v42[0];
  if (*&v42[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v16;
    *(inited + 24) = 0;
    sub_1AB02E720(v9);
    v36 = a4;

    v18 = MEMORY[0x1E69E7CC0];
    v19 = &xmmword_1ED4D0000;
    for (i = &unk_1ED4D3000; ; i = v23)
    {
      v21 = *(inited + 16);
      v22 = sqlite3_step(v21);
      if (*(v19 + 390) != -1)
      {
        swift_once();
      }

      v23 = i;
      v24 = i[475];
      if (!*(v24 + 16) || (sub_1AB4620A4(), sub_1AB4620D4(), v25 = sub_1AB462104(), v26 = -1 << *(v24 + 32), v27 = v25 & ~v26, ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0))
      {
LABEL_20:
        sub_1AB1F60B4();
        swift_allocError();
        *v35 = v22;
        *(v35 + 8) = 0;
        *(v35 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v21);
      }

      v28 = ~v26;
      while (*(*(v24 + 48) + 4 * v27) != v22)
      {
        v27 = (v27 + 1) & v28;
        if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if (v22 != 100)
      {
        break;
      }

      sub_1AB05A938(inited, &v38);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1AB2B0D78(0, *(v18 + 2) + 1, 1, v18);
      }

      v30 = *(v18 + 2);
      v29 = *(v18 + 3);
      if (v30 >= v29 >> 1)
      {
        v18 = sub_1AB2B0D78((v29 > 1), v30 + 1, 1, v18);
      }

      *(v18 + 2) = v30 + 1;
      v31 = &v18[56 * v30];
      v32 = v38;
      v33 = v39;
      v34 = v40;
      *(v31 + 10) = v41;
      *(v31 + 3) = v33;
      *(v31 + 4) = v34;
      *(v31 + 2) = v32;
      v19 = &xmmword_1ED4D0000;
    }

    swift_setDeallocating();
    sqlite3_finalize(v21);

    *v36 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void JetPackAssetDiskCacheSQLiteMetadataStore.create(record:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  v5 = *(v2 + 16);
  sub_1AB1F602C(v7, v6);

  sub_1AB2EC3DC(v5, v7, a2);
}

uint64_t sub_1AB1F4F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v47 = 0xE000000000000000;
  MEMORY[0x1AC59B990](84);
  MEMORY[0x1AC59BA20](0xD000000000000043, 0x80000001AB5031E0);
  v53 = *(a2 + 8);
  if (*(&v53 + 1))
  {
    v7 = &off_1F2000A10;
    v8 = MEMORY[0x1E69E6158];
    v9 = v53;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v48 = 0;
  }

  v46 = v9;
  v47 = *(&v53 + 1);
  v49 = v8;
  v50 = v7;
  sub_1AB014A58(&v46, &v43, &qword_1EB439C50);
  sub_1AB014A58(&v53, v42, &qword_1EB439AC0);
  v10 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AB05A334((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  v13 = &v10[5 * v12];
  v14 = v43;
  v15 = v44;
  v13[8] = v45;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB05A47C(&v46);
  MEMORY[0x1AC59BA20](8236, 0xE200000000000000);
  v52 = *(a2 + 24);
  if (*(&v52 + 1))
  {
    v16 = &off_1F2000A10;
    v17 = MEMORY[0x1E69E6158];
    v18 = v52;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v48 = 0;
  }

  v46 = v18;
  v47 = *(&v52 + 1);
  v49 = v17;
  v50 = v16;
  sub_1AB014A58(&v46, &v43, &qword_1EB439C50);
  sub_1AB014A58(&v52, v42, &qword_1EB439AC0);
  v20 = v10[2];
  v19 = v10[3];
  if (v20 >= v19 >> 1)
  {
    v10 = sub_1AB05A334((v19 > 1), v20 + 1, 1, v10);
  }

  v10[2] = v20 + 1;
  v21 = &v10[5 * v20];
  v22 = v43;
  v23 = v44;
  v21[8] = v45;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB05A47C(&v46);
  MEMORY[0x1AC59BA20](8236, 0xE200000000000000);
  v51 = *(a2 + 40);
  v24 = *(&v51 + 1);
  if (*(&v51 + 1) >> 60 == 15)
  {
    v25 = 0;
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v48 = 0;
  }

  else
  {
    v27 = &off_1F2000A20;
    v26 = MEMORY[0x1E6969080];
    v25 = v51;
  }

  v46 = v25;
  v47 = v24;
  v49 = v26;
  v50 = v27;
  sub_1AB014A58(&v46, &v43, &qword_1EB439C50);
  sub_1AB014A58(&v51, v42, &qword_1EB4386F8);
  v29 = v10[2];
  v28 = v10[3];
  if (v29 >= v28 >> 1)
  {
    v10 = sub_1AB05A334((v28 > 1), v29 + 1, 1, v10);
  }

  v10[2] = v29 + 1;
  v30 = &v10[5 * v29];
  v31 = v43;
  v32 = v44;
  v30[8] = v45;
  *(v30 + 2) = v31;
  *(v30 + 3) = v32;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB05A47C(&v46);
  MEMORY[0x1AC59BA20](0x4E52555445522029, 0xED00002A20474E49);
  v46 = 0;

  sub_1AB3620A8(0, 0xE000000000000000, a1, &v46, &v43);
  if (v3)
  {
  }

  v34 = v46;
  if (v46)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v34;
    *(inited + 24) = 0;
    sub_1AB02E720(v10);

    v37 = *(inited + 16);
    v38 = sqlite3_step(v37);
    if (qword_1ED4D0C30 != -1)
    {
      swift_once();
    }

    if (sub_1AB15AA44(v38, qword_1ED4D3ED8) && (v39 = sub_1AB064540(&unk_1F1FF36F8), v40 = sub_1AB15AA44(v38, v39), , v40))
    {
      sub_1AB05A938(inited, a3);
      swift_setDeallocating();
      v36 = *(inited + 16);
    }

    else
    {
      sub_1AB1F60B4();
      swift_allocError();
      *v41 = v38;
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      swift_willThrow();
      swift_setDeallocating();
      v36 = v37;
    }

    sqlite3_finalize(v36);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1F5474(uint64_t a1, unsigned int a2)
{
  v21[5] = *MEMORY[0x1E69E9840];
  v21[1] = 0xE000000000000000;
  MEMORY[0x1AC59B990](37);
  MEMORY[0x1AC59BA20](0xD000000000000025, 0x80000001AB5031B0);
  v21[3] = MEMORY[0x1E69E72F0];
  v21[4] = &off_1F2000A30;
  v21[0] = a2;
  sub_1AB014A58(v21, v19, &qword_1EB439C50);
  v5 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1AB05A334((v6 > 1), v7 + 1, 1, v5);
  }

  v5[2] = v7 + 1;
  v8 = &v5[5 * v7];
  v9 = v19[0];
  v10 = v19[1];
  v8[8] = v20;
  *(v8 + 2) = v9;
  *(v8 + 3) = v10;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB05A47C(v21);
  v21[0] = 0;

  sub_1AB3620A8(0, 0xE000000000000000, a1, v21, v19);

  if (v2)
  {
  }

  v12 = v21[0];
  if (v21[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v12;
    *(inited + 24) = 0;
    sub_1AB02E720(v5);

    v14 = *(inited + 16);
    v15 = sqlite3_step(v14);
    if (qword_1ED4D0C30 != -1)
    {
      swift_once();
    }

    if (!sub_1AB15AA44(v15, qword_1ED4D3ED8) || (v16 = sub_1AB064540(&unk_1F1FF3720), v17 = sub_1AB15AA44(v15, v16), , !v17))
    {
      sub_1AB1F60B4();
      swift_allocError();
      *v18 = v15;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      swift_willThrow();
    }

    swift_setDeallocating();
    sqlite3_finalize(v14);
  }

  __break(1u);
  return result;
}

void JetPackAssetDiskCacheSQLiteMetadataStore.updateMetadata(id:metadata:)(_BOOL4 a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 16);
  sub_1AB1B9C40(a2, a3);

  sub_1AB2EC5E4(v9, a2, a3, a1, a4);
}

uint64_t sub_1AB1F57B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  MEMORY[0x1AC59B990](60);
  MEMORY[0x1AC59BA20](0xD000000000000024, 0x80000001AB503180);
  if (a3 >> 60 == 15)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v38[2] = 0;
  }

  else
  {
    v14 = &off_1F2000A20;
    v13 = MEMORY[0x1E6969080];
    v11 = a2;
    v12 = a3;
  }

  v38[0] = v11;
  v38[1] = v12;
  v39 = v13;
  v40 = v14;
  sub_1AB014A58(v38, &v35, &qword_1EB439C50);
  sub_1AB1B9C40(a2, a3);
  v15 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1AB05A334((v16 > 1), v17 + 1, 1, v15);
  }

  v15[2] = v17 + 1;
  v18 = &v15[5 * v17];
  v19 = v35;
  v20 = v36;
  v18[8] = v37;
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB05A47C(v38);
  MEMORY[0x1AC59BA20](0x6920455245485720, 0xEC000000203D2064);
  v39 = MEMORY[0x1E69E72F0];
  v40 = &off_1F2000A30;
  LODWORD(v38[0]) = a4;
  sub_1AB014A58(v38, &v35, &qword_1EB439C50);
  v22 = v15[2];
  v21 = v15[3];
  if (v22 >= v21 >> 1)
  {
    v15 = sub_1AB05A334((v21 > 1), v22 + 1, 1, v15);
  }

  v15[2] = v22 + 1;
  v23 = &v15[5 * v22];
  v24 = v35;
  v25 = v36;
  v23[8] = v37;
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB05A47C(v38);
  MEMORY[0x1AC59BA20](0x494E525554455220, 0xEC0000002A20474ELL);
  v38[0] = 0;

  sub_1AB3620A8(0, 0xE000000000000000, a1, v38, &v35);
  if (v5)
  {
  }

  v27 = v38[0];
  if (v38[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v27;
    *(inited + 24) = 0;
    sub_1AB02E720(v15);

    v30 = *(inited + 16);
    v31 = sqlite3_step(v30);
    if (qword_1ED4D0C30 != -1)
    {
      swift_once();
    }

    if (sub_1AB15AA44(v31, qword_1ED4D3ED8) && (v32 = sub_1AB064540(&unk_1F1FF3748), v33 = sub_1AB15AA44(v31, v32), , v33))
    {
      sub_1AB05A938(inited, a5);
      swift_setDeallocating();
      v29 = *(inited + 16);
    }

    else
    {
      sub_1AB1F60B4();
      swift_allocError();
      *v34 = v31;
      *(v34 + 8) = 0;
      *(v34 + 16) = 0;
      swift_willThrow();
      swift_setDeallocating();
      v29 = v30;
    }

    sqlite3_finalize(v29);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JetPackAssetDiskCacheSQLiteMetadataStore.beginTransaction()()
{
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v2 + 24));
  sub_1AB02F230((v2 + 16), &v3);
  os_unfair_lock_unlock((v2 + 24));
  if (!v1)
  {
  }
}

Swift::Void __swiftcall JetPackAssetDiskCacheSQLiteMetadataStore.endTransaction()()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB05B018((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

void sub_1AB1F5CBC(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 16);

  sub_1AB2EC200(v5, a1, a2);
}

uint64_t sub_1AB1F5D0C()
{
  v1 = *(*v0 + 16);

  sub_1AB2EE4AC(v1);
  v3 = v2;

  return v3;
}

uint64_t sub_1AB1F5D64(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);

  sub_1AB2EE67C(v5, a1, a2);
  v7 = v6;

  return v7;
}

void sub_1AB1F5DDC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 32);
  v8[1] = *(a1 + 16);
  v8[2] = v5;
  v9 = *(a1 + 48);
  v8[0] = *a1;
  v6 = *(v4 + 16);
  sub_1AB1F602C(v8, v7);

  sub_1AB2EC3DC(v6, v8, a2);
}

void sub_1AB1F5E80(_BOOL4 a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*v4 + 16);
  sub_1AB1B9C40(a2, a3);

  sub_1AB2EC5E4(v9, a2, a3, a1, a4);
}

void sub_1AB1F5F04()
{
  v2 = *(*(*v0 + 16) + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v2 + 24));
  sub_1AB02F0EC((v2 + 16), &v3);
  os_unfair_lock_unlock((v2 + 24));
  if (!v1)
  {
  }
}

void sub_1AB1F5F74()
{
  v1 = *(*(*v0 + 16) + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB05B000((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1AB1F5FE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

unint64_t sub_1AB1F60B4()
{
  result = qword_1EB4386F0;
  if (!qword_1EB4386F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4386F0);
  }

  return result;
}

id LocalizerFactory.jsExport.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSLocalizerFactoryObject();
  (*(v5 + 16))(v7, v2, a1);
  return sub_1AB1A9B90(v7, v8, a1, a2);
}

uint64_t dispatch thunk of LocalizerFactory.localizer(forLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB027460;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t static ComponentID.forItems(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = v5;
  *a2 = 0;
  *(a2 + 8) = sub_1AB1F64E4;
  *(a2 + 16) = v7;
  *(a2 + 24) = 0;
}

uint64_t sub_1AB1F63D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *a1;

  v13 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v13);

  *a6 = a2;
  a6[1] = a3;
  a6[2] = a4;
  a6[3] = a5;
  a6[4] = 35;
  a6[5] = 0xE100000000000000;
  v15 = v12 + 1;
  if (v12 == -1)
  {

    sub_1AB41EFD8("JetEngine/ComponentID.swift", 27, 2, 49, a2, a3, a4, a5);

    v15 = 0;
  }

  *a1 = v15;
  return result;
}

void __swiftcall ComponentID.init(at:in:)(JetEngine::ComponentID *__return_ptr retstr, Swift::UInt64 at, JetEngine::ShelfID in)
{
  v7 = *in.parent.value._countAndFlagsBits;
  v4 = *(in.parent.value._countAndFlagsBits + 16);
  v5 = *(in.parent.value._countAndFlagsBits + 24);
  v6 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v6);

  retstr->value._countAndFlagsBits = 35;
  retstr->value._object = 0xE100000000000000;
  retstr->parent.parent = v7;
  retstr->parent.value._countAndFlagsBits = v4;
  retstr->parent.value._object = v5;
}

void __swiftcall ComponentID.init(randomIn:)(JetEngine::ComponentID *__return_ptr retstr, JetEngine::ShelfID randomIn)
{
  countAndFlagsBits = randomIn.parent.value._countAndFlagsBits;
  v4 = sub_1AB45F9E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *countAndFlagsBits;
  v8 = *(countAndFlagsBits + 16);
  v9 = *(countAndFlagsBits + 24);
  sub_1AB45F9D4();
  v10 = sub_1AB45F9C4();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v21 = v10;
  v22 = v12;
  v19 = 45;
  v20 = 0xE100000000000000;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1AB0273A8();
  v13 = sub_1AB461434();
  v15 = v14;

  retstr->value._countAndFlagsBits = v13;
  retstr->value._object = v15;
  retstr->parent.parent = v16;
  retstr->parent.value._countAndFlagsBits = v8;
  retstr->parent.value._object = v9;
}

__n128 ComponentID.init<A>(id:kind:in:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v14 = *a4;
  v11 = a4[1].n128_u64[0];
  v12 = a4[1].n128_u64[1];
  sub_1AB4608B4();
  MEMORY[0x1AC59BA20](a1, a2);

  (*(*(a5 - 8) + 8))(a3, a5);
  a6[2].n128_u64[0] = v15;
  a6[2].n128_u64[1] = v16;
  result = v14;
  *a6 = v14;
  a6[1].n128_u64[0] = v11;
  a6[1].n128_u64[1] = v12;
  return result;
}

uint64_t sub_1AB1F67C8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1AB4616A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB1F3034(0x746E65726170, 0xE600000000000000, 1, a2);
  sub_1AB448C64(a1, v11, v32);
  if (v3)
  {
  }

  v14 = *a1;
  v13 = a1[1];
  if (v13 == *(*a1 + 16))
  {
    sub_1AB1F3034(0x65756C6176, 0xE500000000000000, 1, a2);

    sub_1AB461694();
    v15 = sub_1AB4616B4();
    swift_allocError();
    v17 = v16;
    (*(v8 + 16))(v16, v10, v7);
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B00], v15);
    swift_willThrow();
    (*(v8 + 8))(v10, v7);
  }

  v31 = v32[3];
  v33 = v32[1];
  v18 = v32[0];
  v19 = v32[2];

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v30 = v18;
    if (v13 < *(v14 + 16))
    {
      v20 = (v14 + 32 * v13);
      v21 = v20[6];
      v22 = v20[7];
      v24 = v20[4];
      v23 = v20[5];
      a1[1] = v13 + 1;

      v25 = MEMORY[0x1AC59B960](v24, v23, v21, v22);
      v27 = v26;

      v28 = v33;
      *a3 = v30;
      a3[1] = v28;
      v29 = v31;
      a3[2] = v19;
      a3[3] = v29;
      a3[4] = v25;
      a3[5] = v27;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t ComponentID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1AB4616A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1Tm(v37, v37[3]);
  v9 = sub_1AB461DB4();
  v38 = v6;
  v29 = 45;
  v30 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v9);
  *(&v24 - 2) = &v29;
  v12 = sub_1AB021178(0x7FFFFFFFFFFFFFFFLL, 1, sub_1AB021538, (&v24 - 4), v10, v11, &v24);
  v35 = v12;
  v36 = 0;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v13 = sub_1AB4621E4();
  sub_1AB1F67C8(&v35, v13, &v29);
  v15 = v30;
  v16 = v32;
  v26 = v31;
  v27 = v29;
  v25 = v33;
  v28 = v34;
  v17 = *(v12 + 16);

  if (v36 == v17)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    v18 = v26;
    *a2 = v27;
    a2[1] = v15;
    a2[2] = v18;
    a2[3] = v16;
    v19 = v28;
    a2[4] = v25;
    a2[5] = v19;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  if (v36 >= v17)
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB4621E4();
    sub_1AB461694();
    v20 = sub_1AB4616B4();
    swift_allocError();
    v22 = v21;
    v23 = v38;
    (*(v38 + 16))(v21, v8, v5);
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6B00], v20);
    swift_willThrow();
    (*(v23 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return result;
}

uint64_t ComponentID.encode(to:)(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();

  MEMORY[0x1AC59BA20](45, 0xE100000000000000);
  MEMORY[0x1AC59BA20](v2, v3);
  MEMORY[0x1AC59BA20](45, 0xE100000000000000);
  MEMORY[0x1AC59BA20](v4, v5);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  sub_1AB461E34();

  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t ComponentID.debugDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

Swift::Bool __swiftcall ComponentID.isChild(of:)(JetEngine::ShelfID of)
{
  v2 = *(of.parent.value._countAndFlagsBits + 16);
  v3 = *(of.parent.value._countAndFlagsBits + 24);
  v4 = v1[2];
  v5 = v1[3];
  v6 = *v1 == *of.parent.value._countAndFlagsBits && v1[1] == *(of.parent.value._countAndFlagsBits + 8);
  if (v6 || (v7 = sub_1AB461DA4(), result = 0, (v7 & 1) != 0))
  {
    if (v4 == v2 && v5 == v3)
    {
      return 1;
    }

    else
    {

      return sub_1AB461DA4();
    }
  }

  return result;
}

Swift::Bool __swiftcall ComponentID.isChild(of:)(JetEngine::PageID of)
{
  if (*v1 == *of.value._countAndFlagsBits && v1[1] == *(of.value._countAndFlagsBits + 8))
  {
    return 1;
  }

  else
  {
    return sub_1AB461DA4();
  }
}

uint64_t ComponentID.hash(into:)()
{
  sub_1AB460684();
  sub_1AB460684();

  return sub_1AB460684();
}

uint64_t ComponentID.hashValue.getter()
{
  sub_1AB4620A4();
  sub_1AB460684();
  sub_1AB460684();
  sub_1AB460684();
  return sub_1AB462104();
}

uint64_t sub_1AB1F70F4()
{
  sub_1AB4620A4();
  sub_1AB460684();
  sub_1AB460684();
  sub_1AB460684();
  return sub_1AB462104();
}

uint64_t sub_1AB1F7178()
{
  sub_1AB460684();
  sub_1AB460684();

  return sub_1AB460684();
}

uint64_t sub_1AB1F71E4()
{
  sub_1AB4620A4();
  sub_1AB460684();
  sub_1AB460684();
  sub_1AB460684();
  return sub_1AB462104();
}

uint64_t sub_1AB1F7294()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t _s9JetEngine11ComponentIDV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1AB461DA4() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1AB461DA4() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1AB461DA4();
}

unint64_t sub_1AB1F73C4()
{
  result = qword_1EB438700;
  if (!qword_1EB438700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438700);
  }

  return result;
}

unint64_t sub_1AB1F7428()
{
  result = qword_1EB438708;
  if (!qword_1EB438708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB438710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438708);
  }

  return result;
}

void sub_1AB1F74A4(void *a1@<X0>, void *a2@<X8>)
{
  sub_1AB1F7C18(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_1AB1F74D0(id a1, void *a2)
{
  v24[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1AB4605C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a2 isString] || (v9 = objc_msgSend(a2, sel_toString)) == 0)
  {
    sub_1AB0C3EF0();
    swift_allocError();
    a1 = v15;
    JSError.init(badValue:expected:)(a2, 0x676E69727473, 0xE600000000000000, v15);
    goto LABEL_6;
  }

  v10 = v9;
  sub_1AB460544();

  sub_1AB460594();
  v11 = sub_1AB460554();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  if (v13 >> 60 == 15)
  {

    a1 = 0x80000001AB503380;
    sub_1AB0C3EF0();
    swift_allocError();
    LOBYTE(v24[0]) = 1;
    LOBYTE(v23) = 1;
    *v14 = 0xD00000000000002BLL;
    *(v14 + 8) = 0x80000001AB503380;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    *(v14 + 25) = v24[0];
    *(v14 + 28) = *(v24 + 3);
    *(v14 + 32) = 0;
    *(v14 + 40) = 1;
    *(v14 + 41) = v23;
    *(v14 + 44) = *(&v23 + 3);
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 80) = 0u;
    *(v14 + 96) = 0;
LABEL_6:
    swift_willThrow();
    return a1;
  }

  v17 = objc_opt_self();
  v18 = sub_1AB45F834();
  v23 = 0;
  v19 = [v17 propertyListWithData:v18 options:0 format:0 error:&v23];

  v20 = v23;
  if (!v19)
  {
    v22 = v20;

    sub_1AB45F594();

    swift_willThrow();
    sub_1AB03BD58(v11, v13);
    return a1;
  }

  sub_1AB461494();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1Tm(v24, v24[3]);
  v21 = sub_1AB461D84();
  a1 = [objc_opt_self() valueWithObject:v21 inContext:a1];
  result = swift_unknownObjectRelease();
  if (a1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    sub_1AB03BD58(v11, v13);

    return a1;
  }

  __break(1u);
  return result;
}

void sub_1AB1F78B4(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = sub_1AB4605C4();
  if ([a2 isUndefined] & 1) != 0 || (objc_msgSend(a2, sel_isNull))
  {
    v8 = 100;
  }

  else
  {
    sub_1AB1F7C18(a2);
    if (v3)
    {
      return;
    }

    v8 = v21;
  }

  if ([a3 toObject])
  {
    sub_1AB461494();
    swift_unknownObjectRelease();
    sub_1AB014B78(v25, &v26);
    v9 = objc_opt_self();
    __swift_project_boxed_opaque_existential_1Tm(&v26, v27);
    v10 = sub_1AB461D84();
    *&v25[0] = 0;
    v11 = [v9 dataWithPropertyList:v10 format:v8 options:0 error:v25];
    swift_unknownObjectRelease();
    v12 = *&v25[0];
    if (v11)
    {
      v13 = sub_1AB45F854();
      v15 = v14;

      sub_1AB460594();
      v16 = sub_1AB460564();
      if (v17)
      {
        *&v25[0] = v16;
        *(&v25[0] + 1) = v17;
        v18 = a1;

        v19 = sub_1AB461D84();
        sub_1AB0589A8(v25);
      }

      else
      {
        v23 = a1;
        v19 = 0;
      }

      v24 = [objc_opt_self() valueWithObject:v19 inContext:a1];
      swift_unknownObjectRelease();

      if (v24)
      {
        sub_1AB017254(v13, v15);

        __swift_destroy_boxed_opaque_existential_1Tm(&v26);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v22 = v12;
      sub_1AB45F594();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1Tm(&v26);
    }
  }

  else
  {
    sub_1AB0C3EF0();
    swift_allocError();
    JSError.init(badValue:expected:)(a3, 0x7463656A624FLL, 0xE600000000000000, v20);
    swift_willThrow();
  }
}

void sub_1AB1F7C18(void *a1)
{
  if (![a1 isString])
  {
    goto LABEL_20;
  }

  v2 = [a1 toString];
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = v2;
  v4 = sub_1AB460544();
  v6 = v5;

  v7 = v4 == 0x6574732D6E65706FLL && v6 == 0xE900000000000070;
  if (v7 || (sub_1AB461DA4() & 1) != 0 || (v4 == 7105912 ? (v8 = v6 == 0xE300000000000000) : (v8 = 0), v8 || (sub_1AB461DA4() & 1) != 0))
  {

    return;
  }

  if (v4 == 0x7972616E6962 && v6 == 0xE600000000000000)
  {

    return;
  }

  v9 = sub_1AB461DA4();

  if (v9)
  {
  }

  else
  {
LABEL_20:
    sub_1AB0C3EF0();
    swift_allocError();
    v11 = v10;
    v12 = a1;
    JSError.init(badValue:expected:)(v12, 0xD00000000000001ELL, 0x80000001AB5033B0, v11);
    swift_willThrow();
  }
}

uint64_t sub_1AB1F7DF4(void *a1)
{
  v2 = [objc_opt_self() currentContext];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1AB1F74D0(v2, a1);

    return v4;
  }

  else
  {
    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB1F7F58(void *a1, void *a2)
{
  v4 = [objc_opt_self() currentContext];
  if (v4)
  {
    v5 = v4;
    sub_1AB1F78B4(v4, a2, a1);
    v7 = v6;

    return v7;
  }

  else
  {
    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

id sub_1AB1F80C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = type metadata accessor for PageRenderEventActivityChange();
  MEMORY[0x1EEE9AC00](v37);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AB0715B8(a2, a3, v40);
  if (v40[1])
  {
    sub_1AB014AC0(v40, &qword_1EB438720);
    sub_1AB0715B8(a2, a3, &v41);
    v38 = v41;
    v39[0] = v42[0];
    *(v39 + 9) = *(v42 + 9);
    if (*(&v41 + 1) && (sub_1AB1BA57C(a4), *(&v38 + 1)))
    {
      v35 = a4;
      v36 = v4;
      v34 = v38;
      v46 = v38;
      v47 = v39[0];
      v48 = *&v39[1];
      v49 = BYTE8(v39[1]) & 1;
      sub_1AB071CFC(&v46, a2, a3, &v43);
      sub_1AB014AC0(&v43, &qword_1EB438720);
      v5 = v36;

      a4 = v35;
    }

    else
    {
      sub_1AB1F9240(a2, a3, &v46);
      result = sub_1AB014AC0(&v46, &qword_1EB438720);
    }

    if (qword_1EB4359C0 != -1)
    {
      result = swift_once();
    }

    if (byte_1EB435998 == 1)
    {
      if (qword_1EB435D80 != -1)
      {
        swift_once();
      }

      v12 = qword_1EB46C300;
      *v10 = a4;
      v10[1] = a2;
      v10[2] = a3;
      swift_storeEnumTagMultiPayload();
      v13 = *(v12 + 16);

      [v13 lock];
      sub_1AB42C93C(v12, v10);
      if (v5)
      {

        result = [v13 unlock];
        __break(1u);
      }

      else
      {
        [v13 unlock];
        return sub_1AB1F9720(v10);
      }
    }
  }

  else
  {
    v14 = a4;
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    v15 = a3;
    sub_1AB4622E4();
    v16 = *(&v47 + 1);
    v37 = v48;
    v36 = __swift_project_boxed_opaque_existential_1Tm(&v46, *(&v47 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1AB4D4720;
    v50 = sub_1AB0168A8(0, 52, 0, MEMORY[0x1E69E7CC0]);
    v18._object = 0x80000001AB501D10;
    v18._countAndFlagsBits = 0xD000000000000019;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    *(&v42[0] + 1) = MEMORY[0x1E69E6530];
    *&v41 = v14;
    sub_1AB014A58(&v41, &v38, &unk_1EB437E60);
    v43 = 0u;
    v44 = 0u;
    sub_1AB0169C4(&v38, &v43);
    v45 = 0;
    v19 = v50;
    v20 = a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v19);
    }

    *(v19 + 2) = v22 + 1;
    v23 = &v19[40 * v22];
    v24 = v43;
    v25 = v44;
    v23[64] = v45;
    *(v23 + 2) = v24;
    *(v23 + 3) = v25;
    v50 = v19;
    sub_1AB014AC0(&v41, &unk_1EB437E60);
    v26._countAndFlagsBits = 0x697669746361202CLL;
    v26._object = 0xEF20726F66207974;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    *(&v42[0] + 1) = &type metadata for OperationID;
    *&v41 = v20;
    *(&v41 + 1) = v15;
    sub_1AB014A58(&v41, &v38, &unk_1EB437E60);
    v43 = 0u;
    v44 = 0u;

    sub_1AB0169C4(&v38, &v43);
    v45 = 0;
    v27 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
      v50 = v27;
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[40 * v29];
    v31 = v43;
    v32 = v44;
    v30[64] = v45;
    *(v30 + 2) = v31;
    *(v30 + 3) = v32;
    v50 = v27;
    sub_1AB014AC0(&v41, &unk_1EB437E60);
    v33._countAndFlagsBits = 0x756F6620746F6E20;
    v33._object = 0xEA0000000000646ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    *(v17 + 32) = v50;
    Logger.error(_:)(v17, v16, v37);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v46);
  }

  return result;
}

id sub_1AB1F86A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = type metadata accessor for PageRenderEventActivityChange();
  MEMORY[0x1EEE9AC00](v37);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AB0715B8(a2, a3, v40);
  if (v40[1])
  {
    sub_1AB014AC0(v40, &qword_1EB438720);
    sub_1AB0715B8(a2, a3, &v41);
    v38 = v41;
    v39[0] = v42[0];
    *(v39 + 9) = *(v42 + 9);
    if (*(&v41 + 1) && (sub_1AB1BAC4C(a4), *(&v38 + 1)))
    {
      v35 = a4;
      v36 = v4;
      v34 = v38;
      v46 = v38;
      v47 = v39[0];
      v48 = *&v39[1];
      v49 = BYTE8(v39[1]) & 1;
      sub_1AB071CFC(&v46, a2, a3, &v43);
      sub_1AB014AC0(&v43, &qword_1EB438720);
      v5 = v36;

      a4 = v35;
    }

    else
    {
      sub_1AB1F9240(a2, a3, &v46);
      result = sub_1AB014AC0(&v46, &qword_1EB438720);
    }

    if (qword_1EB4359C0 != -1)
    {
      result = swift_once();
    }

    if (byte_1EB435998 == 1)
    {
      if (qword_1EB435D80 != -1)
      {
        swift_once();
      }

      v12 = qword_1EB46C300;
      *v10 = a4;
      v10[1] = a2;
      v10[2] = a3;
      swift_storeEnumTagMultiPayload();
      v13 = *(v12 + 16);

      [v13 lock];
      sub_1AB42C93C(v12, v10);
      if (v5)
      {

        result = [v13 unlock];
        __break(1u);
      }

      else
      {
        [v13 unlock];
        return sub_1AB1F9720(v10);
      }
    }
  }

  else
  {
    v14 = a4;
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    v15 = a3;
    sub_1AB4622E4();
    v16 = *(&v47 + 1);
    v37 = v48;
    v36 = __swift_project_boxed_opaque_existential_1Tm(&v46, *(&v47 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1AB4D4720;
    v50 = sub_1AB0168A8(0, 52, 0, MEMORY[0x1E69E7CC0]);
    v18._object = 0x80000001AB501CA0;
    v18._countAndFlagsBits = 0xD000000000000019;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    *(&v42[0] + 1) = MEMORY[0x1E69E6530];
    *&v41 = v14;
    sub_1AB014A58(&v41, &v38, &unk_1EB437E60);
    v43 = 0u;
    v44 = 0u;
    sub_1AB0169C4(&v38, &v43);
    v45 = 0;
    v19 = v50;
    v20 = a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v19);
    }

    *(v19 + 2) = v22 + 1;
    v23 = &v19[40 * v22];
    v24 = v43;
    v25 = v44;
    v23[64] = v45;
    *(v23 + 2) = v24;
    *(v23 + 3) = v25;
    v50 = v19;
    sub_1AB014AC0(&v41, &unk_1EB437E60);
    v26._countAndFlagsBits = 0x697669746361202CLL;
    v26._object = 0xEF20726F66207974;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    *(&v42[0] + 1) = &type metadata for OperationID;
    *&v41 = v20;
    *(&v41 + 1) = v15;
    sub_1AB014A58(&v41, &v38, &unk_1EB437E60);
    v43 = 0u;
    v44 = 0u;

    sub_1AB0169C4(&v38, &v43);
    v45 = 0;
    v27 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
      v50 = v27;
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[40 * v29];
    v31 = v43;
    v32 = v44;
    v30[64] = v45;
    *(v30 + 2) = v31;
    *(v30 + 3) = v32;
    v50 = v27;
    sub_1AB014AC0(&v41, &unk_1EB437E60);
    v33._countAndFlagsBits = 0x756F6620746F6E20;
    v33._object = 0xEA0000000000646ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    *(v17 + 32) = v50;
    Logger.error(_:)(v17, v16, v37);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v46);
  }

  return result;
}

id sub_1AB1F8C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for PageRenderEventActivityChange();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AB0715B8(a2, a3, v31);
  if (v32)
  {
    sub_1AB014AC0(v31, &qword_1EB438720);
    sub_1AB0715B8(a2, a3, &v33);
    v36 = v33;
    *v37 = v34[0];
    *&v37[9] = *(v34 + 9);
    if (*(&v33 + 1))
    {
      v43 = v4;
      sub_1AB1BB3A8();
      if (*(&v36 + 1))
      {
        v29 = a4;
        v28[1] = v9;
        v38 = v36;
        v39 = *v37;
        v40 = *&v37[8];
        v41 = *&v37[16];
        v42 = v37[24] & 1;
        sub_1AB071CFC(&v38, a2, a3, v35);
        sub_1AB014AC0(v35, &qword_1EB438720);

        a4 = v29;
      }

      else
      {
        sub_1AB1F9240(a2, a3, &v38);
        sub_1AB014AC0(&v38, &qword_1EB438720);
      }

      v5 = v43;
    }

    else
    {
      sub_1AB1F9240(a2, a3, &v38);
      sub_1AB014AC0(&v38, &qword_1EB438720);
    }

    sub_1AB1F9240(a2, a3, &v36);
    result = sub_1AB014AC0(&v36, &qword_1EB438720);
    if (qword_1EB4359C0 != -1)
    {
      result = swift_once();
    }

    if (byte_1EB435998 == 1)
    {
      if (qword_1EB435D80 != -1)
      {
        swift_once();
      }

      v24 = qword_1EB46C300;
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438728) + 48);
      *v11 = a2;
      v11[1] = a3;
      v26 = sub_1AB460134();
      (*(*(v26 - 8) + 16))(v11 + v25, a4, v26);
      swift_storeEnumTagMultiPayload();
      v27 = *(v24 + 16);

      [v27 lock];
      sub_1AB42C93C(v24, v11);
      if (v5)
      {

        result = [v27 unlock];
        __break(1u);
      }

      else
      {
        [v27 unlock];
        return sub_1AB1F9720(v11);
      }
    }
  }

  else
  {
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v12 = v40;
    v13 = v41;
    __swift_project_boxed_opaque_existential_1Tm(&v38, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1AB4D4720;
    v30 = sub_1AB0168A8(0, 62, 0, MEMORY[0x1E69E7CC0]);
    v15._object = 0x80000001AB5034F0;
    v15._countAndFlagsBits = 0xD000000000000033;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    v35[3] = &type metadata for OperationID;
    v35[0] = a2;
    v35[1] = a3;
    sub_1AB014A58(v35, &v33, &unk_1EB437E60);
    v36 = 0u;
    *v37 = 0u;

    sub_1AB0169C4(&v33, &v36);
    v37[16] = 0;
    v16 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1AB0168A8(0, *(v16 + 2) + 1, 1, v16);
      v30 = v16;
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1AB0168A8((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[40 * v18];
    v20 = v36;
    v21 = *v37;
    v19[64] = v37[16];
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    v30 = v16;
    sub_1AB014AC0(v35, &unk_1EB437E60);
    v22._countAndFlagsBits = 0x756F6620746F6E20;
    v22._object = 0xEA0000000000646ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    *(v14 + 32) = v30;
    Logger.error(_:)(v14, v12, v13);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v38);
  }

  return result;
}

uint64_t sub_1AB1F9240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_1AB0370A8(a1, a2);
  if ((v8 & 1) == 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_7;
  }

  v9 = result;
  v21 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + 8);
  v23 = *(v4 + 8);
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1AB1D880C();
    v11 = v23;
  }

  v12 = *(v11 + 56) + 48 * v9;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = *(v12 + 24);
  v17 = *(v12 + 32);
  v18 = *(v12 + 40);
  sub_1AB18FFFC(v9, v11);
  *(v4 + 8) = v11;
  v19 = sub_1AB1A7AB4(v21, a2, *(v4 + 16));
  if ((v20 & 1) == 0)
  {
    sub_1AB3C1B5C(v19);

LABEL_7:
    *a3 = v13;
    *(a3 + 8) = v14;
    *(a3 + 16) = v15;
    *(a3 + 24) = v16;
    *(a3 + 32) = v17;
    *(a3 + 40) = v18;
    return result;
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB5034B0);
  sub_1AB461824();
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB5034D0);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB1F9420@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  sub_1AB0715B8(a1, a2, &v27);
  if (v28)
  {
    v30[0] = v27;
    v30[1] = v28;
    *v31 = v29[0];
    *&v31[9] = *(v29 + 9);
    v8 = sub_1AB1BB8CC(a3);
    v21[0] = v30[0];
    sub_1AB014AC0(v21, &qword_1EB437668);

    v25[0] = *v31;
    sub_1AB014AC0(v25, &qword_1EB438718);
    v22 = *&v31[8];
    result = sub_1AB072794(&v22);
  }

  else
  {
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v10 = *&v31[8];
    v11 = *&v31[16];
    __swift_project_boxed_opaque_existential_1Tm(v30, *&v31[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D4720;
    v26 = sub_1AB0168A8(0, 61, 0, MEMORY[0x1E69E7CC0]);
    v13._object = 0x80000001AB503450;
    v13._countAndFlagsBits = 0xD000000000000032;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v25[3] = &type metadata for OperationID;
    v25[0] = a1;
    v25[1] = a2;
    sub_1AB014A58(v25, v21, &unk_1EB437E60);
    v22 = 0u;
    v23 = 0u;

    sub_1AB0169C4(v21, &v22);
    v24 = 0;
    v14 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1AB0168A8(0, *(v14 + 2) + 1, 1, v14);
      v26 = v14;
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v22;
    v19 = v23;
    v17[64] = v24;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v26 = v14;
    sub_1AB014AC0(v25, &unk_1EB437E60);
    v20._countAndFlagsBits = 0x756F6620746F6E20;
    v20._object = 0xEA0000000000646ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    *(v12 + 32) = v26;
    Logger.error(_:)(v12, v10, v11);

    result = __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v8 = 0;
  }

  *a4 = v8;
  return result;
}

uint64_t sub_1AB1F9720(uint64_t a1)
{
  v2 = type metadata accessor for PageRenderEventActivityChange();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB1F977C(uint64_t a1, uint64_t a2)
{
  v58 = sub_1AB460134();
  v60 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v55 - v9;
  v10 = type metadata accessor for PageRenderEventActivityChange();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v55 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v55 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v55 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438730);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v55 - v23;
  v26 = (&v55 + *(v25 + 56) - v23);
  sub_1AB1F9CAC(a1, &v55 - v23);
  sub_1AB1F9CAC(a2, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1AB1F9CAC(v24, v15);
      v32 = v15[1];
      v33 = v15[2];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_30;
      }

      if (*v15 == *v26)
      {
        if (v32 != v26[1] || v33 != v26[2])
        {
          goto LABEL_20;
        }

        goto LABEL_31;
      }

LABEL_28:
      v36 = 0;
      goto LABEL_32;
    }

    sub_1AB1F9CAC(v24, v12);
    v37 = *v12;
    v38 = *(v12 + 1);
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438728) + 48);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v60 + 8))(&v12[v39], v58);
      goto LABEL_30;
    }

    v40 = v26[1];
    v56 = *v26;
    v41 = *(v60 + 32);
    v42 = &v12[v39];
    v43 = v58;
    v41(v59, v42, v58);
    v44 = v26 + v39;
    v45 = v57;
    v41(v57, v44, v43);
    if (v37 == v56 && v38 == v40)
    {
    }

    else
    {
      v47 = sub_1AB461DA4();

      v36 = 0;
      if ((v47 & 1) == 0)
      {
LABEL_39:
        v53 = *(v60 + 8);
        v53(v45, v43);
        v53(v59, v43);
        goto LABEL_40;
      }
    }

    v48 = *(v60 + 16);
    v48(v5, v59, v43);
    v49 = sub_1AB460604();
    v51 = v50;
    v48(v5, v45, v43);
    if (v49 == sub_1AB460604() && v51 == v52)
    {
      v36 = 1;
    }

    else
    {
      v36 = sub_1AB461DA4();
    }

    goto LABEL_39;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1AB1F9CAC(v24, v18);
    v28 = v18[1];
    v29 = v18[2];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_30;
    }

    v31 = v26[2];
    if (*v18 == *v26)
    {
      v30 = v26[1];
LABEL_16:
      if (v28 != v30 || v29 != v31)
      {
LABEL_20:
        v36 = sub_1AB461DA4();
LABEL_32:

LABEL_40:
        sub_1AB1F9720(v24);
        return v36 & 1;
      }

LABEL_31:
      v36 = 1;
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  sub_1AB1F9CAC(v24, v21);
  v28 = *v21;
  v29 = v21[1];
  if (!swift_getEnumCaseMultiPayload())
  {
    v30 = *v26;
    v31 = v26[1];
    goto LABEL_16;
  }

LABEL_30:

  sub_1AB014AC0(v24, &qword_1EB438730);
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_1AB1F9CAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderEventActivityChange();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1AB1F9D10@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1AB0BB4FC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AB1D72A4();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_1AB461864();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_1AB014B78((*(v9 + 56) + 32 * v7), a2);
    sub_1AB18F308(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1AB1F9DEC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1AB02B1D8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1AB1DA1C0();
    v7 = v10;
  }

  sub_1AB02B2E4(*(v7 + 48) + 40 * v5);
  v8 = *(*(v7 + 56) + 16 * v5);
  sub_1AB190CCC(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t Dictionary<>.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v7 = sub_1AB461354();
  *&v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  v10 = sub_1AB461864();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v53 = *a1;
  v54 = v15;
  v48 = a3;
  v16 = type metadata accessor for JSONContext.Property();
  JSONContext.Property.codingUserInfoKey.getter(v13);
  if (*(a2 + 16) && (v17 = sub_1AB0BB4FC(v13), (v18 & 1) != 0))
  {
    sub_1AB0165C4(*(a2 + 56) + 32 * v17, &v50);
    (*(v11 + 8))(v13, v10);
    sub_1AB014B78(&v50, v57);
    sub_1AB0165C4(v57, &v50);
    v19 = v48;
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      v20 = *(v19 - 8);
      v21 = *(v20 + 56);
      v21(v9, 0, 1, v19);
      v22 = v47;
      (*(v20 + 32))(v47, v9, v19);
      return (v21)(v22, 0, 1, v19);
    }

    else
    {
      v24 = *(*(v19 - 8) + 56);
      v24(v9, 1, 1, v19);
      (*(v46 + 8))(v9, v7);
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v25 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1AB4D47F0;
      v56 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
      v27._object = 0x80000001AB5023A0;
      v27._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v55 = v16;
      v53 = v14;
      v54 = v15;
      sub_1AB01522C(&v53, v49);
      v50 = 0u;
      v51 = 0u;

      sub_1AB0169C4(v49, &v50);
      v52 = 0;
      v28 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
        v56 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v50;
      v33 = v51;
      v31[64] = v52;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v56 = v28;
      sub_1AB014AC0(&v53, &unk_1EB437E60);
      v34._countAndFlagsBits = 96;
      v34._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *(v26 + 32) = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v35 = swift_allocObject();
      v46 = xmmword_1AB4D4720;
      *(v35 + 16) = xmmword_1AB4D4720;
      v36 = MEMORY[0x1E69E6158];
      *(&v51 + 1) = MEMORY[0x1E69E6158];
      *&v50 = 0xD000000000000027;
      *(&v50 + 1) = 0x80000001AB501060;
      *(v35 + 48) = 0u;
      *(v35 + 32) = 0u;
      sub_1AB0169C4(&v50, v35 + 32);
      *(v35 + 64) = 0;
      *(v26 + 40) = v35;
      v37 = sub_1AB461094();
      if (os_log_type_enabled(v25, v37))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v38 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v38[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v38 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v40 = swift_allocObject();
        *(v40 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v50 = v26;
        *(&v50 + 1) = sub_1AB01A8D8;
        *&v51 = v40;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v41 = sub_1AB460484();
        v43 = v42;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v44 = swift_allocObject();
        *(v44 + 16) = v46;
        *(v44 + 56) = v36;
        *(v44 + 64) = sub_1AB016854();
        *(v44 + 32) = v41;
        *(v44 + 40) = v43;
        sub_1AB45FF14();
      }

      v45 = v48;
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      return (v24)(v47, 1, 1, v45);
    }
  }

  else
  {
    (*(v11 + 8))(v13, v10);
    return (*(*(v48 - 8) + 56))(v47, 1, 1);
  }
}

uint64_t sub_1AB1FA5A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  v7 = a2[1];
  v9[0] = *a2;
  v9[1] = v7;

  Dictionary<>.subscript.getter(v9, v6, v5, a4);
}

uint64_t sub_1AB1FA614(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  v7 = sub_1AB461354();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  v12 = *a3;
  v11 = a3[1];
  (*(v13 + 16))(v15 - v9, a1, v8);
  v15[0] = v12;
  v15[1] = v11;

  return Dictionary<>.subscript.setter(v10, v15, v6);
}

uint64_t Dictionary<>.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *&v63 = sub_1AB461864();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB461354();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v58 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v58 - v17;
  v20 = *a2;
  v19 = a2[1];
  (*(v9 + 16))(v11, a1, v8, v16);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    v21 = *(v9 + 8);
    v21(v11, v8);
    *&v71 = v20;
    *(&v71 + 1) = v19;
    type metadata accessor for JSONContext.Property();
    JSONContext.Property.codingUserInfoKey.getter(v7);

    v22 = sub_1AB1F9D10(v7, &v65);
    (v21)(a1, v8, v22);
    (*(v62 + 8))(v7, v63);
    return sub_1AB014AC0(&v65, &unk_1EB437E60);
  }

  v58 = v9;
  v59 = v8;
  v60 = a1;
  (*(v12 + 32))(v18, v11, a3);
  MetatypeMetadata = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v69);
  (*(v12 + 16))(boxed_opaque_existential_0, v18, a3);
  v64[0] = v20;
  v64[1] = v19;
  v24 = type metadata accessor for JSONContext.Property();
  JSONContext.Property.codingUserInfoKey.getter(v7);
  sub_1AB24AD88(&v69, v7, &v65);
  (*(v62 + 8))(v7, v63);
  v25 = v12;
  if (!*(&v66 + 1))
  {

    (*(v58 + 8))(v60, v59);
    (*(v12 + 8))(v18, a3);
    return sub_1AB014AC0(&v65, &unk_1EB437E60);
  }

  sub_1AB014B78(&v65, &v71);
  sub_1AB0165C4(&v71, &v65);
  v26 = v61;
  if (swift_dynamicCast())
  {

    (*(v58 + 8))(v60, v59);
    __swift_destroy_boxed_opaque_existential_1Tm(&v71);
    v27 = *(v25 + 8);
    v27(v18, a3);
    return (v27)(v26, a3);
  }

  else
  {
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v29 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1AB4D4190;
    v68 = sub_1AB0168A8(0, 33, 0, MEMORY[0x1E69E7CC0]);
    v31._countAndFlagsBits = 0xD00000000000001FLL;
    v31._object = 0x80000001AB503590;
    LogMessage.StringInterpolation.appendLiteral(_:)(v31);
    MetatypeMetadata = v24;
    *&v69 = v20;
    *(&v69 + 1) = v19;
    sub_1AB01522C(&v69, v64);
    v65 = 0u;
    v66 = 0u;
    sub_1AB0169C4(v64, &v65);
    v67 = 0;
    v32 = v68;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1AB0168A8(0, *(v32 + 2) + 1, 1, v32);
    }

    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    if (v34 >= v33 >> 1)
    {
      v32 = sub_1AB0168A8((v33 > 1), v34 + 1, 1, v32);
    }

    *(v32 + 2) = v34 + 1;
    v35 = &v32[40 * v34];
    v36 = v65;
    v37 = v66;
    v35[64] = v67;
    *(v35 + 2) = v36;
    *(v35 + 3) = v37;
    v68 = v32;
    sub_1AB014AC0(&v69, &unk_1EB437E60);
    v38._countAndFlagsBits = 96;
    v38._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v38);
    *(v30 + 32) = v68;
    v68 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v39._countAndFlagsBits = 0xD000000000000019;
    v39._object = 0x80000001AB5035B0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v39);
    __swift_project_boxed_opaque_existential_1Tm(&v71, v72);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v69 = DynamicType;
    sub_1AB01522C(&v69, v64);
    v65 = 0u;
    v66 = 0u;
    sub_1AB0169C4(v64, &v65);
    v67 = 0;
    v41 = v68;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1AB0168A8(0, *(v41 + 2) + 1, 1, v41);
    }

    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    if (v43 >= v42 >> 1)
    {
      v41 = sub_1AB0168A8((v42 > 1), v43 + 1, 1, v41);
    }

    *(v41 + 2) = v43 + 1;
    v44 = &v41[40 * v43];
    v45 = v65;
    v46 = v66;
    v44[64] = v67;
    *(v44 + 2) = v45;
    *(v44 + 3) = v46;
    v68 = v41;
    sub_1AB014AC0(&v69, &unk_1EB437E60);
    v47._countAndFlagsBits = 11838;
    v47._object = 0xE200000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v47);
    *(v30 + 40) = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v48 = swift_allocObject();
    v63 = xmmword_1AB4D4720;
    *(v48 + 16) = xmmword_1AB4D4720;
    v49 = MEMORY[0x1E69E6158];
    *(&v66 + 1) = MEMORY[0x1E69E6158];
    *&v65 = 0xD000000000000018;
    *(&v65 + 1) = 0x80000001AB5035D0;
    *(v48 + 48) = 0u;
    *(v48 + 32) = 0u;
    sub_1AB0169C4(&v65, v48 + 32);
    *(v48 + 64) = 0;
    *(v30 + 48) = v48;
    v50 = sub_1AB461094();
    if (os_log_type_enabled(v29, v50))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v51 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v51[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v51 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v53 = swift_allocObject();
      *(v53 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v65 = v30;
      *(&v65 + 1) = sub_1AB0223E4;
      *&v66 = v53;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v54 = sub_1AB460484();
      v56 = v55;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v57 = swift_allocObject();
      *(v57 + 16) = v63;
      *(v57 + 56) = v49;
      *(v57 + 64) = sub_1AB016854();
      *(v57 + 32) = v54;
      *(v57 + 40) = v56;
      sub_1AB45FF14();
    }

    (*(v58 + 8))(v60, v59);
    __swift_destroy_boxed_opaque_existential_1Tm(&v71);
    return (*(v25 + 8))(v18, a3);
  }
}

void (*Dictionary<>.subscript.modify(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = a3;
  *(v8 + 24) = v3;
  v10 = sub_1AB461354();
  v9[4] = v10;
  v11 = *(v10 - 8);
  v9[5] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[6] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[6] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v16 = *a2;
  v15 = a2[1];
  v9[7] = v14;
  v9[8] = v16;
  v9[9] = v15;
  *v9 = v16;
  v9[1] = v15;
  v17 = *v3;

  Dictionary<>.subscript.getter(a2, v17, a3, v14);
  return sub_1AB1FB1DC;
}

void sub_1AB1FB1DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[8];
    v3 = v2[9];
    v6 = v2[6];
    v5 = v2[7];
    v7 = v2[4];
    v8 = v2[5];
    v9 = v2[2];
    (*(v8 + 16))(v6, v5, v7);
    v10[0] = v4;
    v10[1] = v3;
    Dictionary<>.subscript.setter(v6, v10, v9);
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    v6 = v2[6];
    v5 = v2[7];
    Dictionary<>.subscript.setter(v5, v2, v2[2]);
  }

  free(v5);
  free(v6);

  free(v2);
}

uint64_t Dictionary<>.init(deserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = v5;
  v6 = JSONDictionary.compactMap<A, B>(_:)(sub_1AB1FB504, v8, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
  sub_1AB07CDB0(a1);

  return v6;
}

uint64_t Dictionary<>.init(tryDeserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = v5;
  v6 = JSONDictionary.compactMap<A, B>(_:)(sub_1AB1FB7E4, v8, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);

  sub_1AB07CDB0(a1);
  return v6;
}

uint64_t sub_1AB1FB3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a7 = a1;
  a7[1] = a2;
  sub_1AB0B9254(a3, v18);
  v19 = a4;
  v15 = *(a6 + 8);

  v15(v18, &v19, a5, a6);
  if (v17)
  {
  }

  else
  {
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a7, 0, 1, TupleTypeMetadata2);
  }
}

uint64_t sub_1AB1FB524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v30 = a7;
  v28 = a1;
  v29 = a2;
  v11 = sub_1AB461354();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB0B9254(a3, v31);
  v32 = a4;
  v19 = *(a6 + 16);

  v19(v31, &v32, a5, a6);
  if ((*(v16 + 48))(v15, 1, a5) == 1)
  {
    (*(v12 + 8))(v15, v11);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v30, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v22 = *(v16 + 32);
    v22(v18, v15, a5);
    v23 = swift_getTupleTypeMetadata2();
    v24 = *(v23 + 48);
    v26 = v29;
    v25 = v30;
    *v30 = v28;
    *(v25 + 1) = v26;
    v22(&v25[v24], v18, a5);
    (*(*(v23 - 8) + 56))(v25, 0, 1, v23);
  }
}

uint64_t Dictionary<>.init(deserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a2;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = a7;
  v11[7] = v8;
  v9 = JSONDictionary.compactMap<A, B>(_:)(sub_1AB1FBB94, v11, a3, a4, a5);
  sub_1AB07CDB0(a1);

  return v9;
}

uint64_t sub_1AB1FB880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8)
{
  v30 = a6;
  v28 = a3;
  v29 = a4;
  v32 = a7;
  v11 = sub_1AB461354();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = a1;
  v33[0] = a1;
  v33[1] = a2;

  sub_1AB4608C4();
  if ((*(v15 + 48))(v14, 1, a5) == 1)
  {
    (*(v12 + 8))(v14, v11);
    sub_1AB163664();
    swift_allocError();
    *v19 = TupleTypeMetadata2;
    v19[1] = a2;
    v19[2] = a5 | 0x6000000000000000;
    v19[3] = 0;
    swift_willThrow();
  }

  else
  {
    (*(v15 + 32))(v18, v14, a5);
    v21 = v30;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v22 = v32;
    (*(v15 + 16))(v32, v18, a5);
    sub_1AB0B9254(v28, v33);
    v34 = v29;
    v23 = *(a8 + 8);

    v24 = v31;
    v23(v33, &v34, v21, a8);
    v25 = *(v15 + 8);
    v25(v18, a5);
    if (v24)
    {
      return (v25)(v22, a5);
    }

    else
    {
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v22, 0, 1);
    }
  }
}

uint64_t Dictionary<>.init(tryDeserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a2;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = a7;
  v11[7] = v8;
  v9 = JSONDictionary.compactMap<A, B>(_:)(sub_1AB1FC178, v11, a3, a4, a5);

  sub_1AB07CDB0(a1);
  return v9;
}

uint64_t sub_1AB1FBC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, char *, uint64_t)@<X7>, char *a8@<X8>, uint64_t a9)
{
  v46 = a7;
  v47 = a4;
  v43 = a3;
  v48 = a8;
  v13 = sub_1AB461354();
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v38 - v14;
  v45 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1AB461354();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v38 - v19;
  v21 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v52[0] = a1;
  v52[1] = a2;

  sub_1AB4608C4();
  if ((*(v21 + 48))(v20, 1, a5) == 1)
  {
    (*(v18 + 8))(v20, v17);
    sub_1AB3D85D8(0xD000000000000027, 0x80000001AB4FFF70, v47, v52);
    sub_1AB1FC1DC(v52, v49);
    v25 = v50;
    if (v50)
    {
      v26 = v51;
      __swift_project_boxed_opaque_existential_1Tm(v49, v50);
      sub_1AB163664();
      v27 = swift_allocError();
      *v28 = v42;
      v28[1] = a2;
      v28[2] = a5 | 0x6000000000000000;
      v28[3] = 0;
      v29 = *(v26 + 8);

      v29(a5, v27, v25, v26);
      sub_1AB1FC24C(v52);

      __swift_destroy_boxed_opaque_existential_1Tm(v49);
    }

    else
    {
      sub_1AB1FC24C(v52);
      sub_1AB1FC24C(v49);
    }
  }

  else
  {
    v46 = *(v21 + 32);
    v46(v24, v20, a5);
    sub_1AB0B9254(v43, v52);
    v49[0] = v47;
    v30 = *(a9 + 16);

    v31 = v44;
    v30(v52, v49, a6, a9);
    if ((*(v45 + 48))(v31, 1, a6) != 1)
    {
      v47 = *(v45 + 32);
      v32 = v39;
      v47(v39, v31, a6);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v34 = *(TupleTypeMetadata2 + 48);
      v35 = v48;
      v46(v48, v24, a5);
      v47(&v35[v34], v32, a6);
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v35, 0, 1, TupleTypeMetadata2);
    }

    (*(v21 + 8))(v24, a5);
    (*(v40 + 8))(v31, v41);
  }

  v37 = swift_getTupleTypeMetadata2();
  return (*(*(v37 - 8) + 56))(v48, 1, 1, v37);
}

uint64_t sub_1AB1FC1DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB1FC24C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id Bag.KeySet.init()@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E698CA40]) init];
  *a1 = result;
  return result;
}

id Bag.KeySet.addBagKey(_:valueType:)(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v6 = *v2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v6 mutableCopyWithZone_];
    sub_1AB461494();
    swift_unknownObjectRelease();
    sub_1AB1FC3B4();
    swift_dynamicCast();

    v6 = v8;
    *v2 = v8;
  }

  return [v6 addBagKey:a1 valueType:a2];
}

unint64_t sub_1AB1FC3B4()
{
  result = qword_1EB434E50;
  if (!qword_1EB434E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB434E50);
  }

  return result;
}

id Bag.KeySet.addingBagKey(_:valueType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, id *a3@<X8>)
{
  v7 = *v3;
  *a3 = *v3;
  v8 = v7;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    [v8 mutableCopyWithZone_];
    sub_1AB461494();
    swift_unknownObjectRelease();
    sub_1AB1FC3B4();
    swift_dynamicCast();
    v8 = v10;

    *a3 = v10;
  }

  return [v8 addBagKey:a1 valueType:a2];
}

id Bag.KeySet.formUnion(_:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v4 mutableCopyWithZone_];
    sub_1AB461494();
    swift_unknownObjectRelease();
    sub_1AB1FC3B4();
    swift_dynamicCast();

    v4 = v6;
    *v1 = v6;
  }

  return [v4 unionBagKeySet_];
}

id Bag.KeySet.union(_:)@<X0>(uint64_t *a1@<X0>, id *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  *a2 = *v2;
  v6 = v5;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    [v6 mutableCopyWithZone_];
    sub_1AB461494();
    swift_unknownObjectRelease();
    sub_1AB1FC3B4();
    swift_dynamicCast();
    v6 = v8;

    *a2 = v8;
  }

  return [v6 unionBagKeySet_];
}

void static Bag.register(_:forProfile:)(void **a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = sub_1AB460514();
  v5 = sub_1AB460514();
  [v2 registerBagKeySet:v3 forProfile:v4 profileVersion:v5];
}

BOOL static JetPackageSpec.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1AB460504() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for JetPackageSpec();
  return *(a1 + *(v4 + 36)) == *(a2 + *(v4 + 36));
}

uint64_t JetpackSignature.data.getter()
{
  v1 = *(v0 + 8);
  sub_1AB017200(v1, *(v0 + 16));
  return v1;
}

uint64_t JetPackageCompressionAlgorithm.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AB4619B4();

  *a1 = v2 != 0;
  return result;
}

uint64_t JetPackageEncryptionAlgorithm.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = a1 == 7562593 && a2 == 0xE300000000000000;
  if (v5 || (sub_1AB461DA4() & 1) != 0 || a1 == 0x6367383231736561 && a2 == 0xE90000000000006DLL)
  {

    v8 = 0;
  }

  else
  {
    v9 = sub_1AB461DA4();

    v8 = v9 ^ 1;
  }

  *a3 = v8 & 1;
  return result;
}

uint64_t JetPackageSerializationFormat.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AB4619B4();

  *a1 = v2 != 0;
  return result;
}

uint64_t JetPackageSignatureAlgorithm.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AB4619B4();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1AB1FCB9C()
{
  result = qword_1EB438740;
  if (!qword_1EB438740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438740);
  }

  return result;
}

unint64_t sub_1AB1FCBF4()
{
  result = qword_1EB438748;
  if (!qword_1EB438748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438748);
  }

  return result;
}

unint64_t sub_1AB1FCC4C()
{
  result = qword_1EB438750;
  if (!qword_1EB438750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438750);
  }

  return result;
}

unint64_t sub_1AB1FCCA4()
{
  result = qword_1EB438758[0];
  if (!qword_1EB438758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB438758);
  }

  return result;
}

uint64_t sub_1AB1FCD18()
{
  sub_1AB4620A4();
  sub_1AB460684();
  return sub_1AB462104();
}

uint64_t sub_1AB1FCDA8()
{
  sub_1AB4620A4();
  sub_1AB460684();
  return sub_1AB462104();
}

uint64_t sub_1AB1FCE00@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AB4619B4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AB1FCE74()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AB1FCEEC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1AB1FD030(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64) + 1;
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
      if (*(v5 + 64) != -1)
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

uint64_t sub_1AB1FD23C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AB1FD290(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1AB1FD330(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1AB1FD38C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t PipelineTask.join<A>(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_getAssociatedTypeWitness();
  type metadata accessor for JoinPipelineTask();
  PipelineTask.eraseToAnyPipelineTask()(a2, &v7);
  v6 = v3;
  v4 = JoinPipelineTask.__allocating_init(_:_:)(&v7, &v6);

  return v4;
}

unint64_t sub_1AB1FD508()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4387E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D4720;
    *(inited + 32) = 0xD000000000000010;
    v3 = inited + 32;
    *(inited + 40) = 0x80000001AB4FF460;
    *(inited + 48) = v1;
    v4 = sub_1AB02DD7C(inited);
    swift_setDeallocating();
    sub_1AB02DECC(v3);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1AB02DD7C(v6);
  }
}

uint64_t Dictionary<>._partiallyEncode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v72 = a3;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v53 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v67 = sub_1AB461354();
  v71 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v53 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EB8);
  v54 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v17 = &v53 - v16;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB179C3C();
  v64 = v17;
  sub_1AB462274();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v18 = sub_1AB462264();
  sub_1AB309E20(0xD000000000000027, 0x80000001AB4FFF70, v18, v76);
  v19 = v8;

  v20 = a2 + 64;
  v21 = 1 << *(a2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a2 + 64);
  v24 = (v21 + 63) >> 6;
  v68 = TupleTypeMetadata2 - 8;
  v55 = v6 + 16;
  v70 = (v6 + 32);
  v63 = (v71 + 32);
  v59 = v6;
  v61 = (v6 + 8);
  v60 = a2;

  v26 = 0;
  v58 = v19;
  v69 = TupleTypeMetadata2;
  v56 = v13;
  if (!v23)
  {
    goto LABEL_6;
  }

  do
  {
    v30 = v26;
LABEL_16:
    v34 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v35 = v34 | (v30 << 6);
    v36 = (*(v60 + 48) + 16 * v35);
    v38 = *v36;
    v37 = v36[1];
    v39 = v59;
    v40 = v57;
    v41 = v72;
    (*(v59 + 16))(v57, *(v60 + 56) + *(v59 + 72) * v35, v72);
    v42 = v69;
    v43 = *(v69 + 48);
    v44 = v56;
    *v56 = v38;
    *(v44 + 1) = v37;
    v45 = *(v39 + 32);
    v46 = v40;
    v29 = v42;
    v33 = v44;
    v45(&v44[v43], v46, v41);
    v32 = *(v29 - 8);
    (*(v32 + 56))(v33, 0, 1, v29);

    v71 = v30;
    v31 = v58;
LABEL_17:
    v47 = v65;
    (*v63)(v65, v33, v67);
    if ((*(v32 + 48))(v47, 1, v29) == 1)
    {

      sub_1AB1FC24C(v76);
      return (*(v54 + 8))(v64, v66);
    }

    v48 = v29;
    v13 = v33;
    v49 = *v47;
    v50 = v47[1];
    v51 = v47 + *(v48 + 48);
    v19 = v31;
    v52 = v72;
    (*v70)(v31, v51, v72);
    v73 = v49;
    v74 = v50;
    v75 = 1;
    sub_1AB461BF4();

    result = (*v61)(v31, v52);
    v26 = v71;
  }

  while (v23);
LABEL_6:
  v27 = v13;
  if (v24 <= v26 + 1)
  {
    v28 = v26 + 1;
  }

  else
  {
    v28 = v24;
  }

  v29 = v69;
  while (1)
  {
    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v30 >= v24)
    {
      v31 = v19;
      v71 = v28 - 1;
      v32 = *(v69 - 8);
      v33 = v27;
      (*(v32 + 56))(v27, 1, 1, v69);
      v23 = 0;
      goto LABEL_17;
    }

    v23 = *(v20 + 8 * v30);
    ++v26;
    if (v23)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t Optional<A>._partiallyEncode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v28[0] = a3;
  v29 = 0;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v14, v14[3]);
  sub_1AB462254();
  v15 = a1[3];
  v16 = a1;
  v17 = a2;
  __swift_project_boxed_opaque_existential_1Tm(v16, v15);
  v18 = sub_1AB462264();
  sub_1AB309E20(0xD000000000000027, 0x80000001AB4FFF70, v18, v33);

  (*(v10 + 16))(v13, v28[1], a2);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    v19 = v29;
  }

  else
  {
    (*(v6 + 32))(v8, v13, v5);
    __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
    v20 = v29;
    sub_1AB461E74();
    if (!v20)
    {
      (*(v6 + 8))(v8, v5);
LABEL_11:
      v26 = v33;
LABEL_13:
      sub_1AB1FC24C(v26);
      return __swift_destroy_boxed_opaque_existential_1Tm(v34);
    }

    v21 = v20;
    v19 = 0;
    sub_1AB1FC1DC(v33, v30);
    v22 = v31;
    if (v31)
    {
      v23 = v32;
      __swift_project_boxed_opaque_existential_1Tm(v30, v31);
      (*(v23 + 16))(v5, v21, v22, v23);

      (*(v6 + 8))(v8, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
    }

    else
    {
      (*(v6 + 8))(v8, v5);

      sub_1AB1FC24C(v30);
    }
  }

  __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
  sub_1AB461E84();
  if (!v19)
  {
    goto LABEL_11;
  }

  sub_1AB1FC1DC(v33, v30);
  v24 = v31;
  if (!v31)
  {
    sub_1AB1FC24C(v33);

    v26 = v30;
    goto LABEL_13;
  }

  v25 = v32;
  __swift_project_boxed_opaque_existential_1Tm(v30, v31);
  (*(v25 + 16))(v17, v19, v24, v25);

  sub_1AB1FC24C(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return __swift_destroy_boxed_opaque_existential_1Tm(v34);
}

uint64_t Bool._partiallyEncode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1AB461E44();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t Array<A>._partiallyEncode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = v8;
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v10, v10[3]);
  sub_1AB462244();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v11 = sub_1AB462264();
  sub_1AB309E20(0xD000000000000027, 0x80000001AB4FFF70, v11, v22);

  if (!sub_1AB4609F4())
  {
LABEL_11:
    sub_1AB1FC24C(v22);
    return __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  v12 = 0;
  v18 = (v7 + 8);
  v19 = (v7 + 16);
  while (1)
  {
    v13 = sub_1AB4609D4();
    sub_1AB460974();
    if (v13)
    {
      (*(v7 + 16))(v9, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, a3);
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    result = sub_1AB461644();
    if (v17 != 8)
    {
      break;
    }

    v21[0] = result;
    (*v19)(v9, v21, a3);
    swift_unknownObjectRelease();
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_6:
    __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    sub_1AB461D44();
    (*v18)(v9, a3);
    ++v12;
    if (v14 == sub_1AB4609F4())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1FE5AC()
{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x696E6F746F6E6F4DLL, 0xEE0028656D695463);
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  sub_1AB460E04();
  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  MEMORY[0x1AC59BA20](0, 0xE000000000000000);
}

uint64_t CoarselyTimed.init(contained:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for CoarselyTimed() + 28);
  v7 = sub_1AB45F244();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a2, v7);
}

uint64_t CoarselyTimed.init(byTiming:)@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a2;
  v38 = a1;
  v35 = a3;
  v36 = a4;
  v31 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AB45F9B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v31 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v32 = &v31 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for MonotonicTimeReference();
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  static MonotonicTime.now.getter(&v40);
  v20 = &v19[*(v17 + 28)];
  *v20 = v40;
  v21 = *(v7 + 16);
  v22 = v21(v15, v19, v6);
  v23 = v41;
  v38(v22);
  if (v23)
  {
    (*(v7 + 8))(v15, v6);
    return sub_1AB044D4C(v19);
  }

  else
  {
    v37 = v21;
    v38 = 0;
    v41 = v7;
    (*(v31 + 32))(v36, v5, v35);
    static MonotonicTime.now.getter(&v40);
    v25 = v40;
    tv_sec = v20->tv_sec;
    tv_nsec = v20->tv_nsec;
    v40.tv_sec = tv_sec;
    v40.tv_nsec = tv_nsec;
    v39 = v25;
    sub_1AB044C10(&v40, &v39);
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v28 = v32;
    sub_1AB45F934();
    v29 = v37;
    v37(v33, v15, v6);
    v29(v34, v28, v6);
    type metadata accessor for CoarselyTimed();
    sub_1AB45F224();
    v30 = *(v41 + 8);
    v30(v28, v6);
    v30(v15, v6);
    return sub_1AB044D4C(v19);
  }
}

uint64_t CoarselyTimed.init(byTiming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a4 - 8);
  v4[7] = swift_task_alloc();
  v5 = sub_1AB45F9B4();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = type metadata accessor for MonotonicTimeReference();
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB1FEC98, 0, 0);
}

uint64_t sub_1AB1FEC98()
{
  v14 = v0;
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 24);
  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  static MonotonicTime.now.getter(&v13);
  v7 = *(v2 + 20);
  *(v0 + 160) = v7;
  *(v1 + v7) = v13;
  v8 = *(v5 + 16);
  *(v0 + 128) = v8;
  *(v0 + 136) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v1, v4);
  v12 = (v6 + *v6);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_1AB1FEDF8;
  v10 = *(v0 + 56);

  return v12(v10);
}

uint64_t sub_1AB1FEDF8()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1AB1FF11C;
  }

  else
  {
    v2 = sub_1AB1FEF0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB1FEF0C()
{
  v16 = v0;
  v1 = (*(v0 + 120) + *(v0 + 160));
  (*(*(v0 + 48) + 32))(*(v0 + 16), *(v0 + 56), *(v0 + 40));
  static MonotonicTime.now.getter(&v15);
  v2 = v1[1];
  v14[0] = *v1;
  v14[1] = v2;
  sub_1AB044C10(v14, &v15);
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 128);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v11 = *(v0 + 88);
  v12 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v13 = *(v0 + 120);
  sub_1AB45F934();
  v3(v11, v5, v6);
  v3(v12, v4, v6);
  type metadata accessor for CoarselyTimed();
  sub_1AB45F224();
  v8 = *(v7 + 8);
  v8(v4, v6);
  v8(v5, v6);
  sub_1AB044D4C(v13);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AB1FF11C()
{
  v1 = v0[15];
  (*(v0[9] + 8))(v0[13], v0[8]);
  sub_1AB044D4C(v1);

  v2 = v0[1];

  return v2();
}

uint64_t CoarselyTimed.duration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1AB45F244();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CoarselyTimed.duration.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1AB45F244();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static CoarselyTimed<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1AB460504() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CoarselyTimed() + 28);

  return MEMORY[0x1EEDC26B0](a1 + v4, a2 + v4);
}

uint64_t sub_1AB1FF3CC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1AB45F244();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AB1FF454(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1AB45F244();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1AB1FF6B8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1AB45F244() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
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
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_1AB1FF9A8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1AB1FFA08()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 24))(v1, v2) & 1;
}

uint64_t sub_1AB1FFA60()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  result = (*(v2 + 24))(v1, v2);
  if (result)
  {
    v4 = v0[3];
    v5 = v0[4];
    __swift_project_boxed_opaque_existential_1Tm(v0, v4);
    return (*(v5 + 32))(v4, v5);
  }

  return result;
}

uint64_t sub_1AB1FFB04()
{
  sub_1AB01494C(v0, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4387F0);
  if (swift_dynamicCast())
  {
    sub_1AB0149B0(v5, v8);
    v1 = v9;
    v2 = v10;
    __swift_project_boxed_opaque_existential_1Tm(v8, v9);
    v3 = (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    return v3;
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1AB1FFBFC(v5);
    return 0;
  }
}

uint64_t sub_1AB1FFBFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB4387F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t JSIntentRequestTimeOutError.init(intent:timeoutInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  result = type metadata accessor for JSIntentRequestTimeOutError();
  *(a3 + *(result + 36)) = a4;
  return result;
}

uint64_t JSIntentRequestTimeOutError.errorDescription.getter()
{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x2074736575716552, 0xED00006020726F66);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB502440);
  sub_1AB460E04();
  MEMORY[0x1AC59BA20](115, 0xE100000000000000);
  return 0;
}

uint64_t sub_1AB1FFE44()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AB1FFEBC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1AB1FFFC0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t AppleServicesLocalizer.Configuration.init(dataSource:languageSource:objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB01494C(a1, v8);
  sub_1AB01494C(a2, v7);
  AppleServicesLocalizer.Configuration.init(dataSource:languageSource:)(v8, v7, a3);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t *AppleServicesLocalizer.Configuration.withFormattingStringsDataSource(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB09F8D8(v2, a2);

  return __swift_assign_boxed_opaque_existential_1((a2 + 80), a1);
}

uint64_t AppleServicesLocalizer.Configuration.withDefaultLookupStrategy(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = sub_1AB09F8D8(v2, a2);
  *(a2 + 176) = v4;
  return result;
}

uint64_t AppleServicesLocalizer.Configuration.withClientPreferences(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB09F8D8(v2, a2);

  return sub_1AB200298(a1, a2 + 184);
}

uint64_t sub_1AB200298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438880);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t AppleServicesLocalizer.language.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

id sub_1AB20039C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v17 setNumberStyle_];
  [v17 setFormatterBehavior_];
  if (a6)
  {
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_7:
    [v17 setMaximumFractionDigits_];
    if (a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [v17 setMinimumFractionDigits_];
  if ((a8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a4 & 1) == 0)
  {
LABEL_4:
    [v17 setFormattingContext_];
  }

LABEL_5:
  v18 = sub_1AB45FA44();
  [v17 setLocale_];

  return v17;
}

id sub_1AB2004B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_1AB45FB14();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1AB45FA84();
  v12 = sub_1AB45FAE4();
  (*(v8 + 8))(v10, v7);
  [v11 setCalendar_];

  v13 = sub_1AB45FA44();
  [v11 setLocale_];

  if (a2)
  {
    v14 = sub_1AB460514();
    [v11 setLocalizedDateFormatFromTemplate_];
  }

  if ((a4 & 1) == 0)
  {
    [v11 setFormattingContext_];
  }

  return v11;
}

id sub_1AB200650()
{
  v0 = sub_1AB45FB14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v4 setDoesRelativeDateFormatting_];
  [v4 setDateStyle_];
  [v4 setTimeStyle_];
  sub_1AB45FA84();
  v5 = sub_1AB45FAE4();
  (*(v1 + 8))(v3, v0);
  [v4 setCalendar_];

  v6 = sub_1AB45FA44();
  [v4 setLocale_];

  return v4;
}

uint64_t static AppleServicesLocalizer.fetch(contentsOf:for:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB200878;

  return sub_1AB20C5A8(a1, a2);
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v15 - v6;
  sub_1AB01494C(a1, v16);
  sub_1AB01494C(a2, v15);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  sub_1AB0149B0(v16, v8 + 24);
  sub_1AB0149B0(v15, v8 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E88);
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 64) = 0;
  v12 = sub_1AB460BE4();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1AB4DE1F0;
  v13[5] = v8;
  v13[6] = v9;

  sub_1AB39BBA8(0, 0, v7, &unk_1AB4DE200, v13);

  return v9;
}

uint64_t sub_1AB200878(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t static AppleServicesLocalizer.load(using:)(uint64_t a1)
{
  v2[173] = v1;
  v2[172] = a1;
  v3 = sub_1AB45FAA4();
  v2[174] = v3;
  v2[175] = *(v3 - 8);
  v2[176] = swift_task_alloc();
  v2[177] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB0A6608, 0, 0);
}

uint64_t sub_1AB200A48()
{
  v2 = *v1;
  *(*v1 + 1456) = v0;

  if (v0)
  {
    v3 = sub_1AB200DE0;
  }

  else
  {
    *(v2 + 1464) = *(v2 + 56);
    *(v2 + 1480) = *(v2 + 72);
    *(v2 + 1496) = *(v2 + 88);
    v3 = sub_1AB200B7C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB200B7C()
{
  if (*(v0 + 56))
  {
    if (qword_1ED4CFEF8 != -1)
    {
      swift_once();
    }

    v2 = qword_1EB4347E8;
    v1 = unk_1EB4347F0;
    __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1AB4D4720;
    *(v0 + 1304) = MEMORY[0x1E69E6158];
    *(v0 + 1280) = 0xD000000000000021;
    *(v0 + 1288) = 0x80000001AB503850;
    *(v4 + 48) = 0u;
    *(v4 + 32) = 0u;
    sub_1AB0169C4(v0 + 1280, v4 + 32);
    *(v4 + 64) = 0;
    *(v3 + 32) = v4;
    Logger.debug(_:)(v3, v2, v1);
  }

  *(v0 + 1536) = *(v0 + 1496);
  v5 = *(v0 + 1464);
  *(v0 + 1520) = *(v0 + 1480);
  *(v0 + 1504) = v5;
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), v6);
  v10 = (*(v7 + 8) + **(v7 + 8));
  v8 = swift_task_alloc();
  *(v0 + 1544) = v8;
  *v8 = v0;
  v8[1] = sub_1AB0A7278;

  return v10(v6, v7);
}

uint64_t sub_1AB200DE0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB200E7C()
{
  sub_1AB0AB5EC(*(v0 + 1504), *(v0 + 1512), *(v0 + 1520), *(v0 + 1528), *(v0 + 1536));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB200F30()
{
  sub_1AB0AB5EC(*(v0 + 1504), *(v0 + 1512), *(v0 + 1520), *(v0 + 1528), *(v0 + 1536));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB200FE4()
{
  v1 = *(v0 + 1640);
  v2 = *(v0 + 1632);
  v85 = unk_1EB4347F0;
  v88 = qword_1EB4347E8;
  v84 = __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4190;
  *(v0 + 1352) = sub_1AB0168A8(0, 39, 0, MEMORY[0x1E69E7CC0]);
  v4._countAndFlagsBits = 0xD000000000000025;
  v4._object = 0x80000001AB5037A0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  *(v0 + 1048) = MEMORY[0x1E69E6158];
  *(v0 + 1024) = v2;
  *(v0 + 1032) = v1;
  sub_1AB014A58(v0 + 1024, v0 + 1216, &unk_1EB437E60);
  *(v0 + 856) = 0u;
  *(v0 + 872) = 0u;
  sub_1AB0169C4(v0 + 1216, v0 + 856);
  *(v0 + 888) = 0;
  v5 = *(v0 + 1352);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1AB0168A8(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1AB0168A8((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[40 * v7];
  v9 = *(v0 + 856);
  v10 = *(v0 + 872);
  v8[64] = *(v0 + 888);
  *(v8 + 2) = v9;
  *(v8 + 3) = v10;
  *(v0 + 1352) = v5;
  sub_1AB014AC0(v0 + 1024, &unk_1EB437E60);
  v11._countAndFlagsBits = 44;
  v11._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  *(v3 + 32) = *(v0 + 1352);
  *(v0 + 1368) = sub_1AB0168A8(0, 20, 0, MEMORY[0x1E69E7CC0]);
  v12._object = 0x80000001AB5037D0;
  v12._countAndFlagsBits = 0xD000000000000012;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  v13 = *(v0 + 120);
  v14 = __swift_project_boxed_opaque_existential_1Tm((v0 + 96), v13);
  *(v0 + 1080) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1056));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v14, v13);
  sub_1AB014A58(v0 + 1056, v0 + 960, &unk_1EB437E60);
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_1AB0169C4(v0 + 960, v0 + 656);
  *(v0 + 688) = 0;
  v16 = *(v0 + 1368);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1AB0168A8(0, *(v16 + 2) + 1, 1, v16);
    *(v0 + 1368) = v16;
  }

  v17 = (v0 + 696);
  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AB0168A8((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[40 * v19];
  v21 = *(v0 + 656);
  v22 = *(v0 + 672);
  v20[64] = *(v0 + 688);
  *(v20 + 2) = v21;
  *(v20 + 3) = v22;
  *(v0 + 1368) = v16;
  sub_1AB014AC0(v0 + 1056, &unk_1EB437E60);
  v23._countAndFlagsBits = 44;
  v23._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  *(v3 + 40) = *(v0 + 1368);
  *(v0 + 1336) = sub_1AB0168A8(0, 9, 0, MEMORY[0x1E69E7CC0]);
  v24._countAndFlagsBits = 0x203A6E6F73616572;
  v24._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  swift_getErrorValue();
  v25 = *(v0 + 1312);
  v26 = *(v0 + 1320);
  *(v0 + 952) = v26;
  v27 = __swift_allocate_boxed_opaque_existential_0((v0 + 928));
  (*(*(v26 - 8) + 16))(v27, v25, v26);
  sub_1AB014A58(v0 + 928, v0 + 992, &unk_1EB437E60);
  *v17 = 0u;
  *(v0 + 712) = 0u;
  sub_1AB0169C4(v0 + 992, v0 + 696);
  *(v0 + 728) = 0;
  v28 = *(v0 + 1336);
  v82 = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
  }

  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  if (v30 >= v29 >> 1)
  {
    v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
  }

  v80 = *(v0 + 1680);
  v31 = *(v0 + 1672);
  v32 = *(v0 + 1616);
  v33 = *(v0 + 1416);
  v34 = *(v0 + 1392);
  v35 = (*(v0 + 1624) + 1);
  *(v28 + 2) = v30 + 1;
  v36 = &v28[40 * v30];
  v37 = *v17;
  v38 = *(v0 + 712);
  v36[64] = *(v0 + 728);
  *(v36 + 2) = v37;
  *(v36 + 3) = v38;
  *(v0 + 1336) = v28;
  sub_1AB014AC0(v0 + 928, &unk_1EB437E60);
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v39);
  v40 = v84;
  *(v82 + 48) = *(v0 + 1336);
  Logger.warning(_:)(v82, v88, v85);

  v80(v33, v34);
  if (v35 == v32)
  {
    v41 = *(v0 + 1600);
    v42 = *(v0 + 1576);
    v86 = unk_1EB4347F0;
    v89 = qword_1EB4347E8;
    __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1AB4D4720;
    v91 = sub_1AB0168A8(0, 50, 0, MEMORY[0x1E69E7CC0]);
    v44._countAndFlagsBits = 0xD000000000000031;
    v44._object = 0x80000001AB503810;
    LogMessage.StringInterpolation.appendLiteral(_:)(v44);
    *(v0 + 1208) = v41;
    *(v0 + 1184) = v42;
    sub_1AB014A58(v0 + 1184, v0 + 1248, &unk_1EB437E60);
    *(v0 + 736) = 0u;
    *(v0 + 752) = 0u;
    sub_1AB0169C4(v0 + 1248, v0 + 736);
    *(v0 + 768) = 0;
    v45 = v91;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_1AB0168A8(0, *(v91 + 2) + 1, 1, v91);
    }

    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_1AB0168A8((v46 > 1), v47 + 1, 1, v45);
    }

    v48 = *(v0 + 1536);
    v49 = *(v0 + 1528);
    v50 = *(v0 + 1520);
    v51 = *(v0 + 1512);
    v52 = *(v0 + 1504);
    *(v45 + 2) = v47 + 1;
    v53 = &v45[40 * v47];
    v54 = *(v0 + 736);
    v55 = *(v0 + 752);
    v53[64] = *(v0 + 768);
    *(v53 + 2) = v54;
    *(v53 + 3) = v55;
    sub_1AB014AC0(v0 + 1184, &unk_1EB437E60);
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v56);
    *(v43 + 32) = v45;
    Logger.error(_:)(v43, v89, v86);

    sub_1AB17DB30();
    swift_allocError();
    *v57 = 0;
    *(v57 + 8) = 0;
    *(v57 + 16) = 4;
    swift_willThrow();
    sub_1AB0AB5EC(v52, v51, v50, v49, v48);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

    v58 = *(v0 + 8);

    return v58();
  }

  v60 = *(v0 + 1624) + 1;
  *(v0 + 1624) = v60;
  v61 = *(v0 + 1576);
  if (v60 >= *(v61 + 16))
  {
    __break(1u);
    goto LABEL_29;
  }

  v40 = (v0 + 1360);
  v62 = v61 + 16 * v60;
  v32 = *(v62 + 32);
  *(v0 + 1632) = v32;
  v63 = *(v62 + 40);
  *(v0 + 1640) = v63;
  v64 = qword_1EB4347E8;
  v34 = unk_1EB4347F0;
  __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1AB4D4720;

  *(v0 + 1360) = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
  v65._countAndFlagsBits = 0xD00000000000001ELL;
  v65._object = 0x80000001AB503780;
  LogMessage.StringInterpolation.appendLiteral(_:)(v65);
  *(v0 + 1112) = MEMORY[0x1E69E6158];
  *(v0 + 1088) = v32;
  *(v0 + 1096) = v63;
  sub_1AB014A58(v0 + 1088, v0 + 896, &unk_1EB437E60);
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  v84 = v63;

  sub_1AB0169C4(v0 + 896, v0 + 816);
  *(v0 + 848) = 0;
  v35 = *(v0 + 1360);
  v85 = v64;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_29:
    v35 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
    *v40 = v35;
  }

  v67 = *(v35 + 2);
  v66 = *(v35 + 3);
  v90 = v32;
  if (v67 >= v66 >> 1)
  {
    v35 = sub_1AB0168A8((v66 > 1), v67 + 1, 1, v35);
  }

  v68 = *(v0 + 1416);
  v69 = *(v0 + 1400);
  v81 = *(v0 + 1392);
  v83 = *(v0 + 1408);
  *(v35 + 2) = v67 + 1;
  v70 = &v35[40 * v67];
  v71 = *(v0 + 816);
  v72 = *(v0 + 832);
  v70[64] = *(v0 + 848);
  *(v70 + 2) = v71;
  *(v70 + 3) = v72;
  *(v0 + 1360) = v35;
  sub_1AB014AC0(v0 + 1088, &unk_1EB437E60);
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v73);
  *(v33 + 32) = *(v0 + 1360);
  Logger.debug(_:)(v33, v85, v34);

  v74 = *(v0 + 160);
  v75 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 136), v74);
  (*(v75 + 16))(v90, v84, v74, v75);
  v76 = *(v69 + 16);
  *(v0 + 1648) = v76;
  *(v0 + 1656) = (v69 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v76(v83, v68, v81);
  v77 = *(v0 + 120);
  v78 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), v77);
  v87 = (*(v78 + 16) + **(v78 + 16));
  v79 = swift_task_alloc();
  *(v0 + 1664) = v79;
  *v79 = v0;
  v79[1] = sub_1AB0AABEC;

  return v87(v0 + 576, v90, v84, v77, v78);
}

uint64_t static AppleServicesLocalizer.fetch(contentsOf:for:nativeLookupIn:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[76] = v3;
  v4[75] = a3;
  v4[74] = a2;
  v4[73] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB201AF8, 0, 0);
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  sub_1AB01494C(a1, v20);
  sub_1AB01494C(a2, v19);
  sub_1AB01494C(a3, v18);
  v10 = swift_allocObject();
  sub_1AB0149B0(v20, v10 + 16);
  sub_1AB0149B0(v19, v10 + 56);
  sub_1AB0149B0(v18, v10 + 96);
  *(v10 + 136) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E88);
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 64) = 0;
  v14 = sub_1AB460BE4();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1AB4DE210;
  v15[5] = v10;
  v15[6] = v11;

  sub_1AB39BBA8(0, 0, v9, &unk_1AB4DE218, v15);

  return v11;
}

uint64_t sub_1AB201AF8()
{
  v1 = *(v0 + 592);
  sub_1AB01494C(*(v0 + 584), v0 + 464);
  sub_1AB01494C(v1, v0 + 504);
  *(v0 + 424) = 0u;
  *(v0 + 440) = 0u;
  *(v0 + 456) = 0;
  sub_1AB01494C(v0 + 464, v0 + 240);
  sub_1AB01494C(v0 + 504, v0 + 280);
  *(v0 + 344) = &type metadata for DefaultLocalizerFormattingStringsDataSource;
  *(v0 + 352) = &off_1F1FF9890;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4DE160;
  *(inited + 32) = [objc_opt_self() mainBundle];
  *(v0 + 384) = &type metadata for LocalizedStringsTableCollection;
  *(v0 + 392) = &protocol witness table for LocalizedStringsTableCollection;
  LocalizedStringsTableCollection.init(bundles:)(inited);
  if (qword_1ED4CFF00 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 600);
  v6 = xmmword_1ED4CFF08;
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 504);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 464);
  *(v0 + 400) = v6;
  *(v0 + 416) = 3;
  sub_1AB014AC0(v0 + 424, &qword_1EB438880);
  *(v0 + 424) = 0u;
  *(v0 + 440) = 0u;
  *(v0 + 456) = 0;
  sub_1AB09F8D8(v0 + 240, v0 + 16);
  __swift_assign_boxed_opaque_existential_1((v0 + 136), v3);
  sub_1AB20C930(v0 + 240);
  v4 = swift_task_alloc();
  *(v0 + 616) = v4;
  *v4 = v0;
  v4[1] = sub_1AB201D10;

  return static AppleServicesLocalizer.load(using:)(v0 + 16);
}

uint64_t sub_1AB201D10(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 624) = v1;

  if (v1)
  {
    v5 = sub_1AB201EA0;
  }

  else
  {
    *(v4 + 632) = a1;
    v5 = sub_1AB201E38;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AB201E38()
{
  sub_1AB20C930(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 632);

  return v1(v2);
}

uint64_t sub_1AB201EA0()
{
  sub_1AB20C930(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB2020EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[47] = a3;
  v4[48] = a4;
  v4[45] = a1;
  v4[46] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB202110, 0, 0);
}

uint64_t sub_1AB202110()
{
  v1 = *(v0 + 384);
  sub_1AB01494C(*(v0 + 376), v0 + 240);
  sub_1AB01494C(v1, v0 + 280);
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0;
  sub_1AB01494C(v0 + 240, v0 + 16);
  sub_1AB01494C(v0 + 280, v0 + 56);
  *(v0 + 120) = &type metadata for DefaultLocalizerFormattingStringsDataSource;
  *(v0 + 128) = &off_1F1FF9890;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4DE160;
  *(inited + 32) = [objc_opt_self() mainBundle];
  *(v0 + 160) = &type metadata for LocalizedStringsTableCollection;
  *(v0 + 168) = &protocol witness table for LocalizedStringsTableCollection;
  LocalizedStringsTableCollection.init(bundles:)(inited);
  if (qword_1ED4CFF00 != -1)
  {
    swift_once();
  }

  v5 = xmmword_1ED4CFF08;
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 280);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 240);
  *(v0 + 176) = v5;
  *(v0 + 192) = 3;
  sub_1AB014AC0(v0 + 200, &qword_1EB438880);
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0;
  v3 = swift_task_alloc();
  *(v0 + 392) = v3;
  *v3 = v0;
  v3[1] = sub_1AB20230C;

  return static AppleServicesLocalizer.load(using:)(v0 + 16);
}

uint64_t sub_1AB20230C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    sub_1AB20C930(v4 + 16);
    v5 = sub_1AB2024C0;
  }

  else
  {
    *(v4 + 408) = a1;
    sub_1AB20C930(v4 + 16);
    v5 = sub_1AB202444;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AB202444()
{
  v1 = v0[51];
  v2 = v0[45];
  v2[3] = type metadata accessor for AppleServicesLocalizer();
  v2[4] = &protocol witness table for AppleServicesLocalizer;
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1AB2026E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[77] = a5;
  v5[76] = a4;
  v5[75] = a3;
  v5[74] = a2;
  v5[73] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB202714, 0, 0);
}

uint64_t sub_1AB202714()
{
  v1 = *(v0 + 600);
  sub_1AB01494C(*(v0 + 592), v0 + 464);
  sub_1AB01494C(v1, v0 + 504);
  *(v0 + 424) = 0u;
  *(v0 + 440) = 0u;
  *(v0 + 456) = 0;
  sub_1AB01494C(v0 + 464, v0 + 240);
  sub_1AB01494C(v0 + 504, v0 + 280);
  *(v0 + 344) = &type metadata for DefaultLocalizerFormattingStringsDataSource;
  *(v0 + 352) = &off_1F1FF9890;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4DE160;
  *(inited + 32) = [objc_opt_self() mainBundle];
  *(v0 + 384) = &type metadata for LocalizedStringsTableCollection;
  *(v0 + 392) = &protocol witness table for LocalizedStringsTableCollection;
  LocalizedStringsTableCollection.init(bundles:)(inited);
  if (qword_1ED4CFF00 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 608);
  v6 = xmmword_1ED4CFF08;
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 504);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 464);
  *(v0 + 400) = v6;
  *(v0 + 416) = 3;
  sub_1AB014AC0(v0 + 424, &qword_1EB438880);
  *(v0 + 424) = 0u;
  *(v0 + 440) = 0u;
  *(v0 + 456) = 0;
  sub_1AB09F8D8(v0 + 240, v0 + 16);
  __swift_assign_boxed_opaque_existential_1((v0 + 136), v3);
  sub_1AB20C930(v0 + 240);
  v4 = swift_task_alloc();
  *(v0 + 624) = v4;
  *v4 = v0;
  v4[1] = sub_1AB20292C;

  return static AppleServicesLocalizer.load(using:)(v0 + 16);
}

uint64_t sub_1AB20292C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 632) = v1;

  if (v1)
  {
    v5 = sub_1AB202AD4;
  }

  else
  {
    *(v4 + 640) = a1;
    v5 = sub_1AB202A54;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AB202A54()
{
  v1 = v0[80];
  v2 = v0[73];
  v2[3] = v0[77];
  v2[4] = &protocol witness table for AppleServicesLocalizer;
  *v2 = v1;
  sub_1AB20C930((v0 + 2));
  v3 = v0[1];

  return v3();
}

uint64_t sub_1AB202AD4()
{
  sub_1AB20C930(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB202B38()
{
  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  v98 = unk_1EB4347F0;
  v100 = qword_1EB4347E8;
  __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4190;
  *(v0 + 800) = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  v4._object = 0x80000001AB503DC0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  *(v0 + 352) = MEMORY[0x1E69E6158];
  *(v0 + 328) = v2;
  *(v0 + 336) = v1;
  sub_1AB014A58(v0 + 328, v0 + 392, &unk_1EB437E60);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  sub_1AB0169C4(v0 + 392, v0 + 16);
  *(v0 + 48) = 0;
  v5 = *(v0 + 800);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1AB0168A8(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1AB0168A8((v6 > 1), v7 + 1, 1, v5);
  }

  v8 = *(v0 + 856);
  *(v5 + 2) = v7 + 1;
  v9 = &v5[40 * v7];
  v10 = *(v0 + 16);
  v11 = *(v0 + 32);
  v9[64] = *(v0 + 48);
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  *(v0 + 800) = v5;
  sub_1AB014AC0(v0 + 328, &unk_1EB437E60);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v3 + 32) = *(v0 + 800);
  *(v0 + 808) = sub_1AB0168A8(0, 19, 0, MEMORY[0x1E69E7CC0]);
  v13._object = 0x80000001AB5037D0;
  v13._countAndFlagsBits = 0xD000000000000012;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  v14 = v8[3];
  v15 = __swift_project_boxed_opaque_existential_1Tm(v8, v14);
  *(v0 + 448) = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 424));
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, v15, v14);
  sub_1AB014A58(v0 + 424, v0 + 488, &unk_1EB437E60);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1AB0169C4(v0 + 488, v0 + 216);
  *(v0 + 248) = 0;
  v17 = *(v0 + 808);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
    *(v0 + 808) = v17;
  }

  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1AB0168A8((v18 > 1), v19 + 1, 1, v17);
  }

  *(v17 + 2) = v19 + 1;
  v20 = &v17[40 * v19];
  v21 = *(v0 + 216);
  v22 = *(v0 + 232);
  v20[64] = *(v0 + 248);
  *(v20 + 2) = v21;
  *(v20 + 3) = v22;
  *(v0 + 808) = v17;
  sub_1AB014AC0(v0 + 424, &unk_1EB437E60);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  *(v3 + 40) = *(v0 + 808);
  *(v0 + 816) = sub_1AB0168A8(0, 9, 0, MEMORY[0x1E69E7CC0]);
  v24._countAndFlagsBits = 0x203A6E6F73616572;
  v24._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  swift_getErrorValue();
  v25 = *(v0 + 776);
  v26 = *(v0 + 784);
  *(v0 + 544) = v26;
  v27 = __swift_allocate_boxed_opaque_existential_0((v0 + 520));
  (*(*(v26 - 8) + 16))(v27, v25, v26);
  sub_1AB014A58(v0 + 520, v0 + 552, &unk_1EB437E60);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_1AB0169C4(v0 + 552, v0 + 176);
  *(v0 + 208) = 0;
  v28 = *(v0 + 816);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
  }

  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  if (v30 >= v29 >> 1)
  {
    v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
  }

  v31 = *(v0 + 920);
  v32 = *(v0 + 872);
  v33 = *(v0 + 880) + 1;
  *(v28 + 2) = v30 + 1;
  v34 = &v28[40 * v30];
  v35 = *(v0 + 176);
  v36 = *(v0 + 192);
  v34[64] = *(v0 + 208);
  *(v34 + 2) = v35;
  *(v34 + 3) = v36;
  *(v0 + 816) = v28;
  sub_1AB014AC0(v0 + 520, &unk_1EB437E60);
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v37);
  *(v3 + 48) = *(v0 + 816);
  Logger.debug(_:)(v3, v100, v98);

  if (v33 == v32)
  {
    if (qword_1ED4CFEF8 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 864);
    v39 = qword_1EB4347E8;
    v40 = unk_1EB4347F0;
    __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1AB4D4190;
    v103 = sub_1AB0168A8(0, 57, 0, MEMORY[0x1E69E7CC0]);
    v42._countAndFlagsBits = 0xD000000000000038;
    v42._object = 0x80000001AB503DF0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v42);
    *(v0 + 608) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
    *(v0 + 584) = v38;
    sub_1AB014A58(v0 + 584, v0 + 648, &unk_1EB437E60);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;

    sub_1AB0169C4(v0 + 648, v0 + 136);
    *(v0 + 168) = 0;
    v43 = v103;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1AB0168A8(0, *(v103 + 2) + 1, 1, v103);
    }

    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_1AB0168A8((v44 > 1), v45 + 1, 1, v43);
    }

    v46 = *(v0 + 856);
    *(v43 + 2) = v45 + 1;
    v47 = &v43[40 * v45];
    v48 = *(v0 + 136);
    v49 = *(v0 + 152);
    v47[64] = *(v0 + 168);
    *(v47 + 2) = v48;
    *(v47 + 3) = v49;
    sub_1AB014AC0(v0 + 584, &unk_1EB437E60);
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v50);
    *(v41 + 32) = v43;
    v104 = sub_1AB0168A8(0, 19, 0, MEMORY[0x1E69E7CC0]);
    v51._object = 0x80000001AB5037D0;
    v51._countAndFlagsBits = 0xD000000000000012;
    LogMessage.StringInterpolation.appendLiteral(_:)(v51);
    v52 = v46[3];
    v53 = __swift_project_boxed_opaque_existential_1Tm(v46, v52);
    *(v0 + 704) = v52;
    v54 = __swift_allocate_boxed_opaque_existential_0((v0 + 680));
    (*(*(v52 - 8) + 16))(v54, v53, v52);
    sub_1AB014A58(v0 + 680, v0 + 744, &unk_1EB437E60);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    sub_1AB0169C4(v0 + 744, v0 + 56);
    *(v0 + 88) = 0;
    v55 = v104;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_1AB0168A8(0, *(v104 + 2) + 1, 1, v104);
    }

    v57 = *(v55 + 2);
    v56 = *(v55 + 3);
    if (v57 >= v56 >> 1)
    {
      v55 = sub_1AB0168A8((v56 > 1), v57 + 1, 1, v55);
    }

    v58 = *(v0 + 848);
    *(v55 + 2) = v57 + 1;
    v59 = &v55[40 * v57];
    v60 = *(v0 + 56);
    v61 = *(v0 + 72);
    v59[64] = *(v0 + 88);
    *(v59 + 2) = v60;
    *(v59 + 3) = v61;
    sub_1AB014AC0(v0 + 680, &unk_1EB437E60);
    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v62);
    *(v41 + 40) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1AB4D4720;
    *(v0 + 320) = MEMORY[0x1E69E6158];
    *(v0 + 296) = 0xD00000000000002BLL;
    *(v0 + 304) = 0x80000001AB503E30;
    *(v63 + 48) = 0u;
    *(v63 + 32) = 0u;
    sub_1AB0169C4(v0 + 296, v63 + 32);
    *(v63 + 64) = 0;
    *(v41 + 48) = v63;
    Logger.debug(_:)(v41, v39, v40);

    *(v58 + 24) = &type metadata for EmptyLocalizedStrings;
    *(v58 + 32) = &off_1F1FF80C0;
    v64 = *(v0 + 8);

    return v64();
  }

  else
  {
    v66 = *(v0 + 880) + 1;
    *(v0 + 880) = v66;
    v67 = *(v0 + 864) + 16 * v66;
    v68 = *(v67 + 32);
    *(v0 + 888) = v68;
    v69 = *(v67 + 40);
    *(v0 + 896) = v69;
    v70 = qword_1ED4CFEF8;

    v101 = v68;
    if (v70 != -1)
    {
      swift_once();
    }

    v97 = unk_1EB4347F0;
    v99 = qword_1EB4347E8;
    __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
    *(v0 + 904) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1AB4D47F0;
    *(v0 + 840) = sub_1AB0168A8(0, 38, 0, MEMORY[0x1E69E7CC0]);
    v72._countAndFlagsBits = 0xD000000000000025;
    v72._object = 0x80000001AB503D90;
    LogMessage.StringInterpolation.appendLiteral(_:)(v72);
    *(v0 + 736) = MEMORY[0x1E69E6158];
    *(v0 + 712) = v68;
    *(v0 + 720) = v69;
    sub_1AB014A58(v0 + 712, v0 + 616, &unk_1EB437E60);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;

    sub_1AB0169C4(v0 + 616, v0 + 96);
    *(v0 + 128) = 0;
    v73 = *(v0 + 840);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_1AB0168A8(0, *(v73 + 2) + 1, 1, v73);
      *(v0 + 840) = v73;
    }

    v75 = *(v73 + 2);
    v74 = *(v73 + 3);
    if (v75 >= v74 >> 1)
    {
      v73 = sub_1AB0168A8((v74 > 1), v75 + 1, 1, v73);
    }

    v76 = *(v0 + 856);
    *(v73 + 2) = v75 + 1;
    v77 = &v73[40 * v75];
    v78 = *(v0 + 96);
    v79 = *(v0 + 112);
    v77[64] = *(v0 + 128);
    *(v77 + 2) = v78;
    *(v77 + 3) = v79;
    *(v0 + 840) = v73;
    sub_1AB014AC0(v0 + 712, &unk_1EB437E60);
    v80._countAndFlagsBits = 0;
    v80._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v80);
    *(v71 + 32) = *(v0 + 840);
    *(v0 + 832) = sub_1AB0168A8(0, 19, 0, MEMORY[0x1E69E7CC0]);
    v81._object = 0x80000001AB5037D0;
    v81._countAndFlagsBits = 0xD000000000000012;
    LogMessage.StringInterpolation.appendLiteral(_:)(v81);
    v82 = v76[3];
    v83 = __swift_project_boxed_opaque_existential_1Tm(v76, v82);
    *(v0 + 480) = v82;
    v84 = __swift_allocate_boxed_opaque_existential_0((v0 + 456));
    (*(*(v82 - 8) + 16))(v84, v83, v82);
    sub_1AB014A58(v0 + 456, v0 + 360, &unk_1EB437E60);
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    sub_1AB0169C4(v0 + 360, v0 + 256);
    *(v0 + 288) = 0;
    v85 = *(v0 + 832);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v85 = sub_1AB0168A8(0, *(v85 + 2) + 1, 1, v85);
      *(v0 + 832) = v85;
    }

    v87 = *(v85 + 2);
    v86 = *(v85 + 3);
    if (v87 >= v86 >> 1)
    {
      v85 = sub_1AB0168A8((v86 > 1), v87 + 1, 1, v85);
    }

    v88 = *(v0 + 856);
    *(v85 + 2) = v87 + 1;
    v89 = &v85[40 * v87];
    v90 = *(v0 + 256);
    v91 = *(v0 + 272);
    v89[64] = *(v0 + 288);
    *(v89 + 2) = v90;
    *(v89 + 3) = v91;
    *(v0 + 832) = v85;
    sub_1AB014AC0(v0 + 456, &unk_1EB437E60);
    v92._countAndFlagsBits = 0;
    v92._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v92);
    *(v71 + 40) = *(v0 + 832);
    Logger.debug(_:)(v71, v99, v97);

    v93 = v88[3];
    v94 = v88[4];
    __swift_project_boxed_opaque_existential_1Tm(v88, v93);
    v102 = (*(v94 + 16) + **(v94 + 16));
    v95 = swift_task_alloc();
    *(v0 + 912) = v95;
    *v95 = v0;
    v95[1] = sub_1AB0A9B78;
    v96 = *(v0 + 848);

    return v102(v96, v101, v69, v93, v94);
  }
}

uint64_t AppleServicesLocalizer.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9JetEngine22AppleServicesLocalizer_locale;
  v4 = sub_1AB45FAA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id AppleServicesLocalizer.jsExport.getter()
{
  v1 = *v0;
  v7[4] = &off_1F1FFD7A8;
  v7[5] = &protocol witness table for AppleServicesLocalizer;
  v7[3] = v1;
  v7[0] = v0;
  v2 = type metadata accessor for JSLocalizerObject();
  v3 = objc_allocWithZone(v2);
  sub_1AB0CDB28(v7, v3 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer);
  v6.receiver = v3;
  v6.super_class = v2;

  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v4;
}

uint64_t AppleServicesLocalizer.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v9[3] = *v2;
  v9[4] = &off_1F1FFD7A8;
  v9[5] = &protocol witness table for AppleServicesLocalizer;
  v9[0] = v2;
  v4 = type metadata accessor for JSLocalizerObject();
  v5 = objc_allocWithZone(v4);
  sub_1AB0CDB28(v9, v5 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer);
  v8.receiver = v5;
  v8.super_class = v4;

  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
  a1[3] = v4;
  a1[4] = &off_1F2014558;
  *a1 = v6;
  return result;
}

Swift::Bool __swiftcall AppleServicesLocalizer.hasString(forKey:using:)(Swift::String forKey, JetEngine::LocalizerLookupStrategy using)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  LOBYTE(v11[0]) = *using;
  v4 = sub_1AB20B004(forKey._countAndFlagsBits, forKey._object, v11);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v4;
  v7 = v5;
  v11[0] = countAndFlagsBits;
  v11[1] = object;
  sub_1AB0273A8();
  if ((sub_1AB461474() & 1) == 0)
  {
LABEL_10:

    v8 = 1;
    return v8 & 1;
  }

  if ((v6 != countAndFlagsBits || v7 != object) && (sub_1AB461DA4() & 1) == 0)
  {
    if (sub_1AB460784())
    {
      v9 = sub_1AB460794();

      v8 = v9 ^ 1;
      return v8 & 1;
    }

    goto LABEL_10;
  }

LABEL_7:
  v8 = 0;
  return v8 & 1;
}

uint64_t sub_1AB203C1C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  LOBYTE(v12[0]) = *a3;
  v5 = sub_1AB20B004(a1, a2, v12);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v5;
  v8 = v6;
  v12[0] = a1;
  v12[1] = a2;
  sub_1AB0273A8();
  if ((sub_1AB461474() & 1) == 0)
  {
LABEL_10:

    v9 = 1;
    return v9 & 1;
  }

  if ((v7 != a1 || v8 != a2) && (sub_1AB461DA4() & 1) == 0)
  {
    if (sub_1AB460784())
    {
      v10 = sub_1AB460794();

      v9 = v10 ^ 1;
      return v9 & 1;
    }

    goto LABEL_10;
  }

LABEL_7:
  v9 = 0;
  return v9 & 1;
}

Swift::Bool __swiftcall AppleServicesLocalizer.isLocalizedString(_:)(Swift::String a1)
{
  if (sub_1AB460784())
  {
    v1 = sub_1AB460794() ^ 1;
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

Swift::String __swiftcall AppleServicesLocalizer.string(forKey:with:using:)(Swift::String forKey, Swift::OpaquePointer_optional with, JetEngine::LocalizerLookupStrategy using)
{
  rawValue = with.value._rawValue;
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v6 = **&with.is_nil;
  LOBYTE(v67[0]) = **&with.is_nil;
  v7 = sub_1AB2044F8(forKey._countAndFlagsBits, forKey._object, with.value._rawValue, 0, 0, v67);
  v9 = v8;
  if (qword_1ED4CFEF8 != -1)
  {
    swift_once();
  }

  sub_1AB01494C(qword_1EB4347D0, v67);
  v56 = v69;
  v57 = v68;
  __swift_project_boxed_opaque_existential_1Tm(v67, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AB4DE170;
  v66 = sub_1AB0168A8(0, 2, 0, MEMORY[0x1E69E7CC0]);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v65 = MEMORY[0x1E69E6158];
  v62 = 0xD00000000000001ALL;
  v63 = 0x80000001AB503880;
  sub_1AB014A58(&v62, v58, &unk_1EB437E60);
  v59 = 0u;
  v60 = 0u;
  sub_1AB0169C4(v58, &v59);
  v61 = 0;
  v12 = v66;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  v15 = &v12[40 * v14];
  v16 = v59;
  v17 = v60;
  v15[64] = v61;
  *(v15 + 2) = v16;
  *(v15 + 3) = v17;
  v66 = v12;
  sub_1AB014AC0(&v62, &unk_1EB437E60);
  v18._countAndFlagsBits = 44;
  v18._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  *(v10 + 32) = v66;
  v66 = sub_1AB0168A8(0, 7, 0, MEMORY[0x1E69E7CC0]);
  v19._countAndFlagsBits = 0x203A79656BLL;
  v19._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  v65 = MEMORY[0x1E69E6158];
  v62 = countAndFlagsBits;
  v63 = object;
  sub_1AB014A58(&v62, v58, &unk_1EB437E60);
  v59 = 0u;
  v60 = 0u;

  sub_1AB0169C4(v58, &v59);
  v61 = 0;
  v20 = v66;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
    v66 = v20;
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v23 = &v20[40 * v22];
  v24 = v59;
  v25 = v60;
  v23[64] = v61;
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  v66 = v20;
  sub_1AB014AC0(&v62, &unk_1EB437E60);
  v26._countAndFlagsBits = 44;
  v26._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  *(v10 + 40) = v66;
  v66 = sub_1AB0168A8(0, 16, 0, MEMORY[0x1E69E7CC0]);
  v27._countAndFlagsBits = 0x6D6563616C706572;
  v27._object = 0xEE00203A73746E65;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  if (rawValue)
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98);
    v29 = rawValue;
  }

  else
  {
    v29 = 0;
    v28 = 0;
    v63 = 0;
    v64 = 0;
  }

  v62 = v29;
  v65 = v28;
  sub_1AB014A58(&v62, v58, &unk_1EB437E60);
  v59 = 0u;
  v60 = 0u;

  sub_1AB0169C4(v58, &v59);
  v61 = 2;
  v30 = v66;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
  }

  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
  }

  *(v30 + 2) = v32 + 1;
  v33 = &v30[40 * v32];
  v34 = v59;
  v35 = v60;
  v33[64] = v61;
  *(v33 + 2) = v34;
  *(v33 + 3) = v35;
  v66 = v30;
  sub_1AB014AC0(&v62, &unk_1EB437E60);
  v36._countAndFlagsBits = 44;
  v36._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v36);
  *(v10 + 48) = v66;
  v66 = sub_1AB0168A8(0, 18, 0, MEMORY[0x1E69E7CC0]);
  v37._object = 0x80000001AB5038A0;
  v37._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v37);
  v65 = &type metadata for LocalizerLookupStrategy;
  LOBYTE(v62) = v6;
  sub_1AB014A58(&v62, v58, &unk_1EB437E60);
  v59 = 0u;
  v60 = 0u;
  sub_1AB0169C4(v58, &v59);
  v61 = 0;
  v38 = v66;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = sub_1AB0168A8(0, *(v38 + 2) + 1, 1, v38);
  }

  v40 = *(v38 + 2);
  v39 = *(v38 + 3);
  if (v40 >= v39 >> 1)
  {
    v38 = sub_1AB0168A8((v39 > 1), v40 + 1, 1, v38);
  }

  *(v38 + 2) = v40 + 1;
  v41 = &v38[40 * v40];
  v42 = v59;
  v43 = v60;
  v41[64] = v61;
  *(v41 + 2) = v42;
  *(v41 + 3) = v43;
  v66 = v38;
  sub_1AB014AC0(&v62, &unk_1EB437E60);
  v44._countAndFlagsBits = 44;
  v44._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v44);
  *(v10 + 56) = v66;
  v66 = sub_1AB0168A8(0, 11, 0, MEMORY[0x1E69E7CC0]);
  v45._countAndFlagsBits = 0x203A746C75736572;
  v45._object = 0xE900000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  v65 = MEMORY[0x1E69E6158];
  v62 = v7;
  v63 = v9;
  sub_1AB014A58(&v62, v58, &unk_1EB437E60);
  v59 = 0u;
  v60 = 0u;

  sub_1AB0169C4(v58, &v59);
  v61 = 2;
  v46 = v66;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = sub_1AB0168A8(0, *(v46 + 2) + 1, 1, v46);
    v66 = v46;
  }

  v48 = *(v46 + 2);
  v47 = *(v46 + 3);
  if (v48 >= v47 >> 1)
  {
    v46 = sub_1AB0168A8((v47 > 1), v48 + 1, 1, v46);
  }

  *(v46 + 2) = v48 + 1;
  v49 = &v46[40 * v48];
  v50 = v59;
  v51 = v60;
  v49[64] = v61;
  *(v49 + 2) = v50;
  *(v49 + 3) = v51;
  v66 = v46;
  sub_1AB014AC0(&v62, &unk_1EB437E60);
  v52._countAndFlagsBits = 34;
  v52._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v52);
  *(v10 + 64) = v66;
  Logger.debug(_:)(v10, v57, v56);

  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  v53 = v7;
  v54 = v9;
  result._object = v54;
  result._countAndFlagsBits = v53;
  return result;
}

int64_t sub_1AB2044F8(uint64_t a1, uint64_t a2, unint64_t a3, int64_t a4, uint64_t a5, _BYTE *a6)
{
  v7 = v6;
  v11 = a2;
  v12 = a1;
  LOBYTE(v47) = *a6;
  v13 = sub_1AB20B004(a1, a2, &v47);
  if (!v14)
  {
    if (qword_1ED4CFEF8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  v15 = v13;
  if (a3)
  {
    v16 = a3 + 64;
    v17 = 1 << *(a3 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v11 = v14;
    v19 = v18 & *(a3 + 64);
    a4 = (v17 + 63) >> 6;

    v45 = a3;

    for (i = 0; v19; v11 = v29)
    {
      v21 = i;
LABEL_11:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v23 = (v21 << 10) | (16 * v22);
      v24 = (*(v45 + 48) + v23);
      v25 = *v24;
      a5 = v24[1];
      v26 = (*(v45 + 56) + v23);
      v27 = *v26;
      v12 = v26[1];
      *&v47 = v15;
      *(&v47 + 1) = v11;
      v51 = 16448;
      v52 = 0xE200000000000000;

      MEMORY[0x1AC59BA20](v25, a5);
      MEMORY[0x1AC59BA20](16448, 0xE200000000000000);
      v7 = v52;
      v50[0] = v27;
      v50[1] = v12;
      sub_1AB0273A8();
      v15 = sub_1AB461434();
      v29 = v28;
    }

    while (1)
    {
      v21 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v21 >= a4)
      {

        a3 = v45;

        goto LABEL_24;
      }

      v19 = *(v16 + 8 * v21);
      ++i;
      if (v19)
      {
        i = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
LABEL_15:
    v30 = qword_1EB4347E8;
    v31 = unk_1EB4347F0;
    __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1AB4D4720;
    v54 = sub_1AB0168A8(0, 36, 0, MEMORY[0x1E69E7CC0]);
    v33._object = 0x80000001AB503D30;
    v33._countAndFlagsBits = 0xD000000000000023;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    v53 = MEMORY[0x1E69E6158];
    v51 = v12;
    v52 = v11;
    sub_1AB014A58(&v51, v50, &unk_1EB437E60);
    v47 = 0u;
    v48 = 0u;

    sub_1AB0169C4(v50, &v47);
    LOBYTE(v49) = 0;
    v34 = v54;
    v46 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
      v54 = v34;
    }

    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v37 = &v34[40 * v36];
    v38 = v47;
    v39 = v48;
    v37[64] = v49;
    *(v37 + 2) = v38;
    *(v37 + 3) = v39;
    v54 = v34;
    sub_1AB014AC0(&v51, &unk_1EB437E60);
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v40);
    *(v32 + 32) = v54;
    Logger.warning(_:)(v32, v30, v46);

    sub_1AB014A58(v7 + 224, &v47, &qword_1EB438880);
    v41 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v42 = v49;
      __swift_project_boxed_opaque_existential_1Tm(&v47, *(&v48 + 1));
      v43 = (*(v42 + 8))(v41, v42);
      __swift_destroy_boxed_opaque_existential_1Tm(&v47);
      if ((v43 & 1) == 0 && a5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1AB014AC0(&v47, &qword_1EB438880);
      if (a5)
      {
LABEL_22:

        return a4;
      }
    }

    *&v47 = 10794;
    *(&v47 + 1) = 0xE200000000000000;
    MEMORY[0x1AC59BA20](v12, v11);
    MEMORY[0x1AC59BA20](10794, 0xE200000000000000);
    return v47;
  }

  v11 = v14;
LABEL_24:
  a4 = sub_1AB20B238(a3, v15, v11);

  return a4;
}

int64_t AppleServicesLocalizer.string(forKey:with:defaultValue:using:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char *a5)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *a5;
  v68 = *(a4 + 17);
  v69 = *(a4 + 16);
  if (v68)
  {
    v11 = sub_1AB461614();
    v13 = v12;
  }

  else
  {
    sub_1AB20CC94(*a4, *(a4 + 8), *(a4 + 16), 0);
    v11 = v8;
    v13 = v9;
  }

  v70 = v10;
  LOBYTE(v83[0]) = v10;
  v73 = sub_1AB2044F8(a1, a2, a3, v11, v13, v83);
  v15 = v14;

  if (qword_1ED4CFEF8 != -1)
  {
    swift_once();
  }

  sub_1AB01494C(qword_1EB4347D0, v83);
  v71 = v85;
  v72 = v84;
  __swift_project_boxed_opaque_existential_1Tm(v83, v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AB4D4180;
  v82 = sub_1AB0168A8(0, 2, 0, MEMORY[0x1E69E7CC0]);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v81 = MEMORY[0x1E69E6158];
  v78 = 0xD000000000000027;
  v79 = 0x80000001AB5038C0;
  sub_1AB014A58(&v78, v74, &unk_1EB437E60);
  v75 = 0u;
  v76 = 0u;
  sub_1AB0169C4(v74, &v75);
  v77 = 0;
  v18 = v82;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1AB0168A8(0, *(v18 + 2) + 1, 1, v18);
  }

  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1AB0168A8((v19 > 1), v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  v21 = &v18[40 * v20];
  v22 = v75;
  v23 = v76;
  v21[64] = v77;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  v82 = v18;
  sub_1AB014AC0(&v78, &unk_1EB437E60);
  v24._countAndFlagsBits = 44;
  v24._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  *(v16 + 32) = v82;
  v82 = sub_1AB0168A8(0, 7, 0, MEMORY[0x1E69E7CC0]);
  v25._countAndFlagsBits = 0x203A79656BLL;
  v25._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  v81 = MEMORY[0x1E69E6158];
  v78 = a1;
  v79 = a2;
  sub_1AB014A58(&v78, v74, &unk_1EB437E60);
  v75 = 0u;
  v76 = 0u;

  sub_1AB0169C4(v74, &v75);
  v77 = 0;
  v26 = v82;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
    v82 = v26;
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v29 = &v26[40 * v28];
  v30 = v75;
  v31 = v76;
  v29[64] = v77;
  *(v29 + 2) = v30;
  *(v29 + 3) = v31;
  v82 = v26;
  sub_1AB014AC0(&v78, &unk_1EB437E60);
  v32._countAndFlagsBits = 44;
  v32._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  *(v16 + 40) = v82;
  v82 = sub_1AB0168A8(0, 16, 0, MEMORY[0x1E69E7CC0]);
  v33._countAndFlagsBits = 0x6D6563616C706572;
  v33._object = 0xEE00203A73746E65;
  LogMessage.StringInterpolation.appendLiteral(_:)(v33);
  if (a3)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98);
    v35 = a3;
  }

  else
  {
    v35 = 0;
    v34 = 0;
    v79 = 0;
    v80 = 0;
  }

  v78 = v35;
  v81 = v34;
  sub_1AB014A58(&v78, v74, &unk_1EB437E60);
  v75 = 0u;
  v76 = 0u;

  sub_1AB0169C4(v74, &v75);
  v77 = 2;
  v36 = v82;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
  }

  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
  }

  *(v36 + 2) = v38 + 1;
  v39 = &v36[40 * v38];
  v40 = v75;
  v41 = v76;
  v39[64] = v77;
  *(v39 + 2) = v40;
  *(v39 + 3) = v41;
  v82 = v36;
  sub_1AB014AC0(&v78, &unk_1EB437E60);
  v42._countAndFlagsBits = 44;
  v42._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v42);
  *(v16 + 48) = v82;
  v82 = sub_1AB0168A8(0, 18, 0, MEMORY[0x1E69E7CC0]);
  v43._countAndFlagsBits = 0x56746C7561666564;
  v43._object = 0xEF22203A65756C61;
  LogMessage.StringInterpolation.appendLiteral(_:)(v43);
  v81 = &type metadata for LocalizerDefaultValue;
  v78 = v8;
  v79 = v9;
  LOBYTE(v80) = v69;
  BYTE1(v80) = v68;
  sub_1AB014A58(&v78, v74, &unk_1EB437E60);
  v75 = 0u;
  v76 = 0u;
  sub_1AB20CC94(v8, v9, v69, v68);
  sub_1AB0169C4(v74, &v75);
  v77 = 2;
  v44 = v82;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = sub_1AB0168A8(0, *(v44 + 2) + 1, 1, v44);
    v82 = v44;
  }

  v46 = *(v44 + 2);
  v45 = *(v44 + 3);
  if (v46 >= v45 >> 1)
  {
    v44 = sub_1AB0168A8((v45 > 1), v46 + 1, 1, v44);
  }

  *(v44 + 2) = v46 + 1;
  v47 = &v44[40 * v46];
  v48 = v75;
  v49 = v76;
  v47[64] = v77;
  *(v47 + 2) = v48;
  *(v47 + 3) = v49;
  v82 = v44;
  sub_1AB014AC0(&v78, &unk_1EB437E60);
  v50._countAndFlagsBits = 11298;
  v50._object = 0xE200000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v50);
  *(v16 + 56) = v82;
  v82 = sub_1AB0168A8(0, 18, 0, MEMORY[0x1E69E7CC0]);
  v51._object = 0x80000001AB5038A0;
  v51._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v51);
  v81 = &type metadata for LocalizerLookupStrategy;
  LOBYTE(v78) = v70;
  sub_1AB014A58(&v78, v74, &unk_1EB437E60);
  v75 = 0u;
  v76 = 0u;
  sub_1AB0169C4(v74, &v75);
  v77 = 0;
  v52 = v82;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v52 = sub_1AB0168A8(0, *(v52 + 2) + 1, 1, v52);
  }

  v54 = *(v52 + 2);
  v53 = *(v52 + 3);
  if (v54 >= v53 >> 1)
  {
    v52 = sub_1AB0168A8((v53 > 1), v54 + 1, 1, v52);
  }

  *(v52 + 2) = v54 + 1;
  v55 = &v52[40 * v54];
  v56 = v75;
  v57 = v76;
  v55[64] = v77;
  *(v55 + 2) = v56;
  *(v55 + 3) = v57;
  v82 = v52;
  sub_1AB014AC0(&v78, &unk_1EB437E60);
  v58._countAndFlagsBits = 44;
  v58._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v58);
  *(v16 + 64) = v82;
  v82 = sub_1AB0168A8(0, 11, 0, MEMORY[0x1E69E7CC0]);
  v59._countAndFlagsBits = 0x203A746C75736572;
  v59._object = 0xE900000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v59);
  v81 = MEMORY[0x1E69E6158];
  v78 = v73;
  v79 = v15;
  sub_1AB014A58(&v78, v74, &unk_1EB437E60);
  v75 = 0u;
  v76 = 0u;

  sub_1AB0169C4(v74, &v75);
  v77 = 2;
  v60 = v82;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v60 = sub_1AB0168A8(0, *(v60 + 2) + 1, 1, v60);
    v82 = v60;
  }

  v62 = *(v60 + 2);
  v61 = *(v60 + 3);
  if (v62 >= v61 >> 1)
  {
    v60 = sub_1AB0168A8((v61 > 1), v62 + 1, 1, v60);
  }

  *(v60 + 2) = v62 + 1;
  v63 = &v60[40 * v62];
  v64 = v75;
  v65 = v76;
  v63[64] = v77;
  *(v63 + 2) = v64;
  *(v63 + 3) = v65;
  v82 = v60;
  sub_1AB014AC0(&v78, &unk_1EB437E60);
  v66._countAndFlagsBits = 34;
  v66._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v66);
  *(v16 + 72) = v82;
  Logger.debug(_:)(v16, v72, v71);

  __swift_destroy_boxed_opaque_existential_1Tm(v83);
  return v73;
}

Swift::String __swiftcall AppleServicesLocalizer.decimal(forNumber:minimumFractionDigits:maximumFractionDigits:in:)(NSNumber forNumber, Swift::Int_optional minimumFractionDigits, Swift::Int_optional maximumFractionDigits, JetEngine::LocalizerContext in)
{
  v5 = *(v4 + 192);
  os_unfair_lock_lock(v5 + 4);
  sub_1AB20CCD0(v9);
  os_unfair_lock_unlock(v5 + 4);
  v6 = v9[0];
  v7 = v9[1];
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_1AB20537C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X4>, char a6@<W5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v13 = a2;
  v14 = a1 + OBJC_IVAR____TtC9JetEngine22AppleServicesLocalizer_locale;
  swift_beginAccess();
  *&v88 = sub_1AB45FA04();
  *(&v88 + 1) = v15;
  v91 = 0;
  v92 = 0xE000000000000000;
  v87[0] = v13;
  type metadata accessor for Context(0);
  sub_1AB461824();
  MEMORY[0x1AC59BA20](0, 0xE000000000000000);

  if ((a4 & 1) == 0)
  {
    v91 = a3;
    v16 = sub_1AB461C44();
    MEMORY[0x1AC59BA20](v16);
  }

  v86 = a6;
  if ((a6 & 1) == 0)
  {
    v91 = a5;
    v17 = sub_1AB461C44();
    MEMORY[0x1AC59BA20](v17);
  }

  v18 = sub_1AB460514();

  v19 = *(a1 + 344);
  v20 = [v19 objectForKey_];
  if (!v20)
  {
    v20 = (*(a1 + 352))(0, 0, v13, 0, a3, a4 & 1, a5, v86 & 1, v14);
    [v19 setObject:v20 forKey:v18];
  }

  swift_endAccess();
  v21 = [v20 stringFromNumber_];

  if (v21)
  {
    v83 = sub_1AB460544();
    v23 = v22;
  }

  else
  {
    [a7 decimalValue];
    v83 = sub_1AB461304();
    v23 = v24;
  }

  if (qword_1ED4CFEF8 != -1)
  {
    swift_once();
  }

  sub_1AB01494C(qword_1EB4347D0, &v95);
  v25 = v96;
  v81 = v97;
  __swift_project_boxed_opaque_existential_1Tm(&v95, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1AB4D4180;
  v98 = sub_1AB0168A8(0, 2, 0, MEMORY[0x1E69E7CC0]);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  v94 = MEMORY[0x1E69E6158];
  v91 = 0xD000000000000042;
  v92 = 0x80000001AB503CE0;
  sub_1AB014A58(&v91, v87, &unk_1EB437E60);
  v88 = 0u;
  v89 = 0u;
  sub_1AB0169C4(v87, &v88);
  v90 = 0;
  v28 = v98;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
  }

  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  if (v30 >= v29 >> 1)
  {
    v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
  }

  *(v28 + 2) = v30 + 1;
  v31 = &v28[40 * v30];
  v32 = v88;
  v33 = v89;
  v31[64] = v90;
  *(v31 + 2) = v32;
  *(v31 + 3) = v33;
  v98 = v28;
  sub_1AB014AC0(&v91, &unk_1EB437E60);
  v34._countAndFlagsBits = 44;
  v34._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v34);
  *(v26 + 32) = v98;
  v98 = sub_1AB0168A8(0, 10, 0, MEMORY[0x1E69E7CC0]);
  v35._countAndFlagsBits = 0x203A7265626D756ELL;
  v35._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v35);
  v94 = sub_1AB083ACC();
  v91 = a7;
  sub_1AB014A58(&v91, v87, &unk_1EB437E60);
  v88 = 0u;
  v89 = 0u;
  v36 = a7;
  sub_1AB0169C4(v87, &v88);
  v90 = 0;
  v37 = v98;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
  }

  v38 = a5;
  v40 = *(v37 + 2);
  v39 = *(v37 + 3);
  if (v40 >= v39 >> 1)
  {
    v37 = sub_1AB0168A8((v39 > 1), v40 + 1, 1, v37);
  }

  *(v37 + 2) = v40 + 1;
  v41 = &v37[40 * v40];
  v42 = v88;
  v43 = v89;
  v41[64] = v90;
  *(v41 + 2) = v42;
  *(v41 + 3) = v43;
  v98 = v37;
  sub_1AB014AC0(&v91, &unk_1EB437E60);
  v44._countAndFlagsBits = 44;
  v44._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v44);
  *(v26 + 40) = v98;
  v98 = sub_1AB0168A8(0, 25, 0, MEMORY[0x1E69E7CC0]);
  v45._object = 0x80000001AB503CA0;
  v45._countAndFlagsBits = 0xD000000000000017;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  if (a4)
  {
    v46 = 0;
    v47 = 0;
    v92 = 0;
    v93 = 0;
  }

  else
  {
    v47 = MEMORY[0x1E69E6530];
    v46 = a3;
  }

  v91 = v46;
  v94 = v47;
  sub_1AB014A58(&v91, v87, &unk_1EB437E60);
  v88 = 0u;
  v89 = 0u;
  sub_1AB0169C4(v87, &v88);
  v90 = 0;
  v48 = v98;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v48 = sub_1AB0168A8(0, *(v48 + 2) + 1, 1, v48);
  }

  v50 = *(v48 + 2);
  v49 = *(v48 + 3);
  if (v50 >= v49 >> 1)
  {
    v48 = sub_1AB0168A8((v49 > 1), v50 + 1, 1, v48);
  }

  *(v48 + 2) = v50 + 1;
  v51 = &v48[40 * v50];
  v52 = v88;
  v53 = v89;
  v51[64] = v90;
  *(v51 + 2) = v52;
  *(v51 + 3) = v53;
  v98 = v48;
  sub_1AB014AC0(&v91, &unk_1EB437E60);
  v54._countAndFlagsBits = 44;
  v54._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v54);
  *(v26 + 48) = v98;
  v98 = sub_1AB0168A8(0, 25, 0, MEMORY[0x1E69E7CC0]);
  v55._object = 0x80000001AB503CC0;
  v55._countAndFlagsBits = 0xD000000000000017;
  LogMessage.StringInterpolation.appendLiteral(_:)(v55);
  if (v86)
  {
    v38 = 0;
    v56 = 0;
    v92 = 0;
    v93 = 0;
  }

  else
  {
    v56 = MEMORY[0x1E69E6530];
  }

  v91 = v38;
  v94 = v56;
  sub_1AB014A58(&v91, v87, &unk_1EB437E60);
  v88 = 0u;
  v89 = 0u;
  sub_1AB0169C4(v87, &v88);
  v90 = 0;
  v57 = v98;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v57 = sub_1AB0168A8(0, *(v57 + 2) + 1, 1, v57);
  }

  v59 = *(v57 + 2);
  v58 = *(v57 + 3);
  if (v59 >= v58 >> 1)
  {
    v57 = sub_1AB0168A8((v58 > 1), v59 + 1, 1, v57);
  }

  *(v57 + 2) = v59 + 1;
  v60 = &v57[40 * v59];
  v61 = v88;
  v62 = v89;
  v60[64] = v90;
  *(v60 + 2) = v61;
  *(v60 + 3) = v62;
  v98 = v57;
  sub_1AB014AC0(&v91, &unk_1EB437E60);
  v63._countAndFlagsBits = 44;
  v63._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v63);
  *(v26 + 56) = v98;
  v98 = sub_1AB0168A8(0, 11, 0, MEMORY[0x1E69E7CC0]);
  v64._countAndFlagsBits = 0x3A747865746E6F63;
  v64._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v64);
  v94 = &type metadata for LocalizerContext;
  LOBYTE(v91) = a2;
  sub_1AB014A58(&v91, v87, &unk_1EB437E60);
  v88 = 0u;
  v89 = 0u;
  sub_1AB0169C4(v87, &v88);
  v90 = 0;
  v65 = v98;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v65 = sub_1AB0168A8(0, *(v65 + 2) + 1, 1, v65);
  }

  v67 = *(v65 + 2);
  v66 = *(v65 + 3);
  if (v67 >= v66 >> 1)
  {
    v65 = sub_1AB0168A8((v66 > 1), v67 + 1, 1, v65);
  }

  *(v65 + 2) = v67 + 1;
  v68 = &v65[40 * v67];
  v69 = v88;
  v70 = v89;
  v68[64] = v90;
  *(v68 + 2) = v69;
  *(v68 + 3) = v70;
  v98 = v65;
  sub_1AB014AC0(&v91, &unk_1EB437E60);
  v71._countAndFlagsBits = 44;
  v71._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v71);
  *(v26 + 64) = v98;
  v98 = sub_1AB0168A8(0, 11, 0, MEMORY[0x1E69E7CC0]);
  v72._countAndFlagsBits = 0x203A746C75736572;
  v72._object = 0xE900000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v72);
  v94 = MEMORY[0x1E69E6158];
  v91 = v83;
  v92 = v23;
  sub_1AB014A58(&v91, v87, &unk_1EB437E60);
  v88 = 0u;
  v89 = 0u;

  sub_1AB0169C4(v87, &v88);
  v90 = 2;
  v73 = v98;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v73 = sub_1AB0168A8(0, *(v73 + 2) + 1, 1, v73);
    v98 = v73;
  }

  v75 = *(v73 + 2);
  v74 = *(v73 + 3);
  if (v75 >= v74 >> 1)
  {
    v73 = sub_1AB0168A8((v74 > 1), v75 + 1, 1, v73);
  }

  *(v73 + 2) = v75 + 1;
  v76 = &v73[40 * v75];
  v77 = v88;
  v78 = v89;
  v76[64] = v90;
  *(v76 + 2) = v77;
  *(v76 + 3) = v78;
  v98 = v73;
  sub_1AB014AC0(&v91, &unk_1EB437E60);
  v79._countAndFlagsBits = 34;
  v79._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v79);
  *(v26 + 72) = v98;
  Logger.debug(_:)(v26, v25, v81);

  result = __swift_destroy_boxed_opaque_existential_1Tm(&v95);
  *a8 = v83;
  a8[1] = v23;
  return result;
}

Swift::String __swiftcall AppleServicesLocalizer.percentage(forNumber:minimumFractionDigits:maximumFractionDigits:in:)(NSNumber forNumber, Swift::Int_optional minimumFractionDigits, Swift::Int_optional maximumFractionDigits, JetEngine::LocalizerContext in)
{
  v5 = *(v4 + 192);
  os_unfair_lock_lock(v5 + 4);
  sub_1AB20D728(v9);
  os_unfair_lock_unlock(v5 + 4);
  v6 = v9[0];
  v7 = v9[1];
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_1AB205E9C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X4>, char a6@<W5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v13 = a2;
  v14 = a1 + OBJC_IVAR____TtC9JetEngine22AppleServicesLocalizer_locale;
  swift_beginAccess();
  *&v88 = sub_1AB45FA04();
  *(&v88 + 1) = v15;
  v91 = 0;
  v92 = 0xE000000000000000;
  v87[0] = v13;
  type metadata accessor for Context(0);
  sub_1AB461824();
  MEMORY[0x1AC59BA20](0, 0xE000000000000000);

  if ((a4 & 1) == 0)
  {
    v91 = a3;
    v16 = sub_1AB461C44();
    MEMORY[0x1AC59BA20](v16);
  }

  v86 = a6;
  if ((a6 & 1) == 0)
  {
    v91 = a5;
    v17 = sub_1AB461C44();
    MEMORY[0x1AC59BA20](v17);
  }

  v18 = sub_1AB460514();

  v19 = *(a1 + 368);
  v20 = [v19 objectForKey_];
  if (!v20)
  {
    v20 = (*(a1 + 376))(0, 0, v13, 0, a3, a4 & 1, a5, v86 & 1, v14);
    [v19 setObject:v20 forKey:v18];
  }

  swift_endAccess();
  v21 = [v20 stringFromNumber_];

  if (v21)
  {
    v83 = sub_1AB460544();
    v23 = v22;
  }

  else
  {
    [a7 decimalValue];
    v83 = sub_1AB461304();
    v23 = v24;
  }

  if (qword_1ED4CFEF8 != -1)
  {
    swift_once();
  }

  sub_1AB01494C(qword_1EB4347D0, &v95);
  v25 = v96;
  v81 = v97;
  __swift_project_boxed_opaque_existential_1Tm(&v95, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1AB4D4180;
  v98 = sub_1AB0168A8(0, 2, 0, MEMORY[0x1E69E7CC0]);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  v94 = MEMORY[0x1E69E6158];
  v91 = 0xD000000000000045;
  v92 = 0x80000001AB503C50;
  sub_1AB014A58(&v91, v87, &unk_1EB437E60);
  v88 = 0u;
  v89 = 0u;
  sub_1AB0169C4(v87, &v88);
  v90 = 0;
  v28 = v98;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
  }

  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  if (v30 >= v29 >> 1)
  {
    v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
  }

  *(v28 + 2) = v30 + 1;
  v31 = &v28[40 * v30];
  v32 = v88;
  v33 = v89;
  v31[64] = v90;
  *(v31 + 2) = v32;
  *(v31 + 3) = v33;
  v98 = v28;
  sub_1AB014AC0(&v91, &unk_1EB437E60);
  v34._countAndFlagsBits = 44;
  v34._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v34);
  *(v26 + 32) = v98;
  v98 = sub_1AB0168A8(0, 10, 0, MEMORY[0x1E69E7CC0]);
  v35._countAndFlagsBits = 0x203A7265626D756ELL;
  v35._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v35);
  v94 = sub_1AB083ACC();
  v91 = a7;
  sub_1AB014A58(&v91, v87, &unk_1EB437E60);
  v88 = 0u;
  v89 = 0u;
  v36 = a7;
  sub_1AB0169C4(v87, &v88);
  v90 = 0;
  v37 = v98;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
  }

  v38 = a5;
  v40 = *(v37 + 2);
  v39 = *(v37 + 3);
  if (v40 >= v39 >> 1)
  {
    v37 = sub_1AB0168A8((v39 > 1), v40 + 1, 1, v37);
  }

  *(v37 + 2) = v40 + 1;
  v41 = &v37[40 * v40];
  v42 = v88;
  v43 = v89;
  v41[64] = v90;
  *(v41 + 2) = v42;
  *(v41 + 3) = v43;
  v98 = v37;
  sub_1AB014AC0(&v91, &unk_1EB437E60);
  v44._countAndFlagsBits = 44;
  v44._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v44);
  *(v26 + 40) = v98;
  v98 = sub_1AB0168A8(0, 25, 0, MEMORY[0x1E69E7CC0]);
  v45._object = 0x80000001AB503CA0;
  v45._countAndFlagsBits = 0xD000000000000017;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  if (a4)
  {
    v46 = 0;
    v47 = 0;
    v92 = 0;
    v93 = 0;
  }

  else
  {
    v47 = MEMORY[0x1E69E6530];
    v46 = a3;
  }

  v91 = v46;
  v94 = v47;
  sub_1AB014A58(&v91, v87, &unk_1EB437E60);
  v88 = 0u;
  v89 = 0u;
  sub_1AB0169C4(v87, &v88);
  v90 = 0;
  v48 = v98;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v48 = sub_1AB0168A8(0, *(v48 + 2) + 1, 1, v48);
  }

  v50 = *(v48 + 2);
  v49 = *(v48 + 3);
  if (v50 >= v49 >> 1)
  {
    v48 = sub_1AB0168A8((v49 > 1), v50 + 1, 1, v48);
  }

  *(v48 + 2) = v50 + 1;
  v51 = &v48[40 * v50];
  v52 = v88;
  v53 = v89;
  v51[64] = v90;
  *(v51 + 2) = v52;
  *(v51 + 3) = v53;
  v98 = v48;
  sub_1AB014AC0(&v91, &unk_1EB437E60);
  v54._countAndFlagsBits = 44;
  v54._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v54);
  *(v26 + 48) = v98;
  v98 = sub_1AB0168A8(0, 25, 0, MEMORY[0x1E69E7CC0]);
  v55._object = 0x80000001AB503CC0;
  v55._countAndFlagsBits = 0xD000000000000017;
  LogMessage.StringInterpolation.appendLiteral(_:)(v55);
  if (v86)
  {
    v38 = 0;
    v56 = 0;
    v92 = 0;
    v93 = 0;
  }

  else
  {
    v56 = MEMORY[0x1E69E6530];
  }

  v91 = v38;
  v94 = v56;
  sub_1AB014A58(&v91, v87, &unk_1EB437E60);
  v88 = 0u;
  v89 = 0u;
  sub_1AB0169C4(v87, &v88);
  v90 = 0;
  v57 = v98;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v57 = sub_1AB0168A8(0, *(v57 + 2) + 1, 1, v57);
  }

  v59 = *(v57 + 2);
  v58 = *(v57 + 3);
  if (v59 >= v58 >> 1)
  {
    v57 = sub_1AB0168A8((v58 > 1), v59 + 1, 1, v57);
  }

  *(v57 + 2) = v59 + 1;
  v60 = &v57[40 * v59];
  v61 = v88;
  v62 = v89;
  v60[64] = v90;
  *(v60 + 2) = v61;
  *(v60 + 3) = v62;
  v98 = v57;
  sub_1AB014AC0(&v91, &unk_1EB437E60);
  v63._countAndFlagsBits = 44;
  v63._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v63);
  *(v26 + 56) = v98;
  v98 = sub_1AB0168A8(0, 11, 0, MEMORY[0x1E69E7CC0]);
  v64._countAndFlagsBits = 0x3A747865746E6F63;
  v64._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v64);
  v94 = &type metadata for LocalizerContext;
  LOBYTE(v91) = a2;
  sub_1AB014A58(&v91, v87, &unk_1EB437E60);
  v88 = 0u;
  v89 = 0u;
  sub_1AB0169C4(v87, &v88);
  v90 = 0;
  v65 = v98;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v65 = sub_1AB0168A8(0, *(v65 + 2) + 1, 1, v65);
  }

  v67 = *(v65 + 2);
  v66 = *(v65 + 3);
  if (v67 >= v66 >> 1)
  {
    v65 = sub_1AB0168A8((v66 > 1), v67 + 1, 1, v65);
  }

  *(v65 + 2) = v67 + 1;
  v68 = &v65[40 * v67];
  v69 = v88;
  v70 = v89;
  v68[64] = v90;
  *(v68 + 2) = v69;
  *(v68 + 3) = v70;
  v98 = v65;
  sub_1AB014AC0(&v91, &unk_1EB437E60);
  v71._countAndFlagsBits = 44;
  v71._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v71);
  *(v26 + 64) = v98;
  v98 = sub_1AB0168A8(0, 11, 0, MEMORY[0x1E69E7CC0]);
  v72._countAndFlagsBits = 0x203A746C75736572;
  v72._object = 0xE900000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v72);
  v94 = MEMORY[0x1E69E6158];
  v91 = v83;
  v92 = v23;
  sub_1AB014A58(&v91, v87, &unk_1EB437E60);
  v88 = 0u;
  v89 = 0u;

  sub_1AB0169C4(v87, &v88);
  v90 = 2;
  v73 = v98;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v73 = sub_1AB0168A8(0, *(v73 + 2) + 1, 1, v73);
    v98 = v73;
  }

  v75 = *(v73 + 2);
  v74 = *(v73 + 3);
  if (v75 >= v74 >> 1)
  {
    v73 = sub_1AB0168A8((v74 > 1), v75 + 1, 1, v73);
  }

  *(v73 + 2) = v75 + 1;
  v76 = &v73[40 * v75];
  v77 = v88;
  v78 = v89;
  v76[64] = v90;
  *(v76 + 2) = v77;
  *(v76 + 3) = v78;
  v98 = v73;
  sub_1AB014AC0(&v91, &unk_1EB437E60);
  v79._countAndFlagsBits = 34;
  v79._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v79);
  *(v26 + 72) = v98;
  Logger.debug(_:)(v26, v25, v81);

  result = __swift_destroy_boxed_opaque_existential_1Tm(&v95);
  *a8 = v83;
  a8[1] = v23;
  return result;
}

Swift::String __swiftcall AppleServicesLocalizer.string(withCount:forKey:with:using:)(Swift::Int withCount, Swift::String forKey, Swift::OpaquePointer_optional with, JetEngine::LocalizerLookupStrategy using)
{
  rawValue = with.value._rawValue;
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v8 = **&with.is_nil;
  v9 = sub_1AB20B934(withCount, v4 + OBJC_IVAR____TtC9JetEngine22AppleServicesLocalizer_locale);
  v94 = countAndFlagsBits;
  if (v9 != 5)
  {
    v10 = v9;
    v11 = sub_1AB460514();
    v12 = JEPluralCategoryPluralFormKeyFromBaseKey(v10, v11);

    countAndFlagsBits = sub_1AB460544();
    v14 = v13;

    LOBYTE(v106) = v8;
    if (sub_1AB203C1C(countAndFlagsBits, v14, &v106))
    {
      goto LABEL_5;
    }

    countAndFlagsBits = v94;
  }

  v14 = object;
LABEL_5:
  v90 = object;
  if (rawValue)
  {
    v15 = rawValue;
  }

  else
  {
    v15 = sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
  }

  v16 = *(v15 + 16);
  v93 = rawValue;

  v17 = MEMORY[0x1E69E6158];
  v95 = v8;
  if (v16)
  {
    sub_1AB014DB4(0x746E756F63, 0xE500000000000000);
    if (v18)
    {
      if (qword_1ED4CFEF8 != -1)
      {
        swift_once();
      }

      v19 = qword_1EB4347E8;
      v20 = unk_1EB4347F0;
      __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1AB4D4720;
      v108 = MEMORY[0x1E69E6158];
      v106 = 0xD000000000000044;
      v107 = 0x80000001AB503970;
      v17 = MEMORY[0x1E69E6158];
      *(v22 + 48) = 0u;
      *(v22 + 32) = 0u;
      sub_1AB0169C4(&v106, v22 + 32);
      *(v22 + 64) = 0;
      *(v21 + 32) = v22;
      Logger.warning(_:)(v21, v19, v20);

      v8 = v95;
    }

    if (*(v15 + 16))
    {
      sub_1AB014DB4(0x7265626D756ELL, 0xE600000000000000);
      if (v23)
      {
        if (qword_1ED4CFEF8 != -1)
        {
          swift_once();
        }

        v24 = qword_1EB4347E8;
        v91 = unk_1EB4347F0;
        __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1AB4D4720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1AB4D4720;
        v108 = v17;
        v106 = 0xD000000000000045;
        v107 = 0x80000001AB503920;
        *(v26 + 48) = 0u;
        *(v26 + 32) = 0u;
        sub_1AB0169C4(&v106, v26 + 32);
        *(v26 + 64) = 0;
        *(v25 + 32) = v26;
        Logger.warning(_:)(v25, v24, v91);
      }
    }
  }

  v27 = AppleServicesLocalizer.formattedCount(_:)(withCount);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v106 = v15;
  sub_1AB1D5C74(v27._countAndFlagsBits, v27._object, 0x746E756F63, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v29 = v106;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v106 = v29;
  sub_1AB1D5C74(v27._countAndFlagsBits, v27._object, 0x7265626D756ELL, 0xE600000000000000, v30);
  v31 = v106;
  LOBYTE(v106) = v8;
  v32 = sub_1AB2044F8(countAndFlagsBits, v14, v31, 0, 0, &v106);
  v34 = v33;

  if (qword_1ED4CFEF8 != -1)
  {
    swift_once();
  }

  sub_1AB01494C(qword_1EB4347D0, &v106);
  v35 = v108;
  v92 = v109;
  __swift_project_boxed_opaque_existential_1Tm(&v106, v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1AB4D4180;
  v105 = sub_1AB0168A8(0, 2, 0, MEMORY[0x1E69E7CC0]);
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v37);
  v104 = v17;
  v101 = 0xD000000000000024;
  v102 = 0x80000001AB5038F0;
  sub_1AB014A58(&v101, v97, &unk_1EB437E60);
  v98 = 0u;
  v99 = 0u;
  sub_1AB0169C4(v97, &v98);
  v100 = 0;
  v38 = v105;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = sub_1AB0168A8(0, *(v38 + 2) + 1, 1, v38);
  }

  v40 = *(v38 + 2);
  v39 = *(v38 + 3);
  if (v40 >= v39 >> 1)
  {
    v38 = sub_1AB0168A8((v39 > 1), v40 + 1, 1, v38);
  }

  *(v38 + 2) = v40 + 1;
  v41 = &v38[40 * v40];
  v42 = v98;
  v43 = v99;
  v41[64] = v100;
  *(v41 + 2) = v42;
  *(v41 + 3) = v43;
  v105 = v38;
  sub_1AB014AC0(&v101, &unk_1EB437E60);
  v44._countAndFlagsBits = 44;
  v44._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v44);
  *(v36 + 32) = v105;
  v105 = sub_1AB0168A8(0, 9, 0, MEMORY[0x1E69E7CC0]);
  v45._countAndFlagsBits = 0x203A746E756F63;
  v45._object = 0xE700000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  v104 = MEMORY[0x1E69E6530];
  v101 = withCount;
  sub_1AB014A58(&v101, v97, &unk_1EB437E60);
  v98 = 0u;
  v99 = 0u;
  sub_1AB0169C4(v97, &v98);
  v100 = 0;
  v46 = v105;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = sub_1AB0168A8(0, *(v46 + 2) + 1, 1, v46);
  }

  v48 = *(v46 + 2);
  v47 = *(v46 + 3);
  if (v48 >= v47 >> 1)
  {
    v46 = sub_1AB0168A8((v47 > 1), v48 + 1, 1, v46);
  }

  *(v46 + 2) = v48 + 1;
  v49 = &v46[40 * v48];
  v50 = v98;
  v51 = v99;
  v49[64] = v100;
  *(v49 + 2) = v50;
  *(v49 + 3) = v51;
  v105 = v46;
  sub_1AB014AC0(&v101, &unk_1EB437E60);
  v52._countAndFlagsBits = 44;
  v52._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v52);
  *(v36 + 40) = v105;
  v105 = sub_1AB0168A8(0, 7, 0, MEMORY[0x1E69E7CC0]);
  v53._countAndFlagsBits = 0x203A79656BLL;
  v53._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v53);
  v104 = v17;
  v101 = v94;
  v102 = v90;
  sub_1AB014A58(&v101, v97, &unk_1EB437E60);
  v98 = 0u;
  v99 = 0u;

  sub_1AB0169C4(v97, &v98);
  v100 = 0;
  v54 = v105;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v54 = sub_1AB0168A8(0, *(v54 + 2) + 1, 1, v54);
    v105 = v54;
  }

  v56 = *(v54 + 2);
  v55 = *(v54 + 3);
  if (v56 >= v55 >> 1)
  {
    v54 = sub_1AB0168A8((v55 > 1), v56 + 1, 1, v54);
  }

  *(v54 + 2) = v56 + 1;
  v57 = &v54[40 * v56];
  v58 = v98;
  v59 = v99;
  v57[64] = v100;
  *(v57 + 2) = v58;
  *(v57 + 3) = v59;
  v105 = v54;
  sub_1AB014AC0(&v101, &unk_1EB437E60);
  v60._countAndFlagsBits = 44;
  v60._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v60);
  *(v36 + 48) = v105;
  v105 = sub_1AB0168A8(0, 16, 0, MEMORY[0x1E69E7CC0]);
  v61._countAndFlagsBits = 0x6D6563616C706572;
  v61._object = 0xEE00203A73746E65;
  LogMessage.StringInterpolation.appendLiteral(_:)(v61);
  if (v93)
  {
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98);
    v63 = v93;
  }

  else
  {
    v63 = 0;
    v62 = 0;
    v102 = 0;
    v103 = 0;
  }

  v101 = v63;
  v104 = v62;
  sub_1AB014A58(&v101, v97, &unk_1EB437E60);
  v98 = 0u;
  v99 = 0u;

  sub_1AB0169C4(v97, &v98);
  v100 = 0;
  v64 = v105;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v64 = sub_1AB0168A8(0, *(v64 + 2) + 1, 1, v64);
  }

  v66 = *(v64 + 2);
  v65 = *(v64 + 3);
  if (v66 >= v65 >> 1)
  {
    v64 = sub_1AB0168A8((v65 > 1), v66 + 1, 1, v64);
  }

  *(v64 + 2) = v66 + 1;
  v67 = &v64[40 * v66];
  v68 = v98;
  v69 = v99;
  v67[64] = v100;
  *(v67 + 2) = v68;
  *(v67 + 3) = v69;
  v105 = v64;
  sub_1AB014AC0(&v101, &unk_1EB437E60);
  v70._countAndFlagsBits = 44;
  v70._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v70);
  *(v36 + 56) = v105;
  v105 = sub_1AB0168A8(0, 18, 0, MEMORY[0x1E69E7CC0]);
  v71._object = 0x80000001AB5038A0;
  v71._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v71);
  v104 = &type metadata for LocalizerLookupStrategy;
  LOBYTE(v101) = v95;
  sub_1AB014A58(&v101, v97, &unk_1EB437E60);
  v98 = 0u;
  v99 = 0u;
  sub_1AB0169C4(v97, &v98);
  v100 = 0;
  v72 = v105;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v72 = sub_1AB0168A8(0, *(v72 + 2) + 1, 1, v72);
  }

  v74 = *(v72 + 2);
  v73 = *(v72 + 3);
  if (v74 >= v73 >> 1)
  {
    v72 = sub_1AB0168A8((v73 > 1), v74 + 1, 1, v72);
  }

  *(v72 + 2) = v74 + 1;
  v75 = &v72[40 * v74];
  v76 = v98;
  v77 = v99;
  v75[64] = v100;
  *(v75 + 2) = v76;
  *(v75 + 3) = v77;
  v105 = v72;
  sub_1AB014AC0(&v101, &unk_1EB437E60);
  v78._countAndFlagsBits = 44;
  v78._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v78);
  *(v36 + 64) = v105;
  v105 = sub_1AB0168A8(0, 11, 0, MEMORY[0x1E69E7CC0]);
  v79._countAndFlagsBits = 0x203A746C75736572;
  v79._object = 0xE900000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v79);
  v104 = MEMORY[0x1E69E6158];
  v101 = v32;
  v102 = v34;
  sub_1AB014A58(&v101, v97, &unk_1EB437E60);
  v98 = 0u;
  v99 = 0u;

  sub_1AB0169C4(v97, &v98);
  v100 = 2;
  v80 = v105;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v80 = sub_1AB0168A8(0, *(v80 + 2) + 1, 1, v80);
    v105 = v80;
  }

  v82 = *(v80 + 2);
  v81 = *(v80 + 3);
  if (v82 >= v81 >> 1)
  {
    v80 = sub_1AB0168A8((v81 > 1), v82 + 1, 1, v80);
  }

  *(v80 + 2) = v82 + 1;
  v83 = &v80[40 * v82];
  v84 = v98;
  v85 = v99;
  v83[64] = v100;
  *(v83 + 2) = v84;
  *(v83 + 3) = v85;
  v105 = v80;
  sub_1AB014AC0(&v101, &unk_1EB437E60);
  v86._countAndFlagsBits = 34;
  v86._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v86);
  *(v36 + 72) = v105;
  Logger.debug(_:)(v36, v35, v92);

  __swift_destroy_boxed_opaque_existential_1Tm(&v106);
  v87 = v32;
  v88 = v34;
  result._object = v88;
  result._countAndFlagsBits = v87;
  return result;
}

int64_t AppleServicesLocalizer.string(withCount:forKey:with:defaultValue:using:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char *a6)
{
  v10 = *a5;
  v11 = *(a5 + 8);
  v12 = *a6;
  v111 = *(a5 + 17);
  v112 = *(a5 + 16);
  v113 = v11;
  if (v111)
  {
    v109 = sub_1AB461614();
    v11 = v13;
  }

  else
  {
    sub_1AB20CC94(*a5, v11, *(a5 + 16), 0);
    v109 = v10;
  }

  v14 = sub_1AB20B934(a1, v6 + OBJC_IVAR____TtC9JetEngine22AppleServicesLocalizer_locale);
  if (v14 != 5)
  {
    v15 = v14;
    v16 = sub_1AB460514();
    v17 = JEPluralCategoryPluralFormKeyFromBaseKey(v15, v16);

    v18 = sub_1AB460544();
    v20 = v19;

    LOBYTE(v125) = v12;
    if (sub_1AB203C1C(v18, v20, &v125))
    {
      goto LABEL_8;
    }
  }

  v18 = a2;
  v20 = a3;
LABEL_8:
  v101 = a2;
  v102 = a3;
  v114 = v10;
  if (a4)
  {
    v21 = a4;
  }

  else
  {
    v21 = sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
  }

  v22 = *(v21 + 16);

  if (v22)
  {
    sub_1AB014DB4(0x746E756F63, 0xE500000000000000);
    if (v23)
    {
      v104 = v12;
      if (qword_1ED4CFEF8 != -1)
      {
        swift_once();
      }

      v24 = qword_1EB4347E8;
      v103 = unk_1EB4347F0;
      __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1AB4D4720;
      v127 = MEMORY[0x1E69E6158];
      v125 = 0xD000000000000044;
      v126 = 0x80000001AB503970;
      *(v26 + 48) = 0u;
      *(v26 + 32) = 0u;
      sub_1AB0169C4(&v125, v26 + 32);
      *(v26 + 64) = 0;
      *(v25 + 32) = v26;
      Logger.warning(_:)(v25, v24, v103);

      v12 = v104;
    }

    if (*(v21 + 16))
    {
      sub_1AB014DB4(0x7265626D756ELL, 0xE600000000000000);
      if (v27)
      {
        v107 = a4;
        if (qword_1ED4CFEF8 != -1)
        {
          swift_once();
        }

        v28 = qword_1EB4347E8;
        v105 = unk_1EB4347F0;
        __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1AB4D4720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1AB4D4720;
        v127 = MEMORY[0x1E69E6158];
        v125 = 0xD000000000000045;
        v126 = 0x80000001AB503920;
        *(v30 + 48) = 0u;
        *(v30 + 32) = 0u;
        sub_1AB0169C4(&v125, v30 + 32);
        *(v30 + 64) = 0;
        *(v29 + 32) = v30;
        Logger.warning(_:)(v29, v28, v105);

        a4 = v107;
      }
    }
  }

  v31 = a4;
  v32 = AppleServicesLocalizer.formattedCount(_:)(a1);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v125 = v21;
  sub_1AB1D5C74(v32._countAndFlagsBits, v32._object, 0x746E756F63, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v34 = v125;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v125 = v34;
  sub_1AB1D5C74(v32._countAndFlagsBits, v32._object, 0x7265626D756ELL, 0xE600000000000000, v35);
  v36 = v125;
  LOBYTE(v125) = v12;
  v110 = sub_1AB2044F8(v18, v20, v36, v109, v11, &v125);
  v38 = v37;

  if (qword_1ED4CFEF8 != -1)
  {
    swift_once();
  }

  sub_1AB01494C(qword_1EB4347D0, &v125);
  v106 = v128;
  v108 = v127;
  __swift_project_boxed_opaque_existential_1Tm(&v125, v127);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1AB4DE180;
  v124 = sub_1AB0168A8(0, 2, 0, MEMORY[0x1E69E7CC0]);
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v40);
  v41 = MEMORY[0x1E69E6158];
  v123 = MEMORY[0x1E69E6158];
  v120 = 0xD000000000000031;
  v121 = 0x80000001AB5039C0;
  sub_1AB014A58(&v120, v116, &unk_1EB437E60);
  v117 = 0u;
  v118 = 0u;
  sub_1AB0169C4(v116, &v117);
  v119 = 0;
  v42 = v124;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = sub_1AB0168A8(0, *(v42 + 2) + 1, 1, v42);
  }

  v43 = v31;
  v45 = *(v42 + 2);
  v44 = *(v42 + 3);
  if (v45 >= v44 >> 1)
  {
    v42 = sub_1AB0168A8((v44 > 1), v45 + 1, 1, v42);
  }

  *(v42 + 2) = v45 + 1;
  v46 = &v42[40 * v45];
  v47 = v117;
  v48 = v118;
  v46[64] = v119;
  *(v46 + 2) = v47;
  *(v46 + 3) = v48;
  v124 = v42;
  sub_1AB014AC0(&v120, &unk_1EB437E60);
  v49._countAndFlagsBits = 44;
  v49._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v49);
  *(v39 + 32) = v124;
  v124 = sub_1AB0168A8(0, 9, 0, MEMORY[0x1E69E7CC0]);
  v50._countAndFlagsBits = 0x203A746E756F63;
  v50._object = 0xE700000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v50);
  v123 = MEMORY[0x1E69E6530];
  v120 = a1;
  sub_1AB014A58(&v120, v116, &unk_1EB437E60);
  v117 = 0u;
  v118 = 0u;
  sub_1AB0169C4(v116, &v117);
  v119 = 0;
  v51 = v124;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v51 = sub_1AB0168A8(0, *(v51 + 2) + 1, 1, v51);
  }

  v53 = *(v51 + 2);
  v52 = *(v51 + 3);
  if (v53 >= v52 >> 1)
  {
    v51 = sub_1AB0168A8((v52 > 1), v53 + 1, 1, v51);
  }

  *(v51 + 2) = v53 + 1;
  v54 = &v51[40 * v53];
  v55 = v117;
  v56 = v118;
  v54[64] = v119;
  *(v54 + 2) = v55;
  *(v54 + 3) = v56;
  v124 = v51;
  sub_1AB014AC0(&v120, &unk_1EB437E60);
  v57._countAndFlagsBits = 44;
  v57._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v57);
  *(v39 + 40) = v124;
  v124 = sub_1AB0168A8(0, 7, 0, MEMORY[0x1E69E7CC0]);
  v58._countAndFlagsBits = 0x203A79656BLL;
  v58._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v58);
  v123 = v41;
  v120 = v101;
  v121 = v102;
  sub_1AB014A58(&v120, v116, &unk_1EB437E60);
  v117 = 0u;
  v118 = 0u;

  sub_1AB0169C4(v116, &v117);
  v119 = 0;
  v59 = v124;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v59 = sub_1AB0168A8(0, *(v59 + 2) + 1, 1, v59);
    v124 = v59;
  }

  v61 = *(v59 + 2);
  v60 = *(v59 + 3);
  if (v61 >= v60 >> 1)
  {
    v59 = sub_1AB0168A8((v60 > 1), v61 + 1, 1, v59);
  }

  *(v59 + 2) = v61 + 1;
  v62 = &v59[40 * v61];
  v63 = v117;
  v64 = v118;
  v62[64] = v119;
  *(v62 + 2) = v63;
  *(v62 + 3) = v64;
  v124 = v59;
  sub_1AB014AC0(&v120, &unk_1EB437E60);
  v65._countAndFlagsBits = 44;
  v65._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v65);
  *(v39 + 48) = v124;
  v124 = sub_1AB0168A8(0, 16, 0, MEMORY[0x1E69E7CC0]);
  v66._countAndFlagsBits = 0x6D6563616C706572;
  v66._object = 0xEE00203A73746E65;
  LogMessage.StringInterpolation.appendLiteral(_:)(v66);
  if (v43)
  {
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98);
    v68 = v43;
  }

  else
  {
    v68 = 0;
    v67 = 0;
    v121 = 0;
    v122 = 0;
  }

  v120 = v68;
  v123 = v67;
  sub_1AB014A58(&v120, v116, &unk_1EB437E60);
  v117 = 0u;
  v118 = 0u;

  sub_1AB0169C4(v116, &v117);
  v119 = 0;
  v69 = v124;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v69 = sub_1AB0168A8(0, *(v69 + 2) + 1, 1, v69);
  }

  v71 = *(v69 + 2);
  v70 = *(v69 + 3);
  if (v71 >= v70 >> 1)
  {
    v69 = sub_1AB0168A8((v70 > 1), v71 + 1, 1, v69);
  }

  *(v69 + 2) = v71 + 1;
  v72 = &v69[40 * v71];
  v73 = v117;
  v74 = v118;
  v72[64] = v119;
  *(v72 + 2) = v73;
  *(v72 + 3) = v74;
  v124 = v69;
  sub_1AB014AC0(&v120, &unk_1EB437E60);
  v75._countAndFlagsBits = 44;
  v75._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v75);
  *(v39 + 56) = v124;
  v124 = sub_1AB0168A8(0, 18, 0, MEMORY[0x1E69E7CC0]);
  v76._countAndFlagsBits = 0x56746C7561666564;
  v76._object = 0xEF22203A65756C61;
  LogMessage.StringInterpolation.appendLiteral(_:)(v76);
  v123 = &type metadata for LocalizerDefaultValue;
  v120 = v114;
  v121 = v113;
  LOBYTE(v122) = v112;
  BYTE1(v122) = v111;
  sub_1AB014A58(&v120, v116, &unk_1EB437E60);
  v117 = 0u;
  v118 = 0u;
  sub_1AB20CC94(v114, v113, v112, v111);
  sub_1AB0169C4(v116, &v117);
  v119 = 2;
  v77 = v124;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v77 = sub_1AB0168A8(0, *(v77 + 2) + 1, 1, v77);
    v124 = v77;
  }

  v79 = *(v77 + 2);
  v78 = *(v77 + 3);
  if (v79 >= v78 >> 1)
  {
    v77 = sub_1AB0168A8((v78 > 1), v79 + 1, 1, v77);
  }

  *(v77 + 2) = v79 + 1;
  v80 = &v77[40 * v79];
  v81 = v117;
  v82 = v118;
  v80[64] = v119;
  *(v80 + 2) = v81;
  *(v80 + 3) = v82;
  v124 = v77;
  sub_1AB014AC0(&v120, &unk_1EB437E60);
  v83._countAndFlagsBits = 11298;
  v83._object = 0xE200000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v83);
  *(v39 + 64) = v124;
  v124 = sub_1AB0168A8(0, 18, 0, MEMORY[0x1E69E7CC0]);
  v84._object = 0x80000001AB5038A0;
  v84._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v84);
  v123 = &type metadata for LocalizerLookupStrategy;
  LOBYTE(v120) = v12;
  sub_1AB014A58(&v120, v116, &unk_1EB437E60);
  v117 = 0u;
  v118 = 0u;
  sub_1AB0169C4(v116, &v117);
  v119 = 0;
  v85 = v124;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v85 = sub_1AB0168A8(0, *(v85 + 2) + 1, 1, v85);
  }

  v87 = *(v85 + 2);
  v86 = *(v85 + 3);
  if (v87 >= v86 >> 1)
  {
    v85 = sub_1AB0168A8((v86 > 1), v87 + 1, 1, v85);
  }

  *(v85 + 2) = v87 + 1;
  v88 = &v85[40 * v87];
  v89 = v117;
  v90 = v118;
  v88[64] = v119;
  *(v88 + 2) = v89;
  *(v88 + 3) = v90;
  v124 = v85;
  sub_1AB014AC0(&v120, &unk_1EB437E60);
  v91._countAndFlagsBits = 44;
  v91._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v91);
  *(v39 + 72) = v124;
  v124 = sub_1AB0168A8(0, 11, 0, MEMORY[0x1E69E7CC0]);
  v92._countAndFlagsBits = 0x203A746C75736572;
  v92._object = 0xE900000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v92);
  v123 = v41;
  v120 = v110;
  v121 = v38;
  sub_1AB014A58(&v120, v116, &unk_1EB437E60);
  v117 = 0u;
  v118 = 0u;

  sub_1AB0169C4(v116, &v117);
  v119 = 2;
  v93 = v124;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v93 = sub_1AB0168A8(0, *(v93 + 2) + 1, 1, v93);
    v124 = v93;
  }

  v95 = *(v93 + 2);
  v94 = *(v93 + 3);
  if (v95 >= v94 >> 1)
  {
    v93 = sub_1AB0168A8((v94 > 1), v95 + 1, 1, v93);
  }

  *(v93 + 2) = v95 + 1;
  v96 = &v93[40 * v95];
  v97 = v117;
  v98 = v118;
  v96[64] = v119;
  *(v96 + 2) = v97;
  *(v96 + 3) = v98;
  v124 = v93;
  sub_1AB014AC0(&v120, &unk_1EB437E60);
  v99._countAndFlagsBits = 34;
  v99._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v99);
  *(v39 + 80) = v124;
  Logger.debug(_:)(v39, v108, v106);

  __swift_destroy_boxed_opaque_existential_1Tm(&v125);
  return v110;
}

Swift::String __swiftcall AppleServicesLocalizer.formattedCount(_:)(Swift::Int a1)
{
  v2 = v1;
  v4 = sub_1AB45FA44();
  v5 = JECountFormatterMakeStringFromNumber(0, a1, v4);

  if (v5)
  {
    v6 = sub_1AB460544();
    v8 = v7;
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v10 = *(v2 + 192);
    MEMORY[0x1EEE9AC00](v9);
    MEMORY[0x1EEE9AC00](v11);
    os_unfair_lock_lock(v10 + 4);
    sub_1AB20D728(&v44);
    os_unfair_lock_unlock(v10 + 4);

    v8 = *(&v44 + 1);
    v6 = v44;
  }

  if (qword_1ED4CFEF8 != -1)
  {
    swift_once();
  }

  v12 = qword_1EB4347E8;
  v42 = unk_1EB4347F0;
  __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AB4D4190;
  v50 = sub_1AB0168A8(0, 2, 0, MEMORY[0x1E69E7CC0]);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v15 = MEMORY[0x1E69E6158];
  v49 = MEMORY[0x1E69E6158];
  v47 = 0xD000000000000012;
  v48 = 0x80000001AB503A00;
  sub_1AB014A58(&v47, v43, &unk_1EB437E60);
  v44 = 0u;
  v45 = 0u;
  sub_1AB0169C4(v43, &v44);
  v46 = 0;
  v16 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1AB0168A8(0, *(v16 + 2) + 1, 1, v16);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1AB0168A8((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  v19 = &v16[40 * v18];
  v20 = v44;
  v21 = v45;
  v19[64] = v46;
  *(v19 + 2) = v20;
  *(v19 + 3) = v21;
  v50 = v16;
  sub_1AB014AC0(&v47, &unk_1EB437E60);
  v22._countAndFlagsBits = 44;
  v22._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  *(v13 + 32) = v50;
  v50 = sub_1AB0168A8(0, 9, 0, MEMORY[0x1E69E7CC0]);
  v23._countAndFlagsBits = 0x203A746E756F63;
  v23._object = 0xE700000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  v49 = MEMORY[0x1E69E6530];
  v47 = a1;
  sub_1AB014A58(&v47, v43, &unk_1EB437E60);
  v44 = 0u;
  v45 = 0u;
  sub_1AB0169C4(v43, &v44);
  v46 = 0;
  v24 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1AB0168A8(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1AB0168A8((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = &v24[40 * v26];
  v28 = v44;
  v29 = v45;
  v27[64] = v46;
  *(v27 + 2) = v28;
  *(v27 + 3) = v29;
  v50 = v24;
  sub_1AB014AC0(&v47, &unk_1EB437E60);
  v30._countAndFlagsBits = 44;
  v30._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v30);
  *(v13 + 40) = v50;
  v50 = sub_1AB0168A8(0, 11, 0, MEMORY[0x1E69E7CC0]);
  v31._countAndFlagsBits = 0x203A746C75736572;
  v31._object = 0xE900000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v31);
  v49 = v15;
  v47 = v6;
  v48 = v8;
  sub_1AB014A58(&v47, v43, &unk_1EB437E60);
  v44 = 0u;
  v45 = 0u;
  sub_1AB0169C4(v43, &v44);
  v46 = 2;
  v32 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_1AB0168A8(0, *(v32 + 2) + 1, 1, v32);
  }

  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  if (v34 >= v33 >> 1)
  {
    v32 = sub_1AB0168A8((v33 > 1), v34 + 1, 1, v32);
  }

  *(v32 + 2) = v34 + 1;
  v35 = &v32[40 * v34];
  v36 = v44;
  v37 = v45;
  v35[64] = v46;
  *(v35 + 2) = v36;
  *(v35 + 3) = v37;
  v50 = v32;
  sub_1AB014AC0(&v47, &unk_1EB437E60);
  v38._countAndFlagsBits = 34;
  v38._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v38);
  *(v13 + 48) = v50;
  Logger.debug(_:)(v13, v12, v42);

  v39 = v6;
  v40 = v8;
  result._object = v40;
  result._countAndFlagsBits = v39;
  return result;
}

uint64_t AppleServicesLocalizer.formattedDate(format:date:withContext:)(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v8 = *a4;
  v9 = *(v4 + 208);
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v10 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v10[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v10 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    goto LABEL_12;
  }

  ObjectType = swift_getObjectType();
  strcpy(&v71, "screamerMode");
  BYTE13(v71) = 0;
  HIWORD(v71) = -5120;
  Preferences.subscript.getter(&v71, ObjectType, MEMORY[0x1E69E6370], v9, &v74);

  if (v74 != 2 && (v74 & 1) != 0)
  {
    if (sub_1AB460784() & 1) != 0 && (sub_1AB460794())
    {

      return a1;
    }

    else
    {
      *&v71 = 10794;
      *(&v71 + 1) = 0xE200000000000000;
      MEMORY[0x1AC59BA20](a1, a2);
      MEMORY[0x1AC59BA20](10794, 0xE200000000000000);
      return v71;
    }
  }

LABEL_12:
  v14 = v4 + OBJC_IVAR____TtC9JetEngine22AppleServicesLocalizer_locale;
  swift_beginAccess();
  v74 = sub_1AB45FA04();
  v75 = v15;
  MEMORY[0x1AC59BA20](a1, a2);
  v70[0] = 0;
  v70[1] = 0xE000000000000000;
  v77 = v8;
  type metadata accessor for Context(0);
  sub_1AB461824();
  MEMORY[0x1AC59BA20](0, 0xE000000000000000);

  v16 = sub_1AB460514();

  v17 = *(v4 + 392);
  v18 = [v17 objectForKey_];
  if (!v18)
  {
    v18 = (*(v4 + 400))(a1, a2, v8, 0, 0, 1, 0, 1, v14);
    [v17 setObject:v18 forKey:v16];
  }

  swift_endAccess();
  v19 = sub_1AB45F914();
  v20 = [v18 stringFromDate_];

  v69 = sub_1AB460544();
  v22 = v21;

  if (qword_1ED4CFEF8 != -1)
  {
    swift_once();
  }

  v67 = unk_1EB4347F0;
  v68 = qword_1EB4347E8;
  __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1AB4DE170;
  v77 = sub_1AB0168A8(0, 2, 0, MEMORY[0x1E69E7CC0]);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  v76 = MEMORY[0x1E69E6158];
  v74 = 0xD000000000000027;
  v75 = 0x80000001AB503A20;
  sub_1AB014A58(&v74, v70, &unk_1EB437E60);
  v71 = 0u;
  v72 = 0u;
  sub_1AB0169C4(v70, &v71);
  v73 = 0;
  v25 = v77;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1AB0168A8(0, *(v25 + 2) + 1, 1, v25);
  }

  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1AB0168A8((v26 > 1), v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v28 = &v25[40 * v27];
  v29 = v71;
  v30 = v72;
  v28[64] = v73;
  *(v28 + 2) = v29;
  *(v28 + 3) = v30;
  v77 = v25;
  sub_1AB014AC0(&v74, &unk_1EB437E60);
  v31._countAndFlagsBits = 44;
  v31._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v31);
  *(v23 + 32) = v77;
  v77 = sub_1AB0168A8(0, 12, 0, MEMORY[0x1E69E7CC0]);
  v32._countAndFlagsBits = 0x203A74616D726F66;
  v32._object = 0xE900000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  v76 = MEMORY[0x1E69E6158];
  v74 = a1;
  v75 = a2;
  sub_1AB014A58(&v74, v70, &unk_1EB437E60);
  v71 = 0u;
  v72 = 0u;

  sub_1AB0169C4(v70, &v71);
  v73 = 0;
  v33 = v77;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
    v77 = v33;
  }

  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
  }

  *(v33 + 2) = v35 + 1;
  v36 = &v33[40 * v35];
  v37 = v71;
  v38 = v72;
  v36[64] = v73;
  *(v36 + 2) = v37;
  *(v36 + 3) = v38;
  v77 = v33;
  sub_1AB014AC0(&v74, &unk_1EB437E60);
  v39._countAndFlagsBits = 11298;
  v39._object = 0xE200000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v39);
  *(v23 + 40) = v77;
  v77 = sub_1AB0168A8(0, 10, 0, MEMORY[0x1E69E7CC0]);
  v40._countAndFlagsBits = 0x22203A65746164;
  v40._object = 0xE700000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v40);
  v41 = sub_1AB45F9B4();
  v76 = v41;
  v42 = __swift_allocate_boxed_opaque_existential_0(&v74);
  (*(*(v41 - 8) + 16))(v42, a3, v41);
  sub_1AB014A58(&v74, v70, &unk_1EB437E60);
  v71 = 0u;
  v72 = 0u;
  sub_1AB0169C4(v70, &v71);
  v73 = 0;
  v43 = v77;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = sub_1AB0168A8(0, *(v43 + 2) + 1, 1, v43);
  }

  v45 = *(v43 + 2);
  v44 = *(v43 + 3);
  if (v45 >= v44 >> 1)
  {
    v43 = sub_1AB0168A8((v44 > 1), v45 + 1, 1, v43);
  }

  *(v43 + 2) = v45 + 1;
  v46 = &v43[40 * v45];
  v47 = v71;
  v48 = v72;
  v46[64] = v73;
  *(v46 + 2) = v47;
  *(v46 + 3) = v48;
  v77 = v43;
  sub_1AB014AC0(&v74, &unk_1EB437E60);
  v49._countAndFlagsBits = 11298;
  v49._object = 0xE200000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v49);
  *(v23 + 48) = v77;
  v77 = sub_1AB0168A8(0, 11, 0, MEMORY[0x1E69E7CC0]);
  v50._object = 0xE900000000000020;
  v50._countAndFlagsBits = 0x3A747865746E6F63;
  LogMessage.StringInterpolation.appendLiteral(_:)(v50);
  v76 = &type metadata for LocalizerContext;
  LOBYTE(v74) = v8;
  sub_1AB014A58(&v74, v70, &unk_1EB437E60);
  v71 = 0u;
  v72 = 0u;
  sub_1AB0169C4(v70, &v71);
  v73 = 0;
  v51 = v77;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v51 = sub_1AB0168A8(0, *(v51 + 2) + 1, 1, v51);
  }

  v13 = v69;
  v53 = *(v51 + 2);
  v52 = *(v51 + 3);
  if (v53 >= v52 >> 1)
  {
    v51 = sub_1AB0168A8((v52 > 1), v53 + 1, 1, v51);
  }

  *(v51 + 2) = v53 + 1;
  v54 = &v51[40 * v53];
  v55 = v71;
  v56 = v72;
  v54[64] = v73;
  *(v54 + 2) = v55;
  *(v54 + 3) = v56;
  v77 = v51;
  sub_1AB014AC0(&v74, &unk_1EB437E60);
  v57._countAndFlagsBits = 44;
  v57._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v57);
  *(v23 + 56) = v77;
  v77 = sub_1AB0168A8(0, 11, 0, MEMORY[0x1E69E7CC0]);
  v58._countAndFlagsBits = 0x203A746C75736572;
  v58._object = 0xE900000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v58);
  v76 = MEMORY[0x1E69E6158];
  v74 = v69;
  v75 = v22;
  sub_1AB014A58(&v74, v70, &unk_1EB437E60);
  v71 = 0u;
  v72 = 0u;

  sub_1AB0169C4(v70, &v71);
  v73 = 2;
  v59 = v77;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v59 = sub_1AB0168A8(0, *(v59 + 2) + 1, 1, v59);
    v77 = v59;
  }

  v61 = *(v59 + 2);
  v60 = *(v59 + 3);
  if (v61 >= v60 >> 1)
  {
    v59 = sub_1AB0168A8((v60 > 1), v61 + 1, 1, v59);
  }

  *(v59 + 2) = v61 + 1;
  v62 = &v59[40 * v61];
  v63 = v71;
  v64 = v72;
  v62[64] = v73;
  *(v62 + 2) = v63;
  *(v62 + 3) = v64;
  v77 = v59;
  sub_1AB014AC0(&v74, &unk_1EB437E60);
  v65._countAndFlagsBits = 34;
  v65._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v65);
  *(v23 + 64) = v77;
  Logger.debug(_:)(v23, v68, v67);

  return v13;
}

int64_t AppleServicesLocalizer.formattedDate(format:date:inSentence:)(int64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v6 = v5;
  v10 = *(v5 + 208);
  if (qword_1EB4359F8 != -1)
  {
LABEL_49:
    swift_once();
  }

  v11 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v11[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v11 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    goto LABEL_11;
  }

  ObjectType = swift_getObjectType();
  strcpy(&v103, "screamerMode");
  BYTE13(v103) = 0;
  HIWORD(v103) = -5120;
  Preferences.subscript.getter(&v103, ObjectType, MEMORY[0x1E69E6370], v10, &v106);

  if (v106 != 2 && (v106 & 1) != 0)
  {
    if (sub_1AB460784() & 1) != 0 && (sub_1AB460794())
    {

      return a1;
    }

    else
    {
      *&v103 = 10794;
      *(&v103 + 1) = 0xE200000000000000;
      MEMORY[0x1AC59BA20](a1, a2);
      MEMORY[0x1AC59BA20](10794, 0xE200000000000000);
      return v103;
    }
  }

LABEL_11:
  v15 = v6 + OBJC_IVAR____TtC9JetEngine22AppleServicesLocalizer_locale;
  swift_beginAccess();
  v106 = sub_1AB45FA04();
  v107 = v16;
  MEMORY[0x1AC59BA20](a1, a2);
  v101 = 0;
  v102 = 0xE000000000000000;
  v109 = 1;
  type metadata accessor for Context(0);
  sub_1AB461824();
  MEMORY[0x1AC59BA20](0, 0xE000000000000000);

  v17 = sub_1AB460514();

  v18 = *(v6 + 392);
  v95 = [v18 objectForKey_];
  if (!v95)
  {
    v95 = (*(v6 + 400))(a1, a2, 1, 0, 0, 1, 0, 1, v15, v89, v90, v91);
    [v18 setObject_forKey_];
  }

  v92 = a1;
  v93 = a2;

  swift_endAccess();
  v10 = &unk_1F1FF38B8;
  v19 = sub_1AB0B22E0(&unk_1F1FF38B8);
  sub_1AB014AC0(&unk_1F1FF38D8, &qword_1EB438890);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  a1 = (v21 + 63) >> 6;

  v98 = v19;

  v6 = a5;
  a5 = 0;
  v24 = MEMORY[0x1E69E6158];
  v99 = a4;
  v94 = v6;
  if (v23)
  {
    while (1)
    {
      v25 = a5;
LABEL_21:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v27 = (v25 << 10) | (16 * v26);
      v28 = (*(v98 + 48) + v27);
      v29 = *v28;
      a2 = v28[1];
      v30 = (*(v98 + 56) + v27);
      v31 = *v30;
      v10 = v30[1];
      *&v103 = v99;
      *(&v103 + 1) = v6;
      v106 = 16448;
      v107 = 0xE200000000000000;

      MEMORY[0x1AC59BA20](v29, a2);
      MEMORY[0x1AC59BA20](16448, 0xE200000000000000);
      v101 = v31;
      v102 = v10;
      v90 = sub_1AB0273A8();
      v91 = v90;
      v89 = v90;
      v24 = MEMORY[0x1E69E6158];
      v99 = sub_1AB461434();
      v33 = v32;

      v6 = v33;
      if (!v23)
      {
        goto LABEL_17;
      }
    }
  }

  while (1)
  {
LABEL_17:
    v25 = a5 + 1;
    if (__OFADD__(a5, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v25 >= a1)
    {
      break;
    }

    v23 = *(v20 + 8 * v25);
    ++a5;
    if (v23)
    {
      a5 = v25;
      goto LABEL_21;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1AB4D4720;
  v35 = sub_1AB45F914();
  v36 = [v95 stringFromDate_];

  v37 = sub_1AB460544();
  v39 = v38;

  *(v34 + 56) = v24;
  *(v34 + 64) = sub_1AB016854();
  *(v34 + 32) = v37;
  *(v34 + 40) = v39;
  v14 = sub_1AB460584();
  v41 = v40;

  if (qword_1ED4CFEF8 != -1)
  {
    swift_once();
  }

  v43 = qword_1EB4347E8;
  v42 = unk_1EB4347F0;
  __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1AB4DE170;
  v109 = sub_1AB0168A8(0, 2, 0, MEMORY[0x1E69E7CC0]);
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  v108 = v24;
  v106 = 0xD000000000000026;
  v107 = 0x80000001AB503A50;
  sub_1AB014A58(&v106, &v101, &unk_1EB437E60);
  v103 = 0u;
  v104 = 0u;
  sub_1AB0169C4(&v101, &v103);
  v105 = 0;
  v46 = v109;
  v100 = v42;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = sub_1AB0168A8(0, *(v46 + 2) + 1, 1, v46);
  }

  v48 = *(v46 + 2);
  v47 = *(v46 + 3);
  if (v48 >= v47 >> 1)
  {
    v46 = sub_1AB0168A8((v47 > 1), v48 + 1, 1, v46);
  }

  *(v46 + 2) = v48 + 1;
  v49 = &v46[40 * v48];
  v50 = v103;
  v51 = v104;
  v49[64] = v105;
  *(v49 + 2) = v50;
  *(v49 + 3) = v51;
  v109 = v46;
  sub_1AB014AC0(&v106, &unk_1EB437E60);
  v52._countAndFlagsBits = 44;
  v52._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v52);
  *(v44 + 32) = v109;
  v109 = sub_1AB0168A8(0, 12, 0, MEMORY[0x1E69E7CC0]);
  v53._countAndFlagsBits = 0x203A74616D726F66;
  v53._object = 0xE900000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v53);
  v108 = v24;
  v106 = v92;
  v107 = v93;
  sub_1AB014A58(&v106, &v101, &unk_1EB437E60);
  v103 = 0u;
  v104 = 0u;

  sub_1AB0169C4(&v101, &v103);
  v105 = 0;
  v54 = v109;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v54 = sub_1AB0168A8(0, *(v54 + 2) + 1, 1, v54);
    v109 = v54;
  }

  v56 = *(v54 + 2);
  v55 = *(v54 + 3);
  if (v56 >= v55 >> 1)
  {
    v54 = sub_1AB0168A8((v55 > 1), v56 + 1, 1, v54);
  }

  *(v54 + 2) = v56 + 1;
  v57 = &v54[40 * v56];
  v58 = v103;
  v59 = v104;
  v57[64] = v105;
  *(v57 + 2) = v58;
  *(v57 + 3) = v59;
  v109 = v54;
  sub_1AB014AC0(&v106, &unk_1EB437E60);
  v60._countAndFlagsBits = 11298;
  v60._object = 0xE200000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v60);
  *(v44 + 40) = v109;
  v109 = sub_1AB0168A8(0, 10, 0, MEMORY[0x1E69E7CC0]);
  v61._countAndFlagsBits = 0x22203A65746164;
  v61._object = 0xE700000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v61);
  v62 = sub_1AB45F9B4();
  v108 = v62;
  v63 = __swift_allocate_boxed_opaque_existential_0(&v106);
  (*(*(v62 - 8) + 16))(v63, a3, v62);
  sub_1AB014A58(&v106, &v101, &unk_1EB437E60);
  v103 = 0u;
  v104 = 0u;
  sub_1AB0169C4(&v101, &v103);
  v105 = 0;
  v64 = v109;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v64 = sub_1AB0168A8(0, *(v64 + 2) + 1, 1, v64);
  }

  v65 = MEMORY[0x1E69E6158];
  v67 = *(v64 + 2);
  v66 = *(v64 + 3);
  if (v67 >= v66 >> 1)
  {
    v64 = sub_1AB0168A8((v66 > 1), v67 + 1, 1, v64);
  }

  *(v64 + 2) = v67 + 1;
  v68 = &v64[40 * v67];
  v69 = v103;
  v70 = v104;
  v68[64] = v105;
  *(v68 + 2) = v69;
  *(v68 + 3) = v70;
  v109 = v64;
  sub_1AB014AC0(&v106, &unk_1EB437E60);
  v71._countAndFlagsBits = 11298;
  v71._object = 0xE200000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v71);
  *(v44 + 48) = v109;
  v109 = sub_1AB0168A8(0, 14, 0, MEMORY[0x1E69E7CC0]);
  v72._countAndFlagsBits = 0x65636E65746E6573;
  v72._object = 0xEB0000000022203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v72);
  v108 = v65;
  v106 = a4;
  v107 = v94;
  sub_1AB014A58(&v106, &v101, &unk_1EB437E60);
  v103 = 0u;
  v104 = 0u;

  sub_1AB0169C4(&v101, &v103);
  v105 = 0;
  v73 = v109;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v73 = sub_1AB0168A8(0, *(v73 + 2) + 1, 1, v73);
    v109 = v73;
  }

  v75 = *(v73 + 2);
  v74 = *(v73 + 3);
  if (v75 >= v74 >> 1)
  {
    v73 = sub_1AB0168A8((v74 > 1), v75 + 1, 1, v73);
  }

  *(v73 + 2) = v75 + 1;
  v76 = &v73[40 * v75];
  v77 = v103;
  v78 = v104;
  v76[64] = v105;
  *(v76 + 2) = v77;
  *(v76 + 3) = v78;
  v109 = v73;
  sub_1AB014AC0(&v106, &unk_1EB437E60);
  v79._countAndFlagsBits = 11298;
  v79._object = 0xE200000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v79);
  *(v44 + 56) = v109;
  v109 = sub_1AB0168A8(0, 11, 0, MEMORY[0x1E69E7CC0]);
  v80._countAndFlagsBits = 0x203A746C75736572;
  v80._object = 0xE900000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v80);
  v108 = v65;
  v106 = v14;
  v107 = v41;
  sub_1AB014A58(&v106, &v101, &unk_1EB437E60);
  v103 = 0u;
  v104 = 0u;

  sub_1AB0169C4(&v101, &v103);
  v105 = 2;
  v81 = v109;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v81 = sub_1AB0168A8(0, *(v81 + 2) + 1, 1, v81);
    v109 = v81;
  }

  v83 = *(v81 + 2);
  v82 = *(v81 + 3);
  if (v83 >= v82 >> 1)
  {
    v81 = sub_1AB0168A8((v82 > 1), v83 + 1, 1, v81);
  }

  *(v81 + 2) = v83 + 1;
  v84 = &v81[40 * v83];
  v85 = v103;
  v86 = v104;
  v84[64] = v105;
  *(v84 + 2) = v85;
  *(v84 + 3) = v86;
  v109 = v81;
  sub_1AB014AC0(&v106, &unk_1EB437E60);
  v87._countAndFlagsBits = 34;
  v87._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v87);
  *(v44 + 64) = v109;
  Logger.debug(_:)(v44, v43, v100);

  return v14;
}